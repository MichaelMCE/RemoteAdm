;
; [2] PROGRAM "fs"
;
; [3] VERSION "0.3"
;
; [4] 'CONSOLE
;
; [5] MAKEFILE "xdll.xxx"
;
; [7] IMPORT "kernel32"
.code
	jmp	%_StartLibrary_fs			;;; i36a
PrologCode.fs:
	push	ebp			;;; i38
	mov	ebp,esp			;;; i39
	sub	esp,256			;;; i40
	mov	eax,addr @_string.002C.fs			;;; i663
	push	eax
	call	_XxxXstLoadLibrary@4
	test	eax,eax
	jz	> A.2			;;; i40a
	push	eax
	mov	ebx,addr @_string.002C.fs			;;; i663
	push	addr @_string.StartLibrary.fs			;;; i41
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
; [8] IMPORT "p2pfiled.dec"
;
; [10] PACKED TP2PADRH
;
; [11] XLONG		.hLib'handle to .dll as returned by 'LoadLibraryA()'
;
; [12] UBYTE		.inuse' 1 = in used, 0 = not in use
;
; [13] XLONG		.index'index to this TP2PADRH in storage array
;
; [15] XLONG		.pListen'address of p2pListen() as returned by GetProcAddress()
;
; [16] XLONG		.pFileDn'	""		p2pFileDownload()
;
; [17] XLONG		.pFileUp'	""		p2pFileUpload()
;
; [18] XLONG		.pGetAdler'	""		GetAdler32()
;
; [20] XLONG		.pStartup
;
; [21] XLONG		.pCleanup'	""		Cleanup()
;
; [22] END TYPE
;
; [24] EXPORT
;
; [25] DECLARE FUNCTION fs()
;
; [27] DECLARE FUNCTION FSshutdown()
;
; [28] DECLARE FUNCTION newP2P (TP2P)
;
; [29] DECLARE FUNCTION freeP2P (TP2P)
;
; [30] END EXPORT
;
; [32] DECLARE FUNCTION LoadDLLInst (TP2PADRH hdll)
;
; [33] DECLARE FUNCTION FreeDLLInst (TP2PADRH lah)
;
; [34] DECLARE FUNCTION newhLibDLL (i)
;
; [35] DECLARE FUNCTION newhDllIndex()
;
; [37] DECLARE FUNCTION getLastSlash(str$, stop)
;
; [38] DECLARE FUNCTION GetCommandLineArguments (argc, argv$[])
;
; [39] DECLARE FUNCTION DecomposePathname (pathname$, @path$, @parent$, @filename$, @file$, @extent$)
;
; [43] FUNCTION fs ()
.code
	leave	;;; i160a
	ret				;;; i161 ;;; end prolog code
%_StartLibrary_fs:
	call	func1.fs			;;; i162c
	ret	0			;;; i162d
align 16
_fs@0:
;  *****
;  *****  FUNCTION  fs ()  *****
;  *****
func1.fs:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func1.fs
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
	call	%%%%initOnce.fs
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.6:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.6			;;; .....
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
funcBody1.fs:
;
; [44] SHARED SHUTDOWN
data section 'globals$shared'
align	4
%SHUTDOWN.fs:	db 4 dup ?
.code
;
; [45] SHARED TP2PADRH DLL[]
data section 'globals$shared'
align	4
%%%DLL.fs:	db 4 dup ?
.code
;
; [46] STATIC entry
data section 'globals$statics'
align	4
%1%entry.fs:	db 4 dup ?
.code
;
; [47] STRING arg[]
#ifdef fs.arg
#undef fs.arg
#endif
#define fs.arg ebp-40	; exposes local variable 'arg'
;
;
; [48] SHARED STRING path
data section 'globals$shared'
align	4
%path.fs:	db 4 dup ?
.code
;
; [50] IF entry THEN RETURN 0 ELSE entry = 1
	mov	eax,d[%1%entry.fs]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0001.fs			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func1.fs			;;; i258
	jmp	end.if.0001.fs			;;; i107
else.0001.fs:
	mov	eax,1			;;; i659
	mov	d[%1%entry.fs],eax			;;; i668
end.if.0001.fs:
;
; [51] #hsmDllStore = CreateSemaphoreA (0,1,1,0)
data section 'globals$shared'
align	4
%#hsmDllStore.fs:	db 4 dup ?
.code
;
; [0] EXTERNAL FUNCTION CreateSemaphoreA (lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName)
	push	0			;;; i656a
	push	1			;;; i656a
	push	1			;;; i656a
	push	0			;;; i656a
	call	_CreateSemaphoreA@16			;;; i619
	mov	d[%#hsmDllStore.fs],eax			;;; i668
;
; [52] DIM DLL[5]
	sub	esp,64			;;; i430
	mov	eax,5			;;; i659
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%DLL.fs]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1068302303			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%DLL.fs],eax			;;; i668
;
; [53] SHUTDOWN = 0
	mov	eax,0			;;; i659
	mov	d[%SHUTDOWN.fs],eax			;;; i668
;
; [55] GetCommandLineArguments (argc,@arg[])
#ifdef fs.argc
#undef fs.argc
#endif
#define fs.argc ebp-44	; exposes local variable 'argc'
;
	push	[ebp-40]			;;; i674a
	push	[ebp-44]			;;; i674a
	call	funcA.fs			;;; i619
	mov	ecx,d[esp-4]			;;; i877a
	mov	d[ebp-40],ecx			;;; i670
;
; [56] DecomposePathname (arg[0], @path, parent$, filename$, file$, extent$)
	mov	edx,d[ebp-40]			;;; i665
	mov	eax,[edx]			;;; i464
	call	%_clone.a0			;;; i634
; .xstk1.0000 = ebp-52	; internal variable
	mov	[ebp-52],eax			;;; i670
#ifdef fs.parent$
#undef fs.parent$
#endif
#define fs.parent$ ebp-56	; exposes local variable 'parent$'
;
	mov	eax,d[ebp-56]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk1.0001 = ebp-64	; internal variable
	mov	d[ebp-64],eax			;;; i670
#ifdef fs.filename$
#undef fs.filename$
#endif
#define fs.filename$ ebp-68	; exposes local variable 'filename$'
;
	mov	eax,d[ebp-68]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk1.0002 = ebp-76	; internal variable
	mov	d[ebp-76],eax			;;; i670
#ifdef fs.file$
#undef fs.file$
#endif
#define fs.file$ ebp-80	; exposes local variable 'file$'
;
	mov	eax,d[ebp-80]			;;; i665
	call	%_clone.a0			;;; i634
; .xstk1.0003 = ebp-88	; internal variable
	mov	d[ebp-88],eax			;;; i670
#ifdef fs.extent$
#undef fs.extent$
#endif
#define fs.extent$ ebp-92	; exposes local variable 'extent$'
;
	mov	eax,d[ebp-92]			;;; i665
	call	%_clone.a0			;;; i634
	push	eax			;;; i667a
	push	[ebp-88]			;;; i674a
	push	[ebp-76]			;;; i674a
	push	[ebp-64]			;;; i674a
	push	[%path.fs]			;;; i672a
	push	[ebp-52]			;;; i674a
	call	funcB.fs			;;; i619
	sub	esp,24			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	mov	ecx,d[esp+4]			;;; i877a
	mov	[%path.fs],ecx			;;; i668
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
; [57] IF LEN(path)
	mov	eax,d[%path.fs]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.3			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.3:
	test	eax,eax			;;; i220
	jz	>> else.0002.fs			;;; i221
