;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module spse_stm8
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_GetConversionValue
	.globl _ADC_get
	.globl _ADC2_Select_Channel
	.globl _ADC2_AlignConfig
	.globl _ADC2_Startup_Wait
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
	Sspse_stm8$_delay_cycl$0 ==.
;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
; genLabel
;	-----------------------------------------
;	 function _delay_cycl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__delay_cycl:
	Sspse_stm8$_delay_cycl$1 ==.
	Sspse_stm8$_delay_cycl$2 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sspse_stm8$_delay_cycl$3 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
	ldw	x, (0x03, sp)
; genLabel
00101$:
	Sspse_stm8$_delay_cycl$4 ==.
	Sspse_stm8$_delay_cycl$5 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sspse_stm8$_delay_cycl$6 ==.
	Sspse_stm8$_delay_cycl$7 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00117$
	jp	00101$
00117$:
	Sspse_stm8$_delay_cycl$8 ==.
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
; genLabel
00104$:
	Sspse_stm8$_delay_cycl$9 ==.
;	inc/delay.h: 39: }
; genEndFunction
	Sspse_stm8$_delay_cycl$10 ==.
	XFspse_stm8$_delay_cycl$0$0 ==.
	ret
	Sspse_stm8$_delay_cycl$11 ==.
	Sspse_stm8$_delay_us$12 ==.
;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
; genLabel
;	-----------------------------------------
;	 function _delay_us
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__delay_us:
	Sspse_stm8$_delay_us$13 ==.
	Sspse_stm8$_delay_us$14 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genCast
; genAssign
	ldw	y, (0x03, sp)
	clrw	x
; genIPush
	pushw	y
	Sspse_stm8$_delay_us$15 ==.
	pushw	x
	Sspse_stm8$_delay_us$16 ==.
; genIPush
	push	#0x00
	Sspse_stm8$_delay_us$17 ==.
	push	#0x24
	Sspse_stm8$_delay_us$18 ==.
	push	#0xf4
	Sspse_stm8$_delay_us$19 ==.
	push	#0x00
	Sspse_stm8$_delay_us$20 ==.
; genCall
	call	__mullong
	addw	sp, #8
	Sspse_stm8$_delay_us$21 ==.
	Sspse_stm8$_delay_us$22 ==.
; genCast
; genAssign
; genIPush
	push	#0x40
	Sspse_stm8$_delay_us$23 ==.
	push	#0x42
	Sspse_stm8$_delay_us$24 ==.
	push	#0x0f
	Sspse_stm8$_delay_us$25 ==.
	push	#0x00
	Sspse_stm8$_delay_us$26 ==.
; genIPush
	pushw	x
	Sspse_stm8$_delay_us$27 ==.
	pushw	y
	Sspse_stm8$_delay_us$28 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Sspse_stm8$_delay_us$29 ==.
	Sspse_stm8$_delay_us$30 ==.
; genRightShiftLiteral
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
; genCast
; genAssign
	Sspse_stm8$_delay_us$31 ==.
; genPlus
	incw	x
; genAssign
; genAssign
	Sspse_stm8$_delay_us$32 ==.
; genAssign
	Sspse_stm8$_delay_us$33 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sspse_stm8$_delay_us$34 ==.
	Sspse_stm8$_delay_us$35 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00101$:
	Sspse_stm8$_delay_us$36 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sspse_stm8$_delay_us$37 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00118$
	jp	00101$
00118$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sspse_stm8$_delay_us$38 ==.
	Sspse_stm8$_delay_us$39 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genLabel
00105$:
	Sspse_stm8$_delay_us$40 ==.
;	inc/delay.h: 43: }
; genEndFunction
	Sspse_stm8$_delay_us$41 ==.
	XFspse_stm8$_delay_us$0$0 ==.
	ret
	Sspse_stm8$_delay_us$42 ==.
	Sspse_stm8$ADC_get$43 ==.
