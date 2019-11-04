;
; [2] '	caution, timer seems to have issues with win98
;
; [4] '	Secure file transfers over TCP/IP
;
; [5] '	Based upon a stripped down version of 'p2pfile'
;
; [6] '	(transfer protocol remains unchanged)
;
; [7] '
;
; [8] '	Michael McElligott
;
; [9] '	18/8/2004 Okio_@hotmail.com
;
; [11] PROGRAM "minip2p"
;
; [12] VERSION "0.3"
;
; [13] MAKEFILE "xdll.xxx"
;
; [14] ' CONSOLE
;
; [16] IMPORT "xst"
;
; [17] IMPORT "kernel32"
.code
	jmp	%_StartLibrary_minip2p			;;; i36a
PrologCode.minip2p:
	push	ebp			;;; i38
	mov	ebp,esp			;;; i39
	sub	esp,256			;;; i40
	mov	eax,addr @_string.002D.minip2p			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.2			;;; i40a
	push	eax
	mov	ebx,addr @_string.002D.minip2p			;;; i663
	push	addr @_string.StartLibrary.minip2p			;;; i41
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
; [18] IMPORT "wsock32"
	mov	eax,addr @_string.002E.minip2p			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.4			;;; i40a
	push	eax
	mov	ebx,addr @_string.002E.minip2p			;;; i663
	push	addr @_string.StartLibrary.minip2p			;;; i41
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
; [19] IMPORT "zlib"' download library from the yahoo/xblite files area
	mov	eax,addr @_string.002F.minip2p			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.6			;;; i40a
	push	eax
	mov	ebx,addr @_string.002F.minip2p			;;; i663
	push	addr @_string.StartLibrary.minip2p			;;; i41
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
; [20] IMPORT "advapi32"
	mov	eax,addr @_string.0030.minip2p			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.8			;;; i40a
	push	eax
	mov	ebx,addr @_string.0030.minip2p			;;; i663
	push	addr @_string.StartLibrary.minip2p			;;; i41
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
; [21] IMPORT "msvcrt"
	mov	eax,addr @_string.0031.minip2p			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.10			;;; i40a
	push	eax
	mov	ebx,addr @_string.0031.minip2p			;;; i663
	push	addr @_string.StartLibrary.minip2p			;;; i41
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
; [22] IMPORT "p2pfiled.dec"
;
; [23] IMPORT "winmm"
	mov	eax,addr @_string.0033.minip2p			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.12			;;; i40a
	push	eax
	mov	ebx,addr @_string.0033.minip2p			;;; i663
	push	addr @_string.StartLibrary.minip2p			;;; i41
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
; [25] $$TARGET_RESOLUTION = 50
;
; [27] DECLARE FUNCTION Entry ()
;
; [28] DECLARE FUNCTION InitWSA ()
;
; [30] DECLARE FUNCTION p2pListen (socket)
;
; [31] DECLARE FUNCTION p2pListenBin (socket,size,lpbuffer)
;
; [32] DECLARE FUNCTION p2pSendBin (socket,lpbuffer,size)
;
; [33] DECLARE FUNCTION p2pAccept (socket,STRING remoteaddr)
;
; [34] DECLARE FUNCTION p2pBind (socket,STRING address,port)
;
; [35] DECLARE FUNCTION p2pConnect (STRING address,port,socket)
;
; [36] DECLARE FUNCTION p2pCreateBindSocket (STRING address,port,socket)
;
; [37] DECLARE FUNCTION p2pCloseSocket (socket)
;
; [39] DECLARE FUNCTION open_file (pfilename, flags)
;
; [40] DECLARE FUNCTION write_file (hfile,ULONG buffer,nbytes)
;
; [41] DECLARE FUNCTION close_file (file)
;
; [43] DECLARE FUNCTION getLastSlash(str$, stop)
;
; [44] DECLARE FUNCTION DecomposePathname (pathname$, path$, parent$, filename$, file$, extent$)
;
; [45] DECLARE FUNCTION CPrint (STRING text)
;
; [47] DECLARE FUNCTION FileGet (socket,TP2PFILE file)
;
; [48] DECLARE FUNCTION FileSend (socket,TP2PFILE file)
;
; [50] DECLARE FUNCTION TimerCallback (wtimerid, msg, dwUser, dw1, dw2)
;
; [51] DECLARE FUNCTION InitTimer ()
;
; [52] DECLARE FUNCTION DestroyTimer ()
;
; [54] DECLARE FUNCTION STRING GetLocalIpA ()
;
; [55] DECLARE FUNCTION GetIPAddr (STRING name,STRING ip)' name to ip
;
; [56] DECLARE FUNCTION GetIPName (STRING ip,STRING name)' ip to name
;
; [58] EXPORT
;
; [60] DECLARE FUNCTION Startup()
;
; [61] DECLARE FUNCTION Cleanup ()
;
; [63] ' if the password field is empty then a public key is created which is returned in 'password'
;
; [64] DECLARE FUNCTION encrypt_buffer (buffer,size,STRING password)
;
; [65] ' provide password or encryption key but not both.
;
; [66] DECLARE FUNCTION decrypt_buffer (buffer,size,STRING password, STRING key)
;
; [68] DECLARE FUNCTION GetAdler32 (pbuffer,size)
;
; [69] DECLARE FUNCTION zlib_compress (source,ssize,dest,dsize,level)
;
; [70] DECLARE FUNCTION zlib_compress2 (source,ssize,STRING dbuffer)
;
; [71] DECLARE FUNCTION zlib_decompress (source,ssize,dest,dsize)
;
; [73] ' main interface functions
;
; [74] DECLARE FUNCTION FileListen (auth,port)
;
; [75] DECLARE FUNCTION FileDownload (TP2PFILE ,STRING addr, port)
;
; [76] DECLARE FUNCTION FileUpload (TP2PFILE ,STRING addr, port)
;
; [77] END EXPORT
;
; [79] FUNCTION Entry ()
.code
	leave	;;; i160a
	ret				;;; i161 ;;; end prolog code
%_StartLibrary_minip2p:
	call	func1.minip2p			;;; i162c
	ret	0			;;; i162d
align 16
_Entry.minip2p@0:
;  *****
;  *****  FUNCTION  Entry ()  *****
;  *****
func1.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	call	%%%%initOnce.minip2p
	sub	esp,220			;;; i114a
;
funcBody1.minip2p:
;
; [81] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.Entry.minip2p:  ;;; Function end label for Assembly Programmers.
end.func1.minip2p:
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
%%%%initOnce.minip2p:
	cmp d[%%%entered.minip2p],-1		;;; i117
	jne > A.15	;;; i117a
	ret			;;; i117b
A.15:
	call	PrologCode.minip2p			;;; i118a
	mov esi,addr %_begin_external_data_minip2p
	mov edi,addr %_end_external_data_minip2p
	call %_ZeroMemory
	call	InitSharedComposites.minip2p			;;; i119
	mov	d[%%%entered.minip2p],-1
	ret				;;; i120
data section 'minip2p$internals'
align 4
%%%entered.minip2p:
db 4 dup ?
.code
;
; [83] FUNCTION Startup()
.code
align 16
_Startup@0:
;  *****
;  *****  FUNCTION  Startup ()  *****
;  *****
func19.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody19.minip2p:
;
; [84] STATIC once
data section 'globals$statics'
align	4
%19%once.minip2p:	db 4 dup ?
.code
;
; [86] IF once THEN RETURN 0 ELSE once = 1
	mov	eax,d[%19%once.minip2p]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0001.minip2p			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func19.minip2p			;;; i258
	jmp	end.if.0001.minip2p			;;; i107
else.0001.minip2p:
	mov	eax,1			;;; i659
	mov	d[%19%once.minip2p],eax			;;; i668
end.if.0001.minip2p:
;
; [88] 'Xst()
;
; [89] #hsmFileL = CreateSemaphoreA (0,1,1,0)
data section 'globals$shared'
align	4
%#hsmFileL.minip2p:	db 4 dup ?
.code
;
; [0] EXTERNAL FUNCTION CreateSemaphoreA (lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName)
	push	0			;;; i656a
	push	1			;;; i656a
	push	1			;;; i656a
	push	0			;;; i656a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmFileL.minip2p],eax			;;; i668
;
; [90] #hsmFileUp = CreateSemaphoreA (0,1,1,0)
data section 'globals$shared'
align	4
%#hsmFileUp.minip2p:	db 4 dup ?
.code
	push	0			;;; i656a
	push	1			;;; i656a
	push	1			;;; i656a
	push	0			;;; i656a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmFileUp.minip2p],eax			;;; i668
;
; [91] #hsmFileDn = CreateSemaphoreA (0,1,1,0)
data section 'globals$shared'
align	4
%#hsmFileDn.minip2p:	db 4 dup ?
.code
	push	0			;;; i656a
	push	1			;;; i656a
	push	1			;;; i656a
	push	0			;;; i656a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmFileDn.minip2p],eax			;;; i668
;
; [92] #ip$ = GetLocalIpA()
data section 'globals$shared'
align	4
%#ip$.minip2p:	db 4 dup ?
.code
	call	func16.minip2p			;;; i619
	mov	ebx,addr %#ip$.minip2p			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [94] 'PRINT "GetLocalIpA: #";#ip$;"#"
;
; [95] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func19.minip2p			;;; i258
;
; [96] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.Startup.minip2p:  ;;; Function end label for Assembly Programmers.
end.func19.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  Startup ()  *****
;  *****
;
; [98] FUNCTION InitTimer ()
.code
align 16
_InitTimer.minip2p@0:
;  *****
;  *****  FUNCTION  InitTimer ()  *****
;  *****
func14.minip2p:
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
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody14.minip2p:
;
; [99] SHARED wTimerRes
data section 'globals$shared'
align	4
%wTimerRes.minip2p:	db 4 dup ?
.code
;
; [100] TIMECAPS tc
; .composites = ebp-40	; internal variable
#ifdef InitTimer.tc
#undef InitTimer.tc
#endif
#define InitTimer.tc ebp-44	; exposes local variable 'tc'
;
;
; [103] IF (timeGetDevCaps(&tc, SIZE(TIMECAPS)) != $$TIMERR_NOERROR) THEN
;
; [0] EXTERNAL FUNCTION timeGetDevCaps (lpTimeCaps, uSize)
	mov	eax,d[ebp-44]			;;; i642
; .xstk14.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	mov	eax,8			;;; i584
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_timeGetDevCaps@8			;;; i619
	cmp	eax,0			;;; i684a
	je	>> else.0002.minip2p			;;; i219
;
; [104] RETURN $$TIMERR_NOCANDO
	mov	eax,97			;;; i659
	jmp	end.func14.minip2p			;;; i258
;
; [105] END IF
else.0002.minip2p:
end.if.0002.minip2p:
;
; [107] wTimerRes = MIN(MAX(tc.wPeriodMin, XLONG($$TARGET_RESOLUTION)), tc.wPeriodMax)
	sub	esp,64			;;; i487
	sub	esp,64			;;; i487
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	mov	d[esp],eax			;;; i887
	sub	esp,64			;;; i487
	mov	d[esp],50
	call	%_cv.xlong.to.xlong			;;; i492b
	add	esp,64			;;; i600
	mov	d[esp+4],eax			;;; i887
	call	%_MAX.ulong
	add	esp,64			;;; i600
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[esp+4],eax			;;; i887
	call	%_MIN.ulong
	add	esp,64			;;; i600
	mov	d[%wTimerRes.minip2p],eax			;;; i668
;
; [108] timeBeginPeriod(wTimerRes)
;
; [0] EXTERNAL FUNCTION timeBeginPeriod (uPeriod)
	push	[%wTimerRes.minip2p]			;;; i672a
	call	_timeBeginPeriod@4			;;; i619
