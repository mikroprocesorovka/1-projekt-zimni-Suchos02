;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module swspi
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _swspi_init
	.globl _swspi_tx16
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
	Sswspi$swspi_init$0 ==.
;	./src/swspi.c: 12: void swspi_init(void){
; genLabel
;	-----------------------------------------
;	 function swspi_init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_swspi_init:
	Sswspi$swspi_init$1 ==.
	Sswspi$swspi_init$2 ==.
;	./src/swspi.c: 13: GPIO_Init(CS_GPIO,CS_PIN,GPIO_MODE_OUT_PP_HIGH_FAST);
; genIPush
	push	#0xf0
	Sswspi$swspi_init$3 ==.
; genIPush
	push	#0x10
	Sswspi$swspi_init$4 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_init$5 ==.
	push	#0x50
	Sswspi$swspi_init$6 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Sswspi$swspi_init$7 ==.
	Sswspi$swspi_init$8 ==.
;	./src/swspi.c: 14: GPIO_Init(CLK_GPIO,CLK_PIN,GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
	Sswspi$swspi_init$9 ==.
; genIPush
	push	#0x08
	Sswspi$swspi_init$10 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_init$11 ==.
	push	#0x50
	Sswspi$swspi_init$12 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Sswspi$swspi_init$13 ==.
	Sswspi$swspi_init$14 ==.
;	./src/swspi.c: 15: GPIO_Init(DIN_GPIO,DIN_PIN,GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
	Sswspi$swspi_init$15 ==.
; genIPush
	push	#0x20
	Sswspi$swspi_init$16 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_init$17 ==.
	push	#0x50
	Sswspi$swspi_init$18 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Sswspi$swspi_init$19 ==.
; genLabel
00101$:
	Sswspi$swspi_init$20 ==.
;	./src/swspi.c: 16: }
; genEndFunction
	Sswspi$swspi_init$21 ==.
	XG$swspi_init$0$0 ==.
	ret
	Sswspi$swspi_init$22 ==.
	Sswspi$swspi_tx16$23 ==.
;	./src/swspi.c: 19: void swspi_tx16(uint16_t data)
; genLabel
;	-----------------------------------------
;	 function swspi_tx16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_swspi_tx16:
	Sswspi$swspi_tx16$24 ==.
	pushw	x
	Sswspi$swspi_tx16$25 ==.
	Sswspi$swspi_tx16$26 ==.
;	./src/swspi.c: 21: uint16_t maska = 1 << 15;
; genAssign
	ldw	x, #0x8000
	ldw	(0x01, sp), x
	Sswspi$swspi_tx16$27 ==.
;	./src/swspi.c: 23: CS_L;
; genIPush
	push	#0x10
	Sswspi$swspi_tx16$28 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_tx16$29 ==.
	push	#0x50
	Sswspi$swspi_tx16$30 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswspi$swspi_tx16$31 ==.
	Sswspi$swspi_tx16$32 ==.
;	./src/swspi.c: 24: while (maska) {
; genLabel
00104$:
; genIfx
	ldw	x, (0x01, sp)
	jrne	00124$
	jp	00106$
00124$:
	Sswspi$swspi_tx16$33 ==.
	Sswspi$swspi_tx16$34 ==.
;	./src/swspi.c: 25: if (maska & data) {
; genAnd
	ld	a, (0x02, sp)
	and	a, (0x06, sp)
	ld	xl, a
	ld	a, (0x01, sp)
	and	a, (0x05, sp)
	ld	xh, a
; genIfx
	tnzw	x
	jrne	00125$
	jp	00102$
00125$:
	Sswspi$swspi_tx16$35 ==.
	Sswspi$swspi_tx16$36 ==.
;	./src/swspi.c: 26: DIN_H;
; genIPush
	push	#0x20
	Sswspi$swspi_tx16$37 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_tx16$38 ==.
	push	#0x50
	Sswspi$swspi_tx16$39 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswspi$swspi_tx16$40 ==.
	Sswspi$swspi_tx16$41 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sswspi$swspi_tx16$42 ==.
	Sswspi$swspi_tx16$43 ==.
;	./src/swspi.c: 28: DIN_L;
; genIPush
	push	#0x20
	Sswspi$swspi_tx16$44 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_tx16$45 ==.
	push	#0x50
	Sswspi$swspi_tx16$46 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswspi$swspi_tx16$47 ==.
	Sswspi$swspi_tx16$48 ==.
; genLabel
00103$:
	Sswspi$swspi_tx16$49 ==.
;	./src/swspi.c: 30: CLK_H;
; genIPush
	push	#0x08
	Sswspi$swspi_tx16$50 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_tx16$51 ==.
	push	#0x50
	Sswspi$swspi_tx16$52 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswspi$swspi_tx16$53 ==.
	Sswspi$swspi_tx16$54 ==.
;	./src/swspi.c: 31: maska = maska >> 1;
; genRightShiftLiteral
	srl	(0x01, sp)
	rrc	(0x02, sp)
	Sswspi$swspi_tx16$55 ==.
;	./src/swspi.c: 32: CLK_L;
; genIPush
	push	#0x08
	Sswspi$swspi_tx16$56 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_tx16$57 ==.
	push	#0x50
	Sswspi$swspi_tx16$58 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswspi$swspi_tx16$59 ==.
	Sswspi$swspi_tx16$60 ==.
; genGoto
	jp	00104$
; genLabel
00106$:
	Sswspi$swspi_tx16$61 ==.
;	./src/swspi.c: 34: CS_H;
; genIPush
	push	#0x10
	Sswspi$swspi_tx16$62 ==.
; genIPush
	push	#0x05
	Sswspi$swspi_tx16$63 ==.
	push	#0x50
	Sswspi$swspi_tx16$64 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswspi$swspi_tx16$65 ==.
; genLabel
00107$:
	Sswspi$swspi_tx16$66 ==.
;	./src/swspi.c: 35: }
; genEndFunction
	popw	x
	Sswspi$swspi_tx16$67 ==.
	Sswspi$swspi_tx16$68 ==.
	XG$swspi_tx16$0$0 ==.
	ret
	Sswspi$swspi_tx16$69 ==.
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
	.ascii "./src/swspi.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswspi$swspi_init$0)
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Sswspi$swspi_init$2-Sswspi$swspi_init$0
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswspi$swspi_init$8-Sswspi$swspi_init$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswspi$swspi_init$14-Sswspi$swspi_init$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswspi$swspi_init$20-Sswspi$swspi_init$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswspi$swspi_init$21-Sswspi$swspi_init$20
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswspi$swspi_tx16$23)
	.db	3
	.sleb128	18
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$26-Sswspi$swspi_tx16$23
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$27-Sswspi$swspi_tx16$26
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$32-Sswspi$swspi_tx16$27
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$34-Sswspi$swspi_tx16$32
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$36-Sswspi$swspi_tx16$34
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$43-Sswspi$swspi_tx16$36
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$49-Sswspi$swspi_tx16$43
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$54-Sswspi$swspi_tx16$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$55-Sswspi$swspi_tx16$54
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$61-Sswspi$swspi_tx16$55
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswspi$swspi_tx16$66-Sswspi$swspi_tx16$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswspi$swspi_tx16$68-Sswspi$swspi_tx16$66
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sswspi$swspi_tx16$67)
	.dw	0,(Sswspi$swspi_tx16$69)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswspi$swspi_tx16$65)
	.dw	0,(Sswspi$swspi_tx16$67)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_tx16$64)
	.dw	0,(Sswspi$swspi_tx16$65)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswspi$swspi_tx16$63)
	.dw	0,(Sswspi$swspi_tx16$64)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_tx16$62)
	.dw	0,(Sswspi$swspi_tx16$63)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_tx16$59)
	.dw	0,(Sswspi$swspi_tx16$62)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_tx16$58)
	.dw	0,(Sswspi$swspi_tx16$59)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswspi$swspi_tx16$57)
	.dw	0,(Sswspi$swspi_tx16$58)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_tx16$56)
	.dw	0,(Sswspi$swspi_tx16$57)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_tx16$53)
	.dw	0,(Sswspi$swspi_tx16$56)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_tx16$52)
	.dw	0,(Sswspi$swspi_tx16$53)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswspi$swspi_tx16$51)
	.dw	0,(Sswspi$swspi_tx16$52)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_tx16$50)
	.dw	0,(Sswspi$swspi_tx16$51)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_tx16$47)
	.dw	0,(Sswspi$swspi_tx16$50)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_tx16$46)
	.dw	0,(Sswspi$swspi_tx16$47)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswspi$swspi_tx16$45)
	.dw	0,(Sswspi$swspi_tx16$46)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_tx16$44)
	.dw	0,(Sswspi$swspi_tx16$45)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_tx16$40)
	.dw	0,(Sswspi$swspi_tx16$44)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_tx16$39)
	.dw	0,(Sswspi$swspi_tx16$40)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswspi$swspi_tx16$38)
	.dw	0,(Sswspi$swspi_tx16$39)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_tx16$37)
	.dw	0,(Sswspi$swspi_tx16$38)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_tx16$31)
	.dw	0,(Sswspi$swspi_tx16$37)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_tx16$30)
	.dw	0,(Sswspi$swspi_tx16$31)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswspi$swspi_tx16$29)
	.dw	0,(Sswspi$swspi_tx16$30)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_tx16$28)
	.dw	0,(Sswspi$swspi_tx16$29)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_tx16$25)
	.dw	0,(Sswspi$swspi_tx16$28)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_tx16$24)
	.dw	0,(Sswspi$swspi_tx16$25)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswspi$swspi_init$19)
	.dw	0,(Sswspi$swspi_init$22)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswspi$swspi_init$18)
	.dw	0,(Sswspi$swspi_init$19)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_init$17)
	.dw	0,(Sswspi$swspi_init$18)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_init$16)
	.dw	0,(Sswspi$swspi_init$17)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_init$15)
	.dw	0,(Sswspi$swspi_init$16)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswspi$swspi_init$13)
	.dw	0,(Sswspi$swspi_init$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswspi$swspi_init$12)
	.dw	0,(Sswspi$swspi_init$13)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_init$11)
	.dw	0,(Sswspi$swspi_init$12)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_init$10)
	.dw	0,(Sswspi$swspi_init$11)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_init$9)
	.dw	0,(Sswspi$swspi_init$10)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswspi$swspi_init$7)
	.dw	0,(Sswspi$swspi_init$9)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswspi$swspi_init$6)
	.dw	0,(Sswspi$swspi_init$7)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswspi$swspi_init$5)
	.dw	0,(Sswspi$swspi_init$6)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswspi$swspi_init$4)
	.dw	0,(Sswspi$swspi_init$5)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswspi$swspi_init$3)
	.dw	0,(Sswspi$swspi_init$4)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswspi$swspi_init$1)
	.dw	0,(Sswspi$swspi_init$3)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	4
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
	.uleb128	3
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
	.uleb128	6
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
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
	.uleb128	5
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	8
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
	.ascii "./src/swspi.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "swspi_init"
	.db	0
	.dw	0,(_swspi_init)
	.dw	0,(XG$swspi_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+332)
	.uleb128	3
	.dw	0,171
	.ascii "swspi_tx16"
	.db	0
	.dw	0,(_swspi_tx16)
	.dw	0,(XG$swspi_tx16$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "data"
	.db	0
	.dw	0,171
	.uleb128	5
	.dw	0,156
	.dw	0,(Sswspi$swspi_tx16$33)
	.dw	0,(Sswspi$swspi_tx16$60)
	.uleb128	6
	.dw	0,(Sswspi$swspi_tx16$35)
	.dw	0,(Sswspi$swspi_tx16$41)
	.uleb128	6
	.dw	0,(Sswspi$swspi_tx16$42)
	.dw	0,(Sswspi$swspi_tx16$48)
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-2
	.ascii "maska"
	.db	0
	.dw	0,171
	.uleb128	0
	.uleb128	8
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
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
	.ascii "swspi_init"
	.db	0
	.dw	0,82
	.ascii "swspi_tx16"
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
	.dw	0,201
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sswspi$swspi_tx16$24)	;initial loc
	.dw	0,Sswspi$swspi_tx16$69-Sswspi$swspi_tx16$24
	.db	1
	.dw	0,(Sswspi$swspi_tx16$24)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswspi$swspi_tx16$25)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_tx16$28)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_tx16$29)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_tx16$30)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswspi$swspi_tx16$31)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_tx16$37)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_tx16$38)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_tx16$39)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswspi$swspi_tx16$40)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_tx16$44)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_tx16$45)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_tx16$46)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswspi$swspi_tx16$47)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_tx16$50)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_tx16$51)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_tx16$52)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswspi$swspi_tx16$53)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_tx16$56)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_tx16$57)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_tx16$58)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswspi$swspi_tx16$59)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_tx16$62)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_tx16$63)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_tx16$64)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswspi$swspi_tx16$65)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_tx16$67)
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
	.dw	0,124
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sswspi$swspi_init$1)	;initial loc
	.dw	0,Sswspi$swspi_init$22-Sswspi$swspi_init$1
	.db	1
	.dw	0,(Sswspi$swspi_init$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswspi$swspi_init$3)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswspi$swspi_init$4)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_init$5)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_init$6)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_init$7)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswspi$swspi_init$9)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswspi$swspi_init$10)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_init$11)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_init$12)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_init$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswspi$swspi_init$15)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswspi$swspi_init$16)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswspi$swspi_init$17)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswspi$swspi_init$18)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswspi$swspi_init$19)
	.db	14
	.uleb128	2