;	./src/spse_stm8.c: 10: uint16_t ADC_get(ADC2_Channel_TypeDef ADC2_Channel){
; genLabel
;	-----------------------------------------
;	 function ADC_get
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC_get:
	Sspse_stm8$ADC_get$44 ==.
	Sspse_stm8$ADC_get$45 ==.
;	./src/spse_stm8.c: 11: ADC2_Select_Channel(ADC2_Channel); // vybere kanál / nastavuje analogový multiplexer
; genIPush
	ld	a, (0x03, sp)
	push	a
	Sspse_stm8$ADC_get$46 ==.
; genCall
	call	_ADC2_Select_Channel
	pop	a
	Sspse_stm8$ADC_get$47 ==.
	Sspse_stm8$ADC_get$48 ==.
;	./src/spse_stm8.c: 12: ADC2->CR1 |= ADC2_CR1_ADON; // Start Conversion (ADON must be SET before => ADC must be enabled !)
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
	Sspse_stm8$ADC_get$49 ==.
;	./src/spse_stm8.c: 13: while(!(ADC2->CSR & ADC2_CSR_EOC)); // èeká na dokonèení pøevodu (End Of Conversion)
; genLabel
00101$:
; genPointerGet
	ld	a, 0x5400
; genAnd
	tnz	a
	jrmi	00116$
	jp	00101$
00116$:
; skipping generated iCode
	Sspse_stm8$ADC_get$50 ==.
;	./src/spse_stm8.c: 14: ADC2->CSR &=~ADC2_CSR_EOC; // maže vlajku 
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5400, a
	Sspse_stm8$ADC_get$51 ==.
;	./src/spse_stm8.c: 15: return ADC2_GetConversionValue(); // vrací výsledek
; genCall
	jp	_ADC2_GetConversionValue
; genReturn
; genLabel
00104$:
	Sspse_stm8$ADC_get$52 ==.
;	./src/spse_stm8.c: 16: }
; genEndFunction
	Sspse_stm8$ADC_get$53 ==.
	XG$ADC_get$0$0 ==.
	ret
	Sspse_stm8$ADC_get$54 ==.
	Sspse_stm8$ADC2_Select_Channel$55 ==.
;	./src/spse_stm8.c: 21: void ADC2_Select_Channel(ADC2_Channel_TypeDef ADC2_Channel){
; genLabel
;	-----------------------------------------
;	 function ADC2_Select_Channel
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_ADC2_Select_Channel:
	Sspse_stm8$ADC2_Select_Channel$56 ==.
	push	a
	Sspse_stm8$ADC2_Select_Channel$57 ==.
	Sspse_stm8$ADC2_Select_Channel$58 ==.
;	./src/spse_stm8.c: 22: uint8_t tmp = (ADC2->CSR) & (~ADC2_CSR_CH);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0xf0
	ld	(0x01, sp), a
	Sspse_stm8$ADC2_Select_Channel$59 ==.
;	./src/spse_stm8.c: 23: tmp |= ADC2_Channel | ADC2_CSR_EOC;
; genOr
	ld	a, (0x04, sp)
	or	a, #0x80
; genOr
	or	a, (0x01, sp)
; genAssign
	Sspse_stm8$ADC2_Select_Channel$60 ==.
;	./src/spse_stm8.c: 24: ADC2->CSR = tmp;
; genPointerSet
	ld	0x5400, a
; genLabel
00101$:
	Sspse_stm8$ADC2_Select_Channel$61 ==.
;	./src/spse_stm8.c: 25: }
; genEndFunction
	pop	a
	Sspse_stm8$ADC2_Select_Channel$62 ==.
	Sspse_stm8$ADC2_Select_Channel$63 ==.
	XG$ADC2_Select_Channel$0$0 ==.
	ret
	Sspse_stm8$ADC2_Select_Channel$64 ==.
	Sspse_stm8$ADC2_AlignConfig$65 ==.
