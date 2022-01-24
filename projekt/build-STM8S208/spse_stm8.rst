                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module spse_stm8
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC2_GetConversionValue
                                     12 	.globl _ADC_get
                                     13 	.globl _ADC2_Select_Channel
                                     14 	.globl _ADC2_AlignConfig
                                     15 	.globl _ADC2_Startup_Wait
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                           000000    53 	Sspse_stm8$_delay_cycl$0 ==.
                                     54 ;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function _delay_cycl
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      008854                         61 __delay_cycl:
                           000000    62 	Sspse_stm8$_delay_cycl$1 ==.
                           000000    63 	Sspse_stm8$_delay_cycl$2 ==.
                                     64 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                     65 ;	genInline
      008854 9D               [ 1]   66 	nop
      008855 9D               [ 1]   67 	nop
                           000002    68 	Sspse_stm8$_delay_cycl$3 ==.
                                     69 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                     70 ; genAssign
      008856 1E 03            [ 2]   71 	ldw	x, (0x03, sp)
                                     72 ; genLabel
      008858                         73 00101$:
                           000004    74 	Sspse_stm8$_delay_cycl$4 ==.
                           000004    75 	Sspse_stm8$_delay_cycl$5 ==.
                                     76 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                     77 ; genMinus
      008858 5A               [ 2]   78 	decw	x
                           000005    79 	Sspse_stm8$_delay_cycl$6 ==.
                           000005    80 	Sspse_stm8$_delay_cycl$7 ==.
                                     81 ;	inc/delay.h: 28: } while ( __ticks );
                                     82 ; genIfx
      008859 5D               [ 2]   83 	tnzw	x
      00885A 27 03            [ 1]   84 	jreq	00117$
      00885C CC 88 58         [ 2]   85 	jp	00101$
      00885F                         86 00117$:
                           00000B    87 	Sspse_stm8$_delay_cycl$8 ==.
                                     88 ;	inc/delay.h: 29: __asm__("nop\n");
                                     89 ;	genInline
      00885F 9D               [ 1]   90 	nop
                                     91 ; genLabel
      008860                         92 00104$:
                           00000C    93 	Sspse_stm8$_delay_cycl$9 ==.
                                     94 ;	inc/delay.h: 39: }
                                     95 ; genEndFunction
                           00000C    96 	Sspse_stm8$_delay_cycl$10 ==.
                           00000C    97 	XFspse_stm8$_delay_cycl$0$0 ==.
      008860 81               [ 4]   98 	ret
                           00000D    99 	Sspse_stm8$_delay_cycl$11 ==.
                           00000D   100 	Sspse_stm8$_delay_us$12 ==.
                                    101 ;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
                                    102 ; genLabel
                                    103 ;	-----------------------------------------
                                    104 ;	 function _delay_us
                                    105 ;	-----------------------------------------
                                    106 ;	Register assignment might be sub-optimal.
                                    107 ;	Stack space usage: 0 bytes.
      008861                        108 __delay_us:
                           00000D   109 	Sspse_stm8$_delay_us$13 ==.
                           00000D   110 	Sspse_stm8$_delay_us$14 ==.
                                    111 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    112 ; genCast
                                    113 ; genAssign
      008861 16 03            [ 2]  114 	ldw	y, (0x03, sp)
      008863 5F               [ 1]  115 	clrw	x
                                    116 ; genIPush
      008864 90 89            [ 2]  117 	pushw	y
                           000012   118 	Sspse_stm8$_delay_us$15 ==.
      008866 89               [ 2]  119 	pushw	x
                           000013   120 	Sspse_stm8$_delay_us$16 ==.
                                    121 ; genIPush
      008867 4B 00            [ 1]  122 	push	#0x00
                           000015   123 	Sspse_stm8$_delay_us$17 ==.
      008869 4B 24            [ 1]  124 	push	#0x24
                           000017   125 	Sspse_stm8$_delay_us$18 ==.
      00886B 4B F4            [ 1]  126 	push	#0xf4
                           000019   127 	Sspse_stm8$_delay_us$19 ==.
      00886D 4B 00            [ 1]  128 	push	#0x00
                           00001B   129 	Sspse_stm8$_delay_us$20 ==.
                                    130 ; genCall
      00886F CD A6 1C         [ 4]  131 	call	__mullong
      008872 5B 08            [ 2]  132 	addw	sp, #8
                           000020   133 	Sspse_stm8$_delay_us$21 ==.
                           000020   134 	Sspse_stm8$_delay_us$22 ==.
                                    135 ; genCast
                                    136 ; genAssign
                                    137 ; genIPush
      008874 4B 40            [ 1]  138 	push	#0x40
                           000022   139 	Sspse_stm8$_delay_us$23 ==.
      008876 4B 42            [ 1]  140 	push	#0x42
                           000024   141 	Sspse_stm8$_delay_us$24 ==.
      008878 4B 0F            [ 1]  142 	push	#0x0f
                           000026   143 	Sspse_stm8$_delay_us$25 ==.
      00887A 4B 00            [ 1]  144 	push	#0x00
                           000028   145 	Sspse_stm8$_delay_us$26 ==.
                                    146 ; genIPush
      00887C 89               [ 2]  147 	pushw	x
                           000029   148 	Sspse_stm8$_delay_us$27 ==.
      00887D 90 89            [ 2]  149 	pushw	y
                           00002B   150 	Sspse_stm8$_delay_us$28 ==.
                                    151 ; genCall
      00887F CD A5 C2         [ 4]  152 	call	__divulong
      008882 5B 08            [ 2]  153 	addw	sp, #8
                           000030   154 	Sspse_stm8$_delay_us$29 ==.
                           000030   155 	Sspse_stm8$_delay_us$30 ==.
                                    156 ; genRightShiftLiteral
      008884 90 54            [ 2]  157 	srlw	y
      008886 56               [ 2]  158 	rrcw	x
      008887 90 54            [ 2]  159 	srlw	y
      008889 56               [ 2]  160 	rrcw	x
      00888A 90 54            [ 2]  161 	srlw	y
      00888C 56               [ 2]  162 	rrcw	x
                                    163 ; genCast
                                    164 ; genAssign
                           000039   165 	Sspse_stm8$_delay_us$31 ==.
                                    166 ; genPlus
      00888D 5C               [ 1]  167 	incw	x
                                    168 ; genAssign
                                    169 ; genAssign
                           00003A   170 	Sspse_stm8$_delay_us$32 ==.
                                    171 ; genAssign
                           00003A   172 	Sspse_stm8$_delay_us$33 ==.
                                    173 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    174 ;	genInline
      00888E 9D               [ 1]  175 	nop
      00888F 9D               [ 1]  176 	nop
                           00003C   177 	Sspse_stm8$_delay_us$34 ==.
                           00003C   178 	Sspse_stm8$_delay_us$35 ==.
                                    179 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    180 ; genAssign
                                    181 ; genLabel
      008890                        182 00101$:
                           00003C   183 	Sspse_stm8$_delay_us$36 ==.
                                    184 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    185 ; genMinus
      008890 5A               [ 2]  186 	decw	x
                           00003D   187 	Sspse_stm8$_delay_us$37 ==.
                                    188 ;	inc/delay.h: 28: } while ( __ticks );
                                    189 ; genIfx
      008891 5D               [ 2]  190 	tnzw	x
      008892 27 03            [ 1]  191 	jreq	00118$
      008894 CC 88 90         [ 2]  192 	jp	00101$
      008897                        193 00118$:
                                    194 ;	inc/delay.h: 29: __asm__("nop\n");
                                    195 ;	genInline
      008897 9D               [ 1]  196 	nop
                           000044   197 	Sspse_stm8$_delay_us$38 ==.
                           000044   198 	Sspse_stm8$_delay_us$39 ==.
                                    199 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    200 ; genLabel
      008898                        201 00105$:
                           000044   202 	Sspse_stm8$_delay_us$40 ==.
                                    203 ;	inc/delay.h: 43: }
                                    204 ; genEndFunction
                           000044   205 	Sspse_stm8$_delay_us$41 ==.
                           000044   206 	XFspse_stm8$_delay_us$0$0 ==.
      008898 81               [ 4]  207 	ret
                           000045   208 	Sspse_stm8$_delay_us$42 ==.
                           000045   209 	Sspse_stm8$ADC_get$43 ==.
                                    210 ;	./src/spse_stm8.c: 10: uint16_t ADC_get(ADC2_Channel_TypeDef ADC2_Channel){
                                    211 ; genLabel
                                    212 ;	-----------------------------------------
                                    213 ;	 function ADC_get
                                    214 ;	-----------------------------------------
                                    215 ;	Register assignment is optimal.
                                    216 ;	Stack space usage: 0 bytes.
      008899                        217 _ADC_get:
                           000045   218 	Sspse_stm8$ADC_get$44 ==.
                           000045   219 	Sspse_stm8$ADC_get$45 ==.
                                    220 ;	./src/spse_stm8.c: 11: ADC2_Select_Channel(ADC2_Channel); // vybere kanál / nastavuje analogový multiplexer
                                    221 ; genIPush
      008899 7B 03            [ 1]  222 	ld	a, (0x03, sp)
      00889B 88               [ 1]  223 	push	a
                           000048   224 	Sspse_stm8$ADC_get$46 ==.
                                    225 ; genCall
      00889C CD 88 BD         [ 4]  226 	call	_ADC2_Select_Channel
      00889F 84               [ 1]  227 	pop	a
                           00004C   228 	Sspse_stm8$ADC_get$47 ==.
                           00004C   229 	Sspse_stm8$ADC_get$48 ==.
                                    230 ;	./src/spse_stm8.c: 12: ADC2->CR1 |= ADC2_CR1_ADON; // Start Conversion (ADON must be SET before => ADC must be enabled !)
                                    231 ; genPointerGet
      0088A0 C6 54 01         [ 1]  232 	ld	a, 0x5401
                                    233 ; genOr
      0088A3 AA 01            [ 1]  234 	or	a, #0x01
                                    235 ; genPointerSet
      0088A5 C7 54 01         [ 1]  236 	ld	0x5401, a
                           000054   237 	Sspse_stm8$ADC_get$49 ==.
                                    238 ;	./src/spse_stm8.c: 13: while(!(ADC2->CSR & ADC2_CSR_EOC)); // èeká na dokonèení pøevodu (End Of Conversion)
                                    239 ; genLabel
      0088A8                        240 00101$:
                                    241 ; genPointerGet
      0088A8 C6 54 00         [ 1]  242 	ld	a, 0x5400
                                    243 ; genAnd
      0088AB 4D               [ 1]  244 	tnz	a
      0088AC 2B 03            [ 1]  245 	jrmi	00116$
      0088AE CC 88 A8         [ 2]  246 	jp	00101$
      0088B1                        247 00116$:
                                    248 ; skipping generated iCode
                           00005D   249 	Sspse_stm8$ADC_get$50 ==.
                                    250 ;	./src/spse_stm8.c: 14: ADC2->CSR &=~ADC2_CSR_EOC; // maže vlajku 
                                    251 ; genPointerGet
      0088B1 C6 54 00         [ 1]  252 	ld	a, 0x5400
                                    253 ; genAnd
      0088B4 A4 7F            [ 1]  254 	and	a, #0x7f
                                    255 ; genPointerSet
      0088B6 C7 54 00         [ 1]  256 	ld	0x5400, a
                           000065   257 	Sspse_stm8$ADC_get$51 ==.
                                    258 ;	./src/spse_stm8.c: 15: return ADC2_GetConversionValue(); // vrací výsledek
                                    259 ; genCall
      0088B9 CC A4 A5         [ 2]  260 	jp	_ADC2_GetConversionValue
                                    261 ; genReturn
                                    262 ; genLabel
      0088BC                        263 00104$:
                           000068   264 	Sspse_stm8$ADC_get$52 ==.
                                    265 ;	./src/spse_stm8.c: 16: }
                                    266 ; genEndFunction
                           000068   267 	Sspse_stm8$ADC_get$53 ==.
                           000068   268 	XG$ADC_get$0$0 ==.
      0088BC 81               [ 4]  269 	ret
                           000069   270 	Sspse_stm8$ADC_get$54 ==.
                           000069   271 	Sspse_stm8$ADC2_Select_Channel$55 ==.
                                    272 ;	./src/spse_stm8.c: 21: void ADC2_Select_Channel(ADC2_Channel_TypeDef ADC2_Channel){
                                    273 ; genLabel
                                    274 ;	-----------------------------------------
                                    275 ;	 function ADC2_Select_Channel
                                    276 ;	-----------------------------------------
                                    277 ;	Register assignment is optimal.
                                    278 ;	Stack space usage: 1 bytes.
      0088BD                        279 _ADC2_Select_Channel:
                           000069   280 	Sspse_stm8$ADC2_Select_Channel$56 ==.
      0088BD 88               [ 1]  281 	push	a
                           00006A   282 	Sspse_stm8$ADC2_Select_Channel$57 ==.
                           00006A   283 	Sspse_stm8$ADC2_Select_Channel$58 ==.
                                    284 ;	./src/spse_stm8.c: 22: uint8_t tmp = (ADC2->CSR) & (~ADC2_CSR_CH);
                                    285 ; genPointerGet
      0088BE C6 54 00         [ 1]  286 	ld	a, 0x5400
                                    287 ; genAnd
      0088C1 A4 F0            [ 1]  288 	and	a, #0xf0
      0088C3 6B 01            [ 1]  289 	ld	(0x01, sp), a
                           000071   290 	Sspse_stm8$ADC2_Select_Channel$59 ==.
                                    291 ;	./src/spse_stm8.c: 23: tmp |= ADC2_Channel | ADC2_CSR_EOC;
                                    292 ; genOr
      0088C5 7B 04            [ 1]  293 	ld	a, (0x04, sp)
      0088C7 AA 80            [ 1]  294 	or	a, #0x80
                                    295 ; genOr
      0088C9 1A 01            [ 1]  296 	or	a, (0x01, sp)
                                    297 ; genAssign
                           000077   298 	Sspse_stm8$ADC2_Select_Channel$60 ==.
                                    299 ;	./src/spse_stm8.c: 24: ADC2->CSR = tmp;
                                    300 ; genPointerSet
      0088CB C7 54 00         [ 1]  301 	ld	0x5400, a
                                    302 ; genLabel
      0088CE                        303 00101$:
                           00007A   304 	Sspse_stm8$ADC2_Select_Channel$61 ==.
                                    305 ;	./src/spse_stm8.c: 25: }
                                    306 ; genEndFunction
      0088CE 84               [ 1]  307 	pop	a
                           00007B   308 	Sspse_stm8$ADC2_Select_Channel$62 ==.
                           00007B   309 	Sspse_stm8$ADC2_Select_Channel$63 ==.
                           00007B   310 	XG$ADC2_Select_Channel$0$0 ==.
      0088CF 81               [ 4]  311 	ret
                           00007C   312 	Sspse_stm8$ADC2_Select_Channel$64 ==.
                           00007C   313 	Sspse_stm8$ADC2_AlignConfig$65 ==.
                                    314 ;	./src/spse_stm8.c: 30: void ADC2_AlignConfig(ADC2_Align_TypeDef ADC2_Align){
                                    315 ; genLabel
                                    316 ;	-----------------------------------------
                                    317 ;	 function ADC2_AlignConfig
                                    318 ;	-----------------------------------------
                                    319 ;	Register assignment is optimal.
                                    320 ;	Stack space usage: 0 bytes.
      0088D0                        321 _ADC2_AlignConfig:
                           00007C   322 	Sspse_stm8$ADC2_AlignConfig$66 ==.
                           00007C   323 	Sspse_stm8$ADC2_AlignConfig$67 ==.
                                    324 ;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    325 ; genPointerGet
      0088D0 C6 54 02         [ 1]  326 	ld	a, 0x5402
                           00007F   327 	Sspse_stm8$ADC2_AlignConfig$68 ==.
                                    328 ;	./src/spse_stm8.c: 31: if(ADC2_Align){
                                    329 ; genIfx
      0088D3 0D 03            [ 1]  330 	tnz	(0x03, sp)
      0088D5 26 03            [ 1]  331 	jrne	00111$
      0088D7 CC 88 E2         [ 2]  332 	jp	00102$
      0088DA                        333 00111$:
                           000086   334 	Sspse_stm8$ADC2_AlignConfig$69 ==.
                           000086   335 	Sspse_stm8$ADC2_AlignConfig$70 ==.
                                    336 ;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    337 ; genOr
      0088DA 1A 03            [ 1]  338 	or	a, (0x03, sp)
                                    339 ; genPointerSet
      0088DC C7 54 02         [ 1]  340 	ld	0x5402, a
                           00008B   341 	Sspse_stm8$ADC2_AlignConfig$71 ==.
                                    342 ; genGoto
      0088DF CC 88 E7         [ 2]  343 	jp	00104$
                                    344 ; genLabel
      0088E2                        345 00102$:
                           00008E   346 	Sspse_stm8$ADC2_AlignConfig$72 ==.
                           00008E   347 	Sspse_stm8$ADC2_AlignConfig$73 ==.
                                    348 ;	./src/spse_stm8.c: 34: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
                                    349 ; genAnd
      0088E2 A4 F7            [ 1]  350 	and	a, #0xf7
                                    351 ; genPointerSet
      0088E4 C7 54 02         [ 1]  352 	ld	0x5402, a
                           000093   353 	Sspse_stm8$ADC2_AlignConfig$74 ==.
                                    354 ; genLabel
      0088E7                        355 00104$:
                           000093   356 	Sspse_stm8$ADC2_AlignConfig$75 ==.
                                    357 ;	./src/spse_stm8.c: 36: }
                                    358 ; genEndFunction
                           000093   359 	Sspse_stm8$ADC2_AlignConfig$76 ==.
                           000093   360 	XG$ADC2_AlignConfig$0$0 ==.
      0088E7 81               [ 4]  361 	ret
                           000094   362 	Sspse_stm8$ADC2_AlignConfig$77 ==.
                           000094   363 	Sspse_stm8$ADC2_Startup_Wait$78 ==.
                                    364 ;	./src/spse_stm8.c: 40: void ADC2_Startup_Wait(void){
                                    365 ; genLabel
                                    366 ;	-----------------------------------------
                                    367 ;	 function ADC2_Startup_Wait
                                    368 ;	-----------------------------------------
                                    369 ;	Register assignment is optimal.
                                    370 ;	Stack space usage: 0 bytes.
      0088E8                        371 _ADC2_Startup_Wait:
                           000094   372 	Sspse_stm8$ADC2_Startup_Wait$79 ==.
                           000094   373 	Sspse_stm8$ADC2_Startup_Wait$80 ==.
                                    374 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    375 ; genAssign
      0088E8 AE 00 0F         [ 2]  376 	ldw	x, #0x000f
                           000097   377 	Sspse_stm8$ADC2_Startup_Wait$81 ==.
                                    378 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    379 ;	genInline
      0088EB 9D               [ 1]  380 	nop
      0088EC 9D               [ 1]  381 	nop
                           000099   382 	Sspse_stm8$ADC2_Startup_Wait$82 ==.
                           000099   383 	Sspse_stm8$ADC2_Startup_Wait$83 ==.
                                    384 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    385 ; genAssign
                                    386 ; genLabel
      0088ED                        387 00101$:
                           000099   388 	Sspse_stm8$ADC2_Startup_Wait$84 ==.
                                    389 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    390 ; genMinus
      0088ED 5A               [ 2]  391 	decw	x
                           00009A   392 	Sspse_stm8$ADC2_Startup_Wait$85 ==.
                                    393 ;	inc/delay.h: 28: } while ( __ticks );
                                    394 ; genIfx
      0088EE 5D               [ 2]  395 	tnzw	x
      0088EF 27 03            [ 1]  396 	jreq	00119$
      0088F1 CC 88 ED         [ 2]  397 	jp	00101$
      0088F4                        398 00119$:
                                    399 ;	inc/delay.h: 29: __asm__("nop\n");
                                    400 ;	genInline
      0088F4 9D               [ 1]  401 	nop
                           0000A1   402 	Sspse_stm8$ADC2_Startup_Wait$86 ==.
                           0000A1   403 	Sspse_stm8$ADC2_Startup_Wait$87 ==.
                                    404 ;	./src/spse_stm8.c: 41: _delay_us(ADC_TSTAB);
                                    405 ; genLabel
      0088F5                        406 00106$:
                           0000A1   407 	Sspse_stm8$ADC2_Startup_Wait$88 ==.
                                    408 ;	./src/spse_stm8.c: 42: }
                                    409 ; genEndFunction
                           0000A1   410 	Sspse_stm8$ADC2_Startup_Wait$89 ==.
                           0000A1   411 	XG$ADC2_Startup_Wait$0$0 ==.
      0088F5 81               [ 4]  412 	ret
                           0000A2   413 	Sspse_stm8$ADC2_Startup_Wait$90 ==.
                                    414 	.area CODE
                                    415 	.area CONST
                                    416 	.area INITIALIZER
                                    417 	.area CABS (ABS)
                                    418 
                                    419 	.area .debug_line (NOLOAD)
      00064A 00 00 01 95            420 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00064E                        421 Ldebug_line_start:
      00064E 00 02                  422 	.dw	2
      000650 00 00 00 81            423 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000654 01                     424 	.db	1
      000655 01                     425 	.db	1
      000656 FB                     426 	.db	-5
      000657 0F                     427 	.db	15
      000658 0A                     428 	.db	10
      000659 00                     429 	.db	0
      00065A 01                     430 	.db	1
      00065B 01                     431 	.db	1
      00065C 01                     432 	.db	1
      00065D 01                     433 	.db	1
      00065E 00                     434 	.db	0
      00065F 00                     435 	.db	0
      000660 00                     436 	.db	0
      000661 01                     437 	.db	1
      000662 43 3A 5C 50 72 6F 67   438 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00068A 00                     439 	.db	0
      00068B 43 3A 5C 50 72 6F 67   440 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0006AE 00                     441 	.db	0
      0006AF 00                     442 	.db	0
      0006B0 69 6E 63 2F 64 65 6C   443 	.ascii "inc/delay.h"
             61 79 2E 68
      0006BB 00                     444 	.db	0
      0006BC 00                     445 	.uleb128	0
      0006BD 00                     446 	.uleb128	0
      0006BE 00                     447 	.uleb128	0
      0006BF 2E 2F 73 72 63 2F 73   448 	.ascii "./src/spse_stm8.c"
             70 73 65 5F 73 74 6D
             38 2E 63
      0006D0 00                     449 	.db	0
      0006D1 00                     450 	.uleb128	0
      0006D2 00                     451 	.uleb128	0
      0006D3 00                     452 	.uleb128	0
      0006D4 00                     453 	.db	0
      0006D5                        454 Ldebug_line_stmt:
      0006D5 00                     455 	.db	0
      0006D6 05                     456 	.uleb128	5
      0006D7 02                     457 	.db	2
      0006D8 00 00 88 54            458 	.dw	0,(Sspse_stm8$_delay_cycl$0)
      0006DC 03                     459 	.db	3
      0006DD 0D                     460 	.sleb128	13
      0006DE 01                     461 	.db	1
      0006DF 09                     462 	.db	9
      0006E0 00 00                  463 	.dw	Sspse_stm8$_delay_cycl$2-Sspse_stm8$_delay_cycl$0
      0006E2 03                     464 	.db	3
      0006E3 0B                     465 	.sleb128	11
      0006E4 01                     466 	.db	1
      0006E5 09                     467 	.db	9
      0006E6 00 02                  468 	.dw	Sspse_stm8$_delay_cycl$3-Sspse_stm8$_delay_cycl$2
      0006E8 03                     469 	.db	3
      0006E9 01                     470 	.sleb128	1
      0006EA 01                     471 	.db	1
      0006EB 09                     472 	.db	9
      0006EC 00 02                  473 	.dw	Sspse_stm8$_delay_cycl$5-Sspse_stm8$_delay_cycl$3
      0006EE 03                     474 	.db	3
      0006EF 01                     475 	.sleb128	1
      0006F0 01                     476 	.db	1
      0006F1 09                     477 	.db	9
      0006F2 00 01                  478 	.dw	Sspse_stm8$_delay_cycl$7-Sspse_stm8$_delay_cycl$5
      0006F4 03                     479 	.db	3
      0006F5 01                     480 	.sleb128	1
      0006F6 01                     481 	.db	1
      0006F7 09                     482 	.db	9
      0006F8 00 06                  483 	.dw	Sspse_stm8$_delay_cycl$8-Sspse_stm8$_delay_cycl$7
      0006FA 03                     484 	.db	3
      0006FB 01                     485 	.sleb128	1
      0006FC 01                     486 	.db	1
      0006FD 09                     487 	.db	9
      0006FE 00 01                  488 	.dw	Sspse_stm8$_delay_cycl$9-Sspse_stm8$_delay_cycl$8
      000700 03                     489 	.db	3
      000701 0A                     490 	.sleb128	10
      000702 01                     491 	.db	1
      000703 09                     492 	.db	9
      000704 00 01                  493 	.dw	1+Sspse_stm8$_delay_cycl$10-Sspse_stm8$_delay_cycl$9
      000706 00                     494 	.db	0
      000707 01                     495 	.uleb128	1
      000708 01                     496 	.db	1
      000709 00                     497 	.db	0
      00070A 05                     498 	.uleb128	5
      00070B 02                     499 	.db	2
      00070C 00 00 88 61            500 	.dw	0,(Sspse_stm8$_delay_us$12)
      000710 03                     501 	.db	3
      000711 28                     502 	.sleb128	40
      000712 01                     503 	.db	1
      000713 09                     504 	.db	9
      000714 00 2F                  505 	.dw	Sspse_stm8$_delay_us$35-Sspse_stm8$_delay_us$12
      000716 03                     506 	.db	3
      000717 71                     507 	.sleb128	-15
      000718 01                     508 	.db	1
      000719 09                     509 	.db	9
      00071A 00 08                  510 	.dw	Sspse_stm8$_delay_us$39-Sspse_stm8$_delay_us$35
      00071C 03                     511 	.db	3
      00071D 10                     512 	.sleb128	16
      00071E 01                     513 	.db	1
      00071F 09                     514 	.db	9
      000720 00 00                  515 	.dw	Sspse_stm8$_delay_us$40-Sspse_stm8$_delay_us$39
      000722 03                     516 	.db	3
      000723 01                     517 	.sleb128	1
      000724 01                     518 	.db	1
      000725 09                     519 	.db	9
      000726 00 01                  520 	.dw	1+Sspse_stm8$_delay_us$41-Sspse_stm8$_delay_us$40
      000728 00                     521 	.db	0
      000729 01                     522 	.uleb128	1
      00072A 01                     523 	.db	1
      00072B 04                     524 	.db	4
      00072C 02                     525 	.uleb128	2
      00072D 00                     526 	.db	0
      00072E 05                     527 	.uleb128	5
      00072F 02                     528 	.db	2
      000730 00 00 88 99            529 	.dw	0,(Sspse_stm8$ADC_get$43)
      000734 03                     530 	.db	3
      000735 09                     531 	.sleb128	9
      000736 01                     532 	.db	1
      000737 09                     533 	.db	9
      000738 00 00                  534 	.dw	Sspse_stm8$ADC_get$45-Sspse_stm8$ADC_get$43
      00073A 03                     535 	.db	3
      00073B 01                     536 	.sleb128	1
      00073C 01                     537 	.db	1
      00073D 09                     538 	.db	9
      00073E 00 07                  539 	.dw	Sspse_stm8$ADC_get$48-Sspse_stm8$ADC_get$45
      000740 03                     540 	.db	3
      000741 01                     541 	.sleb128	1
      000742 01                     542 	.db	1
      000743 09                     543 	.db	9
      000744 00 08                  544 	.dw	Sspse_stm8$ADC_get$49-Sspse_stm8$ADC_get$48
      000746 03                     545 	.db	3
      000747 01                     546 	.sleb128	1
      000748 01                     547 	.db	1
      000749 09                     548 	.db	9
      00074A 00 09                  549 	.dw	Sspse_stm8$ADC_get$50-Sspse_stm8$ADC_get$49
      00074C 03                     550 	.db	3
      00074D 01                     551 	.sleb128	1
      00074E 01                     552 	.db	1
      00074F 09                     553 	.db	9
      000750 00 08                  554 	.dw	Sspse_stm8$ADC_get$51-Sspse_stm8$ADC_get$50
      000752 03                     555 	.db	3
      000753 01                     556 	.sleb128	1
      000754 01                     557 	.db	1
      000755 09                     558 	.db	9
      000756 00 03                  559 	.dw	Sspse_stm8$ADC_get$52-Sspse_stm8$ADC_get$51
      000758 03                     560 	.db	3
      000759 01                     561 	.sleb128	1
      00075A 01                     562 	.db	1
      00075B 09                     563 	.db	9
      00075C 00 01                  564 	.dw	1+Sspse_stm8$ADC_get$53-Sspse_stm8$ADC_get$52
      00075E 00                     565 	.db	0
      00075F 01                     566 	.uleb128	1
      000760 01                     567 	.db	1
      000761 04                     568 	.db	4
      000762 02                     569 	.uleb128	2
      000763 00                     570 	.db	0
      000764 05                     571 	.uleb128	5
      000765 02                     572 	.db	2
      000766 00 00 88 BD            573 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$55)
      00076A 03                     574 	.db	3
      00076B 14                     575 	.sleb128	20
      00076C 01                     576 	.db	1
      00076D 09                     577 	.db	9
      00076E 00 01                  578 	.dw	Sspse_stm8$ADC2_Select_Channel$58-Sspse_stm8$ADC2_Select_Channel$55
      000770 03                     579 	.db	3
      000771 01                     580 	.sleb128	1
      000772 01                     581 	.db	1
      000773 09                     582 	.db	9
      000774 00 07                  583 	.dw	Sspse_stm8$ADC2_Select_Channel$59-Sspse_stm8$ADC2_Select_Channel$58
      000776 03                     584 	.db	3
      000777 01                     585 	.sleb128	1
      000778 01                     586 	.db	1
      000779 09                     587 	.db	9
      00077A 00 06                  588 	.dw	Sspse_stm8$ADC2_Select_Channel$60-Sspse_stm8$ADC2_Select_Channel$59
      00077C 03                     589 	.db	3
      00077D 01                     590 	.sleb128	1
      00077E 01                     591 	.db	1
      00077F 09                     592 	.db	9
      000780 00 03                  593 	.dw	Sspse_stm8$ADC2_Select_Channel$61-Sspse_stm8$ADC2_Select_Channel$60
      000782 03                     594 	.db	3
      000783 01                     595 	.sleb128	1
      000784 01                     596 	.db	1
      000785 09                     597 	.db	9
      000786 00 02                  598 	.dw	1+Sspse_stm8$ADC2_Select_Channel$63-Sspse_stm8$ADC2_Select_Channel$61
      000788 00                     599 	.db	0
      000789 01                     600 	.uleb128	1
      00078A 01                     601 	.db	1
      00078B 04                     602 	.db	4
      00078C 02                     603 	.uleb128	2
      00078D 00                     604 	.db	0
      00078E 05                     605 	.uleb128	5
      00078F 02                     606 	.db	2
      000790 00 00 88 D0            607 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$65)
      000794 03                     608 	.db	3
      000795 1D                     609 	.sleb128	29
      000796 01                     610 	.db	1
      000797 09                     611 	.db	9
      000798 00 00                  612 	.dw	Sspse_stm8$ADC2_AlignConfig$67-Sspse_stm8$ADC2_AlignConfig$65
      00079A 03                     613 	.db	3
      00079B 02                     614 	.sleb128	2
      00079C 01                     615 	.db	1
      00079D 09                     616 	.db	9
      00079E 00 03                  617 	.dw	Sspse_stm8$ADC2_AlignConfig$68-Sspse_stm8$ADC2_AlignConfig$67
      0007A0 03                     618 	.db	3
      0007A1 7F                     619 	.sleb128	-1
      0007A2 01                     620 	.db	1
      0007A3 09                     621 	.db	9
      0007A4 00 07                  622 	.dw	Sspse_stm8$ADC2_AlignConfig$70-Sspse_stm8$ADC2_AlignConfig$68
      0007A6 03                     623 	.db	3
      0007A7 01                     624 	.sleb128	1
      0007A8 01                     625 	.db	1
      0007A9 09                     626 	.db	9
      0007AA 00 08                  627 	.dw	Sspse_stm8$ADC2_AlignConfig$73-Sspse_stm8$ADC2_AlignConfig$70
      0007AC 03                     628 	.db	3
      0007AD 02                     629 	.sleb128	2
      0007AE 01                     630 	.db	1
      0007AF 09                     631 	.db	9
      0007B0 00 05                  632 	.dw	Sspse_stm8$ADC2_AlignConfig$75-Sspse_stm8$ADC2_AlignConfig$73
      0007B2 03                     633 	.db	3
      0007B3 02                     634 	.sleb128	2
      0007B4 01                     635 	.db	1
      0007B5 09                     636 	.db	9
      0007B6 00 01                  637 	.dw	1+Sspse_stm8$ADC2_AlignConfig$76-Sspse_stm8$ADC2_AlignConfig$75
      0007B8 00                     638 	.db	0
      0007B9 01                     639 	.uleb128	1
      0007BA 01                     640 	.db	1
      0007BB 04                     641 	.db	4
      0007BC 02                     642 	.uleb128	2
      0007BD 00                     643 	.db	0
      0007BE 05                     644 	.uleb128	5
      0007BF 02                     645 	.db	2
      0007C0 00 00 88 E8            646 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$78)
      0007C4 03                     647 	.db	3
      0007C5 27                     648 	.sleb128	39
      0007C6 01                     649 	.db	1
      0007C7 04                     650 	.db	4
      0007C8 01                     651 	.uleb128	1
      0007C9 09                     652 	.db	9
      0007CA 00 05                  653 	.dw	Sspse_stm8$ADC2_Startup_Wait$83-Sspse_stm8$ADC2_Startup_Wait$78
      0007CC 03                     654 	.db	3
      0007CD 72                     655 	.sleb128	-14
      0007CE 01                     656 	.db	1
      0007CF 04                     657 	.db	4
      0007D0 02                     658 	.uleb128	2
      0007D1 09                     659 	.db	9
      0007D2 00 08                  660 	.dw	Sspse_stm8$ADC2_Startup_Wait$87-Sspse_stm8$ADC2_Startup_Wait$83
      0007D4 03                     661 	.db	3
      0007D5 0F                     662 	.sleb128	15
      0007D6 01                     663 	.db	1
      0007D7 09                     664 	.db	9
      0007D8 00 00                  665 	.dw	Sspse_stm8$ADC2_Startup_Wait$88-Sspse_stm8$ADC2_Startup_Wait$87
      0007DA 03                     666 	.db	3
      0007DB 01                     667 	.sleb128	1
      0007DC 01                     668 	.db	1
      0007DD 09                     669 	.db	9
      0007DE 00 01                  670 	.dw	1+Sspse_stm8$ADC2_Startup_Wait$89-Sspse_stm8$ADC2_Startup_Wait$88
      0007E0 00                     671 	.db	0
      0007E1 01                     672 	.uleb128	1
      0007E2 01                     673 	.db	1
      0007E3                        674 Ldebug_line_end:
                                    675 
                                    676 	.area .debug_loc (NOLOAD)
      00163C                        677 Ldebug_loc_start:
      00163C 00 00 88 E8            678 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
      001640 00 00 88 F6            679 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$90)
      001644 00 02                  680 	.dw	2
      001646 78                     681 	.db	120
      001647 01                     682 	.sleb128	1
      001648 00 00 00 00            683 	.dw	0,0
      00164C 00 00 00 00            684 	.dw	0,0
      001650 00 00 88 D0            685 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
      001654 00 00 88 E8            686 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$77)
      001658 00 02                  687 	.dw	2
      00165A 78                     688 	.db	120
      00165B 01                     689 	.sleb128	1
      00165C 00 00 00 00            690 	.dw	0,0
      001660 00 00 00 00            691 	.dw	0,0
      001664 00 00 88 CF            692 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      001668 00 00 88 D0            693 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$64)
      00166C 00 02                  694 	.dw	2
      00166E 78                     695 	.db	120
      00166F 01                     696 	.sleb128	1
      001670 00 00 88 BE            697 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      001674 00 00 88 CF            698 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      001678 00 02                  699 	.dw	2
      00167A 78                     700 	.db	120
      00167B 02                     701 	.sleb128	2
      00167C 00 00 88 BD            702 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
      001680 00 00 88 BE            703 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      001684 00 02                  704 	.dw	2
      001686 78                     705 	.db	120
      001687 01                     706 	.sleb128	1
      001688 00 00 00 00            707 	.dw	0,0
      00168C 00 00 00 00            708 	.dw	0,0
      001690 00 00 88 A0            709 	.dw	0,(Sspse_stm8$ADC_get$47)
      001694 00 00 88 BD            710 	.dw	0,(Sspse_stm8$ADC_get$54)
      001698 00 02                  711 	.dw	2
      00169A 78                     712 	.db	120
      00169B 01                     713 	.sleb128	1
      00169C 00 00 88 9C            714 	.dw	0,(Sspse_stm8$ADC_get$46)
      0016A0 00 00 88 A0            715 	.dw	0,(Sspse_stm8$ADC_get$47)
      0016A4 00 02                  716 	.dw	2
      0016A6 78                     717 	.db	120
      0016A7 02                     718 	.sleb128	2
      0016A8 00 00 88 99            719 	.dw	0,(Sspse_stm8$ADC_get$44)
      0016AC 00 00 88 9C            720 	.dw	0,(Sspse_stm8$ADC_get$46)
      0016B0 00 02                  721 	.dw	2
      0016B2 78                     722 	.db	120
      0016B3 01                     723 	.sleb128	1
      0016B4 00 00 00 00            724 	.dw	0,0
      0016B8 00 00 00 00            725 	.dw	0,0
      0016BC 00 00 88 84            726 	.dw	0,(Sspse_stm8$_delay_us$29)
      0016C0 00 00 88 99            727 	.dw	0,(Sspse_stm8$_delay_us$42)
      0016C4 00 02                  728 	.dw	2
      0016C6 78                     729 	.db	120
      0016C7 01                     730 	.sleb128	1
      0016C8 00 00 88 7F            731 	.dw	0,(Sspse_stm8$_delay_us$28)
      0016CC 00 00 88 84            732 	.dw	0,(Sspse_stm8$_delay_us$29)
      0016D0 00 02                  733 	.dw	2
      0016D2 78                     734 	.db	120
      0016D3 09                     735 	.sleb128	9
      0016D4 00 00 88 7D            736 	.dw	0,(Sspse_stm8$_delay_us$27)
      0016D8 00 00 88 7F            737 	.dw	0,(Sspse_stm8$_delay_us$28)
      0016DC 00 02                  738 	.dw	2
      0016DE 78                     739 	.db	120
      0016DF 07                     740 	.sleb128	7
      0016E0 00 00 88 7C            741 	.dw	0,(Sspse_stm8$_delay_us$26)
      0016E4 00 00 88 7D            742 	.dw	0,(Sspse_stm8$_delay_us$27)
      0016E8 00 02                  743 	.dw	2
      0016EA 78                     744 	.db	120
      0016EB 05                     745 	.sleb128	5
      0016EC 00 00 88 7A            746 	.dw	0,(Sspse_stm8$_delay_us$25)
      0016F0 00 00 88 7C            747 	.dw	0,(Sspse_stm8$_delay_us$26)
      0016F4 00 02                  748 	.dw	2
      0016F6 78                     749 	.db	120
      0016F7 04                     750 	.sleb128	4
      0016F8 00 00 88 78            751 	.dw	0,(Sspse_stm8$_delay_us$24)
      0016FC 00 00 88 7A            752 	.dw	0,(Sspse_stm8$_delay_us$25)
      001700 00 02                  753 	.dw	2
      001702 78                     754 	.db	120
      001703 03                     755 	.sleb128	3
      001704 00 00 88 76            756 	.dw	0,(Sspse_stm8$_delay_us$23)
      001708 00 00 88 78            757 	.dw	0,(Sspse_stm8$_delay_us$24)
      00170C 00 02                  758 	.dw	2
      00170E 78                     759 	.db	120
      00170F 02                     760 	.sleb128	2
      001710 00 00 88 74            761 	.dw	0,(Sspse_stm8$_delay_us$21)
      001714 00 00 88 76            762 	.dw	0,(Sspse_stm8$_delay_us$23)
      001718 00 02                  763 	.dw	2
      00171A 78                     764 	.db	120
      00171B 01                     765 	.sleb128	1
      00171C 00 00 88 6F            766 	.dw	0,(Sspse_stm8$_delay_us$20)
      001720 00 00 88 74            767 	.dw	0,(Sspse_stm8$_delay_us$21)
      001724 00 02                  768 	.dw	2
      001726 78                     769 	.db	120
      001727 09                     770 	.sleb128	9
      001728 00 00 88 6D            771 	.dw	0,(Sspse_stm8$_delay_us$19)
      00172C 00 00 88 6F            772 	.dw	0,(Sspse_stm8$_delay_us$20)
      001730 00 02                  773 	.dw	2
      001732 78                     774 	.db	120
      001733 08                     775 	.sleb128	8
      001734 00 00 88 6B            776 	.dw	0,(Sspse_stm8$_delay_us$18)
      001738 00 00 88 6D            777 	.dw	0,(Sspse_stm8$_delay_us$19)
      00173C 00 02                  778 	.dw	2
      00173E 78                     779 	.db	120
      00173F 07                     780 	.sleb128	7
      001740 00 00 88 69            781 	.dw	0,(Sspse_stm8$_delay_us$17)
      001744 00 00 88 6B            782 	.dw	0,(Sspse_stm8$_delay_us$18)
      001748 00 02                  783 	.dw	2
      00174A 78                     784 	.db	120
      00174B 06                     785 	.sleb128	6
      00174C 00 00 88 67            786 	.dw	0,(Sspse_stm8$_delay_us$16)
      001750 00 00 88 69            787 	.dw	0,(Sspse_stm8$_delay_us$17)
      001754 00 02                  788 	.dw	2
      001756 78                     789 	.db	120
      001757 05                     790 	.sleb128	5
      001758 00 00 88 66            791 	.dw	0,(Sspse_stm8$_delay_us$15)
      00175C 00 00 88 67            792 	.dw	0,(Sspse_stm8$_delay_us$16)
      001760 00 02                  793 	.dw	2
      001762 78                     794 	.db	120
      001763 03                     795 	.sleb128	3
      001764 00 00 88 61            796 	.dw	0,(Sspse_stm8$_delay_us$13)
      001768 00 00 88 66            797 	.dw	0,(Sspse_stm8$_delay_us$15)
      00176C 00 02                  798 	.dw	2
      00176E 78                     799 	.db	120
      00176F 01                     800 	.sleb128	1
      001770 00 00 00 00            801 	.dw	0,0
      001774 00 00 00 00            802 	.dw	0,0
      001778 00 00 88 54            803 	.dw	0,(Sspse_stm8$_delay_cycl$1)
      00177C 00 00 88 61            804 	.dw	0,(Sspse_stm8$_delay_cycl$11)
      001780 00 02                  805 	.dw	2
      001782 78                     806 	.db	120
      001783 01                     807 	.sleb128	1
      001784 00 00 00 00            808 	.dw	0,0
      001788 00 00 00 00            809 	.dw	0,0
                                    810 
                                    811 	.area .debug_abbrev (NOLOAD)
      00011F                        812 Ldebug_abbrev:
      00011F 0D                     813 	.uleb128	13
      000120 0B                     814 	.uleb128	11
      000121 01                     815 	.db	1
      000122 00                     816 	.uleb128	0
      000123 00                     817 	.uleb128	0
      000124 03                     818 	.uleb128	3
      000125 05                     819 	.uleb128	5
      000126 00                     820 	.db	0
      000127 02                     821 	.uleb128	2
      000128 0A                     822 	.uleb128	10
      000129 03                     823 	.uleb128	3
      00012A 08                     824 	.uleb128	8
      00012B 49                     825 	.uleb128	73
      00012C 13                     826 	.uleb128	19
      00012D 00                     827 	.uleb128	0
      00012E 00                     828 	.uleb128	0
      00012F 02                     829 	.uleb128	2
      000130 2E                     830 	.uleb128	46
      000131 01                     831 	.db	1
      000132 01                     832 	.uleb128	1
      000133 13                     833 	.uleb128	19
      000134 03                     834 	.uleb128	3
      000135 08                     835 	.uleb128	8
      000136 11                     836 	.uleb128	17
      000137 01                     837 	.uleb128	1
      000138 12                     838 	.uleb128	18
      000139 01                     839 	.uleb128	1
      00013A 3F                     840 	.uleb128	63
      00013B 0C                     841 	.uleb128	12
      00013C 40                     842 	.uleb128	64
      00013D 06                     843 	.uleb128	6
      00013E 00                     844 	.uleb128	0
      00013F 00                     845 	.uleb128	0
      000140 0A                     846 	.uleb128	10
      000141 34                     847 	.uleb128	52
      000142 00                     848 	.db	0
      000143 02                     849 	.uleb128	2
      000144 0A                     850 	.uleb128	10
      000145 03                     851 	.uleb128	3
      000146 08                     852 	.uleb128	8
      000147 49                     853 	.uleb128	73
      000148 13                     854 	.uleb128	19
      000149 00                     855 	.uleb128	0
      00014A 00                     856 	.uleb128	0
      00014B 0B                     857 	.uleb128	11
      00014C 2E                     858 	.uleb128	46
      00014D 01                     859 	.db	1
      00014E 01                     860 	.uleb128	1
      00014F 13                     861 	.uleb128	19
      000150 03                     862 	.uleb128	3
      000151 08                     863 	.uleb128	8
      000152 11                     864 	.uleb128	17
      000153 01                     865 	.uleb128	1
      000154 12                     866 	.uleb128	18
      000155 01                     867 	.uleb128	1
      000156 3F                     868 	.uleb128	63
      000157 0C                     869 	.uleb128	12
      000158 40                     870 	.uleb128	64
      000159 06                     871 	.uleb128	6
      00015A 49                     872 	.uleb128	73
      00015B 13                     873 	.uleb128	19
      00015C 00                     874 	.uleb128	0
      00015D 00                     875 	.uleb128	0
      00015E 0E                     876 	.uleb128	14
      00015F 0B                     877 	.uleb128	11
      000160 01                     878 	.db	1
      000161 01                     879 	.uleb128	1
      000162 13                     880 	.uleb128	19
      000163 00                     881 	.uleb128	0
      000164 00                     882 	.uleb128	0
      000165 06                     883 	.uleb128	6
      000166 26                     884 	.uleb128	38
      000167 00                     885 	.db	0
      000168 49                     886 	.uleb128	73
      000169 13                     887 	.uleb128	19
      00016A 00                     888 	.uleb128	0
      00016B 00                     889 	.uleb128	0
      00016C 01                     890 	.uleb128	1
      00016D 11                     891 	.uleb128	17
      00016E 01                     892 	.db	1
      00016F 03                     893 	.uleb128	3
      000170 08                     894 	.uleb128	8
      000171 10                     895 	.uleb128	16
      000172 06                     896 	.uleb128	6
      000173 13                     897 	.uleb128	19
      000174 0B                     898 	.uleb128	11
      000175 25                     899 	.uleb128	37
      000176 08                     900 	.uleb128	8
      000177 00                     901 	.uleb128	0
      000178 00                     902 	.uleb128	0
      000179 04                     903 	.uleb128	4
      00017A 0B                     904 	.uleb128	11
      00017B 00                     905 	.db	0
      00017C 11                     906 	.uleb128	17
      00017D 01                     907 	.uleb128	1
      00017E 12                     908 	.uleb128	18
      00017F 01                     909 	.uleb128	1
      000180 00                     910 	.uleb128	0
      000181 00                     911 	.uleb128	0
      000182 07                     912 	.uleb128	7
      000183 0B                     913 	.uleb128	11
      000184 01                     914 	.db	1
      000185 11                     915 	.uleb128	17
      000186 01                     916 	.uleb128	1
      000187 12                     917 	.uleb128	18
      000188 01                     918 	.uleb128	1
      000189 00                     919 	.uleb128	0
      00018A 00                     920 	.uleb128	0
      00018B 08                     921 	.uleb128	8
      00018C 0B                     922 	.uleb128	11
      00018D 01                     923 	.db	1
      00018E 01                     924 	.uleb128	1
      00018F 13                     925 	.uleb128	19
      000190 11                     926 	.uleb128	17
      000191 01                     927 	.uleb128	1
      000192 00                     928 	.uleb128	0
      000193 00                     929 	.uleb128	0
      000194 0C                     930 	.uleb128	12
      000195 2E                     931 	.uleb128	46
      000196 01                     932 	.db	1
      000197 03                     933 	.uleb128	3
      000198 08                     934 	.uleb128	8
      000199 11                     935 	.uleb128	17
      00019A 01                     936 	.uleb128	1
      00019B 12                     937 	.uleb128	18
      00019C 01                     938 	.uleb128	1
      00019D 3F                     939 	.uleb128	63
      00019E 0C                     940 	.uleb128	12
      00019F 40                     941 	.uleb128	64
      0001A0 06                     942 	.uleb128	6
      0001A1 00                     943 	.uleb128	0
      0001A2 00                     944 	.uleb128	0
      0001A3 09                     945 	.uleb128	9
      0001A4 0B                     946 	.uleb128	11
      0001A5 01                     947 	.db	1
      0001A6 01                     948 	.uleb128	1
      0001A7 13                     949 	.uleb128	19
      0001A8 11                     950 	.uleb128	17
      0001A9 01                     951 	.uleb128	1
      0001AA 12                     952 	.uleb128	18
      0001AB 01                     953 	.uleb128	1
      0001AC 00                     954 	.uleb128	0
      0001AD 00                     955 	.uleb128	0
      0001AE 05                     956 	.uleb128	5
      0001AF 24                     957 	.uleb128	36
      0001B0 00                     958 	.db	0
      0001B1 03                     959 	.uleb128	3
      0001B2 08                     960 	.uleb128	8
      0001B3 0B                     961 	.uleb128	11
      0001B4 0B                     962 	.uleb128	11
      0001B5 3E                     963 	.uleb128	62
      0001B6 0B                     964 	.uleb128	11
      0001B7 00                     965 	.uleb128	0
      0001B8 00                     966 	.uleb128	0
      0001B9 00                     967 	.uleb128	0
                                    968 
                                    969 	.area .debug_info (NOLOAD)
      0006D4 00 00 02 7D            970 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0006D8                        971 Ldebug_info_start:
      0006D8 00 02                  972 	.dw	2
      0006DA 00 00 01 1F            973 	.dw	0,(Ldebug_abbrev)
      0006DE 04                     974 	.db	4
      0006DF 01                     975 	.uleb128	1
      0006E0 2E 2F 73 72 63 2F 73   976 	.ascii "./src/spse_stm8.c"
             70 73 65 5F 73 74 6D
             38 2E 63
      0006F1 00                     977 	.db	0
      0006F2 00 00 06 4A            978 	.dw	0,(Ldebug_line_start+-4)
      0006F6 01                     979 	.db	1
      0006F7 53 44 43 43 20 76 65   980 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      000710 00                     981 	.db	0
      000711 02                     982 	.uleb128	2
      000712 00 00 00 75            983 	.dw	0,117
      000716 5F 64 65 6C 61 79 5F   984 	.ascii "_delay_cycl"
             63 79 63 6C
      000721 00                     985 	.db	0
      000722 00 00 88 54            986 	.dw	0,(__delay_cycl)
      000726 00 00 88 61            987 	.dw	0,(XFspse_stm8$_delay_cycl$0$0+1)
      00072A 00                     988 	.db	0
      00072B 00 00 17 78            989 	.dw	0,(Ldebug_loc_start+316)
      00072F 03                     990 	.uleb128	3
      000730 02                     991 	.db	2
      000731 91                     992 	.db	145
      000732 02                     993 	.sleb128	2
      000733 5F 5F 74 69 63 6B 73   994 	.ascii "__ticks"
      00073A 00                     995 	.db	0
      00073B 00 00 00 75            996 	.dw	0,117
      00073F 04                     997 	.uleb128	4
      000740 00 00 88 58            998 	.dw	0,(Sspse_stm8$_delay_cycl$4)
      000744 00 00 88 59            999 	.dw	0,(Sspse_stm8$_delay_cycl$6)
      000748 00                    1000 	.uleb128	0
      000749 05                    1001 	.uleb128	5
      00074A 75 6E 73 69 67 6E 65  1002 	.ascii "unsigned int"
             64 20 69 6E 74
      000756 00                    1003 	.db	0
      000757 02                    1004 	.db	2
      000758 07                    1005 	.db	7
      000759 02                    1006 	.uleb128	2
      00075A 00 00 01 0C           1007 	.dw	0,268
      00075E 5F 64 65 6C 61 79 5F  1008 	.ascii "_delay_us"
             75 73
      000767 00                    1009 	.db	0
      000768 00 00 88 61           1010 	.dw	0,(__delay_us)
      00076C 00 00 88 99           1011 	.dw	0,(XFspse_stm8$_delay_us$0$0+1)
      000770 00                    1012 	.db	0
      000771 00 00 16 BC           1013 	.dw	0,(Ldebug_loc_start+128)
      000775 06                    1014 	.uleb128	6
      000776 00 00 00 75           1015 	.dw	0,117
      00077A 03                    1016 	.uleb128	3
      00077B 02                    1017 	.db	2
      00077C 91                    1018 	.db	145
      00077D 02                    1019 	.sleb128	2
      00077E 5F 5F 75 73           1020 	.ascii "__us"
      000782 00                    1021 	.db	0
      000783 00 00 00 A1           1022 	.dw	0,161
      000787 07                    1023 	.uleb128	7
      000788 00 00 88 61           1024 	.dw	0,(Sspse_stm8$_delay_us$14)
      00078C 00 00 88 8D           1025 	.dw	0,(Sspse_stm8$_delay_us$31)
      000790 08                    1026 	.uleb128	8
      000791 00 00 00 F1           1027 	.dw	0,241
      000795 00 00 88 8E           1028 	.dw	0,(Sspse_stm8$_delay_us$32)
      000799 09                    1029 	.uleb128	9
      00079A 00 00 00 DC           1030 	.dw	0,220
      00079E 00 00 88 8E           1031 	.dw	0,(Sspse_stm8$_delay_us$33)
      0007A2 00 00 88 98           1032 	.dw	0,(Sspse_stm8$_delay_us$38)
      0007A6 04                    1033 	.uleb128	4
      0007A7 00 00 88 90           1034 	.dw	0,(Sspse_stm8$_delay_us$36)
      0007AB 00 00 88 91           1035 	.dw	0,(Sspse_stm8$_delay_us$37)
      0007AF 00                    1036 	.uleb128	0
      0007B0 0A                    1037 	.uleb128	10
      0007B1 06                    1038 	.db	6
      0007B2 52                    1039 	.db	82
      0007B3 93                    1040 	.db	147
      0007B4 01                    1041 	.uleb128	1
      0007B5 51                    1042 	.db	81
      0007B6 93                    1043 	.db	147
      0007B7 01                    1044 	.uleb128	1
      0007B8 5F 5F 74 69 63 6B 73  1045 	.ascii "__ticks"
      0007BF 00                    1046 	.db	0
      0007C0 00 00 00 75           1047 	.dw	0,117
      0007C4 00                    1048 	.uleb128	0
      0007C5 0A                    1049 	.uleb128	10
      0007C6 06                    1050 	.db	6
      0007C7 52                    1051 	.db	82
      0007C8 93                    1052 	.db	147
      0007C9 01                    1053 	.uleb128	1
      0007CA 51                    1054 	.db	81
      0007CB 93                    1055 	.db	147
      0007CC 01                    1056 	.uleb128	1
      0007CD 5F 5F 31 33 31 30 37  1057 	.ascii "__1310720010"
             32 30 30 31 30
      0007D9 00                    1058 	.db	0
      0007DA 00 00 00 75           1059 	.dw	0,117
      0007DE 00                    1060 	.uleb128	0
      0007DF 00                    1061 	.uleb128	0
      0007E0 0B                    1062 	.uleb128	11
      0007E1 00 00 01 40           1063 	.dw	0,320
      0007E5 41 44 43 5F 67 65 74  1064 	.ascii "ADC_get"
      0007EC 00                    1065 	.db	0
      0007ED 00 00 88 99           1066 	.dw	0,(_ADC_get)
      0007F1 00 00 88 BD           1067 	.dw	0,(XG$ADC_get$0$0+1)
      0007F5 01                    1068 	.db	1
      0007F6 00 00 16 90           1069 	.dw	0,(Ldebug_loc_start+84)
      0007FA 00 00 00 75           1070 	.dw	0,117
      0007FE 03                    1071 	.uleb128	3
      0007FF 02                    1072 	.db	2
      000800 91                    1073 	.db	145
      000801 02                    1074 	.sleb128	2
      000802 41 44 43 32 5F 43 68  1075 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      00080E 00                    1076 	.db	0
      00080F 00 00 01 40           1077 	.dw	0,320
      000813 00                    1078 	.uleb128	0
      000814 05                    1079 	.uleb128	5
      000815 75 6E 73 69 67 6E 65  1080 	.ascii "unsigned char"
             64 20 63 68 61 72
      000822 00                    1081 	.db	0
      000823 01                    1082 	.db	1
      000824 08                    1083 	.db	8
      000825 02                    1084 	.uleb128	2
      000826 00 00 01 98           1085 	.dw	0,408
      00082A 41 44 43 32 5F 53 65  1086 	.ascii "ADC2_Select_Channel"
             6C 65 63 74 5F 43 68
             61 6E 6E 65 6C
      00083D 00                    1087 	.db	0
      00083E 00 00 88 BD           1088 	.dw	0,(_ADC2_Select_Channel)
      000842 00 00 88 D0           1089 	.dw	0,(XG$ADC2_Select_Channel$0$0+1)
      000846 01                    1090 	.db	1
      000847 00 00 16 64           1091 	.dw	0,(Ldebug_loc_start+40)
      00084B 03                    1092 	.uleb128	3
      00084C 02                    1093 	.db	2
      00084D 91                    1094 	.db	145
      00084E 02                    1095 	.sleb128	2
      00084F 41 44 43 32 5F 43 68  1096 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      00085B 00                    1097 	.db	0
      00085C 00 00 01 40           1098 	.dw	0,320
      000860 0A                    1099 	.uleb128	10
      000861 01                    1100 	.db	1
      000862 50                    1101 	.db	80
      000863 74 6D 70              1102 	.ascii "tmp"
      000866 00                    1103 	.db	0
      000867 00 00 01 40           1104 	.dw	0,320
      00086B 00                    1105 	.uleb128	0
      00086C 02                    1106 	.uleb128	2
      00086D 00 00 01 E1           1107 	.dw	0,481
      000871 41 44 43 32 5F 41 6C  1108 	.ascii "ADC2_AlignConfig"
             69 67 6E 43 6F 6E 66
             69 67
      000881 00                    1109 	.db	0
      000882 00 00 88 D0           1110 	.dw	0,(_ADC2_AlignConfig)
      000886 00 00 88 E8           1111 	.dw	0,(XG$ADC2_AlignConfig$0$0+1)
      00088A 01                    1112 	.db	1
      00088B 00 00 16 50           1113 	.dw	0,(Ldebug_loc_start+20)
      00088F 03                    1114 	.uleb128	3
      000890 02                    1115 	.db	2
      000891 91                    1116 	.db	145
      000892 02                    1117 	.sleb128	2
      000893 41 44 43 32 5F 41 6C  1118 	.ascii "ADC2_Align"
             69 67 6E
      00089D 00                    1119 	.db	0
      00089E 00 00 01 40           1120 	.dw	0,320
      0008A2 04                    1121 	.uleb128	4
      0008A3 00 00 88 DA           1122 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$69)
      0008A7 00 00 88 DF           1123 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$71)
      0008AB 04                    1124 	.uleb128	4
      0008AC 00 00 88 E2           1125 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$72)
      0008B0 00 00 88 E7           1126 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$74)
      0008B4 00                    1127 	.uleb128	0
      0008B5 0C                    1128 	.uleb128	12
      0008B6 41 44 43 32 5F 53 74  1129 	.ascii "ADC2_Startup_Wait"
             61 72 74 75 70 5F 57
             61 69 74
      0008C7 00                    1130 	.db	0
      0008C8 00 00 88 E8           1131 	.dw	0,(_ADC2_Startup_Wait)
      0008CC 00 00 88 F6           1132 	.dw	0,(XG$ADC2_Startup_Wait$0$0+1)
      0008D0 01                    1133 	.db	1
      0008D1 00 00 16 3C           1134 	.dw	0,(Ldebug_loc_start)
      0008D5 0D                    1135 	.uleb128	13
      0008D6 0E                    1136 	.uleb128	14
      0008D7 00 00 02 67           1137 	.dw	0,615
      0008DB 0E                    1138 	.uleb128	14
      0008DC 00 00 02 59           1139 	.dw	0,601
      0008E0 0D                    1140 	.uleb128	13
      0008E1 08                    1141 	.uleb128	8
      0008E2 00 00 02 42           1142 	.dw	0,578
      0008E6 00 00 88 E8           1143 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$80)
      0008EA 09                    1144 	.uleb128	9
      0008EB 00 00 02 2D           1145 	.dw	0,557
      0008EF 00 00 88 EB           1146 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$81)
      0008F3 00 00 88 F5           1147 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$86)
      0008F7 04                    1148 	.uleb128	4
      0008F8 00 00 88 ED           1149 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$84)
      0008FC 00 00 88 EE           1150 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$85)
      000900 00                    1151 	.uleb128	0
      000901 0A                    1152 	.uleb128	10
      000902 06                    1153 	.db	6
      000903 52                    1154 	.db	82
      000904 93                    1155 	.db	147
      000905 01                    1156 	.uleb128	1
      000906 51                    1157 	.db	81
      000907 93                    1158 	.db	147
      000908 01                    1159 	.uleb128	1
      000909 5F 5F 74 69 63 6B 73  1160 	.ascii "__ticks"
      000910 00                    1161 	.db	0
      000911 00 00 00 75           1162 	.dw	0,117
      000915 00                    1163 	.uleb128	0
      000916 0A                    1164 	.uleb128	10
      000917 02                    1165 	.db	2
      000918 91                    1166 	.db	145
      000919 00                    1167 	.sleb128	0
      00091A 5F 5F 31 33 31 30 37  1168 	.ascii "__1310720010"
             32 30 30 31 30
      000926 00                    1169 	.db	0
      000927 00 00 00 75           1170 	.dw	0,117
      00092B 00                    1171 	.uleb128	0
      00092C 00                    1172 	.uleb128	0
      00092D 0A                    1173 	.uleb128	10
      00092E 02                    1174 	.db	2
      00092F 91                    1175 	.db	145
      000930 00                    1176 	.sleb128	0
      000931 5F 5F 75 73           1177 	.ascii "__us"
      000935 00                    1178 	.db	0
      000936 00 00 00 A1           1179 	.dw	0,161
      00093A 00                    1180 	.uleb128	0
      00093B 0A                    1181 	.uleb128	10
      00093C 02                    1182 	.db	2
      00093D 91                    1183 	.db	145
      00093E 00                    1184 	.sleb128	0
      00093F 5F 5F 31 33 31 30 37  1185 	.ascii "__1310720012"
             32 30 30 31 32
      00094B 00                    1186 	.db	0
      00094C 00 00 00 A1           1187 	.dw	0,161
      000950 00                    1188 	.uleb128	0
      000951 00                    1189 	.uleb128	0
      000952 00                    1190 	.uleb128	0
      000953 00                    1191 	.uleb128	0
      000954 00                    1192 	.uleb128	0
      000955                       1193 Ldebug_info_end:
                                   1194 
                                   1195 	.area .debug_pubnames (NOLOAD)
      000089 00 00 00 5D           1196 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00008D                       1197 Ldebug_pubnames_start:
      00008D 00 02                 1198 	.dw	2
      00008F 00 00 06 D4           1199 	.dw	0,(Ldebug_info_start-4)
      000093 00 00 02 81           1200 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000097 00 00 01 0C           1201 	.dw	0,268
      00009B 41 44 43 5F 67 65 74  1202 	.ascii "ADC_get"
      0000A2 00                    1203 	.db	0
      0000A3 00 00 01 51           1204 	.dw	0,337
      0000A7 41 44 43 32 5F 53 65  1205 	.ascii "ADC2_Select_Channel"
             6C 65 63 74 5F 43 68
             61 6E 6E 65 6C
      0000BA 00                    1206 	.db	0
      0000BB 00 00 01 98           1207 	.dw	0,408
      0000BF 41 44 43 32 5F 41 6C  1208 	.ascii "ADC2_AlignConfig"
             69 67 6E 43 6F 6E 66
             69 67
      0000CF 00                    1209 	.db	0
      0000D0 00 00 01 E1           1210 	.dw	0,481
      0000D4 41 44 43 32 5F 53 74  1211 	.ascii "ADC2_Startup_Wait"
             61 72 74 75 70 5F 57
             61 69 74
      0000E5 00                    1212 	.db	0
      0000E6 00 00 00 00           1213 	.dw	0,0
      0000EA                       1214 Ldebug_pubnames_end:
                                   1215 
                                   1216 	.area .debug_frame (NOLOAD)
      000DE3 00 00                 1217 	.dw	0
      000DE5 00 0E                 1218 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000DE7                       1219 Ldebug_CIE0_start:
      000DE7 FF FF                 1220 	.dw	0xffff
      000DE9 FF FF                 1221 	.dw	0xffff
      000DEB 01                    1222 	.db	1
      000DEC 00                    1223 	.db	0
      000DED 01                    1224 	.uleb128	1
      000DEE 7F                    1225 	.sleb128	-1
      000DEF 09                    1226 	.db	9
      000DF0 0C                    1227 	.db	12
      000DF1 08                    1228 	.uleb128	8
      000DF2 02                    1229 	.uleb128	2
      000DF3 89                    1230 	.db	137
      000DF4 01                    1231 	.uleb128	1
      000DF5                       1232 Ldebug_CIE0_end:
      000DF5 00 00 00 13           1233 	.dw	0,19
      000DF9 00 00 0D E3           1234 	.dw	0,(Ldebug_CIE0_start-4)
      000DFD 00 00 88 E8           1235 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)	;initial loc
      000E01 00 00 00 0E           1236 	.dw	0,Sspse_stm8$ADC2_Startup_Wait$90-Sspse_stm8$ADC2_Startup_Wait$79
      000E05 01                    1237 	.db	1
      000E06 00 00 88 E8           1238 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
      000E0A 0E                    1239 	.db	14
      000E0B 02                    1240 	.uleb128	2
                                   1241 
                                   1242 	.area .debug_frame (NOLOAD)
      000E0C 00 00                 1243 	.dw	0
      000E0E 00 0E                 1244 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000E10                       1245 Ldebug_CIE1_start:
      000E10 FF FF                 1246 	.dw	0xffff
      000E12 FF FF                 1247 	.dw	0xffff
      000E14 01                    1248 	.db	1
      000E15 00                    1249 	.db	0
      000E16 01                    1250 	.uleb128	1
      000E17 7F                    1251 	.sleb128	-1
      000E18 09                    1252 	.db	9
      000E19 0C                    1253 	.db	12
      000E1A 08                    1254 	.uleb128	8
      000E1B 02                    1255 	.uleb128	2
      000E1C 89                    1256 	.db	137
      000E1D 01                    1257 	.uleb128	1
      000E1E                       1258 Ldebug_CIE1_end:
      000E1E 00 00 00 13           1259 	.dw	0,19
      000E22 00 00 0E 0C           1260 	.dw	0,(Ldebug_CIE1_start-4)
      000E26 00 00 88 D0           1261 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)	;initial loc
      000E2A 00 00 00 18           1262 	.dw	0,Sspse_stm8$ADC2_AlignConfig$77-Sspse_stm8$ADC2_AlignConfig$66
      000E2E 01                    1263 	.db	1
      000E2F 00 00 88 D0           1264 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
      000E33 0E                    1265 	.db	14
      000E34 02                    1266 	.uleb128	2
                                   1267 
                                   1268 	.area .debug_frame (NOLOAD)
      000E35 00 00                 1269 	.dw	0
      000E37 00 0E                 1270 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000E39                       1271 Ldebug_CIE2_start:
      000E39 FF FF                 1272 	.dw	0xffff
      000E3B FF FF                 1273 	.dw	0xffff
      000E3D 01                    1274 	.db	1
      000E3E 00                    1275 	.db	0
      000E3F 01                    1276 	.uleb128	1
      000E40 7F                    1277 	.sleb128	-1
      000E41 09                    1278 	.db	9
      000E42 0C                    1279 	.db	12
      000E43 08                    1280 	.uleb128	8
      000E44 02                    1281 	.uleb128	2
      000E45 89                    1282 	.db	137
      000E46 01                    1283 	.uleb128	1
      000E47                       1284 Ldebug_CIE2_end:
      000E47 00 00 00 21           1285 	.dw	0,33
      000E4B 00 00 0E 35           1286 	.dw	0,(Ldebug_CIE2_start-4)
      000E4F 00 00 88 BD           1287 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)	;initial loc
      000E53 00 00 00 13           1288 	.dw	0,Sspse_stm8$ADC2_Select_Channel$64-Sspse_stm8$ADC2_Select_Channel$56
      000E57 01                    1289 	.db	1
      000E58 00 00 88 BD           1290 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
      000E5C 0E                    1291 	.db	14
      000E5D 02                    1292 	.uleb128	2
      000E5E 01                    1293 	.db	1
      000E5F 00 00 88 BE           1294 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      000E63 0E                    1295 	.db	14
      000E64 03                    1296 	.uleb128	3
      000E65 01                    1297 	.db	1
      000E66 00 00 88 CF           1298 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      000E6A 0E                    1299 	.db	14
      000E6B 02                    1300 	.uleb128	2
                                   1301 
                                   1302 	.area .debug_frame (NOLOAD)
      000E6C 00 00                 1303 	.dw	0
      000E6E 00 0E                 1304 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000E70                       1305 Ldebug_CIE3_start:
      000E70 FF FF                 1306 	.dw	0xffff
      000E72 FF FF                 1307 	.dw	0xffff
      000E74 01                    1308 	.db	1
      000E75 00                    1309 	.db	0
      000E76 01                    1310 	.uleb128	1
      000E77 7F                    1311 	.sleb128	-1
      000E78 09                    1312 	.db	9
      000E79 0C                    1313 	.db	12
      000E7A 08                    1314 	.uleb128	8
      000E7B 02                    1315 	.uleb128	2
      000E7C 89                    1316 	.db	137
      000E7D 01                    1317 	.uleb128	1
      000E7E                       1318 Ldebug_CIE3_end:
      000E7E 00 00 00 21           1319 	.dw	0,33
      000E82 00 00 0E 6C           1320 	.dw	0,(Ldebug_CIE3_start-4)
      000E86 00 00 88 99           1321 	.dw	0,(Sspse_stm8$ADC_get$44)	;initial loc
      000E8A 00 00 00 24           1322 	.dw	0,Sspse_stm8$ADC_get$54-Sspse_stm8$ADC_get$44
      000E8E 01                    1323 	.db	1
      000E8F 00 00 88 99           1324 	.dw	0,(Sspse_stm8$ADC_get$44)
      000E93 0E                    1325 	.db	14
      000E94 02                    1326 	.uleb128	2
      000E95 01                    1327 	.db	1
      000E96 00 00 88 9C           1328 	.dw	0,(Sspse_stm8$ADC_get$46)
      000E9A 0E                    1329 	.db	14
      000E9B 03                    1330 	.uleb128	3
      000E9C 01                    1331 	.db	1
      000E9D 00 00 88 A0           1332 	.dw	0,(Sspse_stm8$ADC_get$47)
      000EA1 0E                    1333 	.db	14
      000EA2 02                    1334 	.uleb128	2
                                   1335 
                                   1336 	.area .debug_frame (NOLOAD)
      000EA3 00 00                 1337 	.dw	0
      000EA5 00 0E                 1338 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000EA7                       1339 Ldebug_CIE4_start:
      000EA7 FF FF                 1340 	.dw	0xffff
      000EA9 FF FF                 1341 	.dw	0xffff
      000EAB 01                    1342 	.db	1
      000EAC 00                    1343 	.db	0
      000EAD 01                    1344 	.uleb128	1
      000EAE 7F                    1345 	.sleb128	-1
      000EAF 09                    1346 	.db	9
      000EB0 0C                    1347 	.db	12
      000EB1 08                    1348 	.uleb128	8
      000EB2 02                    1349 	.uleb128	2
      000EB3 89                    1350 	.db	137
      000EB4 01                    1351 	.uleb128	1
      000EB5                       1352 Ldebug_CIE4_end:
      000EB5 00 00 00 75           1353 	.dw	0,117
      000EB9 00 00 0E A3           1354 	.dw	0,(Ldebug_CIE4_start-4)
      000EBD 00 00 88 61           1355 	.dw	0,(Sspse_stm8$_delay_us$13)	;initial loc
      000EC1 00 00 00 38           1356 	.dw	0,Sspse_stm8$_delay_us$42-Sspse_stm8$_delay_us$13
      000EC5 01                    1357 	.db	1
      000EC6 00 00 88 61           1358 	.dw	0,(Sspse_stm8$_delay_us$13)
      000ECA 0E                    1359 	.db	14
      000ECB 02                    1360 	.uleb128	2
      000ECC 01                    1361 	.db	1
      000ECD 00 00 88 66           1362 	.dw	0,(Sspse_stm8$_delay_us$15)
      000ED1 0E                    1363 	.db	14
      000ED2 04                    1364 	.uleb128	4
      000ED3 01                    1365 	.db	1
      000ED4 00 00 88 67           1366 	.dw	0,(Sspse_stm8$_delay_us$16)
      000ED8 0E                    1367 	.db	14
      000ED9 06                    1368 	.uleb128	6
      000EDA 01                    1369 	.db	1
      000EDB 00 00 88 69           1370 	.dw	0,(Sspse_stm8$_delay_us$17)
      000EDF 0E                    1371 	.db	14
      000EE0 07                    1372 	.uleb128	7
      000EE1 01                    1373 	.db	1
      000EE2 00 00 88 6B           1374 	.dw	0,(Sspse_stm8$_delay_us$18)
      000EE6 0E                    1375 	.db	14
      000EE7 08                    1376 	.uleb128	8
      000EE8 01                    1377 	.db	1
      000EE9 00 00 88 6D           1378 	.dw	0,(Sspse_stm8$_delay_us$19)
      000EED 0E                    1379 	.db	14
      000EEE 09                    1380 	.uleb128	9
      000EEF 01                    1381 	.db	1
      000EF0 00 00 88 6F           1382 	.dw	0,(Sspse_stm8$_delay_us$20)
      000EF4 0E                    1383 	.db	14
      000EF5 0A                    1384 	.uleb128	10
      000EF6 01                    1385 	.db	1
      000EF7 00 00 88 74           1386 	.dw	0,(Sspse_stm8$_delay_us$21)
      000EFB 0E                    1387 	.db	14
      000EFC 02                    1388 	.uleb128	2
      000EFD 01                    1389 	.db	1
      000EFE 00 00 88 76           1390 	.dw	0,(Sspse_stm8$_delay_us$23)
      000F02 0E                    1391 	.db	14
      000F03 03                    1392 	.uleb128	3
      000F04 01                    1393 	.db	1
      000F05 00 00 88 78           1394 	.dw	0,(Sspse_stm8$_delay_us$24)
      000F09 0E                    1395 	.db	14
      000F0A 04                    1396 	.uleb128	4
      000F0B 01                    1397 	.db	1
      000F0C 00 00 88 7A           1398 	.dw	0,(Sspse_stm8$_delay_us$25)
      000F10 0E                    1399 	.db	14
      000F11 05                    1400 	.uleb128	5
      000F12 01                    1401 	.db	1
      000F13 00 00 88 7C           1402 	.dw	0,(Sspse_stm8$_delay_us$26)
      000F17 0E                    1403 	.db	14
      000F18 06                    1404 	.uleb128	6
      000F19 01                    1405 	.db	1
      000F1A 00 00 88 7D           1406 	.dw	0,(Sspse_stm8$_delay_us$27)
      000F1E 0E                    1407 	.db	14
      000F1F 08                    1408 	.uleb128	8
      000F20 01                    1409 	.db	1
      000F21 00 00 88 7F           1410 	.dw	0,(Sspse_stm8$_delay_us$28)
      000F25 0E                    1411 	.db	14
      000F26 0A                    1412 	.uleb128	10
      000F27 01                    1413 	.db	1
      000F28 00 00 88 84           1414 	.dw	0,(Sspse_stm8$_delay_us$29)
      000F2C 0E                    1415 	.db	14
      000F2D 02                    1416 	.uleb128	2
                                   1417 
                                   1418 	.area .debug_frame (NOLOAD)
      000F2E 00 00                 1419 	.dw	0
      000F30 00 0E                 1420 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000F32                       1421 Ldebug_CIE5_start:
      000F32 FF FF                 1422 	.dw	0xffff
      000F34 FF FF                 1423 	.dw	0xffff
      000F36 01                    1424 	.db	1
      000F37 00                    1425 	.db	0
      000F38 01                    1426 	.uleb128	1
      000F39 7F                    1427 	.sleb128	-1
      000F3A 09                    1428 	.db	9
      000F3B 0C                    1429 	.db	12
      000F3C 08                    1430 	.uleb128	8
      000F3D 02                    1431 	.uleb128	2
      000F3E 89                    1432 	.db	137
      000F3F 01                    1433 	.uleb128	1
      000F40                       1434 Ldebug_CIE5_end:
      000F40 00 00 00 13           1435 	.dw	0,19
      000F44 00 00 0F 2E           1436 	.dw	0,(Ldebug_CIE5_start-4)
      000F48 00 00 88 54           1437 	.dw	0,(Sspse_stm8$_delay_cycl$1)	;initial loc
      000F4C 00 00 00 0D           1438 	.dw	0,Sspse_stm8$_delay_cycl$11-Sspse_stm8$_delay_cycl$1
      000F50 01                    1439 	.db	1
      000F51 00 00 88 54           1440 	.dw	0,(Sspse_stm8$_delay_cycl$1)
      000F55 0E                    1441 	.db	14
      000F56 02                    1442 	.uleb128	2