;
; [110] #listenReset = timeSetEvent(5000, wTimerRes, &TimerCallback(), 0, $$TIME_ONESHOT)
data section 'globals$shared'
align	4
%#listenReset.minip2p:	db 4 dup ?
.code
;
; [0] EXTERNAL FUNCTION timeSetEvent (uDelay, uResolution, lpFunction, dwUser, uFlags)
	mov	eax,addr _TimerCallback.minip2p@20			;;; i599
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	push	[%wTimerRes.minip2p]			;;; i672a
	push	5000			;;; i656a
	call	_timeSetEvent@20			;;; i619
	mov	d[%#listenReset.minip2p],eax			;;; i668
;
; [111] IF (#listenReset != 0) THEN
	mov	eax,d[%#listenReset.minip2p]			;;; i663a
	cmp	eax,0			;;; i684a
	je	>> else.0003.minip2p			;;; i219
;
; [112] RETURN $$TIMERR_NOCANDO
	mov	eax,97			;;; i659
	jmp	end.func14.minip2p			;;; i258
;
; [113] ELSE
	jmp	end.if.0003.minip2p			;;; i107
else.0003.minip2p:
;
; [114] RETURN $$TIMERR_NOERROR
	mov	eax,0			;;; i659
	jmp	end.func14.minip2p			;;; i258
;
; [115] END IF
end.if.0003.minip2p:
;
; [117] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.InitTimer.minip2p:  ;;; Function end label for Assembly Programmers.
end.func14.minip2p:
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
; [119] FUNCTION TimerCallback (timerid, msg, dwUser, dw1, dw2)
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
_TimerCallback.minip2p@20:
;  *****
;  *****  FUNCTION  TimerCallback ()  *****
;  *****
func13.minip2p:
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
funcBody13.minip2p:
;
; [120] SHARED LCONNECT
data section 'globals$shared'
align	4
%LCONNECT.minip2p:	db 4 dup ?
.code
;
; [122] SELECT CASE timerid
	mov	eax,d[ebp+8]			;;; i665
; .select13.0004 = ebp-40	; internal variable
	mov	d[ebp-40],eax			;;; i670
;
; [123] CASE #listenReset		:IFZ LCONNECT THEN Cleanup ()
	mov	eax,d[%#listenReset.minip2p]			;;; i663a
	mov	ebx,d[ebp-40]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.0004.0001.minip2p			;;; i71
	mov	eax,d[%LCONNECT.minip2p]			;;; i663a
	test	eax,eax			;;; i194
	jnz	>> else.0005.minip2p			;;; i195
	call	func1A.minip2p			;;; i619
else.0005.minip2p:
end.if.0005.minip2p:
;
; [124] CASE ELSE			:
	jmp	end.select.0004.minip2p			;;; i69
case.0004.0001.minip2p:
;
; [125] END SELECT
end.select.0004.minip2p:
;
; [127] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func13.minip2p			;;; i258
;
; [128] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.TimerCallback.minip2p:  ;;; Function end label for Assembly Programmers.
end.func13.minip2p:
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
; [130] FUNCTION DestroyTimer ()
.code
align 16
_DestroyTimer.minip2p@0:
;  *****
;  *****  FUNCTION  DestroyTimer ()  *****
;  *****
func15.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody15.minip2p:
;
; [131] SHARED wTimerRes
;
; [134] IF #listenReset THEN
	mov	eax,d[%#listenReset.minip2p]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0006.minip2p			;;; i221
;
; [135] timeEndPeriod(wTimerRes)
;
; [0] EXTERNAL FUNCTION timeEndPeriod (uPeriod)
	push	[%wTimerRes.minip2p]			;;; i672a
	call	_timeEndPeriod@4			;;; i619
;
; [136] timeKillEvent(#listenReset)' Cancel the event
;
; [0] EXTERNAL FUNCTION timeKillEvent (uID)
	push	[%#listenReset.minip2p]			;;; i672a
	call	_timeKillEvent@4			;;; i619
;
; [137] #listenReset = 0
	mov	eax,0			;;; i659
	mov	d[%#listenReset.minip2p],eax			;;; i668
;
; [138] END IF
else.0006.minip2p:
end.if.0006.minip2p:
;
; [140] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DestroyTimer.minip2p:  ;;; Function end label for Assembly Programmers.
end.func15.minip2p:
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
; [143] FUNCTION Cleanup ()
.code
align 16
_Cleanup@0:
;  *****
;  *****  FUNCTION  Cleanup ()  *****
;  *****
func1A.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody1A.minip2p:
;
; [144] SHARED fsclient,fssocket
data section 'globals$shared'
align	4
%fsclient.minip2p:	db 4 dup ?
.code
data section 'globals$shared'
align	4
%fssocket.minip2p:	db 4 dup ?
.code
;
; [147] p2pCloseSocket (fsclient): fsclient = 0
	push	[%fsclient.minip2p]			;;; i672a
	call	funcA.minip2p			;;; i619
	mov	eax,0			;;; i659
	mov	d[%fsclient.minip2p],eax			;;; i668
;
; [148] p2pCloseSocket (fssocket): fssocket = 0
	push	[%fssocket.minip2p]			;;; i672a
	call	funcA.minip2p			;;; i619
	mov	eax,0			;;; i659
	mov	d[%fssocket.minip2p],eax			;;; i668
;
; [149] Sleep (10)
;
; [0] EXTERNAL FUNCTION Sleep (dwMilliseconds)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [151] CloseHandle (#hsmFileL)
;
; [0] EXTERNAL FUNCTION CloseHandle (hObject)
	push	[%#hsmFileL.minip2p]			;;; i672a
	call	_CloseHandle@4			;;; i619
;
; [152] CloseHandle (#hsmFileUp)
	push	[%#hsmFileUp.minip2p]			;;; i672a
	call	_CloseHandle@4			;;; i619
;
; [153] CloseHandle (#hsmFileDn)
	push	[%#hsmFileDn.minip2p]			;;; i672a
	call	_CloseHandle@4			;;; i619
;
; [155] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.Cleanup.minip2p:  ;;; Function end label for Assembly Programmers.
end.func1A.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  Cleanup ()  *****
;  *****
;
; [157] FUNCTION FileListen (auth, port)
.code
;
#ifdef FileListen.auth
#undef FileListen.auth
#endif
#define FileListen.auth ebp+8	; exposes function argument 'auth'
;
;
#ifdef FileListen.port
#undef FileListen.port
#endif
#define FileListen.port ebp+12	; exposes function argument 'port'
;
align 16
_FileListen@8:
;  *****
;  *****  FUNCTION  FileListen ()  *****
;  *****
func21.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func21.minip2p
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
	xor	eax,eax			;;; ...
A.33:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.33			;;; .....
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
	mov	ecx,50				;;; ..
	xor	eax,eax			;;; ...
A.34:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.34			;;; .....
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
	lea	ecx,[esp+1080]			;;; i125b
	mov	d[ebp-44],eax			;;; i670
	mov	d[ebp-72],ebx			;;; i670
	mov	d[ebp-76],ecx			;;; i670
funcBody21.minip2p:
;
; [158] SHARED fsclient,fssocket
;
; [159] '	SHARED EXITSTATUS
;
; [160] TP2PFILE file
; .composites = ebp-40	; internal variable
#ifdef FileListen.file
#undef FileListen.file
#endif
#define FileListen.file ebp-44	; exposes local variable 'file'
;
;
; [163] IF (WaitForSingleObject (#hsmFileL,15000) == $$WAIT_TIMEOUT) THEN RETURN -3
;
; [0] EXTERNAL FUNCTION WaitForSingleObject (hHandle, dwMilliseconds)
	push	15000			;;; i656a
	push	[%#hsmFileL.minip2p]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0007.minip2p			;;; i219
	mov	eax,3			;;; i659
	neg	eax			;;; i916
	jmp	end.func21.minip2p			;;; i258
else.0007.minip2p:
end.if.0007.minip2p:
;
; [165] '	EXITSTATUS = $$FALSE
;
; [167] ret = $$FALSE' success status
#ifdef FileListen.ret
#undef FileListen.ret
#endif
#define FileListen.ret ebp-48	; exposes local variable 'ret'
;
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [168] fsclient = 0: fssocket = 0
	mov	eax,0			;;; i659
	mov	d[%fsclient.minip2p],eax			;;; i668
	mov	eax,0			;;; i659
	mov	d[%fssocket.minip2p],eax			;;; i668
;
; [170] ' selectable local address?
;
; [171] IFF p2pCreateBindSocket (#ip$, port, @fssocket) THEN
	mov	eax,d[%#ip$.minip2p]			;;; i663a
	call	%_clone.a0			;;; i634
; .xstk21.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	push	[%fssocket.minip2p]			;;; i672a
	push	[ebp+12]			;;; i674a
	push	[ebp-56]			;;; i674a
	call	func9.minip2p			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+8]			;;; i877a
	mov	d[%fssocket.minip2p],ecx			;;; i668
	add	esp,12			;;; i633
	test	eax,eax			;;; i194
	jnz	>> else.0008.minip2p			;;; i195
;
; [172] ReleaseSemaphore (#hsmFileL,1,NULL)
;
; [0] EXTERNAL FUNCTION ReleaseSemaphore (hSemaphore, lReleaseCount, lpPreviousCount)
#ifdef FileListen.NULL
#undef FileListen.NULL
#endif
#define FileListen.NULL ebp-60	; exposes local variable 'NULL'
;
	push	[ebp-60]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmFileL.minip2p]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [173] RETURN -2
	mov	eax,2			;;; i659
	neg	eax			;;; i916
	jmp	end.func21.minip2p			;;; i258
;
; [174] END IF
else.0008.minip2p:
end.if.0008.minip2p:
;
; [176] InitTimer ()
	call	func14.minip2p			;;; i619
;
; [177] IFT p2pListen (fssocket) THEN
	push	[%fssocket.minip2p]			;;; i672a
	call	func3.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0009.minip2p			;;; i221
;
; [178] fsclient = p2pAccept(fssocket,@clientaddr$)
#ifdef FileListen.clientaddr$
#undef FileListen.clientaddr$
#endif
#define FileListen.clientaddr$ ebp-64	; exposes local variable 'clientaddr$'
;
	push	[ebp-64]			;;; i674a
	push	[%fssocket.minip2p]			;;; i672a
	call	func6.minip2p			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	[ebp-64],ecx			;;; i670
	mov	d[%fsclient.minip2p],eax			;;; i668
;
; [179] '		DestroyTimer ()
;
; [180] IF (fsclient != $$SOCKET_ERROR) THEN
	mov	eax,d[%fsclient.minip2p]			;;; i663a
	cmp	eax,-1			;;; i684a
	je	>> else.000A.minip2p			;;; i219
;
; [181] IFF p2pListenBin (fsclient,SIZE(TP2PFILE),&file) THEN EXIT IF 3
	mov	eax,540			;;; i584
	mov	d[ebp-56],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	push	[%fsclient.minip2p]			;;; i672a
	call	func4.minip2p			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.000B.minip2p			;;; i195
	jmp	end.if.0009.minip2p			;;; i146
else.000B.minip2p:
end.if.000B.minip2p:
;
; [182] IF (file.auth != auth) || (file.ident != $$FILE_IDENT) THEN EXIT IF 3
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+3]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	cmp	eax,ebx			;;; i684a
;>peep
	mov	eax,0			;;; i466
	je	> A.29			;;; i467
	not	eax			;;; i468
A.29:
;+peep
	mov	ebx,d[ebp-44]			;;; i665
	lea	esi,[ebx]			;;; i308
	mov	edi,3			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	ebx,esi			;;; i312
	mov	d[ebp-56],eax			;;; i670
	mov	eax,addr @_string.1031.minip2p			;;; i663
	call	%_string.compare.vs			;;; i690
;>peep
	mov	eax,0			;;; i466
	je	> A.30			;;; i467
	not	eax			;;; i468
A.30:
;+peep
	mov	ebx,d[ebp-56]			;;; i665
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.000C.minip2p			;;; i221
	jmp	end.if.0009.minip2p			;;; i146
else.000C.minip2p:
end.if.000C.minip2p:
;
; [184] SELECT CASE file.fmode
	mov	eax,d[ebp-44]			;;; i665
	movzx	eax,b[eax+537]			;;; i313b
; .select21.000D = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
;
; [185] CASE $$FILE_SEND	:IFT FileSend (fsclient, file) THEN ret = $$TRUE
	mov	eax,1			;;; i659
	mov	ebx,d[ebp-68]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.000D.0001.minip2p			;;; i71
	mov	eax,d[ebp-44]			;;; i665
; .compositeArg.0 = ebp-72	; internal variable
	mov	edi,d[ebp-72]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	push	[%fsclient.minip2p]			;;; i672a
	call	func12.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.000E.minip2p			;;; i221
	mov	eax,-1			;;; i659
	mov	d[ebp-48],eax			;;; i670
else.000E.minip2p:
end.if.000E.minip2p:
;
; [186] CASE $$FILE_GET		:IFT FileGet (fsclient, file) THEN ret = $$TRUE
	jmp	end.select.000D.minip2p			;;; i69
case.000D.0001.minip2p:
	mov	eax,2			;;; i659
	mov	ebx,d[ebp-68]			;;; i665
	cmp	eax,ebx			;;; i684a
	jne	>> case.000D.0002.minip2p			;;; i71
	mov	eax,d[ebp-44]			;;; i665
; .compositeArg.1 = ebp-76	; internal variable
	mov	edi,d[ebp-76]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	push	[%fsclient.minip2p]			;;; i672a
	call	func11.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.000F.minip2p			;;; i221
	mov	eax,-1			;;; i659
	mov	d[ebp-48],eax			;;; i670
else.000F.minip2p:
end.if.000F.minip2p:
;
; [187] CASE ELSE			:ret = $$FALSE
	jmp	end.select.000D.minip2p			;;; i69
case.000D.0002.minip2p:
	mov	eax,0			;;; i659
	mov	d[ebp-48],eax			;;; i670
;
; [188] END SELECT
end.select.000D.minip2p:
;
; [189] END IF
else.000A.minip2p:
end.if.000A.minip2p:
;
; [190] END IF
else.0009.minip2p:
end.if.0009.minip2p:
;
; [192] p2pCloseSocket (fsclient): fsclient = 0
	push	[%fsclient.minip2p]			;;; i672a
	call	funcA.minip2p			;;; i619
	mov	eax,0			;;; i659
	mov	d[%fsclient.minip2p],eax			;;; i668
;
; [193] p2pCloseSocket (fssocket): fssocket = 0
	push	[%fssocket.minip2p]			;;; i672a
	call	funcA.minip2p			;;; i619
	mov	eax,0			;;; i659
	mov	d[%fssocket.minip2p],eax			;;; i668
;
; [194] ReleaseSemaphore (#hsmFileL,1,NULL)
	push	[ebp-60]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmFileL.minip2p]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [195] RETURN ret
	mov	eax,d[ebp-48]			;;; i665
	jmp	end.func21.minip2p			;;; i258
;
; [196] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FileListen.minip2p:  ;;; Function end label for Assembly Programmers.
end.func21.minip2p:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func21.minip2p
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func21.minip2p:
	mov	esi,[ebp-64]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  FileListen ()  *****
;  *****
;
; [198] FUNCTION p2pListen(socket)
.code
;
#ifdef p2pListen.socket
#undef p2pListen.socket
#endif
#define p2pListen.socket ebp+8	; exposes function argument 'socket'
;
align 16
_p2pListen.minip2p@4:
;  *****
;  *****  FUNCTION  p2pListen ()  *****
;  *****
func3.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody3.minip2p:
;
; [200] IF (listen(socket,1) == $$SOCKET_ERROR) THEN
;
; [0] EXTERNAL SFUNCTION  listen           (socket, backlog)
	push	1			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_listen@8			;;; i619
	cmp	eax,-1			;;; i684a
	jne	>> else.0010.minip2p			;;; i219
;
; [201] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func3.minip2p			;;; i258
;
; [202] ELSE
	jmp	end.if.0010.minip2p			;;; i107
else.0010.minip2p:
;
; [203] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func3.minip2p			;;; i258
;
; [204] END IF
end.if.0010.minip2p:
;
; [205] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pListen.minip2p:  ;;; Function end label for Assembly Programmers.
end.func3.minip2p:
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
; [207] FUNCTION p2pAccept (socket, STRING remoteaddr)
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
_p2pAccept.minip2p@8:
;  *****
;  *****  FUNCTION  p2pAccept ()  *****
;  *****
func6.minip2p:
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
A.39:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.39			;;; .....
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
funcBody6.minip2p:
;
; [208] SOCKADDR_IN  sockaddrin
; .composites = ebp-40	; internal variable
#ifdef p2pAccept.sockaddrin
#undef p2pAccept.sockaddrin
#endif
#define p2pAccept.sockaddrin ebp-44	; exposes local variable 'sockaddrin'
;
;
; [209] SHARED LCONNECT
;
; [211] LCONNECT = 0
	mov	eax,0			;;; i659
	mov	d[%LCONNECT.minip2p],eax			;;; i668
;
; [212] length = SIZE(sockaddrin)
#ifdef p2pAccept.length
#undef p2pAccept.length
#endif
#define p2pAccept.length ebp-48	; exposes local variable 'length'
;
	mov	eax,16			;;; i584
	mov	d[ebp-48],eax			;;; i670
;
; [213] client = accept (socket, &sockaddrin, &length)
#ifdef p2pAccept.client
#undef p2pAccept.client
#endif
#define p2pAccept.client ebp-52	; exposes local variable 'client'
;
;
; [0] EXTERNAL SFUNCTION  accept           (socket, addrSOCKADDR, addrLength)
	mov	eax,d[ebp-44]			;;; i642
; .xstk6.0000 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	lea	eax,[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_accept@12			;;; i619
	mov	d[ebp-52],eax			;;; i670
;
; [214] remoteaddr = CSTRING$(inet_ntoa(sockaddrin.sin_addr))
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
; [215] LCONNECT = 1
	mov	eax,1			;;; i659
	mov	d[%LCONNECT.minip2p],eax			;;; i668
;
; [216] RETURN client
	mov	eax,d[ebp-52]			;;; i665
	jmp	end.func6.minip2p			;;; i258
;
; [217] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pAccept.minip2p:  ;;; Function end label for Assembly Programmers.
end.func6.minip2p:
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
; [219] FUNCTION p2pCloseSocket (socket)
.code
;
#ifdef p2pCloseSocket.socket
#undef p2pCloseSocket.socket
#endif
#define p2pCloseSocket.socket ebp+8	; exposes function argument 'socket'
;
align 16
_p2pCloseSocket.minip2p@4:
;  *****
;  *****  FUNCTION  p2pCloseSocket ()  *****
;  *****
funcA.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.funcA.minip2p
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
funcBodyA.minip2p:
;
; [220] UBYTE buffer[]
#ifdef p2pCloseSocket.buffer
#undef p2pCloseSocket.buffer
#endif
#define p2pCloseSocket.buffer ebp-40	; exposes local variable 'buffer'
;
;
; [223] IFZ socket THEN RETURN 0
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0011.minip2p			;;; i195
	mov	eax,0			;;; i659
	jmp	end.funcA.minip2p			;;; i258
else.0011.minip2p:
end.if.0011.minip2p:
;
; [224] shutdown (socket,$$SD_SEND)
;
; [0] EXTERNAL SFUNCTION  shutdown         (socket, how)
	push	1			;;; i656a
	push	[ebp+8]			;;; i674a
	call	_shutdown@8			;;; i619
;
; [225] 't0 = GetTickCount()
;
; [226] 'DIM buffer[1023]	'ubyte
;
; [227] 'DO
;
; [228] '	ret = recv(socket, &buffer[], 1022, 0)
;
; [229] '	IF (ret == $$SOCKET_ERROR) THEN EXIT DO
;
; [230] '	IF (ret == 0) THEN EXIT DO
;
; [231] 'LOOP WHILE ((GetTickCount()-t0) < 1000)
;
; [232] RETURN closesocket (socket)
;
; [0] EXTERNAL SFUNCTION  closesocket      (socket)
	push	[ebp+8]			;;; i674a
	call	_closesocket@4			;;; i619
	jmp	end.funcA.minip2p			;;; i258
;
; [233] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pCloseSocket.minip2p:  ;;; Function end label for Assembly Programmers.
end.funcA.minip2p:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.funcA.minip2p
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.funcA.minip2p:
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
  ret
;-peep
;  *****
;  *****  END FUNCTION  p2pCloseSocket ()  *****
;  *****
;
; [235] FUNCTION FileSend (fsclient, TP2PFILE file)
.code
;
#ifdef FileSend.fsclient
#undef FileSend.fsclient
#endif
#define FileSend.fsclient ebp+8	; exposes function argument 'fsclient'
;
;
#ifdef FileSend.file
#undef FileSend.file
#endif
#define FileSend.file ebp+12	; exposes function argument 'file'
;
align 16
_FileSend.minip2p@8:
;  *****
;  *****  FUNCTION  FileSend ()  *****
;  *****
func12.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func12.minip2p
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.50:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.50			;;; .....
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
	xor	eax,eax		;;; .
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
	push	eax			;;; ..
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-56],eax			;;; i670
funcBody12.minip2p:
;
; [236] UBYTE buffer[],dbuffer[]
#ifdef FileSend.buffer
#undef FileSend.buffer
#endif
#define FileSend.buffer ebp-40	; exposes local variable 'buffer'
;
#ifdef FileSend.dbuffer
#undef FileSend.dbuffer
#endif
#define FileSend.dbuffer ebp-44	; exposes local variable 'dbuffer'
;
;
; [237] STRING auth
#ifdef FileSend.auth
#undef FileSend.auth
#endif
#define FileSend.auth ebp-48	; exposes local variable 'auth'
;
;
; [238] TCRC crc
; .composites = ebp-52	; internal variable
#ifdef FileSend.crc
#undef FileSend.crc
#endif
#define FileSend.crc ebp-56	; exposes local variable 'crc'
;
;
; [241] IF (file.ident != $$FILE_IDENT) THEN RETURN $$FALSE
	mov	eax,d[ebp+12]			;;; i665
	lea	esi,[eax]			;;; i308
	mov	edi,3			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.1031.minip2p			;;; i663
	call	%_string.compare.sv			;;; i690
	je	>> else.0012.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func12.minip2p			;;; i258
else.0012.minip2p:
end.if.0012.minip2p:
;
; [242] auth = STRING$(file.auth)
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+3]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [243] file.error = 0
	mov	eax,d[ebp+12]			;;; i665
	mov	ebx,0			;;; i659
	mov	b[eax+539],bl			;;; i13b
;
; [244] file.size = 0
	mov	eax,d[ebp+12]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+525],ebx			;;; i13b
;
; [246] IF (file.end || file.start) THEN
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
	mov	ebx,d[ebp+12]			;;; i665
	mov	ebx,d[ebx+517]			;;; i313b
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0013.minip2p			;;; i221
;
; [247] file.wmode = $$WR
	mov	eax,d[ebp+12]			;;; i665
	mov	ebx,1			;;; i659
	mov	d[eax+529],ebx			;;; i13b
;
; [248] ELSE
	jmp	end.if.0013.minip2p			;;; i107
else.0013.minip2p:
;
; [249] file.wmode = $$WRNEW
	mov	eax,d[ebp+12]			;;; i665
	mov	ebx,3			;;; i659
	mov	d[eax+529],ebx			;;; i13b
;
; [250] END IF
end.if.0013.minip2p:
;
; [252] fp = open_file (&file.srcfile, 0)
#ifdef FileSend.fp
#undef FileSend.fp
#endif
#define FileSend.fp ebp-60	; exposes local variable 'fp'
;
	mov	eax,d[ebp+12]			;;; i665
	lea	eax,[eax+7]			;;; i636
; .xstk12.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-68]			;;; i674a
	call	funcB.minip2p			;;; i619
	mov	d[ebp-60],eax			;;; i670
;
; [253] IF fp THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0014.minip2p			;;; i221
;
; [254] fseek(fp, 0, 2)'$$SEEK_END)
;
; [0] EXTERNAL CFUNCTION  fseek (fpAddr, offset, where)			' changes the read/write position of the file specified by fp
	push	2			;;; i656a
	push	0			;;; i656a
	push	[ebp-60]			;;; i674a
	call	_fseek			;;; i619
	add	esp,12			;;; i633
;
; [255] file.size = ftell(fp)
;
; [0] EXTERNAL CFUNCTION  ftell (fpAddr)										' returns the current read/write position of the file specified by fp
	push	[ebp-60]			;;; i674a
	call	_ftell			;;; i619
	add	esp,4			;;; i633
	mov	ebx,d[ebp+12]			;;; i665
	mov	d[ebx+525],eax			;;; i13b
;
; [257] IFZ file.end THEN
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
	test	eax,eax			;;; i194
	jnz	>> else.0015.minip2p			;;; i195
;
; [258] file.end = file.size
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+525]			;;; i313b
	mov	ebx,d[ebp+12]			;;; i665
	mov	d[ebx+521],eax			;;; i13b
;
; [259] ELSE
	jmp	end.if.0015.minip2p			;;; i107
else.0015.minip2p:
;
; [260] IF file.end > file.size THEN file.end = file.size
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
	mov	ebx,d[ebp+12]			;;; i665
	mov	ebx,d[ebx+525]			;;; i313b
	cmp	eax,ebx			;;; i684a
	jle	>> else.0016.minip2p			;;; i219
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+525]			;;; i313b
	mov	ebx,d[ebp+12]			;;; i665
	mov	d[ebx+521],eax			;;; i13b
else.0016.minip2p:
end.if.0016.minip2p:
;
; [261] END IF
end.if.0015.minip2p:
;
; [263] IF (file.end - file.start) > file.blocks THEN
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
	mov	ebx,d[ebp+12]			;;; i665
	mov	ebx,d[ebx+517]			;;; i313b
	sub	eax,ebx			;;; i791
	mov	ebx,d[ebp+12]			;;; i665
	mov	ebx,d[ebx+533]			;;; i313b
	cmp	eax,ebx			;;; i684a
	jle	>> else.0017.minip2p			;;; i219
;
; [264] fbsize = file.blocks
#ifdef FileSend.fbsize
#undef FileSend.fbsize
#endif
#define FileSend.fbsize ebp-72	; exposes local variable 'fbsize'
;
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+533]			;;; i313b
	mov	d[ebp-72],eax			;;; i670
;
; [265] ELSE
	jmp	end.if.0017.minip2p			;;; i107
else.0017.minip2p:
;
; [266] fbsize = file.end - file.start
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
	mov	ebx,d[ebp+12]			;;; i665
	mov	ebx,d[ebx+517]			;;; i313b
	sub	eax,ebx			;;; i791
	mov	d[ebp-72],eax			;;; i670
;
; [267] END IF
end.if.0017.minip2p:
;
; [269] 'CPrint ("* file size: "+STRING$(file.size)+" bytes")
;
; [270] 'CPrint ("* total bytes to send: "+STRING$(file.end - file.start))
;
; [272] IFF p2pSendBin (fsclient,&file,SIZE(TP2PFILE)) THEN
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	mov	eax,540			;;; i584
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func5.minip2p			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0018.minip2p			;;; i195
;
; [273] close_file (fp)
	push	[ebp-60]			;;; i674a
	call	funcD.minip2p			;;; i619
;
; [274] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func12.minip2p			;;; i258
;
; [275] END IF
else.0018.minip2p:
end.if.0018.minip2p:
;
; [277] DIM buffer[fbsize]
	sub	esp,64			;;; i430
	mov	eax,d[ebp-72]			;;; i665
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-40]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073545215			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-40],eax			;;; i670
;
; [278] IF (file.flags & $$FILE_COMPRESS) THEN DIM dbuffer[fbsize+1024]
	mov	eax,d[ebp+12]			;;; i665
	movzx	eax,b[eax+538]			;;; i313b
	and	eax,4			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.0019.minip2p			;;; i221
	sub	esp,64			;;; i430
	mov	eax,d[ebp-72]			;;; i665
	add	eax,1024			;;; i775
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-44]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073545215			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-44],eax			;;; i670
else.0019.minip2p:
end.if.0019.minip2p:
;
; [280] FOR pos = file.start TO file.end STEP file.blocks
#ifdef FileSend.pos
#undef FileSend.pos
#endif
#define FileSend.pos ebp-76	; exposes local variable 'pos'
;
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+517]			;;; i313b
	mov	d[ebp-76],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
; .forlimit12.001A = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+533]			;;; i313b
; .forstep12.001A = ebp-84	; internal variable
	mov	d[ebp-84],eax			;;; i670
align 8
for.001A.minip2p:
	mov	eax,d[ebp-76]			;;; i665
	mov	ebx,d[ebp-80]			;;; i665
	mov	esi,d[ebp-84]			;;; i665
	or	esi,esi
	jns	> A.44
	xchg	eax,ebx
A.44:
	cmp	eax,ebx			;;; i153
	jg	>> end.for.001A.minip2p			;;; i154
;
; [282] IF (pos+fbsize) > file.end THEN fbsize = file.end - pos
	mov	eax,d[ebp-76]			;;; i665
	mov	ebx,d[ebp-72]			;;; i665
	add	eax,ebx			;;; i775
	mov	ebx,d[ebp+12]			;;; i665
	mov	ebx,d[ebx+521]			;;; i313b
	cmp	eax,ebx			;;; i684a
	jle	>> else.001B.minip2p			;;; i219
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
	mov	ebx,d[ebp-76]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp-72],eax			;;; i670
else.001B.minip2p:
end.if.001B.minip2p:
;
; [283] fsetpos (fp, &pos)
;
; [0] EXTERNAL CFUNCTION  fsetpos (fpAddr, posAddr)					' positions the file fp according to the value of the object pointed to by pos
	lea	eax,[ebp-76]			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	call	_fsetpos			;;; i619
	add	esp,8			;;; i633
;
; [284] fread (&buffer[],1,fbsize,fp)
;
; [0] EXTERNAL CFUNCTION  fread (bufAddr, elsize, nelem, fpAddr)		' reads nelem elements of elsize bytes each from the file specified by fp into the buffer specified by buf
	push	[ebp-60]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	1			;;; i656a
	push	[ebp-40]			;;; i674a
	call	_fread			;;; i619
	add	esp,16			;;; i633
;
; [285] crc.filepos = pos
	mov	eax,d[ebp-56]			;;; i665
	mov	ebx,d[ebp-76]			;;; i665
	mov	d[eax],ebx			;;; i13b
;
; [286] crc.usize = fbsize
	mov	eax,d[ebp-56]			;;; i665
	mov	ebx,d[ebp-72]			;;; i665
	mov	d[eax+8],ebx			;;; i13b
;
; [288] IF (file.flags & $$FILE_CRC) THEN
	mov	eax,d[ebp+12]			;;; i665
	movzx	eax,b[eax+538]			;;; i313b
	and	eax,1			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.001C.minip2p			;;; i221
;
; [289] crc.crc32 = GetAdler32(&buffer[],crc.usize)
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	push	eax			;;; i667a
	push	[ebp-40]			;;; i674a
	call	func1D.minip2p			;;; i619
	mov	ebx,d[ebp-56]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [290] ELSE
	jmp	end.if.001C.minip2p			;;; i107
else.001C.minip2p:
;
; [291] crc.crc32 = 0
	mov	eax,d[ebp-56]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+12],ebx			;;; i13b
;
; [292] END IF
end.if.001C.minip2p:
;
; [294] IF (file.flags & $$FILE_COMPRESS) THEN
	mov	eax,d[ebp+12]			;;; i665
	movzx	eax,b[eax+538]			;;; i313b
	and	eax,4			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.001D.minip2p			;;; i221
;
; [295] dsize = crc.usize + 1024
#ifdef FileSend.dsize
#undef FileSend.dsize
#endif
#define FileSend.dsize ebp-88	; exposes local variable 'dsize'
;
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	ebx,1024			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.45			;;; i367
	call	%_eeeOverflow			;;; i368
A.45:
	add	eax,ebx			;;; i772
	jnc	> A.46			;;; i773
	call	%_eeeOverflow			;;; i774
A.46:
	mov	d[ebp-88],eax			;;; i670
;
; [296] zlib_compress (&buffer[],crc.usize,&dbuffer[],&dsize,$$Z_BEST_COMPRESSION)
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	d[ebp-68],eax			;;; i670
	lea	eax,[ebp-88]			;;; i642
; .xstk12.0001 = ebp-96	; internal variable
	mov	d[ebp-96],eax			;;; i670
	push	9			;;; i656a
	push	[ebp-96]			;;; i674a
	push	[ebp-44]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	func1E.minip2p			;;; i619
;
; [298] crc.size = dsize
	mov	eax,d[ebp-56]			;;; i665
	mov	ebx,d[ebp-88]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [299] lpdata = &dbuffer[]
#ifdef FileSend.lpdata
#undef FileSend.lpdata
#endif
#define FileSend.lpdata ebp-100	; exposes local variable 'lpdata'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	d[ebp-100],eax			;;; i670
;
; [300] ELSE
	jmp	end.if.001D.minip2p			;;; i107
else.001D.minip2p:
;
; [301] crc.size = fbsize
	mov	eax,d[ebp-56]			;;; i665
	mov	ebx,d[ebp-72]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [302] lpdata = &buffer[]
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp-100],eax			;;; i670
;
; [303] END IF
end.if.001D.minip2p:
;
; [305] IF (file.flags & $$FILE_ENCRYPT) THEN
	mov	eax,d[ebp+12]			;;; i665
	movzx	eax,b[eax+538]			;;; i313b
	and	eax,2			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.001E.minip2p			;;; i221
;
; [306] encrypt_buffer (lpdata,crc.size,auth)
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	push	[ebp-100]			;;; i674a
	call	func1B.minip2p			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
;
; [307] END IF
else.001E.minip2p:
end.if.001E.minip2p:
;
; [309] IFT p2pSendBin (fsclient,&crc,SIZE(TCRC)) THEN
	mov	eax,d[ebp-56]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	mov	eax,16			;;; i584
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func5.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.001F.minip2p			;;; i221
;
; [310] Sleep (50)
	push	50			;;; i656a
	call	_Sleep@4			;;; i619
;
; [311] IFF p2pSendBin (fsclient,lpdata,crc.size) THEN
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	push	eax			;;; i667a
	push	[ebp-100]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func5.minip2p			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0020.minip2p			;;; i195
;
; [312] close_file (fp)
	push	[ebp-60]			;;; i674a
	call	funcD.minip2p			;;; i619
;
; [313] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func12.minip2p			;;; i258
;
; [314] END IF
else.0020.minip2p:
end.if.0020.minip2p:
;
; [315] Sleep (150)' remove if transferring across LAN. try increasing if there are conn errors.
	push	150			;;; i656a
	call	_Sleep@4			;;; i619
;
; [316] ELSE
	jmp	end.if.001F.minip2p			;;; i107
else.001F.minip2p:
;
; [317] close_file (fp)
	push	[ebp-60]			;;; i674a
	call	funcD.minip2p			;;; i619
;
; [318] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func12.minip2p			;;; i258
;
; [319] END IF
end.if.001F.minip2p:
;
; [321] NEXT pos
do.next.001A.minip2p:
	mov	eax,d[ebp-76]			;;; i665
	mov	ebx,d[ebp-84]			;;; i665
	add	eax,ebx			;;; i238a
	mov	d[ebp-76],eax			;;; i670
	jmp	for.001A.minip2p			;;; i238b
end.for.001A.minip2p:
;
; [323] close_file (fp)
	push	[ebp-60]			;;; i674a
	call	funcD.minip2p			;;; i619
;
; [324] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func12.minip2p			;;; i258
;
; [325] ELSE
	jmp	end.if.0014.minip2p			;;; i107
else.0014.minip2p:
;
; [326] file.error = 1
	mov	eax,d[ebp+12]			;;; i665
	mov	ebx,1			;;; i659
	mov	b[eax+539],bl			;;; i13b
;
; [327] p2pSendBin (fsclient,&file,SIZE(TP2PFILE))
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	mov	eax,540			;;; i584
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func5.minip2p			;;; i619
;
; [328] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func12.minip2p			;;; i258
;
; [329] END IF
end.if.0014.minip2p:
;
; [331] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func12.minip2p			;;; i258
;
; [332] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FileSend.minip2p:  ;;; Function end label for Assembly Programmers.
end.func12.minip2p:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func12.minip2p
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func12.minip2p:
	mov	esi,d[ebp-44]			;;; i665
	call	%_FreeArray			;;; i424
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  FileSend ()  *****
;  *****
;
; [334] FUNCTION FileGet (socket, TP2PFILE file)
.code
;
#ifdef FileGet.socket
#undef FileGet.socket
#endif
#define FileGet.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef FileGet.file
#undef FileGet.file
#endif
#define FileGet.file ebp+12	; exposes function argument 'file'
;
align 16
_FileGet.minip2p@8:
;  *****
;  *****  FUNCTION  FileGet ()  *****
;  *****
func11.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func11.minip2p
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,3				;;; ..
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
	mov	d[ebp-56],eax			;;; i670
funcBody11.minip2p:
;
; [335] UBYTE buffer[],dbuffer[]
#ifdef FileGet.buffer
#undef FileGet.buffer
#endif
#define FileGet.buffer ebp-40	; exposes local variable 'buffer'
;
#ifdef FileGet.dbuffer
#undef FileGet.dbuffer
#endif
#define FileGet.dbuffer ebp-44	; exposes local variable 'dbuffer'
;
;
; [336] STRING auth
#ifdef FileGet.auth
#undef FileGet.auth
#endif
#define FileGet.auth ebp-48	; exposes local variable 'auth'
;
;
; [337] TCRC crc
; .composites = ebp-52	; internal variable
#ifdef FileGet.crc
#undef FileGet.crc
#endif
#define FileGet.crc ebp-56	; exposes local variable 'crc'
;
;
; [340] auth = STRING$(file.auth)
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+3]			;;; i313b
	mov	d[esp],eax			;;; i887
	call	%_string.ulong			;;; i576
	add	esp,64			;;; i600
	lea	ebx,[ebp-48]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [341] IFF p2pListenBin (socket,SIZE(TP2PFILE),&file) THEN RETURN $$FALSE
	mov	eax,540			;;; i584
; .xstk11.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i642
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func4.minip2p			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0021.minip2p			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func11.minip2p			;;; i258
else.0021.minip2p:
end.if.0021.minip2p:
;
; [342] IF (file.ident != $$FILE_IDENT) || (file.error) THEN RETURN $$FALSE
	mov	eax,d[ebp+12]			;;; i665
	lea	esi,[eax]			;;; i308
	mov	edi,3			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	ebx,addr @_string.1031.minip2p			;;; i663
	call	%_string.compare.sv			;;; i690
;>peep
	mov	eax,0			;;; i466
	je	> A.52			;;; i467
	not	eax			;;; i468
A.52:
;+peep
	mov	ebx,d[ebp+12]			;;; i665
	movzx	ebx,b[ebx+539]			;;; i313b
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0022.minip2p			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func11.minip2p			;;; i258
else.0022.minip2p:
end.if.0022.minip2p:
;
; [343] IFZ (file.end || file.size) THEN RETURN $$FALSE
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
	mov	ebx,d[ebp+12]			;;; i665
	mov	ebx,d[ebx+525]			;;; i313b
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i194
	jnz	>> else.0023.minip2p			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func11.minip2p			;;; i258
else.0023.minip2p:
end.if.0023.minip2p:
;
; [345] 'CPrint ("* file size: "+STRING$(file.size)+" bytes")
;
; [346] 'CPrint ("* total bytes to write: "+STRING$(file.end - file.start))
;
; [348] DecomposePathname (file.desfile, @path$, parent$, filename$, Fn$, fileExt$)
	mov	eax,d[ebp+12]			;;; i665
	lea	esi,[eax+262]			;;; i308
	mov	edi,255			;;; i310
	call	%_CompositeStringToString			;;; i311
	mov	eax,esi			;;; i312
	mov	[ebp-64],eax			;;; i670
#ifdef FileGet.path$
#undef FileGet.path$
#endif
#define FileGet.path$ ebp-68	; exposes local variable 'path$'
;
#ifdef FileGet.parent$
#undef FileGet.parent$
#endif
#define FileGet.parent$ ebp-72	; exposes local variable 'parent$'
;
	mov	eax,d[ebp-72]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk11.0001 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
#ifdef FileGet.filename$
#undef FileGet.filename$
#endif
#define FileGet.filename$ ebp-84	; exposes local variable 'filename$'
;
	mov	eax,d[ebp-84]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk11.0002 = ebp-92	; internal variable
	mov	d[ebp-92],eax			;;; i670
#ifdef FileGet.Fn$
#undef FileGet.Fn$
#endif
#define FileGet.Fn$ ebp-96	; exposes local variable 'Fn$'
;
	mov	eax,d[ebp-96]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk11.0003 = ebp-104	; internal variable
	mov	d[ebp-104],eax			;;; i670
#ifdef FileGet.fileExt$
#undef FileGet.fileExt$
#endif
#define FileGet.fileExt$ ebp-108	; exposes local variable 'fileExt$'
;
	mov	eax,d[ebp-108]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-104]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	[ebp-80]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	funcF.minip2p			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-68],ecx			;;; i670
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+12]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+16]			;;; i871
	call	%____free			;;; i872
	mov	esi,d[esp+20]			;;; i871
	call	%____free			;;; i872
	add	esp,24			;;; i633