;	./src/spse_stm8.c: 30: void ADC2_AlignConfig(ADC2_Align_TypeDef ADC2_Align){
; genLabel
;	-----------------------------------------
;	 function ADC2_AlignConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_AlignConfig:
	Sspse_stm8$ADC2_AlignConfig$66 ==.
	Sspse_stm8$ADC2_AlignConfig$67 ==.
;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
; genPointerGet
	ld	a, 0x5402
	Sspse_stm8$ADC2_AlignConfig$68 ==.
;	./src/spse_stm8.c: 31: if(ADC2_Align){
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sspse_stm8$ADC2_AlignConfig$69 ==.
	Sspse_stm8$ADC2_AlignConfig$70 ==.
;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5402, a
	Sspse_stm8$ADC2_AlignConfig$71 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sspse_stm8$ADC2_AlignConfig$72 ==.
	Sspse_stm8$ADC2_AlignConfig$73 ==.
;	./src/spse_stm8.c: 34: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5402, a
	Sspse_stm8$ADC2_AlignConfig$74 ==.
; genLabel
00104$:
	Sspse_stm8$ADC2_AlignConfig$75 ==.
;	./src/spse_stm8.c: 36: }
; genEndFunction
	Sspse_stm8$ADC2_AlignConfig$76 ==.
	XG$ADC2_AlignConfig$0$0 ==.
	ret
	Sspse_stm8$ADC2_AlignConfig$77 ==.
	Sspse_stm8$ADC2_Startup_Wait$78 ==.
;	./src/spse_stm8.c: 40: void ADC2_Startup_Wait(void){
; genLabel
;	-----------------------------------------
;	 function ADC2_Startup_Wait
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_Startup_Wait:
	Sspse_stm8$ADC2_Startup_Wait$79 ==.
	Sspse_stm8$ADC2_Startup_Wait$80 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000f
	Sspse_stm8$ADC2_Startup_Wait$81 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sspse_stm8$ADC2_Startup_Wait$82 ==.
	Sspse_stm8$ADC2_Startup_Wait$83 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00101$:
	Sspse_stm8$ADC2_Startup_Wait$84 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sspse_stm8$ADC2_Startup_Wait$85 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00119$
	jp	00101$
00119$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sspse_stm8$ADC2_Startup_Wait$86 ==.
	Sspse_stm8$ADC2_Startup_Wait$87 ==.
;	./src/spse_stm8.c: 41: _delay_us(ADC_TSTAB);
; genLabel
00106$:
	Sspse_stm8$ADC2_Startup_Wait$88 ==.
;	./src/spse_stm8.c: 42: }
; genEndFunction
	Sspse_stm8$ADC2_Startup_Wait$89 ==.
	XG$ADC2_Startup_Wait$0$0 ==.
	ret
	Sspse_stm8$ADC2_Startup_Wait$90 ==.
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
	.ascii "inc/delay.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "./src/spse_stm8.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sspse_stm8$_delay_cycl$0)
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_cycl$2-Sspse_stm8$_delay_cycl$0
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_cycl$3-Sspse_stm8$_delay_cycl$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_cycl$5-Sspse_stm8$_delay_cycl$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_cycl$7-Sspse_stm8$_delay_cycl$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_cycl$8-Sspse_stm8$_delay_cycl$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_cycl$9-Sspse_stm8$_delay_cycl$8
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	1+Sspse_stm8$_delay_cycl$10-Sspse_stm8$_delay_cycl$9
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sspse_stm8$_delay_us$12)
	.db	3
	.sleb128	40
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_us$35-Sspse_stm8$_delay_us$12
	.db	3
	.sleb128	-15
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_us$39-Sspse_stm8$_delay_us$35
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Sspse_stm8$_delay_us$40-Sspse_stm8$_delay_us$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sspse_stm8$_delay_us$41-Sspse_stm8$_delay_us$40
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sspse_stm8$ADC_get$43)
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC_get$45-Sspse_stm8$ADC_get$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC_get$48-Sspse_stm8$ADC_get$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC_get$49-Sspse_stm8$ADC_get$48
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC_get$50-Sspse_stm8$ADC_get$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC_get$51-Sspse_stm8$ADC_get$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC_get$52-Sspse_stm8$ADC_get$51
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sspse_stm8$ADC_get$53-Sspse_stm8$ADC_get$52
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$55)
	.db	3
	.sleb128	20
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_Select_Channel$58-Sspse_stm8$ADC2_Select_Channel$55
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_Select_Channel$59-Sspse_stm8$ADC2_Select_Channel$58
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_Select_Channel$60-Sspse_stm8$ADC2_Select_Channel$59
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_Select_Channel$61-Sspse_stm8$ADC2_Select_Channel$60
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sspse_stm8$ADC2_Select_Channel$63-Sspse_stm8$ADC2_Select_Channel$61
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$65)
	.db	3
	.sleb128	29
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_AlignConfig$67-Sspse_stm8$ADC2_AlignConfig$65
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_AlignConfig$68-Sspse_stm8$ADC2_AlignConfig$67
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_AlignConfig$70-Sspse_stm8$ADC2_AlignConfig$68
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_AlignConfig$73-Sspse_stm8$ADC2_AlignConfig$70
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_AlignConfig$75-Sspse_stm8$ADC2_AlignConfig$73
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sspse_stm8$ADC2_AlignConfig$76-Sspse_stm8$ADC2_AlignConfig$75
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$78)
	.db	3
	.sleb128	39
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sspse_stm8$ADC2_Startup_Wait$83-Sspse_stm8$ADC2_Startup_Wait$78
	.db	3
	.sleb128	-14
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sspse_stm8$ADC2_Startup_Wait$87-Sspse_stm8$ADC2_Startup_Wait$83
	.db	3
	.sleb128	15
	.db	1
	.db	9
	.dw	Sspse_stm8$ADC2_Startup_Wait$88-Sspse_stm8$ADC2_Startup_Wait$87
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sspse_stm8$ADC2_Startup_Wait$89-Sspse_stm8$ADC2_Startup_Wait$88
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$90)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$77)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$64)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sspse_stm8$ADC_get$47)
	.dw	0,(Sspse_stm8$ADC_get$54)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sspse_stm8$ADC_get$46)
	.dw	0,(Sspse_stm8$ADC_get$47)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sspse_stm8$ADC_get$44)
	.dw	0,(Sspse_stm8$ADC_get$46)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sspse_stm8$_delay_us$29)
	.dw	0,(Sspse_stm8$_delay_us$42)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sspse_stm8$_delay_us$28)
	.dw	0,(Sspse_stm8$_delay_us$29)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sspse_stm8$_delay_us$27)
	.dw	0,(Sspse_stm8$_delay_us$28)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sspse_stm8$_delay_us$26)
	.dw	0,(Sspse_stm8$_delay_us$27)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sspse_stm8$_delay_us$25)
	.dw	0,(Sspse_stm8$_delay_us$26)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sspse_stm8$_delay_us$24)
	.dw	0,(Sspse_stm8$_delay_us$25)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sspse_stm8$_delay_us$23)
	.dw	0,(Sspse_stm8$_delay_us$24)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sspse_stm8$_delay_us$21)
	.dw	0,(Sspse_stm8$_delay_us$23)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sspse_stm8$_delay_us$20)
	.dw	0,(Sspse_stm8$_delay_us$21)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sspse_stm8$_delay_us$19)
	.dw	0,(Sspse_stm8$_delay_us$20)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sspse_stm8$_delay_us$18)
	.dw	0,(Sspse_stm8$_delay_us$19)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sspse_stm8$_delay_us$17)
	.dw	0,(Sspse_stm8$_delay_us$18)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sspse_stm8$_delay_us$16)
	.dw	0,(Sspse_stm8$_delay_us$17)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sspse_stm8$_delay_us$15)
	.dw	0,(Sspse_stm8$_delay_us$16)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sspse_stm8$_delay_us$13)
	.dw	0,(Sspse_stm8$_delay_us$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sspse_stm8$_delay_cycl$1)
	.dw	0,(Sspse_stm8$_delay_cycl$11)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	13
	.uleb128	11
	.db	1
	.uleb128	0
	.uleb128	0
	.uleb128	3
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
	.uleb128	2
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	14
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	38
	.db	0
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
	.uleb128	4
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	12
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
	.uleb128	0
	.uleb128	0
	.uleb128	9
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
	.uleb128	5
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
	.ascii "./src/spse_stm8.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.dw	0,117
	.ascii "_delay_cycl"
	.db	0
	.dw	0,(__delay_cycl)
	.dw	0,(XFspse_stm8$_delay_cycl$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+316)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__ticks"
	.db	0
	.dw	0,117
	.uleb128	4
	.dw	0,(Sspse_stm8$_delay_cycl$4)
	.dw	0,(Sspse_stm8$_delay_cycl$6)
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	2
	.dw	0,268
	.ascii "_delay_us"
	.db	0
	.dw	0,(__delay_us)
	.dw	0,(XFspse_stm8$_delay_us$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+128)
	.uleb128	6
	.dw	0,117
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__us"
	.db	0
	.dw	0,161
	.uleb128	7
	.dw	0,(Sspse_stm8$_delay_us$14)
	.dw	0,(Sspse_stm8$_delay_us$31)
	.uleb128	8
	.dw	0,241
	.dw	0,(Sspse_stm8$_delay_us$32)
	.uleb128	9
	.dw	0,220
	.dw	0,(Sspse_stm8$_delay_us$33)
	.dw	0,(Sspse_stm8$_delay_us$38)
	.uleb128	4
	.dw	0,(Sspse_stm8$_delay_us$36)
	.dw	0,(Sspse_stm8$_delay_us$37)
	.uleb128	0
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "__ticks"
	.db	0
	.dw	0,117
	.uleb128	0
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "__1310720010"
	.db	0
	.dw	0,117
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.dw	0,320
	.ascii "ADC_get"
	.db	0
	.dw	0,(_ADC_get)
	.dw	0,(XG$ADC_get$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+84)
	.dw	0,117
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_Channel"
	.db	0
	.dw	0,320
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,408
	.ascii "ADC2_Select_Channel"
	.db	0
	.dw	0,(_ADC2_Select_Channel)
	.dw	0,(XG$ADC2_Select_Channel$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_Channel"
	.db	0
	.dw	0,320
	.uleb128	10
	.db	1
	.db	80
	.ascii "tmp"
	.db	0
	.dw	0,320
	.uleb128	0
	.uleb128	2
	.dw	0,481
	.ascii "ADC2_AlignConfig"
	.db	0
	.dw	0,(_ADC2_AlignConfig)
	.dw	0,(XG$ADC2_AlignConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_Align"
	.db	0
	.dw	0,320
	.uleb128	4
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$69)
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$71)
	.uleb128	4
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$72)
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$74)
	.uleb128	0
	.uleb128	12
	.ascii "ADC2_Startup_Wait"
	.db	0
	.dw	0,(_ADC2_Startup_Wait)
	.dw	0,(XG$ADC2_Startup_Wait$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	13
	.uleb128	14
	.dw	0,615
	.uleb128	14
	.dw	0,601
	.uleb128	13
	.uleb128	8
	.dw	0,578
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$80)
	.uleb128	9
	.dw	0,557
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$81)
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$86)
	.uleb128	4
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$84)
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$85)
	.uleb128	0
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "__ticks"
	.db	0
	.dw	0,117
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,117
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,161
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720012"
	.db	0
	.dw	0,161
	.uleb128	0
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
	.dw	0,268
	.ascii "ADC_get"
	.db	0
	.dw	0,337
	.ascii "ADC2_Select_Channel"
	.db	0
	.dw	0,408
	.ascii "ADC2_AlignConfig"
	.db	0
	.dw	0,481
	.ascii "ADC2_Startup_Wait"
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
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)	;initial loc
	.dw	0,Sspse_stm8$ADC2_Startup_Wait$90-Sspse_stm8$ADC2_Startup_Wait$79
	.db	1
	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)	;initial loc
	.dw	0,Sspse_stm8$ADC2_AlignConfig$77-Sspse_stm8$ADC2_AlignConfig$66
	.db	1
	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
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
	.dw	0,33
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)	;initial loc
	.dw	0,Sspse_stm8$ADC2_Select_Channel$64-Sspse_stm8$ADC2_Select_Channel$56
	.db	1
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
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
Ldebug_CIE3_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sspse_stm8$ADC_get$44)	;initial loc
	.dw	0,Sspse_stm8$ADC_get$54-Sspse_stm8$ADC_get$44
	.db	1
	.dw	0,(Sspse_stm8$ADC_get$44)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sspse_stm8$ADC_get$46)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sspse_stm8$ADC_get$47)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
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
Ldebug_CIE4_end:
	.dw	0,117
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sspse_stm8$_delay_us$13)	;initial loc
	.dw	0,Sspse_stm8$_delay_us$42-Sspse_stm8$_delay_us$13
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$15)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$16)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$17)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$18)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$19)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$20)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$21)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$23)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$24)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$25)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$26)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$27)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$28)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sspse_stm8$_delay_us$29)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
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
Ldebug_CIE5_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sspse_stm8$_delay_cycl$1)	;initial loc
	.dw	0,Sspse_stm8$_delay_cycl$11-Sspse_stm8$_delay_cycl$1
	.db	1
	.dw	0,(Sspse_stm8$_delay_cycl$1)
	.db	14
	.uleb128	2
