
	' A Remote Administration Application

PROGRAM	"client"
VERSION	"0.7"
' MAKEFILE "xexe.xxx"
' CONSOLE

	IMPORT "xst"
	IMPORT "gdi32"
	IMPORT "wsock32"
	IMPORT "kernel32"
	IMPORT "msvcrt"
	IMPORT "user32"
	IMPORT "shell32"
	IMPORT "comctl32"
	IMPORT "comdlg32"
	IMPORT "advapi32"
	IMPORT "../p2pfiled.dec"
	IMPORT "../net.dec"
	IMPORT "../fs/fs.obj" 		' compile fs.x (as library) first to obtain both fs.lib and fs.dll

	
$$Tab1	= 120
$$main = 200
$$event = 201
$$stream = 202
$$download = 203
$$upload = 204
$$tree = 205

$$DNL_go	= 501
$$DNL_path	= 502
$$DNL_port	= 503
$$DNL_browse = 504

$$UPL_go	= 511
$$UPL_path	= 512
$$UPL_port	= 513
$$UPL_browse = 514

$$TreePop_Title		= 160	' file menu
$$TreePop_DownL		= 161
$$TreePop_CreateD	= 162
$$TreePop_DelFile	= 163
$$TreePop_Rename	= 164
$$TreePop_Refresh	= 165

$$TreePop_DTitle	= 170	' folder menu
$$TreePop_UpL		= 171
$$TreePop_RemTree	= 172
$$TreePop_DelDir	= 173
$$TreePop_RemFiles	= 174
$$TreePop_Prop		= 175

$$EventURL_Open		= 180

$$EM_SETLIMITTEXT = 197

$$FILE_ATTRIBUTE_SPARSE_FILE	= 512		' from winnt.h, add to kernel32.dec
$$FILE_ATTRIBUTE_REPARSE_POINT	= 1024
$$FILE_ATTRIBUTE_OFFLINE	= 0x1000
$$FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x2000
$$FILE_ATTRIBUTE_ENCRYPTED	= 0x4000
$$FILE_ATTRIBUTE_DEVICE = 64


PACKED TTREE
	XLONG		.hParent
	XLONG		.hItem
	XLONG		.child		' 1 = has child, 0 = no child
END TYPE

DECLARE FUNCTION Entry ()
DECLARE FUNCTION Initialize ()
DECLARE FUNCTION InitGUIsubsystem ()
DECLARE FUNCTION Shutdown ()

DECLARE FUNCTION  WndProc (hwnd, msg, wParam, lParam)
DECLARE FUNCTION  CenterWindow (hwnd)
DECLARE FUNCTION  InitGui ()
DECLARE FUNCTION  RegisterWinClass (className$, titleBar$)
DECLARE FUNCTION  CreateWindows ()
DECLARE FUNCTION  NewWindow (className$, titleBar$, style, x, y, w, h, exStyle)
DECLARE FUNCTION  NewChild (className$, text$, style, x, y, w, h, parent, id, exStyle)
DECLARE FUNCTION  MessageLoop ()
DECLARE FUNCTION  CreateCallbacks ()
DECLARE FUNCTION  eventProc (hWnd, msg, wParam, lParam)
DECLARE FUNCTION  EditProc (hWnd, msg, wParam, lParam)
DECLARE FUNCTION  downProc (hWnd, msg, wParam, lParam)
DECLARE FUNCTION  upProc (hWnd, msg, wParam, lParam)
DECLARE FUNCTION  edit3Proc (hWnd, msg, wParam, lParam)
DECLARE FUNCTION  edit6Proc (hWnd, msg, wParam, lParam)
DECLARE FUNCTION  tab6Proc (hWnd, msg, wParam, lParam)
DECLARE FUNCTION  SetColor (txtColor, bkColor, wParam, lParam)
DECLARE FUNCTION  NewFont (fontName$, pointSize, weight, italic, underline)
DECLARE FUNCTION  SetNewFont (hwndCtl, hFont)
DECLARE FUNCTION  CleanUp ()
DECLARE FUNCTION  InstallTrayIcon (hwnd)
DECLARE FUNCTION  RemoveTrayIcon ()
DECLARE FUNCTION  AddEditText (idx, STRING text)
DECLARE FUNCTION  ClearEditText (edit)
DECLARE FUNCTION  HIWORD (x)
DECLARE FUNCTION  LOWORD (x)
DECLARE FUNCTION  RGB (r, g, b)
DECLARE FUNCTION  ShowOpenFileDialog (hWndOwner, @fileName$, filter$, initDir$, title$)
DECLARE FUNCTION  ShowSaveFileDialog (hWndOwner, @fileName$, filter$, initDir$, title$)
DECLARE FUNCTION  AddTreeViewItem (hwndCtl, hParent, label$, idxImage, idxSelectedImage, hInsertAfter)
DECLARE FUNCTION  GetSysFolderIcon (file$, @hIconFolder, @iIconFolder, @hIconFolderOpen, @iIconFolderOpen)
DECLARE FUNCTION  InitTreeViewImageList (hTreeView)
DECLARE FUNCTION  STRING GetWindowsDir()

DECLARE FUNCTION DecomposePathname (pathname$, path$, parent$, filename$, file$, extent$)
DECLARE FUNCTION getLastSlash(str$, stop)
DECLARE FUNCTION GetNotifyMsg (lParam, hwndFrom, idFrom, code)
DECLARE FUNCTION GetTabChild (htabc)
DECLARE FUNCTION AddEditTabChild (hparent,STRING title,IDC,scroll)
DECLARE FUNCTION AddTreeTabChild (hparent,STRING title,IDC,style)

DECLARE FUNCTION sConnect (idx)
DECLARE FUNCTION sBind (socket,ipaddress$,port)
DECLARE FUNCTION sListen (idx)
DECLARE FUNCTION sOpen (socket)
DECLARE FUNCTION sMessageListen (idx)
DECLARE FUNCTION OpenSConnection (idx)
DECLARE FUNCTION CloseSConnection (idx)
DECLARE FUNCTION SendSMessage (idx,buffer$)
DECLARE FUNCTION SendSMessageBin (idx,pbuffer,len)

DECLARE FUNCTION GetToken (str$,msg$,term)
DECLARE FUNCTION MessagePump (idx,str$)
DECLARE FUNCTION ProcessCommands (idx,str$)
DECLARE FUNCTION ProcessClientText (str$)
DECLARE FUNCTION ProcessClientCmd (idx,cmd$,msg$)

DECLARE FUNCTION JoinServer (idx,server$)
DECLARE FUNCTION DisconnectServer (idx)

DECLARE FUNCTION SessionLog (idx,msg$)
DECLARE FUNCTION EventLog (idx,msg$)

DECLARE FUNCTION STRING driveTypeToName (dtype)
DECLARE FUNCTION CPrint (ectrl,STRING text)
DECLARE FUNCTION sMessageListenBin (socket,size,lpbuffer)
DECLARE FUNCTION STRING trim (str$,char)
DECLARE FUNCTION STRING GetTokenEx (STRING text,term,offset)	' forwards
DECLARE FUNCTION STRING GetLastErrorStr ()
DECLARE FUNCTION STRING WSAErrorToName (errorcode)
DECLARE FUNCTION streamscreen (idx)

DECLARE FUNCTION newSProfile ()
DECLARE FUNCTION setSPServer (idx,STRING server,port,STRING password,socket)
DECLARE FUNCTION getSPServer (idx,STRING address,port,STRING password,socket)

DECLARE FUNCTION ClientDownload (lptext) '(STRING text)
DECLARE FUNCTION ClientUpload (lptext) '(STRING text)
DECLARE FUNCTION ClientListen (STRING text)

DECLARE FUNCTION GetIPAddr (STRING name,STRING ip)	' name to ip
DECLARE FUNCTION GetIPName (STRING ip,STRING name)	' ip to name

DECLARE FUNCTION addToTree (STRING dir)
DECLARE FUNCTION refreshTreeNode(STRING dir)
DECLARE FUNCTION getTreeSelection (hwndCtl)
DECLARE FUNCTION STRING getTreeItemLabel (hwndCtl, hItem)
DECLARE FUNCTION STRING getTreeCompLabel (hItem)
DECLARE FUNCTION getTreeParent (hItem)
DECLARE FUNCTION verifyTreeItem (hParent,STRING dir)
DECLARE FUNCTION getTreeChild (hItem)
DECLARE FUNCTION setTreeChild (hItem)
DECLARE FUNCTION setTreeDrives (STRING drives)
DECLARE FUNCTION createTreeNewDir (hItem, STRING name)
DECLARE FUNCTION renameTreeFile (hItem, STRING name)
DECLARE FUNCTION TreeDelFile (hItem)
DECLARE FUNCTION TreeDelAllFiles (hItem)
DECLARE FUNCTION TreeDelDir (hItem)
DECLARE FUNCTION newTreeRootDir (STRING dir)

DECLARE FUNCTION processFileInfo (STRING info)
DECLARE FUNCTION STRING FileAttributeToName (a)
DECLARE FUNCTION STRING attributeCheck (STRING name)
DECLARE FUNCTION STRING FileSizeToName (GIANT fsize)
DECLARE FUNCTION STRING FileTimeToDateAndTime (filetimeh, filetimel)

DECLARE FUNCTION  EditStreamCallback (dwCookie, pbBuff, cb, pcb)
DECLARE FUNCTION  SetRichEditText (hWndRichEdit, fileName$, format)
DECLARE FUNCTION  CreateRichEdit (x, y, w, h, hParent, id, kbTextMax)
DECLARE FUNCTION AddRichEditTabChild (hparent,STRING title,IDC,style)

DECLARE FUNCTION LaunchBrowser (STRING url)
DECLARE FUNCTION  GetRegKey (key, subkey$, @retdata$)

FUNCTION  Entry ()


	IFF Initialize () THEN
		CPrint ($$main,"failed to initialize")
		Sleep(5000)
		RETURN $$FALSE
	END IF

	InitGUIsubsystem ()
	Shutdown ()
END FUNCTION

FUNCTION GetIPAddr (IPName$, numIPAddr$)
	WSADATA wsadata
	HOSTENT	host


	IF (LEN(IPName$) < 3) THEN RETURN $$FALSE
	host = gethostbyname (&IPName$)
	IF (host.h_addr_list != 0) THEN
		addr = 0
		RtlMoveMemory (&addr, host.h_addr_list, 4)
		RtlMoveMemory (&addr, addr, 4)
		addr2 = inet_ntoa (addr)
'		length = strlen (addr2)
		numIPAddr$ = NULL$ (512)
		RtlMoveMemory (&numIPAddr$, addr2, LEN(numIPAddr$))
		numIPAddr$ = CSIZE$ (numIPAddr$)
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
		IPName$ = NULL$ (512)
		RtlMoveMemory (&IPName$, host.h_name, LEN(IPName$))
		IPName$ = CSIZE$ (IPName$)
	END IF

	RETURN $$TRUE
END FUNCTION

FUNCTION ProcessClientText (str$)


	str$ = LTRIM$(str$)
	IFZ	str$ THEN RETURN $$FALSE

	IF str${0} = '/' THEN
		GetToken (@str$,slash$,'/')
		GetToken (@str$,@cmd$,32)
		ProcessClientCmd (0,TRIM$ (cmd$),str$)
		RETURN $$TRUE
	ELSE
		CPrint ($$main,"- "+str$)
		RETURN $$FALSE
	END IF

END FUNCTION

FUNCTION EventLog (idx,msg$)
	SHARED eventlog$
	STRING text


	ClearEditText ($$event)
	text = "\r\n--- event log start ---"+msg$+"\r\n--- event log end ---"
	CPrint ($$event, text)

	IF eventlog$ THEN
		of = OPEN (eventlog$,$$WRNEW)
		IF of < 3 THEN
			CPrint ($$main," *** unable to save event log: "+eventlog$)
		ELSE
			WRITE [of],text
			CLOSE (of)
		END IF
	END IF
	
	RETURN $$TRUE
END FUNCTION

FUNCTION SessionLog (idx,msg$)
	SHARED sessionlog$
	STRING text


	ClearEditText ($$event)
	text = "\r\n--- session log start ---"+msg$+"\r\n--- session log end ---"
	CPrint ($$event, text)
	
	IF sessionlog$ THEN
		of = OPEN (sessionlog$,$$WRNEW)
		IF of < 3 THEN
			CPrint ($$main," *** unable to save session log: "+sessionlog$)
		ELSE
			WRITE [of],text
			CLOSE (of)
		END IF
	END IF
	
	RETURN $$TRUE
END FUNCTION

