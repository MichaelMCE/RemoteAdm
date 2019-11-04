
PROGRAM "fs"
VERSION "0.3"
'CONSOLE
MAKEFILE "xdll.xxx"

	IMPORT "kernel32"
	IMPORT "p2pfiled.dec"

PACKED TP2PADRH
	XLONG		.hLib		'handle to .dll as returned by 'LoadLibraryA()'
	UBYTE		.inuse		' 1 = in used, 0 = not in use
	XLONG		.index		'index to this TP2PADRH in storage array
	
	XLONG		.pListen	'address of p2pListen() as returned by GetProcAddress()
	XLONG		.pFileDn	'	""		p2pFileDownload()
	XLONG		.pFileUp	'	""		p2pFileUpload()
	XLONG		.pGetAdler	'	""		GetAdler32()

	XLONG		.pStartup
	XLONG		.pCleanup	'	""		Cleanup()
END TYPE

EXPORT
DECLARE FUNCTION fs()

DECLARE FUNCTION FSshutdown()
DECLARE FUNCTION newP2P (TP2P)
DECLARE FUNCTION freeP2P (TP2P)
END EXPORT

DECLARE FUNCTION LoadDLLInst (TP2PADRH hdll)
DECLARE FUNCTION FreeDLLInst (TP2PADRH lah)
DECLARE FUNCTION newhLibDLL (i)
DECLARE FUNCTION newhDllIndex()

DECLARE FUNCTION getLastSlash(str$, stop)
DECLARE FUNCTION GetCommandLineArguments (argc, argv$[])
DECLARE FUNCTION DecomposePathname (pathname$, @path$, @parent$, @filename$, @file$, @extent$)



FUNCTION fs ()
	SHARED SHUTDOWN
	SHARED TP2PADRH DLL[]
	STATIC entry
	STRING arg[]
	SHARED STRING path

	IF entry THEN RETURN 0 ELSE entry = 1
	#hsmDllStore = CreateSemaphoreA (0,1,1,0)
	DIM DLL[5]
	SHUTDOWN = 0

	GetCommandLineArguments (argc,@arg[])
	DecomposePathname (arg[0], @path, parent$, filename$, file$, extent$)
	IF LEN(path)
		path = path + "\\"
	ENDIF

	RETURN 1
END FUNCTION

