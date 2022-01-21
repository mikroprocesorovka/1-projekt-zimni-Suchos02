;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module swi2c
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_ReadInputPin
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _swi2c_read_buf
	.globl _swi2c_write_buf
	.globl _swi2c_test_slave
	.globl _swi2c_init
	.globl _swi2c_readbit
	.globl _swi2c_writebit
	.globl _swi2c_RESTART
	.globl _swi2c_START
	.globl _swi2c_STOP
	.globl _swi2c_recover
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
	Sswi2c$_delay_cycl$0 ==.
;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
; genLabel
;	-----------------------------------------
;	 function _delay_cycl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__delay_cycl:
	Sswi2c$_delay_cycl$1 ==.
	Sswi2c$_delay_cycl$2 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$_delay_cycl$3 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
	ldw	x, (0x03, sp)
; genLabel
00101$:
	Sswi2c$_delay_cycl$4 ==.
	Sswi2c$_delay_cycl$5 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$_delay_cycl$6 ==.
	Sswi2c$_delay_cycl$7 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00117$
	jp	00101$
00117$:
	Sswi2c$_delay_cycl$8 ==.
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
; genLabel
00104$:
	Sswi2c$_delay_cycl$9 ==.
;	inc/delay.h: 39: }
; genEndFunction
	Sswi2c$_delay_cycl$10 ==.
	XFswi2c$_delay_cycl$0$0 ==.
	ret
	Sswi2c$_delay_cycl$11 ==.
	Sswi2c$_delay_us$12 ==.
;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
; genLabel
;	-----------------------------------------
;	 function _delay_us
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__delay_us:
	Sswi2c$_delay_us$13 ==.
	Sswi2c$_delay_us$14 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genCast
; genAssign
	ldw	y, (0x03, sp)
	clrw	x
; genIPush
	pushw	y
	Sswi2c$_delay_us$15 ==.
	pushw	x
	Sswi2c$_delay_us$16 ==.
; genIPush
	push	#0x00
	Sswi2c$_delay_us$17 ==.
	push	#0x24
	Sswi2c$_delay_us$18 ==.
	push	#0xf4
	Sswi2c$_delay_us$19 ==.
	push	#0x00
	Sswi2c$_delay_us$20 ==.
; genCall
	call	__mullong
	addw	sp, #8
	Sswi2c$_delay_us$21 ==.
	Sswi2c$_delay_us$22 ==.
; genCast
; genAssign
; genIPush
	push	#0x40
	Sswi2c$_delay_us$23 ==.
	push	#0x42
	Sswi2c$_delay_us$24 ==.
	push	#0x0f
	Sswi2c$_delay_us$25 ==.
	push	#0x00
	Sswi2c$_delay_us$26 ==.
; genIPush
	pushw	x
	Sswi2c$_delay_us$27 ==.
	pushw	y
	Sswi2c$_delay_us$28 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Sswi2c$_delay_us$29 ==.
	Sswi2c$_delay_us$30 ==.
; genRightShiftLiteral
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
; genCast
; genAssign
	Sswi2c$_delay_us$31 ==.
; genPlus
	incw	x
; genAssign
; genAssign
	Sswi2c$_delay_us$32 ==.
; genAssign
	Sswi2c$_delay_us$33 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$_delay_us$34 ==.
	Sswi2c$_delay_us$35 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00101$:
	Sswi2c$_delay_us$36 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$_delay_us$37 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00118$
	jp	00101$
00118$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$_delay_us$38 ==.
	Sswi2c$_delay_us$39 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genLabel
00105$:
	Sswi2c$_delay_us$40 ==.
;	inc/delay.h: 43: }
; genEndFunction
	Sswi2c$_delay_us$41 ==.
	XFswi2c$_delay_us$0$0 ==.
	ret
	Sswi2c$_delay_us$42 ==.
	Sswi2c$swi2c_read_buf$43 ==.