FUNCTION ProcessClientCmd (idx,cmd$,msg$)
	SHARED sessionlog$,eventlog$
	RECT rc
	STATIC tid
	STATIC STRING strgd,strgu
	SHARED hwndPrev[]


	msg$ = LTRIM$(RTRIM$(msg$))
	cmd$ = LCASE$(LTRIM$(trim(cmd$,32)))

	SELECT CASE cmd$
		CASE "server","connect"	:JoinServer (idx,msg$): RETURN $$TRUE
		CASE "part","disconnect":DisconnectServer (0): RETURN $$TRUE
		CASE "alias"			:ProcessClientCmd (idx,"server","192.168.1.1 "+STRING$($$SR_LPort)): RETURN $$TRUE
		CASE "quit"				:Shutdown ()
		CASE ELSE				:IFF #authok THEN
									'CPrint ($$main,"*** must auth first")
									 RETURN $$FALSE
								 END IF
	END SELECT

	SELECT CASE cmd$
		CASE "rename"			:renameTreeFile (getTreeSelection (#tree_tab),TRIM$(msg$))
		CASE "newdir"			:createTreeNewDir (getTreeSelection (#tree_tab),TRIM$(msg$))
		CASE "tree"				:newTreeRootDir (TRIM$(msg$))
		CASE "upload"			:strgu = msg$
								 _beginthreadex (NULL, 0, &ClientUpload(), &strgu, 0, &tid)
								 Sleep(20)
		CASE "download"			:strgd = msg$
								 _beginthreadex (NULL, 0, &ClientDownload(), &strgd, 0, &tid)
								 Sleep(20)
		'CASE "listen"			:ClientListen (@msg$)
		CASE "clr","cls"		:ClearEditText (XLONG(msg$)+ $$main-1)
		CASE "getslog"			:sessionlog$ = msg$: SendSMessage(idx,"getslog")
		CASE "getelog"			:ClearEditText ($$event)
								 CPrint ($$event, "\r\n--- event log start ---\r\n")
								 eventlog$ = msg$: SendSMessage(idx,"getelog")
		CASE "reauth"			:SendSMessage(idx,"AUTH "+ $$SR_AUTHPASS)
	'	CASE "."				:Shutdown ()
		CASE "stron"			:#streamp = XLONG(msg$): IFZ #streamp THEN #streamp = $$SR_SPORT
								 IF !#hstream && (#stream == $$FALSE) THEN
									#hstream = _beginthreadex (NULL, 0, &streamscreen(), idx, 0, &tid)
								 	Sleep(20)
								 END IF
		CASE "stroff"			:#stream = $$FALSE
								 Sleep (1000)
								 #hstream = 0
		CASE "strp"				:#streamp = XLONG (msg$)
								 CPrint ($$main,"*** stream port set to "+STRING$(#streamp))
		CASE "strq"				:#streamq = XLONG (msg$)
								 CPrint ($$main,"*** stream quality set to "+STRING$(#streamq))
		CASE "strt"				:#streamt = XLONG (msg$)
								 CPrint ($$main,"*** stream delay set to "+STRING$(#streamt))
		CASE ELSE				:SendSMessage(idx,cmd$+" "+msg$)
	END SELECT

END FUNCTION

FUNCTION newTreeRootDir (STRING dir)

	IFZ INSTRI(dir,":") THEN
		CPrint ($$main,"* invalid path: "+dir)
		RETURN 0
	END IF
	IF RIGHT$(dir,1) != "\\" THEN dir = dir+"\\"
	hItem = addToTree ("-1 "+dir)
	setTreeChild (hItem)
	SendSMessage(idx,"treeb "+STRING$(hItem)+" "+dir)

	RETURN 1
END FUNCTION

FUNCTION ClientUpload (ptext) ' (STRING text)
	TP2PFILE file
	TP2P p2p
	STRING text


	IF (WaitForSingleObject (#hsmUpL,30000) == $$WAIT_TIMEOUT) THEN
		RETURN $$FALSE
	END IF
	text = CSTRING$(ptext)

	IF newP2P(@p2p) THEN
		auths$ = GetTokenEx (@text,',',0)
		addr$ = GetTokenEx (@text,',',0)
		port = ULONG(GetTokenEx (@text,',',0))
		file.auth = @p2p.GetAdler(&auths$,LEN(auths$))
		file.srcfile = GetTokenEx (@text,',',0)
		file.desfile = GetTokenEx (@text,',',0)
		file.start = ULONG(GetTokenEx (@text,',',0))
		file.end = ULONG(GetTokenEx (@text,',',0))
		file.flags = ULONG(GetTokenEx (@text,0,0))
		file.blocks = 0 'use default block size

		CPrint ($$main,"* uploading file "+file.srcfile)
		SendSMessage (idx,"listen "+STRING$(file.auth)+","+STRING$(port)) 
		Sleep (200)

		ret = @p2p.FileUpload (file,addr$,port)
		@p2p.Free(p2p)
	ELSE
		ret = $$FALSE
	END IF

	IFT ret THEN
		CPrint ($$main,"* upload completed: "+file.srcfile)
	ELSE
		CPrint ($$main,"* upload failed: "+file.srcfile)
	END IF

	ReleaseSemaphore (#hsmUpL,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION ClientDownload (ptext) ' (STRING text)
	TP2PFILE file
	TP2P p2p
	STRING text
	

	IF (WaitForSingleObject (#hsmDownL,30000) == $$WAIT_TIMEOUT) THEN
		CPrint ($$main,"* download file timeout")
		RETURN $$FALSE
	END IF
	text = CSTRING$(ptext)

	IF newP2P(@p2p) THEN
		auths$ = GetTokenEx (@text,',',0)
		addr$ = GetTokenEx (@text,',',0)
		port = ULONG(GetTokenEx (@text,',',0))
		file.auth = @p2p.GetAdler(&auths$,LEN(auths$))
		file.srcfile = GetTokenEx (@text,',',0)
		file.desfile = GetTokenEx (@text,',',0)
		file.start = ULONG(GetTokenEx (@text,',',0))
		file.end = ULONG(GetTokenEx (@text,',',0))
		file.flags = ULONG(GetTokenEx (@text,0,0))
		file.blocks = 0 'use default block size

		CPrint ($$main,"* downloading file "+file.srcfile)
		SendSMessage (idx,"listen "+STRING$(file.auth)+","+STRING$(port)) 
		Sleep (200)

		ret = @p2p.FileDownload (file,addr$,port)
		@p2p.Free(p2p)
	ELSE
		ret = $$FALSE
	END IF

	IFT ret THEN
		CPrint ($$main,"* download completed: "+file.srcfile)
	ELSE
		CPrint ($$main,"* download failed: "+file.srcfile)
	END IF

	ReleaseSemaphore (#hsmDownL,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION ClientListen (STRING text)
	TP2P p2p


	IF WaitForSingleObject (#hsmListen,15000) == $$WAIT_TIMEOUT THEN
		RETURN $$FALSE
	END IF
	
	auth$ = GetTokenEx (@text,',',0)
	port = ULONG(GetTokenEx (@text,0,0))
	IF newP2P(@p2p) THEN
		auth = @p2p.GetAdler(&auth$,LEN(auth$))
		ret = @p2p.FileListen (auth,port)
		@p2p.Free(p2p)
	ELSE
		ret = $$FALSE
	END IF
	ReleaseSemaphore (#hsmListen,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION STRING GetTokenEx (str$,term,offset)


	IFZ str$ THEN RETURN ""

	len = LEN(str$)
	msg$=""
	IF (offset >= len-1) THEN RETURN ""

	FOR p = offset TO len-1
		IF str${p} == term THEN
			msg$ = LEFT$(str$,p)
			INC p
			str$ = RIGHT$(str$,len-p)
			RETURN msg$
		END IF
	NEXT p

	msg$ = str$
	str$ = ""
	RETURN msg$
END FUNCTION

FUNCTION streamscreen (idx)
	SHARED APPLSTATUS
	STRING srcfile,ipaddress
	STATIC n
	TP2PFILE file
	TP2P p2p


	IFT #stream THEN RETURN $$FALSE
	#stream = $$TRUE

	getSPServer (idx,@ipaddress,port,password$,socket)
	CPrint ($$main,"* initiating stream")
	auth$ = GetLastErrorStr()
	IFZ auth$ THEN auth$ = "none"

	IF newP2P(@p2p) THEN
		auth = @p2p.GetAdler(&auth$,LEN(auth$))
		@p2p.Free(p2p)
		fail = 0
	ELSE
		fail = 1
	END IF

	c = 0
	DO UNTIL fail
		IF WaitForSingleObject (#hsmDownL,30000) != $$WAIT_TIMEOUT THEN
			INC c: IF c > 5 THEN c = 0

			srcfile = $$SR_SCRCAP + STRING$(c)
			SendSMessage (idx,"capscr "+srcfile+","+STRING$(#streamq))
			IFT #stream THEN Sleep (1100)
	
			SendSMessage (idx,"listen "+STRING$(auth)+","+STRING$(#streamp))
			Sleep (200)

			file.auth = auth
			file.srcfile = srcfile
			file.desfile = "tmp"+STRING$(n)+".jpg"
			file.start = 0
			file.end = 0
			file.flags = 0
			file.blocks = 0

			IF newP2P(@p2p) THEN
				ret = @p2p.FileDownload (file,ipaddress,#streamp)
				@p2p.Free(p2p)
			ELSE
				ret = $$FALSE
			END IF

			IFT ret THEN
				CPrint ($$main,"* download completed: "+file.desfile)
			ELSE
				CPrint ($$main,"* download failed: "+file.desfile)
			END IF
			
			ReleaseSemaphore (#hsmDownL,1,NULL)
		END IF
		
		IFT #stream THEN
			INC n
			IF ((#CONNECTED == $$TRUE) && (APPLSTATUS == $$TRUE)) THEN Sleep (#streamt)
		ELSE
			EXIT DO
		END IF
	LOOP WHILE ((#stream == $$TRUE) && (#CONNECTED == $$TRUE) && (APPLSTATUS == $$TRUE))

	CPrint ($$main,"* streaming stopped")
	#stream = $$FALSE
	#hstream = 0
	RETURN $$TRUE
END FUNCTION

FUNCTION JoinServer (idx,str$)


	IFT #CONNECTED THEN
		CPrint ($$main,"*** disconnect first ***")
		RETURN $$FALSE
	END IF

	GetToken (@str$,@server$,32)
	GetToken (str$,@port$,0)
	port = XLONG (port$)
	IFZ port THEN port = $$SR_LPort	
	idx = 0
	setSPServer (idx,server$,port,"",0)
	#server$ = server$

	CPrint ($$main,"*** connecting to "+server$+":"+STRING$(port))
 	IFT OpenSConnection (idx) THEN
		#CONNECTED = $$TRUE
		buffer$ = "AUTH "+$$SR_AUTHPASS
		SendSMessageBin (idx,&buffer$, SIZE(buffer$))
		_beginthreadex (NULL, 0, &sMessageListen(), idx, 0, &tid2)
		CPrint ($$main,"*** connected to "+server$+" on port "+STRING$(port))
		RETURN $$TRUE
	ELSE
		RETURN $$FALSE
	END IF

END FUNCTION

FUNCTION DisconnectServer (idx)


	idx = 0
	ProcessClientCmd (idx,"strevent","off")
	IFT #stream THEN ProcessClientCmd (idx,"stroff","")
	
	Sleep (500)
	getSPServer (idx,@server$,port,"",0)
	CPrint ($$main,"*** disconnecting from "+server$)
	CloseSConnection (idx)
	CPrint ($$main,"*** "+server$+" disconnected")
	#CONNECTED = $$FALSE
	Sleep(100)

	RETURN $$TRUE
END FUNCTION

FUNCTION Shutdown ()
	SHARED APPLSTATUS
	

	APPLSTATUS = $$FALSE
	IFT #CONNECTED THEN
		#CONNECTED = $$FALSE
		DisconnectServer (0)
	END IF
	
	FSshutdown()
	RemoveTrayIcon ()
	DestroyMenu (#hSysTrayMenu)
	DestroyMenu (#hMenuURL)
	DestroyMenu (#hMenuFile)
	DestroyMenu (#hMenuFolder)
	DeleteObject (#hFontArial)
	PostQuitMessage (0)
	CleanUp ()
	QUIT (0)

END FUNCTION

FUNCTION SendSMessage (idx,STRING buffer)
	
	buffer = buffer + "\r\n"
	RETURN SendSMessageBin (idx, &buffer, SIZE(buffer))
END FUNCTION

FUNCTION SendSMessageBin (idx,pbuffer,size)
	SHARED TSPROFILE sprofile[]
	

	IF WaitForSingleObject (#hsmSend,29000) == $$WAIT_TIMEOUT THEN RETURN $$FALSE
	IF !pbuffer || !size THEN
		ReleaseSemaphore (#hsmSend,1,NULL)
		RETURN $$FALSE
	END IF
	socket = sprofile[idx].server.socket
	IFZ socket THEN
		CPrint ($$main,"* not connected")
		ReleaseSemaphore (#hsmSend,1,NULL)
		RETURN $$FALSE
	END IF

	total = 0
	sent = 0
	tsize = size
	DO
		sent = send (socket, pbuffer+sent, size, 0)
		IF (sent == $$SOCKET_ERROR) THEN
			CPrint ($$main,"* send error: "+WSAErrorToName(WSAGetLastError()))
			ReleaseSemaphore (#hsmSend,1,0)
			RETURN $$FALSE
		ELSE
			total = total + sent
			size = size - sent
		END IF
	LOOP WHILE (total < tsize)

	ReleaseSemaphore (#hsmSend,1,NULL)
	RETURN $$TRUE
END FUNCTION

FUNCTION GetToken (str$,msg$,term)


	IFZ str$ THEN RETURN $$FALSE
	len = LEN(str$)
	msg$=""

	FOR p = 0 TO len-1
		IF str${p} = term THEN
			INC p
			str$ = RIGHT$(str$,len-p)
			RETURN p
		ELSE
			msg$ = msg$ + CHR$(str${p})
		END IF
	NEXT p

	str$ = ""
	RETURN $$TRUE
END FUNCTION

FUNCTION STRING trim (str$,char)


	IFZ str$ THEN RETURN ""
	out$=""

	FOR p = 0 TO LEN (str$)-1
		IF str${p} != char THEN out$ = out$ + CHR$(str${p})
	NEXT p

	str$ = out$
	RETURN str$
	
END FUNCTION

FUNCTION sBind (socket,ipaddress$,port)
	SOCKADDR_IN udtSocket


	GetIPAddr (ipaddress$, @numIPAddr$)
	address$$ = inet_addr (&numIPAddr$)
	IF (address$$ <= 0) THEN address$$ = $$INADDR_ANY
	IF (port <= 0) THEN port = 0
	
	udtSocket.sin_family = $$AF_INET
	udtSocket.sin_port = htons (port)
	udtSocket.sin_addr = address$$
	
	length = LEN (udtSocket)
	
	IF bind (socket, &udtSocket, length) == $$SOCKET_ERROR THEN
		Sleep (10)
		CPrint ($$main,"* bind error: "+WSAErrorToName(WSAGetLastError()))
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
	
	
END FUNCTION

FUNCTION sListen (socket)

	
	IF listen (socket, 1) == $$SOCKET_ERROR THEN
		Sleep (10)
		CPrint ($$main,"* listen error: "+WSAErrorToName(WSAGetLastError()))
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
		
END FUNCTION


FUNCTION sOpen (socket)


	socket = socket ($$AF_INET, $$SOCK_STREAM, 0)
	IFZ socket THEN
		Sleep (10)
		CPrint ($$main,"* create socket error: "+WSAErrorToName(WSAGetLastError()))
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
	
END FUNCTION

FUNCTION sConnect (idx)
	SOCKADDR_IN udtSocket


	getSPServer (idx,@ipaddress$,@port,password$,@socket)
	
	udtSocket.sin_family = $$AF_INET
	udtSocket.sin_port = htons (port)
	udtSocket.sin_addr = inet_addr (&ipaddress$)

	IF udtSocket.sin_addr = $$INADDR_NONE THEN
		GetIPAddr (ipaddress$, @numIPAddr$)
		udtSocket.sin_addr = inet_addr (&numIPAddr$)
	END IF
	
	IF (connect (socket, &udtSocket, SIZE(udtSocket)) == $$SOCKET_ERROR) THEN
		Sleep(10)
		CPrint ($$main,"* connect error: "+WSAErrorToName(WSAGetLastError()))
		closesocket (socket)
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF

END FUNCTION

FUNCTION sMessageListenBin (socket,size,lpbuffer)
	ULONG total

	IF !size || !lpbuffer THEN RETURN $$FALSE
	total = size
		
	DO
'		CPrint ($$main,"waiting...")
		bytesRecv = recv (socket, lpbuffer, total, 0)
'		CPrint ($$main,STRING$(bytesRecv))
		IF (bytesRecv == $$SOCKET_ERROR) THEN RETURN $$FALSE
		IF (bytesRecv == 0) THEN EXIT DO
 
		total = total - bytesRecv
		lpbuffer = lpbuffer + bytesRecv
	LOOP WHILE (total > 0) && (#CONNECTED == $$TRUE)

	size = total
	RETURN $$TRUE
END FUNCTION

FUNCTION sMessageListen (idx)
	STRING buffer

	
	getSPServer (idx,ipaddress$,port,password$,@socket)
	
	DO
		buffer = NULL$($$MAX_LBUFFER)
		bytesRead = recv (socket, &buffer, $$MAX_LBUFFER, 0)
		
		IF (bytesRead == $$SOCKET_ERROR || bytesRead == 0) THEN
			EXIT DO
		ELSE
			MessagePump (idx,LEFT$(buffer,bytesRead))
		END IF
	LOOP WHILE (#CONNECTED == $$TRUE)

	#CONNECTED = $$FALSE
END FUNCTION

FUNCTION MessagePump (idx,msg$)
	SHARED APPLSTATUS
	STATIC cmd$
	

	msg$ = cmd$ + msg$
	msglen = LEN(msg$)
	p = LEN (cmd$)
	start = 1
	flag = $$FALSE
	
	DO
		SELECT CASE msg${p}
			CASE 0x01		:msg${p} = 0x0D: flag = $$FALSE
			CASE 0x02		:msg${p} = 0x0A: flag = $$FALSE
			'CASE 0x05		:msg${p} = 32: flag = $$FALSE
			CASE 0x0D		:flag = $$TRUE
			CASE 0x0A		:IFT flag THEN
							 	cmd$ = MID$(msg$,start,p-start)
							 	IF cmd$ THEN ProcessCommands (idx,cmd$)
								cmd$ = ""
							 	start = p+2
							 END IF
							 flag = $$FALSE
			CASE ELSE		:IFT flag THEN flag = $$FALSE
		END SELECT

		INC p	
	LOOP WHILE ((p < msglen) && (APPLSTATUS == $$TRUE))

	IF (p-start+1) < 0 THEN RETURN 0
	IF start > LEN (msg$) THEN RETURN 0
	cmd$ = MID$(msg$,start,p-start+1)
	RETURN 0
END FUNCTION

FUNCTION ProcessCommands (idx,msg$)
	STRING buffer


	GetToken (@msg$,@cmd$,32)
	SELECT CASE UCASE$(cmd$)
		CASE "CMSG"			:CPrint ($$main,@msg$)
		CASE "DIR"			:addToTree(@msg$)
		CASE "REFRESH"		:refreshTreeNode(@msg$)
		CASE "KEY"			:CPrint ($$stream,@msg$)
		CASE "FINFO"		:processFileInfo (@msg$)
		CASE "KEYLOG"		:SessionLog ($$event,@msg$)
		CASE "EVENTFILE"	:EventLog ($$event,@msg$)
		CASE "EVENTLOGPART"	:CPrint ($$event, @msg$)
		CASE "DRIVES"		:IF msg$ THEN setTreeDrives (@msg$)
		CASE "DISCONNECT"	:DisconnectServer (0)
		CASE "PING"			:SendSMessage(idx,"PONG "+ msg$)
		CASE "AUTHFAIL"		:#authok = $$FALSE
		CASE "AUTHOK"		:#authok = $$TRUE
		CASE $$SR_AUTHCMD	:SendSMessage(idx,"AUTH "+ $$SR_AUTHPASS)
		CASE ELSE			:CPrint ($$main	,"::"+cmd$+" "+msg$)
	END SELECT

	RETURN $$TRUE
END FUNCTION

FUNCTION processFileInfo (STRING info)
	STRING name


	name = GetTokenEx(@info,'|',0)
	CPrint ($$main,"\r\n--- properties: "+name)
	CPrint ($$main,":attributes\t"+FileAttributeToName(XLONG(GetTokenEx(@info,32,0))))
	CPrint ($$main,":size\t\t"+FileSizeToName(GIANT(GetTokenEx(@info,32,0))))
	
	IF RIGHT$(name,1) == "\\" THEN
		CPrint ($$main,":folders\t\t"+GetTokenEx(@info,32,0))
		CPrint ($$main,":files\t\t"+GetTokenEx(@info,32,0))
	END IF
	
	filetimel = ULONG(GetTokenEx(@info,32,0))
	filetimeh = ULONG(GetTokenEx(@info,32,0))
	CPrint ($$main,":created\t\t"+FileTimeToDateAndTime (filetimeh, filetimel))

	filetimel = ULONG(GetTokenEx(@info,32,0))
	filetimeh = ULONG(GetTokenEx(@info,32,0))
	CPrint ($$main,":modified\t\t"+FileTimeToDateAndTime (filetimeh, filetimel))
	CPrint ($$main,"--- properties end")

END FUNCTION

FUNCTION STRING FileSizeToName (GIANT fsize)
	STRING ntype
	SINGLE tsize


	SELECT CASE TRUE
		CASE (fsize < 1024)			:tsize = fsize: ntype = "bytes"
		CASE (fsize < (1024**2))	:tsize = ((fsize+ 0.5) / 1024.0): ntype = "kb"
		CASE (fsize < (1024**3))	:tsize = ((fsize+ 0.5) / (1024.0**2)): ntype = "mb"
		CASE (fsize >= (1024**3))	:tsize = ((fsize+ 0.5) / (1024.0**3)): ntype = "gb"
	END SELECT

	'FORMAT$("###.##",tsize) ' there's a bug with FORMAT$()
	RETURN STRING$(tsize)+" "+ntype
END FUNCTION

FUNCTION STRING FileAttributeToName (a)
	STRING name

	name = ""
	SELECT CASE ALL TRUE
		CASE (a & $$FILE_ATTRIBUTE_READONLY)	 :name = "Read Only"
		CASE (a & $$FILE_ATTRIBUTE_HIDDEN)		 :name = attributeCheck(name) + "Hidden"
		CASE (a & $$FILE_ATTRIBUTE_SYSTEM)		 :name = attributeCheck(name) + "System"
		CASE (a & $$FILE_ATTRIBUTE_DIRECTORY)	 :name = attributeCheck(name) + "Directory"
		CASE (a & $$FILE_ATTRIBUTE_ARCHIVE)		 :name = attributeCheck(name) + "Archive"
		CASE (a & $$FILE_ATTRIBUTE_NORMAL)		 :name = attributeCheck(name) + "Normal"
		CASE (a & $$FILE_ATTRIBUTE_TEMPORARY)	 :name = attributeCheck(name) + "Temporary"
		CASE (a & $$FILE_ATTRIBUTE_ATOMIC_WRITE) :name = attributeCheck(name) + "Atomic Write"
		CASE (a & $$FILE_ATTRIBUTE_XACTION_WRITE):name = attributeCheck(name) + "XAction Write"
		CASE (a & $$FILE_ATTRIBUTE_COMPRESSED)	 :name = attributeCheck(name) + "Compressed"
		CASE (a & $$FILE_ATTRIBUTE_SPARSE_FILE)	 :name = attributeCheck(name) + "Sparse File"
		CASE (a & $$FILE_ATTRIBUTE_REPARSE_POINT):name = attributeCheck(name) + "Reparse Point"
		CASE (a & $$FILE_ATTRIBUTE_ENCRYPTED)	 :name = attributeCheck(name) + "Encrypted"
		CASE (a & $$FILE_ATTRIBUTE_OFFLINE)		 :name = attributeCheck(name) + "Offline"
		CASE (a & $$FILE_ATTRIBUTE_DEVICE)		 :name = attributeCheck(name) + "Device"
		CASE (a & $$FILE_ATTRIBUTE_NOT_CONTENT_INDEXED) :name = attributeCheck(name) + "Not Content Indexed"
	END SELECT

	RETURN name
END FUNCTION

 'function ripped from one of the listview examples
FUNCTION STRING FileTimeToDateAndTime (filetimeh, filetimel)
	SYSTEMTIME  st
	FILETIME  ft

	ft.dwLowDateTime = filetimel
	ft.dwHighDateTime = filetimeh
	IFZ FileTimeToSystemTime (&ft, &st) THEN RETURN ""

	year = st.year
	month = st.month
	day = st.day
	weekDay = st.weekDay
	hour = st.hour
	minute = st.minute
	second = st.second
	
	month$ = STRING$(month)
	IF LEN(month$) < 2 THEN month$ = "0" + month$
	day$ = STRING$(day)
	IF LEN(day$) < 2 THEN day$ = "0" + day$
	date$ = month$ + "/" + day$ + "/" + STRING$(year)
	hour$ = STRING$(hour)
	IF LEN(hour$) < 2 THEN hour$ = "0" + hour$
	minute$ = STRING$(hour)
	IF LEN(minute$) < 2 THEN minute$ = "0" + minute$
	time$ = hour$ + ":" + minute$
	IF hour > 11 && hour < 24 THEN
		ampm$ = "pm"
	ELSE
		ampm$ = "am"
	END IF

	RETURN date$ + " " + time$ + ampm$
END FUNCTION

FUNCTION STRING attributeCheck (STRING name)

	IF name THEN
		RETURN name + ", "
	ELSE
		RETURN ""
	END IF
END FUNCTION

FUNCTION setTreeDrives (STRING drives)
	STRING root,vname

	DO
		root = GetTokenEx (@drives,32,0)
		IFZ root THEN EXIT DO
		type = XLONG(GetTokenEx (@drives,32,0))
		vname = GetTokenEx (@drives,',',0)
		CPrint ($$main,root+" "+vname+" ("+driveTypeToName(type)+")")

		IF type > $$DRIVE_REMOVABLE THEN
			hItem = addToTree ("-1 "+root)
			IF hItem THEN
				IFZ getTreeChild (hItem) THEN
					setTreeChild (hItem)
					SendSMessage(idx,"treeb "+STRING$(hItem)+" "+root)
					Sleep (1000)
				END IF
			END IF
		END IF
	LOOP WHILE (drives != "")

END FUNCTION

FUNCTION STRING driveTypeToName (dtype)
	STRING name

	SELECT CASE dtype
		CASE $$DRIVE_REMOVABLE		:name = "Removable"
		CASE $$DRIVE_FIXED			:name = "Fixed"
		CASE $$DRIVE_REMOTE			:name = "Remote"
		CASE $$DRIVE_CDROM			:name = "CD-ROM"
		CASE $$DRIVE_RAMDISK		:name = "Ram Disk"
		CASE $$DRIVE_NO_ROOT_DIR	:name = "Not Root Dir"
		CASE ELSE					:name = "Unknown"
	END SELECT
	
	RETURN name
END FUNCTION

FUNCTION setTreeChild (hItem)
	SHARED TTREE dtree[]
	
	
	IFZ hItem THEN RETURN 0
	upper = UBOUND(dtree[])
	FOR i = upper TO 0 STEP -1
		IF dtree[i].hItem == hItem THEN
			dtree[i].child = 1
			RETURN 1
		END IF
	NEXT i

	RETURN 0
END FUNCTION

FUNCTION verifyTreeItem (hParent,STRING label)
	SHARED TTREE dtree[]

	
	IFZ hParent THEN RETURN 0
	IFZ label THEN RETURN
	upper = UBOUND(dtree[])
	FOR i = upper TO 0 STEP -1
		IF dtree[i].hParent == hParent THEN
			IF getTreeItemLabel (#tree_tab, dtree[i].hItem) == label THEN RETURN 1
		END IF
	NEXT i

	RETURN 0
END FUNCTION

FUNCTION getTreeParent (hItem)
	SHARED TTREE dtree[]
	
	IFZ hItem THEN RETURN 0
	upper = UBOUND(dtree[])
	FOR i = upper TO 0 STEP -1
		IF dtree[i].hItem == hItem THEN RETURN dtree[i].hParent
	NEXT i

	RETURN 0
END FUNCTION

FUNCTION getTreeChild (hItem)
	SHARED TTREE dtree[]
	
	IFZ hItem THEN RETURN 0
	upper = UBOUND(dtree[])
	FOR i = upper TO 0 STEP -1
		IF dtree[i].hItem == hItem THEN RETURN dtree[i].child
	NEXT i

	RETURN 0
END FUNCTION

FUNCTION getTreeSelection (hItemCtrl)

	RETURN SendMessageA (hItemCtrl, $$TVM_GETNEXTITEM, $$TVGN_CARET, 0)
END FUNCTION

FUNCTION STRING getTreeItemLabel (hwndCtl, hItem)
	STATIC TV_ITEM tvi
	STATIC STRING text

	tvi.mask = $$TVIF_TEXT | $$TVIF_HANDLE
	tvi.hItem = hItem
	tvi.cchTextMax = 256
	text = NULL$(tvi.cchTextMax)
	tvi.pszText = &text

	SendMessageA (hwndCtl, $$TVM_GETITEM, 0, &tvi)
	RETURN CSIZE$(text)
END FUNCTION

FUNCTION STRING getTreeCompLabel (hItem)
	SHARED TTREE dtree[]
	STRING label


	IFZ hItem THEN RETURN ""
	upper = UBOUND(dtree[])
	label = ""
	DO
		found = 0
		FOR i = upper TO 0 STEP -1		' build complete label
			IF dtree[i].hItem == hItem THEN
				label = getTreeItemLabel (#tree_tab, hItem) + label
				hItem = dtree[i].hParent
				IFZ hItem THEN EXIT DO
				found = 1
			END IF
		NEXT i
		IFZ found THEN CPrint ($$main,"error:getTreeCompLabel():: no label found: "+label)
	LOOP WHILE (hItem != 0)

	RETURN label
END FUNCTION

FUNCTION refreshTreeNode (STRING dir)
	SHARED TTREE dtree[]
	SHARED index


 	IFZ dir THEN RETURN 0
 	hParent = XLONG(GetTokenEx (@dir,32,0))
 	IF (hParent == 0) THEN RETURN
	dir = TRIM$(dir)
	IFZ dir THEN RETURN 0
	IFZ dtree[] THEN DIM dtree[200]


	IF (hParent == -1) THEN
		RETURN 0
		dtree[index].hItem = AddTreeViewItem (#tree_tab, $$TVI_ROOT, dir, 0, 0, $$TVI_LAST)
		dtree[index].hParent = 0
	ELSE
		IF verifyTreeItem (hParent,dir) THEN
			RETURN 0
		ELSE
			dtree[index].hItem = AddTreeViewItem (#tree_tab, hParent, dir, 1, 2,$$TVI_LAST)
			dtree[index].hParent = hParent
		END IF
	END IF
	InvalidateRect (#tree_tab, 0, 0) ' : UpdateWindow (#tree_tab)

	INC index
	IF index > UBOUND(dtree[]) THEN REDIM dtree[index+200]
	RETURN dtree[index-1].hItem
END FUNCTION

FUNCTION addToTree (STRING dir)
	SHARED TTREE dtree[]
	SHARED index


 	IFZ dir THEN RETURN 0
 	hParent = XLONG(GetTokenEx (@dir,32,0))
 	IF (hParent == 0) THEN RETURN
	dir = TRIM$(dir)
	IFZ dir THEN RETURN 0
	IFZ dtree[] THEN DIM dtree[200]

	IF (hParent == -1) THEN
		dtree[index].hItem = AddTreeViewItem (#tree_tab, $$TVI_ROOT, dir, 0, 0, $$TVI_LAST)
		dtree[index].hParent = 0
	ELSE
		dtree[index].hItem = AddTreeViewItem (#tree_tab, hParent, dir, 1, 2,$$TVI_LAST)
		dtree[index].hParent = hParent
	END IF
	InvalidateRect (#tree_tab, 0, 0) ' : UpdateWindow (#tree_tab)

	INC index
	IF index > UBOUND(dtree[]) THEN REDIM dtree[index+200]
	RETURN dtree[index-1].hItem
END FUNCTION

FUNCTION TreeDelDir (hItem)
	STRING dir,label


	IFZ hItem THEN RETURN 0
	label = getTreeItemLabel (#tree_tab, hItem)
	IF RIGHT$(label,1) != "\\" THEN
		RETURN 0
	ELSE
		hParent = getTreeParent(hItem)
		IFZ hParent THEN RETURN 0
	END IF

	dir = getTreeCompLabel(hItem)
	IFZ dir THEN RETURN 0

	SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	SendSMessage(idx,"deldir "+STRING$(hParent)+" "+dir+"|"+label+"|")

	RETURN 1
END FUNCTION

FUNCTION TreeDelAllFiles (hItem)
	STRING label,dir


	IFZ hItem THEN RETURN 0
	label = getTreeItemLabel (#tree_tab, hItem)
	IF (RIGHT$(label,1) != "\\") THEN RETURN 0
	dir = getTreeCompLabel(hItem)
	IFZ dir THEN RETURN 0

	hParent = getTreeParent(hItem)
	SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	SendSMessage(idx,"delallfiles "+STRING$(hParent)+" "+dir+"*.*|"+label+"|")
	RETURN 1
END FUNCTION

FUNCTION TreeDelFile (hItem)
	STRING filename,dir


	IFZ hItem THEN RETURN 0
	filename = getTreeItemLabel (#tree_tab, hItem)
	IF RIGHT$(filename,1) == "\\" THEN
		RETURN 0
	ELSE
		hParent = getTreeParent(hItem)
		IFZ hParent THEN RETURN 0
	END IF

	dir = getTreeCompLabel(hParent)
	IFZ dir THEN RETURN 0

	SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	SendSMessage(idx,"delfile "+STRING$(hParent)+" "+dir+"|"+filename+"|")

	RETURN 1
END FUNCTION

FUNCTION renameTreeFile (hItem, STRING newname)
	STRING dir,oldname

	
	IFZ hItem THEN RETURN 0
	IFZ newname THEN RETURN 0
	oldname = getTreeItemLabel (#tree_tab, hItem)
	IF RIGHT$(oldname,1) == "\\" THEN
		IF RIGHT$(newname,1) != "\\" THEN newname = newname+"\\"
	END IF
	hParent = getTreeParent(hItem)
	IFZ hParent THEN RETURN 0
	dir = getTreeCompLabel(hParent)
	IFZ dir THEN RETURN 0

	SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	SendSMessage(idx,"movefile "+STRING$(hParent)+" "+dir+"|"+oldname+"|"+newname+"|")

	RETURN 1
END FUNCTION

FUNCTION createTreeNewDir (hItem, STRING name)
	STRING dir,label

	
	IFZ hItem THEN RETURN 0

	label = getTreeItemLabel (#tree_tab, hItem)
	IF RIGHT$(label,1) != "\\" THEN
		hParent = getTreeParent(hItem)
	ELSE
		hParent = hItem
	END IF
	IFZ hParent THEN RETURN 0
	
	dir = getTreeCompLabel(hParent)
	IFZ dir THEN RETURN 0
	SendSMessage(idx,"newdir "+STRING$(hParent)+" "+dir+"|"+name+"|")

	RETURN 1
END FUNCTION

FUNCTION ClearEditText (edit)
	STRING text
	
	text = ""
	SELECT CASE edit
		CASE $$main			:hedit = #main_tab
		CASE $$event		:hedit = #event_tab
							 text = "{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\froman\\fprq2\\fcharset0 MS Sans Serif;}}{\\colortbl ;\\red100\\green100\\blue100;}\\f0\\cf1\\fs20\\b1  "
		CASE $$stream		:hedit = #stream_tab
		CASE ELSE			:RETURN $$FALSE
	END SELECT

	SendMessageA (hedit, $$WM_SETTEXT, 0, &text)
	RETURN $$TRUE
END FUNCTION


FUNCTION CPrint (ECtrl,STRING text)
	SHARED APPLSTATUS

	 
	IFF APPLSTATUS THEN RETURN $$FALSE
	IFZ text THEN RETURN $$FALSE
	IF (WaitForSingleObject (#hsmCPrint,5000) == $$WAIT_TIMEOUT) THEN
		RETURN $$FALSE
	END IF

	t0 = SendMessageA (hedit, $$EM_GETLINECOUNT, 0,0 )
	SELECT CASE ECtrl	
		CASE $$main			:hedit = #main_tab
							 AddEditText (ECtrl,text)
							 AddEditText (ECtrl,"\r\n")
		CASE $$event		:hedit = #event_tab
							 AddEditText (ECtrl,text)
							 AddEditText (ECtrl,"\r\n")
		CASE $$stream		:hedit = #stream_tab
							 IF (text == "[SPACE]") THEN text = " "
							 AddEditText (ECtrl,text)
						 	 IF (text == "[RETURN]") THEN AddEditText (ECtrl,"\r\n") 'INSTRI(cl,"[RETURN]")
		CASE ELSE			:ReleaseSemaphore (#hsmCPrint,1,0)
							 RETURN $$FALSE
	END SELECT

	t1 = SendMessageA (hedit, $$EM_GETLINECOUNT, 0,0 )
	SendMessageA (hedit, $$EM_LINESCROLL, 0,(t1-t0))
	ReleaseSemaphore (#hsmCPrint,1,0)
	RETURN $$TRUE
END FUNCTION

FUNCTION AddEditText (edit, STRING text)
	STATIC total[]


	IFZ text THEN RETURN $$FALSE
	IFZ total[] THEN
		DIM total[2]
		SendMessageA (#main_tab, $$EM_SETLIMITTEXT,-1, 0)
		SendMessageA (#event_tab, $$EM_SETLIMITTEXT,-1, 0)
		SendMessageA (#stream_tab, $$EM_SETLIMITTEXT,-1, 0)
	END IF
	
	SELECT CASE edit
		CASE $$main			:hedit = #main_tab:e = 0
		CASE $$event		:hedit = #event_tab:e = 1
		CASE $$stream		:hedit = #stream_tab:e = 2
		CASE ELSE			:RETURN $$FALSE
	END SELECT

	total[e] = total[e] + LEN(text)
	SendMessageA (hedit, $$EM_SETSEL, total[e], total[e]+1)
	SendMessageA (hedit, $$EM_REPLACESEL, 0, &text)
	RETURN $$TRUE
END FUNCTION

FUNCTION OpenSConnection (idx)
	SHARED TSPROFILE sprofile[]
	SHARED socket


	sOpen (@socket)
	sprofile[idx].server.socket = socket
	IFT sConnect (idx) THEN
		RETURN $$TRUE
	ELSE
		RETURN $$FALSE
	END IF
	
END FUNCTION	


FUNCTION CloseSConnection (idx)


	getSPServer (idx,@server$,@port,password$,@socket)
	shutdown (socket,$$SD_BOTH)
	DIM buffer[0]
	DO
		ret = recv(socket, &buffer[], SIZE(buffer[]), 0)
		IF (ret == $$SOCKET_ERROR) THEN EXIT DO
		IF (ret == 0) THEN EXIT DO
	LOOP
	closesocket (socket)
	setSPServer (idx,"",0,"",0)
	RETURN $$TRUE
END FUNCTION

FUNCTION  Initialize ()
	WSADATA wsadata
	SHARED APPLSTATUS


	'SetPriorityClass (GetCurrentProcess(),$$IDLE_PRIORITY_CLASS)

	IF WSAStartup (2 |(2 << 8), &wsadata) THEN
		CPrint ($$main,"* "+WSAErrorToName(WSAGetLastError()))
		WSACleanup ()
		RETURN $$FALSE
	END IF

	'Xio ()
	'Xst()
	fs()
	newSProfile ()

	APPLSTATUS = $$TRUE		' anything but $$TRUE == client in process of exiting.
	#CONNECTED = $$FALSE	' connect status
	#authok = $$FALSE		' auth to server
	#streamq = 23			' default jpg stream quality, higher = better.
	#streamt = 5000			' time between each jpg grab.

	#hsmSend = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmCPrint = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmDownL = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmUpL = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmListen = CreateSemaphoreA (NULL,1,1,NULL)

	RETURN $$TRUE
END FUNCTION

FUNCTION STRING WSAErrorToName (null)
	
	RETURN GetLastErrorStr()
END FUNCTION

FUNCTION STRING GetLastErrorStr ()
	STRING text

	x = GetLastError()
	FormatMessageA ($$FORMAT_MESSAGE_FROM_SYSTEM  | $$FORMAT_MESSAGE_ALLOCATE_BUFFER,0, x, 0,&hLocal, 0,0)
	LocalLock(hLocal)
	text = RTRIM$(CSTRING$(hLocal))
	LocalFree(hLocal)
	RETURN text
END FUNCTION

FUNCTION setSPServer (idx,STRING server,port,STRING password,socket)
	SHARED TSPROFILE sprofile[]
	
	
	IF idx > UBOUND(sprofile[]) THEN RETURN $$FALSE
	'IFF sprofile[idx].active THEN RETURN $$FALSE		' error flag here
	
	IF server THEN sprofile[idx].server.addressb = server
	IF port THEN sprofile[idx].server.port = port
'	IF password THEN sprofile[idx].server.password = password
	IF socket THEN sprofile[idx].server.socket = socket
	
	RETURN $$TRUE
	
END FUNCTION

FUNCTION getSPServer (idx,STRING server,port,STRING password,socket)
	SHARED TSPROFILE sprofile[]
	
	
	IF idx > UBOUND(sprofile[]) THEN RETURN $$FALSE
	IFF sprofile[idx].active THEN RETURN $$FALSE		' error flag here
	
	server = sprofile[idx].server.addressb
	port = sprofile[idx].server.port
'	password = sprofile[idx].server.password
	socket = sprofile[idx].server.socket
	
	RETURN $$TRUE
	
END FUNCTION

FUNCTION newSProfile ()
	SHARED TSPROFILE sprofile[]
	STATIC num


	IFZ num THEN
		DIM sprofile[1]
	ELSE
		REDIM sprofile[num+1]
	END IF
	
	sprofile[num].active = $$TRUE
	INC num

	RETURN num-1	
END FUNCTION

FUNCTION InitGUIsubsystem ()

	InitGui ()
	CreateWindows ()
	CreateCallbacks ()
	MessageLoop ()
	'CleanUp ()
	
END FUNCTION

FUNCTION  WndProc (hWnd, msg, wParam, lParam)
	SHARED TabChildCon[]
	STATIC STRING lastcmd
	STRING cmd,buffer
	SHARED STRING URLBuffer
	STATIC POINTAPI pt
	STATIC TRECT rc
	STATIC msg$
	SHARED hInst
	STATIC ENLINK en
	'STATIC GETTEXTEX getex
	STATIC TEXTRANGE txtr
	
	
' PRINT hWnd, msg, wParam, lParam
	SELECT CASE msg
		
		CASE $$WM_CREATE :
			#hMenuFile = CreatePopupMenu ()
			AppendMenuA (#hMenuFile, $$MF_STRING | $$MF_DISABLED,$$TreePop_Title,&" ")
			AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_RemTree,&"Remove from tree")
			AppendMenuA (#hMenuFile, $$MF_SEPARATOR, 0, 0)
			AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_DownL,&"Download file")
			AppendMenuA (#hMenuFile, $$MF_SEPARATOR, 0, 0)
			AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_Refresh,&"Refresh") 'refresh node
			AppendMenuA (#hMenuFile, $$MF_SEPARATOR, 0, 0)
			AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_CreateD,&"New folder")
			AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_Rename,&"Rename file")
			AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_DelFile,&"Delete file")
			AppendMenuA (#hMenuFile, $$MF_SEPARATOR, 0, 0)
			AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_Prop,&"Properties")

			#hMenuFolder = CreatePopupMenu ()
			AppendMenuA (#hMenuFolder, $$MF_STRING | $$MF_DISABLED,$$TreePop_DTitle,&" ")
			AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_RemTree,&"Remove from tree")
			AppendMenuA (#hMenuFolder, $$MF_SEPARATOR, 0, 0)
			AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_UpL,&"Upload to folder")
			AppendMenuA (#hMenuFolder, $$MF_SEPARATOR, 0, 0)
			AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_Refresh,&"Refresh")
			AppendMenuA (#hMenuFolder, $$MF_SEPARATOR, 0, 0)
			AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_CreateD,&"New folder")
			AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_DelDir,&"Delete folder")
			AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_Rename,&"Rename folder")
			AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_RemFiles,&"Delete all files")
			AppendMenuA (#hMenuFolder, $$MF_SEPARATOR, 0, 0)
			AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_Prop,&"Properties")

			#hSysTrayMenu = CreatePopupMenu ()
			AppendMenuA (#hSysTrayMenu, $$MF_STRING, $$PopUp_Exit, &"&Exit")

			#hMenuURL = CreatePopupMenu ()
			AppendMenuA (#hMenuURL, $$MF_STRING, $$EventURL_Open, &"Open URL")

		CASE $$WM_NOTIFY :
			GetNotifyMsg (lParam, @hwndFrom, @idFrom, @code)
			idCtrl = idFrom

			SELECT CASE idCtrl
				CASE $$event
					SELECT CASE code
						CASE $$EN_LINK	:
							RtlMoveMemory (&en, lParam, SIZE(en))
							'getex.cb = (en.chrg.cpMax - en.chrg.cpMin)+1
							'getex.flags = $$GT_SELECTION
							'getex.codepage = $$CP_ACP 

							buffer = NULL$((en.chrg.cpMax - en.chrg.cpMin)+1)
							txtr.chrg = en.chrg
							txtr.lpstrText = &buffer
							ret = SendMessageA (en.hdr.hwndFrom, $$EM_GETTEXTRANGE  ,0, &txtr)		' EM_GETTEXTEX
						
							SELECT CASE en.msg
								CASE $$WM_LBUTTONDBLCLK		:'PRINT "l",ret,URLBuffer
								CASE $$WM_RBUTTONDOWN		:'PRINT "r",ret,URLBuffer
									IF buffer != "" THEN
										pt.x = LOWORD(en.lParam): pt.y = HIWORD(en.lParam)
										ClientToScreen (en.hdr.hwndFrom, &pt)
										URLBuffer = buffer
										TrackPopupMenuEx (#hMenuURL, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, en.hdr.hwndFrom, 0)
									END IF
							END SELECT
					END SELECT

				CASE $$tree
					SELECT CASE code
						CASE $$TVN_SELCHANGED :
							hItem = getTreeSelection (#tree_tab)
							IFZ hItem THEN RETURN
							msg$ = getTreeCompLabel (hItem)
							IF msg$ THEN
								IF RIGHT$(msg$,1) == "\\" THEN
									IFZ getTreeChild (hItem) THEN
										setTreeChild (hItem)
										SendSMessage(idx,"treeb "+STRING$(hItem)+" "+msg$)
									END IF
								END IF
							END IF
					END SELECT
				CASE $$Tab1 :
					SELECT CASE code
						CASE $$TCN_SELCHANGE :
							iTab = SendMessageA (hwndFrom, $$TCM_GETCURSEL, 0, 0)
							FOR t = 0 TO UBOUND(TabChildCon[])	' hide nonselected tabs
								IF (t != iTab) THEN ShowWindow (GetTabChild(t), $$SW_HIDE)
							NEXT t
							ShowWindow (GetTabChild(iTab), $$SW_SHOWNORMAL)	'show selected tab
					END SELECT
			END SELECT

		'CASE $$WM_CREATE 		:
		CASE $$WM_DESTROY		:Shutdown (): RETURN
		CASE $$WM_TRAYICON 		:			' taskbar mouse event message
			SELECT CASE lParam
				CASE $$WM_RBUTTONDOWN   :
					GetCursorPos (&pt)
    				SetForegroundWindow (hWnd)
    				TrackPopupMenuEx (#hSysTrayMenu, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, hWnd, 0)

				CASE $$WM_LBUTTONDOWN   : 
					ShowWindow (#winMain, $$SW_SHOWNORMAL)
					SetForegroundWindow (hWnd)
			END SELECT
			RETURN
	
		CASE $$WM_COMMAND :
			id         = LOWORD (wParam)
			notifyCode = HIWORD (wParam)
			hwndCtl    = lParam

			SELECT CASE notifyCode
				CASE 0: IF (id == $$PopUp_Exit) THEN DestroyWindow (hWnd)
				CASE $$EDITBOX_RETURN :
					SELECT CASE id :
						CASE $$CmdLine	:
							cmd = NULL$(1024)
							SendMessageA (hwndCtl, $$WM_GETTEXT, 1024, &cmd)
							cmd = CSIZE$(cmd)
							IF (cmd =="/") || (cmd =="//")THEN
								SendMessageA (#CmdLine, $$WM_SETTEXT, 0, &lastcmd)
								RETURN
							END IF
							ProcessClientText (cmd)
							lastcmd = cmd
							cmd = ""
							SendMessageA (#CmdLine, $$WM_SETTEXT, 0, &cmd)
							RETURN
					END SELECT
			END SELECT

		CASE #WM_TaskbarRestart	: InstallTrayIcon (hwnd)
		CASE $$WM_CTLCOLOREDIT,$$WM_CTLCOLORSTATIC,$$WM_CTLCOLORBTN
		'	RETURN SetColor (RGB(100, 100, 100), RGB(212, 208, 200), wParam, lParam)
		'	hdcStatic = wParam
		'	hwndStatic = lParam
		'	SELECT CASE hwndStatic
			'	CASE #CmdLine:
					RETURN SetColor (RGB(150, 150, 150), RGB(212, 208, 200), wParam, lParam)
			'END SELECT
			
		CASE $$WM_SIZE :
			fSizeType = wParam
			width = LOWORD(lParam)
			height = HIWORD(lParam)
			SetWindowPos (#CmdLine,0, 1, 1, width-1, 18,0)
			SetWindowPos (#hTabCtl,0, 0, 19, width,height-19, 0)
			FOR w = 0 TO UBOUND(TabChildCon[])
				SetWindowPos (GetTabChild(w),0, 0, 26, width-2,height-47, 0)
			NEXT w
			
			SELECT CASE fSizeType
				CASE $$SIZE_MINIMIZED :
					ShowWindow (hWnd, $$SW_HIDE)
				CASE $$SIZE_RESTORED, $$SIZE_MAXIMIZED  :
					'GetClientRect (hWnd, &rc)
					'MoveWindow (#hStatic1, 0, 0, rc.right, rc.bottom, $$TRUE)
			END SELECT

		CASE ELSE	: RETURN DefWindowProcA (hWnd, msg, wParam, lParam)
	END SELECT

	RETURN 0
END FUNCTION

FUNCTION  CenterWindow (hWnd)
	TRECT wRect
	

	GetWindowRect (hWnd, &wRect)
	#screenWidth  = GetSystemMetrics ($$SM_CXSCREEN)
	#screenHeight = GetSystemMetrics ($$SM_CYSCREEN)
	x = (#screenWidth - (wRect.right - wRect.left))/2
	y = (#screenHeight - (wRect.bottom - wRect.top))/2
	RETURN SetWindowPos (hWnd, 0, x, y, 0, 0, $$SWP_NOSIZE OR $$SWP_NOZORDER)
END FUNCTION

FUNCTION  InitGui ()
	SHARED hInst

	hInst = GetModuleHandleA (0)
	IFZ hInst THEN QUIT(0)
	InitCommonControls()
END FUNCTION

FUNCTION  RegisterWinClass (className$, titleBar$)
	SHARED hInst
	WNDCLASS wc


	wc.style           = $$CS_HREDRAW OR $$CS_VREDRAW OR $$CS_OWNDC
	wc.lpfnWndProc     = &WndProc()
	wc.cbClsExtra      = 0
	wc.cbWndExtra      = 0
	wc.hInstance       = hInst
	wc.hIcon           = LoadIconA (hInst, &"xscience")
	wc.hCursor         = LoadCursorA (0, $$IDC_ARROW)
	wc.hbrBackground   = GetStockObject ($$LTGRAY_BRUSH)
	wc.lpszMenuName    = 0
	wc.lpszClassName   = &className$

	RETURN RegisterClassA (&wc)
END FUNCTION

FUNCTION  CreateWindows ()
	SHARED className$
	SHARED hInst


	className$ = "cmdwnd"
	titleBar$ = "cmd"
	style = $$WS_OVERLAPPEDWINDOW
	w = 560: h = 350
	#winMain = NewWindow (className$, titleBar$, style, x, y, w, h, 0)
	
	#WM_TaskbarRestart = RegisterWindowMessageA(&"TaskbarCreated") ' listen for explorer restarts messages
	InstallTrayIcon (#winMain)
		
	
	#CmdLine = NewChild ("edit","", $$ES_AUTOHSCROLL, 1, h-45, 550, 18, #winMain, $$CmdLine, $$WS_EX_STATICEDGE)
	#hTabCtl = NewChild ($$WC_TABCONTROL, "", $$WS_CLIPSIBLINGS | $$TCS_EX_FLATSEPARATORS | $$WS_VISIBLE | $$WS_TABSTOP | $$WS_CHILD, 1, 1, w, h-40, #winMain, $$Tab1, $$WS_EX_STATICEDGE)

	#main_tab = AddEditTabChild (#hTabCtl,"main",$$main,$$WS_VSCROLL)
	#event_tab = AddRichEditTabChild (#hTabCtl,"event",$$event,$$WS_VSCROLL)
	SendMessageA (#event_tab, $$EM_SETBKGNDCOLOR, 0, RGB(212, 208, 200))
	SendMessageA (#event_tab, $$EM_AUTOURLDETECT, 1, 0)
	SendMessageA (#event_tab, $$EM_SETEVENTMASK , 0 , $$ENM_LINK )
	
	
	#stream_tab = AddEditTabChild (#hTabCtl,"stream",$$stream,$$WS_VSCROLL)
	#download_tab = AddEditTabChild (#hTabCtl,"download",$$download,$$WS_EX_CONTROLPARENT)
	#upload_tab = AddEditTabChild (#hTabCtl,"upload",$$upload,$$WS_EX_CONTROLPARENT)
	#tree_tab = AddTreeTabChild (#hTabCtl,"tree",$$tree, $$TVS_HASBUTTONS | $$TVS_HASLINES | $$TVS_HASBUTTONS | $$TVS_LINESATROOT)

	
'	left = 300: top = 80: hwnd = #upload_tab
'	#group1 = NewChild ("button", "active mode", $$BS_GROUPBOX, left, top, 136, 38, hwnd, 1234, 0)
'	#radio1 = NewChild ("button", "server", $$BS_AUTORADIOBUTTON | $$WS_GROUP , left+5, top+18, 64, 15,hwnd, 1234, 0)
'	#radio2 = NewChild ("button", "client", $$BS_AUTORADIOBUTTON, left+74, top+18, 60, 15, hwnd, 1234, 0)
'	SendMessageA (#radio1, $$BM_SETCHECK, $$BST_CHECKED, 0)
	'#edit1 = NewChild ("edit", "block size (kb)", $$ES_NUMBER | $$ES_AUTOHSCROLL  | $$WS_BORDER, left+95, top+16+1, 90, 19, hwnd, 1234, 0)
	'#edit2 = NewChild ("edit", "password", $$ES_PASSWORD | $$ES_AUTOHSCROLL | $$WS_BORDER, left+95, top+16+19, 90, 19, hwnd, 1234, 0)
	'#edit3 = NewChild ("edit", "text ", $$ES_AUTOHSCROLL  | $$WS_BORDER, left+95, top+16+19+18, 90, 19, #download_tab, 1234, 0)
	'#text2 = NewChild ($$STATIC_CLASS,"remote port",$$BS_LEFTTEXT | $$BS_FLAT, left+112, top+18+24, 65, 19, hwnd, 1234, 0)
	'#edit5 = NewChild ("edit",STRING$($$FILE_DEFAULTPORT),$$ES_NUMBER | $$ES_AUTOHSCROLL  | $$WS_BORDER, left+182, top+18+24, 45, 19, hwnd, 1234, 0)

	' download tab
	left = 5: top = 4: hwnd = #download_tab
	#group3 = NewChild ("button","remote file", $$BS_GROUPBOX , left, top, w-25, 67, hwnd,0, 0)
	#edit3 = NewChild ("edit","",$$ES_AUTOHSCROLL | $$WS_BORDER, left+5, top+18, w-65, 19, hwnd, $$DNL_path, 0)
	#button1 = NewChild ("button","go",$$BS_USERBUTTON , w-52, top+18, 27, 20, hwnd, $$DNL_go, $$WS_EX_STATICEDGE)
	#text1 = NewChild ($$STATIC_CLASS,"port",$$BS_LEFTTEXT | $$BS_FLAT, left+5, top+18+24, 55, 19, hwnd, 0, 0)
	#edit4 = NewChild ("edit",STRING$($$FILE_DEFAULTPORT),$$ES_NUMBER | $$ES_AUTOHSCROLL | $$WS_BORDER, left+31, top+18+24, 45, 19, hwnd, $$DNL_port, 0)
	left = 5: top = 75
	#group6 = NewChild ("button","save as", $$BS_GROUPBOX , left, top, w-25, 45, hwnd,0, 0)
	#edit9 = NewChild ("edit","",$$ES_AUTOHSCROLL | $$WS_BORDER, left+5, top+18, w-88, 19, hwnd, $$DNL_path, 0)
	#button2 = NewChild ("button","browse", $$BS_USERBUTTON,w-75, top+18, 50, 20, hwnd, $$DNL_browse, $$WS_EX_STATICEDGE)
	left = 90: top = 30
	#check1 = NewChild ("button", "compress", $$BS_AUTOCHECKBOX , left+5, top+18, 75, 15, hwnd, 401, 0)
	#check2 = NewChild ("button", "encrypt", $$BS_AUTOCHECKBOX , left+89, top+18, 60, 15, hwnd, 402, 0)
	#check3 = NewChild ("button", "adler crc", $$BS_AUTOCHECKBOX , left+88+69, top+18, 70, 15, hwnd, 403, 0)

	' upload tab
	left = 5: top = 4: hwnd = #upload_tab
	#group4 = NewChild ("button","local file", $$BS_GROUPBOX, left, top, w-25, 67, hwnd, 0, 0)
	#edit6 = NewChild ("edit","",$$ES_AUTOHSCROLL | $$WS_BORDER, left+5, top+18, w-88, 19, hwnd, $$UPL_path, 0)
	#button4 = NewChild ("button","browse", $$BS_USERBUTTON,w-75, top+18, 50, 20, hwnd, $$UPL_browse, $$WS_EX_STATICEDGE)
	#text3 = NewChild ($$STATIC_CLASS,"port",$$BS_LEFTTEXT | $$BS_FLAT, left+5, top+18+24, 55, 19, hwnd, 0, 0)
	#edit7 = NewChild ("edit",STRING$($$FILE_DEFAULTPORT),$$ES_NUMBER | $$ES_AUTOHSCROLL | $$WS_BORDER, left+31, top+18+24, 45, 19, hwnd, $$UPL_port, 0)
	left = 5: top = 75
	#group7 = NewChild ("button","upload to", $$BS_GROUPBOX , left, top, w-25, 45, hwnd,0, 0)
	#edit10 = NewChild ("edit","",$$ES_AUTOHSCROLL | $$WS_BORDER, left+5, top+18, w-65, 19, hwnd, $$DNL_path, 0)
	#button3 = NewChild ("button","go",$$BS_USERBUTTON , w-52, top+18, 27, 20, hwnd, $$UPL_go, $$WS_EX_STATICEDGE)
	left = 90: top = 30
	#check4 = NewChild ("button", "compress", $$BS_AUTOCHECKBOX , left+5, top+18, 75, 15, hwnd, 404, 0)
	#check5 = NewChild ("button", "encrypt", $$BS_AUTOCHECKBOX , left+89, top+18, 60, 15, hwnd, 405, 0)
	#check6 = NewChild ("button", "adler crc", $$BS_AUTOCHECKBOX , left+88+69, top+18, 70, 15, hwnd, 406, 0)


	#hFontArial = NewFont ("Arial", 10, $$FW_NORMAL, $$TRUE, $$FALSE)
	#hFontArial2 = NewFont ("Arial", 9, $$FW_LIGHT, $$FALSE, $$FALSE)
	#hFontArial3 = NewFont ("Arial", 10, $$FW_NORMAL, $$FALSE, $$FALSE)
	SetNewFont (#group7, #hFontArial): SetNewFont (#group6, #hFontArial)
	SetNewFont (#group3, #hFontArial): SetNewFont (#group4, #hFontArial)
	SetNewFont (#edit9, #hFontArial2): SetNewFont (#edit10, #hFontArial2)
	SetNewFont (#edit3, #hFontArial2): SetNewFont (#edit4, #hFontArial2)
	SetNewFont (#edit6, #hFontArial2): SetNewFont (#edit7, #hFontArial2):
	SetNewFont (#button1, #hFontArial2): SetNewFont (#button2, #hFontArial2)
	SetNewFont (#button3, #hFontArial2): SetNewFont (#button4, #hFontArial2)
	SetNewFont (#text1, #hFontArial3): SetNewFont (#text3, #hFontArial3)
	SetNewFont (#check1, #hFontArial3):	SetNewFont (#check2, #hFontArial3)
	SetNewFont (#check3, #hFontArial3):	SetNewFont (#check5, #hFontArial3)
	SetNewFont (#check4, #hFontArial3): SetNewFont (#check6, #hFontArial3)

	SendMessageA (#hTabCtl, $$TCM_SETCURFOCUS, 1, 0)
	SendMessageA (#hTabCtl, $$TCM_SETCURFOCUS, 0, 0)
	
'	InitTreeViewImageList(#tree_tab)
	SetWindowPos (#winMain, 0, 350, 300, 0, 0, $$SWP_NOSIZE | $$SWP_NOZORDER)
	ShowWindow (#winMain, $$SW_SHOWNORMAL)

'	hImageList = ImageList_LoadImage (hInst, &"treeviewicons", 16, 1, RGB (255, 0, 255), $$IMAGE_BITMAP, $$LR_LOADTRANSPARENT)
'	SendMessageA (#tree_tab, $$TVM_SETIMAGELIST, $$TVSIL_NORMAL, hImageList)

END FUNCTION

FUNCTION RemoveTrayIcon ()
	NOTIFYICONDATA ndata

	IF #winMain THEN
		ndata.hWnd = #winMain
		ndata.uID = 2000
		Shell_NotifyIconA ($$NIM_DELETE,&ndata)
		RETURN $$TRUE
	ELSE
		RETURN $$FALSE
	END IF
	
END FUNCTION

FUNCTION InstallTrayIcon (hwnd)
	NOTIFYICONDATA ndata
	
	ndata.cbSize = SIZE(NOTIFYICONDATA)
	ndata.hWnd = hwnd
	ndata.uID = 2000
	ndata.uFlags = $$NIF_ICON | $$NIF_MESSAGE ' | $$NIF_TIP
	ndata.uCallbackMessage = $$WM_TRAYICON
	ndata.hIcon = LoadIconA (GetModuleHandleA(0),&"xscience")
	ndata.szTip = ""
	Shell_NotifyIconA($$NIM_ADD,&ndata)
	DestroyIcon (ndata.hIcon)
		
END FUNCTION

FUNCTION AddRichEditTabChild (hparent,STRING title,IDC,style)
	SHARED TabChildCon[]
	TC_ITEM tci
	
	
	found = $$FALSE
	FOR h = 0 TO UBOUND(TabChildCon[]) 
		IFZ TabChildCon[h] THEN
			upper = h
			found = $$TRUE
			EXIT FOR
		END IF
	NEXT h
	
	IFF found THEN
		upper = UBOUND(TabChildCon[])
		INC upper
		REDIM TabChildCon[upper]
	END IF

	tci.mask 		= $$TCIF_TEXT
	tci.pszText 	= &title
	tci.cchTextMax 	= LEN(title)
	SendMessageA (hparent, $$TCM_INSERTITEM, upper, &tci)
	
	exstyle = $$WS_EX_TRANSPARENT | $$WS_EX_ACCEPTFILES | $$WS_EX_STATICEDGE ' | $$WS_EX_CONTROLPARENT
	'style = style | $$ES_MULTILINE | $$ES_READONLY | $$ES_LEFT 
	'TabChildCon[upper] = NewChild ("edit", "", style, 1, 20, 300, 300, hparent, IDC, exstyle)
	TabChildCon[upper] = CreateRichEdit (1, 20, 300, 300, hparent, IDC, 30000)

	RETURN TabChildCon[upper]
END FUNCTION

FUNCTION AddEditTabChild (hparent,STRING title,IDC,style)
	SHARED TabChildCon[]
	TC_ITEM tci
	
	
	found = $$FALSE
	FOR h = 0 TO UBOUND(TabChildCon[]) 
		IFZ TabChildCon[h] THEN
			upper = h
			found = $$TRUE
			EXIT FOR
		END IF
	NEXT h
	
	IFF found THEN
		upper = UBOUND(TabChildCon[])
		INC upper
		REDIM TabChildCon[upper]
	END IF

	tci.mask 		= $$TCIF_TEXT
	tci.pszText 	= &title
	tci.cchTextMax 	= LEN(title)
	SendMessageA (hparent, $$TCM_INSERTITEM, upper, &tci)
	
	exstyle = $$WS_EX_TRANSPARENT | $$WS_EX_ACCEPTFILES | $$WS_EX_STATICEDGE | $$WS_EX_CONTROLPARENT
	style = style | $$ES_MULTILINE | $$ES_READONLY | $$ES_LEFT 
	TabChildCon[upper] = NewChild ("edit", "", style, 1, 20, 300, 300, hparent, IDC, exstyle)

	RETURN TabChildCon[upper]
END FUNCTION

FUNCTION AddTreeTabChild (hparent,STRING title,IDC,style)
	SHARED TabChildCon[]
	TC_ITEM tci
	
	
	found = $$FALSE
	FOR h = 0 TO UBOUND(TabChildCon[]) 
		IFZ TabChildCon[h] THEN
			upper = h
			found = $$TRUE
			EXIT FOR
		END IF
	NEXT h
	
	IFF found THEN
		upper = UBOUND(TabChildCon[])
		INC upper
		REDIM TabChildCon[upper]
	END IF

	tci.mask 		= $$TCIF_TEXT
	tci.pszText 	= &title
	tci.cchTextMax 	= LEN(title)
	SendMessageA (hparent, $$TCM_INSERTITEM, upper, &tci)
	
	exstyle = $$WS_EX_STATICEDGE ' | $$WS_EX_CONTROLPARENT ' | $$WS_EX_TRANSPARENT | $$WS_EX_ACCEPTFILES |
	style = style | $$TVS_FULLROWSELECT | $$WS_TABSTOP
	TabChildCon[upper] = NewChild ($$WC_TREEVIEW, "", style, 1, 20, 300, 300, hparent, IDC, exstyle )' $$WS_EX_CLIENTEDGE)

	RETURN TabChildCon[upper]
END FUNCTION

FUNCTION GetTabChild (htabc)
	SHARED TabChildCon[]
	

	RETURN TabChildCon[htabc]
END FUNCTION

FUNCTION GetNotifyMsg (lParam, hwndFrom, idFrom, code)
	NMHDR nmhdr

	RtlMoveMemory (&nmhdr, lParam, SIZE(nmhdr))
	hwndFrom = nmhdr.hwndFrom
	idFrom   = nmhdr.idFrom
	code     = nmhdr.code
END FUNCTION

FUNCTION  NewWindow (className$, titleBar$, style, x, y, w, h, exStyle)
	SHARED hInst


	RegisterWinClass (className$, titleBar$)
	'IFZ	RegisterWinClass (className$, titleBar$) THEN QUIT(0)
	RETURN CreateWindowExA (exStyle, &className$, &titleBar$, style, x, y, w, h, 0, 0, hInst, 0)
END FUNCTION

FUNCTION  NewChild (className$, text$, style, x, y, w, h, parent, id, exStyle)
	SHARED hInst

' create child control
	style = style | $$WS_CHILD | $$WS_VISIBLE
	RETURN CreateWindowExA (exStyle, &className$, &text$, style, x, y, w, h, parent, id, hInst, 0)
END FUNCTION

FUNCTION  MessageLoop ()
	STATIC USER32_MSG msg


	DO
		SELECT CASE GetMessageA (&msg, hwnd, 0, 0)
			CASE  0 	:RETURN msg.wParam
			CASE -1 	:RETURN $$TRUE
			CASE ELSE	:TranslateMessage (&msg)
  						 DispatchMessageA (&msg)
		END SELECT
	LOOP

END FUNCTION

FUNCTION  CreateCallbacks ()

'	assign a new callback function to be used by child edit controls
	#old_proc = SetWindowLongA(#CmdLine, $$GWL_WNDPROC, &EditProc())

	#down_proc = SetWindowLongA(#download_tab, $$GWL_WNDPROC, &downProc())
	#edit3_proc = SetWindowLongA(#edit3, $$GWL_WNDPROC, &edit3Proc())

	#up_proc = SetWindowLongA(#upload_tab, $$GWL_WNDPROC, &upProc())
	#edit6_proc = SetWindowLongA(#edit6, $$GWL_WNDPROC, &edit6Proc())
	
	#tree_proc = SetWindowLongA(#tree_tab, $$GWL_WNDPROC, &tab6Proc())
	#event_proc = SetWindowLongA(#event_tab, $$GWL_WNDPROC, &eventProc())

END FUNCTION

FUNCTION  eventProc (hWnd, msg, wParam, lParam)
	SHARED STRING URLBuffer


	SELECT CASE msg
		CASE $$WM_COMMAND :
			id = LOWORD(wParam)
			notifyCode = HIWORD(wParam)
			hwndCtl = lParam

			SELECT CASE id
				CASE $$EventURL_Open	:IF URLBuffer THEN LaunchBrowser (URLBuffer)
					'PRINT "open",URLBuffer
					RETURN 0
			END SELECT
	END SELECT
	
	RETURN CallWindowProcA (#event_proc, hWnd, msg, wParam, lParam)
END FUNCTION

FUNCTION  tab6Proc (hWnd, msg, wParam, lParam)
	STRING filename
	POINTAPI pt
	TRECT rc

	SELECT CASE msg
		CASE $$WM_KEYDOWN :
			SELECT CASE wParam 
				CASE $$VK_RETURN	:
					hItem = getTreeSelection (#tree_tab)
					IF RIGHT$(getTreeCompLabel(hItem),1) == "\\" THEN
						SendMessageA (#tree_tab, $$TVM_EXPAND,$$TVE_TOGGLE, hItem)
						RETURN
					END IF
				CASE ELSE 	: RETURN CallWindowProcA (#tree_proc, hWnd, msg, wParam, lParam)
			END SELECT

		CASE $$WM_RBUTTONDOWN   :
			hItem = getTreeSelection (#tree_tab)
			filename = getTreeCompLabel (hItem)
			pt.x = LOWORD(lParam): pt.y = HIWORD(lParam)
			ClientToScreen (hWnd, &pt)
					
			IF RIGHT$(filename,1) == "\\" THEN
				ModifyMenuA (#hMenuFolder,$$TreePop_DTitle,$$MF_BYCOMMAND,$$TreePop_DTitle,&filename)
				TrackPopupMenuEx (#hMenuFolder, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, hWnd, 0)
			ELSE
				ModifyMenuA (#hMenuFile,$$TreePop_Title,$$MF_BYCOMMAND | $$MF_DISABLED,$$TreePop_Title, &filename)
				TrackPopupMenuEx (#hMenuFile, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, hWnd, 0)
			END IF

		CASE $$WM_COMMAND :
			id = LOWORD(wParam)
			notifyCode = HIWORD(wParam)
			hwndCtl = lParam
			hItem = getTreeSelection(#tree_tab)

			SELECT CASE id
				CASE $$TreePop_DownL	:filename = getTreeCompLabel (hItem)
										 SendMessageA (#edit3, $$WM_SETTEXT, 0, &filename)
										 SendMessageA (#hTabCtl, $$TCM_SETCURFOCUS, 3, 0)
				CASE $$TreePop_UpL		:filename = getTreeCompLabel (hItem)
										 IF RIGHT$(filename,1) != "\\" THEN
										 	filename = getTreeCompLabel(getTreeParent(hItem))
										 END IF
										 SendMessageA (#edit10, $$WM_SETTEXT, 0, &filename)
										 SendMessageA (#hTabCtl, $$TCM_SETCURFOCUS, 4, 0)
				CASE $$TreePop_CreateD	:SendMessageA (#CmdLine, $$WM_SETTEXT, 0, &"/newdir ")
				CASE $$TreePop_DelFile	:text$ = "Delete file:  \n"+getTreeCompLabel(hItem)
					 					 ret = MessageBoxA (0,&text$,&"Confirm Delete",$$MB_YESNO | $$MB_ICONQUESTION | $$MB_APPLMODAL)
										 IF (ret == 6) THEN TreeDelFile (hItem)
				CASE $$TreePop_DTitle	:SendMessageA (#tree_tab, $$TVM_EXPAND,$$TVE_TOGGLE, hItem)
				CASE $$TreePop_DelDir	:text$ = "Delete folder:  \n"+getTreeCompLabel(hItem)
					 					 ret = MessageBoxA (0,&text$,&"Confirm Delete",$$MB_YESNO | $$MB_ICONQUESTION | $$MB_APPLMODAL)
										 IF (ret == 6) THEN TreeDelDir (hItem)
				CASE $$TreePop_Rename	:SendMessageA (#CmdLine, $$WM_SETTEXT, 0, &"/rename ")
				CASE $$TreePop_RemTree	:SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
				CASE $$TreePop_RemFiles	:text$ = "Delete all files and folders from:  \n"+getTreeCompLabel(hItem)
										 ret = MessageBoxA (0,&text$,&"Confirm Delete",$$MB_YESNO | $$MB_ICONQUESTION | $$MB_APPLMODAL)
										 IF (ret == 6) THEN TreeDelAllFiles (hItem)
				CASE $$TreePop_Prop		:SendSMessage(idx,"fileinfo "+getTreeCompLabel(hItem))
				CASE $$TreePop_Refresh	:filename = getTreeCompLabel(hItem)
										 IF RIGHT$(filename,1) != "\\" THEN
										 	hItem = getTreeParent(hItem)
										 	filename = getTreeCompLabel(hItem)
										 END IF
										 SendSMessage(idx,"refresh "+STRING$(hItem)+" "+filename)
			END SELECT

		CASE ELSE		: RETURN CallWindowProcA (#tree_proc, hWnd, msg, wParam, lParam)
	END SELECT

END FUNCTION

FUNCTION  edit6Proc (hWnd, msg, wParam, lParam)
	SELECT CASE msg
		CASE $$WM_KEYDOWN :
			IF (wParam == $$VK_RETURN) THEN
				SendMessageA (#upload_tab, $$WM_COMMAND, $$UPL_go, hWnd)
				RETURN 0
			END IF
	END SELECT

	RETURN CallWindowProcA (#edit6_proc, hWnd, msg, wParam, lParam)
END FUNCTION

FUNCTION  edit3Proc (hWnd, msg, wParam, lParam)
	SELECT CASE msg
		CASE $$WM_KEYDOWN :
			IF (wParam == $$VK_RETURN) THEN
				SendMessageA (#download_tab, $$WM_COMMAND, $$DNL_go, hWnd)
				RETURN 0
			END IF
	END SELECT

	RETURN CallWindowProcA (#edit3_proc, hWnd, msg, wParam, lParam)
END FUNCTION

FUNCTION  downProc (hWnd, msg, wParam, lParam)
	STATIC STRING text
	STRING path,saveas
	STRING filename,filter

	SELECT CASE msg
		CASE $$WM_COMMAND	:
			SELECT CASE wParam
				CASE $$DNL_browse
					filename = ""
					filter = "All Files (*.*)\0*.*\0\0"
					ShowSaveFileDialog (#winMain, @filename,filter , initDir$, "Save As")
					IF filename THEN SendMessageA (#edit9, $$WM_SETTEXT, 0, &filename)

				CASE $$DNL_go	:
					text = NULL$(512)
					SendMessageA (#edit4, $$WM_GETTEXT, 512, &text)
					port = XLONG(CSIZE$(text))
					SendMessageA (#edit3, $$WM_GETTEXT, 512, &text)
					path = CSIZE$(text)
					SendMessageA (#edit9, $$WM_GETTEXT, 512, &text)
					saveas = CSIZE$(text)
					compress = SendMessageA(#check1, $$BM_GETCHECK, 0, 0)
					encrypt = SendMessageA(#check2, $$BM_GETCHECK, 0, 0)
					crc = SendMessageA(#check3, $$BM_GETCHECK, 0, 0)
					'PRINT port,path,compress,encrypt,crc,saveas,#server$

					IFZ path THEN RETURN 0
					IFZ saveas THEN
						DecomposePathname (path, pathname$, parent$, @saveas, file$, extent$)
						IF saveas THEN
							text = NULL$(512)
							GetCurrentDirectoryA (512,&text)
							text = CSIZE$(text)
							IF RIGHT$(text,1) != "\\" THEN text = text + "\\"
							saveas = text + saveas
							SendMessageA (#edit9, $$WM_SETTEXT, 0, &saveas)
						ELSE
							RETURN 0
						END IF
					END IF

					IFZ port THEN port = $$FILE_DEFAULTPORT
					flag = 0x0000
					IF compress THEN flag = flag | $$FILE_COMPRESS
					IF encrypt THEN flag = flag | $$FILE_ENCRYPT
					IF crc THEN flag = flag | $$FILE_CRC
					text = $$FILE_DEFAULTAUTH+","+ #server$+","+STRING$(port)+","+path+","+saveas+",0,0,"+STRING$(flag)
					IFT #CONNECTED THEN
						_beginthreadex (NULL, 0, &ClientDownload(), &text, 0, &tid)
						Sleep (20)
					END IF
			END SELECT
	END SELECT

	RETURN CallWindowProcA (#down_proc, hWnd, msg, wParam, lParam)
END FUNCTION

FUNCTION  upProc (hWnd, msg, wParam, lParam)
	STATIC STRING text
	STRING path,saveas
	STRING filename,filter

	SELECT CASE msg
		CASE $$WM_COMMAND	:
			SELECT CASE wParam
				CASE $$UPL_browse :
					filename = ""
					filter = "All Files (*.*)\0*.*\0\0"
					ShowOpenFileDialog (#winMain, @filename,filter , initDir$, "Upload File")
					IF filename THEN SendMessageA (#edit6, $$WM_SETTEXT, 0, &filename)

				CASE $$UPL_go	:
					text = NULL$(512)
					SendMessageA (#edit7, $$WM_GETTEXT, 512, &text)
					port = XLONG(CSIZE$(text))
					SendMessageA (#edit6, $$WM_GETTEXT, 512, &text)
					path = CSIZE$(text)
					SendMessageA (#edit10, $$WM_GETTEXT, 512, &text)
					saveas = CSIZE$(text)
					compress = SendMessageA(#check4, $$BM_GETCHECK, 0, 0)
					encrypt = SendMessageA(#check5, $$BM_GETCHECK, 0, 0)
					crc = SendMessageA(#check6, $$BM_GETCHECK, 0, 0)
					'PRINT port,path,compress,encrypt,crc,saveas
					
					IFZ path THEN RETURN 0
					IFZ saveas THEN
						DecomposePathname (path, pathname$, parent$, @saveas, file$, extent$)
						IF saveas THEN
							SendMessageA (#edit10, $$WM_SETTEXT, 0, &saveas)
						ELSE
							RETURN 0
						END IF
					END IF
					IFZ port THEN port = $$FILE_DEFAULTPORT
					flag = 0x0000
					IF compress THEN flag = flag | $$FILE_COMPRESS
					IF encrypt THEN flag = flag | $$FILE_ENCRYPT
					IF crc THEN flag = flag | $$FILE_CRC
					text = $$FILE_DEFAULTAUTH+","+ #server$+","+STRING$(port)+","+path+","+saveas+",0,0,"+STRING$(flag)
					IFT #CONNECTED THEN
						_beginthreadex (NULL, 0, &ClientUpload(), &text, 0, &tid)
						Sleep (20)
					END IF
			END SELECT
	END SELECT

	RETURN CallWindowProcA (#up_proc, hWnd, msg, wParam, lParam)
END FUNCTION

FUNCTION  EditProc (hWnd, msg, wParam, lParam)


	SELECT CASE msg

		CASE $$WM_KEYDOWN :			' WM_KEYDOWN returns virtKey constants
			IF wParam == $$VK_RETURN THEN
				id = GetWindowLongA (hWnd, $$GWL_ID)
				wParam = ($$EDITBOX_RETURN << 16) OR id
				SendMessageA (GetParent(hWnd), $$WM_COMMAND, wParam, hWnd)	' send WM_COMMAND message to main window callback function
				RETURN 0
			END IF

'		CASE $$WM_CHAR :				' WM_CHAR can capture keyboard characters
'			charCode = wParam
'			PRINT "WM_CHAR message: ASCII charCode="; charCode, "CHAR="; CHR$(charCode)	' validate text entry by character
'			RETURN 0
	END SELECT

	RETURN CallWindowProcA (#old_proc, hWnd, msg, wParam, lParam)
END FUNCTION

FUNCTION  ShowOpenFileDialog (hWndOwner, fileName$, filter$, initDir$, title$)
	OPENFILENAME ofn
	SHARED hInst


	ofn.lStructSize = SIZE(ofn)				'set length of struct
	ofn.hwndOwner 	= hWndOwner				'set parent window handle
	ofn.hInstance 	= hInst						'set the application's instance
	ofn.lpstrFilter = &filter$

'create a buffer for the returned file
	IF fileName$ = "" THEN
		fileName$ = SPACE$(254)
	ELSE
		fileName$ = fileName$ + SPACE$(254 - LEN(fileName$))
	END IF
	ofn.lpstrFile 			= &fileName$
	ofn.nMaxFile 				= 255					'set the maximum length of a returned file
	buffer2$ = SPACE$(254)
	ofn.lpstrFileTitle 	= &buffer2$		'Create a buffer for the file title
	ofn.nMaxFileTitle 	= 255					'Set the maximum length of a returned file title
	ofn.lpstrInitialDir = &initDir$		'Set the initial directory
  ofn.lpstrTitle 			= &title$			'Set the title
  ofn.flags = $$OFN_FILEMUSTEXIST | $$OFN_PATHMUSTEXIST | $$OFN_EXPLORER

'call dialog
	IFZ GetOpenFileNameA (&ofn) THEN
		fileName$ = ""
		RETURN 0
	ELSE
		fileName$ = CSTRING$(ofn.lpstrFile)
		RETURN 1
	END IF
END FUNCTION

FUNCTION  ShowSaveFileDialog (hWndOwner, @fileName$, filter$, initDir$, title$)
	OPENFILENAME ofn
	SHARED hInst

	ofn.lStructSize = SIZE(ofn)			'set length of struct
	ofn.hwndOwner 	= hWndOwner			'set parent window handle
	ofn.hInstance 	= hInst					'set the application's instance
	ofn.lpstrFilter = &filter$

'create a buffer for the returned file
	IF fileName$ = "" THEN
		fileName$ = SPACE$(254)
	ELSE
		fileName$ = fileName$ + SPACE$(254 - LEN(fileName$))
	END IF
	ofn.lpstrFile 			= &fileName$

	ofn.nMaxFile 				= 255					'set the maximum length of a returned file
	buffer2$ = SPACE$(254)
	ofn.lpstrFileTitle 	= &buffer2$		'Create a buffer for the file title
	ofn.nMaxFileTitle 	= 255					'Set the maximum length of a returned file title
	ofn.lpstrInitialDir = &initDir$		'Set the initial directory
  ofn.lpstrTitle 			= &title$			'Set the title
  ofn.flags = $$OFN_PATHMUSTEXIST | $$OFN_EXPLORER	'flags

'call dialog
	IFZ GetSaveFileNameA (&ofn) THEN
		fileName$ = ""
		RETURN 0
	ELSE
		fileName$ = CSTRING$(ofn.lpstrFile)
		RETURN 1
	END IF
END FUNCTION

FUNCTION  SetColor (txtColor, bkColor, wParam, lParam)
	SHARED hNewBrush
	
	
	DeleteObject (hNewBrush)
	hNewBrush = CreateSolidBrush(bkColor)
	SetTextColor (wParam, txtColor)
	SetBkColor (wParam, bkColor)
	
	RETURN hNewBrush
END FUNCTION

FUNCTION  NewFont (fontName$, pointSize, weight, italic, underline)

	LOGFONT lf
	hDC 					= GetDC ($$HWND_DESKTOP)
	hFont 				= GetStockObject ($$DEFAULT_GUI_FONT)	' get a font handle
	bytes 				= GetObjectA (hFont, SIZE(lf), &lf)		' fill LOGFONT struct lf
	lf.faceName 	= fontName$														' set font name
	lf.italic 		= italic															' set italic
	lf.weight 		= weight															' set weight
	lf.underline 	= underline														' set underlined
	lf.height 		= -1 * pointSize * GetDeviceCaps(hDC, $$LOGPIXELSY) / 72.0
	ReleaseDC ($$HWND_DESKTOP, hDC)
	RETURN CreateFontIndirectA (&lf)										' create a new font && get handle

END FUNCTION

FUNCTION  SetNewFont (hwndCtl, hFont)

	RETURN SendMessageA (hwndCtl, $$WM_SETFONT, hFont, $$TRUE)
END FUNCTION


FUNCTION  CleanUp ()
	SHARED hInst, className$

	UnregisterClassA(&className$, hInst)
	WSACleanup ()
END FUNCTION

FUNCTION  HIWORD (x)

	RETURN x{{16,16}}
END FUNCTION

FUNCTION  LOWORD (x)

	RETURN x{{16,0}}
END FUNCTION

FUNCTION  RGB (r, g, b)

	IF r > 255 THEN r = 255
	IF g > 255 THEN g = 255
	IF b > 255 THEN b = 255

	RETURN r | (g << 8) | (b << 16)

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
	filename$ = MID$ (name$, slash+1)							' filename = "name.ext"
	IFZ dot THEN
		file$ = filename$										' file = filename (filename has no extent)
	ELSE
		file$ = MID$ (name$, slash+1, dot-slash-1)	' file = "name" (without extent)
		extent$ = MID$ (name$, dot)					' extent = ".ext"
	END IF
'
	IF slash THEN
		path$ = LEFT$ (name$, slash-1)							' path = full pathname to left of "/file.ext"
		IF preslash THEN
			parent$ = MID$ (name$, preslash+1, slash-preslash-1)
		ELSE
			parent$ = LEFT$ (name$, slash-1)
		END IF
	END IF
	
END FUNCTION

FUNCTION  InitTreeViewImageList (hTreeView)

' create a masked image list for 4 small folder icons
	himl = ImageList_Create (16, 16, $$ILC_COLOR8 | $$ILC_MASK, 4, 0)
	dir$ = GetWindowsDir()
	hSysImageList = GetSysFolderIcon (dir$, @hIconFolder, @iIconFolder, @hIconFolderOpen, @iIconFolderOpen)

' get the C: drive icons
	sil = GetSysFolderIcon (LEFT$(dir$,3), @hIconCDrive, @iIconCDrive, @hIconCDriveOpen, @iIconCDriveOpen)
'	PRINT hSysImageList, hIconCDrive, iIconCDrive, hIconCDriveOpen, iIconCDriveOpen

' add the icons to the imagelist
	ret1 = ImageList_ReplaceIcon (himl, -1, hIconFolder)			' use index of -1 to add icons
	ret2 = ImageList_ReplaceIcon (himl, -1, hIconFolderOpen)
	ret3 = ImageList_ReplaceIcon (himl, -1, hIconCDrive)
	ret4 = ImageList_ReplaceIcon (himl, -1, hIconCDriveOpen)
	ret5 = ImageList_ReplaceIcon (himl, -1, 0)

'	PRINT "ImageList_ReplaceIcon rets:"; ret1, ret2, ret3, ret4

' associate the imagelist with the treeview control
	SendMessageA (hTreeView, $$TVM_SETIMAGELIST, $$TVSIL_NORMAL, himl)

END FUNCTION

FUNCTION STRING GetWindowsDir()
	STRING buffer

	buffer = SPACE$(256)
	ret = GetWindowsDirectoryA (&buffer, 255)
	RETURN LEFT$(buffer, ret)
END FUNCTION

FUNCTION  GetSysFolderIcon (file$, hIconFolder, iIconFolder, hIconFolderOpen, iIconFolderOpen)
	SHFILEINFO sfi

	hSysImageList = SHGetFileInfoA (&file$, 0, &sfi, SIZE(sfi), $$SHGFI_SMALLICON | $$SHGFI_ICON | $$SHGFI_SYSICONINDEX)
	hIconFolder = sfi.hIcon
	iIconFolder = sfi.iIcon

	il = SHGetFileInfoA (&file$, 0, &sfi, SIZE(sfi), $$SHGFI_SMALLICON | $$SHGFI_ICON | $$SHGFI_OPENICON | $$SHGFI_SYSICONINDEX)
	hIconFolderOpen = sfi.hIcon
	iIconFolderOpen = sfi.iIcon

	RETURN hSysImageList
END FUNCTION

FUNCTION  AddTreeViewItem (hwndCtl, hParent,STRING label, idxImage, idxSelectedImage, hInsertAfter)
	STATIC TV_INSERTSTRUCT tvis
	STATIC TV_ITEM tvi

	tvi.mask 			= $$TVIF_TEXT  | $$TVIF_PARAM  ' | $$TVIF_IMAGE | $$TVIF_SELECTEDIMAGE
	tvi.pszText 		= &label
	tvi.cchTextMax 		= LEN(label)
	tvi.iImage	 		= idxImage
	tvi.iSelectedImage	= idxSelectedImage
	tvis.hParent 		= hParent
	tvis.hInsertAfter 	= hInsertAfter
	tvis.item 			= tvi

	RETURN SendMessageA (hwndCtl, $$TVM_INSERTITEM, 0, &tvis)
END FUNCTION


FUNCTION  CreateRichEdit (x, y, w, h, hParent, id, kbTextMax)

	SHARED hInst

' load riched20.dll or riched32.dll if available

	class$ = "richedit20A"
	hRichEditDll = LoadLibraryA (&"riched20.dll")
	IFZ hRichEditDll THEN
		class$ = "richedit"
		hRichEditDll = LoadLibraryA (&"riched32.dll")
	END IF
	IFZ hRichEditDll THEN RETURN 0

' create rich edit child window
	style = $$WS_VISIBLE | $$WS_CHILD
	style = style | $$ES_MULTILINE  | $$ES_READONLY  '  | $$ES_SUNKEN
	style = style | $$WS_VSCROLL '  | $$WS_HSCROLL
	style = style | $$ES_AUTOVSCROLL	' | $$ES_AUTOHSCROLL
	style = style | $$ES_NOHIDESEL | $$ES_SAVESEL
	style = style | $$ES_WANTRETURN  ' | $$WS_OVERLAPPED
	
	exstyle =  $$WS_EX_STATICEDGE 
	'style = style | $$ES_MULTILINE | $$ES_READONLY | $$ES_LEFT 
'	class$ = "richedit"										' riched32.dll
'	class$ = "richedit20A"								' riched20.dll
	hRichEd =  CreateWindowExA (exstyle, &class$, 0, style, x, y, w, h, hParent, id, hInst, 0)

' set upper limit to amount of text in rich edit control
' default upper limit is 32k, max upper is 2GB
	SendMessageA (hRichEd, $$EM_EXLIMITTEXT, 0, 1024*kbTextMax)

	RETURN hRichEd
END FUNCTION
'

' PURPOSE : Set the text or richtext in a RichEdit control.
'           format can be $$SF_TEXT (text) or $$SF_RTF (rich text format)
'           The $$SFF_SELECTION flag is used to replace the contents of
'           the current selection.
'
FUNCTION  SetRichEditText (hWndRichEdit, fileName$, format)

	EDITSTREAM stream
	IFZ fileName$ THEN RETURN
	IFZ hWndRichEdit THEN RETURN
	IFZ format THEN format = $$SF_RTF

	hFile = CreateFileA (&fileName$, $$GENERIC_READ, $$FILE_SHARE_READ | $$FILE_SHARE_WRITE, 0, $$OPEN_EXISTING, $$FILE_ATTRIBUTE_NORMAL, 0)
	IF hFile = $$INVALID_HANDLE_VALUE THEN RETURN

	stream.dwCookie    = hFile
	stream.pfnCallback = &EditStreamCallback()
	SendMessageA (hWndRichEdit, $$EM_STREAMIN, format, &stream)
	CloseHandle (hFile)

END FUNCTION

FUNCTION  EditStreamCallback (dwCookie, pbBuff, cb, pcb)

	bytesRead = 0
	error = ReadFile (dwCookie, pbBuff, cb, &bytesRead, 0)
	'XstCopyMemory (&bytesRead, pcb, 4)
	memcpy (pcb,&bytesRead, 4)
	IFZ bytesRead THEN RETURN error
	RETURN $$FALSE

END FUNCTION


FUNCTION LaunchBrowser (url$)		' function taken from 'launchbrowser' by D.S.
	IFZ url$ THEN RETURN

	key$ = NULL$ (512)

' First try ShellExecute()
	result = ShellExecuteA (NULL, &"open", &url$, NULL, NULL, showcmd)

' If it failed, get the .htm regkey and lookup the program
	IF (result <= $$HINSTANCE_ERROR) THEN
		IF (GetRegKey ($$HKEY_CLASSES_ROOT, ".htm", @key$) == $$ERROR_SUCCESS) THEN
			key$ = key$ + "\\shell\\open\\command"
			IF (GetRegKey ($$HKEY_CLASSES_ROOT, key$, @path$) == $$ERROR_SUCCESS) THEN
				pos = INSTR (path$, "\"%1\"")						' Look for "%1"
				IFZ pos THEN 														' No quotes found
					pos = INSTR (path$, "%1") 						' Check for %1, without quotes
				END IF
				IF pos THEN path$ = TRIM$ (LEFT$ (path$, pos-1))
				path$ = path$ + " " + url$
				result = WinExec (&path$, showcmd)
			END IF
		END IF
	END IF
	RETURN result

END FUNCTION

FUNCTION  GetRegKey (key, subkey$, @retdata$)

	retval = RegOpenKeyExA (key, &subkey$, 0, $$KEY_QUERY_VALUE, &hkey)

	IF (retval == $$ERROR_SUCCESS) THEN
		datasize = $$MAX_PATH
		retdata$ = NULL$ ($$MAX_PATH)
		RegQueryValueA (hkey, NULL, &retdata$, &datasize)
		retdata$ = TRIM$ (retdata$)
		RegCloseKey (hkey)
	END IF

	RETURN retval

END FUNCTION

END PROGRAM