;
; [58] path = path + "\\"
	mov	eax,[%path.fs]			;;; i663a
	mov	ebx,addr @_string.0052.fs			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr %path.fs			;;; i4
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [59] ENDIF
else.0002.fs:
end.if.0002.fs:
;
; [61] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func1.fs			;;; i258
;
; [62] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.fs.fs:  ;;; Function end label for Assembly Programmers.
end.func1.fs:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func1.fs
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
free.func1.fs:
	mov	esi,[ebp-68]			;;; i665
	call	%____free			;;; i423
	mov	esi,d[ebp-40]			;;; i665
	call	%_FreeArray			;;; i424
	mov	esi,[ebp-56]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-92]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-80]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  fs ()  *****
;  *****
%%%%initOnce.fs:
	cmp d[%%%entered.fs],-1		;;; i117
	jne > A.7	;;; i117a
	ret			;;; i117b
A.7:
	call	PrologCode.fs			;;; i118a
	mov esi,addr %_begin_external_data_fs
	mov edi,addr %_end_external_data_fs
	call %_ZeroMemory
	call	InitSharedComposites.fs			;;; i119
	mov	d[%%%entered.fs],-1
	ret				;;; i120
data section 'fs$internals'
align 4
%%%entered.fs:
db 4 dup ?
.code
;
; [64] FUNCTION newP2P (TP2P p2p)
.code
;
#ifdef newP2P.p2p
#undef newP2P.p2p
#endif
#define newP2P.p2p ebp+8	; exposes function argument 'p2p'
;
align 16
_newP2P@4:
;  *****
;  *****  FUNCTION  newP2P ()  *****
;  *****
func3.fs:
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
;	#### Begin Composite Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.11:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.11			;;; .....
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-44],eax			;;; i670
funcBody3.fs:
;
; [65] SHARED SHUTDOWN
;
; [66] TP2PADRH dll
; .composites = ebp-40	; internal variable
#ifdef newP2P.dll
#undef newP2P.dll
#endif
#define newP2P.dll ebp-44	; exposes local variable 'dll'
;
;
; [67] IF SHUTDOWN THEN RETURN 0
	mov	eax,d[%SHUTDOWN.fs]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0003.fs			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func3.fs			;;; i258
else.0003.fs:
end.if.0003.fs:
;
; [69] IF (WaitForSingleObject (#hsmDllStore,30000) == $$WAIT_TIMEOUT) THEN RETURN 0
;
; [0] EXTERNAL FUNCTION WaitForSingleObject (hHandle, dwMilliseconds)
	push	30000			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0004.fs			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func3.fs			;;; i258
else.0004.fs:
end.if.0004.fs:
;
; [70] IF SHUTDOWN THEN
	mov	eax,d[%SHUTDOWN.fs]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0005.fs			;;; i221
;
; [71] ReleaseSemaphore (#hsmDllStore,1,NULL)
;
; [0] EXTERNAL FUNCTION ReleaseSemaphore (hSemaphore, lReleaseCount, lpPreviousCount)
#ifdef newP2P.NULL
#undef newP2P.NULL
#endif
#define newP2P.NULL ebp-48	; exposes local variable 'NULL'
;
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [72] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func3.fs			;;; i258
;
; [73] END IF
else.0005.fs:
end.if.0005.fs:
;
; [75] IFZ LoadDLLInst (@dll) THEN
	mov	eax,d[ebp-44]			;;; i665
	push	eax			;;; i667a
	call	func5.fs			;;; i619
	test	eax,eax			;;; i194
	jnz	>> else.0006.fs			;;; i195
;
; [76] ReleaseSemaphore (#hsmDllStore,1,NULL)
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [77] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func3.fs			;;; i258
;
; [78] END IF
else.0006.fs:
end.if.0006.fs:
;
; [80] IF dll.hLib THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax]			;;; i313b
	test	eax,eax			;;; i220
	jz	>> else.0007.fs			;;; i221
;
; [81] p2p.FileListen = dll.pListen
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+9]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[ebx],eax			;;; i13b
;
; [82] p2p.FileDownload = dll.pFileDn
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+13]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[ebx+4],eax			;;; i13b
;
; [83] p2p.FileUpload = dll.pFileUp
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+17]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[ebx+8],eax			;;; i13b
;
; [84] p2p.GetAdler = dll.pGetAdler
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+21]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[ebx+12],eax			;;; i13b
;
; [85] p2p.Free = &freeP2P()
	mov	eax,addr _freeP2P@4			;;; i599
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[ebx+20],eax			;;; i13b
;
; [86] p2p.index = dll.index
	mov	eax,d[ebp-44]			;;; i665
	mov	eax,d[eax+5]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[ebx+24],eax			;;; i13b
