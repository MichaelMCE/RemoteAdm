
'	caution, timer seems to have issues with win98

'	Secure file transfers over TCP/IP
'	Based upon a stripped down version of 'p2pfile'
'	(transfer protocol remains unchanged)
'
'	Michael McElligott


PROGRAM "minip2p"
VERSION "0.3"
MAKEFILE "xdll.xxx"
' CONSOLE

	IMPORT "xst"
	IMPORT "kernel32"
	IMPORT "wsock32"
	IMPORT "zlib"		' download library from the yahoo/xblite files area
	IMPORT "advapi32"
	IMPORT "msvcrt"
	IMPORT "p2pfiled.dec"
	IMPORT "winmm"

$$TARGET_RESOLUTION = 50

DECLARE FUNCTION Entry ()
DECLARE FUNCTION InitWSA ()

DECLARE FUNCTION p2pListen (socket)
DECLARE FUNCTION p2pListenBin (socket,size,lpbuffer)
DECLARE FUNCTION p2pSendBin (socket,lpbuffer,size)
DECLARE FUNCTION p2pAccept (socket,STRING remoteaddr)
DECLARE FUNCTION p2pBind (socket,STRING address,port)
DECLARE FUNCTION p2pConnect (STRING address,port,socket)
DECLARE FUNCTION p2pCreateBindSocket (STRING address,port,socket)
DECLARE FUNCTION p2pCloseSocket (socket)

DECLARE FUNCTION open_file (pfilename, flags)
DECLARE FUNCTION write_file (hfile,ULONG buffer,nbytes)
DECLARE FUNCTION close_file (file)

DECLARE FUNCTION getLastSlash(str$, stop)
DECLARE FUNCTION DecomposePathname (pathname$, path$, parent$, filename$, file$, extent$)
DECLARE FUNCTION CPrint (STRING text)

DECLARE FUNCTION FileGet (socket,TP2PFILE file)
DECLARE FUNCTION FileSend (socket,TP2PFILE file)

DECLARE FUNCTION TimerCallback (wtimerid, msg, dwUser, dw1, dw2) 
DECLARE FUNCTION InitTimer ()
DECLARE FUNCTION DestroyTimer ()

DECLARE FUNCTION STRING GetLocalIpA ()
DECLARE FUNCTION GetIPAddr (STRING name,STRING ip)	' name to ip
DECLARE FUNCTION GetIPName (STRING ip,STRING name)	' ip to name

EXPORT

DECLARE FUNCTION Startup()
DECLARE FUNCTION Cleanup ()

 ' if the password field is empty then a public key is created which is returned in 'password'
DECLARE FUNCTION encrypt_buffer (buffer,size,STRING password)
 ' provide password or encryption key but not both.
DECLARE FUNCTION decrypt_buffer (buffer,size,STRING password, STRING key)

DECLARE FUNCTION GetAdler32 (pbuffer,size)
DECLARE FUNCTION zlib_compress (source,ssize,dest,dsize,level)
DECLARE FUNCTION zlib_compress2 (source,ssize,STRING dbuffer)
DECLARE FUNCTION zlib_decompress (source,ssize,dest,dsize)

' main interface functions
DECLARE FUNCTION FileListen (auth,port)
DECLARE FUNCTION FileDownload (TP2PFILE ,STRING addr, port)
DECLARE FUNCTION FileUpload (TP2PFILE ,STRING addr, port)
END EXPORT

FUNCTION Entry ()

END FUNCTION

FUNCTION Startup()
	STATIC once
	
	IF once THEN RETURN 0 ELSE once = 1

	'Xst()
	#hsmFileL = CreateSemaphoreA (0,1,1,0)
	#hsmFileUp = CreateSemaphoreA (0,1,1,0)
	#hsmFileDn = CreateSemaphoreA (0,1,1,0)
	#ip$ = GetLocalIpA()
	
	'PRINT "GetLocalIpA: #";#ip$;"#"
	RETURN 1
END FUNCTION