;
; [349] IF path$ THEN CreateDirectoryA (&path$, 0)
	mov	eax,[ebp-68]			;;; i665
	test	eax,eax			;;; i214
	jz	>> else.0024.minip2p			;;; i215
	mov	eax,d[eax-8]			;;; i216
	test	eax,eax			;;; i217
	jz	>> else.0024.minip2p			;;; i218
;
; [0] EXTERNAL FUNCTION CreateDirectoryA (lpPathName, lpSecurityAttributes)
	mov	eax,d[ebp-68]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-64]			;;; i674a
	call	_CreateDirectoryA@8			;;; i619
else.0024.minip2p:
end.if.0024.minip2p:
;
; [351] hfile = open_file (&file.desfile,&"wb")
#ifdef FileGet.hfile
#undef FileGet.hfile
#endif
#define FileGet.hfile ebp-112	; exposes local variable 'hfile'
;
	mov	eax,d[ebp+12]			;;; i665
	lea	eax,[eax+262]			;;; i636
	mov	d[ebp-64],eax			;;; i670
	mov	eax,addr @_string.00C7.minip2p			;;; i642
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	call	funcB.minip2p			;;; i619
	mov	d[ebp-112],eax			;;; i670
;
; [352] IFZ hfile THEN
	mov	eax,d[ebp-112]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0025.minip2p			;;; i195
;
; [353] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func11.minip2p			;;; i258
;
; [354] ELSE
	jmp	end.if.0025.minip2p			;;; i107
else.0025.minip2p:
;
; [355] FOR pos = file.start TO file.end STEP file.blocks
#ifdef FileGet.pos
#undef FileGet.pos
#endif
#define FileGet.pos ebp-116	; exposes local variable 'pos'
;
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+517]			;;; i313b
	mov	d[ebp-116],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+521]			;;; i313b
; .forlimit11.0026 = ebp-120	; internal variable
	mov	d[ebp-120],eax			;;; i670
	mov	eax,d[ebp+12]			;;; i665
	mov	eax,d[eax+533]			;;; i313b
; .forstep11.0026 = ebp-124	; internal variable
	mov	d[ebp-124],eax			;;; i670
align 8
for.0026.minip2p:
	mov	eax,d[ebp-116]			;;; i665
	mov	ebx,d[ebp-120]			;;; i665
	mov	esi,d[ebp-124]			;;; i665
	or	esi,esi
	jns	> A.53
	xchg	eax,ebx
A.53:
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0026.minip2p			;;; i154
;
; [356] IFF p2pListenBin (socket,SIZE(TCRC),&crc) THEN
	mov	eax,16			;;; i584
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-56]			;;; i642
	push	eax			;;; i667a
	push	[ebp-64]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func4.minip2p			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0027.minip2p			;;; i195
;
; [357] close_file(hfile)
	push	[ebp-112]			;;; i674a
	call	funcD.minip2p			;;; i619
;
; [358] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func11.minip2p			;;; i258
;
; [359] END IF
else.0027.minip2p:
end.if.0027.minip2p:
;
; [361] IF crc.size THEN
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	test	eax,eax			;;; i220
	jz	>> else.0028.minip2p			;;; i221
;
; [362] IF (UBOUND(buffer[])!= crc.size) THEN DIM buffer[crc.size]
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.54			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.54:
	dec	eax			;;; i596
	mov	ebx,d[ebp-56]			;;; i665
	mov	ebx,d[ebx+4]			;;; i313b
	cmp	eax,ebx			;;; i684a
	je	>> else.0029.minip2p			;;; i219
	sub	esp,64			;;; i430
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-40]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073545215			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-40],eax			;;; i670
else.0029.minip2p:
end.if.0029.minip2p:
;
; [363] IFF p2pListenBin (socket,crc.size,&buffer[]) THEN
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-64],eax			;;; i670
	push	[ebp-40]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func4.minip2p			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.002A.minip2p			;;; i195
;
; [364] close_file(hfile)
	push	[ebp-112]			;;; i674a
	call	funcD.minip2p			;;; i619
;
; [365] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func11.minip2p			;;; i258
;
; [366] END IF
else.002A.minip2p:
end.if.002A.minip2p:
;
; [368] IF (file.flags & $$FILE_ENCRYPT) THEN
	mov	eax,d[ebp+12]			;;; i665
	movzx	eax,b[eax+538]			;;; i313b
	and	eax,2			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.002B.minip2p			;;; i221
;
; [369] decrypt_buffer (&buffer[],crc.size,auth,"")
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	call	%_clone.a0			;;; i634
	mov	d[ebp-80],eax			;;; i670
	push	0			;;; i665a
	push	[ebp-80]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	func1C.minip2p			;;; i619
	sub	esp,16			;;; xnt1i
	mov	esi,d[esp+8]			;;; i871
	call	%____free			;;; i872
	add	esp,16			;;; i633
;
; [370] END IF
else.002B.minip2p:
end.if.002B.minip2p:
;
; [372] IF (file.flags & $$FILE_COMPRESS) THEN
	mov	eax,d[ebp+12]			;;; i665
	movzx	eax,b[eax+538]			;;; i313b
	and	eax,4			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.002C.minip2p			;;; i221
;
; [373] dsize = crc.usize
#ifdef FileGet.dsize
#undef FileGet.dsize
#endif
#define FileGet.dsize ebp-128	; exposes local variable 'dsize'
;
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	d[ebp-128],eax			;;; i670
;
; [374] IF (UBOUND(dbuffer[]) != dsize) THEN DIM dbuffer[dsize]
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.55			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.55:
	dec	eax			;;; i596
	mov	ebx,d[ebp-128]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> else.002D.minip2p			;;; i219
	sub	esp,64			;;; i430
	mov	eax,d[ebp-128]			;;; i665
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[ebp-44]			;;; i665
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1073545215			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[ebp-44],eax			;;; i670
else.002D.minip2p:
end.if.002D.minip2p:
;
; [375] zlib_decompress (&buffer[],crc.size,&dbuffer[],&dsize)
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	mov	d[ebp-64],eax			;;; i670
	lea	eax,[ebp-128]			;;; i642
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	func20.minip2p			;;; i619
;
; [377] IF dsize != crc.usize THEN
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+8]			;;; i313b
	mov	ebx,d[ebp-128]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> else.002E.minip2p			;;; i219
;
; [378] 'CPrint ("* decompression error: source blk size differs from destination blk size")
;
; [379] ' flag error?
;
; [380] END IF
else.002E.minip2p:
end.if.002E.minip2p:
;
; [382] crc.size = dsize
	mov	eax,d[ebp-56]			;;; i665
	mov	ebx,d[ebp-128]			;;; i665
	mov	d[eax+4],ebx			;;; i13b
;
; [383] lpdata = &dbuffer[]
#ifdef FileGet.lpdata
#undef FileGet.lpdata
#endif
#define FileGet.lpdata ebp-132	; exposes local variable 'lpdata'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	d[ebp-132],eax			;;; i670
;
; [384] ELSE
	jmp	end.if.002C.minip2p			;;; i107
else.002C.minip2p:
;
; [385] lpdata = &buffer[]
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp-132],eax			;;; i670
;
; [386] END IF
end.if.002C.minip2p:
;
; [388] IF (file.flags & $$FILE_CRC) THEN
	mov	eax,d[ebp+12]			;;; i665
	movzx	eax,b[eax+538]			;;; i313b
	and	eax,1			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.002F.minip2p			;;; i221
;
; [389] crc32 = GetAdler32 (lpdata,crc.size)
#ifdef FileGet.crc32
#undef FileGet.crc32
#endif
#define FileGet.crc32 ebp-136	; exposes local variable 'crc32'
;
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	push	eax			;;; i667a
	push	[ebp-132]			;;; i674a
	call	func1D.minip2p			;;; i619
	mov	d[ebp-136],eax			;;; i670
;
; [390] IF crc32 != crc.crc32 THEN
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	mov	ebx,d[ebp-136]			;;; i665
	cmp	eax,ebx			;;; i684a
	je	>> else.0030.minip2p			;;; i219
;
; [391] 'CPrint ("* crc error on transfer: "+file.desfile)
;
; [392] 'CPrint ("*  offset: "+STRING$(crc.filepos)+" size: "+STRING$(crc.size))
;
; [393] 'CPrint ("*  expected crc: "+HEXX$(crc.crc32))
;
; [394] 'CPrint ("*  received crc: "+HEXX$(crc32))
;
; [395] close_file(hfile)
	push	[ebp-112]			;;; i674a
	call	funcD.minip2p			;;; i619