;
; [88] ReleaseSemaphore (#hsmDllStore,1,NULL)
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [89] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func3.fs			;;; i258
;
; [90] ELSE
	jmp	end.if.0007.fs			;;; i107
else.0007.fs:
;
; [91] ReleaseSemaphore (#hsmDllStore,1,NULL)
	push	[ebp-48]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [92] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func3.fs			;;; i258
;
; [93] END IF
end.if.0007.fs:
;
; [95] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.newP2P.fs:  ;;; Function end label for Assembly Programmers.
end.func3.fs:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  newP2P ()  *****
;  *****
;
; [97] FUNCTION freeP2P (TP2P p2p)
.code
;
#ifdef freeP2P.p2p
#undef freeP2P.p2p
#endif
#define freeP2P.p2p ebp+8	; exposes function argument 'p2p'
;
align 16
_freeP2P@4:
;  *****
;  *****  FUNCTION  freeP2P ()  *****
;  *****
func4.fs:
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
A.17:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.17			;;; .....
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
A.18:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.18			;;; .....
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-64],eax			;;; i670
funcBody4.fs:
;
; [98] SHARED TP2PADRH DLL[]
;
; [99] SHARED SHUTDOWN
;
; [101] IF SHUTDOWN THEN RETURN 0
	mov	eax,d[%SHUTDOWN.fs]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.0008.fs			;;; i221
	mov	eax,0			;;; i659
	jmp	end.func4.fs			;;; i258
else.0008.fs:
end.if.0008.fs:
;
; [102] IF (WaitForSingleObject (#hsmDllStore,30000) == $$WAIT_TIMEOUT) THEN RETURN 0
	push	30000			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
	cmp	eax,258			;;; i684a
	jne	>> else.0009.fs			;;; i219
	mov	eax,0			;;; i659
	jmp	end.func4.fs			;;; i258
else.0009.fs:
end.if.0009.fs:
;
; [103] IF SHUTDOWN THEN
	mov	eax,d[%SHUTDOWN.fs]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.000A.fs			;;; i221
;
; [104] ReleaseSemaphore (#hsmDllStore,1,NULL)
#ifdef freeP2P.NULL
#undef freeP2P.NULL
#endif
#define freeP2P.NULL ebp-40	; exposes local variable 'NULL'
;
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [105] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func4.fs			;;; i258
;
; [106] END IF
else.000A.fs:
end.if.000A.fs:
;
; [108] i = p2p.index
#ifdef freeP2P.i
#undef freeP2P.i
#endif
#define freeP2P.i ebp-44	; exposes local variable 'i'
;
	mov	eax,d[ebp+8]			;;; i665
	mov	eax,d[eax+24]			;;; i313b
	mov	d[ebp-44],eax			;;; i670
;
; [109] IF (i >= 0) && (i <= UBOUND(DLL[])) THEN
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,0			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jl	> A.12			;;; i467
	not	eax			;;; i468
A.12:
;+peep
	mov	ebx,d[%%%DLL.fs]			;;; i663a
	test	ebx,ebx			;;; i593
	jz	> A.13			;;; i594
	mov	ebx,d[ebx-8]			;;; i595
A.13:
	dec	ebx			;;; i596
; .xstk4.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jg	> A.14			;;; i467
	not	eax			;;; i468
A.14:
;+peep
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
	jz	>> else.000B.fs			;;; i221
;
; [110] ret = FreeDLLInst (DLL[i])
#ifdef freeP2P.ret
#undef freeP2P.ret
#endif
#define freeP2P.ret ebp-56	; exposes local variable 'ret'
;
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
; .composites = ebp-60	; internal variable
; .compositeArg.0 = ebp-64	; internal variable
	mov	edi,d[ebp-64]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,33			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	call	func6.fs			;;; i619
	mov	d[ebp-56],eax			;;; i670
;
; [111] ReleaseSemaphore (#hsmDllStore,1,NULL)
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [112] RETURN ret
	mov	eax,d[ebp-56]			;;; i665
	jmp	end.func4.fs			;;; i258
;
; [113] ELSE
	jmp	end.if.000B.fs			;;; i107
else.000B.fs:
;
; [114] ReleaseSemaphore (#hsmDllStore,1,NULL)
	push	[ebp-40]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [115] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func4.fs			;;; i258
;
; [116] END IF
end.if.000B.fs:
;
; [117] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.freeP2P.fs:  ;;; Function end label for Assembly Programmers.
end.func4.fs:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  freeP2P ()  *****
;  *****
;
; [119] FUNCTION LoadDLLInst (TP2PADRH hdll)
.code
;
#ifdef LoadDLLInst.hdll
#undef LoadDLLInst.hdll
#endif
#define LoadDLLInst.hdll ebp+8	; exposes function argument 'hdll'
;
align 16
_LoadDLLInst.fs@4:
;  *****
;  *****  FUNCTION  LoadDLLInst ()  *****
;  *****
func5.fs:
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
funcBody5.fs:
;
; [120] SHARED TP2PADRH DLL[]
;
; [121] FUNCADDR Startup()
#ifdef LoadDLLInst.Startup
#undef LoadDLLInst.Startup
#endif
#define LoadDLLInst.Startup ebp-40	; exposes local variable 'Startup'
;
;
; [124] newhDllIndex()
	call	func8.fs			;;; i619
;
; [125] DLL[i].hLib = newhLibDLL(i)
#ifdef LoadDLLInst.i
#undef LoadDLLInst.i
#endif
#define LoadDLLInst.i ebp-44	; exposes local variable 'i'
;
	push	[ebp-44]			;;; i674a
	call	func7.fs			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx],eax			;;; i13b
;
; [127] IFZ DLL[i].hLib THEN RETURN 0
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	test	eax,eax			;;; i194
	jnz	>> else.000C.fs			;;; i195
	mov	eax,0			;;; i659
	jmp	end.func5.fs			;;; i258
else.000C.fs:
end.if.000C.fs:
;
; [129] DLL[i].pListen	 = GetProcAddress (DLL[i].hLib,&"FileListen")
;
; [0] EXTERNAL FUNCTION GetProcAddress (hModule, lpProcName)
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
; .xstk5.0000 = ebp-52	; internal variable
	mov	d[ebp-52],eax			;;; i670
	mov	eax,addr @_string.006A.fs			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+9],eax			;;; i13b
;
; [130] DLL[i].pFileDn	 = GetProcAddress (DLL[i].hLib,&"FileDownload")
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
	mov	eax,addr @_string.006B.fs			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+13],eax			;;; i13b
;
; [131] DLL[i].pFileUp	 = GetProcAddress (DLL[i].hLib,&"FileUpload")
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
	mov	eax,addr @_string.006C.fs			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+17],eax			;;; i13b
;
; [132] DLL[i].pGetAdler = GetProcAddress (DLL[i].hLib,&"GetAdler32")
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
	mov	eax,addr @_string.006D.fs			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+21],eax			;;; i13b
;
; [133] DLL[i].pCleanup  = GetProcAddress (DLL[i].hLib,&"Cleanup")
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
	mov	eax,addr @_string.006E.fs			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+29],eax			;;; i13b
;
; [134] DLL[i].pStartup  = GetProcAddress (DLL[i].hLib,&"Startup")
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
	mov	eax,addr @_string.006F.fs			;;; i642
	push	eax			;;; i667a
	push	[ebp-52]			;;; i674a
	call	_GetProcAddress@8			;;; i619
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+25],eax			;;; i13b
;
; [136] IF DLL[i].pStartup && DLL[i].pCleanup && DLL[i].pGetAdler && DLL[i].pFileUp && DLL[i].pFileDn && DLL[i].pListen THEN
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+25]			;;; i313b
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	ebx,d[ebx+29]			;;; i313b
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	ebx,d[ebx+21]			;;; i313b
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	ebx,d[ebx+17]			;;; i313b
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	ebx,d[ebx+13]			;;; i313b
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	ebx,d[ebx+9]			;;; i313b
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i220
	jz	>> else.000D.fs			;;; i221
;
; [137] DLL[i].index = i
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[ebp-44]			;;; i665
	mov	d[eax+5],ebx			;;; i13b
;
; [138] DLL[i].inuse = 1
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,1			;;; i659
	mov	b[eax+4],bl			;;; i13b
;
; [139] hdll = DLL[i]
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,d[ebp+8]			;;; i665
	mov	edi,ebx			;;; i14a
	mov	esi,eax			;;; i7
	mov	ecx,33			;;; i1
	call	%_AssignComposite			;;; i2
;
; [140] Startup = DLL[i].pStartup
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax+25]			;;; i313b
	mov	d[ebp-40],eax			;;; i670
;
; [141] @Startup()
	mov	eax,d[ebp-40]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.19			;;; i604
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp-52]			;;; i665
	call	eax			;;; i620
A.19:
;
; [142] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func5.fs			;;; i258
;
; [143] ELSE
	jmp	end.if.000D.fs			;;; i107
else.000D.fs:
;
; [144] FreeLibrary (DLL[i].hLib)
;
; [0] EXTERNAL FUNCTION FreeLibrary (hLibModule)
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	push	eax			;;; i667a
	call	_FreeLibrary@4			;;; i619
;
; [145] DLL[i].hLib = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [146] DLL[i].inuse = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	b[eax+4],bl			;;; i13b
;
; [147] DLL[i].index = -1
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-44]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+5],eax			;;; i13b
;
; [148] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func5.fs			;;; i258
;
; [149] END IF
end.if.000D.fs:
;
; [151] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.LoadDLLInst.fs:  ;;; Function end label for Assembly Programmers.
end.func5.fs:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  LoadDLLInst ()  *****
;  *****
;
; [153] FUNCTION FreeDLLInst (TP2PADRH lah)
.code
;
#ifdef FreeDLLInst.lah
#undef FreeDLLInst.lah
#endif
#define FreeDLLInst.lah ebp+8	; exposes function argument 'lah'
;
align 16
_FreeDLLInst.fs@4:
;  *****
;  *****  FUNCTION  FreeDLLInst ()  *****
;  *****
func6.fs:
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
funcBody6.fs:
;
; [154] SHARED TP2PADRH DLL[]
;
; [155] FUNCADDR destroy()
#ifdef FreeDLLInst.destroy
#undef FreeDLLInst.destroy
#endif
#define FreeDLLInst.destroy ebp-40	; exposes local variable 'destroy'
;
;
; [158] IF lah.hLib && lah.pCleanup THEN
	mov	eax,d[ebp+8]			;;; i665
	mov	eax,d[eax]			;;; i313b
	mov	ebx,d[ebp+8]			;;; i665
	mov	ebx,d[ebx+29]			;;; i313b
	neg	eax			;;; i745
	rcr	eax,1			;;; i746
	sar	eax,31			;;; i747
	mov	edx,ebx			;;; i748
	neg	edx			;;; i749
	rcr	edx,1			;;; i750
	sar	edx,31			;;; i751
	and	eax,edx			;;; i752
	test	eax,eax			;;; i220
	jz	>> else.000E.fs			;;; i221