;	./src/swi2c.c: 11: uint8_t swi2c_read_buf(uint8_t slv_addr, uint8_t address, uint8_t * data,
; genLabel
;	-----------------------------------------
;	 function swi2c_read_buf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_swi2c_read_buf:
	Sswi2c$swi2c_read_buf$44 ==.
	sub	sp, #3
	Sswi2c$swi2c_read_buf$45 ==.
	Sswi2c$swi2c_read_buf$46 ==.
;	./src/swi2c.c: 19: if (swi2c_START()) {
; genCall
	call	_swi2c_START
; genIfx
	tnz	a
	jrne	00291$
	jp	00102$
00291$:
	Sswi2c$swi2c_read_buf$47 ==.
	Sswi2c$swi2c_read_buf$48 ==.
;	./src/swi2c.c: 20: return 0xaa;
; genReturn
	ld	a, #0xaa
	jp	00154$
	Sswi2c$swi2c_read_buf$49 ==.
; genLabel
00102$:
	Sswi2c$swi2c_read_buf$50 ==.
;	./src/swi2c.c: 23: mask = 1 << 7;
; genAssign
	ld	a, #0x80
	ld	(0x03, sp), a
	Sswi2c$swi2c_read_buf$51 ==.
;	./src/swi2c.c: 24: while (mask) {
; genLabel
00105$:
; genIfx
	tnz	(0x03, sp)
	jrne	00292$
	jp	00107$
00292$:
	Sswi2c$swi2c_read_buf$52 ==.
	Sswi2c$swi2c_read_buf$53 ==.
;	./src/swi2c.c: 25: if (swi2c_writebit(slv_addr & mask)) {
; genAnd
	ld	a, (0x06, sp)
	and	a, (0x03, sp)
; genIPush
	push	a
	Sswi2c$swi2c_read_buf$54 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_read_buf$55 ==.
; genIfx
	tnz	a
	jrne	00293$
	jp	00104$
00293$:
	Sswi2c$swi2c_read_buf$56 ==.
	Sswi2c$swi2c_read_buf$57 ==.
;	./src/swi2c.c: 26: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$58 ==.
; genLabel
00104$:
	Sswi2c$swi2c_read_buf$59 ==.
;	./src/swi2c.c: 28: mask = mask >> 1;
; genRightShiftLiteral
	srl	(0x03, sp)
	Sswi2c$swi2c_read_buf$60 ==.
; genGoto
	jp	00105$
; genLabel
00107$:
	Sswi2c$swi2c_read_buf$61 ==.
;	./src/swi2c.c: 30: ack = swi2c_readbit();
; genCall
	call	_swi2c_readbit
; genAssign
	ld	(0x03, sp), a
	Sswi2c$swi2c_read_buf$62 ==.
;	./src/swi2c.c: 31: if (ack) {
; genIfx
	tnz	(0x03, sp)
	jrne	00294$
	jp	00111$
00294$:
	Sswi2c$swi2c_read_buf$63 ==.
	Sswi2c$swi2c_read_buf$64 ==.
;	./src/swi2c.c: 32: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00295$
	jp	00109$
00295$:
	Sswi2c$swi2c_read_buf$65 ==.
	Sswi2c$swi2c_read_buf$66 ==.
;	./src/swi2c.c: 33: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$67 ==.
; genLabel
00109$:
	Sswi2c$swi2c_read_buf$68 ==.
;	./src/swi2c.c: 35: return ack;
; genReturn
	ld	a, (0x03, sp)
	jp	00154$
	Sswi2c$swi2c_read_buf$69 ==.
; genLabel
00111$:
	Sswi2c$swi2c_read_buf$70 ==.
;	./src/swi2c.c: 38: mask = 1 << 7;
; genAssign
	ld	a, #0x80
	ld	(0x03, sp), a
	Sswi2c$swi2c_read_buf$71 ==.
;	./src/swi2c.c: 39: while (mask) {
; genLabel
00114$:
; genIfx
	tnz	(0x03, sp)
	jrne	00296$
	jp	00116$
00296$:
	Sswi2c$swi2c_read_buf$72 ==.
	Sswi2c$swi2c_read_buf$73 ==.
;	./src/swi2c.c: 40: if (swi2c_writebit(address & mask)) {
; genAnd
	ld	a, (0x07, sp)
	and	a, (0x03, sp)
; genIPush
	push	a
	Sswi2c$swi2c_read_buf$74 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_read_buf$75 ==.
; genIfx
	tnz	a
	jrne	00297$
	jp	00113$
00297$:
	Sswi2c$swi2c_read_buf$76 ==.
	Sswi2c$swi2c_read_buf$77 ==.
;	./src/swi2c.c: 41: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$78 ==.
; genLabel
00113$:
	Sswi2c$swi2c_read_buf$79 ==.
;	./src/swi2c.c: 43: mask = mask >> 1;
; genRightShiftLiteral
	srl	(0x03, sp)
	Sswi2c$swi2c_read_buf$80 ==.
; genGoto
	jp	00114$
; genLabel
00116$:
	Sswi2c$swi2c_read_buf$81 ==.
;	./src/swi2c.c: 45: ack = swi2c_readbit();
; genCall
	call	_swi2c_readbit
; genAssign
	ld	(0x03, sp), a
	Sswi2c$swi2c_read_buf$82 ==.
;	./src/swi2c.c: 46: if (ack) {
; genIfx
	tnz	(0x03, sp)
	jrne	00298$
	jp	00120$
00298$:
	Sswi2c$swi2c_read_buf$83 ==.
	Sswi2c$swi2c_read_buf$84 ==.
;	./src/swi2c.c: 47: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00299$
	jp	00118$
00299$:
	Sswi2c$swi2c_read_buf$85 ==.
	Sswi2c$swi2c_read_buf$86 ==.
;	./src/swi2c.c: 48: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$87 ==.
; genLabel
00118$:
	Sswi2c$swi2c_read_buf$88 ==.
;	./src/swi2c.c: 50: return ack;
; genReturn
	ld	a, (0x03, sp)
	jp	00154$
	Sswi2c$swi2c_read_buf$89 ==.
; genLabel
00120$:
	Sswi2c$swi2c_read_buf$90 ==.
;	./src/swi2c.c: 53: if (swi2c_RESTART()) {
; genCall
	call	_swi2c_RESTART
; genIfx
	tnz	a
	jrne	00300$
	jp	00122$
00300$:
	Sswi2c$swi2c_read_buf$91 ==.
	Sswi2c$swi2c_read_buf$92 ==.
;	./src/swi2c.c: 54: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$93 ==.
; genLabel
00122$:
	Sswi2c$swi2c_read_buf$94 ==.
;	./src/swi2c.c: 57: mask = 1 << 7;
; genAssign
	ld	a, #0x80
	ld	(0x03, sp), a
	Sswi2c$swi2c_read_buf$95 ==.
	Sswi2c$swi2c_read_buf$96 ==.
;	./src/swi2c.c: 58: while (mask) {
; genAssign
	ld	a, (0x06, sp)
; genOr
	or	a, #0x01
	ld	(0x02, sp), a
	Sswi2c$swi2c_read_buf$97 ==.
; genLabel
00125$:
; genIfx
	tnz	(0x03, sp)
	jrne	00301$
	jp	00127$
00301$:
	Sswi2c$swi2c_read_buf$98 ==.
;	./src/swi2c.c: 59: if (swi2c_writebit((slv_addr | 1) & mask)) {
; genAnd
	ld	a, (0x02, sp)
	and	a, (0x03, sp)
; genIPush
	push	a
	Sswi2c$swi2c_read_buf$99 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_read_buf$100 ==.
; genIfx
	tnz	a
	jrne	00302$
	jp	00124$
00302$:
	Sswi2c$swi2c_read_buf$101 ==.
	Sswi2c$swi2c_read_buf$102 ==.
;	./src/swi2c.c: 60: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$103 ==.
; genLabel
00124$:
	Sswi2c$swi2c_read_buf$104 ==.
;	./src/swi2c.c: 62: mask = mask >> 1;
; genRightShiftLiteral
	srl	(0x03, sp)
	Sswi2c$swi2c_read_buf$105 ==.
; genGoto
	jp	00125$
; genLabel
00127$:
	Sswi2c$swi2c_read_buf$106 ==.
;	./src/swi2c.c: 64: ack = swi2c_readbit();
; genCall
	call	_swi2c_readbit
; genAssign
	ld	(0x03, sp), a
	Sswi2c$swi2c_read_buf$107 ==.
;	./src/swi2c.c: 65: if (ack) {
; genIfx
	tnz	(0x03, sp)
	jrne	00303$
	jp	00131$
00303$:
	Sswi2c$swi2c_read_buf$108 ==.
	Sswi2c$swi2c_read_buf$109 ==.
;	./src/swi2c.c: 66: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00304$
	jp	00129$
00304$:
	Sswi2c$swi2c_read_buf$110 ==.
	Sswi2c$swi2c_read_buf$111 ==.
;	./src/swi2c.c: 67: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$112 ==.
; genLabel
00129$:
	Sswi2c$swi2c_read_buf$113 ==.
;	./src/swi2c.c: 69: return ack;
; genReturn
	ld	a, (0x03, sp)
	jp	00154$
	Sswi2c$swi2c_read_buf$114 ==.
; genLabel
00131$:
	Sswi2c$swi2c_read_buf$115 ==.
;	./src/swi2c.c: 73: for (i = 0; i < num; i++) {
; genAssign
	clr	(0x02, sp)
; genLabel
00152$:
; genCast
; genAssign
	ld	a, (0x02, sp)
	clrw	x
; genCmp
; genCmpTop
	ld	xl, a
	cpw	x, (0x0a, sp)
	jrc	00305$
	jp	00148$
00305$:
; skipping generated iCode
	Sswi2c$swi2c_read_buf$116 ==.
	Sswi2c$swi2c_read_buf$117 ==.
;	./src/swi2c.c: 74: mask = 1 << 7;
; genAssign
	ld	a, #0x80
	ld	(0x03, sp), a
	Sswi2c$swi2c_read_buf$118 ==.
;	./src/swi2c.c: 75: while (mask) {
; genLabel
00138$:
; genIfx
	tnz	(0x03, sp)
	jrne	00306$
	jp	00140$
00306$:
	Sswi2c$swi2c_read_buf$119 ==.
	Sswi2c$swi2c_read_buf$120 ==.
;	./src/swi2c.c: 76: bit = swi2c_readbit();
; genCall
	call	_swi2c_readbit
; genAssign
	ld	yl, a
	Sswi2c$swi2c_read_buf$121 ==.
	Sswi2c$swi2c_read_buf$122 ==.
;	./src/swi2c.c: 78: data[i] &= ~mask;
; genPlus
	clrw	x
	exg	a, xl
	ld	a, (0x02, sp)
	exg	a, xl
	addw	x, (0x08, sp)
	Sswi2c$swi2c_read_buf$123 ==.
;	./src/swi2c.c: 77: if (bit == 0) {
; genIfx
	tnz	a
	jreq	00307$
	jp	00136$
00307$:
	Sswi2c$swi2c_read_buf$124 ==.
	Sswi2c$swi2c_read_buf$125 ==.
;	./src/swi2c.c: 78: data[i] &= ~mask;
; genPointerGet
	ld	a, (x)
	ld	(0x01, sp), a
; genCpl
	ld	a, (0x03, sp)
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
	Sswi2c$swi2c_read_buf$126 ==.
; genGoto
	jp	00137$
; genLabel
00136$:
	Sswi2c$swi2c_read_buf$127 ==.
;	./src/swi2c.c: 79: } else if (bit == 1) {
; genCmpEQorNE
	ld	a, yl
	dec	a
	jrne	00309$
	jp	00310$
00309$:
	jp	00133$
00310$:
	Sswi2c$swi2c_read_buf$128 ==.
; skipping generated iCode
	Sswi2c$swi2c_read_buf$129 ==.
	Sswi2c$swi2c_read_buf$130 ==.
;	./src/swi2c.c: 80: data[i] |= mask;
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	(x), a
	Sswi2c$swi2c_read_buf$131 ==.
; genGoto
	jp	00137$
; genLabel
00133$:
	Sswi2c$swi2c_read_buf$132 ==.
	Sswi2c$swi2c_read_buf$133 ==.
;	./src/swi2c.c: 82: swi2c_STOP();
; genCall
	call	_swi2c_STOP
	Sswi2c$swi2c_read_buf$134 ==.
;	./src/swi2c.c: 83: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$135 ==.
; genLabel
00137$:
	Sswi2c$swi2c_read_buf$136 ==.
;	./src/swi2c.c: 85: mask = mask >> 1;
; genRightShiftLiteral
	srl	(0x03, sp)
	Sswi2c$swi2c_read_buf$137 ==.
; genGoto
	jp	00138$
; genLabel
00140$:
	Sswi2c$swi2c_read_buf$138 ==.
;	./src/swi2c.c: 87: if ((i + 1) == num) {
; genCast
; genAssign
	ld	a, (0x02, sp)
	clrw	x
; genPlus
	ld	xl, a
	incw	x
; genCast
; genAssign
; genCmpEQorNE
	cpw	x, (0x0a, sp)
	jrne	00312$
	jp	00313$
00312$:
	jp	00146$
00313$:
	Sswi2c$swi2c_read_buf$139 ==.
; skipping generated iCode
	Sswi2c$swi2c_read_buf$140 ==.
	Sswi2c$swi2c_read_buf$141 ==.
;	./src/swi2c.c: 88: if (swi2c_writebit(1)) {
; genIPush
	push	#0x01
	Sswi2c$swi2c_read_buf$142 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_read_buf$143 ==.
; genIfx
	tnz	a
	jrne	00314$
	jp	00153$
00314$:
	Sswi2c$swi2c_read_buf$144 ==.
	Sswi2c$swi2c_read_buf$145 ==.
;	./src/swi2c.c: 89: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$146 ==.
; genLabel
00146$:
	Sswi2c$swi2c_read_buf$147 ==.
	Sswi2c$swi2c_read_buf$148 ==.
;	./src/swi2c.c: 92: if (swi2c_writebit(0)) {
; genIPush
	push	#0x00
	Sswi2c$swi2c_read_buf$149 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_read_buf$150 ==.
; genIfx
	tnz	a
	jrne	00315$
	jp	00153$
00315$:
	Sswi2c$swi2c_read_buf$151 ==.
	Sswi2c$swi2c_read_buf$152 ==.
;	./src/swi2c.c: 93: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$153 ==.
; genLabel
00153$:
	Sswi2c$swi2c_read_buf$154 ==.
	Sswi2c$swi2c_read_buf$155 ==.
;	./src/swi2c.c: 73: for (i = 0; i < num; i++) {
; genPlus
	inc	(0x02, sp)
; genGoto
	jp	00152$
; genLabel
00148$:
	Sswi2c$swi2c_read_buf$156 ==.
;	./src/swi2c.c: 99: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00316$
	jp	00150$
00316$:
	Sswi2c$swi2c_read_buf$157 ==.
	Sswi2c$swi2c_read_buf$158 ==.
;	./src/swi2c.c: 100: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00154$
	Sswi2c$swi2c_read_buf$159 ==.
; genLabel
00150$:
	Sswi2c$swi2c_read_buf$160 ==.
;	./src/swi2c.c: 102: return 0;
; genReturn
	clr	a
; genLabel
00154$:
	Sswi2c$swi2c_read_buf$161 ==.
;	./src/swi2c.c: 103: }
; genEndFunction
	addw	sp, #3
	Sswi2c$swi2c_read_buf$162 ==.
	Sswi2c$swi2c_read_buf$163 ==.
	XG$swi2c_read_buf$0$0 ==.
	ret
	Sswi2c$swi2c_read_buf$164 ==.
	Sswi2c$swi2c_write_buf$165 ==.
;	./src/swi2c.c: 113: uint8_t swi2c_write_buf(uint8_t slv_addr, uint8_t address, uint8_t * data,
; genLabel
;	-----------------------------------------
;	 function swi2c_write_buf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_swi2c_write_buf:
	Sswi2c$swi2c_write_buf$166 ==.
	pushw	x
	Sswi2c$swi2c_write_buf$167 ==.
	Sswi2c$swi2c_write_buf$168 ==.
;	./src/swi2c.c: 121: if (swi2c_START()) {
; genCall
	call	_swi2c_START
; genIfx
	tnz	a
	jrne	00233$
	jp	00102$
00233$:
	Sswi2c$swi2c_write_buf$169 ==.
	Sswi2c$swi2c_write_buf$170 ==.
;	./src/swi2c.c: 122: return 0xaa;
; genReturn
	ld	a, #0xaa
	jp	00136$
	Sswi2c$swi2c_write_buf$171 ==.
; genLabel
00102$:
	Sswi2c$swi2c_write_buf$172 ==.
;	./src/swi2c.c: 125: mask = 1 << 7;
; genAssign
	ld	a, #0x80
	ld	(0x02, sp), a
	Sswi2c$swi2c_write_buf$173 ==.
;	./src/swi2c.c: 126: while (mask) {
; genLabel
00105$:
; genIfx
	tnz	(0x02, sp)
	jrne	00234$
	jp	00107$
00234$:
	Sswi2c$swi2c_write_buf$174 ==.
	Sswi2c$swi2c_write_buf$175 ==.
;	./src/swi2c.c: 127: if (swi2c_writebit(slv_addr & mask)) {
; genAnd
	ld	a, (0x05, sp)
	and	a, (0x02, sp)
; genIPush
	push	a
	Sswi2c$swi2c_write_buf$176 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_write_buf$177 ==.
; genIfx
	tnz	a
	jrne	00235$
	jp	00104$
00235$:
	Sswi2c$swi2c_write_buf$178 ==.
	Sswi2c$swi2c_write_buf$179 ==.
;	./src/swi2c.c: 128: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00136$
	Sswi2c$swi2c_write_buf$180 ==.
; genLabel
00104$:
	Sswi2c$swi2c_write_buf$181 ==.
;	./src/swi2c.c: 130: mask = mask >> 1;
; genRightShiftLiteral
	srl	(0x02, sp)
	Sswi2c$swi2c_write_buf$182 ==.
; genGoto
	jp	00105$
; genLabel
00107$:
	Sswi2c$swi2c_write_buf$183 ==.
;	./src/swi2c.c: 132: ack = swi2c_readbit();
; genCall
	call	_swi2c_readbit
; genAssign
	ld	(0x02, sp), a
	Sswi2c$swi2c_write_buf$184 ==.
;	./src/swi2c.c: 133: if (ack) {
; genIfx
	tnz	(0x02, sp)
	jrne	00236$
	jp	00111$
00236$:
	Sswi2c$swi2c_write_buf$185 ==.
	Sswi2c$swi2c_write_buf$186 ==.
;	./src/swi2c.c: 134: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00237$
	jp	00109$
00237$:
	Sswi2c$swi2c_write_buf$187 ==.
	Sswi2c$swi2c_write_buf$188 ==.
;	./src/swi2c.c: 135: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00136$
	Sswi2c$swi2c_write_buf$189 ==.
; genLabel
00109$:
	Sswi2c$swi2c_write_buf$190 ==.
;	./src/swi2c.c: 137: return ack;
; genReturn
	ld	a, (0x02, sp)
	jp	00136$
	Sswi2c$swi2c_write_buf$191 ==.
; genLabel
00111$:
	Sswi2c$swi2c_write_buf$192 ==.
;	./src/swi2c.c: 140: mask = 1 << 7;
; genAssign
	ld	a, #0x80
	ld	(0x02, sp), a
	Sswi2c$swi2c_write_buf$193 ==.
;	./src/swi2c.c: 141: while (mask) {
; genLabel
00114$:
; genIfx
	tnz	(0x02, sp)
	jrne	00238$
	jp	00116$
00238$:
	Sswi2c$swi2c_write_buf$194 ==.
	Sswi2c$swi2c_write_buf$195 ==.
;	./src/swi2c.c: 142: if (swi2c_writebit(address & mask)) {
; genAnd
	ld	a, (0x06, sp)
	and	a, (0x02, sp)
; genIPush
	push	a
	Sswi2c$swi2c_write_buf$196 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_write_buf$197 ==.
; genIfx
	tnz	a
	jrne	00239$
	jp	00113$
00239$:
	Sswi2c$swi2c_write_buf$198 ==.
	Sswi2c$swi2c_write_buf$199 ==.
;	./src/swi2c.c: 143: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00136$
	Sswi2c$swi2c_write_buf$200 ==.
; genLabel
00113$:
	Sswi2c$swi2c_write_buf$201 ==.
;	./src/swi2c.c: 145: mask = mask >> 1;
; genRightShiftLiteral
	srl	(0x02, sp)
	Sswi2c$swi2c_write_buf$202 ==.
; genGoto
	jp	00114$
; genLabel
00116$:
	Sswi2c$swi2c_write_buf$203 ==.
;	./src/swi2c.c: 147: ack = swi2c_readbit();
; genCall
	call	_swi2c_readbit
; genAssign
	ld	(0x02, sp), a
	Sswi2c$swi2c_write_buf$204 ==.
;	./src/swi2c.c: 148: if (ack) {
; genIfx
	tnz	(0x02, sp)
	jrne	00240$
	jp	00120$
00240$:
	Sswi2c$swi2c_write_buf$205 ==.
	Sswi2c$swi2c_write_buf$206 ==.
;	./src/swi2c.c: 149: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00241$
	jp	00118$
00241$:
	Sswi2c$swi2c_write_buf$207 ==.
	Sswi2c$swi2c_write_buf$208 ==.
;	./src/swi2c.c: 150: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00136$
	Sswi2c$swi2c_write_buf$209 ==.
; genLabel
00118$:
	Sswi2c$swi2c_write_buf$210 ==.
;	./src/swi2c.c: 152: return ack;
; genReturn
	ld	a, (0x02, sp)
	jp	00136$
	Sswi2c$swi2c_write_buf$211 ==.
; genLabel
00120$:
	Sswi2c$swi2c_write_buf$212 ==.
;	./src/swi2c.c: 155: for (i = 0; i < num; i++) {
; genAssign
	clr	(0x01, sp)
; genLabel
00134$:
; genCast
; genAssign
	ld	a, (0x01, sp)
	clrw	x
; genCmp
; genCmpTop
	ld	xl, a
	cpw	x, (0x09, sp)
	jrc	00242$
	jp	00130$
00242$:
; skipping generated iCode
	Sswi2c$swi2c_write_buf$213 ==.
	Sswi2c$swi2c_write_buf$214 ==.
;	./src/swi2c.c: 156: mask = 1 << 7;
; genAssign
	ld	a, #0x80
	ld	(0x02, sp), a
	Sswi2c$swi2c_write_buf$215 ==.
	Sswi2c$swi2c_write_buf$216 ==.
;	./src/swi2c.c: 157: while (mask) {
; genPlus
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
	addw	x, (0x07, sp)
	Sswi2c$swi2c_write_buf$217 ==.
; genLabel
00123$:
; genIfx
	tnz	(0x02, sp)
	jrne	00243$
	jp	00125$
00243$:
	Sswi2c$swi2c_write_buf$218 ==.
;	./src/swi2c.c: 158: if (swi2c_writebit(data[i] & mask)) {
; genPointerGet
	ld	a, (x)
; genAnd
	and	a, (0x02, sp)
; genIPush
	pushw	x
	Sswi2c$swi2c_write_buf$219 ==.
	push	a
	Sswi2c$swi2c_write_buf$220 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_write_buf$221 ==.
	popw	x
	Sswi2c$swi2c_write_buf$222 ==.
; genIfx
	tnz	a
	jrne	00244$
	jp	00122$
00244$:
	Sswi2c$swi2c_write_buf$223 ==.
	Sswi2c$swi2c_write_buf$224 ==.
;	./src/swi2c.c: 159: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00136$
	Sswi2c$swi2c_write_buf$225 ==.
; genLabel
00122$:
	Sswi2c$swi2c_write_buf$226 ==.
;	./src/swi2c.c: 161: mask = mask >> 1;
; genRightShiftLiteral
	srl	(0x02, sp)
	Sswi2c$swi2c_write_buf$227 ==.
; genGoto
	jp	00123$
; genLabel
00125$:
	Sswi2c$swi2c_write_buf$228 ==.
;	./src/swi2c.c: 163: ack = swi2c_readbit();
; genCall
	call	_swi2c_readbit
; genAssign
	ld	(0x02, sp), a
	Sswi2c$swi2c_write_buf$229 ==.
;	./src/swi2c.c: 164: if (ack) {
; genIfx
	tnz	(0x02, sp)
	jrne	00245$
	jp	00135$
00245$:
	Sswi2c$swi2c_write_buf$230 ==.
	Sswi2c$swi2c_write_buf$231 ==.
;	./src/swi2c.c: 165: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00246$
	jp	00127$
00246$:
	Sswi2c$swi2c_write_buf$232 ==.
	Sswi2c$swi2c_write_buf$233 ==.
;	./src/swi2c.c: 166: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00136$
	Sswi2c$swi2c_write_buf$234 ==.
; genLabel
00127$:
	Sswi2c$swi2c_write_buf$235 ==.
;	./src/swi2c.c: 168: return ack;
; genReturn
	ld	a, (0x02, sp)
	jp	00136$
	Sswi2c$swi2c_write_buf$236 ==.
; genLabel
00135$:
	Sswi2c$swi2c_write_buf$237 ==.
	Sswi2c$swi2c_write_buf$238 ==.
;	./src/swi2c.c: 155: for (i = 0; i < num; i++) {
; genPlus
	inc	(0x01, sp)
; genGoto
	jp	00134$
; genLabel
00130$:
	Sswi2c$swi2c_write_buf$239 ==.
;	./src/swi2c.c: 173: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00247$
	jp	00132$
00247$:
	Sswi2c$swi2c_write_buf$240 ==.
	Sswi2c$swi2c_write_buf$241 ==.
;	./src/swi2c.c: 174: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00136$
	Sswi2c$swi2c_write_buf$242 ==.
; genLabel
00132$:
	Sswi2c$swi2c_write_buf$243 ==.
;	./src/swi2c.c: 176: return 0;
; genReturn
	clr	a
; genLabel
00136$:
	Sswi2c$swi2c_write_buf$244 ==.
;	./src/swi2c.c: 177: }
; genEndFunction
	popw	x
	Sswi2c$swi2c_write_buf$245 ==.
	Sswi2c$swi2c_write_buf$246 ==.
	XG$swi2c_write_buf$0$0 ==.
	ret
	Sswi2c$swi2c_write_buf$247 ==.
	Sswi2c$swi2c_test_slave$248 ==.
;	./src/swi2c.c: 187: uint8_t swi2c_test_slave(uint8_t slvaddr)
; genLabel
;	-----------------------------------------
;	 function swi2c_test_slave
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_swi2c_test_slave:
	Sswi2c$swi2c_test_slave$249 ==.
	push	a
	Sswi2c$swi2c_test_slave$250 ==.
	Sswi2c$swi2c_test_slave$251 ==.
;	./src/swi2c.c: 190: uint8_t mask = 1 << 7;
; genAssign
	ld	a, #0x80
	ld	(0x01, sp), a
	Sswi2c$swi2c_test_slave$252 ==.
;	./src/swi2c.c: 191: if (swi2c_START()) {
; genCall
	call	_swi2c_START
; genIfx
	tnz	a
	jrne	00137$
	jp	00105$
00137$:
	Sswi2c$swi2c_test_slave$253 ==.
	Sswi2c$swi2c_test_slave$254 ==.
;	./src/swi2c.c: 192: return 0xaa;
; genReturn
	ld	a, #0xaa
	jp	00110$
	Sswi2c$swi2c_test_slave$255 ==.
	Sswi2c$swi2c_test_slave$256 ==.
;	./src/swi2c.c: 194: while (mask) {
; genLabel
00105$:
; genIfx
	tnz	(0x01, sp)
	jrne	00138$
	jp	00107$
00138$:
	Sswi2c$swi2c_test_slave$257 ==.
	Sswi2c$swi2c_test_slave$258 ==.
;	./src/swi2c.c: 195: if (swi2c_writebit(slvaddr & mask)) {
; genAnd
	ld	a, (0x04, sp)
	and	a, (0x01, sp)
; genIPush
	push	a
	Sswi2c$swi2c_test_slave$259 ==.
; genCall
	call	_swi2c_writebit
	addw	sp, #1
	Sswi2c$swi2c_test_slave$260 ==.
; genIfx
	tnz	a
	jrne	00139$
	jp	00104$
00139$:
	Sswi2c$swi2c_test_slave$261 ==.
	Sswi2c$swi2c_test_slave$262 ==.
;	./src/swi2c.c: 196: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00110$
	Sswi2c$swi2c_test_slave$263 ==.
; genLabel
00104$:
	Sswi2c$swi2c_test_slave$264 ==.
;	./src/swi2c.c: 198: mask = mask >> 1;
; genRightShiftLiteral
	srl	(0x01, sp)
	Sswi2c$swi2c_test_slave$265 ==.
; genGoto
	jp	00105$
; genLabel
00107$:
	Sswi2c$swi2c_test_slave$266 ==.
;	./src/swi2c.c: 200: ack = swi2c_readbit();
; genCall
	call	_swi2c_readbit
; genAssign
	ld	(0x01, sp), a
	Sswi2c$swi2c_test_slave$267 ==.
;	./src/swi2c.c: 201: if (swi2c_STOP()) {
; genCall
	call	_swi2c_STOP
; genIfx
	tnz	a
	jrne	00140$
	jp	00109$
00140$:
	Sswi2c$swi2c_test_slave$268 ==.
	Sswi2c$swi2c_test_slave$269 ==.
;	./src/swi2c.c: 202: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00110$
	Sswi2c$swi2c_test_slave$270 ==.
; genLabel
00109$:
	Sswi2c$swi2c_test_slave$271 ==.
;	./src/swi2c.c: 204: return ack;
; genReturn
	ld	a, (0x01, sp)
; genLabel
00110$:
	Sswi2c$swi2c_test_slave$272 ==.
;	./src/swi2c.c: 205: }
; genEndFunction
	addw	sp, #1
	Sswi2c$swi2c_test_slave$273 ==.
	Sswi2c$swi2c_test_slave$274 ==.
	XG$swi2c_test_slave$0$0 ==.
	ret
	Sswi2c$swi2c_test_slave$275 ==.
	Sswi2c$swi2c_init$276 ==.
;	./src/swi2c.c: 208: void swi2c_init(void)
; genLabel
;	-----------------------------------------
;	 function swi2c_init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_swi2c_init:
	Sswi2c$swi2c_init$277 ==.
	Sswi2c$swi2c_init$278 ==.
;	./src/swi2c.c: 210: GPIO_Init(SCL_GPIO, SCL_PIN, GPIO_MODE_OUT_OD_HIZ_SLOW);
; genIPush
	push	#0x90
	Sswi2c$swi2c_init$279 ==.
; genIPush
	push	#0x40
	Sswi2c$swi2c_init$280 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_init$281 ==.
	push	#0x50
	Sswi2c$swi2c_init$282 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Sswi2c$swi2c_init$283 ==.
	Sswi2c$swi2c_init$284 ==.
;	./src/swi2c.c: 211: GPIO_Init(SDA_GPIO, SDA_PIN, GPIO_MODE_OUT_OD_HIZ_SLOW);
; genIPush
	push	#0x90
	Sswi2c$swi2c_init$285 ==.
; genIPush
	push	#0x80
	Sswi2c$swi2c_init$286 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_init$287 ==.
	push	#0x50
	Sswi2c$swi2c_init$288 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Sswi2c$swi2c_init$289 ==.
; genLabel
00101$:
	Sswi2c$swi2c_init$290 ==.
;	./src/swi2c.c: 212: }
; genEndFunction
	Sswi2c$swi2c_init$291 ==.
	XG$swi2c_init$0$0 ==.
	ret
	Sswi2c$swi2c_init$292 ==.
	Sswi2c$swi2c_readbit$293 ==.
;	./src/swi2c.c: 220: uint8_t swi2c_readbit(void)
; genLabel
;	-----------------------------------------
;	 function swi2c_readbit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_swi2c_readbit:
	Sswi2c$swi2c_readbit$294 ==.
	pushw	x
	Sswi2c$swi2c_readbit$295 ==.
	Sswi2c$swi2c_readbit$296 ==.
;	./src/swi2c.c: 222: uint16_t timeout = SWI2C_TIMEOUT;
; genAssign
	ldw	x, #0xffff
	ldw	(0x01, sp), x
	Sswi2c$swi2c_readbit$297 ==.
;	./src/swi2c.c: 224: SDA_HIGH;                   // release SDA
; genIPush
	push	#0x80
	Sswi2c$swi2c_readbit$298 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_readbit$299 ==.
	push	#0x50
	Sswi2c$swi2c_readbit$300 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_readbit$301 ==.
	Sswi2c$swi2c_readbit$302 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_readbit$303 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_readbit$304 ==.
	Sswi2c$swi2c_readbit$305 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00110$:
	Sswi2c$swi2c_readbit$306 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_readbit$307 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00186$
	jp	00110$
00186$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_readbit$308 ==.
	Sswi2c$swi2c_readbit$309 ==.
;	./src/swi2c.c: 226: SCL_HIGH;
; genIPush
	push	#0x40
	Sswi2c$swi2c_readbit$310 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_readbit$311 ==.
	push	#0x50
	Sswi2c$swi2c_readbit$312 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_readbit$313 ==.
	Sswi2c$swi2c_readbit$314 ==.
;	./src/swi2c.c: 227: while (SCL_stat() == RESET && timeout) {
; genAssign
	ldw	x, (0x01, sp)
; genLabel
00102$:
; genIPush
	pushw	x
	Sswi2c$swi2c_readbit$315 ==.
	push	#0x40
	Sswi2c$swi2c_readbit$316 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_readbit$317 ==.
	push	#0x50
	Sswi2c$swi2c_readbit$318 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_readbit$319 ==.
	popw	x
	Sswi2c$swi2c_readbit$320 ==.
; genIfx
	tnz	a
	jreq	00187$
	jp	00139$
00187$:
; genIfx
	tnzw	x
	jrne	00188$
	jp	00139$
00188$:
	Sswi2c$swi2c_readbit$321 ==.
	Sswi2c$swi2c_readbit$322 ==.
;	./src/swi2c.c: 228: timeout--;
; genMinus
	decw	x
	Sswi2c$swi2c_readbit$323 ==.
; genGoto
	jp	00102$
; genLabel
00139$:
; genAssign
	ldw	(0x01, sp), x
	Sswi2c$swi2c_readbit$324 ==.
;	./src/swi2c.c: 230: if (timeout == 0) {
; genIfx
	ldw	x, (0x01, sp)
	jreq	00189$
	jp	00106$
00189$:
	Sswi2c$swi2c_readbit$325 ==.
	Sswi2c$swi2c_readbit$326 ==.
;	./src/swi2c.c: 231: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00125$
	Sswi2c$swi2c_readbit$327 ==.
; genLabel
00106$:
	Sswi2c$swi2c_readbit$328 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_readbit$329 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_readbit$330 ==.
	Sswi2c$swi2c_readbit$331 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00115$:
	Sswi2c$swi2c_readbit$332 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_readbit$333 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00190$
	jp	00115$
00190$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_readbit$334 ==.
	Sswi2c$swi2c_readbit$335 ==.
;	./src/swi2c.c: 234: if (SDA_stat() == RESET) {
; genIPush
	push	#0x80
	Sswi2c$swi2c_readbit$336 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_readbit$337 ==.
	push	#0x50
	Sswi2c$swi2c_readbit$338 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_readbit$339 ==.
; genIfx
	tnz	a
	jreq	00191$
	jp	00108$
00191$:
	Sswi2c$swi2c_readbit$340 ==.
	Sswi2c$swi2c_readbit$341 ==.
;	./src/swi2c.c: 235: retval = 0;
; genAssign
	clr	a
	Sswi2c$swi2c_readbit$342 ==.
; genGoto
	jp	00109$
; genLabel
00108$:
	Sswi2c$swi2c_readbit$343 ==.
	Sswi2c$swi2c_readbit$344 ==.
;	./src/swi2c.c: 237: retval = 1;
; genAssign
	ld	a, #0x01
	Sswi2c$swi2c_readbit$345 ==.
; genLabel
00109$:
	Sswi2c$swi2c_readbit$346 ==.
;	./src/swi2c.c: 239: SCL_LOW;
; genIPush
	push	a
	Sswi2c$swi2c_readbit$347 ==.
	push	#0x40
	Sswi2c$swi2c_readbit$348 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_readbit$349 ==.
	push	#0x50
	Sswi2c$swi2c_readbit$350 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_readbit$351 ==.
	pop	a
	Sswi2c$swi2c_readbit$352 ==.
	Sswi2c$swi2c_readbit$353 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_readbit$354 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_readbit$355 ==.
	Sswi2c$swi2c_readbit$356 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00120$:
	Sswi2c$swi2c_readbit$357 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_readbit$358 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00192$
	jp	00120$
00192$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_readbit$359 ==.
	Sswi2c$swi2c_readbit$360 ==.
;	./src/swi2c.c: 241: return retval;
; genReturn
; genLabel
00125$:
	Sswi2c$swi2c_readbit$361 ==.
;	./src/swi2c.c: 242: }
; genEndFunction
	popw	x
	Sswi2c$swi2c_readbit$362 ==.
	Sswi2c$swi2c_readbit$363 ==.
	XG$swi2c_readbit$0$0 ==.
	ret
	Sswi2c$swi2c_readbit$364 ==.
	Sswi2c$swi2c_writebit$365 ==.
;	./src/swi2c.c: 247: uint8_t swi2c_writebit(uint8_t bit)
; genLabel
;	-----------------------------------------
;	 function swi2c_writebit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_swi2c_writebit:
	Sswi2c$swi2c_writebit$366 ==.
	pushw	x
	Sswi2c$swi2c_writebit$367 ==.
	Sswi2c$swi2c_writebit$368 ==.
;	./src/swi2c.c: 249: uint16_t timeout = SWI2C_TIMEOUT;
; genAssign
	ldw	x, #0xffff
	ldw	(0x01, sp), x
	Sswi2c$swi2c_writebit$369 ==.
;	./src/swi2c.c: 250: if (bit) {
; genIfx
	tnz	(0x05, sp)
	jrne	00186$
	jp	00102$
00186$:
	Sswi2c$swi2c_writebit$370 ==.
	Sswi2c$swi2c_writebit$371 ==.
;	./src/swi2c.c: 251: SDA_HIGH;
; genIPush
	push	#0x80
	Sswi2c$swi2c_writebit$372 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_writebit$373 ==.
	push	#0x50
	Sswi2c$swi2c_writebit$374 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_writebit$375 ==.
	Sswi2c$swi2c_writebit$376 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sswi2c$swi2c_writebit$377 ==.
	Sswi2c$swi2c_writebit$378 ==.
;	./src/swi2c.c: 253: SDA_LOW;
; genIPush
	push	#0x80
	Sswi2c$swi2c_writebit$379 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_writebit$380 ==.
	push	#0x50
	Sswi2c$swi2c_writebit$381 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_writebit$382 ==.
	Sswi2c$swi2c_writebit$383 ==.
; genLabel
00103$:
	Sswi2c$swi2c_writebit$384 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_writebit$385 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_writebit$386 ==.
	Sswi2c$swi2c_writebit$387 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00110$:
	Sswi2c$swi2c_writebit$388 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_writebit$389 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00187$
	jp	00110$
00187$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_writebit$390 ==.
	Sswi2c$swi2c_writebit$391 ==.
;	./src/swi2c.c: 256: SCL_HIGH;
; genIPush
	push	#0x40
	Sswi2c$swi2c_writebit$392 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_writebit$393 ==.
	push	#0x50
	Sswi2c$swi2c_writebit$394 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_writebit$395 ==.
	Sswi2c$swi2c_writebit$396 ==.
;	./src/swi2c.c: 257: while (SCL_stat() == RESET && timeout) {
; genAssign
	ldw	x, (0x01, sp)
; genLabel
00105$:
; genIPush
	pushw	x
	Sswi2c$swi2c_writebit$397 ==.
	push	#0x40
	Sswi2c$swi2c_writebit$398 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_writebit$399 ==.
	push	#0x50
	Sswi2c$swi2c_writebit$400 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_writebit$401 ==.
	popw	x
	Sswi2c$swi2c_writebit$402 ==.
; genIfx
	tnz	a
	jreq	00188$
	jp	00139$
00188$:
; genIfx
	tnzw	x
	jrne	00189$
	jp	00139$
00189$:
	Sswi2c$swi2c_writebit$403 ==.
	Sswi2c$swi2c_writebit$404 ==.
;	./src/swi2c.c: 258: timeout--;
; genMinus
	decw	x
	Sswi2c$swi2c_writebit$405 ==.
; genGoto
	jp	00105$
; genLabel
00139$:
; genAssign
	ldw	(0x01, sp), x
	Sswi2c$swi2c_writebit$406 ==.
;	./src/swi2c.c: 260: if (timeout == 0) {
; genIfx
	ldw	x, (0x01, sp)
	jreq	00190$
	jp	00109$
00190$:
	Sswi2c$swi2c_writebit$407 ==.
	Sswi2c$swi2c_writebit$408 ==.
;	./src/swi2c.c: 261: SDA_HIGH;
; genIPush
	push	#0x80
	Sswi2c$swi2c_writebit$409 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_writebit$410 ==.
	push	#0x50
	Sswi2c$swi2c_writebit$411 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_writebit$412 ==.
	Sswi2c$swi2c_writebit$413 ==.
;	./src/swi2c.c: 262: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00125$
	Sswi2c$swi2c_writebit$414 ==.
; genLabel
00109$:
	Sswi2c$swi2c_writebit$415 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_writebit$416 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_writebit$417 ==.
	Sswi2c$swi2c_writebit$418 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00115$:
	Sswi2c$swi2c_writebit$419 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_writebit$420 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00191$
	jp	00115$
00191$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_writebit$421 ==.
	Sswi2c$swi2c_writebit$422 ==.
;	./src/swi2c.c: 265: SCL_LOW;
; genIPush
	push	#0x40
	Sswi2c$swi2c_writebit$423 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_writebit$424 ==.
	push	#0x50
	Sswi2c$swi2c_writebit$425 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_writebit$426 ==.
	Sswi2c$swi2c_writebit$427 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_writebit$428 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_writebit$429 ==.
	Sswi2c$swi2c_writebit$430 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00120$:
	Sswi2c$swi2c_writebit$431 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_writebit$432 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00192$
	jp	00120$
00192$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_writebit$433 ==.
	Sswi2c$swi2c_writebit$434 ==.
;	./src/swi2c.c: 267: return 0;
; genReturn
	clr	a
; genLabel
00125$:
	Sswi2c$swi2c_writebit$435 ==.
;	./src/swi2c.c: 268: }
; genEndFunction
	popw	x
	Sswi2c$swi2c_writebit$436 ==.
	Sswi2c$swi2c_writebit$437 ==.
	XG$swi2c_writebit$0$0 ==.
	ret
	Sswi2c$swi2c_writebit$438 ==.
	Sswi2c$swi2c_RESTART$439 ==.
;	./src/swi2c.c: 273: uint8_t swi2c_RESTART(void)
; genLabel
;	-----------------------------------------
;	 function swi2c_RESTART
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_swi2c_RESTART:
	Sswi2c$swi2c_RESTART$440 ==.
	pushw	x
	Sswi2c$swi2c_RESTART$441 ==.
	Sswi2c$swi2c_RESTART$442 ==.
;	./src/swi2c.c: 275: uint16_t timeout = SWI2C_TIMEOUT;
; genAssign
	clrw	x
	decw	x
	Sswi2c$swi2c_RESTART$443 ==.
;	./src/swi2c.c: 276: SCL_LOW;
; genIPush
	pushw	x
	Sswi2c$swi2c_RESTART$444 ==.
	push	#0x40
	Sswi2c$swi2c_RESTART$445 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_RESTART$446 ==.
	push	#0x50
	Sswi2c$swi2c_RESTART$447 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_RESTART$448 ==.
	popw	x
	Sswi2c$swi2c_RESTART$449 ==.
	Sswi2c$swi2c_RESTART$450 ==.
;	./src/swi2c.c: 277: SDA_HIGH;
; genIPush
	pushw	x
	Sswi2c$swi2c_RESTART$451 ==.
	push	#0x80
	Sswi2c$swi2c_RESTART$452 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_RESTART$453 ==.
	push	#0x50
	Sswi2c$swi2c_RESTART$454 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_RESTART$455 ==.
	popw	x
	Sswi2c$swi2c_RESTART$456 ==.
	Sswi2c$swi2c_RESTART$457 ==.
;	./src/swi2c.c: 278: while (SDA_stat() == RESET && timeout) {
; genAssign
; genLabel
00102$:
; genIPush
	pushw	x
	Sswi2c$swi2c_RESTART$458 ==.
	push	#0x80
	Sswi2c$swi2c_RESTART$459 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_RESTART$460 ==.
	push	#0x50
	Sswi2c$swi2c_RESTART$461 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_RESTART$462 ==.
	popw	x
	Sswi2c$swi2c_RESTART$463 ==.
; genIfx
	tnz	a
	jreq	00221$
	jp	00151$
00221$:
; genIfx
	tnzw	x
	jrne	00222$
	jp	00151$
00222$:
	Sswi2c$swi2c_RESTART$464 ==.
	Sswi2c$swi2c_RESTART$465 ==.
;	./src/swi2c.c: 279: timeout--;
; genMinus
	decw	x
	Sswi2c$swi2c_RESTART$466 ==.
; genGoto
	jp	00102$
; genLabel
00151$:
; genAssign
	ldw	(0x01, sp), x
	Sswi2c$swi2c_RESTART$467 ==.
;	./src/swi2c.c: 281: if (timeout == 0) {
; genIfx
	ldw	x, (0x01, sp)
	jreq	00223$
	jp	00106$
00223$:
	Sswi2c$swi2c_RESTART$468 ==.
	Sswi2c$swi2c_RESTART$469 ==.
;	./src/swi2c.c: 282: SCL_HIGH;
; genIPush
	push	#0x40
	Sswi2c$swi2c_RESTART$470 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_RESTART$471 ==.
	push	#0x50
	Sswi2c$swi2c_RESTART$472 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_RESTART$473 ==.
	Sswi2c$swi2c_RESTART$474 ==.
;	./src/swi2c.c: 283: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00133$
	Sswi2c$swi2c_RESTART$475 ==.
; genLabel
00106$:
	Sswi2c$swi2c_RESTART$476 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000b
	Sswi2c$swi2c_RESTART$477 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_RESTART$478 ==.
	Sswi2c$swi2c_RESTART$479 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00113$:
	Sswi2c$swi2c_RESTART$480 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_RESTART$481 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00224$
	jp	00113$
00224$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_RESTART$482 ==.
	Sswi2c$swi2c_RESTART$483 ==.
;	./src/swi2c.c: 286: SCL_HIGH;
; genIPush
	push	#0x40
	Sswi2c$swi2c_RESTART$484 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_RESTART$485 ==.
	push	#0x50
	Sswi2c$swi2c_RESTART$486 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_RESTART$487 ==.
	Sswi2c$swi2c_RESTART$488 ==.
;	./src/swi2c.c: 287: while (SCL_stat() == RESET && timeout) {
; genAssign
	ldw	x, (0x01, sp)
; genLabel
00108$:
; genIPush
	pushw	x
	Sswi2c$swi2c_RESTART$489 ==.
	push	#0x40
	Sswi2c$swi2c_RESTART$490 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_RESTART$491 ==.
	push	#0x50
	Sswi2c$swi2c_RESTART$492 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_RESTART$493 ==.
	popw	x
	Sswi2c$swi2c_RESTART$494 ==.
; genIfx
	tnz	a
	jreq	00225$
	jp	00153$
00225$:
; genIfx
	tnzw	x
	jrne	00226$
	jp	00153$
00226$:
	Sswi2c$swi2c_RESTART$495 ==.
	Sswi2c$swi2c_RESTART$496 ==.
;	./src/swi2c.c: 288: timeout--;
; genMinus
	decw	x
	Sswi2c$swi2c_RESTART$497 ==.
; genGoto
	jp	00108$
; genLabel
00153$:
; genAssign
	Sswi2c$swi2c_RESTART$498 ==.
;	./src/swi2c.c: 290: if (timeout == 0) {
; genIfx
	tnzw	x
	jreq	00227$
	jp	00112$
00227$:
	Sswi2c$swi2c_RESTART$499 ==.
	Sswi2c$swi2c_RESTART$500 ==.
;	./src/swi2c.c: 291: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00133$
	Sswi2c$swi2c_RESTART$501 ==.
; genLabel
00112$:
	Sswi2c$swi2c_RESTART$502 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000b
	Sswi2c$swi2c_RESTART$503 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_RESTART$504 ==.
	Sswi2c$swi2c_RESTART$505 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00118$:
	Sswi2c$swi2c_RESTART$506 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_RESTART$507 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00228$
	jp	00118$
00228$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_RESTART$508 ==.
	Sswi2c$swi2c_RESTART$509 ==.
;	./src/swi2c.c: 294: SDA_LOW;
; genIPush
	push	#0x80
	Sswi2c$swi2c_RESTART$510 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_RESTART$511 ==.
	push	#0x50
	Sswi2c$swi2c_RESTART$512 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_RESTART$513 ==.
	Sswi2c$swi2c_RESTART$514 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000b
	Sswi2c$swi2c_RESTART$515 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_RESTART$516 ==.
	Sswi2c$swi2c_RESTART$517 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00123$:
	Sswi2c$swi2c_RESTART$518 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_RESTART$519 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00229$
	jp	00123$
00229$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_RESTART$520 ==.
	Sswi2c$swi2c_RESTART$521 ==.
;	./src/swi2c.c: 296: SCL_LOW;
; genIPush
	push	#0x40
	Sswi2c$swi2c_RESTART$522 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_RESTART$523 ==.
	push	#0x50
	Sswi2c$swi2c_RESTART$524 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_RESTART$525 ==.
	Sswi2c$swi2c_RESTART$526 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000b
	Sswi2c$swi2c_RESTART$527 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_RESTART$528 ==.
	Sswi2c$swi2c_RESTART$529 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00128$:
	Sswi2c$swi2c_RESTART$530 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_RESTART$531 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00230$
	jp	00128$
00230$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_RESTART$532 ==.
	Sswi2c$swi2c_RESTART$533 ==.
;	./src/swi2c.c: 298: return 0;
; genReturn
	clr	a
; genLabel
00133$:
	Sswi2c$swi2c_RESTART$534 ==.
;	./src/swi2c.c: 299: }
; genEndFunction
	popw	x
	Sswi2c$swi2c_RESTART$535 ==.
	Sswi2c$swi2c_RESTART$536 ==.
	XG$swi2c_RESTART$0$0 ==.
	ret
	Sswi2c$swi2c_RESTART$537 ==.
	Sswi2c$swi2c_START$538 ==.
;	./src/swi2c.c: 304: uint8_t swi2c_START(void)
; genLabel
;	-----------------------------------------
;	 function swi2c_START
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_swi2c_START:
	Sswi2c$swi2c_START$539 ==.
	Sswi2c$swi2c_START$540 ==.
;	./src/swi2c.c: 306: if (SCL_stat() == RESET || SDA_stat() == RESET) {
; genIPush
	push	#0x40
	Sswi2c$swi2c_START$541 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_START$542 ==.
	push	#0x50
	Sswi2c$swi2c_START$543 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_START$544 ==.
; genIfx
	tnz	a
	jrne	00143$
	jp	00101$
00143$:
; genIPush
	push	#0x80
	Sswi2c$swi2c_START$545 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_START$546 ==.
	push	#0x50
	Sswi2c$swi2c_START$547 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_START$548 ==.
; genIfx
	tnz	a
	jreq	00144$
	jp	00102$
00144$:
; genLabel
00101$:
	Sswi2c$swi2c_START$549 ==.
	Sswi2c$swi2c_START$550 ==.
;	./src/swi2c.c: 307: SDA_HIGH;
; genIPush
	push	#0x80
	Sswi2c$swi2c_START$551 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_START$552 ==.
	push	#0x50
	Sswi2c$swi2c_START$553 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_START$554 ==.
	Sswi2c$swi2c_START$555 ==.
;	./src/swi2c.c: 308: SCL_HIGH;
; genIPush
	push	#0x40
	Sswi2c$swi2c_START$556 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_START$557 ==.
	push	#0x50
	Sswi2c$swi2c_START$558 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_START$559 ==.
	Sswi2c$swi2c_START$560 ==.
;	./src/swi2c.c: 309: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00114$
	Sswi2c$swi2c_START$561 ==.
; genLabel
00102$:
	Sswi2c$swi2c_START$562 ==.
;	./src/swi2c.c: 311: SDA_LOW;
; genIPush
	push	#0x80
	Sswi2c$swi2c_START$563 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_START$564 ==.
	push	#0x50
	Sswi2c$swi2c_START$565 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_START$566 ==.
	Sswi2c$swi2c_START$567 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000b
	Sswi2c$swi2c_START$568 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_START$569 ==.
	Sswi2c$swi2c_START$570 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00104$:
	Sswi2c$swi2c_START$571 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_START$572 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00145$
	jp	00104$
00145$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_START$573 ==.
	Sswi2c$swi2c_START$574 ==.
;	./src/swi2c.c: 313: SCL_LOW;
; genIPush
	push	#0x40
	Sswi2c$swi2c_START$575 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_START$576 ==.
	push	#0x50
	Sswi2c$swi2c_START$577 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_START$578 ==.
	Sswi2c$swi2c_START$579 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000b
	Sswi2c$swi2c_START$580 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_START$581 ==.
	Sswi2c$swi2c_START$582 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00109$:
	Sswi2c$swi2c_START$583 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_START$584 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00146$
	jp	00109$
00146$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_START$585 ==.
	Sswi2c$swi2c_START$586 ==.
;	./src/swi2c.c: 315: return 0;
; genReturn
	clr	a
; genLabel
00114$:
	Sswi2c$swi2c_START$587 ==.
;	./src/swi2c.c: 316: }
; genEndFunction
	Sswi2c$swi2c_START$588 ==.
	XG$swi2c_START$0$0 ==.
	ret
	Sswi2c$swi2c_START$589 ==.
	Sswi2c$swi2c_STOP$590 ==.
;	./src/swi2c.c: 321: uint8_t swi2c_STOP(void)
; genLabel
;	-----------------------------------------
;	 function swi2c_STOP
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_swi2c_STOP:
	Sswi2c$swi2c_STOP$591 ==.
	sub	sp, #3
	Sswi2c$swi2c_STOP$592 ==.
	Sswi2c$swi2c_STOP$593 ==.
;	./src/swi2c.c: 323: uint16_t timeout = SWI2C_TIMEOUT;
; genAssign
	ldw	x, #0xffff
	ldw	(0x01, sp), x
	Sswi2c$swi2c_STOP$594 ==.
;	./src/swi2c.c: 324: uint8_t retval = 0;
; genAssign
	clr	(0x03, sp)
	Sswi2c$swi2c_STOP$595 ==.
;	./src/swi2c.c: 325: SDA_LOW;
; genIPush
	push	#0x80
	Sswi2c$swi2c_STOP$596 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_STOP$597 ==.
	push	#0x50
	Sswi2c$swi2c_STOP$598 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_STOP$599 ==.
	Sswi2c$swi2c_STOP$600 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000b
	Sswi2c$swi2c_STOP$601 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_STOP$602 ==.
	Sswi2c$swi2c_STOP$603 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00107$:
	Sswi2c$swi2c_STOP$604 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_STOP$605 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00162$
	jp	00107$
00162$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_STOP$606 ==.
	Sswi2c$swi2c_STOP$607 ==.
;	./src/swi2c.c: 327: SCL_HIGH;
; genIPush
	push	#0x40
	Sswi2c$swi2c_STOP$608 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_STOP$609 ==.
	push	#0x50
	Sswi2c$swi2c_STOP$610 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_STOP$611 ==.
	Sswi2c$swi2c_STOP$612 ==.
;	./src/swi2c.c: 328: while (SCL_stat() == RESET && timeout) {
; genAssign
	ldw	x, (0x01, sp)
; genLabel
00102$:
; genIPush
	pushw	x
	Sswi2c$swi2c_STOP$613 ==.
	push	#0x40
	Sswi2c$swi2c_STOP$614 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_STOP$615 ==.
	push	#0x50
	Sswi2c$swi2c_STOP$616 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_STOP$617 ==.
	popw	x
	Sswi2c$swi2c_STOP$618 ==.
; genIfx
	tnz	a
	jreq	00163$
	jp	00128$
00163$:
; genIfx
	tnzw	x
	jrne	00164$
	jp	00128$
00164$:
	Sswi2c$swi2c_STOP$619 ==.
	Sswi2c$swi2c_STOP$620 ==.
;	./src/swi2c.c: 329: timeout--;
; genMinus
	decw	x
	Sswi2c$swi2c_STOP$621 ==.
; genGoto
	jp	00102$
; genLabel
00128$:
; genAssign
	Sswi2c$swi2c_STOP$622 ==.
;	./src/swi2c.c: 331: if (timeout == 0) {
; genIfx
	tnzw	x
	jreq	00165$
	jp	00106$
00165$:
	Sswi2c$swi2c_STOP$623 ==.
	Sswi2c$swi2c_STOP$624 ==.
;	./src/swi2c.c: 332: retval = 0xff;
; genAssign
	ld	a, #0xff
	ld	(0x03, sp), a
	Sswi2c$swi2c_STOP$625 ==.
; genLabel
00106$:
	Sswi2c$swi2c_STOP$626 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x000b
	Sswi2c$swi2c_STOP$627 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_STOP$628 ==.
	Sswi2c$swi2c_STOP$629 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00112$:
	Sswi2c$swi2c_STOP$630 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_STOP$631 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00166$
	jp	00112$
00166$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_STOP$632 ==.
	Sswi2c$swi2c_STOP$633 ==.
;	./src/swi2c.c: 335: SDA_HIGH;
; genIPush
	push	#0x80
	Sswi2c$swi2c_STOP$634 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_STOP$635 ==.
	push	#0x50
	Sswi2c$swi2c_STOP$636 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_STOP$637 ==.
	Sswi2c$swi2c_STOP$638 ==.
;	./src/swi2c.c: 336: return retval;
; genReturn
	ld	a, (0x03, sp)
; genLabel
00117$:
	Sswi2c$swi2c_STOP$639 ==.
;	./src/swi2c.c: 337: }
; genEndFunction
	addw	sp, #3
	Sswi2c$swi2c_STOP$640 ==.
	Sswi2c$swi2c_STOP$641 ==.
	XG$swi2c_STOP$0$0 ==.
	ret
	Sswi2c$swi2c_STOP$642 ==.
	Sswi2c$swi2c_recover$643 ==.
;	./src/swi2c.c: 343: uint8_t swi2c_recover(void)
; genLabel
;	-----------------------------------------
;	 function swi2c_recover
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_swi2c_recover:
	Sswi2c$swi2c_recover$644 ==.
	sub	sp, #3
	Sswi2c$swi2c_recover$645 ==.
	Sswi2c$swi2c_recover$646 ==.
;	./src/swi2c.c: 345: uint16_t timeout = SWI2C_TIMEOUT;
; genAssign
	ldw	x, #0xffff
	ldw	(0x01, sp), x
	Sswi2c$swi2c_recover$647 ==.
;	./src/swi2c.c: 347: SCL_HIGH;                   // release both lines
; genIPush
	push	#0x40
	Sswi2c$swi2c_recover$648 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$649 ==.
	push	#0x50
	Sswi2c$swi2c_recover$650 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_recover$651 ==.
	Sswi2c$swi2c_recover$652 ==.
;	./src/swi2c.c: 348: SDA_HIGH;
; genIPush
	push	#0x80
	Sswi2c$swi2c_recover$653 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$654 ==.
	push	#0x50
	Sswi2c$swi2c_recover$655 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_recover$656 ==.
	Sswi2c$swi2c_recover$657 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_recover$658 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_recover$659 ==.
	Sswi2c$swi2c_recover$660 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00115$:
	Sswi2c$swi2c_recover$661 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_recover$662 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00218$
	jp	00115$
00218$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_recover$663 ==.
	Sswi2c$swi2c_recover$664 ==.
;	./src/swi2c.c: 351: if (SCL_stat() != RESET && SDA_stat() != RESET) {
; genIPush
	push	#0x40
	Sswi2c$swi2c_recover$665 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$666 ==.
	push	#0x50
	Sswi2c$swi2c_recover$667 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_recover$668 ==.
; genIfx
	tnz	a
	jrne	00219$
	jp	00102$
00219$:
; genIPush
	push	#0x80
	Sswi2c$swi2c_recover$669 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$670 ==.
	push	#0x50
	Sswi2c$swi2c_recover$671 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_recover$672 ==.
; genIfx
	tnz	a
	jrne	00220$
	jp	00102$
00220$:
	Sswi2c$swi2c_recover$673 ==.
	Sswi2c$swi2c_recover$674 ==.
;	./src/swi2c.c: 352: return 0;
; genReturn
	clr	a
	jp	00132$
	Sswi2c$swi2c_recover$675 ==.
; genLabel
00102$:
	Sswi2c$swi2c_recover$676 ==.
;	./src/swi2c.c: 355: if (SDA_stat() == RESET) {
; genIPush
	push	#0x80
	Sswi2c$swi2c_recover$677 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$678 ==.
	push	#0x50
	Sswi2c$swi2c_recover$679 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_recover$680 ==.
; genIfx
	tnz	a
	jreq	00221$
	jp	00132$
00221$:
	Sswi2c$swi2c_recover$681 ==.
;	./src/swi2c.c: 356: for (i = 0; i < 9; i++) {       // try nine times try to read one bit and pray for SDA release
; genAssign
	clr	(0x03, sp)
; genLabel
00130$:
	Sswi2c$swi2c_recover$682 ==.
	Sswi2c$swi2c_recover$683 ==.
;	./src/swi2c.c: 357: SCL_LOW;
; genIPush
	push	#0x40
	Sswi2c$swi2c_recover$684 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$685 ==.
	push	#0x50
	Sswi2c$swi2c_recover$686 ==.
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
	Sswi2c$swi2c_recover$687 ==.
	Sswi2c$swi2c_recover$688 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_recover$689 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_recover$690 ==.
	Sswi2c$swi2c_recover$691 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00120$:
	Sswi2c$swi2c_recover$692 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_recover$693 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00222$
	jp	00120$
00222$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_recover$694 ==.
	Sswi2c$swi2c_recover$695 ==.
;	./src/swi2c.c: 359: SCL_HIGH;
; genIPush
	push	#0x40
	Sswi2c$swi2c_recover$696 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$697 ==.
	push	#0x50
	Sswi2c$swi2c_recover$698 ==.
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
	Sswi2c$swi2c_recover$699 ==.
	Sswi2c$swi2c_recover$700 ==.
	Sswi2c$swi2c_recover$701 ==.
;	./src/swi2c.c: 360: while (SCL_stat() == RESET && timeout) {
; genAssign
	ldw	x, (0x01, sp)
; genLabel
00105$:
; genIPush
	pushw	x
	Sswi2c$swi2c_recover$702 ==.
	push	#0x40
	Sswi2c$swi2c_recover$703 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$704 ==.
	push	#0x50
	Sswi2c$swi2c_recover$705 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_recover$706 ==.
	popw	x
	Sswi2c$swi2c_recover$707 ==.
; genIfx
	tnz	a
	jreq	00223$
	jp	00152$
00223$:
; genIfx
	tnzw	x
	jrne	00224$
	jp	00152$
00224$:
	Sswi2c$swi2c_recover$708 ==.
	Sswi2c$swi2c_recover$709 ==.
;	./src/swi2c.c: 361: timeout--;
; genMinus
	decw	x
	Sswi2c$swi2c_recover$710 ==.
; genGoto
	jp	00105$
	Sswi2c$swi2c_recover$711 ==.
; genLabel
00152$:
; genAssign
	ldw	(0x01, sp), x
	Sswi2c$swi2c_recover$712 ==.
;	./src/swi2c.c: 363: if (timeout == 0) {
; genIfx
	ldw	x, (0x01, sp)
	jreq	00225$
	jp	00109$
00225$:
	Sswi2c$swi2c_recover$713 ==.
	Sswi2c$swi2c_recover$714 ==.
;	./src/swi2c.c: 364: return 0xff;
; genReturn
	ld	a, #0xff
	jp	00132$
	Sswi2c$swi2c_recover$715 ==.
; genLabel
00109$:
	Sswi2c$swi2c_recover$716 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genAssign
	ldw	x, #0x0005
	Sswi2c$swi2c_recover$717 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Sswi2c$swi2c_recover$718 ==.
	Sswi2c$swi2c_recover$719 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00125$:
	Sswi2c$swi2c_recover$720 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Sswi2c$swi2c_recover$721 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00226$
	jp	00125$
00226$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Sswi2c$swi2c_recover$722 ==.
	Sswi2c$swi2c_recover$723 ==.
;	./src/swi2c.c: 367: if (SDA_stat() != RESET) {  // if slave released SDA line, generate STOP
; genIPush
	push	#0x80
	Sswi2c$swi2c_recover$724 ==.
; genIPush
	push	#0x0a
	Sswi2c$swi2c_recover$725 ==.
	push	#0x50
	Sswi2c$swi2c_recover$726 ==.
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Sswi2c$swi2c_recover$727 ==.
; genIfx
	tnz	a
	jrne	00227$
	jp	00131$
00227$:
	Sswi2c$swi2c_recover$728 ==.
	Sswi2c$swi2c_recover$729 ==.
;	./src/swi2c.c: 368: return (swi2c_STOP());
; genCall
	addw	sp, #3
	Sswi2c$swi2c_recover$730 ==.
	jp	_swi2c_STOP
; genReturn
	jp	00132$
	Sswi2c$swi2c_recover$731 ==.
; genLabel
00131$:
	Sswi2c$swi2c_recover$732 ==.
	Sswi2c$swi2c_recover$733 ==.
;	./src/swi2c.c: 356: for (i = 0; i < 9; i++) {       // try nine times try to read one bit and pray for SDA release
; genPlus
	inc	(0x03, sp)
; genCmp
; genCmpTop
	ld	a, (0x03, sp)
	cp	a, #0x09
	jrnc	00228$
	jp	00130$
00228$:
; skipping generated iCode
	Sswi2c$swi2c_recover$734 ==.
	Sswi2c$swi2c_recover$735 ==.
;	./src/swi2c.c: 371: return 0xee;
; genReturn
	ld	a, #0xee
	Sswi2c$swi2c_recover$736 ==.
; genLabel
00132$:
	Sswi2c$swi2c_recover$737 ==.
;	./src/swi2c.c: 373: }
; genEndFunction
	addw	sp, #3
	Sswi2c$swi2c_recover$738 ==.
	Sswi2c$swi2c_recover$739 ==.
	XG$swi2c_recover$0$0 ==.
	ret
	Sswi2c$swi2c_recover$740 ==.
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
	.ascii "./src/swi2c.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$_delay_cycl$0)
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sswi2c$_delay_cycl$2-Sswi2c$_delay_cycl$0
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Sswi2c$_delay_cycl$3-Sswi2c$_delay_cycl$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$_delay_cycl$5-Sswi2c$_delay_cycl$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$_delay_cycl$7-Sswi2c$_delay_cycl$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$_delay_cycl$8-Sswi2c$_delay_cycl$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$_delay_cycl$9-Sswi2c$_delay_cycl$8
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	1+Sswi2c$_delay_cycl$10-Sswi2c$_delay_cycl$9
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$_delay_us$12)
	.db	3
	.sleb128	40
	.db	1
	.db	9
	.dw	Sswi2c$_delay_us$35-Sswi2c$_delay_us$12
	.db	3
	.sleb128	-15
	.db	1
	.db	9
	.dw	Sswi2c$_delay_us$39-Sswi2c$_delay_us$35
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Sswi2c$_delay_us$40-Sswi2c$_delay_us$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$_delay_us$41-Sswi2c$_delay_us$40
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_read_buf$43)
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$46-Sswi2c$swi2c_read_buf$43
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$48-Sswi2c$swi2c_read_buf$46
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$50-Sswi2c$swi2c_read_buf$48
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$51-Sswi2c$swi2c_read_buf$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$53-Sswi2c$swi2c_read_buf$51
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$57-Sswi2c$swi2c_read_buf$53
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$59-Sswi2c$swi2c_read_buf$57
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$61-Sswi2c$swi2c_read_buf$59
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$62-Sswi2c$swi2c_read_buf$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$64-Sswi2c$swi2c_read_buf$62
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$66-Sswi2c$swi2c_read_buf$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$68-Sswi2c$swi2c_read_buf$66
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$70-Sswi2c$swi2c_read_buf$68
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$71-Sswi2c$swi2c_read_buf$70
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$73-Sswi2c$swi2c_read_buf$71
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$77-Sswi2c$swi2c_read_buf$73
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$79-Sswi2c$swi2c_read_buf$77
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$81-Sswi2c$swi2c_read_buf$79
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$82-Sswi2c$swi2c_read_buf$81
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$84-Sswi2c$swi2c_read_buf$82
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$86-Sswi2c$swi2c_read_buf$84
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$88-Sswi2c$swi2c_read_buf$86
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$90-Sswi2c$swi2c_read_buf$88
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$92-Sswi2c$swi2c_read_buf$90
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$94-Sswi2c$swi2c_read_buf$92
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$96-Sswi2c$swi2c_read_buf$94
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$98-Sswi2c$swi2c_read_buf$96
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$102-Sswi2c$swi2c_read_buf$98
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$104-Sswi2c$swi2c_read_buf$102
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$106-Sswi2c$swi2c_read_buf$104
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$107-Sswi2c$swi2c_read_buf$106
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$109-Sswi2c$swi2c_read_buf$107
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$111-Sswi2c$swi2c_read_buf$109
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$113-Sswi2c$swi2c_read_buf$111
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$115-Sswi2c$swi2c_read_buf$113
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$117-Sswi2c$swi2c_read_buf$115
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$118-Sswi2c$swi2c_read_buf$117
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$120-Sswi2c$swi2c_read_buf$118
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$122-Sswi2c$swi2c_read_buf$120
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$123-Sswi2c$swi2c_read_buf$122
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$125-Sswi2c$swi2c_read_buf$123
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$127-Sswi2c$swi2c_read_buf$125
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$130-Sswi2c$swi2c_read_buf$127
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$133-Sswi2c$swi2c_read_buf$130
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$134-Sswi2c$swi2c_read_buf$133
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$136-Sswi2c$swi2c_read_buf$134
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$138-Sswi2c$swi2c_read_buf$136
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$141-Sswi2c$swi2c_read_buf$138
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$145-Sswi2c$swi2c_read_buf$141
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$148-Sswi2c$swi2c_read_buf$145
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$152-Sswi2c$swi2c_read_buf$148
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$155-Sswi2c$swi2c_read_buf$152
	.db	3
	.sleb128	-20
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$156-Sswi2c$swi2c_read_buf$155
	.db	3
	.sleb128	26
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$158-Sswi2c$swi2c_read_buf$156
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$160-Sswi2c$swi2c_read_buf$158
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_read_buf$161-Sswi2c$swi2c_read_buf$160
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_read_buf$163-Sswi2c$swi2c_read_buf$161
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_write_buf$165)
	.db	3
	.sleb128	112
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$168-Sswi2c$swi2c_write_buf$165
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$170-Sswi2c$swi2c_write_buf$168
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$172-Sswi2c$swi2c_write_buf$170
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$173-Sswi2c$swi2c_write_buf$172
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$175-Sswi2c$swi2c_write_buf$173
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$179-Sswi2c$swi2c_write_buf$175
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$181-Sswi2c$swi2c_write_buf$179
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$183-Sswi2c$swi2c_write_buf$181
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$184-Sswi2c$swi2c_write_buf$183
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$186-Sswi2c$swi2c_write_buf$184
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$188-Sswi2c$swi2c_write_buf$186
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$190-Sswi2c$swi2c_write_buf$188
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$192-Sswi2c$swi2c_write_buf$190
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$193-Sswi2c$swi2c_write_buf$192
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$195-Sswi2c$swi2c_write_buf$193
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$199-Sswi2c$swi2c_write_buf$195
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$201-Sswi2c$swi2c_write_buf$199
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$203-Sswi2c$swi2c_write_buf$201
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$204-Sswi2c$swi2c_write_buf$203
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$206-Sswi2c$swi2c_write_buf$204
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$208-Sswi2c$swi2c_write_buf$206
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$210-Sswi2c$swi2c_write_buf$208
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$212-Sswi2c$swi2c_write_buf$210
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$214-Sswi2c$swi2c_write_buf$212
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$216-Sswi2c$swi2c_write_buf$214
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$218-Sswi2c$swi2c_write_buf$216
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$224-Sswi2c$swi2c_write_buf$218
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$226-Sswi2c$swi2c_write_buf$224
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$228-Sswi2c$swi2c_write_buf$226
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$229-Sswi2c$swi2c_write_buf$228
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$231-Sswi2c$swi2c_write_buf$229
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$233-Sswi2c$swi2c_write_buf$231
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$235-Sswi2c$swi2c_write_buf$233
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$238-Sswi2c$swi2c_write_buf$235
	.db	3
	.sleb128	-13
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$239-Sswi2c$swi2c_write_buf$238
	.db	3
	.sleb128	18
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$241-Sswi2c$swi2c_write_buf$239
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$243-Sswi2c$swi2c_write_buf$241
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_write_buf$244-Sswi2c$swi2c_write_buf$243
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_write_buf$246-Sswi2c$swi2c_write_buf$244
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_test_slave$248)
	.db	3
	.sleb128	186
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$251-Sswi2c$swi2c_test_slave$248
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$252-Sswi2c$swi2c_test_slave$251
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$254-Sswi2c$swi2c_test_slave$252
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$256-Sswi2c$swi2c_test_slave$254
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$258-Sswi2c$swi2c_test_slave$256
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$262-Sswi2c$swi2c_test_slave$258
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$264-Sswi2c$swi2c_test_slave$262
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$266-Sswi2c$swi2c_test_slave$264
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$267-Sswi2c$swi2c_test_slave$266
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$269-Sswi2c$swi2c_test_slave$267
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$271-Sswi2c$swi2c_test_slave$269
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_test_slave$272-Sswi2c$swi2c_test_slave$271
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_test_slave$274-Sswi2c$swi2c_test_slave$272
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_init$276)
	.db	3
	.sleb128	207
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_init$278-Sswi2c$swi2c_init$276
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_init$284-Sswi2c$swi2c_init$278
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_init$290-Sswi2c$swi2c_init$284
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_init$291-Sswi2c$swi2c_init$290
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_readbit$293)
	.db	3
	.sleb128	219
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$296-Sswi2c$swi2c_readbit$293
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$297-Sswi2c$swi2c_readbit$296
	.db	3
	.sleb128	2
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$305-Sswi2c$swi2c_readbit$297
	.db	3
	.sleb128	-198
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_readbit$309-Sswi2c$swi2c_readbit$305
	.db	3
	.sleb128	200
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$314-Sswi2c$swi2c_readbit$309
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$322-Sswi2c$swi2c_readbit$314
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$324-Sswi2c$swi2c_readbit$322
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$326-Sswi2c$swi2c_readbit$324
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$331-Sswi2c$swi2c_readbit$326
	.db	3
	.sleb128	-205
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_readbit$335-Sswi2c$swi2c_readbit$331
	.db	3
	.sleb128	208
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$341-Sswi2c$swi2c_readbit$335
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$344-Sswi2c$swi2c_readbit$341
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$346-Sswi2c$swi2c_readbit$344
	.db	3
	.sleb128	2
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$356-Sswi2c$swi2c_readbit$346
	.db	3
	.sleb128	-213
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_readbit$360-Sswi2c$swi2c_readbit$356
	.db	3
	.sleb128	215
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_readbit$361-Sswi2c$swi2c_readbit$360
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_readbit$363-Sswi2c$swi2c_readbit$361
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_writebit$365)
	.db	3
	.sleb128	246
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$368-Sswi2c$swi2c_writebit$365
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$369-Sswi2c$swi2c_writebit$368
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$371-Sswi2c$swi2c_writebit$369
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$378-Sswi2c$swi2c_writebit$371
	.db	3
	.sleb128	2
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$387-Sswi2c$swi2c_writebit$378
	.db	3
	.sleb128	-227
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_writebit$391-Sswi2c$swi2c_writebit$387
	.db	3
	.sleb128	230
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$396-Sswi2c$swi2c_writebit$391
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$404-Sswi2c$swi2c_writebit$396
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$406-Sswi2c$swi2c_writebit$404
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$408-Sswi2c$swi2c_writebit$406
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$413-Sswi2c$swi2c_writebit$408
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$418-Sswi2c$swi2c_writebit$413
	.db	3
	.sleb128	-236
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_writebit$422-Sswi2c$swi2c_writebit$418
	.db	3
	.sleb128	239
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$430-Sswi2c$swi2c_writebit$422
	.db	3
	.sleb128	-239
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_writebit$434-Sswi2c$swi2c_writebit$430
	.db	3
	.sleb128	241
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_writebit$435-Sswi2c$swi2c_writebit$434
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_writebit$437-Sswi2c$swi2c_writebit$435
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_RESTART$439)
	.db	3
	.sleb128	272
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$442-Sswi2c$swi2c_RESTART$439
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$443-Sswi2c$swi2c_RESTART$442
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$450-Sswi2c$swi2c_RESTART$443
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$457-Sswi2c$swi2c_RESTART$450
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$465-Sswi2c$swi2c_RESTART$457
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$467-Sswi2c$swi2c_RESTART$465
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$469-Sswi2c$swi2c_RESTART$467
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$474-Sswi2c$swi2c_RESTART$469
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$479-Sswi2c$swi2c_RESTART$474
	.db	3
	.sleb128	-257
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_RESTART$483-Sswi2c$swi2c_RESTART$479
	.db	3
	.sleb128	260
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$488-Sswi2c$swi2c_RESTART$483
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$496-Sswi2c$swi2c_RESTART$488
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$498-Sswi2c$swi2c_RESTART$496
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$500-Sswi2c$swi2c_RESTART$498
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$505-Sswi2c$swi2c_RESTART$500
	.db	3
	.sleb128	-265
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_RESTART$509-Sswi2c$swi2c_RESTART$505
	.db	3
	.sleb128	268
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$517-Sswi2c$swi2c_RESTART$509
	.db	3
	.sleb128	-268
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_RESTART$521-Sswi2c$swi2c_RESTART$517
	.db	3
	.sleb128	270
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$529-Sswi2c$swi2c_RESTART$521
	.db	3
	.sleb128	-270
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_RESTART$533-Sswi2c$swi2c_RESTART$529
	.db	3
	.sleb128	272
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_RESTART$534-Sswi2c$swi2c_RESTART$533
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_RESTART$536-Sswi2c$swi2c_RESTART$534
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_START$538)
	.db	3
	.sleb128	303
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_START$540-Sswi2c$swi2c_START$538
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_START$550-Sswi2c$swi2c_START$540
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_START$555-Sswi2c$swi2c_START$550
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_START$560-Sswi2c$swi2c_START$555
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_START$562-Sswi2c$swi2c_START$560
	.db	3
	.sleb128	2
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_START$570-Sswi2c$swi2c_START$562
	.db	3
	.sleb128	-285
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_START$574-Sswi2c$swi2c_START$570
	.db	3
	.sleb128	287
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_START$582-Sswi2c$swi2c_START$574
	.db	3
	.sleb128	-287
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_START$586-Sswi2c$swi2c_START$582
	.db	3
	.sleb128	289
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_START$587-Sswi2c$swi2c_START$586
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_START$588-Sswi2c$swi2c_START$587
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_STOP$590)
	.db	3
	.sleb128	320
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$593-Sswi2c$swi2c_STOP$590
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$594-Sswi2c$swi2c_STOP$593
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$595-Sswi2c$swi2c_STOP$594
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$603-Sswi2c$swi2c_STOP$595
	.db	3
	.sleb128	-299
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_STOP$607-Sswi2c$swi2c_STOP$603
	.db	3
	.sleb128	301
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$612-Sswi2c$swi2c_STOP$607
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$620-Sswi2c$swi2c_STOP$612
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$622-Sswi2c$swi2c_STOP$620
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$624-Sswi2c$swi2c_STOP$622
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$629-Sswi2c$swi2c_STOP$624
	.db	3
	.sleb128	-306
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_STOP$633-Sswi2c$swi2c_STOP$629
	.db	3
	.sleb128	309
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$638-Sswi2c$swi2c_STOP$633
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_STOP$639-Sswi2c$swi2c_STOP$638
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_STOP$641-Sswi2c$swi2c_STOP$639
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sswi2c$swi2c_recover$643)
	.db	3
	.sleb128	342
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$646-Sswi2c$swi2c_recover$643
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$647-Sswi2c$swi2c_recover$646
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$652-Sswi2c$swi2c_recover$647
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_recover$660-Sswi2c$swi2c_recover$652
	.db	3
	.sleb128	-322
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_recover$664-Sswi2c$swi2c_recover$660
	.db	3
	.sleb128	325
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$674-Sswi2c$swi2c_recover$664
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$676-Sswi2c$swi2c_recover$674
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$681-Sswi2c$swi2c_recover$676
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$683-Sswi2c$swi2c_recover$681
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_recover$691-Sswi2c$swi2c_recover$683
	.db	3
	.sleb128	-331
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_recover$695-Sswi2c$swi2c_recover$691
	.db	3
	.sleb128	333
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$701-Sswi2c$swi2c_recover$695
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$709-Sswi2c$swi2c_recover$701
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$712-Sswi2c$swi2c_recover$709
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$714-Sswi2c$swi2c_recover$712
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sswi2c$swi2c_recover$719-Sswi2c$swi2c_recover$714
	.db	3
	.sleb128	-338
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sswi2c$swi2c_recover$723-Sswi2c$swi2c_recover$719
	.db	3
	.sleb128	341
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$729-Sswi2c$swi2c_recover$723
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$733-Sswi2c$swi2c_recover$729
	.db	3
	.sleb128	-12
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$735-Sswi2c$swi2c_recover$733
	.db	3
	.sleb128	15
	.db	1
	.db	9
	.dw	Sswi2c$swi2c_recover$737-Sswi2c$swi2c_recover$735
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sswi2c$swi2c_recover$739-Sswi2c$swi2c_recover$737
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sswi2c$swi2c_recover$738)
	.dw	0,(Sswi2c$swi2c_recover$740)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_recover$730)
	.dw	0,(Sswi2c$swi2c_recover$738)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_recover$727)
	.dw	0,(Sswi2c$swi2c_recover$730)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$726)
	.dw	0,(Sswi2c$swi2c_recover$727)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$725)
	.dw	0,(Sswi2c$swi2c_recover$726)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$724)
	.dw	0,(Sswi2c$swi2c_recover$725)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_recover$707)
	.dw	0,(Sswi2c$swi2c_recover$724)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$706)
	.dw	0,(Sswi2c$swi2c_recover$707)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$705)
	.dw	0,(Sswi2c$swi2c_recover$706)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sswi2c$swi2c_recover$704)
	.dw	0,(Sswi2c$swi2c_recover$705)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$swi2c_recover$703)
	.dw	0,(Sswi2c$swi2c_recover$704)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$702)
	.dw	0,(Sswi2c$swi2c_recover$703)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$699)
	.dw	0,(Sswi2c$swi2c_recover$702)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$698)
	.dw	0,(Sswi2c$swi2c_recover$699)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$697)
	.dw	0,(Sswi2c$swi2c_recover$698)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$696)
	.dw	0,(Sswi2c$swi2c_recover$697)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_recover$687)
	.dw	0,(Sswi2c$swi2c_recover$696)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$686)
	.dw	0,(Sswi2c$swi2c_recover$687)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$685)
	.dw	0,(Sswi2c$swi2c_recover$686)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$684)
	.dw	0,(Sswi2c$swi2c_recover$685)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_recover$680)
	.dw	0,(Sswi2c$swi2c_recover$684)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$679)
	.dw	0,(Sswi2c$swi2c_recover$680)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$678)
	.dw	0,(Sswi2c$swi2c_recover$679)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$677)
	.dw	0,(Sswi2c$swi2c_recover$678)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_recover$672)
	.dw	0,(Sswi2c$swi2c_recover$677)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$671)
	.dw	0,(Sswi2c$swi2c_recover$672)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$670)
	.dw	0,(Sswi2c$swi2c_recover$671)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$669)
	.dw	0,(Sswi2c$swi2c_recover$670)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_recover$668)
	.dw	0,(Sswi2c$swi2c_recover$669)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$667)
	.dw	0,(Sswi2c$swi2c_recover$668)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$666)
	.dw	0,(Sswi2c$swi2c_recover$667)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$665)
	.dw	0,(Sswi2c$swi2c_recover$666)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_recover$656)
	.dw	0,(Sswi2c$swi2c_recover$665)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$655)
	.dw	0,(Sswi2c$swi2c_recover$656)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$654)
	.dw	0,(Sswi2c$swi2c_recover$655)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$653)
	.dw	0,(Sswi2c$swi2c_recover$654)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_recover$651)
	.dw	0,(Sswi2c$swi2c_recover$653)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$650)
	.dw	0,(Sswi2c$swi2c_recover$651)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_recover$649)
	.dw	0,(Sswi2c$swi2c_recover$650)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_recover$648)
	.dw	0,(Sswi2c$swi2c_recover$649)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_recover$645)
	.dw	0,(Sswi2c$swi2c_recover$648)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_recover$644)
	.dw	0,(Sswi2c$swi2c_recover$645)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_STOP$640)
	.dw	0,(Sswi2c$swi2c_STOP$642)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_STOP$637)
	.dw	0,(Sswi2c$swi2c_STOP$640)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$636)
	.dw	0,(Sswi2c$swi2c_STOP$637)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_STOP$635)
	.dw	0,(Sswi2c$swi2c_STOP$636)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_STOP$634)
	.dw	0,(Sswi2c$swi2c_STOP$635)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_STOP$618)
	.dw	0,(Sswi2c$swi2c_STOP$634)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$617)
	.dw	0,(Sswi2c$swi2c_STOP$618)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_STOP$616)
	.dw	0,(Sswi2c$swi2c_STOP$617)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sswi2c$swi2c_STOP$615)
	.dw	0,(Sswi2c$swi2c_STOP$616)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$swi2c_STOP$614)
	.dw	0,(Sswi2c$swi2c_STOP$615)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_STOP$613)
	.dw	0,(Sswi2c$swi2c_STOP$614)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_STOP$611)
	.dw	0,(Sswi2c$swi2c_STOP$613)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$610)
	.dw	0,(Sswi2c$swi2c_STOP$611)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_STOP$609)
	.dw	0,(Sswi2c$swi2c_STOP$610)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_STOP$608)
	.dw	0,(Sswi2c$swi2c_STOP$609)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_STOP$599)
	.dw	0,(Sswi2c$swi2c_STOP$608)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$598)
	.dw	0,(Sswi2c$swi2c_STOP$599)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_STOP$597)
	.dw	0,(Sswi2c$swi2c_STOP$598)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_STOP$596)
	.dw	0,(Sswi2c$swi2c_STOP$597)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_STOP$592)
	.dw	0,(Sswi2c$swi2c_STOP$596)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$591)
	.dw	0,(Sswi2c$swi2c_STOP$592)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_START$578)
	.dw	0,(Sswi2c$swi2c_START$589)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_START$577)
	.dw	0,(Sswi2c$swi2c_START$578)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_START$576)
	.dw	0,(Sswi2c$swi2c_START$577)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_START$575)
	.dw	0,(Sswi2c$swi2c_START$576)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_START$566)
	.dw	0,(Sswi2c$swi2c_START$575)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_START$565)
	.dw	0,(Sswi2c$swi2c_START$566)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_START$564)
	.dw	0,(Sswi2c$swi2c_START$565)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_START$563)
	.dw	0,(Sswi2c$swi2c_START$564)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_START$559)
	.dw	0,(Sswi2c$swi2c_START$563)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_START$558)
	.dw	0,(Sswi2c$swi2c_START$559)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_START$557)
	.dw	0,(Sswi2c$swi2c_START$558)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_START$556)
	.dw	0,(Sswi2c$swi2c_START$557)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_START$554)
	.dw	0,(Sswi2c$swi2c_START$556)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_START$553)
	.dw	0,(Sswi2c$swi2c_START$554)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_START$552)
	.dw	0,(Sswi2c$swi2c_START$553)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_START$551)
	.dw	0,(Sswi2c$swi2c_START$552)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_START$548)
	.dw	0,(Sswi2c$swi2c_START$551)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_START$547)
	.dw	0,(Sswi2c$swi2c_START$548)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_START$546)
	.dw	0,(Sswi2c$swi2c_START$547)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_START$545)
	.dw	0,(Sswi2c$swi2c_START$546)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_START$544)
	.dw	0,(Sswi2c$swi2c_START$545)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_START$543)
	.dw	0,(Sswi2c$swi2c_START$544)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_START$542)
	.dw	0,(Sswi2c$swi2c_START$543)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_START$541)
	.dw	0,(Sswi2c$swi2c_START$542)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_START$539)
	.dw	0,(Sswi2c$swi2c_START$541)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_RESTART$535)
	.dw	0,(Sswi2c$swi2c_RESTART$537)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_RESTART$525)
	.dw	0,(Sswi2c$swi2c_RESTART$535)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$524)
	.dw	0,(Sswi2c$swi2c_RESTART$525)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_RESTART$523)
	.dw	0,(Sswi2c$swi2c_RESTART$524)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$522)
	.dw	0,(Sswi2c$swi2c_RESTART$523)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$513)
	.dw	0,(Sswi2c$swi2c_RESTART$522)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$512)
	.dw	0,(Sswi2c$swi2c_RESTART$513)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_RESTART$511)
	.dw	0,(Sswi2c$swi2c_RESTART$512)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$510)
	.dw	0,(Sswi2c$swi2c_RESTART$511)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$494)
	.dw	0,(Sswi2c$swi2c_RESTART$510)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$493)
	.dw	0,(Sswi2c$swi2c_RESTART$494)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$492)
	.dw	0,(Sswi2c$swi2c_RESTART$493)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$swi2c_RESTART$491)
	.dw	0,(Sswi2c$swi2c_RESTART$492)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_RESTART$490)
	.dw	0,(Sswi2c$swi2c_RESTART$491)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_RESTART$489)
	.dw	0,(Sswi2c$swi2c_RESTART$490)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$487)
	.dw	0,(Sswi2c$swi2c_RESTART$489)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$486)
	.dw	0,(Sswi2c$swi2c_RESTART$487)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_RESTART$485)
	.dw	0,(Sswi2c$swi2c_RESTART$486)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$484)
	.dw	0,(Sswi2c$swi2c_RESTART$485)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$473)
	.dw	0,(Sswi2c$swi2c_RESTART$484)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$472)
	.dw	0,(Sswi2c$swi2c_RESTART$473)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_RESTART$471)
	.dw	0,(Sswi2c$swi2c_RESTART$472)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$470)
	.dw	0,(Sswi2c$swi2c_RESTART$471)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$463)
	.dw	0,(Sswi2c$swi2c_RESTART$470)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$462)
	.dw	0,(Sswi2c$swi2c_RESTART$463)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$461)
	.dw	0,(Sswi2c$swi2c_RESTART$462)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$swi2c_RESTART$460)
	.dw	0,(Sswi2c$swi2c_RESTART$461)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_RESTART$459)
	.dw	0,(Sswi2c$swi2c_RESTART$460)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_RESTART$458)
	.dw	0,(Sswi2c$swi2c_RESTART$459)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$456)
	.dw	0,(Sswi2c$swi2c_RESTART$458)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$455)
	.dw	0,(Sswi2c$swi2c_RESTART$456)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$454)
	.dw	0,(Sswi2c$swi2c_RESTART$455)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$swi2c_RESTART$453)
	.dw	0,(Sswi2c$swi2c_RESTART$454)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_RESTART$452)
	.dw	0,(Sswi2c$swi2c_RESTART$453)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_RESTART$451)
	.dw	0,(Sswi2c$swi2c_RESTART$452)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$449)
	.dw	0,(Sswi2c$swi2c_RESTART$451)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$448)
	.dw	0,(Sswi2c$swi2c_RESTART$449)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$447)
	.dw	0,(Sswi2c$swi2c_RESTART$448)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$swi2c_RESTART$446)
	.dw	0,(Sswi2c$swi2c_RESTART$447)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_RESTART$445)
	.dw	0,(Sswi2c$swi2c_RESTART$446)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_RESTART$444)
	.dw	0,(Sswi2c$swi2c_RESTART$445)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_RESTART$441)
	.dw	0,(Sswi2c$swi2c_RESTART$444)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_RESTART$440)
	.dw	0,(Sswi2c$swi2c_RESTART$441)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_writebit$436)
	.dw	0,(Sswi2c$swi2c_writebit$438)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_writebit$426)
	.dw	0,(Sswi2c$swi2c_writebit$436)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_writebit$425)
	.dw	0,(Sswi2c$swi2c_writebit$426)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_writebit$424)
	.dw	0,(Sswi2c$swi2c_writebit$425)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_writebit$423)
	.dw	0,(Sswi2c$swi2c_writebit$424)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$412)
	.dw	0,(Sswi2c$swi2c_writebit$423)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_writebit$411)
	.dw	0,(Sswi2c$swi2c_writebit$412)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_writebit$410)
	.dw	0,(Sswi2c$swi2c_writebit$411)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_writebit$409)
	.dw	0,(Sswi2c$swi2c_writebit$410)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$402)
	.dw	0,(Sswi2c$swi2c_writebit$409)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_writebit$401)
	.dw	0,(Sswi2c$swi2c_writebit$402)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_writebit$400)
	.dw	0,(Sswi2c$swi2c_writebit$401)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$swi2c_writebit$399)
	.dw	0,(Sswi2c$swi2c_writebit$400)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_writebit$398)
	.dw	0,(Sswi2c$swi2c_writebit$399)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_writebit$397)
	.dw	0,(Sswi2c$swi2c_writebit$398)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_writebit$395)
	.dw	0,(Sswi2c$swi2c_writebit$397)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_writebit$394)
	.dw	0,(Sswi2c$swi2c_writebit$395)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_writebit$393)
	.dw	0,(Sswi2c$swi2c_writebit$394)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_writebit$392)
	.dw	0,(Sswi2c$swi2c_writebit$393)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$382)
	.dw	0,(Sswi2c$swi2c_writebit$392)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_writebit$381)
	.dw	0,(Sswi2c$swi2c_writebit$382)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_writebit$380)
	.dw	0,(Sswi2c$swi2c_writebit$381)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_writebit$379)
	.dw	0,(Sswi2c$swi2c_writebit$380)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$375)
	.dw	0,(Sswi2c$swi2c_writebit$379)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_writebit$374)
	.dw	0,(Sswi2c$swi2c_writebit$375)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_writebit$373)
	.dw	0,(Sswi2c$swi2c_writebit$374)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_writebit$372)
	.dw	0,(Sswi2c$swi2c_writebit$373)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$367)
	.dw	0,(Sswi2c$swi2c_writebit$372)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_writebit$366)
	.dw	0,(Sswi2c$swi2c_writebit$367)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_readbit$362)
	.dw	0,(Sswi2c$swi2c_readbit$364)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_readbit$352)
	.dw	0,(Sswi2c$swi2c_readbit$362)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_readbit$351)
	.dw	0,(Sswi2c$swi2c_readbit$352)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$350)
	.dw	0,(Sswi2c$swi2c_readbit$351)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_readbit$349)
	.dw	0,(Sswi2c$swi2c_readbit$350)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_readbit$348)
	.dw	0,(Sswi2c$swi2c_readbit$349)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_readbit$347)
	.dw	0,(Sswi2c$swi2c_readbit$348)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$339)
	.dw	0,(Sswi2c$swi2c_readbit$347)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_readbit$338)
	.dw	0,(Sswi2c$swi2c_readbit$339)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_readbit$337)
	.dw	0,(Sswi2c$swi2c_readbit$338)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_readbit$336)
	.dw	0,(Sswi2c$swi2c_readbit$337)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$320)
	.dw	0,(Sswi2c$swi2c_readbit$336)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_readbit$319)
	.dw	0,(Sswi2c$swi2c_readbit$320)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_readbit$318)
	.dw	0,(Sswi2c$swi2c_readbit$319)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$swi2c_readbit$317)
	.dw	0,(Sswi2c$swi2c_readbit$318)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$swi2c_readbit$316)
	.dw	0,(Sswi2c$swi2c_readbit$317)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_readbit$315)
	.dw	0,(Sswi2c$swi2c_readbit$316)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_readbit$313)
	.dw	0,(Sswi2c$swi2c_readbit$315)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_readbit$312)
	.dw	0,(Sswi2c$swi2c_readbit$313)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_readbit$311)
	.dw	0,(Sswi2c$swi2c_readbit$312)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_readbit$310)
	.dw	0,(Sswi2c$swi2c_readbit$311)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$301)
	.dw	0,(Sswi2c$swi2c_readbit$310)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_readbit$300)
	.dw	0,(Sswi2c$swi2c_readbit$301)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_readbit$299)
	.dw	0,(Sswi2c$swi2c_readbit$300)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_readbit$298)
	.dw	0,(Sswi2c$swi2c_readbit$299)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$295)
	.dw	0,(Sswi2c$swi2c_readbit$298)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_readbit$294)
	.dw	0,(Sswi2c$swi2c_readbit$295)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_init$289)
	.dw	0,(Sswi2c$swi2c_init$292)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_init$288)
	.dw	0,(Sswi2c$swi2c_init$289)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_init$287)
	.dw	0,(Sswi2c$swi2c_init$288)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_init$286)
	.dw	0,(Sswi2c$swi2c_init$287)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_init$285)
	.dw	0,(Sswi2c$swi2c_init$286)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_init$283)
	.dw	0,(Sswi2c$swi2c_init$285)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_init$282)
	.dw	0,(Sswi2c$swi2c_init$283)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_init$281)
	.dw	0,(Sswi2c$swi2c_init$282)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_init$280)
	.dw	0,(Sswi2c$swi2c_init$281)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_init$279)
	.dw	0,(Sswi2c$swi2c_init$280)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_init$277)
	.dw	0,(Sswi2c$swi2c_init$279)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_test_slave$273)
	.dw	0,(Sswi2c$swi2c_test_slave$275)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_test_slave$260)
	.dw	0,(Sswi2c$swi2c_test_slave$273)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_test_slave$259)
	.dw	0,(Sswi2c$swi2c_test_slave$260)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_test_slave$250)
	.dw	0,(Sswi2c$swi2c_test_slave$259)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$swi2c_test_slave$249)
	.dw	0,(Sswi2c$swi2c_test_slave$250)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_write_buf$245)
	.dw	0,(Sswi2c$swi2c_write_buf$247)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_write_buf$222)
	.dw	0,(Sswi2c$swi2c_write_buf$245)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_write_buf$221)
	.dw	0,(Sswi2c$swi2c_write_buf$222)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_write_buf$220)
	.dw	0,(Sswi2c$swi2c_write_buf$221)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$swi2c_write_buf$219)
	.dw	0,(Sswi2c$swi2c_write_buf$220)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_write_buf$197)
	.dw	0,(Sswi2c$swi2c_write_buf$219)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_write_buf$196)
	.dw	0,(Sswi2c$swi2c_write_buf$197)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$177)
	.dw	0,(Sswi2c$swi2c_write_buf$196)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_write_buf$176)
	.dw	0,(Sswi2c$swi2c_write_buf$177)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$167)
	.dw	0,(Sswi2c$swi2c_write_buf$176)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$swi2c_write_buf$166)
	.dw	0,(Sswi2c$swi2c_write_buf$167)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$swi2c_read_buf$162)
	.dw	0,(Sswi2c$swi2c_read_buf$164)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$swi2c_read_buf$150)
	.dw	0,(Sswi2c$swi2c_read_buf$162)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$149)
	.dw	0,(Sswi2c$swi2c_read_buf$150)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_read_buf$143)
	.dw	0,(Sswi2c$swi2c_read_buf$149)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$142)
	.dw	0,(Sswi2c$swi2c_read_buf$143)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_read_buf$139)
	.dw	0,(Sswi2c$swi2c_read_buf$142)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$128)
	.dw	0,(Sswi2c$swi2c_read_buf$139)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$100)
	.dw	0,(Sswi2c$swi2c_read_buf$128)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$99)
	.dw	0,(Sswi2c$swi2c_read_buf$100)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_read_buf$75)
	.dw	0,(Sswi2c$swi2c_read_buf$99)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$74)
	.dw	0,(Sswi2c$swi2c_read_buf$75)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_read_buf$55)
	.dw	0,(Sswi2c$swi2c_read_buf$74)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$54)
	.dw	0,(Sswi2c$swi2c_read_buf$55)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$swi2c_read_buf$45)
	.dw	0,(Sswi2c$swi2c_read_buf$54)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$44)
	.dw	0,(Sswi2c$swi2c_read_buf$45)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$_delay_us$29)
	.dw	0,(Sswi2c$_delay_us$42)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$_delay_us$28)
	.dw	0,(Sswi2c$_delay_us$29)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sswi2c$_delay_us$27)
	.dw	0,(Sswi2c$_delay_us$28)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$_delay_us$26)
	.dw	0,(Sswi2c$_delay_us$27)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$_delay_us$25)
	.dw	0,(Sswi2c$_delay_us$26)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sswi2c$_delay_us$24)
	.dw	0,(Sswi2c$_delay_us$25)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$_delay_us$23)
	.dw	0,(Sswi2c$_delay_us$24)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sswi2c$_delay_us$21)
	.dw	0,(Sswi2c$_delay_us$23)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sswi2c$_delay_us$20)
	.dw	0,(Sswi2c$_delay_us$21)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sswi2c$_delay_us$19)
	.dw	0,(Sswi2c$_delay_us$20)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sswi2c$_delay_us$18)
	.dw	0,(Sswi2c$_delay_us$19)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sswi2c$_delay_us$17)
	.dw	0,(Sswi2c$_delay_us$18)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sswi2c$_delay_us$16)
	.dw	0,(Sswi2c$_delay_us$17)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sswi2c$_delay_us$15)
	.dw	0,(Sswi2c$_delay_us$16)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sswi2c$_delay_us$13)
	.dw	0,(Sswi2c$_delay_us$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sswi2c$_delay_cycl$1)
	.dw	0,(Sswi2c$_delay_cycl$11)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	12
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	16
	.uleb128	11
	.db	1
	.uleb128	0
	.uleb128	0
	.uleb128	17
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
	.uleb128	15
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
	.uleb128	13
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
	.uleb128	14
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
	.ascii "./src/swi2c.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.dw	0,113
	.ascii "_delay_cycl"
	.db	0
	.dw	0,(__delay_cycl)
	.dw	0,(XFswi2c$_delay_cycl$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+3016)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__ticks"
	.db	0
	.dw	0,113
	.uleb128	4
	.dw	0,(Sswi2c$_delay_cycl$4)
	.dw	0,(Sswi2c$_delay_cycl$6)
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	2
	.dw	0,264
	.ascii "_delay_us"
	.db	0
	.dw	0,(__delay_us)
	.dw	0,(XFswi2c$_delay_us$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+2828)
	.uleb128	6
	.dw	0,113
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	7
	.dw	0,(Sswi2c$_delay_us$14)
	.dw	0,(Sswi2c$_delay_us$31)
	.uleb128	8
	.dw	0,237
	.dw	0,(Sswi2c$_delay_us$32)
	.uleb128	9
	.dw	0,216
	.dw	0,(Sswi2c$_delay_us$33)
	.dw	0,(Sswi2c$_delay_us$38)
	.uleb128	4
	.dw	0,(Sswi2c$_delay_us$36)
	.dw	0,(Sswi2c$_delay_us$37)
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
	.dw	0,113
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
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	11
	.dw	0,683
	.ascii "swi2c_read_buf"
	.db	0
	.dw	0,(_swi2c_read_buf)
	.dw	0,(XG$swi2c_read_buf$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+2640)
	.dw	0,264
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "slv_addr"
	.db	0
	.dw	0,264
	.uleb128	3
	.db	2
	.db	145
	.sleb128	3
	.ascii "address"
	.db	0
	.dw	0,264
	.uleb128	12
	.db	2
	.dw	0,264
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "data"
	.db	0
	.dw	0,351
	.uleb128	3
	.db	2
	.db	145
	.sleb128	6
	.ascii "num"
	.db	0
	.dw	0,113
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$47)
	.dw	0,(Sswi2c$swi2c_read_buf$49)
	.uleb128	9
	.dw	0,414
	.dw	0,(Sswi2c$swi2c_read_buf$52)
	.dw	0,(Sswi2c$swi2c_read_buf$60)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$56)
	.dw	0,(Sswi2c$swi2c_read_buf$58)
	.uleb128	0
	.uleb128	9
	.dw	0,437
	.dw	0,(Sswi2c$swi2c_read_buf$63)
	.dw	0,(Sswi2c$swi2c_read_buf$69)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$65)
	.dw	0,(Sswi2c$swi2c_read_buf$67)
	.uleb128	0
	.uleb128	9
	.dw	0,460
	.dw	0,(Sswi2c$swi2c_read_buf$72)
	.dw	0,(Sswi2c$swi2c_read_buf$80)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$76)
	.dw	0,(Sswi2c$swi2c_read_buf$78)
	.uleb128	0
	.uleb128	9
	.dw	0,483
	.dw	0,(Sswi2c$swi2c_read_buf$83)
	.dw	0,(Sswi2c$swi2c_read_buf$89)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$85)
	.dw	0,(Sswi2c$swi2c_read_buf$87)
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$91)
	.dw	0,(Sswi2c$swi2c_read_buf$93)
	.uleb128	9
	.dw	0,515
	.dw	0,(Sswi2c$swi2c_read_buf$95)
	.dw	0,(Sswi2c$swi2c_read_buf$105)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$101)
	.dw	0,(Sswi2c$swi2c_read_buf$103)
	.uleb128	0
	.uleb128	9
	.dw	0,538
	.dw	0,(Sswi2c$swi2c_read_buf$108)
	.dw	0,(Sswi2c$swi2c_read_buf$114)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$110)
	.dw	0,(Sswi2c$swi2c_read_buf$112)
	.uleb128	0
	.uleb128	9
	.dw	0,627
	.dw	0,(Sswi2c$swi2c_read_buf$116)
	.dw	0,(Sswi2c$swi2c_read_buf$154)
	.uleb128	9
	.dw	0,592
	.dw	0,(Sswi2c$swi2c_read_buf$119)
	.dw	0,(Sswi2c$swi2c_read_buf$137)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$124)
	.dw	0,(Sswi2c$swi2c_read_buf$126)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$129)
	.dw	0,(Sswi2c$swi2c_read_buf$131)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$132)
	.dw	0,(Sswi2c$swi2c_read_buf$135)
	.uleb128	0
	.uleb128	8
	.dw	0,611
	.dw	0,(Sswi2c$swi2c_read_buf$140)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$144)
	.dw	0,(Sswi2c$swi2c_read_buf$146)
	.uleb128	0
	.uleb128	13
	.dw	0,(Sswi2c$swi2c_read_buf$147)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$151)
	.dw	0,(Sswi2c$swi2c_read_buf$153)
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_read_buf$157)
	.dw	0,(Sswi2c$swi2c_read_buf$159)
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "i"
	.db	0
	.dw	0,264
	.uleb128	10
	.db	1
	.db	83
	.ascii "bit"
	.db	0
	.dw	0,264
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "ack"
	.db	0
	.dw	0,264
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "mask"
	.db	0
	.dw	0,264
	.uleb128	0
	.uleb128	11
	.dw	0,981
	.ascii "swi2c_write_buf"
	.db	0
	.dw	0,(_swi2c_write_buf)
	.dw	0,(XG$swi2c_write_buf$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+2500)
	.dw	0,264
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "slv_addr"
	.db	0
	.dw	0,264
	.uleb128	3
	.db	2
	.db	145
	.sleb128	3
	.ascii "address"
	.db	0
	.dw	0,264
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "data"
	.db	0
	.dw	0,351
	.uleb128	3
	.db	2
	.db	145
	.sleb128	6
	.ascii "num"
	.db	0
	.dw	0,113
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$169)
	.dw	0,(Sswi2c$swi2c_write_buf$171)
	.uleb128	9
	.dw	0,811
	.dw	0,(Sswi2c$swi2c_write_buf$174)
	.dw	0,(Sswi2c$swi2c_write_buf$182)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$178)
	.dw	0,(Sswi2c$swi2c_write_buf$180)
	.uleb128	0
	.uleb128	9
	.dw	0,834
	.dw	0,(Sswi2c$swi2c_write_buf$185)
	.dw	0,(Sswi2c$swi2c_write_buf$191)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$187)
	.dw	0,(Sswi2c$swi2c_write_buf$189)
	.uleb128	0
	.uleb128	9
	.dw	0,857
	.dw	0,(Sswi2c$swi2c_write_buf$194)
	.dw	0,(Sswi2c$swi2c_write_buf$202)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$198)
	.dw	0,(Sswi2c$swi2c_write_buf$200)
	.uleb128	0
	.uleb128	9
	.dw	0,880
	.dw	0,(Sswi2c$swi2c_write_buf$205)
	.dw	0,(Sswi2c$swi2c_write_buf$211)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$207)
	.dw	0,(Sswi2c$swi2c_write_buf$209)
	.uleb128	0
	.uleb128	9
	.dw	0,936
	.dw	0,(Sswi2c$swi2c_write_buf$213)
	.dw	0,(Sswi2c$swi2c_write_buf$237)
	.uleb128	9
	.dw	0,916
	.dw	0,(Sswi2c$swi2c_write_buf$215)
	.dw	0,(Sswi2c$swi2c_write_buf$227)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$223)
	.dw	0,(Sswi2c$swi2c_write_buf$225)
	.uleb128	0
	.uleb128	7
	.dw	0,(Sswi2c$swi2c_write_buf$230)
	.dw	0,(Sswi2c$swi2c_write_buf$236)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$232)
	.dw	0,(Sswi2c$swi2c_write_buf$234)
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_write_buf$240)
	.dw	0,(Sswi2c$swi2c_write_buf$242)
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "i"
	.db	0
	.dw	0,264
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "ack"
	.db	0
	.dw	0,264
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "mask"
	.db	0
	.dw	0,264
	.uleb128	0
	.uleb128	11
	.dw	0,1103
	.ascii "swi2c_test_slave"
	.db	0
	.dw	0,(_swi2c_test_slave)
	.dw	0,(XG$swi2c_test_slave$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+2432)
	.dw	0,264
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "slvaddr"
	.db	0
	.dw	0,264
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_test_slave$253)
	.dw	0,(Sswi2c$swi2c_test_slave$255)
	.uleb128	9
	.dw	0,1068
	.dw	0,(Sswi2c$swi2c_test_slave$257)
	.dw	0,(Sswi2c$swi2c_test_slave$265)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_test_slave$261)
	.dw	0,(Sswi2c$swi2c_test_slave$263)
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_test_slave$268)
	.dw	0,(Sswi2c$swi2c_test_slave$270)
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "ack"
	.db	0
	.dw	0,264
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "mask"
	.db	0
	.dw	0,264
	.uleb128	0
	.uleb128	14
	.ascii "swi2c_init"
	.db	0
	.dw	0,(_swi2c_init)
	.dw	0,(XG$swi2c_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+2292)
	.uleb128	11
	.dw	0,1615
	.ascii "swi2c_readbit"
	.db	0
	.dw	0,(_swi2c_readbit)
	.dw	0,(XG$swi2c_readbit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1960)
	.dw	0,264
	.uleb128	15
	.dw	0,1292
	.uleb128	15
	.dw	0,1270
	.uleb128	15
	.dw	0,1256
	.uleb128	16
	.uleb128	8
	.dw	0,1233
	.dw	0,(Sswi2c$swi2c_readbit$302)
	.uleb128	9
	.dw	0,1212
	.dw	0,(Sswi2c$swi2c_readbit$303)
	.dw	0,(Sswi2c$swi2c_readbit$308)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$306)
	.dw	0,(Sswi2c$swi2c_readbit$307)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720012"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$321)
	.dw	0,(Sswi2c$swi2c_readbit$323)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$325)
	.dw	0,(Sswi2c$swi2c_readbit$327)
	.uleb128	15
	.dw	0,1438
	.uleb128	15
	.dw	0,1416
	.uleb128	15
	.dw	0,1402
	.uleb128	16
	.uleb128	8
	.dw	0,1379
	.dw	0,(Sswi2c$swi2c_readbit$328)
	.uleb128	9
	.dw	0,1358
	.dw	0,(Sswi2c$swi2c_readbit$329)
	.dw	0,(Sswi2c$swi2c_readbit$334)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$332)
	.dw	0,(Sswi2c$swi2c_readbit$333)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720014"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$340)
	.dw	0,(Sswi2c$swi2c_readbit$342)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$343)
	.dw	0,(Sswi2c$swi2c_readbit$345)
	.uleb128	15
	.dw	0,1584
	.uleb128	15
	.dw	0,1562
	.uleb128	15
	.dw	0,1548
	.uleb128	16
	.uleb128	8
	.dw	0,1525
	.dw	0,(Sswi2c$swi2c_readbit$353)
	.uleb128	9
	.dw	0,1504
	.dw	0,(Sswi2c$swi2c_readbit$354)
	.dw	0,(Sswi2c$swi2c_readbit$359)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_readbit$357)
	.dw	0,(Sswi2c$swi2c_readbit$358)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720016"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-2
	.ascii "timeout"
	.db	0
	.dw	0,113
	.uleb128	10
	.db	1
	.db	80
	.ascii "retval"
	.db	0
	.dw	0,264
	.uleb128	0
	.uleb128	11
	.dw	0,2101
	.ascii "swi2c_writebit"
	.db	0
	.dw	0,(_swi2c_writebit)
	.dw	0,(XG$swi2c_writebit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1604)
	.dw	0,264
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "bit"
	.db	0
	.dw	0,264
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$370)
	.dw	0,(Sswi2c$swi2c_writebit$376)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$377)
	.dw	0,(Sswi2c$swi2c_writebit$383)
	.uleb128	15
	.dw	0,1810
	.uleb128	15
	.dw	0,1788
	.uleb128	15
	.dw	0,1774
	.uleb128	16
	.uleb128	8
	.dw	0,1751
	.dw	0,(Sswi2c$swi2c_writebit$384)
	.uleb128	9
	.dw	0,1730
	.dw	0,(Sswi2c$swi2c_writebit$385)
	.dw	0,(Sswi2c$swi2c_writebit$390)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$388)
	.dw	0,(Sswi2c$swi2c_writebit$389)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720018"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$403)
	.dw	0,(Sswi2c$swi2c_writebit$405)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$407)
	.dw	0,(Sswi2c$swi2c_writebit$414)
	.uleb128	15
	.dw	0,1956
	.uleb128	15
	.dw	0,1934
	.uleb128	15
	.dw	0,1920
	.uleb128	16
	.uleb128	8
	.dw	0,1897
	.dw	0,(Sswi2c$swi2c_writebit$415)
	.uleb128	9
	.dw	0,1876
	.dw	0,(Sswi2c$swi2c_writebit$416)
	.dw	0,(Sswi2c$swi2c_writebit$421)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$419)
	.dw	0,(Sswi2c$swi2c_writebit$420)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720020"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	15
	.dw	0,2084
	.uleb128	15
	.dw	0,2062
	.uleb128	15
	.dw	0,2048
	.uleb128	16
	.uleb128	8
	.dw	0,2025
	.dw	0,(Sswi2c$swi2c_writebit$427)
	.uleb128	9
	.dw	0,2004
	.dw	0,(Sswi2c$swi2c_writebit$428)
	.dw	0,(Sswi2c$swi2c_writebit$433)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_writebit$431)
	.dw	0,(Sswi2c$swi2c_writebit$432)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720022"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-2
	.ascii "timeout"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	11
	.dw	0,2702
	.ascii "swi2c_RESTART"
	.db	0
	.dw	0,(_swi2c_RESTART)
	.dw	0,(XG$swi2c_RESTART$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1080)
	.dw	0,264
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$464)
	.dw	0,(Sswi2c$swi2c_RESTART$466)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$468)
	.dw	0,(Sswi2c$swi2c_RESTART$475)
	.uleb128	15
	.dw	0,2283
	.uleb128	15
	.dw	0,2261
	.uleb128	15
	.dw	0,2247
	.uleb128	16
	.uleb128	8
	.dw	0,2224
	.dw	0,(Sswi2c$swi2c_RESTART$476)
	.uleb128	9
	.dw	0,2203
	.dw	0,(Sswi2c$swi2c_RESTART$477)
	.dw	0,(Sswi2c$swi2c_RESTART$482)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$480)
	.dw	0,(Sswi2c$swi2c_RESTART$481)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720024"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$495)
	.dw	0,(Sswi2c$swi2c_RESTART$497)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$499)
	.dw	0,(Sswi2c$swi2c_RESTART$501)
	.uleb128	15
	.dw	0,2429
	.uleb128	15
	.dw	0,2407
	.uleb128	15
	.dw	0,2393
	.uleb128	16
	.uleb128	8
	.dw	0,2370
	.dw	0,(Sswi2c$swi2c_RESTART$502)
	.uleb128	9
	.dw	0,2349
	.dw	0,(Sswi2c$swi2c_RESTART$503)
	.dw	0,(Sswi2c$swi2c_RESTART$508)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$506)
	.dw	0,(Sswi2c$swi2c_RESTART$507)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720026"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	15
	.dw	0,2557
	.uleb128	15
	.dw	0,2535
	.uleb128	15
	.dw	0,2521
	.uleb128	16
	.uleb128	8
	.dw	0,2498
	.dw	0,(Sswi2c$swi2c_RESTART$514)
	.uleb128	9
	.dw	0,2477
	.dw	0,(Sswi2c$swi2c_RESTART$515)
	.dw	0,(Sswi2c$swi2c_RESTART$520)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$518)
	.dw	0,(Sswi2c$swi2c_RESTART$519)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720028"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	15
	.dw	0,2685
	.uleb128	15
	.dw	0,2663
	.uleb128	15
	.dw	0,2649
	.uleb128	16
	.uleb128	8
	.dw	0,2626
	.dw	0,(Sswi2c$swi2c_RESTART$526)
	.uleb128	9
	.dw	0,2605
	.dw	0,(Sswi2c$swi2c_RESTART$527)
	.dw	0,(Sswi2c$swi2c_RESTART$532)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_RESTART$530)
	.dw	0,(Sswi2c$swi2c_RESTART$531)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720030"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-2
	.ascii "timeout"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	11
	.dw	0,2998
	.ascii "swi2c_START"
	.db	0
	.dw	0,(_swi2c_START)
	.dw	0,(XG$swi2c_START$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+772)
	.dw	0,264
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_START$549)
	.dw	0,(Sswi2c$swi2c_START$561)
	.uleb128	15
	.dw	0,2873
	.uleb128	15
	.dw	0,2851
	.uleb128	15
	.dw	0,2837
	.uleb128	16
	.uleb128	8
	.dw	0,2814
	.dw	0,(Sswi2c$swi2c_START$567)
	.uleb128	9
	.dw	0,2793
	.dw	0,(Sswi2c$swi2c_START$568)
	.dw	0,(Sswi2c$swi2c_START$573)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_START$571)
	.dw	0,(Sswi2c$swi2c_START$572)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720032"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	16
	.uleb128	15
	.dw	0,2975
	.uleb128	15
	.dw	0,2961
	.uleb128	16
	.uleb128	8
	.dw	0,2938
	.dw	0,(Sswi2c$swi2c_START$579)
	.uleb128	9
	.dw	0,2917
	.dw	0,(Sswi2c$swi2c_START$580)
	.dw	0,(Sswi2c$swi2c_START$585)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_START$583)
	.dw	0,(Sswi2c$swi2c_START$584)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720034"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.dw	0,3341
	.ascii "swi2c_STOP"
	.db	0
	.dw	0,(_swi2c_STOP)
	.dw	0,(XG$swi2c_STOP$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+512)
	.dw	0,264
	.uleb128	15
	.dw	0,3159
	.uleb128	15
	.dw	0,3137
	.uleb128	15
	.dw	0,3123
	.uleb128	16
	.uleb128	8
	.dw	0,3100
	.dw	0,(Sswi2c$swi2c_STOP$600)
	.uleb128	9
	.dw	0,3079
	.dw	0,(Sswi2c$swi2c_STOP$601)
	.dw	0,(Sswi2c$swi2c_STOP$606)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$604)
	.dw	0,(Sswi2c$swi2c_STOP$605)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720036"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$619)
	.dw	0,(Sswi2c$swi2c_STOP$621)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$623)
	.dw	0,(Sswi2c$swi2c_STOP$625)
	.uleb128	15
	.dw	0,3305
	.uleb128	15
	.dw	0,3283
	.uleb128	15
	.dw	0,3269
	.uleb128	16
	.uleb128	8
	.dw	0,3246
	.dw	0,(Sswi2c$swi2c_STOP$626)
	.uleb128	9
	.dw	0,3225
	.dw	0,(Sswi2c$swi2c_STOP$627)
	.dw	0,(Sswi2c$swi2c_STOP$632)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_STOP$630)
	.dw	0,(Sswi2c$swi2c_STOP$631)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720038"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "timeout"
	.db	0
	.dw	0,113
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-1
	.ascii "retval"
	.db	0
	.dw	0,264
	.uleb128	0
	.uleb128	17
	.ascii "swi2c_recover"
	.db	0
	.dw	0,(_swi2c_recover)
	.dw	0,(XG$swi2c_recover$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,264
	.uleb128	15
	.dw	0,3501
	.uleb128	15
	.dw	0,3479
	.uleb128	15
	.dw	0,3465
	.uleb128	16
	.uleb128	8
	.dw	0,3442
	.dw	0,(Sswi2c$swi2c_recover$657)
	.uleb128	9
	.dw	0,3421
	.dw	0,(Sswi2c$swi2c_recover$658)
	.dw	0,(Sswi2c$swi2c_recover$663)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_recover$661)
	.dw	0,(Sswi2c$swi2c_recover$662)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720040"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_recover$673)
	.dw	0,(Sswi2c$swi2c_recover$675)
	.uleb128	9
	.dw	0,3817
	.dw	0,(Sswi2c$swi2c_recover$734)
	.dw	0,(Sswi2c$swi2c_recover$736)
	.uleb128	7
	.dw	0,(Sswi2c$swi2c_recover$682)
	.dw	0,(Sswi2c$swi2c_recover$732)
	.uleb128	15
	.dw	0,3660
	.uleb128	15
	.dw	0,3638
	.uleb128	15
	.dw	0,3624
	.uleb128	16
	.uleb128	8
	.dw	0,3601
	.dw	0,(Sswi2c$swi2c_recover$688)
	.uleb128	9
	.dw	0,3580
	.dw	0,(Sswi2c$swi2c_recover$689)
	.dw	0,(Sswi2c$swi2c_recover$694)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_recover$692)
	.dw	0,(Sswi2c$swi2c_recover$693)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__3276800042"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_recover$708)
	.dw	0,(Sswi2c$swi2c_recover$710)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_recover$713)
	.dw	0,(Sswi2c$swi2c_recover$715)
	.uleb128	15
	.dw	0,3806
	.uleb128	15
	.dw	0,3784
	.uleb128	15
	.dw	0,3770
	.uleb128	16
	.uleb128	8
	.dw	0,3747
	.dw	0,(Sswi2c$swi2c_recover$716)
	.uleb128	9
	.dw	0,3726
	.dw	0,(Sswi2c$swi2c_recover$717)
	.dw	0,(Sswi2c$swi2c_recover$722)
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_recover$720)
	.dw	0,(Sswi2c$swi2c_recover$721)
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
	.dw	0,113
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720010"
	.db	0
	.dw	0,113
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__us"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "__3276800044"
	.db	0
	.dw	0,157
	.uleb128	0
	.uleb128	4
	.dw	0,(Sswi2c$swi2c_recover$728)
	.dw	0,(Sswi2c$swi2c_recover$731)
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "timeout"
	.db	0
	.dw	0,113
	.uleb128	10
	.db	2
	.db	145
	.sleb128	0
	.ascii "i"
	.db	0
	.dw	0,264
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
	.dw	0,281
	.ascii "swi2c_read_buf"
	.db	0
	.dw	0,683
	.ascii "swi2c_write_buf"
	.db	0
	.dw	0,981
	.ascii "swi2c_test_slave"
	.db	0
	.dw	0,1103
	.ascii "swi2c_init"
	.db	0
	.dw	0,1128
	.ascii "swi2c_readbit"
	.db	0
	.dw	0,1615
	.ascii "swi2c_writebit"
	.db	0
	.dw	0,2101
	.ascii "swi2c_RESTART"
	.db	0
	.dw	0,2702
	.ascii "swi2c_START"
	.db	0
	.dw	0,2998
	.ascii "swi2c_STOP"
	.db	0
	.dw	0,3341
	.ascii "swi2c_recover"
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
	.dw	0,306
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sswi2c$swi2c_recover$644)	;initial loc
	.dw	0,Sswi2c$swi2c_recover$740-Sswi2c$swi2c_recover$644
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$644)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$645)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$648)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$649)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$650)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$651)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$653)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$654)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$655)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$656)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$665)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$666)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$667)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$668)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$669)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$670)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$671)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$672)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$677)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$678)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$679)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$680)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$684)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$685)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$686)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$687)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$696)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$697)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$698)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$699)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$702)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$703)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$704)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$705)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$706)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$707)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$724)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$725)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$726)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$727)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$730)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_recover$738)
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
	.dw	0,159
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sswi2c$swi2c_STOP$591)	;initial loc
	.dw	0,Sswi2c$swi2c_STOP$642-Sswi2c$swi2c_STOP$591
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$591)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$592)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$596)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$597)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$598)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$599)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$608)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$609)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$610)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$611)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$613)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$614)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$615)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$616)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$617)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$618)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$634)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$635)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$636)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$637)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_STOP$640)
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
	.dw	0,187
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sswi2c$swi2c_START$539)	;initial loc
	.dw	0,Sswi2c$swi2c_START$589-Sswi2c$swi2c_START$539
	.db	1
	.dw	0,(Sswi2c$swi2c_START$539)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_START$541)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_START$542)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_START$543)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_START$544)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_START$545)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_START$546)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_START$547)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_START$548)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_START$551)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_START$552)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_START$553)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_START$554)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_START$556)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_START$557)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_START$558)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_START$559)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_START$563)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_START$564)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_START$565)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_START$566)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_START$575)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_START$576)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_START$577)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_START$578)
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
	.dw	0,313
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sswi2c$swi2c_RESTART$440)	;initial loc
	.dw	0,Sswi2c$swi2c_RESTART$537-Sswi2c$swi2c_RESTART$440
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$440)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$441)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$444)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$445)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$446)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$447)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$448)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$449)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$451)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$452)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$453)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$454)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$455)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$456)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$458)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$459)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$460)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$461)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$462)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$463)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$470)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$471)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$472)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$473)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$484)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$485)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$486)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$487)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$489)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$490)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$491)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$492)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$493)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$494)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$510)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$511)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$512)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$513)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$522)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$523)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$524)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$525)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_RESTART$535)
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
	.dw	0,215
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sswi2c$swi2c_writebit$366)	;initial loc
	.dw	0,Sswi2c$swi2c_writebit$438-Sswi2c$swi2c_writebit$366
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$366)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$367)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$372)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$373)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$374)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$375)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$379)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$380)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$381)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$382)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$392)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$393)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$394)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$395)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$397)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$398)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$399)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$400)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$401)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$402)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$409)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$410)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$411)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$412)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$423)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$424)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$425)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$426)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_writebit$436)
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
	.dw	0,201
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sswi2c$swi2c_readbit$294)	;initial loc
	.dw	0,Sswi2c$swi2c_readbit$364-Sswi2c$swi2c_readbit$294
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$294)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$295)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$298)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$299)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$300)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$301)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$310)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$311)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$312)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$313)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$315)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$316)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$317)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$318)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$319)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$320)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$336)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$337)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$338)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$339)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$347)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$348)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$349)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$350)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$351)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$352)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_readbit$362)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
Ldebug_CIE6_start:
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
Ldebug_CIE6_end:
	.dw	0,89
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Sswi2c$swi2c_init$277)	;initial loc
	.dw	0,Sswi2c$swi2c_init$292-Sswi2c$swi2c_init$277
	.db	1
	.dw	0,(Sswi2c$swi2c_init$277)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_init$279)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_init$280)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_init$281)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_init$282)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_init$283)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_init$285)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_init$286)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_init$287)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_init$288)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_init$289)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
