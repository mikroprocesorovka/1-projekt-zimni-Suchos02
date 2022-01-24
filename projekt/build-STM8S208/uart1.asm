;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module uart1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _getchar
	.globl _putchar
	.globl _UART1_GetFlagStatus
	.globl _UART1_SendData8
	.globl _UART1_ReceiveData8
	.globl _UART1_Cmd
	.globl _UART1_Init
	.globl _UART1_DeInit
	.globl _init_uart1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Suart1$init_uart1$0 ==.
;	./src/uart1.c: 13: void init_uart1(void)
; genLabel
;	-----------------------------------------
;	 function init_uart1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init_uart1:
	Suart1$init_uart1$1 ==.
	Suart1$init_uart1$2 ==.
;	./src/uart1.c: 15: UART1_DeInit();
; genCall
	call	_UART1_DeInit
	Suart1$init_uart1$3 ==.
;	./src/uart1.c: 17: UART1_Init((uint32_t) 115200,       // - BaudRate = 115200 baud  
; genIPush
	push	#0x0c
	Suart1$init_uart1$4 ==.
; genIPush
	push	#0x80
	Suart1$init_uart1$5 ==.
; genIPush
	push	#0x00
	Suart1$init_uart1$6 ==.
; genIPush
	push	#0x00
	Suart1$init_uart1$7 ==.
; genIPush
	push	#0x00
	Suart1$init_uart1$8 ==.
; genIPush
	push	#0x00
	Suart1$init_uart1$9 ==.
	push	#0xc2
	Suart1$init_uart1$10 ==.
	push	#0x01
	Suart1$init_uart1$11 ==.
	push	#0x00
	Suart1$init_uart1$12 ==.
; genCall
	call	_UART1_Init
	addw	sp, #9
	Suart1$init_uart1$13 ==.
	Suart1$init_uart1$14 ==.
;	./src/uart1.c: 24: UART1_Cmd(ENABLE);
; genIPush
	push	#0x01
	Suart1$init_uart1$15 ==.
; genCall
	call	_UART1_Cmd
	pop	a
	Suart1$init_uart1$16 ==.
; genLabel
00101$:
	Suart1$init_uart1$17 ==.
;	./src/uart1.c: 25: }
; genEndFunction
	Suart1$init_uart1$18 ==.
	XG$init_uart1$0$0 ==.
	ret
	Suart1$init_uart1$19 ==.
	Suart1$putchar$20 ==.
;	./src/uart1.c: 28: PUTCHAR_PROTOTYPE {
; genLabel
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_putchar:
	Suart1$putchar$21 ==.
	Suart1$putchar$22 ==.
;	./src/uart1.c: 30: UART1_SendData8(c);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genIPush
	push	a
	Suart1$putchar$23 ==.
; genCall
	call	_UART1_SendData8
	pop	a
	Suart1$putchar$24 ==.
	Suart1$putchar$25 ==.
;	./src/uart1.c: 32: while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET){
; genLabel
00101$:
; genIPush
	push	#0x80
	Suart1$putchar$26 ==.
	push	#0x00
	Suart1$putchar$27 ==.
; genCall
	call	_UART1_GetFlagStatus
	popw	x
	Suart1$putchar$28 ==.
; genIfx
	tnz	a
	jrne	00116$
	jp	00101$
00116$:
	Suart1$putchar$29 ==.
;	./src/uart1.c: 35: return (c);
; genReturn
	ldw	x, (0x03, sp)
; genLabel
00104$:
	Suart1$putchar$30 ==.
;	./src/uart1.c: 36: }
; genEndFunction
	Suart1$putchar$31 ==.
	XG$putchar$0$0 ==.
	ret
	Suart1$putchar$32 ==.
	Suart1$getchar$33 ==.