;
; [159] destroy = lah.pCleanup
	mov	eax,d[ebp+8]			;;; i665
	mov	eax,d[eax+29]			;;; i313b
	mov	d[ebp-40],eax			;;; i670
;
; [160] @destroy()
	mov	eax,d[ebp-40]			;;; i665
	xor	edx,edx			;;; i602
	test	eax,eax			;;; i603
	jz	>> A.23			;;; i604
; .xstk6.0000 = ebp-48	; internal variable
	mov	d[ebp-48],eax			;;; i670
	mov	eax,d[ebp-48]			;;; i665
	call	eax			;;; i620
A.23:
;
; [161] FreeLibrary (lah.hLib)
	mov	eax,d[ebp+8]			;;; i665
	mov	eax,d[eax]			;;; i313b
	push	eax			;;; i667a
	call	_FreeLibrary@4			;;; i619
;
; [162] ELSE
	jmp	end.if.000E.fs			;;; i107
else.000E.fs:
;
; [163] RETURN 0
	mov	eax,0			;;; i659
	jmp	end.func6.fs			;;; i258
;
; [164] END IF
end.if.000E.fs:
;
; [166] i = lah.index
#ifdef FreeDLLInst.i
#undef FreeDLLInst.i
#endif
#define FreeDLLInst.i ebp-52	; exposes local variable 'i'
;
	mov	eax,d[ebp+8]			;;; i665
	mov	eax,d[eax+5]			;;; i313b
	mov	d[ebp-52],eax			;;; i670
;
; [167] DLL[i].hLib = 0
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	ebx,0			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [168] DLL[i].index = -1
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp-52]			;;; i665
	mov	ecx,d[%%%DLL.fs]			;;; i663a
	imul	ebx,33			;;; i465a
	lea	ebx,[ecx+ebx]			;;; i464
	mov	d[ebx+5],eax			;;; i13b
;
; [170] lah.hLib = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax],ebx			;;; i13b
;
; [171] lah.pListen = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+9],ebx			;;; i13b
;
; [172] lah.pFileDn = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+13],ebx			;;; i13b
;
; [173] lah.pFileUp = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+17],ebx			;;; i13b
;
; [174] lah.pGetAdler = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+21],ebx			;;; i13b
;
; [175] lah.pCleanup = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	d[eax+29],ebx			;;; i13b
;
; [176] lah.index = -1
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	mov	ebx,d[ebp+8]			;;; i665
	mov	d[ebx+5],eax			;;; i13b
;
; [177] lah.inuse = 0
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,0			;;; i659
	mov	b[eax+4],bl			;;; i13b
;
; [178] RETURN 1
	mov	eax,1			;;; i659
	jmp	end.func6.fs			;;; i258
;
; [179] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FreeDLLInst.fs:  ;;; Function end label for Assembly Programmers.
end.func6.fs:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
;-peep
;  *****
;  *****  END FUNCTION  FreeDLLInst ()  *****
;  *****
;
; [181] FUNCTION FSshutdown()
.code
align 16
_FSshutdown@0:
;  *****
;  *****  FUNCTION  FSshutdown ()  *****
;  *****
func2.fs:
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
A.31:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.31			;;; .....
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
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.32:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.32			;;; .....
	push	eax				;;; ......
;	#### End Composite Initialization Code ####
;
	lea	eax,[esp]			;;; i125
	mov	d[ebp-52],eax			;;; i670