;
; [396] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func11.minip2p			;;; i258
;
; [397] END IF
else.0030.minip2p:
end.if.0030.minip2p:
;
; [398] END IF
else.002F.minip2p:
end.if.002F.minip2p:
;
; [400] fsetpos (hfile,&crc.filepos)
	mov	eax,d[ebp-56]			;;; i665
	push	eax			;;; i667a
	push	[ebp-112]			;;; i674a
	call	_fsetpos			;;; i619
	add	esp,8			;;; i633
;
; [401] write_file (hfile,lpdata,crc.size)
	mov	eax,d[ebp-56]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	push	eax			;;; i667a
	push	[ebp-132]			;;; i674a
	push	[ebp-112]			;;; i674a
	call	funcC.minip2p			;;; i619
;
; [402] END IF
else.0028.minip2p:
end.if.0028.minip2p:
;
; [403] NEXT pos
do.next.0026.minip2p:
	mov	eax,d[ebp-116]			;;; i665
	mov	ebx,d[ebp-124]			;;; i665
	add	eax,ebx			;;; i238a
	mov	d[ebp-116],eax			;;; i670
	jmp	for.0026.minip2p			;;; i238b
end.for.0026.minip2p:
;
; [404] close_file(hfile)
	push	[ebp-112]			;;; i674a
	call	funcD.minip2p			;;; i619
;
; [405] END IF
end.if.0025.minip2p:
;
; [407] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func11.minip2p			;;; i258
;
; [408] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FileGet.minip2p:  ;;; Function end label for Assembly Programmers.
end.func11.minip2p:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func11.minip2p
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.func11.minip2p:
	mov	esi,[ebp-84]			;;; i665
	call	%____free			;;; i423
	mov	esi,d[ebp-44]			;;; i665
	call	%_FreeArray			;;; i424
	mov	esi,[ebp-72]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-96]			;;; i665
	call	%____free			;;; i423
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
	mov	esi,[ebp-48]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-108]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-68]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  FileGet ()  *****
;  *****
;
; [410] FUNCTION FileUpload (TP2PFILE file, STRING addr, port)
.code
;
#ifdef FileUpload.file
#undef FileUpload.file
#endif
#define FileUpload.file ebp+8	; exposes function argument 'file'
;
;
#ifdef FileUpload.addr
#undef FileUpload.addr
#endif
#define FileUpload.addr ebp+12	; exposes function argument 'addr'
;
;
#ifdef FileUpload.port
#undef FileUpload.port
#endif
#define FileUpload.port ebp+16	; exposes function argument 'port'
;
align 16
_FileUpload@12:
;  *****
;  *****  FUNCTION  FileUpload ()  *****
;  *****
func23.minip2p:
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
A.63:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.63			;;; .....
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
	mov	ecx,17				;;; ..
	xor	eax,eax			;;; ...
A.64:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.64			;;; .....
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-60],eax			;;; i670
funcBody23.minip2p:
;
; [413] IF (WaitForSingleObject (#hsmFileUp,15000) == $$WAIT_TIMEOUT) THEN RETURN $$FALSE
	push	15000			;;; i656a
	push	[%#hsmFileUp.minip2p]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0031.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func23.minip2p			;;; i258
else.0031.minip2p:
end.if.0031.minip2p:
;
; [415] IFF p2pConnect (addr,port,@socket) THEN
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk23.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
#ifdef FileUpload.socket
#undef FileUpload.socket
#endif
#define FileUpload.socket ebp-48	; exposes local variable 'socket'
;
	push	[ebp-48]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	func8.minip2p			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+8]			;;; i877a
	mov	d[ebp-48],ecx			;;; i670
	add	esp,12			;;; i633
	test	eax,eax			;;; i194
	jnz	>> else.0032.minip2p			;;; i195
;
; [416] p2pCloseSocket (socket)
	push	[ebp-48]			;;; i674a
	call	funcA.minip2p			;;; i619
;
; [417] ReleaseSemaphore (#hsmFileUp,1,NULL)
#ifdef FileUpload.NULL
#undef FileUpload.NULL
#endif
#define FileUpload.NULL ebp-52	; exposes local variable 'NULL'
;
	push	[ebp-52]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmFileUp.minip2p]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [418] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func23.minip2p			;;; i258
;
; [419] END IF
else.0032.minip2p:
end.if.0032.minip2p:
;
; [421] '	file.auth = auth
;
; [422] file.ident = $$FILE_IDENT
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,addr @_string.1031.minip2p			;;; i663
	mov	edi,eax			;;; i9a
	mov	esi,ebx			;;; i10
	mov	ecx,3			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [423] file.fmode = $$FILE_GET
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,2			;;; i659
	mov	b[eax+537],bl			;;; i13b
;
; [424] '	file.srcfile = filename$
;
; [425] '	file.desfile = lfile$
;
; [426] '	file.start = start
;
; [427] '	file.end = end
;
; [428] file.error = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	b[eax+539],bl			;;; i13b
;
; [429] file.size = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+525],ebx			;;; i13b
;
; [430] '	file.flags = flags
;
; [431] '	file.blocks = #blocks
;
; [432] IFZ file.blocks THEN file.blocks = $$FILE_BUFFER
	mov	eax,d[ebp+8]			;;; i665
	mov	eax,d[eax+533]			;;; i313b
	test	eax,eax			;;; i194
	jnz	>> else.0033.minip2p			;;; i195
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,524288			;;; i657
	mov	d[eax+533],ebx			;;; i13b
else.0033.minip2p:
end.if.0033.minip2p:
;
; [434] IFT p2pSendBin(socket, &file, SIZE(TP2PFILE)) THEN
	mov	eax,d[ebp+8]			;;; i642
	mov	d[ebp-44],eax			;;; i670
	mov	eax,540			;;; i584
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	func5.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0034.minip2p			;;; i221
;
; [435] IFT FileSend(socket, file) THEN
	mov	eax,d[ebp+8]			;;; i665
; .composites = ebp-56	; internal variable
; .compositeArg.0 = ebp-60	; internal variable
	mov	edi,d[ebp-60]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	call	func12.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0035.minip2p			;;; i221
;
; [436] ret = $$TRUE
#ifdef FileUpload.ret
#undef FileUpload.ret
#endif
#define FileUpload.ret ebp-64	; exposes local variable 'ret'
;
	mov	eax,-1			;;; i659
	mov	d[ebp-64],eax			;;; i670
;
; [437] ELSE
	jmp	end.if.0035.minip2p			;;; i107
else.0035.minip2p:
;
; [438] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-64],eax			;;; i670
;
; [439] END IF
end.if.0035.minip2p:
;
; [440] ELSE
	jmp	end.if.0034.minip2p			;;; i107
else.0034.minip2p:
;
; [441] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-64],eax			;;; i670
;
; [442] END IF
end.if.0034.minip2p:
;
; [444] p2pCloseSocket (socket)
	push	[ebp-48]			;;; i674a
	call	funcA.minip2p			;;; i619
;
; [445] ReleaseSemaphore (#hsmFileUp,1,NULL)
	push	[ebp-52]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmFileUp.minip2p]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [446] RETURN ret
	mov	eax,d[ebp-64]			;;; i665
	jmp	end.func23.minip2p			;;; i258
;
; [447] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FileUpload.minip2p:  ;;; Function end label for Assembly Programmers.
end.func23.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  FileUpload ()  *****
;  *****
;
; [449] FUNCTION FileDownload (TP2PFILE file, STRING addr, port)
.code
;
#ifdef FileDownload.file
#undef FileDownload.file
#endif
#define FileDownload.file ebp+8	; exposes function argument 'file'
;
;
#ifdef FileDownload.addr
#undef FileDownload.addr
#endif
#define FileDownload.addr ebp+12	; exposes function argument 'addr'
;
;
#ifdef FileDownload.port
#undef FileDownload.port
#endif
#define FileDownload.port ebp+16	; exposes function argument 'port'
;
align 16
_FileDownload@12:
;  *****
;  *****  FUNCTION  FileDownload ()  *****
;  *****
func22.minip2p:
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
A.67:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.67			;;; .....
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
	mov	ecx,17				;;; ..
	xor	eax,eax			;;; ...
A.68:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.68			;;; .....
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-60],eax			;;; i670
funcBody22.minip2p:
;
; [452] IF (WaitForSingleObject (#hsmFileDn,30000) == $$WAIT_TIMEOUT) THEN RETURN $$FALSE
	push	30000			;;; i656a
	push	[%#hsmFileDn.minip2p]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0036.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func22.minip2p			;;; i258
else.0036.minip2p:
end.if.0036.minip2p:
;
; [454] IFF p2pConnect (addr,port,@socket) THEN
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk22.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
#ifdef FileDownload.socket
#undef FileDownload.socket
#endif
#define FileDownload.socket ebp-48	; exposes local variable 'socket'
;
	push	[ebp-48]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	func8.minip2p			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+8]			;;; i877a
	mov	d[ebp-48],ecx			;;; i670
	add	esp,12			;;; i633
	test	eax,eax			;;; i194
	jnz	>> else.0037.minip2p			;;; i195
;
; [455] p2pCloseSocket (socket)
	push	[ebp-48]			;;; i674a
	call	funcA.minip2p			;;; i619
;
; [456] ReleaseSemaphore (#hsmFileDn,1,NULL)
#ifdef FileDownload.NULL
#undef FileDownload.NULL
#endif
#define FileDownload.NULL ebp-52	; exposes local variable 'NULL'
;
	push	[ebp-52]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmFileDn.minip2p]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [457] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func22.minip2p			;;; i258
;
; [458] END IF
else.0037.minip2p:
end.if.0037.minip2p:
;
; [460] '	file.auth = auth
;
; [461] file.ident = $$FILE_IDENT
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,addr @_string.1031.minip2p			;;; i663
	mov	edi,eax			;;; i9a
	mov	esi,ebx			;;; i10
	mov	ecx,3			;;; i11
	call	%_assignCompositeStringlet.v			;;; i12
;
; [462] file.fmode = $$FILE_SEND
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,1			;;; i659
	mov	b[eax+537],bl			;;; i13b
;
; [463] '	file.srcfile = filename$
;
; [464] '	file.desfile = lfile$
;
; [465] '	file.start = start
;
; [466] '	file.end = end
;
; [467] file.error = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	b[eax+539],bl			;;; i13b
;
; [468] file.size = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+525],ebx			;;; i13b
;
; [469] '	file.flags = flags
;
; [470] '	file.blocks = #blocks
;
; [471] IFZ file.blocks THEN file.blocks = $$FILE_BUFFER
	mov	eax,d[ebp+8]			;;; i665
	mov	eax,d[eax+533]			;;; i313b
	test	eax,eax			;;; i194
	jnz	>> else.0038.minip2p			;;; i195
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,524288			;;; i657
	mov	d[eax+533],ebx			;;; i13b
else.0038.minip2p:
end.if.0038.minip2p:
;
; [473] IFT p2pSendBin(socket, &file, SIZE(TP2PFILE)) THEN
	mov	eax,d[ebp+8]			;;; i642
	mov	d[ebp-44],eax			;;; i670
	mov	eax,540			;;; i584
	push	eax			;;; i667a
	push	[ebp-44]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	func5.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0039.minip2p			;;; i221
;
; [474] IFT FileGet(socket,file) THEN
	mov	eax,d[ebp+8]			;;; i665
; .composites = ebp-56	; internal variable
; .compositeArg.0 = ebp-60	; internal variable
	mov	edi,d[ebp-60]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,540			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	push	[ebp-48]			;;; i674a
	call	func11.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.003A.minip2p			;;; i221
;
; [475] ret = $$TRUE
#ifdef FileDownload.ret
#undef FileDownload.ret
#endif
#define FileDownload.ret ebp-64	; exposes local variable 'ret'
;
	mov	eax,-1			;;; i659
	mov	d[ebp-64],eax			;;; i670
;
; [476] ELSE
	jmp	end.if.003A.minip2p			;;; i107
else.003A.minip2p:
;
; [477] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-64],eax			;;; i670
;
; [478] END IF
end.if.003A.minip2p:
;
; [479] ELSE
	jmp	end.if.0039.minip2p			;;; i107
else.0039.minip2p:
;
; [480] ret = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-64],eax			;;; i670
;
; [481] END IF
end.if.0039.minip2p:
;
; [483] p2pCloseSocket (socket)
	push	[ebp-48]			;;; i674a
	call	funcA.minip2p			;;; i619
;
; [484] ReleaseSemaphore (#hsmFileDn,1,NULL)
	push	[ebp-52]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmFileDn.minip2p]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [485] RETURN ret
	mov	eax,d[ebp-64]			;;; i665
	jmp	end.func22.minip2p			;;; i258
;
; [486] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FileDownload.minip2p:  ;;; Function end label for Assembly Programmers.
end.func22.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  FileDownload ()  *****
;  *****
;
; [488] FUNCTION GetAdler32 (pbuffer,tbytes)
.code
;
#ifdef GetAdler32.pbuffer
#undef GetAdler32.pbuffer
#endif
#define GetAdler32.pbuffer ebp+8	; exposes function argument 'pbuffer'
;
;
#ifdef GetAdler32.tbytes
#undef GetAdler32.tbytes
#endif
#define GetAdler32.tbytes ebp+12	; exposes function argument 'tbytes'
;
align 16
_GetAdler32@8:
;  *****
;  *****  FUNCTION  GetAdler32 ()  *****
;  *****
func1D.minip2p:
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
funcBody1D.minip2p:
;
; [490] IF !(tbytes && pbuffer) THEN RETURN 0
	mov	eax,d[ebp+12]			;;; i665
	mov	ebx,d[ebp+8]			;;; i665
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.003B.minip2p			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func1D.minip2p			;;; i258
else.003B.minip2p:
end.if.003B.minip2p:
;
; [491] adler = adler32(0, $$Z_NULL, 0)
#ifdef GetAdler32.adler
#undef GetAdler32.adler
#endif
#define GetAdler32.adler ebp-40	; exposes local variable 'adler'
;
;
; [0] EXTERNAL CFUNCTION adler32 (adler, lpbuffer, length)
	push	0			;;; i656a
	push	0			;;; i656a
	push	0			;;; i656a
	call	_adler32			;;; i619
	add	esp,12			;;; i633
	mov	d[ebp-40],eax			;;; i670
;
; [492] RETURN adler32(adler,pbuffer,tbytes)
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[ebp-40]			;;; i674a
	call	_adler32			;;; i619
	add	esp,12			;;; i633
	jmp	end.func1D.minip2p			;;; i258
;
; [493] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetAdler32.minip2p:  ;;; Function end label for Assembly Programmers.
end.func1D.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  GetAdler32 ()  *****
;  *****
;
; [495] FUNCTION write_file (hfile,ULONG buffer,nbytes)
.code
;
#ifdef write_file.hfile
#undef write_file.hfile
#endif
#define write_file.hfile ebp+8	; exposes function argument 'hfile'
;
;
#ifdef write_file.buffer
#undef write_file.buffer
#endif
#define write_file.buffer ebp+12	; exposes function argument 'buffer'
;
;
#ifdef write_file.nbytes
#undef write_file.nbytes
#endif
#define write_file.nbytes ebp+16	; exposes function argument 'nbytes'
;
align 16
_write_file.minip2p@12:
;  *****
;  *****  FUNCTION  write_file ()  *****
;  *****
funcC.minip2p:
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
funcBodyC.minip2p:
;
; [497] '_write (hfile, buffer, nbytes)
;
; [498] foffset = 0
#ifdef write_file.foffset
#undef write_file.foffset
#endif
#define write_file.foffset ebp-40	; exposes local variable 'foffset'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [499] fgetpos (hfile,&foffset)
;
; [0] EXTERNAL CFUNCTION  fgetpos (fpAddr, posAddr)					' stores the current position of the file fp in the object pointed to by pos
	lea	eax,[ebp-40]			;;; i642
	push	eax			;;; i667a
	push	[ebp+8]			;;; i674a
	call	_fgetpos			;;; i619
	add	esp,8			;;; i633
;
; [501] IF (fwrite (buffer, 1, nbytes, hfile) < nbytes) THEN
;
; [0] EXTERNAL CFUNCTION  fwrite (bufAddr, elsize, nelem, fpAddr)	' writes nelem elements of elsize bytes each to the file specified by fp
	push	[ebp+8]			;;; i674a
	push	[ebp+16]			;;; i674a
	push	1			;;; i656a
	push	[ebp+12]			;;; i674a
	call	_fwrite			;;; i619
	add	esp,16			;;; i633
	mov	ebx,d[ebp+16]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.003C.minip2p			;;; i219
;
; [502] RETURN -1
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	jmp	end.funcC.minip2p			;;; i258
;
; [503] ELSE
	jmp	end.if.003C.minip2p			;;; i107
else.003C.minip2p:
;
; [504] RETURN foffset
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.funcC.minip2p			;;; i258
;
; [505] END IF
end.if.003C.minip2p:
;
; [506] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.write_file.minip2p:  ;;; Function end label for Assembly Programmers.
end.funcC.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  write_file ()  *****
;  *****
;
; [508] FUNCTION open_file (lpfilename, flags)
.code
;
#ifdef open_file.lpfilename
#undef open_file.lpfilename
#endif
#define open_file.lpfilename ebp+8	; exposes function argument 'lpfilename'
;
;
#ifdef open_file.flags
#undef open_file.flags
#endif
#define open_file.flags ebp+12	; exposes function argument 'flags'
;
align 16
_open_file.minip2p@8:
;  *****
;  *****  FUNCTION  open_file ()  *****
;  *****
funcB.minip2p:
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
funcBodyB.minip2p:
;
; [511] IFZ lpfilename THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.003D.minip2p			;;; i195
	mov	eax,0			;;; i659
	jmp	end.funcB.minip2p			;;; i258
else.003D.minip2p:
end.if.003D.minip2p:
;
; [512] IFZ flags THEN
	mov	eax,d[ebp+12]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.003E.minip2p			;;; i195
;
; [513] type = &"rb"
#ifdef open_file.type
#undef open_file.type
#endif
#define open_file.type ebp-40	; exposes local variable 'type'
;
	mov	eax,addr @_string.00E7.minip2p			;;; i642
	mov	d[ebp-40],eax			;;; i670
;
; [514] ELSE
	jmp	end.if.003E.minip2p			;;; i107
else.003E.minip2p:
;
; [515] type = flags
	mov	eax,d[ebp+12]			;;; i665
	mov	d[ebp-40],eax			;;; i670
;
; [516] END IF
end.if.003E.minip2p:
;
; [518] hfile = fopen (lpfilename, type)
#ifdef open_file.hfile
#undef open_file.hfile
#endif
#define open_file.hfile ebp-44	; exposes local variable 'hfile'
;
;
; [0] EXTERNAL CFUNCTION  fopen (filenameAddr, modeAddr)		' open a file whose name is the string pointed to by filename.
	push	[ebp-40]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_fopen			;;; i619
	add	esp,8			;;; i633
	mov	d[ebp-44],eax			;;; i670
;
; [519] IFZ hfile THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.003F.minip2p			;;; i195
;
; [520] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.funcB.minip2p			;;; i258
;
; [521] ELSE
	jmp	end.if.003F.minip2p			;;; i107
else.003F.minip2p:
;
; [522] RETURN hfile
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.funcB.minip2p			;;; i258
;
; [523] END IF
end.if.003F.minip2p:
;
; [525] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.open_file.minip2p:  ;;; Function end label for Assembly Programmers.
end.funcB.minip2p:
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
; [527] FUNCTION close_file (file)
.code
;
#ifdef close_file.file
#undef close_file.file
#endif
#define close_file.file ebp+8	; exposes function argument 'file'
;
align 16
_close_file.minip2p@4:
;  *****
;  *****  FUNCTION  close_file ()  *****
;  *****
funcD.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBodyD.minip2p:
;
; [529] IF file THEN
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0040.minip2p			;;; i221
;
; [530] fclose (file)
;
; [0] EXTERNAL CFUNCTION  fclose (fpAddr)										' close the file fp
	push	[ebp+8]			;;; i674a
	call	_fclose			;;; i619
	add	esp,4			;;; i633
;
; [531] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.funcD.minip2p			;;; i258
;
; [532] ELSE
	jmp	end.if.0040.minip2p			;;; i107
