;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setup
	.globl _delay_ms
	.globl _sprintf
	.globl _lcd_puts
	.globl _lcd_gotoxy
	.globl _lcd_init
	.globl _ADC2_Startup_Wait
	.globl _ADC2_AlignConfig
	.globl _ADC2_Select_Channel
	.globl _ADC_get
	.globl _milis
	.globl _init_milis
	.globl _GPIO_ReadInputPin
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _CLK_HSIPrescalerConfig
	.globl _ADC2_SchmittTriggerConfig
	.globl _ADC2_PrescalerConfig
	.globl _ADC2_Cmd
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int _CAN_RX_IRQHandler ; int8
	int _CAN_TX_IRQHandler ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
	int _TIM3_CAP_COM_IRQHandler ; int16
	int _UART1_TX_IRQHandler ; int17
	int _UART1_RX_IRQHandler ; int18
	int _I2C_IRQHandler ; int19
	int _UART3_TX_IRQHandler ; int20
	int _UART3_RX_IRQHandler ; int21
	int _ADC2_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$_delay_cycl$0 ==.
;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
; genLabel
;	-----------------------------------------
;	 function _delay_cycl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__delay_cycl:
	Smain$_delay_cycl$1 ==.
	Smain$_delay_cycl$2 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$_delay_cycl$3 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
	ldw	x, (0x03, sp)
; genLabel
00101$:
	Smain$_delay_cycl$4 ==.
	Smain$_delay_cycl$5 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$_delay_cycl$6 ==.
	Smain$_delay_cycl$7 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00117$
	jp	00101$
00117$:
	Smain$_delay_cycl$8 ==.
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
; genLabel
00104$:
	Smain$_delay_cycl$9 ==.
;	inc/delay.h: 39: }
; genEndFunction
	Smain$_delay_cycl$10 ==.
	XFmain$_delay_cycl$0$0 ==.
	ret
	Smain$_delay_cycl$11 ==.
	Smain$_delay_us$12 ==.
;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
; genLabel
;	-----------------------------------------
;	 function _delay_us
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__delay_us:
	Smain$_delay_us$13 ==.
	Smain$_delay_us$14 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genCast
; genAssign
	ldw	y, (0x03, sp)
	clrw	x
; genIPush
	pushw	y
	Smain$_delay_us$15 ==.
	pushw	x
	Smain$_delay_us$16 ==.
; genIPush
	push	#0x00
	Smain$_delay_us$17 ==.
	push	#0x24
	Smain$_delay_us$18 ==.
	push	#0xf4
	Smain$_delay_us$19 ==.
	push	#0x00
	Smain$_delay_us$20 ==.
; genCall
	call	__mullong
	addw	sp, #8
	Smain$_delay_us$21 ==.
	Smain$_delay_us$22 ==.
; genCast
; genAssign
; genIPush
	push	#0x40
	Smain$_delay_us$23 ==.
	push	#0x42
	Smain$_delay_us$24 ==.
	push	#0x0f
	Smain$_delay_us$25 ==.
	push	#0x00
	Smain$_delay_us$26 ==.
; genIPush
	pushw	x
	Smain$_delay_us$27 ==.
	pushw	y
	Smain$_delay_us$28 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Smain$_delay_us$29 ==.
	Smain$_delay_us$30 ==.
; genRightShiftLiteral
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
; genCast
; genAssign
	Smain$_delay_us$31 ==.
; genPlus
	incw	x
; genAssign
; genAssign
	Smain$_delay_us$32 ==.
; genAssign
	Smain$_delay_us$33 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$_delay_us$34 ==.
	Smain$_delay_us$35 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00101$:
	Smain$_delay_us$36 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$_delay_us$37 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00118$
	jp	00101$
00118$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Smain$_delay_us$38 ==.
	Smain$_delay_us$39 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genLabel
00105$:
	Smain$_delay_us$40 ==.
;	inc/delay.h: 43: }
; genEndFunction
	Smain$_delay_us$41 ==.
	XFmain$_delay_us$0$0 ==.
	ret
	Smain$_delay_us$42 ==.
	Smain$delay_ms$43 ==.
;	./src/main.c: 25: void delay_ms(uint16_t ms) {
; genLabel
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_delay_ms:
	Smain$delay_ms$44 ==.
	pushw	x
	Smain$delay_ms$45 ==.
	Smain$delay_ms$46 ==.
;	./src/main.c: 27: for (i=0; i<ms; i = i+1){
; genAssign
	clrw	x
	ldw	(0x01, sp), x
; genLabel
00123$:
; genCmp
; genCmpTop
	ldw	x, (0x01, sp)
	cpw	x, (0x05, sp)
	jrc	00181$
	jp	00125$
00181$:
; skipping generated iCode
	Smain$delay_ms$47 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x01f5
	Smain$delay_ms$48 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$delay_ms$49 ==.
	Smain$delay_ms$50 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00102$:
	Smain$delay_ms$51 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$delay_ms$52 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00182$
	jp	00102$
00182$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Smain$delay_ms$53 ==.
	Smain$delay_ms$53 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x01f1
	Smain$delay_ms$54 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$delay_ms$55 ==.
	Smain$delay_ms$56 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00107$:
	Smain$delay_ms$57 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$delay_ms$58 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00183$
	jp	00107$
00183$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Smain$delay_ms$59 ==.
	Smain$delay_ms$59 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x01f5
	Smain$delay_ms$60 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$delay_ms$61 ==.
	Smain$delay_ms$62 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00112$:
	Smain$delay_ms$63 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$delay_ms$64 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00184$
	jp	00112$
00184$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Smain$delay_ms$65 ==.
	Smain$delay_ms$65 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x01f5
	Smain$delay_ms$66 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$delay_ms$67 ==.
	Smain$delay_ms$68 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00117$:
	Smain$delay_ms$69 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$delay_ms$70 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00185$
	jp	00117$
00185$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Smain$delay_ms$71 ==.
	Smain$delay_ms$72 ==.
;	./src/main.c: 27: for (i=0; i<ms; i = i+1){
; genCast
; genAssign
	ldw	x, (0x01, sp)
; genPlus
	incw	x
; genCast
; genAssign
; genAssign
	ldw	(0x01, sp), x
; genGoto
	jp	00123$
; genLabel
00125$:
	Smain$delay_ms$73 ==.
;	./src/main.c: 33: }
; genEndFunction
	popw	x
	Smain$delay_ms$74 ==.
	Smain$delay_ms$75 ==.
	XG$delay_ms$0$0 ==.
	ret
	Smain$delay_ms$76 ==.
	Smain$setup$77 ==.
;	./src/main.c: 35: void setup(void)
; genLabel
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_setup:
	Smain$setup$78 ==.
	Smain$setup$79 ==.
;	./src/main.c: 37: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
; genIPush
	push	#0x00
	Smain$setup$80 ==.
; genCall
	call	_CLK_HSIPrescalerConfig
	pop	a
	Smain$setup$81 ==.
	Smain$setup$82 ==.
;	./src/main.c: 38: GPIO_Init(G4_PORT, G4_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
; genIPush
	push	#0xc0
	Smain$setup$83 ==.
; genIPush
	push	#0x10
	Smain$setup$84 ==.
; genIPush
	push	#0x1e
	Smain$setup$85 ==.
	push	#0x50
	Smain$setup$86 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$setup$87 ==.
	Smain$setup$88 ==.
;	./src/main.c: 39: GPIO_Init(BTN_PORT, BTN_PIN, GPIO_MODE_IN_FL_NO_IT);
; genIPush
	push	#0x00
	Smain$setup$89 ==.
; genIPush
	push	#0x10
	Smain$setup$90 ==.
; genIPush
	push	#0x14
	Smain$setup$91 ==.
	push	#0x50
	Smain$setup$92 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$setup$93 ==.
	Smain$setup$94 ==.
;	./src/main.c: 41: init_milis();
; genCall
	call	_init_milis
	Smain$setup$95 ==.
;	./src/main.c: 42: lcd_init();
; genCall
	call	_lcd_init
	Smain$setup$96 ==.
;	./src/main.c: 45: ADC2_SchmittTriggerConfig(ADC2_SCHMITTTRIG_CHANNEL4, DISABLE);
; genIPush
	push	#0x00
	Smain$setup$97 ==.
; genIPush
	push	#0x04
	Smain$setup$98 ==.
; genCall
	call	_ADC2_SchmittTriggerConfig
	popw	x
	Smain$setup$99 ==.
	Smain$setup$100 ==.
;	./src/main.c: 46: ADC2_SchmittTriggerConfig(ADC2_SCHMITTTRIG_CHANNEL5, DISABLE);
; genIPush
	push	#0x00
	Smain$setup$101 ==.
; genIPush
	push	#0x05
	Smain$setup$102 ==.
; genCall
	call	_ADC2_SchmittTriggerConfig
	popw	x
	Smain$setup$103 ==.
	Smain$setup$104 ==.
;	./src/main.c: 50: ADC2_PrescalerConfig(ADC2_PRESSEL_FCPU_D4);
; genIPush
	push	#0x20
	Smain$setup$105 ==.
; genCall
	call	_ADC2_PrescalerConfig
	pop	a
	Smain$setup$106 ==.
	Smain$setup$107 ==.
;	./src/main.c: 52: ADC2_AlignConfig(ADC2_ALIGN_RIGHT);
; genIPush
	push	#0x08
	Smain$setup$108 ==.
; genCall
	call	_ADC2_AlignConfig
	pop	a
	Smain$setup$109 ==.
	Smain$setup$110 ==.
;	./src/main.c: 54: ADC2_Select_Channel(ADC2_CHANNEL_4);
; genIPush
	push	#0x04
	Smain$setup$111 ==.
; genCall
	call	_ADC2_Select_Channel
	pop	a
	Smain$setup$112 ==.
	Smain$setup$113 ==.
;	./src/main.c: 56: ADC2_Cmd(ENABLE);
; genIPush
	push	#0x01
	Smain$setup$114 ==.
; genCall
	call	_ADC2_Cmd
	pop	a
	Smain$setup$115 ==.
	Smain$setup$116 ==.
;	./src/main.c: 58: ADC2_Startup_Wait();
; genCall
	jp	_ADC2_Startup_Wait
; genLabel
00101$:
	Smain$setup$117 ==.
;	./src/main.c: 59: }
; genEndFunction
	Smain$setup$118 ==.
	XG$setup$0$0 ==.
	ret
	Smain$setup$119 ==.
	Smain$main$120 ==.
;	./src/main.c: 62: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 47 bytes.
_main:
	Smain$main$121 ==.
	sub	sp, #47
	Smain$main$122 ==.
	Smain$main$123 ==.
;	./src/main.c: 67: uint16_t x = 0;
; genAssign
	clrw	x
	ldw	(0x2c, sp), x
	Smain$main$124 ==.
;	./src/main.c: 72: setup();
; genCall
	call	_setup
	Smain$main$125 ==.
;	./src/main.c: 74: while (1) {
; genAssign
	clrw	x
	ldw	(0x21, sp), x
; genAssign
	clrw	x
	ldw	(0x23, sp), x
; genAssign
	clrw	x
	ldw	(0x27, sp), x
	ldw	(0x25, sp), x
; genLabel
00142$:
	Smain$main$126 ==.
	Smain$main$127 ==.
;	./src/main.c: 76: lcd_gotoxy(0, 0);
; genIPush
	push	#0x00
	Smain$main$128 ==.
; genIPush
	push	#0x00
	Smain$main$129 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$130 ==.
	Smain$main$131 ==.
;	./src/main.c: 77: sprintf(text,"tvuj vyber:");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_0+0)
	Smain$main$132 ==.
	push	#((___str_0+0) >> 8)
	Smain$main$133 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$134 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$135 ==.
	Smain$main$136 ==.
;	./src/main.c: 78: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$137 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$138 ==.
	Smain$main$139 ==.
;	./src/main.c: 80: lcd_gotoxy(0, 1);
; genIPush
	push	#0x01
	Smain$main$140 ==.
; genIPush
	push	#0x00
	Smain$main$141 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$142 ==.
	Smain$main$143 ==.
;	./src/main.c: 81: sprintf(text,"stm8 vyber:");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_1+0)
	Smain$main$144 ==.
	push	#((___str_1+0) >> 8)
	Smain$main$145 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$146 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$147 ==.
	Smain$main$148 ==.
;	./src/main.c: 82: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$149 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$150 ==.
	Smain$main$151 ==.
;	./src/main.c: 84: lcd_gotoxy(0, 2);
; genIPush
	push	#0x02
	Smain$main$152 ==.
; genIPush
	push	#0x00
	Smain$main$153 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$154 ==.
	Smain$main$155 ==.
;	./src/main.c: 85: sprintf(text,"body ty:");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_2+0)
	Smain$main$156 ==.
	push	#((___str_2+0) >> 8)
	Smain$main$157 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$158 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$159 ==.
	Smain$main$160 ==.