funcBody2.fs:
;
; [182] SHARED TP2PADRH DLL[]
;
; [183] SHARED SHUTDOWN
;
; [185] WaitForSingleObject (#hsmDllStore,1000)
	push	1000			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_WaitForSingleObject@8			;;; i619
;
; [186] SHUTDOWN = 0xFFFF
	mov	eax,65535			;;; i659
	mov	d[%SHUTDOWN.fs],eax			;;; i668
;
; [187] FOR i = 0 TO UBOUND(DLL[])
#ifdef FSshutdown.i
#undef FSshutdown.i
#endif
#define FSshutdown.i ebp-40	; exposes local variable 'i'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
	mov	eax,d[%%%DLL.fs]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.27			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.27:
	dec	eax			;;; i596
; .forlimit2.000F = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
align 8
for.000F.fs:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.000F.fs			;;; i154
;
; [188] FreeDLLInst (DLL[i])
	mov	eax,d[ebp-40]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
; .composites = ebp-48	; internal variable
; .compositeArg.0 = ebp-52	; internal variable
	mov	edi,d[ebp-52]			;;; i665
	mov	esi,eax			;;; i660
	mov	ecx,33			;;; i606a
	mov	eax,edi			;;; i606b
	call	%_assignComposite			;;; i607
	push	eax			;;; i667a
	call	func6.fs			;;; i619
;
; [189] NEXT i
do.next.000F.fs:
	inc	d[ebp-40]			;;; i229
	jmp	for.000F.fs			;;; i231
end.for.000F.fs:
;
; [190] ReleaseSemaphore (#hsmDllStore,1,NULL)
#ifdef FSshutdown.NULL
#undef FSshutdown.NULL
#endif
#define FSshutdown.NULL ebp-56	; exposes local variable 'NULL'
;
	push	[ebp-56]			;;; i674a
	push	1			;;; i656a
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_ReleaseSemaphore@12			;;; i619
;
; [191] CloseHandle (#hsmDllStore): #hsmDllStore = 0
;
; [0] EXTERNAL FUNCTION CloseHandle (hObject)
	push	[%#hsmDllStore.fs]			;;; i672a
	call	_CloseHandle@4			;;; i619
	mov	eax,0			;;; i659
	mov	d[%#hsmDllStore.fs],eax			;;; i668
;
; [192] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.FSshutdown.fs:  ;;; Function end label for Assembly Programmers.
end.func2.fs:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  FSshutdown ()  *****
;  *****
;
; [194] FUNCTION newhLibDLL (i)
.code
;
#ifdef newhLibDLL.i
#undef newhLibDLL.i
#endif
#define newhLibDLL.i ebp+8	; exposes function argument 'i'
;
align 16
_newhLibDLL.fs@4:
;  *****
;  *****  FUNCTION  newhLibDLL ()  *****
;  *****
func7.fs:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.func7.fs
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
	dec	ecx					;;; ....
	jnz	< A.35			;;; .....
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
funcBody7.fs:
;
; [195] STRING dllfilename,name
#ifdef newhLibDLL.dllfilename
#undef newhLibDLL.dllfilename
#endif
#define newhLibDLL.dllfilename ebp-40	; exposes local variable 'dllfilename'
;
#ifdef newhLibDLL.name
#undef newhLibDLL.name
#endif
#define newhLibDLL.name ebp-44	; exposes local variable 'name'
;
;
; [196] SHARED STRING path
;
; [198] '	dllfilename = NULL$(512)
;
; [199] '	name = "p2p"+STRING$(i)
;
; [200] '	GetTempFileNameA (&".",&name,1,&dllfilename)
;
; [202] dllfilename = path + $$mp2p_name + STRING$(i)+ $$mp2p_ext
	mov	eax,[%path.fs]			;;; i663a
	mov	ebx,addr @_string.091E.fs			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
; .xstk7.0000 = ebp-52	; internal variable
	mov	[ebp-52],eax			;;; i670
	sub	esp,64			;;; i487
	mov	eax,d[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	call	%_string.xlong			;;; i576
	add	esp,64			;;; i600
	mov	ebx,[ebp-52]			;;; i665
	push	ebx			;;; i781
	push	eax			;;; i781a
	push	6			;;; i781g
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.091F.fs			;;; i663
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
; [203] name = path + $$mp2p_name + $$mp2p_ext
	mov	eax,[%path.fs]			;;; i663a
	mov	ebx,addr @_string.091E.fs			;;; i663
	push	eax			;;; i781b
	push	ebx			;;; i781c
	push	0			;;; i781d
	call	main.concat			;;; i782
	add	esp,12			;;; i782a
	mov	ebx,addr @_string.091F.fs			;;; i663
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
; [204] CopyFileA (&name, &dllfilename, 0)
;
; [0] EXTERNAL FUNCTION CopyFileA (lpExistingFileName, lpNewFileName, bFailIfExists)
	mov	eax,d[ebp-44]			;;; i642
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp-40]			;;; i642
; .xstk7.0001 = ebp-60	; internal variable
	mov	d[ebp-60],eax			;;; i670
	push	0			;;; i656a
	push	[ebp-60]			;;; i674a
	push	[ebp-52]			;;; i674a
	call	_CopyFileA@12			;;; i619
;
; [205] RETURN LoadLibraryA(&dllfilename)
;
; [0] EXTERNAL FUNCTION LoadLibraryA (lpLibFileName)
	mov	eax,d[ebp-40]			;;; i642
	push	eax			;;; i667a
	call	_LoadLibraryA@4			;;; i619
	jmp	end.func7.fs			;;; i258
;
; [206] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.newhLibDLL.fs:  ;;; Function end label for Assembly Programmers.
end.func7.fs:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.func7.fs
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	4			;;; i111a
free.func7.fs:
	mov	esi,[ebp-44]			;;; i665
	call	%____free			;;; i423
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  newhLibDLL ()  *****
;  *****
;
; [208] FUNCTION newhDllIndex()
.code
align 16
_newhDllIndex.fs@0:
;  *****
;  *****  FUNCTION  newhDllIndex ()  *****
;  *****
func8.fs:
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
funcBody8.fs:
;
; [209] SHARED TP2PADRH DLL[]
;
; [212] FOR i = 0 TO UBOUND(DLL[])
#ifdef newhDllIndex.i
#undef newhDllIndex.i
#endif
#define newhDllIndex.i ebp-40	; exposes local variable 'i'
;
	mov	eax,0			;;; i659
	mov	d[ebp-40],eax			;;; i670
	mov	eax,d[%%%DLL.fs]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.36			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.36:
	dec	eax			;;; i596
; .forlimit8.0010 = ebp-44	; internal variable
	mov	d[ebp-44],eax			;;; i670
align 8
for.0010.fs:
	mov	eax,d[ebp-40]			;;; i665
	mov	ebx,d[ebp-44]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0010.fs			;;; i154
;
; [213] 'IF DLL[i].hLib && !DLL[i].inuse THEN RETURN i
;
; [214] IFZ DLL[i].hLib THEN RETURN i
	mov	eax,d[ebp-40]			;;; i665
	mov	edx,d[%%%DLL.fs]			;;; i663a
	imul	eax,33			;;; i465a
	lea	eax,[edx+eax]			;;; i464
	mov	eax,d[eax]			;;; i313b
	test	eax,eax			;;; i194
	jnz	>> else.0011.fs			;;; i195
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.func8.fs			;;; i258
else.0011.fs:
end.if.0011.fs:
;
; [215] NEXT i
do.next.0010.fs:
	inc	d[ebp-40]			;;; i229
	jmp	for.0010.fs			;;; i231
end.for.0010.fs:
;
; [217] i = UBOUND(DLL[])+1
	mov	eax,d[%%%DLL.fs]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.38			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.38:
	dec	eax			;;; i596
	add	eax,1			;;; i775
	mov	d[ebp-40],eax			;;; i670
;
; [218] REDIM DLL[i+5]
	sub	esp,64			;;; i430
	mov	eax,d[ebp-40]			;;; i665
	add	eax,5			;;; i775
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%DLL.fs]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1068302303			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_RedimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%DLL.fs],eax			;;; i668
;
; [219] RETURN i
	mov	eax,d[ebp-40]			;;; i665
	jmp	end.func8.fs			;;; i258
;
; [220] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.newhDllIndex.fs:  ;;; Function end label for Assembly Programmers.
end.func8.fs:
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret						;;; i111d
;-peep
;  *****
;  *****  END FUNCTION  newhDllIndex ()  *****
;  *****
;
; [222] FUNCTION getLastSlash(str$, stop)
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
_getLastSlash.fs@8:
;  *****
;  *****  FUNCTION  getLastSlash ()  *****
;  *****
func9.fs:
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
funcBody9.fs:
;
; [223] $PathSlash$   = "\\"
;
; [226] IF stop < 0 THEN
	mov	eax,d[ebp+12]			;;; i665
	cmp	eax,0			;;; i684a
	jge	>> else.0012.fs			;;; i219
;
; [227] slash1 = RINSTR(str$, "/")
#ifdef getLastSlash.slash1
#undef getLastSlash.slash1
#endif
#define getLastSlash.slash1 ebp-40	; exposes local variable 'slash1'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0087.fs			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [228] slash2 = RINSTR(str$, $PathSlash$)
#ifdef getLastSlash.slash2
#undef getLastSlash.slash2
#endif
#define getLastSlash.slash2 ebp-44	; exposes local variable 'slash2'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0052.fs			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [229] ELSE
	jmp	end.if.0012.fs			;;; i107
else.0012.fs:
;
; [230] slash1 = RINSTR(str$, "/", stop)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0087.fs			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+8],eax			;;; i887
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-40],eax			;;; i670
;
; [231] slash2 = RINSTR(str$, $PathSlash$, stop)
	sub	esp,64			;;; i487
	mov	eax,[ebp+8]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0052.fs			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	eax,d[ebp+12]			;;; i665
	mov	d[esp+8],eax			;;; i887
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [232] END IF
end.if.0012.fs:
;
; [233] IFZ slash1 THEN
	mov	eax,d[ebp-40]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0013.fs			;;; i195
;
; [234] RETURN slash2
	mov	eax,d[ebp-44]			;;; i665
	jmp	end.func9.fs			;;; i258
;
; [235] ELSE
	jmp	end.if.0013.fs			;;; i107
else.0013.fs:
;
; [236] RETURN MAX(slash1, slash2)
	sub	esp,64			;;; i487
	mov	eax,d[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,d[ebp-44]			;;; i665
	mov	d[esp+4],eax			;;; i887
	call	%_MAX.xlong
	add	esp,64			;;; i600
	jmp	end.func9.fs			;;; i258
;
; [237] END IF
end.if.0013.fs:
;
; [239] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.getLastSlash.fs:  ;;; Function end label for Assembly Programmers.
end.func9.fs:
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
; [241] FUNCTION DecomposePathname (pathname$, @path$, @parent$, @filename$, @file$, @extent$)
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
_DecomposePathname.fs@24:
;  *****
;  *****  FUNCTION  DecomposePathname ()  *****
;  *****
funcB.fs:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.funcB.fs
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.47:
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.47			;;; .....
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
funcBodyB.fs:
;
; [242] '
;
; [243] path$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+12]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [244] file$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [245] extent$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+28]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [246] parent$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+16]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [247] filename$ = ""
	xor	eax,eax			;;; i3
	lea	ebx,[ebp+20]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [248] name$ = TRIM$ (pathname$)
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
; [249] dot = RINSTR (name$, ".")
#ifdef DecomposePathname.dot
#undef DecomposePathname.dot
#endif
#define DecomposePathname.dot ebp-44	; exposes local variable 'dot'
;
	sub	esp,64			;;; i487
	mov	eax,[ebp-40]			;;; i665
	mov	d[esp],eax			;;; i887
	mov	eax,addr @_string.0091.fs			;;; i663
	mov	d[esp+4],eax			;;; i887
	mov	d[esp+8],0			;;; i571
	call	%_rinstr.vv			;;; i572
	add	esp,64			;;; i600
	mov	d[ebp-44],eax			;;; i670