else.0040.minip2p:
;
; [533] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.funcD.minip2p			;;; i258
;
; [534] END IF
end.if.0040.minip2p:
;
; [536] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.close_file.minip2p:  ;;; Function end label for Assembly Programmers.
end.funcD.minip2p:
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
; [538] FUNCTION STRING GetLocalIpA ()
.code
align 16
_GetLocalIpA.minip2p@0:
;  *****
;  *****  FUNCTION  GetLocalIpA ()  *****
;  *****
func16.minip2p:
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
funcBody16.minip2p:
;
; [539] STATIC STRING name,ip
data section 'globals$statics'
align	4
%16%name.minip2p:	db 4 dup ?
.code
data section 'globals$statics'
align	4
%16%ip.minip2p:	db 4 dup ?
.code
;
; [541] name = NULL$(256)
	sub	esp,64			;;; i487
	mov	d[esp],256
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	mov	ebx,addr %16%name.minip2p			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [542] gethostname (&name,255)
;
; [0] EXTERNAL SFUNCTION  					gethostname      (addrSTRING, length)
	mov	eax,d[%16%name.minip2p]			;;; i642
; .xstk16.0000 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
	push	255			;;; i656a
	push	[ebp-44]			;;; i674a
	call	_gethostname@8			;;; i619
;
; [544] GetIPAddr (CSTRING$(&name), @ip)
	sub	esp,64			;;; i487
	mov	eax,d[%16%name.minip2p]			;;; i642
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	mov	[ebp-44],eax			;;; i670
	push	[%16%ip.minip2p]			;;; i672a
	push	[ebp-44]			;;; i674a
	call	func17.minip2p			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[%16%ip.minip2p],ecx			;;; i668
	add	esp,8			;;; i633
;
; [545] RETURN ip
	mov	eax,[%16%ip.minip2p]			;;; i663a
	call	%_clone.a0			;;; i870
	jmp	end.func16.minip2p			;;; i258
;
; [546] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetLocalIpA.minip2p:  ;;; Function end label for Assembly Programmers.
end.func16.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  GetLocalIpA ()  *****
;  *****
;
; [548] FUNCTION GetIPAddr (IPName$, numIPAddr$)
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
_GetIPAddr.minip2p@8:
;  *****
;  *****  FUNCTION  GetIPAddr ()  *****
;  *****
func17.minip2p:
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
A.86:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.86			;;; .....
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
A.87:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.87			;;; .....
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
funcBody17.minip2p:
;
; [549] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef GetIPAddr.wsadata
#undef GetIPAddr.wsadata
#endif
#define GetIPAddr.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [550] HOSTENT	host
#ifdef GetIPAddr.host
#undef GetIPAddr.host
#endif
#define GetIPAddr.host ebp-48	; exposes local variable 'host'
;
;
; [553] IF (LEN(IPName$) < 1) THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.83			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.83:
	cmp	eax,1			;;; i684a
	jge	>> else.0041.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func17.minip2p			;;; i258
else.0041.minip2p:
end.if.0041.minip2p:
;
; [555] host = gethostbyname (&IPName$)
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
; [556] IF (host.h_addr_list != 0) THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
	cmp	eax,0			;;; i684a
	je	>> else.0042.minip2p			;;; i219
;
; [557] addr = 0
#ifdef GetIPAddr.addr
#undef GetIPAddr.addr
#endif
#define GetIPAddr.addr ebp-56	; exposes local variable 'addr'
;
	mov	eax,0			;;; i659
	mov	d[ebp-56],eax			;;; i670
;
; [558] addr2 = 0
#ifdef GetIPAddr.addr2
#undef GetIPAddr.addr2
#endif
#define GetIPAddr.addr2 ebp-60	; exposes local variable 'addr2'
;
	mov	eax,0			;;; i659
	mov	d[ebp-60],eax			;;; i670
;
; [559] RtlMoveMemory(&addr, host.h_addr_list, 4)
;
; [0] EXTERNAL FUNCTION RtlMoveMemory (pDestination, pSource, cbLength)
	lea	eax,[ebp-56]			;;; i642
; .xstk17.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax+12]			;;; i313b
; .xstk17.0001 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
	push	4			;;; i656a
	push	[ebp-76]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [560] RtlMoveMemory(&addr2, addr, 4)
	lea	eax,[ebp-60]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	push	4			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [561] addr = inet_ntoa(addr2)
	push	[ebp-60]			;;; i674a
	call	_inet_ntoa@4			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [562] '		length = strlen (addr2)
;
; [563] numIPAddr$ = NULL$ (256)
	sub	esp,64			;;; i487
	mov	d[esp],256
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [564] RtlMoveMemory (&numIPAddr$, addr, 255)
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	push	255			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [565] numIPAddr$ = CSTRING$ (&numIPAddr$)
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i642
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [566] END IF
else.0042.minip2p:
end.if.0042.minip2p:
;
; [568] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func17.minip2p			;;; i258
;
; [569] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetIPAddr.minip2p:  ;;; Function end label for Assembly Programmers.
end.func17.minip2p:
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
; [571] FUNCTION GetIPName (numIPAddr$, IPName$)
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
_GetIPName.minip2p@8:
;  *****
;  *****  FUNCTION  GetIPName ()  *****
;  *****
func18.minip2p:
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
A.91:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.91			;;; .....
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
A.92:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.92			;;; .....
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
funcBody18.minip2p:
;
; [572] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef GetIPName.wsadata
#undef GetIPName.wsadata
#endif
#define GetIPName.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [573] HOSTENT	host
#ifdef GetIPName.host
#undef GetIPName.host
#endif
#define GetIPName.host ebp-48	; exposes local variable 'host'
;
;
; [576] IF (LEN(numIPAddr$) < 3) THEN RETURN $$FALSE
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.88			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.88:
	cmp	eax,3			;;; i684a
	jge	>> else.0043.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func18.minip2p			;;; i258
else.0043.minip2p:
end.if.0043.minip2p:
;
; [577] addr = inet_addr (&numIPAddr$)
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
; [578] host = gethostbyaddr (&addr, 4, $$AF_INET)
;
; [0] EXTERNAL SFUNCTION  HOSTENT   gethostbyaddr    (addrSTRING, length, type)
; .compositeReturnAddr.0 = ebp-56	; internal variable
	lea	eax,[ebp-52]			;;; i642
; .xstk18.0000 = ebp-64	; internal variable
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
; [579] IF host.h_name != 0 THEN
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax]			;;; i313b
	cmp	eax,0			;;; i684a
	je	>> else.0044.minip2p			;;; i219
;
; [580] IPName$ = NULL$ (256)
	sub	esp,64			;;; i487
	mov	d[esp],256
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [581] RtlMoveMemory (&IPName$, host.h_name, 255)
	mov	eax,d[ebp+12]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	mov	eax,d[eax]			;;; i313b
; .xstk18.0001 = ebp-72	; internal variable
	mov	d[ebp-72],eax			;;; i670
	push	255			;;; i656a
	push	[ebp-72]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_RtlMoveMemory@12			;;; i619
;
; [582] IPName$ = CSTRING$ (&IPName$)
	sub	esp,64			;;; i487
	mov	eax,d[ebp+12]			;;; i642
	mov	d[esp],eax			;;; i887
	call	%_cstring.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [583] END IF
else.0044.minip2p:
end.if.0044.minip2p:
;
; [585] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func18.minip2p			;;; i258
;
; [586] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetIPName.minip2p:  ;;; Function end label for Assembly Programmers.
end.func18.minip2p:
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
; [588] FUNCTION p2pBind (socket,ipaddress$,port)
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
_p2pBind.minip2p@12:
;  *****
;  *****  FUNCTION  p2pBind ()  *****
;  *****
func7.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func7.minip2p
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.96:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.96			;;; .....
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
funcBody7.minip2p:
;
; [589] SOCKADDR_IN udtSocket
; .composites = ebp-40	; internal variable
#ifdef p2pBind.udtSocket
#undef p2pBind.udtSocket
#endif
#define p2pBind.udtSocket ebp-44	; exposes local variable 'udtSocket'
;
;
; [591] 'PRINT "p2pBind: ", socket,,ipaddress$,,port
;
; [593] IFZ ipaddress$ THEN RETURN $$FALSE
	mov	eax,[ebp+12]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.93			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0045.minip2p			;;; i192
A.93:
	mov	eax,0			;;; i659
	jmp	end.func7.minip2p			;;; i258
else.0045.minip2p:
end.if.0045.minip2p:
;
; [595] udtSocket.sin_family = $$AF_INET
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2			;;; i659
	mov	w[eax],bx			;;; i13b
;
; [596] udtSocket.sin_port = htons (port)
;
; [0] EXTERNAL SFUNCTION  htons            (hostshort)
	push	[ebp+16]			;;; i674a
	call	_htons@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	w[ebx+2],ax			;;; i13b
;
; [597] udtSocket.sin_addr = inet_addr (&ipaddress$)
	mov	eax,d[ebp+12]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [599] IF (udtSocket.sin_addr == $$INADDR_NONE) THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	cmp	eax,-1			;;; i684a
	jne	>> else.0046.minip2p			;;; i219
;
; [600] GetIPAddr (ipaddress$, @numIPAddr$)
	mov	eax,d[ebp+12]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk7.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
#ifdef p2pBind.numIPAddr$
#undef p2pBind.numIPAddr$
#endif
#define p2pBind.numIPAddr$ ebp-56	; exposes local variable 'numIPAddr$'
;
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	func17.minip2p			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-56],ecx			;;; i670
	add	esp,8			;;; i633
;
; [601] udtSocket.sin_addr = inet_addr (&numIPAddr$)
	mov	eax,d[ebp-56]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [602] END IF
else.0046.minip2p:
end.if.0046.minip2p:
;
; [603] IF (bind (socket, &udtSocket, SIZE (udtSocket)) == $$SOCKET_ERROR) THEN
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
	jne	>> else.0047.minip2p			;;; i219
;
; [604] 'CPrint ("p2pBind: wsa error: "+ STRING$(WSAGetLastError ()))
;
; [605] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func7.minip2p			;;; i258
;
; [606] ELSE
	jmp	end.if.0047.minip2p			;;; i107
else.0047.minip2p:
;
; [607] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func7.minip2p			;;; i258
;
; [608] END IF
end.if.0047.minip2p:
;
; [610] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pBind.minip2p:  ;;; Function end label for Assembly Programmers.
end.func7.minip2p:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func7.minip2p
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func7.minip2p:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  p2pBind ()  *****
;  *****
;
; [612] FUNCTION p2pCreateBindSocket (addy$,port,socket)
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
_p2pCreateBindSocket.minip2p@12:
;  *****
;  *****  FUNCTION  p2pCreateBindSocket ()  *****
;  *****
func9.minip2p:
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
funcBody9.minip2p:
;
; [613] 'SHARED EXITSTATUS
;
; [615] 'PRINT "p2pCreateBindSocket: ", addy$,,port,,socket
;
; [617] IFZ addy$ THEN RETURN $$FALSE
	mov	eax,[ebp+8]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.98			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0048.minip2p			;;; i192
A.98:
	mov	eax,0			;;; i659
	jmp	end.func9.minip2p			;;; i258
else.0048.minip2p:
end.if.0048.minip2p:
;
; [618] socket = socket ($$AF_INET, $$SOCK_STREAM, 0)
;
; [0] EXTERNAL SFUNCTION  socket           (domain, type, protocol)
	push	0			;;; i656a
	push	1			;;; i656a
	push	2			;;; i656a
	call	_socket@12			;;; i619
	mov	d[ebp+16],eax			;;; i670
;
; [619] IF (socket == $$SOCKET_ERROR) THEN RETURN $$FALSE
	mov	eax,d[ebp+16]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.0049.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func9.minip2p			;;; i258
else.0049.minip2p:
end.if.0049.minip2p:
;
; [621] ret = $$FALSE
#ifdef p2pCreateBindSocket.ret
#undef p2pCreateBindSocket.ret
#endif
#define p2pCreateBindSocket.ret ebp-40	; exposes local variable 'ret'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [622] ct = 0
#ifdef p2pCreateBindSocket.ct
#undef p2pCreateBindSocket.ct
#endif
#define p2pCreateBindSocket.ct ebp-44	; exposes local variable 'ct'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
;
; [623] DO
align 8
do.004A.minip2p:
;
; [624] ret = p2pBind (socket,addy$,port)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk9.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	push	[ebp+12]			;;; i674a
	push	[ebp-52]			;;; i674a
	push	[ebp+16]			;;; i674a
	call	func7.minip2p			;;; i619
	sub	esp,12			;;; xnt1i
	mov	esi,d[esp+4]			;;; i871
	call	%____free			;;; i872
	add	esp,12			;;; i633
	mov	d[ebp-40],eax			;;; i670
;
; [625] IFF ret THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.004B.minip2p			;;; i195
;
; [626] Sleep(10)
	push	10			;;; i656a
	call	_Sleep@4			;;; i619
;
; [627] INC ct
	inc	d[ebp-44]			;;; i84
;
; [628] IF ct == 10 THEN RETURN $$FALSE
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,10			;;; i684a
	jne	>> else.004C.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func9.minip2p			;;; i258
else.004C.minip2p:
end.if.004C.minip2p:
;
; [629] END IF
else.004B.minip2p:
end.if.004B.minip2p:
;
; [630] LOOP WHILE (ret == $$FALSE)'&& (EXITSTATUS == $$FALSE))
do.loop.004A.minip2p:
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,0			;;; i684a
	je	< do.004A.minip2p			;;; i193
end.do.004A.minip2p:
;
; [632] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func9.minip2p			;;; i258
;
; [633] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pCreateBindSocket.minip2p:  ;;; Function end label for Assembly Programmers.
end.func9.minip2p:
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
; [635] FUNCTION p2pConnect (ipaddress$,port,socket)
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
_p2pConnect.minip2p@12:
;  *****
;  *****  FUNCTION  p2pConnect ()  *****
;  *****
func8.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func8.minip2p
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.104:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.104			;;; .....
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
funcBody8.minip2p:
;
; [636] SOCKADDR_IN udtSocket
; .composites = ebp-40	; internal variable
#ifdef p2pConnect.udtSocket
#undef p2pConnect.udtSocket
#endif
#define p2pConnect.udtSocket ebp-44	; exposes local variable 'udtSocket'
;
;
; [639] udtSocket.sin_family = $$AF_INET
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,2			;;; i659
	mov	w[eax],bx			;;; i13b
;
; [640] udtSocket.sin_port = htons (port)
	push	[ebp+12]			;;; i674a
	call	_htons@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	w[ebx+2],ax			;;; i13b
;
; [641] udtSocket.sin_addr = inet_addr (&ipaddress$)
	mov	eax,d[ebp+8]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [643] IF udtSocket.sin_addr = $$INADDR_NONE THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+4]			;;; i313b
	cmp	eax,-1			;;; i684a
	jne	>> else.004D.minip2p			;;; i219
;
; [644] GetIPAddr (ipaddress$, @numIPAddr$)
	mov	eax,d[ebp+8]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk8.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
#ifdef p2pConnect.numIPAddr$
#undef p2pConnect.numIPAddr$
#endif
#define p2pConnect.numIPAddr$ ebp-56	; exposes local variable 'numIPAddr$'
;
	push	[ebp-56]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	func17.minip2p			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[ebp-56],ecx			;;; i670
	add	esp,8			;;; i633
;
; [645] udtSocket.sin_addr = inet_addr (&numIPAddr$)
	mov	eax,d[ebp-56]			;;; i642
	push	eax			;;; i667a
	call	_inet_addr@4			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [646] END IF
else.004D.minip2p:
end.if.004D.minip2p:
;
; [648] socket = socket (udtSocket.sin_family, $$SOCK_STREAM, 0)
	mov	eax,d[ebp-44]			;;; i665
	movsx	eax,w[eax]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
	push	0			;;; i656a
	push	1			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_socket@12			;;; i619
	mov	d[ebp+16],eax			;;; i670
;
; [649] IF (connect (socket, &udtSocket, SIZE(udtSocket)) == $$SOCKET_ERROR) THEN
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
	jne	>> else.004E.minip2p			;;; i219
;
; [650] 'CPrint ("* wsa error "+ STRING$(WSAGetLastError ()))
;
; [651] IF socket THEN p2pCloseSocket (socket)
	mov	eax,d[ebp+16]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.004F.minip2p			;;; i221
	push	[ebp+16]			;;; i674a
	call	funcA.minip2p			;;; i619
else.004F.minip2p:
end.if.004F.minip2p:
;
; [652] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func8.minip2p			;;; i258
;
; [653] ELSE
	jmp	end.if.004E.minip2p			;;; i107
else.004E.minip2p:
;
; [654] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func8.minip2p			;;; i258
;
; [655] END IF
end.if.004E.minip2p:
;
; [657] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pConnect.minip2p:  ;;; Function end label for Assembly Programmers.
end.func8.minip2p:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func8.minip2p
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
free.func8.minip2p:
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  p2pConnect ()  *****
;  *****
;
; [659] FUNCTION p2pSendBin (socket,pbuffer,size)
.code
;
#ifdef p2pSendBin.socket
#undef p2pSendBin.socket
#endif
#define p2pSendBin.socket ebp+8	; exposes function argument 'socket'
;
;
#ifdef p2pSendBin.pbuffer
#undef p2pSendBin.pbuffer
#endif
#define p2pSendBin.pbuffer ebp+12	; exposes function argument 'pbuffer'
;
;
#ifdef p2pSendBin.size
#undef p2pSendBin.size
#endif
#define p2pSendBin.size ebp+16	; exposes function argument 'size'
;
align 16
_p2pSendBin.minip2p@12:
;  *****
;  *****  FUNCTION  p2pSendBin ()  *****
;  *****
func5.minip2p:
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
A.110:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.110			;;; .....
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
funcBody5.minip2p:
;
; [660] 'SHARED EXITSTATUS
;
; [662] IF !pbuffer || !size THEN RETURN $$FALSE
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
	jz	>> else.0050.minip2p			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func5.minip2p			;;; i258
else.0050.minip2p:
end.if.0050.minip2p:
;
; [663] total = 0
#ifdef p2pSendBin.total
#undef p2pSendBin.total
#endif
#define p2pSendBin.total ebp-40	; exposes local variable 'total'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
;
; [664] sent = 0
#ifdef p2pSendBin.sent
#undef p2pSendBin.sent
#endif
#define p2pSendBin.sent ebp-44	; exposes local variable 'sent'
;
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
;
; [665] tsize = size
#ifdef p2pSendBin.tsize
#undef p2pSendBin.tsize
#endif
#define p2pSendBin.tsize ebp-48	; exposes local variable 'tsize'
;
	mov	eax,d[ebp+16]			;;; i665
	mov	d[ebp-48],eax			;;; i670
;
; [666] buffer = pbuffer
#ifdef p2pSendBin.buffer
#undef p2pSendBin.buffer
#endif
#define p2pSendBin.buffer ebp-52	; exposes local variable 'buffer'
;
	mov	eax,d[ebp+12]			;;; i665
	mov	d[ebp-52],eax			;;; i670
;
; [667] DO
align 8
do.0051.minip2p:
;
; [668] sent = send (socket, buffer+total, size, 0)
;
; [0] EXTERNAL SFUNCTION  send             (socket, addrMessage, length, flags)
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-40]			;;; i665
	add	eax,ebx			;;; i775
; .xstk5.0000 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	push	0			;;; i656a
	push	[ebp+16]			;;; i674a
	push	[ebp-60]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	_send@16			;;; i619
	mov	d[ebp-44],eax			;;; i670
;
; [669] IF (sent == $$SOCKET_ERROR || (sent == 0)) THEN RETURN $$FALSE
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,-1			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.106			;;; i467
	not	eax			;;; i468
A.106:
;+peep
	mov	ebx,d[ebp-44]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jne	> A.107			;;; i467
	not	ebx			;;; i468
A.107:
;+peep
	or	eax,ebx			;;; i732
	neg	eax			;;; i736
	rcr	eax,1			;;; i737
	sar	eax,31			;;; i738
	test	eax,eax			;;; i220
	jz	>> else.0052.minip2p			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func5.minip2p			;;; i258
else.0052.minip2p:
end.if.0052.minip2p:
;
; [670] total = total + sent
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-40],eax			;;; i670
;
; [671] size = size - sent
	mov	eax,d[ebp+16]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp+16],eax			;;; i670