;	./src/main.c: 86: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$161 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$162 ==.
	Smain$main$163 ==.
;	./src/main.c: 88: lcd_gotoxy(0, 3);
; genIPush
	push	#0x03
	Smain$main$164 ==.
; genIPush
	push	#0x00
	Smain$main$165 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$166 ==.
	Smain$main$167 ==.
;	./src/main.c: 89: sprintf(text,"boty stm8:");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_3+0)
	Smain$main$168 ==.
	push	#((___str_3+0) >> 8)
	Smain$main$169 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$170 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$171 ==.
	Smain$main$172 ==.
;	./src/main.c: 90: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$173 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$174 ==.
	Smain$main$175 ==.
;	./src/main.c: 92: ADCx = ADC_get(ADC2_CHANNEL_4);
; genIPush
	push	#0x04
	Smain$main$176 ==.
; genCall
	call	_ADC_get
	pop	a
	Smain$main$177 ==.
; genAssign
	Smain$main$178 ==.
	Smain$main$179 ==.
;	./src/main.c: 94: if (ADCx < 314) {
; genCast
; genAssign
	ldw	(0x2e, sp), x
; genCmp
; genCmpTop
	ldw	x, (0x2e, sp)
	cpw	x, #0x013a
	jrc	00256$
	jp	00102$
00256$:
; skipping generated iCode
	Smain$main$180 ==.
	Smain$main$181 ==.
;	./src/main.c: 95: lcd_gotoxy(11, 0);
; genIPush
	push	#0x00
	Smain$main$182 ==.
; genIPush
	push	#0x0b
	Smain$main$183 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$184 ==.
	Smain$main$185 ==.
;	./src/main.c: 96: sprintf(text,"papir");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_4+0)
	Smain$main$186 ==.
	push	#((___str_4+0) >> 8)
	Smain$main$187 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$188 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$189 ==.
	Smain$main$190 ==.
;	./src/main.c: 97: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$191 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$192 ==.
	Smain$main$193 ==.
;	./src/main.c: 98: stavty = 1;
; genAssign
	ldw	x, #0x0001
	ldw	(0x27, sp), x
	clrw	x
	ldw	(0x25, sp), x
	Smain$main$194 ==.
; genLabel
00102$:
	Smain$main$195 ==.
;	./src/main.c: 101: if (ADCx > 314 && ADCx < 628) {
; genCmp
; genCmpTop
	ldw	x, (0x2e, sp)
	cpw	x, #0x013a
	jrugt	00257$
	jp	00104$
00257$:
; skipping generated iCode
; genCmp
; genCmpTop
	ldw	x, (0x2e, sp)
	cpw	x, #0x0274
	jrc	00258$
	jp	00104$
00258$:
; skipping generated iCode
	Smain$main$196 ==.
	Smain$main$197 ==.
;	./src/main.c: 102: lcd_gotoxy(11, 0);
; genIPush
	push	#0x00
	Smain$main$198 ==.
; genIPush
	push	#0x0b
	Smain$main$199 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$200 ==.
	Smain$main$201 ==.
;	./src/main.c: 103: sprintf(text,"nuzky");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_5+0)
	Smain$main$202 ==.
	push	#((___str_5+0) >> 8)
	Smain$main$203 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$204 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$205 ==.
	Smain$main$206 ==.
;	./src/main.c: 104: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$207 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$208 ==.
	Smain$main$209 ==.
;	./src/main.c: 105: stavty = 2;
; genAssign
	ldw	x, #0x0002
	ldw	(0x27, sp), x
	clrw	x
	ldw	(0x25, sp), x
	Smain$main$210 ==.
; genLabel
00104$:
	Smain$main$211 ==.
;	./src/main.c: 108: if (ADCx > 628) {
; genCmp
; genCmpTop
	ldw	x, (0x2e, sp)
	cpw	x, #0x0274
	jrugt	00259$
	jp	00107$
00259$:
; skipping generated iCode
	Smain$main$212 ==.
	Smain$main$213 ==.
;	./src/main.c: 109: lcd_gotoxy(11, 0);
; genIPush
	push	#0x00
	Smain$main$214 ==.
; genIPush
	push	#0x0b
	Smain$main$215 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$216 ==.
	Smain$main$217 ==.
;	./src/main.c: 110: sprintf(text,"kamen");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_6+0)
	Smain$main$218 ==.
	push	#((___str_6+0) >> 8)
	Smain$main$219 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$220 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$221 ==.
	Smain$main$222 ==.
;	./src/main.c: 111: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$223 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$224 ==.
	Smain$main$225 ==.
;	./src/main.c: 112: stavty = 3;
; genAssign
	ldw	x, #0x0003
	ldw	(0x27, sp), x
	clrw	x
	ldw	(0x25, sp), x
	Smain$main$226 ==.
; genLabel
00107$:
	Smain$main$227 ==.
;	./src/main.c: 118: if (BTN_PUSH && x == 0) {
; genIPush
	push	#0x10
	Smain$main$228 ==.
; genIPush
	push	#0x14
	Smain$main$229 ==.
	push	#0x50
	Smain$main$230 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Smain$main$231 ==.
; genIfx
	tnz	a
	jreq	00260$
	jp	00142$
00260$:
; genIfx
	ldw	x, (0x2c, sp)
	jreq	00261$
	jp	00142$
00261$:
	Smain$main$232 ==.
	Smain$main$233 ==.
;	./src/main.c: 122: random = milis() % 3;
; genCall
	call	_milis
	Smain$main$234 ==.
; genIPush
	push	#0x03
	Smain$main$235 ==.
	push	#0x00
	Smain$main$236 ==.
	push	#0x00
	Smain$main$237 ==.
	push	#0x00
	Smain$main$238 ==.
; genIPush
	pushw	x
	Smain$main$239 ==.
	pushw	y
	Smain$main$240 ==.
; genCall
	call	__modulong
	addw	sp, #8
	Smain$main$241 ==.
; genCast
; genAssign
; genAssign
	ldw	(0x29, sp), x
	Smain$main$242 ==.
;	./src/main.c: 124: if (random == 0) {
; genIfx
	ldw	x, (0x29, sp)
	jreq	00262$
	jp	00109$
00262$:
	Smain$main$243 ==.
	Smain$main$244 ==.
;	./src/main.c: 125: lcd_gotoxy(11, 1);
; genIPush
	push	#0x01
	Smain$main$245 ==.
; genIPush
	push	#0x0b
	Smain$main$246 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$247 ==.
	Smain$main$248 ==.
;	./src/main.c: 126: sprintf(text,"papir");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_4+0)
	Smain$main$249 ==.
	push	#((___str_4+0) >> 8)
	Smain$main$250 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$251 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$252 ==.
	Smain$main$253 ==.
;	./src/main.c: 127: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$254 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$255 ==.
	Smain$main$256 ==.
; genLabel
00109$:
	Smain$main$257 ==.
	Smain$main$258 ==.
;	./src/main.c: 131: if (random == 1) {
; genCast
; genAssign
	ldw	y, (0x29, sp)
	ldw	(0x2e, sp), y
; genCmpEQorNE
	ldw	x, (0x2e, sp)
	decw	x
	jrne	00264$
	ld	a, #0x01
	ld	(0x2b, sp), a
	jp	00265$
00264$:
	clr	(0x2b, sp)
00265$:
	Smain$main$259 ==.
; genIfx
	tnz	(0x2b, sp)
	jrne	00266$
	jp	00111$
00266$:
	Smain$main$260 ==.
	Smain$main$261 ==.
;	./src/main.c: 132: lcd_gotoxy(11, 1);
; genIPush
	push	#0x01
	Smain$main$262 ==.
; genIPush
	push	#0x0b
	Smain$main$263 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$264 ==.
	Smain$main$265 ==.
;	./src/main.c: 133: sprintf(text,"nuzky");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_5+0)
	Smain$main$266 ==.
	push	#((___str_5+0) >> 8)
	Smain$main$267 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$268 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$269 ==.
	Smain$main$270 ==.
;	./src/main.c: 134: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$271 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$272 ==.
	Smain$main$273 ==.
; genLabel
00111$:
	Smain$main$274 ==.
	Smain$main$275 ==.
;	./src/main.c: 138: if (random == 2) {
; genCmpEQorNE
	ldw	x, (0x2e, sp)
	cpw	x, #0x0002
	jrne	00268$
	ld	a, #0x01
	ld	(0x2c, sp), a
	jp	00269$
00268$:
	clr	(0x2c, sp)
00269$:
	Smain$main$276 ==.
; genIfx
	tnz	(0x2c, sp)
	jrne	00270$
	jp	00113$
00270$:
	Smain$main$277 ==.
	Smain$main$278 ==.
;	./src/main.c: 139: lcd_gotoxy(11, 1);
; genIPush
	push	#0x01
	Smain$main$279 ==.
; genIPush
	push	#0x0b
	Smain$main$280 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$281 ==.
	Smain$main$282 ==.
;	./src/main.c: 140: sprintf(text,"kamen");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_6+0)
	Smain$main$283 ==.
	push	#((___str_6+0) >> 8)
	Smain$main$284 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$285 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$286 ==.
	Smain$main$287 ==.
;	./src/main.c: 141: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$288 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$289 ==.
	Smain$main$290 ==.
; genLabel
00113$:
	Smain$main$291 ==.
;	./src/main.c: 145: lcd_gotoxy(10 , 3);
; genIPush
	push	#0x03
	Smain$main$292 ==.
; genIPush
	push	#0x0a
	Smain$main$293 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$294 ==.
	Smain$main$295 ==.
;	./src/main.c: 146: sprintf(text,"%1u",bodystm);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x21, sp)
	pushw	x
	Smain$main$296 ==.
; genIPush
	push	#<(___str_7+0)
	Smain$main$297 ==.
	push	#((___str_7+0) >> 8)
	Smain$main$298 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$299 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$300 ==.
	Smain$main$301 ==.
;	./src/main.c: 147: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$302 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$303 ==.
	Smain$main$304 ==.
;	./src/main.c: 149: lcd_gotoxy(10 , 2);
; genIPush
	push	#0x02
	Smain$main$305 ==.
; genIPush
	push	#0x0a
	Smain$main$306 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$307 ==.
	Smain$main$308 ==.
;	./src/main.c: 150: sprintf(text,"%1u",bodyty);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x23, sp)
	pushw	x
	Smain$main$309 ==.