;
; [250] slash = getLastSlash(name$, -1)
#ifdef DecomposePathname.slash
#undef DecomposePathname.slash
#endif
#define DecomposePathname.slash ebp-48	; exposes local variable 'slash'
;
	mov	eax,d[ebp-40]			;;; i665
	call	%_clone.a0			;;; i634
; .xstkB.0000 = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
	mov	eax,1			;;; i659
	neg	eax			;;; i916
	push	eax			;;; i667a
	push	[ebp-56]			;;; i674a
	call	func9.fs			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-48],eax			;;; i670
;
; [252] IF slash THEN preslash = getLastSlash(name$, slash-1)
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0014.fs			;;; i221
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
	call	func9.fs			;;; i619
	sub	esp,8			;;; xnt1i
	mov	esi,d[esp]			;;; i871
	call	%____free			;;; i872
	add	esp,8			;;; i633
	mov	d[ebp-60],eax			;;; i670
else.0014.fs:
end.if.0014.fs:
;
; [253] IF (dot < slash) THEN dot = 0
	mov	eax,d[ebp-44]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jge	>> else.0015.fs			;;; i219
	mov	eax,0			;;; i659
	mov	d[ebp-44],eax			;;; i670
else.0015.fs:
end.if.0015.fs:
;
; [254] '
;
; [255] filename$ = MID$ (name$, slash+1)
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
; [256] IFZ dot THEN
	mov	eax,d[ebp-44]			;;; i665
	test	eax,eax			;;; i194
	jnz	>> else.0016.fs			;;; i195
;
; [257] file$ = filename$
	mov	eax,[ebp+20]			;;; i665
	call	%_clone.a0			;;; i3a
	lea	ebx,[ebp+24]			;;; i5
	mov	esi,d[ebx]			;;; i6a
	mov	d[ebx],eax			;;; i6b
	call	%____free			;;; i6c
;
; [258] ELSE
	jmp	end.if.0016.fs			;;; i107
else.0016.fs:
;
; [259] file$ = MID$ (name$, slash+1, dot-slash-1)
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
; [260] extent$ = MID$ (name$, dot)
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
; [261] END IF
end.if.0016.fs:
;
; [262] '
;
; [263] IF slash THEN
	mov	eax,d[ebp-48]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0017.fs			;;; i221
;
; [264] path$ = LEFT$ (name$, slash-1)
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
; [265] IF preslash THEN
	mov	eax,d[ebp-60]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.0018.fs			;;; i221
;
; [266] parent$ = MID$ (name$, preslash+1, slash-preslash-1)
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
; [267] ELSE
	jmp	end.if.0018.fs			;;; i107
else.0018.fs:
;
; [268] parent$ = LEFT$ (name$, slash-1)
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
; [269] END IF
end.if.0018.fs:
;
; [270] END IF
else.0017.fs:
end.if.0017.fs:
;
; [272] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.DecomposePathname.fs:  ;;; Function end label for Assembly Programmers.
end.funcB.fs:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.funcB.fs
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	24			;;; i111a
free.funcB.fs:
	mov	esi,[ebp-40]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  DecomposePathname ()  *****
;  *****
;
; [274] FUNCTION GetCommandLineArguments (argc, argv$[])
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
_GetCommandLineArguments.fs@8:
;  *****
;  *****  FUNCTION  GetCommandLineArguments ()  *****
;  *****
funcA.fs:
	push	ebp			;;; i112
	mov	ebp,esp		;;; i113
	sub	esp,8			;;; i114
	push	esi			;;; save esi
	push	edi			;;; save edi
	push	ebx			;;; save ebx
  push addr free.funcA.fs
  push ebp
  push addr _XxxUnwinder
  fs push [0]
  fs mov [0],esp  ;;; install unwind handler
;
;	#### Begin Local Initialization Code ####
	mov	ecx,2				;;; ..
	xor	eax,eax			;;; ...
A.56:
	push	eax, eax, eax, eax
	push	eax, eax, eax, eax
	dec	ecx					;;; ....
	jnz	< A.56			;;; .....
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
funcBodyA.fs:
;
; [275] SHARED  setarg
data section 'globals$shared'
align	4
%setarg.fs:	db 4 dup ?
.code
;
; [276] SHARED  setargc
data section 'globals$shared'
align	4
%setargc.fs:	db 4 dup ?
.code
;
; [277] SHARED  setargv$[]
data section 'globals$shared'
align	4
%%%setargv$.fs:	db 4 dup ?
.code
;
; [280] DIM argv$[]
	sub	esp,64			;;; i430
	mov	esi,d[ebp+12]			;;; i665
	call	%_FreeArray			;;; i431
	mov	esi,0			;;; i666
	mov	d[ebp+12],esi			;;; i670
	add	esp,64
;
; [281] inc = argc
#ifdef GetCommandLineArguments.inc
#undef GetCommandLineArguments.inc
#endif
#define GetCommandLineArguments.inc ebp-40	; exposes local variable 'inc'
;
	mov	eax,d[ebp+8]			;;; i665
	mov	d[ebp-40],eax			;;; i670
;
; [282] argc = 0
	mov	eax,0			;;; i659
	mov	d[ebp+8],eax			;;; i670
;
; [283] '
;
; [284] ' return already set argc and argv$[]
;
; [285] '
;
; [286] IF (inc >= 0) THEN
	mov	eax,d[ebp-40]			;;; i665
	cmp	eax,0			;;; i684a
	jl	>> else.0019.fs			;;; i219
;
; [287] IF setarg THEN
	mov	eax,d[%setarg.fs]			;;; i663a
	test	eax,eax			;;; i220
	jz	>> else.001A.fs			;;; i221
;
; [288] argc = setargc
	mov	eax,d[%setargc.fs]			;;; i663a
	mov	d[ebp+8],eax			;;; i670
;
; [289] upper = UBOUND (setargv$[])
#ifdef GetCommandLineArguments.upper
#undef GetCommandLineArguments.upper
#endif
#define GetCommandLineArguments.upper ebp-44	; exposes local variable 'upper'
;
	mov	eax,d[%%%setargv$.fs]			;;; i663a
	test	eax,eax			;;; i593
	jz	> A.48			;;; i594
	mov	eax,d[eax-8]			;;; i595
A.48:
	dec	eax			;;; i596
	mov	d[ebp-44],eax			;;; i670
;
; [290] ucount = upper + 1
#ifdef GetCommandLineArguments.ucount
#undef GetCommandLineArguments.ucount
#endif
#define GetCommandLineArguments.ucount ebp-48	; exposes local variable 'ucount'
;
	mov	eax,d[ebp-44]			;;; i665
	add	eax,1			;;; i775
	mov	d[ebp-48],eax			;;; i670
;
; [291] IF (argc > ucount) THEN argc = ucount
	mov	eax,d[ebp+8]			;;; i665
	mov	ebx,d[ebp-48]			;;; i665
	cmp	eax,ebx			;;; i684a
	jle	>> else.001B.fs			;;; i219
	mov	eax,d[ebp-48]			;;; i665
	mov	d[ebp+8],eax			;;; i670