;
; [672] LOOP WHILE (total < tsize)' && (EXITSTATUS == $$FALSE)
do.loop.0051.minip2p:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jl	< do.0051.minip2p			;;; i193
end.do.0051.minip2p:
;
; [674] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func5.minip2p			;;; i258
;
; [675] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pSendBin.minip2p:  ;;; Function end label for Assembly Programmers.
end.func5.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  p2pSendBin ()  *****
;  *****
;
; [677] FUNCTION p2pListenBin (socket,size,lpbuffer)
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
_p2pListenBin.minip2p@12:
;  *****
;  *****  FUNCTION  p2pListenBin ()  *****
;  *****
func4.minip2p:
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
funcBody4.minip2p:
;
; [678] 'SHARED EXITSTATUS
;
; [679] ULONG total
#ifdef p2pListenBin.total
#undef p2pListenBin.total
#endif
#define p2pListenBin.total ebp-40	; exposes local variable 'total'
;
;
; [682] IF !lpbuffer || !size THEN RETURN $$FALSE
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
	jz	>> else.0053.minip2p			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func4.minip2p			;;; i258
else.0053.minip2p:
end.if.0053.minip2p:
;
; [683] total = size
	mov	eax,d[ebp+12]			;;; i665
	mov	d[ebp-40],eax			;;; i670
;
; [685] DO
align 8
do.0054.minip2p:
;
; [686] bytesRecv = recv (socket, lpbuffer, total, 0)
#ifdef p2pListenBin.bytesRecv
#undef p2pListenBin.bytesRecv
#endif
#define p2pListenBin.bytesRecv ebp-44	; exposes local variable 'bytesRecv'
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
; [687] IF (bytesRecv == $$SOCKET_ERROR) THEN RETURN $$FALSE
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,-1			;;; i684a
	jne	>> else.0055.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func4.minip2p			;;; i258
else.0055.minip2p:
end.if.0055.minip2p:
;
; [688] IF (bytesRecv == 0) THEN RETURN $$FALSE
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,0			;;; i684a
	jne	>> else.0056.minip2p			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func4.minip2p			;;; i258
else.0056.minip2p:
end.if.0056.minip2p:
;
; [690] total = total - bytesRecv
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp-40],eax			;;; i670
;
; [691] lpbuffer = lpbuffer + bytesRecv
	mov	eax,d[ebp+16]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp+16],eax			;;; i670
;
; [692] LOOP WHILE (total > 0)'&& (EXITSTATUS == $$FALSE)
do.loop.0054.minip2p:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,0			;;; i659
	or	ebx,ebx			;;; i366
	jns	> A.111			;;; i367
	call	%_eeeOverflow			;;; i368
A.111:
	cmp	eax,ebx			;;; i684a
	ja	< do.0054.minip2p			;;; i193
end.do.0054.minip2p:
;
; [693] size = total
	mov	eax,d[ebp-40]			;;; i665
	mov	d[ebp+12],eax			;;; i670
;
; [695] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func4.minip2p			;;; i258
;
; [696] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.p2pListenBin.minip2p:  ;;; Function end label for Assembly Programmers.
end.func4.minip2p:
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
; [698] FUNCTION CPrint (message$)
.code
;
#ifdef CPrint.message$
#undef CPrint.message$
#endif
#define CPrint.message$ ebp+8	; exposes function argument 'message$'
;
align 16
_CPrint.minip2p@4:
;  *****
;  *****  FUNCTION  CPrint ()  *****
;  *****
func10.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody10.minip2p:
;
; [700] 'PRINT message$
;
; [701] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.CPrint.minip2p:  ;;; Function end label for Assembly Programmers.
end.func10.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  CPrint ()  *****
;  *****
;
; [703] FUNCTION decrypt_buffer (sbuffer, ssize,STRING password, STRING key)
.code
;
#ifdef decrypt_buffer.sbuffer
#undef decrypt_buffer.sbuffer
#endif
#define decrypt_buffer.sbuffer ebp+8	; exposes function argument 'sbuffer'
;
;
#ifdef decrypt_buffer.ssize
#undef decrypt_buffer.ssize
#endif
#define decrypt_buffer.ssize ebp+12	; exposes function argument 'ssize'
;
;
#ifdef decrypt_buffer.password
#undef decrypt_buffer.password
#endif
#define decrypt_buffer.password ebp+16	; exposes function argument 'password'
;
;
#ifdef decrypt_buffer.key
#undef decrypt_buffer.key
#endif
#define decrypt_buffer.key ebp+20	; exposes function argument 'key'
;
align 16
_decrypt_buffer@16:
;  *****
;  *****  FUNCTION  decrypt_buffer ()  *****
;  *****
func1C.minip2p:
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
A.124:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.124			;;; .....
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
funcBody1C.minip2p:
;
; [704] FUNCADDR Decrypt (HCRYPTKEY, HCRYPTHASH, XLONG, ULONG, XLONG, XLONG)
#ifdef decrypt_buffer.Decrypt
#undef decrypt_buffer.Decrypt
#endif
#define decrypt_buffer.Decrypt ebp-40	; exposes local variable 'Decrypt'
;
;
; [705] HCRYPTKEY hKey
#ifdef decrypt_buffer.hKey
#undef decrypt_buffer.hKey
#endif
#define decrypt_buffer.hKey ebp-44	; exposes local variable 'hKey'
;
;
; [706] HCRYPTHASH hHash
#ifdef decrypt_buffer.hHash
#undef decrypt_buffer.hHash
#endif
#define decrypt_buffer.hHash ebp-48	; exposes local variable 'hHash'
;
;
; [707] HCRYPTPROV hProv
#ifdef decrypt_buffer.hProv
#undef decrypt_buffer.hProv
#endif
#define decrypt_buffer.hProv ebp-52	; exposes local variable 'hProv'
;
;
; [710] $KEYLENGTH = 0x00800000
;
; [711] $ENCRYPT_ALGORITHM = $$CALG_RC4' stream encryption cipher, block size is 1 byte
;
; [713] 'load advapi32.dll library
;
; [714] hAdvapi = LoadLibraryA (&"advapi32.dll")
#ifdef decrypt_buffer.hAdvapi
#undef decrypt_buffer.hAdvapi
#endif
#define decrypt_buffer.hAdvapi ebp-56	; exposes local variable 'hAdvapi'
;
;
; [0] EXTERNAL FUNCTION LoadLibraryA (lpLibFileName)
	mov	eax,addr @_string.012A.minip2p			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [715] IFZ hAdvapi THEN
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0057.minip2p			;;; i195
;
; [716] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [717] END IF
else.0057.minip2p:
end.if.0057.minip2p:
;
; [719] 'get function address for CryptDecrypt
;
; [720] Decrypt = GetProcAddress (hAdvapi, &"CryptDecrypt")
;
; [0] EXTERNAL FUNCTION GetProcAddress (hModule, lpProcName)
	mov	eax,addr @_string.012B.minip2p			;;; i642
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [721] IFZ Decrypt THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0058.minip2p			;;; i195
;
; [722] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [723] END IF
else.0058.minip2p:
end.if.0058.minip2p:
;
; [725] ' Get the handle to the default provider
;
; [726] IF (!CryptAcquireContextA (&hProv, NULL, &$$MS_ENHANCED_PROV, $$PROV_RSA_FULL, 0)) THEN
;
; [0] EXTERNAL CFUNCTION CryptAcquireContextA (lphProv, lpszContainer, lpszProvider, dwProvType, dwFlags)
	lea	eax,[ebp-52]			;;; i642
; .xstk1C.0000 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
#ifdef decrypt_buffer.NULL
#undef decrypt_buffer.NULL
#endif
#define decrypt_buffer.NULL ebp-68	; exposes local variable 'NULL'
;
	mov	eax,addr @_string.0E08.minip2p			;;; i642
; .xstk1C.0001 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
	push	0			;;; i656a
	push	1			;;; i656a
	push	[ebp-76]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_CryptAcquireContextA			;;; i619
	add	esp,20			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0059.minip2p			;;; i221
;
; [727] IF (GetLastError () == $$NTE_BAD_KEYSET) THEN
;
; [0] EXTERNAL FUNCTION GetLastError ()
	call	_GetLastError@0			;;; i619
	cmp	eax,-2146893802			;;; i684a
	jne	>> else.005A.minip2p			;;; i219
;
; [728] IF (!CryptAcquireContextA (&hProv, NULL, &$$MS_ENHANCED_PROV, $$PROV_RSA_FULL, $$CRYPT_NEWKEYSET)) THEN
	lea	eax,[ebp-52]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,addr @_string.0E08.minip2p			;;; i642
	mov	d[ebp-76],eax			;;; i670
	push	8			;;; i656a
	push	1			;;; i656a
	push	[ebp-76]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-64]			;;; i674a
	call	_CryptAcquireContextA			;;; i619
	add	esp,20			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.005B.minip2p			;;; i221
;
; [729] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [730] END IF
else.005B.minip2p:
end.if.005B.minip2p:
;
; [731] ELSE
	jmp	end.if.005A.minip2p			;;; i107
else.005A.minip2p:
;
; [732] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [733] END IF
end.if.005A.minip2p:
;
; [734] END IF
else.0059.minip2p:
end.if.0059.minip2p:
;
; [736] 'Check for the existence of a password.
;
; [737] IFZ password THEN
	mov	eax,[ebp+16]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.117			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.005C.minip2p			;;; i192
A.117:
;
; [738] IFZ key THEN
	mov	eax,[ebp+20]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.118			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.005D.minip2p			;;; i192
A.118:
;
; [739] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [740] END IF
else.005D.minip2p:
end.if.005D.minip2p:
;
; [742] ' Decrypt the file with the saved session key.
;
; [743] dwKeyBlobLen = SIZE(key)
#ifdef decrypt_buffer.dwKeyBlobLen
#undef decrypt_buffer.dwKeyBlobLen
#endif
#define decrypt_buffer.dwKeyBlobLen ebp-80	; exposes local variable 'dwKeyBlobLen'
;
	mov	eax,d[ebp+20]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.119			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.119:
	mov	d[ebp-80],eax			;;; i670
;
; [744] IF (!dwKeyBlobLen) THEN
	mov	eax,d[ebp-80]			;;; i665
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.005E.minip2p			;;; i221
;
; [745] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [746] END IF
else.005E.minip2p:
end.if.005E.minip2p:
;
; [748] ' Import key BLOB into CSP.
;
; [749] IF (!CryptImportKey (hProv, &key, dwKeyBlobLen, 0, 0, &hKey)) THEN
;
; [0] EXTERNAL CFUNCTION CryptImportKey (HCRYPTPROV hProv, lpbData, dwDataLen, hImpKey, dwFlags, lphKey)
	mov	eax,d[ebp+20]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	lea	eax,[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	_CryptImportKey			;;; i619
	add	esp,24			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.005F.minip2p			;;; i221
;
; [750] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [751] END IF
else.005F.minip2p:
end.if.005F.minip2p:
;
; [753] ELSE
	jmp	end.if.005C.minip2p			;;; i107
else.005C.minip2p:
;
; [755] ' Decrypt the file with a session key derived from a password.
;
; [756] ' Create a hash object.
;
; [757] IF (!CryptCreateHash (hProv, $$CALG_MD5, 0, 0, &hHash)) THEN
;
; [0] EXTERNAL CFUNCTION CryptCreateHash (HCRYPTPROV hProv, Algid, HCRYPTKEY hKey, dwFlags, lphHash)
	lea	eax,[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	push	32771			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_CryptCreateHash			;;; i619
	add	esp,20			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0060.minip2p			;;; i221
;
; [758] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [759] END IF
else.0060.minip2p:
end.if.0060.minip2p:
;
; [761] ' Hash in the password data.
;
; [762] IF (!CryptHashData (hHash, &password, LEN (password), 0)) THEN
;
; [0] EXTERNAL CFUNCTION CryptHashData (HCRYPTHASH hHash, lpbData, dwDataLen, dwFlags)
	mov	eax,d[ebp+16]			;;; i642
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp+16]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.120			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.120:
	mov	d[ebp-76],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-76]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[ebp-48]			;;; i674a
	call	_CryptHashData			;;; i619
	add	esp,16			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0061.minip2p			;;; i221
;
; [763] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [764] END IF
else.0061.minip2p:
end.if.0061.minip2p:
;
; [766] ' Derive a session key from the hash object.
;
; [767] IF (!CryptDeriveKey (hProv, $ENCRYPT_ALGORITHM, hHash, $KEYLENGTH, &hKey)) THEN
;
; [0] EXTERNAL CFUNCTION CryptDeriveKey (HCRYPTPROV hProv, Algid, hBaseData, dwFlags, lphKey)
	lea	eax,[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	8388608			;;; i656a
	push	[ebp-48]			;;; i674a
	push	26625			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_CryptDeriveKey			;;; i619
	add	esp,20			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0062.minip2p			;;; i221
;
; [768] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [769] END IF
else.0062.minip2p:
end.if.0062.minip2p:
;
; [771] ' Destroy the hash object.
;
; [772] IF (!CryptDestroyHash (hHash)) THEN
;
; [0] EXTERNAL CFUNCTION CryptDestroyHash (HCRYPTHASH hHash)
	push	[ebp-48]			;;; i674a
	call	_CryptDestroyHash			;;; i619
	add	esp,4			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0063.minip2p			;;; i221
;
; [773] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [774] END IF
else.0063.minip2p:
end.if.0063.minip2p:
;
; [776] END IF
end.if.005C.minip2p:
;
; [778] ' The decryption key is now available
;
; [779] ' for stream ciphers, buffer size can be equal to the block length
;
; [780] dwBlockLen = 8192
#ifdef decrypt_buffer.dwBlockLen
#undef decrypt_buffer.dwBlockLen
#endif
#define decrypt_buffer.dwBlockLen ebp-84	; exposes local variable 'dwBlockLen'
;
	mov	eax,8192			;;; i659
	mov	d[ebp-84],eax			;;; i670
;
; [781] lpBuffer = sbuffer
#ifdef decrypt_buffer.lpBuffer
#undef decrypt_buffer.lpBuffer
#endif
#define decrypt_buffer.lpBuffer ebp-88	; exposes local variable 'lpBuffer'
;
	mov	eax,d[ebp+8]			;;; i665
	mov	d[ebp-88],eax			;;; i670
;
; [782] count = dwBlockLen
#ifdef decrypt_buffer.count
#undef decrypt_buffer.count
#endif
#define decrypt_buffer.count ebp-92	; exposes local variable 'count'
;
	mov	eax,d[ebp-84]			;;; i665
	mov	d[ebp-92],eax			;;; i670
;
; [783] final = 0
#ifdef decrypt_buffer.final
#undef decrypt_buffer.final
#endif
#define decrypt_buffer.final ebp-96	; exposes local variable 'final'
;
	mov	eax,0			;;; i659
	mov	d[ebp-96],eax			;;; i670
;
; [785] DO
align 8
do.0064.minip2p:
;
; [786] IF (lpBuffer+count) >= (sbuffer+ssize) THEN
	mov	eax,d[ebp-88]			;;; i665
	mov	ebx,d[ebp-92]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-64],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,d[ebp+12]			;;; i665
	add	eax,ebx			;;; i775
	mov	ebx,d[ebp-64]			;;; i665
	cmp	eax,ebx			;;; i684a
	jg	>> else.0065.minip2p			;;; i219
;
; [787] final = 1
	mov	eax,1			;;; i659
	mov	d[ebp-96],eax			;;; i670
;
; [788] count = (sbuffer+ssize) - lpBuffer
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,d[ebp+12]			;;; i665
	add	eax,ebx			;;; i775
	mov	ebx,d[ebp-88]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp-92],eax			;;; i670
;
; [789] END IF
else.0065.minip2p:
end.if.0065.minip2p:
;
; [791] IF (!@Decrypt (hKey, 0, final, 0, lpBuffer, &count)) THEN
	mov	eax,d[ebp-40]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.121			;;; i604
	mov	d[ebp-64],eax			;;; i670
	lea	eax,[ebp-92]			;;; i642
	push	eax			;;; i667a
	push	[ebp-88]			;;; i674a
	push	0			;;; i656a
	push	[ebp-96]			;;; i674a
	push	0			;;; i656a
	push	[ebp-44]			;;; i674a
	mov	eax,d[ebp-64]			;;; i665
	call	eax			;;; i620
A.121:
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0066.minip2p			;;; i221
;
; [792] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [793] END IF
else.0066.minip2p:
end.if.0066.minip2p:
;
; [794] lpBuffer = lpBuffer + dwBlockLen
	mov	eax,d[ebp-88]			;;; i665
	mov	ebx,d[ebp-84]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-88],eax			;;; i670
;
; [796] LOOP UNTIL final
do.loop.0064.minip2p:
	mov	eax,d[ebp-96]			;;; i665
	test	eax,eax			;;; i220
	jz	< do.0064.minip2p			;;; i221
end.do.0064.minip2p:
;
; [798] ' Destroy the session key.
;
; [799] IF (hKey) THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0067.minip2p			;;; i221
;
; [800] IF (!CryptDestroyKey (hKey)) THEN
;
; [0] EXTERNAL CFUNCTION CryptDestroyKey (HCRYPTKEY hKey)
	push	[ebp-44]			;;; i674a
	call	_CryptDestroyKey			;;; i619
	add	esp,4			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0068.minip2p			;;; i221
;
; [801] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [802] END IF
else.0068.minip2p:
end.if.0068.minip2p:
;
; [803] END IF
else.0067.minip2p:
end.if.0067.minip2p:
;
; [805] ' Release the provider handle.
;
; [806] IF (hProv) THEN
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0069.minip2p			;;; i221
;
; [807] IF (!CryptReleaseContext (hProv, 0)) THEN
;
; [0] EXTERNAL CFUNCTION CryptReleaseContext (HCRYPTPROV hProv, dwFlags)
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_CryptReleaseContext			;;; i619
	add	esp,8			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.006A.minip2p			;;; i221
;
; [808] GOSUB HandleError
	call	%s%HandleError%1C			;;; i163
;
; [809] END IF
else.006A.minip2p:
end.if.006A.minip2p:
;
; [810] END IF
else.0069.minip2p:
end.if.0069.minip2p:
;
; [812] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func1C.minip2p			;;; i258
;
; [814] SUB HandleError
	jmp	out.sub1C.0.minip2p			;;; i262
align 16
%s%HandleError%1C:
; .sub1C.0000 = ebp-100	; internal variable
;
; [816] IF hKey THEN CryptDestroyKey(hKey)
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.006B.minip2p			;;; i221
	push	[ebp-44]			;;; i674a
	call	_CryptDestroyKey			;;; i619
	add	esp,4			;;; i633
else.006B.minip2p:
end.if.006B.minip2p:
;
; [817] IF hHash THEN CryptDestroyHash (hHash)
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.006C.minip2p			;;; i221
	push	[ebp-48]			;;; i674a
	call	_CryptDestroyHash			;;; i619
	add	esp,4			;;; i633
else.006C.minip2p:
end.if.006C.minip2p:
;
; [818] IF hProv THEN CryptReleaseContext (hProv, 0)
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.006D.minip2p			;;; i221
	push	0			;;; i656a
	push	[ebp-52]			;;; i674a
	call	_CryptReleaseContext			;;; i619
	add	esp,8			;;; i633
else.006D.minip2p:
end.if.006D.minip2p:
;
; [819] IF hAdvapi THEN FreeLibrary (hAdvapi)
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.006E.minip2p			;;; i221
;
; [0] EXTERNAL FUNCTION FreeLibrary (hLibModule)
	push	[ebp-56]			;;; i674a
	call	_FreeLibrary@4			;;; i619
else.006E.minip2p:
end.if.006E.minip2p:
;
; [821] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func1C.minip2p			;;; i258
;
; [822] END SUB
end.sub1C.0.minip2p:
	ret				;;; i127