; genIPush
	push	#<(___str_7+0)
	Smain$main$310 ==.
	push	#((___str_7+0) >> 8)
	Smain$main$311 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$312 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$313 ==.
	Smain$main$314 ==.
;	./src/main.c: 151: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$315 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$316 ==.
	Smain$main$317 ==.
	Smain$main$318 ==.
;	./src/main.c: 156: if (stavty == 1  ) {
; genCmpEQorNE
	ldw	x, (0x27, sp)
	decw	x
	jrne	00272$
	ldw	x, (0x25, sp)
	jrne	00272$
	ld	a, #0x01
	ld	(0x2d, sp), a
	jp	00273$
00272$:
	clr	(0x2d, sp)
00273$:
	Smain$main$319 ==.
	Smain$main$320 ==.
;	./src/main.c: 167: if (stavty == 2 ) {
; genCmpEQorNE
	ldw	x, (0x27, sp)
	cpw	x, #0x0002
	jrne	00275$
	ldw	x, (0x25, sp)
	jrne	00275$
	ld	a, #0x01
	ld	(0x2e, sp), a
	jp	00276$
00275$:
	clr	(0x2e, sp)
00276$:
	Smain$main$321 ==.
	Smain$main$322 ==.
;	./src/main.c: 184: if (stavty == 3 ) {
; genCmpEQorNE
	ldw	x, (0x27, sp)
	cpw	x, #0x0003
	jrne	00278$
	ldw	x, (0x25, sp)
	jrne	00278$
	ld	a, #0x01
	ld	(0x2f, sp), a
	jp	00279$
00278$:
	clr	(0x2f, sp)
00279$:
	Smain$main$323 ==.
	Smain$main$324 ==.
;	./src/main.c: 154: if (random == 0 ) {
; genIfx
	ldw	x, (0x29, sp)
	jreq	00280$
	jp	00121$
00280$:
	Smain$main$325 ==.
	Smain$main$326 ==.
;	./src/main.c: 156: if (stavty == 1  ) {
; genIfx
	tnz	(0x2d, sp)
	jrne	00281$
	jp	00115$
00281$:
	Smain$main$327 ==.
	Smain$main$328 ==.
;	./src/main.c: 157: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$329 ==.
; genIPush
	push	#0x0e
	Smain$main$330 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$331 ==.
	Smain$main$332 ==.
;	./src/main.c: 158: sprintf(text,"remiza");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_8+0)
	Smain$main$333 ==.
	push	#((___str_8+0) >> 8)
	Smain$main$334 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$335 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$336 ==.
	Smain$main$337 ==.
;	./src/main.c: 159: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$338 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$339 ==.
	Smain$main$340 ==.
;	./src/main.c: 161: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$341 ==.
; genIPush
	push	#0x0e
	Smain$main$342 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$343 ==.
	Smain$main$344 ==.
;	./src/main.c: 162: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$345 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$346 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$347 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$348 ==.
	Smain$main$349 ==.
;	./src/main.c: 163: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$350 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$351 ==.
	Smain$main$352 ==.
; genLabel
00115$:
	Smain$main$353 ==.
;	./src/main.c: 167: if (stavty == 2 ) {
; genIfx
	tnz	(0x2e, sp)
	jrne	00282$
	jp	00117$
00282$:
	Smain$main$354 ==.
	Smain$main$355 ==.
;	./src/main.c: 168: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$356 ==.
; genIPush
	push	#0x0e
	Smain$main$357 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$358 ==.
	Smain$main$359 ==.
;	./src/main.c: 169: sprintf(text,"vyhra");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_10+0)
	Smain$main$360 ==.
	push	#((___str_10+0) >> 8)
	Smain$main$361 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$362 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$363 ==.
	Smain$main$364 ==.
;	./src/main.c: 170: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$365 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$366 ==.
	Smain$main$367 ==.
;	./src/main.c: 172: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$368 ==.
; genIPush
	push	#0x0e
	Smain$main$369 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$370 ==.
	Smain$main$371 ==.
;	./src/main.c: 173: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$372 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$373 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$374 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$375 ==.
	Smain$main$376 ==.
;	./src/main.c: 174: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$377 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$378 ==.
	Smain$main$379 ==.
;	./src/main.c: 175: bodyty = bodyty +1;
; genCast
; genAssign
	ldw	x, (0x23, sp)
; genPlus
	incw	x
; genCast
; genAssign
; genAssign
	ldw	(0x23, sp), x
	Smain$main$380 ==.
;	./src/main.c: 177: lcd_gotoxy(10 , 2);
; genIPush
	push	#0x02
	Smain$main$381 ==.
; genIPush
	push	#0x0a
	Smain$main$382 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$383 ==.
	Smain$main$384 ==.
;	./src/main.c: 178: sprintf(text,"%1u",bodyty);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x23, sp)
	pushw	x
	Smain$main$385 ==.
; genIPush
	push	#<(___str_7+0)
	Smain$main$386 ==.
	push	#((___str_7+0) >> 8)
	Smain$main$387 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$388 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$389 ==.
	Smain$main$390 ==.
;	./src/main.c: 179: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$391 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$392 ==.
	Smain$main$393 ==.
;	./src/main.c: 180: G4_HIGH;
; genIPush
	push	#0x10
	Smain$main$394 ==.
; genIPush
	push	#0x1e
	Smain$main$395 ==.
	push	#0x50
	Smain$main$396 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Smain$main$397 ==.
	Smain$main$398 ==.
;	./src/main.c: 181: delay_ms(50);
; genIPush
	push	#0x32
	Smain$main$399 ==.
	push	#0x00
	Smain$main$400 ==.
; genCall
	call	_delay_ms
	popw	x
	Smain$main$401 ==.
	Smain$main$402 ==.
;	./src/main.c: 182: G4_LOW;
; genIPush
	push	#0x10
	Smain$main$403 ==.
; genIPush
	push	#0x1e
	Smain$main$404 ==.
	push	#0x50
	Smain$main$405 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Smain$main$406 ==.
	Smain$main$407 ==.
; genLabel
00117$:
	Smain$main$408 ==.
;	./src/main.c: 184: if (stavty == 3 ) {
; genIfx
	tnz	(0x2f, sp)
	jrne	00283$
	jp	00121$
00283$:
	Smain$main$409 ==.
	Smain$main$410 ==.
;	./src/main.c: 185: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$411 ==.
; genIPush
	push	#0x0e
	Smain$main$412 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$413 ==.
	Smain$main$414 ==.
;	./src/main.c: 186: sprintf(text,"vyhra");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_10+0)
	Smain$main$415 ==.
	push	#((___str_10+0) >> 8)
	Smain$main$416 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$417 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$418 ==.
	Smain$main$419 ==.
;	./src/main.c: 187: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$420 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$421 ==.
	Smain$main$422 ==.
;	./src/main.c: 188: bodystm = bodystm +1;
; genCast
; genAssign
	ldw	x, (0x21, sp)
; genPlus
	incw	x
; genCast
; genAssign
; genAssign
	ldw	(0x21, sp), x
	Smain$main$423 ==.
;	./src/main.c: 190: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$424 ==.
; genIPush
	push	#0x0e
	Smain$main$425 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$426 ==.
	Smain$main$427 ==.
;	./src/main.c: 191: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$428 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$429 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$430 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$431 ==.
	Smain$main$432 ==.
;	./src/main.c: 192: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$433 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$434 ==.
	Smain$main$435 ==.
;	./src/main.c: 194: lcd_gotoxy(10 , 3);
; genIPush
	push	#0x03
	Smain$main$436 ==.
; genIPush
	push	#0x0a
	Smain$main$437 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$438 ==.
	Smain$main$439 ==.
;	./src/main.c: 195: sprintf(text,"%1u",bodystm);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x21, sp)
	pushw	x
	Smain$main$440 ==.
; genIPush
	push	#<(___str_7+0)
	Smain$main$441 ==.
	push	#((___str_7+0) >> 8)
	Smain$main$442 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$443 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$444 ==.
	Smain$main$445 ==.
;	./src/main.c: 196: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$446 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$447 ==.
	Smain$main$448 ==.
; genLabel
00121$:
	Smain$main$449 ==.
;	./src/main.c: 201: if (random == 1) {
; genIfx
	tnz	(0x2b, sp)
	jrne	00284$
	jp	00129$
00284$:
	Smain$main$450 ==.
	Smain$main$451 ==.
;	./src/main.c: 203: if (stavty == 1  ) {
; genIfx
	tnz	(0x2d, sp)
	jrne	00285$
	jp	00123$
00285$:
	Smain$main$452 ==.
	Smain$main$453 ==.
;	./src/main.c: 204: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$454 ==.
; genIPush
	push	#0x0e
	Smain$main$455 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$456 ==.
	Smain$main$457 ==.
;	./src/main.c: 205: sprintf(text,"vyhra");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_10+0)
	Smain$main$458 ==.
	push	#((___str_10+0) >> 8)
	Smain$main$459 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$460 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$461 ==.
	Smain$main$462 ==.
;	./src/main.c: 206: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$463 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$464 ==.
	Smain$main$465 ==.
;	./src/main.c: 207: bodystm = bodystm +1;
; genCast
; genAssign
	ldw	x, (0x21, sp)
; genPlus
	incw	x
; genCast
; genAssign
; genAssign
	ldw	(0x21, sp), x
	Smain$main$466 ==.
;	./src/main.c: 209: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$467 ==.
; genIPush
	push	#0x0e
	Smain$main$468 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$469 ==.
	Smain$main$470 ==.
;	./src/main.c: 210: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$471 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$472 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$473 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$474 ==.
	Smain$main$475 ==.
;	./src/main.c: 211: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$476 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$477 ==.
	Smain$main$478 ==.
;	./src/main.c: 213: lcd_gotoxy(10 , 3);
; genIPush
	push	#0x03
	Smain$main$479 ==.
; genIPush
	push	#0x0a
	Smain$main$480 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$481 ==.
	Smain$main$482 ==.
;	./src/main.c: 214: sprintf(text,"%1u",bodystm);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x21, sp)
	pushw	x
	Smain$main$483 ==.
; genIPush
	push	#<(___str_7+0)
	Smain$main$484 ==.
	push	#((___str_7+0) >> 8)
	Smain$main$485 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$486 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$487 ==.
	Smain$main$488 ==.
;	./src/main.c: 215: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$489 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$490 ==.
	Smain$main$491 ==.
; genLabel
00123$:
	Smain$main$492 ==.
;	./src/main.c: 217: if (stavty == 2 ) {
; genIfx
	tnz	(0x2e, sp)
	jrne	00286$
	jp	00125$
00286$:
	Smain$main$493 ==.
	Smain$main$494 ==.
;	./src/main.c: 218: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$495 ==.
; genIPush
	push	#0x0e
	Smain$main$496 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$497 ==.
	Smain$main$498 ==.
;	./src/main.c: 219: sprintf(text,"remiza");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_8+0)
	Smain$main$499 ==.
	push	#((___str_8+0) >> 8)
	Smain$main$500 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$501 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$502 ==.
	Smain$main$503 ==.
;	./src/main.c: 220: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$504 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$505 ==.
	Smain$main$506 ==.
;	./src/main.c: 222: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$507 ==.
; genIPush
	push	#0x0e
	Smain$main$508 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$509 ==.
	Smain$main$510 ==.
;	./src/main.c: 223: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$511 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$512 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$513 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$514 ==.
	Smain$main$515 ==.
;	./src/main.c: 224: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$516 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$517 ==.
	Smain$main$518 ==.
; genLabel
00125$:
	Smain$main$519 ==.
;	./src/main.c: 228: if (stavty == 3 ) {
; genIfx
	tnz	(0x2f, sp)
	jrne	00287$
	jp	00129$
00287$:
	Smain$main$520 ==.
	Smain$main$521 ==.
;	./src/main.c: 229: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$522 ==.
; genIPush
	push	#0x0e
	Smain$main$523 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$524 ==.
	Smain$main$525 ==.
;	./src/main.c: 230: sprintf(text,"vyhra");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_10+0)
	Smain$main$526 ==.
	push	#((___str_10+0) >> 8)
	Smain$main$527 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$528 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$529 ==.
	Smain$main$530 ==.
;	./src/main.c: 231: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$531 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$532 ==.
	Smain$main$533 ==.
;	./src/main.c: 232: bodyty = bodyty +1;
; genCast
; genAssign
	ldw	x, (0x23, sp)
; genPlus
	incw	x
; genCast
; genAssign
; genAssign
	ldw	(0x23, sp), x
	Smain$main$534 ==.
;	./src/main.c: 234: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$535 ==.
; genIPush
	push	#0x0e
	Smain$main$536 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$537 ==.
	Smain$main$538 ==.
;	./src/main.c: 235: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$539 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$540 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$541 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$542 ==.
	Smain$main$543 ==.
;	./src/main.c: 236: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$544 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$545 ==.
	Smain$main$546 ==.
;	./src/main.c: 238: lcd_gotoxy(10 , 2);
; genIPush
	push	#0x02
	Smain$main$547 ==.
; genIPush
	push	#0x0a
	Smain$main$548 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$549 ==.
	Smain$main$550 ==.
;	./src/main.c: 239: sprintf(text,"%1u",bodyty);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x23, sp)
	pushw	x
	Smain$main$551 ==.
; genIPush
	push	#<(___str_7+0)
	Smain$main$552 ==.
	push	#((___str_7+0) >> 8)
	Smain$main$553 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$554 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$555 ==.
	Smain$main$556 ==.
;	./src/main.c: 240: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$557 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$558 ==.
	Smain$main$559 ==.
;	./src/main.c: 241: G4_HIGH;
; genIPush
	push	#0x10
	Smain$main$560 ==.
; genIPush
	push	#0x1e
	Smain$main$561 ==.
	push	#0x50
	Smain$main$562 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Smain$main$563 ==.
	Smain$main$564 ==.
;	./src/main.c: 242: delay_ms(50);
; genIPush
	push	#0x32
	Smain$main$565 ==.
	push	#0x00
	Smain$main$566 ==.
; genCall
	call	_delay_ms
	popw	x
	Smain$main$567 ==.
	Smain$main$568 ==.
;	./src/main.c: 243: G4_LOW;
; genIPush
	push	#0x10
	Smain$main$569 ==.
; genIPush
	push	#0x1e
	Smain$main$570 ==.
	push	#0x50
	Smain$main$571 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Smain$main$572 ==.
	Smain$main$573 ==.
; genLabel
00129$:
	Smain$main$574 ==.
;	./src/main.c: 247: if (random == 2) {
; genIfx
	tnz	(0x2c, sp)
	jrne	00288$
	jp	00137$
00288$:
	Smain$main$575 ==.
	Smain$main$576 ==.
;	./src/main.c: 249: if (stavty == 1  ) {
; genIfx
	tnz	(0x2d, sp)
	jrne	00289$
	jp	00131$
00289$:
	Smain$main$577 ==.
	Smain$main$578 ==.
;	./src/main.c: 250: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$579 ==.
; genIPush
	push	#0x0e
	Smain$main$580 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$581 ==.
	Smain$main$582 ==.
;	./src/main.c: 251: sprintf(text,"vyhra");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_10+0)
	Smain$main$583 ==.
	push	#((___str_10+0) >> 8)
	Smain$main$584 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$585 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$586 ==.
	Smain$main$587 ==.
;	./src/main.c: 252: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$588 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$589 ==.
	Smain$main$590 ==.
;	./src/main.c: 253: bodyty = bodyty +1;
; genCast
; genAssign
	ldw	x, (0x23, sp)
; genPlus
	incw	x
; genCast
; genAssign
; genAssign
	ldw	(0x23, sp), x
	Smain$main$591 ==.
;	./src/main.c: 255: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$592 ==.
; genIPush
	push	#0x0e
	Smain$main$593 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$594 ==.
	Smain$main$595 ==.
;	./src/main.c: 256: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$596 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$597 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$598 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$599 ==.
	Smain$main$600 ==.
;	./src/main.c: 257: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$601 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$602 ==.
	Smain$main$603 ==.
;	./src/main.c: 259: lcd_gotoxy(10 , 2);
; genIPush
	push	#0x02
	Smain$main$604 ==.
; genIPush
	push	#0x0a
	Smain$main$605 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$606 ==.
	Smain$main$607 ==.
;	./src/main.c: 260: sprintf(text,"%1u",bodyty);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x23, sp)
	pushw	x
	Smain$main$608 ==.
; genIPush
	push	#<(___str_7+0)
	Smain$main$609 ==.
	push	#((___str_7+0) >> 8)
	Smain$main$610 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$611 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$612 ==.
	Smain$main$613 ==.
;	./src/main.c: 261: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$614 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$615 ==.
	Smain$main$616 ==.
;	./src/main.c: 262: G4_HIGH;
; genIPush
	push	#0x10
	Smain$main$617 ==.
; genIPush
	push	#0x1e
	Smain$main$618 ==.
	push	#0x50
	Smain$main$619 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Smain$main$620 ==.
	Smain$main$621 ==.
;	./src/main.c: 263: delay_ms(50);
; genIPush
	push	#0x32
	Smain$main$622 ==.
	push	#0x00
	Smain$main$623 ==.
; genCall
	call	_delay_ms
	popw	x
	Smain$main$624 ==.
	Smain$main$625 ==.
;	./src/main.c: 264: G4_LOW;
; genIPush
	push	#0x10
	Smain$main$626 ==.
; genIPush
	push	#0x1e
	Smain$main$627 ==.
	push	#0x50
	Smain$main$628 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Smain$main$629 ==.
	Smain$main$630 ==.
; genLabel
00131$:
	Smain$main$631 ==.
;	./src/main.c: 266: if (stavty == 2 ) {
; genIfx
	tnz	(0x2e, sp)
	jrne	00290$
	jp	00133$
00290$:
	Smain$main$632 ==.
	Smain$main$633 ==.
;	./src/main.c: 267: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$634 ==.
; genIPush
	push	#0x0e
	Smain$main$635 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$636 ==.
	Smain$main$637 ==.
;	./src/main.c: 268: sprintf(text,"vyhra");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_10+0)
	Smain$main$638 ==.
	push	#((___str_10+0) >> 8)
	Smain$main$639 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$640 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$641 ==.
	Smain$main$642 ==.
;	./src/main.c: 269: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$643 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$644 ==.
	Smain$main$645 ==.
;	./src/main.c: 270: bodystm = bodystm +1;
; genCast
; genAssign
	ldw	x, (0x21, sp)
; genPlus
	incw	x
; genCast
; genAssign
; genAssign
	ldw	(0x21, sp), x
	Smain$main$646 ==.
;	./src/main.c: 272: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$647 ==.
; genIPush
	push	#0x0e
	Smain$main$648 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$649 ==.
	Smain$main$650 ==.
;	./src/main.c: 273: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$651 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$652 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$653 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$654 ==.
	Smain$main$655 ==.
;	./src/main.c: 274: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$656 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$657 ==.
	Smain$main$658 ==.
;	./src/main.c: 276: lcd_gotoxy(10 , 3);
; genIPush
	push	#0x03
	Smain$main$659 ==.
; genIPush
	push	#0x0a
	Smain$main$660 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$661 ==.
	Smain$main$662 ==.
;	./src/main.c: 277: sprintf(text,"%1u",bodystm);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x21, sp)
	pushw	x
	Smain$main$663 ==.