Ldebug_CIE7_start:
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
Ldebug_CIE7_end:
	.dw	0,47
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Sswi2c$swi2c_test_slave$249)	;initial loc
	.dw	0,Sswi2c$swi2c_test_slave$275-Sswi2c$swi2c_test_slave$249
	.db	1
	.dw	0,(Sswi2c$swi2c_test_slave$249)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_test_slave$250)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_test_slave$259)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_test_slave$260)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$swi2c_test_slave$273)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
Ldebug_CIE8_start:
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
Ldebug_CIE8_end:
	.dw	0,89
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Sswi2c$swi2c_write_buf$166)	;initial loc
	.dw	0,Sswi2c$swi2c_write_buf$247-Sswi2c$swi2c_write_buf$166
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$166)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$167)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$176)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$177)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$196)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$197)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$219)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$220)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$221)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$222)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$swi2c_write_buf$245)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
Ldebug_CIE9_start:
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
Ldebug_CIE9_end:
	.dw	0,117
	.dw	0,(Ldebug_CIE9_start-4)
	.dw	0,(Sswi2c$swi2c_read_buf$44)	;initial loc
	.dw	0,Sswi2c$swi2c_read_buf$164-Sswi2c$swi2c_read_buf$44
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$44)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$45)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$54)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$55)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$74)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$75)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$99)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$100)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$128)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$139)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$142)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$143)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$149)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$150)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$swi2c_read_buf$162)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
Ldebug_CIE10_start:
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
Ldebug_CIE10_end:
	.dw	0,117
	.dw	0,(Ldebug_CIE10_start-4)
	.dw	0,(Sswi2c$_delay_us$13)	;initial loc
	.dw	0,Sswi2c$_delay_us$42-Sswi2c$_delay_us$13
	.db	1
	.dw	0,(Sswi2c$_delay_us$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$_delay_us$15)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$_delay_us$16)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$_delay_us$17)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sswi2c$_delay_us$18)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$_delay_us$19)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sswi2c$_delay_us$20)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sswi2c$_delay_us$21)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sswi2c$_delay_us$23)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sswi2c$_delay_us$24)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sswi2c$_delay_us$25)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sswi2c$_delay_us$26)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sswi2c$_delay_us$27)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sswi2c$_delay_us$28)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sswi2c$_delay_us$29)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
Ldebug_CIE11_start:
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
Ldebug_CIE11_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE11_start-4)
	.dw	0,(Sswi2c$_delay_cycl$1)	;initial loc
	.dw	0,Sswi2c$_delay_cycl$11-Sswi2c$_delay_cycl$1
	.db	1
	.dw	0,(Sswi2c$_delay_cycl$1)
	.db	14
	.uleb128	2