else.001B.fs:
end.if.001B.fs:
;
; [292] IF argc THEN
	mov	eax,d[ebp+8]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.001C.fs			;;; i221
;
; [293] DIM argv$[upper]
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
; [294] FOR i = 0 TO upper
#ifdef GetCommandLineArguments.i
#undef GetCommandLineArguments.i
#endif
#define GetCommandLineArguments.i ebp-52	; exposes local variable 'i'
;
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp-44]			;;; i665
; .forlimitA.001D = ebp-56	; internal variable
	mov	d[ebp-56],eax			;;; i670
align 8
for.001D.fs:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-56]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.001D.fs			;;; i154
;
; [295] argv$[i] = setargv$[i]
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[%%%setargv$.fs]			;;; i663a
	mov	eax,[edx+eax*4]			;;; i464
	call	%_clone.a0			;;; i21
	mov	ebx,d[ebp-52]			;;; i665
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	esi,d[ebx]			;;; i26
	mov	d[ebx],eax			;;; i27
	call	%____free			;;; i28
;
; [296] NEXT i
do.next.001D.fs:
	inc	d[ebp-52]			;;; i229
	jmp	for.001D.fs			;;; i231
end.for.001D.fs:
;
; [297] END IF
else.001C.fs:
end.if.001C.fs:
;
; [298] RETURN ($$FALSE)
	mov	eax,0			;;; i659
	jmp	end.funcA.fs			;;; i258
;
; [299] END IF
else.001A.fs:
end.if.001A.fs:
;
; [300] END IF
else.0019.fs:
end.if.0019.fs:
;
; [301] '
;
; [302] ' get original command line arguments from system
;
; [303] '
;
; [304] argc = 0
	mov	eax,0			;;; i659
	mov	d[ebp+8],eax			;;; i670
;
; [305] index = 0
#ifdef GetCommandLineArguments.index
#undef GetCommandLineArguments.index
#endif
#define GetCommandLineArguments.index ebp-60	; exposes local variable 'index'
;
	mov	eax,0			;;; i659
	mov	d[ebp-60],eax			;;; i670
;
; [306] DIM argv$[]
	sub	esp,64			;;; i430
	mov	esi,d[ebp+12]			;;; i665
	call	%_FreeArray			;;; i431
	mov	esi,0			;;; i666
	mov	d[ebp+12],esi			;;; i670
	add	esp,64
;
; [307] addr = GetCommandLineA()' address of full command line
#ifdef GetCommandLineArguments.addr
#undef GetCommandLineArguments.addr
#endif
#define GetCommandLineArguments.addr ebp-64	; exposes local variable 'addr'
;
;
; [0] EXTERNAL FUNCTION GetCommandLineA ()
	call	_GetCommandLineA@0			;;; i619
	mov	d[ebp-64],eax			;;; i670
;
; [308] line$ = CSTRING$(addr)
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
; [310] '	PRINT "cmd line",line$
;
; [311] '
;
; [312] done = 0
#ifdef GetCommandLineArguments.done
#undef GetCommandLineArguments.done
#endif
#define GetCommandLineArguments.done ebp-72	; exposes local variable 'done'
;
	mov	eax,0			;;; i659
	mov	d[ebp-72],eax			;;; i670
;
; [313] IF addr THEN
	mov	eax,d[ebp-64]			;;; i665
	test	eax,eax			;;; i220
	jz	>> else.001E.fs			;;; i221
;
; [314] DIM argv$[1023]
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
; [315] quote = $$FALSE
#ifdef GetCommandLineArguments.quote
#undef GetCommandLineArguments.quote
#endif
#define GetCommandLineArguments.quote ebp-76	; exposes local variable 'quote'
;
	mov	eax,0			;;; i659
	mov	d[ebp-76],eax			;;; i670
;
; [316] argc = 0
	mov	eax,0			;;; i659
	mov	d[ebp+8],eax			;;; i670
;
; [317] empty = $$FALSE
#ifdef GetCommandLineArguments.empty
#undef GetCommandLineArguments.empty
#endif
#define GetCommandLineArguments.empty ebp-80	; exposes local variable 'empty'
;
	mov	eax,0			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [318] I = 0
#ifdef GetCommandLineArguments.I
#undef GetCommandLineArguments.I
#endif
#define GetCommandLineArguments.I ebp-84	; exposes local variable 'I'
;
	mov	eax,0			;;; i659
	mov	d[ebp-84],eax			;;; i670
;
; [319] DO
align 8
do.001F.fs:
;
; [320] cha = UBYTEAT(addr, I)
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
; [321] IF (cha < ' ') THEN EXIT DO
	mov	eax,d[ebp-88]			;;; i665
	cmp	eax,32			;;; i684a
	jge	>> else.0020.fs			;;; i219
	jmp	end.do.001F.fs			;;; i144
else.0020.fs:
end.if.0020.fs:
;
; [323] IF (cha = ' ') AND NOT quote THEN
	mov	eax,d[ebp-88]			;;; i665
	cmp	eax,32			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.50			;;; i467
	not	eax			;;; i468
A.50:
;+peep
	mov	ebx,d[ebp-76]			;;; i665
	not	ebx			;;; i923
	and	eax,ebx			;;; i769
	test	eax,eax			;;; i220
	jz	>> else.0021.fs			;;; i221
;
; [324] IF NOT empty THEN
	mov	eax,d[ebp-80]			;;; i665
	not	eax			;;; i923
	test	eax,eax			;;; i220
	jz	>> else.0022.fs			;;; i221
;
; [325] INC argc
	inc	d[ebp+8]			;;; i84
;
; [326] argv$[argc] = ""
	xor	eax,eax			;;; i658
	call	%_clone.a0			;;; i21
	mov	ebx,d[ebp+8]			;;; i665
	mov	ecx,d[ebp+12]			;;; i665
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	esi,d[ebx]			;;; i26
	mov	d[ebx],eax			;;; i27
	call	%____free			;;; i28
;
; [327] empty = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [328] END IF
else.0022.fs:
end.if.0022.fs:
;
; [329] ELSE
	jmp	end.if.0021.fs			;;; i107
else.0021.fs:
;
; [330] IF (cha = '"') THEN
	mov	eax,d[ebp-88]			;;; i665
	cmp	eax,34			;;; i684a
	jne	>> else.0023.fs			;;; i219
;
; [331] quote = NOT quote
	mov	eax,d[ebp-76]			;;; i665
	not	eax			;;; i923
	mov	d[ebp-76],eax			;;; i670
;
; [332] ELSE
	jmp	end.if.0023.fs			;;; i107
else.0023.fs:
;
; [333] argv$[argc] = argv$[argc] + CHR$(cha)
	mov	eax,d[ebp+8]			;;; i665
	mov	edx,d[ebp+12]			;;; i665
	mov	eax,[edx+eax*4]			;;; i464
; .xstkA.0000 = ebp-96	; internal variable
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
; [334] empty = $$FALSE
	mov	eax,0			;;; i659
	mov	d[ebp-80],eax			;;; i670
;
; [335] END IF
end.if.0023.fs:
;
; [336] END IF
end.if.0021.fs:
;
; [337] INC I
	inc	d[ebp-84]			;;; i84
;
; [338] LOOP
do.loop.001F.fs:
	jmp	do.001F.fs			;;; i222
end.do.001F.fs:
;
; [339] IF NOT empty THEN
	mov	eax,d[ebp-80]			;;; i665
	not	eax			;;; i923
	test	eax,eax			;;; i220
	jz	>> else.0024.fs			;;; i221