; genIPush
	push	#<(___str_7+0)
	Smain$main$664 ==.
	push	#((___str_7+0) >> 8)
	Smain$main$665 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$666 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$667 ==.
	Smain$main$668 ==.
;	./src/main.c: 278: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$669 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$670 ==.
	Smain$main$671 ==.
; genLabel
00133$:
	Smain$main$672 ==.
;	./src/main.c: 280: if (stavty == 3 ) {
; genIfx
	tnz	(0x2f, sp)
	jrne	00291$
	jp	00137$
00291$:
	Smain$main$673 ==.
	Smain$main$674 ==.
;	./src/main.c: 281: lcd_gotoxy(14 , 3);
; genIPush
	push	#0x03
	Smain$main$675 ==.
; genIPush
	push	#0x0e
	Smain$main$676 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$677 ==.
	Smain$main$678 ==.
;	./src/main.c: 282: sprintf(text,"remiza");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_8+0)
	Smain$main$679 ==.
	push	#((___str_8+0) >> 8)
	Smain$main$680 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$681 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$682 ==.
	Smain$main$683 ==.
;	./src/main.c: 283: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$684 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$685 ==.
	Smain$main$686 ==.
;	./src/main.c: 285: lcd_gotoxy(14 , 2);
; genIPush
	push	#0x02
	Smain$main$687 ==.
; genIPush
	push	#0x0e
	Smain$main$688 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$689 ==.
	Smain$main$690 ==.
;	./src/main.c: 286: sprintf(text,"      ");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_9+0)
	Smain$main$691 ==.
	push	#((___str_9+0) >> 8)
	Smain$main$692 ==.
; genIPush
	ldw	x, sp
	addw	x, #3
	pushw	x
	Smain$main$693 ==.
; genCall
	call	_sprintf
	addw	sp, #4
	Smain$main$694 ==.
	Smain$main$695 ==.
;	./src/main.c: 287: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$696 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$697 ==.
	Smain$main$698 ==.
	Smain$main$699 ==.
;	./src/main.c: 289: x = 1;
; genLabel
00137$:
	Smain$main$700 ==.
;	./src/main.c: 291: x = 0;
; genAssign
	clrw	x
	ldw	(0x2c, sp), x
	Smain$main$701 ==.
;	./src/main.c: 292: delay_ms(500);
; genIPush
	push	#0xf4
	Smain$main$702 ==.
	push	#0x01
	Smain$main$703 ==.
; genCall
	call	_delay_ms
	popw	x
	Smain$main$704 ==.
	Smain$main$705 ==.
;	./src/main.c: 293: delay_ms(500);
; genIPush
	push	#0xf4
	Smain$main$706 ==.
	push	#0x01
	Smain$main$707 ==.
; genCall
	call	_delay_ms
	popw	x
	Smain$main$708 ==.
	Smain$main$709 ==.
;	./src/main.c: 294: delay_ms(500);
; genIPush
	push	#0xf4
	Smain$main$710 ==.
	push	#0x01
	Smain$main$711 ==.
; genCall
	call	_delay_ms
	popw	x
	Smain$main$712 ==.
	Smain$main$713 ==.
; genGoto
	jp	00142$
; genLabel
00144$:
	Smain$main$714 ==.
;	./src/main.c: 310: }
; genEndFunction
	addw	sp, #47
	Smain$main$715 ==.
	Smain$main$716 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$717 ==.
	.area CODE
	.area CONST
Fmain$__str_0$0_0$0 == .
	.area CONST
___str_0:
	.ascii "tvuj vyber:"
	.db 0x00
	.area CODE
Fmain$__str_1$0_0$0 == .
	.area CONST
___str_1:
	.ascii "stm8 vyber:"
	.db 0x00
	.area CODE
Fmain$__str_2$0_0$0 == .
	.area CONST
___str_2:
	.ascii "body ty:"
	.db 0x00
	.area CODE
Fmain$__str_3$0_0$0 == .
	.area CONST
___str_3:
	.ascii "boty stm8:"
	.db 0x00
	.area CODE
Fmain$__str_4$0_0$0 == .
	.area CONST