out.sub1C.0.minip2p:
;
; [824] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.decrypt_buffer.minip2p:  ;;; Function end label for Assembly Programmers.
end.func1C.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  decrypt_buffer ()  *****
;  *****
;
; [826] FUNCTION encrypt_buffer (sbuffer,ssize,STRING password)
.code
;
#ifdef encrypt_buffer.sbuffer
#undef encrypt_buffer.sbuffer
#endif
#define encrypt_buffer.sbuffer ebp+8	; exposes function argument 'sbuffer'
;
;
#ifdef encrypt_buffer.ssize
#undef encrypt_buffer.ssize
#endif
#define encrypt_buffer.ssize ebp+12	; exposes function argument 'ssize'
;
;
#ifdef encrypt_buffer.password
#undef encrypt_buffer.password
#endif
#define encrypt_buffer.password ebp+16	; exposes function argument 'password'
;
align 16
_encrypt_buffer@12:
;  *****
;  *****  FUNCTION  encrypt_buffer ()  *****
;  *****
func1B.minip2p:
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
A.132:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.132			;;; .....
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
funcBody1B.minip2p:
;
; [827] FUNCADDR Encrypt (HCRYPTKEY, HCRYPTHASH, XLONG, ULONG, XLONG, XLONG, ULONG)
#ifdef encrypt_buffer.Encrypt
#undef encrypt_buffer.Encrypt
#endif
#define encrypt_buffer.Encrypt ebp-40	; exposes local variable 'Encrypt'
;
;
; [828] HCRYPTKEY hKey, hXchgKey
#ifdef encrypt_buffer.hKey
#undef encrypt_buffer.hKey
#endif
#define encrypt_buffer.hKey ebp-44	; exposes local variable 'hKey'
;
#ifdef encrypt_buffer.hXchgKey
#undef encrypt_buffer.hXchgKey
#endif
#define encrypt_buffer.hXchgKey ebp-48	; exposes local variable 'hXchgKey'
;
;
; [829] HCRYPTHASH hHash
#ifdef encrypt_buffer.hHash
#undef encrypt_buffer.hHash
#endif
#define encrypt_buffer.hHash ebp-52	; exposes local variable 'hHash'
;
;
; [830] HCRYPTPROV hProv
#ifdef encrypt_buffer.hProv
#undef encrypt_buffer.hProv
#endif
#define encrypt_buffer.hProv ebp-56	; exposes local variable 'hProv'
;
;
; [833] $KEYLENGTH = 0x00800000
;
; [834] $ENCRYPT_ALGORITHM = $$CALG_RC4' stream encryption cipher, block size is 1 byte
;
; [836] hAdvapi = LoadLibraryA (&"advapi32.dll")
#ifdef encrypt_buffer.hAdvapi
#undef encrypt_buffer.hAdvapi
#endif
#define encrypt_buffer.hAdvapi ebp-60	; exposes local variable 'hAdvapi'
;
	mov	eax,addr @_string.012A.minip2p			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	mov	d[ebp-60],eax			;;; i670
;
; [837] IFZ hAdvapi THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.006F.minip2p			;;; i195
;
; [838] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [839] END IF
else.006F.minip2p:
end.if.006F.minip2p:
;
; [841] Encrypt = GetProcAddress (hAdvapi, &"CryptEncrypt")
	mov	eax,addr @_string.0143.minip2p			;;; i642
	push	eax			;;; i667a
	push	[ebp-60]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	d[ebp-40],eax			;;; i670
;
; [842] IFZ Encrypt THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0070.minip2p			;;; i195
;
; [843] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [844] END IF
else.0070.minip2p:
end.if.0070.minip2p:
;
; [846] ' Get the handle to the default provider.
;
; [847] IF (!CryptAcquireContextA (&hProv, NULL, &$$MS_ENHANCED_PROV, $$PROV_RSA_FULL, 0)) THEN
	lea	eax,[ebp-56]			;;; i642
; .xstk1B.0000 = ebp-68	; internal variable
	mov	d[ebp-68],eax			;;; i670
#ifdef encrypt_buffer.NULL
#undef encrypt_buffer.NULL
#endif
#define encrypt_buffer.NULL ebp-72	; exposes local variable 'NULL'
;
	mov	eax,addr @_string.0E08.minip2p			;;; i642
; .xstk1B.0001 = ebp-80	; internal variable
	mov	d[ebp-80],eax			;;; i670
	push	0			;;; i656a
	push	1			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	_CryptAcquireContextA			;;; i619
	add	esp,20			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0071.minip2p			;;; i221
;
; [848] IF (GetLastError () == $$NTE_BAD_KEYSET) THEN
	call	_GetLastError@0			;;; i619
	cmp	eax,-2146893802			;;; i684a
	jne	>> else.0072.minip2p			;;; i219
;
; [849] IF (!CryptAcquireContextA (&hProv, NULL, &$$MS_ENHANCED_PROV, $$PROV_RSA_FULL, $$CRYPT_NEWKEYSET)) THEN
	lea	eax,[ebp-56]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	mov	eax,addr @_string.0E08.minip2p			;;; i642
	mov	d[ebp-80],eax			;;; i670
	push	8			;;; i656a
	push	1			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-72]			;;; i674a
	push	[ebp-68]			;;; i674a
	call	_CryptAcquireContextA			;;; i619
	add	esp,20			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0073.minip2p			;;; i221
;
; [850] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [851] END IF
else.0073.minip2p:
end.if.0073.minip2p:
;
; [852] ELSE
	jmp	end.if.0072.minip2p			;;; i107
else.0072.minip2p:
;
; [853] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [854] END IF
end.if.0072.minip2p:
;
; [855] END IF
else.0071.minip2p:
end.if.0071.minip2p:
;
; [857] ' Create the session key.
;
; [858] IFZ password THEN
	mov	eax,[ebp+16]			;;; i665
	test	eax,eax			;;; i188
	jz	> A.125			;;; i189
	mov	eax,d[eax-8]			;;; i190
	test	eax,eax			;;; i191
	jnz	>> else.0074.minip2p			;;; i192
A.125:
;
; [859] ' No password was passed.
;
; [860] ' Encrypt the file with a random session key,
;
; [861] ' and write the key to dest buffer
;
; [862] ' create a random session key.
;
; [863] IF (!CryptGenKey (hProv, $ENCRYPT_ALGORITHM, $KEYLENGTH | $$CRYPT_EXPORTABLE, &hKey)) THEN
;
; [0] EXTERNAL CFUNCTION CryptGenKey (HCRYPTPROV hProv, Algid, dwFlags, lphKey)
	mov	eax,8388608			;;; i657
	or	eax,1			;;; i763
	mov	d[ebp-68],eax			;;; i670
	lea	eax,[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	push	26625			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CryptGenKey			;;; i619
	add	esp,16			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0075.minip2p			;;; i221
;
; [864] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [865] END IF
else.0075.minip2p:
end.if.0075.minip2p:
;
; [867] ' Get the handle to the encrypter's exchange public key.
;
; [868] IF (!CryptGetUserKey (hProv, $$AT_KEYEXCHANGE, &hXchgKey)) THEN
;
; [0] EXTERNAL CFUNCTION CryptGetUserKey (HCRYPTPROV hProv, dwKeySpec, lphUserKey)
	lea	eax,[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	1			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CryptGetUserKey			;;; i619
	add	esp,12			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0076.minip2p			;;; i221
;
; [869] IF (GetLastError () == $$NTE_NO_KEY) THEN
	call	_GetLastError@0			;;; i619
	cmp	eax,-2146893811			;;; i684a
	jne	>> else.0077.minip2p			;;; i219
;
; [870] IF (!CryptGenKey (hProv, $$AT_KEYEXCHANGE, 0, &hXchgKey)) THEN GOSUB HandleError
	lea	eax,[ebp-48]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	1			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CryptGenKey			;;; i619
	add	esp,16			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0078.minip2p			;;; i221
	call	%s%HandleError%1B			;;; i163
else.0078.minip2p:
end.if.0078.minip2p:
;
; [871] ELSE
	jmp	end.if.0077.minip2p			;;; i107
else.0077.minip2p:
;
; [872] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [873] END IF
end.if.0077.minip2p:
;
; [874] END IF
else.0076.minip2p:
end.if.0076.minip2p:
;
; [876] ' Determine size of the key BLOB, and allocate memory.
;
; [877] IF (!CryptExportKey (hKey, hXchgKey, $$SIMPLEBLOB, 0, NULL, &dwKeyBlobLen)) THEN
;
; [0] EXTERNAL CFUNCTION CryptExportKey (HCRYPTKEY hKey, HCRYPTKEY hExpKey, dwBlobType, dwFlags, lpbData, lpdwDataLen)
#ifdef encrypt_buffer.dwKeyBlobLen
#undef encrypt_buffer.dwKeyBlobLen
#endif
#define encrypt_buffer.dwKeyBlobLen ebp-84	; exposes local variable 'dwKeyBlobLen'
;
	lea	eax,[ebp-84]			;;; i642
	push	eax			;;; i667a
	push	[ebp-72]			;;; i674a
	push	0			;;; i656a
	push	1			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	_CryptExportKey			;;; i619
	add	esp,24			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0079.minip2p			;;; i221
;
; [878] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [879] END IF
else.0079.minip2p:
end.if.0079.minip2p:
;
; [881] IFZ dwKeyBlobLen THEN GOSUB HandleError
	mov	eax,d[ebp-84]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.007A.minip2p			;;; i195
	call	%s%HandleError%1B			;;; i163
else.007A.minip2p:
end.if.007A.minip2p:
;
; [882] password = NULL$(dwKeyBlobLen)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-84]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [884] ' Encrypt and export the session key into a simple key BLOB.
;
; [885] IF (!CryptExportKey (hKey, hXchgKey, $$SIMPLEBLOB, 0, &password, &dwKeyBlobLen)) THEN
	mov	eax,d[ebp+16]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	lea	eax,[ebp-84]			;;; i642
	push	eax			;;; i667a
	push	[ebp-68]			;;; i674a
	push	0			;;; i656a
	push	1			;;; i656a
	push	[ebp-48]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	_CryptExportKey			;;; i619
	add	esp,24			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.007B.minip2p			;;; i221
;
; [886] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [887] END IF
else.007B.minip2p:
end.if.007B.minip2p:
;
; [889] ' Release the key exchange key handle.
;
; [890] IF (hXchgKey) THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.007C.minip2p			;;; i221
;
; [891] IF (!CryptDestroyKey (hXchgKey)) THEN
	push	[ebp-48]			;;; i674a
	call	_CryptDestroyKey			;;; i619
	add	esp,4			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.007D.minip2p			;;; i221
;
; [892] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [893] END IF
else.007D.minip2p:
end.if.007D.minip2p:
;
; [894] hXchgKey = 0
	mov	eax,0			;;; i659
	or	eax,eax			;;; i366
	jns	> A.126			;;; i367
	call	%_eeeOverflow			;;; i368
A.126:
	mov	d[ebp-48],eax			;;; i670
;
; [895] END IF
else.007C.minip2p:
end.if.007C.minip2p:
;
; [897] ELSE
	jmp	end.if.0074.minip2p			;;; i107
else.0074.minip2p:
;
; [898] ' the file will be encrypted with a session key derived from a password.
;
; [899] ' the session key will be recreated when the file is decrypted
;
; [900] ' only if the password used to create the key is available.
;
; [902] ' create a hash object.
;
; [903] IF (!CryptCreateHash (hProv, $$CALG_MD5, 0, 0, &hHash)) THEN
	lea	eax,[ebp-52]			;;; i642
	push	eax			;;; i667a
	push	0			;;; i656a
	push	0			;;; i656a
	push	32771			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CryptCreateHash			;;; i619
	add	esp,20			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.007E.minip2p			;;; i221
;
; [904] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [905] END IF
else.007E.minip2p:
end.if.007E.minip2p:
;
; [907] ' Hash the password.
;
; [908] IF (!CryptHashData (hHash, &password, LEN(password), 0)) THEN
	mov	eax,d[ebp+16]			;;; i642
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp+16]			;;; i665
	test	eax,eax			;;; i593
	jz	> A.127			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.127:
	mov	d[ebp-80],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-80]			;;; i674a
	push	[ebp-68]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	_CryptHashData			;;; i619
	add	esp,16			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.007F.minip2p			;;; i221
;
; [909] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [910] END IF
else.007F.minip2p:
end.if.007F.minip2p:
;
; [912] ' Derive a session key from the password hash object.
;
; [913] IF (!CryptDeriveKey (hProv, $ENCRYPT_ALGORITHM, hHash, $KEYLENGTH, &hKey)) THEN
	lea	eax,[ebp-44]			;;; i642
	push	eax			;;; i667a
	push	8388608			;;; i656a
	push	[ebp-52]			;;; i674a
	push	26625			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CryptDeriveKey			;;; i619
	add	esp,20			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0080.minip2p			;;; i221
;
; [914] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [915] END IF
else.0080.minip2p:
end.if.0080.minip2p:
;
; [917] ' Destroy hash object.
;
; [918] IF (hHash) THEN
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0081.minip2p			;;; i221
;
; [919] IF (!CryptDestroyHash (hHash)) THEN
	push	[ebp-52]			;;; i674a
	call	_CryptDestroyHash			;;; i619
	add	esp,4			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0082.minip2p			;;; i221
;
; [920] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [921] END IF
else.0082.minip2p:
end.if.0082.minip2p:
;
; [922] END IF
else.0081.minip2p:
end.if.0081.minip2p:
;
; [923] hHash = 0
	mov	eax,0			;;; i659
	or	eax,eax			;;; i366
	jns	> A.128			;;; i367
	call	%_eeeOverflow			;;; i368
A.128:
	mov	d[ebp-52],eax			;;; i670
;
; [925] END IF
end.if.0074.minip2p:
;
; [927] ' The session key is now ready
;
; [928] ' for stream ciphers, buffer size can be equal to the block length
;
; [929] dwBlockLen = 8192
#ifdef encrypt_buffer.dwBlockLen
#undef encrypt_buffer.dwBlockLen
#endif
#define encrypt_buffer.dwBlockLen ebp-88	; exposes local variable 'dwBlockLen'
;
	mov	eax,8192			;;; i659
	mov	d[ebp-88],eax			;;; i670
;
; [930] lpBuffer = sbuffer
#ifdef encrypt_buffer.lpBuffer
#undef encrypt_buffer.lpBuffer
#endif
#define encrypt_buffer.lpBuffer ebp-92	; exposes local variable 'lpBuffer'
;
	mov	eax,d[ebp+8]			;;; i665
	mov	d[ebp-92],eax			;;; i670
;
; [931] count = dwBlockLen
#ifdef encrypt_buffer.count
#undef encrypt_buffer.count
#endif
#define encrypt_buffer.count ebp-96	; exposes local variable 'count'
;
	mov	eax,d[ebp-88]			;;; i665
	mov	d[ebp-96],eax			;;; i670
;
; [932] final = 0
#ifdef encrypt_buffer.final
#undef encrypt_buffer.final
#endif
#define encrypt_buffer.final ebp-100	; exposes local variable 'final'
;
	mov	eax,0			;;; i659
	mov	d[ebp-100],eax			;;; i670
;
; [934] DO
align 8
do.0083.minip2p:
;
; [935] IF (lpBuffer+count) >= (sbuffer+ssize) THEN
	mov	eax,d[ebp-92]			;;; i665
	mov	ebx,d[ebp-96]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-68],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,d[ebp+12]			;;; i665
	add	eax,ebx			;;; i775
	mov	ebx,d[ebp-68]			;;; i665
	cmp	eax,ebx			;;; i684a
	jg	>> else.0084.minip2p			;;; i219
;
; [936] final = 1
	mov	eax,1			;;; i659
	mov	d[ebp-100],eax			;;; i670
;
; [937] count = (sbuffer+ssize) - lpBuffer
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,d[ebp+12]			;;; i665
	add	eax,ebx			;;; i775
	mov	ebx,d[ebp-92]			;;; i665
	sub	eax,ebx			;;; i791
	mov	d[ebp-96],eax			;;; i670
;
; [938] END IF
else.0084.minip2p:
end.if.0084.minip2p:
;
; [940] ret = @Encrypt (hKey, 0, final, 0, lpBuffer, &count, dwBlockLen)
#ifdef encrypt_buffer.ret
#undef encrypt_buffer.ret
#endif
#define encrypt_buffer.ret ebp-104	; exposes local variable 'ret'
;
	mov	eax,d[ebp-40]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.129			;;; i604
	mov	d[ebp-68],eax			;;; i670
	lea	eax,[ebp-96]			;;; i642
	mov	d[ebp-80],eax			;;; i670
	push	[ebp-88]			;;; i674a
	push	[ebp-80]			;;; i674a
	push	[ebp-92]			;;; i674a
	push	0			;;; i656a
	push	[ebp-100]			;;; i674a
	push	0			;;; i656a
	push	[ebp-44]			;;; i674a
	mov	eax,d[ebp-68]			;;; i665
	call	eax			;;; i620
A.129:
	mov	d[ebp-104],eax			;;; i670
;
; [941] IFZ ret THEN GOSUB HandleError
	mov	eax,d[ebp-104]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0085.minip2p			;;; i195
	call	%s%HandleError%1B			;;; i163
else.0085.minip2p:
end.if.0085.minip2p:
;
; [942] lpBuffer = lpBuffer + dwBlockLen
	mov	eax,d[ebp-92]			;;; i665
	mov	ebx,d[ebp-88]			;;; i665
	add	eax,ebx			;;; i775
	mov	d[ebp-92],eax			;;; i670
;
; [944] LOOP UNTIL final
do.loop.0083.minip2p:
	mov	eax,d[ebp-100]			;;; i665
	test	eax,eax			;;; i220
	jz	< do.0083.minip2p			;;; i221
end.do.0083.minip2p:
;
; [946] ' Destroy the session key.
;
; [947] IF (hKey) THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0086.minip2p			;;; i221
;
; [948] IF (!CryptDestroyKey (hKey)) THEN
	push	[ebp-44]			;;; i674a
	call	_CryptDestroyKey			;;; i619
	add	esp,4			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0087.minip2p			;;; i221
;
; [949] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [950] END IF
else.0087.minip2p:
end.if.0087.minip2p:
;
; [951] END IF
else.0086.minip2p:
end.if.0086.minip2p:
;
; [953] ' Release the provider handle.
;
; [954] IF (hProv) THEN
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0088.minip2p			;;; i221
;
; [955] IF (!CryptReleaseContext (hProv, 0)) THEN
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CryptReleaseContext			;;; i619
	add	esp,8			;;; i633
	neg	eax			;;; i888
	cmc				;;; i889
	rcr	eax,1			;;; i890
	sar	eax,31			;;; i891
	test	eax,eax			;;; i220
	jz	>> else.0089.minip2p			;;; i221
;
; [956] GOSUB HandleError
	call	%s%HandleError%1B			;;; i163
;
; [957] END IF
else.0089.minip2p:
end.if.0089.minip2p:
;
; [958] END IF
else.0088.minip2p:
end.if.0088.minip2p:
;
; [960] 'free the dll
;
; [961] IF hAdvapi THEN FreeLibrary (hAdvapi)
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.008A.minip2p			;;; i221
	push	[ebp-60]			;;; i674a
	call	_FreeLibrary@4			;;; i619
else.008A.minip2p:
end.if.008A.minip2p:
;
; [962] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func1B.minip2p			;;; i258
;
; [964] SUB HandleError
	jmp	out.sub1B.0.minip2p			;;; i262
align 16
%s%HandleError%1B:
; .sub1B.0000 = ebp-108	; internal variable
;
; [966] IF hKey THEN CryptDestroyKey(hKey)
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.008B.minip2p			;;; i221
	push	[ebp-44]			;;; i674a
	call	_CryptDestroyKey			;;; i619
	add	esp,4			;;; i633
else.008B.minip2p:
end.if.008B.minip2p:
;
; [967] IF hXchgKey THEN CryptDestroyKey (hXchgKey)
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.008C.minip2p			;;; i221
	push	[ebp-48]			;;; i674a
	call	_CryptDestroyKey			;;; i619
	add	esp,4			;;; i633
else.008C.minip2p:
end.if.008C.minip2p:
;
; [968] IF hHash THEN CryptDestroyHash (hHash)
	mov	eax,d[ebp-52]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.008D.minip2p			;;; i221
	push	[ebp-52]			;;; i674a
	call	_CryptDestroyHash			;;; i619
	add	esp,4			;;; i633
else.008D.minip2p:
end.if.008D.minip2p:
;
; [969] IF hProv THEN CryptReleaseContext (hProv, 0)
	mov	eax,d[ebp-56]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.008E.minip2p			;;; i221
	push	0			;;; i656a
	push	[ebp-56]			;;; i674a
	call	_CryptReleaseContext			;;; i619
	add	esp,8			;;; i633
else.008E.minip2p:
end.if.008E.minip2p:
;
; [970] IF hAdvapi THEN FreeLibrary (hAdvapi)
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.008F.minip2p			;;; i221
	push	[ebp-60]			;;; i674a
	call	_FreeLibrary@4			;;; i619
else.008F.minip2p:
end.if.008F.minip2p:
;
; [972] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func1B.minip2p			;;; i258
;
; [973] END SUB
end.sub1B.0.minip2p:
	ret				;;; i127