FUNCTION InitTimer ()
	SHARED wTimerRes
	TIMECAPS tc


	IF (timeGetDevCaps(&tc, SIZE(TIMECAPS)) != $$TIMERR_NOERROR) THEN
       	RETURN $$TIMERR_NOCANDO
    END IF

	wTimerRes = MIN(MAX(tc.wPeriodMin, XLONG($$TARGET_RESOLUTION)), tc.wPeriodMax)
	timeBeginPeriod(wTimerRes)

	#listenReset = timeSetEvent(5000, wTimerRes, &TimerCallback(), 0, $$TIME_ONESHOT)
	IF (#listenReset != 0) THEN
    	RETURN $$TIMERR_NOCANDO
    ELSE
    	RETURN $$TIMERR_NOERROR
    END IF

END FUNCTION

FUNCTION TimerCallback (timerid, msg, dwUser, dw1, dw2) 
	SHARED LCONNECT

	SELECT CASE timerid
		CASE #listenReset		:IFZ LCONNECT THEN Cleanup ()
		CASE ELSE			:
	END SELECT

	RETURN $$TRUE
END FUNCTION

FUNCTION DestroyTimer ()
	SHARED wTimerRes
	
	
    IF #listenReset THEN
    	timeEndPeriod(wTimerRes)
    	timeKillEvent(#listenReset)   ' Cancel the event  
        #listenReset = 0  
    END IF
    
END FUNCTION


FUNCTION Cleanup ()
	SHARED fsclient,fssocket
	
	
	p2pCloseSocket (fsclient): fsclient = 0
	p2pCloseSocket (fssocket): fssocket = 0
	Sleep (10)

	CloseHandle (#hsmFileL)
	CloseHandle (#hsmFileUp)
	CloseHandle (#hsmFileDn)
	
END FUNCTION

FUNCTION FileListen (auth, port)
	SHARED fsclient,fssocket
'	SHARED EXITSTATUS
	TP2PFILE file


	IF (WaitForSingleObject (#hsmFileL,15000) == $$WAIT_TIMEOUT) THEN RETURN -3
	
'	EXITSTATUS = $$FALSE

	ret = $$FALSE		' success status
	fsclient = 0: fssocket = 0
   
	' selectable local address?
	IFF p2pCreateBindSocket (#ip$, port, @fssocket) THEN
		ReleaseSemaphore (#hsmFileL,1,NULL)
		RETURN -2
	END IF

	InitTimer ()
	IFT p2pListen (fssocket) THEN
		fsclient = p2pAccept(fssocket,@clientaddr$)
'		DestroyTimer ()
		IF (fsclient != $$SOCKET_ERROR) THEN
			IFF p2pListenBin (fsclient,SIZE(TP2PFILE),&file) THEN EXIT IF 3
			IF (file.auth != auth) || (file.ident != $$FILE_IDENT) THEN EXIT IF 3

			SELECT CASE file.fmode
				CASE $$FILE_SEND	:IFT FileSend (fsclient, file) THEN ret = $$TRUE
				CASE $$FILE_GET		:IFT FileGet (fsclient, file) THEN ret = $$TRUE
				CASE ELSE			:ret = $$FALSE
			END SELECT
		END IF	
	END IF
	
	p2pCloseSocket (fsclient): fsclient = 0
	p2pCloseSocket (fssocket): fssocket = 0
	ReleaseSemaphore (#hsmFileL,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION p2pListen(socket)

	IF (listen(socket,1) == $$SOCKET_ERROR) THEN
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
END FUNCTION

FUNCTION p2pAccept (socket, STRING remoteaddr)
	SOCKADDR_IN  sockaddrin
	SHARED LCONNECT

	LCONNECT = 0
	length = SIZE(sockaddrin)
	client = accept (socket, &sockaddrin, &length)
	remoteaddr = CSTRING$(inet_ntoa(sockaddrin.sin_addr))
	LCONNECT = 1
	RETURN client
END FUNCTION

FUNCTION p2pCloseSocket (socket)
	UBYTE buffer[]


	IFZ socket THEN RETURN 0
	shutdown (socket,$$SD_SEND)
	't0 = GetTickCount()
	'DIM buffer[1023]	'ubyte
	'DO
	'	ret = recv(socket, &buffer[], 1022, 0)
	'	IF (ret == $$SOCKET_ERROR) THEN EXIT DO
	'	IF (ret == 0) THEN EXIT DO
	'LOOP WHILE ((GetTickCount()-t0) < 1000)
	RETURN closesocket (socket)
END FUNCTION

FUNCTION FileSend (fsclient, TP2PFILE file)
	UBYTE buffer[],dbuffer[]
	STRING auth
	TCRC crc


	IF (file.ident != $$FILE_IDENT) THEN RETURN $$FALSE
	auth = STRING$(file.auth)
	file.error = 0
	file.size = 0

	IF (file.end || file.start) THEN
		file.wmode = $$WR
	ELSE
		file.wmode = $$WRNEW
	END IF

	fp = open_file (&file.srcfile, 0)
	IF fp THEN
		fseek(fp, 0, 2)			'$$SEEK_END)
		file.size = ftell(fp)
			
		IFZ file.end THEN
			file.end = file.size
		ELSE
			IF file.end > file.size THEN file.end = file.size
		END IF
		
		IF (file.end - file.start) > file.blocks THEN
			fbsize = file.blocks
		ELSE
			fbsize = file.end - file.start
		END IF

		'CPrint ("* file size: "+STRING$(file.size)+" bytes")
		'CPrint ("* total bytes to send: "+STRING$(file.end - file.start))

		IFF p2pSendBin (fsclient,&file,SIZE(TP2PFILE)) THEN
			close_file (fp)
			RETURN $$FALSE
		END IF

		DIM buffer[fbsize]
		IF (file.flags & $$FILE_COMPRESS) THEN DIM dbuffer[fbsize+1024]
		
		FOR pos = file.start TO file.end STEP file.blocks
			
			IF (pos+fbsize) > file.end THEN fbsize = file.end - pos
			fsetpos (fp, &pos)
			fread (&buffer[],1,fbsize,fp)
			crc.filepos = pos
			crc.usize = fbsize
			
			IF (file.flags & $$FILE_CRC) THEN
				crc.crc32 = GetAdler32(&buffer[],crc.usize)
			ELSE
				crc.crc32 = 0
			END IF

			IF (file.flags & $$FILE_COMPRESS) THEN
				dsize = crc.usize + 1024
				zlib_compress (&buffer[],crc.usize,&dbuffer[],&dsize,$$Z_BEST_COMPRESSION)
				
				crc.size = dsize
				lpdata = &dbuffer[]
			ELSE
				crc.size = fbsize
				lpdata = &buffer[]
			END IF
			
			IF (file.flags & $$FILE_ENCRYPT) THEN
				encrypt_buffer (lpdata,crc.size,auth)
			END IF

			IFT p2pSendBin (fsclient,&crc,SIZE(TCRC)) THEN
				Sleep (50)
				IFF p2pSendBin (fsclient,lpdata,crc.size) THEN
					close_file (fp)
					RETURN $$FALSE
				END IF
				Sleep (150)	' remove if transferring across LAN. try increasing if there are conn errors.
			ELSE
				close_file (fp)
				RETURN $$FALSE
			END IF

		NEXT pos

		close_file (fp)
		RETURN $$TRUE
	ELSE
		file.error = 1
		p2pSendBin (fsclient,&file,SIZE(TP2PFILE))
		RETURN $$FALSE
	END IF

	RETURN $$FALSE
END FUNCTION

FUNCTION FileGet (socket, TP2PFILE file)
	UBYTE buffer[],dbuffer[]
	STRING auth
	TCRC crc


	auth = STRING$(file.auth)
	IFF p2pListenBin (socket,SIZE(TP2PFILE),&file) THEN RETURN $$FALSE
	IF (file.ident != $$FILE_IDENT) || (file.error) THEN RETURN $$FALSE
	IFZ (file.end || file.size) THEN RETURN $$FALSE

	'CPrint ("* file size: "+STRING$(file.size)+" bytes")
	'CPrint ("* total bytes to write: "+STRING$(file.end - file.start))
	
	DecomposePathname (file.desfile, @path$, parent$, filename$, Fn$, fileExt$)
	IF path$ THEN CreateDirectoryA (&path$, 0)
	
	hfile = open_file (&file.desfile,&"wb")
	IFZ hfile THEN
		RETURN $$FALSE
	ELSE
		FOR pos = file.start TO file.end STEP file.blocks
			IFF p2pListenBin (socket,SIZE(TCRC),&crc) THEN
				close_file(hfile)
				RETURN $$FALSE
			END IF

			IF crc.size THEN
				IF (UBOUND(buffer[])!= crc.size) THEN DIM buffer[crc.size]
				IFF p2pListenBin (socket,crc.size,&buffer[]) THEN
					close_file(hfile)
					RETURN $$FALSE
				END IF

				IF (file.flags & $$FILE_ENCRYPT) THEN
					decrypt_buffer (&buffer[],crc.size,auth,"")
				END IF

				IF (file.flags & $$FILE_COMPRESS) THEN
					dsize = crc.usize
					IF (UBOUND(dbuffer[]) != dsize) THEN DIM dbuffer[dsize]
					zlib_decompress (&buffer[],crc.size,&dbuffer[],&dsize)
					
					IF dsize != crc.usize THEN
						'CPrint ("* decompression error: source blk size differs from destination blk size")
						' flag error?
					END IF
					
					crc.size = dsize
					lpdata = &dbuffer[]
				ELSE
					lpdata = &buffer[]
				END IF

				IF (file.flags & $$FILE_CRC) THEN
					crc32 = GetAdler32 (lpdata,crc.size)
					IF crc32 != crc.crc32 THEN
						'CPrint ("* crc error on transfer: "+file.desfile)
						'CPrint ("*  offset: "+STRING$(crc.filepos)+" size: "+STRING$(crc.size))
						'CPrint ("*  expected crc: "+HEXX$(crc.crc32))
						'CPrint ("*  received crc: "+HEXX$(crc32))
						close_file(hfile)
						RETURN $$FALSE
					END IF
				END IF
			
				fsetpos (hfile,&crc.filepos)
				write_file (hfile,lpdata,crc.size)
			END IF
		NEXT pos
		close_file(hfile)
	END IF

	RETURN $$TRUE
END FUNCTION

FUNCTION FileUpload (TP2PFILE file, STRING addr, port)

	
	IF (WaitForSingleObject (#hsmFileUp,15000) == $$WAIT_TIMEOUT) THEN RETURN $$FALSE

	IFF p2pConnect (addr,port,@socket) THEN
		p2pCloseSocket (socket)
		ReleaseSemaphore (#hsmFileUp,1,NULL)
		RETURN $$FALSE
	END IF
	
'	file.auth = auth
	file.ident = $$FILE_IDENT
	file.fmode = $$FILE_GET
'	file.srcfile = filename$
'	file.desfile = lfile$
'	file.start = start
'	file.end = end
	file.error = 0
	file.size = 0
'	file.flags = flags
'	file.blocks = #blocks
	IFZ file.blocks THEN file.blocks = $$FILE_BUFFER

	IFT p2pSendBin(socket, &file, SIZE(TP2PFILE)) THEN
		IFT FileSend(socket, file) THEN
			ret = $$TRUE
		ELSE
			ret = $$FALSE
		END IF
	ELSE
		ret = $$FALSE
	END IF

	p2pCloseSocket (socket)
	ReleaseSemaphore (#hsmFileUp,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION FileDownload (TP2PFILE file, STRING addr, port)

	
	IF (WaitForSingleObject (#hsmFileDn,30000) == $$WAIT_TIMEOUT) THEN RETURN $$FALSE

	IFF p2pConnect (addr,port,@socket) THEN
		p2pCloseSocket (socket)
		ReleaseSemaphore (#hsmFileDn,1,NULL)
		RETURN $$FALSE
	END IF
	
'	file.auth = auth
	file.ident = $$FILE_IDENT
	file.fmode = $$FILE_SEND
'	file.srcfile = filename$
'	file.desfile = lfile$
'	file.start = start
'	file.end = end
	file.error = 0
	file.size = 0
'	file.flags = flags
'	file.blocks = #blocks
	IFZ file.blocks THEN file.blocks = $$FILE_BUFFER

	IFT p2pSendBin(socket, &file, SIZE(TP2PFILE)) THEN
		IFT FileGet(socket,file) THEN
			ret = $$TRUE
		ELSE
			ret = $$FALSE
		END IF
	ELSE
		ret = $$FALSE
	END IF

	p2pCloseSocket (socket)
	ReleaseSemaphore (#hsmFileDn,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION GetAdler32 (pbuffer,tbytes)

	IF !(tbytes && pbuffer) THEN RETURN 0
	adler = adler32(0, $$Z_NULL, 0)
	RETURN adler32(adler,pbuffer,tbytes)
END FUNCTION

FUNCTION write_file (hfile,ULONG buffer,nbytes)

	'_write (hfile, buffer, nbytes)
	foffset = 0
	fgetpos (hfile,&foffset)
	
	IF (fwrite (buffer, 1, nbytes, hfile) < nbytes) THEN
		RETURN -1
	ELSE
		RETURN foffset
	END IF
END FUNCTION

FUNCTION open_file (lpfilename, flags)


	IFZ lpfilename THEN RETURN $$FALSE
	IFZ flags THEN
		type = &"rb"
	ELSE
		type = flags
	END IF
	
	hfile = fopen (lpfilename, type)
	IFZ hfile THEN
		RETURN 0
	ELSE
		RETURN hfile
	END IF

END FUNCTION

FUNCTION close_file (file)

	IF file THEN
		fclose (file)
		RETURN $$TRUE
	ELSE
		RETURN $$FALSE
	END IF

END FUNCTION

FUNCTION STRING GetLocalIpA ()
	STATIC STRING name,ip

	name = NULL$(256)
	gethostname (&name,255)
	
	GetIPAddr (CSTRING$(&name), @ip)	
	RETURN ip
END FUNCTION

FUNCTION GetIPAddr (IPName$, numIPAddr$)
	WSADATA wsadata
	HOSTENT	host


	IF (LEN(IPName$) < 1) THEN RETURN $$FALSE
	
	host = gethostbyname (&IPName$)
	IF (host.h_addr_list != 0) THEN
		addr = 0
		addr2 = 0
		RtlMoveMemory(&addr, host.h_addr_list, 4)
		RtlMoveMemory(&addr2, addr, 4)
		addr = inet_ntoa(addr2)
'		length = strlen (addr2)
		numIPAddr$ = NULL$ (256)
		RtlMoveMemory (&numIPAddr$, addr, 255)
		numIPAddr$ = CSTRING$ (&numIPAddr$)
	END IF
	
	RETURN $$TRUE
END FUNCTION

FUNCTION GetIPName (numIPAddr$, IPName$)
	WSADATA wsadata
	HOSTENT	host
	

	IF (LEN(numIPAddr$) < 3) THEN RETURN $$FALSE
	addr = inet_addr (&numIPAddr$)
	host = gethostbyaddr (&addr, 4, $$AF_INET)
	IF host.h_name != 0 THEN
		IPName$ = NULL$ (256)
		RtlMoveMemory (&IPName$, host.h_name, 255)
		IPName$ = CSTRING$ (&IPName$)
	END IF

	RETURN $$TRUE
END FUNCTION

FUNCTION p2pBind (socket,ipaddress$,port)
	SOCKADDR_IN udtSocket

	'PRINT "p2pBind: ", socket,,ipaddress$,,port

	IFZ ipaddress$ THEN RETURN $$FALSE	
	
	udtSocket.sin_family = $$AF_INET
	udtSocket.sin_port = htons (port)
	udtSocket.sin_addr = inet_addr (&ipaddress$)

	IF (udtSocket.sin_addr == $$INADDR_NONE) THEN
		GetIPAddr (ipaddress$, @numIPAddr$)
		udtSocket.sin_addr = inet_addr (&numIPAddr$)
	END IF
	IF (bind (socket, &udtSocket, SIZE (udtSocket)) == $$SOCKET_ERROR) THEN
		'CPrint ("p2pBind: wsa error: "+ STRING$(WSAGetLastError ()))
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
	
END FUNCTION

FUNCTION p2pCreateBindSocket (addy$,port,socket)
	'SHARED EXITSTATUS

	'PRINT "p2pCreateBindSocket: ", addy$,,port,,socket

	IFZ addy$ THEN RETURN $$FALSE
	socket = socket ($$AF_INET, $$SOCK_STREAM, 0)
	IF (socket == $$SOCKET_ERROR) THEN RETURN $$FALSE
	
	ret = $$FALSE
	ct = 0
	DO
		ret = p2pBind (socket,addy$,port)
		IFF ret THEN
			Sleep(10)
			INC ct
			IF ct == 10 THEN RETURN $$FALSE
		END IF
	LOOP WHILE (ret == $$FALSE) '&& (EXITSTATUS == $$FALSE))
	
	RETURN $$TRUE
END FUNCTION 

FUNCTION p2pConnect (ipaddress$,port,socket)
	SOCKADDR_IN udtSocket

	
	udtSocket.sin_family = $$AF_INET
	udtSocket.sin_port = htons (port)
	udtSocket.sin_addr = inet_addr (&ipaddress$)

	IF udtSocket.sin_addr = $$INADDR_NONE THEN
		GetIPAddr (ipaddress$, @numIPAddr$)
		udtSocket.sin_addr = inet_addr (&numIPAddr$)
	END IF
	
	socket = socket (udtSocket.sin_family, $$SOCK_STREAM, 0)
	IF (connect (socket, &udtSocket, SIZE(udtSocket)) == $$SOCKET_ERROR) THEN
		'CPrint ("* wsa error "+ STRING$(WSAGetLastError ()))
		IF socket THEN p2pCloseSocket (socket)
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF

END FUNCTION

FUNCTION p2pSendBin (socket,pbuffer,size)
	'SHARED EXITSTATUS

	IF !pbuffer || !size THEN RETURN $$FALSE
	total = 0
	sent = 0
	tsize = size
	buffer = pbuffer
	DO
		sent = send (socket, buffer+total, size, 0)
		IF (sent == $$SOCKET_ERROR || (sent == 0)) THEN RETURN $$FALSE
		total = total + sent
		size = size - sent
	LOOP WHILE (total < tsize) ' && (EXITSTATUS == $$FALSE)

	RETURN $$TRUE
END FUNCTION

FUNCTION p2pListenBin (socket,size,lpbuffer)
	'SHARED EXITSTATUS
	ULONG total


	IF !lpbuffer || !size THEN RETURN $$FALSE
	total = size
		
	DO
		bytesRecv = recv (socket, lpbuffer, total, 0)
		IF (bytesRecv == $$SOCKET_ERROR) THEN RETURN $$FALSE
		IF (bytesRecv == 0) THEN RETURN $$FALSE
 
		total = total - bytesRecv
		lpbuffer = lpbuffer + bytesRecv
	LOOP WHILE (total > 0) '&& (EXITSTATUS == $$FALSE)
	size = total
	
	RETURN $$TRUE
END FUNCTION

FUNCTION CPrint (message$)

	'PRINT message$
END FUNCTION

FUNCTION decrypt_buffer (sbuffer, ssize,STRING password, STRING key)
	FUNCADDR Decrypt (HCRYPTKEY, HCRYPTHASH, XLONG, ULONG, XLONG, XLONG)
	HCRYPTKEY hKey
	HCRYPTHASH hHash
	HCRYPTPROV hProv


	$KEYLENGTH = 0x00800000
	$ENCRYPT_ALGORITHM = $$CALG_RC4		' stream encryption cipher, block size is 1 byte

	'load advapi32.dll library
	hAdvapi = LoadLibraryA (&"advapi32.dll")
	IFZ hAdvapi THEN
		GOSUB HandleError
	END IF

	'get function address for CryptDecrypt
	Decrypt = GetProcAddress (hAdvapi, &"CryptDecrypt")
	IFZ Decrypt THEN
		GOSUB HandleError
	END IF

	' Get the handle to the default provider
	IF (!CryptAcquireContextA (&hProv, NULL, &$$MS_ENHANCED_PROV, $$PROV_RSA_FULL, 0)) THEN
		IF (GetLastError () == $$NTE_BAD_KEYSET) THEN
			IF (!CryptAcquireContextA (&hProv, NULL, &$$MS_ENHANCED_PROV, $$PROV_RSA_FULL, $$CRYPT_NEWKEYSET)) THEN
				GOSUB HandleError
			END IF
		ELSE
			GOSUB HandleError
		END IF
	END IF

	'Check for the existence of a password.
	IFZ password THEN
		IFZ key THEN
			GOSUB HandleError
		END IF
		
		' Decrypt the file with the saved session key.
		dwKeyBlobLen = SIZE(key)
		IF (!dwKeyBlobLen) THEN
			GOSUB HandleError
		END IF

		' Import key BLOB into CSP.
		IF (!CryptImportKey (hProv, &key, dwKeyBlobLen, 0, 0, &hKey)) THEN
			GOSUB HandleError
		END IF

	ELSE

		' Decrypt the file with a session key derived from a password.
		' Create a hash object.
		IF (!CryptCreateHash (hProv, $$CALG_MD5, 0, 0, &hHash)) THEN
			GOSUB HandleError
		END IF

		' Hash in the password data.
		IF (!CryptHashData (hHash, &password, LEN (password), 0)) THEN
			GOSUB HandleError
		END IF

		' Derive a session key from the hash object.
		IF (!CryptDeriveKey (hProv, $ENCRYPT_ALGORITHM, hHash, $KEYLENGTH, &hKey)) THEN
			GOSUB HandleError
		END IF

		' Destroy the hash object.
		IF (!CryptDestroyHash (hHash)) THEN
			GOSUB HandleError
		END IF

	END IF

	' The decryption key is now available
	' for stream ciphers, buffer size can be equal to the block length
	dwBlockLen = 8192
	lpBuffer = sbuffer
	count = dwBlockLen
	final = 0

	DO
		IF (lpBuffer+count) >= (sbuffer+ssize) THEN
			final = 1
			count = (sbuffer+ssize) - lpBuffer
		END IF

		IF (!@Decrypt (hKey, 0, final, 0, lpBuffer, &count)) THEN
			GOSUB HandleError
		END IF
		lpBuffer = lpBuffer + dwBlockLen

	LOOP UNTIL final

	' Destroy the session key.
	IF (hKey) THEN
		IF (!CryptDestroyKey (hKey)) THEN
			GOSUB HandleError
		END IF
	END IF

	' Release the provider handle.
	IF (hProv) THEN
		IF (!CryptReleaseContext (hProv, 0)) THEN
			GOSUB HandleError
		END IF
	END IF

	RETURN 1

SUB HandleError

	IF hKey THEN CryptDestroyKey(hKey)
	IF hHash THEN CryptDestroyHash (hHash)
	IF hProv THEN CryptReleaseContext (hProv, 0)
	IF hAdvapi THEN FreeLibrary (hAdvapi)

	RETURN 0
END SUB

END FUNCTION

FUNCTION encrypt_buffer (sbuffer,ssize,STRING password)
	FUNCADDR Encrypt (HCRYPTKEY, HCRYPTHASH, XLONG, ULONG, XLONG, XLONG, ULONG)
	HCRYPTKEY hKey, hXchgKey
	HCRYPTHASH hHash
	HCRYPTPROV hProv


	$KEYLENGTH = 0x00800000
	$ENCRYPT_ALGORITHM = $$CALG_RC4		' stream encryption cipher, block size is 1 byte

	hAdvapi = LoadLibraryA (&"advapi32.dll")
	IFZ hAdvapi THEN
		GOSUB HandleError
	END IF

	Encrypt = GetProcAddress (hAdvapi, &"CryptEncrypt")
	IFZ Encrypt THEN
		GOSUB HandleError
	END IF

	' Get the handle to the default provider.
	IF (!CryptAcquireContextA (&hProv, NULL, &$$MS_ENHANCED_PROV, $$PROV_RSA_FULL, 0)) THEN
		IF (GetLastError () == $$NTE_BAD_KEYSET) THEN
			IF (!CryptAcquireContextA (&hProv, NULL, &$$MS_ENHANCED_PROV, $$PROV_RSA_FULL, $$CRYPT_NEWKEYSET)) THEN
				GOSUB HandleError
			END IF
		ELSE
			GOSUB HandleError
		END IF
	END IF

	' Create the session key.
	IFZ password THEN
		' No password was passed.
		' Encrypt the file with a random session key,
		' and write the key to dest buffer
		' create a random session key.
		IF (!CryptGenKey (hProv, $ENCRYPT_ALGORITHM, $KEYLENGTH | $$CRYPT_EXPORTABLE, &hKey)) THEN
			GOSUB HandleError
		END IF

		' Get the handle to the encrypter's exchange public key.
		IF (!CryptGetUserKey (hProv, $$AT_KEYEXCHANGE, &hXchgKey)) THEN
			IF (GetLastError () == $$NTE_NO_KEY) THEN
				IF (!CryptGenKey (hProv, $$AT_KEYEXCHANGE, 0, &hXchgKey)) THEN GOSUB HandleError
			ELSE
				GOSUB HandleError
			END IF
		END IF

		' Determine size of the key BLOB, and allocate memory.
		IF (!CryptExportKey (hKey, hXchgKey, $$SIMPLEBLOB, 0, NULL, &dwKeyBlobLen)) THEN
			GOSUB HandleError
		END IF

		IFZ dwKeyBlobLen THEN GOSUB HandleError
		password = NULL$(dwKeyBlobLen)

		' Encrypt and export the session key into a simple key BLOB.
		IF (!CryptExportKey (hKey, hXchgKey, $$SIMPLEBLOB, 0, &password, &dwKeyBlobLen)) THEN
			GOSUB HandleError
		END IF

		' Release the key exchange key handle.
		IF (hXchgKey) THEN
			IF (!CryptDestroyKey (hXchgKey)) THEN
				GOSUB HandleError
			END IF
			hXchgKey = 0
		END IF

	ELSE
		' the file will be encrypted with a session key derived from a password.
		' the session key will be recreated when the file is decrypted
		' only if the password used to create the key is available.

		' create a hash object.
		IF (!CryptCreateHash (hProv, $$CALG_MD5, 0, 0, &hHash)) THEN
			GOSUB HandleError
		END IF

		' Hash the password.
		IF (!CryptHashData (hHash, &password, LEN(password), 0)) THEN
			GOSUB HandleError
		END IF

		' Derive a session key from the password hash object.
		IF (!CryptDeriveKey (hProv, $ENCRYPT_ALGORITHM, hHash, $KEYLENGTH, &hKey)) THEN
			GOSUB HandleError
		END IF

		' Destroy hash object.
		IF (hHash) THEN
			IF (!CryptDestroyHash (hHash)) THEN
				GOSUB HandleError
			END IF
		END IF
		hHash = 0

	END IF

	' The session key is now ready
	' for stream ciphers, buffer size can be equal to the block length
	dwBlockLen = 8192
	lpBuffer = sbuffer
	count = dwBlockLen
	final = 0

	DO
		IF (lpBuffer+count) >= (sbuffer+ssize) THEN
			final = 1
			count = (sbuffer+ssize) - lpBuffer
		END IF

		ret = @Encrypt (hKey, 0, final, 0, lpBuffer, &count, dwBlockLen)
		IFZ ret THEN GOSUB HandleError
		lpBuffer = lpBuffer + dwBlockLen

	LOOP UNTIL final
	
	' Destroy the session key.
	IF (hKey) THEN
		IF (!CryptDestroyKey (hKey)) THEN
			GOSUB HandleError
		END IF
	END IF

	' Release the provider handle.
	IF (hProv) THEN
		IF (!CryptReleaseContext (hProv, 0)) THEN
			GOSUB HandleError
		END IF
	END IF

	'free the dll
	IF hAdvapi THEN FreeLibrary (hAdvapi)
	RETURN $$TRUE
	
SUB HandleError

	IF hKey THEN CryptDestroyKey(hKey)
	IF hXchgKey THEN CryptDestroyKey (hXchgKey)
	IF hHash THEN CryptDestroyHash (hHash)
	IF hProv THEN CryptReleaseContext (hProv, 0)
	IF hAdvapi THEN FreeLibrary (hAdvapi)

	RETURN $$FALSE
END SUB

END FUNCTION

FUNCTION zlib_decompress (source,ssize,dest,dsize)

	IF (uncompress (dest,dsize,source,ssize) == $$Z_OK) THEN
		RETURN $$TRUE
	ELSE
		RETURN $$FALSE
	END IF
END FUNCTION

FUNCTION zlib_compress (source,ssize,dest,dsize,level)


	IF (compress2 (dest,dsize,source,ssize,level) < 0) THEN
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
END FUNCTION

FUNCTION zlib_compress2 (sbuffer,ssize,STRING dbuffer)

	
	dsize = ssize + 1024
	dbuffer = NULL$(dsize)
	IFT zlib_compress (sbuffer,ssize,&dbuffer,&dsize,$$Z_BEST_COMPRESSION) THEN
		RETURN dsize
	ELSE
		dbuffer = ""
		RETURN 0
	END IF
END FUNCTION

FUNCTION getLastSlash(str$, stop)
	$PathSlash$   = "\\" 


	IF stop < 0 THEN
		slash1 = RINSTR(str$, "/")
		slash2 = RINSTR(str$, $PathSlash$)
	ELSE
		slash1 = RINSTR(str$, "/", stop)
		slash2 = RINSTR(str$, $PathSlash$, stop)
	END IF
	IFZ slash1 THEN
		RETURN slash2
	ELSE
		RETURN MAX(slash1, slash2)
	END IF
	
END FUNCTION

FUNCTION DecomposePathname (pathname$, @path$, @parent$, @filename$, @file$, @extent$)
'
	path$ = ""
	file$ = ""
	extent$ = ""
	parent$ = ""
	filename$ = ""
	name$ = TRIM$ (pathname$)
	dot = RINSTR (name$, ".")
	slash = getLastSlash(name$, -1)
	
	IF slash THEN preslash = getLastSlash(name$, slash-1)
	IF (dot < slash) THEN dot = 0
'
	filename$ = MID$ (name$, slash+1)
	IFZ dot THEN
		file$ = filename$
	ELSE
		file$ = MID$ (name$, slash+1, dot-slash-1)
		extent$ = MID$ (name$, dot)
	END IF
'
	IF slash THEN
		path$ = LEFT$ (name$, slash-1)
		IF preslash THEN
			parent$ = MID$ (name$, preslash+1, slash-preslash-1)
		ELSE
			parent$ = LEFT$ (name$, slash-1)
		END IF
	END IF
	
END FUNCTION

FUNCTION InitWSA ()
	WSADATA wsadata

	IF WSAStartup (2 | (2 << 8), &wsadata) THEN RETURN $$FALSE
	'IF wsadata.wVersion != version THEN RETURN $$FALSE
	RETURN $$TRUE
END FUNCTION

END PROGRAM