;	./src/uart1.c: 43: GETCHAR_PROTOTYPE {
; genLabel
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_getchar:
	Suart1$getchar$34 ==.
	Suart1$getchar$35 ==.
;	./src/uart1.c: 50: while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET) {
; genLabel
00101$:
; genIPush
	push	#0x20
	Suart1$getchar$36 ==.
	push	#0x00
	Suart1$getchar$37 ==.
; genCall
	call	_UART1_GetFlagStatus
	popw	x
	Suart1$getchar$38 ==.
; genIfx
	tnz	a
	jrne	00116$
	jp	00101$
00116$:
	Suart1$getchar$39 ==.
;	./src/uart1.c: 53: c = UART1_ReceiveData8();
; genCall
	call	_UART1_ReceiveData8
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genAssign
	Suart1$getchar$40 ==.
;	./src/uart1.c: 54: return (c);
; genReturn
; genLabel
00104$:
	Suart1$getchar$41 ==.
;	./src/uart1.c: 55: }
; genEndFunction
	Suart1$getchar$42 ==.
	XG$getchar$0$0 ==.
	ret
	Suart1$getchar$43 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
	.db	0
	.ascii "C:\Program Files\SDCC\bin\..\include"
	.db	0
	.db	0
	.ascii "./src/uart1.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Suart1$init_uart1$0)
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Suart1$init_uart1$2-Suart1$init_uart1$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart1$init_uart1$3-Suart1$init_uart1$2
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart1$init_uart1$14-Suart1$init_uart1$3
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Suart1$init_uart1$17-Suart1$init_uart1$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Suart1$init_uart1$18-Suart1$init_uart1$17
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Suart1$putchar$20)
	.db	3
	.sleb128	27
	.db	1
	.db	9
	.dw	Suart1$putchar$22-Suart1$putchar$20
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart1$putchar$25-Suart1$putchar$22
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart1$putchar$29-Suart1$putchar$25
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Suart1$putchar$30-Suart1$putchar$29
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Suart1$putchar$31-Suart1$putchar$30
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Suart1$getchar$33)
	.db	3
	.sleb128	42
	.db	1
	.db	9
	.dw	Suart1$getchar$35-Suart1$getchar$33
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Suart1$getchar$39-Suart1$getchar$35
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Suart1$getchar$40-Suart1$getchar$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart1$getchar$41-Suart1$getchar$40
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Suart1$getchar$42-Suart1$getchar$41
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Suart1$getchar$38)
	.dw	0,(Suart1$getchar$43)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Suart1$getchar$37)
	.dw	0,(Suart1$getchar$38)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Suart1$getchar$36)
	.dw	0,(Suart1$getchar$37)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Suart1$getchar$34)
	.dw	0,(Suart1$getchar$36)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Suart1$putchar$28)
	.dw	0,(Suart1$putchar$32)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Suart1$putchar$27)
	.dw	0,(Suart1$putchar$28)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Suart1$putchar$26)
	.dw	0,(Suart1$putchar$27)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Suart1$putchar$24)
	.dw	0,(Suart1$putchar$26)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Suart1$putchar$23)
	.dw	0,(Suart1$putchar$24)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Suart1$putchar$21)
	.dw	0,(Suart1$putchar$23)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Suart1$init_uart1$16)
	.dw	0,(Suart1$init_uart1$19)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Suart1$init_uart1$15)
	.dw	0,(Suart1$init_uart1$16)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Suart1$init_uart1$13)
	.dw	0,(Suart1$init_uart1$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Suart1$init_uart1$12)
	.dw	0,(Suart1$init_uart1$13)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Suart1$init_uart1$11)
	.dw	0,(Suart1$init_uart1$12)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Suart1$init_uart1$10)
	.dw	0,(Suart1$init_uart1$11)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Suart1$init_uart1$9)
	.dw	0,(Suart1$init_uart1$10)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Suart1$init_uart1$8)
	.dw	0,(Suart1$init_uart1$9)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Suart1$init_uart1$7)
	.dw	0,(Suart1$init_uart1$8)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Suart1$init_uart1$6)
	.dw	0,(Suart1$init_uart1$7)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Suart1$init_uart1$5)
	.dw	0,(Suart1$init_uart1$6)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Suart1$init_uart1$4)
	.dw	0,(Suart1$init_uart1$5)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Suart1$init_uart1$1)
	.dw	0,(Suart1$init_uart1$4)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	6
	.uleb128	46
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "./src/uart1.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "init_uart1"
	.db	0
	.dw	0,(_init_uart1)
	.dw	0,(XG$init_uart1$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+136)
	.uleb128	3
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	4
	.dw	0,130
	.ascii "putchar"
	.db	0
	.dw	0,(_putchar)
	.dw	0,(XG$putchar$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+56)
	.dw	0,82
	.uleb128	5
	.db	2
	.db	145
	.sleb128	2
	.ascii "c"
	.db	0
	.dw	0,82
	.uleb128	0
	.uleb128	6
	.ascii "getchar"
	.db	0
	.dw	0,(_getchar)
	.dw	0,(XG$getchar$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,82
	.uleb128	7
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "c"
	.db	0
	.dw	0,82
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,57
	.ascii "init_uart1"
	.db	0
	.dw	0,89
	.ascii "putchar"
	.db	0
	.dw	0,130
	.ascii "getchar"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,40
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Suart1$getchar$34)	;initial loc
	.dw	0,Suart1$getchar$43-Suart1$getchar$34
	.db	1
	.dw	0,(Suart1$getchar$34)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Suart1$getchar$36)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Suart1$getchar$37)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Suart1$getchar$38)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,54
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Suart1$putchar$21)	;initial loc
	.dw	0,Suart1$putchar$32-Suart1$putchar$21
	.db	1
	.dw	0,(Suart1$putchar$21)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Suart1$putchar$23)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Suart1$putchar$24)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Suart1$putchar$26)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Suart1$putchar$27)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Suart1$putchar$28)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,103
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Suart1$init_uart1$1)	;initial loc
	.dw	0,Suart1$init_uart1$19-Suart1$init_uart1$1
	.db	1
	.dw	0,(Suart1$init_uart1$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Suart1$init_uart1$4)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Suart1$init_uart1$5)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Suart1$init_uart1$6)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Suart1$init_uart1$7)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Suart1$init_uart1$8)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Suart1$init_uart1$9)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Suart1$init_uart1$10)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Suart1$init_uart1$11)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Suart1$init_uart1$12)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Suart1$init_uart1$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Suart1$init_uart1$15)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Suart1$init_uart1$16)
	.db	14
	.uleb128	2