out.sub1B.0.minip2p:
;
; [975] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.encrypt_buffer.minip2p:  ;;; Function end label for Assembly Programmers.
end.func1B.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  encrypt_buffer ()  *****
;  *****
;
; [977] FUNCTION zlib_decompress (source,ssize,dest,dsize)
.code
;
#ifdef zlib_decompress.source
#undef zlib_decompress.source
#endif
#define zlib_decompress.source ebp+8	; exposes function argument 'source'
;
;
#ifdef zlib_decompress.ssize
#undef zlib_decompress.ssize
#endif
#define zlib_decompress.ssize ebp+12	; exposes function argument 'ssize'
;
;
#ifdef zlib_decompress.dest
#undef zlib_decompress.dest
#endif
#define zlib_decompress.dest ebp+16	; exposes function argument 'dest'
;
;
#ifdef zlib_decompress.dsize
#undef zlib_decompress.dsize
#endif
#define zlib_decompress.dsize ebp+20	; exposes function argument 'dsize'
;
align 16
_zlib_decompress@16:
;  *****
;  *****  FUNCTION  zlib_decompress ()  *****
;  *****
func20.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody20.minip2p:
;
; [979] IF (uncompress (dest,dsize,source,ssize) == $$Z_OK) THEN
;
; [0] EXTERNAL CFUNCTION uncompress (lpDestBuffer,lpDestBufferLen,lpSrcBuffer,SrcBufferLen)
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	call	_uncompress			;;; i619
	add	esp,16			;;; i633
	cmp	eax,0			;;; i684a
	jne	>> else.0090.minip2p			;;; i219
;
; [980] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func20.minip2p			;;; i258
;
; [981] ELSE
	jmp	end.if.0090.minip2p			;;; i107
else.0090.minip2p:
;
; [982] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func20.minip2p			;;; i258
;
; [983] END IF
end.if.0090.minip2p:
;
; [984] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.zlib_decompress.minip2p:  ;;; Function end label for Assembly Programmers.
end.func20.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	16			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  zlib_decompress ()  *****
;  *****
;
; [986] FUNCTION zlib_compress (source,ssize,dest,dsize,level)
.code
;
#ifdef zlib_compress.source
#undef zlib_compress.source
#endif
#define zlib_compress.source ebp+8	; exposes function argument 'source'
;
;
#ifdef zlib_compress.ssize
#undef zlib_compress.ssize
#endif
#define zlib_compress.ssize ebp+12	; exposes function argument 'ssize'
;
;
#ifdef zlib_compress.dest
#undef zlib_compress.dest
#endif
#define zlib_compress.dest ebp+16	; exposes function argument 'dest'
;
;
#ifdef zlib_compress.dsize
#undef zlib_compress.dsize
#endif
#define zlib_compress.dsize ebp+20	; exposes function argument 'dsize'
;
;
#ifdef zlib_compress.level
#undef zlib_compress.level
#endif
#define zlib_compress.level ebp+24	; exposes function argument 'level'
;
align 16
_zlib_compress@20:
;  *****
;  *****  FUNCTION  zlib_compress ()  *****
;  *****
func1E.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  sub esp,16      ;;; reserved for unwind handler
	sub	esp,220			;;; i114a
;
funcBody1E.minip2p:
;
; [989] IF (compress2 (dest,dsize,source,ssize,level) < 0) THEN
;
; [0] EXTERNAL CFUNCTION compress2 (lpDestBuffer,lpDestBufferLen,lpSrcBuffer,SrcBufferLen,Compressionlevel)
	push	[ebp+24]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	push	[ebp+20]			;;; i674a
	push	[ebp+16]			;;; i674a
	call	_compress2			;;; i619
	add	esp,20			;;; i633
	cmp	eax,0			;;; i684a
	jge	>> else.0091.minip2p			;;; i219
;
; [990] RETURN $$FALSE
	mov	eax,0			;;; i659
	jmp	end.func1E.minip2p			;;; i258
;
; [991] ELSE
	jmp	end.if.0091.minip2p			;;; i107
else.0091.minip2p:
;
; [992] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func1E.minip2p			;;; i258
;
; [993] END IF
end.if.0091.minip2p:
;
; [994] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.zlib_compress.minip2p:  ;;; Function end label for Assembly Programmers.
end.func1E.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	20			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  zlib_compress ()  *****
;  *****
;
; [996] FUNCTION zlib_compress2 (sbuffer,ssize,STRING dbuffer)
.code
;
#ifdef zlib_compress2.sbuffer
#undef zlib_compress2.sbuffer
#endif
#define zlib_compress2.sbuffer ebp+8	; exposes function argument 'sbuffer'
;
;
#ifdef zlib_compress2.ssize
#undef zlib_compress2.ssize
#endif
#define zlib_compress2.ssize ebp+12	; exposes function argument 'ssize'
;
;
#ifdef zlib_compress2.dbuffer
#undef zlib_compress2.dbuffer
#endif
#define zlib_compress2.dbuffer ebp+16	; exposes function argument 'dbuffer'
;
align 16
_zlib_compress2@12:
;  *****
;  *****  FUNCTION  zlib_compress2 ()  *****
;  *****
func1F.minip2p:
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
A.139:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.139			;;; .....
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
funcBody1F.minip2p:
;
; [999] dsize = ssize + 1024
#ifdef zlib_compress2.dsize
#undef zlib_compress2.dsize
#endif
#define zlib_compress2.dsize ebp-40	; exposes local variable 'dsize'
;
	mov	eax,d[ebp+12]			;;; i665
	add	eax,1024			;;; i775
	mov	d[ebp-40],eax			;;; i670
;
; [1000] dbuffer = NULL$(dsize)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_null.d			;;; i573
	add	esp,64			;;; i600
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1001] IFT zlib_compress (sbuffer,ssize,&dbuffer,&dsize,$$Z_BEST_COMPRESSION) THEN
	mov	eax,d[ebp+16]			;;; i642
; .xstk1F.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	lea	eax,[ebp-40]			;;; i642
; .xstk1F.0001 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	push	9			;;; i656a
	push	[ebp-56]			;;; i674a
	push	[ebp-48]			;;; i674a
	push	[ebp+12]			;;; i674a
	push	[ebp+8]			;;; i674a
	call	func1E.minip2p			;;; i619
	test	eax,eax			;;; i220
	jz	>> else.0092.minip2p			;;; i221
;
; [1002] RETURN dsize
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.func1F.minip2p			;;; i258
;
; [1003] ELSE
	jmp	end.if.0092.minip2p			;;; i107
else.0092.minip2p:
;
; [1004] dbuffer = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1005] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func1F.minip2p			;;; i258
;
; [1006] END IF
end.if.0092.minip2p:
;
; [1007] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.zlib_compress2.minip2p:  ;;; Function end label for Assembly Programmers.
end.func1F.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	12			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  zlib_compress2 ()  *****
;  *****
;
; [1009] FUNCTION getLastSlash(str$, stop)
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
_getLastSlash.minip2p@8:
;  *****
;  *****  FUNCTION  getLastSlash ()  *****
;  *****
funcE.minip2p:
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
funcBodyE.minip2p:
;
; [1010] $PathSlash$   = "\\"
;
; [1013] IF stop < 0 THEN
	mov	eax,d[ebp+12]			;;; i665
	cmp	eax,0			;;; i684a
	jge	>> else.0093.minip2p			;;; i219
;
; [1014] slash1 = RINSTR(str$, "/")
#ifdef getLastSlash.slash1
#undef getLastSlash.slash1
#endif
#define getLastSlash.slash1 ebp-40	; exposes local variable 'slash1'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0162.minip2p			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [1015] slash2 = RINSTR(str$, $PathSlash$)
#ifdef getLastSlash.slash2
#undef getLastSlash.slash2
#endif
#define getLastSlash.slash2 ebp-44	; exposes local variable 'slash2'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0160.minip2p			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [1016] ELSE
	jmp	end.if.0093.minip2p			;;; i107
else.0093.minip2p:
;
; [1017] slash1 = RINSTR(str$, "/", stop)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0162.minip2p			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+8],eax			;;; i887
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [1018] slash2 = RINSTR(str$, $PathSlash$, stop)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0160.minip2p			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+8],eax			;;; i887
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [1019] END IF
end.if.0093.minip2p:
;
; [1020] IFZ slash1 THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0094.minip2p			;;; i195
;
; [1021] RETURN slash2
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.funcE.minip2p			;;; i258
;
; [1022] ELSE
	jmp	end.if.0094.minip2p			;;; i107
else.0094.minip2p:
;
; [1023] RETURN MAX(slash1, slash2)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_MAX.xlong
	add	esp,64			;;; i600
	jmp	end.funcE.minip2p			;;; i258
;
; [1024] END IF
end.if.0094.minip2p:
;
; [1026] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getLastSlash.minip2p:  ;;; Function end label for Assembly Programmers.
end.funcE.minip2p:
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
; [1028] FUNCTION DecomposePathname (pathname$, @path$, @parent$, @filename$, @file$, @extent$)
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
_DecomposePathname.minip2p@24:
;  *****
;  *****  FUNCTION  DecomposePathname ()  *****
;  *****
funcF.minip2p:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.funcF.minip2p
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.145:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.145			;;; .....
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
funcBodyF.minip2p:
;
; [1029] '
;
; [1030] path$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1031] file$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1032] extent$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+28]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1033] parent$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1034] filename$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+20]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1035] name$ = TRIM$ (pathname$)
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
; [1036] dot = RINSTR (name$, ".")
#ifdef DecomposePathname.dot
#undef DecomposePathname.dot
#endif
#define DecomposePathname.dot ebp-44	; exposes local variable 'dot'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.016C.minip2p			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [1037] slash = getLastSlash(name$, -1)
#ifdef DecomposePathname.slash
#undef DecomposePathname.slash
#endif
#define DecomposePathname.slash ebp-48	; exposes local variable 'slash'
;
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
; .xstkF.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	funcE.minip2p			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-48],eax			;;; i670
;
; [1039] IF slash THEN preslash = getLastSlash(name$, slash-1)
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0095.minip2p			;;; i221
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
	call	funcE.minip2p			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-60],eax			;;; i670
else.0095.minip2p:
end.if.0095.minip2p:
;
; [1040] IF (dot < slash) THEN dot = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.0096.minip2p			;;; i219
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
else.0096.minip2p:
end.if.0096.minip2p:
;
; [1041] '
;
; [1042] filename$ = MID$ (name$, slash+1)
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
; [1043] IFZ dot THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0097.minip2p			;;; i195
;
; [1044] file$ = filename$
	mov	eax,[ebp+20]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [1045] ELSE
	jmp	end.if.0097.minip2p			;;; i107
else.0097.minip2p:
;
; [1046] file$ = MID$ (name$, slash+1, dot-slash-1)
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
; [1047] extent$ = MID$ (name$, dot)
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
; [1048] END IF
end.if.0097.minip2p:
;
; [1049] '
;
; [1050] IF slash THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0098.minip2p			;;; i221
;
; [1051] path$ = LEFT$ (name$, slash-1)
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
; [1052] IF preslash THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0099.minip2p			;;; i221
;
; [1053] parent$ = MID$ (name$, preslash+1, slash-preslash-1)
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
; [1054] ELSE
	jmp	end.if.0099.minip2p			;;; i107
else.0099.minip2p:
;
; [1055] parent$ = LEFT$ (name$, slash-1)
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
; [1056] END IF
end.if.0099.minip2p:
;
; [1057] END IF
else.0098.minip2p:
end.if.0098.minip2p:
;
; [1059] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DecomposePathname.minip2p:  ;;; Function end label for Assembly Programmers.
end.funcF.minip2p:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.funcF.minip2p
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	24			;;; i111a
free.funcF.minip2p:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DecomposePathname ()  *****
;  *****
;
; [1061] FUNCTION InitWSA ()
.code
align 16
_InitWSA.minip2p@0:
;  *****
;  *****  FUNCTION  InitWSA ()  *****
;  *****
func2.minip2p:
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
	mov	ecx,12				;;; ..
	xor	eax,eax			;;; ...
A.149:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.149			;;; .....
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody2.minip2p:
;
; [1062] WSADATA wsadata
; .composites = ebp-40	; internal variable
#ifdef InitWSA.wsadata
#undef InitWSA.wsadata
#endif
#define InitWSA.wsadata ebp-44	; exposes local variable 'wsadata'
;
;
; [1064] IF WSAStartup (2 | (2 << 8), &wsadata) THEN RETURN $$FALSE
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
	jz	>> else.009A.minip2p			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func2.minip2p			;;; i258
else.009A.minip2p:
end.if.009A.minip2p:
;
; [1065] 'IF wsadata.wVersion != version THEN RETURN $$FALSE
;
; [1066] RETURN $$TRUE
	mov	eax,-1			;;; i659
	jmp	end.func2.minip2p			;;; i258
;
; [1067] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.InitWSA.minip2p:  ;;; Function end label for Assembly Programmers.
end.func2.minip2p:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  InitWSA ()  *****
;  *****
;
; [1069] END PROGRAM
;<peep
end_program.minip2p:
	push	ebp			;;; i128
	mov	ebp,esp			;;; i129
	sub	esp,128			;;; i130
	mov	esi,[%16%name.minip2p]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%16%ip.minip2p]			;;; i663a
	call	%____free			;;; i423
	mov	esi,[%#ip$.minip2p]			;;; i663a
	call	%____free			;;; i423
	mov	esp,ebp			;;; i132
	pop	ebp			;;; i133
	ret				;;; i134
;
InitSharedComposites.minip2p:
	ret				;;; i143
;
.code
; ########################
; #####  DllMain ()  #####
; ########################
align 8
_DllMain@12:
	mov eax,1     							; success
	ret 12
;
;;;  *****  DEFINE '.bss' SECTION LIMITS  *****
;
align 8
data section 'minip2p$aaaaa'
%_begin_external_data_minip2p dd ?
;
align 8
data section 'minip2p$zzzzz'
%_end_external_data_minip2p dd ?
;
;
;;;  *****  DEFINE LITERAL STRINGS  *****
.const
align 8
;
dd 24, 0, 7, 0x80130001
@_string.0029.minip2p:
db	"minip2p"
db	1 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.002A.minip2p:
db	"0.3"
db	5 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.002B.minip2p:
db	"xdll.xxx"
db	8 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.002C.minip2p:
db	"xst"
db	5 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.002D.minip2p:
db	"kernel32"
db	8 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.002E.minip2p:
db	"wsock32"
db	1 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.002F.minip2p:
db	"zlib"
db	4 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.0030.minip2p:
db	"advapi32"
db	8 dup 0
;
dd 24, 0, 6, 0x80130001
@_string.0031.minip2p:
db	"msvcrt"
db	2 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0032.minip2p:
db	"p2pfiled.dec"
db	4 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0033.minip2p:
db	"winmm"
db	3 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.00C7.minip2p:
db	"wb"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.00E7.minip2p:
db	"rb"
db	6 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.012A.minip2p:
db	"advapi32.dll"
db	4 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.012B.minip2p:
db	"CryptDecrypt"
db	4 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.0143.minip2p:
db	"CryptEncrypt"
db	4 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0160.minip2p:
db	0x5C
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0162.minip2p:
db	"/"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.016C.minip2p:
db	"."
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0182.minip2p:
db	";"
db	7 dup 0
;
dd 24, 0, 5, 0x80130001
@_string.0C56.minip2p:
db	"1.2.1"
db	3 dup 0
;
dd 64, 0, 42, 0x80130001
@_string.0E04.minip2p:
db	"Microsoft Base Cryptographic Provider v1.0"
db	6 dup 0
;
dd 64, 0, 46, 0x80130001
@_string.0E08.minip2p:
db	"Microsoft Enhanced Cryptographic Provider v1.0"
db	2 dup 0
;
dd 64, 0, 46, 0x80130001
@_string.0E0B.minip2p:
db	"Microsoft RSA Signature Cryptographic Provider"
db	2 dup 0
;
dd 64, 0, 45, 0x80130001
@_string.0E0F.minip2p:
db	"Microsoft RSA SChannel Cryptographic Provider"
db	3 dup 0
;
dd 64, 0, 41, 0x80130001
@_string.0E13.minip2p:
db	"Microsoft Base DSS Cryptographic Provider"
db	7 dup 0
;
dd 80, 0, 60, 0x80130001
@_string.0E17.minip2p:
db	"Microsoft Base DSS and Diffie-Hellman Cryptographic Provider"
db	4 dup 0
;
dd 88, 0, 64, 0x80130001
@_string.0E1B.minip2p:
db	"Microsoft Enhanced DSS and Diffie-Hellman Cryptographic Provider"
db	8 dup 0
;
dd 64, 0, 44, 0x80130001
@_string.0E1F.minip2p:
db	"Microsoft DH SChannel Cryptographic Provider"
db	4 dup 0
;
dd 64, 0, 41, 0x80130001
@_string.0E23.minip2p:
db	"Microsoft Base Smart Card Crypto Provider"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0EB5.minip2p:
db	"O"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0EB7.minip2p:
db	"G"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0EB9.minip2p:
db	"D"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0EBB.minip2p:
db	"S"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0EBD.minip2p:
db	"P"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EBF.minip2p:
db	"AR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EC1.minip2p:
db	"AI"
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0EC3.minip2p:
db	"A"
db	7 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EC6.minip2p:
db	"OA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EC8.minip2p:
db	"OD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0ECA.minip2p:
db	"AU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0ECC.minip2p:
db	"AL"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0ECE.minip2p:
db	"OU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0ED0.minip2p:
db	"OL"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0ED2.minip2p:
db	"CI"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0ED4.minip2p:
db	"OI"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0ED6.minip2p:
db	"NP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0ED8.minip2p:
db	"IO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EDA.minip2p:
db	"ID"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EDC.minip2p:
db	"SA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EDE.minip2p:
db	"FA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EE0.minip2p:
db	"RP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EE2.minip2p:
db	"WP"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EE4.minip2p:
db	"CC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EE6.minip2p:
db	"DC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EE8.minip2p:
db	"LC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EEA.minip2p:
db	"SW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EEC.minip2p:
db	"LO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EEE.minip2p:
db	"DT"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EF0.minip2p:
db	"CR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EF2.minip2p:
db	"RC"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EF4.minip2p:
db	"WD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EF6.minip2p:
db	"WO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EF8.minip2p:
db	"SD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EFA.minip2p:
db	"GA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EFC.minip2p:
db	"GR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0EFE.minip2p:
db	"GW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F00.minip2p:
db	"GX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F03.minip2p:
db	"FR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F05.minip2p:
db	"FW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F07.minip2p:
db	"FX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F09.minip2p:
db	"KA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F0B.minip2p:
db	"KR"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F0D.minip2p:
db	"KW"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F0F.minip2p:
db	"KX"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F12.minip2p:
db	"DA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F14.minip2p:
db	"DG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F16.minip2p:
db	"DU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F18.minip2p:
db	"ED"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F1A.minip2p:
db	"DD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F1D.minip2p:
db	"BA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F1F.minip2p:
db	"BG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F21.minip2p:
db	"BU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F23.minip2p:
db	"LA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F25.minip2p:
db	"LG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F27.minip2p:
db	"AO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F29.minip2p:
db	"BO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F2B.minip2p:
db	"PO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F2D.minip2p:
db	"SO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F30.minip2p:
db	"PS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F32.minip2p:
db	"CO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F34.minip2p:
db	"CG"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F36.minip2p:
db	"SY"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F38.minip2p:
db	"PU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F3B.minip2p:
db	"RE"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F3D.minip2p:
db	"IU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F3F.minip2p:
db	"NU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F41.minip2p:
db	"SU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F44.minip2p:
db	"AN"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F47.minip2p:
db	"CA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F49.minip2p:
db	"RS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F4B.minip2p:
db	"EA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F4D.minip2p:
db	"PA"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F4F.minip2p:
db	"RU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F51.minip2p:
db	"LS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F53.minip2p:
db	"NS"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F55.minip2p:
db	"RD"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F57.minip2p:
db	"NO"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F59.minip2p:
db	"MU"
db	6 dup 0
;
dd 24, 0, 2, 0x80130001
@_string.0F5B.minip2p:
db	"LU"
db	6 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0F65.minip2p:
db	":"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0F67.minip2p:
db	"("
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0F69.minip2p:
db	")"
db	7 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.1031.minip2p:
db	"KaM"
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.1033.minip2p:
db	"none"
db	4 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.103A.minip2p:
db	"ijl15.dll"
db	7 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.103D.minip2p:
db	".dll"
db	4 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.12E7.minip2p:
db	"+"
db	7 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.StartLibrary.minip2p:
db	"%_StartLibrary_"
db	1 dup 0
