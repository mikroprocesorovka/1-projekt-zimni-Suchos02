                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module swi2c
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_ReadInputPin
                                     12 	.globl _GPIO_WriteLow
                                     13 	.globl _GPIO_WriteHigh
                                     14 	.globl _GPIO_Init
                                     15 	.globl _swi2c_read_buf
                                     16 	.globl _swi2c_write_buf
                                     17 	.globl _swi2c_test_slave
                                     18 	.globl _swi2c_init
                                     19 	.globl _swi2c_readbit
                                     20 	.globl _swi2c_writebit
                                     21 	.globl _swi2c_RESTART
                                     22 	.globl _swi2c_START
                                     23 	.globl _swi2c_STOP
                                     24 	.globl _swi2c_recover
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DABS (ABS)
                                     37 
                                     38 ; default segment ordering for linker
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area CONST
                                     43 	.area INITIALIZER
                                     44 	.area CODE
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; global & static initialisations
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area GSINIT
                                     53 ;--------------------------------------------------------
                                     54 ; Home
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area HOME
                                     58 ;--------------------------------------------------------
                                     59 ; code
                                     60 ;--------------------------------------------------------
                                     61 	.area CODE
                           000000    62 	Sswi2c$_delay_cycl$0 ==.
                                     63 ;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
                                     64 ; genLabel
                                     65 ;	-----------------------------------------
                                     66 ;	 function _delay_cycl
                                     67 ;	-----------------------------------------
                                     68 ;	Register assignment is optimal.
                                     69 ;	Stack space usage: 0 bytes.
      008E07                         70 __delay_cycl:
                           000000    71 	Sswi2c$_delay_cycl$1 ==.
                           000000    72 	Sswi2c$_delay_cycl$2 ==.
                                     73 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                     74 ;	genInline
      008E07 9D               [ 1]   75 	nop
      008E08 9D               [ 1]   76 	nop
                           000002    77 	Sswi2c$_delay_cycl$3 ==.
                                     78 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                     79 ; genAssign
      008E09 1E 03            [ 2]   80 	ldw	x, (0x03, sp)
                                     81 ; genLabel
      008E0B                         82 00101$:
                           000004    83 	Sswi2c$_delay_cycl$4 ==.
                           000004    84 	Sswi2c$_delay_cycl$5 ==.
                                     85 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                     86 ; genMinus
      008E0B 5A               [ 2]   87 	decw	x
                           000005    88 	Sswi2c$_delay_cycl$6 ==.
                           000005    89 	Sswi2c$_delay_cycl$7 ==.
                                     90 ;	inc/delay.h: 28: } while ( __ticks );
                                     91 ; genIfx
      008E0C 5D               [ 2]   92 	tnzw	x
      008E0D 27 03            [ 1]   93 	jreq	00117$
      008E0F CC 8E 0B         [ 2]   94 	jp	00101$
      008E12                         95 00117$:
                           00000B    96 	Sswi2c$_delay_cycl$8 ==.
                                     97 ;	inc/delay.h: 29: __asm__("nop\n");
                                     98 ;	genInline
      008E12 9D               [ 1]   99 	nop
                                    100 ; genLabel
      008E13                        101 00104$:
                           00000C   102 	Sswi2c$_delay_cycl$9 ==.
                                    103 ;	inc/delay.h: 39: }
                                    104 ; genEndFunction
                           00000C   105 	Sswi2c$_delay_cycl$10 ==.
                           00000C   106 	XFswi2c$_delay_cycl$0$0 ==.
      008E13 81               [ 4]  107 	ret
                           00000D   108 	Sswi2c$_delay_cycl$11 ==.
                           00000D   109 	Sswi2c$_delay_us$12 ==.
                                    110 ;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
                                    111 ; genLabel
                                    112 ;	-----------------------------------------
                                    113 ;	 function _delay_us
                                    114 ;	-----------------------------------------
                                    115 ;	Register assignment might be sub-optimal.
                                    116 ;	Stack space usage: 0 bytes.
      008E14                        117 __delay_us:
                           00000D   118 	Sswi2c$_delay_us$13 ==.
                           00000D   119 	Sswi2c$_delay_us$14 ==.
                                    120 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    121 ; genCast
                                    122 ; genAssign
      008E14 16 03            [ 2]  123 	ldw	y, (0x03, sp)
      008E16 5F               [ 1]  124 	clrw	x
                                    125 ; genIPush
      008E17 90 89            [ 2]  126 	pushw	y
                           000012   127 	Sswi2c$_delay_us$15 ==.
      008E19 89               [ 2]  128 	pushw	x
                           000013   129 	Sswi2c$_delay_us$16 ==.
                                    130 ; genIPush
      008E1A 4B 00            [ 1]  131 	push	#0x00
                           000015   132 	Sswi2c$_delay_us$17 ==.
      008E1C 4B 24            [ 1]  133 	push	#0x24
                           000017   134 	Sswi2c$_delay_us$18 ==.
      008E1E 4B F4            [ 1]  135 	push	#0xf4
                           000019   136 	Sswi2c$_delay_us$19 ==.
      008E20 4B 00            [ 1]  137 	push	#0x00
                           00001B   138 	Sswi2c$_delay_us$20 ==.
                                    139 ; genCall
      008E22 CD A6 1C         [ 4]  140 	call	__mullong
      008E25 5B 08            [ 2]  141 	addw	sp, #8
                           000020   142 	Sswi2c$_delay_us$21 ==.
                           000020   143 	Sswi2c$_delay_us$22 ==.
                                    144 ; genCast
                                    145 ; genAssign
                                    146 ; genIPush
      008E27 4B 40            [ 1]  147 	push	#0x40
                           000022   148 	Sswi2c$_delay_us$23 ==.
      008E29 4B 42            [ 1]  149 	push	#0x42
                           000024   150 	Sswi2c$_delay_us$24 ==.
      008E2B 4B 0F            [ 1]  151 	push	#0x0f
                           000026   152 	Sswi2c$_delay_us$25 ==.
      008E2D 4B 00            [ 1]  153 	push	#0x00
                           000028   154 	Sswi2c$_delay_us$26 ==.
                                    155 ; genIPush
      008E2F 89               [ 2]  156 	pushw	x
                           000029   157 	Sswi2c$_delay_us$27 ==.
      008E30 90 89            [ 2]  158 	pushw	y
                           00002B   159 	Sswi2c$_delay_us$28 ==.
                                    160 ; genCall
      008E32 CD A5 C2         [ 4]  161 	call	__divulong
      008E35 5B 08            [ 2]  162 	addw	sp, #8
                           000030   163 	Sswi2c$_delay_us$29 ==.
                           000030   164 	Sswi2c$_delay_us$30 ==.
                                    165 ; genRightShiftLiteral
      008E37 90 54            [ 2]  166 	srlw	y
      008E39 56               [ 2]  167 	rrcw	x
      008E3A 90 54            [ 2]  168 	srlw	y
      008E3C 56               [ 2]  169 	rrcw	x
      008E3D 90 54            [ 2]  170 	srlw	y
      008E3F 56               [ 2]  171 	rrcw	x
                                    172 ; genCast
                                    173 ; genAssign
                           000039   174 	Sswi2c$_delay_us$31 ==.
                                    175 ; genPlus
      008E40 5C               [ 1]  176 	incw	x
                                    177 ; genAssign
                                    178 ; genAssign
                           00003A   179 	Sswi2c$_delay_us$32 ==.
                                    180 ; genAssign
                           00003A   181 	Sswi2c$_delay_us$33 ==.
                                    182 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    183 ;	genInline
      008E41 9D               [ 1]  184 	nop
      008E42 9D               [ 1]  185 	nop
                           00003C   186 	Sswi2c$_delay_us$34 ==.
                           00003C   187 	Sswi2c$_delay_us$35 ==.
                                    188 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    189 ; genAssign
                                    190 ; genLabel
      008E43                        191 00101$:
                           00003C   192 	Sswi2c$_delay_us$36 ==.
                                    193 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    194 ; genMinus
      008E43 5A               [ 2]  195 	decw	x
                           00003D   196 	Sswi2c$_delay_us$37 ==.
                                    197 ;	inc/delay.h: 28: } while ( __ticks );
                                    198 ; genIfx
      008E44 5D               [ 2]  199 	tnzw	x
      008E45 27 03            [ 1]  200 	jreq	00118$
      008E47 CC 8E 43         [ 2]  201 	jp	00101$
      008E4A                        202 00118$:
                                    203 ;	inc/delay.h: 29: __asm__("nop\n");
                                    204 ;	genInline
      008E4A 9D               [ 1]  205 	nop
                           000044   206 	Sswi2c$_delay_us$38 ==.
                           000044   207 	Sswi2c$_delay_us$39 ==.
                                    208 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    209 ; genLabel
      008E4B                        210 00105$:
                           000044   211 	Sswi2c$_delay_us$40 ==.
                                    212 ;	inc/delay.h: 43: }
                                    213 ; genEndFunction
                           000044   214 	Sswi2c$_delay_us$41 ==.
                           000044   215 	XFswi2c$_delay_us$0$0 ==.
      008E4B 81               [ 4]  216 	ret
                           000045   217 	Sswi2c$_delay_us$42 ==.
                           000045   218 	Sswi2c$swi2c_read_buf$43 ==.
                                    219 ;	./src/swi2c.c: 11: uint8_t swi2c_read_buf(uint8_t slv_addr, uint8_t address, uint8_t * data,
                                    220 ; genLabel
                                    221 ;	-----------------------------------------
                                    222 ;	 function swi2c_read_buf
                                    223 ;	-----------------------------------------
                                    224 ;	Register assignment might be sub-optimal.
                                    225 ;	Stack space usage: 3 bytes.
      008E4C                        226 _swi2c_read_buf:
                           000045   227 	Sswi2c$swi2c_read_buf$44 ==.
      008E4C 52 03            [ 2]  228 	sub	sp, #3
                           000047   229 	Sswi2c$swi2c_read_buf$45 ==.
                           000047   230 	Sswi2c$swi2c_read_buf$46 ==.
                                    231 ;	./src/swi2c.c: 19: if (swi2c_START()) {
                                    232 ; genCall
      008E4E CD 93 52         [ 4]  233 	call	_swi2c_START
                                    234 ; genIfx
      008E51 4D               [ 1]  235 	tnz	a
      008E52 26 03            [ 1]  236 	jrne	00291$
      008E54 CC 8E 5C         [ 2]  237 	jp	00102$
      008E57                        238 00291$:
                           000050   239 	Sswi2c$swi2c_read_buf$47 ==.
                           000050   240 	Sswi2c$swi2c_read_buf$48 ==.
                                    241 ;	./src/swi2c.c: 20: return 0xaa;
                                    242 ; genReturn
      008E57 A6 AA            [ 1]  243 	ld	a, #0xaa
      008E59 CC 8F D9         [ 2]  244 	jp	00154$
                           000055   245 	Sswi2c$swi2c_read_buf$49 ==.
                                    246 ; genLabel
      008E5C                        247 00102$:
                           000055   248 	Sswi2c$swi2c_read_buf$50 ==.
                                    249 ;	./src/swi2c.c: 23: mask = 1 << 7;
                                    250 ; genAssign
      008E5C A6 80            [ 1]  251 	ld	a, #0x80
      008E5E 6B 03            [ 1]  252 	ld	(0x03, sp), a
                           000059   253 	Sswi2c$swi2c_read_buf$51 ==.
                                    254 ;	./src/swi2c.c: 24: while (mask) {
                                    255 ; genLabel
      008E60                        256 00105$:
                                    257 ; genIfx
      008E60 0D 03            [ 1]  258 	tnz	(0x03, sp)
      008E62 26 03            [ 1]  259 	jrne	00292$
      008E64 CC 8E 81         [ 2]  260 	jp	00107$
      008E67                        261 00292$:
                           000060   262 	Sswi2c$swi2c_read_buf$52 ==.
                           000060   263 	Sswi2c$swi2c_read_buf$53 ==.
                                    264 ;	./src/swi2c.c: 25: if (swi2c_writebit(slv_addr & mask)) {
                                    265 ; genAnd
      008E67 7B 06            [ 1]  266 	ld	a, (0x06, sp)
      008E69 14 03            [ 1]  267 	and	a, (0x03, sp)
                                    268 ; genIPush
      008E6B 88               [ 1]  269 	push	a
                           000065   270 	Sswi2c$swi2c_read_buf$54 ==.
                                    271 ; genCall
      008E6C CD 91 DF         [ 4]  272 	call	_swi2c_writebit
      008E6F 5B 01            [ 2]  273 	addw	sp, #1
                           00006A   274 	Sswi2c$swi2c_read_buf$55 ==.
                                    275 ; genIfx
      008E71 4D               [ 1]  276 	tnz	a
      008E72 26 03            [ 1]  277 	jrne	00293$
      008E74 CC 8E 7C         [ 2]  278 	jp	00104$
      008E77                        279 00293$:
                           000070   280 	Sswi2c$swi2c_read_buf$56 ==.
                           000070   281 	Sswi2c$swi2c_read_buf$57 ==.
                                    282 ;	./src/swi2c.c: 26: return 0xff;
                                    283 ; genReturn
      008E77 A6 FF            [ 1]  284 	ld	a, #0xff
      008E79 CC 8F D9         [ 2]  285 	jp	00154$
                           000075   286 	Sswi2c$swi2c_read_buf$58 ==.
                                    287 ; genLabel
      008E7C                        288 00104$:
                           000075   289 	Sswi2c$swi2c_read_buf$59 ==.
                                    290 ;	./src/swi2c.c: 28: mask = mask >> 1;
                                    291 ; genRightShiftLiteral
      008E7C 04 03            [ 1]  292 	srl	(0x03, sp)
                           000077   293 	Sswi2c$swi2c_read_buf$60 ==.
                                    294 ; genGoto
      008E7E CC 8E 60         [ 2]  295 	jp	00105$
                                    296 ; genLabel
      008E81                        297 00107$:
                           00007A   298 	Sswi2c$swi2c_read_buf$61 ==.
                                    299 ;	./src/swi2c.c: 30: ack = swi2c_readbit();
                                    300 ; genCall
      008E81 CD 91 49         [ 4]  301 	call	_swi2c_readbit
                                    302 ; genAssign
      008E84 6B 03            [ 1]  303 	ld	(0x03, sp), a
                           00007F   304 	Sswi2c$swi2c_read_buf$62 ==.
                                    305 ;	./src/swi2c.c: 31: if (ack) {
                                    306 ; genIfx
      008E86 0D 03            [ 1]  307 	tnz	(0x03, sp)
      008E88 26 03            [ 1]  308 	jrne	00294$
      008E8A CC 8E A0         [ 2]  309 	jp	00111$
      008E8D                        310 00294$:
                           000086   311 	Sswi2c$swi2c_read_buf$63 ==.
                           000086   312 	Sswi2c$swi2c_read_buf$64 ==.
                                    313 ;	./src/swi2c.c: 32: if (swi2c_STOP()) {
                                    314 ; genCall
      008E8D CD 93 C1         [ 4]  315 	call	_swi2c_STOP
                                    316 ; genIfx
      008E90 4D               [ 1]  317 	tnz	a
      008E91 26 03            [ 1]  318 	jrne	00295$
      008E93 CC 8E 9B         [ 2]  319 	jp	00109$
      008E96                        320 00295$:
                           00008F   321 	Sswi2c$swi2c_read_buf$65 ==.
                           00008F   322 	Sswi2c$swi2c_read_buf$66 ==.
                                    323 ;	./src/swi2c.c: 33: return 0xff;
                                    324 ; genReturn
      008E96 A6 FF            [ 1]  325 	ld	a, #0xff
      008E98 CC 8F D9         [ 2]  326 	jp	00154$
                           000094   327 	Sswi2c$swi2c_read_buf$67 ==.
                                    328 ; genLabel
      008E9B                        329 00109$:
                           000094   330 	Sswi2c$swi2c_read_buf$68 ==.
                                    331 ;	./src/swi2c.c: 35: return ack;
                                    332 ; genReturn
      008E9B 7B 03            [ 1]  333 	ld	a, (0x03, sp)
      008E9D CC 8F D9         [ 2]  334 	jp	00154$
                           000099   335 	Sswi2c$swi2c_read_buf$69 ==.
                                    336 ; genLabel
      008EA0                        337 00111$:
                           000099   338 	Sswi2c$swi2c_read_buf$70 ==.
                                    339 ;	./src/swi2c.c: 38: mask = 1 << 7;
                                    340 ; genAssign
      008EA0 A6 80            [ 1]  341 	ld	a, #0x80
      008EA2 6B 03            [ 1]  342 	ld	(0x03, sp), a
                           00009D   343 	Sswi2c$swi2c_read_buf$71 ==.
                                    344 ;	./src/swi2c.c: 39: while (mask) {
                                    345 ; genLabel
      008EA4                        346 00114$:
                                    347 ; genIfx
      008EA4 0D 03            [ 1]  348 	tnz	(0x03, sp)
      008EA6 26 03            [ 1]  349 	jrne	00296$
      008EA8 CC 8E C5         [ 2]  350 	jp	00116$
      008EAB                        351 00296$:
                           0000A4   352 	Sswi2c$swi2c_read_buf$72 ==.
                           0000A4   353 	Sswi2c$swi2c_read_buf$73 ==.
                                    354 ;	./src/swi2c.c: 40: if (swi2c_writebit(address & mask)) {
                                    355 ; genAnd
      008EAB 7B 07            [ 1]  356 	ld	a, (0x07, sp)
      008EAD 14 03            [ 1]  357 	and	a, (0x03, sp)
                                    358 ; genIPush
      008EAF 88               [ 1]  359 	push	a
                           0000A9   360 	Sswi2c$swi2c_read_buf$74 ==.
                                    361 ; genCall
      008EB0 CD 91 DF         [ 4]  362 	call	_swi2c_writebit
      008EB3 5B 01            [ 2]  363 	addw	sp, #1
                           0000AE   364 	Sswi2c$swi2c_read_buf$75 ==.
                                    365 ; genIfx
      008EB5 4D               [ 1]  366 	tnz	a
      008EB6 26 03            [ 1]  367 	jrne	00297$
      008EB8 CC 8E C0         [ 2]  368 	jp	00113$
      008EBB                        369 00297$:
                           0000B4   370 	Sswi2c$swi2c_read_buf$76 ==.
                           0000B4   371 	Sswi2c$swi2c_read_buf$77 ==.
                                    372 ;	./src/swi2c.c: 41: return 0xff;
                                    373 ; genReturn
      008EBB A6 FF            [ 1]  374 	ld	a, #0xff
      008EBD CC 8F D9         [ 2]  375 	jp	00154$
                           0000B9   376 	Sswi2c$swi2c_read_buf$78 ==.
                                    377 ; genLabel
      008EC0                        378 00113$:
                           0000B9   379 	Sswi2c$swi2c_read_buf$79 ==.
                                    380 ;	./src/swi2c.c: 43: mask = mask >> 1;
                                    381 ; genRightShiftLiteral
      008EC0 04 03            [ 1]  382 	srl	(0x03, sp)
                           0000BB   383 	Sswi2c$swi2c_read_buf$80 ==.
                                    384 ; genGoto
      008EC2 CC 8E A4         [ 2]  385 	jp	00114$
                                    386 ; genLabel
      008EC5                        387 00116$:
                           0000BE   388 	Sswi2c$swi2c_read_buf$81 ==.
                                    389 ;	./src/swi2c.c: 45: ack = swi2c_readbit();
                                    390 ; genCall
      008EC5 CD 91 49         [ 4]  391 	call	_swi2c_readbit
                                    392 ; genAssign
      008EC8 6B 03            [ 1]  393 	ld	(0x03, sp), a
                           0000C3   394 	Sswi2c$swi2c_read_buf$82 ==.
                                    395 ;	./src/swi2c.c: 46: if (ack) {
                                    396 ; genIfx
      008ECA 0D 03            [ 1]  397 	tnz	(0x03, sp)
      008ECC 26 03            [ 1]  398 	jrne	00298$
      008ECE CC 8E E4         [ 2]  399 	jp	00120$
      008ED1                        400 00298$:
                           0000CA   401 	Sswi2c$swi2c_read_buf$83 ==.
                           0000CA   402 	Sswi2c$swi2c_read_buf$84 ==.
                                    403 ;	./src/swi2c.c: 47: if (swi2c_STOP()) {
                                    404 ; genCall
      008ED1 CD 93 C1         [ 4]  405 	call	_swi2c_STOP
                                    406 ; genIfx
      008ED4 4D               [ 1]  407 	tnz	a
      008ED5 26 03            [ 1]  408 	jrne	00299$
      008ED7 CC 8E DF         [ 2]  409 	jp	00118$
      008EDA                        410 00299$:
                           0000D3   411 	Sswi2c$swi2c_read_buf$85 ==.
                           0000D3   412 	Sswi2c$swi2c_read_buf$86 ==.
                                    413 ;	./src/swi2c.c: 48: return 0xff;
                                    414 ; genReturn
      008EDA A6 FF            [ 1]  415 	ld	a, #0xff
      008EDC CC 8F D9         [ 2]  416 	jp	00154$
                           0000D8   417 	Sswi2c$swi2c_read_buf$87 ==.
                                    418 ; genLabel
      008EDF                        419 00118$:
                           0000D8   420 	Sswi2c$swi2c_read_buf$88 ==.
                                    421 ;	./src/swi2c.c: 50: return ack;
                                    422 ; genReturn
      008EDF 7B 03            [ 1]  423 	ld	a, (0x03, sp)
      008EE1 CC 8F D9         [ 2]  424 	jp	00154$
                           0000DD   425 	Sswi2c$swi2c_read_buf$89 ==.
                                    426 ; genLabel
      008EE4                        427 00120$:
                           0000DD   428 	Sswi2c$swi2c_read_buf$90 ==.
                                    429 ;	./src/swi2c.c: 53: if (swi2c_RESTART()) {
                                    430 ; genCall
      008EE4 CD 92 7D         [ 4]  431 	call	_swi2c_RESTART
                                    432 ; genIfx
      008EE7 4D               [ 1]  433 	tnz	a
      008EE8 26 03            [ 1]  434 	jrne	00300$
      008EEA CC 8E F2         [ 2]  435 	jp	00122$
      008EED                        436 00300$:
                           0000E6   437 	Sswi2c$swi2c_read_buf$91 ==.
                           0000E6   438 	Sswi2c$swi2c_read_buf$92 ==.
                                    439 ;	./src/swi2c.c: 54: return 0xff;
                                    440 ; genReturn
      008EED A6 FF            [ 1]  441 	ld	a, #0xff
      008EEF CC 8F D9         [ 2]  442 	jp	00154$
                           0000EB   443 	Sswi2c$swi2c_read_buf$93 ==.
                                    444 ; genLabel
      008EF2                        445 00122$:
                           0000EB   446 	Sswi2c$swi2c_read_buf$94 ==.
                                    447 ;	./src/swi2c.c: 57: mask = 1 << 7;
                                    448 ; genAssign
      008EF2 A6 80            [ 1]  449 	ld	a, #0x80
      008EF4 6B 03            [ 1]  450 	ld	(0x03, sp), a
                           0000EF   451 	Sswi2c$swi2c_read_buf$95 ==.
                           0000EF   452 	Sswi2c$swi2c_read_buf$96 ==.
                                    453 ;	./src/swi2c.c: 58: while (mask) {
                                    454 ; genAssign
      008EF6 7B 06            [ 1]  455 	ld	a, (0x06, sp)
                                    456 ; genOr
      008EF8 AA 01            [ 1]  457 	or	a, #0x01
      008EFA 6B 02            [ 1]  458 	ld	(0x02, sp), a
                           0000F5   459 	Sswi2c$swi2c_read_buf$97 ==.
                                    460 ; genLabel
      008EFC                        461 00125$:
                                    462 ; genIfx
      008EFC 0D 03            [ 1]  463 	tnz	(0x03, sp)
      008EFE 26 03            [ 1]  464 	jrne	00301$
      008F00 CC 8F 1D         [ 2]  465 	jp	00127$
      008F03                        466 00301$:
                           0000FC   467 	Sswi2c$swi2c_read_buf$98 ==.
                                    468 ;	./src/swi2c.c: 59: if (swi2c_writebit((slv_addr | 1) & mask)) {
                                    469 ; genAnd
      008F03 7B 02            [ 1]  470 	ld	a, (0x02, sp)
      008F05 14 03            [ 1]  471 	and	a, (0x03, sp)
                                    472 ; genIPush
      008F07 88               [ 1]  473 	push	a
                           000101   474 	Sswi2c$swi2c_read_buf$99 ==.
                                    475 ; genCall
      008F08 CD 91 DF         [ 4]  476 	call	_swi2c_writebit
      008F0B 5B 01            [ 2]  477 	addw	sp, #1
                           000106   478 	Sswi2c$swi2c_read_buf$100 ==.
                                    479 ; genIfx
      008F0D 4D               [ 1]  480 	tnz	a
      008F0E 26 03            [ 1]  481 	jrne	00302$
      008F10 CC 8F 18         [ 2]  482 	jp	00124$
      008F13                        483 00302$:
                           00010C   484 	Sswi2c$swi2c_read_buf$101 ==.
                           00010C   485 	Sswi2c$swi2c_read_buf$102 ==.
                                    486 ;	./src/swi2c.c: 60: return 0xff;
                                    487 ; genReturn
      008F13 A6 FF            [ 1]  488 	ld	a, #0xff
      008F15 CC 8F D9         [ 2]  489 	jp	00154$
                           000111   490 	Sswi2c$swi2c_read_buf$103 ==.
                                    491 ; genLabel
      008F18                        492 00124$:
                           000111   493 	Sswi2c$swi2c_read_buf$104 ==.
                                    494 ;	./src/swi2c.c: 62: mask = mask >> 1;
                                    495 ; genRightShiftLiteral
      008F18 04 03            [ 1]  496 	srl	(0x03, sp)
                           000113   497 	Sswi2c$swi2c_read_buf$105 ==.
                                    498 ; genGoto
      008F1A CC 8E FC         [ 2]  499 	jp	00125$
                                    500 ; genLabel
      008F1D                        501 00127$:
                           000116   502 	Sswi2c$swi2c_read_buf$106 ==.
                                    503 ;	./src/swi2c.c: 64: ack = swi2c_readbit();
                                    504 ; genCall
      008F1D CD 91 49         [ 4]  505 	call	_swi2c_readbit
                                    506 ; genAssign
      008F20 6B 03            [ 1]  507 	ld	(0x03, sp), a
                           00011B   508 	Sswi2c$swi2c_read_buf$107 ==.
                                    509 ;	./src/swi2c.c: 65: if (ack) {
                                    510 ; genIfx
      008F22 0D 03            [ 1]  511 	tnz	(0x03, sp)
      008F24 26 03            [ 1]  512 	jrne	00303$
      008F26 CC 8F 3C         [ 2]  513 	jp	00131$
      008F29                        514 00303$:
                           000122   515 	Sswi2c$swi2c_read_buf$108 ==.
                           000122   516 	Sswi2c$swi2c_read_buf$109 ==.
                                    517 ;	./src/swi2c.c: 66: if (swi2c_STOP()) {
                                    518 ; genCall
      008F29 CD 93 C1         [ 4]  519 	call	_swi2c_STOP
                                    520 ; genIfx
      008F2C 4D               [ 1]  521 	tnz	a
      008F2D 26 03            [ 1]  522 	jrne	00304$
      008F2F CC 8F 37         [ 2]  523 	jp	00129$
      008F32                        524 00304$:
                           00012B   525 	Sswi2c$swi2c_read_buf$110 ==.
                           00012B   526 	Sswi2c$swi2c_read_buf$111 ==.
                                    527 ;	./src/swi2c.c: 67: return 0xff;
                                    528 ; genReturn
      008F32 A6 FF            [ 1]  529 	ld	a, #0xff
      008F34 CC 8F D9         [ 2]  530 	jp	00154$
                           000130   531 	Sswi2c$swi2c_read_buf$112 ==.
                                    532 ; genLabel
      008F37                        533 00129$:
                           000130   534 	Sswi2c$swi2c_read_buf$113 ==.
                                    535 ;	./src/swi2c.c: 69: return ack;
                                    536 ; genReturn
      008F37 7B 03            [ 1]  537 	ld	a, (0x03, sp)
      008F39 CC 8F D9         [ 2]  538 	jp	00154$
                           000135   539 	Sswi2c$swi2c_read_buf$114 ==.
                                    540 ; genLabel
      008F3C                        541 00131$:
                           000135   542 	Sswi2c$swi2c_read_buf$115 ==.
                                    543 ;	./src/swi2c.c: 73: for (i = 0; i < num; i++) {
                                    544 ; genAssign
      008F3C 0F 02            [ 1]  545 	clr	(0x02, sp)
                                    546 ; genLabel
      008F3E                        547 00152$:
                                    548 ; genCast
                                    549 ; genAssign
      008F3E 7B 02            [ 1]  550 	ld	a, (0x02, sp)
      008F40 5F               [ 1]  551 	clrw	x
                                    552 ; genCmp
                                    553 ; genCmpTop
      008F41 97               [ 1]  554 	ld	xl, a
      008F42 13 0A            [ 2]  555 	cpw	x, (0x0a, sp)
      008F44 25 03            [ 1]  556 	jrc	00305$
      008F46 CC 8F CA         [ 2]  557 	jp	00148$
      008F49                        558 00305$:
                                    559 ; skipping generated iCode
                           000142   560 	Sswi2c$swi2c_read_buf$116 ==.
                           000142   561 	Sswi2c$swi2c_read_buf$117 ==.
                                    562 ;	./src/swi2c.c: 74: mask = 1 << 7;
                                    563 ; genAssign
      008F49 A6 80            [ 1]  564 	ld	a, #0x80
      008F4B 6B 03            [ 1]  565 	ld	(0x03, sp), a
                           000146   566 	Sswi2c$swi2c_read_buf$118 ==.
                                    567 ;	./src/swi2c.c: 75: while (mask) {
                                    568 ; genLabel
      008F4D                        569 00138$:
                                    570 ; genIfx
      008F4D 0D 03            [ 1]  571 	tnz	(0x03, sp)
      008F4F 26 03            [ 1]  572 	jrne	00306$
      008F51 CC 8F 92         [ 2]  573 	jp	00140$
      008F54                        574 00306$:
                           00014D   575 	Sswi2c$swi2c_read_buf$119 ==.
                           00014D   576 	Sswi2c$swi2c_read_buf$120 ==.
                                    577 ;	./src/swi2c.c: 76: bit = swi2c_readbit();
                                    578 ; genCall
      008F54 CD 91 49         [ 4]  579 	call	_swi2c_readbit
                                    580 ; genAssign
      008F57 90 97            [ 1]  581 	ld	yl, a
                           000152   582 	Sswi2c$swi2c_read_buf$121 ==.
                           000152   583 	Sswi2c$swi2c_read_buf$122 ==.
                                    584 ;	./src/swi2c.c: 78: data[i] &= ~mask;
                                    585 ; genPlus
      008F59 5F               [ 1]  586 	clrw	x
      008F5A 41               [ 1]  587 	exg	a, xl
      008F5B 7B 02            [ 1]  588 	ld	a, (0x02, sp)
      008F5D 41               [ 1]  589 	exg	a, xl
      008F5E 72 FB 08         [ 2]  590 	addw	x, (0x08, sp)
                           00015A   591 	Sswi2c$swi2c_read_buf$123 ==.
                                    592 ;	./src/swi2c.c: 77: if (bit == 0) {
                                    593 ; genIfx
      008F61 4D               [ 1]  594 	tnz	a
      008F62 27 03            [ 1]  595 	jreq	00307$
      008F64 CC 8F 73         [ 2]  596 	jp	00136$
      008F67                        597 00307$:
                           000160   598 	Sswi2c$swi2c_read_buf$124 ==.
                           000160   599 	Sswi2c$swi2c_read_buf$125 ==.
                                    600 ;	./src/swi2c.c: 78: data[i] &= ~mask;
                                    601 ; genPointerGet
      008F67 F6               [ 1]  602 	ld	a, (x)
      008F68 6B 01            [ 1]  603 	ld	(0x01, sp), a
                                    604 ; genCpl
      008F6A 7B 03            [ 1]  605 	ld	a, (0x03, sp)
      008F6C 43               [ 1]  606 	cpl	a
                                    607 ; genAnd
      008F6D 14 01            [ 1]  608 	and	a, (0x01, sp)
                                    609 ; genPointerSet
      008F6F F7               [ 1]  610 	ld	(x), a
                           000169   611 	Sswi2c$swi2c_read_buf$126 ==.
                                    612 ; genGoto
      008F70 CC 8F 8D         [ 2]  613 	jp	00137$
                                    614 ; genLabel
      008F73                        615 00136$:
                           00016C   616 	Sswi2c$swi2c_read_buf$127 ==.
                                    617 ;	./src/swi2c.c: 79: } else if (bit == 1) {
                                    618 ; genCmpEQorNE
      008F73 90 9F            [ 1]  619 	ld	a, yl
      008F75 4A               [ 1]  620 	dec	a
      008F76 26 03            [ 1]  621 	jrne	00309$
      008F78 CC 8F 7E         [ 2]  622 	jp	00310$
      008F7B                        623 00309$:
      008F7B CC 8F 85         [ 2]  624 	jp	00133$
      008F7E                        625 00310$:
                           000177   626 	Sswi2c$swi2c_read_buf$128 ==.
                                    627 ; skipping generated iCode
                           000177   628 	Sswi2c$swi2c_read_buf$129 ==.
                           000177   629 	Sswi2c$swi2c_read_buf$130 ==.
                                    630 ;	./src/swi2c.c: 80: data[i] |= mask;
                                    631 ; genPointerGet
      008F7E F6               [ 1]  632 	ld	a, (x)
                                    633 ; genOr
      008F7F 1A 03            [ 1]  634 	or	a, (0x03, sp)
                                    635 ; genPointerSet
      008F81 F7               [ 1]  636 	ld	(x), a
                           00017B   637 	Sswi2c$swi2c_read_buf$131 ==.
                                    638 ; genGoto
      008F82 CC 8F 8D         [ 2]  639 	jp	00137$
                                    640 ; genLabel
      008F85                        641 00133$:
                           00017E   642 	Sswi2c$swi2c_read_buf$132 ==.
                           00017E   643 	Sswi2c$swi2c_read_buf$133 ==.
                                    644 ;	./src/swi2c.c: 82: swi2c_STOP();
                                    645 ; genCall
      008F85 CD 93 C1         [ 4]  646 	call	_swi2c_STOP
                           000181   647 	Sswi2c$swi2c_read_buf$134 ==.
                                    648 ;	./src/swi2c.c: 83: return 0xff;
                                    649 ; genReturn
      008F88 A6 FF            [ 1]  650 	ld	a, #0xff
      008F8A CC 8F D9         [ 2]  651 	jp	00154$
                           000186   652 	Sswi2c$swi2c_read_buf$135 ==.
                                    653 ; genLabel
      008F8D                        654 00137$:
                           000186   655 	Sswi2c$swi2c_read_buf$136 ==.
                                    656 ;	./src/swi2c.c: 85: mask = mask >> 1;
                                    657 ; genRightShiftLiteral
      008F8D 04 03            [ 1]  658 	srl	(0x03, sp)
                           000188   659 	Sswi2c$swi2c_read_buf$137 ==.
                                    660 ; genGoto
      008F8F CC 8F 4D         [ 2]  661 	jp	00138$
                                    662 ; genLabel
      008F92                        663 00140$:
                           00018B   664 	Sswi2c$swi2c_read_buf$138 ==.
                                    665 ;	./src/swi2c.c: 87: if ((i + 1) == num) {
                                    666 ; genCast
                                    667 ; genAssign
      008F92 7B 02            [ 1]  668 	ld	a, (0x02, sp)
      008F94 5F               [ 1]  669 	clrw	x
                                    670 ; genPlus
      008F95 97               [ 1]  671 	ld	xl, a
      008F96 5C               [ 1]  672 	incw	x
                                    673 ; genCast
                                    674 ; genAssign
                                    675 ; genCmpEQorNE
      008F97 13 0A            [ 2]  676 	cpw	x, (0x0a, sp)
      008F99 26 03            [ 1]  677 	jrne	00312$
      008F9B CC 8F A1         [ 2]  678 	jp	00313$
      008F9E                        679 00312$:
      008F9E CC 8F B3         [ 2]  680 	jp	00146$
      008FA1                        681 00313$:
                           00019A   682 	Sswi2c$swi2c_read_buf$139 ==.
                                    683 ; skipping generated iCode
                           00019A   684 	Sswi2c$swi2c_read_buf$140 ==.
                           00019A   685 	Sswi2c$swi2c_read_buf$141 ==.
                                    686 ;	./src/swi2c.c: 88: if (swi2c_writebit(1)) {
                                    687 ; genIPush
      008FA1 4B 01            [ 1]  688 	push	#0x01
                           00019C   689 	Sswi2c$swi2c_read_buf$142 ==.
                                    690 ; genCall
      008FA3 CD 91 DF         [ 4]  691 	call	_swi2c_writebit
      008FA6 5B 01            [ 2]  692 	addw	sp, #1
                           0001A1   693 	Sswi2c$swi2c_read_buf$143 ==.
                                    694 ; genIfx
      008FA8 4D               [ 1]  695 	tnz	a
      008FA9 26 03            [ 1]  696 	jrne	00314$
      008FAB CC 8F C5         [ 2]  697 	jp	00153$
      008FAE                        698 00314$:
                           0001A7   699 	Sswi2c$swi2c_read_buf$144 ==.
                           0001A7   700 	Sswi2c$swi2c_read_buf$145 ==.
                                    701 ;	./src/swi2c.c: 89: return 0xff;
                                    702 ; genReturn
      008FAE A6 FF            [ 1]  703 	ld	a, #0xff
      008FB0 CC 8F D9         [ 2]  704 	jp	00154$
                           0001AC   705 	Sswi2c$swi2c_read_buf$146 ==.
                                    706 ; genLabel
      008FB3                        707 00146$:
                           0001AC   708 	Sswi2c$swi2c_read_buf$147 ==.
                           0001AC   709 	Sswi2c$swi2c_read_buf$148 ==.
                                    710 ;	./src/swi2c.c: 92: if (swi2c_writebit(0)) {
                                    711 ; genIPush
      008FB3 4B 00            [ 1]  712 	push	#0x00
                           0001AE   713 	Sswi2c$swi2c_read_buf$149 ==.
                                    714 ; genCall
      008FB5 CD 91 DF         [ 4]  715 	call	_swi2c_writebit
      008FB8 5B 01            [ 2]  716 	addw	sp, #1
                           0001B3   717 	Sswi2c$swi2c_read_buf$150 ==.
                                    718 ; genIfx
      008FBA 4D               [ 1]  719 	tnz	a
      008FBB 26 03            [ 1]  720 	jrne	00315$
      008FBD CC 8F C5         [ 2]  721 	jp	00153$
      008FC0                        722 00315$:
                           0001B9   723 	Sswi2c$swi2c_read_buf$151 ==.
                           0001B9   724 	Sswi2c$swi2c_read_buf$152 ==.
                                    725 ;	./src/swi2c.c: 93: return 0xff;
                                    726 ; genReturn
      008FC0 A6 FF            [ 1]  727 	ld	a, #0xff
      008FC2 CC 8F D9         [ 2]  728 	jp	00154$
                           0001BE   729 	Sswi2c$swi2c_read_buf$153 ==.
                                    730 ; genLabel
      008FC5                        731 00153$:
                           0001BE   732 	Sswi2c$swi2c_read_buf$154 ==.
                           0001BE   733 	Sswi2c$swi2c_read_buf$155 ==.
                                    734 ;	./src/swi2c.c: 73: for (i = 0; i < num; i++) {
                                    735 ; genPlus
      008FC5 0C 02            [ 1]  736 	inc	(0x02, sp)
                                    737 ; genGoto
      008FC7 CC 8F 3E         [ 2]  738 	jp	00152$
                                    739 ; genLabel
      008FCA                        740 00148$:
                           0001C3   741 	Sswi2c$swi2c_read_buf$156 ==.
                                    742 ;	./src/swi2c.c: 99: if (swi2c_STOP()) {
                                    743 ; genCall
      008FCA CD 93 C1         [ 4]  744 	call	_swi2c_STOP
                                    745 ; genIfx
      008FCD 4D               [ 1]  746 	tnz	a
      008FCE 26 03            [ 1]  747 	jrne	00316$
      008FD0 CC 8F D8         [ 2]  748 	jp	00150$
      008FD3                        749 00316$:
                           0001CC   750 	Sswi2c$swi2c_read_buf$157 ==.
                           0001CC   751 	Sswi2c$swi2c_read_buf$158 ==.
                                    752 ;	./src/swi2c.c: 100: return 0xff;
                                    753 ; genReturn
      008FD3 A6 FF            [ 1]  754 	ld	a, #0xff
      008FD5 CC 8F D9         [ 2]  755 	jp	00154$
                           0001D1   756 	Sswi2c$swi2c_read_buf$159 ==.
                                    757 ; genLabel
      008FD8                        758 00150$:
                           0001D1   759 	Sswi2c$swi2c_read_buf$160 ==.
                                    760 ;	./src/swi2c.c: 102: return 0;
                                    761 ; genReturn
      008FD8 4F               [ 1]  762 	clr	a
                                    763 ; genLabel
      008FD9                        764 00154$:
                           0001D2   765 	Sswi2c$swi2c_read_buf$161 ==.
                                    766 ;	./src/swi2c.c: 103: }
                                    767 ; genEndFunction
      008FD9 5B 03            [ 2]  768 	addw	sp, #3
                           0001D4   769 	Sswi2c$swi2c_read_buf$162 ==.
                           0001D4   770 	Sswi2c$swi2c_read_buf$163 ==.
                           0001D4   771 	XG$swi2c_read_buf$0$0 ==.
      008FDB 81               [ 4]  772 	ret
                           0001D5   773 	Sswi2c$swi2c_read_buf$164 ==.
                           0001D5   774 	Sswi2c$swi2c_write_buf$165 ==.
                                    775 ;	./src/swi2c.c: 113: uint8_t swi2c_write_buf(uint8_t slv_addr, uint8_t address, uint8_t * data,
                                    776 ; genLabel
                                    777 ;	-----------------------------------------
                                    778 ;	 function swi2c_write_buf
                                    779 ;	-----------------------------------------
                                    780 ;	Register assignment might be sub-optimal.
                                    781 ;	Stack space usage: 2 bytes.
      008FDC                        782 _swi2c_write_buf:
                           0001D5   783 	Sswi2c$swi2c_write_buf$166 ==.
      008FDC 89               [ 2]  784 	pushw	x
                           0001D6   785 	Sswi2c$swi2c_write_buf$167 ==.
                           0001D6   786 	Sswi2c$swi2c_write_buf$168 ==.
                                    787 ;	./src/swi2c.c: 121: if (swi2c_START()) {
                                    788 ; genCall
      008FDD CD 93 52         [ 4]  789 	call	_swi2c_START
                                    790 ; genIfx
      008FE0 4D               [ 1]  791 	tnz	a
      008FE1 26 03            [ 1]  792 	jrne	00233$
      008FE3 CC 8F EB         [ 2]  793 	jp	00102$
      008FE6                        794 00233$:
                           0001DF   795 	Sswi2c$swi2c_write_buf$169 ==.
                           0001DF   796 	Sswi2c$swi2c_write_buf$170 ==.
                                    797 ;	./src/swi2c.c: 122: return 0xaa;
                                    798 ; genReturn
      008FE6 A6 AA            [ 1]  799 	ld	a, #0xaa
      008FE8 CC 90 E0         [ 2]  800 	jp	00136$
                           0001E4   801 	Sswi2c$swi2c_write_buf$171 ==.
                                    802 ; genLabel
      008FEB                        803 00102$:
                           0001E4   804 	Sswi2c$swi2c_write_buf$172 ==.
                                    805 ;	./src/swi2c.c: 125: mask = 1 << 7;
                                    806 ; genAssign
      008FEB A6 80            [ 1]  807 	ld	a, #0x80
      008FED 6B 02            [ 1]  808 	ld	(0x02, sp), a
                           0001E8   809 	Sswi2c$swi2c_write_buf$173 ==.
                                    810 ;	./src/swi2c.c: 126: while (mask) {
                                    811 ; genLabel
      008FEF                        812 00105$:
                                    813 ; genIfx
      008FEF 0D 02            [ 1]  814 	tnz	(0x02, sp)
      008FF1 26 03            [ 1]  815 	jrne	00234$
      008FF3 CC 90 10         [ 2]  816 	jp	00107$
      008FF6                        817 00234$:
                           0001EF   818 	Sswi2c$swi2c_write_buf$174 ==.
                           0001EF   819 	Sswi2c$swi2c_write_buf$175 ==.
                                    820 ;	./src/swi2c.c: 127: if (swi2c_writebit(slv_addr & mask)) {
                                    821 ; genAnd
      008FF6 7B 05            [ 1]  822 	ld	a, (0x05, sp)
      008FF8 14 02            [ 1]  823 	and	a, (0x02, sp)
                                    824 ; genIPush
      008FFA 88               [ 1]  825 	push	a
                           0001F4   826 	Sswi2c$swi2c_write_buf$176 ==.
                                    827 ; genCall
      008FFB CD 91 DF         [ 4]  828 	call	_swi2c_writebit
      008FFE 5B 01            [ 2]  829 	addw	sp, #1
                           0001F9   830 	Sswi2c$swi2c_write_buf$177 ==.
                                    831 ; genIfx
      009000 4D               [ 1]  832 	tnz	a
      009001 26 03            [ 1]  833 	jrne	00235$
      009003 CC 90 0B         [ 2]  834 	jp	00104$
      009006                        835 00235$:
                           0001FF   836 	Sswi2c$swi2c_write_buf$178 ==.
                           0001FF   837 	Sswi2c$swi2c_write_buf$179 ==.
                                    838 ;	./src/swi2c.c: 128: return 0xff;
                                    839 ; genReturn
      009006 A6 FF            [ 1]  840 	ld	a, #0xff
      009008 CC 90 E0         [ 2]  841 	jp	00136$
                           000204   842 	Sswi2c$swi2c_write_buf$180 ==.
                                    843 ; genLabel
      00900B                        844 00104$:
                           000204   845 	Sswi2c$swi2c_write_buf$181 ==.
                                    846 ;	./src/swi2c.c: 130: mask = mask >> 1;
                                    847 ; genRightShiftLiteral
      00900B 04 02            [ 1]  848 	srl	(0x02, sp)
                           000206   849 	Sswi2c$swi2c_write_buf$182 ==.
                                    850 ; genGoto
      00900D CC 8F EF         [ 2]  851 	jp	00105$
                                    852 ; genLabel
      009010                        853 00107$:
                           000209   854 	Sswi2c$swi2c_write_buf$183 ==.
                                    855 ;	./src/swi2c.c: 132: ack = swi2c_readbit();
                                    856 ; genCall
      009010 CD 91 49         [ 4]  857 	call	_swi2c_readbit
                                    858 ; genAssign
      009013 6B 02            [ 1]  859 	ld	(0x02, sp), a
                           00020E   860 	Sswi2c$swi2c_write_buf$184 ==.
                                    861 ;	./src/swi2c.c: 133: if (ack) {
                                    862 ; genIfx
      009015 0D 02            [ 1]  863 	tnz	(0x02, sp)
      009017 26 03            [ 1]  864 	jrne	00236$
      009019 CC 90 2F         [ 2]  865 	jp	00111$
      00901C                        866 00236$:
                           000215   867 	Sswi2c$swi2c_write_buf$185 ==.
                           000215   868 	Sswi2c$swi2c_write_buf$186 ==.
                                    869 ;	./src/swi2c.c: 134: if (swi2c_STOP()) {
                                    870 ; genCall
      00901C CD 93 C1         [ 4]  871 	call	_swi2c_STOP
                                    872 ; genIfx
      00901F 4D               [ 1]  873 	tnz	a
      009020 26 03            [ 1]  874 	jrne	00237$
      009022 CC 90 2A         [ 2]  875 	jp	00109$
      009025                        876 00237$:
                           00021E   877 	Sswi2c$swi2c_write_buf$187 ==.
                           00021E   878 	Sswi2c$swi2c_write_buf$188 ==.
                                    879 ;	./src/swi2c.c: 135: return 0xff;
                                    880 ; genReturn
      009025 A6 FF            [ 1]  881 	ld	a, #0xff
      009027 CC 90 E0         [ 2]  882 	jp	00136$
                           000223   883 	Sswi2c$swi2c_write_buf$189 ==.
                                    884 ; genLabel
      00902A                        885 00109$:
                           000223   886 	Sswi2c$swi2c_write_buf$190 ==.
                                    887 ;	./src/swi2c.c: 137: return ack;
                                    888 ; genReturn
      00902A 7B 02            [ 1]  889 	ld	a, (0x02, sp)
      00902C CC 90 E0         [ 2]  890 	jp	00136$
                           000228   891 	Sswi2c$swi2c_write_buf$191 ==.
                                    892 ; genLabel
      00902F                        893 00111$:
                           000228   894 	Sswi2c$swi2c_write_buf$192 ==.
                                    895 ;	./src/swi2c.c: 140: mask = 1 << 7;
                                    896 ; genAssign
      00902F A6 80            [ 1]  897 	ld	a, #0x80
      009031 6B 02            [ 1]  898 	ld	(0x02, sp), a
                           00022C   899 	Sswi2c$swi2c_write_buf$193 ==.
                                    900 ;	./src/swi2c.c: 141: while (mask) {
                                    901 ; genLabel
      009033                        902 00114$:
                                    903 ; genIfx
      009033 0D 02            [ 1]  904 	tnz	(0x02, sp)
      009035 26 03            [ 1]  905 	jrne	00238$
      009037 CC 90 54         [ 2]  906 	jp	00116$
      00903A                        907 00238$:
                           000233   908 	Sswi2c$swi2c_write_buf$194 ==.
                           000233   909 	Sswi2c$swi2c_write_buf$195 ==.
                                    910 ;	./src/swi2c.c: 142: if (swi2c_writebit(address & mask)) {
                                    911 ; genAnd
      00903A 7B 06            [ 1]  912 	ld	a, (0x06, sp)
      00903C 14 02            [ 1]  913 	and	a, (0x02, sp)
                                    914 ; genIPush
      00903E 88               [ 1]  915 	push	a
                           000238   916 	Sswi2c$swi2c_write_buf$196 ==.
                                    917 ; genCall
      00903F CD 91 DF         [ 4]  918 	call	_swi2c_writebit
      009042 5B 01            [ 2]  919 	addw	sp, #1
                           00023D   920 	Sswi2c$swi2c_write_buf$197 ==.
                                    921 ; genIfx
      009044 4D               [ 1]  922 	tnz	a
      009045 26 03            [ 1]  923 	jrne	00239$
      009047 CC 90 4F         [ 2]  924 	jp	00113$
      00904A                        925 00239$:
                           000243   926 	Sswi2c$swi2c_write_buf$198 ==.
                           000243   927 	Sswi2c$swi2c_write_buf$199 ==.
                                    928 ;	./src/swi2c.c: 143: return 0xff;
                                    929 ; genReturn
      00904A A6 FF            [ 1]  930 	ld	a, #0xff
      00904C CC 90 E0         [ 2]  931 	jp	00136$
                           000248   932 	Sswi2c$swi2c_write_buf$200 ==.
                                    933 ; genLabel
      00904F                        934 00113$:
                           000248   935 	Sswi2c$swi2c_write_buf$201 ==.
                                    936 ;	./src/swi2c.c: 145: mask = mask >> 1;
                                    937 ; genRightShiftLiteral
      00904F 04 02            [ 1]  938 	srl	(0x02, sp)
                           00024A   939 	Sswi2c$swi2c_write_buf$202 ==.
                                    940 ; genGoto
      009051 CC 90 33         [ 2]  941 	jp	00114$
                                    942 ; genLabel
      009054                        943 00116$:
                           00024D   944 	Sswi2c$swi2c_write_buf$203 ==.
                                    945 ;	./src/swi2c.c: 147: ack = swi2c_readbit();
                                    946 ; genCall
      009054 CD 91 49         [ 4]  947 	call	_swi2c_readbit
                                    948 ; genAssign
      009057 6B 02            [ 1]  949 	ld	(0x02, sp), a
                           000252   950 	Sswi2c$swi2c_write_buf$204 ==.
                                    951 ;	./src/swi2c.c: 148: if (ack) {
                                    952 ; genIfx
      009059 0D 02            [ 1]  953 	tnz	(0x02, sp)
      00905B 26 03            [ 1]  954 	jrne	00240$
      00905D CC 90 73         [ 2]  955 	jp	00120$
      009060                        956 00240$:
                           000259   957 	Sswi2c$swi2c_write_buf$205 ==.
                           000259   958 	Sswi2c$swi2c_write_buf$206 ==.
                                    959 ;	./src/swi2c.c: 149: if (swi2c_STOP()) {
                                    960 ; genCall
      009060 CD 93 C1         [ 4]  961 	call	_swi2c_STOP
                                    962 ; genIfx
      009063 4D               [ 1]  963 	tnz	a
      009064 26 03            [ 1]  964 	jrne	00241$
      009066 CC 90 6E         [ 2]  965 	jp	00118$
      009069                        966 00241$:
                           000262   967 	Sswi2c$swi2c_write_buf$207 ==.
                           000262   968 	Sswi2c$swi2c_write_buf$208 ==.
                                    969 ;	./src/swi2c.c: 150: return 0xff;
                                    970 ; genReturn
      009069 A6 FF            [ 1]  971 	ld	a, #0xff
      00906B CC 90 E0         [ 2]  972 	jp	00136$
                           000267   973 	Sswi2c$swi2c_write_buf$209 ==.
                                    974 ; genLabel
      00906E                        975 00118$:
                           000267   976 	Sswi2c$swi2c_write_buf$210 ==.
                                    977 ;	./src/swi2c.c: 152: return ack;
                                    978 ; genReturn
      00906E 7B 02            [ 1]  979 	ld	a, (0x02, sp)
      009070 CC 90 E0         [ 2]  980 	jp	00136$
                           00026C   981 	Sswi2c$swi2c_write_buf$211 ==.
                                    982 ; genLabel
      009073                        983 00120$:
                           00026C   984 	Sswi2c$swi2c_write_buf$212 ==.
                                    985 ;	./src/swi2c.c: 155: for (i = 0; i < num; i++) {
                                    986 ; genAssign
      009073 0F 01            [ 1]  987 	clr	(0x01, sp)
                                    988 ; genLabel
      009075                        989 00134$:
                                    990 ; genCast
                                    991 ; genAssign
      009075 7B 01            [ 1]  992 	ld	a, (0x01, sp)
      009077 5F               [ 1]  993 	clrw	x
                                    994 ; genCmp
                                    995 ; genCmpTop
      009078 97               [ 1]  996 	ld	xl, a
      009079 13 09            [ 2]  997 	cpw	x, (0x09, sp)
      00907B 25 03            [ 1]  998 	jrc	00242$
      00907D CC 90 D1         [ 2]  999 	jp	00130$
      009080                       1000 00242$:
                                   1001 ; skipping generated iCode
                           000279  1002 	Sswi2c$swi2c_write_buf$213 ==.
                           000279  1003 	Sswi2c$swi2c_write_buf$214 ==.
                                   1004 ;	./src/swi2c.c: 156: mask = 1 << 7;
                                   1005 ; genAssign
      009080 A6 80            [ 1] 1006 	ld	a, #0x80
      009082 6B 02            [ 1] 1007 	ld	(0x02, sp), a
                           00027D  1008 	Sswi2c$swi2c_write_buf$215 ==.
                           00027D  1009 	Sswi2c$swi2c_write_buf$216 ==.
                                   1010 ;	./src/swi2c.c: 157: while (mask) {
                                   1011 ; genPlus
      009084 5F               [ 1] 1012 	clrw	x
      009085 7B 01            [ 1] 1013 	ld	a, (0x01, sp)
      009087 97               [ 1] 1014 	ld	xl, a
      009088 72 FB 07         [ 2] 1015 	addw	x, (0x07, sp)
                           000284  1016 	Sswi2c$swi2c_write_buf$217 ==.
                                   1017 ; genLabel
      00908B                       1018 00123$:
                                   1019 ; genIfx
      00908B 0D 02            [ 1] 1020 	tnz	(0x02, sp)
      00908D 26 03            [ 1] 1021 	jrne	00243$
      00908F CC 90 AD         [ 2] 1022 	jp	00125$
      009092                       1023 00243$:
                           00028B  1024 	Sswi2c$swi2c_write_buf$218 ==.
                                   1025 ;	./src/swi2c.c: 158: if (swi2c_writebit(data[i] & mask)) {
                                   1026 ; genPointerGet
      009092 F6               [ 1] 1027 	ld	a, (x)
                                   1028 ; genAnd
      009093 14 02            [ 1] 1029 	and	a, (0x02, sp)
                                   1030 ; genIPush
      009095 89               [ 2] 1031 	pushw	x
                           00028F  1032 	Sswi2c$swi2c_write_buf$219 ==.
      009096 88               [ 1] 1033 	push	a
                           000290  1034 	Sswi2c$swi2c_write_buf$220 ==.
                                   1035 ; genCall
      009097 CD 91 DF         [ 4] 1036 	call	_swi2c_writebit
      00909A 5B 01            [ 2] 1037 	addw	sp, #1
                           000295  1038 	Sswi2c$swi2c_write_buf$221 ==.
      00909C 85               [ 2] 1039 	popw	x
                           000296  1040 	Sswi2c$swi2c_write_buf$222 ==.
                                   1041 ; genIfx
      00909D 4D               [ 1] 1042 	tnz	a
      00909E 26 03            [ 1] 1043 	jrne	00244$
      0090A0 CC 90 A8         [ 2] 1044 	jp	00122$
      0090A3                       1045 00244$:
                           00029C  1046 	Sswi2c$swi2c_write_buf$223 ==.
                           00029C  1047 	Sswi2c$swi2c_write_buf$224 ==.
                                   1048 ;	./src/swi2c.c: 159: return 0xff;
                                   1049 ; genReturn
      0090A3 A6 FF            [ 1] 1050 	ld	a, #0xff
      0090A5 CC 90 E0         [ 2] 1051 	jp	00136$
                           0002A1  1052 	Sswi2c$swi2c_write_buf$225 ==.
                                   1053 ; genLabel
      0090A8                       1054 00122$:
                           0002A1  1055 	Sswi2c$swi2c_write_buf$226 ==.
                                   1056 ;	./src/swi2c.c: 161: mask = mask >> 1;
                                   1057 ; genRightShiftLiteral
      0090A8 04 02            [ 1] 1058 	srl	(0x02, sp)
                           0002A3  1059 	Sswi2c$swi2c_write_buf$227 ==.
                                   1060 ; genGoto
      0090AA CC 90 8B         [ 2] 1061 	jp	00123$
                                   1062 ; genLabel
      0090AD                       1063 00125$:
                           0002A6  1064 	Sswi2c$swi2c_write_buf$228 ==.
                                   1065 ;	./src/swi2c.c: 163: ack = swi2c_readbit();
                                   1066 ; genCall
      0090AD CD 91 49         [ 4] 1067 	call	_swi2c_readbit
                                   1068 ; genAssign
      0090B0 6B 02            [ 1] 1069 	ld	(0x02, sp), a
                           0002AB  1070 	Sswi2c$swi2c_write_buf$229 ==.
                                   1071 ;	./src/swi2c.c: 164: if (ack) {
                                   1072 ; genIfx
      0090B2 0D 02            [ 1] 1073 	tnz	(0x02, sp)
      0090B4 26 03            [ 1] 1074 	jrne	00245$
      0090B6 CC 90 CC         [ 2] 1075 	jp	00135$
      0090B9                       1076 00245$:
                           0002B2  1077 	Sswi2c$swi2c_write_buf$230 ==.
                           0002B2  1078 	Sswi2c$swi2c_write_buf$231 ==.
                                   1079 ;	./src/swi2c.c: 165: if (swi2c_STOP()) {
                                   1080 ; genCall
      0090B9 CD 93 C1         [ 4] 1081 	call	_swi2c_STOP
                                   1082 ; genIfx
      0090BC 4D               [ 1] 1083 	tnz	a
      0090BD 26 03            [ 1] 1084 	jrne	00246$
      0090BF CC 90 C7         [ 2] 1085 	jp	00127$
      0090C2                       1086 00246$:
                           0002BB  1087 	Sswi2c$swi2c_write_buf$232 ==.
                           0002BB  1088 	Sswi2c$swi2c_write_buf$233 ==.
                                   1089 ;	./src/swi2c.c: 166: return 0xff;
                                   1090 ; genReturn
      0090C2 A6 FF            [ 1] 1091 	ld	a, #0xff
      0090C4 CC 90 E0         [ 2] 1092 	jp	00136$
                           0002C0  1093 	Sswi2c$swi2c_write_buf$234 ==.
                                   1094 ; genLabel
      0090C7                       1095 00127$:
                           0002C0  1096 	Sswi2c$swi2c_write_buf$235 ==.
                                   1097 ;	./src/swi2c.c: 168: return ack;
                                   1098 ; genReturn
      0090C7 7B 02            [ 1] 1099 	ld	a, (0x02, sp)
      0090C9 CC 90 E0         [ 2] 1100 	jp	00136$
                           0002C5  1101 	Sswi2c$swi2c_write_buf$236 ==.
                                   1102 ; genLabel
      0090CC                       1103 00135$:
                           0002C5  1104 	Sswi2c$swi2c_write_buf$237 ==.
                           0002C5  1105 	Sswi2c$swi2c_write_buf$238 ==.
                                   1106 ;	./src/swi2c.c: 155: for (i = 0; i < num; i++) {
                                   1107 ; genPlus
      0090CC 0C 01            [ 1] 1108 	inc	(0x01, sp)
                                   1109 ; genGoto
      0090CE CC 90 75         [ 2] 1110 	jp	00134$
                                   1111 ; genLabel
      0090D1                       1112 00130$:
                           0002CA  1113 	Sswi2c$swi2c_write_buf$239 ==.
                                   1114 ;	./src/swi2c.c: 173: if (swi2c_STOP()) {
                                   1115 ; genCall
      0090D1 CD 93 C1         [ 4] 1116 	call	_swi2c_STOP
                                   1117 ; genIfx
      0090D4 4D               [ 1] 1118 	tnz	a
      0090D5 26 03            [ 1] 1119 	jrne	00247$
      0090D7 CC 90 DF         [ 2] 1120 	jp	00132$
      0090DA                       1121 00247$:
                           0002D3  1122 	Sswi2c$swi2c_write_buf$240 ==.
                           0002D3  1123 	Sswi2c$swi2c_write_buf$241 ==.
                                   1124 ;	./src/swi2c.c: 174: return 0xff;
                                   1125 ; genReturn
      0090DA A6 FF            [ 1] 1126 	ld	a, #0xff
      0090DC CC 90 E0         [ 2] 1127 	jp	00136$
                           0002D8  1128 	Sswi2c$swi2c_write_buf$242 ==.
                                   1129 ; genLabel
      0090DF                       1130 00132$:
                           0002D8  1131 	Sswi2c$swi2c_write_buf$243 ==.
                                   1132 ;	./src/swi2c.c: 176: return 0;
                                   1133 ; genReturn
      0090DF 4F               [ 1] 1134 	clr	a
                                   1135 ; genLabel
      0090E0                       1136 00136$:
                           0002D9  1137 	Sswi2c$swi2c_write_buf$244 ==.
                                   1138 ;	./src/swi2c.c: 177: }
                                   1139 ; genEndFunction
      0090E0 85               [ 2] 1140 	popw	x
                           0002DA  1141 	Sswi2c$swi2c_write_buf$245 ==.
                           0002DA  1142 	Sswi2c$swi2c_write_buf$246 ==.
                           0002DA  1143 	XG$swi2c_write_buf$0$0 ==.
      0090E1 81               [ 4] 1144 	ret
                           0002DB  1145 	Sswi2c$swi2c_write_buf$247 ==.
                           0002DB  1146 	Sswi2c$swi2c_test_slave$248 ==.
                                   1147 ;	./src/swi2c.c: 187: uint8_t swi2c_test_slave(uint8_t slvaddr)
                                   1148 ; genLabel
                                   1149 ;	-----------------------------------------
                                   1150 ;	 function swi2c_test_slave
                                   1151 ;	-----------------------------------------
                                   1152 ;	Register assignment might be sub-optimal.
                                   1153 ;	Stack space usage: 1 bytes.
      0090E2                       1154 _swi2c_test_slave:
                           0002DB  1155 	Sswi2c$swi2c_test_slave$249 ==.
      0090E2 88               [ 1] 1156 	push	a
                           0002DC  1157 	Sswi2c$swi2c_test_slave$250 ==.
                           0002DC  1158 	Sswi2c$swi2c_test_slave$251 ==.
                                   1159 ;	./src/swi2c.c: 190: uint8_t mask = 1 << 7;
                                   1160 ; genAssign
      0090E3 A6 80            [ 1] 1161 	ld	a, #0x80
      0090E5 6B 01            [ 1] 1162 	ld	(0x01, sp), a
                           0002E0  1163 	Sswi2c$swi2c_test_slave$252 ==.
                                   1164 ;	./src/swi2c.c: 191: if (swi2c_START()) {
                                   1165 ; genCall
      0090E7 CD 93 52         [ 4] 1166 	call	_swi2c_START
                                   1167 ; genIfx
      0090EA 4D               [ 1] 1168 	tnz	a
      0090EB 26 03            [ 1] 1169 	jrne	00137$
      0090ED CC 90 F5         [ 2] 1170 	jp	00105$
      0090F0                       1171 00137$:
                           0002E9  1172 	Sswi2c$swi2c_test_slave$253 ==.
                           0002E9  1173 	Sswi2c$swi2c_test_slave$254 ==.
                                   1174 ;	./src/swi2c.c: 192: return 0xaa;
                                   1175 ; genReturn
      0090F0 A6 AA            [ 1] 1176 	ld	a, #0xaa
      0090F2 CC 91 2B         [ 2] 1177 	jp	00110$
                           0002EE  1178 	Sswi2c$swi2c_test_slave$255 ==.
                           0002EE  1179 	Sswi2c$swi2c_test_slave$256 ==.
                                   1180 ;	./src/swi2c.c: 194: while (mask) {
                                   1181 ; genLabel
      0090F5                       1182 00105$:
                                   1183 ; genIfx
      0090F5 0D 01            [ 1] 1184 	tnz	(0x01, sp)
      0090F7 26 03            [ 1] 1185 	jrne	00138$
      0090F9 CC 91 16         [ 2] 1186 	jp	00107$
      0090FC                       1187 00138$:
                           0002F5  1188 	Sswi2c$swi2c_test_slave$257 ==.
                           0002F5  1189 	Sswi2c$swi2c_test_slave$258 ==.
                                   1190 ;	./src/swi2c.c: 195: if (swi2c_writebit(slvaddr & mask)) {
                                   1191 ; genAnd
      0090FC 7B 04            [ 1] 1192 	ld	a, (0x04, sp)
      0090FE 14 01            [ 1] 1193 	and	a, (0x01, sp)
                                   1194 ; genIPush
      009100 88               [ 1] 1195 	push	a
                           0002FA  1196 	Sswi2c$swi2c_test_slave$259 ==.
                                   1197 ; genCall
      009101 CD 91 DF         [ 4] 1198 	call	_swi2c_writebit
      009104 5B 01            [ 2] 1199 	addw	sp, #1
                           0002FF  1200 	Sswi2c$swi2c_test_slave$260 ==.
                                   1201 ; genIfx
      009106 4D               [ 1] 1202 	tnz	a
      009107 26 03            [ 1] 1203 	jrne	00139$
      009109 CC 91 11         [ 2] 1204 	jp	00104$
      00910C                       1205 00139$:
                           000305  1206 	Sswi2c$swi2c_test_slave$261 ==.
                           000305  1207 	Sswi2c$swi2c_test_slave$262 ==.
                                   1208 ;	./src/swi2c.c: 196: return 0xff;
                                   1209 ; genReturn
      00910C A6 FF            [ 1] 1210 	ld	a, #0xff
      00910E CC 91 2B         [ 2] 1211 	jp	00110$
                           00030A  1212 	Sswi2c$swi2c_test_slave$263 ==.
                                   1213 ; genLabel
      009111                       1214 00104$:
                           00030A  1215 	Sswi2c$swi2c_test_slave$264 ==.
                                   1216 ;	./src/swi2c.c: 198: mask = mask >> 1;
                                   1217 ; genRightShiftLiteral
      009111 04 01            [ 1] 1218 	srl	(0x01, sp)
                           00030C  1219 	Sswi2c$swi2c_test_slave$265 ==.
                                   1220 ; genGoto
      009113 CC 90 F5         [ 2] 1221 	jp	00105$
                                   1222 ; genLabel
      009116                       1223 00107$:
                           00030F  1224 	Sswi2c$swi2c_test_slave$266 ==.
                                   1225 ;	./src/swi2c.c: 200: ack = swi2c_readbit();
                                   1226 ; genCall
      009116 CD 91 49         [ 4] 1227 	call	_swi2c_readbit
                                   1228 ; genAssign
      009119 6B 01            [ 1] 1229 	ld	(0x01, sp), a
                           000314  1230 	Sswi2c$swi2c_test_slave$267 ==.
                                   1231 ;	./src/swi2c.c: 201: if (swi2c_STOP()) {
                                   1232 ; genCall
      00911B CD 93 C1         [ 4] 1233 	call	_swi2c_STOP
                                   1234 ; genIfx
      00911E 4D               [ 1] 1235 	tnz	a
      00911F 26 03            [ 1] 1236 	jrne	00140$
      009121 CC 91 29         [ 2] 1237 	jp	00109$
      009124                       1238 00140$:
                           00031D  1239 	Sswi2c$swi2c_test_slave$268 ==.
                           00031D  1240 	Sswi2c$swi2c_test_slave$269 ==.
                                   1241 ;	./src/swi2c.c: 202: return 0xff;
                                   1242 ; genReturn
      009124 A6 FF            [ 1] 1243 	ld	a, #0xff
      009126 CC 91 2B         [ 2] 1244 	jp	00110$
                           000322  1245 	Sswi2c$swi2c_test_slave$270 ==.
                                   1246 ; genLabel
      009129                       1247 00109$:
                           000322  1248 	Sswi2c$swi2c_test_slave$271 ==.
                                   1249 ;	./src/swi2c.c: 204: return ack;
                                   1250 ; genReturn
      009129 7B 01            [ 1] 1251 	ld	a, (0x01, sp)
                                   1252 ; genLabel
      00912B                       1253 00110$:
                           000324  1254 	Sswi2c$swi2c_test_slave$272 ==.
                                   1255 ;	./src/swi2c.c: 205: }
                                   1256 ; genEndFunction
      00912B 5B 01            [ 2] 1257 	addw	sp, #1
                           000326  1258 	Sswi2c$swi2c_test_slave$273 ==.
                           000326  1259 	Sswi2c$swi2c_test_slave$274 ==.
                           000326  1260 	XG$swi2c_test_slave$0$0 ==.
      00912D 81               [ 4] 1261 	ret
                           000327  1262 	Sswi2c$swi2c_test_slave$275 ==.
                           000327  1263 	Sswi2c$swi2c_init$276 ==.
                                   1264 ;	./src/swi2c.c: 208: void swi2c_init(void)
                                   1265 ; genLabel
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function swi2c_init
                                   1268 ;	-----------------------------------------
                                   1269 ;	Register assignment is optimal.
                                   1270 ;	Stack space usage: 0 bytes.
      00912E                       1271 _swi2c_init:
                           000327  1272 	Sswi2c$swi2c_init$277 ==.
                           000327  1273 	Sswi2c$swi2c_init$278 ==.
                                   1274 ;	./src/swi2c.c: 210: GPIO_Init(SCL_GPIO, SCL_PIN, GPIO_MODE_OUT_OD_HIZ_SLOW);
                                   1275 ; genIPush
      00912E 4B 90            [ 1] 1276 	push	#0x90
                           000329  1277 	Sswi2c$swi2c_init$279 ==.
                                   1278 ; genIPush
      009130 4B 40            [ 1] 1279 	push	#0x40
                           00032B  1280 	Sswi2c$swi2c_init$280 ==.
                                   1281 ; genIPush
      009132 4B 0A            [ 1] 1282 	push	#0x0a
                           00032D  1283 	Sswi2c$swi2c_init$281 ==.
      009134 4B 50            [ 1] 1284 	push	#0x50
                           00032F  1285 	Sswi2c$swi2c_init$282 ==.
                                   1286 ; genCall
      009136 CD 96 0F         [ 4] 1287 	call	_GPIO_Init
      009139 5B 04            [ 2] 1288 	addw	sp, #4
                           000334  1289 	Sswi2c$swi2c_init$283 ==.
                           000334  1290 	Sswi2c$swi2c_init$284 ==.
                                   1291 ;	./src/swi2c.c: 211: GPIO_Init(SDA_GPIO, SDA_PIN, GPIO_MODE_OUT_OD_HIZ_SLOW);
                                   1292 ; genIPush
      00913B 4B 90            [ 1] 1293 	push	#0x90
                           000336  1294 	Sswi2c$swi2c_init$285 ==.
                                   1295 ; genIPush
      00913D 4B 80            [ 1] 1296 	push	#0x80
                           000338  1297 	Sswi2c$swi2c_init$286 ==.
                                   1298 ; genIPush
      00913F 4B 0A            [ 1] 1299 	push	#0x0a
                           00033A  1300 	Sswi2c$swi2c_init$287 ==.
      009141 4B 50            [ 1] 1301 	push	#0x50
                           00033C  1302 	Sswi2c$swi2c_init$288 ==.
                                   1303 ; genCall
      009143 CD 96 0F         [ 4] 1304 	call	_GPIO_Init
      009146 5B 04            [ 2] 1305 	addw	sp, #4
                           000341  1306 	Sswi2c$swi2c_init$289 ==.
                                   1307 ; genLabel
      009148                       1308 00101$:
                           000341  1309 	Sswi2c$swi2c_init$290 ==.
                                   1310 ;	./src/swi2c.c: 212: }
                                   1311 ; genEndFunction
                           000341  1312 	Sswi2c$swi2c_init$291 ==.
                           000341  1313 	XG$swi2c_init$0$0 ==.
      009148 81               [ 4] 1314 	ret
                           000342  1315 	Sswi2c$swi2c_init$292 ==.
                           000342  1316 	Sswi2c$swi2c_readbit$293 ==.
                                   1317 ;	./src/swi2c.c: 220: uint8_t swi2c_readbit(void)
                                   1318 ; genLabel
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function swi2c_readbit
                                   1321 ;	-----------------------------------------
                                   1322 ;	Register assignment might be sub-optimal.
                                   1323 ;	Stack space usage: 2 bytes.
      009149                       1324 _swi2c_readbit:
                           000342  1325 	Sswi2c$swi2c_readbit$294 ==.
      009149 89               [ 2] 1326 	pushw	x
                           000343  1327 	Sswi2c$swi2c_readbit$295 ==.
                           000343  1328 	Sswi2c$swi2c_readbit$296 ==.
                                   1329 ;	./src/swi2c.c: 222: uint16_t timeout = SWI2C_TIMEOUT;
                                   1330 ; genAssign
      00914A AE FF FF         [ 2] 1331 	ldw	x, #0xffff
      00914D 1F 01            [ 2] 1332 	ldw	(0x01, sp), x
                           000348  1333 	Sswi2c$swi2c_readbit$297 ==.
                                   1334 ;	./src/swi2c.c: 224: SDA_HIGH;                   // release SDA
                                   1335 ; genIPush
      00914F 4B 80            [ 1] 1336 	push	#0x80
                           00034A  1337 	Sswi2c$swi2c_readbit$298 ==.
                                   1338 ; genIPush
      009151 4B 0A            [ 1] 1339 	push	#0x0a
                           00034C  1340 	Sswi2c$swi2c_readbit$299 ==.
      009153 4B 50            [ 1] 1341 	push	#0x50
                           00034E  1342 	Sswi2c$swi2c_readbit$300 ==.
                                   1343 ; genCall
      009155 CD 96 9C         [ 4] 1344 	call	_GPIO_WriteHigh
      009158 5B 03            [ 2] 1345 	addw	sp, #3
                           000353  1346 	Sswi2c$swi2c_readbit$301 ==.
                           000353  1347 	Sswi2c$swi2c_readbit$302 ==.
                                   1348 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1349 ; genAssign
      00915A AE 00 05         [ 2] 1350 	ldw	x, #0x0005
                           000356  1351 	Sswi2c$swi2c_readbit$303 ==.
                                   1352 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1353 ;	genInline
      00915D 9D               [ 1] 1354 	nop
      00915E 9D               [ 1] 1355 	nop
                           000358  1356 	Sswi2c$swi2c_readbit$304 ==.
                           000358  1357 	Sswi2c$swi2c_readbit$305 ==.
                                   1358 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1359 ; genAssign
                                   1360 ; genLabel
      00915F                       1361 00110$:
                           000358  1362 	Sswi2c$swi2c_readbit$306 ==.
                                   1363 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1364 ; genMinus
      00915F 5A               [ 2] 1365 	decw	x
                           000359  1366 	Sswi2c$swi2c_readbit$307 ==.
                                   1367 ;	inc/delay.h: 28: } while ( __ticks );
                                   1368 ; genIfx
      009160 5D               [ 2] 1369 	tnzw	x
      009161 27 03            [ 1] 1370 	jreq	00186$
      009163 CC 91 5F         [ 2] 1371 	jp	00110$
      009166                       1372 00186$:
                                   1373 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1374 ;	genInline
      009166 9D               [ 1] 1375 	nop
                           000360  1376 	Sswi2c$swi2c_readbit$308 ==.
                           000360  1377 	Sswi2c$swi2c_readbit$309 ==.
                                   1378 ;	./src/swi2c.c: 226: SCL_HIGH;
                                   1379 ; genIPush
      009167 4B 40            [ 1] 1380 	push	#0x40
                           000362  1381 	Sswi2c$swi2c_readbit$310 ==.
                                   1382 ; genIPush
      009169 4B 0A            [ 1] 1383 	push	#0x0a
                           000364  1384 	Sswi2c$swi2c_readbit$311 ==.
      00916B 4B 50            [ 1] 1385 	push	#0x50
                           000366  1386 	Sswi2c$swi2c_readbit$312 ==.
                                   1387 ; genCall
      00916D CD 96 9C         [ 4] 1388 	call	_GPIO_WriteHigh
      009170 5B 03            [ 2] 1389 	addw	sp, #3
                           00036B  1390 	Sswi2c$swi2c_readbit$313 ==.
                           00036B  1391 	Sswi2c$swi2c_readbit$314 ==.
                                   1392 ;	./src/swi2c.c: 227: while (SCL_stat() == RESET && timeout) {
                                   1393 ; genAssign
      009172 1E 01            [ 2] 1394 	ldw	x, (0x01, sp)
                                   1395 ; genLabel
      009174                       1396 00102$:
                                   1397 ; genIPush
      009174 89               [ 2] 1398 	pushw	x
                           00036E  1399 	Sswi2c$swi2c_readbit$315 ==.
      009175 4B 40            [ 1] 1400 	push	#0x40
                           000370  1401 	Sswi2c$swi2c_readbit$316 ==.
                                   1402 ; genIPush
      009177 4B 0A            [ 1] 1403 	push	#0x0a
                           000372  1404 	Sswi2c$swi2c_readbit$317 ==.
      009179 4B 50            [ 1] 1405 	push	#0x50
                           000374  1406 	Sswi2c$swi2c_readbit$318 ==.
                                   1407 ; genCall
      00917B CD 96 C1         [ 4] 1408 	call	_GPIO_ReadInputPin
      00917E 5B 03            [ 2] 1409 	addw	sp, #3
                           000379  1410 	Sswi2c$swi2c_readbit$319 ==.
      009180 85               [ 2] 1411 	popw	x
                           00037A  1412 	Sswi2c$swi2c_readbit$320 ==.
                                   1413 ; genIfx
      009181 4D               [ 1] 1414 	tnz	a
      009182 27 03            [ 1] 1415 	jreq	00187$
      009184 CC 91 91         [ 2] 1416 	jp	00139$
      009187                       1417 00187$:
                                   1418 ; genIfx
      009187 5D               [ 2] 1419 	tnzw	x
      009188 26 03            [ 1] 1420 	jrne	00188$
      00918A CC 91 91         [ 2] 1421 	jp	00139$
      00918D                       1422 00188$:
                           000386  1423 	Sswi2c$swi2c_readbit$321 ==.
                           000386  1424 	Sswi2c$swi2c_readbit$322 ==.
                                   1425 ;	./src/swi2c.c: 228: timeout--;
                                   1426 ; genMinus
      00918D 5A               [ 2] 1427 	decw	x
                           000387  1428 	Sswi2c$swi2c_readbit$323 ==.
                                   1429 ; genGoto
      00918E CC 91 74         [ 2] 1430 	jp	00102$
                                   1431 ; genLabel
      009191                       1432 00139$:
                                   1433 ; genAssign
      009191 1F 01            [ 2] 1434 	ldw	(0x01, sp), x
                           00038C  1435 	Sswi2c$swi2c_readbit$324 ==.
                                   1436 ;	./src/swi2c.c: 230: if (timeout == 0) {
                                   1437 ; genIfx
      009193 1E 01            [ 2] 1438 	ldw	x, (0x01, sp)
      009195 27 03            [ 1] 1439 	jreq	00189$
      009197 CC 91 9F         [ 2] 1440 	jp	00106$
      00919A                       1441 00189$:
                           000393  1442 	Sswi2c$swi2c_readbit$325 ==.
                           000393  1443 	Sswi2c$swi2c_readbit$326 ==.
                                   1444 ;	./src/swi2c.c: 231: return 0xff;
                                   1445 ; genReturn
      00919A A6 FF            [ 1] 1446 	ld	a, #0xff
      00919C CC 91 DD         [ 2] 1447 	jp	00125$
                           000398  1448 	Sswi2c$swi2c_readbit$327 ==.
                                   1449 ; genLabel
      00919F                       1450 00106$:
                           000398  1451 	Sswi2c$swi2c_readbit$328 ==.
                                   1452 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1453 ; genAssign
      00919F AE 00 05         [ 2] 1454 	ldw	x, #0x0005
                           00039B  1455 	Sswi2c$swi2c_readbit$329 ==.
                                   1456 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1457 ;	genInline
      0091A2 9D               [ 1] 1458 	nop
      0091A3 9D               [ 1] 1459 	nop
                           00039D  1460 	Sswi2c$swi2c_readbit$330 ==.
                           00039D  1461 	Sswi2c$swi2c_readbit$331 ==.
                                   1462 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1463 ; genAssign
                                   1464 ; genLabel
      0091A4                       1465 00115$:
                           00039D  1466 	Sswi2c$swi2c_readbit$332 ==.
                                   1467 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1468 ; genMinus
      0091A4 5A               [ 2] 1469 	decw	x
                           00039E  1470 	Sswi2c$swi2c_readbit$333 ==.
                                   1471 ;	inc/delay.h: 28: } while ( __ticks );
                                   1472 ; genIfx
      0091A5 5D               [ 2] 1473 	tnzw	x
      0091A6 27 03            [ 1] 1474 	jreq	00190$
      0091A8 CC 91 A4         [ 2] 1475 	jp	00115$
      0091AB                       1476 00190$:
                                   1477 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1478 ;	genInline
      0091AB 9D               [ 1] 1479 	nop
                           0003A5  1480 	Sswi2c$swi2c_readbit$334 ==.
                           0003A5  1481 	Sswi2c$swi2c_readbit$335 ==.
                                   1482 ;	./src/swi2c.c: 234: if (SDA_stat() == RESET) {
                                   1483 ; genIPush
      0091AC 4B 80            [ 1] 1484 	push	#0x80
                           0003A7  1485 	Sswi2c$swi2c_readbit$336 ==.
                                   1486 ; genIPush
      0091AE 4B 0A            [ 1] 1487 	push	#0x0a
                           0003A9  1488 	Sswi2c$swi2c_readbit$337 ==.
      0091B0 4B 50            [ 1] 1489 	push	#0x50
                           0003AB  1490 	Sswi2c$swi2c_readbit$338 ==.
                                   1491 ; genCall
      0091B2 CD 96 C1         [ 4] 1492 	call	_GPIO_ReadInputPin
      0091B5 5B 03            [ 2] 1493 	addw	sp, #3
                           0003B0  1494 	Sswi2c$swi2c_readbit$339 ==.
                                   1495 ; genIfx
      0091B7 4D               [ 1] 1496 	tnz	a
      0091B8 27 03            [ 1] 1497 	jreq	00191$
      0091BA CC 91 C1         [ 2] 1498 	jp	00108$
      0091BD                       1499 00191$:
                           0003B6  1500 	Sswi2c$swi2c_readbit$340 ==.
                           0003B6  1501 	Sswi2c$swi2c_readbit$341 ==.
                                   1502 ;	./src/swi2c.c: 235: retval = 0;
                                   1503 ; genAssign
      0091BD 4F               [ 1] 1504 	clr	a
                           0003B7  1505 	Sswi2c$swi2c_readbit$342 ==.
                                   1506 ; genGoto
      0091BE CC 91 C3         [ 2] 1507 	jp	00109$
                                   1508 ; genLabel
      0091C1                       1509 00108$:
                           0003BA  1510 	Sswi2c$swi2c_readbit$343 ==.
                           0003BA  1511 	Sswi2c$swi2c_readbit$344 ==.
                                   1512 ;	./src/swi2c.c: 237: retval = 1;
                                   1513 ; genAssign
      0091C1 A6 01            [ 1] 1514 	ld	a, #0x01
                           0003BC  1515 	Sswi2c$swi2c_readbit$345 ==.
                                   1516 ; genLabel
      0091C3                       1517 00109$:
                           0003BC  1518 	Sswi2c$swi2c_readbit$346 ==.
                                   1519 ;	./src/swi2c.c: 239: SCL_LOW;
                                   1520 ; genIPush
      0091C3 88               [ 1] 1521 	push	a
                           0003BD  1522 	Sswi2c$swi2c_readbit$347 ==.
      0091C4 4B 40            [ 1] 1523 	push	#0x40
                           0003BF  1524 	Sswi2c$swi2c_readbit$348 ==.
                                   1525 ; genIPush
      0091C6 4B 0A            [ 1] 1526 	push	#0x0a
                           0003C1  1527 	Sswi2c$swi2c_readbit$349 ==.
      0091C8 4B 50            [ 1] 1528 	push	#0x50
                           0003C3  1529 	Sswi2c$swi2c_readbit$350 ==.
                                   1530 ; genCall
      0091CA CD 96 A3         [ 4] 1531 	call	_GPIO_WriteLow
      0091CD 5B 03            [ 2] 1532 	addw	sp, #3
                           0003C8  1533 	Sswi2c$swi2c_readbit$351 ==.
      0091CF 84               [ 1] 1534 	pop	a
                           0003C9  1535 	Sswi2c$swi2c_readbit$352 ==.
                           0003C9  1536 	Sswi2c$swi2c_readbit$353 ==.
                                   1537 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1538 ; genAssign
      0091D0 AE 00 05         [ 2] 1539 	ldw	x, #0x0005
                           0003CC  1540 	Sswi2c$swi2c_readbit$354 ==.
                                   1541 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1542 ;	genInline
      0091D3 9D               [ 1] 1543 	nop
      0091D4 9D               [ 1] 1544 	nop
                           0003CE  1545 	Sswi2c$swi2c_readbit$355 ==.
                           0003CE  1546 	Sswi2c$swi2c_readbit$356 ==.
                                   1547 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1548 ; genAssign
                                   1549 ; genLabel
      0091D5                       1550 00120$:
                           0003CE  1551 	Sswi2c$swi2c_readbit$357 ==.
                                   1552 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1553 ; genMinus
      0091D5 5A               [ 2] 1554 	decw	x
                           0003CF  1555 	Sswi2c$swi2c_readbit$358 ==.
                                   1556 ;	inc/delay.h: 28: } while ( __ticks );
                                   1557 ; genIfx
      0091D6 5D               [ 2] 1558 	tnzw	x
      0091D7 27 03            [ 1] 1559 	jreq	00192$
      0091D9 CC 91 D5         [ 2] 1560 	jp	00120$
      0091DC                       1561 00192$:
                                   1562 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1563 ;	genInline
      0091DC 9D               [ 1] 1564 	nop
                           0003D6  1565 	Sswi2c$swi2c_readbit$359 ==.
                           0003D6  1566 	Sswi2c$swi2c_readbit$360 ==.
                                   1567 ;	./src/swi2c.c: 241: return retval;
                                   1568 ; genReturn
                                   1569 ; genLabel
      0091DD                       1570 00125$:
                           0003D6  1571 	Sswi2c$swi2c_readbit$361 ==.
                                   1572 ;	./src/swi2c.c: 242: }
                                   1573 ; genEndFunction
      0091DD 85               [ 2] 1574 	popw	x
                           0003D7  1575 	Sswi2c$swi2c_readbit$362 ==.
                           0003D7  1576 	Sswi2c$swi2c_readbit$363 ==.
                           0003D7  1577 	XG$swi2c_readbit$0$0 ==.
      0091DE 81               [ 4] 1578 	ret
                           0003D8  1579 	Sswi2c$swi2c_readbit$364 ==.
                           0003D8  1580 	Sswi2c$swi2c_writebit$365 ==.
                                   1581 ;	./src/swi2c.c: 247: uint8_t swi2c_writebit(uint8_t bit)
                                   1582 ; genLabel
                                   1583 ;	-----------------------------------------
                                   1584 ;	 function swi2c_writebit
                                   1585 ;	-----------------------------------------
                                   1586 ;	Register assignment might be sub-optimal.
                                   1587 ;	Stack space usage: 2 bytes.
      0091DF                       1588 _swi2c_writebit:
                           0003D8  1589 	Sswi2c$swi2c_writebit$366 ==.
      0091DF 89               [ 2] 1590 	pushw	x
                           0003D9  1591 	Sswi2c$swi2c_writebit$367 ==.
                           0003D9  1592 	Sswi2c$swi2c_writebit$368 ==.
                                   1593 ;	./src/swi2c.c: 249: uint16_t timeout = SWI2C_TIMEOUT;
                                   1594 ; genAssign
      0091E0 AE FF FF         [ 2] 1595 	ldw	x, #0xffff
      0091E3 1F 01            [ 2] 1596 	ldw	(0x01, sp), x
                           0003DE  1597 	Sswi2c$swi2c_writebit$369 ==.
                                   1598 ;	./src/swi2c.c: 250: if (bit) {
                                   1599 ; genIfx
      0091E5 0D 05            [ 1] 1600 	tnz	(0x05, sp)
      0091E7 26 03            [ 1] 1601 	jrne	00186$
      0091E9 CC 91 FA         [ 2] 1602 	jp	00102$
      0091EC                       1603 00186$:
                           0003E5  1604 	Sswi2c$swi2c_writebit$370 ==.
                           0003E5  1605 	Sswi2c$swi2c_writebit$371 ==.
                                   1606 ;	./src/swi2c.c: 251: SDA_HIGH;
                                   1607 ; genIPush
      0091EC 4B 80            [ 1] 1608 	push	#0x80
                           0003E7  1609 	Sswi2c$swi2c_writebit$372 ==.
                                   1610 ; genIPush
      0091EE 4B 0A            [ 1] 1611 	push	#0x0a
                           0003E9  1612 	Sswi2c$swi2c_writebit$373 ==.
      0091F0 4B 50            [ 1] 1613 	push	#0x50
                           0003EB  1614 	Sswi2c$swi2c_writebit$374 ==.
                                   1615 ; genCall
      0091F2 CD 96 9C         [ 4] 1616 	call	_GPIO_WriteHigh
      0091F5 5B 03            [ 2] 1617 	addw	sp, #3
                           0003F0  1618 	Sswi2c$swi2c_writebit$375 ==.
                           0003F0  1619 	Sswi2c$swi2c_writebit$376 ==.
                                   1620 ; genGoto
      0091F7 CC 92 05         [ 2] 1621 	jp	00103$
                                   1622 ; genLabel
      0091FA                       1623 00102$:
                           0003F3  1624 	Sswi2c$swi2c_writebit$377 ==.
                           0003F3  1625 	Sswi2c$swi2c_writebit$378 ==.
                                   1626 ;	./src/swi2c.c: 253: SDA_LOW;
                                   1627 ; genIPush
      0091FA 4B 80            [ 1] 1628 	push	#0x80
                           0003F5  1629 	Sswi2c$swi2c_writebit$379 ==.
                                   1630 ; genIPush
      0091FC 4B 0A            [ 1] 1631 	push	#0x0a
                           0003F7  1632 	Sswi2c$swi2c_writebit$380 ==.
      0091FE 4B 50            [ 1] 1633 	push	#0x50
                           0003F9  1634 	Sswi2c$swi2c_writebit$381 ==.
                                   1635 ; genCall
      009200 CD 96 A3         [ 4] 1636 	call	_GPIO_WriteLow
      009203 5B 03            [ 2] 1637 	addw	sp, #3
                           0003FE  1638 	Sswi2c$swi2c_writebit$382 ==.
                           0003FE  1639 	Sswi2c$swi2c_writebit$383 ==.
                                   1640 ; genLabel
      009205                       1641 00103$:
                           0003FE  1642 	Sswi2c$swi2c_writebit$384 ==.
                                   1643 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1644 ; genAssign
      009205 AE 00 05         [ 2] 1645 	ldw	x, #0x0005
                           000401  1646 	Sswi2c$swi2c_writebit$385 ==.
                                   1647 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1648 ;	genInline
      009208 9D               [ 1] 1649 	nop
      009209 9D               [ 1] 1650 	nop
                           000403  1651 	Sswi2c$swi2c_writebit$386 ==.
                           000403  1652 	Sswi2c$swi2c_writebit$387 ==.
                                   1653 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1654 ; genAssign
                                   1655 ; genLabel
      00920A                       1656 00110$:
                           000403  1657 	Sswi2c$swi2c_writebit$388 ==.
                                   1658 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1659 ; genMinus
      00920A 5A               [ 2] 1660 	decw	x
                           000404  1661 	Sswi2c$swi2c_writebit$389 ==.
                                   1662 ;	inc/delay.h: 28: } while ( __ticks );
                                   1663 ; genIfx
      00920B 5D               [ 2] 1664 	tnzw	x
      00920C 27 03            [ 1] 1665 	jreq	00187$
      00920E CC 92 0A         [ 2] 1666 	jp	00110$
      009211                       1667 00187$:
                                   1668 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1669 ;	genInline
      009211 9D               [ 1] 1670 	nop
                           00040B  1671 	Sswi2c$swi2c_writebit$390 ==.
                           00040B  1672 	Sswi2c$swi2c_writebit$391 ==.
                                   1673 ;	./src/swi2c.c: 256: SCL_HIGH;
                                   1674 ; genIPush
      009212 4B 40            [ 1] 1675 	push	#0x40
                           00040D  1676 	Sswi2c$swi2c_writebit$392 ==.
                                   1677 ; genIPush
      009214 4B 0A            [ 1] 1678 	push	#0x0a
                           00040F  1679 	Sswi2c$swi2c_writebit$393 ==.
      009216 4B 50            [ 1] 1680 	push	#0x50
                           000411  1681 	Sswi2c$swi2c_writebit$394 ==.
                                   1682 ; genCall
      009218 CD 96 9C         [ 4] 1683 	call	_GPIO_WriteHigh
      00921B 5B 03            [ 2] 1684 	addw	sp, #3
                           000416  1685 	Sswi2c$swi2c_writebit$395 ==.
                           000416  1686 	Sswi2c$swi2c_writebit$396 ==.
                                   1687 ;	./src/swi2c.c: 257: while (SCL_stat() == RESET && timeout) {
                                   1688 ; genAssign
      00921D 1E 01            [ 2] 1689 	ldw	x, (0x01, sp)
                                   1690 ; genLabel
      00921F                       1691 00105$:
                                   1692 ; genIPush
      00921F 89               [ 2] 1693 	pushw	x
                           000419  1694 	Sswi2c$swi2c_writebit$397 ==.
      009220 4B 40            [ 1] 1695 	push	#0x40
                           00041B  1696 	Sswi2c$swi2c_writebit$398 ==.
                                   1697 ; genIPush
      009222 4B 0A            [ 1] 1698 	push	#0x0a
                           00041D  1699 	Sswi2c$swi2c_writebit$399 ==.
      009224 4B 50            [ 1] 1700 	push	#0x50
                           00041F  1701 	Sswi2c$swi2c_writebit$400 ==.
                                   1702 ; genCall
      009226 CD 96 C1         [ 4] 1703 	call	_GPIO_ReadInputPin
      009229 5B 03            [ 2] 1704 	addw	sp, #3
                           000424  1705 	Sswi2c$swi2c_writebit$401 ==.
      00922B 85               [ 2] 1706 	popw	x
                           000425  1707 	Sswi2c$swi2c_writebit$402 ==.
                                   1708 ; genIfx
      00922C 4D               [ 1] 1709 	tnz	a
      00922D 27 03            [ 1] 1710 	jreq	00188$
      00922F CC 92 3C         [ 2] 1711 	jp	00139$
      009232                       1712 00188$:
                                   1713 ; genIfx
      009232 5D               [ 2] 1714 	tnzw	x
      009233 26 03            [ 1] 1715 	jrne	00189$
      009235 CC 92 3C         [ 2] 1716 	jp	00139$
      009238                       1717 00189$:
                           000431  1718 	Sswi2c$swi2c_writebit$403 ==.
                           000431  1719 	Sswi2c$swi2c_writebit$404 ==.
                                   1720 ;	./src/swi2c.c: 258: timeout--;
                                   1721 ; genMinus
      009238 5A               [ 2] 1722 	decw	x
                           000432  1723 	Sswi2c$swi2c_writebit$405 ==.
                                   1724 ; genGoto
      009239 CC 92 1F         [ 2] 1725 	jp	00105$
                                   1726 ; genLabel
      00923C                       1727 00139$:
                                   1728 ; genAssign
      00923C 1F 01            [ 2] 1729 	ldw	(0x01, sp), x
                           000437  1730 	Sswi2c$swi2c_writebit$406 ==.
                                   1731 ;	./src/swi2c.c: 260: if (timeout == 0) {
                                   1732 ; genIfx
      00923E 1E 01            [ 2] 1733 	ldw	x, (0x01, sp)
      009240 27 03            [ 1] 1734 	jreq	00190$
      009242 CC 92 55         [ 2] 1735 	jp	00109$
      009245                       1736 00190$:
                           00043E  1737 	Sswi2c$swi2c_writebit$407 ==.
                           00043E  1738 	Sswi2c$swi2c_writebit$408 ==.
                                   1739 ;	./src/swi2c.c: 261: SDA_HIGH;
                                   1740 ; genIPush
      009245 4B 80            [ 1] 1741 	push	#0x80
                           000440  1742 	Sswi2c$swi2c_writebit$409 ==.
                                   1743 ; genIPush
      009247 4B 0A            [ 1] 1744 	push	#0x0a
                           000442  1745 	Sswi2c$swi2c_writebit$410 ==.
      009249 4B 50            [ 1] 1746 	push	#0x50
                           000444  1747 	Sswi2c$swi2c_writebit$411 ==.
                                   1748 ; genCall
      00924B CD 96 9C         [ 4] 1749 	call	_GPIO_WriteHigh
      00924E 5B 03            [ 2] 1750 	addw	sp, #3
                           000449  1751 	Sswi2c$swi2c_writebit$412 ==.
                           000449  1752 	Sswi2c$swi2c_writebit$413 ==.
                                   1753 ;	./src/swi2c.c: 262: return 0xff;
                                   1754 ; genReturn
      009250 A6 FF            [ 1] 1755 	ld	a, #0xff
      009252 CC 92 7B         [ 2] 1756 	jp	00125$
                           00044E  1757 	Sswi2c$swi2c_writebit$414 ==.
                                   1758 ; genLabel
      009255                       1759 00109$:
                           00044E  1760 	Sswi2c$swi2c_writebit$415 ==.
                                   1761 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1762 ; genAssign
      009255 AE 00 05         [ 2] 1763 	ldw	x, #0x0005
                           000451  1764 	Sswi2c$swi2c_writebit$416 ==.
                                   1765 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1766 ;	genInline
      009258 9D               [ 1] 1767 	nop
      009259 9D               [ 1] 1768 	nop
                           000453  1769 	Sswi2c$swi2c_writebit$417 ==.
                           000453  1770 	Sswi2c$swi2c_writebit$418 ==.
                                   1771 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1772 ; genAssign
                                   1773 ; genLabel
      00925A                       1774 00115$:
                           000453  1775 	Sswi2c$swi2c_writebit$419 ==.
                                   1776 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1777 ; genMinus
      00925A 5A               [ 2] 1778 	decw	x
                           000454  1779 	Sswi2c$swi2c_writebit$420 ==.
                                   1780 ;	inc/delay.h: 28: } while ( __ticks );
                                   1781 ; genIfx
      00925B 5D               [ 2] 1782 	tnzw	x
      00925C 27 03            [ 1] 1783 	jreq	00191$
      00925E CC 92 5A         [ 2] 1784 	jp	00115$
      009261                       1785 00191$:
                                   1786 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1787 ;	genInline
      009261 9D               [ 1] 1788 	nop
                           00045B  1789 	Sswi2c$swi2c_writebit$421 ==.
                           00045B  1790 	Sswi2c$swi2c_writebit$422 ==.
                                   1791 ;	./src/swi2c.c: 265: SCL_LOW;
                                   1792 ; genIPush
      009262 4B 40            [ 1] 1793 	push	#0x40
                           00045D  1794 	Sswi2c$swi2c_writebit$423 ==.
                                   1795 ; genIPush
      009264 4B 0A            [ 1] 1796 	push	#0x0a
                           00045F  1797 	Sswi2c$swi2c_writebit$424 ==.
      009266 4B 50            [ 1] 1798 	push	#0x50
                           000461  1799 	Sswi2c$swi2c_writebit$425 ==.
                                   1800 ; genCall
      009268 CD 96 A3         [ 4] 1801 	call	_GPIO_WriteLow
      00926B 5B 03            [ 2] 1802 	addw	sp, #3
                           000466  1803 	Sswi2c$swi2c_writebit$426 ==.
                           000466  1804 	Sswi2c$swi2c_writebit$427 ==.
                                   1805 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1806 ; genAssign
      00926D AE 00 05         [ 2] 1807 	ldw	x, #0x0005
                           000469  1808 	Sswi2c$swi2c_writebit$428 ==.
                                   1809 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1810 ;	genInline
      009270 9D               [ 1] 1811 	nop
      009271 9D               [ 1] 1812 	nop
                           00046B  1813 	Sswi2c$swi2c_writebit$429 ==.
                           00046B  1814 	Sswi2c$swi2c_writebit$430 ==.
                                   1815 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1816 ; genAssign
                                   1817 ; genLabel
      009272                       1818 00120$:
                           00046B  1819 	Sswi2c$swi2c_writebit$431 ==.
                                   1820 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1821 ; genMinus
      009272 5A               [ 2] 1822 	decw	x
                           00046C  1823 	Sswi2c$swi2c_writebit$432 ==.
                                   1824 ;	inc/delay.h: 28: } while ( __ticks );
                                   1825 ; genIfx
      009273 5D               [ 2] 1826 	tnzw	x
      009274 27 03            [ 1] 1827 	jreq	00192$
      009276 CC 92 72         [ 2] 1828 	jp	00120$
      009279                       1829 00192$:
                                   1830 ;	inc/delay.h: 29: __asm__("nop\n");
                                   1831 ;	genInline
      009279 9D               [ 1] 1832 	nop
                           000473  1833 	Sswi2c$swi2c_writebit$433 ==.
                           000473  1834 	Sswi2c$swi2c_writebit$434 ==.
                                   1835 ;	./src/swi2c.c: 267: return 0;
                                   1836 ; genReturn
      00927A 4F               [ 1] 1837 	clr	a
                                   1838 ; genLabel
      00927B                       1839 00125$:
                           000474  1840 	Sswi2c$swi2c_writebit$435 ==.
                                   1841 ;	./src/swi2c.c: 268: }
                                   1842 ; genEndFunction
      00927B 85               [ 2] 1843 	popw	x
                           000475  1844 	Sswi2c$swi2c_writebit$436 ==.
                           000475  1845 	Sswi2c$swi2c_writebit$437 ==.
                           000475  1846 	XG$swi2c_writebit$0$0 ==.
      00927C 81               [ 4] 1847 	ret
                           000476  1848 	Sswi2c$swi2c_writebit$438 ==.
                           000476  1849 	Sswi2c$swi2c_RESTART$439 ==.
                                   1850 ;	./src/swi2c.c: 273: uint8_t swi2c_RESTART(void)
                                   1851 ; genLabel
                                   1852 ;	-----------------------------------------
                                   1853 ;	 function swi2c_RESTART
                                   1854 ;	-----------------------------------------
                                   1855 ;	Register assignment might be sub-optimal.
                                   1856 ;	Stack space usage: 2 bytes.
      00927D                       1857 _swi2c_RESTART:
                           000476  1858 	Sswi2c$swi2c_RESTART$440 ==.
      00927D 89               [ 2] 1859 	pushw	x
                           000477  1860 	Sswi2c$swi2c_RESTART$441 ==.
                           000477  1861 	Sswi2c$swi2c_RESTART$442 ==.
                                   1862 ;	./src/swi2c.c: 275: uint16_t timeout = SWI2C_TIMEOUT;
                                   1863 ; genAssign
      00927E 5F               [ 1] 1864 	clrw	x
      00927F 5A               [ 2] 1865 	decw	x
                           000479  1866 	Sswi2c$swi2c_RESTART$443 ==.
                                   1867 ;	./src/swi2c.c: 276: SCL_LOW;
                                   1868 ; genIPush
      009280 89               [ 2] 1869 	pushw	x
                           00047A  1870 	Sswi2c$swi2c_RESTART$444 ==.
      009281 4B 40            [ 1] 1871 	push	#0x40
                           00047C  1872 	Sswi2c$swi2c_RESTART$445 ==.
                                   1873 ; genIPush
      009283 4B 0A            [ 1] 1874 	push	#0x0a
                           00047E  1875 	Sswi2c$swi2c_RESTART$446 ==.
      009285 4B 50            [ 1] 1876 	push	#0x50
                           000480  1877 	Sswi2c$swi2c_RESTART$447 ==.
                                   1878 ; genCall
      009287 CD 96 A3         [ 4] 1879 	call	_GPIO_WriteLow
      00928A 5B 03            [ 2] 1880 	addw	sp, #3
                           000485  1881 	Sswi2c$swi2c_RESTART$448 ==.
      00928C 85               [ 2] 1882 	popw	x
                           000486  1883 	Sswi2c$swi2c_RESTART$449 ==.
                           000486  1884 	Sswi2c$swi2c_RESTART$450 ==.
                                   1885 ;	./src/swi2c.c: 277: SDA_HIGH;
                                   1886 ; genIPush
      00928D 89               [ 2] 1887 	pushw	x
                           000487  1888 	Sswi2c$swi2c_RESTART$451 ==.
      00928E 4B 80            [ 1] 1889 	push	#0x80
                           000489  1890 	Sswi2c$swi2c_RESTART$452 ==.
                                   1891 ; genIPush
      009290 4B 0A            [ 1] 1892 	push	#0x0a
                           00048B  1893 	Sswi2c$swi2c_RESTART$453 ==.
      009292 4B 50            [ 1] 1894 	push	#0x50
                           00048D  1895 	Sswi2c$swi2c_RESTART$454 ==.
                                   1896 ; genCall
      009294 CD 96 9C         [ 4] 1897 	call	_GPIO_WriteHigh
      009297 5B 03            [ 2] 1898 	addw	sp, #3
                           000492  1899 	Sswi2c$swi2c_RESTART$455 ==.
      009299 85               [ 2] 1900 	popw	x
                           000493  1901 	Sswi2c$swi2c_RESTART$456 ==.
                           000493  1902 	Sswi2c$swi2c_RESTART$457 ==.
                                   1903 ;	./src/swi2c.c: 278: while (SDA_stat() == RESET && timeout) {
                                   1904 ; genAssign
                                   1905 ; genLabel
      00929A                       1906 00102$:
                                   1907 ; genIPush
      00929A 89               [ 2] 1908 	pushw	x
                           000494  1909 	Sswi2c$swi2c_RESTART$458 ==.
      00929B 4B 80            [ 1] 1910 	push	#0x80
                           000496  1911 	Sswi2c$swi2c_RESTART$459 ==.
                                   1912 ; genIPush
      00929D 4B 0A            [ 1] 1913 	push	#0x0a
                           000498  1914 	Sswi2c$swi2c_RESTART$460 ==.
      00929F 4B 50            [ 1] 1915 	push	#0x50
                           00049A  1916 	Sswi2c$swi2c_RESTART$461 ==.
                                   1917 ; genCall
      0092A1 CD 96 C1         [ 4] 1918 	call	_GPIO_ReadInputPin
      0092A4 5B 03            [ 2] 1919 	addw	sp, #3
                           00049F  1920 	Sswi2c$swi2c_RESTART$462 ==.
      0092A6 85               [ 2] 1921 	popw	x
                           0004A0  1922 	Sswi2c$swi2c_RESTART$463 ==.
                                   1923 ; genIfx
      0092A7 4D               [ 1] 1924 	tnz	a
      0092A8 27 03            [ 1] 1925 	jreq	00221$
      0092AA CC 92 B7         [ 2] 1926 	jp	00151$
      0092AD                       1927 00221$:
                                   1928 ; genIfx
      0092AD 5D               [ 2] 1929 	tnzw	x
      0092AE 26 03            [ 1] 1930 	jrne	00222$
      0092B0 CC 92 B7         [ 2] 1931 	jp	00151$
      0092B3                       1932 00222$:
                           0004AC  1933 	Sswi2c$swi2c_RESTART$464 ==.
                           0004AC  1934 	Sswi2c$swi2c_RESTART$465 ==.
                                   1935 ;	./src/swi2c.c: 279: timeout--;
                                   1936 ; genMinus
      0092B3 5A               [ 2] 1937 	decw	x
                           0004AD  1938 	Sswi2c$swi2c_RESTART$466 ==.
                                   1939 ; genGoto
      0092B4 CC 92 9A         [ 2] 1940 	jp	00102$
                                   1941 ; genLabel
      0092B7                       1942 00151$:
                                   1943 ; genAssign
      0092B7 1F 01            [ 2] 1944 	ldw	(0x01, sp), x
                           0004B2  1945 	Sswi2c$swi2c_RESTART$467 ==.
                                   1946 ;	./src/swi2c.c: 281: if (timeout == 0) {
                                   1947 ; genIfx
      0092B9 1E 01            [ 2] 1948 	ldw	x, (0x01, sp)
      0092BB 27 03            [ 1] 1949 	jreq	00223$
      0092BD CC 92 D0         [ 2] 1950 	jp	00106$
      0092C0                       1951 00223$:
                           0004B9  1952 	Sswi2c$swi2c_RESTART$468 ==.
                           0004B9  1953 	Sswi2c$swi2c_RESTART$469 ==.
                                   1954 ;	./src/swi2c.c: 282: SCL_HIGH;
                                   1955 ; genIPush
      0092C0 4B 40            [ 1] 1956 	push	#0x40
                           0004BB  1957 	Sswi2c$swi2c_RESTART$470 ==.
                                   1958 ; genIPush
      0092C2 4B 0A            [ 1] 1959 	push	#0x0a
                           0004BD  1960 	Sswi2c$swi2c_RESTART$471 ==.
      0092C4 4B 50            [ 1] 1961 	push	#0x50
                           0004BF  1962 	Sswi2c$swi2c_RESTART$472 ==.
                                   1963 ; genCall
      0092C6 CD 96 9C         [ 4] 1964 	call	_GPIO_WriteHigh
      0092C9 5B 03            [ 2] 1965 	addw	sp, #3
                           0004C4  1966 	Sswi2c$swi2c_RESTART$473 ==.
                           0004C4  1967 	Sswi2c$swi2c_RESTART$474 ==.
                                   1968 ;	./src/swi2c.c: 283: return 0xff;
                                   1969 ; genReturn
      0092CB A6 FF            [ 1] 1970 	ld	a, #0xff
      0092CD CC 93 50         [ 2] 1971 	jp	00133$
                           0004C9  1972 	Sswi2c$swi2c_RESTART$475 ==.
                                   1973 ; genLabel
      0092D0                       1974 00106$:
                           0004C9  1975 	Sswi2c$swi2c_RESTART$476 ==.
                                   1976 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   1977 ; genAssign
      0092D0 AE 00 0B         [ 2] 1978 	ldw	x, #0x000b
                           0004CC  1979 	Sswi2c$swi2c_RESTART$477 ==.
                                   1980 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   1981 ;	genInline
      0092D3 9D               [ 1] 1982 	nop
      0092D4 9D               [ 1] 1983 	nop
                           0004CE  1984 	Sswi2c$swi2c_RESTART$478 ==.
                           0004CE  1985 	Sswi2c$swi2c_RESTART$479 ==.
                                   1986 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   1987 ; genAssign
                                   1988 ; genLabel
      0092D5                       1989 00113$:
                           0004CE  1990 	Sswi2c$swi2c_RESTART$480 ==.
                                   1991 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   1992 ; genMinus
      0092D5 5A               [ 2] 1993 	decw	x
                           0004CF  1994 	Sswi2c$swi2c_RESTART$481 ==.
                                   1995 ;	inc/delay.h: 28: } while ( __ticks );
                                   1996 ; genIfx
      0092D6 5D               [ 2] 1997 	tnzw	x
      0092D7 27 03            [ 1] 1998 	jreq	00224$
      0092D9 CC 92 D5         [ 2] 1999 	jp	00113$
      0092DC                       2000 00224$:
                                   2001 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2002 ;	genInline
      0092DC 9D               [ 1] 2003 	nop
                           0004D6  2004 	Sswi2c$swi2c_RESTART$482 ==.
                           0004D6  2005 	Sswi2c$swi2c_RESTART$483 ==.
                                   2006 ;	./src/swi2c.c: 286: SCL_HIGH;
                                   2007 ; genIPush
      0092DD 4B 40            [ 1] 2008 	push	#0x40
                           0004D8  2009 	Sswi2c$swi2c_RESTART$484 ==.
                                   2010 ; genIPush
      0092DF 4B 0A            [ 1] 2011 	push	#0x0a
                           0004DA  2012 	Sswi2c$swi2c_RESTART$485 ==.
      0092E1 4B 50            [ 1] 2013 	push	#0x50
                           0004DC  2014 	Sswi2c$swi2c_RESTART$486 ==.
                                   2015 ; genCall
      0092E3 CD 96 9C         [ 4] 2016 	call	_GPIO_WriteHigh
      0092E6 5B 03            [ 2] 2017 	addw	sp, #3
                           0004E1  2018 	Sswi2c$swi2c_RESTART$487 ==.
                           0004E1  2019 	Sswi2c$swi2c_RESTART$488 ==.
                                   2020 ;	./src/swi2c.c: 287: while (SCL_stat() == RESET && timeout) {
                                   2021 ; genAssign
      0092E8 1E 01            [ 2] 2022 	ldw	x, (0x01, sp)
                                   2023 ; genLabel
      0092EA                       2024 00108$:
                                   2025 ; genIPush
      0092EA 89               [ 2] 2026 	pushw	x
                           0004E4  2027 	Sswi2c$swi2c_RESTART$489 ==.
      0092EB 4B 40            [ 1] 2028 	push	#0x40
                           0004E6  2029 	Sswi2c$swi2c_RESTART$490 ==.
                                   2030 ; genIPush
      0092ED 4B 0A            [ 1] 2031 	push	#0x0a
                           0004E8  2032 	Sswi2c$swi2c_RESTART$491 ==.
      0092EF 4B 50            [ 1] 2033 	push	#0x50
                           0004EA  2034 	Sswi2c$swi2c_RESTART$492 ==.
                                   2035 ; genCall
      0092F1 CD 96 C1         [ 4] 2036 	call	_GPIO_ReadInputPin
      0092F4 5B 03            [ 2] 2037 	addw	sp, #3
                           0004EF  2038 	Sswi2c$swi2c_RESTART$493 ==.
      0092F6 85               [ 2] 2039 	popw	x
                           0004F0  2040 	Sswi2c$swi2c_RESTART$494 ==.
                                   2041 ; genIfx
      0092F7 4D               [ 1] 2042 	tnz	a
      0092F8 27 03            [ 1] 2043 	jreq	00225$
      0092FA CC 93 07         [ 2] 2044 	jp	00153$
      0092FD                       2045 00225$:
                                   2046 ; genIfx
      0092FD 5D               [ 2] 2047 	tnzw	x
      0092FE 26 03            [ 1] 2048 	jrne	00226$
      009300 CC 93 07         [ 2] 2049 	jp	00153$
      009303                       2050 00226$:
                           0004FC  2051 	Sswi2c$swi2c_RESTART$495 ==.
                           0004FC  2052 	Sswi2c$swi2c_RESTART$496 ==.
                                   2053 ;	./src/swi2c.c: 288: timeout--;
                                   2054 ; genMinus
      009303 5A               [ 2] 2055 	decw	x
                           0004FD  2056 	Sswi2c$swi2c_RESTART$497 ==.
                                   2057 ; genGoto
      009304 CC 92 EA         [ 2] 2058 	jp	00108$
                                   2059 ; genLabel
      009307                       2060 00153$:
                                   2061 ; genAssign
                           000500  2062 	Sswi2c$swi2c_RESTART$498 ==.
                                   2063 ;	./src/swi2c.c: 290: if (timeout == 0) {
                                   2064 ; genIfx
      009307 5D               [ 2] 2065 	tnzw	x
      009308 27 03            [ 1] 2066 	jreq	00227$
      00930A CC 93 12         [ 2] 2067 	jp	00112$
      00930D                       2068 00227$:
                           000506  2069 	Sswi2c$swi2c_RESTART$499 ==.
                           000506  2070 	Sswi2c$swi2c_RESTART$500 ==.
                                   2071 ;	./src/swi2c.c: 291: return 0xff;
                                   2072 ; genReturn
      00930D A6 FF            [ 1] 2073 	ld	a, #0xff
      00930F CC 93 50         [ 2] 2074 	jp	00133$
                           00050B  2075 	Sswi2c$swi2c_RESTART$501 ==.
                                   2076 ; genLabel
      009312                       2077 00112$:
                           00050B  2078 	Sswi2c$swi2c_RESTART$502 ==.
                                   2079 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2080 ; genAssign
      009312 AE 00 0B         [ 2] 2081 	ldw	x, #0x000b
                           00050E  2082 	Sswi2c$swi2c_RESTART$503 ==.
                                   2083 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2084 ;	genInline
      009315 9D               [ 1] 2085 	nop
      009316 9D               [ 1] 2086 	nop
                           000510  2087 	Sswi2c$swi2c_RESTART$504 ==.
                           000510  2088 	Sswi2c$swi2c_RESTART$505 ==.
                                   2089 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2090 ; genAssign
                                   2091 ; genLabel
      009317                       2092 00118$:
                           000510  2093 	Sswi2c$swi2c_RESTART$506 ==.
                                   2094 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2095 ; genMinus
      009317 5A               [ 2] 2096 	decw	x
                           000511  2097 	Sswi2c$swi2c_RESTART$507 ==.
                                   2098 ;	inc/delay.h: 28: } while ( __ticks );
                                   2099 ; genIfx
      009318 5D               [ 2] 2100 	tnzw	x
      009319 27 03            [ 1] 2101 	jreq	00228$
      00931B CC 93 17         [ 2] 2102 	jp	00118$
      00931E                       2103 00228$:
                                   2104 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2105 ;	genInline
      00931E 9D               [ 1] 2106 	nop
                           000518  2107 	Sswi2c$swi2c_RESTART$508 ==.
                           000518  2108 	Sswi2c$swi2c_RESTART$509 ==.
                                   2109 ;	./src/swi2c.c: 294: SDA_LOW;
                                   2110 ; genIPush
      00931F 4B 80            [ 1] 2111 	push	#0x80
                           00051A  2112 	Sswi2c$swi2c_RESTART$510 ==.
                                   2113 ; genIPush
      009321 4B 0A            [ 1] 2114 	push	#0x0a
                           00051C  2115 	Sswi2c$swi2c_RESTART$511 ==.
      009323 4B 50            [ 1] 2116 	push	#0x50
                           00051E  2117 	Sswi2c$swi2c_RESTART$512 ==.
                                   2118 ; genCall
      009325 CD 96 A3         [ 4] 2119 	call	_GPIO_WriteLow
      009328 5B 03            [ 2] 2120 	addw	sp, #3
                           000523  2121 	Sswi2c$swi2c_RESTART$513 ==.
                           000523  2122 	Sswi2c$swi2c_RESTART$514 ==.
                                   2123 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2124 ; genAssign
      00932A AE 00 0B         [ 2] 2125 	ldw	x, #0x000b
                           000526  2126 	Sswi2c$swi2c_RESTART$515 ==.
                                   2127 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2128 ;	genInline
      00932D 9D               [ 1] 2129 	nop
      00932E 9D               [ 1] 2130 	nop
                           000528  2131 	Sswi2c$swi2c_RESTART$516 ==.
                           000528  2132 	Sswi2c$swi2c_RESTART$517 ==.
                                   2133 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2134 ; genAssign
                                   2135 ; genLabel
      00932F                       2136 00123$:
                           000528  2137 	Sswi2c$swi2c_RESTART$518 ==.
                                   2138 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2139 ; genMinus
      00932F 5A               [ 2] 2140 	decw	x
                           000529  2141 	Sswi2c$swi2c_RESTART$519 ==.
                                   2142 ;	inc/delay.h: 28: } while ( __ticks );
                                   2143 ; genIfx
      009330 5D               [ 2] 2144 	tnzw	x
      009331 27 03            [ 1] 2145 	jreq	00229$
      009333 CC 93 2F         [ 2] 2146 	jp	00123$
      009336                       2147 00229$:
                                   2148 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2149 ;	genInline
      009336 9D               [ 1] 2150 	nop
                           000530  2151 	Sswi2c$swi2c_RESTART$520 ==.
                           000530  2152 	Sswi2c$swi2c_RESTART$521 ==.
                                   2153 ;	./src/swi2c.c: 296: SCL_LOW;
                                   2154 ; genIPush
      009337 4B 40            [ 1] 2155 	push	#0x40
                           000532  2156 	Sswi2c$swi2c_RESTART$522 ==.
                                   2157 ; genIPush
      009339 4B 0A            [ 1] 2158 	push	#0x0a
                           000534  2159 	Sswi2c$swi2c_RESTART$523 ==.
      00933B 4B 50            [ 1] 2160 	push	#0x50
                           000536  2161 	Sswi2c$swi2c_RESTART$524 ==.
                                   2162 ; genCall
      00933D CD 96 A3         [ 4] 2163 	call	_GPIO_WriteLow
      009340 5B 03            [ 2] 2164 	addw	sp, #3
                           00053B  2165 	Sswi2c$swi2c_RESTART$525 ==.
                           00053B  2166 	Sswi2c$swi2c_RESTART$526 ==.
                                   2167 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2168 ; genAssign
      009342 AE 00 0B         [ 2] 2169 	ldw	x, #0x000b
                           00053E  2170 	Sswi2c$swi2c_RESTART$527 ==.
                                   2171 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2172 ;	genInline
      009345 9D               [ 1] 2173 	nop
      009346 9D               [ 1] 2174 	nop
                           000540  2175 	Sswi2c$swi2c_RESTART$528 ==.
                           000540  2176 	Sswi2c$swi2c_RESTART$529 ==.
                                   2177 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2178 ; genAssign
                                   2179 ; genLabel
      009347                       2180 00128$:
                           000540  2181 	Sswi2c$swi2c_RESTART$530 ==.
                                   2182 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2183 ; genMinus
      009347 5A               [ 2] 2184 	decw	x
                           000541  2185 	Sswi2c$swi2c_RESTART$531 ==.
                                   2186 ;	inc/delay.h: 28: } while ( __ticks );
                                   2187 ; genIfx
      009348 5D               [ 2] 2188 	tnzw	x
      009349 27 03            [ 1] 2189 	jreq	00230$
      00934B CC 93 47         [ 2] 2190 	jp	00128$
      00934E                       2191 00230$:
                                   2192 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2193 ;	genInline
      00934E 9D               [ 1] 2194 	nop
                           000548  2195 	Sswi2c$swi2c_RESTART$532 ==.
                           000548  2196 	Sswi2c$swi2c_RESTART$533 ==.
                                   2197 ;	./src/swi2c.c: 298: return 0;
                                   2198 ; genReturn
      00934F 4F               [ 1] 2199 	clr	a
                                   2200 ; genLabel
      009350                       2201 00133$:
                           000549  2202 	Sswi2c$swi2c_RESTART$534 ==.
                                   2203 ;	./src/swi2c.c: 299: }
                                   2204 ; genEndFunction
      009350 85               [ 2] 2205 	popw	x
                           00054A  2206 	Sswi2c$swi2c_RESTART$535 ==.
                           00054A  2207 	Sswi2c$swi2c_RESTART$536 ==.
                           00054A  2208 	XG$swi2c_RESTART$0$0 ==.
      009351 81               [ 4] 2209 	ret
                           00054B  2210 	Sswi2c$swi2c_RESTART$537 ==.
                           00054B  2211 	Sswi2c$swi2c_START$538 ==.
                                   2212 ;	./src/swi2c.c: 304: uint8_t swi2c_START(void)
                                   2213 ; genLabel
                                   2214 ;	-----------------------------------------
                                   2215 ;	 function swi2c_START
                                   2216 ;	-----------------------------------------
                                   2217 ;	Register assignment might be sub-optimal.
                                   2218 ;	Stack space usage: 0 bytes.
      009352                       2219 _swi2c_START:
                           00054B  2220 	Sswi2c$swi2c_START$539 ==.
                           00054B  2221 	Sswi2c$swi2c_START$540 ==.
                                   2222 ;	./src/swi2c.c: 306: if (SCL_stat() == RESET || SDA_stat() == RESET) {
                                   2223 ; genIPush
      009352 4B 40            [ 1] 2224 	push	#0x40
                           00054D  2225 	Sswi2c$swi2c_START$541 ==.
                                   2226 ; genIPush
      009354 4B 0A            [ 1] 2227 	push	#0x0a
                           00054F  2228 	Sswi2c$swi2c_START$542 ==.
      009356 4B 50            [ 1] 2229 	push	#0x50
                           000551  2230 	Sswi2c$swi2c_START$543 ==.
                                   2231 ; genCall
      009358 CD 96 C1         [ 4] 2232 	call	_GPIO_ReadInputPin
      00935B 5B 03            [ 2] 2233 	addw	sp, #3
                           000556  2234 	Sswi2c$swi2c_START$544 ==.
                                   2235 ; genIfx
      00935D 4D               [ 1] 2236 	tnz	a
      00935E 26 03            [ 1] 2237 	jrne	00143$
      009360 CC 93 74         [ 2] 2238 	jp	00101$
      009363                       2239 00143$:
                                   2240 ; genIPush
      009363 4B 80            [ 1] 2241 	push	#0x80
                           00055E  2242 	Sswi2c$swi2c_START$545 ==.
                                   2243 ; genIPush
      009365 4B 0A            [ 1] 2244 	push	#0x0a
                           000560  2245 	Sswi2c$swi2c_START$546 ==.
      009367 4B 50            [ 1] 2246 	push	#0x50
                           000562  2247 	Sswi2c$swi2c_START$547 ==.
                                   2248 ; genCall
      009369 CD 96 C1         [ 4] 2249 	call	_GPIO_ReadInputPin
      00936C 5B 03            [ 2] 2250 	addw	sp, #3
                           000567  2251 	Sswi2c$swi2c_START$548 ==.
                                   2252 ; genIfx
      00936E 4D               [ 1] 2253 	tnz	a
      00936F 27 03            [ 1] 2254 	jreq	00144$
      009371 CC 93 8F         [ 2] 2255 	jp	00102$
      009374                       2256 00144$:
                                   2257 ; genLabel
      009374                       2258 00101$:
                           00056D  2259 	Sswi2c$swi2c_START$549 ==.
                           00056D  2260 	Sswi2c$swi2c_START$550 ==.
                                   2261 ;	./src/swi2c.c: 307: SDA_HIGH;
                                   2262 ; genIPush
      009374 4B 80            [ 1] 2263 	push	#0x80
                           00056F  2264 	Sswi2c$swi2c_START$551 ==.
                                   2265 ; genIPush
      009376 4B 0A            [ 1] 2266 	push	#0x0a
                           000571  2267 	Sswi2c$swi2c_START$552 ==.
      009378 4B 50            [ 1] 2268 	push	#0x50
                           000573  2269 	Sswi2c$swi2c_START$553 ==.
                                   2270 ; genCall
      00937A CD 96 9C         [ 4] 2271 	call	_GPIO_WriteHigh
      00937D 5B 03            [ 2] 2272 	addw	sp, #3
                           000578  2273 	Sswi2c$swi2c_START$554 ==.
                           000578  2274 	Sswi2c$swi2c_START$555 ==.
                                   2275 ;	./src/swi2c.c: 308: SCL_HIGH;
                                   2276 ; genIPush
      00937F 4B 40            [ 1] 2277 	push	#0x40
                           00057A  2278 	Sswi2c$swi2c_START$556 ==.
                                   2279 ; genIPush
      009381 4B 0A            [ 1] 2280 	push	#0x0a
                           00057C  2281 	Sswi2c$swi2c_START$557 ==.
      009383 4B 50            [ 1] 2282 	push	#0x50
                           00057E  2283 	Sswi2c$swi2c_START$558 ==.
                                   2284 ; genCall
      009385 CD 96 9C         [ 4] 2285 	call	_GPIO_WriteHigh
      009388 5B 03            [ 2] 2286 	addw	sp, #3
                           000583  2287 	Sswi2c$swi2c_START$559 ==.
                           000583  2288 	Sswi2c$swi2c_START$560 ==.
                                   2289 ;	./src/swi2c.c: 309: return 0xff;
                                   2290 ; genReturn
      00938A A6 FF            [ 1] 2291 	ld	a, #0xff
      00938C CC 93 C0         [ 2] 2292 	jp	00114$
                           000588  2293 	Sswi2c$swi2c_START$561 ==.
                                   2294 ; genLabel
      00938F                       2295 00102$:
                           000588  2296 	Sswi2c$swi2c_START$562 ==.
                                   2297 ;	./src/swi2c.c: 311: SDA_LOW;
                                   2298 ; genIPush
      00938F 4B 80            [ 1] 2299 	push	#0x80
                           00058A  2300 	Sswi2c$swi2c_START$563 ==.
                                   2301 ; genIPush
      009391 4B 0A            [ 1] 2302 	push	#0x0a
                           00058C  2303 	Sswi2c$swi2c_START$564 ==.
      009393 4B 50            [ 1] 2304 	push	#0x50
                           00058E  2305 	Sswi2c$swi2c_START$565 ==.
                                   2306 ; genCall
      009395 CD 96 A3         [ 4] 2307 	call	_GPIO_WriteLow
      009398 5B 03            [ 2] 2308 	addw	sp, #3
                           000593  2309 	Sswi2c$swi2c_START$566 ==.
                           000593  2310 	Sswi2c$swi2c_START$567 ==.
                                   2311 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2312 ; genAssign
      00939A AE 00 0B         [ 2] 2313 	ldw	x, #0x000b
                           000596  2314 	Sswi2c$swi2c_START$568 ==.
                                   2315 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2316 ;	genInline
      00939D 9D               [ 1] 2317 	nop
      00939E 9D               [ 1] 2318 	nop
                           000598  2319 	Sswi2c$swi2c_START$569 ==.
                           000598  2320 	Sswi2c$swi2c_START$570 ==.
                                   2321 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2322 ; genAssign
                                   2323 ; genLabel
      00939F                       2324 00104$:
                           000598  2325 	Sswi2c$swi2c_START$571 ==.
                                   2326 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2327 ; genMinus
      00939F 5A               [ 2] 2328 	decw	x
                           000599  2329 	Sswi2c$swi2c_START$572 ==.
                                   2330 ;	inc/delay.h: 28: } while ( __ticks );
                                   2331 ; genIfx
      0093A0 5D               [ 2] 2332 	tnzw	x
      0093A1 27 03            [ 1] 2333 	jreq	00145$
      0093A3 CC 93 9F         [ 2] 2334 	jp	00104$
      0093A6                       2335 00145$:
                                   2336 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2337 ;	genInline
      0093A6 9D               [ 1] 2338 	nop
                           0005A0  2339 	Sswi2c$swi2c_START$573 ==.
                           0005A0  2340 	Sswi2c$swi2c_START$574 ==.
                                   2341 ;	./src/swi2c.c: 313: SCL_LOW;
                                   2342 ; genIPush
      0093A7 4B 40            [ 1] 2343 	push	#0x40
                           0005A2  2344 	Sswi2c$swi2c_START$575 ==.
                                   2345 ; genIPush
      0093A9 4B 0A            [ 1] 2346 	push	#0x0a
                           0005A4  2347 	Sswi2c$swi2c_START$576 ==.
      0093AB 4B 50            [ 1] 2348 	push	#0x50
                           0005A6  2349 	Sswi2c$swi2c_START$577 ==.
                                   2350 ; genCall
      0093AD CD 96 A3         [ 4] 2351 	call	_GPIO_WriteLow
      0093B0 5B 03            [ 2] 2352 	addw	sp, #3
                           0005AB  2353 	Sswi2c$swi2c_START$578 ==.
                           0005AB  2354 	Sswi2c$swi2c_START$579 ==.
                                   2355 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2356 ; genAssign
      0093B2 AE 00 0B         [ 2] 2357 	ldw	x, #0x000b
                           0005AE  2358 	Sswi2c$swi2c_START$580 ==.
                                   2359 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2360 ;	genInline
      0093B5 9D               [ 1] 2361 	nop
      0093B6 9D               [ 1] 2362 	nop
                           0005B0  2363 	Sswi2c$swi2c_START$581 ==.
                           0005B0  2364 	Sswi2c$swi2c_START$582 ==.
                                   2365 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2366 ; genAssign
                                   2367 ; genLabel
      0093B7                       2368 00109$:
                           0005B0  2369 	Sswi2c$swi2c_START$583 ==.
                                   2370 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2371 ; genMinus
      0093B7 5A               [ 2] 2372 	decw	x
                           0005B1  2373 	Sswi2c$swi2c_START$584 ==.
                                   2374 ;	inc/delay.h: 28: } while ( __ticks );
                                   2375 ; genIfx
      0093B8 5D               [ 2] 2376 	tnzw	x
      0093B9 27 03            [ 1] 2377 	jreq	00146$
      0093BB CC 93 B7         [ 2] 2378 	jp	00109$
      0093BE                       2379 00146$:
                                   2380 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2381 ;	genInline
      0093BE 9D               [ 1] 2382 	nop
                           0005B8  2383 	Sswi2c$swi2c_START$585 ==.
                           0005B8  2384 	Sswi2c$swi2c_START$586 ==.
                                   2385 ;	./src/swi2c.c: 315: return 0;
                                   2386 ; genReturn
      0093BF 4F               [ 1] 2387 	clr	a
                                   2388 ; genLabel
      0093C0                       2389 00114$:
                           0005B9  2390 	Sswi2c$swi2c_START$587 ==.
                                   2391 ;	./src/swi2c.c: 316: }
                                   2392 ; genEndFunction
                           0005B9  2393 	Sswi2c$swi2c_START$588 ==.
                           0005B9  2394 	XG$swi2c_START$0$0 ==.
      0093C0 81               [ 4] 2395 	ret
                           0005BA  2396 	Sswi2c$swi2c_START$589 ==.
                           0005BA  2397 	Sswi2c$swi2c_STOP$590 ==.
                                   2398 ;	./src/swi2c.c: 321: uint8_t swi2c_STOP(void)
                                   2399 ; genLabel
                                   2400 ;	-----------------------------------------
                                   2401 ;	 function swi2c_STOP
                                   2402 ;	-----------------------------------------
                                   2403 ;	Register assignment might be sub-optimal.
                                   2404 ;	Stack space usage: 3 bytes.
      0093C1                       2405 _swi2c_STOP:
                           0005BA  2406 	Sswi2c$swi2c_STOP$591 ==.
      0093C1 52 03            [ 2] 2407 	sub	sp, #3
                           0005BC  2408 	Sswi2c$swi2c_STOP$592 ==.
                           0005BC  2409 	Sswi2c$swi2c_STOP$593 ==.
                                   2410 ;	./src/swi2c.c: 323: uint16_t timeout = SWI2C_TIMEOUT;
                                   2411 ; genAssign
      0093C3 AE FF FF         [ 2] 2412 	ldw	x, #0xffff
      0093C6 1F 01            [ 2] 2413 	ldw	(0x01, sp), x
                           0005C1  2414 	Sswi2c$swi2c_STOP$594 ==.
                                   2415 ;	./src/swi2c.c: 324: uint8_t retval = 0;
                                   2416 ; genAssign
      0093C8 0F 03            [ 1] 2417 	clr	(0x03, sp)
                           0005C3  2418 	Sswi2c$swi2c_STOP$595 ==.
                                   2419 ;	./src/swi2c.c: 325: SDA_LOW;
                                   2420 ; genIPush
      0093CA 4B 80            [ 1] 2421 	push	#0x80
                           0005C5  2422 	Sswi2c$swi2c_STOP$596 ==.
                                   2423 ; genIPush
      0093CC 4B 0A            [ 1] 2424 	push	#0x0a
                           0005C7  2425 	Sswi2c$swi2c_STOP$597 ==.
      0093CE 4B 50            [ 1] 2426 	push	#0x50
                           0005C9  2427 	Sswi2c$swi2c_STOP$598 ==.
                                   2428 ; genCall
      0093D0 CD 96 A3         [ 4] 2429 	call	_GPIO_WriteLow
      0093D3 5B 03            [ 2] 2430 	addw	sp, #3
                           0005CE  2431 	Sswi2c$swi2c_STOP$599 ==.
                           0005CE  2432 	Sswi2c$swi2c_STOP$600 ==.
                                   2433 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2434 ; genAssign
      0093D5 AE 00 0B         [ 2] 2435 	ldw	x, #0x000b
                           0005D1  2436 	Sswi2c$swi2c_STOP$601 ==.
                                   2437 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2438 ;	genInline
      0093D8 9D               [ 1] 2439 	nop
      0093D9 9D               [ 1] 2440 	nop
                           0005D3  2441 	Sswi2c$swi2c_STOP$602 ==.
                           0005D3  2442 	Sswi2c$swi2c_STOP$603 ==.
                                   2443 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2444 ; genAssign
                                   2445 ; genLabel
      0093DA                       2446 00107$:
                           0005D3  2447 	Sswi2c$swi2c_STOP$604 ==.
                                   2448 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2449 ; genMinus
      0093DA 5A               [ 2] 2450 	decw	x
                           0005D4  2451 	Sswi2c$swi2c_STOP$605 ==.
                                   2452 ;	inc/delay.h: 28: } while ( __ticks );
                                   2453 ; genIfx
      0093DB 5D               [ 2] 2454 	tnzw	x
      0093DC 27 03            [ 1] 2455 	jreq	00162$
      0093DE CC 93 DA         [ 2] 2456 	jp	00107$
      0093E1                       2457 00162$:
                                   2458 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2459 ;	genInline
      0093E1 9D               [ 1] 2460 	nop
                           0005DB  2461 	Sswi2c$swi2c_STOP$606 ==.
                           0005DB  2462 	Sswi2c$swi2c_STOP$607 ==.
                                   2463 ;	./src/swi2c.c: 327: SCL_HIGH;
                                   2464 ; genIPush
      0093E2 4B 40            [ 1] 2465 	push	#0x40
                           0005DD  2466 	Sswi2c$swi2c_STOP$608 ==.
                                   2467 ; genIPush
      0093E4 4B 0A            [ 1] 2468 	push	#0x0a
                           0005DF  2469 	Sswi2c$swi2c_STOP$609 ==.
      0093E6 4B 50            [ 1] 2470 	push	#0x50
                           0005E1  2471 	Sswi2c$swi2c_STOP$610 ==.
                                   2472 ; genCall
      0093E8 CD 96 9C         [ 4] 2473 	call	_GPIO_WriteHigh
      0093EB 5B 03            [ 2] 2474 	addw	sp, #3
                           0005E6  2475 	Sswi2c$swi2c_STOP$611 ==.
                           0005E6  2476 	Sswi2c$swi2c_STOP$612 ==.
                                   2477 ;	./src/swi2c.c: 328: while (SCL_stat() == RESET && timeout) {
                                   2478 ; genAssign
      0093ED 1E 01            [ 2] 2479 	ldw	x, (0x01, sp)
                                   2480 ; genLabel
      0093EF                       2481 00102$:
                                   2482 ; genIPush
      0093EF 89               [ 2] 2483 	pushw	x
                           0005E9  2484 	Sswi2c$swi2c_STOP$613 ==.
      0093F0 4B 40            [ 1] 2485 	push	#0x40
                           0005EB  2486 	Sswi2c$swi2c_STOP$614 ==.
                                   2487 ; genIPush
      0093F2 4B 0A            [ 1] 2488 	push	#0x0a
                           0005ED  2489 	Sswi2c$swi2c_STOP$615 ==.
      0093F4 4B 50            [ 1] 2490 	push	#0x50
                           0005EF  2491 	Sswi2c$swi2c_STOP$616 ==.
                                   2492 ; genCall
      0093F6 CD 96 C1         [ 4] 2493 	call	_GPIO_ReadInputPin
      0093F9 5B 03            [ 2] 2494 	addw	sp, #3
                           0005F4  2495 	Sswi2c$swi2c_STOP$617 ==.
      0093FB 85               [ 2] 2496 	popw	x
                           0005F5  2497 	Sswi2c$swi2c_STOP$618 ==.
                                   2498 ; genIfx
      0093FC 4D               [ 1] 2499 	tnz	a
      0093FD 27 03            [ 1] 2500 	jreq	00163$
      0093FF CC 94 0C         [ 2] 2501 	jp	00128$
      009402                       2502 00163$:
                                   2503 ; genIfx
      009402 5D               [ 2] 2504 	tnzw	x
      009403 26 03            [ 1] 2505 	jrne	00164$
      009405 CC 94 0C         [ 2] 2506 	jp	00128$
      009408                       2507 00164$:
                           000601  2508 	Sswi2c$swi2c_STOP$619 ==.
                           000601  2509 	Sswi2c$swi2c_STOP$620 ==.
                                   2510 ;	./src/swi2c.c: 329: timeout--;
                                   2511 ; genMinus
      009408 5A               [ 2] 2512 	decw	x
                           000602  2513 	Sswi2c$swi2c_STOP$621 ==.
                                   2514 ; genGoto
      009409 CC 93 EF         [ 2] 2515 	jp	00102$
                                   2516 ; genLabel
      00940C                       2517 00128$:
                                   2518 ; genAssign
                           000605  2519 	Sswi2c$swi2c_STOP$622 ==.
                                   2520 ;	./src/swi2c.c: 331: if (timeout == 0) {
                                   2521 ; genIfx
      00940C 5D               [ 2] 2522 	tnzw	x
      00940D 27 03            [ 1] 2523 	jreq	00165$
      00940F CC 94 16         [ 2] 2524 	jp	00106$
      009412                       2525 00165$:
                           00060B  2526 	Sswi2c$swi2c_STOP$623 ==.
                           00060B  2527 	Sswi2c$swi2c_STOP$624 ==.
                                   2528 ;	./src/swi2c.c: 332: retval = 0xff;
                                   2529 ; genAssign
      009412 A6 FF            [ 1] 2530 	ld	a, #0xff
      009414 6B 03            [ 1] 2531 	ld	(0x03, sp), a
                           00060F  2532 	Sswi2c$swi2c_STOP$625 ==.
                                   2533 ; genLabel
      009416                       2534 00106$:
                           00060F  2535 	Sswi2c$swi2c_STOP$626 ==.
                                   2536 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2537 ; genAssign
      009416 AE 00 0B         [ 2] 2538 	ldw	x, #0x000b
                           000612  2539 	Sswi2c$swi2c_STOP$627 ==.
                                   2540 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2541 ;	genInline
      009419 9D               [ 1] 2542 	nop
      00941A 9D               [ 1] 2543 	nop
                           000614  2544 	Sswi2c$swi2c_STOP$628 ==.
                           000614  2545 	Sswi2c$swi2c_STOP$629 ==.
                                   2546 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2547 ; genAssign
                                   2548 ; genLabel
      00941B                       2549 00112$:
                           000614  2550 	Sswi2c$swi2c_STOP$630 ==.
                                   2551 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2552 ; genMinus
      00941B 5A               [ 2] 2553 	decw	x
                           000615  2554 	Sswi2c$swi2c_STOP$631 ==.
                                   2555 ;	inc/delay.h: 28: } while ( __ticks );
                                   2556 ; genIfx
      00941C 5D               [ 2] 2557 	tnzw	x
      00941D 27 03            [ 1] 2558 	jreq	00166$
      00941F CC 94 1B         [ 2] 2559 	jp	00112$
      009422                       2560 00166$:
                                   2561 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2562 ;	genInline
      009422 9D               [ 1] 2563 	nop
                           00061C  2564 	Sswi2c$swi2c_STOP$632 ==.
                           00061C  2565 	Sswi2c$swi2c_STOP$633 ==.
                                   2566 ;	./src/swi2c.c: 335: SDA_HIGH;
                                   2567 ; genIPush
      009423 4B 80            [ 1] 2568 	push	#0x80
                           00061E  2569 	Sswi2c$swi2c_STOP$634 ==.
                                   2570 ; genIPush
      009425 4B 0A            [ 1] 2571 	push	#0x0a
                           000620  2572 	Sswi2c$swi2c_STOP$635 ==.
      009427 4B 50            [ 1] 2573 	push	#0x50
                           000622  2574 	Sswi2c$swi2c_STOP$636 ==.
                                   2575 ; genCall
      009429 CD 96 9C         [ 4] 2576 	call	_GPIO_WriteHigh
      00942C 5B 03            [ 2] 2577 	addw	sp, #3
                           000627  2578 	Sswi2c$swi2c_STOP$637 ==.
                           000627  2579 	Sswi2c$swi2c_STOP$638 ==.
                                   2580 ;	./src/swi2c.c: 336: return retval;
                                   2581 ; genReturn
      00942E 7B 03            [ 1] 2582 	ld	a, (0x03, sp)
                                   2583 ; genLabel
      009430                       2584 00117$:
                           000629  2585 	Sswi2c$swi2c_STOP$639 ==.
                                   2586 ;	./src/swi2c.c: 337: }
                                   2587 ; genEndFunction
      009430 5B 03            [ 2] 2588 	addw	sp, #3
                           00062B  2589 	Sswi2c$swi2c_STOP$640 ==.
                           00062B  2590 	Sswi2c$swi2c_STOP$641 ==.
                           00062B  2591 	XG$swi2c_STOP$0$0 ==.
      009432 81               [ 4] 2592 	ret
                           00062C  2593 	Sswi2c$swi2c_STOP$642 ==.
                           00062C  2594 	Sswi2c$swi2c_recover$643 ==.
                                   2595 ;	./src/swi2c.c: 343: uint8_t swi2c_recover(void)
                                   2596 ; genLabel
                                   2597 ;	-----------------------------------------
                                   2598 ;	 function swi2c_recover
                                   2599 ;	-----------------------------------------
                                   2600 ;	Register assignment might be sub-optimal.
                                   2601 ;	Stack space usage: 3 bytes.
      009433                       2602 _swi2c_recover:
                           00062C  2603 	Sswi2c$swi2c_recover$644 ==.
      009433 52 03            [ 2] 2604 	sub	sp, #3
                           00062E  2605 	Sswi2c$swi2c_recover$645 ==.
                           00062E  2606 	Sswi2c$swi2c_recover$646 ==.
                                   2607 ;	./src/swi2c.c: 345: uint16_t timeout = SWI2C_TIMEOUT;
                                   2608 ; genAssign
      009435 AE FF FF         [ 2] 2609 	ldw	x, #0xffff
      009438 1F 01            [ 2] 2610 	ldw	(0x01, sp), x
                           000633  2611 	Sswi2c$swi2c_recover$647 ==.
                                   2612 ;	./src/swi2c.c: 347: SCL_HIGH;                   // release both lines
                                   2613 ; genIPush
      00943A 4B 40            [ 1] 2614 	push	#0x40
                           000635  2615 	Sswi2c$swi2c_recover$648 ==.
                                   2616 ; genIPush
      00943C 4B 0A            [ 1] 2617 	push	#0x0a
                           000637  2618 	Sswi2c$swi2c_recover$649 ==.
      00943E 4B 50            [ 1] 2619 	push	#0x50
                           000639  2620 	Sswi2c$swi2c_recover$650 ==.
                                   2621 ; genCall
      009440 CD 96 9C         [ 4] 2622 	call	_GPIO_WriteHigh
      009443 5B 03            [ 2] 2623 	addw	sp, #3
                           00063E  2624 	Sswi2c$swi2c_recover$651 ==.
                           00063E  2625 	Sswi2c$swi2c_recover$652 ==.
                                   2626 ;	./src/swi2c.c: 348: SDA_HIGH;
                                   2627 ; genIPush
      009445 4B 80            [ 1] 2628 	push	#0x80
                           000640  2629 	Sswi2c$swi2c_recover$653 ==.
                                   2630 ; genIPush
      009447 4B 0A            [ 1] 2631 	push	#0x0a
                           000642  2632 	Sswi2c$swi2c_recover$654 ==.
      009449 4B 50            [ 1] 2633 	push	#0x50
                           000644  2634 	Sswi2c$swi2c_recover$655 ==.
                                   2635 ; genCall
      00944B CD 96 9C         [ 4] 2636 	call	_GPIO_WriteHigh
      00944E 5B 03            [ 2] 2637 	addw	sp, #3
                           000649  2638 	Sswi2c$swi2c_recover$656 ==.
                           000649  2639 	Sswi2c$swi2c_recover$657 ==.
                                   2640 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2641 ; genAssign
      009450 AE 00 05         [ 2] 2642 	ldw	x, #0x0005
                           00064C  2643 	Sswi2c$swi2c_recover$658 ==.
                                   2644 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2645 ;	genInline
      009453 9D               [ 1] 2646 	nop
      009454 9D               [ 1] 2647 	nop
                           00064E  2648 	Sswi2c$swi2c_recover$659 ==.
                           00064E  2649 	Sswi2c$swi2c_recover$660 ==.
                                   2650 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2651 ; genAssign
                                   2652 ; genLabel
      009455                       2653 00115$:
                           00064E  2654 	Sswi2c$swi2c_recover$661 ==.
                                   2655 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2656 ; genMinus
      009455 5A               [ 2] 2657 	decw	x
                           00064F  2658 	Sswi2c$swi2c_recover$662 ==.
                                   2659 ;	inc/delay.h: 28: } while ( __ticks );
                                   2660 ; genIfx
      009456 5D               [ 2] 2661 	tnzw	x
      009457 27 03            [ 1] 2662 	jreq	00218$
      009459 CC 94 55         [ 2] 2663 	jp	00115$
      00945C                       2664 00218$:
                                   2665 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2666 ;	genInline
      00945C 9D               [ 1] 2667 	nop
                           000656  2668 	Sswi2c$swi2c_recover$663 ==.
                           000656  2669 	Sswi2c$swi2c_recover$664 ==.
                                   2670 ;	./src/swi2c.c: 351: if (SCL_stat() != RESET && SDA_stat() != RESET) {
                                   2671 ; genIPush
      00945D 4B 40            [ 1] 2672 	push	#0x40
                           000658  2673 	Sswi2c$swi2c_recover$665 ==.
                                   2674 ; genIPush
      00945F 4B 0A            [ 1] 2675 	push	#0x0a
                           00065A  2676 	Sswi2c$swi2c_recover$666 ==.
      009461 4B 50            [ 1] 2677 	push	#0x50
                           00065C  2678 	Sswi2c$swi2c_recover$667 ==.
                                   2679 ; genCall
      009463 CD 96 C1         [ 4] 2680 	call	_GPIO_ReadInputPin
      009466 5B 03            [ 2] 2681 	addw	sp, #3
                           000661  2682 	Sswi2c$swi2c_recover$668 ==.
                                   2683 ; genIfx
      009468 4D               [ 1] 2684 	tnz	a
      009469 26 03            [ 1] 2685 	jrne	00219$
      00946B CC 94 83         [ 2] 2686 	jp	00102$
      00946E                       2687 00219$:
                                   2688 ; genIPush
      00946E 4B 80            [ 1] 2689 	push	#0x80
                           000669  2690 	Sswi2c$swi2c_recover$669 ==.
                                   2691 ; genIPush
      009470 4B 0A            [ 1] 2692 	push	#0x0a
                           00066B  2693 	Sswi2c$swi2c_recover$670 ==.
      009472 4B 50            [ 1] 2694 	push	#0x50
                           00066D  2695 	Sswi2c$swi2c_recover$671 ==.
                                   2696 ; genCall
      009474 CD 96 C1         [ 4] 2697 	call	_GPIO_ReadInputPin
      009477 5B 03            [ 2] 2698 	addw	sp, #3
                           000672  2699 	Sswi2c$swi2c_recover$672 ==.
                                   2700 ; genIfx
      009479 4D               [ 1] 2701 	tnz	a
      00947A 26 03            [ 1] 2702 	jrne	00220$
      00947C CC 94 83         [ 2] 2703 	jp	00102$
      00947F                       2704 00220$:
                           000678  2705 	Sswi2c$swi2c_recover$673 ==.
                           000678  2706 	Sswi2c$swi2c_recover$674 ==.
                                   2707 ;	./src/swi2c.c: 352: return 0;
                                   2708 ; genReturn
      00947F 4F               [ 1] 2709 	clr	a
      009480 CC 95 19         [ 2] 2710 	jp	00132$
                           00067C  2711 	Sswi2c$swi2c_recover$675 ==.
                                   2712 ; genLabel
      009483                       2713 00102$:
                           00067C  2714 	Sswi2c$swi2c_recover$676 ==.
                                   2715 ;	./src/swi2c.c: 355: if (SDA_stat() == RESET) {
                                   2716 ; genIPush
      009483 4B 80            [ 1] 2717 	push	#0x80
                           00067E  2718 	Sswi2c$swi2c_recover$677 ==.
                                   2719 ; genIPush
      009485 4B 0A            [ 1] 2720 	push	#0x0a
                           000680  2721 	Sswi2c$swi2c_recover$678 ==.
      009487 4B 50            [ 1] 2722 	push	#0x50
                           000682  2723 	Sswi2c$swi2c_recover$679 ==.
                                   2724 ; genCall
      009489 CD 96 C1         [ 4] 2725 	call	_GPIO_ReadInputPin
      00948C 5B 03            [ 2] 2726 	addw	sp, #3
                           000687  2727 	Sswi2c$swi2c_recover$680 ==.
                                   2728 ; genIfx
      00948E 4D               [ 1] 2729 	tnz	a
      00948F 27 03            [ 1] 2730 	jreq	00221$
      009491 CC 95 19         [ 2] 2731 	jp	00132$
      009494                       2732 00221$:
                           00068D  2733 	Sswi2c$swi2c_recover$681 ==.
                                   2734 ;	./src/swi2c.c: 356: for (i = 0; i < 9; i++) {       // try nine times try to read one bit and pray for SDA release
                                   2735 ; genAssign
      009494 0F 03            [ 1] 2736 	clr	(0x03, sp)
                                   2737 ; genLabel
      009496                       2738 00130$:
                           00068F  2739 	Sswi2c$swi2c_recover$682 ==.
                           00068F  2740 	Sswi2c$swi2c_recover$683 ==.
                                   2741 ;	./src/swi2c.c: 357: SCL_LOW;
                                   2742 ; genIPush
      009496 4B 40            [ 1] 2743 	push	#0x40
                           000691  2744 	Sswi2c$swi2c_recover$684 ==.
                                   2745 ; genIPush
      009498 4B 0A            [ 1] 2746 	push	#0x0a
                           000693  2747 	Sswi2c$swi2c_recover$685 ==.
      00949A 4B 50            [ 1] 2748 	push	#0x50
                           000695  2749 	Sswi2c$swi2c_recover$686 ==.
                                   2750 ; genCall
      00949C CD 96 A3         [ 4] 2751 	call	_GPIO_WriteLow
      00949F 5B 03            [ 2] 2752 	addw	sp, #3
                           00069A  2753 	Sswi2c$swi2c_recover$687 ==.
                           00069A  2754 	Sswi2c$swi2c_recover$688 ==.
                                   2755 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2756 ; genAssign
      0094A1 AE 00 05         [ 2] 2757 	ldw	x, #0x0005
                           00069D  2758 	Sswi2c$swi2c_recover$689 ==.
                                   2759 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2760 ;	genInline
      0094A4 9D               [ 1] 2761 	nop
      0094A5 9D               [ 1] 2762 	nop
                           00069F  2763 	Sswi2c$swi2c_recover$690 ==.
                           00069F  2764 	Sswi2c$swi2c_recover$691 ==.
                                   2765 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2766 ; genAssign
                                   2767 ; genLabel
      0094A6                       2768 00120$:
                           00069F  2769 	Sswi2c$swi2c_recover$692 ==.
                                   2770 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2771 ; genMinus
      0094A6 5A               [ 2] 2772 	decw	x
                           0006A0  2773 	Sswi2c$swi2c_recover$693 ==.
                                   2774 ;	inc/delay.h: 28: } while ( __ticks );
                                   2775 ; genIfx
      0094A7 5D               [ 2] 2776 	tnzw	x
      0094A8 27 03            [ 1] 2777 	jreq	00222$
      0094AA CC 94 A6         [ 2] 2778 	jp	00120$
      0094AD                       2779 00222$:
                                   2780 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2781 ;	genInline
      0094AD 9D               [ 1] 2782 	nop
                           0006A7  2783 	Sswi2c$swi2c_recover$694 ==.
                           0006A7  2784 	Sswi2c$swi2c_recover$695 ==.
                                   2785 ;	./src/swi2c.c: 359: SCL_HIGH;
                                   2786 ; genIPush
      0094AE 4B 40            [ 1] 2787 	push	#0x40
                           0006A9  2788 	Sswi2c$swi2c_recover$696 ==.
                                   2789 ; genIPush
      0094B0 4B 0A            [ 1] 2790 	push	#0x0a
                           0006AB  2791 	Sswi2c$swi2c_recover$697 ==.
      0094B2 4B 50            [ 1] 2792 	push	#0x50
                           0006AD  2793 	Sswi2c$swi2c_recover$698 ==.
                                   2794 ; genCall
      0094B4 CD 96 9C         [ 4] 2795 	call	_GPIO_WriteHigh
      0094B7 5B 03            [ 2] 2796 	addw	sp, #3
                           0006B2  2797 	Sswi2c$swi2c_recover$699 ==.
                           0006B2  2798 	Sswi2c$swi2c_recover$700 ==.
                           0006B2  2799 	Sswi2c$swi2c_recover$701 ==.
                                   2800 ;	./src/swi2c.c: 360: while (SCL_stat() == RESET && timeout) {
                                   2801 ; genAssign
      0094B9 1E 01            [ 2] 2802 	ldw	x, (0x01, sp)
                                   2803 ; genLabel
      0094BB                       2804 00105$:
                                   2805 ; genIPush
      0094BB 89               [ 2] 2806 	pushw	x
                           0006B5  2807 	Sswi2c$swi2c_recover$702 ==.
      0094BC 4B 40            [ 1] 2808 	push	#0x40
                           0006B7  2809 	Sswi2c$swi2c_recover$703 ==.
                                   2810 ; genIPush
      0094BE 4B 0A            [ 1] 2811 	push	#0x0a
                           0006B9  2812 	Sswi2c$swi2c_recover$704 ==.
      0094C0 4B 50            [ 1] 2813 	push	#0x50
                           0006BB  2814 	Sswi2c$swi2c_recover$705 ==.
                                   2815 ; genCall
      0094C2 CD 96 C1         [ 4] 2816 	call	_GPIO_ReadInputPin
      0094C5 5B 03            [ 2] 2817 	addw	sp, #3
                           0006C0  2818 	Sswi2c$swi2c_recover$706 ==.
      0094C7 85               [ 2] 2819 	popw	x
                           0006C1  2820 	Sswi2c$swi2c_recover$707 ==.
                                   2821 ; genIfx
      0094C8 4D               [ 1] 2822 	tnz	a
      0094C9 27 03            [ 1] 2823 	jreq	00223$
      0094CB CC 94 D8         [ 2] 2824 	jp	00152$
      0094CE                       2825 00223$:
                                   2826 ; genIfx
      0094CE 5D               [ 2] 2827 	tnzw	x
      0094CF 26 03            [ 1] 2828 	jrne	00224$
      0094D1 CC 94 D8         [ 2] 2829 	jp	00152$
      0094D4                       2830 00224$:
                           0006CD  2831 	Sswi2c$swi2c_recover$708 ==.
                           0006CD  2832 	Sswi2c$swi2c_recover$709 ==.
                                   2833 ;	./src/swi2c.c: 361: timeout--;
                                   2834 ; genMinus
      0094D4 5A               [ 2] 2835 	decw	x
                           0006CE  2836 	Sswi2c$swi2c_recover$710 ==.
                                   2837 ; genGoto
      0094D5 CC 94 BB         [ 2] 2838 	jp	00105$
                           0006D1  2839 	Sswi2c$swi2c_recover$711 ==.
                                   2840 ; genLabel
      0094D8                       2841 00152$:
                                   2842 ; genAssign
      0094D8 1F 01            [ 2] 2843 	ldw	(0x01, sp), x
                           0006D3  2844 	Sswi2c$swi2c_recover$712 ==.
                                   2845 ;	./src/swi2c.c: 363: if (timeout == 0) {
                                   2846 ; genIfx
      0094DA 1E 01            [ 2] 2847 	ldw	x, (0x01, sp)
      0094DC 27 03            [ 1] 2848 	jreq	00225$
      0094DE CC 94 E6         [ 2] 2849 	jp	00109$
      0094E1                       2850 00225$:
                           0006DA  2851 	Sswi2c$swi2c_recover$713 ==.
                           0006DA  2852 	Sswi2c$swi2c_recover$714 ==.
                                   2853 ;	./src/swi2c.c: 364: return 0xff;
                                   2854 ; genReturn
      0094E1 A6 FF            [ 1] 2855 	ld	a, #0xff
      0094E3 CC 95 19         [ 2] 2856 	jp	00132$
                           0006DF  2857 	Sswi2c$swi2c_recover$715 ==.
                                   2858 ; genLabel
      0094E6                       2859 00109$:
                           0006DF  2860 	Sswi2c$swi2c_recover$716 ==.
                                   2861 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                   2862 ; genAssign
      0094E6 AE 00 05         [ 2] 2863 	ldw	x, #0x0005
                           0006E2  2864 	Sswi2c$swi2c_recover$717 ==.
                                   2865 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                   2866 ;	genInline
      0094E9 9D               [ 1] 2867 	nop
      0094EA 9D               [ 1] 2868 	nop
                           0006E4  2869 	Sswi2c$swi2c_recover$718 ==.
                           0006E4  2870 	Sswi2c$swi2c_recover$719 ==.
                                   2871 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                   2872 ; genAssign
                                   2873 ; genLabel
      0094EB                       2874 00125$:
                           0006E4  2875 	Sswi2c$swi2c_recover$720 ==.
                                   2876 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                   2877 ; genMinus
      0094EB 5A               [ 2] 2878 	decw	x
                           0006E5  2879 	Sswi2c$swi2c_recover$721 ==.
                                   2880 ;	inc/delay.h: 28: } while ( __ticks );
                                   2881 ; genIfx
      0094EC 5D               [ 2] 2882 	tnzw	x
      0094ED 27 03            [ 1] 2883 	jreq	00226$
      0094EF CC 94 EB         [ 2] 2884 	jp	00125$
      0094F2                       2885 00226$:
                                   2886 ;	inc/delay.h: 29: __asm__("nop\n");
                                   2887 ;	genInline
      0094F2 9D               [ 1] 2888 	nop
                           0006EC  2889 	Sswi2c$swi2c_recover$722 ==.
                           0006EC  2890 	Sswi2c$swi2c_recover$723 ==.
                                   2891 ;	./src/swi2c.c: 367: if (SDA_stat() != RESET) {  // if slave released SDA line, generate STOP
                                   2892 ; genIPush
      0094F3 4B 80            [ 1] 2893 	push	#0x80
                           0006EE  2894 	Sswi2c$swi2c_recover$724 ==.
                                   2895 ; genIPush
      0094F5 4B 0A            [ 1] 2896 	push	#0x0a
                           0006F0  2897 	Sswi2c$swi2c_recover$725 ==.
      0094F7 4B 50            [ 1] 2898 	push	#0x50
                           0006F2  2899 	Sswi2c$swi2c_recover$726 ==.
                                   2900 ; genCall
      0094F9 CD 96 C1         [ 4] 2901 	call	_GPIO_ReadInputPin
      0094FC 5B 03            [ 2] 2902 	addw	sp, #3
                           0006F7  2903 	Sswi2c$swi2c_recover$727 ==.
                                   2904 ; genIfx
      0094FE 4D               [ 1] 2905 	tnz	a
      0094FF 26 03            [ 1] 2906 	jrne	00227$
      009501 CC 95 0C         [ 2] 2907 	jp	00131$
      009504                       2908 00227$:
                           0006FD  2909 	Sswi2c$swi2c_recover$728 ==.
                           0006FD  2910 	Sswi2c$swi2c_recover$729 ==.
                                   2911 ;	./src/swi2c.c: 368: return (swi2c_STOP());
                                   2912 ; genCall
      009504 5B 03            [ 2] 2913 	addw	sp, #3
                           0006FF  2914 	Sswi2c$swi2c_recover$730 ==.
      009506 CC 93 C1         [ 2] 2915 	jp	_swi2c_STOP
                                   2916 ; genReturn
      009509 CC 95 19         [ 2] 2917 	jp	00132$
                           000705  2918 	Sswi2c$swi2c_recover$731 ==.
                                   2919 ; genLabel
      00950C                       2920 00131$:
                           000705  2921 	Sswi2c$swi2c_recover$732 ==.
                           000705  2922 	Sswi2c$swi2c_recover$733 ==.
                                   2923 ;	./src/swi2c.c: 356: for (i = 0; i < 9; i++) {       // try nine times try to read one bit and pray for SDA release
                                   2924 ; genPlus
      00950C 0C 03            [ 1] 2925 	inc	(0x03, sp)
                                   2926 ; genCmp
                                   2927 ; genCmpTop
      00950E 7B 03            [ 1] 2928 	ld	a, (0x03, sp)
      009510 A1 09            [ 1] 2929 	cp	a, #0x09
      009512 24 03            [ 1] 2930 	jrnc	00228$
      009514 CC 94 96         [ 2] 2931 	jp	00130$
      009517                       2932 00228$:
                                   2933 ; skipping generated iCode
                           000710  2934 	Sswi2c$swi2c_recover$734 ==.
                           000710  2935 	Sswi2c$swi2c_recover$735 ==.
                                   2936 ;	./src/swi2c.c: 371: return 0xee;
                                   2937 ; genReturn
      009517 A6 EE            [ 1] 2938 	ld	a, #0xee
                           000712  2939 	Sswi2c$swi2c_recover$736 ==.
                                   2940 ; genLabel
      009519                       2941 00132$:
                           000712  2942 	Sswi2c$swi2c_recover$737 ==.
                                   2943 ;	./src/swi2c.c: 373: }
                                   2944 ; genEndFunction
      009519 5B 03            [ 2] 2945 	addw	sp, #3
                           000714  2946 	Sswi2c$swi2c_recover$738 ==.
                           000714  2947 	Sswi2c$swi2c_recover$739 ==.
                           000714  2948 	XG$swi2c_recover$0$0 ==.
      00951B 81               [ 4] 2949 	ret
                           000715  2950 	Sswi2c$swi2c_recover$740 ==.
                                   2951 	.area CODE
                                   2952 	.area CONST
                                   2953 	.area INITIALIZER
                                   2954 	.area CABS (ABS)
                                   2955 
                                   2956 	.area .debug_line (NOLOAD)
      001023 00 00 06 D0           2957 	.dw	0,Ldebug_line_end-Ldebug_line_start
      001027                       2958 Ldebug_line_start:
      001027 00 02                 2959 	.dw	2
      001029 00 00 00 7D           2960 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00102D 01                    2961 	.db	1
      00102E 01                    2962 	.db	1
      00102F FB                    2963 	.db	-5
      001030 0F                    2964 	.db	15
      001031 0A                    2965 	.db	10
      001032 00                    2966 	.db	0
      001033 01                    2967 	.db	1
      001034 01                    2968 	.db	1
      001035 01                    2969 	.db	1
      001036 01                    2970 	.db	1
      001037 00                    2971 	.db	0
      001038 00                    2972 	.db	0
      001039 00                    2973 	.db	0
      00103A 01                    2974 	.db	1
      00103B 43 3A 5C 50 72 6F 67  2975 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001063 00                    2976 	.db	0
      001064 43 3A 5C 50 72 6F 67  2977 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001087 00                    2978 	.db	0
      001088 00                    2979 	.db	0
      001089 69 6E 63 2F 64 65 6C  2980 	.ascii "inc/delay.h"
             61 79 2E 68
      001094 00                    2981 	.db	0
      001095 00                    2982 	.uleb128	0
      001096 00                    2983 	.uleb128	0
      001097 00                    2984 	.uleb128	0
      001098 2E 2F 73 72 63 2F 73  2985 	.ascii "./src/swi2c.c"
             77 69 32 63 2E 63
      0010A5 00                    2986 	.db	0
      0010A6 00                    2987 	.uleb128	0
      0010A7 00                    2988 	.uleb128	0
      0010A8 00                    2989 	.uleb128	0
      0010A9 00                    2990 	.db	0
      0010AA                       2991 Ldebug_line_stmt:
      0010AA 00                    2992 	.db	0
      0010AB 05                    2993 	.uleb128	5
      0010AC 02                    2994 	.db	2
      0010AD 00 00 8E 07           2995 	.dw	0,(Sswi2c$_delay_cycl$0)
      0010B1 03                    2996 	.db	3
      0010B2 0D                    2997 	.sleb128	13
      0010B3 01                    2998 	.db	1
      0010B4 09                    2999 	.db	9
      0010B5 00 00                 3000 	.dw	Sswi2c$_delay_cycl$2-Sswi2c$_delay_cycl$0
      0010B7 03                    3001 	.db	3
      0010B8 0B                    3002 	.sleb128	11
      0010B9 01                    3003 	.db	1
      0010BA 09                    3004 	.db	9
      0010BB 00 02                 3005 	.dw	Sswi2c$_delay_cycl$3-Sswi2c$_delay_cycl$2
      0010BD 03                    3006 	.db	3
      0010BE 01                    3007 	.sleb128	1
      0010BF 01                    3008 	.db	1
      0010C0 09                    3009 	.db	9
      0010C1 00 02                 3010 	.dw	Sswi2c$_delay_cycl$5-Sswi2c$_delay_cycl$3
      0010C3 03                    3011 	.db	3
      0010C4 01                    3012 	.sleb128	1
      0010C5 01                    3013 	.db	1
      0010C6 09                    3014 	.db	9
      0010C7 00 01                 3015 	.dw	Sswi2c$_delay_cycl$7-Sswi2c$_delay_cycl$5
      0010C9 03                    3016 	.db	3
      0010CA 01                    3017 	.sleb128	1
      0010CB 01                    3018 	.db	1
      0010CC 09                    3019 	.db	9
      0010CD 00 06                 3020 	.dw	Sswi2c$_delay_cycl$8-Sswi2c$_delay_cycl$7
      0010CF 03                    3021 	.db	3
      0010D0 01                    3022 	.sleb128	1
      0010D1 01                    3023 	.db	1
      0010D2 09                    3024 	.db	9
      0010D3 00 01                 3025 	.dw	Sswi2c$_delay_cycl$9-Sswi2c$_delay_cycl$8
      0010D5 03                    3026 	.db	3
      0010D6 0A                    3027 	.sleb128	10
      0010D7 01                    3028 	.db	1
      0010D8 09                    3029 	.db	9
      0010D9 00 01                 3030 	.dw	1+Sswi2c$_delay_cycl$10-Sswi2c$_delay_cycl$9
      0010DB 00                    3031 	.db	0
      0010DC 01                    3032 	.uleb128	1
      0010DD 01                    3033 	.db	1
      0010DE 00                    3034 	.db	0
      0010DF 05                    3035 	.uleb128	5
      0010E0 02                    3036 	.db	2
      0010E1 00 00 8E 14           3037 	.dw	0,(Sswi2c$_delay_us$12)
      0010E5 03                    3038 	.db	3
      0010E6 28                    3039 	.sleb128	40
      0010E7 01                    3040 	.db	1
      0010E8 09                    3041 	.db	9
      0010E9 00 2F                 3042 	.dw	Sswi2c$_delay_us$35-Sswi2c$_delay_us$12
      0010EB 03                    3043 	.db	3
      0010EC 71                    3044 	.sleb128	-15
      0010ED 01                    3045 	.db	1
      0010EE 09                    3046 	.db	9
      0010EF 00 08                 3047 	.dw	Sswi2c$_delay_us$39-Sswi2c$_delay_us$35
      0010F1 03                    3048 	.db	3
      0010F2 10                    3049 	.sleb128	16
      0010F3 01                    3050 	.db	1
      0010F4 09                    3051 	.db	9
      0010F5 00 00                 3052 	.dw	Sswi2c$_delay_us$40-Sswi2c$_delay_us$39
      0010F7 03                    3053 	.db	3
      0010F8 01                    3054 	.sleb128	1
      0010F9 01                    3055 	.db	1
      0010FA 09                    3056 	.db	9
      0010FB 00 01                 3057 	.dw	1+Sswi2c$_delay_us$41-Sswi2c$_delay_us$40
      0010FD 00                    3058 	.db	0
      0010FE 01                    3059 	.uleb128	1
      0010FF 01                    3060 	.db	1
      001100 04                    3061 	.db	4
      001101 02                    3062 	.uleb128	2
      001102 00                    3063 	.db	0
      001103 05                    3064 	.uleb128	5
      001104 02                    3065 	.db	2
      001105 00 00 8E 4C           3066 	.dw	0,(Sswi2c$swi2c_read_buf$43)
      001109 03                    3067 	.db	3
      00110A 0A                    3068 	.sleb128	10
      00110B 01                    3069 	.db	1
      00110C 09                    3070 	.db	9
      00110D 00 02                 3071 	.dw	Sswi2c$swi2c_read_buf$46-Sswi2c$swi2c_read_buf$43
      00110F 03                    3072 	.db	3
      001110 08                    3073 	.sleb128	8
      001111 01                    3074 	.db	1
      001112 09                    3075 	.db	9
      001113 00 09                 3076 	.dw	Sswi2c$swi2c_read_buf$48-Sswi2c$swi2c_read_buf$46
      001115 03                    3077 	.db	3
      001116 01                    3078 	.sleb128	1
      001117 01                    3079 	.db	1
      001118 09                    3080 	.db	9
      001119 00 05                 3081 	.dw	Sswi2c$swi2c_read_buf$50-Sswi2c$swi2c_read_buf$48
      00111B 03                    3082 	.db	3
      00111C 03                    3083 	.sleb128	3
      00111D 01                    3084 	.db	1
      00111E 09                    3085 	.db	9
      00111F 00 04                 3086 	.dw	Sswi2c$swi2c_read_buf$51-Sswi2c$swi2c_read_buf$50
      001121 03                    3087 	.db	3
      001122 01                    3088 	.sleb128	1
      001123 01                    3089 	.db	1
      001124 09                    3090 	.db	9
      001125 00 07                 3091 	.dw	Sswi2c$swi2c_read_buf$53-Sswi2c$swi2c_read_buf$51
      001127 03                    3092 	.db	3
      001128 01                    3093 	.sleb128	1
      001129 01                    3094 	.db	1
      00112A 09                    3095 	.db	9
      00112B 00 10                 3096 	.dw	Sswi2c$swi2c_read_buf$57-Sswi2c$swi2c_read_buf$53
      00112D 03                    3097 	.db	3
      00112E 01                    3098 	.sleb128	1
      00112F 01                    3099 	.db	1
      001130 09                    3100 	.db	9
      001131 00 05                 3101 	.dw	Sswi2c$swi2c_read_buf$59-Sswi2c$swi2c_read_buf$57
      001133 03                    3102 	.db	3
      001134 02                    3103 	.sleb128	2
      001135 01                    3104 	.db	1
      001136 09                    3105 	.db	9
      001137 00 05                 3106 	.dw	Sswi2c$swi2c_read_buf$61-Sswi2c$swi2c_read_buf$59
      001139 03                    3107 	.db	3
      00113A 02                    3108 	.sleb128	2
      00113B 01                    3109 	.db	1
      00113C 09                    3110 	.db	9
      00113D 00 05                 3111 	.dw	Sswi2c$swi2c_read_buf$62-Sswi2c$swi2c_read_buf$61
      00113F 03                    3112 	.db	3
      001140 01                    3113 	.sleb128	1
      001141 01                    3114 	.db	1
      001142 09                    3115 	.db	9
      001143 00 07                 3116 	.dw	Sswi2c$swi2c_read_buf$64-Sswi2c$swi2c_read_buf$62
      001145 03                    3117 	.db	3
      001146 01                    3118 	.sleb128	1
      001147 01                    3119 	.db	1
      001148 09                    3120 	.db	9
      001149 00 09                 3121 	.dw	Sswi2c$swi2c_read_buf$66-Sswi2c$swi2c_read_buf$64
      00114B 03                    3122 	.db	3
      00114C 01                    3123 	.sleb128	1
      00114D 01                    3124 	.db	1
      00114E 09                    3125 	.db	9
      00114F 00 05                 3126 	.dw	Sswi2c$swi2c_read_buf$68-Sswi2c$swi2c_read_buf$66
      001151 03                    3127 	.db	3
      001152 02                    3128 	.sleb128	2
      001153 01                    3129 	.db	1
      001154 09                    3130 	.db	9
      001155 00 05                 3131 	.dw	Sswi2c$swi2c_read_buf$70-Sswi2c$swi2c_read_buf$68
      001157 03                    3132 	.db	3
      001158 03                    3133 	.sleb128	3
      001159 01                    3134 	.db	1
      00115A 09                    3135 	.db	9
      00115B 00 04                 3136 	.dw	Sswi2c$swi2c_read_buf$71-Sswi2c$swi2c_read_buf$70
      00115D 03                    3137 	.db	3
      00115E 01                    3138 	.sleb128	1
      00115F 01                    3139 	.db	1
      001160 09                    3140 	.db	9
      001161 00 07                 3141 	.dw	Sswi2c$swi2c_read_buf$73-Sswi2c$swi2c_read_buf$71
      001163 03                    3142 	.db	3
      001164 01                    3143 	.sleb128	1
      001165 01                    3144 	.db	1
      001166 09                    3145 	.db	9
      001167 00 10                 3146 	.dw	Sswi2c$swi2c_read_buf$77-Sswi2c$swi2c_read_buf$73
      001169 03                    3147 	.db	3
      00116A 01                    3148 	.sleb128	1
      00116B 01                    3149 	.db	1
      00116C 09                    3150 	.db	9
      00116D 00 05                 3151 	.dw	Sswi2c$swi2c_read_buf$79-Sswi2c$swi2c_read_buf$77
      00116F 03                    3152 	.db	3
      001170 02                    3153 	.sleb128	2
      001171 01                    3154 	.db	1
      001172 09                    3155 	.db	9
      001173 00 05                 3156 	.dw	Sswi2c$swi2c_read_buf$81-Sswi2c$swi2c_read_buf$79
      001175 03                    3157 	.db	3
      001176 02                    3158 	.sleb128	2
      001177 01                    3159 	.db	1
      001178 09                    3160 	.db	9
      001179 00 05                 3161 	.dw	Sswi2c$swi2c_read_buf$82-Sswi2c$swi2c_read_buf$81
      00117B 03                    3162 	.db	3
      00117C 01                    3163 	.sleb128	1
      00117D 01                    3164 	.db	1
      00117E 09                    3165 	.db	9
      00117F 00 07                 3166 	.dw	Sswi2c$swi2c_read_buf$84-Sswi2c$swi2c_read_buf$82
      001181 03                    3167 	.db	3
      001182 01                    3168 	.sleb128	1
      001183 01                    3169 	.db	1
      001184 09                    3170 	.db	9
      001185 00 09                 3171 	.dw	Sswi2c$swi2c_read_buf$86-Sswi2c$swi2c_read_buf$84
      001187 03                    3172 	.db	3
      001188 01                    3173 	.sleb128	1
      001189 01                    3174 	.db	1
      00118A 09                    3175 	.db	9
      00118B 00 05                 3176 	.dw	Sswi2c$swi2c_read_buf$88-Sswi2c$swi2c_read_buf$86
      00118D 03                    3177 	.db	3
      00118E 02                    3178 	.sleb128	2
      00118F 01                    3179 	.db	1
      001190 09                    3180 	.db	9
      001191 00 05                 3181 	.dw	Sswi2c$swi2c_read_buf$90-Sswi2c$swi2c_read_buf$88
      001193 03                    3182 	.db	3
      001194 03                    3183 	.sleb128	3
      001195 01                    3184 	.db	1
      001196 09                    3185 	.db	9
      001197 00 09                 3186 	.dw	Sswi2c$swi2c_read_buf$92-Sswi2c$swi2c_read_buf$90
      001199 03                    3187 	.db	3
      00119A 01                    3188 	.sleb128	1
      00119B 01                    3189 	.db	1
      00119C 09                    3190 	.db	9
      00119D 00 05                 3191 	.dw	Sswi2c$swi2c_read_buf$94-Sswi2c$swi2c_read_buf$92
      00119F 03                    3192 	.db	3
      0011A0 03                    3193 	.sleb128	3
      0011A1 01                    3194 	.db	1
      0011A2 09                    3195 	.db	9
      0011A3 00 04                 3196 	.dw	Sswi2c$swi2c_read_buf$96-Sswi2c$swi2c_read_buf$94
      0011A5 03                    3197 	.db	3
      0011A6 01                    3198 	.sleb128	1
      0011A7 01                    3199 	.db	1
      0011A8 09                    3200 	.db	9
      0011A9 00 0D                 3201 	.dw	Sswi2c$swi2c_read_buf$98-Sswi2c$swi2c_read_buf$96
      0011AB 03                    3202 	.db	3
      0011AC 01                    3203 	.sleb128	1
      0011AD 01                    3204 	.db	1
      0011AE 09                    3205 	.db	9
      0011AF 00 10                 3206 	.dw	Sswi2c$swi2c_read_buf$102-Sswi2c$swi2c_read_buf$98
      0011B1 03                    3207 	.db	3
      0011B2 01                    3208 	.sleb128	1
      0011B3 01                    3209 	.db	1
      0011B4 09                    3210 	.db	9
      0011B5 00 05                 3211 	.dw	Sswi2c$swi2c_read_buf$104-Sswi2c$swi2c_read_buf$102
      0011B7 03                    3212 	.db	3
      0011B8 02                    3213 	.sleb128	2
      0011B9 01                    3214 	.db	1
      0011BA 09                    3215 	.db	9
      0011BB 00 05                 3216 	.dw	Sswi2c$swi2c_read_buf$106-Sswi2c$swi2c_read_buf$104
      0011BD 03                    3217 	.db	3
      0011BE 02                    3218 	.sleb128	2
      0011BF 01                    3219 	.db	1
      0011C0 09                    3220 	.db	9
      0011C1 00 05                 3221 	.dw	Sswi2c$swi2c_read_buf$107-Sswi2c$swi2c_read_buf$106
      0011C3 03                    3222 	.db	3
      0011C4 01                    3223 	.sleb128	1
      0011C5 01                    3224 	.db	1
      0011C6 09                    3225 	.db	9
      0011C7 00 07                 3226 	.dw	Sswi2c$swi2c_read_buf$109-Sswi2c$swi2c_read_buf$107
      0011C9 03                    3227 	.db	3
      0011CA 01                    3228 	.sleb128	1
      0011CB 01                    3229 	.db	1
      0011CC 09                    3230 	.db	9
      0011CD 00 09                 3231 	.dw	Sswi2c$swi2c_read_buf$111-Sswi2c$swi2c_read_buf$109
      0011CF 03                    3232 	.db	3
      0011D0 01                    3233 	.sleb128	1
      0011D1 01                    3234 	.db	1
      0011D2 09                    3235 	.db	9
      0011D3 00 05                 3236 	.dw	Sswi2c$swi2c_read_buf$113-Sswi2c$swi2c_read_buf$111
      0011D5 03                    3237 	.db	3
      0011D6 02                    3238 	.sleb128	2
      0011D7 01                    3239 	.db	1
      0011D8 09                    3240 	.db	9
      0011D9 00 05                 3241 	.dw	Sswi2c$swi2c_read_buf$115-Sswi2c$swi2c_read_buf$113
      0011DB 03                    3242 	.db	3
      0011DC 04                    3243 	.sleb128	4
      0011DD 01                    3244 	.db	1
      0011DE 09                    3245 	.db	9
      0011DF 00 0D                 3246 	.dw	Sswi2c$swi2c_read_buf$117-Sswi2c$swi2c_read_buf$115
      0011E1 03                    3247 	.db	3
      0011E2 01                    3248 	.sleb128	1
      0011E3 01                    3249 	.db	1
      0011E4 09                    3250 	.db	9
      0011E5 00 04                 3251 	.dw	Sswi2c$swi2c_read_buf$118-Sswi2c$swi2c_read_buf$117
      0011E7 03                    3252 	.db	3
      0011E8 01                    3253 	.sleb128	1
      0011E9 01                    3254 	.db	1
      0011EA 09                    3255 	.db	9
      0011EB 00 07                 3256 	.dw	Sswi2c$swi2c_read_buf$120-Sswi2c$swi2c_read_buf$118
      0011ED 03                    3257 	.db	3
      0011EE 01                    3258 	.sleb128	1
      0011EF 01                    3259 	.db	1
      0011F0 09                    3260 	.db	9
      0011F1 00 05                 3261 	.dw	Sswi2c$swi2c_read_buf$122-Sswi2c$swi2c_read_buf$120
      0011F3 03                    3262 	.db	3
      0011F4 02                    3263 	.sleb128	2
      0011F5 01                    3264 	.db	1
      0011F6 09                    3265 	.db	9
      0011F7 00 08                 3266 	.dw	Sswi2c$swi2c_read_buf$123-Sswi2c$swi2c_read_buf$122
      0011F9 03                    3267 	.db	3
      0011FA 7F                    3268 	.sleb128	-1
      0011FB 01                    3269 	.db	1
      0011FC 09                    3270 	.db	9
      0011FD 00 06                 3271 	.dw	Sswi2c$swi2c_read_buf$125-Sswi2c$swi2c_read_buf$123
      0011FF 03                    3272 	.db	3
      001200 01                    3273 	.sleb128	1
      001201 01                    3274 	.db	1
      001202 09                    3275 	.db	9
      001203 00 0C                 3276 	.dw	Sswi2c$swi2c_read_buf$127-Sswi2c$swi2c_read_buf$125
      001205 03                    3277 	.db	3
      001206 01                    3278 	.sleb128	1
      001207 01                    3279 	.db	1
      001208 09                    3280 	.db	9
      001209 00 0B                 3281 	.dw	Sswi2c$swi2c_read_buf$130-Sswi2c$swi2c_read_buf$127
      00120B 03                    3282 	.db	3
      00120C 01                    3283 	.sleb128	1
      00120D 01                    3284 	.db	1
      00120E 09                    3285 	.db	9
      00120F 00 07                 3286 	.dw	Sswi2c$swi2c_read_buf$133-Sswi2c$swi2c_read_buf$130
      001211 03                    3287 	.db	3
      001212 02                    3288 	.sleb128	2
      001213 01                    3289 	.db	1
      001214 09                    3290 	.db	9
      001215 00 03                 3291 	.dw	Sswi2c$swi2c_read_buf$134-Sswi2c$swi2c_read_buf$133
      001217 03                    3292 	.db	3
      001218 01                    3293 	.sleb128	1
      001219 01                    3294 	.db	1
      00121A 09                    3295 	.db	9
      00121B 00 05                 3296 	.dw	Sswi2c$swi2c_read_buf$136-Sswi2c$swi2c_read_buf$134
      00121D 03                    3297 	.db	3
      00121E 02                    3298 	.sleb128	2
      00121F 01                    3299 	.db	1
      001220 09                    3300 	.db	9
      001221 00 05                 3301 	.dw	Sswi2c$swi2c_read_buf$138-Sswi2c$swi2c_read_buf$136
      001223 03                    3302 	.db	3
      001224 02                    3303 	.sleb128	2
      001225 01                    3304 	.db	1
      001226 09                    3305 	.db	9
      001227 00 0F                 3306 	.dw	Sswi2c$swi2c_read_buf$141-Sswi2c$swi2c_read_buf$138
      001229 03                    3307 	.db	3
      00122A 01                    3308 	.sleb128	1
      00122B 01                    3309 	.db	1
      00122C 09                    3310 	.db	9
      00122D 00 0D                 3311 	.dw	Sswi2c$swi2c_read_buf$145-Sswi2c$swi2c_read_buf$141
      00122F 03                    3312 	.db	3
      001230 01                    3313 	.sleb128	1
      001231 01                    3314 	.db	1
      001232 09                    3315 	.db	9
      001233 00 05                 3316 	.dw	Sswi2c$swi2c_read_buf$148-Sswi2c$swi2c_read_buf$145
      001235 03                    3317 	.db	3
      001236 03                    3318 	.sleb128	3
      001237 01                    3319 	.db	1
      001238 09                    3320 	.db	9
      001239 00 0D                 3321 	.dw	Sswi2c$swi2c_read_buf$152-Sswi2c$swi2c_read_buf$148
      00123B 03                    3322 	.db	3
      00123C 01                    3323 	.sleb128	1
      00123D 01                    3324 	.db	1
      00123E 09                    3325 	.db	9
      00123F 00 05                 3326 	.dw	Sswi2c$swi2c_read_buf$155-Sswi2c$swi2c_read_buf$152
      001241 03                    3327 	.db	3
      001242 6C                    3328 	.sleb128	-20
      001243 01                    3329 	.db	1
      001244 09                    3330 	.db	9
      001245 00 05                 3331 	.dw	Sswi2c$swi2c_read_buf$156-Sswi2c$swi2c_read_buf$155
      001247 03                    3332 	.db	3
      001248 1A                    3333 	.sleb128	26
      001249 01                    3334 	.db	1
      00124A 09                    3335 	.db	9
      00124B 00 09                 3336 	.dw	Sswi2c$swi2c_read_buf$158-Sswi2c$swi2c_read_buf$156
      00124D 03                    3337 	.db	3
      00124E 01                    3338 	.sleb128	1
      00124F 01                    3339 	.db	1
      001250 09                    3340 	.db	9
      001251 00 05                 3341 	.dw	Sswi2c$swi2c_read_buf$160-Sswi2c$swi2c_read_buf$158
      001253 03                    3342 	.db	3
      001254 02                    3343 	.sleb128	2
      001255 01                    3344 	.db	1
      001256 09                    3345 	.db	9
      001257 00 01                 3346 	.dw	Sswi2c$swi2c_read_buf$161-Sswi2c$swi2c_read_buf$160
      001259 03                    3347 	.db	3
      00125A 01                    3348 	.sleb128	1
      00125B 01                    3349 	.db	1
      00125C 09                    3350 	.db	9
      00125D 00 03                 3351 	.dw	1+Sswi2c$swi2c_read_buf$163-Sswi2c$swi2c_read_buf$161
      00125F 00                    3352 	.db	0
      001260 01                    3353 	.uleb128	1
      001261 01                    3354 	.db	1
      001262 04                    3355 	.db	4
      001263 02                    3356 	.uleb128	2
      001264 00                    3357 	.db	0
      001265 05                    3358 	.uleb128	5
      001266 02                    3359 	.db	2
      001267 00 00 8F DC           3360 	.dw	0,(Sswi2c$swi2c_write_buf$165)
      00126B 03                    3361 	.db	3
      00126C F0 00                 3362 	.sleb128	112
      00126E 01                    3363 	.db	1
      00126F 09                    3364 	.db	9
      001270 00 01                 3365 	.dw	Sswi2c$swi2c_write_buf$168-Sswi2c$swi2c_write_buf$165
      001272 03                    3366 	.db	3
      001273 08                    3367 	.sleb128	8
      001274 01                    3368 	.db	1
      001275 09                    3369 	.db	9
      001276 00 09                 3370 	.dw	Sswi2c$swi2c_write_buf$170-Sswi2c$swi2c_write_buf$168
      001278 03                    3371 	.db	3
      001279 01                    3372 	.sleb128	1
      00127A 01                    3373 	.db	1
      00127B 09                    3374 	.db	9
      00127C 00 05                 3375 	.dw	Sswi2c$swi2c_write_buf$172-Sswi2c$swi2c_write_buf$170
      00127E 03                    3376 	.db	3
      00127F 03                    3377 	.sleb128	3
      001280 01                    3378 	.db	1
      001281 09                    3379 	.db	9
      001282 00 04                 3380 	.dw	Sswi2c$swi2c_write_buf$173-Sswi2c$swi2c_write_buf$172
      001284 03                    3381 	.db	3
      001285 01                    3382 	.sleb128	1
      001286 01                    3383 	.db	1
      001287 09                    3384 	.db	9
      001288 00 07                 3385 	.dw	Sswi2c$swi2c_write_buf$175-Sswi2c$swi2c_write_buf$173
      00128A 03                    3386 	.db	3
      00128B 01                    3387 	.sleb128	1
      00128C 01                    3388 	.db	1
      00128D 09                    3389 	.db	9
      00128E 00 10                 3390 	.dw	Sswi2c$swi2c_write_buf$179-Sswi2c$swi2c_write_buf$175
      001290 03                    3391 	.db	3
      001291 01                    3392 	.sleb128	1
      001292 01                    3393 	.db	1
      001293 09                    3394 	.db	9
      001294 00 05                 3395 	.dw	Sswi2c$swi2c_write_buf$181-Sswi2c$swi2c_write_buf$179
      001296 03                    3396 	.db	3
      001297 02                    3397 	.sleb128	2
      001298 01                    3398 	.db	1
      001299 09                    3399 	.db	9
      00129A 00 05                 3400 	.dw	Sswi2c$swi2c_write_buf$183-Sswi2c$swi2c_write_buf$181
      00129C 03                    3401 	.db	3
      00129D 02                    3402 	.sleb128	2
      00129E 01                    3403 	.db	1
      00129F 09                    3404 	.db	9
      0012A0 00 05                 3405 	.dw	Sswi2c$swi2c_write_buf$184-Sswi2c$swi2c_write_buf$183
      0012A2 03                    3406 	.db	3
      0012A3 01                    3407 	.sleb128	1
      0012A4 01                    3408 	.db	1
      0012A5 09                    3409 	.db	9
      0012A6 00 07                 3410 	.dw	Sswi2c$swi2c_write_buf$186-Sswi2c$swi2c_write_buf$184
      0012A8 03                    3411 	.db	3
      0012A9 01                    3412 	.sleb128	1
      0012AA 01                    3413 	.db	1
      0012AB 09                    3414 	.db	9
      0012AC 00 09                 3415 	.dw	Sswi2c$swi2c_write_buf$188-Sswi2c$swi2c_write_buf$186
      0012AE 03                    3416 	.db	3
      0012AF 01                    3417 	.sleb128	1
      0012B0 01                    3418 	.db	1
      0012B1 09                    3419 	.db	9
      0012B2 00 05                 3420 	.dw	Sswi2c$swi2c_write_buf$190-Sswi2c$swi2c_write_buf$188
      0012B4 03                    3421 	.db	3
      0012B5 02                    3422 	.sleb128	2
      0012B6 01                    3423 	.db	1
      0012B7 09                    3424 	.db	9
      0012B8 00 05                 3425 	.dw	Sswi2c$swi2c_write_buf$192-Sswi2c$swi2c_write_buf$190
      0012BA 03                    3426 	.db	3
      0012BB 03                    3427 	.sleb128	3
      0012BC 01                    3428 	.db	1
      0012BD 09                    3429 	.db	9
      0012BE 00 04                 3430 	.dw	Sswi2c$swi2c_write_buf$193-Sswi2c$swi2c_write_buf$192
      0012C0 03                    3431 	.db	3
      0012C1 01                    3432 	.sleb128	1
      0012C2 01                    3433 	.db	1
      0012C3 09                    3434 	.db	9
      0012C4 00 07                 3435 	.dw	Sswi2c$swi2c_write_buf$195-Sswi2c$swi2c_write_buf$193
      0012C6 03                    3436 	.db	3
      0012C7 01                    3437 	.sleb128	1
      0012C8 01                    3438 	.db	1
      0012C9 09                    3439 	.db	9
      0012CA 00 10                 3440 	.dw	Sswi2c$swi2c_write_buf$199-Sswi2c$swi2c_write_buf$195
      0012CC 03                    3441 	.db	3
      0012CD 01                    3442 	.sleb128	1
      0012CE 01                    3443 	.db	1
      0012CF 09                    3444 	.db	9
      0012D0 00 05                 3445 	.dw	Sswi2c$swi2c_write_buf$201-Sswi2c$swi2c_write_buf$199
      0012D2 03                    3446 	.db	3
      0012D3 02                    3447 	.sleb128	2
      0012D4 01                    3448 	.db	1
      0012D5 09                    3449 	.db	9
      0012D6 00 05                 3450 	.dw	Sswi2c$swi2c_write_buf$203-Sswi2c$swi2c_write_buf$201
      0012D8 03                    3451 	.db	3
      0012D9 02                    3452 	.sleb128	2
      0012DA 01                    3453 	.db	1
      0012DB 09                    3454 	.db	9
      0012DC 00 05                 3455 	.dw	Sswi2c$swi2c_write_buf$204-Sswi2c$swi2c_write_buf$203
      0012DE 03                    3456 	.db	3
      0012DF 01                    3457 	.sleb128	1
      0012E0 01                    3458 	.db	1
      0012E1 09                    3459 	.db	9
      0012E2 00 07                 3460 	.dw	Sswi2c$swi2c_write_buf$206-Sswi2c$swi2c_write_buf$204
      0012E4 03                    3461 	.db	3
      0012E5 01                    3462 	.sleb128	1
      0012E6 01                    3463 	.db	1
      0012E7 09                    3464 	.db	9
      0012E8 00 09                 3465 	.dw	Sswi2c$swi2c_write_buf$208-Sswi2c$swi2c_write_buf$206
      0012EA 03                    3466 	.db	3
      0012EB 01                    3467 	.sleb128	1
      0012EC 01                    3468 	.db	1
      0012ED 09                    3469 	.db	9
      0012EE 00 05                 3470 	.dw	Sswi2c$swi2c_write_buf$210-Sswi2c$swi2c_write_buf$208
      0012F0 03                    3471 	.db	3
      0012F1 02                    3472 	.sleb128	2
      0012F2 01                    3473 	.db	1
      0012F3 09                    3474 	.db	9
      0012F4 00 05                 3475 	.dw	Sswi2c$swi2c_write_buf$212-Sswi2c$swi2c_write_buf$210
      0012F6 03                    3476 	.db	3
      0012F7 03                    3477 	.sleb128	3
      0012F8 01                    3478 	.db	1
      0012F9 09                    3479 	.db	9
      0012FA 00 0D                 3480 	.dw	Sswi2c$swi2c_write_buf$214-Sswi2c$swi2c_write_buf$212
      0012FC 03                    3481 	.db	3
      0012FD 01                    3482 	.sleb128	1
      0012FE 01                    3483 	.db	1
      0012FF 09                    3484 	.db	9
      001300 00 04                 3485 	.dw	Sswi2c$swi2c_write_buf$216-Sswi2c$swi2c_write_buf$214
      001302 03                    3486 	.db	3
      001303 01                    3487 	.sleb128	1
      001304 01                    3488 	.db	1
      001305 09                    3489 	.db	9
      001306 00 0E                 3490 	.dw	Sswi2c$swi2c_write_buf$218-Sswi2c$swi2c_write_buf$216
      001308 03                    3491 	.db	3
      001309 01                    3492 	.sleb128	1
      00130A 01                    3493 	.db	1
      00130B 09                    3494 	.db	9
      00130C 00 11                 3495 	.dw	Sswi2c$swi2c_write_buf$224-Sswi2c$swi2c_write_buf$218
      00130E 03                    3496 	.db	3
      00130F 01                    3497 	.sleb128	1
      001310 01                    3498 	.db	1
      001311 09                    3499 	.db	9
      001312 00 05                 3500 	.dw	Sswi2c$swi2c_write_buf$226-Sswi2c$swi2c_write_buf$224
      001314 03                    3501 	.db	3
      001315 02                    3502 	.sleb128	2
      001316 01                    3503 	.db	1
      001317 09                    3504 	.db	9
      001318 00 05                 3505 	.dw	Sswi2c$swi2c_write_buf$228-Sswi2c$swi2c_write_buf$226
      00131A 03                    3506 	.db	3
      00131B 02                    3507 	.sleb128	2
      00131C 01                    3508 	.db	1
      00131D 09                    3509 	.db	9
      00131E 00 05                 3510 	.dw	Sswi2c$swi2c_write_buf$229-Sswi2c$swi2c_write_buf$228
      001320 03                    3511 	.db	3
      001321 01                    3512 	.sleb128	1
      001322 01                    3513 	.db	1
      001323 09                    3514 	.db	9
      001324 00 07                 3515 	.dw	Sswi2c$swi2c_write_buf$231-Sswi2c$swi2c_write_buf$229
      001326 03                    3516 	.db	3
      001327 01                    3517 	.sleb128	1
      001328 01                    3518 	.db	1
      001329 09                    3519 	.db	9
      00132A 00 09                 3520 	.dw	Sswi2c$swi2c_write_buf$233-Sswi2c$swi2c_write_buf$231
      00132C 03                    3521 	.db	3
      00132D 01                    3522 	.sleb128	1
      00132E 01                    3523 	.db	1
      00132F 09                    3524 	.db	9
      001330 00 05                 3525 	.dw	Sswi2c$swi2c_write_buf$235-Sswi2c$swi2c_write_buf$233
      001332 03                    3526 	.db	3
      001333 02                    3527 	.sleb128	2
      001334 01                    3528 	.db	1
      001335 09                    3529 	.db	9
      001336 00 05                 3530 	.dw	Sswi2c$swi2c_write_buf$238-Sswi2c$swi2c_write_buf$235
      001338 03                    3531 	.db	3
      001339 73                    3532 	.sleb128	-13
      00133A 01                    3533 	.db	1
      00133B 09                    3534 	.db	9
      00133C 00 05                 3535 	.dw	Sswi2c$swi2c_write_buf$239-Sswi2c$swi2c_write_buf$238
      00133E 03                    3536 	.db	3
      00133F 12                    3537 	.sleb128	18
      001340 01                    3538 	.db	1
      001341 09                    3539 	.db	9
      001342 00 09                 3540 	.dw	Sswi2c$swi2c_write_buf$241-Sswi2c$swi2c_write_buf$239
      001344 03                    3541 	.db	3
      001345 01                    3542 	.sleb128	1
      001346 01                    3543 	.db	1
      001347 09                    3544 	.db	9
      001348 00 05                 3545 	.dw	Sswi2c$swi2c_write_buf$243-Sswi2c$swi2c_write_buf$241
      00134A 03                    3546 	.db	3
      00134B 02                    3547 	.sleb128	2
      00134C 01                    3548 	.db	1
      00134D 09                    3549 	.db	9
      00134E 00 01                 3550 	.dw	Sswi2c$swi2c_write_buf$244-Sswi2c$swi2c_write_buf$243
      001350 03                    3551 	.db	3
      001351 01                    3552 	.sleb128	1
      001352 01                    3553 	.db	1
      001353 09                    3554 	.db	9
      001354 00 02                 3555 	.dw	1+Sswi2c$swi2c_write_buf$246-Sswi2c$swi2c_write_buf$244
      001356 00                    3556 	.db	0
      001357 01                    3557 	.uleb128	1
      001358 01                    3558 	.db	1
      001359 04                    3559 	.db	4
      00135A 02                    3560 	.uleb128	2
      00135B 00                    3561 	.db	0
      00135C 05                    3562 	.uleb128	5
      00135D 02                    3563 	.db	2
      00135E 00 00 90 E2           3564 	.dw	0,(Sswi2c$swi2c_test_slave$248)
      001362 03                    3565 	.db	3
      001363 BA 01                 3566 	.sleb128	186
      001365 01                    3567 	.db	1
      001366 09                    3568 	.db	9
      001367 00 01                 3569 	.dw	Sswi2c$swi2c_test_slave$251-Sswi2c$swi2c_test_slave$248
      001369 03                    3570 	.db	3
      00136A 03                    3571 	.sleb128	3
      00136B 01                    3572 	.db	1
      00136C 09                    3573 	.db	9
      00136D 00 04                 3574 	.dw	Sswi2c$swi2c_test_slave$252-Sswi2c$swi2c_test_slave$251
      00136F 03                    3575 	.db	3
      001370 01                    3576 	.sleb128	1
      001371 01                    3577 	.db	1
      001372 09                    3578 	.db	9
      001373 00 09                 3579 	.dw	Sswi2c$swi2c_test_slave$254-Sswi2c$swi2c_test_slave$252
      001375 03                    3580 	.db	3
      001376 01                    3581 	.sleb128	1
      001377 01                    3582 	.db	1
      001378 09                    3583 	.db	9
      001379 00 05                 3584 	.dw	Sswi2c$swi2c_test_slave$256-Sswi2c$swi2c_test_slave$254
      00137B 03                    3585 	.db	3
      00137C 02                    3586 	.sleb128	2
      00137D 01                    3587 	.db	1
      00137E 09                    3588 	.db	9
      00137F 00 07                 3589 	.dw	Sswi2c$swi2c_test_slave$258-Sswi2c$swi2c_test_slave$256
      001381 03                    3590 	.db	3
      001382 01                    3591 	.sleb128	1
      001383 01                    3592 	.db	1
      001384 09                    3593 	.db	9
      001385 00 10                 3594 	.dw	Sswi2c$swi2c_test_slave$262-Sswi2c$swi2c_test_slave$258
      001387 03                    3595 	.db	3
      001388 01                    3596 	.sleb128	1
      001389 01                    3597 	.db	1
      00138A 09                    3598 	.db	9
      00138B 00 05                 3599 	.dw	Sswi2c$swi2c_test_slave$264-Sswi2c$swi2c_test_slave$262
      00138D 03                    3600 	.db	3
      00138E 02                    3601 	.sleb128	2
      00138F 01                    3602 	.db	1
      001390 09                    3603 	.db	9
      001391 00 05                 3604 	.dw	Sswi2c$swi2c_test_slave$266-Sswi2c$swi2c_test_slave$264
      001393 03                    3605 	.db	3
      001394 02                    3606 	.sleb128	2
      001395 01                    3607 	.db	1
      001396 09                    3608 	.db	9
      001397 00 05                 3609 	.dw	Sswi2c$swi2c_test_slave$267-Sswi2c$swi2c_test_slave$266
      001399 03                    3610 	.db	3
      00139A 01                    3611 	.sleb128	1
      00139B 01                    3612 	.db	1
      00139C 09                    3613 	.db	9
      00139D 00 09                 3614 	.dw	Sswi2c$swi2c_test_slave$269-Sswi2c$swi2c_test_slave$267
      00139F 03                    3615 	.db	3
      0013A0 01                    3616 	.sleb128	1
      0013A1 01                    3617 	.db	1
      0013A2 09                    3618 	.db	9
      0013A3 00 05                 3619 	.dw	Sswi2c$swi2c_test_slave$271-Sswi2c$swi2c_test_slave$269
      0013A5 03                    3620 	.db	3
      0013A6 02                    3621 	.sleb128	2
      0013A7 01                    3622 	.db	1
      0013A8 09                    3623 	.db	9
      0013A9 00 02                 3624 	.dw	Sswi2c$swi2c_test_slave$272-Sswi2c$swi2c_test_slave$271
      0013AB 03                    3625 	.db	3
      0013AC 01                    3626 	.sleb128	1
      0013AD 01                    3627 	.db	1
      0013AE 09                    3628 	.db	9
      0013AF 00 03                 3629 	.dw	1+Sswi2c$swi2c_test_slave$274-Sswi2c$swi2c_test_slave$272
      0013B1 00                    3630 	.db	0
      0013B2 01                    3631 	.uleb128	1
      0013B3 01                    3632 	.db	1
      0013B4 04                    3633 	.db	4
      0013B5 02                    3634 	.uleb128	2
      0013B6 00                    3635 	.db	0
      0013B7 05                    3636 	.uleb128	5
      0013B8 02                    3637 	.db	2
      0013B9 00 00 91 2E           3638 	.dw	0,(Sswi2c$swi2c_init$276)
      0013BD 03                    3639 	.db	3
      0013BE CF 01                 3640 	.sleb128	207
      0013C0 01                    3641 	.db	1
      0013C1 09                    3642 	.db	9
      0013C2 00 00                 3643 	.dw	Sswi2c$swi2c_init$278-Sswi2c$swi2c_init$276
      0013C4 03                    3644 	.db	3
      0013C5 02                    3645 	.sleb128	2
      0013C6 01                    3646 	.db	1
      0013C7 09                    3647 	.db	9
      0013C8 00 0D                 3648 	.dw	Sswi2c$swi2c_init$284-Sswi2c$swi2c_init$278
      0013CA 03                    3649 	.db	3
      0013CB 01                    3650 	.sleb128	1
      0013CC 01                    3651 	.db	1
      0013CD 09                    3652 	.db	9
      0013CE 00 0D                 3653 	.dw	Sswi2c$swi2c_init$290-Sswi2c$swi2c_init$284
      0013D0 03                    3654 	.db	3
      0013D1 01                    3655 	.sleb128	1
      0013D2 01                    3656 	.db	1
      0013D3 09                    3657 	.db	9
      0013D4 00 01                 3658 	.dw	1+Sswi2c$swi2c_init$291-Sswi2c$swi2c_init$290
      0013D6 00                    3659 	.db	0
      0013D7 01                    3660 	.uleb128	1
      0013D8 01                    3661 	.db	1
      0013D9 04                    3662 	.db	4
      0013DA 02                    3663 	.uleb128	2
      0013DB 00                    3664 	.db	0
      0013DC 05                    3665 	.uleb128	5
      0013DD 02                    3666 	.db	2
      0013DE 00 00 91 49           3667 	.dw	0,(Sswi2c$swi2c_readbit$293)
      0013E2 03                    3668 	.db	3
      0013E3 DB 01                 3669 	.sleb128	219
      0013E5 01                    3670 	.db	1
      0013E6 09                    3671 	.db	9
      0013E7 00 01                 3672 	.dw	Sswi2c$swi2c_readbit$296-Sswi2c$swi2c_readbit$293
      0013E9 03                    3673 	.db	3
      0013EA 02                    3674 	.sleb128	2
      0013EB 01                    3675 	.db	1
      0013EC 09                    3676 	.db	9
      0013ED 00 05                 3677 	.dw	Sswi2c$swi2c_readbit$297-Sswi2c$swi2c_readbit$296
      0013EF 03                    3678 	.db	3
      0013F0 02                    3679 	.sleb128	2
      0013F1 01                    3680 	.db	1
      0013F2 04                    3681 	.db	4
      0013F3 01                    3682 	.uleb128	1
      0013F4 09                    3683 	.db	9
      0013F5 00 10                 3684 	.dw	Sswi2c$swi2c_readbit$305-Sswi2c$swi2c_readbit$297
      0013F7 03                    3685 	.db	3
      0013F8 BA 7E                 3686 	.sleb128	-198
      0013FA 01                    3687 	.db	1
      0013FB 04                    3688 	.db	4
      0013FC 02                    3689 	.uleb128	2
      0013FD 09                    3690 	.db	9
      0013FE 00 08                 3691 	.dw	Sswi2c$swi2c_readbit$309-Sswi2c$swi2c_readbit$305
      001400 03                    3692 	.db	3
      001401 C8 01                 3693 	.sleb128	200
      001403 01                    3694 	.db	1
      001404 09                    3695 	.db	9
      001405 00 0B                 3696 	.dw	Sswi2c$swi2c_readbit$314-Sswi2c$swi2c_readbit$309
      001407 03                    3697 	.db	3
      001408 01                    3698 	.sleb128	1
      001409 01                    3699 	.db	1
      00140A 09                    3700 	.db	9
      00140B 00 1B                 3701 	.dw	Sswi2c$swi2c_readbit$322-Sswi2c$swi2c_readbit$314
      00140D 03                    3702 	.db	3
      00140E 01                    3703 	.sleb128	1
      00140F 01                    3704 	.db	1
      001410 09                    3705 	.db	9
      001411 00 06                 3706 	.dw	Sswi2c$swi2c_readbit$324-Sswi2c$swi2c_readbit$322
      001413 03                    3707 	.db	3
      001414 02                    3708 	.sleb128	2
      001415 01                    3709 	.db	1
      001416 09                    3710 	.db	9
      001417 00 07                 3711 	.dw	Sswi2c$swi2c_readbit$326-Sswi2c$swi2c_readbit$324
      001419 03                    3712 	.db	3
      00141A 01                    3713 	.sleb128	1
      00141B 01                    3714 	.db	1
      00141C 04                    3715 	.db	4
      00141D 01                    3716 	.uleb128	1
      00141E 09                    3717 	.db	9
      00141F 00 0A                 3718 	.dw	Sswi2c$swi2c_readbit$331-Sswi2c$swi2c_readbit$326
      001421 03                    3719 	.db	3
      001422 B3 7E                 3720 	.sleb128	-205
      001424 01                    3721 	.db	1
      001425 04                    3722 	.db	4
      001426 02                    3723 	.uleb128	2
      001427 09                    3724 	.db	9
      001428 00 08                 3725 	.dw	Sswi2c$swi2c_readbit$335-Sswi2c$swi2c_readbit$331
      00142A 03                    3726 	.db	3
      00142B D0 01                 3727 	.sleb128	208
      00142D 01                    3728 	.db	1
      00142E 09                    3729 	.db	9
      00142F 00 11                 3730 	.dw	Sswi2c$swi2c_readbit$341-Sswi2c$swi2c_readbit$335
      001431 03                    3731 	.db	3
      001432 01                    3732 	.sleb128	1
      001433 01                    3733 	.db	1
      001434 09                    3734 	.db	9
      001435 00 04                 3735 	.dw	Sswi2c$swi2c_readbit$344-Sswi2c$swi2c_readbit$341
      001437 03                    3736 	.db	3
      001438 02                    3737 	.sleb128	2
      001439 01                    3738 	.db	1
      00143A 09                    3739 	.db	9
      00143B 00 02                 3740 	.dw	Sswi2c$swi2c_readbit$346-Sswi2c$swi2c_readbit$344
      00143D 03                    3741 	.db	3
      00143E 02                    3742 	.sleb128	2
      00143F 01                    3743 	.db	1
      001440 04                    3744 	.db	4
      001441 01                    3745 	.uleb128	1
      001442 09                    3746 	.db	9
      001443 00 12                 3747 	.dw	Sswi2c$swi2c_readbit$356-Sswi2c$swi2c_readbit$346
      001445 03                    3748 	.db	3
      001446 AB 7E                 3749 	.sleb128	-213
      001448 01                    3750 	.db	1
      001449 04                    3751 	.db	4
      00144A 02                    3752 	.uleb128	2
      00144B 09                    3753 	.db	9
      00144C 00 08                 3754 	.dw	Sswi2c$swi2c_readbit$360-Sswi2c$swi2c_readbit$356
      00144E 03                    3755 	.db	3
      00144F D7 01                 3756 	.sleb128	215
      001451 01                    3757 	.db	1
      001452 09                    3758 	.db	9
      001453 00 00                 3759 	.dw	Sswi2c$swi2c_readbit$361-Sswi2c$swi2c_readbit$360
      001455 03                    3760 	.db	3
      001456 01                    3761 	.sleb128	1
      001457 01                    3762 	.db	1
      001458 09                    3763 	.db	9
      001459 00 02                 3764 	.dw	1+Sswi2c$swi2c_readbit$363-Sswi2c$swi2c_readbit$361
      00145B 00                    3765 	.db	0
      00145C 01                    3766 	.uleb128	1
      00145D 01                    3767 	.db	1
      00145E 04                    3768 	.db	4
      00145F 02                    3769 	.uleb128	2
      001460 00                    3770 	.db	0
      001461 05                    3771 	.uleb128	5
      001462 02                    3772 	.db	2
      001463 00 00 91 DF           3773 	.dw	0,(Sswi2c$swi2c_writebit$365)
      001467 03                    3774 	.db	3
      001468 F6 01                 3775 	.sleb128	246
      00146A 01                    3776 	.db	1
      00146B 09                    3777 	.db	9
      00146C 00 01                 3778 	.dw	Sswi2c$swi2c_writebit$368-Sswi2c$swi2c_writebit$365
      00146E 03                    3779 	.db	3
      00146F 02                    3780 	.sleb128	2
      001470 01                    3781 	.db	1
      001471 09                    3782 	.db	9
      001472 00 05                 3783 	.dw	Sswi2c$swi2c_writebit$369-Sswi2c$swi2c_writebit$368
      001474 03                    3784 	.db	3
      001475 01                    3785 	.sleb128	1
      001476 01                    3786 	.db	1
      001477 09                    3787 	.db	9
      001478 00 07                 3788 	.dw	Sswi2c$swi2c_writebit$371-Sswi2c$swi2c_writebit$369
      00147A 03                    3789 	.db	3
      00147B 01                    3790 	.sleb128	1
      00147C 01                    3791 	.db	1
      00147D 09                    3792 	.db	9
      00147E 00 0E                 3793 	.dw	Sswi2c$swi2c_writebit$378-Sswi2c$swi2c_writebit$371
      001480 03                    3794 	.db	3
      001481 02                    3795 	.sleb128	2
      001482 01                    3796 	.db	1
      001483 04                    3797 	.db	4
      001484 01                    3798 	.uleb128	1
      001485 09                    3799 	.db	9
      001486 00 10                 3800 	.dw	Sswi2c$swi2c_writebit$387-Sswi2c$swi2c_writebit$378
      001488 03                    3801 	.db	3
      001489 9D 7E                 3802 	.sleb128	-227
      00148B 01                    3803 	.db	1
      00148C 04                    3804 	.db	4
      00148D 02                    3805 	.uleb128	2
      00148E 09                    3806 	.db	9
      00148F 00 08                 3807 	.dw	Sswi2c$swi2c_writebit$391-Sswi2c$swi2c_writebit$387
      001491 03                    3808 	.db	3
      001492 E6 01                 3809 	.sleb128	230
      001494 01                    3810 	.db	1
      001495 09                    3811 	.db	9
      001496 00 0B                 3812 	.dw	Sswi2c$swi2c_writebit$396-Sswi2c$swi2c_writebit$391
      001498 03                    3813 	.db	3
      001499 01                    3814 	.sleb128	1
      00149A 01                    3815 	.db	1
      00149B 09                    3816 	.db	9
      00149C 00 1B                 3817 	.dw	Sswi2c$swi2c_writebit$404-Sswi2c$swi2c_writebit$396
      00149E 03                    3818 	.db	3
      00149F 01                    3819 	.sleb128	1
      0014A0 01                    3820 	.db	1
      0014A1 09                    3821 	.db	9
      0014A2 00 06                 3822 	.dw	Sswi2c$swi2c_writebit$406-Sswi2c$swi2c_writebit$404
      0014A4 03                    3823 	.db	3
      0014A5 02                    3824 	.sleb128	2
      0014A6 01                    3825 	.db	1
      0014A7 09                    3826 	.db	9
      0014A8 00 07                 3827 	.dw	Sswi2c$swi2c_writebit$408-Sswi2c$swi2c_writebit$406
      0014AA 03                    3828 	.db	3
      0014AB 01                    3829 	.sleb128	1
      0014AC 01                    3830 	.db	1
      0014AD 09                    3831 	.db	9
      0014AE 00 0B                 3832 	.dw	Sswi2c$swi2c_writebit$413-Sswi2c$swi2c_writebit$408
      0014B0 03                    3833 	.db	3
      0014B1 01                    3834 	.sleb128	1
      0014B2 01                    3835 	.db	1
      0014B3 04                    3836 	.db	4
      0014B4 01                    3837 	.uleb128	1
      0014B5 09                    3838 	.db	9
      0014B6 00 0A                 3839 	.dw	Sswi2c$swi2c_writebit$418-Sswi2c$swi2c_writebit$413
      0014B8 03                    3840 	.db	3
      0014B9 94 7E                 3841 	.sleb128	-236
      0014BB 01                    3842 	.db	1
      0014BC 04                    3843 	.db	4
      0014BD 02                    3844 	.uleb128	2
      0014BE 09                    3845 	.db	9
      0014BF 00 08                 3846 	.dw	Sswi2c$swi2c_writebit$422-Sswi2c$swi2c_writebit$418
      0014C1 03                    3847 	.db	3
      0014C2 EF 01                 3848 	.sleb128	239
      0014C4 01                    3849 	.db	1
      0014C5 04                    3850 	.db	4
      0014C6 01                    3851 	.uleb128	1
      0014C7 09                    3852 	.db	9
      0014C8 00 10                 3853 	.dw	Sswi2c$swi2c_writebit$430-Sswi2c$swi2c_writebit$422
      0014CA 03                    3854 	.db	3
      0014CB 91 7E                 3855 	.sleb128	-239
      0014CD 01                    3856 	.db	1
      0014CE 04                    3857 	.db	4
      0014CF 02                    3858 	.uleb128	2
      0014D0 09                    3859 	.db	9
      0014D1 00 08                 3860 	.dw	Sswi2c$swi2c_writebit$434-Sswi2c$swi2c_writebit$430
      0014D3 03                    3861 	.db	3
      0014D4 F1 01                 3862 	.sleb128	241
      0014D6 01                    3863 	.db	1
      0014D7 09                    3864 	.db	9
      0014D8 00 01                 3865 	.dw	Sswi2c$swi2c_writebit$435-Sswi2c$swi2c_writebit$434
      0014DA 03                    3866 	.db	3
      0014DB 01                    3867 	.sleb128	1
      0014DC 01                    3868 	.db	1
      0014DD 09                    3869 	.db	9
      0014DE 00 02                 3870 	.dw	1+Sswi2c$swi2c_writebit$437-Sswi2c$swi2c_writebit$435
      0014E0 00                    3871 	.db	0
      0014E1 01                    3872 	.uleb128	1
      0014E2 01                    3873 	.db	1
      0014E3 04                    3874 	.db	4
      0014E4 02                    3875 	.uleb128	2
      0014E5 00                    3876 	.db	0
      0014E6 05                    3877 	.uleb128	5
      0014E7 02                    3878 	.db	2
      0014E8 00 00 92 7D           3879 	.dw	0,(Sswi2c$swi2c_RESTART$439)
      0014EC 03                    3880 	.db	3
      0014ED 90 02                 3881 	.sleb128	272
      0014EF 01                    3882 	.db	1
      0014F0 09                    3883 	.db	9
      0014F1 00 01                 3884 	.dw	Sswi2c$swi2c_RESTART$442-Sswi2c$swi2c_RESTART$439
      0014F3 03                    3885 	.db	3
      0014F4 02                    3886 	.sleb128	2
      0014F5 01                    3887 	.db	1
      0014F6 09                    3888 	.db	9
      0014F7 00 02                 3889 	.dw	Sswi2c$swi2c_RESTART$443-Sswi2c$swi2c_RESTART$442
      0014F9 03                    3890 	.db	3
      0014FA 01                    3891 	.sleb128	1
      0014FB 01                    3892 	.db	1
      0014FC 09                    3893 	.db	9
      0014FD 00 0D                 3894 	.dw	Sswi2c$swi2c_RESTART$450-Sswi2c$swi2c_RESTART$443
      0014FF 03                    3895 	.db	3
      001500 01                    3896 	.sleb128	1
      001501 01                    3897 	.db	1
      001502 09                    3898 	.db	9
      001503 00 0D                 3899 	.dw	Sswi2c$swi2c_RESTART$457-Sswi2c$swi2c_RESTART$450
      001505 03                    3900 	.db	3
      001506 01                    3901 	.sleb128	1
      001507 01                    3902 	.db	1
      001508 09                    3903 	.db	9
      001509 00 19                 3904 	.dw	Sswi2c$swi2c_RESTART$465-Sswi2c$swi2c_RESTART$457
      00150B 03                    3905 	.db	3
      00150C 01                    3906 	.sleb128	1
      00150D 01                    3907 	.db	1
      00150E 09                    3908 	.db	9
      00150F 00 06                 3909 	.dw	Sswi2c$swi2c_RESTART$467-Sswi2c$swi2c_RESTART$465
      001511 03                    3910 	.db	3
      001512 02                    3911 	.sleb128	2
      001513 01                    3912 	.db	1
      001514 09                    3913 	.db	9
      001515 00 07                 3914 	.dw	Sswi2c$swi2c_RESTART$469-Sswi2c$swi2c_RESTART$467
      001517 03                    3915 	.db	3
      001518 01                    3916 	.sleb128	1
      001519 01                    3917 	.db	1
      00151A 09                    3918 	.db	9
      00151B 00 0B                 3919 	.dw	Sswi2c$swi2c_RESTART$474-Sswi2c$swi2c_RESTART$469
      00151D 03                    3920 	.db	3
      00151E 01                    3921 	.sleb128	1
      00151F 01                    3922 	.db	1
      001520 04                    3923 	.db	4
      001521 01                    3924 	.uleb128	1
      001522 09                    3925 	.db	9
      001523 00 0A                 3926 	.dw	Sswi2c$swi2c_RESTART$479-Sswi2c$swi2c_RESTART$474
      001525 03                    3927 	.db	3
      001526 FF 7D                 3928 	.sleb128	-257
      001528 01                    3929 	.db	1
      001529 04                    3930 	.db	4
      00152A 02                    3931 	.uleb128	2
      00152B 09                    3932 	.db	9
      00152C 00 08                 3933 	.dw	Sswi2c$swi2c_RESTART$483-Sswi2c$swi2c_RESTART$479
      00152E 03                    3934 	.db	3
      00152F 84 02                 3935 	.sleb128	260
      001531 01                    3936 	.db	1
      001532 09                    3937 	.db	9
      001533 00 0B                 3938 	.dw	Sswi2c$swi2c_RESTART$488-Sswi2c$swi2c_RESTART$483
      001535 03                    3939 	.db	3
      001536 01                    3940 	.sleb128	1
      001537 01                    3941 	.db	1
      001538 09                    3942 	.db	9
      001539 00 1B                 3943 	.dw	Sswi2c$swi2c_RESTART$496-Sswi2c$swi2c_RESTART$488
      00153B 03                    3944 	.db	3
      00153C 01                    3945 	.sleb128	1
      00153D 01                    3946 	.db	1
      00153E 09                    3947 	.db	9
      00153F 00 04                 3948 	.dw	Sswi2c$swi2c_RESTART$498-Sswi2c$swi2c_RESTART$496
      001541 03                    3949 	.db	3
      001542 02                    3950 	.sleb128	2
      001543 01                    3951 	.db	1
      001544 09                    3952 	.db	9
      001545 00 06                 3953 	.dw	Sswi2c$swi2c_RESTART$500-Sswi2c$swi2c_RESTART$498
      001547 03                    3954 	.db	3
      001548 01                    3955 	.sleb128	1
      001549 01                    3956 	.db	1
      00154A 04                    3957 	.db	4
      00154B 01                    3958 	.uleb128	1
      00154C 09                    3959 	.db	9
      00154D 00 0A                 3960 	.dw	Sswi2c$swi2c_RESTART$505-Sswi2c$swi2c_RESTART$500
      00154F 03                    3961 	.db	3
      001550 F7 7D                 3962 	.sleb128	-265
      001552 01                    3963 	.db	1
      001553 04                    3964 	.db	4
      001554 02                    3965 	.uleb128	2
      001555 09                    3966 	.db	9
      001556 00 08                 3967 	.dw	Sswi2c$swi2c_RESTART$509-Sswi2c$swi2c_RESTART$505
      001558 03                    3968 	.db	3
      001559 8C 02                 3969 	.sleb128	268
      00155B 01                    3970 	.db	1
      00155C 04                    3971 	.db	4
      00155D 01                    3972 	.uleb128	1
      00155E 09                    3973 	.db	9
      00155F 00 10                 3974 	.dw	Sswi2c$swi2c_RESTART$517-Sswi2c$swi2c_RESTART$509
      001561 03                    3975 	.db	3
      001562 F4 7D                 3976 	.sleb128	-268
      001564 01                    3977 	.db	1
      001565 04                    3978 	.db	4
      001566 02                    3979 	.uleb128	2
      001567 09                    3980 	.db	9
      001568 00 08                 3981 	.dw	Sswi2c$swi2c_RESTART$521-Sswi2c$swi2c_RESTART$517
      00156A 03                    3982 	.db	3
      00156B 8E 02                 3983 	.sleb128	270
      00156D 01                    3984 	.db	1
      00156E 04                    3985 	.db	4
      00156F 01                    3986 	.uleb128	1
      001570 09                    3987 	.db	9
      001571 00 10                 3988 	.dw	Sswi2c$swi2c_RESTART$529-Sswi2c$swi2c_RESTART$521
      001573 03                    3989 	.db	3
      001574 F2 7D                 3990 	.sleb128	-270
      001576 01                    3991 	.db	1
      001577 04                    3992 	.db	4
      001578 02                    3993 	.uleb128	2
      001579 09                    3994 	.db	9
      00157A 00 08                 3995 	.dw	Sswi2c$swi2c_RESTART$533-Sswi2c$swi2c_RESTART$529
      00157C 03                    3996 	.db	3
      00157D 90 02                 3997 	.sleb128	272
      00157F 01                    3998 	.db	1
      001580 09                    3999 	.db	9
      001581 00 01                 4000 	.dw	Sswi2c$swi2c_RESTART$534-Sswi2c$swi2c_RESTART$533
      001583 03                    4001 	.db	3
      001584 01                    4002 	.sleb128	1
      001585 01                    4003 	.db	1
      001586 09                    4004 	.db	9
      001587 00 02                 4005 	.dw	1+Sswi2c$swi2c_RESTART$536-Sswi2c$swi2c_RESTART$534
      001589 00                    4006 	.db	0
      00158A 01                    4007 	.uleb128	1
      00158B 01                    4008 	.db	1
      00158C 04                    4009 	.db	4
      00158D 02                    4010 	.uleb128	2
      00158E 00                    4011 	.db	0
      00158F 05                    4012 	.uleb128	5
      001590 02                    4013 	.db	2
      001591 00 00 93 52           4014 	.dw	0,(Sswi2c$swi2c_START$538)
      001595 03                    4015 	.db	3
      001596 AF 02                 4016 	.sleb128	303
      001598 01                    4017 	.db	1
      001599 09                    4018 	.db	9
      00159A 00 00                 4019 	.dw	Sswi2c$swi2c_START$540-Sswi2c$swi2c_START$538
      00159C 03                    4020 	.db	3
      00159D 02                    4021 	.sleb128	2
      00159E 01                    4022 	.db	1
      00159F 09                    4023 	.db	9
      0015A0 00 22                 4024 	.dw	Sswi2c$swi2c_START$550-Sswi2c$swi2c_START$540
      0015A2 03                    4025 	.db	3
      0015A3 01                    4026 	.sleb128	1
      0015A4 01                    4027 	.db	1
      0015A5 09                    4028 	.db	9
      0015A6 00 0B                 4029 	.dw	Sswi2c$swi2c_START$555-Sswi2c$swi2c_START$550
      0015A8 03                    4030 	.db	3
      0015A9 01                    4031 	.sleb128	1
      0015AA 01                    4032 	.db	1
      0015AB 09                    4033 	.db	9
      0015AC 00 0B                 4034 	.dw	Sswi2c$swi2c_START$560-Sswi2c$swi2c_START$555
      0015AE 03                    4035 	.db	3
      0015AF 01                    4036 	.sleb128	1
      0015B0 01                    4037 	.db	1
      0015B1 09                    4038 	.db	9
      0015B2 00 05                 4039 	.dw	Sswi2c$swi2c_START$562-Sswi2c$swi2c_START$560
      0015B4 03                    4040 	.db	3
      0015B5 02                    4041 	.sleb128	2
      0015B6 01                    4042 	.db	1
      0015B7 04                    4043 	.db	4
      0015B8 01                    4044 	.uleb128	1
      0015B9 09                    4045 	.db	9
      0015BA 00 10                 4046 	.dw	Sswi2c$swi2c_START$570-Sswi2c$swi2c_START$562
      0015BC 03                    4047 	.db	3
      0015BD E3 7D                 4048 	.sleb128	-285
      0015BF 01                    4049 	.db	1
      0015C0 04                    4050 	.db	4
      0015C1 02                    4051 	.uleb128	2
      0015C2 09                    4052 	.db	9
      0015C3 00 08                 4053 	.dw	Sswi2c$swi2c_START$574-Sswi2c$swi2c_START$570
      0015C5 03                    4054 	.db	3
      0015C6 9F 02                 4055 	.sleb128	287
      0015C8 01                    4056 	.db	1
      0015C9 04                    4057 	.db	4
      0015CA 01                    4058 	.uleb128	1
      0015CB 09                    4059 	.db	9
      0015CC 00 10                 4060 	.dw	Sswi2c$swi2c_START$582-Sswi2c$swi2c_START$574
      0015CE 03                    4061 	.db	3
      0015CF E1 7D                 4062 	.sleb128	-287
      0015D1 01                    4063 	.db	1
      0015D2 04                    4064 	.db	4
      0015D3 02                    4065 	.uleb128	2
      0015D4 09                    4066 	.db	9
      0015D5 00 08                 4067 	.dw	Sswi2c$swi2c_START$586-Sswi2c$swi2c_START$582
      0015D7 03                    4068 	.db	3
      0015D8 A1 02                 4069 	.sleb128	289
      0015DA 01                    4070 	.db	1
      0015DB 09                    4071 	.db	9
      0015DC 00 01                 4072 	.dw	Sswi2c$swi2c_START$587-Sswi2c$swi2c_START$586
      0015DE 03                    4073 	.db	3
      0015DF 01                    4074 	.sleb128	1
      0015E0 01                    4075 	.db	1
      0015E1 09                    4076 	.db	9
      0015E2 00 01                 4077 	.dw	1+Sswi2c$swi2c_START$588-Sswi2c$swi2c_START$587
      0015E4 00                    4078 	.db	0
      0015E5 01                    4079 	.uleb128	1
      0015E6 01                    4080 	.db	1
      0015E7 04                    4081 	.db	4
      0015E8 02                    4082 	.uleb128	2
      0015E9 00                    4083 	.db	0
      0015EA 05                    4084 	.uleb128	5
      0015EB 02                    4085 	.db	2
      0015EC 00 00 93 C1           4086 	.dw	0,(Sswi2c$swi2c_STOP$590)
      0015F0 03                    4087 	.db	3
      0015F1 C0 02                 4088 	.sleb128	320
      0015F3 01                    4089 	.db	1
      0015F4 09                    4090 	.db	9
      0015F5 00 02                 4091 	.dw	Sswi2c$swi2c_STOP$593-Sswi2c$swi2c_STOP$590
      0015F7 03                    4092 	.db	3
      0015F8 02                    4093 	.sleb128	2
      0015F9 01                    4094 	.db	1
      0015FA 09                    4095 	.db	9
      0015FB 00 05                 4096 	.dw	Sswi2c$swi2c_STOP$594-Sswi2c$swi2c_STOP$593
      0015FD 03                    4097 	.db	3
      0015FE 01                    4098 	.sleb128	1
      0015FF 01                    4099 	.db	1
      001600 09                    4100 	.db	9
      001601 00 02                 4101 	.dw	Sswi2c$swi2c_STOP$595-Sswi2c$swi2c_STOP$594
      001603 03                    4102 	.db	3
      001604 01                    4103 	.sleb128	1
      001605 01                    4104 	.db	1
      001606 04                    4105 	.db	4
      001607 01                    4106 	.uleb128	1
      001608 09                    4107 	.db	9
      001609 00 10                 4108 	.dw	Sswi2c$swi2c_STOP$603-Sswi2c$swi2c_STOP$595
      00160B 03                    4109 	.db	3
      00160C D5 7D                 4110 	.sleb128	-299
      00160E 01                    4111 	.db	1
      00160F 04                    4112 	.db	4
      001610 02                    4113 	.uleb128	2
      001611 09                    4114 	.db	9
      001612 00 08                 4115 	.dw	Sswi2c$swi2c_STOP$607-Sswi2c$swi2c_STOP$603
      001614 03                    4116 	.db	3
      001615 AD 02                 4117 	.sleb128	301
      001617 01                    4118 	.db	1
      001618 09                    4119 	.db	9
      001619 00 0B                 4120 	.dw	Sswi2c$swi2c_STOP$612-Sswi2c$swi2c_STOP$607
      00161B 03                    4121 	.db	3
      00161C 01                    4122 	.sleb128	1
      00161D 01                    4123 	.db	1
      00161E 09                    4124 	.db	9
      00161F 00 1B                 4125 	.dw	Sswi2c$swi2c_STOP$620-Sswi2c$swi2c_STOP$612
      001621 03                    4126 	.db	3
      001622 01                    4127 	.sleb128	1
      001623 01                    4128 	.db	1
      001624 09                    4129 	.db	9
      001625 00 04                 4130 	.dw	Sswi2c$swi2c_STOP$622-Sswi2c$swi2c_STOP$620
      001627 03                    4131 	.db	3
      001628 02                    4132 	.sleb128	2
      001629 01                    4133 	.db	1
      00162A 09                    4134 	.db	9
      00162B 00 06                 4135 	.dw	Sswi2c$swi2c_STOP$624-Sswi2c$swi2c_STOP$622
      00162D 03                    4136 	.db	3
      00162E 01                    4137 	.sleb128	1
      00162F 01                    4138 	.db	1
      001630 04                    4139 	.db	4
      001631 01                    4140 	.uleb128	1
      001632 09                    4141 	.db	9
      001633 00 09                 4142 	.dw	Sswi2c$swi2c_STOP$629-Sswi2c$swi2c_STOP$624
      001635 03                    4143 	.db	3
      001636 CE 7D                 4144 	.sleb128	-306
      001638 01                    4145 	.db	1
      001639 04                    4146 	.db	4
      00163A 02                    4147 	.uleb128	2
      00163B 09                    4148 	.db	9
      00163C 00 08                 4149 	.dw	Sswi2c$swi2c_STOP$633-Sswi2c$swi2c_STOP$629
      00163E 03                    4150 	.db	3
      00163F B5 02                 4151 	.sleb128	309
      001641 01                    4152 	.db	1
      001642 09                    4153 	.db	9
      001643 00 0B                 4154 	.dw	Sswi2c$swi2c_STOP$638-Sswi2c$swi2c_STOP$633
      001645 03                    4155 	.db	3
      001646 01                    4156 	.sleb128	1
      001647 01                    4157 	.db	1
      001648 09                    4158 	.db	9
      001649 00 02                 4159 	.dw	Sswi2c$swi2c_STOP$639-Sswi2c$swi2c_STOP$638
      00164B 03                    4160 	.db	3
      00164C 01                    4161 	.sleb128	1
      00164D 01                    4162 	.db	1
      00164E 09                    4163 	.db	9
      00164F 00 03                 4164 	.dw	1+Sswi2c$swi2c_STOP$641-Sswi2c$swi2c_STOP$639
      001651 00                    4165 	.db	0
      001652 01                    4166 	.uleb128	1
      001653 01                    4167 	.db	1
      001654 04                    4168 	.db	4
      001655 02                    4169 	.uleb128	2
      001656 00                    4170 	.db	0
      001657 05                    4171 	.uleb128	5
      001658 02                    4172 	.db	2
      001659 00 00 94 33           4173 	.dw	0,(Sswi2c$swi2c_recover$643)
      00165D 03                    4174 	.db	3
      00165E D6 02                 4175 	.sleb128	342
      001660 01                    4176 	.db	1
      001661 09                    4177 	.db	9
      001662 00 02                 4178 	.dw	Sswi2c$swi2c_recover$646-Sswi2c$swi2c_recover$643
      001664 03                    4179 	.db	3
      001665 02                    4180 	.sleb128	2
      001666 01                    4181 	.db	1
      001667 09                    4182 	.db	9
      001668 00 05                 4183 	.dw	Sswi2c$swi2c_recover$647-Sswi2c$swi2c_recover$646
      00166A 03                    4184 	.db	3
      00166B 02                    4185 	.sleb128	2
      00166C 01                    4186 	.db	1
      00166D 09                    4187 	.db	9
      00166E 00 0B                 4188 	.dw	Sswi2c$swi2c_recover$652-Sswi2c$swi2c_recover$647
      001670 03                    4189 	.db	3
      001671 01                    4190 	.sleb128	1
      001672 01                    4191 	.db	1
      001673 04                    4192 	.db	4
      001674 01                    4193 	.uleb128	1
      001675 09                    4194 	.db	9
      001676 00 10                 4195 	.dw	Sswi2c$swi2c_recover$660-Sswi2c$swi2c_recover$652
      001678 03                    4196 	.db	3
      001679 BE 7D                 4197 	.sleb128	-322
      00167B 01                    4198 	.db	1
      00167C 04                    4199 	.db	4
      00167D 02                    4200 	.uleb128	2
      00167E 09                    4201 	.db	9
      00167F 00 08                 4202 	.dw	Sswi2c$swi2c_recover$664-Sswi2c$swi2c_recover$660
      001681 03                    4203 	.db	3
      001682 C5 02                 4204 	.sleb128	325
      001684 01                    4205 	.db	1
      001685 09                    4206 	.db	9
      001686 00 22                 4207 	.dw	Sswi2c$swi2c_recover$674-Sswi2c$swi2c_recover$664
      001688 03                    4208 	.db	3
      001689 01                    4209 	.sleb128	1
      00168A 01                    4210 	.db	1
      00168B 09                    4211 	.db	9
      00168C 00 04                 4212 	.dw	Sswi2c$swi2c_recover$676-Sswi2c$swi2c_recover$674
      00168E 03                    4213 	.db	3
      00168F 03                    4214 	.sleb128	3
      001690 01                    4215 	.db	1
      001691 09                    4216 	.db	9
      001692 00 11                 4217 	.dw	Sswi2c$swi2c_recover$681-Sswi2c$swi2c_recover$676
      001694 03                    4218 	.db	3
      001695 01                    4219 	.sleb128	1
      001696 01                    4220 	.db	1
      001697 09                    4221 	.db	9
      001698 00 02                 4222 	.dw	Sswi2c$swi2c_recover$683-Sswi2c$swi2c_recover$681
      00169A 03                    4223 	.db	3
      00169B 01                    4224 	.sleb128	1
      00169C 01                    4225 	.db	1
      00169D 04                    4226 	.db	4
      00169E 01                    4227 	.uleb128	1
      00169F 09                    4228 	.db	9
      0016A0 00 10                 4229 	.dw	Sswi2c$swi2c_recover$691-Sswi2c$swi2c_recover$683
      0016A2 03                    4230 	.db	3
      0016A3 B5 7D                 4231 	.sleb128	-331
      0016A5 01                    4232 	.db	1
      0016A6 04                    4233 	.db	4
      0016A7 02                    4234 	.uleb128	2
      0016A8 09                    4235 	.db	9
      0016A9 00 08                 4236 	.dw	Sswi2c$swi2c_recover$695-Sswi2c$swi2c_recover$691
      0016AB 03                    4237 	.db	3
      0016AC CD 02                 4238 	.sleb128	333
      0016AE 01                    4239 	.db	1
      0016AF 09                    4240 	.db	9
      0016B0 00 0B                 4241 	.dw	Sswi2c$swi2c_recover$701-Sswi2c$swi2c_recover$695
      0016B2 03                    4242 	.db	3
      0016B3 01                    4243 	.sleb128	1
      0016B4 01                    4244 	.db	1
      0016B5 09                    4245 	.db	9
      0016B6 00 1B                 4246 	.dw	Sswi2c$swi2c_recover$709-Sswi2c$swi2c_recover$701
      0016B8 03                    4247 	.db	3
      0016B9 01                    4248 	.sleb128	1
      0016BA 01                    4249 	.db	1
      0016BB 09                    4250 	.db	9
      0016BC 00 06                 4251 	.dw	Sswi2c$swi2c_recover$712-Sswi2c$swi2c_recover$709
      0016BE 03                    4252 	.db	3
      0016BF 02                    4253 	.sleb128	2
      0016C0 01                    4254 	.db	1
      0016C1 09                    4255 	.db	9
      0016C2 00 07                 4256 	.dw	Sswi2c$swi2c_recover$714-Sswi2c$swi2c_recover$712
      0016C4 03                    4257 	.db	3
      0016C5 01                    4258 	.sleb128	1
      0016C6 01                    4259 	.db	1
      0016C7 04                    4260 	.db	4
      0016C8 01                    4261 	.uleb128	1
      0016C9 09                    4262 	.db	9
      0016CA 00 0A                 4263 	.dw	Sswi2c$swi2c_recover$719-Sswi2c$swi2c_recover$714
      0016CC 03                    4264 	.db	3
      0016CD AE 7D                 4265 	.sleb128	-338
      0016CF 01                    4266 	.db	1
      0016D0 04                    4267 	.db	4
      0016D1 02                    4268 	.uleb128	2
      0016D2 09                    4269 	.db	9
      0016D3 00 08                 4270 	.dw	Sswi2c$swi2c_recover$723-Sswi2c$swi2c_recover$719
      0016D5 03                    4271 	.db	3
      0016D6 D5 02                 4272 	.sleb128	341
      0016D8 01                    4273 	.db	1
      0016D9 09                    4274 	.db	9
      0016DA 00 11                 4275 	.dw	Sswi2c$swi2c_recover$729-Sswi2c$swi2c_recover$723
      0016DC 03                    4276 	.db	3
      0016DD 01                    4277 	.sleb128	1
      0016DE 01                    4278 	.db	1
      0016DF 09                    4279 	.db	9
      0016E0 00 08                 4280 	.dw	Sswi2c$swi2c_recover$733-Sswi2c$swi2c_recover$729
      0016E2 03                    4281 	.db	3
      0016E3 74                    4282 	.sleb128	-12
      0016E4 01                    4283 	.db	1
      0016E5 09                    4284 	.db	9
      0016E6 00 0B                 4285 	.dw	Sswi2c$swi2c_recover$735-Sswi2c$swi2c_recover$733
      0016E8 03                    4286 	.db	3
      0016E9 0F                    4287 	.sleb128	15
      0016EA 01                    4288 	.db	1
      0016EB 09                    4289 	.db	9
      0016EC 00 02                 4290 	.dw	Sswi2c$swi2c_recover$737-Sswi2c$swi2c_recover$735
      0016EE 03                    4291 	.db	3
      0016EF 02                    4292 	.sleb128	2
      0016F0 01                    4293 	.db	1
      0016F1 09                    4294 	.db	9
      0016F2 00 03                 4295 	.dw	1+Sswi2c$swi2c_recover$739-Sswi2c$swi2c_recover$737
      0016F4 00                    4296 	.db	0
      0016F5 01                    4297 	.uleb128	1
      0016F6 01                    4298 	.db	1
      0016F7                       4299 Ldebug_line_end:
                                   4300 
                                   4301 	.area .debug_loc (NOLOAD)
      0027D4                       4302 Ldebug_loc_start:
      0027D4 00 00 95 1B           4303 	.dw	0,(Sswi2c$swi2c_recover$738)
      0027D8 00 00 95 1C           4304 	.dw	0,(Sswi2c$swi2c_recover$740)
      0027DC 00 02                 4305 	.dw	2
      0027DE 78                    4306 	.db	120
      0027DF 01                    4307 	.sleb128	1
      0027E0 00 00 95 06           4308 	.dw	0,(Sswi2c$swi2c_recover$730)
      0027E4 00 00 95 1B           4309 	.dw	0,(Sswi2c$swi2c_recover$738)
      0027E8 00 02                 4310 	.dw	2
      0027EA 78                    4311 	.db	120
      0027EB 01                    4312 	.sleb128	1
      0027EC 00 00 94 FE           4313 	.dw	0,(Sswi2c$swi2c_recover$727)
      0027F0 00 00 95 06           4314 	.dw	0,(Sswi2c$swi2c_recover$730)
      0027F4 00 02                 4315 	.dw	2
      0027F6 78                    4316 	.db	120
      0027F7 04                    4317 	.sleb128	4
      0027F8 00 00 94 F9           4318 	.dw	0,(Sswi2c$swi2c_recover$726)
      0027FC 00 00 94 FE           4319 	.dw	0,(Sswi2c$swi2c_recover$727)
      002800 00 02                 4320 	.dw	2
      002802 78                    4321 	.db	120
      002803 07                    4322 	.sleb128	7
      002804 00 00 94 F7           4323 	.dw	0,(Sswi2c$swi2c_recover$725)
      002808 00 00 94 F9           4324 	.dw	0,(Sswi2c$swi2c_recover$726)
      00280C 00 02                 4325 	.dw	2
      00280E 78                    4326 	.db	120
      00280F 06                    4327 	.sleb128	6
      002810 00 00 94 F5           4328 	.dw	0,(Sswi2c$swi2c_recover$724)
      002814 00 00 94 F7           4329 	.dw	0,(Sswi2c$swi2c_recover$725)
      002818 00 02                 4330 	.dw	2
      00281A 78                    4331 	.db	120
      00281B 05                    4332 	.sleb128	5
      00281C 00 00 94 C8           4333 	.dw	0,(Sswi2c$swi2c_recover$707)
      002820 00 00 94 F5           4334 	.dw	0,(Sswi2c$swi2c_recover$724)
      002824 00 02                 4335 	.dw	2
      002826 78                    4336 	.db	120
      002827 04                    4337 	.sleb128	4
      002828 00 00 94 C7           4338 	.dw	0,(Sswi2c$swi2c_recover$706)
      00282C 00 00 94 C8           4339 	.dw	0,(Sswi2c$swi2c_recover$707)
      002830 00 02                 4340 	.dw	2
      002832 78                    4341 	.db	120
      002833 06                    4342 	.sleb128	6
      002834 00 00 94 C2           4343 	.dw	0,(Sswi2c$swi2c_recover$705)
      002838 00 00 94 C7           4344 	.dw	0,(Sswi2c$swi2c_recover$706)
      00283C 00 02                 4345 	.dw	2
      00283E 78                    4346 	.db	120
      00283F 09                    4347 	.sleb128	9
      002840 00 00 94 C0           4348 	.dw	0,(Sswi2c$swi2c_recover$704)
      002844 00 00 94 C2           4349 	.dw	0,(Sswi2c$swi2c_recover$705)
      002848 00 02                 4350 	.dw	2
      00284A 78                    4351 	.db	120
      00284B 08                    4352 	.sleb128	8
      00284C 00 00 94 BE           4353 	.dw	0,(Sswi2c$swi2c_recover$703)
      002850 00 00 94 C0           4354 	.dw	0,(Sswi2c$swi2c_recover$704)
      002854 00 02                 4355 	.dw	2
      002856 78                    4356 	.db	120
      002857 07                    4357 	.sleb128	7
      002858 00 00 94 BC           4358 	.dw	0,(Sswi2c$swi2c_recover$702)
      00285C 00 00 94 BE           4359 	.dw	0,(Sswi2c$swi2c_recover$703)
      002860 00 02                 4360 	.dw	2
      002862 78                    4361 	.db	120
      002863 06                    4362 	.sleb128	6
      002864 00 00 94 B9           4363 	.dw	0,(Sswi2c$swi2c_recover$699)
      002868 00 00 94 BC           4364 	.dw	0,(Sswi2c$swi2c_recover$702)
      00286C 00 02                 4365 	.dw	2
      00286E 78                    4366 	.db	120
      00286F 04                    4367 	.sleb128	4
      002870 00 00 94 B4           4368 	.dw	0,(Sswi2c$swi2c_recover$698)
      002874 00 00 94 B9           4369 	.dw	0,(Sswi2c$swi2c_recover$699)
      002878 00 02                 4370 	.dw	2
      00287A 78                    4371 	.db	120
      00287B 07                    4372 	.sleb128	7
      00287C 00 00 94 B2           4373 	.dw	0,(Sswi2c$swi2c_recover$697)
      002880 00 00 94 B4           4374 	.dw	0,(Sswi2c$swi2c_recover$698)
      002884 00 02                 4375 	.dw	2
      002886 78                    4376 	.db	120
      002887 06                    4377 	.sleb128	6
      002888 00 00 94 B0           4378 	.dw	0,(Sswi2c$swi2c_recover$696)
      00288C 00 00 94 B2           4379 	.dw	0,(Sswi2c$swi2c_recover$697)
      002890 00 02                 4380 	.dw	2
      002892 78                    4381 	.db	120
      002893 05                    4382 	.sleb128	5
      002894 00 00 94 A1           4383 	.dw	0,(Sswi2c$swi2c_recover$687)
      002898 00 00 94 B0           4384 	.dw	0,(Sswi2c$swi2c_recover$696)
      00289C 00 02                 4385 	.dw	2
      00289E 78                    4386 	.db	120
      00289F 04                    4387 	.sleb128	4
      0028A0 00 00 94 9C           4388 	.dw	0,(Sswi2c$swi2c_recover$686)
      0028A4 00 00 94 A1           4389 	.dw	0,(Sswi2c$swi2c_recover$687)
      0028A8 00 02                 4390 	.dw	2
      0028AA 78                    4391 	.db	120
      0028AB 07                    4392 	.sleb128	7
      0028AC 00 00 94 9A           4393 	.dw	0,(Sswi2c$swi2c_recover$685)
      0028B0 00 00 94 9C           4394 	.dw	0,(Sswi2c$swi2c_recover$686)
      0028B4 00 02                 4395 	.dw	2
      0028B6 78                    4396 	.db	120
      0028B7 06                    4397 	.sleb128	6
      0028B8 00 00 94 98           4398 	.dw	0,(Sswi2c$swi2c_recover$684)
      0028BC 00 00 94 9A           4399 	.dw	0,(Sswi2c$swi2c_recover$685)
      0028C0 00 02                 4400 	.dw	2
      0028C2 78                    4401 	.db	120
      0028C3 05                    4402 	.sleb128	5
      0028C4 00 00 94 8E           4403 	.dw	0,(Sswi2c$swi2c_recover$680)
      0028C8 00 00 94 98           4404 	.dw	0,(Sswi2c$swi2c_recover$684)
      0028CC 00 02                 4405 	.dw	2
      0028CE 78                    4406 	.db	120
      0028CF 04                    4407 	.sleb128	4
      0028D0 00 00 94 89           4408 	.dw	0,(Sswi2c$swi2c_recover$679)
      0028D4 00 00 94 8E           4409 	.dw	0,(Sswi2c$swi2c_recover$680)
      0028D8 00 02                 4410 	.dw	2
      0028DA 78                    4411 	.db	120
      0028DB 07                    4412 	.sleb128	7
      0028DC 00 00 94 87           4413 	.dw	0,(Sswi2c$swi2c_recover$678)
      0028E0 00 00 94 89           4414 	.dw	0,(Sswi2c$swi2c_recover$679)
      0028E4 00 02                 4415 	.dw	2
      0028E6 78                    4416 	.db	120
      0028E7 06                    4417 	.sleb128	6
      0028E8 00 00 94 85           4418 	.dw	0,(Sswi2c$swi2c_recover$677)
      0028EC 00 00 94 87           4419 	.dw	0,(Sswi2c$swi2c_recover$678)
      0028F0 00 02                 4420 	.dw	2
      0028F2 78                    4421 	.db	120
      0028F3 05                    4422 	.sleb128	5
      0028F4 00 00 94 79           4423 	.dw	0,(Sswi2c$swi2c_recover$672)
      0028F8 00 00 94 85           4424 	.dw	0,(Sswi2c$swi2c_recover$677)
      0028FC 00 02                 4425 	.dw	2
      0028FE 78                    4426 	.db	120
      0028FF 04                    4427 	.sleb128	4
      002900 00 00 94 74           4428 	.dw	0,(Sswi2c$swi2c_recover$671)
      002904 00 00 94 79           4429 	.dw	0,(Sswi2c$swi2c_recover$672)
      002908 00 02                 4430 	.dw	2
      00290A 78                    4431 	.db	120
      00290B 07                    4432 	.sleb128	7
      00290C 00 00 94 72           4433 	.dw	0,(Sswi2c$swi2c_recover$670)
      002910 00 00 94 74           4434 	.dw	0,(Sswi2c$swi2c_recover$671)
      002914 00 02                 4435 	.dw	2
      002916 78                    4436 	.db	120
      002917 06                    4437 	.sleb128	6
      002918 00 00 94 70           4438 	.dw	0,(Sswi2c$swi2c_recover$669)
      00291C 00 00 94 72           4439 	.dw	0,(Sswi2c$swi2c_recover$670)
      002920 00 02                 4440 	.dw	2
      002922 78                    4441 	.db	120
      002923 05                    4442 	.sleb128	5
      002924 00 00 94 68           4443 	.dw	0,(Sswi2c$swi2c_recover$668)
      002928 00 00 94 70           4444 	.dw	0,(Sswi2c$swi2c_recover$669)
      00292C 00 02                 4445 	.dw	2
      00292E 78                    4446 	.db	120
      00292F 04                    4447 	.sleb128	4
      002930 00 00 94 63           4448 	.dw	0,(Sswi2c$swi2c_recover$667)
      002934 00 00 94 68           4449 	.dw	0,(Sswi2c$swi2c_recover$668)
      002938 00 02                 4450 	.dw	2
      00293A 78                    4451 	.db	120
      00293B 07                    4452 	.sleb128	7
      00293C 00 00 94 61           4453 	.dw	0,(Sswi2c$swi2c_recover$666)
      002940 00 00 94 63           4454 	.dw	0,(Sswi2c$swi2c_recover$667)
      002944 00 02                 4455 	.dw	2
      002946 78                    4456 	.db	120
      002947 06                    4457 	.sleb128	6
      002948 00 00 94 5F           4458 	.dw	0,(Sswi2c$swi2c_recover$665)
      00294C 00 00 94 61           4459 	.dw	0,(Sswi2c$swi2c_recover$666)
      002950 00 02                 4460 	.dw	2
      002952 78                    4461 	.db	120
      002953 05                    4462 	.sleb128	5
      002954 00 00 94 50           4463 	.dw	0,(Sswi2c$swi2c_recover$656)
      002958 00 00 94 5F           4464 	.dw	0,(Sswi2c$swi2c_recover$665)
      00295C 00 02                 4465 	.dw	2
      00295E 78                    4466 	.db	120
      00295F 04                    4467 	.sleb128	4
      002960 00 00 94 4B           4468 	.dw	0,(Sswi2c$swi2c_recover$655)
      002964 00 00 94 50           4469 	.dw	0,(Sswi2c$swi2c_recover$656)
      002968 00 02                 4470 	.dw	2
      00296A 78                    4471 	.db	120
      00296B 07                    4472 	.sleb128	7
      00296C 00 00 94 49           4473 	.dw	0,(Sswi2c$swi2c_recover$654)
      002970 00 00 94 4B           4474 	.dw	0,(Sswi2c$swi2c_recover$655)
      002974 00 02                 4475 	.dw	2
      002976 78                    4476 	.db	120
      002977 06                    4477 	.sleb128	6
      002978 00 00 94 47           4478 	.dw	0,(Sswi2c$swi2c_recover$653)
      00297C 00 00 94 49           4479 	.dw	0,(Sswi2c$swi2c_recover$654)
      002980 00 02                 4480 	.dw	2
      002982 78                    4481 	.db	120
      002983 05                    4482 	.sleb128	5
      002984 00 00 94 45           4483 	.dw	0,(Sswi2c$swi2c_recover$651)
      002988 00 00 94 47           4484 	.dw	0,(Sswi2c$swi2c_recover$653)
      00298C 00 02                 4485 	.dw	2
      00298E 78                    4486 	.db	120
      00298F 04                    4487 	.sleb128	4
      002990 00 00 94 40           4488 	.dw	0,(Sswi2c$swi2c_recover$650)
      002994 00 00 94 45           4489 	.dw	0,(Sswi2c$swi2c_recover$651)
      002998 00 02                 4490 	.dw	2
      00299A 78                    4491 	.db	120
      00299B 07                    4492 	.sleb128	7
      00299C 00 00 94 3E           4493 	.dw	0,(Sswi2c$swi2c_recover$649)
      0029A0 00 00 94 40           4494 	.dw	0,(Sswi2c$swi2c_recover$650)
      0029A4 00 02                 4495 	.dw	2
      0029A6 78                    4496 	.db	120
      0029A7 06                    4497 	.sleb128	6
      0029A8 00 00 94 3C           4498 	.dw	0,(Sswi2c$swi2c_recover$648)
      0029AC 00 00 94 3E           4499 	.dw	0,(Sswi2c$swi2c_recover$649)
      0029B0 00 02                 4500 	.dw	2
      0029B2 78                    4501 	.db	120
      0029B3 05                    4502 	.sleb128	5
      0029B4 00 00 94 35           4503 	.dw	0,(Sswi2c$swi2c_recover$645)
      0029B8 00 00 94 3C           4504 	.dw	0,(Sswi2c$swi2c_recover$648)
      0029BC 00 02                 4505 	.dw	2
      0029BE 78                    4506 	.db	120
      0029BF 04                    4507 	.sleb128	4
      0029C0 00 00 94 33           4508 	.dw	0,(Sswi2c$swi2c_recover$644)
      0029C4 00 00 94 35           4509 	.dw	0,(Sswi2c$swi2c_recover$645)
      0029C8 00 02                 4510 	.dw	2
      0029CA 78                    4511 	.db	120
      0029CB 01                    4512 	.sleb128	1
      0029CC 00 00 00 00           4513 	.dw	0,0
      0029D0 00 00 00 00           4514 	.dw	0,0
      0029D4 00 00 94 32           4515 	.dw	0,(Sswi2c$swi2c_STOP$640)
      0029D8 00 00 94 33           4516 	.dw	0,(Sswi2c$swi2c_STOP$642)
      0029DC 00 02                 4517 	.dw	2
      0029DE 78                    4518 	.db	120
      0029DF 01                    4519 	.sleb128	1
      0029E0 00 00 94 2E           4520 	.dw	0,(Sswi2c$swi2c_STOP$637)
      0029E4 00 00 94 32           4521 	.dw	0,(Sswi2c$swi2c_STOP$640)
      0029E8 00 02                 4522 	.dw	2
      0029EA 78                    4523 	.db	120
      0029EB 04                    4524 	.sleb128	4
      0029EC 00 00 94 29           4525 	.dw	0,(Sswi2c$swi2c_STOP$636)
      0029F0 00 00 94 2E           4526 	.dw	0,(Sswi2c$swi2c_STOP$637)
      0029F4 00 02                 4527 	.dw	2
      0029F6 78                    4528 	.db	120
      0029F7 07                    4529 	.sleb128	7
      0029F8 00 00 94 27           4530 	.dw	0,(Sswi2c$swi2c_STOP$635)
      0029FC 00 00 94 29           4531 	.dw	0,(Sswi2c$swi2c_STOP$636)
      002A00 00 02                 4532 	.dw	2
      002A02 78                    4533 	.db	120
      002A03 06                    4534 	.sleb128	6
      002A04 00 00 94 25           4535 	.dw	0,(Sswi2c$swi2c_STOP$634)
      002A08 00 00 94 27           4536 	.dw	0,(Sswi2c$swi2c_STOP$635)
      002A0C 00 02                 4537 	.dw	2
      002A0E 78                    4538 	.db	120
      002A0F 05                    4539 	.sleb128	5
      002A10 00 00 93 FC           4540 	.dw	0,(Sswi2c$swi2c_STOP$618)
      002A14 00 00 94 25           4541 	.dw	0,(Sswi2c$swi2c_STOP$634)
      002A18 00 02                 4542 	.dw	2
      002A1A 78                    4543 	.db	120
      002A1B 04                    4544 	.sleb128	4
      002A1C 00 00 93 FB           4545 	.dw	0,(Sswi2c$swi2c_STOP$617)
      002A20 00 00 93 FC           4546 	.dw	0,(Sswi2c$swi2c_STOP$618)
      002A24 00 02                 4547 	.dw	2
      002A26 78                    4548 	.db	120
      002A27 06                    4549 	.sleb128	6
      002A28 00 00 93 F6           4550 	.dw	0,(Sswi2c$swi2c_STOP$616)
      002A2C 00 00 93 FB           4551 	.dw	0,(Sswi2c$swi2c_STOP$617)
      002A30 00 02                 4552 	.dw	2
      002A32 78                    4553 	.db	120
      002A33 09                    4554 	.sleb128	9
      002A34 00 00 93 F4           4555 	.dw	0,(Sswi2c$swi2c_STOP$615)
      002A38 00 00 93 F6           4556 	.dw	0,(Sswi2c$swi2c_STOP$616)
      002A3C 00 02                 4557 	.dw	2
      002A3E 78                    4558 	.db	120
      002A3F 08                    4559 	.sleb128	8
      002A40 00 00 93 F2           4560 	.dw	0,(Sswi2c$swi2c_STOP$614)
      002A44 00 00 93 F4           4561 	.dw	0,(Sswi2c$swi2c_STOP$615)
      002A48 00 02                 4562 	.dw	2
      002A4A 78                    4563 	.db	120
      002A4B 07                    4564 	.sleb128	7
      002A4C 00 00 93 F0           4565 	.dw	0,(Sswi2c$swi2c_STOP$613)
      002A50 00 00 93 F2           4566 	.dw	0,(Sswi2c$swi2c_STOP$614)
      002A54 00 02                 4567 	.dw	2
      002A56 78                    4568 	.db	120
      002A57 06                    4569 	.sleb128	6
      002A58 00 00 93 ED           4570 	.dw	0,(Sswi2c$swi2c_STOP$611)
      002A5C 00 00 93 F0           4571 	.dw	0,(Sswi2c$swi2c_STOP$613)
      002A60 00 02                 4572 	.dw	2
      002A62 78                    4573 	.db	120
      002A63 04                    4574 	.sleb128	4
      002A64 00 00 93 E8           4575 	.dw	0,(Sswi2c$swi2c_STOP$610)
      002A68 00 00 93 ED           4576 	.dw	0,(Sswi2c$swi2c_STOP$611)
      002A6C 00 02                 4577 	.dw	2
      002A6E 78                    4578 	.db	120
      002A6F 07                    4579 	.sleb128	7
      002A70 00 00 93 E6           4580 	.dw	0,(Sswi2c$swi2c_STOP$609)
      002A74 00 00 93 E8           4581 	.dw	0,(Sswi2c$swi2c_STOP$610)
      002A78 00 02                 4582 	.dw	2
      002A7A 78                    4583 	.db	120
      002A7B 06                    4584 	.sleb128	6
      002A7C 00 00 93 E4           4585 	.dw	0,(Sswi2c$swi2c_STOP$608)
      002A80 00 00 93 E6           4586 	.dw	0,(Sswi2c$swi2c_STOP$609)
      002A84 00 02                 4587 	.dw	2
      002A86 78                    4588 	.db	120
      002A87 05                    4589 	.sleb128	5
      002A88 00 00 93 D5           4590 	.dw	0,(Sswi2c$swi2c_STOP$599)
      002A8C 00 00 93 E4           4591 	.dw	0,(Sswi2c$swi2c_STOP$608)
      002A90 00 02                 4592 	.dw	2
      002A92 78                    4593 	.db	120
      002A93 04                    4594 	.sleb128	4
      002A94 00 00 93 D0           4595 	.dw	0,(Sswi2c$swi2c_STOP$598)
      002A98 00 00 93 D5           4596 	.dw	0,(Sswi2c$swi2c_STOP$599)
      002A9C 00 02                 4597 	.dw	2
      002A9E 78                    4598 	.db	120
      002A9F 07                    4599 	.sleb128	7
      002AA0 00 00 93 CE           4600 	.dw	0,(Sswi2c$swi2c_STOP$597)
      002AA4 00 00 93 D0           4601 	.dw	0,(Sswi2c$swi2c_STOP$598)
      002AA8 00 02                 4602 	.dw	2
      002AAA 78                    4603 	.db	120
      002AAB 06                    4604 	.sleb128	6
      002AAC 00 00 93 CC           4605 	.dw	0,(Sswi2c$swi2c_STOP$596)
      002AB0 00 00 93 CE           4606 	.dw	0,(Sswi2c$swi2c_STOP$597)
      002AB4 00 02                 4607 	.dw	2
      002AB6 78                    4608 	.db	120
      002AB7 05                    4609 	.sleb128	5
      002AB8 00 00 93 C3           4610 	.dw	0,(Sswi2c$swi2c_STOP$592)
      002ABC 00 00 93 CC           4611 	.dw	0,(Sswi2c$swi2c_STOP$596)
      002AC0 00 02                 4612 	.dw	2
      002AC2 78                    4613 	.db	120
      002AC3 04                    4614 	.sleb128	4
      002AC4 00 00 93 C1           4615 	.dw	0,(Sswi2c$swi2c_STOP$591)
      002AC8 00 00 93 C3           4616 	.dw	0,(Sswi2c$swi2c_STOP$592)
      002ACC 00 02                 4617 	.dw	2
      002ACE 78                    4618 	.db	120
      002ACF 01                    4619 	.sleb128	1
      002AD0 00 00 00 00           4620 	.dw	0,0
      002AD4 00 00 00 00           4621 	.dw	0,0
      002AD8 00 00 93 B2           4622 	.dw	0,(Sswi2c$swi2c_START$578)
      002ADC 00 00 93 C1           4623 	.dw	0,(Sswi2c$swi2c_START$589)
      002AE0 00 02                 4624 	.dw	2
      002AE2 78                    4625 	.db	120
      002AE3 01                    4626 	.sleb128	1
      002AE4 00 00 93 AD           4627 	.dw	0,(Sswi2c$swi2c_START$577)
      002AE8 00 00 93 B2           4628 	.dw	0,(Sswi2c$swi2c_START$578)
      002AEC 00 02                 4629 	.dw	2
      002AEE 78                    4630 	.db	120
      002AEF 04                    4631 	.sleb128	4
      002AF0 00 00 93 AB           4632 	.dw	0,(Sswi2c$swi2c_START$576)
      002AF4 00 00 93 AD           4633 	.dw	0,(Sswi2c$swi2c_START$577)
      002AF8 00 02                 4634 	.dw	2
      002AFA 78                    4635 	.db	120
      002AFB 03                    4636 	.sleb128	3
      002AFC 00 00 93 A9           4637 	.dw	0,(Sswi2c$swi2c_START$575)
      002B00 00 00 93 AB           4638 	.dw	0,(Sswi2c$swi2c_START$576)
      002B04 00 02                 4639 	.dw	2
      002B06 78                    4640 	.db	120
      002B07 02                    4641 	.sleb128	2
      002B08 00 00 93 9A           4642 	.dw	0,(Sswi2c$swi2c_START$566)
      002B0C 00 00 93 A9           4643 	.dw	0,(Sswi2c$swi2c_START$575)
      002B10 00 02                 4644 	.dw	2
      002B12 78                    4645 	.db	120
      002B13 01                    4646 	.sleb128	1
      002B14 00 00 93 95           4647 	.dw	0,(Sswi2c$swi2c_START$565)
      002B18 00 00 93 9A           4648 	.dw	0,(Sswi2c$swi2c_START$566)
      002B1C 00 02                 4649 	.dw	2
      002B1E 78                    4650 	.db	120
      002B1F 04                    4651 	.sleb128	4
      002B20 00 00 93 93           4652 	.dw	0,(Sswi2c$swi2c_START$564)
      002B24 00 00 93 95           4653 	.dw	0,(Sswi2c$swi2c_START$565)
      002B28 00 02                 4654 	.dw	2
      002B2A 78                    4655 	.db	120
      002B2B 03                    4656 	.sleb128	3
      002B2C 00 00 93 91           4657 	.dw	0,(Sswi2c$swi2c_START$563)
      002B30 00 00 93 93           4658 	.dw	0,(Sswi2c$swi2c_START$564)
      002B34 00 02                 4659 	.dw	2
      002B36 78                    4660 	.db	120
      002B37 02                    4661 	.sleb128	2
      002B38 00 00 93 8A           4662 	.dw	0,(Sswi2c$swi2c_START$559)
      002B3C 00 00 93 91           4663 	.dw	0,(Sswi2c$swi2c_START$563)
      002B40 00 02                 4664 	.dw	2
      002B42 78                    4665 	.db	120
      002B43 01                    4666 	.sleb128	1
      002B44 00 00 93 85           4667 	.dw	0,(Sswi2c$swi2c_START$558)
      002B48 00 00 93 8A           4668 	.dw	0,(Sswi2c$swi2c_START$559)
      002B4C 00 02                 4669 	.dw	2
      002B4E 78                    4670 	.db	120
      002B4F 04                    4671 	.sleb128	4
      002B50 00 00 93 83           4672 	.dw	0,(Sswi2c$swi2c_START$557)
      002B54 00 00 93 85           4673 	.dw	0,(Sswi2c$swi2c_START$558)
      002B58 00 02                 4674 	.dw	2
      002B5A 78                    4675 	.db	120
      002B5B 03                    4676 	.sleb128	3
      002B5C 00 00 93 81           4677 	.dw	0,(Sswi2c$swi2c_START$556)
      002B60 00 00 93 83           4678 	.dw	0,(Sswi2c$swi2c_START$557)
      002B64 00 02                 4679 	.dw	2
      002B66 78                    4680 	.db	120
      002B67 02                    4681 	.sleb128	2
      002B68 00 00 93 7F           4682 	.dw	0,(Sswi2c$swi2c_START$554)
      002B6C 00 00 93 81           4683 	.dw	0,(Sswi2c$swi2c_START$556)
      002B70 00 02                 4684 	.dw	2
      002B72 78                    4685 	.db	120
      002B73 01                    4686 	.sleb128	1
      002B74 00 00 93 7A           4687 	.dw	0,(Sswi2c$swi2c_START$553)
      002B78 00 00 93 7F           4688 	.dw	0,(Sswi2c$swi2c_START$554)
      002B7C 00 02                 4689 	.dw	2
      002B7E 78                    4690 	.db	120
      002B7F 04                    4691 	.sleb128	4
      002B80 00 00 93 78           4692 	.dw	0,(Sswi2c$swi2c_START$552)
      002B84 00 00 93 7A           4693 	.dw	0,(Sswi2c$swi2c_START$553)
      002B88 00 02                 4694 	.dw	2
      002B8A 78                    4695 	.db	120
      002B8B 03                    4696 	.sleb128	3
      002B8C 00 00 93 76           4697 	.dw	0,(Sswi2c$swi2c_START$551)
      002B90 00 00 93 78           4698 	.dw	0,(Sswi2c$swi2c_START$552)
      002B94 00 02                 4699 	.dw	2
      002B96 78                    4700 	.db	120
      002B97 02                    4701 	.sleb128	2
      002B98 00 00 93 6E           4702 	.dw	0,(Sswi2c$swi2c_START$548)
      002B9C 00 00 93 76           4703 	.dw	0,(Sswi2c$swi2c_START$551)
      002BA0 00 02                 4704 	.dw	2
      002BA2 78                    4705 	.db	120
      002BA3 01                    4706 	.sleb128	1
      002BA4 00 00 93 69           4707 	.dw	0,(Sswi2c$swi2c_START$547)
      002BA8 00 00 93 6E           4708 	.dw	0,(Sswi2c$swi2c_START$548)
      002BAC 00 02                 4709 	.dw	2
      002BAE 78                    4710 	.db	120
      002BAF 04                    4711 	.sleb128	4
      002BB0 00 00 93 67           4712 	.dw	0,(Sswi2c$swi2c_START$546)
      002BB4 00 00 93 69           4713 	.dw	0,(Sswi2c$swi2c_START$547)
      002BB8 00 02                 4714 	.dw	2
      002BBA 78                    4715 	.db	120
      002BBB 03                    4716 	.sleb128	3
      002BBC 00 00 93 65           4717 	.dw	0,(Sswi2c$swi2c_START$545)
      002BC0 00 00 93 67           4718 	.dw	0,(Sswi2c$swi2c_START$546)
      002BC4 00 02                 4719 	.dw	2
      002BC6 78                    4720 	.db	120
      002BC7 02                    4721 	.sleb128	2
      002BC8 00 00 93 5D           4722 	.dw	0,(Sswi2c$swi2c_START$544)
      002BCC 00 00 93 65           4723 	.dw	0,(Sswi2c$swi2c_START$545)
      002BD0 00 02                 4724 	.dw	2
      002BD2 78                    4725 	.db	120
      002BD3 01                    4726 	.sleb128	1
      002BD4 00 00 93 58           4727 	.dw	0,(Sswi2c$swi2c_START$543)
      002BD8 00 00 93 5D           4728 	.dw	0,(Sswi2c$swi2c_START$544)
      002BDC 00 02                 4729 	.dw	2
      002BDE 78                    4730 	.db	120
      002BDF 04                    4731 	.sleb128	4
      002BE0 00 00 93 56           4732 	.dw	0,(Sswi2c$swi2c_START$542)
      002BE4 00 00 93 58           4733 	.dw	0,(Sswi2c$swi2c_START$543)
      002BE8 00 02                 4734 	.dw	2
      002BEA 78                    4735 	.db	120
      002BEB 03                    4736 	.sleb128	3
      002BEC 00 00 93 54           4737 	.dw	0,(Sswi2c$swi2c_START$541)
      002BF0 00 00 93 56           4738 	.dw	0,(Sswi2c$swi2c_START$542)
      002BF4 00 02                 4739 	.dw	2
      002BF6 78                    4740 	.db	120
      002BF7 02                    4741 	.sleb128	2
      002BF8 00 00 93 52           4742 	.dw	0,(Sswi2c$swi2c_START$539)
      002BFC 00 00 93 54           4743 	.dw	0,(Sswi2c$swi2c_START$541)
      002C00 00 02                 4744 	.dw	2
      002C02 78                    4745 	.db	120
      002C03 01                    4746 	.sleb128	1
      002C04 00 00 00 00           4747 	.dw	0,0
      002C08 00 00 00 00           4748 	.dw	0,0
      002C0C 00 00 93 51           4749 	.dw	0,(Sswi2c$swi2c_RESTART$535)
      002C10 00 00 93 52           4750 	.dw	0,(Sswi2c$swi2c_RESTART$537)
      002C14 00 02                 4751 	.dw	2
      002C16 78                    4752 	.db	120
      002C17 01                    4753 	.sleb128	1
      002C18 00 00 93 42           4754 	.dw	0,(Sswi2c$swi2c_RESTART$525)
      002C1C 00 00 93 51           4755 	.dw	0,(Sswi2c$swi2c_RESTART$535)
      002C20 00 02                 4756 	.dw	2
      002C22 78                    4757 	.db	120
      002C23 03                    4758 	.sleb128	3
      002C24 00 00 93 3D           4759 	.dw	0,(Sswi2c$swi2c_RESTART$524)
      002C28 00 00 93 42           4760 	.dw	0,(Sswi2c$swi2c_RESTART$525)
      002C2C 00 02                 4761 	.dw	2
      002C2E 78                    4762 	.db	120
      002C2F 06                    4763 	.sleb128	6
      002C30 00 00 93 3B           4764 	.dw	0,(Sswi2c$swi2c_RESTART$523)
      002C34 00 00 93 3D           4765 	.dw	0,(Sswi2c$swi2c_RESTART$524)
      002C38 00 02                 4766 	.dw	2
      002C3A 78                    4767 	.db	120
      002C3B 05                    4768 	.sleb128	5
      002C3C 00 00 93 39           4769 	.dw	0,(Sswi2c$swi2c_RESTART$522)
      002C40 00 00 93 3B           4770 	.dw	0,(Sswi2c$swi2c_RESTART$523)
      002C44 00 02                 4771 	.dw	2
      002C46 78                    4772 	.db	120
      002C47 04                    4773 	.sleb128	4
      002C48 00 00 93 2A           4774 	.dw	0,(Sswi2c$swi2c_RESTART$513)
      002C4C 00 00 93 39           4775 	.dw	0,(Sswi2c$swi2c_RESTART$522)
      002C50 00 02                 4776 	.dw	2
      002C52 78                    4777 	.db	120
      002C53 03                    4778 	.sleb128	3
      002C54 00 00 93 25           4779 	.dw	0,(Sswi2c$swi2c_RESTART$512)
      002C58 00 00 93 2A           4780 	.dw	0,(Sswi2c$swi2c_RESTART$513)
      002C5C 00 02                 4781 	.dw	2
      002C5E 78                    4782 	.db	120
      002C5F 06                    4783 	.sleb128	6
      002C60 00 00 93 23           4784 	.dw	0,(Sswi2c$swi2c_RESTART$511)
      002C64 00 00 93 25           4785 	.dw	0,(Sswi2c$swi2c_RESTART$512)
      002C68 00 02                 4786 	.dw	2
      002C6A 78                    4787 	.db	120
      002C6B 05                    4788 	.sleb128	5
      002C6C 00 00 93 21           4789 	.dw	0,(Sswi2c$swi2c_RESTART$510)
      002C70 00 00 93 23           4790 	.dw	0,(Sswi2c$swi2c_RESTART$511)
      002C74 00 02                 4791 	.dw	2
      002C76 78                    4792 	.db	120
      002C77 04                    4793 	.sleb128	4
      002C78 00 00 92 F7           4794 	.dw	0,(Sswi2c$swi2c_RESTART$494)
      002C7C 00 00 93 21           4795 	.dw	0,(Sswi2c$swi2c_RESTART$510)
      002C80 00 02                 4796 	.dw	2
      002C82 78                    4797 	.db	120
      002C83 03                    4798 	.sleb128	3
      002C84 00 00 92 F6           4799 	.dw	0,(Sswi2c$swi2c_RESTART$493)
      002C88 00 00 92 F7           4800 	.dw	0,(Sswi2c$swi2c_RESTART$494)
      002C8C 00 02                 4801 	.dw	2
      002C8E 78                    4802 	.db	120
      002C8F 05                    4803 	.sleb128	5
      002C90 00 00 92 F1           4804 	.dw	0,(Sswi2c$swi2c_RESTART$492)
      002C94 00 00 92 F6           4805 	.dw	0,(Sswi2c$swi2c_RESTART$493)
      002C98 00 02                 4806 	.dw	2
      002C9A 78                    4807 	.db	120
      002C9B 08                    4808 	.sleb128	8
      002C9C 00 00 92 EF           4809 	.dw	0,(Sswi2c$swi2c_RESTART$491)
      002CA0 00 00 92 F1           4810 	.dw	0,(Sswi2c$swi2c_RESTART$492)
      002CA4 00 02                 4811 	.dw	2
      002CA6 78                    4812 	.db	120
      002CA7 07                    4813 	.sleb128	7
      002CA8 00 00 92 ED           4814 	.dw	0,(Sswi2c$swi2c_RESTART$490)
      002CAC 00 00 92 EF           4815 	.dw	0,(Sswi2c$swi2c_RESTART$491)
      002CB0 00 02                 4816 	.dw	2
      002CB2 78                    4817 	.db	120
      002CB3 06                    4818 	.sleb128	6
      002CB4 00 00 92 EB           4819 	.dw	0,(Sswi2c$swi2c_RESTART$489)
      002CB8 00 00 92 ED           4820 	.dw	0,(Sswi2c$swi2c_RESTART$490)
      002CBC 00 02                 4821 	.dw	2
      002CBE 78                    4822 	.db	120
      002CBF 05                    4823 	.sleb128	5
      002CC0 00 00 92 E8           4824 	.dw	0,(Sswi2c$swi2c_RESTART$487)
      002CC4 00 00 92 EB           4825 	.dw	0,(Sswi2c$swi2c_RESTART$489)
      002CC8 00 02                 4826 	.dw	2
      002CCA 78                    4827 	.db	120
      002CCB 03                    4828 	.sleb128	3
      002CCC 00 00 92 E3           4829 	.dw	0,(Sswi2c$swi2c_RESTART$486)
      002CD0 00 00 92 E8           4830 	.dw	0,(Sswi2c$swi2c_RESTART$487)
      002CD4 00 02                 4831 	.dw	2
      002CD6 78                    4832 	.db	120
      002CD7 06                    4833 	.sleb128	6
      002CD8 00 00 92 E1           4834 	.dw	0,(Sswi2c$swi2c_RESTART$485)
      002CDC 00 00 92 E3           4835 	.dw	0,(Sswi2c$swi2c_RESTART$486)
      002CE0 00 02                 4836 	.dw	2
      002CE2 78                    4837 	.db	120
      002CE3 05                    4838 	.sleb128	5
      002CE4 00 00 92 DF           4839 	.dw	0,(Sswi2c$swi2c_RESTART$484)
      002CE8 00 00 92 E1           4840 	.dw	0,(Sswi2c$swi2c_RESTART$485)
      002CEC 00 02                 4841 	.dw	2
      002CEE 78                    4842 	.db	120
      002CEF 04                    4843 	.sleb128	4
      002CF0 00 00 92 CB           4844 	.dw	0,(Sswi2c$swi2c_RESTART$473)
      002CF4 00 00 92 DF           4845 	.dw	0,(Sswi2c$swi2c_RESTART$484)
      002CF8 00 02                 4846 	.dw	2
      002CFA 78                    4847 	.db	120
      002CFB 03                    4848 	.sleb128	3
      002CFC 00 00 92 C6           4849 	.dw	0,(Sswi2c$swi2c_RESTART$472)
      002D00 00 00 92 CB           4850 	.dw	0,(Sswi2c$swi2c_RESTART$473)
      002D04 00 02                 4851 	.dw	2
      002D06 78                    4852 	.db	120
      002D07 06                    4853 	.sleb128	6
      002D08 00 00 92 C4           4854 	.dw	0,(Sswi2c$swi2c_RESTART$471)
      002D0C 00 00 92 C6           4855 	.dw	0,(Sswi2c$swi2c_RESTART$472)
      002D10 00 02                 4856 	.dw	2
      002D12 78                    4857 	.db	120
      002D13 05                    4858 	.sleb128	5
      002D14 00 00 92 C2           4859 	.dw	0,(Sswi2c$swi2c_RESTART$470)
      002D18 00 00 92 C4           4860 	.dw	0,(Sswi2c$swi2c_RESTART$471)
      002D1C 00 02                 4861 	.dw	2
      002D1E 78                    4862 	.db	120
      002D1F 04                    4863 	.sleb128	4
      002D20 00 00 92 A7           4864 	.dw	0,(Sswi2c$swi2c_RESTART$463)
      002D24 00 00 92 C2           4865 	.dw	0,(Sswi2c$swi2c_RESTART$470)
      002D28 00 02                 4866 	.dw	2
      002D2A 78                    4867 	.db	120
      002D2B 03                    4868 	.sleb128	3
      002D2C 00 00 92 A6           4869 	.dw	0,(Sswi2c$swi2c_RESTART$462)
      002D30 00 00 92 A7           4870 	.dw	0,(Sswi2c$swi2c_RESTART$463)
      002D34 00 02                 4871 	.dw	2
      002D36 78                    4872 	.db	120
      002D37 05                    4873 	.sleb128	5
      002D38 00 00 92 A1           4874 	.dw	0,(Sswi2c$swi2c_RESTART$461)
      002D3C 00 00 92 A6           4875 	.dw	0,(Sswi2c$swi2c_RESTART$462)
      002D40 00 02                 4876 	.dw	2
      002D42 78                    4877 	.db	120
      002D43 08                    4878 	.sleb128	8
      002D44 00 00 92 9F           4879 	.dw	0,(Sswi2c$swi2c_RESTART$460)
      002D48 00 00 92 A1           4880 	.dw	0,(Sswi2c$swi2c_RESTART$461)
      002D4C 00 02                 4881 	.dw	2
      002D4E 78                    4882 	.db	120
      002D4F 07                    4883 	.sleb128	7
      002D50 00 00 92 9D           4884 	.dw	0,(Sswi2c$swi2c_RESTART$459)
      002D54 00 00 92 9F           4885 	.dw	0,(Sswi2c$swi2c_RESTART$460)
      002D58 00 02                 4886 	.dw	2
      002D5A 78                    4887 	.db	120
      002D5B 06                    4888 	.sleb128	6
      002D5C 00 00 92 9B           4889 	.dw	0,(Sswi2c$swi2c_RESTART$458)
      002D60 00 00 92 9D           4890 	.dw	0,(Sswi2c$swi2c_RESTART$459)
      002D64 00 02                 4891 	.dw	2
      002D66 78                    4892 	.db	120
      002D67 05                    4893 	.sleb128	5
      002D68 00 00 92 9A           4894 	.dw	0,(Sswi2c$swi2c_RESTART$456)
      002D6C 00 00 92 9B           4895 	.dw	0,(Sswi2c$swi2c_RESTART$458)
      002D70 00 02                 4896 	.dw	2
      002D72 78                    4897 	.db	120
      002D73 03                    4898 	.sleb128	3
      002D74 00 00 92 99           4899 	.dw	0,(Sswi2c$swi2c_RESTART$455)
      002D78 00 00 92 9A           4900 	.dw	0,(Sswi2c$swi2c_RESTART$456)
      002D7C 00 02                 4901 	.dw	2
      002D7E 78                    4902 	.db	120
      002D7F 05                    4903 	.sleb128	5
      002D80 00 00 92 94           4904 	.dw	0,(Sswi2c$swi2c_RESTART$454)
      002D84 00 00 92 99           4905 	.dw	0,(Sswi2c$swi2c_RESTART$455)
      002D88 00 02                 4906 	.dw	2
      002D8A 78                    4907 	.db	120
      002D8B 08                    4908 	.sleb128	8
      002D8C 00 00 92 92           4909 	.dw	0,(Sswi2c$swi2c_RESTART$453)
      002D90 00 00 92 94           4910 	.dw	0,(Sswi2c$swi2c_RESTART$454)
      002D94 00 02                 4911 	.dw	2
      002D96 78                    4912 	.db	120
      002D97 07                    4913 	.sleb128	7
      002D98 00 00 92 90           4914 	.dw	0,(Sswi2c$swi2c_RESTART$452)
      002D9C 00 00 92 92           4915 	.dw	0,(Sswi2c$swi2c_RESTART$453)
      002DA0 00 02                 4916 	.dw	2
      002DA2 78                    4917 	.db	120
      002DA3 06                    4918 	.sleb128	6
      002DA4 00 00 92 8E           4919 	.dw	0,(Sswi2c$swi2c_RESTART$451)
      002DA8 00 00 92 90           4920 	.dw	0,(Sswi2c$swi2c_RESTART$452)
      002DAC 00 02                 4921 	.dw	2
      002DAE 78                    4922 	.db	120
      002DAF 05                    4923 	.sleb128	5
      002DB0 00 00 92 8D           4924 	.dw	0,(Sswi2c$swi2c_RESTART$449)
      002DB4 00 00 92 8E           4925 	.dw	0,(Sswi2c$swi2c_RESTART$451)
      002DB8 00 02                 4926 	.dw	2
      002DBA 78                    4927 	.db	120
      002DBB 03                    4928 	.sleb128	3
      002DBC 00 00 92 8C           4929 	.dw	0,(Sswi2c$swi2c_RESTART$448)
      002DC0 00 00 92 8D           4930 	.dw	0,(Sswi2c$swi2c_RESTART$449)
      002DC4 00 02                 4931 	.dw	2
      002DC6 78                    4932 	.db	120
      002DC7 05                    4933 	.sleb128	5
      002DC8 00 00 92 87           4934 	.dw	0,(Sswi2c$swi2c_RESTART$447)
      002DCC 00 00 92 8C           4935 	.dw	0,(Sswi2c$swi2c_RESTART$448)
      002DD0 00 02                 4936 	.dw	2
      002DD2 78                    4937 	.db	120
      002DD3 08                    4938 	.sleb128	8
      002DD4 00 00 92 85           4939 	.dw	0,(Sswi2c$swi2c_RESTART$446)
      002DD8 00 00 92 87           4940 	.dw	0,(Sswi2c$swi2c_RESTART$447)
      002DDC 00 02                 4941 	.dw	2
      002DDE 78                    4942 	.db	120
      002DDF 07                    4943 	.sleb128	7
      002DE0 00 00 92 83           4944 	.dw	0,(Sswi2c$swi2c_RESTART$445)
      002DE4 00 00 92 85           4945 	.dw	0,(Sswi2c$swi2c_RESTART$446)
      002DE8 00 02                 4946 	.dw	2
      002DEA 78                    4947 	.db	120
      002DEB 06                    4948 	.sleb128	6
      002DEC 00 00 92 81           4949 	.dw	0,(Sswi2c$swi2c_RESTART$444)
      002DF0 00 00 92 83           4950 	.dw	0,(Sswi2c$swi2c_RESTART$445)
      002DF4 00 02                 4951 	.dw	2
      002DF6 78                    4952 	.db	120
      002DF7 05                    4953 	.sleb128	5
      002DF8 00 00 92 7E           4954 	.dw	0,(Sswi2c$swi2c_RESTART$441)
      002DFC 00 00 92 81           4955 	.dw	0,(Sswi2c$swi2c_RESTART$444)
      002E00 00 02                 4956 	.dw	2
      002E02 78                    4957 	.db	120
      002E03 03                    4958 	.sleb128	3
      002E04 00 00 92 7D           4959 	.dw	0,(Sswi2c$swi2c_RESTART$440)
      002E08 00 00 92 7E           4960 	.dw	0,(Sswi2c$swi2c_RESTART$441)
      002E0C 00 02                 4961 	.dw	2
      002E0E 78                    4962 	.db	120
      002E0F 01                    4963 	.sleb128	1
      002E10 00 00 00 00           4964 	.dw	0,0
      002E14 00 00 00 00           4965 	.dw	0,0
      002E18 00 00 92 7C           4966 	.dw	0,(Sswi2c$swi2c_writebit$436)
      002E1C 00 00 92 7D           4967 	.dw	0,(Sswi2c$swi2c_writebit$438)
      002E20 00 02                 4968 	.dw	2
      002E22 78                    4969 	.db	120
      002E23 01                    4970 	.sleb128	1
      002E24 00 00 92 6D           4971 	.dw	0,(Sswi2c$swi2c_writebit$426)
      002E28 00 00 92 7C           4972 	.dw	0,(Sswi2c$swi2c_writebit$436)
      002E2C 00 02                 4973 	.dw	2
      002E2E 78                    4974 	.db	120
      002E2F 03                    4975 	.sleb128	3
      002E30 00 00 92 68           4976 	.dw	0,(Sswi2c$swi2c_writebit$425)
      002E34 00 00 92 6D           4977 	.dw	0,(Sswi2c$swi2c_writebit$426)
      002E38 00 02                 4978 	.dw	2
      002E3A 78                    4979 	.db	120
      002E3B 06                    4980 	.sleb128	6
      002E3C 00 00 92 66           4981 	.dw	0,(Sswi2c$swi2c_writebit$424)
      002E40 00 00 92 68           4982 	.dw	0,(Sswi2c$swi2c_writebit$425)
      002E44 00 02                 4983 	.dw	2
      002E46 78                    4984 	.db	120
      002E47 05                    4985 	.sleb128	5
      002E48 00 00 92 64           4986 	.dw	0,(Sswi2c$swi2c_writebit$423)
      002E4C 00 00 92 66           4987 	.dw	0,(Sswi2c$swi2c_writebit$424)
      002E50 00 02                 4988 	.dw	2
      002E52 78                    4989 	.db	120
      002E53 04                    4990 	.sleb128	4
      002E54 00 00 92 50           4991 	.dw	0,(Sswi2c$swi2c_writebit$412)
      002E58 00 00 92 64           4992 	.dw	0,(Sswi2c$swi2c_writebit$423)
      002E5C 00 02                 4993 	.dw	2
      002E5E 78                    4994 	.db	120
      002E5F 03                    4995 	.sleb128	3
      002E60 00 00 92 4B           4996 	.dw	0,(Sswi2c$swi2c_writebit$411)
      002E64 00 00 92 50           4997 	.dw	0,(Sswi2c$swi2c_writebit$412)
      002E68 00 02                 4998 	.dw	2
      002E6A 78                    4999 	.db	120
      002E6B 06                    5000 	.sleb128	6
      002E6C 00 00 92 49           5001 	.dw	0,(Sswi2c$swi2c_writebit$410)
      002E70 00 00 92 4B           5002 	.dw	0,(Sswi2c$swi2c_writebit$411)
      002E74 00 02                 5003 	.dw	2
      002E76 78                    5004 	.db	120
      002E77 05                    5005 	.sleb128	5
      002E78 00 00 92 47           5006 	.dw	0,(Sswi2c$swi2c_writebit$409)
      002E7C 00 00 92 49           5007 	.dw	0,(Sswi2c$swi2c_writebit$410)
      002E80 00 02                 5008 	.dw	2
      002E82 78                    5009 	.db	120
      002E83 04                    5010 	.sleb128	4
      002E84 00 00 92 2C           5011 	.dw	0,(Sswi2c$swi2c_writebit$402)
      002E88 00 00 92 47           5012 	.dw	0,(Sswi2c$swi2c_writebit$409)
      002E8C 00 02                 5013 	.dw	2
      002E8E 78                    5014 	.db	120
      002E8F 03                    5015 	.sleb128	3
      002E90 00 00 92 2B           5016 	.dw	0,(Sswi2c$swi2c_writebit$401)
      002E94 00 00 92 2C           5017 	.dw	0,(Sswi2c$swi2c_writebit$402)
      002E98 00 02                 5018 	.dw	2
      002E9A 78                    5019 	.db	120
      002E9B 05                    5020 	.sleb128	5
      002E9C 00 00 92 26           5021 	.dw	0,(Sswi2c$swi2c_writebit$400)
      002EA0 00 00 92 2B           5022 	.dw	0,(Sswi2c$swi2c_writebit$401)
      002EA4 00 02                 5023 	.dw	2
      002EA6 78                    5024 	.db	120
      002EA7 08                    5025 	.sleb128	8
      002EA8 00 00 92 24           5026 	.dw	0,(Sswi2c$swi2c_writebit$399)
      002EAC 00 00 92 26           5027 	.dw	0,(Sswi2c$swi2c_writebit$400)
      002EB0 00 02                 5028 	.dw	2
      002EB2 78                    5029 	.db	120
      002EB3 07                    5030 	.sleb128	7
      002EB4 00 00 92 22           5031 	.dw	0,(Sswi2c$swi2c_writebit$398)
      002EB8 00 00 92 24           5032 	.dw	0,(Sswi2c$swi2c_writebit$399)
      002EBC 00 02                 5033 	.dw	2
      002EBE 78                    5034 	.db	120
      002EBF 06                    5035 	.sleb128	6
      002EC0 00 00 92 20           5036 	.dw	0,(Sswi2c$swi2c_writebit$397)
      002EC4 00 00 92 22           5037 	.dw	0,(Sswi2c$swi2c_writebit$398)
      002EC8 00 02                 5038 	.dw	2
      002ECA 78                    5039 	.db	120
      002ECB 05                    5040 	.sleb128	5
      002ECC 00 00 92 1D           5041 	.dw	0,(Sswi2c$swi2c_writebit$395)
      002ED0 00 00 92 20           5042 	.dw	0,(Sswi2c$swi2c_writebit$397)
      002ED4 00 02                 5043 	.dw	2
      002ED6 78                    5044 	.db	120
      002ED7 03                    5045 	.sleb128	3
      002ED8 00 00 92 18           5046 	.dw	0,(Sswi2c$swi2c_writebit$394)
      002EDC 00 00 92 1D           5047 	.dw	0,(Sswi2c$swi2c_writebit$395)
      002EE0 00 02                 5048 	.dw	2
      002EE2 78                    5049 	.db	120
      002EE3 06                    5050 	.sleb128	6
      002EE4 00 00 92 16           5051 	.dw	0,(Sswi2c$swi2c_writebit$393)
      002EE8 00 00 92 18           5052 	.dw	0,(Sswi2c$swi2c_writebit$394)
      002EEC 00 02                 5053 	.dw	2
      002EEE 78                    5054 	.db	120
      002EEF 05                    5055 	.sleb128	5
      002EF0 00 00 92 14           5056 	.dw	0,(Sswi2c$swi2c_writebit$392)
      002EF4 00 00 92 16           5057 	.dw	0,(Sswi2c$swi2c_writebit$393)
      002EF8 00 02                 5058 	.dw	2
      002EFA 78                    5059 	.db	120
      002EFB 04                    5060 	.sleb128	4
      002EFC 00 00 92 05           5061 	.dw	0,(Sswi2c$swi2c_writebit$382)
      002F00 00 00 92 14           5062 	.dw	0,(Sswi2c$swi2c_writebit$392)
      002F04 00 02                 5063 	.dw	2
      002F06 78                    5064 	.db	120
      002F07 03                    5065 	.sleb128	3
      002F08 00 00 92 00           5066 	.dw	0,(Sswi2c$swi2c_writebit$381)
      002F0C 00 00 92 05           5067 	.dw	0,(Sswi2c$swi2c_writebit$382)
      002F10 00 02                 5068 	.dw	2
      002F12 78                    5069 	.db	120
      002F13 06                    5070 	.sleb128	6
      002F14 00 00 91 FE           5071 	.dw	0,(Sswi2c$swi2c_writebit$380)
      002F18 00 00 92 00           5072 	.dw	0,(Sswi2c$swi2c_writebit$381)
      002F1C 00 02                 5073 	.dw	2
      002F1E 78                    5074 	.db	120
      002F1F 05                    5075 	.sleb128	5
      002F20 00 00 91 FC           5076 	.dw	0,(Sswi2c$swi2c_writebit$379)
      002F24 00 00 91 FE           5077 	.dw	0,(Sswi2c$swi2c_writebit$380)
      002F28 00 02                 5078 	.dw	2
      002F2A 78                    5079 	.db	120
      002F2B 04                    5080 	.sleb128	4
      002F2C 00 00 91 F7           5081 	.dw	0,(Sswi2c$swi2c_writebit$375)
      002F30 00 00 91 FC           5082 	.dw	0,(Sswi2c$swi2c_writebit$379)
      002F34 00 02                 5083 	.dw	2
      002F36 78                    5084 	.db	120
      002F37 03                    5085 	.sleb128	3
      002F38 00 00 91 F2           5086 	.dw	0,(Sswi2c$swi2c_writebit$374)
      002F3C 00 00 91 F7           5087 	.dw	0,(Sswi2c$swi2c_writebit$375)
      002F40 00 02                 5088 	.dw	2
      002F42 78                    5089 	.db	120
      002F43 06                    5090 	.sleb128	6
      002F44 00 00 91 F0           5091 	.dw	0,(Sswi2c$swi2c_writebit$373)
      002F48 00 00 91 F2           5092 	.dw	0,(Sswi2c$swi2c_writebit$374)
      002F4C 00 02                 5093 	.dw	2
      002F4E 78                    5094 	.db	120
      002F4F 05                    5095 	.sleb128	5
      002F50 00 00 91 EE           5096 	.dw	0,(Sswi2c$swi2c_writebit$372)
      002F54 00 00 91 F0           5097 	.dw	0,(Sswi2c$swi2c_writebit$373)
      002F58 00 02                 5098 	.dw	2
      002F5A 78                    5099 	.db	120
      002F5B 04                    5100 	.sleb128	4
      002F5C 00 00 91 E0           5101 	.dw	0,(Sswi2c$swi2c_writebit$367)
      002F60 00 00 91 EE           5102 	.dw	0,(Sswi2c$swi2c_writebit$372)
      002F64 00 02                 5103 	.dw	2
      002F66 78                    5104 	.db	120
      002F67 03                    5105 	.sleb128	3
      002F68 00 00 91 DF           5106 	.dw	0,(Sswi2c$swi2c_writebit$366)
      002F6C 00 00 91 E0           5107 	.dw	0,(Sswi2c$swi2c_writebit$367)
      002F70 00 02                 5108 	.dw	2
      002F72 78                    5109 	.db	120
      002F73 01                    5110 	.sleb128	1
      002F74 00 00 00 00           5111 	.dw	0,0
      002F78 00 00 00 00           5112 	.dw	0,0
      002F7C 00 00 91 DE           5113 	.dw	0,(Sswi2c$swi2c_readbit$362)
      002F80 00 00 91 DF           5114 	.dw	0,(Sswi2c$swi2c_readbit$364)
      002F84 00 02                 5115 	.dw	2
      002F86 78                    5116 	.db	120
      002F87 01                    5117 	.sleb128	1
      002F88 00 00 91 D0           5118 	.dw	0,(Sswi2c$swi2c_readbit$352)
      002F8C 00 00 91 DE           5119 	.dw	0,(Sswi2c$swi2c_readbit$362)
      002F90 00 02                 5120 	.dw	2
      002F92 78                    5121 	.db	120
      002F93 03                    5122 	.sleb128	3
      002F94 00 00 91 CF           5123 	.dw	0,(Sswi2c$swi2c_readbit$351)
      002F98 00 00 91 D0           5124 	.dw	0,(Sswi2c$swi2c_readbit$352)
      002F9C 00 02                 5125 	.dw	2
      002F9E 78                    5126 	.db	120
      002F9F 04                    5127 	.sleb128	4
      002FA0 00 00 91 CA           5128 	.dw	0,(Sswi2c$swi2c_readbit$350)
      002FA4 00 00 91 CF           5129 	.dw	0,(Sswi2c$swi2c_readbit$351)
      002FA8 00 02                 5130 	.dw	2
      002FAA 78                    5131 	.db	120
      002FAB 07                    5132 	.sleb128	7
      002FAC 00 00 91 C8           5133 	.dw	0,(Sswi2c$swi2c_readbit$349)
      002FB0 00 00 91 CA           5134 	.dw	0,(Sswi2c$swi2c_readbit$350)
      002FB4 00 02                 5135 	.dw	2
      002FB6 78                    5136 	.db	120
      002FB7 06                    5137 	.sleb128	6
      002FB8 00 00 91 C6           5138 	.dw	0,(Sswi2c$swi2c_readbit$348)
      002FBC 00 00 91 C8           5139 	.dw	0,(Sswi2c$swi2c_readbit$349)
      002FC0 00 02                 5140 	.dw	2
      002FC2 78                    5141 	.db	120
      002FC3 05                    5142 	.sleb128	5
      002FC4 00 00 91 C4           5143 	.dw	0,(Sswi2c$swi2c_readbit$347)
      002FC8 00 00 91 C6           5144 	.dw	0,(Sswi2c$swi2c_readbit$348)
      002FCC 00 02                 5145 	.dw	2
      002FCE 78                    5146 	.db	120
      002FCF 04                    5147 	.sleb128	4
      002FD0 00 00 91 B7           5148 	.dw	0,(Sswi2c$swi2c_readbit$339)
      002FD4 00 00 91 C4           5149 	.dw	0,(Sswi2c$swi2c_readbit$347)
      002FD8 00 02                 5150 	.dw	2
      002FDA 78                    5151 	.db	120
      002FDB 03                    5152 	.sleb128	3
      002FDC 00 00 91 B2           5153 	.dw	0,(Sswi2c$swi2c_readbit$338)
      002FE0 00 00 91 B7           5154 	.dw	0,(Sswi2c$swi2c_readbit$339)
      002FE4 00 02                 5155 	.dw	2
      002FE6 78                    5156 	.db	120
      002FE7 06                    5157 	.sleb128	6
      002FE8 00 00 91 B0           5158 	.dw	0,(Sswi2c$swi2c_readbit$337)
      002FEC 00 00 91 B2           5159 	.dw	0,(Sswi2c$swi2c_readbit$338)
      002FF0 00 02                 5160 	.dw	2
      002FF2 78                    5161 	.db	120
      002FF3 05                    5162 	.sleb128	5
      002FF4 00 00 91 AE           5163 	.dw	0,(Sswi2c$swi2c_readbit$336)
      002FF8 00 00 91 B0           5164 	.dw	0,(Sswi2c$swi2c_readbit$337)
      002FFC 00 02                 5165 	.dw	2
      002FFE 78                    5166 	.db	120
      002FFF 04                    5167 	.sleb128	4
      003000 00 00 91 81           5168 	.dw	0,(Sswi2c$swi2c_readbit$320)
      003004 00 00 91 AE           5169 	.dw	0,(Sswi2c$swi2c_readbit$336)
      003008 00 02                 5170 	.dw	2
      00300A 78                    5171 	.db	120
      00300B 03                    5172 	.sleb128	3
      00300C 00 00 91 80           5173 	.dw	0,(Sswi2c$swi2c_readbit$319)
      003010 00 00 91 81           5174 	.dw	0,(Sswi2c$swi2c_readbit$320)
      003014 00 02                 5175 	.dw	2
      003016 78                    5176 	.db	120
      003017 05                    5177 	.sleb128	5
      003018 00 00 91 7B           5178 	.dw	0,(Sswi2c$swi2c_readbit$318)
      00301C 00 00 91 80           5179 	.dw	0,(Sswi2c$swi2c_readbit$319)
      003020 00 02                 5180 	.dw	2
      003022 78                    5181 	.db	120
      003023 08                    5182 	.sleb128	8
      003024 00 00 91 79           5183 	.dw	0,(Sswi2c$swi2c_readbit$317)
      003028 00 00 91 7B           5184 	.dw	0,(Sswi2c$swi2c_readbit$318)
      00302C 00 02                 5185 	.dw	2
      00302E 78                    5186 	.db	120
      00302F 07                    5187 	.sleb128	7
      003030 00 00 91 77           5188 	.dw	0,(Sswi2c$swi2c_readbit$316)
      003034 00 00 91 79           5189 	.dw	0,(Sswi2c$swi2c_readbit$317)
      003038 00 02                 5190 	.dw	2
      00303A 78                    5191 	.db	120
      00303B 06                    5192 	.sleb128	6
      00303C 00 00 91 75           5193 	.dw	0,(Sswi2c$swi2c_readbit$315)
      003040 00 00 91 77           5194 	.dw	0,(Sswi2c$swi2c_readbit$316)
      003044 00 02                 5195 	.dw	2
      003046 78                    5196 	.db	120
      003047 05                    5197 	.sleb128	5
      003048 00 00 91 72           5198 	.dw	0,(Sswi2c$swi2c_readbit$313)
      00304C 00 00 91 75           5199 	.dw	0,(Sswi2c$swi2c_readbit$315)
      003050 00 02                 5200 	.dw	2
      003052 78                    5201 	.db	120
      003053 03                    5202 	.sleb128	3
      003054 00 00 91 6D           5203 	.dw	0,(Sswi2c$swi2c_readbit$312)
      003058 00 00 91 72           5204 	.dw	0,(Sswi2c$swi2c_readbit$313)
      00305C 00 02                 5205 	.dw	2
      00305E 78                    5206 	.db	120
      00305F 06                    5207 	.sleb128	6
      003060 00 00 91 6B           5208 	.dw	0,(Sswi2c$swi2c_readbit$311)
      003064 00 00 91 6D           5209 	.dw	0,(Sswi2c$swi2c_readbit$312)
      003068 00 02                 5210 	.dw	2
      00306A 78                    5211 	.db	120
      00306B 05                    5212 	.sleb128	5
      00306C 00 00 91 69           5213 	.dw	0,(Sswi2c$swi2c_readbit$310)
      003070 00 00 91 6B           5214 	.dw	0,(Sswi2c$swi2c_readbit$311)
      003074 00 02                 5215 	.dw	2
      003076 78                    5216 	.db	120
      003077 04                    5217 	.sleb128	4
      003078 00 00 91 5A           5218 	.dw	0,(Sswi2c$swi2c_readbit$301)
      00307C 00 00 91 69           5219 	.dw	0,(Sswi2c$swi2c_readbit$310)
      003080 00 02                 5220 	.dw	2
      003082 78                    5221 	.db	120
      003083 03                    5222 	.sleb128	3
      003084 00 00 91 55           5223 	.dw	0,(Sswi2c$swi2c_readbit$300)
      003088 00 00 91 5A           5224 	.dw	0,(Sswi2c$swi2c_readbit$301)
      00308C 00 02                 5225 	.dw	2
      00308E 78                    5226 	.db	120
      00308F 06                    5227 	.sleb128	6
      003090 00 00 91 53           5228 	.dw	0,(Sswi2c$swi2c_readbit$299)
      003094 00 00 91 55           5229 	.dw	0,(Sswi2c$swi2c_readbit$300)
      003098 00 02                 5230 	.dw	2
      00309A 78                    5231 	.db	120
      00309B 05                    5232 	.sleb128	5
      00309C 00 00 91 51           5233 	.dw	0,(Sswi2c$swi2c_readbit$298)
      0030A0 00 00 91 53           5234 	.dw	0,(Sswi2c$swi2c_readbit$299)
      0030A4 00 02                 5235 	.dw	2
      0030A6 78                    5236 	.db	120
      0030A7 04                    5237 	.sleb128	4
      0030A8 00 00 91 4A           5238 	.dw	0,(Sswi2c$swi2c_readbit$295)
      0030AC 00 00 91 51           5239 	.dw	0,(Sswi2c$swi2c_readbit$298)
      0030B0 00 02                 5240 	.dw	2
      0030B2 78                    5241 	.db	120
      0030B3 03                    5242 	.sleb128	3
      0030B4 00 00 91 49           5243 	.dw	0,(Sswi2c$swi2c_readbit$294)
      0030B8 00 00 91 4A           5244 	.dw	0,(Sswi2c$swi2c_readbit$295)
      0030BC 00 02                 5245 	.dw	2
      0030BE 78                    5246 	.db	120
      0030BF 01                    5247 	.sleb128	1
      0030C0 00 00 00 00           5248 	.dw	0,0
      0030C4 00 00 00 00           5249 	.dw	0,0
      0030C8 00 00 91 48           5250 	.dw	0,(Sswi2c$swi2c_init$289)
      0030CC 00 00 91 49           5251 	.dw	0,(Sswi2c$swi2c_init$292)
      0030D0 00 02                 5252 	.dw	2
      0030D2 78                    5253 	.db	120
      0030D3 01                    5254 	.sleb128	1
      0030D4 00 00 91 43           5255 	.dw	0,(Sswi2c$swi2c_init$288)
      0030D8 00 00 91 48           5256 	.dw	0,(Sswi2c$swi2c_init$289)
      0030DC 00 02                 5257 	.dw	2
      0030DE 78                    5258 	.db	120
      0030DF 05                    5259 	.sleb128	5
      0030E0 00 00 91 41           5260 	.dw	0,(Sswi2c$swi2c_init$287)
      0030E4 00 00 91 43           5261 	.dw	0,(Sswi2c$swi2c_init$288)
      0030E8 00 02                 5262 	.dw	2
      0030EA 78                    5263 	.db	120
      0030EB 04                    5264 	.sleb128	4
      0030EC 00 00 91 3F           5265 	.dw	0,(Sswi2c$swi2c_init$286)
      0030F0 00 00 91 41           5266 	.dw	0,(Sswi2c$swi2c_init$287)
      0030F4 00 02                 5267 	.dw	2
      0030F6 78                    5268 	.db	120
      0030F7 03                    5269 	.sleb128	3
      0030F8 00 00 91 3D           5270 	.dw	0,(Sswi2c$swi2c_init$285)
      0030FC 00 00 91 3F           5271 	.dw	0,(Sswi2c$swi2c_init$286)
      003100 00 02                 5272 	.dw	2
      003102 78                    5273 	.db	120
      003103 02                    5274 	.sleb128	2
      003104 00 00 91 3B           5275 	.dw	0,(Sswi2c$swi2c_init$283)
      003108 00 00 91 3D           5276 	.dw	0,(Sswi2c$swi2c_init$285)
      00310C 00 02                 5277 	.dw	2
      00310E 78                    5278 	.db	120
      00310F 01                    5279 	.sleb128	1
      003110 00 00 91 36           5280 	.dw	0,(Sswi2c$swi2c_init$282)
      003114 00 00 91 3B           5281 	.dw	0,(Sswi2c$swi2c_init$283)
      003118 00 02                 5282 	.dw	2
      00311A 78                    5283 	.db	120
      00311B 05                    5284 	.sleb128	5
      00311C 00 00 91 34           5285 	.dw	0,(Sswi2c$swi2c_init$281)
      003120 00 00 91 36           5286 	.dw	0,(Sswi2c$swi2c_init$282)
      003124 00 02                 5287 	.dw	2
      003126 78                    5288 	.db	120
      003127 04                    5289 	.sleb128	4
      003128 00 00 91 32           5290 	.dw	0,(Sswi2c$swi2c_init$280)
      00312C 00 00 91 34           5291 	.dw	0,(Sswi2c$swi2c_init$281)
      003130 00 02                 5292 	.dw	2
      003132 78                    5293 	.db	120
      003133 03                    5294 	.sleb128	3
      003134 00 00 91 30           5295 	.dw	0,(Sswi2c$swi2c_init$279)
      003138 00 00 91 32           5296 	.dw	0,(Sswi2c$swi2c_init$280)
      00313C 00 02                 5297 	.dw	2
      00313E 78                    5298 	.db	120
      00313F 02                    5299 	.sleb128	2
      003140 00 00 91 2E           5300 	.dw	0,(Sswi2c$swi2c_init$277)
      003144 00 00 91 30           5301 	.dw	0,(Sswi2c$swi2c_init$279)
      003148 00 02                 5302 	.dw	2
      00314A 78                    5303 	.db	120
      00314B 01                    5304 	.sleb128	1
      00314C 00 00 00 00           5305 	.dw	0,0
      003150 00 00 00 00           5306 	.dw	0,0
      003154 00 00 91 2D           5307 	.dw	0,(Sswi2c$swi2c_test_slave$273)
      003158 00 00 91 2E           5308 	.dw	0,(Sswi2c$swi2c_test_slave$275)
      00315C 00 02                 5309 	.dw	2
      00315E 78                    5310 	.db	120
      00315F 01                    5311 	.sleb128	1
      003160 00 00 91 06           5312 	.dw	0,(Sswi2c$swi2c_test_slave$260)
      003164 00 00 91 2D           5313 	.dw	0,(Sswi2c$swi2c_test_slave$273)
      003168 00 02                 5314 	.dw	2
      00316A 78                    5315 	.db	120
      00316B 02                    5316 	.sleb128	2
      00316C 00 00 91 01           5317 	.dw	0,(Sswi2c$swi2c_test_slave$259)
      003170 00 00 91 06           5318 	.dw	0,(Sswi2c$swi2c_test_slave$260)
      003174 00 02                 5319 	.dw	2
      003176 78                    5320 	.db	120
      003177 03                    5321 	.sleb128	3
      003178 00 00 90 E3           5322 	.dw	0,(Sswi2c$swi2c_test_slave$250)
      00317C 00 00 91 01           5323 	.dw	0,(Sswi2c$swi2c_test_slave$259)
      003180 00 02                 5324 	.dw	2
      003182 78                    5325 	.db	120
      003183 02                    5326 	.sleb128	2
      003184 00 00 90 E2           5327 	.dw	0,(Sswi2c$swi2c_test_slave$249)
      003188 00 00 90 E3           5328 	.dw	0,(Sswi2c$swi2c_test_slave$250)
      00318C 00 02                 5329 	.dw	2
      00318E 78                    5330 	.db	120
      00318F 01                    5331 	.sleb128	1
      003190 00 00 00 00           5332 	.dw	0,0
      003194 00 00 00 00           5333 	.dw	0,0
      003198 00 00 90 E1           5334 	.dw	0,(Sswi2c$swi2c_write_buf$245)
      00319C 00 00 90 E2           5335 	.dw	0,(Sswi2c$swi2c_write_buf$247)
      0031A0 00 02                 5336 	.dw	2
      0031A2 78                    5337 	.db	120
      0031A3 01                    5338 	.sleb128	1
      0031A4 00 00 90 9D           5339 	.dw	0,(Sswi2c$swi2c_write_buf$222)
      0031A8 00 00 90 E1           5340 	.dw	0,(Sswi2c$swi2c_write_buf$245)
      0031AC 00 02                 5341 	.dw	2
      0031AE 78                    5342 	.db	120
      0031AF 03                    5343 	.sleb128	3
      0031B0 00 00 90 9C           5344 	.dw	0,(Sswi2c$swi2c_write_buf$221)
      0031B4 00 00 90 9D           5345 	.dw	0,(Sswi2c$swi2c_write_buf$222)
      0031B8 00 02                 5346 	.dw	2
      0031BA 78                    5347 	.db	120
      0031BB 05                    5348 	.sleb128	5
      0031BC 00 00 90 97           5349 	.dw	0,(Sswi2c$swi2c_write_buf$220)
      0031C0 00 00 90 9C           5350 	.dw	0,(Sswi2c$swi2c_write_buf$221)
      0031C4 00 02                 5351 	.dw	2
      0031C6 78                    5352 	.db	120
      0031C7 06                    5353 	.sleb128	6
      0031C8 00 00 90 96           5354 	.dw	0,(Sswi2c$swi2c_write_buf$219)
      0031CC 00 00 90 97           5355 	.dw	0,(Sswi2c$swi2c_write_buf$220)
      0031D0 00 02                 5356 	.dw	2
      0031D2 78                    5357 	.db	120
      0031D3 05                    5358 	.sleb128	5
      0031D4 00 00 90 44           5359 	.dw	0,(Sswi2c$swi2c_write_buf$197)
      0031D8 00 00 90 96           5360 	.dw	0,(Sswi2c$swi2c_write_buf$219)
      0031DC 00 02                 5361 	.dw	2
      0031DE 78                    5362 	.db	120
      0031DF 03                    5363 	.sleb128	3
      0031E0 00 00 90 3F           5364 	.dw	0,(Sswi2c$swi2c_write_buf$196)
      0031E4 00 00 90 44           5365 	.dw	0,(Sswi2c$swi2c_write_buf$197)
      0031E8 00 02                 5366 	.dw	2
      0031EA 78                    5367 	.db	120
      0031EB 04                    5368 	.sleb128	4
      0031EC 00 00 90 00           5369 	.dw	0,(Sswi2c$swi2c_write_buf$177)
      0031F0 00 00 90 3F           5370 	.dw	0,(Sswi2c$swi2c_write_buf$196)
      0031F4 00 02                 5371 	.dw	2
      0031F6 78                    5372 	.db	120
      0031F7 03                    5373 	.sleb128	3
      0031F8 00 00 8F FB           5374 	.dw	0,(Sswi2c$swi2c_write_buf$176)
      0031FC 00 00 90 00           5375 	.dw	0,(Sswi2c$swi2c_write_buf$177)
      003200 00 02                 5376 	.dw	2
      003202 78                    5377 	.db	120
      003203 04                    5378 	.sleb128	4
      003204 00 00 8F DD           5379 	.dw	0,(Sswi2c$swi2c_write_buf$167)
      003208 00 00 8F FB           5380 	.dw	0,(Sswi2c$swi2c_write_buf$176)
      00320C 00 02                 5381 	.dw	2
      00320E 78                    5382 	.db	120
      00320F 03                    5383 	.sleb128	3
      003210 00 00 8F DC           5384 	.dw	0,(Sswi2c$swi2c_write_buf$166)
      003214 00 00 8F DD           5385 	.dw	0,(Sswi2c$swi2c_write_buf$167)
      003218 00 02                 5386 	.dw	2
      00321A 78                    5387 	.db	120
      00321B 01                    5388 	.sleb128	1
      00321C 00 00 00 00           5389 	.dw	0,0
      003220 00 00 00 00           5390 	.dw	0,0
      003224 00 00 8F DB           5391 	.dw	0,(Sswi2c$swi2c_read_buf$162)
      003228 00 00 8F DC           5392 	.dw	0,(Sswi2c$swi2c_read_buf$164)
      00322C 00 02                 5393 	.dw	2
      00322E 78                    5394 	.db	120
      00322F 01                    5395 	.sleb128	1
      003230 00 00 8F BA           5396 	.dw	0,(Sswi2c$swi2c_read_buf$150)
      003234 00 00 8F DB           5397 	.dw	0,(Sswi2c$swi2c_read_buf$162)
      003238 00 02                 5398 	.dw	2
      00323A 78                    5399 	.db	120
      00323B 04                    5400 	.sleb128	4
      00323C 00 00 8F B5           5401 	.dw	0,(Sswi2c$swi2c_read_buf$149)
      003240 00 00 8F BA           5402 	.dw	0,(Sswi2c$swi2c_read_buf$150)
      003244 00 02                 5403 	.dw	2
      003246 78                    5404 	.db	120
      003247 05                    5405 	.sleb128	5
      003248 00 00 8F A8           5406 	.dw	0,(Sswi2c$swi2c_read_buf$143)
      00324C 00 00 8F B5           5407 	.dw	0,(Sswi2c$swi2c_read_buf$149)
      003250 00 02                 5408 	.dw	2
      003252 78                    5409 	.db	120
      003253 04                    5410 	.sleb128	4
      003254 00 00 8F A3           5411 	.dw	0,(Sswi2c$swi2c_read_buf$142)
      003258 00 00 8F A8           5412 	.dw	0,(Sswi2c$swi2c_read_buf$143)
      00325C 00 02                 5413 	.dw	2
      00325E 78                    5414 	.db	120
      00325F 05                    5415 	.sleb128	5
      003260 00 00 8F A1           5416 	.dw	0,(Sswi2c$swi2c_read_buf$139)
      003264 00 00 8F A3           5417 	.dw	0,(Sswi2c$swi2c_read_buf$142)
      003268 00 02                 5418 	.dw	2
      00326A 78                    5419 	.db	120
      00326B 04                    5420 	.sleb128	4
      00326C 00 00 8F 7E           5421 	.dw	0,(Sswi2c$swi2c_read_buf$128)
      003270 00 00 8F A1           5422 	.dw	0,(Sswi2c$swi2c_read_buf$139)
      003274 00 02                 5423 	.dw	2
      003276 78                    5424 	.db	120
      003277 04                    5425 	.sleb128	4
      003278 00 00 8F 0D           5426 	.dw	0,(Sswi2c$swi2c_read_buf$100)
      00327C 00 00 8F 7E           5427 	.dw	0,(Sswi2c$swi2c_read_buf$128)
      003280 00 02                 5428 	.dw	2
      003282 78                    5429 	.db	120
      003283 04                    5430 	.sleb128	4
      003284 00 00 8F 08           5431 	.dw	0,(Sswi2c$swi2c_read_buf$99)
      003288 00 00 8F 0D           5432 	.dw	0,(Sswi2c$swi2c_read_buf$100)
      00328C 00 02                 5433 	.dw	2
      00328E 78                    5434 	.db	120
      00328F 05                    5435 	.sleb128	5
      003290 00 00 8E B5           5436 	.dw	0,(Sswi2c$swi2c_read_buf$75)
      003294 00 00 8F 08           5437 	.dw	0,(Sswi2c$swi2c_read_buf$99)
      003298 00 02                 5438 	.dw	2
      00329A 78                    5439 	.db	120
      00329B 04                    5440 	.sleb128	4
      00329C 00 00 8E B0           5441 	.dw	0,(Sswi2c$swi2c_read_buf$74)
      0032A0 00 00 8E B5           5442 	.dw	0,(Sswi2c$swi2c_read_buf$75)
      0032A4 00 02                 5443 	.dw	2
      0032A6 78                    5444 	.db	120
      0032A7 05                    5445 	.sleb128	5
      0032A8 00 00 8E 71           5446 	.dw	0,(Sswi2c$swi2c_read_buf$55)
      0032AC 00 00 8E B0           5447 	.dw	0,(Sswi2c$swi2c_read_buf$74)
      0032B0 00 02                 5448 	.dw	2
      0032B2 78                    5449 	.db	120
      0032B3 04                    5450 	.sleb128	4
      0032B4 00 00 8E 6C           5451 	.dw	0,(Sswi2c$swi2c_read_buf$54)
      0032B8 00 00 8E 71           5452 	.dw	0,(Sswi2c$swi2c_read_buf$55)
      0032BC 00 02                 5453 	.dw	2
      0032BE 78                    5454 	.db	120
      0032BF 05                    5455 	.sleb128	5
      0032C0 00 00 8E 4E           5456 	.dw	0,(Sswi2c$swi2c_read_buf$45)
      0032C4 00 00 8E 6C           5457 	.dw	0,(Sswi2c$swi2c_read_buf$54)
      0032C8 00 02                 5458 	.dw	2
      0032CA 78                    5459 	.db	120
      0032CB 04                    5460 	.sleb128	4
      0032CC 00 00 8E 4C           5461 	.dw	0,(Sswi2c$swi2c_read_buf$44)
      0032D0 00 00 8E 4E           5462 	.dw	0,(Sswi2c$swi2c_read_buf$45)
      0032D4 00 02                 5463 	.dw	2
      0032D6 78                    5464 	.db	120
      0032D7 01                    5465 	.sleb128	1
      0032D8 00 00 00 00           5466 	.dw	0,0
      0032DC 00 00 00 00           5467 	.dw	0,0
      0032E0 00 00 8E 37           5468 	.dw	0,(Sswi2c$_delay_us$29)
      0032E4 00 00 8E 4C           5469 	.dw	0,(Sswi2c$_delay_us$42)
      0032E8 00 02                 5470 	.dw	2
      0032EA 78                    5471 	.db	120
      0032EB 01                    5472 	.sleb128	1
      0032EC 00 00 8E 32           5473 	.dw	0,(Sswi2c$_delay_us$28)
      0032F0 00 00 8E 37           5474 	.dw	0,(Sswi2c$_delay_us$29)
      0032F4 00 02                 5475 	.dw	2
      0032F6 78                    5476 	.db	120
      0032F7 09                    5477 	.sleb128	9
      0032F8 00 00 8E 30           5478 	.dw	0,(Sswi2c$_delay_us$27)
      0032FC 00 00 8E 32           5479 	.dw	0,(Sswi2c$_delay_us$28)
      003300 00 02                 5480 	.dw	2
      003302 78                    5481 	.db	120
      003303 07                    5482 	.sleb128	7
      003304 00 00 8E 2F           5483 	.dw	0,(Sswi2c$_delay_us$26)
      003308 00 00 8E 30           5484 	.dw	0,(Sswi2c$_delay_us$27)
      00330C 00 02                 5485 	.dw	2
      00330E 78                    5486 	.db	120
      00330F 05                    5487 	.sleb128	5
      003310 00 00 8E 2D           5488 	.dw	0,(Sswi2c$_delay_us$25)
      003314 00 00 8E 2F           5489 	.dw	0,(Sswi2c$_delay_us$26)
      003318 00 02                 5490 	.dw	2
      00331A 78                    5491 	.db	120
      00331B 04                    5492 	.sleb128	4
      00331C 00 00 8E 2B           5493 	.dw	0,(Sswi2c$_delay_us$24)
      003320 00 00 8E 2D           5494 	.dw	0,(Sswi2c$_delay_us$25)
      003324 00 02                 5495 	.dw	2
      003326 78                    5496 	.db	120
      003327 03                    5497 	.sleb128	3
      003328 00 00 8E 29           5498 	.dw	0,(Sswi2c$_delay_us$23)
      00332C 00 00 8E 2B           5499 	.dw	0,(Sswi2c$_delay_us$24)
      003330 00 02                 5500 	.dw	2
      003332 78                    5501 	.db	120
      003333 02                    5502 	.sleb128	2
      003334 00 00 8E 27           5503 	.dw	0,(Sswi2c$_delay_us$21)
      003338 00 00 8E 29           5504 	.dw	0,(Sswi2c$_delay_us$23)
      00333C 00 02                 5505 	.dw	2
      00333E 78                    5506 	.db	120
      00333F 01                    5507 	.sleb128	1
      003340 00 00 8E 22           5508 	.dw	0,(Sswi2c$_delay_us$20)
      003344 00 00 8E 27           5509 	.dw	0,(Sswi2c$_delay_us$21)
      003348 00 02                 5510 	.dw	2
      00334A 78                    5511 	.db	120
      00334B 09                    5512 	.sleb128	9
      00334C 00 00 8E 20           5513 	.dw	0,(Sswi2c$_delay_us$19)
      003350 00 00 8E 22           5514 	.dw	0,(Sswi2c$_delay_us$20)
      003354 00 02                 5515 	.dw	2
      003356 78                    5516 	.db	120
      003357 08                    5517 	.sleb128	8
      003358 00 00 8E 1E           5518 	.dw	0,(Sswi2c$_delay_us$18)
      00335C 00 00 8E 20           5519 	.dw	0,(Sswi2c$_delay_us$19)
      003360 00 02                 5520 	.dw	2
      003362 78                    5521 	.db	120
      003363 07                    5522 	.sleb128	7
      003364 00 00 8E 1C           5523 	.dw	0,(Sswi2c$_delay_us$17)
      003368 00 00 8E 1E           5524 	.dw	0,(Sswi2c$_delay_us$18)
      00336C 00 02                 5525 	.dw	2
      00336E 78                    5526 	.db	120
      00336F 06                    5527 	.sleb128	6
      003370 00 00 8E 1A           5528 	.dw	0,(Sswi2c$_delay_us$16)
      003374 00 00 8E 1C           5529 	.dw	0,(Sswi2c$_delay_us$17)
      003378 00 02                 5530 	.dw	2
      00337A 78                    5531 	.db	120
      00337B 05                    5532 	.sleb128	5
      00337C 00 00 8E 19           5533 	.dw	0,(Sswi2c$_delay_us$15)
      003380 00 00 8E 1A           5534 	.dw	0,(Sswi2c$_delay_us$16)
      003384 00 02                 5535 	.dw	2
      003386 78                    5536 	.db	120
      003387 03                    5537 	.sleb128	3
      003388 00 00 8E 14           5538 	.dw	0,(Sswi2c$_delay_us$13)
      00338C 00 00 8E 19           5539 	.dw	0,(Sswi2c$_delay_us$15)
      003390 00 02                 5540 	.dw	2
      003392 78                    5541 	.db	120
      003393 01                    5542 	.sleb128	1
      003394 00 00 00 00           5543 	.dw	0,0
      003398 00 00 00 00           5544 	.dw	0,0
      00339C 00 00 8E 07           5545 	.dw	0,(Sswi2c$_delay_cycl$1)
      0033A0 00 00 8E 14           5546 	.dw	0,(Sswi2c$_delay_cycl$11)
      0033A4 00 02                 5547 	.dw	2
      0033A6 78                    5548 	.db	120
      0033A7 01                    5549 	.sleb128	1
      0033A8 00 00 00 00           5550 	.dw	0,0
      0033AC 00 00 00 00           5551 	.dw	0,0
                                   5552 
                                   5553 	.area .debug_abbrev (NOLOAD)
      00028E                       5554 Ldebug_abbrev:
      00028E 0C                    5555 	.uleb128	12
      00028F 0F                    5556 	.uleb128	15
      000290 00                    5557 	.db	0
      000291 0B                    5558 	.uleb128	11
      000292 0B                    5559 	.uleb128	11
      000293 49                    5560 	.uleb128	73
      000294 13                    5561 	.uleb128	19
      000295 00                    5562 	.uleb128	0
      000296 00                    5563 	.uleb128	0
      000297 10                    5564 	.uleb128	16
      000298 0B                    5565 	.uleb128	11
      000299 01                    5566 	.db	1
      00029A 00                    5567 	.uleb128	0
      00029B 00                    5568 	.uleb128	0
      00029C 11                    5569 	.uleb128	17
      00029D 2E                    5570 	.uleb128	46
      00029E 01                    5571 	.db	1
      00029F 03                    5572 	.uleb128	3
      0002A0 08                    5573 	.uleb128	8
      0002A1 11                    5574 	.uleb128	17
      0002A2 01                    5575 	.uleb128	1
      0002A3 12                    5576 	.uleb128	18
      0002A4 01                    5577 	.uleb128	1
      0002A5 3F                    5578 	.uleb128	63
      0002A6 0C                    5579 	.uleb128	12
      0002A7 40                    5580 	.uleb128	64
      0002A8 06                    5581 	.uleb128	6
      0002A9 49                    5582 	.uleb128	73
      0002AA 13                    5583 	.uleb128	19
      0002AB 00                    5584 	.uleb128	0
      0002AC 00                    5585 	.uleb128	0
      0002AD 03                    5586 	.uleb128	3
      0002AE 05                    5587 	.uleb128	5
      0002AF 00                    5588 	.db	0
      0002B0 02                    5589 	.uleb128	2
      0002B1 0A                    5590 	.uleb128	10
      0002B2 03                    5591 	.uleb128	3
      0002B3 08                    5592 	.uleb128	8
      0002B4 49                    5593 	.uleb128	73
      0002B5 13                    5594 	.uleb128	19
      0002B6 00                    5595 	.uleb128	0
      0002B7 00                    5596 	.uleb128	0
      0002B8 02                    5597 	.uleb128	2
      0002B9 2E                    5598 	.uleb128	46
      0002BA 01                    5599 	.db	1
      0002BB 01                    5600 	.uleb128	1
      0002BC 13                    5601 	.uleb128	19
      0002BD 03                    5602 	.uleb128	3
      0002BE 08                    5603 	.uleb128	8
      0002BF 11                    5604 	.uleb128	17
      0002C0 01                    5605 	.uleb128	1
      0002C1 12                    5606 	.uleb128	18
      0002C2 01                    5607 	.uleb128	1
      0002C3 3F                    5608 	.uleb128	63
      0002C4 0C                    5609 	.uleb128	12
      0002C5 40                    5610 	.uleb128	64
      0002C6 06                    5611 	.uleb128	6
      0002C7 00                    5612 	.uleb128	0
      0002C8 00                    5613 	.uleb128	0
      0002C9 0A                    5614 	.uleb128	10
      0002CA 34                    5615 	.uleb128	52
      0002CB 00                    5616 	.db	0
      0002CC 02                    5617 	.uleb128	2
      0002CD 0A                    5618 	.uleb128	10
      0002CE 03                    5619 	.uleb128	3
      0002CF 08                    5620 	.uleb128	8
      0002D0 49                    5621 	.uleb128	73
      0002D1 13                    5622 	.uleb128	19
      0002D2 00                    5623 	.uleb128	0
      0002D3 00                    5624 	.uleb128	0
      0002D4 0B                    5625 	.uleb128	11
      0002D5 2E                    5626 	.uleb128	46
      0002D6 01                    5627 	.db	1
      0002D7 01                    5628 	.uleb128	1
      0002D8 13                    5629 	.uleb128	19
      0002D9 03                    5630 	.uleb128	3
      0002DA 08                    5631 	.uleb128	8
      0002DB 11                    5632 	.uleb128	17
      0002DC 01                    5633 	.uleb128	1
      0002DD 12                    5634 	.uleb128	18
      0002DE 01                    5635 	.uleb128	1
      0002DF 3F                    5636 	.uleb128	63
      0002E0 0C                    5637 	.uleb128	12
      0002E1 40                    5638 	.uleb128	64
      0002E2 06                    5639 	.uleb128	6
      0002E3 49                    5640 	.uleb128	73
      0002E4 13                    5641 	.uleb128	19
      0002E5 00                    5642 	.uleb128	0
      0002E6 00                    5643 	.uleb128	0
      0002E7 0F                    5644 	.uleb128	15
      0002E8 0B                    5645 	.uleb128	11
      0002E9 01                    5646 	.db	1
      0002EA 01                    5647 	.uleb128	1
      0002EB 13                    5648 	.uleb128	19
      0002EC 00                    5649 	.uleb128	0
      0002ED 00                    5650 	.uleb128	0
      0002EE 06                    5651 	.uleb128	6
      0002EF 26                    5652 	.uleb128	38
      0002F0 00                    5653 	.db	0
      0002F1 49                    5654 	.uleb128	73
      0002F2 13                    5655 	.uleb128	19
      0002F3 00                    5656 	.uleb128	0
      0002F4 00                    5657 	.uleb128	0
      0002F5 0D                    5658 	.uleb128	13
      0002F6 0B                    5659 	.uleb128	11
      0002F7 01                    5660 	.db	1
      0002F8 11                    5661 	.uleb128	17
      0002F9 01                    5662 	.uleb128	1
      0002FA 00                    5663 	.uleb128	0
      0002FB 00                    5664 	.uleb128	0
      0002FC 01                    5665 	.uleb128	1
      0002FD 11                    5666 	.uleb128	17
      0002FE 01                    5667 	.db	1
      0002FF 03                    5668 	.uleb128	3
      000300 08                    5669 	.uleb128	8
      000301 10                    5670 	.uleb128	16
      000302 06                    5671 	.uleb128	6
      000303 13                    5672 	.uleb128	19
      000304 0B                    5673 	.uleb128	11
      000305 25                    5674 	.uleb128	37
      000306 08                    5675 	.uleb128	8
      000307 00                    5676 	.uleb128	0
      000308 00                    5677 	.uleb128	0
      000309 04                    5678 	.uleb128	4
      00030A 0B                    5679 	.uleb128	11
      00030B 00                    5680 	.db	0
      00030C 11                    5681 	.uleb128	17
      00030D 01                    5682 	.uleb128	1
      00030E 12                    5683 	.uleb128	18
      00030F 01                    5684 	.uleb128	1
      000310 00                    5685 	.uleb128	0
      000311 00                    5686 	.uleb128	0
      000312 07                    5687 	.uleb128	7
      000313 0B                    5688 	.uleb128	11
      000314 01                    5689 	.db	1
      000315 11                    5690 	.uleb128	17
      000316 01                    5691 	.uleb128	1
      000317 12                    5692 	.uleb128	18
      000318 01                    5693 	.uleb128	1
      000319 00                    5694 	.uleb128	0
      00031A 00                    5695 	.uleb128	0
      00031B 08                    5696 	.uleb128	8
      00031C 0B                    5697 	.uleb128	11
      00031D 01                    5698 	.db	1
      00031E 01                    5699 	.uleb128	1
      00031F 13                    5700 	.uleb128	19
      000320 11                    5701 	.uleb128	17
      000321 01                    5702 	.uleb128	1
      000322 00                    5703 	.uleb128	0
      000323 00                    5704 	.uleb128	0
      000324 0E                    5705 	.uleb128	14
      000325 2E                    5706 	.uleb128	46
      000326 00                    5707 	.db	0
      000327 03                    5708 	.uleb128	3
      000328 08                    5709 	.uleb128	8
      000329 11                    5710 	.uleb128	17
      00032A 01                    5711 	.uleb128	1
      00032B 12                    5712 	.uleb128	18
      00032C 01                    5713 	.uleb128	1
      00032D 3F                    5714 	.uleb128	63
      00032E 0C                    5715 	.uleb128	12
      00032F 40                    5716 	.uleb128	64
      000330 06                    5717 	.uleb128	6
      000331 00                    5718 	.uleb128	0
      000332 00                    5719 	.uleb128	0
      000333 09                    5720 	.uleb128	9
      000334 0B                    5721 	.uleb128	11
      000335 01                    5722 	.db	1
      000336 01                    5723 	.uleb128	1
      000337 13                    5724 	.uleb128	19
      000338 11                    5725 	.uleb128	17
      000339 01                    5726 	.uleb128	1
      00033A 12                    5727 	.uleb128	18
      00033B 01                    5728 	.uleb128	1
      00033C 00                    5729 	.uleb128	0
      00033D 00                    5730 	.uleb128	0
      00033E 05                    5731 	.uleb128	5
      00033F 24                    5732 	.uleb128	36
      000340 00                    5733 	.db	0
      000341 03                    5734 	.uleb128	3
      000342 08                    5735 	.uleb128	8
      000343 0B                    5736 	.uleb128	11
      000344 0B                    5737 	.uleb128	11
      000345 3E                    5738 	.uleb128	62
      000346 0B                    5739 	.uleb128	11
      000347 00                    5740 	.uleb128	0
      000348 00                    5741 	.uleb128	0
      000349 00                    5742 	.uleb128	0
                                   5743 
                                   5744 	.area .debug_info (NOLOAD)
      00181E 00 00 0F 03           5745 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001822                       5746 Ldebug_info_start:
      001822 00 02                 5747 	.dw	2
      001824 00 00 02 8E           5748 	.dw	0,(Ldebug_abbrev)
      001828 04                    5749 	.db	4
      001829 01                    5750 	.uleb128	1
      00182A 2E 2F 73 72 63 2F 73  5751 	.ascii "./src/swi2c.c"
             77 69 32 63 2E 63
      001837 00                    5752 	.db	0
      001838 00 00 10 23           5753 	.dw	0,(Ldebug_line_start+-4)
      00183C 01                    5754 	.db	1
      00183D 53 44 43 43 20 76 65  5755 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      001856 00                    5756 	.db	0
      001857 02                    5757 	.uleb128	2
      001858 00 00 00 71           5758 	.dw	0,113
      00185C 5F 64 65 6C 61 79 5F  5759 	.ascii "_delay_cycl"
             63 79 63 6C
      001867 00                    5760 	.db	0
      001868 00 00 8E 07           5761 	.dw	0,(__delay_cycl)
      00186C 00 00 8E 14           5762 	.dw	0,(XFswi2c$_delay_cycl$0$0+1)
      001870 00                    5763 	.db	0
      001871 00 00 33 9C           5764 	.dw	0,(Ldebug_loc_start+3016)
      001875 03                    5765 	.uleb128	3
      001876 02                    5766 	.db	2
      001877 91                    5767 	.db	145
      001878 02                    5768 	.sleb128	2
      001879 5F 5F 74 69 63 6B 73  5769 	.ascii "__ticks"
      001880 00                    5770 	.db	0
      001881 00 00 00 71           5771 	.dw	0,113
      001885 04                    5772 	.uleb128	4
      001886 00 00 8E 0B           5773 	.dw	0,(Sswi2c$_delay_cycl$4)
      00188A 00 00 8E 0C           5774 	.dw	0,(Sswi2c$_delay_cycl$6)
      00188E 00                    5775 	.uleb128	0
      00188F 05                    5776 	.uleb128	5
      001890 75 6E 73 69 67 6E 65  5777 	.ascii "unsigned int"
             64 20 69 6E 74
      00189C 00                    5778 	.db	0
      00189D 02                    5779 	.db	2
      00189E 07                    5780 	.db	7
      00189F 02                    5781 	.uleb128	2
      0018A0 00 00 01 08           5782 	.dw	0,264
      0018A4 5F 64 65 6C 61 79 5F  5783 	.ascii "_delay_us"
             75 73
      0018AD 00                    5784 	.db	0
      0018AE 00 00 8E 14           5785 	.dw	0,(__delay_us)
      0018B2 00 00 8E 4C           5786 	.dw	0,(XFswi2c$_delay_us$0$0+1)
      0018B6 00                    5787 	.db	0
      0018B7 00 00 32 E0           5788 	.dw	0,(Ldebug_loc_start+2828)
      0018BB 06                    5789 	.uleb128	6
      0018BC 00 00 00 71           5790 	.dw	0,113
      0018C0 03                    5791 	.uleb128	3
      0018C1 02                    5792 	.db	2
      0018C2 91                    5793 	.db	145
      0018C3 02                    5794 	.sleb128	2
      0018C4 5F 5F 75 73           5795 	.ascii "__us"
      0018C8 00                    5796 	.db	0
      0018C9 00 00 00 9D           5797 	.dw	0,157
      0018CD 07                    5798 	.uleb128	7
      0018CE 00 00 8E 14           5799 	.dw	0,(Sswi2c$_delay_us$14)
      0018D2 00 00 8E 40           5800 	.dw	0,(Sswi2c$_delay_us$31)
      0018D6 08                    5801 	.uleb128	8
      0018D7 00 00 00 ED           5802 	.dw	0,237
      0018DB 00 00 8E 41           5803 	.dw	0,(Sswi2c$_delay_us$32)
      0018DF 09                    5804 	.uleb128	9
      0018E0 00 00 00 D8           5805 	.dw	0,216
      0018E4 00 00 8E 41           5806 	.dw	0,(Sswi2c$_delay_us$33)
      0018E8 00 00 8E 4B           5807 	.dw	0,(Sswi2c$_delay_us$38)
      0018EC 04                    5808 	.uleb128	4
      0018ED 00 00 8E 43           5809 	.dw	0,(Sswi2c$_delay_us$36)
      0018F1 00 00 8E 44           5810 	.dw	0,(Sswi2c$_delay_us$37)
      0018F5 00                    5811 	.uleb128	0
      0018F6 0A                    5812 	.uleb128	10
      0018F7 06                    5813 	.db	6
      0018F8 52                    5814 	.db	82
      0018F9 93                    5815 	.db	147
      0018FA 01                    5816 	.uleb128	1
      0018FB 51                    5817 	.db	81
      0018FC 93                    5818 	.db	147
      0018FD 01                    5819 	.uleb128	1
      0018FE 5F 5F 74 69 63 6B 73  5820 	.ascii "__ticks"
      001905 00                    5821 	.db	0
      001906 00 00 00 71           5822 	.dw	0,113
      00190A 00                    5823 	.uleb128	0
      00190B 0A                    5824 	.uleb128	10
      00190C 06                    5825 	.db	6
      00190D 52                    5826 	.db	82
      00190E 93                    5827 	.db	147
      00190F 01                    5828 	.uleb128	1
      001910 51                    5829 	.db	81
      001911 93                    5830 	.db	147
      001912 01                    5831 	.uleb128	1
      001913 5F 5F 31 33 31 30 37  5832 	.ascii "__1310720010"
             32 30 30 31 30
      00191F 00                    5833 	.db	0
      001920 00 00 00 71           5834 	.dw	0,113
      001924 00                    5835 	.uleb128	0
      001925 00                    5836 	.uleb128	0
      001926 05                    5837 	.uleb128	5
      001927 75 6E 73 69 67 6E 65  5838 	.ascii "unsigned char"
             64 20 63 68 61 72
      001934 00                    5839 	.db	0
      001935 01                    5840 	.db	1
      001936 08                    5841 	.db	8
      001937 0B                    5842 	.uleb128	11
      001938 00 00 02 AB           5843 	.dw	0,683
      00193C 73 77 69 32 63 5F 72  5844 	.ascii "swi2c_read_buf"
             65 61 64 5F 62 75 66
      00194A 00                    5845 	.db	0
      00194B 00 00 8E 4C           5846 	.dw	0,(_swi2c_read_buf)
      00194F 00 00 8F DC           5847 	.dw	0,(XG$swi2c_read_buf$0$0+1)
      001953 01                    5848 	.db	1
      001954 00 00 32 24           5849 	.dw	0,(Ldebug_loc_start+2640)
      001958 00 00 01 08           5850 	.dw	0,264
      00195C 03                    5851 	.uleb128	3
      00195D 02                    5852 	.db	2
      00195E 91                    5853 	.db	145
      00195F 02                    5854 	.sleb128	2
      001960 73 6C 76 5F 61 64 64  5855 	.ascii "slv_addr"
             72
      001968 00                    5856 	.db	0
      001969 00 00 01 08           5857 	.dw	0,264
      00196D 03                    5858 	.uleb128	3
      00196E 02                    5859 	.db	2
      00196F 91                    5860 	.db	145
      001970 03                    5861 	.sleb128	3
      001971 61 64 64 72 65 73 73  5862 	.ascii "address"
      001978 00                    5863 	.db	0
      001979 00 00 01 08           5864 	.dw	0,264
      00197D 0C                    5865 	.uleb128	12
      00197E 02                    5866 	.db	2
      00197F 00 00 01 08           5867 	.dw	0,264
      001983 03                    5868 	.uleb128	3
      001984 02                    5869 	.db	2
      001985 91                    5870 	.db	145
      001986 04                    5871 	.sleb128	4
      001987 64 61 74 61           5872 	.ascii "data"
      00198B 00                    5873 	.db	0
      00198C 00 00 01 5F           5874 	.dw	0,351
      001990 03                    5875 	.uleb128	3
      001991 02                    5876 	.db	2
      001992 91                    5877 	.db	145
      001993 06                    5878 	.sleb128	6
      001994 6E 75 6D              5879 	.ascii "num"
      001997 00                    5880 	.db	0
      001998 00 00 00 71           5881 	.dw	0,113
      00199C 04                    5882 	.uleb128	4
      00199D 00 00 8E 57           5883 	.dw	0,(Sswi2c$swi2c_read_buf$47)
      0019A1 00 00 8E 5C           5884 	.dw	0,(Sswi2c$swi2c_read_buf$49)
      0019A5 09                    5885 	.uleb128	9
      0019A6 00 00 01 9E           5886 	.dw	0,414
      0019AA 00 00 8E 67           5887 	.dw	0,(Sswi2c$swi2c_read_buf$52)
      0019AE 00 00 8E 7E           5888 	.dw	0,(Sswi2c$swi2c_read_buf$60)
      0019B2 04                    5889 	.uleb128	4
      0019B3 00 00 8E 77           5890 	.dw	0,(Sswi2c$swi2c_read_buf$56)
      0019B7 00 00 8E 7C           5891 	.dw	0,(Sswi2c$swi2c_read_buf$58)
      0019BB 00                    5892 	.uleb128	0
      0019BC 09                    5893 	.uleb128	9
      0019BD 00 00 01 B5           5894 	.dw	0,437
      0019C1 00 00 8E 8D           5895 	.dw	0,(Sswi2c$swi2c_read_buf$63)
      0019C5 00 00 8E A0           5896 	.dw	0,(Sswi2c$swi2c_read_buf$69)
      0019C9 04                    5897 	.uleb128	4
      0019CA 00 00 8E 96           5898 	.dw	0,(Sswi2c$swi2c_read_buf$65)
      0019CE 00 00 8E 9B           5899 	.dw	0,(Sswi2c$swi2c_read_buf$67)
      0019D2 00                    5900 	.uleb128	0
      0019D3 09                    5901 	.uleb128	9
      0019D4 00 00 01 CC           5902 	.dw	0,460
      0019D8 00 00 8E AB           5903 	.dw	0,(Sswi2c$swi2c_read_buf$72)
      0019DC 00 00 8E C2           5904 	.dw	0,(Sswi2c$swi2c_read_buf$80)
      0019E0 04                    5905 	.uleb128	4
      0019E1 00 00 8E BB           5906 	.dw	0,(Sswi2c$swi2c_read_buf$76)
      0019E5 00 00 8E C0           5907 	.dw	0,(Sswi2c$swi2c_read_buf$78)
      0019E9 00                    5908 	.uleb128	0
      0019EA 09                    5909 	.uleb128	9
      0019EB 00 00 01 E3           5910 	.dw	0,483
      0019EF 00 00 8E D1           5911 	.dw	0,(Sswi2c$swi2c_read_buf$83)
      0019F3 00 00 8E E4           5912 	.dw	0,(Sswi2c$swi2c_read_buf$89)
      0019F7 04                    5913 	.uleb128	4
      0019F8 00 00 8E DA           5914 	.dw	0,(Sswi2c$swi2c_read_buf$85)
      0019FC 00 00 8E DF           5915 	.dw	0,(Sswi2c$swi2c_read_buf$87)
      001A00 00                    5916 	.uleb128	0
      001A01 04                    5917 	.uleb128	4
      001A02 00 00 8E ED           5918 	.dw	0,(Sswi2c$swi2c_read_buf$91)
      001A06 00 00 8E F2           5919 	.dw	0,(Sswi2c$swi2c_read_buf$93)
      001A0A 09                    5920 	.uleb128	9
      001A0B 00 00 02 03           5921 	.dw	0,515
      001A0F 00 00 8E F6           5922 	.dw	0,(Sswi2c$swi2c_read_buf$95)
      001A13 00 00 8F 1A           5923 	.dw	0,(Sswi2c$swi2c_read_buf$105)
      001A17 04                    5924 	.uleb128	4
      001A18 00 00 8F 13           5925 	.dw	0,(Sswi2c$swi2c_read_buf$101)
      001A1C 00 00 8F 18           5926 	.dw	0,(Sswi2c$swi2c_read_buf$103)
      001A20 00                    5927 	.uleb128	0
      001A21 09                    5928 	.uleb128	9
      001A22 00 00 02 1A           5929 	.dw	0,538
      001A26 00 00 8F 29           5930 	.dw	0,(Sswi2c$swi2c_read_buf$108)
      001A2A 00 00 8F 3C           5931 	.dw	0,(Sswi2c$swi2c_read_buf$114)
      001A2E 04                    5932 	.uleb128	4
      001A2F 00 00 8F 32           5933 	.dw	0,(Sswi2c$swi2c_read_buf$110)
      001A33 00 00 8F 37           5934 	.dw	0,(Sswi2c$swi2c_read_buf$112)
      001A37 00                    5935 	.uleb128	0
      001A38 09                    5936 	.uleb128	9
      001A39 00 00 02 73           5937 	.dw	0,627
      001A3D 00 00 8F 49           5938 	.dw	0,(Sswi2c$swi2c_read_buf$116)
      001A41 00 00 8F C5           5939 	.dw	0,(Sswi2c$swi2c_read_buf$154)
      001A45 09                    5940 	.uleb128	9
      001A46 00 00 02 50           5941 	.dw	0,592
      001A4A 00 00 8F 54           5942 	.dw	0,(Sswi2c$swi2c_read_buf$119)
      001A4E 00 00 8F 8F           5943 	.dw	0,(Sswi2c$swi2c_read_buf$137)
      001A52 04                    5944 	.uleb128	4
      001A53 00 00 8F 67           5945 	.dw	0,(Sswi2c$swi2c_read_buf$124)
      001A57 00 00 8F 70           5946 	.dw	0,(Sswi2c$swi2c_read_buf$126)
      001A5B 04                    5947 	.uleb128	4
      001A5C 00 00 8F 7E           5948 	.dw	0,(Sswi2c$swi2c_read_buf$129)
      001A60 00 00 8F 82           5949 	.dw	0,(Sswi2c$swi2c_read_buf$131)
      001A64 04                    5950 	.uleb128	4
      001A65 00 00 8F 85           5951 	.dw	0,(Sswi2c$swi2c_read_buf$132)
      001A69 00 00 8F 8D           5952 	.dw	0,(Sswi2c$swi2c_read_buf$135)
      001A6D 00                    5953 	.uleb128	0
      001A6E 08                    5954 	.uleb128	8
      001A6F 00 00 02 63           5955 	.dw	0,611
      001A73 00 00 8F A1           5956 	.dw	0,(Sswi2c$swi2c_read_buf$140)
      001A77 04                    5957 	.uleb128	4
      001A78 00 00 8F AE           5958 	.dw	0,(Sswi2c$swi2c_read_buf$144)
      001A7C 00 00 8F B3           5959 	.dw	0,(Sswi2c$swi2c_read_buf$146)
      001A80 00                    5960 	.uleb128	0
      001A81 0D                    5961 	.uleb128	13
      001A82 00 00 8F B3           5962 	.dw	0,(Sswi2c$swi2c_read_buf$147)
      001A86 04                    5963 	.uleb128	4
      001A87 00 00 8F C0           5964 	.dw	0,(Sswi2c$swi2c_read_buf$151)
      001A8B 00 00 8F C5           5965 	.dw	0,(Sswi2c$swi2c_read_buf$153)
      001A8F 00                    5966 	.uleb128	0
      001A90 00                    5967 	.uleb128	0
      001A91 04                    5968 	.uleb128	4
      001A92 00 00 8F D3           5969 	.dw	0,(Sswi2c$swi2c_read_buf$157)
      001A96 00 00 8F D8           5970 	.dw	0,(Sswi2c$swi2c_read_buf$159)
      001A9A 0A                    5971 	.uleb128	10
      001A9B 02                    5972 	.db	2
      001A9C 91                    5973 	.db	145
      001A9D 00                    5974 	.sleb128	0
      001A9E 69                    5975 	.ascii "i"
      001A9F 00                    5976 	.db	0
      001AA0 00 00 01 08           5977 	.dw	0,264
      001AA4 0A                    5978 	.uleb128	10
      001AA5 01                    5979 	.db	1
      001AA6 53                    5980 	.db	83
      001AA7 62 69 74              5981 	.ascii "bit"
      001AAA 00                    5982 	.db	0
      001AAB 00 00 01 08           5983 	.dw	0,264
      001AAF 0A                    5984 	.uleb128	10
      001AB0 02                    5985 	.db	2
      001AB1 91                    5986 	.db	145
      001AB2 7F                    5987 	.sleb128	-1
      001AB3 61 63 6B              5988 	.ascii "ack"
      001AB6 00                    5989 	.db	0
      001AB7 00 00 01 08           5990 	.dw	0,264
      001ABB 0A                    5991 	.uleb128	10
      001ABC 02                    5992 	.db	2
      001ABD 91                    5993 	.db	145
      001ABE 7F                    5994 	.sleb128	-1
      001ABF 6D 61 73 6B           5995 	.ascii "mask"
      001AC3 00                    5996 	.db	0
      001AC4 00 00 01 08           5997 	.dw	0,264
      001AC8 00                    5998 	.uleb128	0
      001AC9 0B                    5999 	.uleb128	11
      001ACA 00 00 03 D5           6000 	.dw	0,981
      001ACE 73 77 69 32 63 5F 77  6001 	.ascii "swi2c_write_buf"
             72 69 74 65 5F 62 75
             66
      001ADD 00                    6002 	.db	0
      001ADE 00 00 8F DC           6003 	.dw	0,(_swi2c_write_buf)
      001AE2 00 00 90 E2           6004 	.dw	0,(XG$swi2c_write_buf$0$0+1)
      001AE6 01                    6005 	.db	1
      001AE7 00 00 31 98           6006 	.dw	0,(Ldebug_loc_start+2500)
      001AEB 00 00 01 08           6007 	.dw	0,264
      001AEF 03                    6008 	.uleb128	3
      001AF0 02                    6009 	.db	2
      001AF1 91                    6010 	.db	145
      001AF2 02                    6011 	.sleb128	2
      001AF3 73 6C 76 5F 61 64 64  6012 	.ascii "slv_addr"
             72
      001AFB 00                    6013 	.db	0
      001AFC 00 00 01 08           6014 	.dw	0,264
      001B00 03                    6015 	.uleb128	3
      001B01 02                    6016 	.db	2
      001B02 91                    6017 	.db	145
      001B03 03                    6018 	.sleb128	3
      001B04 61 64 64 72 65 73 73  6019 	.ascii "address"
      001B0B 00                    6020 	.db	0
      001B0C 00 00 01 08           6021 	.dw	0,264
      001B10 03                    6022 	.uleb128	3
      001B11 02                    6023 	.db	2
      001B12 91                    6024 	.db	145
      001B13 04                    6025 	.sleb128	4
      001B14 64 61 74 61           6026 	.ascii "data"
      001B18 00                    6027 	.db	0
      001B19 00 00 01 5F           6028 	.dw	0,351
      001B1D 03                    6029 	.uleb128	3
      001B1E 02                    6030 	.db	2
      001B1F 91                    6031 	.db	145
      001B20 06                    6032 	.sleb128	6
      001B21 6E 75 6D              6033 	.ascii "num"
      001B24 00                    6034 	.db	0
      001B25 00 00 00 71           6035 	.dw	0,113
      001B29 04                    6036 	.uleb128	4
      001B2A 00 00 8F E6           6037 	.dw	0,(Sswi2c$swi2c_write_buf$169)
      001B2E 00 00 8F EB           6038 	.dw	0,(Sswi2c$swi2c_write_buf$171)
      001B32 09                    6039 	.uleb128	9
      001B33 00 00 03 2B           6040 	.dw	0,811
      001B37 00 00 8F F6           6041 	.dw	0,(Sswi2c$swi2c_write_buf$174)
      001B3B 00 00 90 0D           6042 	.dw	0,(Sswi2c$swi2c_write_buf$182)
      001B3F 04                    6043 	.uleb128	4
      001B40 00 00 90 06           6044 	.dw	0,(Sswi2c$swi2c_write_buf$178)
      001B44 00 00 90 0B           6045 	.dw	0,(Sswi2c$swi2c_write_buf$180)
      001B48 00                    6046 	.uleb128	0
      001B49 09                    6047 	.uleb128	9
      001B4A 00 00 03 42           6048 	.dw	0,834
      001B4E 00 00 90 1C           6049 	.dw	0,(Sswi2c$swi2c_write_buf$185)
      001B52 00 00 90 2F           6050 	.dw	0,(Sswi2c$swi2c_write_buf$191)
      001B56 04                    6051 	.uleb128	4
      001B57 00 00 90 25           6052 	.dw	0,(Sswi2c$swi2c_write_buf$187)
      001B5B 00 00 90 2A           6053 	.dw	0,(Sswi2c$swi2c_write_buf$189)
      001B5F 00                    6054 	.uleb128	0
      001B60 09                    6055 	.uleb128	9
      001B61 00 00 03 59           6056 	.dw	0,857
      001B65 00 00 90 3A           6057 	.dw	0,(Sswi2c$swi2c_write_buf$194)
      001B69 00 00 90 51           6058 	.dw	0,(Sswi2c$swi2c_write_buf$202)
      001B6D 04                    6059 	.uleb128	4
      001B6E 00 00 90 4A           6060 	.dw	0,(Sswi2c$swi2c_write_buf$198)
      001B72 00 00 90 4F           6061 	.dw	0,(Sswi2c$swi2c_write_buf$200)
      001B76 00                    6062 	.uleb128	0
      001B77 09                    6063 	.uleb128	9
      001B78 00 00 03 70           6064 	.dw	0,880
      001B7C 00 00 90 60           6065 	.dw	0,(Sswi2c$swi2c_write_buf$205)
      001B80 00 00 90 73           6066 	.dw	0,(Sswi2c$swi2c_write_buf$211)
      001B84 04                    6067 	.uleb128	4
      001B85 00 00 90 69           6068 	.dw	0,(Sswi2c$swi2c_write_buf$207)
      001B89 00 00 90 6E           6069 	.dw	0,(Sswi2c$swi2c_write_buf$209)
      001B8D 00                    6070 	.uleb128	0
      001B8E 09                    6071 	.uleb128	9
      001B8F 00 00 03 A8           6072 	.dw	0,936
      001B93 00 00 90 80           6073 	.dw	0,(Sswi2c$swi2c_write_buf$213)
      001B97 00 00 90 CC           6074 	.dw	0,(Sswi2c$swi2c_write_buf$237)
      001B9B 09                    6075 	.uleb128	9
      001B9C 00 00 03 94           6076 	.dw	0,916
      001BA0 00 00 90 84           6077 	.dw	0,(Sswi2c$swi2c_write_buf$215)
      001BA4 00 00 90 AA           6078 	.dw	0,(Sswi2c$swi2c_write_buf$227)
      001BA8 04                    6079 	.uleb128	4
      001BA9 00 00 90 A3           6080 	.dw	0,(Sswi2c$swi2c_write_buf$223)
      001BAD 00 00 90 A8           6081 	.dw	0,(Sswi2c$swi2c_write_buf$225)
      001BB1 00                    6082 	.uleb128	0
      001BB2 07                    6083 	.uleb128	7
      001BB3 00 00 90 B9           6084 	.dw	0,(Sswi2c$swi2c_write_buf$230)
      001BB7 00 00 90 CC           6085 	.dw	0,(Sswi2c$swi2c_write_buf$236)
      001BBB 04                    6086 	.uleb128	4
      001BBC 00 00 90 C2           6087 	.dw	0,(Sswi2c$swi2c_write_buf$232)
      001BC0 00 00 90 C7           6088 	.dw	0,(Sswi2c$swi2c_write_buf$234)
      001BC4 00                    6089 	.uleb128	0
      001BC5 00                    6090 	.uleb128	0
      001BC6 04                    6091 	.uleb128	4
      001BC7 00 00 90 DA           6092 	.dw	0,(Sswi2c$swi2c_write_buf$240)
      001BCB 00 00 90 DF           6093 	.dw	0,(Sswi2c$swi2c_write_buf$242)
      001BCF 0A                    6094 	.uleb128	10
      001BD0 02                    6095 	.db	2
      001BD1 91                    6096 	.db	145
      001BD2 00                    6097 	.sleb128	0
      001BD3 69                    6098 	.ascii "i"
      001BD4 00                    6099 	.db	0
      001BD5 00 00 01 08           6100 	.dw	0,264
      001BD9 0A                    6101 	.uleb128	10
      001BDA 02                    6102 	.db	2
      001BDB 91                    6103 	.db	145
      001BDC 7F                    6104 	.sleb128	-1
      001BDD 61 63 6B              6105 	.ascii "ack"
      001BE0 00                    6106 	.db	0
      001BE1 00 00 01 08           6107 	.dw	0,264
      001BE5 0A                    6108 	.uleb128	10
      001BE6 02                    6109 	.db	2
      001BE7 91                    6110 	.db	145
      001BE8 7F                    6111 	.sleb128	-1
      001BE9 6D 61 73 6B           6112 	.ascii "mask"
      001BED 00                    6113 	.db	0
      001BEE 00 00 01 08           6114 	.dw	0,264
      001BF2 00                    6115 	.uleb128	0
      001BF3 0B                    6116 	.uleb128	11
      001BF4 00 00 04 4F           6117 	.dw	0,1103
      001BF8 73 77 69 32 63 5F 74  6118 	.ascii "swi2c_test_slave"
             65 73 74 5F 73 6C 61
             76 65
      001C08 00                    6119 	.db	0
      001C09 00 00 90 E2           6120 	.dw	0,(_swi2c_test_slave)
      001C0D 00 00 91 2E           6121 	.dw	0,(XG$swi2c_test_slave$0$0+1)
      001C11 01                    6122 	.db	1
      001C12 00 00 31 54           6123 	.dw	0,(Ldebug_loc_start+2432)
      001C16 00 00 01 08           6124 	.dw	0,264
      001C1A 03                    6125 	.uleb128	3
      001C1B 02                    6126 	.db	2
      001C1C 91                    6127 	.db	145
      001C1D 02                    6128 	.sleb128	2
      001C1E 73 6C 76 61 64 64 72  6129 	.ascii "slvaddr"
      001C25 00                    6130 	.db	0
      001C26 00 00 01 08           6131 	.dw	0,264
      001C2A 04                    6132 	.uleb128	4
      001C2B 00 00 90 F0           6133 	.dw	0,(Sswi2c$swi2c_test_slave$253)
      001C2F 00 00 90 F5           6134 	.dw	0,(Sswi2c$swi2c_test_slave$255)
      001C33 09                    6135 	.uleb128	9
      001C34 00 00 04 2C           6136 	.dw	0,1068
      001C38 00 00 90 FC           6137 	.dw	0,(Sswi2c$swi2c_test_slave$257)
      001C3C 00 00 91 13           6138 	.dw	0,(Sswi2c$swi2c_test_slave$265)
      001C40 04                    6139 	.uleb128	4
      001C41 00 00 91 0C           6140 	.dw	0,(Sswi2c$swi2c_test_slave$261)
      001C45 00 00 91 11           6141 	.dw	0,(Sswi2c$swi2c_test_slave$263)
      001C49 00                    6142 	.uleb128	0
      001C4A 04                    6143 	.uleb128	4
      001C4B 00 00 91 24           6144 	.dw	0,(Sswi2c$swi2c_test_slave$268)
      001C4F 00 00 91 29           6145 	.dw	0,(Sswi2c$swi2c_test_slave$270)
      001C53 0A                    6146 	.uleb128	10
      001C54 02                    6147 	.db	2
      001C55 91                    6148 	.db	145
      001C56 7F                    6149 	.sleb128	-1
      001C57 61 63 6B              6150 	.ascii "ack"
      001C5A 00                    6151 	.db	0
      001C5B 00 00 01 08           6152 	.dw	0,264
      001C5F 0A                    6153 	.uleb128	10
      001C60 02                    6154 	.db	2
      001C61 91                    6155 	.db	145
      001C62 7F                    6156 	.sleb128	-1
      001C63 6D 61 73 6B           6157 	.ascii "mask"
      001C67 00                    6158 	.db	0
      001C68 00 00 01 08           6159 	.dw	0,264
      001C6C 00                    6160 	.uleb128	0
      001C6D 0E                    6161 	.uleb128	14
      001C6E 73 77 69 32 63 5F 69  6162 	.ascii "swi2c_init"
             6E 69 74
      001C78 00                    6163 	.db	0
      001C79 00 00 91 2E           6164 	.dw	0,(_swi2c_init)
      001C7D 00 00 91 49           6165 	.dw	0,(XG$swi2c_init$0$0+1)
      001C81 01                    6166 	.db	1
      001C82 00 00 30 C8           6167 	.dw	0,(Ldebug_loc_start+2292)
      001C86 0B                    6168 	.uleb128	11
      001C87 00 00 06 4F           6169 	.dw	0,1615
      001C8B 73 77 69 32 63 5F 72  6170 	.ascii "swi2c_readbit"
             65 61 64 62 69 74
      001C98 00                    6171 	.db	0
      001C99 00 00 91 49           6172 	.dw	0,(_swi2c_readbit)
      001C9D 00 00 91 DF           6173 	.dw	0,(XG$swi2c_readbit$0$0+1)
      001CA1 01                    6174 	.db	1
      001CA2 00 00 2F 7C           6175 	.dw	0,(Ldebug_loc_start+1960)
      001CA6 00 00 01 08           6176 	.dw	0,264
      001CAA 0F                    6177 	.uleb128	15
      001CAB 00 00 05 0C           6178 	.dw	0,1292
      001CAF 0F                    6179 	.uleb128	15
      001CB0 00 00 04 F6           6180 	.dw	0,1270
      001CB4 0F                    6181 	.uleb128	15
      001CB5 00 00 04 E8           6182 	.dw	0,1256
      001CB9 10                    6183 	.uleb128	16
      001CBA 08                    6184 	.uleb128	8
      001CBB 00 00 04 D1           6185 	.dw	0,1233
      001CBF 00 00 91 5A           6186 	.dw	0,(Sswi2c$swi2c_readbit$302)
      001CC3 09                    6187 	.uleb128	9
      001CC4 00 00 04 BC           6188 	.dw	0,1212
      001CC8 00 00 91 5D           6189 	.dw	0,(Sswi2c$swi2c_readbit$303)
      001CCC 00 00 91 67           6190 	.dw	0,(Sswi2c$swi2c_readbit$308)
      001CD0 04                    6191 	.uleb128	4
      001CD1 00 00 91 5F           6192 	.dw	0,(Sswi2c$swi2c_readbit$306)
      001CD5 00 00 91 60           6193 	.dw	0,(Sswi2c$swi2c_readbit$307)
      001CD9 00                    6194 	.uleb128	0
      001CDA 0A                    6195 	.uleb128	10
      001CDB 06                    6196 	.db	6
      001CDC 52                    6197 	.db	82
      001CDD 93                    6198 	.db	147
      001CDE 01                    6199 	.uleb128	1
      001CDF 51                    6200 	.db	81
      001CE0 93                    6201 	.db	147
      001CE1 01                    6202 	.uleb128	1
      001CE2 5F 5F 74 69 63 6B 73  6203 	.ascii "__ticks"
      001CE9 00                    6204 	.db	0
      001CEA 00 00 00 71           6205 	.dw	0,113
      001CEE 00                    6206 	.uleb128	0
      001CEF 0A                    6207 	.uleb128	10
      001CF0 02                    6208 	.db	2
      001CF1 91                    6209 	.db	145
      001CF2 00                    6210 	.sleb128	0
      001CF3 5F 5F 31 33 31 30 37  6211 	.ascii "__1310720010"
             32 30 30 31 30
      001CFF 00                    6212 	.db	0
      001D00 00 00 00 71           6213 	.dw	0,113
      001D04 00                    6214 	.uleb128	0
      001D05 00                    6215 	.uleb128	0
      001D06 0A                    6216 	.uleb128	10
      001D07 02                    6217 	.db	2
      001D08 91                    6218 	.db	145
      001D09 00                    6219 	.sleb128	0
      001D0A 5F 5F 75 73           6220 	.ascii "__us"
      001D0E 00                    6221 	.db	0
      001D0F 00 00 00 9D           6222 	.dw	0,157
      001D13 00                    6223 	.uleb128	0
      001D14 0A                    6224 	.uleb128	10
      001D15 02                    6225 	.db	2
      001D16 91                    6226 	.db	145
      001D17 00                    6227 	.sleb128	0
      001D18 5F 5F 31 33 31 30 37  6228 	.ascii "__1310720012"
             32 30 30 31 32
      001D24 00                    6229 	.db	0
      001D25 00 00 00 9D           6230 	.dw	0,157
      001D29 00                    6231 	.uleb128	0
      001D2A 04                    6232 	.uleb128	4
      001D2B 00 00 91 8D           6233 	.dw	0,(Sswi2c$swi2c_readbit$321)
      001D2F 00 00 91 8E           6234 	.dw	0,(Sswi2c$swi2c_readbit$323)
      001D33 04                    6235 	.uleb128	4
      001D34 00 00 91 9A           6236 	.dw	0,(Sswi2c$swi2c_readbit$325)
      001D38 00 00 91 9F           6237 	.dw	0,(Sswi2c$swi2c_readbit$327)
      001D3C 0F                    6238 	.uleb128	15
      001D3D 00 00 05 9E           6239 	.dw	0,1438
      001D41 0F                    6240 	.uleb128	15
      001D42 00 00 05 88           6241 	.dw	0,1416
      001D46 0F                    6242 	.uleb128	15
      001D47 00 00 05 7A           6243 	.dw	0,1402
      001D4B 10                    6244 	.uleb128	16
      001D4C 08                    6245 	.uleb128	8
      001D4D 00 00 05 63           6246 	.dw	0,1379
      001D51 00 00 91 9F           6247 	.dw	0,(Sswi2c$swi2c_readbit$328)
      001D55 09                    6248 	.uleb128	9
      001D56 00 00 05 4E           6249 	.dw	0,1358
      001D5A 00 00 91 A2           6250 	.dw	0,(Sswi2c$swi2c_readbit$329)
      001D5E 00 00 91 AC           6251 	.dw	0,(Sswi2c$swi2c_readbit$334)
      001D62 04                    6252 	.uleb128	4
      001D63 00 00 91 A4           6253 	.dw	0,(Sswi2c$swi2c_readbit$332)
      001D67 00 00 91 A5           6254 	.dw	0,(Sswi2c$swi2c_readbit$333)
      001D6B 00                    6255 	.uleb128	0
      001D6C 0A                    6256 	.uleb128	10
      001D6D 06                    6257 	.db	6
      001D6E 52                    6258 	.db	82
      001D6F 93                    6259 	.db	147
      001D70 01                    6260 	.uleb128	1
      001D71 51                    6261 	.db	81
      001D72 93                    6262 	.db	147
      001D73 01                    6263 	.uleb128	1
      001D74 5F 5F 74 69 63 6B 73  6264 	.ascii "__ticks"
      001D7B 00                    6265 	.db	0
      001D7C 00 00 00 71           6266 	.dw	0,113
      001D80 00                    6267 	.uleb128	0
      001D81 0A                    6268 	.uleb128	10
      001D82 02                    6269 	.db	2
      001D83 91                    6270 	.db	145
      001D84 00                    6271 	.sleb128	0
      001D85 5F 5F 31 33 31 30 37  6272 	.ascii "__1310720010"
             32 30 30 31 30
      001D91 00                    6273 	.db	0
      001D92 00 00 00 71           6274 	.dw	0,113
      001D96 00                    6275 	.uleb128	0
      001D97 00                    6276 	.uleb128	0
      001D98 0A                    6277 	.uleb128	10
      001D99 02                    6278 	.db	2
      001D9A 91                    6279 	.db	145
      001D9B 00                    6280 	.sleb128	0
      001D9C 5F 5F 75 73           6281 	.ascii "__us"
      001DA0 00                    6282 	.db	0
      001DA1 00 00 00 9D           6283 	.dw	0,157
      001DA5 00                    6284 	.uleb128	0
      001DA6 0A                    6285 	.uleb128	10
      001DA7 02                    6286 	.db	2
      001DA8 91                    6287 	.db	145
      001DA9 00                    6288 	.sleb128	0
      001DAA 5F 5F 31 33 31 30 37  6289 	.ascii "__1310720014"
             32 30 30 31 34
      001DB6 00                    6290 	.db	0
      001DB7 00 00 00 9D           6291 	.dw	0,157
      001DBB 00                    6292 	.uleb128	0
      001DBC 04                    6293 	.uleb128	4
      001DBD 00 00 91 BD           6294 	.dw	0,(Sswi2c$swi2c_readbit$340)
      001DC1 00 00 91 BE           6295 	.dw	0,(Sswi2c$swi2c_readbit$342)
      001DC5 04                    6296 	.uleb128	4
      001DC6 00 00 91 C1           6297 	.dw	0,(Sswi2c$swi2c_readbit$343)
      001DCA 00 00 91 C3           6298 	.dw	0,(Sswi2c$swi2c_readbit$345)
      001DCE 0F                    6299 	.uleb128	15
      001DCF 00 00 06 30           6300 	.dw	0,1584
      001DD3 0F                    6301 	.uleb128	15
      001DD4 00 00 06 1A           6302 	.dw	0,1562
      001DD8 0F                    6303 	.uleb128	15
      001DD9 00 00 06 0C           6304 	.dw	0,1548
      001DDD 10                    6305 	.uleb128	16
      001DDE 08                    6306 	.uleb128	8
      001DDF 00 00 05 F5           6307 	.dw	0,1525
      001DE3 00 00 91 D0           6308 	.dw	0,(Sswi2c$swi2c_readbit$353)
      001DE7 09                    6309 	.uleb128	9
      001DE8 00 00 05 E0           6310 	.dw	0,1504
      001DEC 00 00 91 D3           6311 	.dw	0,(Sswi2c$swi2c_readbit$354)
      001DF0 00 00 91 DD           6312 	.dw	0,(Sswi2c$swi2c_readbit$359)
      001DF4 04                    6313 	.uleb128	4
      001DF5 00 00 91 D5           6314 	.dw	0,(Sswi2c$swi2c_readbit$357)
      001DF9 00 00 91 D6           6315 	.dw	0,(Sswi2c$swi2c_readbit$358)
      001DFD 00                    6316 	.uleb128	0
      001DFE 0A                    6317 	.uleb128	10
      001DFF 06                    6318 	.db	6
      001E00 52                    6319 	.db	82
      001E01 93                    6320 	.db	147
      001E02 01                    6321 	.uleb128	1
      001E03 51                    6322 	.db	81
      001E04 93                    6323 	.db	147
      001E05 01                    6324 	.uleb128	1
      001E06 5F 5F 74 69 63 6B 73  6325 	.ascii "__ticks"
      001E0D 00                    6326 	.db	0
      001E0E 00 00 00 71           6327 	.dw	0,113
      001E12 00                    6328 	.uleb128	0
      001E13 0A                    6329 	.uleb128	10
      001E14 02                    6330 	.db	2
      001E15 91                    6331 	.db	145
      001E16 00                    6332 	.sleb128	0
      001E17 5F 5F 31 33 31 30 37  6333 	.ascii "__1310720010"
             32 30 30 31 30
      001E23 00                    6334 	.db	0
      001E24 00 00 00 71           6335 	.dw	0,113
      001E28 00                    6336 	.uleb128	0
      001E29 00                    6337 	.uleb128	0
      001E2A 0A                    6338 	.uleb128	10
      001E2B 02                    6339 	.db	2
      001E2C 91                    6340 	.db	145
      001E2D 00                    6341 	.sleb128	0
      001E2E 5F 5F 75 73           6342 	.ascii "__us"
      001E32 00                    6343 	.db	0
      001E33 00 00 00 9D           6344 	.dw	0,157
      001E37 00                    6345 	.uleb128	0
      001E38 0A                    6346 	.uleb128	10
      001E39 02                    6347 	.db	2
      001E3A 91                    6348 	.db	145
      001E3B 00                    6349 	.sleb128	0
      001E3C 5F 5F 31 33 31 30 37  6350 	.ascii "__1310720016"
             32 30 30 31 36
      001E48 00                    6351 	.db	0
      001E49 00 00 00 9D           6352 	.dw	0,157
      001E4D 00                    6353 	.uleb128	0
      001E4E 0A                    6354 	.uleb128	10
      001E4F 02                    6355 	.db	2
      001E50 91                    6356 	.db	145
      001E51 7E                    6357 	.sleb128	-2
      001E52 74 69 6D 65 6F 75 74  6358 	.ascii "timeout"
      001E59 00                    6359 	.db	0
      001E5A 00 00 00 71           6360 	.dw	0,113
      001E5E 0A                    6361 	.uleb128	10
      001E5F 01                    6362 	.db	1
      001E60 50                    6363 	.db	80
      001E61 72 65 74 76 61 6C     6364 	.ascii "retval"
      001E67 00                    6365 	.db	0
      001E68 00 00 01 08           6366 	.dw	0,264
      001E6C 00                    6367 	.uleb128	0
      001E6D 0B                    6368 	.uleb128	11
      001E6E 00 00 08 35           6369 	.dw	0,2101
      001E72 73 77 69 32 63 5F 77  6370 	.ascii "swi2c_writebit"
             72 69 74 65 62 69 74
      001E80 00                    6371 	.db	0
      001E81 00 00 91 DF           6372 	.dw	0,(_swi2c_writebit)
      001E85 00 00 92 7D           6373 	.dw	0,(XG$swi2c_writebit$0$0+1)
      001E89 01                    6374 	.db	1
      001E8A 00 00 2E 18           6375 	.dw	0,(Ldebug_loc_start+1604)
      001E8E 00 00 01 08           6376 	.dw	0,264
      001E92 03                    6377 	.uleb128	3
      001E93 02                    6378 	.db	2
      001E94 91                    6379 	.db	145
      001E95 02                    6380 	.sleb128	2
      001E96 62 69 74              6381 	.ascii "bit"
      001E99 00                    6382 	.db	0
      001E9A 00 00 01 08           6383 	.dw	0,264
      001E9E 04                    6384 	.uleb128	4
      001E9F 00 00 91 EC           6385 	.dw	0,(Sswi2c$swi2c_writebit$370)
      001EA3 00 00 91 F7           6386 	.dw	0,(Sswi2c$swi2c_writebit$376)
      001EA7 04                    6387 	.uleb128	4
      001EA8 00 00 91 FA           6388 	.dw	0,(Sswi2c$swi2c_writebit$377)
      001EAC 00 00 92 05           6389 	.dw	0,(Sswi2c$swi2c_writebit$383)
      001EB0 0F                    6390 	.uleb128	15
      001EB1 00 00 07 12           6391 	.dw	0,1810
      001EB5 0F                    6392 	.uleb128	15
      001EB6 00 00 06 FC           6393 	.dw	0,1788
      001EBA 0F                    6394 	.uleb128	15
      001EBB 00 00 06 EE           6395 	.dw	0,1774
      001EBF 10                    6396 	.uleb128	16
      001EC0 08                    6397 	.uleb128	8
      001EC1 00 00 06 D7           6398 	.dw	0,1751
      001EC5 00 00 92 05           6399 	.dw	0,(Sswi2c$swi2c_writebit$384)
      001EC9 09                    6400 	.uleb128	9
      001ECA 00 00 06 C2           6401 	.dw	0,1730
      001ECE 00 00 92 08           6402 	.dw	0,(Sswi2c$swi2c_writebit$385)
      001ED2 00 00 92 12           6403 	.dw	0,(Sswi2c$swi2c_writebit$390)
      001ED6 04                    6404 	.uleb128	4
      001ED7 00 00 92 0A           6405 	.dw	0,(Sswi2c$swi2c_writebit$388)
      001EDB 00 00 92 0B           6406 	.dw	0,(Sswi2c$swi2c_writebit$389)
      001EDF 00                    6407 	.uleb128	0
      001EE0 0A                    6408 	.uleb128	10
      001EE1 06                    6409 	.db	6
      001EE2 52                    6410 	.db	82
      001EE3 93                    6411 	.db	147
      001EE4 01                    6412 	.uleb128	1
      001EE5 51                    6413 	.db	81
      001EE6 93                    6414 	.db	147
      001EE7 01                    6415 	.uleb128	1
      001EE8 5F 5F 74 69 63 6B 73  6416 	.ascii "__ticks"
      001EEF 00                    6417 	.db	0
      001EF0 00 00 00 71           6418 	.dw	0,113
      001EF4 00                    6419 	.uleb128	0
      001EF5 0A                    6420 	.uleb128	10
      001EF6 02                    6421 	.db	2
      001EF7 91                    6422 	.db	145
      001EF8 00                    6423 	.sleb128	0
      001EF9 5F 5F 31 33 31 30 37  6424 	.ascii "__1310720010"
             32 30 30 31 30
      001F05 00                    6425 	.db	0
      001F06 00 00 00 71           6426 	.dw	0,113
      001F0A 00                    6427 	.uleb128	0
      001F0B 00                    6428 	.uleb128	0
      001F0C 0A                    6429 	.uleb128	10
      001F0D 02                    6430 	.db	2
      001F0E 91                    6431 	.db	145
      001F0F 00                    6432 	.sleb128	0
      001F10 5F 5F 75 73           6433 	.ascii "__us"
      001F14 00                    6434 	.db	0
      001F15 00 00 00 9D           6435 	.dw	0,157
      001F19 00                    6436 	.uleb128	0
      001F1A 0A                    6437 	.uleb128	10
      001F1B 02                    6438 	.db	2
      001F1C 91                    6439 	.db	145
      001F1D 00                    6440 	.sleb128	0
      001F1E 5F 5F 31 33 31 30 37  6441 	.ascii "__1310720018"
             32 30 30 31 38
      001F2A 00                    6442 	.db	0
      001F2B 00 00 00 9D           6443 	.dw	0,157
      001F2F 00                    6444 	.uleb128	0
      001F30 04                    6445 	.uleb128	4
      001F31 00 00 92 38           6446 	.dw	0,(Sswi2c$swi2c_writebit$403)
      001F35 00 00 92 39           6447 	.dw	0,(Sswi2c$swi2c_writebit$405)
      001F39 04                    6448 	.uleb128	4
      001F3A 00 00 92 45           6449 	.dw	0,(Sswi2c$swi2c_writebit$407)
      001F3E 00 00 92 55           6450 	.dw	0,(Sswi2c$swi2c_writebit$414)
      001F42 0F                    6451 	.uleb128	15
      001F43 00 00 07 A4           6452 	.dw	0,1956
      001F47 0F                    6453 	.uleb128	15
      001F48 00 00 07 8E           6454 	.dw	0,1934
      001F4C 0F                    6455 	.uleb128	15
      001F4D 00 00 07 80           6456 	.dw	0,1920
      001F51 10                    6457 	.uleb128	16
      001F52 08                    6458 	.uleb128	8
      001F53 00 00 07 69           6459 	.dw	0,1897
      001F57 00 00 92 55           6460 	.dw	0,(Sswi2c$swi2c_writebit$415)
      001F5B 09                    6461 	.uleb128	9
      001F5C 00 00 07 54           6462 	.dw	0,1876
      001F60 00 00 92 58           6463 	.dw	0,(Sswi2c$swi2c_writebit$416)
      001F64 00 00 92 62           6464 	.dw	0,(Sswi2c$swi2c_writebit$421)
      001F68 04                    6465 	.uleb128	4
      001F69 00 00 92 5A           6466 	.dw	0,(Sswi2c$swi2c_writebit$419)
      001F6D 00 00 92 5B           6467 	.dw	0,(Sswi2c$swi2c_writebit$420)
      001F71 00                    6468 	.uleb128	0
      001F72 0A                    6469 	.uleb128	10
      001F73 06                    6470 	.db	6
      001F74 52                    6471 	.db	82
      001F75 93                    6472 	.db	147
      001F76 01                    6473 	.uleb128	1
      001F77 51                    6474 	.db	81
      001F78 93                    6475 	.db	147
      001F79 01                    6476 	.uleb128	1
      001F7A 5F 5F 74 69 63 6B 73  6477 	.ascii "__ticks"
      001F81 00                    6478 	.db	0
      001F82 00 00 00 71           6479 	.dw	0,113
      001F86 00                    6480 	.uleb128	0
      001F87 0A                    6481 	.uleb128	10
      001F88 02                    6482 	.db	2
      001F89 91                    6483 	.db	145
      001F8A 00                    6484 	.sleb128	0
      001F8B 5F 5F 31 33 31 30 37  6485 	.ascii "__1310720010"
             32 30 30 31 30
      001F97 00                    6486 	.db	0
      001F98 00 00 00 71           6487 	.dw	0,113
      001F9C 00                    6488 	.uleb128	0
      001F9D 00                    6489 	.uleb128	0
      001F9E 0A                    6490 	.uleb128	10
      001F9F 02                    6491 	.db	2
      001FA0 91                    6492 	.db	145
      001FA1 00                    6493 	.sleb128	0
      001FA2 5F 5F 75 73           6494 	.ascii "__us"
      001FA6 00                    6495 	.db	0
      001FA7 00 00 00 9D           6496 	.dw	0,157
      001FAB 00                    6497 	.uleb128	0
      001FAC 0A                    6498 	.uleb128	10
      001FAD 02                    6499 	.db	2
      001FAE 91                    6500 	.db	145
      001FAF 00                    6501 	.sleb128	0
      001FB0 5F 5F 31 33 31 30 37  6502 	.ascii "__1310720020"
             32 30 30 32 30
      001FBC 00                    6503 	.db	0
      001FBD 00 00 00 9D           6504 	.dw	0,157
      001FC1 00                    6505 	.uleb128	0
      001FC2 0F                    6506 	.uleb128	15
      001FC3 00 00 08 24           6507 	.dw	0,2084
      001FC7 0F                    6508 	.uleb128	15
      001FC8 00 00 08 0E           6509 	.dw	0,2062
      001FCC 0F                    6510 	.uleb128	15
      001FCD 00 00 08 00           6511 	.dw	0,2048
      001FD1 10                    6512 	.uleb128	16
      001FD2 08                    6513 	.uleb128	8
      001FD3 00 00 07 E9           6514 	.dw	0,2025
      001FD7 00 00 92 6D           6515 	.dw	0,(Sswi2c$swi2c_writebit$427)
      001FDB 09                    6516 	.uleb128	9
      001FDC 00 00 07 D4           6517 	.dw	0,2004
      001FE0 00 00 92 70           6518 	.dw	0,(Sswi2c$swi2c_writebit$428)
      001FE4 00 00 92 7A           6519 	.dw	0,(Sswi2c$swi2c_writebit$433)
      001FE8 04                    6520 	.uleb128	4
      001FE9 00 00 92 72           6521 	.dw	0,(Sswi2c$swi2c_writebit$431)
      001FED 00 00 92 73           6522 	.dw	0,(Sswi2c$swi2c_writebit$432)
      001FF1 00                    6523 	.uleb128	0
      001FF2 0A                    6524 	.uleb128	10
      001FF3 06                    6525 	.db	6
      001FF4 52                    6526 	.db	82
      001FF5 93                    6527 	.db	147
      001FF6 01                    6528 	.uleb128	1
      001FF7 51                    6529 	.db	81
      001FF8 93                    6530 	.db	147
      001FF9 01                    6531 	.uleb128	1
      001FFA 5F 5F 74 69 63 6B 73  6532 	.ascii "__ticks"
      002001 00                    6533 	.db	0
      002002 00 00 00 71           6534 	.dw	0,113
      002006 00                    6535 	.uleb128	0
      002007 0A                    6536 	.uleb128	10
      002008 02                    6537 	.db	2
      002009 91                    6538 	.db	145
      00200A 00                    6539 	.sleb128	0
      00200B 5F 5F 31 33 31 30 37  6540 	.ascii "__1310720010"
             32 30 30 31 30
      002017 00                    6541 	.db	0
      002018 00 00 00 71           6542 	.dw	0,113
      00201C 00                    6543 	.uleb128	0
      00201D 00                    6544 	.uleb128	0
      00201E 0A                    6545 	.uleb128	10
      00201F 02                    6546 	.db	2
      002020 91                    6547 	.db	145
      002021 00                    6548 	.sleb128	0
      002022 5F 5F 75 73           6549 	.ascii "__us"
      002026 00                    6550 	.db	0
      002027 00 00 00 9D           6551 	.dw	0,157
      00202B 00                    6552 	.uleb128	0
      00202C 0A                    6553 	.uleb128	10
      00202D 02                    6554 	.db	2
      00202E 91                    6555 	.db	145
      00202F 00                    6556 	.sleb128	0
      002030 5F 5F 31 33 31 30 37  6557 	.ascii "__1310720022"
             32 30 30 32 32
      00203C 00                    6558 	.db	0
      00203D 00 00 00 9D           6559 	.dw	0,157
      002041 00                    6560 	.uleb128	0
      002042 0A                    6561 	.uleb128	10
      002043 02                    6562 	.db	2
      002044 91                    6563 	.db	145
      002045 7E                    6564 	.sleb128	-2
      002046 74 69 6D 65 6F 75 74  6565 	.ascii "timeout"
      00204D 00                    6566 	.db	0
      00204E 00 00 00 71           6567 	.dw	0,113
      002052 00                    6568 	.uleb128	0
      002053 0B                    6569 	.uleb128	11
      002054 00 00 0A 8E           6570 	.dw	0,2702
      002058 73 77 69 32 63 5F 52  6571 	.ascii "swi2c_RESTART"
             45 53 54 41 52 54
      002065 00                    6572 	.db	0
      002066 00 00 92 7D           6573 	.dw	0,(_swi2c_RESTART)
      00206A 00 00 93 52           6574 	.dw	0,(XG$swi2c_RESTART$0$0+1)
      00206E 01                    6575 	.db	1
      00206F 00 00 2C 0C           6576 	.dw	0,(Ldebug_loc_start+1080)
      002073 00 00 01 08           6577 	.dw	0,264
      002077 04                    6578 	.uleb128	4
      002078 00 00 92 B3           6579 	.dw	0,(Sswi2c$swi2c_RESTART$464)
      00207C 00 00 92 B4           6580 	.dw	0,(Sswi2c$swi2c_RESTART$466)
      002080 04                    6581 	.uleb128	4
      002081 00 00 92 C0           6582 	.dw	0,(Sswi2c$swi2c_RESTART$468)
      002085 00 00 92 D0           6583 	.dw	0,(Sswi2c$swi2c_RESTART$475)
      002089 0F                    6584 	.uleb128	15
      00208A 00 00 08 EB           6585 	.dw	0,2283
      00208E 0F                    6586 	.uleb128	15
      00208F 00 00 08 D5           6587 	.dw	0,2261
      002093 0F                    6588 	.uleb128	15
      002094 00 00 08 C7           6589 	.dw	0,2247
      002098 10                    6590 	.uleb128	16
      002099 08                    6591 	.uleb128	8
      00209A 00 00 08 B0           6592 	.dw	0,2224
      00209E 00 00 92 D0           6593 	.dw	0,(Sswi2c$swi2c_RESTART$476)
      0020A2 09                    6594 	.uleb128	9
      0020A3 00 00 08 9B           6595 	.dw	0,2203
      0020A7 00 00 92 D3           6596 	.dw	0,(Sswi2c$swi2c_RESTART$477)
      0020AB 00 00 92 DD           6597 	.dw	0,(Sswi2c$swi2c_RESTART$482)
      0020AF 04                    6598 	.uleb128	4
      0020B0 00 00 92 D5           6599 	.dw	0,(Sswi2c$swi2c_RESTART$480)
      0020B4 00 00 92 D6           6600 	.dw	0,(Sswi2c$swi2c_RESTART$481)
      0020B8 00                    6601 	.uleb128	0
      0020B9 0A                    6602 	.uleb128	10
      0020BA 06                    6603 	.db	6
      0020BB 52                    6604 	.db	82
      0020BC 93                    6605 	.db	147
      0020BD 01                    6606 	.uleb128	1
      0020BE 51                    6607 	.db	81
      0020BF 93                    6608 	.db	147
      0020C0 01                    6609 	.uleb128	1
      0020C1 5F 5F 74 69 63 6B 73  6610 	.ascii "__ticks"
      0020C8 00                    6611 	.db	0
      0020C9 00 00 00 71           6612 	.dw	0,113
      0020CD 00                    6613 	.uleb128	0
      0020CE 0A                    6614 	.uleb128	10
      0020CF 02                    6615 	.db	2
      0020D0 91                    6616 	.db	145
      0020D1 00                    6617 	.sleb128	0
      0020D2 5F 5F 31 33 31 30 37  6618 	.ascii "__1310720010"
             32 30 30 31 30
      0020DE 00                    6619 	.db	0
      0020DF 00 00 00 71           6620 	.dw	0,113
      0020E3 00                    6621 	.uleb128	0
      0020E4 00                    6622 	.uleb128	0
      0020E5 0A                    6623 	.uleb128	10
      0020E6 02                    6624 	.db	2
      0020E7 91                    6625 	.db	145
      0020E8 00                    6626 	.sleb128	0
      0020E9 5F 5F 75 73           6627 	.ascii "__us"
      0020ED 00                    6628 	.db	0
      0020EE 00 00 00 9D           6629 	.dw	0,157
      0020F2 00                    6630 	.uleb128	0
      0020F3 0A                    6631 	.uleb128	10
      0020F4 02                    6632 	.db	2
      0020F5 91                    6633 	.db	145
      0020F6 00                    6634 	.sleb128	0
      0020F7 5F 5F 31 33 31 30 37  6635 	.ascii "__1310720024"
             32 30 30 32 34
      002103 00                    6636 	.db	0
      002104 00 00 00 9D           6637 	.dw	0,157
      002108 00                    6638 	.uleb128	0
      002109 04                    6639 	.uleb128	4
      00210A 00 00 93 03           6640 	.dw	0,(Sswi2c$swi2c_RESTART$495)
      00210E 00 00 93 04           6641 	.dw	0,(Sswi2c$swi2c_RESTART$497)
      002112 04                    6642 	.uleb128	4
      002113 00 00 93 0D           6643 	.dw	0,(Sswi2c$swi2c_RESTART$499)
      002117 00 00 93 12           6644 	.dw	0,(Sswi2c$swi2c_RESTART$501)
      00211B 0F                    6645 	.uleb128	15
      00211C 00 00 09 7D           6646 	.dw	0,2429
      002120 0F                    6647 	.uleb128	15
      002121 00 00 09 67           6648 	.dw	0,2407
      002125 0F                    6649 	.uleb128	15
      002126 00 00 09 59           6650 	.dw	0,2393
      00212A 10                    6651 	.uleb128	16
      00212B 08                    6652 	.uleb128	8
      00212C 00 00 09 42           6653 	.dw	0,2370
      002130 00 00 93 12           6654 	.dw	0,(Sswi2c$swi2c_RESTART$502)
      002134 09                    6655 	.uleb128	9
      002135 00 00 09 2D           6656 	.dw	0,2349
      002139 00 00 93 15           6657 	.dw	0,(Sswi2c$swi2c_RESTART$503)
      00213D 00 00 93 1F           6658 	.dw	0,(Sswi2c$swi2c_RESTART$508)
      002141 04                    6659 	.uleb128	4
      002142 00 00 93 17           6660 	.dw	0,(Sswi2c$swi2c_RESTART$506)
      002146 00 00 93 18           6661 	.dw	0,(Sswi2c$swi2c_RESTART$507)
      00214A 00                    6662 	.uleb128	0
      00214B 0A                    6663 	.uleb128	10
      00214C 06                    6664 	.db	6
      00214D 52                    6665 	.db	82
      00214E 93                    6666 	.db	147
      00214F 01                    6667 	.uleb128	1
      002150 51                    6668 	.db	81
      002151 93                    6669 	.db	147
      002152 01                    6670 	.uleb128	1
      002153 5F 5F 74 69 63 6B 73  6671 	.ascii "__ticks"
      00215A 00                    6672 	.db	0
      00215B 00 00 00 71           6673 	.dw	0,113
      00215F 00                    6674 	.uleb128	0
      002160 0A                    6675 	.uleb128	10
      002161 02                    6676 	.db	2
      002162 91                    6677 	.db	145
      002163 00                    6678 	.sleb128	0
      002164 5F 5F 31 33 31 30 37  6679 	.ascii "__1310720010"
             32 30 30 31 30
      002170 00                    6680 	.db	0
      002171 00 00 00 71           6681 	.dw	0,113
      002175 00                    6682 	.uleb128	0
      002176 00                    6683 	.uleb128	0
      002177 0A                    6684 	.uleb128	10
      002178 02                    6685 	.db	2
      002179 91                    6686 	.db	145
      00217A 00                    6687 	.sleb128	0
      00217B 5F 5F 75 73           6688 	.ascii "__us"
      00217F 00                    6689 	.db	0
      002180 00 00 00 9D           6690 	.dw	0,157
      002184 00                    6691 	.uleb128	0
      002185 0A                    6692 	.uleb128	10
      002186 02                    6693 	.db	2
      002187 91                    6694 	.db	145
      002188 00                    6695 	.sleb128	0
      002189 5F 5F 31 33 31 30 37  6696 	.ascii "__1310720026"
             32 30 30 32 36
      002195 00                    6697 	.db	0
      002196 00 00 00 9D           6698 	.dw	0,157
      00219A 00                    6699 	.uleb128	0
      00219B 0F                    6700 	.uleb128	15
      00219C 00 00 09 FD           6701 	.dw	0,2557
      0021A0 0F                    6702 	.uleb128	15
      0021A1 00 00 09 E7           6703 	.dw	0,2535
      0021A5 0F                    6704 	.uleb128	15
      0021A6 00 00 09 D9           6705 	.dw	0,2521
      0021AA 10                    6706 	.uleb128	16
      0021AB 08                    6707 	.uleb128	8
      0021AC 00 00 09 C2           6708 	.dw	0,2498
      0021B0 00 00 93 2A           6709 	.dw	0,(Sswi2c$swi2c_RESTART$514)
      0021B4 09                    6710 	.uleb128	9
      0021B5 00 00 09 AD           6711 	.dw	0,2477
      0021B9 00 00 93 2D           6712 	.dw	0,(Sswi2c$swi2c_RESTART$515)
      0021BD 00 00 93 37           6713 	.dw	0,(Sswi2c$swi2c_RESTART$520)
      0021C1 04                    6714 	.uleb128	4
      0021C2 00 00 93 2F           6715 	.dw	0,(Sswi2c$swi2c_RESTART$518)
      0021C6 00 00 93 30           6716 	.dw	0,(Sswi2c$swi2c_RESTART$519)
      0021CA 00                    6717 	.uleb128	0
      0021CB 0A                    6718 	.uleb128	10
      0021CC 06                    6719 	.db	6
      0021CD 52                    6720 	.db	82
      0021CE 93                    6721 	.db	147
      0021CF 01                    6722 	.uleb128	1
      0021D0 51                    6723 	.db	81
      0021D1 93                    6724 	.db	147
      0021D2 01                    6725 	.uleb128	1
      0021D3 5F 5F 74 69 63 6B 73  6726 	.ascii "__ticks"
      0021DA 00                    6727 	.db	0
      0021DB 00 00 00 71           6728 	.dw	0,113
      0021DF 00                    6729 	.uleb128	0
      0021E0 0A                    6730 	.uleb128	10
      0021E1 02                    6731 	.db	2
      0021E2 91                    6732 	.db	145
      0021E3 00                    6733 	.sleb128	0
      0021E4 5F 5F 31 33 31 30 37  6734 	.ascii "__1310720010"
             32 30 30 31 30
      0021F0 00                    6735 	.db	0
      0021F1 00 00 00 71           6736 	.dw	0,113
      0021F5 00                    6737 	.uleb128	0
      0021F6 00                    6738 	.uleb128	0
      0021F7 0A                    6739 	.uleb128	10
      0021F8 02                    6740 	.db	2
      0021F9 91                    6741 	.db	145
      0021FA 00                    6742 	.sleb128	0
      0021FB 5F 5F 75 73           6743 	.ascii "__us"
      0021FF 00                    6744 	.db	0
      002200 00 00 00 9D           6745 	.dw	0,157
      002204 00                    6746 	.uleb128	0
      002205 0A                    6747 	.uleb128	10
      002206 02                    6748 	.db	2
      002207 91                    6749 	.db	145
      002208 00                    6750 	.sleb128	0
      002209 5F 5F 31 33 31 30 37  6751 	.ascii "__1310720028"
             32 30 30 32 38
      002215 00                    6752 	.db	0
      002216 00 00 00 9D           6753 	.dw	0,157
      00221A 00                    6754 	.uleb128	0
      00221B 0F                    6755 	.uleb128	15
      00221C 00 00 0A 7D           6756 	.dw	0,2685
      002220 0F                    6757 	.uleb128	15
      002221 00 00 0A 67           6758 	.dw	0,2663
      002225 0F                    6759 	.uleb128	15
      002226 00 00 0A 59           6760 	.dw	0,2649
      00222A 10                    6761 	.uleb128	16
      00222B 08                    6762 	.uleb128	8
      00222C 00 00 0A 42           6763 	.dw	0,2626
      002230 00 00 93 42           6764 	.dw	0,(Sswi2c$swi2c_RESTART$526)
      002234 09                    6765 	.uleb128	9
      002235 00 00 0A 2D           6766 	.dw	0,2605
      002239 00 00 93 45           6767 	.dw	0,(Sswi2c$swi2c_RESTART$527)
      00223D 00 00 93 4F           6768 	.dw	0,(Sswi2c$swi2c_RESTART$532)
      002241 04                    6769 	.uleb128	4
      002242 00 00 93 47           6770 	.dw	0,(Sswi2c$swi2c_RESTART$530)
      002246 00 00 93 48           6771 	.dw	0,(Sswi2c$swi2c_RESTART$531)
      00224A 00                    6772 	.uleb128	0
      00224B 0A                    6773 	.uleb128	10
      00224C 06                    6774 	.db	6
      00224D 52                    6775 	.db	82
      00224E 93                    6776 	.db	147
      00224F 01                    6777 	.uleb128	1
      002250 51                    6778 	.db	81
      002251 93                    6779 	.db	147
      002252 01                    6780 	.uleb128	1
      002253 5F 5F 74 69 63 6B 73  6781 	.ascii "__ticks"
      00225A 00                    6782 	.db	0
      00225B 00 00 00 71           6783 	.dw	0,113
      00225F 00                    6784 	.uleb128	0
      002260 0A                    6785 	.uleb128	10
      002261 02                    6786 	.db	2
      002262 91                    6787 	.db	145
      002263 00                    6788 	.sleb128	0
      002264 5F 5F 31 33 31 30 37  6789 	.ascii "__1310720010"
             32 30 30 31 30
      002270 00                    6790 	.db	0
      002271 00 00 00 71           6791 	.dw	0,113
      002275 00                    6792 	.uleb128	0
      002276 00                    6793 	.uleb128	0
      002277 0A                    6794 	.uleb128	10
      002278 02                    6795 	.db	2
      002279 91                    6796 	.db	145
      00227A 00                    6797 	.sleb128	0
      00227B 5F 5F 75 73           6798 	.ascii "__us"
      00227F 00                    6799 	.db	0
      002280 00 00 00 9D           6800 	.dw	0,157
      002284 00                    6801 	.uleb128	0
      002285 0A                    6802 	.uleb128	10
      002286 02                    6803 	.db	2
      002287 91                    6804 	.db	145
      002288 00                    6805 	.sleb128	0
      002289 5F 5F 31 33 31 30 37  6806 	.ascii "__1310720030"
             32 30 30 33 30
      002295 00                    6807 	.db	0
      002296 00 00 00 9D           6808 	.dw	0,157
      00229A 00                    6809 	.uleb128	0
      00229B 0A                    6810 	.uleb128	10
      00229C 02                    6811 	.db	2
      00229D 91                    6812 	.db	145
      00229E 7E                    6813 	.sleb128	-2
      00229F 74 69 6D 65 6F 75 74  6814 	.ascii "timeout"
      0022A6 00                    6815 	.db	0
      0022A7 00 00 00 71           6816 	.dw	0,113
      0022AB 00                    6817 	.uleb128	0
      0022AC 0B                    6818 	.uleb128	11
      0022AD 00 00 0B B6           6819 	.dw	0,2998
      0022B1 73 77 69 32 63 5F 53  6820 	.ascii "swi2c_START"
             54 41 52 54
      0022BC 00                    6821 	.db	0
      0022BD 00 00 93 52           6822 	.dw	0,(_swi2c_START)
      0022C1 00 00 93 C1           6823 	.dw	0,(XG$swi2c_START$0$0+1)
      0022C5 01                    6824 	.db	1
      0022C6 00 00 2A D8           6825 	.dw	0,(Ldebug_loc_start+772)
      0022CA 00 00 01 08           6826 	.dw	0,264
      0022CE 04                    6827 	.uleb128	4
      0022CF 00 00 93 74           6828 	.dw	0,(Sswi2c$swi2c_START$549)
      0022D3 00 00 93 8F           6829 	.dw	0,(Sswi2c$swi2c_START$561)
      0022D7 0F                    6830 	.uleb128	15
      0022D8 00 00 0B 39           6831 	.dw	0,2873
      0022DC 0F                    6832 	.uleb128	15
      0022DD 00 00 0B 23           6833 	.dw	0,2851
      0022E1 0F                    6834 	.uleb128	15
      0022E2 00 00 0B 15           6835 	.dw	0,2837
      0022E6 10                    6836 	.uleb128	16
      0022E7 08                    6837 	.uleb128	8
      0022E8 00 00 0A FE           6838 	.dw	0,2814
      0022EC 00 00 93 9A           6839 	.dw	0,(Sswi2c$swi2c_START$567)
      0022F0 09                    6840 	.uleb128	9
      0022F1 00 00 0A E9           6841 	.dw	0,2793
      0022F5 00 00 93 9D           6842 	.dw	0,(Sswi2c$swi2c_START$568)
      0022F9 00 00 93 A7           6843 	.dw	0,(Sswi2c$swi2c_START$573)
      0022FD 04                    6844 	.uleb128	4
      0022FE 00 00 93 9F           6845 	.dw	0,(Sswi2c$swi2c_START$571)
      002302 00 00 93 A0           6846 	.dw	0,(Sswi2c$swi2c_START$572)
      002306 00                    6847 	.uleb128	0
      002307 0A                    6848 	.uleb128	10
      002308 06                    6849 	.db	6
      002309 52                    6850 	.db	82
      00230A 93                    6851 	.db	147
      00230B 01                    6852 	.uleb128	1
      00230C 51                    6853 	.db	81
      00230D 93                    6854 	.db	147
      00230E 01                    6855 	.uleb128	1
      00230F 5F 5F 74 69 63 6B 73  6856 	.ascii "__ticks"
      002316 00                    6857 	.db	0
      002317 00 00 00 71           6858 	.dw	0,113
      00231B 00                    6859 	.uleb128	0
      00231C 0A                    6860 	.uleb128	10
      00231D 02                    6861 	.db	2
      00231E 91                    6862 	.db	145
      00231F 00                    6863 	.sleb128	0
      002320 5F 5F 31 33 31 30 37  6864 	.ascii "__1310720010"
             32 30 30 31 30
      00232C 00                    6865 	.db	0
      00232D 00 00 00 71           6866 	.dw	0,113
      002331 00                    6867 	.uleb128	0
      002332 00                    6868 	.uleb128	0
      002333 0A                    6869 	.uleb128	10
      002334 02                    6870 	.db	2
      002335 91                    6871 	.db	145
      002336 00                    6872 	.sleb128	0
      002337 5F 5F 75 73           6873 	.ascii "__us"
      00233B 00                    6874 	.db	0
      00233C 00 00 00 9D           6875 	.dw	0,157
      002340 00                    6876 	.uleb128	0
      002341 0A                    6877 	.uleb128	10
      002342 02                    6878 	.db	2
      002343 91                    6879 	.db	145
      002344 00                    6880 	.sleb128	0
      002345 5F 5F 31 33 31 30 37  6881 	.ascii "__1310720032"
             32 30 30 33 32
      002351 00                    6882 	.db	0
      002352 00 00 00 9D           6883 	.dw	0,157
      002356 00                    6884 	.uleb128	0
      002357 10                    6885 	.uleb128	16
      002358 0F                    6886 	.uleb128	15
      002359 00 00 0B 9F           6887 	.dw	0,2975
      00235D 0F                    6888 	.uleb128	15
      00235E 00 00 0B 91           6889 	.dw	0,2961
      002362 10                    6890 	.uleb128	16
      002363 08                    6891 	.uleb128	8
      002364 00 00 0B 7A           6892 	.dw	0,2938
      002368 00 00 93 B2           6893 	.dw	0,(Sswi2c$swi2c_START$579)
      00236C 09                    6894 	.uleb128	9
      00236D 00 00 0B 65           6895 	.dw	0,2917
      002371 00 00 93 B5           6896 	.dw	0,(Sswi2c$swi2c_START$580)
      002375 00 00 93 BF           6897 	.dw	0,(Sswi2c$swi2c_START$585)
      002379 04                    6898 	.uleb128	4
      00237A 00 00 93 B7           6899 	.dw	0,(Sswi2c$swi2c_START$583)
      00237E 00 00 93 B8           6900 	.dw	0,(Sswi2c$swi2c_START$584)
      002382 00                    6901 	.uleb128	0
      002383 0A                    6902 	.uleb128	10
      002384 06                    6903 	.db	6
      002385 52                    6904 	.db	82
      002386 93                    6905 	.db	147
      002387 01                    6906 	.uleb128	1
      002388 51                    6907 	.db	81
      002389 93                    6908 	.db	147
      00238A 01                    6909 	.uleb128	1
      00238B 5F 5F 74 69 63 6B 73  6910 	.ascii "__ticks"
      002392 00                    6911 	.db	0
      002393 00 00 00 71           6912 	.dw	0,113
      002397 00                    6913 	.uleb128	0
      002398 0A                    6914 	.uleb128	10
      002399 02                    6915 	.db	2
      00239A 91                    6916 	.db	145
      00239B 00                    6917 	.sleb128	0
      00239C 5F 5F 31 33 31 30 37  6918 	.ascii "__1310720010"
             32 30 30 31 30
      0023A8 00                    6919 	.db	0
      0023A9 00 00 00 71           6920 	.dw	0,113
      0023AD 00                    6921 	.uleb128	0
      0023AE 00                    6922 	.uleb128	0
      0023AF 0A                    6923 	.uleb128	10
      0023B0 02                    6924 	.db	2
      0023B1 91                    6925 	.db	145
      0023B2 00                    6926 	.sleb128	0
      0023B3 5F 5F 75 73           6927 	.ascii "__us"
      0023B7 00                    6928 	.db	0
      0023B8 00 00 00 9D           6929 	.dw	0,157
      0023BC 00                    6930 	.uleb128	0
      0023BD 0A                    6931 	.uleb128	10
      0023BE 02                    6932 	.db	2
      0023BF 91                    6933 	.db	145
      0023C0 00                    6934 	.sleb128	0
      0023C1 5F 5F 31 33 31 30 37  6935 	.ascii "__1310720034"
             32 30 30 33 34
      0023CD 00                    6936 	.db	0
      0023CE 00 00 00 9D           6937 	.dw	0,157
      0023D2 00                    6938 	.uleb128	0
      0023D3 00                    6939 	.uleb128	0
      0023D4 0B                    6940 	.uleb128	11
      0023D5 00 00 0D 0D           6941 	.dw	0,3341
      0023D9 73 77 69 32 63 5F 53  6942 	.ascii "swi2c_STOP"
             54 4F 50
      0023E3 00                    6943 	.db	0
      0023E4 00 00 93 C1           6944 	.dw	0,(_swi2c_STOP)
      0023E8 00 00 94 33           6945 	.dw	0,(XG$swi2c_STOP$0$0+1)
      0023EC 01                    6946 	.db	1
      0023ED 00 00 29 D4           6947 	.dw	0,(Ldebug_loc_start+512)
      0023F1 00 00 01 08           6948 	.dw	0,264
      0023F5 0F                    6949 	.uleb128	15
      0023F6 00 00 0C 57           6950 	.dw	0,3159
      0023FA 0F                    6951 	.uleb128	15
      0023FB 00 00 0C 41           6952 	.dw	0,3137
      0023FF 0F                    6953 	.uleb128	15
      002400 00 00 0C 33           6954 	.dw	0,3123
      002404 10                    6955 	.uleb128	16
      002405 08                    6956 	.uleb128	8
      002406 00 00 0C 1C           6957 	.dw	0,3100
      00240A 00 00 93 D5           6958 	.dw	0,(Sswi2c$swi2c_STOP$600)
      00240E 09                    6959 	.uleb128	9
      00240F 00 00 0C 07           6960 	.dw	0,3079
      002413 00 00 93 D8           6961 	.dw	0,(Sswi2c$swi2c_STOP$601)
      002417 00 00 93 E2           6962 	.dw	0,(Sswi2c$swi2c_STOP$606)
      00241B 04                    6963 	.uleb128	4
      00241C 00 00 93 DA           6964 	.dw	0,(Sswi2c$swi2c_STOP$604)
      002420 00 00 93 DB           6965 	.dw	0,(Sswi2c$swi2c_STOP$605)
      002424 00                    6966 	.uleb128	0
      002425 0A                    6967 	.uleb128	10
      002426 06                    6968 	.db	6
      002427 52                    6969 	.db	82
      002428 93                    6970 	.db	147
      002429 01                    6971 	.uleb128	1
      00242A 51                    6972 	.db	81
      00242B 93                    6973 	.db	147
      00242C 01                    6974 	.uleb128	1
      00242D 5F 5F 74 69 63 6B 73  6975 	.ascii "__ticks"
      002434 00                    6976 	.db	0
      002435 00 00 00 71           6977 	.dw	0,113
      002439 00                    6978 	.uleb128	0
      00243A 0A                    6979 	.uleb128	10
      00243B 02                    6980 	.db	2
      00243C 91                    6981 	.db	145
      00243D 00                    6982 	.sleb128	0
      00243E 5F 5F 31 33 31 30 37  6983 	.ascii "__1310720010"
             32 30 30 31 30
      00244A 00                    6984 	.db	0
      00244B 00 00 00 71           6985 	.dw	0,113
      00244F 00                    6986 	.uleb128	0
      002450 00                    6987 	.uleb128	0
      002451 0A                    6988 	.uleb128	10
      002452 02                    6989 	.db	2
      002453 91                    6990 	.db	145
      002454 00                    6991 	.sleb128	0
      002455 5F 5F 75 73           6992 	.ascii "__us"
      002459 00                    6993 	.db	0
      00245A 00 00 00 9D           6994 	.dw	0,157
      00245E 00                    6995 	.uleb128	0
      00245F 0A                    6996 	.uleb128	10
      002460 02                    6997 	.db	2
      002461 91                    6998 	.db	145
      002462 00                    6999 	.sleb128	0
      002463 5F 5F 31 33 31 30 37  7000 	.ascii "__1310720036"
             32 30 30 33 36
      00246F 00                    7001 	.db	0
      002470 00 00 00 9D           7002 	.dw	0,157
      002474 00                    7003 	.uleb128	0
      002475 04                    7004 	.uleb128	4
      002476 00 00 94 08           7005 	.dw	0,(Sswi2c$swi2c_STOP$619)
      00247A 00 00 94 09           7006 	.dw	0,(Sswi2c$swi2c_STOP$621)
      00247E 04                    7007 	.uleb128	4
      00247F 00 00 94 12           7008 	.dw	0,(Sswi2c$swi2c_STOP$623)
      002483 00 00 94 16           7009 	.dw	0,(Sswi2c$swi2c_STOP$625)
      002487 0F                    7010 	.uleb128	15
      002488 00 00 0C E9           7011 	.dw	0,3305
      00248C 0F                    7012 	.uleb128	15
      00248D 00 00 0C D3           7013 	.dw	0,3283
      002491 0F                    7014 	.uleb128	15
      002492 00 00 0C C5           7015 	.dw	0,3269
      002496 10                    7016 	.uleb128	16
      002497 08                    7017 	.uleb128	8
      002498 00 00 0C AE           7018 	.dw	0,3246
      00249C 00 00 94 16           7019 	.dw	0,(Sswi2c$swi2c_STOP$626)
      0024A0 09                    7020 	.uleb128	9
      0024A1 00 00 0C 99           7021 	.dw	0,3225
      0024A5 00 00 94 19           7022 	.dw	0,(Sswi2c$swi2c_STOP$627)
      0024A9 00 00 94 23           7023 	.dw	0,(Sswi2c$swi2c_STOP$632)
      0024AD 04                    7024 	.uleb128	4
      0024AE 00 00 94 1B           7025 	.dw	0,(Sswi2c$swi2c_STOP$630)
      0024B2 00 00 94 1C           7026 	.dw	0,(Sswi2c$swi2c_STOP$631)
      0024B6 00                    7027 	.uleb128	0
      0024B7 0A                    7028 	.uleb128	10
      0024B8 06                    7029 	.db	6
      0024B9 52                    7030 	.db	82
      0024BA 93                    7031 	.db	147
      0024BB 01                    7032 	.uleb128	1
      0024BC 51                    7033 	.db	81
      0024BD 93                    7034 	.db	147
      0024BE 01                    7035 	.uleb128	1
      0024BF 5F 5F 74 69 63 6B 73  7036 	.ascii "__ticks"
      0024C6 00                    7037 	.db	0
      0024C7 00 00 00 71           7038 	.dw	0,113
      0024CB 00                    7039 	.uleb128	0
      0024CC 0A                    7040 	.uleb128	10
      0024CD 02                    7041 	.db	2
      0024CE 91                    7042 	.db	145
      0024CF 00                    7043 	.sleb128	0
      0024D0 5F 5F 31 33 31 30 37  7044 	.ascii "__1310720010"
             32 30 30 31 30
      0024DC 00                    7045 	.db	0
      0024DD 00 00 00 71           7046 	.dw	0,113
      0024E1 00                    7047 	.uleb128	0
      0024E2 00                    7048 	.uleb128	0
      0024E3 0A                    7049 	.uleb128	10
      0024E4 02                    7050 	.db	2
      0024E5 91                    7051 	.db	145
      0024E6 00                    7052 	.sleb128	0
      0024E7 5F 5F 75 73           7053 	.ascii "__us"
      0024EB 00                    7054 	.db	0
      0024EC 00 00 00 9D           7055 	.dw	0,157
      0024F0 00                    7056 	.uleb128	0
      0024F1 0A                    7057 	.uleb128	10
      0024F2 02                    7058 	.db	2
      0024F3 91                    7059 	.db	145
      0024F4 00                    7060 	.sleb128	0
      0024F5 5F 5F 31 33 31 30 37  7061 	.ascii "__1310720038"
             32 30 30 33 38
      002501 00                    7062 	.db	0
      002502 00 00 00 9D           7063 	.dw	0,157
      002506 00                    7064 	.uleb128	0
      002507 0A                    7065 	.uleb128	10
      002508 06                    7066 	.db	6
      002509 52                    7067 	.db	82
      00250A 93                    7068 	.db	147
      00250B 01                    7069 	.uleb128	1
      00250C 51                    7070 	.db	81
      00250D 93                    7071 	.db	147
      00250E 01                    7072 	.uleb128	1
      00250F 74 69 6D 65 6F 75 74  7073 	.ascii "timeout"
      002516 00                    7074 	.db	0
      002517 00 00 00 71           7075 	.dw	0,113
      00251B 0A                    7076 	.uleb128	10
      00251C 02                    7077 	.db	2
      00251D 91                    7078 	.db	145
      00251E 7F                    7079 	.sleb128	-1
      00251F 72 65 74 76 61 6C     7080 	.ascii "retval"
      002525 00                    7081 	.db	0
      002526 00 00 01 08           7082 	.dw	0,264
      00252A 00                    7083 	.uleb128	0
      00252B 11                    7084 	.uleb128	17
      00252C 73 77 69 32 63 5F 72  7085 	.ascii "swi2c_recover"
             65 63 6F 76 65 72
      002539 00                    7086 	.db	0
      00253A 00 00 94 33           7087 	.dw	0,(_swi2c_recover)
      00253E 00 00 95 1C           7088 	.dw	0,(XG$swi2c_recover$0$0+1)
      002542 01                    7089 	.db	1
      002543 00 00 27 D4           7090 	.dw	0,(Ldebug_loc_start)
      002547 00 00 01 08           7091 	.dw	0,264
      00254B 0F                    7092 	.uleb128	15
      00254C 00 00 0D AD           7093 	.dw	0,3501
      002550 0F                    7094 	.uleb128	15
      002551 00 00 0D 97           7095 	.dw	0,3479
      002555 0F                    7096 	.uleb128	15
      002556 00 00 0D 89           7097 	.dw	0,3465
      00255A 10                    7098 	.uleb128	16
      00255B 08                    7099 	.uleb128	8
      00255C 00 00 0D 72           7100 	.dw	0,3442
      002560 00 00 94 50           7101 	.dw	0,(Sswi2c$swi2c_recover$657)
      002564 09                    7102 	.uleb128	9
      002565 00 00 0D 5D           7103 	.dw	0,3421
      002569 00 00 94 53           7104 	.dw	0,(Sswi2c$swi2c_recover$658)
      00256D 00 00 94 5D           7105 	.dw	0,(Sswi2c$swi2c_recover$663)
      002571 04                    7106 	.uleb128	4
      002572 00 00 94 55           7107 	.dw	0,(Sswi2c$swi2c_recover$661)
      002576 00 00 94 56           7108 	.dw	0,(Sswi2c$swi2c_recover$662)
      00257A 00                    7109 	.uleb128	0
      00257B 0A                    7110 	.uleb128	10
      00257C 06                    7111 	.db	6
      00257D 52                    7112 	.db	82
      00257E 93                    7113 	.db	147
      00257F 01                    7114 	.uleb128	1
      002580 51                    7115 	.db	81
      002581 93                    7116 	.db	147
      002582 01                    7117 	.uleb128	1
      002583 5F 5F 74 69 63 6B 73  7118 	.ascii "__ticks"
      00258A 00                    7119 	.db	0
      00258B 00 00 00 71           7120 	.dw	0,113
      00258F 00                    7121 	.uleb128	0
      002590 0A                    7122 	.uleb128	10
      002591 02                    7123 	.db	2
      002592 91                    7124 	.db	145
      002593 00                    7125 	.sleb128	0
      002594 5F 5F 31 33 31 30 37  7126 	.ascii "__1310720010"
             32 30 30 31 30
      0025A0 00                    7127 	.db	0
      0025A1 00 00 00 71           7128 	.dw	0,113
      0025A5 00                    7129 	.uleb128	0
      0025A6 00                    7130 	.uleb128	0
      0025A7 0A                    7131 	.uleb128	10
      0025A8 02                    7132 	.db	2
      0025A9 91                    7133 	.db	145
      0025AA 00                    7134 	.sleb128	0
      0025AB 5F 5F 75 73           7135 	.ascii "__us"
      0025AF 00                    7136 	.db	0
      0025B0 00 00 00 9D           7137 	.dw	0,157
      0025B4 00                    7138 	.uleb128	0
      0025B5 0A                    7139 	.uleb128	10
      0025B6 02                    7140 	.db	2
      0025B7 91                    7141 	.db	145
      0025B8 00                    7142 	.sleb128	0
      0025B9 5F 5F 31 33 31 30 37  7143 	.ascii "__1310720040"
             32 30 30 34 30
      0025C5 00                    7144 	.db	0
      0025C6 00 00 00 9D           7145 	.dw	0,157
      0025CA 00                    7146 	.uleb128	0
      0025CB 04                    7147 	.uleb128	4
      0025CC 00 00 94 7F           7148 	.dw	0,(Sswi2c$swi2c_recover$673)
      0025D0 00 00 94 83           7149 	.dw	0,(Sswi2c$swi2c_recover$675)
      0025D4 09                    7150 	.uleb128	9
      0025D5 00 00 0E E9           7151 	.dw	0,3817
      0025D9 00 00 95 17           7152 	.dw	0,(Sswi2c$swi2c_recover$734)
      0025DD 00 00 95 19           7153 	.dw	0,(Sswi2c$swi2c_recover$736)
      0025E1 07                    7154 	.uleb128	7
      0025E2 00 00 94 96           7155 	.dw	0,(Sswi2c$swi2c_recover$682)
      0025E6 00 00 95 0C           7156 	.dw	0,(Sswi2c$swi2c_recover$732)
      0025EA 0F                    7157 	.uleb128	15
      0025EB 00 00 0E 4C           7158 	.dw	0,3660
      0025EF 0F                    7159 	.uleb128	15
      0025F0 00 00 0E 36           7160 	.dw	0,3638
      0025F4 0F                    7161 	.uleb128	15
      0025F5 00 00 0E 28           7162 	.dw	0,3624
      0025F9 10                    7163 	.uleb128	16
      0025FA 08                    7164 	.uleb128	8
      0025FB 00 00 0E 11           7165 	.dw	0,3601
      0025FF 00 00 94 A1           7166 	.dw	0,(Sswi2c$swi2c_recover$688)
      002603 09                    7167 	.uleb128	9
      002604 00 00 0D FC           7168 	.dw	0,3580
      002608 00 00 94 A4           7169 	.dw	0,(Sswi2c$swi2c_recover$689)
      00260C 00 00 94 AE           7170 	.dw	0,(Sswi2c$swi2c_recover$694)
      002610 04                    7171 	.uleb128	4
      002611 00 00 94 A6           7172 	.dw	0,(Sswi2c$swi2c_recover$692)
      002615 00 00 94 A7           7173 	.dw	0,(Sswi2c$swi2c_recover$693)
      002619 00                    7174 	.uleb128	0
      00261A 0A                    7175 	.uleb128	10
      00261B 06                    7176 	.db	6
      00261C 52                    7177 	.db	82
      00261D 93                    7178 	.db	147
      00261E 01                    7179 	.uleb128	1
      00261F 51                    7180 	.db	81
      002620 93                    7181 	.db	147
      002621 01                    7182 	.uleb128	1
      002622 5F 5F 74 69 63 6B 73  7183 	.ascii "__ticks"
      002629 00                    7184 	.db	0
      00262A 00 00 00 71           7185 	.dw	0,113
      00262E 00                    7186 	.uleb128	0
      00262F 0A                    7187 	.uleb128	10
      002630 02                    7188 	.db	2
      002631 91                    7189 	.db	145
      002632 00                    7190 	.sleb128	0
      002633 5F 5F 31 33 31 30 37  7191 	.ascii "__1310720010"
             32 30 30 31 30
      00263F 00                    7192 	.db	0
      002640 00 00 00 71           7193 	.dw	0,113
      002644 00                    7194 	.uleb128	0
      002645 00                    7195 	.uleb128	0
      002646 0A                    7196 	.uleb128	10
      002647 02                    7197 	.db	2
      002648 91                    7198 	.db	145
      002649 00                    7199 	.sleb128	0
      00264A 5F 5F 75 73           7200 	.ascii "__us"
      00264E 00                    7201 	.db	0
      00264F 00 00 00 9D           7202 	.dw	0,157
      002653 00                    7203 	.uleb128	0
      002654 0A                    7204 	.uleb128	10
      002655 02                    7205 	.db	2
      002656 91                    7206 	.db	145
      002657 00                    7207 	.sleb128	0
      002658 5F 5F 33 32 37 36 38  7208 	.ascii "__3276800042"
             30 30 30 34 32
      002664 00                    7209 	.db	0
      002665 00 00 00 9D           7210 	.dw	0,157
      002669 00                    7211 	.uleb128	0
      00266A 04                    7212 	.uleb128	4
      00266B 00 00 94 D4           7213 	.dw	0,(Sswi2c$swi2c_recover$708)
      00266F 00 00 94 D5           7214 	.dw	0,(Sswi2c$swi2c_recover$710)
      002673 04                    7215 	.uleb128	4
      002674 00 00 94 E1           7216 	.dw	0,(Sswi2c$swi2c_recover$713)
      002678 00 00 94 E6           7217 	.dw	0,(Sswi2c$swi2c_recover$715)
      00267C 0F                    7218 	.uleb128	15
      00267D 00 00 0E DE           7219 	.dw	0,3806
      002681 0F                    7220 	.uleb128	15
      002682 00 00 0E C8           7221 	.dw	0,3784
      002686 0F                    7222 	.uleb128	15
      002687 00 00 0E BA           7223 	.dw	0,3770
      00268B 10                    7224 	.uleb128	16
      00268C 08                    7225 	.uleb128	8
      00268D 00 00 0E A3           7226 	.dw	0,3747
      002691 00 00 94 E6           7227 	.dw	0,(Sswi2c$swi2c_recover$716)
      002695 09                    7228 	.uleb128	9
      002696 00 00 0E 8E           7229 	.dw	0,3726
      00269A 00 00 94 E9           7230 	.dw	0,(Sswi2c$swi2c_recover$717)
      00269E 00 00 94 F3           7231 	.dw	0,(Sswi2c$swi2c_recover$722)
      0026A2 04                    7232 	.uleb128	4
      0026A3 00 00 94 EB           7233 	.dw	0,(Sswi2c$swi2c_recover$720)
      0026A7 00 00 94 EC           7234 	.dw	0,(Sswi2c$swi2c_recover$721)
      0026AB 00                    7235 	.uleb128	0
      0026AC 0A                    7236 	.uleb128	10
      0026AD 06                    7237 	.db	6
      0026AE 52                    7238 	.db	82
      0026AF 93                    7239 	.db	147
      0026B0 01                    7240 	.uleb128	1
      0026B1 51                    7241 	.db	81
      0026B2 93                    7242 	.db	147
      0026B3 01                    7243 	.uleb128	1
      0026B4 5F 5F 74 69 63 6B 73  7244 	.ascii "__ticks"
      0026BB 00                    7245 	.db	0
      0026BC 00 00 00 71           7246 	.dw	0,113
      0026C0 00                    7247 	.uleb128	0
      0026C1 0A                    7248 	.uleb128	10
      0026C2 02                    7249 	.db	2
      0026C3 91                    7250 	.db	145
      0026C4 00                    7251 	.sleb128	0
      0026C5 5F 5F 31 33 31 30 37  7252 	.ascii "__1310720010"
             32 30 30 31 30
      0026D1 00                    7253 	.db	0
      0026D2 00 00 00 71           7254 	.dw	0,113
      0026D6 00                    7255 	.uleb128	0
      0026D7 00                    7256 	.uleb128	0
      0026D8 0A                    7257 	.uleb128	10
      0026D9 02                    7258 	.db	2
      0026DA 91                    7259 	.db	145
      0026DB 00                    7260 	.sleb128	0
      0026DC 5F 5F 75 73           7261 	.ascii "__us"
      0026E0 00                    7262 	.db	0
      0026E1 00 00 00 9D           7263 	.dw	0,157
      0026E5 00                    7264 	.uleb128	0
      0026E6 0A                    7265 	.uleb128	10
      0026E7 02                    7266 	.db	2
      0026E8 91                    7267 	.db	145
      0026E9 00                    7268 	.sleb128	0
      0026EA 5F 5F 33 32 37 36 38  7269 	.ascii "__3276800044"
             30 30 30 34 34
      0026F6 00                    7270 	.db	0
      0026F7 00 00 00 9D           7271 	.dw	0,157
      0026FB 00                    7272 	.uleb128	0
      0026FC 04                    7273 	.uleb128	4
      0026FD 00 00 95 04           7274 	.dw	0,(Sswi2c$swi2c_recover$728)
      002701 00 00 95 0C           7275 	.dw	0,(Sswi2c$swi2c_recover$731)
      002705 00                    7276 	.uleb128	0
      002706 00                    7277 	.uleb128	0
      002707 0A                    7278 	.uleb128	10
      002708 02                    7279 	.db	2
      002709 91                    7280 	.db	145
      00270A 00                    7281 	.sleb128	0
      00270B 74 69 6D 65 6F 75 74  7282 	.ascii "timeout"
      002712 00                    7283 	.db	0
      002713 00 00 00 71           7284 	.dw	0,113
      002717 0A                    7285 	.uleb128	10
      002718 02                    7286 	.db	2
      002719 91                    7287 	.db	145
      00271A 00                    7288 	.sleb128	0
      00271B 69                    7289 	.ascii "i"
      00271C 00                    7290 	.db	0
      00271D 00 00 01 08           7291 	.dw	0,264
      002721 00                    7292 	.uleb128	0
      002722 00                    7293 	.uleb128	0
      002723 00                    7294 	.uleb128	0
      002724 00                    7295 	.uleb128	0
      002725                       7296 Ldebug_info_end:
                                   7297 
                                   7298 	.area .debug_pubnames (NOLOAD)
      00048D 00 00 00 C1           7299 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000491                       7300 Ldebug_pubnames_start:
      000491 00 02                 7301 	.dw	2
      000493 00 00 18 1E           7302 	.dw	0,(Ldebug_info_start-4)
      000497 00 00 0F 07           7303 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00049B 00 00 01 19           7304 	.dw	0,281
      00049F 73 77 69 32 63 5F 72  7305 	.ascii "swi2c_read_buf"
             65 61 64 5F 62 75 66
      0004AD 00                    7306 	.db	0
      0004AE 00 00 02 AB           7307 	.dw	0,683
      0004B2 73 77 69 32 63 5F 77  7308 	.ascii "swi2c_write_buf"
             72 69 74 65 5F 62 75
             66
      0004C1 00                    7309 	.db	0
      0004C2 00 00 03 D5           7310 	.dw	0,981
      0004C6 73 77 69 32 63 5F 74  7311 	.ascii "swi2c_test_slave"
             65 73 74 5F 73 6C 61
             76 65
      0004D6 00                    7312 	.db	0
      0004D7 00 00 04 4F           7313 	.dw	0,1103
      0004DB 73 77 69 32 63 5F 69  7314 	.ascii "swi2c_init"
             6E 69 74
      0004E5 00                    7315 	.db	0
      0004E6 00 00 04 68           7316 	.dw	0,1128
      0004EA 73 77 69 32 63 5F 72  7317 	.ascii "swi2c_readbit"
             65 61 64 62 69 74
      0004F7 00                    7318 	.db	0
      0004F8 00 00 06 4F           7319 	.dw	0,1615
      0004FC 73 77 69 32 63 5F 77  7320 	.ascii "swi2c_writebit"
             72 69 74 65 62 69 74
      00050A 00                    7321 	.db	0
      00050B 00 00 08 35           7322 	.dw	0,2101
      00050F 73 77 69 32 63 5F 52  7323 	.ascii "swi2c_RESTART"
             45 53 54 41 52 54
      00051C 00                    7324 	.db	0
      00051D 00 00 0A 8E           7325 	.dw	0,2702
      000521 73 77 69 32 63 5F 53  7326 	.ascii "swi2c_START"
             54 41 52 54
      00052C 00                    7327 	.db	0
      00052D 00 00 0B B6           7328 	.dw	0,2998
      000531 73 77 69 32 63 5F 53  7329 	.ascii "swi2c_STOP"
             54 4F 50
      00053B 00                    7330 	.db	0
      00053C 00 00 0D 0D           7331 	.dw	0,3341
      000540 73 77 69 32 63 5F 72  7332 	.ascii "swi2c_recover"
             65 63 6F 76 65 72
      00054D 00                    7333 	.db	0
      00054E 00 00 00 00           7334 	.dw	0,0
      000552                       7335 Ldebug_pubnames_end:
                                   7336 
                                   7337 	.area .debug_frame (NOLOAD)
      001DE1 00 00                 7338 	.dw	0
      001DE3 00 0E                 7339 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      001DE5                       7340 Ldebug_CIE0_start:
      001DE5 FF FF                 7341 	.dw	0xffff
      001DE7 FF FF                 7342 	.dw	0xffff
      001DE9 01                    7343 	.db	1
      001DEA 00                    7344 	.db	0
      001DEB 01                    7345 	.uleb128	1
      001DEC 7F                    7346 	.sleb128	-1
      001DED 09                    7347 	.db	9
      001DEE 0C                    7348 	.db	12
      001DEF 08                    7349 	.uleb128	8
      001DF0 02                    7350 	.uleb128	2
      001DF1 89                    7351 	.db	137
      001DF2 01                    7352 	.uleb128	1
      001DF3                       7353 Ldebug_CIE0_end:
      001DF3 00 00 01 32           7354 	.dw	0,306
      001DF7 00 00 1D E1           7355 	.dw	0,(Ldebug_CIE0_start-4)
      001DFB 00 00 94 33           7356 	.dw	0,(Sswi2c$swi2c_recover$644)	;initial loc
      001DFF 00 00 00 E9           7357 	.dw	0,Sswi2c$swi2c_recover$740-Sswi2c$swi2c_recover$644
      001E03 01                    7358 	.db	1
      001E04 00 00 94 33           7359 	.dw	0,(Sswi2c$swi2c_recover$644)
      001E08 0E                    7360 	.db	14
      001E09 02                    7361 	.uleb128	2
      001E0A 01                    7362 	.db	1
      001E0B 00 00 94 35           7363 	.dw	0,(Sswi2c$swi2c_recover$645)
      001E0F 0E                    7364 	.db	14
      001E10 05                    7365 	.uleb128	5
      001E11 01                    7366 	.db	1
      001E12 00 00 94 3C           7367 	.dw	0,(Sswi2c$swi2c_recover$648)
      001E16 0E                    7368 	.db	14
      001E17 06                    7369 	.uleb128	6
      001E18 01                    7370 	.db	1
      001E19 00 00 94 3E           7371 	.dw	0,(Sswi2c$swi2c_recover$649)
      001E1D 0E                    7372 	.db	14
      001E1E 07                    7373 	.uleb128	7
      001E1F 01                    7374 	.db	1
      001E20 00 00 94 40           7375 	.dw	0,(Sswi2c$swi2c_recover$650)
      001E24 0E                    7376 	.db	14
      001E25 08                    7377 	.uleb128	8
      001E26 01                    7378 	.db	1
      001E27 00 00 94 45           7379 	.dw	0,(Sswi2c$swi2c_recover$651)
      001E2B 0E                    7380 	.db	14
      001E2C 05                    7381 	.uleb128	5
      001E2D 01                    7382 	.db	1
      001E2E 00 00 94 47           7383 	.dw	0,(Sswi2c$swi2c_recover$653)
      001E32 0E                    7384 	.db	14
      001E33 06                    7385 	.uleb128	6
      001E34 01                    7386 	.db	1
      001E35 00 00 94 49           7387 	.dw	0,(Sswi2c$swi2c_recover$654)
      001E39 0E                    7388 	.db	14
      001E3A 07                    7389 	.uleb128	7
      001E3B 01                    7390 	.db	1
      001E3C 00 00 94 4B           7391 	.dw	0,(Sswi2c$swi2c_recover$655)
      001E40 0E                    7392 	.db	14
      001E41 08                    7393 	.uleb128	8
      001E42 01                    7394 	.db	1
      001E43 00 00 94 50           7395 	.dw	0,(Sswi2c$swi2c_recover$656)
      001E47 0E                    7396 	.db	14
      001E48 05                    7397 	.uleb128	5
      001E49 01                    7398 	.db	1
      001E4A 00 00 94 5F           7399 	.dw	0,(Sswi2c$swi2c_recover$665)
      001E4E 0E                    7400 	.db	14
      001E4F 06                    7401 	.uleb128	6
      001E50 01                    7402 	.db	1
      001E51 00 00 94 61           7403 	.dw	0,(Sswi2c$swi2c_recover$666)
      001E55 0E                    7404 	.db	14
      001E56 07                    7405 	.uleb128	7
      001E57 01                    7406 	.db	1
      001E58 00 00 94 63           7407 	.dw	0,(Sswi2c$swi2c_recover$667)
      001E5C 0E                    7408 	.db	14
      001E5D 08                    7409 	.uleb128	8
      001E5E 01                    7410 	.db	1
      001E5F 00 00 94 68           7411 	.dw	0,(Sswi2c$swi2c_recover$668)
      001E63 0E                    7412 	.db	14
      001E64 05                    7413 	.uleb128	5
      001E65 01                    7414 	.db	1
      001E66 00 00 94 70           7415 	.dw	0,(Sswi2c$swi2c_recover$669)
      001E6A 0E                    7416 	.db	14
      001E6B 06                    7417 	.uleb128	6
      001E6C 01                    7418 	.db	1
      001E6D 00 00 94 72           7419 	.dw	0,(Sswi2c$swi2c_recover$670)
      001E71 0E                    7420 	.db	14
      001E72 07                    7421 	.uleb128	7
      001E73 01                    7422 	.db	1
      001E74 00 00 94 74           7423 	.dw	0,(Sswi2c$swi2c_recover$671)
      001E78 0E                    7424 	.db	14
      001E79 08                    7425 	.uleb128	8
      001E7A 01                    7426 	.db	1
      001E7B 00 00 94 79           7427 	.dw	0,(Sswi2c$swi2c_recover$672)
      001E7F 0E                    7428 	.db	14
      001E80 05                    7429 	.uleb128	5
      001E81 01                    7430 	.db	1
      001E82 00 00 94 85           7431 	.dw	0,(Sswi2c$swi2c_recover$677)
      001E86 0E                    7432 	.db	14
      001E87 06                    7433 	.uleb128	6
      001E88 01                    7434 	.db	1
      001E89 00 00 94 87           7435 	.dw	0,(Sswi2c$swi2c_recover$678)
      001E8D 0E                    7436 	.db	14
      001E8E 07                    7437 	.uleb128	7
      001E8F 01                    7438 	.db	1
      001E90 00 00 94 89           7439 	.dw	0,(Sswi2c$swi2c_recover$679)
      001E94 0E                    7440 	.db	14
      001E95 08                    7441 	.uleb128	8
      001E96 01                    7442 	.db	1
      001E97 00 00 94 8E           7443 	.dw	0,(Sswi2c$swi2c_recover$680)
      001E9B 0E                    7444 	.db	14
      001E9C 05                    7445 	.uleb128	5
      001E9D 01                    7446 	.db	1
      001E9E 00 00 94 98           7447 	.dw	0,(Sswi2c$swi2c_recover$684)
      001EA2 0E                    7448 	.db	14
      001EA3 06                    7449 	.uleb128	6
      001EA4 01                    7450 	.db	1
      001EA5 00 00 94 9A           7451 	.dw	0,(Sswi2c$swi2c_recover$685)
      001EA9 0E                    7452 	.db	14
      001EAA 07                    7453 	.uleb128	7
      001EAB 01                    7454 	.db	1
      001EAC 00 00 94 9C           7455 	.dw	0,(Sswi2c$swi2c_recover$686)
      001EB0 0E                    7456 	.db	14
      001EB1 08                    7457 	.uleb128	8
      001EB2 01                    7458 	.db	1
      001EB3 00 00 94 A1           7459 	.dw	0,(Sswi2c$swi2c_recover$687)
      001EB7 0E                    7460 	.db	14
      001EB8 05                    7461 	.uleb128	5
      001EB9 01                    7462 	.db	1
      001EBA 00 00 94 B0           7463 	.dw	0,(Sswi2c$swi2c_recover$696)
      001EBE 0E                    7464 	.db	14
      001EBF 06                    7465 	.uleb128	6
      001EC0 01                    7466 	.db	1
      001EC1 00 00 94 B2           7467 	.dw	0,(Sswi2c$swi2c_recover$697)
      001EC5 0E                    7468 	.db	14
      001EC6 07                    7469 	.uleb128	7
      001EC7 01                    7470 	.db	1
      001EC8 00 00 94 B4           7471 	.dw	0,(Sswi2c$swi2c_recover$698)
      001ECC 0E                    7472 	.db	14
      001ECD 08                    7473 	.uleb128	8
      001ECE 01                    7474 	.db	1
      001ECF 00 00 94 B9           7475 	.dw	0,(Sswi2c$swi2c_recover$699)
      001ED3 0E                    7476 	.db	14
      001ED4 05                    7477 	.uleb128	5
      001ED5 01                    7478 	.db	1
      001ED6 00 00 94 BC           7479 	.dw	0,(Sswi2c$swi2c_recover$702)
      001EDA 0E                    7480 	.db	14
      001EDB 07                    7481 	.uleb128	7
      001EDC 01                    7482 	.db	1
      001EDD 00 00 94 BE           7483 	.dw	0,(Sswi2c$swi2c_recover$703)
      001EE1 0E                    7484 	.db	14
      001EE2 08                    7485 	.uleb128	8
      001EE3 01                    7486 	.db	1
      001EE4 00 00 94 C0           7487 	.dw	0,(Sswi2c$swi2c_recover$704)
      001EE8 0E                    7488 	.db	14
      001EE9 09                    7489 	.uleb128	9
      001EEA 01                    7490 	.db	1
      001EEB 00 00 94 C2           7491 	.dw	0,(Sswi2c$swi2c_recover$705)
      001EEF 0E                    7492 	.db	14
      001EF0 0A                    7493 	.uleb128	10
      001EF1 01                    7494 	.db	1
      001EF2 00 00 94 C7           7495 	.dw	0,(Sswi2c$swi2c_recover$706)
      001EF6 0E                    7496 	.db	14
      001EF7 07                    7497 	.uleb128	7
      001EF8 01                    7498 	.db	1
      001EF9 00 00 94 C8           7499 	.dw	0,(Sswi2c$swi2c_recover$707)
      001EFD 0E                    7500 	.db	14
      001EFE 05                    7501 	.uleb128	5
      001EFF 01                    7502 	.db	1
      001F00 00 00 94 F5           7503 	.dw	0,(Sswi2c$swi2c_recover$724)
      001F04 0E                    7504 	.db	14
      001F05 06                    7505 	.uleb128	6
      001F06 01                    7506 	.db	1
      001F07 00 00 94 F7           7507 	.dw	0,(Sswi2c$swi2c_recover$725)
      001F0B 0E                    7508 	.db	14
      001F0C 07                    7509 	.uleb128	7
      001F0D 01                    7510 	.db	1
      001F0E 00 00 94 F9           7511 	.dw	0,(Sswi2c$swi2c_recover$726)
      001F12 0E                    7512 	.db	14
      001F13 08                    7513 	.uleb128	8
      001F14 01                    7514 	.db	1
      001F15 00 00 94 FE           7515 	.dw	0,(Sswi2c$swi2c_recover$727)
      001F19 0E                    7516 	.db	14
      001F1A 05                    7517 	.uleb128	5
      001F1B 01                    7518 	.db	1
      001F1C 00 00 95 06           7519 	.dw	0,(Sswi2c$swi2c_recover$730)
      001F20 0E                    7520 	.db	14
      001F21 02                    7521 	.uleb128	2
      001F22 01                    7522 	.db	1
      001F23 00 00 95 1B           7523 	.dw	0,(Sswi2c$swi2c_recover$738)
      001F27 0E                    7524 	.db	14
      001F28 02                    7525 	.uleb128	2
                                   7526 
                                   7527 	.area .debug_frame (NOLOAD)
      001F29 00 00                 7528 	.dw	0
      001F2B 00 0E                 7529 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001F2D                       7530 Ldebug_CIE1_start:
      001F2D FF FF                 7531 	.dw	0xffff
      001F2F FF FF                 7532 	.dw	0xffff
      001F31 01                    7533 	.db	1
      001F32 00                    7534 	.db	0
      001F33 01                    7535 	.uleb128	1
      001F34 7F                    7536 	.sleb128	-1
      001F35 09                    7537 	.db	9
      001F36 0C                    7538 	.db	12
      001F37 08                    7539 	.uleb128	8
      001F38 02                    7540 	.uleb128	2
      001F39 89                    7541 	.db	137
      001F3A 01                    7542 	.uleb128	1
      001F3B                       7543 Ldebug_CIE1_end:
      001F3B 00 00 00 9F           7544 	.dw	0,159
      001F3F 00 00 1F 29           7545 	.dw	0,(Ldebug_CIE1_start-4)
      001F43 00 00 93 C1           7546 	.dw	0,(Sswi2c$swi2c_STOP$591)	;initial loc
      001F47 00 00 00 72           7547 	.dw	0,Sswi2c$swi2c_STOP$642-Sswi2c$swi2c_STOP$591
      001F4B 01                    7548 	.db	1
      001F4C 00 00 93 C1           7549 	.dw	0,(Sswi2c$swi2c_STOP$591)
      001F50 0E                    7550 	.db	14
      001F51 02                    7551 	.uleb128	2
      001F52 01                    7552 	.db	1
      001F53 00 00 93 C3           7553 	.dw	0,(Sswi2c$swi2c_STOP$592)
      001F57 0E                    7554 	.db	14
      001F58 05                    7555 	.uleb128	5
      001F59 01                    7556 	.db	1
      001F5A 00 00 93 CC           7557 	.dw	0,(Sswi2c$swi2c_STOP$596)
      001F5E 0E                    7558 	.db	14
      001F5F 06                    7559 	.uleb128	6
      001F60 01                    7560 	.db	1
      001F61 00 00 93 CE           7561 	.dw	0,(Sswi2c$swi2c_STOP$597)
      001F65 0E                    7562 	.db	14
      001F66 07                    7563 	.uleb128	7
      001F67 01                    7564 	.db	1
      001F68 00 00 93 D0           7565 	.dw	0,(Sswi2c$swi2c_STOP$598)
      001F6C 0E                    7566 	.db	14
      001F6D 08                    7567 	.uleb128	8
      001F6E 01                    7568 	.db	1
      001F6F 00 00 93 D5           7569 	.dw	0,(Sswi2c$swi2c_STOP$599)
      001F73 0E                    7570 	.db	14
      001F74 05                    7571 	.uleb128	5
      001F75 01                    7572 	.db	1
      001F76 00 00 93 E4           7573 	.dw	0,(Sswi2c$swi2c_STOP$608)
      001F7A 0E                    7574 	.db	14
      001F7B 06                    7575 	.uleb128	6
      001F7C 01                    7576 	.db	1
      001F7D 00 00 93 E6           7577 	.dw	0,(Sswi2c$swi2c_STOP$609)
      001F81 0E                    7578 	.db	14
      001F82 07                    7579 	.uleb128	7
      001F83 01                    7580 	.db	1
      001F84 00 00 93 E8           7581 	.dw	0,(Sswi2c$swi2c_STOP$610)
      001F88 0E                    7582 	.db	14
      001F89 08                    7583 	.uleb128	8
      001F8A 01                    7584 	.db	1
      001F8B 00 00 93 ED           7585 	.dw	0,(Sswi2c$swi2c_STOP$611)
      001F8F 0E                    7586 	.db	14
      001F90 05                    7587 	.uleb128	5
      001F91 01                    7588 	.db	1
      001F92 00 00 93 F0           7589 	.dw	0,(Sswi2c$swi2c_STOP$613)
      001F96 0E                    7590 	.db	14
      001F97 07                    7591 	.uleb128	7
      001F98 01                    7592 	.db	1
      001F99 00 00 93 F2           7593 	.dw	0,(Sswi2c$swi2c_STOP$614)
      001F9D 0E                    7594 	.db	14
      001F9E 08                    7595 	.uleb128	8
      001F9F 01                    7596 	.db	1
      001FA0 00 00 93 F4           7597 	.dw	0,(Sswi2c$swi2c_STOP$615)
      001FA4 0E                    7598 	.db	14
      001FA5 09                    7599 	.uleb128	9
      001FA6 01                    7600 	.db	1
      001FA7 00 00 93 F6           7601 	.dw	0,(Sswi2c$swi2c_STOP$616)
      001FAB 0E                    7602 	.db	14
      001FAC 0A                    7603 	.uleb128	10
      001FAD 01                    7604 	.db	1
      001FAE 00 00 93 FB           7605 	.dw	0,(Sswi2c$swi2c_STOP$617)
      001FB2 0E                    7606 	.db	14
      001FB3 07                    7607 	.uleb128	7
      001FB4 01                    7608 	.db	1
      001FB5 00 00 93 FC           7609 	.dw	0,(Sswi2c$swi2c_STOP$618)
      001FB9 0E                    7610 	.db	14
      001FBA 05                    7611 	.uleb128	5
      001FBB 01                    7612 	.db	1
      001FBC 00 00 94 25           7613 	.dw	0,(Sswi2c$swi2c_STOP$634)
      001FC0 0E                    7614 	.db	14
      001FC1 06                    7615 	.uleb128	6
      001FC2 01                    7616 	.db	1
      001FC3 00 00 94 27           7617 	.dw	0,(Sswi2c$swi2c_STOP$635)
      001FC7 0E                    7618 	.db	14
      001FC8 07                    7619 	.uleb128	7
      001FC9 01                    7620 	.db	1
      001FCA 00 00 94 29           7621 	.dw	0,(Sswi2c$swi2c_STOP$636)
      001FCE 0E                    7622 	.db	14
      001FCF 08                    7623 	.uleb128	8
      001FD0 01                    7624 	.db	1
      001FD1 00 00 94 2E           7625 	.dw	0,(Sswi2c$swi2c_STOP$637)
      001FD5 0E                    7626 	.db	14
      001FD6 05                    7627 	.uleb128	5
      001FD7 01                    7628 	.db	1
      001FD8 00 00 94 32           7629 	.dw	0,(Sswi2c$swi2c_STOP$640)
      001FDC 0E                    7630 	.db	14
      001FDD 02                    7631 	.uleb128	2
                                   7632 
                                   7633 	.area .debug_frame (NOLOAD)
      001FDE 00 00                 7634 	.dw	0
      001FE0 00 0E                 7635 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      001FE2                       7636 Ldebug_CIE2_start:
      001FE2 FF FF                 7637 	.dw	0xffff
      001FE4 FF FF                 7638 	.dw	0xffff
      001FE6 01                    7639 	.db	1
      001FE7 00                    7640 	.db	0
      001FE8 01                    7641 	.uleb128	1
      001FE9 7F                    7642 	.sleb128	-1
      001FEA 09                    7643 	.db	9
      001FEB 0C                    7644 	.db	12
      001FEC 08                    7645 	.uleb128	8
      001FED 02                    7646 	.uleb128	2
      001FEE 89                    7647 	.db	137
      001FEF 01                    7648 	.uleb128	1
      001FF0                       7649 Ldebug_CIE2_end:
      001FF0 00 00 00 BB           7650 	.dw	0,187
      001FF4 00 00 1F DE           7651 	.dw	0,(Ldebug_CIE2_start-4)
      001FF8 00 00 93 52           7652 	.dw	0,(Sswi2c$swi2c_START$539)	;initial loc
      001FFC 00 00 00 6F           7653 	.dw	0,Sswi2c$swi2c_START$589-Sswi2c$swi2c_START$539
      002000 01                    7654 	.db	1
      002001 00 00 93 52           7655 	.dw	0,(Sswi2c$swi2c_START$539)
      002005 0E                    7656 	.db	14
      002006 02                    7657 	.uleb128	2
      002007 01                    7658 	.db	1
      002008 00 00 93 54           7659 	.dw	0,(Sswi2c$swi2c_START$541)
      00200C 0E                    7660 	.db	14
      00200D 03                    7661 	.uleb128	3
      00200E 01                    7662 	.db	1
      00200F 00 00 93 56           7663 	.dw	0,(Sswi2c$swi2c_START$542)
      002013 0E                    7664 	.db	14
      002014 04                    7665 	.uleb128	4
      002015 01                    7666 	.db	1
      002016 00 00 93 58           7667 	.dw	0,(Sswi2c$swi2c_START$543)
      00201A 0E                    7668 	.db	14
      00201B 05                    7669 	.uleb128	5
      00201C 01                    7670 	.db	1
      00201D 00 00 93 5D           7671 	.dw	0,(Sswi2c$swi2c_START$544)
      002021 0E                    7672 	.db	14
      002022 02                    7673 	.uleb128	2
      002023 01                    7674 	.db	1
      002024 00 00 93 65           7675 	.dw	0,(Sswi2c$swi2c_START$545)
      002028 0E                    7676 	.db	14
      002029 03                    7677 	.uleb128	3
      00202A 01                    7678 	.db	1
      00202B 00 00 93 67           7679 	.dw	0,(Sswi2c$swi2c_START$546)
      00202F 0E                    7680 	.db	14
      002030 04                    7681 	.uleb128	4
      002031 01                    7682 	.db	1
      002032 00 00 93 69           7683 	.dw	0,(Sswi2c$swi2c_START$547)
      002036 0E                    7684 	.db	14
      002037 05                    7685 	.uleb128	5
      002038 01                    7686 	.db	1
      002039 00 00 93 6E           7687 	.dw	0,(Sswi2c$swi2c_START$548)
      00203D 0E                    7688 	.db	14
      00203E 02                    7689 	.uleb128	2
      00203F 01                    7690 	.db	1
      002040 00 00 93 76           7691 	.dw	0,(Sswi2c$swi2c_START$551)
      002044 0E                    7692 	.db	14
      002045 03                    7693 	.uleb128	3
      002046 01                    7694 	.db	1
      002047 00 00 93 78           7695 	.dw	0,(Sswi2c$swi2c_START$552)
      00204B 0E                    7696 	.db	14
      00204C 04                    7697 	.uleb128	4
      00204D 01                    7698 	.db	1
      00204E 00 00 93 7A           7699 	.dw	0,(Sswi2c$swi2c_START$553)
      002052 0E                    7700 	.db	14
      002053 05                    7701 	.uleb128	5
      002054 01                    7702 	.db	1
      002055 00 00 93 7F           7703 	.dw	0,(Sswi2c$swi2c_START$554)
      002059 0E                    7704 	.db	14
      00205A 02                    7705 	.uleb128	2
      00205B 01                    7706 	.db	1
      00205C 00 00 93 81           7707 	.dw	0,(Sswi2c$swi2c_START$556)
      002060 0E                    7708 	.db	14
      002061 03                    7709 	.uleb128	3
      002062 01                    7710 	.db	1
      002063 00 00 93 83           7711 	.dw	0,(Sswi2c$swi2c_START$557)
      002067 0E                    7712 	.db	14
      002068 04                    7713 	.uleb128	4
      002069 01                    7714 	.db	1
      00206A 00 00 93 85           7715 	.dw	0,(Sswi2c$swi2c_START$558)
      00206E 0E                    7716 	.db	14
      00206F 05                    7717 	.uleb128	5
      002070 01                    7718 	.db	1
      002071 00 00 93 8A           7719 	.dw	0,(Sswi2c$swi2c_START$559)
      002075 0E                    7720 	.db	14
      002076 02                    7721 	.uleb128	2
      002077 01                    7722 	.db	1
      002078 00 00 93 91           7723 	.dw	0,(Sswi2c$swi2c_START$563)
      00207C 0E                    7724 	.db	14
      00207D 03                    7725 	.uleb128	3
      00207E 01                    7726 	.db	1
      00207F 00 00 93 93           7727 	.dw	0,(Sswi2c$swi2c_START$564)
      002083 0E                    7728 	.db	14
      002084 04                    7729 	.uleb128	4
      002085 01                    7730 	.db	1
      002086 00 00 93 95           7731 	.dw	0,(Sswi2c$swi2c_START$565)
      00208A 0E                    7732 	.db	14
      00208B 05                    7733 	.uleb128	5
      00208C 01                    7734 	.db	1
      00208D 00 00 93 9A           7735 	.dw	0,(Sswi2c$swi2c_START$566)
      002091 0E                    7736 	.db	14
      002092 02                    7737 	.uleb128	2
      002093 01                    7738 	.db	1
      002094 00 00 93 A9           7739 	.dw	0,(Sswi2c$swi2c_START$575)
      002098 0E                    7740 	.db	14
      002099 03                    7741 	.uleb128	3
      00209A 01                    7742 	.db	1
      00209B 00 00 93 AB           7743 	.dw	0,(Sswi2c$swi2c_START$576)
      00209F 0E                    7744 	.db	14
      0020A0 04                    7745 	.uleb128	4
      0020A1 01                    7746 	.db	1
      0020A2 00 00 93 AD           7747 	.dw	0,(Sswi2c$swi2c_START$577)
      0020A6 0E                    7748 	.db	14
      0020A7 05                    7749 	.uleb128	5
      0020A8 01                    7750 	.db	1
      0020A9 00 00 93 B2           7751 	.dw	0,(Sswi2c$swi2c_START$578)
      0020AD 0E                    7752 	.db	14
      0020AE 02                    7753 	.uleb128	2
                                   7754 
                                   7755 	.area .debug_frame (NOLOAD)
      0020AF 00 00                 7756 	.dw	0
      0020B1 00 0E                 7757 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0020B3                       7758 Ldebug_CIE3_start:
      0020B3 FF FF                 7759 	.dw	0xffff
      0020B5 FF FF                 7760 	.dw	0xffff
      0020B7 01                    7761 	.db	1
      0020B8 00                    7762 	.db	0
      0020B9 01                    7763 	.uleb128	1
      0020BA 7F                    7764 	.sleb128	-1
      0020BB 09                    7765 	.db	9
      0020BC 0C                    7766 	.db	12
      0020BD 08                    7767 	.uleb128	8
      0020BE 02                    7768 	.uleb128	2
      0020BF 89                    7769 	.db	137
      0020C0 01                    7770 	.uleb128	1
      0020C1                       7771 Ldebug_CIE3_end:
      0020C1 00 00 01 39           7772 	.dw	0,313
      0020C5 00 00 20 AF           7773 	.dw	0,(Ldebug_CIE3_start-4)
      0020C9 00 00 92 7D           7774 	.dw	0,(Sswi2c$swi2c_RESTART$440)	;initial loc
      0020CD 00 00 00 D5           7775 	.dw	0,Sswi2c$swi2c_RESTART$537-Sswi2c$swi2c_RESTART$440
      0020D1 01                    7776 	.db	1
      0020D2 00 00 92 7D           7777 	.dw	0,(Sswi2c$swi2c_RESTART$440)
      0020D6 0E                    7778 	.db	14
      0020D7 02                    7779 	.uleb128	2
      0020D8 01                    7780 	.db	1
      0020D9 00 00 92 7E           7781 	.dw	0,(Sswi2c$swi2c_RESTART$441)
      0020DD 0E                    7782 	.db	14
      0020DE 04                    7783 	.uleb128	4
      0020DF 01                    7784 	.db	1
      0020E0 00 00 92 81           7785 	.dw	0,(Sswi2c$swi2c_RESTART$444)
      0020E4 0E                    7786 	.db	14
      0020E5 06                    7787 	.uleb128	6
      0020E6 01                    7788 	.db	1
      0020E7 00 00 92 83           7789 	.dw	0,(Sswi2c$swi2c_RESTART$445)
      0020EB 0E                    7790 	.db	14
      0020EC 07                    7791 	.uleb128	7
      0020ED 01                    7792 	.db	1
      0020EE 00 00 92 85           7793 	.dw	0,(Sswi2c$swi2c_RESTART$446)
      0020F2 0E                    7794 	.db	14
      0020F3 08                    7795 	.uleb128	8
      0020F4 01                    7796 	.db	1
      0020F5 00 00 92 87           7797 	.dw	0,(Sswi2c$swi2c_RESTART$447)
      0020F9 0E                    7798 	.db	14
      0020FA 09                    7799 	.uleb128	9
      0020FB 01                    7800 	.db	1
      0020FC 00 00 92 8C           7801 	.dw	0,(Sswi2c$swi2c_RESTART$448)
      002100 0E                    7802 	.db	14
      002101 06                    7803 	.uleb128	6
      002102 01                    7804 	.db	1
      002103 00 00 92 8D           7805 	.dw	0,(Sswi2c$swi2c_RESTART$449)
      002107 0E                    7806 	.db	14
      002108 04                    7807 	.uleb128	4
      002109 01                    7808 	.db	1
      00210A 00 00 92 8E           7809 	.dw	0,(Sswi2c$swi2c_RESTART$451)
      00210E 0E                    7810 	.db	14
      00210F 06                    7811 	.uleb128	6
      002110 01                    7812 	.db	1
      002111 00 00 92 90           7813 	.dw	0,(Sswi2c$swi2c_RESTART$452)
      002115 0E                    7814 	.db	14
      002116 07                    7815 	.uleb128	7
      002117 01                    7816 	.db	1
      002118 00 00 92 92           7817 	.dw	0,(Sswi2c$swi2c_RESTART$453)
      00211C 0E                    7818 	.db	14
      00211D 08                    7819 	.uleb128	8
      00211E 01                    7820 	.db	1
      00211F 00 00 92 94           7821 	.dw	0,(Sswi2c$swi2c_RESTART$454)
      002123 0E                    7822 	.db	14
      002124 09                    7823 	.uleb128	9
      002125 01                    7824 	.db	1
      002126 00 00 92 99           7825 	.dw	0,(Sswi2c$swi2c_RESTART$455)
      00212A 0E                    7826 	.db	14
      00212B 06                    7827 	.uleb128	6
      00212C 01                    7828 	.db	1
      00212D 00 00 92 9A           7829 	.dw	0,(Sswi2c$swi2c_RESTART$456)
      002131 0E                    7830 	.db	14
      002132 04                    7831 	.uleb128	4
      002133 01                    7832 	.db	1
      002134 00 00 92 9B           7833 	.dw	0,(Sswi2c$swi2c_RESTART$458)
      002138 0E                    7834 	.db	14
      002139 06                    7835 	.uleb128	6
      00213A 01                    7836 	.db	1
      00213B 00 00 92 9D           7837 	.dw	0,(Sswi2c$swi2c_RESTART$459)
      00213F 0E                    7838 	.db	14
      002140 07                    7839 	.uleb128	7
      002141 01                    7840 	.db	1
      002142 00 00 92 9F           7841 	.dw	0,(Sswi2c$swi2c_RESTART$460)
      002146 0E                    7842 	.db	14
      002147 08                    7843 	.uleb128	8
      002148 01                    7844 	.db	1
      002149 00 00 92 A1           7845 	.dw	0,(Sswi2c$swi2c_RESTART$461)
      00214D 0E                    7846 	.db	14
      00214E 09                    7847 	.uleb128	9
      00214F 01                    7848 	.db	1
      002150 00 00 92 A6           7849 	.dw	0,(Sswi2c$swi2c_RESTART$462)
      002154 0E                    7850 	.db	14
      002155 06                    7851 	.uleb128	6
      002156 01                    7852 	.db	1
      002157 00 00 92 A7           7853 	.dw	0,(Sswi2c$swi2c_RESTART$463)
      00215B 0E                    7854 	.db	14
      00215C 04                    7855 	.uleb128	4
      00215D 01                    7856 	.db	1
      00215E 00 00 92 C2           7857 	.dw	0,(Sswi2c$swi2c_RESTART$470)
      002162 0E                    7858 	.db	14
      002163 05                    7859 	.uleb128	5
      002164 01                    7860 	.db	1
      002165 00 00 92 C4           7861 	.dw	0,(Sswi2c$swi2c_RESTART$471)
      002169 0E                    7862 	.db	14
      00216A 06                    7863 	.uleb128	6
      00216B 01                    7864 	.db	1
      00216C 00 00 92 C6           7865 	.dw	0,(Sswi2c$swi2c_RESTART$472)
      002170 0E                    7866 	.db	14
      002171 07                    7867 	.uleb128	7
      002172 01                    7868 	.db	1
      002173 00 00 92 CB           7869 	.dw	0,(Sswi2c$swi2c_RESTART$473)
      002177 0E                    7870 	.db	14
      002178 04                    7871 	.uleb128	4
      002179 01                    7872 	.db	1
      00217A 00 00 92 DF           7873 	.dw	0,(Sswi2c$swi2c_RESTART$484)
      00217E 0E                    7874 	.db	14
      00217F 05                    7875 	.uleb128	5
      002180 01                    7876 	.db	1
      002181 00 00 92 E1           7877 	.dw	0,(Sswi2c$swi2c_RESTART$485)
      002185 0E                    7878 	.db	14
      002186 06                    7879 	.uleb128	6
      002187 01                    7880 	.db	1
      002188 00 00 92 E3           7881 	.dw	0,(Sswi2c$swi2c_RESTART$486)
      00218C 0E                    7882 	.db	14
      00218D 07                    7883 	.uleb128	7
      00218E 01                    7884 	.db	1
      00218F 00 00 92 E8           7885 	.dw	0,(Sswi2c$swi2c_RESTART$487)
      002193 0E                    7886 	.db	14
      002194 04                    7887 	.uleb128	4
      002195 01                    7888 	.db	1
      002196 00 00 92 EB           7889 	.dw	0,(Sswi2c$swi2c_RESTART$489)
      00219A 0E                    7890 	.db	14
      00219B 06                    7891 	.uleb128	6
      00219C 01                    7892 	.db	1
      00219D 00 00 92 ED           7893 	.dw	0,(Sswi2c$swi2c_RESTART$490)
      0021A1 0E                    7894 	.db	14
      0021A2 07                    7895 	.uleb128	7
      0021A3 01                    7896 	.db	1
      0021A4 00 00 92 EF           7897 	.dw	0,(Sswi2c$swi2c_RESTART$491)
      0021A8 0E                    7898 	.db	14
      0021A9 08                    7899 	.uleb128	8
      0021AA 01                    7900 	.db	1
      0021AB 00 00 92 F1           7901 	.dw	0,(Sswi2c$swi2c_RESTART$492)
      0021AF 0E                    7902 	.db	14
      0021B0 09                    7903 	.uleb128	9
      0021B1 01                    7904 	.db	1
      0021B2 00 00 92 F6           7905 	.dw	0,(Sswi2c$swi2c_RESTART$493)
      0021B6 0E                    7906 	.db	14
      0021B7 06                    7907 	.uleb128	6
      0021B8 01                    7908 	.db	1
      0021B9 00 00 92 F7           7909 	.dw	0,(Sswi2c$swi2c_RESTART$494)
      0021BD 0E                    7910 	.db	14
      0021BE 04                    7911 	.uleb128	4
      0021BF 01                    7912 	.db	1
      0021C0 00 00 93 21           7913 	.dw	0,(Sswi2c$swi2c_RESTART$510)
      0021C4 0E                    7914 	.db	14
      0021C5 05                    7915 	.uleb128	5
      0021C6 01                    7916 	.db	1
      0021C7 00 00 93 23           7917 	.dw	0,(Sswi2c$swi2c_RESTART$511)
      0021CB 0E                    7918 	.db	14
      0021CC 06                    7919 	.uleb128	6
      0021CD 01                    7920 	.db	1
      0021CE 00 00 93 25           7921 	.dw	0,(Sswi2c$swi2c_RESTART$512)
      0021D2 0E                    7922 	.db	14
      0021D3 07                    7923 	.uleb128	7
      0021D4 01                    7924 	.db	1
      0021D5 00 00 93 2A           7925 	.dw	0,(Sswi2c$swi2c_RESTART$513)
      0021D9 0E                    7926 	.db	14
      0021DA 04                    7927 	.uleb128	4
      0021DB 01                    7928 	.db	1
      0021DC 00 00 93 39           7929 	.dw	0,(Sswi2c$swi2c_RESTART$522)
      0021E0 0E                    7930 	.db	14
      0021E1 05                    7931 	.uleb128	5
      0021E2 01                    7932 	.db	1
      0021E3 00 00 93 3B           7933 	.dw	0,(Sswi2c$swi2c_RESTART$523)
      0021E7 0E                    7934 	.db	14
      0021E8 06                    7935 	.uleb128	6
      0021E9 01                    7936 	.db	1
      0021EA 00 00 93 3D           7937 	.dw	0,(Sswi2c$swi2c_RESTART$524)
      0021EE 0E                    7938 	.db	14
      0021EF 07                    7939 	.uleb128	7
      0021F0 01                    7940 	.db	1
      0021F1 00 00 93 42           7941 	.dw	0,(Sswi2c$swi2c_RESTART$525)
      0021F5 0E                    7942 	.db	14
      0021F6 04                    7943 	.uleb128	4
      0021F7 01                    7944 	.db	1
      0021F8 00 00 93 51           7945 	.dw	0,(Sswi2c$swi2c_RESTART$535)
      0021FC 0E                    7946 	.db	14
      0021FD 02                    7947 	.uleb128	2
                                   7948 
                                   7949 	.area .debug_frame (NOLOAD)
      0021FE 00 00                 7950 	.dw	0
      002200 00 0E                 7951 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002202                       7952 Ldebug_CIE4_start:
      002202 FF FF                 7953 	.dw	0xffff
      002204 FF FF                 7954 	.dw	0xffff
      002206 01                    7955 	.db	1
      002207 00                    7956 	.db	0
      002208 01                    7957 	.uleb128	1
      002209 7F                    7958 	.sleb128	-1
      00220A 09                    7959 	.db	9
      00220B 0C                    7960 	.db	12
      00220C 08                    7961 	.uleb128	8
      00220D 02                    7962 	.uleb128	2
      00220E 89                    7963 	.db	137
      00220F 01                    7964 	.uleb128	1
      002210                       7965 Ldebug_CIE4_end:
      002210 00 00 00 D7           7966 	.dw	0,215
      002214 00 00 21 FE           7967 	.dw	0,(Ldebug_CIE4_start-4)
      002218 00 00 91 DF           7968 	.dw	0,(Sswi2c$swi2c_writebit$366)	;initial loc
      00221C 00 00 00 9E           7969 	.dw	0,Sswi2c$swi2c_writebit$438-Sswi2c$swi2c_writebit$366
      002220 01                    7970 	.db	1
      002221 00 00 91 DF           7971 	.dw	0,(Sswi2c$swi2c_writebit$366)
      002225 0E                    7972 	.db	14
      002226 02                    7973 	.uleb128	2
      002227 01                    7974 	.db	1
      002228 00 00 91 E0           7975 	.dw	0,(Sswi2c$swi2c_writebit$367)
      00222C 0E                    7976 	.db	14
      00222D 04                    7977 	.uleb128	4
      00222E 01                    7978 	.db	1
      00222F 00 00 91 EE           7979 	.dw	0,(Sswi2c$swi2c_writebit$372)
      002233 0E                    7980 	.db	14
      002234 05                    7981 	.uleb128	5
      002235 01                    7982 	.db	1
      002236 00 00 91 F0           7983 	.dw	0,(Sswi2c$swi2c_writebit$373)
      00223A 0E                    7984 	.db	14
      00223B 06                    7985 	.uleb128	6
      00223C 01                    7986 	.db	1
      00223D 00 00 91 F2           7987 	.dw	0,(Sswi2c$swi2c_writebit$374)
      002241 0E                    7988 	.db	14
      002242 07                    7989 	.uleb128	7
      002243 01                    7990 	.db	1
      002244 00 00 91 F7           7991 	.dw	0,(Sswi2c$swi2c_writebit$375)
      002248 0E                    7992 	.db	14
      002249 04                    7993 	.uleb128	4
      00224A 01                    7994 	.db	1
      00224B 00 00 91 FC           7995 	.dw	0,(Sswi2c$swi2c_writebit$379)
      00224F 0E                    7996 	.db	14
      002250 05                    7997 	.uleb128	5
      002251 01                    7998 	.db	1
      002252 00 00 91 FE           7999 	.dw	0,(Sswi2c$swi2c_writebit$380)
      002256 0E                    8000 	.db	14
      002257 06                    8001 	.uleb128	6
      002258 01                    8002 	.db	1
      002259 00 00 92 00           8003 	.dw	0,(Sswi2c$swi2c_writebit$381)
      00225D 0E                    8004 	.db	14
      00225E 07                    8005 	.uleb128	7
      00225F 01                    8006 	.db	1
      002260 00 00 92 05           8007 	.dw	0,(Sswi2c$swi2c_writebit$382)
      002264 0E                    8008 	.db	14
      002265 04                    8009 	.uleb128	4
      002266 01                    8010 	.db	1
      002267 00 00 92 14           8011 	.dw	0,(Sswi2c$swi2c_writebit$392)
      00226B 0E                    8012 	.db	14
      00226C 05                    8013 	.uleb128	5
      00226D 01                    8014 	.db	1
      00226E 00 00 92 16           8015 	.dw	0,(Sswi2c$swi2c_writebit$393)
      002272 0E                    8016 	.db	14
      002273 06                    8017 	.uleb128	6
      002274 01                    8018 	.db	1
      002275 00 00 92 18           8019 	.dw	0,(Sswi2c$swi2c_writebit$394)
      002279 0E                    8020 	.db	14
      00227A 07                    8021 	.uleb128	7
      00227B 01                    8022 	.db	1
      00227C 00 00 92 1D           8023 	.dw	0,(Sswi2c$swi2c_writebit$395)
      002280 0E                    8024 	.db	14
      002281 04                    8025 	.uleb128	4
      002282 01                    8026 	.db	1
      002283 00 00 92 20           8027 	.dw	0,(Sswi2c$swi2c_writebit$397)
      002287 0E                    8028 	.db	14
      002288 06                    8029 	.uleb128	6
      002289 01                    8030 	.db	1
      00228A 00 00 92 22           8031 	.dw	0,(Sswi2c$swi2c_writebit$398)
      00228E 0E                    8032 	.db	14
      00228F 07                    8033 	.uleb128	7
      002290 01                    8034 	.db	1
      002291 00 00 92 24           8035 	.dw	0,(Sswi2c$swi2c_writebit$399)
      002295 0E                    8036 	.db	14
      002296 08                    8037 	.uleb128	8
      002297 01                    8038 	.db	1
      002298 00 00 92 26           8039 	.dw	0,(Sswi2c$swi2c_writebit$400)
      00229C 0E                    8040 	.db	14
      00229D 09                    8041 	.uleb128	9
      00229E 01                    8042 	.db	1
      00229F 00 00 92 2B           8043 	.dw	0,(Sswi2c$swi2c_writebit$401)
      0022A3 0E                    8044 	.db	14
      0022A4 06                    8045 	.uleb128	6
      0022A5 01                    8046 	.db	1
      0022A6 00 00 92 2C           8047 	.dw	0,(Sswi2c$swi2c_writebit$402)
      0022AA 0E                    8048 	.db	14
      0022AB 04                    8049 	.uleb128	4
      0022AC 01                    8050 	.db	1
      0022AD 00 00 92 47           8051 	.dw	0,(Sswi2c$swi2c_writebit$409)
      0022B1 0E                    8052 	.db	14
      0022B2 05                    8053 	.uleb128	5
      0022B3 01                    8054 	.db	1
      0022B4 00 00 92 49           8055 	.dw	0,(Sswi2c$swi2c_writebit$410)
      0022B8 0E                    8056 	.db	14
      0022B9 06                    8057 	.uleb128	6
      0022BA 01                    8058 	.db	1
      0022BB 00 00 92 4B           8059 	.dw	0,(Sswi2c$swi2c_writebit$411)
      0022BF 0E                    8060 	.db	14
      0022C0 07                    8061 	.uleb128	7
      0022C1 01                    8062 	.db	1
      0022C2 00 00 92 50           8063 	.dw	0,(Sswi2c$swi2c_writebit$412)
      0022C6 0E                    8064 	.db	14
      0022C7 04                    8065 	.uleb128	4
      0022C8 01                    8066 	.db	1
      0022C9 00 00 92 64           8067 	.dw	0,(Sswi2c$swi2c_writebit$423)
      0022CD 0E                    8068 	.db	14
      0022CE 05                    8069 	.uleb128	5
      0022CF 01                    8070 	.db	1
      0022D0 00 00 92 66           8071 	.dw	0,(Sswi2c$swi2c_writebit$424)
      0022D4 0E                    8072 	.db	14
      0022D5 06                    8073 	.uleb128	6
      0022D6 01                    8074 	.db	1
      0022D7 00 00 92 68           8075 	.dw	0,(Sswi2c$swi2c_writebit$425)
      0022DB 0E                    8076 	.db	14
      0022DC 07                    8077 	.uleb128	7
      0022DD 01                    8078 	.db	1
      0022DE 00 00 92 6D           8079 	.dw	0,(Sswi2c$swi2c_writebit$426)
      0022E2 0E                    8080 	.db	14
      0022E3 04                    8081 	.uleb128	4
      0022E4 01                    8082 	.db	1
      0022E5 00 00 92 7C           8083 	.dw	0,(Sswi2c$swi2c_writebit$436)
      0022E9 0E                    8084 	.db	14
      0022EA 02                    8085 	.uleb128	2
                                   8086 
                                   8087 	.area .debug_frame (NOLOAD)
      0022EB 00 00                 8088 	.dw	0
      0022ED 00 0E                 8089 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0022EF                       8090 Ldebug_CIE5_start:
      0022EF FF FF                 8091 	.dw	0xffff
      0022F1 FF FF                 8092 	.dw	0xffff
      0022F3 01                    8093 	.db	1
      0022F4 00                    8094 	.db	0
      0022F5 01                    8095 	.uleb128	1
      0022F6 7F                    8096 	.sleb128	-1
      0022F7 09                    8097 	.db	9
      0022F8 0C                    8098 	.db	12
      0022F9 08                    8099 	.uleb128	8
      0022FA 02                    8100 	.uleb128	2
      0022FB 89                    8101 	.db	137
      0022FC 01                    8102 	.uleb128	1
      0022FD                       8103 Ldebug_CIE5_end:
      0022FD 00 00 00 C9           8104 	.dw	0,201
      002301 00 00 22 EB           8105 	.dw	0,(Ldebug_CIE5_start-4)
      002305 00 00 91 49           8106 	.dw	0,(Sswi2c$swi2c_readbit$294)	;initial loc
      002309 00 00 00 96           8107 	.dw	0,Sswi2c$swi2c_readbit$364-Sswi2c$swi2c_readbit$294
      00230D 01                    8108 	.db	1
      00230E 00 00 91 49           8109 	.dw	0,(Sswi2c$swi2c_readbit$294)
      002312 0E                    8110 	.db	14
      002313 02                    8111 	.uleb128	2
      002314 01                    8112 	.db	1
      002315 00 00 91 4A           8113 	.dw	0,(Sswi2c$swi2c_readbit$295)
      002319 0E                    8114 	.db	14
      00231A 04                    8115 	.uleb128	4
      00231B 01                    8116 	.db	1
      00231C 00 00 91 51           8117 	.dw	0,(Sswi2c$swi2c_readbit$298)
      002320 0E                    8118 	.db	14
      002321 05                    8119 	.uleb128	5
      002322 01                    8120 	.db	1
      002323 00 00 91 53           8121 	.dw	0,(Sswi2c$swi2c_readbit$299)
      002327 0E                    8122 	.db	14
      002328 06                    8123 	.uleb128	6
      002329 01                    8124 	.db	1
      00232A 00 00 91 55           8125 	.dw	0,(Sswi2c$swi2c_readbit$300)
      00232E 0E                    8126 	.db	14
      00232F 07                    8127 	.uleb128	7
      002330 01                    8128 	.db	1
      002331 00 00 91 5A           8129 	.dw	0,(Sswi2c$swi2c_readbit$301)
      002335 0E                    8130 	.db	14
      002336 04                    8131 	.uleb128	4
      002337 01                    8132 	.db	1
      002338 00 00 91 69           8133 	.dw	0,(Sswi2c$swi2c_readbit$310)
      00233C 0E                    8134 	.db	14
      00233D 05                    8135 	.uleb128	5
      00233E 01                    8136 	.db	1
      00233F 00 00 91 6B           8137 	.dw	0,(Sswi2c$swi2c_readbit$311)
      002343 0E                    8138 	.db	14
      002344 06                    8139 	.uleb128	6
      002345 01                    8140 	.db	1
      002346 00 00 91 6D           8141 	.dw	0,(Sswi2c$swi2c_readbit$312)
      00234A 0E                    8142 	.db	14
      00234B 07                    8143 	.uleb128	7
      00234C 01                    8144 	.db	1
      00234D 00 00 91 72           8145 	.dw	0,(Sswi2c$swi2c_readbit$313)
      002351 0E                    8146 	.db	14
      002352 04                    8147 	.uleb128	4
      002353 01                    8148 	.db	1
      002354 00 00 91 75           8149 	.dw	0,(Sswi2c$swi2c_readbit$315)
      002358 0E                    8150 	.db	14
      002359 06                    8151 	.uleb128	6
      00235A 01                    8152 	.db	1
      00235B 00 00 91 77           8153 	.dw	0,(Sswi2c$swi2c_readbit$316)
      00235F 0E                    8154 	.db	14
      002360 07                    8155 	.uleb128	7
      002361 01                    8156 	.db	1
      002362 00 00 91 79           8157 	.dw	0,(Sswi2c$swi2c_readbit$317)
      002366 0E                    8158 	.db	14
      002367 08                    8159 	.uleb128	8
      002368 01                    8160 	.db	1
      002369 00 00 91 7B           8161 	.dw	0,(Sswi2c$swi2c_readbit$318)
      00236D 0E                    8162 	.db	14
      00236E 09                    8163 	.uleb128	9
      00236F 01                    8164 	.db	1
      002370 00 00 91 80           8165 	.dw	0,(Sswi2c$swi2c_readbit$319)
      002374 0E                    8166 	.db	14
      002375 06                    8167 	.uleb128	6
      002376 01                    8168 	.db	1
      002377 00 00 91 81           8169 	.dw	0,(Sswi2c$swi2c_readbit$320)
      00237B 0E                    8170 	.db	14
      00237C 04                    8171 	.uleb128	4
      00237D 01                    8172 	.db	1
      00237E 00 00 91 AE           8173 	.dw	0,(Sswi2c$swi2c_readbit$336)
      002382 0E                    8174 	.db	14
      002383 05                    8175 	.uleb128	5
      002384 01                    8176 	.db	1
      002385 00 00 91 B0           8177 	.dw	0,(Sswi2c$swi2c_readbit$337)
      002389 0E                    8178 	.db	14
      00238A 06                    8179 	.uleb128	6
      00238B 01                    8180 	.db	1
      00238C 00 00 91 B2           8181 	.dw	0,(Sswi2c$swi2c_readbit$338)
      002390 0E                    8182 	.db	14
      002391 07                    8183 	.uleb128	7
      002392 01                    8184 	.db	1
      002393 00 00 91 B7           8185 	.dw	0,(Sswi2c$swi2c_readbit$339)
      002397 0E                    8186 	.db	14
      002398 04                    8187 	.uleb128	4
      002399 01                    8188 	.db	1
      00239A 00 00 91 C4           8189 	.dw	0,(Sswi2c$swi2c_readbit$347)
      00239E 0E                    8190 	.db	14
      00239F 05                    8191 	.uleb128	5
      0023A0 01                    8192 	.db	1
      0023A1 00 00 91 C6           8193 	.dw	0,(Sswi2c$swi2c_readbit$348)
      0023A5 0E                    8194 	.db	14
      0023A6 06                    8195 	.uleb128	6
      0023A7 01                    8196 	.db	1
      0023A8 00 00 91 C8           8197 	.dw	0,(Sswi2c$swi2c_readbit$349)
      0023AC 0E                    8198 	.db	14
      0023AD 07                    8199 	.uleb128	7
      0023AE 01                    8200 	.db	1
      0023AF 00 00 91 CA           8201 	.dw	0,(Sswi2c$swi2c_readbit$350)
      0023B3 0E                    8202 	.db	14
      0023B4 08                    8203 	.uleb128	8
      0023B5 01                    8204 	.db	1
      0023B6 00 00 91 CF           8205 	.dw	0,(Sswi2c$swi2c_readbit$351)
      0023BA 0E                    8206 	.db	14
      0023BB 05                    8207 	.uleb128	5
      0023BC 01                    8208 	.db	1
      0023BD 00 00 91 D0           8209 	.dw	0,(Sswi2c$swi2c_readbit$352)
      0023C1 0E                    8210 	.db	14
      0023C2 04                    8211 	.uleb128	4
      0023C3 01                    8212 	.db	1
      0023C4 00 00 91 DE           8213 	.dw	0,(Sswi2c$swi2c_readbit$362)
      0023C8 0E                    8214 	.db	14
      0023C9 02                    8215 	.uleb128	2
                                   8216 
                                   8217 	.area .debug_frame (NOLOAD)
      0023CA 00 00                 8218 	.dw	0
      0023CC 00 0E                 8219 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      0023CE                       8220 Ldebug_CIE6_start:
      0023CE FF FF                 8221 	.dw	0xffff
      0023D0 FF FF                 8222 	.dw	0xffff
      0023D2 01                    8223 	.db	1
      0023D3 00                    8224 	.db	0
      0023D4 01                    8225 	.uleb128	1
      0023D5 7F                    8226 	.sleb128	-1
      0023D6 09                    8227 	.db	9
      0023D7 0C                    8228 	.db	12
      0023D8 08                    8229 	.uleb128	8
      0023D9 02                    8230 	.uleb128	2
      0023DA 89                    8231 	.db	137
      0023DB 01                    8232 	.uleb128	1
      0023DC                       8233 Ldebug_CIE6_end:
      0023DC 00 00 00 59           8234 	.dw	0,89
      0023E0 00 00 23 CA           8235 	.dw	0,(Ldebug_CIE6_start-4)
      0023E4 00 00 91 2E           8236 	.dw	0,(Sswi2c$swi2c_init$277)	;initial loc
      0023E8 00 00 00 1B           8237 	.dw	0,Sswi2c$swi2c_init$292-Sswi2c$swi2c_init$277
      0023EC 01                    8238 	.db	1
      0023ED 00 00 91 2E           8239 	.dw	0,(Sswi2c$swi2c_init$277)
      0023F1 0E                    8240 	.db	14
      0023F2 02                    8241 	.uleb128	2
      0023F3 01                    8242 	.db	1
      0023F4 00 00 91 30           8243 	.dw	0,(Sswi2c$swi2c_init$279)
      0023F8 0E                    8244 	.db	14
      0023F9 03                    8245 	.uleb128	3
      0023FA 01                    8246 	.db	1
      0023FB 00 00 91 32           8247 	.dw	0,(Sswi2c$swi2c_init$280)
      0023FF 0E                    8248 	.db	14
      002400 04                    8249 	.uleb128	4
      002401 01                    8250 	.db	1
      002402 00 00 91 34           8251 	.dw	0,(Sswi2c$swi2c_init$281)
      002406 0E                    8252 	.db	14
      002407 05                    8253 	.uleb128	5
      002408 01                    8254 	.db	1
      002409 00 00 91 36           8255 	.dw	0,(Sswi2c$swi2c_init$282)
      00240D 0E                    8256 	.db	14
      00240E 06                    8257 	.uleb128	6
      00240F 01                    8258 	.db	1
      002410 00 00 91 3B           8259 	.dw	0,(Sswi2c$swi2c_init$283)
      002414 0E                    8260 	.db	14
      002415 02                    8261 	.uleb128	2
      002416 01                    8262 	.db	1
      002417 00 00 91 3D           8263 	.dw	0,(Sswi2c$swi2c_init$285)
      00241B 0E                    8264 	.db	14
      00241C 03                    8265 	.uleb128	3
      00241D 01                    8266 	.db	1
      00241E 00 00 91 3F           8267 	.dw	0,(Sswi2c$swi2c_init$286)
      002422 0E                    8268 	.db	14
      002423 04                    8269 	.uleb128	4
      002424 01                    8270 	.db	1
      002425 00 00 91 41           8271 	.dw	0,(Sswi2c$swi2c_init$287)
      002429 0E                    8272 	.db	14
      00242A 05                    8273 	.uleb128	5
      00242B 01                    8274 	.db	1
      00242C 00 00 91 43           8275 	.dw	0,(Sswi2c$swi2c_init$288)
      002430 0E                    8276 	.db	14
      002431 06                    8277 	.uleb128	6
      002432 01                    8278 	.db	1
      002433 00 00 91 48           8279 	.dw	0,(Sswi2c$swi2c_init$289)
      002437 0E                    8280 	.db	14
      002438 02                    8281 	.uleb128	2
                                   8282 
                                   8283 	.area .debug_frame (NOLOAD)
      002439 00 00                 8284 	.dw	0
      00243B 00 0E                 8285 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      00243D                       8286 Ldebug_CIE7_start:
      00243D FF FF                 8287 	.dw	0xffff
      00243F FF FF                 8288 	.dw	0xffff
      002441 01                    8289 	.db	1
      002442 00                    8290 	.db	0
      002443 01                    8291 	.uleb128	1
      002444 7F                    8292 	.sleb128	-1
      002445 09                    8293 	.db	9
      002446 0C                    8294 	.db	12
      002447 08                    8295 	.uleb128	8
      002448 02                    8296 	.uleb128	2
      002449 89                    8297 	.db	137
      00244A 01                    8298 	.uleb128	1
      00244B                       8299 Ldebug_CIE7_end:
      00244B 00 00 00 2F           8300 	.dw	0,47
      00244F 00 00 24 39           8301 	.dw	0,(Ldebug_CIE7_start-4)
      002453 00 00 90 E2           8302 	.dw	0,(Sswi2c$swi2c_test_slave$249)	;initial loc
      002457 00 00 00 4C           8303 	.dw	0,Sswi2c$swi2c_test_slave$275-Sswi2c$swi2c_test_slave$249
      00245B 01                    8304 	.db	1
      00245C 00 00 90 E2           8305 	.dw	0,(Sswi2c$swi2c_test_slave$249)
      002460 0E                    8306 	.db	14
      002461 02                    8307 	.uleb128	2
      002462 01                    8308 	.db	1
      002463 00 00 90 E3           8309 	.dw	0,(Sswi2c$swi2c_test_slave$250)
      002467 0E                    8310 	.db	14
      002468 03                    8311 	.uleb128	3
      002469 01                    8312 	.db	1
      00246A 00 00 91 01           8313 	.dw	0,(Sswi2c$swi2c_test_slave$259)
      00246E 0E                    8314 	.db	14
      00246F 04                    8315 	.uleb128	4
      002470 01                    8316 	.db	1
      002471 00 00 91 06           8317 	.dw	0,(Sswi2c$swi2c_test_slave$260)
      002475 0E                    8318 	.db	14
      002476 03                    8319 	.uleb128	3
      002477 01                    8320 	.db	1
      002478 00 00 91 2D           8321 	.dw	0,(Sswi2c$swi2c_test_slave$273)
      00247C 0E                    8322 	.db	14
      00247D 02                    8323 	.uleb128	2
                                   8324 
                                   8325 	.area .debug_frame (NOLOAD)
      00247E 00 00                 8326 	.dw	0
      002480 00 0E                 8327 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      002482                       8328 Ldebug_CIE8_start:
      002482 FF FF                 8329 	.dw	0xffff
      002484 FF FF                 8330 	.dw	0xffff
      002486 01                    8331 	.db	1
      002487 00                    8332 	.db	0
      002488 01                    8333 	.uleb128	1
      002489 7F                    8334 	.sleb128	-1
      00248A 09                    8335 	.db	9
      00248B 0C                    8336 	.db	12
      00248C 08                    8337 	.uleb128	8
      00248D 02                    8338 	.uleb128	2
      00248E 89                    8339 	.db	137
      00248F 01                    8340 	.uleb128	1
      002490                       8341 Ldebug_CIE8_end:
      002490 00 00 00 59           8342 	.dw	0,89
      002494 00 00 24 7E           8343 	.dw	0,(Ldebug_CIE8_start-4)
      002498 00 00 8F DC           8344 	.dw	0,(Sswi2c$swi2c_write_buf$166)	;initial loc
      00249C 00 00 01 06           8345 	.dw	0,Sswi2c$swi2c_write_buf$247-Sswi2c$swi2c_write_buf$166
      0024A0 01                    8346 	.db	1
      0024A1 00 00 8F DC           8347 	.dw	0,(Sswi2c$swi2c_write_buf$166)
      0024A5 0E                    8348 	.db	14
      0024A6 02                    8349 	.uleb128	2
      0024A7 01                    8350 	.db	1
      0024A8 00 00 8F DD           8351 	.dw	0,(Sswi2c$swi2c_write_buf$167)
      0024AC 0E                    8352 	.db	14
      0024AD 04                    8353 	.uleb128	4
      0024AE 01                    8354 	.db	1
      0024AF 00 00 8F FB           8355 	.dw	0,(Sswi2c$swi2c_write_buf$176)
      0024B3 0E                    8356 	.db	14
      0024B4 05                    8357 	.uleb128	5
      0024B5 01                    8358 	.db	1
      0024B6 00 00 90 00           8359 	.dw	0,(Sswi2c$swi2c_write_buf$177)
      0024BA 0E                    8360 	.db	14
      0024BB 04                    8361 	.uleb128	4
      0024BC 01                    8362 	.db	1
      0024BD 00 00 90 3F           8363 	.dw	0,(Sswi2c$swi2c_write_buf$196)
      0024C1 0E                    8364 	.db	14
      0024C2 05                    8365 	.uleb128	5
      0024C3 01                    8366 	.db	1
      0024C4 00 00 90 44           8367 	.dw	0,(Sswi2c$swi2c_write_buf$197)
      0024C8 0E                    8368 	.db	14
      0024C9 04                    8369 	.uleb128	4
      0024CA 01                    8370 	.db	1
      0024CB 00 00 90 96           8371 	.dw	0,(Sswi2c$swi2c_write_buf$219)
      0024CF 0E                    8372 	.db	14
      0024D0 06                    8373 	.uleb128	6
      0024D1 01                    8374 	.db	1
      0024D2 00 00 90 97           8375 	.dw	0,(Sswi2c$swi2c_write_buf$220)
      0024D6 0E                    8376 	.db	14
      0024D7 07                    8377 	.uleb128	7
      0024D8 01                    8378 	.db	1
      0024D9 00 00 90 9C           8379 	.dw	0,(Sswi2c$swi2c_write_buf$221)
      0024DD 0E                    8380 	.db	14
      0024DE 06                    8381 	.uleb128	6
      0024DF 01                    8382 	.db	1
      0024E0 00 00 90 9D           8383 	.dw	0,(Sswi2c$swi2c_write_buf$222)
      0024E4 0E                    8384 	.db	14
      0024E5 04                    8385 	.uleb128	4
      0024E6 01                    8386 	.db	1
      0024E7 00 00 90 E1           8387 	.dw	0,(Sswi2c$swi2c_write_buf$245)
      0024EB 0E                    8388 	.db	14
      0024EC 02                    8389 	.uleb128	2
                                   8390 
                                   8391 	.area .debug_frame (NOLOAD)
      0024ED 00 00                 8392 	.dw	0
      0024EF 00 0E                 8393 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      0024F1                       8394 Ldebug_CIE9_start:
      0024F1 FF FF                 8395 	.dw	0xffff
      0024F3 FF FF                 8396 	.dw	0xffff
      0024F5 01                    8397 	.db	1
      0024F6 00                    8398 	.db	0
      0024F7 01                    8399 	.uleb128	1
      0024F8 7F                    8400 	.sleb128	-1
      0024F9 09                    8401 	.db	9
      0024FA 0C                    8402 	.db	12
      0024FB 08                    8403 	.uleb128	8
      0024FC 02                    8404 	.uleb128	2
      0024FD 89                    8405 	.db	137
      0024FE 01                    8406 	.uleb128	1
      0024FF                       8407 Ldebug_CIE9_end:
      0024FF 00 00 00 75           8408 	.dw	0,117
      002503 00 00 24 ED           8409 	.dw	0,(Ldebug_CIE9_start-4)
      002507 00 00 8E 4C           8410 	.dw	0,(Sswi2c$swi2c_read_buf$44)	;initial loc
      00250B 00 00 01 90           8411 	.dw	0,Sswi2c$swi2c_read_buf$164-Sswi2c$swi2c_read_buf$44
      00250F 01                    8412 	.db	1
      002510 00 00 8E 4C           8413 	.dw	0,(Sswi2c$swi2c_read_buf$44)
      002514 0E                    8414 	.db	14
      002515 02                    8415 	.uleb128	2
      002516 01                    8416 	.db	1
      002517 00 00 8E 4E           8417 	.dw	0,(Sswi2c$swi2c_read_buf$45)
      00251B 0E                    8418 	.db	14
      00251C 05                    8419 	.uleb128	5
      00251D 01                    8420 	.db	1
      00251E 00 00 8E 6C           8421 	.dw	0,(Sswi2c$swi2c_read_buf$54)
      002522 0E                    8422 	.db	14
      002523 06                    8423 	.uleb128	6
      002524 01                    8424 	.db	1
      002525 00 00 8E 71           8425 	.dw	0,(Sswi2c$swi2c_read_buf$55)
      002529 0E                    8426 	.db	14
      00252A 05                    8427 	.uleb128	5
      00252B 01                    8428 	.db	1
      00252C 00 00 8E B0           8429 	.dw	0,(Sswi2c$swi2c_read_buf$74)
      002530 0E                    8430 	.db	14
      002531 06                    8431 	.uleb128	6
      002532 01                    8432 	.db	1
      002533 00 00 8E B5           8433 	.dw	0,(Sswi2c$swi2c_read_buf$75)
      002537 0E                    8434 	.db	14
      002538 05                    8435 	.uleb128	5
      002539 01                    8436 	.db	1
      00253A 00 00 8F 08           8437 	.dw	0,(Sswi2c$swi2c_read_buf$99)
      00253E 0E                    8438 	.db	14
      00253F 06                    8439 	.uleb128	6
      002540 01                    8440 	.db	1
      002541 00 00 8F 0D           8441 	.dw	0,(Sswi2c$swi2c_read_buf$100)
      002545 0E                    8442 	.db	14
      002546 05                    8443 	.uleb128	5
      002547 01                    8444 	.db	1
      002548 00 00 8F 7E           8445 	.dw	0,(Sswi2c$swi2c_read_buf$128)
      00254C 0E                    8446 	.db	14
      00254D 05                    8447 	.uleb128	5
      00254E 01                    8448 	.db	1
      00254F 00 00 8F A1           8449 	.dw	0,(Sswi2c$swi2c_read_buf$139)
      002553 0E                    8450 	.db	14
      002554 05                    8451 	.uleb128	5
      002555 01                    8452 	.db	1
      002556 00 00 8F A3           8453 	.dw	0,(Sswi2c$swi2c_read_buf$142)
      00255A 0E                    8454 	.db	14
      00255B 06                    8455 	.uleb128	6
      00255C 01                    8456 	.db	1
      00255D 00 00 8F A8           8457 	.dw	0,(Sswi2c$swi2c_read_buf$143)
      002561 0E                    8458 	.db	14
      002562 05                    8459 	.uleb128	5
      002563 01                    8460 	.db	1
      002564 00 00 8F B5           8461 	.dw	0,(Sswi2c$swi2c_read_buf$149)
      002568 0E                    8462 	.db	14
      002569 06                    8463 	.uleb128	6
      00256A 01                    8464 	.db	1
      00256B 00 00 8F BA           8465 	.dw	0,(Sswi2c$swi2c_read_buf$150)
      00256F 0E                    8466 	.db	14
      002570 05                    8467 	.uleb128	5
      002571 01                    8468 	.db	1
      002572 00 00 8F DB           8469 	.dw	0,(Sswi2c$swi2c_read_buf$162)
      002576 0E                    8470 	.db	14
      002577 02                    8471 	.uleb128	2
                                   8472 
                                   8473 	.area .debug_frame (NOLOAD)
      002578 00 00                 8474 	.dw	0
      00257A 00 0E                 8475 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      00257C                       8476 Ldebug_CIE10_start:
      00257C FF FF                 8477 	.dw	0xffff
      00257E FF FF                 8478 	.dw	0xffff
      002580 01                    8479 	.db	1
      002581 00                    8480 	.db	0
      002582 01                    8481 	.uleb128	1
      002583 7F                    8482 	.sleb128	-1
      002584 09                    8483 	.db	9
      002585 0C                    8484 	.db	12
      002586 08                    8485 	.uleb128	8
      002587 02                    8486 	.uleb128	2
      002588 89                    8487 	.db	137
      002589 01                    8488 	.uleb128	1
      00258A                       8489 Ldebug_CIE10_end:
      00258A 00 00 00 75           8490 	.dw	0,117
      00258E 00 00 25 78           8491 	.dw	0,(Ldebug_CIE10_start-4)
      002592 00 00 8E 14           8492 	.dw	0,(Sswi2c$_delay_us$13)	;initial loc
      002596 00 00 00 38           8493 	.dw	0,Sswi2c$_delay_us$42-Sswi2c$_delay_us$13
      00259A 01                    8494 	.db	1
      00259B 00 00 8E 14           8495 	.dw	0,(Sswi2c$_delay_us$13)
      00259F 0E                    8496 	.db	14
      0025A0 02                    8497 	.uleb128	2
      0025A1 01                    8498 	.db	1
      0025A2 00 00 8E 19           8499 	.dw	0,(Sswi2c$_delay_us$15)
      0025A6 0E                    8500 	.db	14
      0025A7 04                    8501 	.uleb128	4
      0025A8 01                    8502 	.db	1
      0025A9 00 00 8E 1A           8503 	.dw	0,(Sswi2c$_delay_us$16)
      0025AD 0E                    8504 	.db	14
      0025AE 06                    8505 	.uleb128	6
      0025AF 01                    8506 	.db	1
      0025B0 00 00 8E 1C           8507 	.dw	0,(Sswi2c$_delay_us$17)
      0025B4 0E                    8508 	.db	14
      0025B5 07                    8509 	.uleb128	7
      0025B6 01                    8510 	.db	1
      0025B7 00 00 8E 1E           8511 	.dw	0,(Sswi2c$_delay_us$18)
      0025BB 0E                    8512 	.db	14
      0025BC 08                    8513 	.uleb128	8
      0025BD 01                    8514 	.db	1
      0025BE 00 00 8E 20           8515 	.dw	0,(Sswi2c$_delay_us$19)
      0025C2 0E                    8516 	.db	14
      0025C3 09                    8517 	.uleb128	9
      0025C4 01                    8518 	.db	1
      0025C5 00 00 8E 22           8519 	.dw	0,(Sswi2c$_delay_us$20)
      0025C9 0E                    8520 	.db	14
      0025CA 0A                    8521 	.uleb128	10
      0025CB 01                    8522 	.db	1
      0025CC 00 00 8E 27           8523 	.dw	0,(Sswi2c$_delay_us$21)
      0025D0 0E                    8524 	.db	14
      0025D1 02                    8525 	.uleb128	2
      0025D2 01                    8526 	.db	1
      0025D3 00 00 8E 29           8527 	.dw	0,(Sswi2c$_delay_us$23)
      0025D7 0E                    8528 	.db	14
      0025D8 03                    8529 	.uleb128	3
      0025D9 01                    8530 	.db	1
      0025DA 00 00 8E 2B           8531 	.dw	0,(Sswi2c$_delay_us$24)
      0025DE 0E                    8532 	.db	14
      0025DF 04                    8533 	.uleb128	4
      0025E0 01                    8534 	.db	1
      0025E1 00 00 8E 2D           8535 	.dw	0,(Sswi2c$_delay_us$25)
      0025E5 0E                    8536 	.db	14
      0025E6 05                    8537 	.uleb128	5
      0025E7 01                    8538 	.db	1
      0025E8 00 00 8E 2F           8539 	.dw	0,(Sswi2c$_delay_us$26)
      0025EC 0E                    8540 	.db	14
      0025ED 06                    8541 	.uleb128	6
      0025EE 01                    8542 	.db	1
      0025EF 00 00 8E 30           8543 	.dw	0,(Sswi2c$_delay_us$27)
      0025F3 0E                    8544 	.db	14
      0025F4 08                    8545 	.uleb128	8
      0025F5 01                    8546 	.db	1
      0025F6 00 00 8E 32           8547 	.dw	0,(Sswi2c$_delay_us$28)
      0025FA 0E                    8548 	.db	14
      0025FB 0A                    8549 	.uleb128	10
      0025FC 01                    8550 	.db	1
      0025FD 00 00 8E 37           8551 	.dw	0,(Sswi2c$_delay_us$29)
      002601 0E                    8552 	.db	14
      002602 02                    8553 	.uleb128	2
                                   8554 
                                   8555 	.area .debug_frame (NOLOAD)
      002603 00 00                 8556 	.dw	0
      002605 00 0E                 8557 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      002607                       8558 Ldebug_CIE11_start:
      002607 FF FF                 8559 	.dw	0xffff
      002609 FF FF                 8560 	.dw	0xffff
      00260B 01                    8561 	.db	1
      00260C 00                    8562 	.db	0
      00260D 01                    8563 	.uleb128	1
      00260E 7F                    8564 	.sleb128	-1
      00260F 09                    8565 	.db	9
      002610 0C                    8566 	.db	12
      002611 08                    8567 	.uleb128	8
      002612 02                    8568 	.uleb128	2
      002613 89                    8569 	.db	137
      002614 01                    8570 	.uleb128	1
      002615                       8571 Ldebug_CIE11_end:
      002615 00 00 00 13           8572 	.dw	0,19
      002619 00 00 26 03           8573 	.dw	0,(Ldebug_CIE11_start-4)
      00261D 00 00 8E 07           8574 	.dw	0,(Sswi2c$_delay_cycl$1)	;initial loc
      002621 00 00 00 0D           8575 	.dw	0,Sswi2c$_delay_cycl$11-Sswi2c$_delay_cycl$1
      002625 01                    8576 	.db	1
      002626 00 00 8E 07           8577 	.dw	0,(Sswi2c$_delay_cycl$1)
      00262A 0E                    8578 	.db	14
      00262B 02                    8579 	.uleb128	2