FUNCTION newP2P (TP2P p2p)
	SHARED SHUTDOWN
	TP2PADRH dll
	IF SHUTDOWN THEN RETURN 0
	
	IF (WaitForSingleObject (#hsmDllStore,30000) == $$WAIT_TIMEOUT) THEN RETURN 0
	IF SHUTDOWN THEN
		ReleaseSemaphore (#hsmDllStore,1,NULL)
		RETURN 0
	END IF
	
	IFZ LoadDLLInst (@dll) THEN
		ReleaseSemaphore (#hsmDllStore,1,NULL)
		RETURN 0
	END IF

	IF dll.hLib THEN
		p2p.FileListen = dll.pListen
		p2p.FileDownload = dll.pFileDn
		p2p.FileUpload = dll.pFileUp
		p2p.GetAdler = dll.pGetAdler
		p2p.Free = &freeP2P()
		p2p.index = dll.index

		ReleaseSemaphore (#hsmDllStore,1,NULL)
		RETURN 1
	ELSE
		ReleaseSemaphore (#hsmDllStore,1,NULL)
		RETURN 0
	END IF

END FUNCTION

FUNCTION freeP2P (TP2P p2p)
	SHARED TP2PADRH DLL[]
	SHARED SHUTDOWN
	
	IF SHUTDOWN THEN RETURN 0
	IF (WaitForSingleObject (#hsmDllStore,30000) == $$WAIT_TIMEOUT) THEN RETURN 0
	IF SHUTDOWN THEN
		ReleaseSemaphore (#hsmDllStore,1,NULL)
		RETURN 0
	END IF

	i = p2p.index
	IF (i >= 0) && (i <= UBOUND(DLL[])) THEN
		ret = FreeDLLInst (DLL[i])	
		ReleaseSemaphore (#hsmDllStore,1,NULL)
		RETURN ret
	ELSE
		ReleaseSemaphore (#hsmDllStore,1,NULL)
		RETURN 0
	END IF
END FUNCTION

FUNCTION LoadDLLInst (TP2PADRH hdll)
	SHARED TP2PADRH DLL[]
	FUNCADDR Startup()


	newhDllIndex()
	DLL[i].hLib = newhLibDLL(i)

	IFZ DLL[i].hLib THEN RETURN 0

	DLL[i].pListen	 = GetProcAddress (DLL[i].hLib,&"FileListen")
	DLL[i].pFileDn	 = GetProcAddress (DLL[i].hLib,&"FileDownload")
	DLL[i].pFileUp	 = GetProcAddress (DLL[i].hLib,&"FileUpload")
	DLL[i].pGetAdler = GetProcAddress (DLL[i].hLib,&"GetAdler32")
	DLL[i].pCleanup  = GetProcAddress (DLL[i].hLib,&"Cleanup")
	DLL[i].pStartup  = GetProcAddress (DLL[i].hLib,&"Startup")
	
	IF DLL[i].pStartup && DLL[i].pCleanup && DLL[i].pGetAdler && DLL[i].pFileUp && DLL[i].pFileDn && DLL[i].pListen THEN
		DLL[i].index = i
		DLL[i].inuse = 1
		hdll = DLL[i]
		Startup = DLL[i].pStartup
		@Startup()
		RETURN 1
	ELSE
		FreeLibrary (DLL[i].hLib)
		DLL[i].hLib = 0
		DLL[i].inuse = 0
		DLL[i].index = -1
		RETURN 0
	END IF

END FUNCTION

FUNCTION FreeDLLInst (TP2PADRH lah)
	SHARED TP2PADRH DLL[]
	FUNCADDR destroy()


	IF lah.hLib && lah.pCleanup THEN
		destroy = lah.pCleanup
		@destroy()
		FreeLibrary (lah.hLib)
	ELSE
		RETURN 0
	END IF
	
	i = lah.index
	DLL[i].hLib = 0
	DLL[i].index = -1

	lah.hLib = 0
	lah.pListen = 0
	lah.pFileDn = 0
	lah.pFileUp = 0
	lah.pGetAdler = 0
	lah.pCleanup = 0
	lah.index = -1
	lah.inuse = 0
	RETURN 1
END FUNCTION

FUNCTION FSshutdown()
	SHARED TP2PADRH DLL[]
	SHARED SHUTDOWN

	WaitForSingleObject (#hsmDllStore,1000)
	SHUTDOWN = 0xFFFF
	FOR i = 0 TO UBOUND(DLL[])
		FreeDLLInst (DLL[i])
	NEXT i
	ReleaseSemaphore (#hsmDllStore,1,NULL)
	CloseHandle (#hsmDllStore): #hsmDllStore = 0
END FUNCTION

FUNCTION newhLibDLL (i)
	STRING dllfilename,name
	SHARED STRING path

'	dllfilename = NULL$(512)
'	name = "p2p"+STRING$(i)
'	GetTempFileNameA (&".",&name,1,&dllfilename)

	dllfilename = path + $$mp2p_name + STRING$(i)+ $$mp2p_ext
	name = path + $$mp2p_name + $$mp2p_ext
	CopyFileA (&name, &dllfilename, 0)
	RETURN LoadLibraryA(&dllfilename)
END FUNCTION

FUNCTION newhDllIndex()
	SHARED TP2PADRH DLL[]


	FOR i = 0 TO UBOUND(DLL[])
		'IF DLL[i].hLib && !DLL[i].inuse THEN RETURN i
		IFZ DLL[i].hLib THEN RETURN i
	NEXT i

	i = UBOUND(DLL[])+1
	REDIM DLL[i+5]
	RETURN i
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

FUNCTION GetCommandLineArguments (argc, argv$[])
	SHARED  setarg
	SHARED  setargc
	SHARED  setargv$[]


	DIM argv$[]
	inc = argc
	argc = 0
'
' return already set argc and argv$[]
'
	IF (inc >= 0) THEN
		IF setarg THEN
			argc = setargc
			upper = UBOUND (setargv$[])
			ucount = upper + 1
			IF (argc > ucount) THEN argc = ucount
			IF argc THEN
				DIM argv$[upper]
				FOR i = 0 TO upper
					argv$[i] = setargv$[i]
				NEXT i
			END IF
			RETURN ($$FALSE)
		END IF
	END IF
'
' get original command line arguments from system
'
	argc = 0
	index = 0
	DIM argv$[]
	addr = GetCommandLineA()			' address of full command line
	line$ = CSTRING$(addr)
	
'	PRINT "cmd line",line$
'
	done = 0
	IF addr THEN
		DIM argv$[1023]
		quote = $$FALSE
		argc = 0
		empty = $$FALSE
		I = 0
		DO
			cha = UBYTEAT(addr, I)
			IF (cha < ' ') THEN EXIT DO

			IF (cha = ' ') AND NOT quote THEN
				IF NOT empty THEN
					INC argc
					argv$[argc] = ""
					empty = $$TRUE
				END IF
			ELSE
				IF (cha = '"') THEN
					quote = NOT quote
				ELSE
					argv$[argc] = argv$[argc] + CHR$(cha)
					empty = $$FALSE
				END IF
			END IF
			INC I
		LOOP
		IF NOT empty THEN
			argc = argc + 1
		END IF
		REDIM argv$[argc-1]

	END IF
'
' if input argc < 0 THEN don't overwrite current values
'
	IF ((setarg = $$FALSE) OR (inc >= 0)) THEN
		setarg = $$TRUE
		setargc = argc
		DIM setargv$[]
		IF (argc > 0) THEN
			DIM setargv$[argc-1]
			FOR i = 0 TO argc-1
				setargv$[i] = argv$[i]
			NEXT i
		END IF
	END IF
	
END FUNCTION


END PROGRAM