___str_4:
	.ascii "papir"
	.db 0x00
	.area CODE
Fmain$__str_5$0_0$0 == .
	.area CONST
___str_5:
	.ascii "nuzky"
	.db 0x00
	.area CODE
Fmain$__str_6$0_0$0 == .
	.area CONST
___str_6:
	.ascii "kamen"
	.db 0x00
	.area CODE
Fmain$__str_7$0_0$0 == .
	.area CONST
___str_7:
	.ascii "%1u"
	.db 0x00
	.area CODE
Fmain$__str_8$0_0$0 == .
	.area CONST
___str_8:
	.ascii "remiza"
	.db 0x00
	.area CODE
Fmain$__str_9$0_0$0 == .
	.area CONST
___str_9:
	.ascii "      "
	.db 0x00
	.area CODE
Fmain$__str_10$0_0$0 == .
	.area CONST
___str_10:
	.ascii "vyhra"
	.db 0x00
	.area CODE
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
	.ascii "./src/main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$_delay_cycl$0)
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$2-Smain$_delay_cycl$0
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$3-Smain$_delay_cycl$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$5-Smain$_delay_cycl$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$7-Smain$_delay_cycl$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$8-Smain$_delay_cycl$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$9-Smain$_delay_cycl$8
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	1+Smain$_delay_cycl$10-Smain$_delay_cycl$9
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$_delay_us$12)
	.db	3
	.sleb128	40
	.db	1
	.db	9
	.dw	Smain$_delay_us$35-Smain$_delay_us$12
	.db	3
	.sleb128	-15
	.db	1
	.db	9
	.dw	Smain$_delay_us$39-Smain$_delay_us$35
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Smain$_delay_us$40-Smain$_delay_us$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$_delay_us$41-Smain$_delay_us$40
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$delay_ms$43)
	.db	3
	.sleb128	24
	.db	1
	.db	9
	.dw	Smain$delay_ms$46-Smain$delay_ms$43
	.db	3
	.sleb128	2
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Smain$delay_ms$50-Smain$delay_ms$46
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$delay_ms$56-Smain$delay_ms$50
	.db	3
	.sleb128	0
	.db	1
	.db	9
	.dw	Smain$delay_ms$62-Smain$delay_ms$56
	.db	3
	.sleb128	0
	.db	1
	.db	9
	.dw	Smain$delay_ms$68-Smain$delay_ms$62
	.db	3
	.sleb128	0
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Smain$delay_ms$72-Smain$delay_ms$68
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$delay_ms$73-Smain$delay_ms$72
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	1+Smain$delay_ms$75-Smain$delay_ms$73
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$setup$77)
	.db	3
	.sleb128	34
	.db	1
	.db	9
	.dw	Smain$setup$79-Smain$setup$77
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$82-Smain$setup$79
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$88-Smain$setup$82
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$94-Smain$setup$88
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$95-Smain$setup$94
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$96-Smain$setup$95
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$setup$100-Smain$setup$96
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$104-Smain$setup$100
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$setup$107-Smain$setup$104
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$110-Smain$setup$107
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$113-Smain$setup$110
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$116-Smain$setup$113
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$117-Smain$setup$116
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$setup$118-Smain$setup$117
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$120)
	.db	3
	.sleb128	61
	.db	1
	.db	9
	.dw	Smain$main$123-Smain$main$120
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Smain$main$124-Smain$main$123
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Smain$main$125-Smain$main$124
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$127-Smain$main$125
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$131-Smain$main$127
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$136-Smain$main$131
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$139-Smain$main$136
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$143-Smain$main$139
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$148-Smain$main$143
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$151-Smain$main$148
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$155-Smain$main$151
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$160-Smain$main$155
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$163-Smain$main$160
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$167-Smain$main$163
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$172-Smain$main$167
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$175-Smain$main$172
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$179-Smain$main$175
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$181-Smain$main$179
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$185-Smain$main$181
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$190-Smain$main$185
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$193-Smain$main$190
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$195-Smain$main$193
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$197-Smain$main$195
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$201-Smain$main$197
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$206-Smain$main$201
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$209-Smain$main$206
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$211-Smain$main$209
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$213-Smain$main$211
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$217-Smain$main$213
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$222-Smain$main$217
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$225-Smain$main$222
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$227-Smain$main$225
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$main$233-Smain$main$227
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$242-Smain$main$233
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$244-Smain$main$242
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$248-Smain$main$244
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$253-Smain$main$248
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$258-Smain$main$253
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$261-Smain$main$258
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$265-Smain$main$261
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$270-Smain$main$265
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$275-Smain$main$270
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$278-Smain$main$275
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$282-Smain$main$278
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$287-Smain$main$282
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$291-Smain$main$287
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$295-Smain$main$291
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$301-Smain$main$295
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$304-Smain$main$301
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$308-Smain$main$304
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$314-Smain$main$308
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$318-Smain$main$314
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Smain$main$320-Smain$main$318
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Smain$main$322-Smain$main$320
	.db	3
	.sleb128	17
	.db	1
	.db	9
	.dw	Smain$main$324-Smain$main$322
	.db	3
	.sleb128	-30
	.db	1
	.db	9
	.dw	Smain$main$326-Smain$main$324
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$328-Smain$main$326
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$332-Smain$main$328
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$337-Smain$main$332
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$340-Smain$main$337
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$344-Smain$main$340
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$349-Smain$main$344
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$353-Smain$main$349
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$355-Smain$main$353
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$359-Smain$main$355
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$364-Smain$main$359
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$367-Smain$main$364
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$371-Smain$main$367
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$376-Smain$main$371
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$379-Smain$main$376
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$380-Smain$main$379
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$384-Smain$main$380
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$390-Smain$main$384
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$393-Smain$main$390
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$398-Smain$main$393
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$402-Smain$main$398
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$408-Smain$main$402
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$410-Smain$main$408
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$414-Smain$main$410
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$419-Smain$main$414
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$422-Smain$main$419
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$423-Smain$main$422
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$427-Smain$main$423
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$432-Smain$main$427
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$435-Smain$main$432
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$439-Smain$main$435
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$445-Smain$main$439
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$449-Smain$main$445
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Smain$main$451-Smain$main$449
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$453-Smain$main$451
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$457-Smain$main$453
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$462-Smain$main$457
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$465-Smain$main$462
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$466-Smain$main$465
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$470-Smain$main$466
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$475-Smain$main$470
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$478-Smain$main$475
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$482-Smain$main$478
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$488-Smain$main$482
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$492-Smain$main$488
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$494-Smain$main$492
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$498-Smain$main$494
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$503-Smain$main$498
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$506-Smain$main$503
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$510-Smain$main$506
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$515-Smain$main$510
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$519-Smain$main$515
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$521-Smain$main$519
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$525-Smain$main$521
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$530-Smain$main$525
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$533-Smain$main$530
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$534-Smain$main$533
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$538-Smain$main$534
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$543-Smain$main$538
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$546-Smain$main$543
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$550-Smain$main$546
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$556-Smain$main$550
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$559-Smain$main$556
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$564-Smain$main$559
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$568-Smain$main$564
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$574-Smain$main$568
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$576-Smain$main$574
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$578-Smain$main$576
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$582-Smain$main$578
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$587-Smain$main$582
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$590-Smain$main$587
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$591-Smain$main$590
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$595-Smain$main$591
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$600-Smain$main$595
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$603-Smain$main$600
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$607-Smain$main$603
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$613-Smain$main$607
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$616-Smain$main$613
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$621-Smain$main$616
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$625-Smain$main$621
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$631-Smain$main$625
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$633-Smain$main$631
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$637-Smain$main$633
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$642-Smain$main$637
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$645-Smain$main$642
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$646-Smain$main$645
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$650-Smain$main$646
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$655-Smain$main$650
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$658-Smain$main$655
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$662-Smain$main$658
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$668-Smain$main$662
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$672-Smain$main$668
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$674-Smain$main$672
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$678-Smain$main$674
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$683-Smain$main$678
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$686-Smain$main$683
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$690-Smain$main$686
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$695-Smain$main$690
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$699-Smain$main$695
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$700-Smain$main$699
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$701-Smain$main$700
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$705-Smain$main$701
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$709-Smain$main$705
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$714-Smain$main$709
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	1+Smain$main$716-Smain$main$714
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$main$715)
	.dw	0,(Smain$main$717)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$712)
	.dw	0,(Smain$main$715)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$711)
	.dw	0,(Smain$main$712)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$710)
	.dw	0,(Smain$main$711)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$708)
	.dw	0,(Smain$main$710)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$707)
	.dw	0,(Smain$main$708)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$706)
	.dw	0,(Smain$main$707)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$704)
	.dw	0,(Smain$main$706)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$703)
	.dw	0,(Smain$main$704)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$702)
	.dw	0,(Smain$main$703)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$697)
	.dw	0,(Smain$main$702)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$696)
	.dw	0,(Smain$main$697)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$694)
	.dw	0,(Smain$main$696)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$693)
	.dw	0,(Smain$main$694)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$692)
	.dw	0,(Smain$main$693)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$691)
	.dw	0,(Smain$main$692)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$689)
	.dw	0,(Smain$main$691)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$688)
	.dw	0,(Smain$main$689)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$687)
	.dw	0,(Smain$main$688)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$685)
	.dw	0,(Smain$main$687)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$684)
	.dw	0,(Smain$main$685)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$682)
	.dw	0,(Smain$main$684)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$681)
	.dw	0,(Smain$main$682)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$680)
	.dw	0,(Smain$main$681)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$679)
	.dw	0,(Smain$main$680)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$677)
	.dw	0,(Smain$main$679)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$676)
	.dw	0,(Smain$main$677)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$675)
	.dw	0,(Smain$main$676)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$670)
	.dw	0,(Smain$main$675)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$669)
	.dw	0,(Smain$main$670)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$667)
	.dw	0,(Smain$main$669)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$666)
	.dw	0,(Smain$main$667)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$665)
	.dw	0,(Smain$main$666)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$664)
	.dw	0,(Smain$main$665)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$663)
	.dw	0,(Smain$main$664)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$661)
	.dw	0,(Smain$main$663)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$660)
	.dw	0,(Smain$main$661)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$659)
	.dw	0,(Smain$main$660)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$657)
	.dw	0,(Smain$main$659)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$656)
	.dw	0,(Smain$main$657)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$654)
	.dw	0,(Smain$main$656)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$653)
	.dw	0,(Smain$main$654)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$652)
	.dw	0,(Smain$main$653)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$651)
	.dw	0,(Smain$main$652)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$649)
	.dw	0,(Smain$main$651)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$648)
	.dw	0,(Smain$main$649)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$647)
	.dw	0,(Smain$main$648)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$644)
	.dw	0,(Smain$main$647)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$643)
	.dw	0,(Smain$main$644)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$641)
	.dw	0,(Smain$main$643)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$640)
	.dw	0,(Smain$main$641)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$639)
	.dw	0,(Smain$main$640)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$638)
	.dw	0,(Smain$main$639)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$636)
	.dw	0,(Smain$main$638)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$635)
	.dw	0,(Smain$main$636)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$634)
	.dw	0,(Smain$main$635)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$629)
	.dw	0,(Smain$main$634)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$628)
	.dw	0,(Smain$main$629)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$627)
	.dw	0,(Smain$main$628)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$626)
	.dw	0,(Smain$main$627)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$624)
	.dw	0,(Smain$main$626)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$623)
	.dw	0,(Smain$main$624)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$622)
	.dw	0,(Smain$main$623)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$620)
	.dw	0,(Smain$main$622)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$619)
	.dw	0,(Smain$main$620)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$618)
	.dw	0,(Smain$main$619)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$617)
	.dw	0,(Smain$main$618)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$615)
	.dw	0,(Smain$main$617)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$614)
	.dw	0,(Smain$main$615)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$612)
	.dw	0,(Smain$main$614)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$611)
	.dw	0,(Smain$main$612)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$610)
	.dw	0,(Smain$main$611)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$609)
	.dw	0,(Smain$main$610)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$608)
	.dw	0,(Smain$main$609)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$606)
	.dw	0,(Smain$main$608)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$605)
	.dw	0,(Smain$main$606)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$604)
	.dw	0,(Smain$main$605)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$602)
	.dw	0,(Smain$main$604)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$601)
	.dw	0,(Smain$main$602)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$599)
	.dw	0,(Smain$main$601)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$598)
	.dw	0,(Smain$main$599)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$597)
	.dw	0,(Smain$main$598)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$596)
	.dw	0,(Smain$main$597)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$594)
	.dw	0,(Smain$main$596)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$593)
	.dw	0,(Smain$main$594)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$592)
	.dw	0,(Smain$main$593)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$589)
	.dw	0,(Smain$main$592)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$588)
	.dw	0,(Smain$main$589)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$586)
	.dw	0,(Smain$main$588)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$585)
	.dw	0,(Smain$main$586)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$584)
	.dw	0,(Smain$main$585)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$583)
	.dw	0,(Smain$main$584)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$581)
	.dw	0,(Smain$main$583)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$580)
	.dw	0,(Smain$main$581)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$579)
	.dw	0,(Smain$main$580)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$572)
	.dw	0,(Smain$main$579)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$571)
	.dw	0,(Smain$main$572)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$570)
	.dw	0,(Smain$main$571)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$569)
	.dw	0,(Smain$main$570)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$567)
	.dw	0,(Smain$main$569)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$566)
	.dw	0,(Smain$main$567)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$565)
	.dw	0,(Smain$main$566)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$563)
	.dw	0,(Smain$main$565)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$562)
	.dw	0,(Smain$main$563)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$561)
	.dw	0,(Smain$main$562)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$560)
	.dw	0,(Smain$main$561)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$558)
	.dw	0,(Smain$main$560)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$557)
	.dw	0,(Smain$main$558)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$555)
	.dw	0,(Smain$main$557)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$554)
	.dw	0,(Smain$main$555)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$553)
	.dw	0,(Smain$main$554)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$552)
	.dw	0,(Smain$main$553)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$551)
	.dw	0,(Smain$main$552)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$549)
	.dw	0,(Smain$main$551)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$548)
	.dw	0,(Smain$main$549)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$547)
	.dw	0,(Smain$main$548)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$545)
	.dw	0,(Smain$main$547)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$544)
	.dw	0,(Smain$main$545)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$542)
	.dw	0,(Smain$main$544)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$541)
	.dw	0,(Smain$main$542)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$540)
	.dw	0,(Smain$main$541)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$539)
	.dw	0,(Smain$main$540)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$537)
	.dw	0,(Smain$main$539)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$536)
	.dw	0,(Smain$main$537)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$535)
	.dw	0,(Smain$main$536)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$532)
	.dw	0,(Smain$main$535)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$531)
	.dw	0,(Smain$main$532)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$529)
	.dw	0,(Smain$main$531)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$528)
	.dw	0,(Smain$main$529)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$527)
	.dw	0,(Smain$main$528)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$526)
	.dw	0,(Smain$main$527)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$524)
	.dw	0,(Smain$main$526)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$523)
	.dw	0,(Smain$main$524)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$522)
	.dw	0,(Smain$main$523)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$517)
	.dw	0,(Smain$main$522)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$516)
	.dw	0,(Smain$main$517)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$514)
	.dw	0,(Smain$main$516)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$513)
	.dw	0,(Smain$main$514)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$512)
	.dw	0,(Smain$main$513)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$511)
	.dw	0,(Smain$main$512)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$509)
	.dw	0,(Smain$main$511)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$508)
	.dw	0,(Smain$main$509)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$507)
	.dw	0,(Smain$main$508)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$505)
	.dw	0,(Smain$main$507)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$504)
	.dw	0,(Smain$main$505)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$502)
	.dw	0,(Smain$main$504)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$501)
	.dw	0,(Smain$main$502)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$500)
	.dw	0,(Smain$main$501)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$499)
	.dw	0,(Smain$main$500)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$497)
	.dw	0,(Smain$main$499)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$496)
	.dw	0,(Smain$main$497)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$495)
	.dw	0,(Smain$main$496)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$490)
	.dw	0,(Smain$main$495)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$489)
	.dw	0,(Smain$main$490)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$487)
	.dw	0,(Smain$main$489)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$486)
	.dw	0,(Smain$main$487)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$485)
	.dw	0,(Smain$main$486)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$484)
	.dw	0,(Smain$main$485)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$483)
	.dw	0,(Smain$main$484)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$481)
	.dw	0,(Smain$main$483)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$480)
	.dw	0,(Smain$main$481)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$479)
	.dw	0,(Smain$main$480)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$477)
	.dw	0,(Smain$main$479)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$476)
	.dw	0,(Smain$main$477)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$474)
	.dw	0,(Smain$main$476)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$473)
	.dw	0,(Smain$main$474)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$472)
	.dw	0,(Smain$main$473)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$471)
	.dw	0,(Smain$main$472)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$469)
	.dw	0,(Smain$main$471)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$468)
	.dw	0,(Smain$main$469)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$467)
	.dw	0,(Smain$main$468)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$464)
	.dw	0,(Smain$main$467)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$463)
	.dw	0,(Smain$main$464)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$461)
	.dw	0,(Smain$main$463)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$460)
	.dw	0,(Smain$main$461)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$459)
	.dw	0,(Smain$main$460)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$458)
	.dw	0,(Smain$main$459)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$456)
	.dw	0,(Smain$main$458)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$455)
	.dw	0,(Smain$main$456)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$454)
	.dw	0,(Smain$main$455)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$447)
	.dw	0,(Smain$main$454)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$446)
	.dw	0,(Smain$main$447)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$444)
	.dw	0,(Smain$main$446)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$443)
	.dw	0,(Smain$main$444)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$442)
	.dw	0,(Smain$main$443)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$441)
	.dw	0,(Smain$main$442)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$440)
	.dw	0,(Smain$main$441)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$438)
	.dw	0,(Smain$main$440)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$437)
	.dw	0,(Smain$main$438)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$436)
	.dw	0,(Smain$main$437)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$434)
	.dw	0,(Smain$main$436)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$433)
	.dw	0,(Smain$main$434)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$431)
	.dw	0,(Smain$main$433)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$430)
	.dw	0,(Smain$main$431)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$429)
	.dw	0,(Smain$main$430)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$428)
	.dw	0,(Smain$main$429)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$426)
	.dw	0,(Smain$main$428)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$425)
	.dw	0,(Smain$main$426)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$424)
	.dw	0,(Smain$main$425)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$421)
	.dw	0,(Smain$main$424)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$420)
	.dw	0,(Smain$main$421)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$418)
	.dw	0,(Smain$main$420)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$417)
	.dw	0,(Smain$main$418)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$416)
	.dw	0,(Smain$main$417)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$415)
	.dw	0,(Smain$main$416)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$413)
	.dw	0,(Smain$main$415)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$412)
	.dw	0,(Smain$main$413)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$411)
	.dw	0,(Smain$main$412)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$406)
	.dw	0,(Smain$main$411)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$405)
	.dw	0,(Smain$main$406)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$404)
	.dw	0,(Smain$main$405)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$403)
	.dw	0,(Smain$main$404)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$401)
	.dw	0,(Smain$main$403)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$400)
	.dw	0,(Smain$main$401)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$399)
	.dw	0,(Smain$main$400)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$397)
	.dw	0,(Smain$main$399)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$396)
	.dw	0,(Smain$main$397)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$395)
	.dw	0,(Smain$main$396)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$394)
	.dw	0,(Smain$main$395)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$392)
	.dw	0,(Smain$main$394)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$391)
	.dw	0,(Smain$main$392)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$389)
	.dw	0,(Smain$main$391)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$388)
	.dw	0,(Smain$main$389)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$387)
	.dw	0,(Smain$main$388)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$386)
	.dw	0,(Smain$main$387)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$385)
	.dw	0,(Smain$main$386)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$383)
	.dw	0,(Smain$main$385)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$382)
	.dw	0,(Smain$main$383)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$381)
	.dw	0,(Smain$main$382)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$378)
	.dw	0,(Smain$main$381)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$377)
	.dw	0,(Smain$main$378)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$375)
	.dw	0,(Smain$main$377)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$374)
	.dw	0,(Smain$main$375)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$373)
	.dw	0,(Smain$main$374)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$372)
	.dw	0,(Smain$main$373)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$370)
	.dw	0,(Smain$main$372)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$369)
	.dw	0,(Smain$main$370)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$368)
	.dw	0,(Smain$main$369)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$366)
	.dw	0,(Smain$main$368)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$365)
	.dw	0,(Smain$main$366)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$363)
	.dw	0,(Smain$main$365)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$362)
	.dw	0,(Smain$main$363)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$361)
	.dw	0,(Smain$main$362)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$360)
	.dw	0,(Smain$main$361)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$358)
	.dw	0,(Smain$main$360)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$357)
	.dw	0,(Smain$main$358)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$356)
	.dw	0,(Smain$main$357)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$351)
	.dw	0,(Smain$main$356)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$350)
	.dw	0,(Smain$main$351)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$348)
	.dw	0,(Smain$main$350)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$347)
	.dw	0,(Smain$main$348)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$346)
	.dw	0,(Smain$main$347)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$345)
	.dw	0,(Smain$main$346)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$343)
	.dw	0,(Smain$main$345)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$342)
	.dw	0,(Smain$main$343)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$341)
	.dw	0,(Smain$main$342)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$339)
	.dw	0,(Smain$main$341)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$338)
	.dw	0,(Smain$main$339)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$336)
	.dw	0,(Smain$main$338)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$335)
	.dw	0,(Smain$main$336)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$334)
	.dw	0,(Smain$main$335)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$333)
	.dw	0,(Smain$main$334)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$331)
	.dw	0,(Smain$main$333)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$330)
	.dw	0,(Smain$main$331)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$329)
	.dw	0,(Smain$main$330)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$323)
	.dw	0,(Smain$main$329)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$321)
	.dw	0,(Smain$main$323)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$319)
	.dw	0,(Smain$main$321)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$316)
	.dw	0,(Smain$main$319)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$315)
	.dw	0,(Smain$main$316)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$313)
	.dw	0,(Smain$main$315)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$312)
	.dw	0,(Smain$main$313)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$311)
	.dw	0,(Smain$main$312)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$310)
	.dw	0,(Smain$main$311)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$309)
	.dw	0,(Smain$main$310)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$307)
	.dw	0,(Smain$main$309)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$306)
	.dw	0,(Smain$main$307)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$305)
	.dw	0,(Smain$main$306)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$303)
	.dw	0,(Smain$main$305)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$302)
	.dw	0,(Smain$main$303)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$300)
	.dw	0,(Smain$main$302)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$299)
	.dw	0,(Smain$main$300)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$298)
	.dw	0,(Smain$main$299)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$297)
	.dw	0,(Smain$main$298)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$296)
	.dw	0,(Smain$main$297)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$294)
	.dw	0,(Smain$main$296)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$293)
	.dw	0,(Smain$main$294)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$292)
	.dw	0,(Smain$main$293)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$289)
	.dw	0,(Smain$main$292)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$288)
	.dw	0,(Smain$main$289)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$286)
	.dw	0,(Smain$main$288)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$285)
	.dw	0,(Smain$main$286)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$284)
	.dw	0,(Smain$main$285)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$283)
	.dw	0,(Smain$main$284)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$281)
	.dw	0,(Smain$main$283)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$280)
	.dw	0,(Smain$main$281)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$279)
	.dw	0,(Smain$main$280)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$276)
	.dw	0,(Smain$main$279)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$272)
	.dw	0,(Smain$main$276)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$271)
	.dw	0,(Smain$main$272)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$269)
	.dw	0,(Smain$main$271)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$268)
	.dw	0,(Smain$main$269)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$267)
	.dw	0,(Smain$main$268)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$266)
	.dw	0,(Smain$main$267)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$264)
	.dw	0,(Smain$main$266)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$263)
	.dw	0,(Smain$main$264)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$262)
	.dw	0,(Smain$main$263)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$259)
	.dw	0,(Smain$main$262)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$255)
	.dw	0,(Smain$main$259)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$254)
	.dw	0,(Smain$main$255)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$252)
	.dw	0,(Smain$main$254)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$251)
	.dw	0,(Smain$main$252)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$250)
	.dw	0,(Smain$main$251)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$249)
	.dw	0,(Smain$main$250)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$247)
	.dw	0,(Smain$main$249)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$246)
	.dw	0,(Smain$main$247)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$245)
	.dw	0,(Smain$main$246)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$241)
	.dw	0,(Smain$main$245)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$240)
	.dw	0,(Smain$main$241)
	.dw	2
	.db	120
	.sleb128	56
	.dw	0,(Smain$main$239)
	.dw	0,(Smain$main$240)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$238)
	.dw	0,(Smain$main$239)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$237)
	.dw	0,(Smain$main$238)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$236)
	.dw	0,(Smain$main$237)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$235)
	.dw	0,(Smain$main$236)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$231)
	.dw	0,(Smain$main$235)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$230)
	.dw	0,(Smain$main$231)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$229)
	.dw	0,(Smain$main$230)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$228)
	.dw	0,(Smain$main$229)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$224)
	.dw	0,(Smain$main$228)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$223)
	.dw	0,(Smain$main$224)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$221)
	.dw	0,(Smain$main$223)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$220)
	.dw	0,(Smain$main$221)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$219)
	.dw	0,(Smain$main$220)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$218)
	.dw	0,(Smain$main$219)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$216)
	.dw	0,(Smain$main$218)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$215)
	.dw	0,(Smain$main$216)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$214)
	.dw	0,(Smain$main$215)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$208)
	.dw	0,(Smain$main$214)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$207)
	.dw	0,(Smain$main$208)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$205)
	.dw	0,(Smain$main$207)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$204)
	.dw	0,(Smain$main$205)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$203)
	.dw	0,(Smain$main$204)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$202)
	.dw	0,(Smain$main$203)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$200)
	.dw	0,(Smain$main$202)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$199)
	.dw	0,(Smain$main$200)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$198)
	.dw	0,(Smain$main$199)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$192)
	.dw	0,(Smain$main$198)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$191)
	.dw	0,(Smain$main$192)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$189)
	.dw	0,(Smain$main$191)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$188)
	.dw	0,(Smain$main$189)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$187)
	.dw	0,(Smain$main$188)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$186)
	.dw	0,(Smain$main$187)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$184)
	.dw	0,(Smain$main$186)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$183)
	.dw	0,(Smain$main$184)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$182)
	.dw	0,(Smain$main$183)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$177)
	.dw	0,(Smain$main$182)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$176)
	.dw	0,(Smain$main$177)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$174)
	.dw	0,(Smain$main$176)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$173)
	.dw	0,(Smain$main$174)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$171)
	.dw	0,(Smain$main$173)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$170)
	.dw	0,(Smain$main$171)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$169)
	.dw	0,(Smain$main$170)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$168)
	.dw	0,(Smain$main$169)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$166)
	.dw	0,(Smain$main$168)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$165)
	.dw	0,(Smain$main$166)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$164)
	.dw	0,(Smain$main$165)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$162)
	.dw	0,(Smain$main$164)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$161)
	.dw	0,(Smain$main$162)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$159)
	.dw	0,(Smain$main$161)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$158)
	.dw	0,(Smain$main$159)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$157)
	.dw	0,(Smain$main$158)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$156)
	.dw	0,(Smain$main$157)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$154)
	.dw	0,(Smain$main$156)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$153)
	.dw	0,(Smain$main$154)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$152)
	.dw	0,(Smain$main$153)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$150)
	.dw	0,(Smain$main$152)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$149)
	.dw	0,(Smain$main$150)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$147)
	.dw	0,(Smain$main$149)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$146)
	.dw	0,(Smain$main$147)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$145)
	.dw	0,(Smain$main$146)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$144)
	.dw	0,(Smain$main$145)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$142)
	.dw	0,(Smain$main$144)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$141)
	.dw	0,(Smain$main$142)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$140)
	.dw	0,(Smain$main$141)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$138)
	.dw	0,(Smain$main$140)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$137)
	.dw	0,(Smain$main$138)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$135)
	.dw	0,(Smain$main$137)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$134)
	.dw	0,(Smain$main$135)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$133)
	.dw	0,(Smain$main$134)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$132)
	.dw	0,(Smain$main$133)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$130)
	.dw	0,(Smain$main$132)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$129)
	.dw	0,(Smain$main$130)
	.dw	2
	.db	120
	.sleb128	50
	.dw	0,(Smain$main$128)
	.dw	0,(Smain$main$129)
	.dw	2
	.db	120
	.sleb128	49
	.dw	0,(Smain$main$122)
	.dw	0,(Smain$main$128)
	.dw	2
	.db	120
	.sleb128	48
	.dw	0,(Smain$main$121)
	.dw	0,(Smain$main$122)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$setup$115)
	.dw	0,(Smain$setup$119)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$114)
	.dw	0,(Smain$setup$115)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$112)
	.dw	0,(Smain$setup$114)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$111)
	.dw	0,(Smain$setup$112)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$109)
	.dw	0,(Smain$setup$111)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$108)
	.dw	0,(Smain$setup$109)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$106)
	.dw	0,(Smain$setup$108)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$105)
	.dw	0,(Smain$setup$106)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$103)
	.dw	0,(Smain$setup$105)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$102)
	.dw	0,(Smain$setup$103)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$101)
	.dw	0,(Smain$setup$102)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$99)
	.dw	0,(Smain$setup$101)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$98)
	.dw	0,(Smain$setup$99)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$97)
	.dw	0,(Smain$setup$98)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$93)
	.dw	0,(Smain$setup$97)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$92)
	.dw	0,(Smain$setup$93)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$setup$91)
	.dw	0,(Smain$setup$92)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$setup$90)
	.dw	0,(Smain$setup$91)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$89)
	.dw	0,(Smain$setup$90)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$87)
	.dw	0,(Smain$setup$89)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$86)
	.dw	0,(Smain$setup$87)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$setup$85)
	.dw	0,(Smain$setup$86)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$setup$84)
	.dw	0,(Smain$setup$85)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$83)
	.dw	0,(Smain$setup$84)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$81)
	.dw	0,(Smain$setup$83)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$80)
	.dw	0,(Smain$setup$81)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$78)
	.dw	0,(Smain$setup$80)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$delay_ms$74)
	.dw	0,(Smain$delay_ms$76)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$delay_ms$45)
	.dw	0,(Smain$delay_ms$74)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$delay_ms$44)
	.dw	0,(Smain$delay_ms$45)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$_delay_us$29)
	.dw	0,(Smain$_delay_us$42)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$_delay_us$28)
	.dw	0,(Smain$_delay_us$29)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Smain$_delay_us$27)
	.dw	0,(Smain$_delay_us$28)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$_delay_us$26)
	.dw	0,(Smain$_delay_us$27)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$_delay_us$25)
	.dw	0,(Smain$_delay_us$26)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$_delay_us$24)
	.dw	0,(Smain$_delay_us$25)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$_delay_us$23)
	.dw	0,(Smain$_delay_us$24)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$_delay_us$21)
	.dw	0,(Smain$_delay_us$23)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$_delay_us$20)
	.dw	0,(Smain$_delay_us$21)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Smain$_delay_us$19)
	.dw	0,(Smain$_delay_us$20)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Smain$_delay_us$18)
	.dw	0,(Smain$_delay_us$19)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$_delay_us$17)
	.dw	0,(Smain$_delay_us$18)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$_delay_us$16)
	.dw	0,(Smain$_delay_us$17)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$_delay_us$15)
	.dw	0,(Smain$_delay_us$16)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$_delay_us$13)
	.dw	0,(Smain$_delay_us$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$_delay_cycl$1)
	.dw	0,(Smain$_delay_cycl$11)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	12
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
	.uleb128	16
	.uleb128	1
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
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
	.uleb128	14
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
	.uleb128	11
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
	.uleb128	15
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
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
	.uleb128	13
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
	.uleb128	17
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
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
	.ascii "./src/main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.dw	0,112
	.ascii "_delay_cycl"
	.db	0
	.dw	0,(__delay_cycl)
	.dw	0,(XFmain$_delay_cycl$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+5312)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__ticks"
	.db	0
	.dw	0,112
	.uleb128	4
	.dw	0,(Smain$_delay_cycl$4)
	.dw	0,(Smain$_delay_cycl$6)
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	2
	.dw	0,263
	.ascii "_delay_us"
	.db	0
	.dw	0,(__delay_us)
	.dw	0,(XFmain$_delay_us$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+5124)
	.uleb128	6
	.dw	0,112
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__us"
	.db	0
	.dw	0,156
	.uleb128	7
	.dw	0,(Smain$_delay_us$14)
	.dw	0,(Smain$_delay_us$31)
	.uleb128	8
	.dw	0,236
	.dw	0,(Smain$_delay_us$32)
	.uleb128	9
	.dw	0,215
	.dw	0,(Smain$_delay_us$33)
	.dw	0,(Smain$_delay_us$38)
	.uleb128	4
	.dw	0,(Smain$_delay_us$36)
	.dw	0,(Smain$_delay_us$37)
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
	.dw	0,112
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
	.dw	0,112
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.dw	0,826
	.ascii "delay_ms"
	.db	0
	.dw	0,(_delay_ms)
	.dw	0,(XG$delay_ms$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+5080)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "ms"
	.db	0
	.dw	0,112
	.uleb128	11
	.dw	0,815
	.uleb128	11
	.dw	0,434
	.uleb128	11
	.dw	0,412
	.uleb128	11
	.dw	0,398
	.uleb128	12
	.uleb128	8
	.dw	0,375
	.dw	0,(Smain$delay_ms$47)
	.uleb128	9
	.dw	0,354
	.dw	0,(Smain$delay_ms$48)
	.dw	0,(Smain$delay_ms$53)
	.uleb128	4
	.dw	0,(Smain$delay_ms$51)
	.dw	0,(Smain$delay_ms$52)
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
	.dw	0,112
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__2621440012"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	11
	.dw	0,562
	.uleb128	11
	.dw	0,540
	.uleb128	11
	.dw	0,526
	.uleb128	12
	.uleb128	8
	.dw	0,503
	.dw	0,(Smain$delay_ms$53)
	.uleb128	9
	.dw	0,482
	.dw	0,(Smain$delay_ms$54)
	.dw	0,(Smain$delay_ms$59)
	.uleb128	4
	.dw	0,(Smain$delay_ms$57)
	.dw	0,(Smain$delay_ms$58)
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
	.dw	0,112
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__2621440014"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	11
	.dw	0,690
	.uleb128	11
	.dw	0,668
	.uleb128	11
	.dw	0,654
	.uleb128	12
	.uleb128	8
	.dw	0,631
	.dw	0,(Smain$delay_ms$59)
	.uleb128	9
	.dw	0,610
	.dw	0,(Smain$delay_ms$60)
	.dw	0,(Smain$delay_ms$65)
	.uleb128	4
	.dw	0,(Smain$delay_ms$63)
	.dw	0,(Smain$delay_ms$64)
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
	.dw	0,112
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__2621440016"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	12
	.uleb128	11
	.dw	0,792
	.uleb128	11
	.dw	0,778
	.uleb128	12
	.uleb128	8
	.dw	0,755
	.dw	0,(Smain$delay_ms$65)
	.uleb128	9
	.dw	0,734
	.dw	0,(Smain$delay_ms$66)
	.dw	0,(Smain$delay_ms$71)
	.uleb128	4
	.dw	0,(Smain$delay_ms$69)
	.dw	0,(Smain$delay_ms$70)
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
	.dw	0,112
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__2621440018"
	.db	0
	.dw	0,156
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-2
	.ascii "i"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	13
	.ascii "setup"
	.db	0
	.dw	0,(_setup)
	.dw	0,(XG$setup$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+4748)
	.uleb128	5
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	14
	.dw	0,1195
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,846
	.uleb128	9
	.dw	0,1065
	.dw	0,(Smain$main$126)
	.dw	0,(Smain$main$178)
	.uleb128	4
	.dw	0,(Smain$main$180)
	.dw	0,(Smain$main$194)
	.uleb128	4
	.dw	0,(Smain$main$196)
	.dw	0,(Smain$main$210)
	.uleb128	4
	.dw	0,(Smain$main$212)
	.dw	0,(Smain$main$226)
	.uleb128	7
	.dw	0,(Smain$main$232)
	.dw	0,(Smain$main$713)
	.uleb128	4
	.dw	0,(Smain$main$243)
	.dw	0,(Smain$main$256)
	.uleb128	4
	.dw	0,(Smain$main$260)
	.dw	0,(Smain$main$273)
	.uleb128	4
	.dw	0,(Smain$main$277)
	.dw	0,(Smain$main$290)
	.uleb128	8
	.dw	0,993
	.dw	0,(Smain$main$325)
	.uleb128	4
	.dw	0,(Smain$main$327)
	.dw	0,(Smain$main$352)
	.uleb128	4
	.dw	0,(Smain$main$354)
	.dw	0,(Smain$main$407)
	.uleb128	4
	.dw	0,(Smain$main$409)
	.dw	0,(Smain$main$448)
	.uleb128	0
	.uleb128	8
	.dw	0,1030
	.dw	0,(Smain$main$450)
	.uleb128	4
	.dw	0,(Smain$main$452)
	.dw	0,(Smain$main$491)
	.uleb128	4
	.dw	0,(Smain$main$493)
	.dw	0,(Smain$main$518)
	.uleb128	4
	.dw	0,(Smain$main$520)
	.dw	0,(Smain$main$573)
	.uleb128	0
	.uleb128	15
	.dw	0,(Smain$main$575)
	.uleb128	4
	.dw	0,(Smain$main$577)
	.dw	0,(Smain$main$630)
	.uleb128	4
	.dw	0,(Smain$main$632)
	.dw	0,(Smain$main$671)
	.uleb128	4
	.dw	0,(Smain$main$673)
	.dw	0,(Smain$main$698)
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-11
	.ascii "stavty"
	.db	0
	.dw	0,1195
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "ADCx"
	.db	0
	.dw	0,112
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-7
	.ascii "random"
	.db	0
	.dw	0,112
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-4
	.ascii "x"
	.db	0
	.dw	0,112
	.uleb128	16
	.dw	0,1135
	.db	32
	.dw	0,1212
	.uleb128	17
	.db	31
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-47
	.ascii "text"
	.db	0
	.dw	0,1122
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-44
	.ascii "remiza"
	.db	0
	.dw	0,112
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-13
	.ascii "bodyty"
	.db	0
	.dw	0,112
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-15
	.ascii "bodystm"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	5
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	6
	.dw	0,1212
	.uleb128	16
	.dw	0,1247
	.db	12
	.dw	0,1229
	.uleb128	17
	.db	11
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_0)
	.ascii "__str_0"
	.db	0
	.dw	0,1234
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_1)
	.ascii "__str_1"
	.db	0
	.dw	0,1234
	.uleb128	16
	.dw	0,1298
	.db	9
	.dw	0,1229
	.uleb128	17
	.db	8
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_2)
	.ascii "__str_2"
	.db	0
	.dw	0,1285
	.uleb128	16
	.dw	0,1330
	.db	11
	.dw	0,1229
	.uleb128	17
	.db	10
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_3)
	.ascii "__str_3"
	.db	0
	.dw	0,1317
	.uleb128	16
	.dw	0,1362
	.db	6
	.dw	0,1229
	.uleb128	17
	.db	5
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_4)
	.ascii "__str_4"
	.db	0
	.dw	0,1349
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_5)
	.ascii "__str_5"
	.db	0
	.dw	0,1349
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_6)
	.ascii "__str_6"
	.db	0
	.dw	0,1349
	.uleb128	16
	.dw	0,1432
	.db	4
	.dw	0,1229
	.uleb128	17
	.db	3
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_7)
	.ascii "__str_7"
	.db	0
	.dw	0,1419
	.uleb128	16
	.dw	0,1464
	.db	7
	.dw	0,1229
	.uleb128	17
	.db	6
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_8)
	.ascii "__str_8"
	.db	0
	.dw	0,1451
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_9)
	.ascii "__str_9"
	.db	0
	.dw	0,1451
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_10)
	.ascii "__str_10"
	.db	0
	.dw	0,1349
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
	.dw	0,263
	.ascii "delay_ms"
	.db	0
	.dw	0,826
	.ascii "setup"
	.db	0
	.dw	0,853
	.ascii "main"
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
	.dw	0,2777
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$main$121)	;initial loc
	.dw	0,Smain$main$717-Smain$main$121
	.db	1
	.dw	0,(Smain$main$121)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$122)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$128)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$129)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$130)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$132)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$133)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$134)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$135)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$137)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$138)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$140)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$141)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$142)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$144)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$145)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$146)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$147)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$149)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$150)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$152)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$153)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$154)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$156)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$157)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$158)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$159)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$161)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$162)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$164)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$165)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$166)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$168)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$169)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$170)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$171)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$173)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$174)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$176)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$177)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$182)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$183)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$184)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$186)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$187)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$188)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$189)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$191)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$192)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$198)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$199)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$200)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$202)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$203)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$204)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$205)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$207)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$208)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$214)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$215)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$216)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$218)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$219)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$220)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$221)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$223)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$224)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$228)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$229)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$230)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$231)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$235)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$236)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$237)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$238)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$239)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$240)
	.db	14
	.uleb128	57
	.db	1
	.dw	0,(Smain$main$241)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$245)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$246)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$247)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$249)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$250)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$251)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$252)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$254)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$255)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$259)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$262)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$263)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$264)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$266)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$267)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$268)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$269)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$271)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$272)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$276)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$279)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$280)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$281)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$283)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$284)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$285)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$286)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$288)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$289)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$292)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$293)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$294)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$296)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$297)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$298)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$299)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$300)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$302)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$303)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$305)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$306)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$307)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$309)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$310)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$311)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$312)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$313)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$315)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$316)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$319)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$321)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$323)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$329)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$330)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$331)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$333)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$334)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$335)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$336)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$338)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$339)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$341)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$342)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$343)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$345)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$346)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$347)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$348)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$350)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$351)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$356)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$357)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$358)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$360)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$361)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$362)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$363)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$365)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$366)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$368)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$369)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$370)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$372)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$373)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$374)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$375)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$377)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$378)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$381)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$382)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$383)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$385)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$386)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$387)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$388)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$389)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$391)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$392)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$394)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$395)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$396)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$397)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$399)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$400)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$401)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$403)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$404)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$405)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$406)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$411)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$412)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$413)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$415)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$416)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$417)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$418)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$420)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$421)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$424)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$425)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$426)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$428)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$429)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$430)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$431)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$433)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$434)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$436)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$437)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$438)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$440)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$441)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$442)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$443)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$444)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$446)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$447)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$454)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$455)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$456)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$458)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$459)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$460)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$461)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$463)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$464)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$467)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$468)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$469)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$471)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$472)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$473)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$474)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$476)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$477)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$479)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$480)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$481)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$483)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$484)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$485)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$486)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$487)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$489)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$490)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$495)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$496)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$497)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$499)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$500)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$501)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$502)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$504)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$505)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$507)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$508)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$509)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$511)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$512)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$513)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$514)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$516)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$517)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$522)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$523)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$524)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$526)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$527)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$528)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$529)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$531)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$532)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$535)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$536)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$537)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$539)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$540)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$541)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$542)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$544)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$545)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$547)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$548)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$549)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$551)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$552)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$553)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$554)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$555)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$557)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$558)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$560)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$561)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$562)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$563)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$565)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$566)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$567)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$569)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$570)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$571)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$572)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$579)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$580)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$581)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$583)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$584)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$585)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$586)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$588)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$589)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$592)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$593)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$594)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$596)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$597)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$598)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$599)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$601)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$602)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$604)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$605)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$606)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$608)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$609)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$610)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$611)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$612)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$614)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$615)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$617)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$618)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$619)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$620)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$622)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$623)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$624)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$626)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$627)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$628)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$629)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$634)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$635)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$636)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$638)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$639)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$640)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$641)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$643)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$644)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$647)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$648)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$649)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$651)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$652)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$653)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$654)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$656)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$657)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$659)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$660)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$661)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$663)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$664)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$665)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$666)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$667)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$669)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$670)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$675)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$676)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$677)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$679)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$680)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$681)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$682)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$684)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$685)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$687)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$688)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$689)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$691)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$692)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$693)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$694)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$696)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$697)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$702)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$703)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$704)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$706)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$707)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$708)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$710)
	.db	14
	.uleb128	50
	.db	1
	.dw	0,(Smain$main$711)
	.db	14
	.uleb128	51
	.db	1
	.dw	0,(Smain$main$712)
	.db	14
	.uleb128	49
	.db	1
	.dw	0,(Smain$main$715)
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
	.dw	0,201
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$setup$78)	;initial loc
	.dw	0,Smain$setup$119-Smain$setup$78
	.db	1
	.dw	0,(Smain$setup$78)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$80)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$81)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$83)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$84)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$85)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$setup$86)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$setup$87)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$89)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$90)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$91)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$setup$92)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$setup$93)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$97)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$98)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$99)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$101)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$102)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$103)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$105)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$106)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$108)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$109)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$111)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$112)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$114)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$115)
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
	.dw	0,(Smain$delay_ms$44)	;initial loc
	.dw	0,Smain$delay_ms$76-Smain$delay_ms$44
	.db	1
	.dw	0,(Smain$delay_ms$44)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$delay_ms$45)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$delay_ms$74)
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
	.dw	0,117
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Smain$_delay_us$13)	;initial loc
	.dw	0,Smain$_delay_us$42-Smain$_delay_us$13
	.db	1
	.dw	0,(Smain$_delay_us$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$_delay_us$15)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$_delay_us$16)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$_delay_us$17)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$_delay_us$18)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$_delay_us$19)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$_delay_us$20)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$_delay_us$21)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$_delay_us$23)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$_delay_us$24)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$_delay_us$25)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$_delay_us$26)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$_delay_us$27)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$_delay_us$28)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$_delay_us$29)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Smain$_delay_cycl$1)	;initial loc
	.dw	0,Smain$_delay_cycl$11-Smain$_delay_cycl$1
	.db	1
	.dw	0,(Smain$_delay_cycl$1)
	.db	14
	.uleb128	2