;
; [340] argc = argc + 1
	mov	eax,d[ebp+8]			;;; i665
	add	eax,1			;;; i775
	mov	d[ebp+8],eax			;;; i670
;
; [341] END IF
else.0024.fs:
end.if.0024.fs:
;
; [342] REDIM argv$[argc-1]
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
; [344] END IF
else.001E.fs:
end.if.001E.fs:
;
; [345] '
;
; [346] ' if input argc < 0 THEN don't overwrite current values
;
; [347] '
;
; [348] IF ((setarg = $$FALSE) OR (inc >= 0)) THEN
	mov	eax,d[%setarg.fs]			;;; i663a
	cmp	eax,0			;;; i684a
;>peep
	mov	eax,0			;;; i466
	jne	> A.51			;;; i467
	not	eax			;;; i468
A.51:
;+peep
	mov	ebx,d[ebp-40]			;;; i665
	cmp	ebx,0			;;; i684a
;>peep
	mov	ebx,0			;;; i466
	jl	> A.52			;;; i467
	not	ebx			;;; i468
A.52:
;+peep
	or	eax,ebx			;;; i763
	test	eax,eax			;;; i220
	jz	>> else.0025.fs			;;; i221
;
; [349] setarg = $$TRUE
	mov	eax,-1			;;; i659
	mov	d[%setarg.fs],eax			;;; i668
;
; [350] setargc = argc
	mov	eax,d[ebp+8]			;;; i665
	mov	d[%setargc.fs],eax			;;; i668
;
; [351] DIM setargv$[]
	sub	esp,64			;;; i430
	mov	esi,d[%%%setargv$.fs]			;;; i663a
	call	%_FreeArray			;;; i431
	mov	esi,0			;;; i666
	mov	d[%%%setargv$.fs],esi			;;; i668
	add	esp,64
;
; [352] IF (argc > 0) THEN
	mov	eax,d[ebp+8]			;;; i665
	cmp	eax,0			;;; i684a
	jle	>> else.0026.fs			;;; i219
;
; [353] DIM setargv$[argc-1]
	sub	esp,64			;;; i430
	mov	eax,d[ebp+8]			;;; i665
	sub	eax,1			;;; i791
	mov	d[esp+16],eax			;;; i432
	mov	esi,d[%%%setargv$.fs]			;;; i663a
	mov	d[esp],esi			;;; i433
	mov	d[esp+4],1			;;; i434
	mov	d[esp+8],-1072496636			;;; i435
	mov	d[esp+12],0			;;; i436
	call	%_DimArray			;;; i437
	add	esp,64			;;; i438
	mov	d[%%%setargv$.fs],eax			;;; i668
;
; [354] FOR i = 0 TO argc-1
	mov	eax,0			;;; i659
	mov	d[ebp-52],eax			;;; i670
	mov	eax,d[ebp+8]			;;; i665
	sub	eax,1			;;; i791
; .forlimitA.0027 = ebp-100	; internal variable
	mov	d[ebp-100],eax			;;; i670
align 8
for.0027.fs:
	mov	eax,d[ebp-52]			;;; i665
	mov	ebx,d[ebp-100]			;;; i665
	cmp	eax,ebx			;;; i153
	jg	>> end.for.0027.fs			;;; i154
;
; [355] setargv$[i] = argv$[i]
	mov	eax,d[ebp-52]			;;; i665
	mov	edx,d[ebp+12]			;;; i665
	mov	eax,[edx+eax*4]			;;; i464
	call	%_clone.a0			;;; i21
	mov	ebx,d[ebp-52]			;;; i665
	mov	ecx,d[%%%setargv$.fs]			;;; i663a
	lea	ebx,[ecx+ebx*4]			;;; i464
	mov	esi,d[ebx]			;;; i26
	mov	d[ebx],eax			;;; i27
	call	%____free			;;; i28
;
; [356] NEXT i
do.next.0027.fs:
	inc	d[ebp-52]			;;; i229
	jmp	for.0027.fs			;;; i231
end.for.0027.fs:
;
; [357] END IF
else.0026.fs:
end.if.0026.fs:
;
; [358] END IF
else.0025.fs:
end.if.0025.fs:
;
; [360] END FUNCTION
	xor	eax,eax			;;; i862
align 8
end.GetCommandLineArguments.fs:  ;;; Function end label for Assembly Programmers.
end.funcA.fs:
  mov ebx,[ebp-36]
  fs mov [0],ebx       ;;; remove unwind handler
  call free.funcA.fs
	lea	esp,[ebp-20]				;;; i110
	pop	ebx				;;; restore ebx
	pop	edi				;;; restore edi
	pop	esi				;;; restore esi
	leave					;;; replaces 'mov esp,ebp' 'pop ebp'
	ret	8			;;; i111a
free.funcA.fs:
	mov	esi,[ebp-68]			;;; i665
	call	%____free			;;; i423
  ret
;-peep
;  *****
;  *****  END FUNCTION  GetCommandLineArguments ()  *****
;  *****
;
; [363] END PROGRAM
;<peep
end_program.fs:
	push	ebp			;;; i128
	mov	ebp,esp			;;; i129
	sub	esp,128			;;; i130
	mov	esi,d[%%%DLL.fs]			;;; i663a
	call	%_FreeArray			;;; i424
	mov	esi,[%path.fs]			;;; i663a
	call	%____free			;;; i423
	mov	esi,d[%%%setargv$.fs]			;;; i663a
	call	%_FreeArray			;;; i424
	mov	esp,ebp			;;; i132
	pop	ebp			;;; i133
	ret				;;; i134
;
InitSharedComposites.fs:
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
data section 'fs$aaaaa'
%_begin_external_data_fs dd ?
;
align 8
data section 'fs$zzzzz'
%_end_external_data_fs dd ?
;
;
;;;  *****  DEFINE LITERAL STRINGS  *****
.const
align 8
;
dd 24, 0, 2, 0x80130001
@_string.0029.fs:
db	"fs"
db	6 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.002A.fs:
db	"0.3"
db	5 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.002B.fs:
db	"xdll.xxx"
db	8 dup 0
;
dd 32, 0, 8, 0x80130001
@_string.002C.fs:
db	"kernel32"
db	8 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.002D.fs:
db	"p2pfiled.dec"
db	4 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0052.fs:
db	0x5C
db	7 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.006A.fs:
db	"FileListen"
db	6 dup 0
;
dd 32, 0, 12, 0x80130001
@_string.006B.fs:
db	"FileDownload"
db	4 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.006C.fs:
db	"FileUpload"
db	6 dup 0
;
dd 32, 0, 10, 0x80130001
@_string.006D.fs:
db	"GetAdler32"
db	6 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.006E.fs:
db	"Cleanup"
db	1 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.006F.fs:
db	"Startup"
db	1 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0087.fs:
db	"/"
db	7 dup 0
;
dd 24, 0, 1, 0x80130001
@_string.0091.fs:
db	"."
db	7 dup 0
;
dd 24, 0, 3, 0x80130001
@_string.090B.fs:
db	"KaM"
db	5 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.090D.fs:
db	"none"
db	4 dup 0
;
dd 32, 0, 9, 0x80130001
@_string.091D.fs:
db	"ijl15.dll"
db	7 dup 0
;
dd 24, 0, 7, 0x80130001
@_string.091E.fs:
db	"minip2p"
db	1 dup 0
;
dd 24, 0, 4, 0x80130001
@_string.091F.fs:
db	".dll"
db	4 dup 0
;
dd 32, 0, 15, 0x80130001
@_string.StartLibrary.fs:
db	"%_StartLibrary_"
db	1 dup 0
