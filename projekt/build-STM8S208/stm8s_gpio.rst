                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_DeInit
                                     12 	.globl _GPIO_Init
                                     13 	.globl _GPIO_Write
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_WriteLow
                                     16 	.globl _GPIO_WriteReverse
                                     17 	.globl _GPIO_ReadOutputData
                                     18 	.globl _GPIO_ReadInputData
                                     19 	.globl _GPIO_ReadInputPin
                                     20 	.globl _GPIO_ExternalPullUpConfig
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                           000000    58 	Sstm8s_gpio$GPIO_DeInit$0 ==.
                                     59 ;	../SPL/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ; genLabel
                                     61 ;	-----------------------------------------
                                     62 ;	 function GPIO_DeInit
                                     63 ;	-----------------------------------------
                                     64 ;	Register assignment might be sub-optimal.
                                     65 ;	Stack space usage: 0 bytes.
      0095FC                         66 _GPIO_DeInit:
                           000000    67 	Sstm8s_gpio$GPIO_DeInit$1 ==.
                           000000    68 	Sstm8s_gpio$GPIO_DeInit$2 ==.
                                     69 ;	../SPL/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
                                     70 ; genAssign
      0095FC 16 03            [ 2]   71 	ldw	y, (0x03, sp)
                                     72 ; genPointerSet
      0095FE 90 7F            [ 1]   73 	clr	(y)
                           000004    74 	Sstm8s_gpio$GPIO_DeInit$3 ==.
                                     75 ;	../SPL/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
                                     76 ; genPlus
      009600 93               [ 1]   77 	ldw	x, y
      009601 5C               [ 1]   78 	incw	x
      009602 5C               [ 1]   79 	incw	x
                                     80 ; genPointerSet
      009603 7F               [ 1]   81 	clr	(x)
                           000008    82 	Sstm8s_gpio$GPIO_DeInit$4 ==.
                                     83 ;	../SPL/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
                                     84 ; genPlus
      009604 93               [ 1]   85 	ldw	x, y
      009605 1C 00 03         [ 2]   86 	addw	x, #0x0003
                                     87 ; genPointerSet
      009608 7F               [ 1]   88 	clr	(x)
                           00000D    89 	Sstm8s_gpio$GPIO_DeInit$5 ==.
                                     90 ;	../SPL/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
                                     91 ; genPlus
      009609 93               [ 1]   92 	ldw	x, y
      00960A 1C 00 04         [ 2]   93 	addw	x, #0x0004
                                     94 ; genPointerSet
      00960D 7F               [ 1]   95 	clr	(x)
                                     96 ; genLabel
      00960E                         97 00101$:
                           000012    98 	Sstm8s_gpio$GPIO_DeInit$6 ==.
                                     99 ;	../SPL/src/stm8s_gpio.c: 59: }
                                    100 ; genEndFunction
                           000012   101 	Sstm8s_gpio$GPIO_DeInit$7 ==.
                           000012   102 	XG$GPIO_DeInit$0$0 ==.
      00960E 81               [ 4]  103 	ret
                           000013   104 	Sstm8s_gpio$GPIO_DeInit$8 ==.
                           000013   105 	Sstm8s_gpio$GPIO_Init$9 ==.
                                    106 ;	../SPL/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                    107 ; genLabel
                                    108 ;	-----------------------------------------
                                    109 ;	 function GPIO_Init
                                    110 ;	-----------------------------------------
                                    111 ;	Register assignment might be sub-optimal.
                                    112 ;	Stack space usage: 5 bytes.
      00960F                        113 _GPIO_Init:
                           000013   114 	Sstm8s_gpio$GPIO_Init$10 ==.
      00960F 52 05            [ 2]  115 	sub	sp, #5
                           000015   116 	Sstm8s_gpio$GPIO_Init$11 ==.
                           000015   117 	Sstm8s_gpio$GPIO_Init$12 ==.
                                    118 ;	../SPL/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    119 ; genAssign
      009611 16 08            [ 2]  120 	ldw	y, (0x08, sp)
                                    121 ; genPlus
      009613 93               [ 1]  122 	ldw	x, y
      009614 1C 00 04         [ 2]  123 	addw	x, #0x0004
      009617 1F 01            [ 2]  124 	ldw	(0x01, sp), x
                                    125 ; genPointerGet
      009619 1E 01            [ 2]  126 	ldw	x, (0x01, sp)
      00961B F6               [ 1]  127 	ld	a, (x)
                                    128 ; genCpl
      00961C 88               [ 1]  129 	push	a
                           000021   130 	Sstm8s_gpio$GPIO_Init$13 ==.
      00961D 7B 0B            [ 1]  131 	ld	a, (0x0b, sp)
      00961F 43               [ 1]  132 	cpl	a
      009620 6B 04            [ 1]  133 	ld	(0x04, sp), a
      009622 84               [ 1]  134 	pop	a
                           000027   135 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    136 ; genAnd
      009623 14 03            [ 1]  137 	and	a, (0x03, sp)
                                    138 ; genPointerSet
      009625 1E 01            [ 2]  139 	ldw	x, (0x01, sp)
      009627 F7               [ 1]  140 	ld	(x), a
                           00002C   141 	Sstm8s_gpio$GPIO_Init$15 ==.
                                    142 ;	../SPL/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    143 ; genPlus
      009628 93               [ 1]  144 	ldw	x, y
      009629 5C               [ 1]  145 	incw	x
      00962A 5C               [ 1]  146 	incw	x
      00962B 1F 04            [ 2]  147 	ldw	(0x04, sp), x
                           000031   148 	Sstm8s_gpio$GPIO_Init$16 ==.
                                    149 ;	../SPL/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
                                    150 ; genAnd
      00962D 0D 0B            [ 1]  151 	tnz	(0x0b, sp)
      00962F 2B 03            [ 1]  152 	jrmi	00135$
      009631 CC 96 57         [ 2]  153 	jp	00105$
      009634                        154 00135$:
                                    155 ; skipping generated iCode
                           000038   156 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    157 ;	../SPL/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    158 ; genPointerGet
      009634 90 F6            [ 1]  159 	ld	a, (y)
                           00003A   160 	Sstm8s_gpio$GPIO_Init$18 ==.
                           00003A   161 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    162 ;	../SPL/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
                                    163 ; genAnd
      009636 88               [ 1]  164 	push	a
                           00003B   165 	Sstm8s_gpio$GPIO_Init$20 ==.
      009637 7B 0C            [ 1]  166 	ld	a, (0x0c, sp)
      009639 A5 10            [ 1]  167 	bcp	a, #0x10
      00963B 84               [ 1]  168 	pop	a
                           000040   169 	Sstm8s_gpio$GPIO_Init$21 ==.
      00963C 26 03            [ 1]  170 	jrne	00136$
      00963E CC 96 48         [ 2]  171 	jp	00102$
      009641                        172 00136$:
                                    173 ; skipping generated iCode
                           000045   174 	Sstm8s_gpio$GPIO_Init$22 ==.
                           000045   175 	Sstm8s_gpio$GPIO_Init$23 ==.
                                    176 ;	../SPL/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    177 ; genOr
      009641 1A 0A            [ 1]  178 	or	a, (0x0a, sp)
                                    179 ; genPointerSet
      009643 90 F7            [ 1]  180 	ld	(y), a
                           000049   181 	Sstm8s_gpio$GPIO_Init$24 ==.
                                    182 ; genGoto
      009645 CC 96 4C         [ 2]  183 	jp	00103$
                                    184 ; genLabel
      009648                        185 00102$:
                           00004C   186 	Sstm8s_gpio$GPIO_Init$25 ==.
                           00004C   187 	Sstm8s_gpio$GPIO_Init$26 ==.
                                    188 ;	../SPL/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
                                    189 ; genAnd
      009648 14 03            [ 1]  190 	and	a, (0x03, sp)
                                    191 ; genPointerSet
      00964A 90 F7            [ 1]  192 	ld	(y), a
                           000050   193 	Sstm8s_gpio$GPIO_Init$27 ==.
                                    194 ; genLabel
      00964C                        195 00103$:
                           000050   196 	Sstm8s_gpio$GPIO_Init$28 ==.
                                    197 ;	../SPL/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    198 ; genPointerGet
      00964C 1E 04            [ 2]  199 	ldw	x, (0x04, sp)
      00964E F6               [ 1]  200 	ld	a, (x)
                                    201 ; genOr
      00964F 1A 0A            [ 1]  202 	or	a, (0x0a, sp)
                                    203 ; genPointerSet
      009651 1E 04            [ 2]  204 	ldw	x, (0x04, sp)
      009653 F7               [ 1]  205 	ld	(x), a
                           000058   206 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    207 ; genGoto
      009654 CC 96 5F         [ 2]  208 	jp	00106$
                                    209 ; genLabel
      009657                        210 00105$:
                           00005B   211 	Sstm8s_gpio$GPIO_Init$30 ==.
                           00005B   212 	Sstm8s_gpio$GPIO_Init$31 ==.
                                    213 ;	../SPL/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
                                    214 ; genPointerGet
      009657 1E 04            [ 2]  215 	ldw	x, (0x04, sp)
      009659 F6               [ 1]  216 	ld	a, (x)
                                    217 ; genAnd
      00965A 14 03            [ 1]  218 	and	a, (0x03, sp)
                                    219 ; genPointerSet
      00965C 1E 04            [ 2]  220 	ldw	x, (0x04, sp)
      00965E F7               [ 1]  221 	ld	(x), a
                           000063   222 	Sstm8s_gpio$GPIO_Init$32 ==.
                                    223 ; genLabel
      00965F                        224 00106$:
                           000063   225 	Sstm8s_gpio$GPIO_Init$33 ==.
                                    226 ;	../SPL/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    227 ; genPlus
      00965F 93               [ 1]  228 	ldw	x, y
      009660 1C 00 03         [ 2]  229 	addw	x, #0x0003
                                    230 ; genPointerGet
      009663 F6               [ 1]  231 	ld	a, (x)
                           000068   232 	Sstm8s_gpio$GPIO_Init$34 ==.
                                    233 ;	../SPL/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
                                    234 ; genAnd
      009664 88               [ 1]  235 	push	a
                           000069   236 	Sstm8s_gpio$GPIO_Init$35 ==.
      009665 7B 0C            [ 1]  237 	ld	a, (0x0c, sp)
      009667 A5 40            [ 1]  238 	bcp	a, #0x40
      009669 84               [ 1]  239 	pop	a
                           00006E   240 	Sstm8s_gpio$GPIO_Init$36 ==.
      00966A 26 03            [ 1]  241 	jrne	00137$
      00966C CC 96 75         [ 2]  242 	jp	00108$
      00966F                        243 00137$:
                                    244 ; skipping generated iCode
                           000073   245 	Sstm8s_gpio$GPIO_Init$37 ==.
                           000073   246 	Sstm8s_gpio$GPIO_Init$38 ==.
                                    247 ;	../SPL/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    248 ; genOr
      00966F 1A 0A            [ 1]  249 	or	a, (0x0a, sp)
                                    250 ; genPointerSet
      009671 F7               [ 1]  251 	ld	(x), a
                           000076   252 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    253 ; genGoto
      009672 CC 96 78         [ 2]  254 	jp	00109$
                                    255 ; genLabel
      009675                        256 00108$:
                           000079   257 	Sstm8s_gpio$GPIO_Init$40 ==.
                           000079   258 	Sstm8s_gpio$GPIO_Init$41 ==.
                                    259 ;	../SPL/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    260 ; genAnd
      009675 14 03            [ 1]  261 	and	a, (0x03, sp)
                                    262 ; genPointerSet
      009677 F7               [ 1]  263 	ld	(x), a
                           00007C   264 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    265 ; genLabel
      009678                        266 00109$:
                           00007C   267 	Sstm8s_gpio$GPIO_Init$43 ==.
                                    268 ;	../SPL/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    269 ; genPointerGet
      009678 1E 01            [ 2]  270 	ldw	x, (0x01, sp)
      00967A F6               [ 1]  271 	ld	a, (x)
                           00007F   272 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    273 ;	../SPL/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
                                    274 ; genAnd
      00967B 88               [ 1]  275 	push	a
                           000080   276 	Sstm8s_gpio$GPIO_Init$45 ==.
      00967C 7B 0C            [ 1]  277 	ld	a, (0x0c, sp)
      00967E A5 20            [ 1]  278 	bcp	a, #0x20
      009680 84               [ 1]  279 	pop	a
                           000085   280 	Sstm8s_gpio$GPIO_Init$46 ==.
      009681 26 03            [ 1]  281 	jrne	00138$
      009683 CC 96 8E         [ 2]  282 	jp	00111$
      009686                        283 00138$:
                                    284 ; skipping generated iCode
                           00008A   285 	Sstm8s_gpio$GPIO_Init$47 ==.
                           00008A   286 	Sstm8s_gpio$GPIO_Init$48 ==.
                                    287 ;	../SPL/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
                                    288 ; genOr
      009686 1A 0A            [ 1]  289 	or	a, (0x0a, sp)
                                    290 ; genPointerSet
      009688 1E 01            [ 2]  291 	ldw	x, (0x01, sp)
      00968A F7               [ 1]  292 	ld	(x), a
                           00008F   293 	Sstm8s_gpio$GPIO_Init$49 ==.
                                    294 ; genGoto
      00968B CC 96 93         [ 2]  295 	jp	00113$
                                    296 ; genLabel
      00968E                        297 00111$:
                           000092   298 	Sstm8s_gpio$GPIO_Init$50 ==.
                           000092   299 	Sstm8s_gpio$GPIO_Init$51 ==.
                                    300 ;	../SPL/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    301 ; genAnd
      00968E 14 03            [ 1]  302 	and	a, (0x03, sp)
                                    303 ; genPointerSet
      009690 1E 01            [ 2]  304 	ldw	x, (0x01, sp)
      009692 F7               [ 1]  305 	ld	(x), a
                           000097   306 	Sstm8s_gpio$GPIO_Init$52 ==.
                                    307 ; genLabel
      009693                        308 00113$:
                           000097   309 	Sstm8s_gpio$GPIO_Init$53 ==.
                                    310 ;	../SPL/src/stm8s_gpio.c: 131: }
                                    311 ; genEndFunction
      009693 5B 05            [ 2]  312 	addw	sp, #5
                           000099   313 	Sstm8s_gpio$GPIO_Init$54 ==.
                           000099   314 	Sstm8s_gpio$GPIO_Init$55 ==.
                           000099   315 	XG$GPIO_Init$0$0 ==.
      009695 81               [ 4]  316 	ret
                           00009A   317 	Sstm8s_gpio$GPIO_Init$56 ==.
                           00009A   318 	Sstm8s_gpio$GPIO_Write$57 ==.
                                    319 ;	../SPL/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    320 ; genLabel
                                    321 ;	-----------------------------------------
                                    322 ;	 function GPIO_Write
                                    323 ;	-----------------------------------------
                                    324 ;	Register assignment is optimal.
                                    325 ;	Stack space usage: 0 bytes.
      009696                        326 _GPIO_Write:
                           00009A   327 	Sstm8s_gpio$GPIO_Write$58 ==.
                           00009A   328 	Sstm8s_gpio$GPIO_Write$59 ==.
                                    329 ;	../SPL/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
                                    330 ; genAssign
      009696 1E 03            [ 2]  331 	ldw	x, (0x03, sp)
                                    332 ; genPointerSet
      009698 7B 05            [ 1]  333 	ld	a, (0x05, sp)
      00969A F7               [ 1]  334 	ld	(x), a
                                    335 ; genLabel
      00969B                        336 00101$:
                           00009F   337 	Sstm8s_gpio$GPIO_Write$60 ==.
                                    338 ;	../SPL/src/stm8s_gpio.c: 144: }
                                    339 ; genEndFunction
                           00009F   340 	Sstm8s_gpio$GPIO_Write$61 ==.
                           00009F   341 	XG$GPIO_Write$0$0 ==.
      00969B 81               [ 4]  342 	ret
                           0000A0   343 	Sstm8s_gpio$GPIO_Write$62 ==.
                           0000A0   344 	Sstm8s_gpio$GPIO_WriteHigh$63 ==.
                                    345 ;	../SPL/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    346 ; genLabel
                                    347 ;	-----------------------------------------
                                    348 ;	 function GPIO_WriteHigh
                                    349 ;	-----------------------------------------
                                    350 ;	Register assignment is optimal.
                                    351 ;	Stack space usage: 0 bytes.
      00969C                        352 _GPIO_WriteHigh:
                           0000A0   353 	Sstm8s_gpio$GPIO_WriteHigh$64 ==.
                           0000A0   354 	Sstm8s_gpio$GPIO_WriteHigh$65 ==.
                                    355 ;	../SPL/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
                                    356 ; genAssign
      00969C 1E 03            [ 2]  357 	ldw	x, (0x03, sp)
                                    358 ; genPointerGet
      00969E F6               [ 1]  359 	ld	a, (x)
                                    360 ; genOr
      00969F 1A 05            [ 1]  361 	or	a, (0x05, sp)
                                    362 ; genPointerSet
      0096A1 F7               [ 1]  363 	ld	(x), a
                                    364 ; genLabel
      0096A2                        365 00101$:
                           0000A6   366 	Sstm8s_gpio$GPIO_WriteHigh$66 ==.
                                    367 ;	../SPL/src/stm8s_gpio.c: 157: }
                                    368 ; genEndFunction
                           0000A6   369 	Sstm8s_gpio$GPIO_WriteHigh$67 ==.
                           0000A6   370 	XG$GPIO_WriteHigh$0$0 ==.
      0096A2 81               [ 4]  371 	ret
                           0000A7   372 	Sstm8s_gpio$GPIO_WriteHigh$68 ==.
                           0000A7   373 	Sstm8s_gpio$GPIO_WriteLow$69 ==.
                                    374 ;	../SPL/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    375 ; genLabel
                                    376 ;	-----------------------------------------
                                    377 ;	 function GPIO_WriteLow
                                    378 ;	-----------------------------------------
                                    379 ;	Register assignment is optimal.
                                    380 ;	Stack space usage: 1 bytes.
      0096A3                        381 _GPIO_WriteLow:
                           0000A7   382 	Sstm8s_gpio$GPIO_WriteLow$70 ==.
      0096A3 88               [ 1]  383 	push	a
                           0000A8   384 	Sstm8s_gpio$GPIO_WriteLow$71 ==.
                           0000A8   385 	Sstm8s_gpio$GPIO_WriteLow$72 ==.
                                    386 ;	../SPL/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
                                    387 ; genAssign
      0096A4 1E 04            [ 2]  388 	ldw	x, (0x04, sp)
                                    389 ; genPointerGet
      0096A6 F6               [ 1]  390 	ld	a, (x)
      0096A7 6B 01            [ 1]  391 	ld	(0x01, sp), a
                                    392 ; genCpl
      0096A9 7B 06            [ 1]  393 	ld	a, (0x06, sp)
      0096AB 43               [ 1]  394 	cpl	a
                                    395 ; genAnd
      0096AC 14 01            [ 1]  396 	and	a, (0x01, sp)
                                    397 ; genPointerSet
      0096AE F7               [ 1]  398 	ld	(x), a
                                    399 ; genLabel
      0096AF                        400 00101$:
                           0000B3   401 	Sstm8s_gpio$GPIO_WriteLow$73 ==.
                                    402 ;	../SPL/src/stm8s_gpio.c: 170: }
                                    403 ; genEndFunction
      0096AF 84               [ 1]  404 	pop	a
                           0000B4   405 	Sstm8s_gpio$GPIO_WriteLow$74 ==.
                           0000B4   406 	Sstm8s_gpio$GPIO_WriteLow$75 ==.
                           0000B4   407 	XG$GPIO_WriteLow$0$0 ==.
      0096B0 81               [ 4]  408 	ret
                           0000B5   409 	Sstm8s_gpio$GPIO_WriteLow$76 ==.
                           0000B5   410 	Sstm8s_gpio$GPIO_WriteReverse$77 ==.
                                    411 ;	../SPL/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    412 ; genLabel
                                    413 ;	-----------------------------------------
                                    414 ;	 function GPIO_WriteReverse
                                    415 ;	-----------------------------------------
                                    416 ;	Register assignment is optimal.
                                    417 ;	Stack space usage: 0 bytes.
      0096B1                        418 _GPIO_WriteReverse:
                           0000B5   419 	Sstm8s_gpio$GPIO_WriteReverse$78 ==.
                           0000B5   420 	Sstm8s_gpio$GPIO_WriteReverse$79 ==.
                                    421 ;	../SPL/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
                                    422 ; genAssign
      0096B1 1E 03            [ 2]  423 	ldw	x, (0x03, sp)
                                    424 ; genPointerGet
      0096B3 F6               [ 1]  425 	ld	a, (x)
                                    426 ; genXor
      0096B4 18 05            [ 1]  427 	xor	a, (0x05, sp)
                                    428 ; genPointerSet
      0096B6 F7               [ 1]  429 	ld	(x), a
                                    430 ; genLabel
      0096B7                        431 00101$:
                           0000BB   432 	Sstm8s_gpio$GPIO_WriteReverse$80 ==.
                                    433 ;	../SPL/src/stm8s_gpio.c: 183: }
                                    434 ; genEndFunction
                           0000BB   435 	Sstm8s_gpio$GPIO_WriteReverse$81 ==.
                           0000BB   436 	XG$GPIO_WriteReverse$0$0 ==.
      0096B7 81               [ 4]  437 	ret
                           0000BC   438 	Sstm8s_gpio$GPIO_WriteReverse$82 ==.
                           0000BC   439 	Sstm8s_gpio$GPIO_ReadOutputData$83 ==.
                                    440 ;	../SPL/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    441 ; genLabel
                                    442 ;	-----------------------------------------
                                    443 ;	 function GPIO_ReadOutputData
                                    444 ;	-----------------------------------------
                                    445 ;	Register assignment is optimal.
                                    446 ;	Stack space usage: 0 bytes.
      0096B8                        447 _GPIO_ReadOutputData:
                           0000BC   448 	Sstm8s_gpio$GPIO_ReadOutputData$84 ==.
                           0000BC   449 	Sstm8s_gpio$GPIO_ReadOutputData$85 ==.
                                    450 ;	../SPL/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
                                    451 ; genAssign
      0096B8 1E 03            [ 2]  452 	ldw	x, (0x03, sp)
                                    453 ; genPointerGet
      0096BA F6               [ 1]  454 	ld	a, (x)
                                    455 ; genReturn
                                    456 ; genLabel
      0096BB                        457 00101$:
                           0000BF   458 	Sstm8s_gpio$GPIO_ReadOutputData$86 ==.
                                    459 ;	../SPL/src/stm8s_gpio.c: 194: }
                                    460 ; genEndFunction
                           0000BF   461 	Sstm8s_gpio$GPIO_ReadOutputData$87 ==.
                           0000BF   462 	XG$GPIO_ReadOutputData$0$0 ==.
      0096BB 81               [ 4]  463 	ret
                           0000C0   464 	Sstm8s_gpio$GPIO_ReadOutputData$88 ==.
                           0000C0   465 	Sstm8s_gpio$GPIO_ReadInputData$89 ==.
                                    466 ;	../SPL/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    467 ; genLabel
                                    468 ;	-----------------------------------------
                                    469 ;	 function GPIO_ReadInputData
                                    470 ;	-----------------------------------------
                                    471 ;	Register assignment might be sub-optimal.
                                    472 ;	Stack space usage: 0 bytes.
      0096BC                        473 _GPIO_ReadInputData:
                           0000C0   474 	Sstm8s_gpio$GPIO_ReadInputData$90 ==.
                           0000C0   475 	Sstm8s_gpio$GPIO_ReadInputData$91 ==.
                                    476 ;	../SPL/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
                                    477 ; genAssign
      0096BC 1E 03            [ 2]  478 	ldw	x, (0x03, sp)
                                    479 ; genAssign
                                    480 ; genPointerGet
      0096BE E6 01            [ 1]  481 	ld	a, (0x1, x)
                                    482 ; genReturn
                                    483 ; genLabel
      0096C0                        484 00101$:
                           0000C4   485 	Sstm8s_gpio$GPIO_ReadInputData$92 ==.
                                    486 ;	../SPL/src/stm8s_gpio.c: 205: }
                                    487 ; genEndFunction
                           0000C4   488 	Sstm8s_gpio$GPIO_ReadInputData$93 ==.
                           0000C4   489 	XG$GPIO_ReadInputData$0$0 ==.
      0096C0 81               [ 4]  490 	ret
                           0000C5   491 	Sstm8s_gpio$GPIO_ReadInputData$94 ==.
                           0000C5   492 	Sstm8s_gpio$GPIO_ReadInputPin$95 ==.
                                    493 ;	../SPL/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    494 ; genLabel
                                    495 ;	-----------------------------------------
                                    496 ;	 function GPIO_ReadInputPin
                                    497 ;	-----------------------------------------
                                    498 ;	Register assignment might be sub-optimal.
                                    499 ;	Stack space usage: 0 bytes.
      0096C1                        500 _GPIO_ReadInputPin:
                           0000C5   501 	Sstm8s_gpio$GPIO_ReadInputPin$96 ==.
                           0000C5   502 	Sstm8s_gpio$GPIO_ReadInputPin$97 ==.
                                    503 ;	../SPL/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
                                    504 ; genAssign
      0096C1 1E 03            [ 2]  505 	ldw	x, (0x03, sp)
                                    506 ; genAssign
                                    507 ; genPointerGet
      0096C3 E6 01            [ 1]  508 	ld	a, (0x1, x)
                                    509 ; genAnd
      0096C5 14 05            [ 1]  510 	and	a, (0x05, sp)
                                    511 ; genReturn
                                    512 ; genLabel
      0096C7                        513 00101$:
                           0000CB   514 	Sstm8s_gpio$GPIO_ReadInputPin$98 ==.
                                    515 ;	../SPL/src/stm8s_gpio.c: 216: }
                                    516 ; genEndFunction
                           0000CB   517 	Sstm8s_gpio$GPIO_ReadInputPin$99 ==.
                           0000CB   518 	XG$GPIO_ReadInputPin$0$0 ==.
      0096C7 81               [ 4]  519 	ret
                           0000CC   520 	Sstm8s_gpio$GPIO_ReadInputPin$100 ==.
                           0000CC   521 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$101 ==.
                                    522 ;	../SPL/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    523 ; genLabel
                                    524 ;	-----------------------------------------
                                    525 ;	 function GPIO_ExternalPullUpConfig
                                    526 ;	-----------------------------------------
                                    527 ;	Register assignment might be sub-optimal.
                                    528 ;	Stack space usage: 1 bytes.
      0096C8                        529 _GPIO_ExternalPullUpConfig:
                           0000CC   530 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$102 ==.
      0096C8 88               [ 1]  531 	push	a
                           0000CD   532 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$103 ==.
                           0000CD   533 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$104 ==.
                                    534 ;	../SPL/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    535 ; genAssign
      0096C9 1E 04            [ 2]  536 	ldw	x, (0x04, sp)
                                    537 ; genPlus
      0096CB 1C 00 03         [ 2]  538 	addw	x, #0x0003
                                    539 ; genPointerGet
      0096CE F6               [ 1]  540 	ld	a, (x)
                           0000D3   541 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$105 ==.
                                    542 ;	../SPL/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
                                    543 ; genIfx
      0096CF 0D 07            [ 1]  544 	tnz	(0x07, sp)
      0096D1 26 03            [ 1]  545 	jrne	00111$
      0096D3 CC 96 DC         [ 2]  546 	jp	00102$
      0096D6                        547 00111$:
                           0000DA   548 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$106 ==.
                           0000DA   549 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$107 ==.
                                    550 ;	../SPL/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    551 ; genOr
      0096D6 1A 06            [ 1]  552 	or	a, (0x06, sp)
                                    553 ; genPointerSet
      0096D8 F7               [ 1]  554 	ld	(x), a
                           0000DD   555 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$108 ==.
                                    556 ; genGoto
      0096D9 CC 96 E6         [ 2]  557 	jp	00104$
                                    558 ; genLabel
      0096DC                        559 00102$:
                           0000E0   560 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$109 ==.
                           0000E0   561 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$110 ==.
                                    562 ;	../SPL/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    563 ; genCpl
      0096DC 88               [ 1]  564 	push	a
                           0000E1   565 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$111 ==.
      0096DD 7B 07            [ 1]  566 	ld	a, (0x07, sp)
      0096DF 43               [ 1]  567 	cpl	a
      0096E0 6B 02            [ 1]  568 	ld	(0x02, sp), a
      0096E2 84               [ 1]  569 	pop	a
                           0000E7   570 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$112 ==.
                                    571 ; genAnd
      0096E3 14 01            [ 1]  572 	and	a, (0x01, sp)
                                    573 ; genPointerSet
      0096E5 F7               [ 1]  574 	ld	(x), a
                           0000EA   575 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$113 ==.
                                    576 ; genLabel
      0096E6                        577 00104$:
                           0000EA   578 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$114 ==.
                                    579 ;	../SPL/src/stm8s_gpio.c: 238: }
                                    580 ; genEndFunction
      0096E6 84               [ 1]  581 	pop	a
                           0000EB   582 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$115 ==.
                           0000EB   583 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$116 ==.
                           0000EB   584 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      0096E7 81               [ 4]  585 	ret
                           0000EC   586 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$117 ==.
                                    587 	.area CODE
                                    588 	.area CONST
                                    589 	.area INITIALIZER
                                    590 	.area CABS (ABS)
                                    591 
                                    592 	.area .debug_line (NOLOAD)
      0018D9 00 00 02 23            593 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0018DD                        594 Ldebug_line_start:
      0018DD 00 02                  595 	.dw	2
      0018DF 00 00 00 78            596 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0018E3 01                     597 	.db	1
      0018E4 01                     598 	.db	1
      0018E5 FB                     599 	.db	-5
      0018E6 0F                     600 	.db	15
      0018E7 0A                     601 	.db	10
      0018E8 00                     602 	.db	0
      0018E9 01                     603 	.db	1
      0018EA 01                     604 	.db	1
      0018EB 01                     605 	.db	1
      0018EC 01                     606 	.db	1
      0018ED 00                     607 	.db	0
      0018EE 00                     608 	.db	0
      0018EF 00                     609 	.db	0
      0018F0 01                     610 	.db	1
      0018F1 43 3A 5C 50 72 6F 67   611 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001919 00                     612 	.db	0
      00191A 43 3A 5C 50 72 6F 67   613 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00193D 00                     614 	.db	0
      00193E 00                     615 	.db	0
      00193F 2E 2E 2F 53 50 4C 2F   616 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      001956 00                     617 	.db	0
      001957 00                     618 	.uleb128	0
      001958 00                     619 	.uleb128	0
      001959 00                     620 	.uleb128	0
      00195A 00                     621 	.db	0
      00195B                        622 Ldebug_line_stmt:
      00195B 00                     623 	.db	0
      00195C 05                     624 	.uleb128	5
      00195D 02                     625 	.db	2
      00195E 00 00 95 FC            626 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
      001962 03                     627 	.db	3
      001963 34                     628 	.sleb128	52
      001964 01                     629 	.db	1
      001965 09                     630 	.db	9
      001966 00 00                  631 	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
      001968 03                     632 	.db	3
      001969 02                     633 	.sleb128	2
      00196A 01                     634 	.db	1
      00196B 09                     635 	.db	9
      00196C 00 04                  636 	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
      00196E 03                     637 	.db	3
      00196F 01                     638 	.sleb128	1
      001970 01                     639 	.db	1
      001971 09                     640 	.db	9
      001972 00 04                  641 	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
      001974 03                     642 	.db	3
      001975 01                     643 	.sleb128	1
      001976 01                     644 	.db	1
      001977 09                     645 	.db	9
      001978 00 05                  646 	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
      00197A 03                     647 	.db	3
      00197B 01                     648 	.sleb128	1
      00197C 01                     649 	.db	1
      00197D 09                     650 	.db	9
      00197E 00 05                  651 	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
      001980 03                     652 	.db	3
      001981 01                     653 	.sleb128	1
      001982 01                     654 	.db	1
      001983 09                     655 	.db	9
      001984 00 01                  656 	.dw	1+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
      001986 00                     657 	.db	0
      001987 01                     658 	.uleb128	1
      001988 01                     659 	.db	1
      001989 00                     660 	.db	0
      00198A 05                     661 	.uleb128	5
      00198B 02                     662 	.db	2
      00198C 00 00 96 0F            663 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      001990 03                     664 	.db	3
      001991 C6 00                  665 	.sleb128	70
      001993 01                     666 	.db	1
      001994 09                     667 	.db	9
      001995 00 02                  668 	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$9
      001997 03                     669 	.db	3
      001998 0A                     670 	.sleb128	10
      001999 01                     671 	.db	1
      00199A 09                     672 	.db	9
      00199B 00 17                  673 	.dw	Sstm8s_gpio$GPIO_Init$15-Sstm8s_gpio$GPIO_Init$12
      00199D 03                     674 	.db	3
      00199E 11                     675 	.sleb128	17
      00199F 01                     676 	.db	1
      0019A0 09                     677 	.db	9
      0019A1 00 05                  678 	.dw	Sstm8s_gpio$GPIO_Init$16-Sstm8s_gpio$GPIO_Init$15
      0019A3 03                     679 	.db	3
      0019A4 75                     680 	.sleb128	-11
      0019A5 01                     681 	.db	1
      0019A6 09                     682 	.db	9
      0019A7 00 07                  683 	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$16
      0019A9 03                     684 	.db	3
      0019AA 04                     685 	.sleb128	4
      0019AB 01                     686 	.db	1
      0019AC 09                     687 	.db	9
      0019AD 00 02                  688 	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$17
      0019AF 03                     689 	.db	3
      0019B0 7E                     690 	.sleb128	-2
      0019B1 01                     691 	.db	1
      0019B2 09                     692 	.db	9
      0019B3 00 0B                  693 	.dw	Sstm8s_gpio$GPIO_Init$23-Sstm8s_gpio$GPIO_Init$19
      0019B5 03                     694 	.db	3
      0019B6 02                     695 	.sleb128	2
      0019B7 01                     696 	.db	1
      0019B8 09                     697 	.db	9
      0019B9 00 07                  698 	.dw	Sstm8s_gpio$GPIO_Init$26-Sstm8s_gpio$GPIO_Init$23
      0019BB 03                     699 	.db	3
      0019BC 04                     700 	.sleb128	4
      0019BD 01                     701 	.db	1
      0019BE 09                     702 	.db	9
      0019BF 00 04                  703 	.dw	Sstm8s_gpio$GPIO_Init$28-Sstm8s_gpio$GPIO_Init$26
      0019C1 03                     704 	.db	3
      0019C2 03                     705 	.sleb128	3
      0019C3 01                     706 	.db	1
      0019C4 09                     707 	.db	9
      0019C5 00 0B                  708 	.dw	Sstm8s_gpio$GPIO_Init$31-Sstm8s_gpio$GPIO_Init$28
      0019C7 03                     709 	.db	3
      0019C8 05                     710 	.sleb128	5
      0019C9 01                     711 	.db	1
      0019CA 09                     712 	.db	9
      0019CB 00 08                  713 	.dw	Sstm8s_gpio$GPIO_Init$33-Sstm8s_gpio$GPIO_Init$31
      0019CD 03                     714 	.db	3
      0019CE 09                     715 	.sleb128	9
      0019CF 01                     716 	.db	1
      0019D0 09                     717 	.db	9
      0019D1 00 05                  718 	.dw	Sstm8s_gpio$GPIO_Init$34-Sstm8s_gpio$GPIO_Init$33
      0019D3 03                     719 	.db	3
      0019D4 7E                     720 	.sleb128	-2
      0019D5 01                     721 	.db	1
      0019D6 09                     722 	.db	9
      0019D7 00 0B                  723 	.dw	Sstm8s_gpio$GPIO_Init$38-Sstm8s_gpio$GPIO_Init$34
      0019D9 03                     724 	.db	3
      0019DA 02                     725 	.sleb128	2
      0019DB 01                     726 	.db	1
      0019DC 09                     727 	.db	9
      0019DD 00 06                  728 	.dw	Sstm8s_gpio$GPIO_Init$41-Sstm8s_gpio$GPIO_Init$38
      0019DF 03                     729 	.db	3
      0019E0 04                     730 	.sleb128	4
      0019E1 01                     731 	.db	1
      0019E2 09                     732 	.db	9
      0019E3 00 03                  733 	.dw	Sstm8s_gpio$GPIO_Init$43-Sstm8s_gpio$GPIO_Init$41
      0019E5 03                     734 	.db	3
      0019E6 5D                     735 	.sleb128	-35
      0019E7 01                     736 	.db	1
      0019E8 09                     737 	.db	9
      0019E9 00 03                  738 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$43
      0019EB 03                     739 	.db	3
      0019EC 2A                     740 	.sleb128	42
      0019ED 01                     741 	.db	1
      0019EE 09                     742 	.db	9
      0019EF 00 0B                  743 	.dw	Sstm8s_gpio$GPIO_Init$48-Sstm8s_gpio$GPIO_Init$44
      0019F1 03                     744 	.db	3
      0019F2 02                     745 	.sleb128	2
      0019F3 01                     746 	.db	1
      0019F4 09                     747 	.db	9
      0019F5 00 08                  748 	.dw	Sstm8s_gpio$GPIO_Init$51-Sstm8s_gpio$GPIO_Init$48
      0019F7 03                     749 	.db	3
      0019F8 04                     750 	.sleb128	4
      0019F9 01                     751 	.db	1
      0019FA 09                     752 	.db	9
      0019FB 00 05                  753 	.dw	Sstm8s_gpio$GPIO_Init$53-Sstm8s_gpio$GPIO_Init$51
      0019FD 03                     754 	.db	3
      0019FE 02                     755 	.sleb128	2
      0019FF 01                     756 	.db	1
      001A00 09                     757 	.db	9
      001A01 00 03                  758 	.dw	1+Sstm8s_gpio$GPIO_Init$55-Sstm8s_gpio$GPIO_Init$53
      001A03 00                     759 	.db	0
      001A04 01                     760 	.uleb128	1
      001A05 01                     761 	.db	1
      001A06 00                     762 	.db	0
      001A07 05                     763 	.uleb128	5
      001A08 02                     764 	.db	2
      001A09 00 00 96 96            765 	.dw	0,(Sstm8s_gpio$GPIO_Write$57)
      001A0D 03                     766 	.db	3
      001A0E 8C 01                  767 	.sleb128	140
      001A10 01                     768 	.db	1
      001A11 09                     769 	.db	9
      001A12 00 00                  770 	.dw	Sstm8s_gpio$GPIO_Write$59-Sstm8s_gpio$GPIO_Write$57
      001A14 03                     771 	.db	3
      001A15 02                     772 	.sleb128	2
      001A16 01                     773 	.db	1
      001A17 09                     774 	.db	9
      001A18 00 05                  775 	.dw	Sstm8s_gpio$GPIO_Write$60-Sstm8s_gpio$GPIO_Write$59
      001A1A 03                     776 	.db	3
      001A1B 01                     777 	.sleb128	1
      001A1C 01                     778 	.db	1
      001A1D 09                     779 	.db	9
      001A1E 00 01                  780 	.dw	1+Sstm8s_gpio$GPIO_Write$61-Sstm8s_gpio$GPIO_Write$60
      001A20 00                     781 	.db	0
      001A21 01                     782 	.uleb128	1
      001A22 01                     783 	.db	1
      001A23 00                     784 	.db	0
      001A24 05                     785 	.uleb128	5
      001A25 02                     786 	.db	2
      001A26 00 00 96 9C            787 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$63)
      001A2A 03                     788 	.db	3
      001A2B 99 01                  789 	.sleb128	153
      001A2D 01                     790 	.db	1
      001A2E 09                     791 	.db	9
      001A2F 00 00                  792 	.dw	Sstm8s_gpio$GPIO_WriteHigh$65-Sstm8s_gpio$GPIO_WriteHigh$63
      001A31 03                     793 	.db	3
      001A32 02                     794 	.sleb128	2
      001A33 01                     795 	.db	1
      001A34 09                     796 	.db	9
      001A35 00 06                  797 	.dw	Sstm8s_gpio$GPIO_WriteHigh$66-Sstm8s_gpio$GPIO_WriteHigh$65
      001A37 03                     798 	.db	3
      001A38 01                     799 	.sleb128	1
      001A39 01                     800 	.db	1
      001A3A 09                     801 	.db	9
      001A3B 00 01                  802 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$67-Sstm8s_gpio$GPIO_WriteHigh$66
      001A3D 00                     803 	.db	0
      001A3E 01                     804 	.uleb128	1
      001A3F 01                     805 	.db	1
      001A40 00                     806 	.db	0
      001A41 05                     807 	.uleb128	5
      001A42 02                     808 	.db	2
      001A43 00 00 96 A3            809 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$69)
      001A47 03                     810 	.db	3
      001A48 A6 01                  811 	.sleb128	166
      001A4A 01                     812 	.db	1
      001A4B 09                     813 	.db	9
      001A4C 00 01                  814 	.dw	Sstm8s_gpio$GPIO_WriteLow$72-Sstm8s_gpio$GPIO_WriteLow$69
      001A4E 03                     815 	.db	3
      001A4F 02                     816 	.sleb128	2
      001A50 01                     817 	.db	1
      001A51 09                     818 	.db	9
      001A52 00 0B                  819 	.dw	Sstm8s_gpio$GPIO_WriteLow$73-Sstm8s_gpio$GPIO_WriteLow$72
      001A54 03                     820 	.db	3
      001A55 01                     821 	.sleb128	1
      001A56 01                     822 	.db	1
      001A57 09                     823 	.db	9
      001A58 00 02                  824 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$75-Sstm8s_gpio$GPIO_WriteLow$73
      001A5A 00                     825 	.db	0
      001A5B 01                     826 	.uleb128	1
      001A5C 01                     827 	.db	1
      001A5D 00                     828 	.db	0
      001A5E 05                     829 	.uleb128	5
      001A5F 02                     830 	.db	2
      001A60 00 00 96 B1            831 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$77)
      001A64 03                     832 	.db	3
      001A65 B3 01                  833 	.sleb128	179
      001A67 01                     834 	.db	1
      001A68 09                     835 	.db	9
      001A69 00 00                  836 	.dw	Sstm8s_gpio$GPIO_WriteReverse$79-Sstm8s_gpio$GPIO_WriteReverse$77
      001A6B 03                     837 	.db	3
      001A6C 02                     838 	.sleb128	2
      001A6D 01                     839 	.db	1
      001A6E 09                     840 	.db	9
      001A6F 00 06                  841 	.dw	Sstm8s_gpio$GPIO_WriteReverse$80-Sstm8s_gpio$GPIO_WriteReverse$79
      001A71 03                     842 	.db	3
      001A72 01                     843 	.sleb128	1
      001A73 01                     844 	.db	1
      001A74 09                     845 	.db	9
      001A75 00 01                  846 	.dw	1+Sstm8s_gpio$GPIO_WriteReverse$81-Sstm8s_gpio$GPIO_WriteReverse$80
      001A77 00                     847 	.db	0
      001A78 01                     848 	.uleb128	1
      001A79 01                     849 	.db	1
      001A7A 00                     850 	.db	0
      001A7B 05                     851 	.uleb128	5
      001A7C 02                     852 	.db	2
      001A7D 00 00 96 B8            853 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$83)
      001A81 03                     854 	.db	3
      001A82 BE 01                  855 	.sleb128	190
      001A84 01                     856 	.db	1
      001A85 09                     857 	.db	9
      001A86 00 00                  858 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$85-Sstm8s_gpio$GPIO_ReadOutputData$83
      001A88 03                     859 	.db	3
      001A89 02                     860 	.sleb128	2
      001A8A 01                     861 	.db	1
      001A8B 09                     862 	.db	9
      001A8C 00 03                  863 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$86-Sstm8s_gpio$GPIO_ReadOutputData$85
      001A8E 03                     864 	.db	3
      001A8F 01                     865 	.sleb128	1
      001A90 01                     866 	.db	1
      001A91 09                     867 	.db	9
      001A92 00 01                  868 	.dw	1+Sstm8s_gpio$GPIO_ReadOutputData$87-Sstm8s_gpio$GPIO_ReadOutputData$86
      001A94 00                     869 	.db	0
      001A95 01                     870 	.uleb128	1
      001A96 01                     871 	.db	1
      001A97 00                     872 	.db	0
      001A98 05                     873 	.uleb128	5
      001A99 02                     874 	.db	2
      001A9A 00 00 96 BC            875 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$89)
      001A9E 03                     876 	.db	3
      001A9F C9 01                  877 	.sleb128	201
      001AA1 01                     878 	.db	1
      001AA2 09                     879 	.db	9
      001AA3 00 00                  880 	.dw	Sstm8s_gpio$GPIO_ReadInputData$91-Sstm8s_gpio$GPIO_ReadInputData$89
      001AA5 03                     881 	.db	3
      001AA6 02                     882 	.sleb128	2
      001AA7 01                     883 	.db	1
      001AA8 09                     884 	.db	9
      001AA9 00 04                  885 	.dw	Sstm8s_gpio$GPIO_ReadInputData$92-Sstm8s_gpio$GPIO_ReadInputData$91
      001AAB 03                     886 	.db	3
      001AAC 01                     887 	.sleb128	1
      001AAD 01                     888 	.db	1
      001AAE 09                     889 	.db	9
      001AAF 00 01                  890 	.dw	1+Sstm8s_gpio$GPIO_ReadInputData$93-Sstm8s_gpio$GPIO_ReadInputData$92
      001AB1 00                     891 	.db	0
      001AB2 01                     892 	.uleb128	1
      001AB3 01                     893 	.db	1
      001AB4 00                     894 	.db	0
      001AB5 05                     895 	.uleb128	5
      001AB6 02                     896 	.db	2
      001AB7 00 00 96 C1            897 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$95)
      001ABB 03                     898 	.db	3
      001ABC D4 01                  899 	.sleb128	212
      001ABE 01                     900 	.db	1
      001ABF 09                     901 	.db	9
      001AC0 00 00                  902 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$97-Sstm8s_gpio$GPIO_ReadInputPin$95
      001AC2 03                     903 	.db	3
      001AC3 02                     904 	.sleb128	2
      001AC4 01                     905 	.db	1
      001AC5 09                     906 	.db	9
      001AC6 00 06                  907 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$98-Sstm8s_gpio$GPIO_ReadInputPin$97
      001AC8 03                     908 	.db	3
      001AC9 01                     909 	.sleb128	1
      001ACA 01                     910 	.db	1
      001ACB 09                     911 	.db	9
      001ACC 00 01                  912 	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$99-Sstm8s_gpio$GPIO_ReadInputPin$98
      001ACE 00                     913 	.db	0
      001ACF 01                     914 	.uleb128	1
      001AD0 01                     915 	.db	1
      001AD1 00                     916 	.db	0
      001AD2 05                     917 	.uleb128	5
      001AD3 02                     918 	.db	2
      001AD4 00 00 96 C8            919 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$101)
      001AD8 03                     920 	.db	3
      001AD9 E0 01                  921 	.sleb128	224
      001ADB 01                     922 	.db	1
      001ADC 09                     923 	.db	9
      001ADD 00 01                  924 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$104-Sstm8s_gpio$GPIO_ExternalPullUpConfig$101
      001ADF 03                     925 	.db	3
      001AE0 08                     926 	.sleb128	8
      001AE1 01                     927 	.db	1
      001AE2 09                     928 	.db	9
      001AE3 00 06                  929 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$105-Sstm8s_gpio$GPIO_ExternalPullUpConfig$104
      001AE5 03                     930 	.db	3
      001AE6 7E                     931 	.sleb128	-2
      001AE7 01                     932 	.db	1
      001AE8 09                     933 	.db	9
      001AE9 00 07                  934 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$107-Sstm8s_gpio$GPIO_ExternalPullUpConfig$105
      001AEB 03                     935 	.db	3
      001AEC 02                     936 	.sleb128	2
      001AED 01                     937 	.db	1
      001AEE 09                     938 	.db	9
      001AEF 00 06                  939 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$110-Sstm8s_gpio$GPIO_ExternalPullUpConfig$107
      001AF1 03                     940 	.db	3
      001AF2 03                     941 	.sleb128	3
      001AF3 01                     942 	.db	1
      001AF4 09                     943 	.db	9
      001AF5 00 0A                  944 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$114-Sstm8s_gpio$GPIO_ExternalPullUpConfig$110
      001AF7 03                     945 	.db	3
      001AF8 02                     946 	.sleb128	2
      001AF9 01                     947 	.db	1
      001AFA 09                     948 	.db	9
      001AFB 00 02                  949 	.dw	1+Sstm8s_gpio$GPIO_ExternalPullUpConfig$116-Sstm8s_gpio$GPIO_ExternalPullUpConfig$114
      001AFD 00                     950 	.db	0
      001AFE 01                     951 	.uleb128	1
      001AFF 01                     952 	.db	1
      001B00                        953 Ldebug_line_end:
                                    954 
                                    955 	.area .debug_loc (NOLOAD)
      0036F0                        956 Ldebug_loc_start:
      0036F0 00 00 96 E7            957 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      0036F4 00 00 96 E8            958 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$117)
      0036F8 00 02                  959 	.dw	2
      0036FA 78                     960 	.db	120
      0036FB 01                     961 	.sleb128	1
      0036FC 00 00 96 E3            962 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      003700 00 00 96 E7            963 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      003704 00 02                  964 	.dw	2
      003706 78                     965 	.db	120
      003707 02                     966 	.sleb128	2
      003708 00 00 96 DD            967 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      00370C 00 00 96 E3            968 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      003710 00 02                  969 	.dw	2
      003712 78                     970 	.db	120
      003713 03                     971 	.sleb128	3
      003714 00 00 96 C9            972 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      003718 00 00 96 DD            973 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      00371C 00 02                  974 	.dw	2
      00371E 78                     975 	.db	120
      00371F 02                     976 	.sleb128	2
      003720 00 00 96 C8            977 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)
      003724 00 00 96 C9            978 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      003728 00 02                  979 	.dw	2
      00372A 78                     980 	.db	120
      00372B 01                     981 	.sleb128	1
      00372C 00 00 00 00            982 	.dw	0,0
      003730 00 00 00 00            983 	.dw	0,0
      003734 00 00 96 C1            984 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)
      003738 00 00 96 C8            985 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$100)
      00373C 00 02                  986 	.dw	2
      00373E 78                     987 	.db	120
      00373F 01                     988 	.sleb128	1
      003740 00 00 00 00            989 	.dw	0,0
      003744 00 00 00 00            990 	.dw	0,0
      003748 00 00 96 BC            991 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)
      00374C 00 00 96 C1            992 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$94)
      003750 00 02                  993 	.dw	2
      003752 78                     994 	.db	120
      003753 01                     995 	.sleb128	1
      003754 00 00 00 00            996 	.dw	0,0
      003758 00 00 00 00            997 	.dw	0,0
      00375C 00 00 96 B8            998 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)
      003760 00 00 96 BC            999 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$88)
      003764 00 02                 1000 	.dw	2
      003766 78                    1001 	.db	120
      003767 01                    1002 	.sleb128	1
      003768 00 00 00 00           1003 	.dw	0,0
      00376C 00 00 00 00           1004 	.dw	0,0
      003770 00 00 96 B1           1005 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)
      003774 00 00 96 B8           1006 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$82)
      003778 00 02                 1007 	.dw	2
      00377A 78                    1008 	.db	120
      00377B 01                    1009 	.sleb128	1
      00377C 00 00 00 00           1010 	.dw	0,0
      003780 00 00 00 00           1011 	.dw	0,0
      003784 00 00 96 B0           1012 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      003788 00 00 96 B1           1013 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$76)
      00378C 00 02                 1014 	.dw	2
      00378E 78                    1015 	.db	120
      00378F 01                    1016 	.sleb128	1
      003790 00 00 96 A4           1017 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      003794 00 00 96 B0           1018 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      003798 00 02                 1019 	.dw	2
      00379A 78                    1020 	.db	120
      00379B 02                    1021 	.sleb128	2
      00379C 00 00 96 A3           1022 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)
      0037A0 00 00 96 A4           1023 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      0037A4 00 02                 1024 	.dw	2
      0037A6 78                    1025 	.db	120
      0037A7 01                    1026 	.sleb128	1
      0037A8 00 00 00 00           1027 	.dw	0,0
      0037AC 00 00 00 00           1028 	.dw	0,0
      0037B0 00 00 96 9C           1029 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)
      0037B4 00 00 96 A3           1030 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$68)
      0037B8 00 02                 1031 	.dw	2
      0037BA 78                    1032 	.db	120
      0037BB 01                    1033 	.sleb128	1
      0037BC 00 00 00 00           1034 	.dw	0,0
      0037C0 00 00 00 00           1035 	.dw	0,0
      0037C4 00 00 96 96           1036 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)
      0037C8 00 00 96 9C           1037 	.dw	0,(Sstm8s_gpio$GPIO_Write$62)
      0037CC 00 02                 1038 	.dw	2
      0037CE 78                    1039 	.db	120
      0037CF 01                    1040 	.sleb128	1
      0037D0 00 00 00 00           1041 	.dw	0,0
      0037D4 00 00 00 00           1042 	.dw	0,0
      0037D8 00 00 96 95           1043 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      0037DC 00 00 96 96           1044 	.dw	0,(Sstm8s_gpio$GPIO_Init$56)
      0037E0 00 02                 1045 	.dw	2
      0037E2 78                    1046 	.db	120
      0037E3 01                    1047 	.sleb128	1
      0037E4 00 00 96 81           1048 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      0037E8 00 00 96 95           1049 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      0037EC 00 02                 1050 	.dw	2
      0037EE 78                    1051 	.db	120
      0037EF 06                    1052 	.sleb128	6
      0037F0 00 00 96 7C           1053 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      0037F4 00 00 96 81           1054 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      0037F8 00 02                 1055 	.dw	2
      0037FA 78                    1056 	.db	120
      0037FB 07                    1057 	.sleb128	7
      0037FC 00 00 96 6A           1058 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      003800 00 00 96 7C           1059 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      003804 00 02                 1060 	.dw	2
      003806 78                    1061 	.db	120
      003807 06                    1062 	.sleb128	6
      003808 00 00 96 65           1063 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      00380C 00 00 96 6A           1064 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      003810 00 02                 1065 	.dw	2
      003812 78                    1066 	.db	120
      003813 07                    1067 	.sleb128	7
      003814 00 00 96 3C           1068 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      003818 00 00 96 65           1069 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      00381C 00 02                 1070 	.dw	2
      00381E 78                    1071 	.db	120
      00381F 06                    1072 	.sleb128	6
      003820 00 00 96 37           1073 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      003824 00 00 96 3C           1074 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      003828 00 02                 1075 	.dw	2
      00382A 78                    1076 	.db	120
      00382B 07                    1077 	.sleb128	7
      00382C 00 00 96 23           1078 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      003830 00 00 96 37           1079 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      003834 00 02                 1080 	.dw	2
      003836 78                    1081 	.db	120
      003837 06                    1082 	.sleb128	6
      003838 00 00 96 1D           1083 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      00383C 00 00 96 23           1084 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      003840 00 02                 1085 	.dw	2
      003842 78                    1086 	.db	120
      003843 07                    1087 	.sleb128	7
      003844 00 00 96 11           1088 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      003848 00 00 96 1D           1089 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      00384C 00 02                 1090 	.dw	2
      00384E 78                    1091 	.db	120
      00384F 06                    1092 	.sleb128	6
      003850 00 00 96 0F           1093 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      003854 00 00 96 11           1094 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      003858 00 02                 1095 	.dw	2
      00385A 78                    1096 	.db	120
      00385B 01                    1097 	.sleb128	1
      00385C 00 00 00 00           1098 	.dw	0,0
      003860 00 00 00 00           1099 	.dw	0,0
      003864 00 00 95 FC           1100 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      003868 00 00 96 0F           1101 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
      00386C 00 02                 1102 	.dw	2
      00386E 78                    1103 	.db	120
      00386F 01                    1104 	.sleb128	1
      003870 00 00 00 00           1105 	.dw	0,0
      003874 00 00 00 00           1106 	.dw	0,0
                                   1107 
                                   1108 	.area .debug_abbrev (NOLOAD)
      00040F                       1109 Ldebug_abbrev:
      00040F 06                    1110 	.uleb128	6
      000410 0F                    1111 	.uleb128	15
      000411 00                    1112 	.db	0
      000412 0B                    1113 	.uleb128	11
      000413 0B                    1114 	.uleb128	11
      000414 49                    1115 	.uleb128	73
      000415 13                    1116 	.uleb128	19
      000416 00                    1117 	.uleb128	0
      000417 00                    1118 	.uleb128	0
      000418 04                    1119 	.uleb128	4
      000419 35                    1120 	.uleb128	53
      00041A 00                    1121 	.db	0
      00041B 49                    1122 	.uleb128	73
      00041C 13                    1123 	.uleb128	19
      00041D 00                    1124 	.uleb128	0
      00041E 00                    1125 	.uleb128	0
      00041F 07                    1126 	.uleb128	7
      000420 05                    1127 	.uleb128	5
      000421 00                    1128 	.db	0
      000422 02                    1129 	.uleb128	2
      000423 0A                    1130 	.uleb128	10
      000424 03                    1131 	.uleb128	3
      000425 08                    1132 	.uleb128	8
      000426 49                    1133 	.uleb128	73
      000427 13                    1134 	.uleb128	19
      000428 00                    1135 	.uleb128	0
      000429 00                    1136 	.uleb128	0
      00042A 02                    1137 	.uleb128	2
      00042B 2E                    1138 	.uleb128	46
      00042C 01                    1139 	.db	1
      00042D 01                    1140 	.uleb128	1
      00042E 13                    1141 	.uleb128	19
      00042F 03                    1142 	.uleb128	3
      000430 08                    1143 	.uleb128	8
      000431 11                    1144 	.uleb128	17
      000432 01                    1145 	.uleb128	1
      000433 12                    1146 	.uleb128	18
      000434 01                    1147 	.uleb128	1
      000435 3F                    1148 	.uleb128	63
      000436 0C                    1149 	.uleb128	12
      000437 40                    1150 	.uleb128	64
      000438 06                    1151 	.uleb128	6
      000439 00                    1152 	.uleb128	0
      00043A 00                    1153 	.uleb128	0
      00043B 0B                    1154 	.uleb128	11
      00043C 2E                    1155 	.uleb128	46
      00043D 01                    1156 	.db	1
      00043E 01                    1157 	.uleb128	1
      00043F 13                    1158 	.uleb128	19
      000440 03                    1159 	.uleb128	3
      000441 08                    1160 	.uleb128	8
      000442 11                    1161 	.uleb128	17
      000443 01                    1162 	.uleb128	1
      000444 12                    1163 	.uleb128	18
      000445 01                    1164 	.uleb128	1
      000446 3F                    1165 	.uleb128	63
      000447 0C                    1166 	.uleb128	12
      000448 40                    1167 	.uleb128	64
      000449 06                    1168 	.uleb128	6
      00044A 49                    1169 	.uleb128	73
      00044B 13                    1170 	.uleb128	19
      00044C 00                    1171 	.uleb128	0
      00044D 00                    1172 	.uleb128	0
      00044E 01                    1173 	.uleb128	1
      00044F 11                    1174 	.uleb128	17
      000450 01                    1175 	.db	1
      000451 03                    1176 	.uleb128	3
      000452 08                    1177 	.uleb128	8
      000453 10                    1178 	.uleb128	16
      000454 06                    1179 	.uleb128	6
      000455 13                    1180 	.uleb128	19
      000456 0B                    1181 	.uleb128	11
      000457 25                    1182 	.uleb128	37
      000458 08                    1183 	.uleb128	8
      000459 00                    1184 	.uleb128	0
      00045A 00                    1185 	.uleb128	0
      00045B 05                    1186 	.uleb128	5
      00045C 0D                    1187 	.uleb128	13
      00045D 00                    1188 	.db	0
      00045E 03                    1189 	.uleb128	3
      00045F 08                    1190 	.uleb128	8
      000460 38                    1191 	.uleb128	56
      000461 0A                    1192 	.uleb128	10
      000462 49                    1193 	.uleb128	73
      000463 13                    1194 	.uleb128	19
      000464 00                    1195 	.uleb128	0
      000465 00                    1196 	.uleb128	0
      000466 0A                    1197 	.uleb128	10
      000467 0B                    1198 	.uleb128	11
      000468 00                    1199 	.db	0
      000469 11                    1200 	.uleb128	17
      00046A 01                    1201 	.uleb128	1
      00046B 12                    1202 	.uleb128	18
      00046C 01                    1203 	.uleb128	1
      00046D 00                    1204 	.uleb128	0
      00046E 00                    1205 	.uleb128	0
      00046F 0C                    1206 	.uleb128	12
      000470 2E                    1207 	.uleb128	46
      000471 01                    1208 	.db	1
      000472 03                    1209 	.uleb128	3
      000473 08                    1210 	.uleb128	8
      000474 11                    1211 	.uleb128	17
      000475 01                    1212 	.uleb128	1
      000476 12                    1213 	.uleb128	18
      000477 01                    1214 	.uleb128	1
      000478 3F                    1215 	.uleb128	63
      000479 0C                    1216 	.uleb128	12
      00047A 40                    1217 	.uleb128	64
      00047B 06                    1218 	.uleb128	6
      00047C 00                    1219 	.uleb128	0
      00047D 00                    1220 	.uleb128	0
      00047E 09                    1221 	.uleb128	9
      00047F 0B                    1222 	.uleb128	11
      000480 01                    1223 	.db	1
      000481 01                    1224 	.uleb128	1
      000482 13                    1225 	.uleb128	19
      000483 11                    1226 	.uleb128	17
      000484 01                    1227 	.uleb128	1
      000485 12                    1228 	.uleb128	18
      000486 01                    1229 	.uleb128	1
      000487 00                    1230 	.uleb128	0
      000488 00                    1231 	.uleb128	0
      000489 03                    1232 	.uleb128	3
      00048A 13                    1233 	.uleb128	19
      00048B 01                    1234 	.db	1
      00048C 01                    1235 	.uleb128	1
      00048D 13                    1236 	.uleb128	19
      00048E 03                    1237 	.uleb128	3
      00048F 08                    1238 	.uleb128	8
      000490 0B                    1239 	.uleb128	11
      000491 0B                    1240 	.uleb128	11
      000492 00                    1241 	.uleb128	0
      000493 00                    1242 	.uleb128	0
      000494 08                    1243 	.uleb128	8
      000495 24                    1244 	.uleb128	36
      000496 00                    1245 	.db	0
      000497 03                    1246 	.uleb128	3
      000498 08                    1247 	.uleb128	8
      000499 0B                    1248 	.uleb128	11
      00049A 0B                    1249 	.uleb128	11
      00049B 3E                    1250 	.uleb128	62
      00049C 0B                    1251 	.uleb128	11
      00049D 00                    1252 	.uleb128	0
      00049E 00                    1253 	.uleb128	0
      00049F 00                    1254 	.uleb128	0
                                   1255 
                                   1256 	.area .debug_info (NOLOAD)
      002891 00 00 03 AB           1257 	.dw	0,Ldebug_info_end-Ldebug_info_start
      002895                       1258 Ldebug_info_start:
      002895 00 02                 1259 	.dw	2
      002897 00 00 04 0F           1260 	.dw	0,(Ldebug_abbrev)
      00289B 04                    1261 	.db	4
      00289C 01                    1262 	.uleb128	1
      00289D 2E 2E 2F 53 50 4C 2F  1263 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      0028B4 00                    1264 	.db	0
      0028B5 00 00 18 D9           1265 	.dw	0,(Ldebug_line_start+-4)
      0028B9 01                    1266 	.db	1
      0028BA 53 44 43 43 20 76 65  1267 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0028D3 00                    1268 	.db	0
      0028D4 02                    1269 	.uleb128	2
      0028D5 00 00 00 CA           1270 	.dw	0,202
      0028D9 47 50 49 4F 5F 44 65  1271 	.ascii "GPIO_DeInit"
             49 6E 69 74
      0028E4 00                    1272 	.db	0
      0028E5 00 00 95 FC           1273 	.dw	0,(_GPIO_DeInit)
      0028E9 00 00 96 0F           1274 	.dw	0,(XG$GPIO_DeInit$0$0+1)
      0028ED 01                    1275 	.db	1
      0028EE 00 00 38 64           1276 	.dw	0,(Ldebug_loc_start+372)
      0028F2 03                    1277 	.uleb128	3
      0028F3 00 00 00 B5           1278 	.dw	0,181
      0028F7 47 50 49 4F 5F 73 74  1279 	.ascii "GPIO_struct"
             72 75 63 74
      002902 00                    1280 	.db	0
      002903 05                    1281 	.db	5
      002904 04                    1282 	.uleb128	4
      002905 00 00 00 CA           1283 	.dw	0,202
      002909 05                    1284 	.uleb128	5
      00290A 4F 44 52              1285 	.ascii "ODR"
      00290D 00                    1286 	.db	0
      00290E 02                    1287 	.db	2
      00290F 23                    1288 	.db	35
      002910 00                    1289 	.uleb128	0
      002911 00 00 00 73           1290 	.dw	0,115
      002915 05                    1291 	.uleb128	5
      002916 49 44 52              1292 	.ascii "IDR"
      002919 00                    1293 	.db	0
      00291A 02                    1294 	.db	2
      00291B 23                    1295 	.db	35
      00291C 01                    1296 	.uleb128	1
      00291D 00 00 00 73           1297 	.dw	0,115
      002921 05                    1298 	.uleb128	5
      002922 44 44 52              1299 	.ascii "DDR"
      002925 00                    1300 	.db	0
      002926 02                    1301 	.db	2
      002927 23                    1302 	.db	35
      002928 02                    1303 	.uleb128	2
      002929 00 00 00 73           1304 	.dw	0,115
      00292D 05                    1305 	.uleb128	5
      00292E 43 52 31              1306 	.ascii "CR1"
      002931 00                    1307 	.db	0
      002932 02                    1308 	.db	2
      002933 23                    1309 	.db	35
      002934 03                    1310 	.uleb128	3
      002935 00 00 00 73           1311 	.dw	0,115
      002939 05                    1312 	.uleb128	5
      00293A 43 52 32              1313 	.ascii "CR2"
      00293D 00                    1314 	.db	0
      00293E 02                    1315 	.db	2
      00293F 23                    1316 	.db	35
      002940 04                    1317 	.uleb128	4
      002941 00 00 00 73           1318 	.dw	0,115
      002945 00                    1319 	.uleb128	0
      002946 06                    1320 	.uleb128	6
      002947 02                    1321 	.db	2
      002948 00 00 00 61           1322 	.dw	0,97
      00294C 07                    1323 	.uleb128	7
      00294D 02                    1324 	.db	2
      00294E 91                    1325 	.db	145
      00294F 02                    1326 	.sleb128	2
      002950 47 50 49 4F 78        1327 	.ascii "GPIOx"
      002955 00                    1328 	.db	0
      002956 00 00 00 B5           1329 	.dw	0,181
      00295A 00                    1330 	.uleb128	0
      00295B 08                    1331 	.uleb128	8
      00295C 75 6E 73 69 67 6E 65  1332 	.ascii "unsigned char"
             64 20 63 68 61 72
      002969 00                    1333 	.db	0
      00296A 01                    1334 	.db	1
      00296B 08                    1335 	.db	8
      00296C 02                    1336 	.uleb128	2
      00296D 00 00 01 76           1337 	.dw	0,374
      002971 47 50 49 4F 5F 49 6E  1338 	.ascii "GPIO_Init"
             69 74
      00297A 00                    1339 	.db	0
      00297B 00 00 96 0F           1340 	.dw	0,(_GPIO_Init)
      00297F 00 00 96 96           1341 	.dw	0,(XG$GPIO_Init$0$0+1)
      002983 01                    1342 	.db	1
      002984 00 00 37 D8           1343 	.dw	0,(Ldebug_loc_start+232)
      002988 07                    1344 	.uleb128	7
      002989 02                    1345 	.db	2
      00298A 91                    1346 	.db	145
      00298B 02                    1347 	.sleb128	2
      00298C 47 50 49 4F 78        1348 	.ascii "GPIOx"
      002991 00                    1349 	.db	0
      002992 00 00 00 B5           1350 	.dw	0,181
      002996 07                    1351 	.uleb128	7
      002997 02                    1352 	.db	2
      002998 91                    1353 	.db	145
      002999 04                    1354 	.sleb128	4
      00299A 47 50 49 4F 5F 50 69  1355 	.ascii "GPIO_Pin"
             6E
      0029A2 00                    1356 	.db	0
      0029A3 00 00 01 76           1357 	.dw	0,374
      0029A7 07                    1358 	.uleb128	7
      0029A8 02                    1359 	.db	2
      0029A9 91                    1360 	.db	145
      0029AA 05                    1361 	.sleb128	5
      0029AB 47 50 49 4F 5F 4D 6F  1362 	.ascii "GPIO_Mode"
             64 65
      0029B4 00                    1363 	.db	0
      0029B5 00 00 01 76           1364 	.dw	0,374
      0029B9 09                    1365 	.uleb128	9
      0029BA 00 00 01 48           1366 	.dw	0,328
      0029BE 00 00 96 36           1367 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      0029C2 00 00 96 54           1368 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      0029C6 0A                    1369 	.uleb128	10
      0029C7 00 00 96 41           1370 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      0029CB 00 00 96 45           1371 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      0029CF 0A                    1372 	.uleb128	10
      0029D0 00 00 96 48           1373 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      0029D4 00 00 96 4C           1374 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      0029D8 00                    1375 	.uleb128	0
      0029D9 0A                    1376 	.uleb128	10
      0029DA 00 00 96 57           1377 	.dw	0,(Sstm8s_gpio$GPIO_Init$30)
      0029DE 00 00 96 5F           1378 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      0029E2 0A                    1379 	.uleb128	10
      0029E3 00 00 96 6F           1380 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      0029E7 00 00 96 72           1381 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      0029EB 0A                    1382 	.uleb128	10
      0029EC 00 00 96 75           1383 	.dw	0,(Sstm8s_gpio$GPIO_Init$40)
      0029F0 00 00 96 78           1384 	.dw	0,(Sstm8s_gpio$GPIO_Init$42)
      0029F4 0A                    1385 	.uleb128	10
      0029F5 00 00 96 86           1386 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      0029F9 00 00 96 8B           1387 	.dw	0,(Sstm8s_gpio$GPIO_Init$49)
      0029FD 0A                    1388 	.uleb128	10
      0029FE 00 00 96 8E           1389 	.dw	0,(Sstm8s_gpio$GPIO_Init$50)
      002A02 00 00 96 93           1390 	.dw	0,(Sstm8s_gpio$GPIO_Init$52)
      002A06 00                    1391 	.uleb128	0
      002A07 08                    1392 	.uleb128	8
      002A08 75 6E 73 69 67 6E 65  1393 	.ascii "unsigned char"
             64 20 63 68 61 72
      002A15 00                    1394 	.db	0
      002A16 01                    1395 	.db	1
      002A17 08                    1396 	.db	8
      002A18 02                    1397 	.uleb128	2
      002A19 00 00 01 C3           1398 	.dw	0,451
      002A1D 47 50 49 4F 5F 57 72  1399 	.ascii "GPIO_Write"
             69 74 65
      002A27 00                    1400 	.db	0
      002A28 00 00 96 96           1401 	.dw	0,(_GPIO_Write)
      002A2C 00 00 96 9C           1402 	.dw	0,(XG$GPIO_Write$0$0+1)
      002A30 01                    1403 	.db	1
      002A31 00 00 37 C4           1404 	.dw	0,(Ldebug_loc_start+212)
      002A35 07                    1405 	.uleb128	7
      002A36 02                    1406 	.db	2
      002A37 91                    1407 	.db	145
      002A38 02                    1408 	.sleb128	2
      002A39 47 50 49 4F 78        1409 	.ascii "GPIOx"
      002A3E 00                    1410 	.db	0
      002A3F 00 00 00 B5           1411 	.dw	0,181
      002A43 07                    1412 	.uleb128	7
      002A44 02                    1413 	.db	2
      002A45 91                    1414 	.db	145
      002A46 04                    1415 	.sleb128	4
      002A47 50 6F 72 74 56 61 6C  1416 	.ascii "PortVal"
      002A4E 00                    1417 	.db	0
      002A4F 00 00 01 76           1418 	.dw	0,374
      002A53 00                    1419 	.uleb128	0
      002A54 02                    1420 	.uleb128	2
      002A55 00 00 02 04           1421 	.dw	0,516
      002A59 47 50 49 4F 5F 57 72  1422 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      002A67 00                    1423 	.db	0
      002A68 00 00 96 9C           1424 	.dw	0,(_GPIO_WriteHigh)
      002A6C 00 00 96 A3           1425 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      002A70 01                    1426 	.db	1
      002A71 00 00 37 B0           1427 	.dw	0,(Ldebug_loc_start+192)
      002A75 07                    1428 	.uleb128	7
      002A76 02                    1429 	.db	2
      002A77 91                    1430 	.db	145
      002A78 02                    1431 	.sleb128	2
      002A79 47 50 49 4F 78        1432 	.ascii "GPIOx"
      002A7E 00                    1433 	.db	0
      002A7F 00 00 00 B5           1434 	.dw	0,181
      002A83 07                    1435 	.uleb128	7
      002A84 02                    1436 	.db	2
      002A85 91                    1437 	.db	145
      002A86 04                    1438 	.sleb128	4
      002A87 50 6F 72 74 50 69 6E  1439 	.ascii "PortPins"
             73
      002A8F 00                    1440 	.db	0
      002A90 00 00 01 76           1441 	.dw	0,374
      002A94 00                    1442 	.uleb128	0
      002A95 02                    1443 	.uleb128	2
      002A96 00 00 02 44           1444 	.dw	0,580
      002A9A 47 50 49 4F 5F 57 72  1445 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      002AA7 00                    1446 	.db	0
      002AA8 00 00 96 A3           1447 	.dw	0,(_GPIO_WriteLow)
      002AAC 00 00 96 B1           1448 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      002AB0 01                    1449 	.db	1
      002AB1 00 00 37 84           1450 	.dw	0,(Ldebug_loc_start+148)
      002AB5 07                    1451 	.uleb128	7
      002AB6 02                    1452 	.db	2
      002AB7 91                    1453 	.db	145
      002AB8 02                    1454 	.sleb128	2
      002AB9 47 50 49 4F 78        1455 	.ascii "GPIOx"
      002ABE 00                    1456 	.db	0
      002ABF 00 00 00 B5           1457 	.dw	0,181
      002AC3 07                    1458 	.uleb128	7
      002AC4 02                    1459 	.db	2
      002AC5 91                    1460 	.db	145
      002AC6 04                    1461 	.sleb128	4
      002AC7 50 6F 72 74 50 69 6E  1462 	.ascii "PortPins"
             73
      002ACF 00                    1463 	.db	0
      002AD0 00 00 01 76           1464 	.dw	0,374
      002AD4 00                    1465 	.uleb128	0
      002AD5 02                    1466 	.uleb128	2
      002AD6 00 00 02 88           1467 	.dw	0,648
      002ADA 47 50 49 4F 5F 57 72  1468 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      002AEB 00                    1469 	.db	0
      002AEC 00 00 96 B1           1470 	.dw	0,(_GPIO_WriteReverse)
      002AF0 00 00 96 B8           1471 	.dw	0,(XG$GPIO_WriteReverse$0$0+1)
      002AF4 01                    1472 	.db	1
      002AF5 00 00 37 70           1473 	.dw	0,(Ldebug_loc_start+128)
      002AF9 07                    1474 	.uleb128	7
      002AFA 02                    1475 	.db	2
      002AFB 91                    1476 	.db	145
      002AFC 02                    1477 	.sleb128	2
      002AFD 47 50 49 4F 78        1478 	.ascii "GPIOx"
      002B02 00                    1479 	.db	0
      002B03 00 00 00 B5           1480 	.dw	0,181
      002B07 07                    1481 	.uleb128	7
      002B08 02                    1482 	.db	2
      002B09 91                    1483 	.db	145
      002B0A 04                    1484 	.sleb128	4
      002B0B 50 6F 72 74 50 69 6E  1485 	.ascii "PortPins"
             73
      002B13 00                    1486 	.db	0
      002B14 00 00 01 76           1487 	.dw	0,374
      002B18 00                    1488 	.uleb128	0
      002B19 0B                    1489 	.uleb128	11
      002B1A 00 00 02 C1           1490 	.dw	0,705
      002B1E 47 50 49 4F 5F 52 65  1491 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      002B31 00                    1492 	.db	0
      002B32 00 00 96 B8           1493 	.dw	0,(_GPIO_ReadOutputData)
      002B36 00 00 96 BC           1494 	.dw	0,(XG$GPIO_ReadOutputData$0$0+1)
      002B3A 01                    1495 	.db	1
      002B3B 00 00 37 5C           1496 	.dw	0,(Ldebug_loc_start+108)
      002B3F 00 00 01 76           1497 	.dw	0,374
      002B43 07                    1498 	.uleb128	7
      002B44 02                    1499 	.db	2
      002B45 91                    1500 	.db	145
      002B46 02                    1501 	.sleb128	2
      002B47 47 50 49 4F 78        1502 	.ascii "GPIOx"
      002B4C 00                    1503 	.db	0
      002B4D 00 00 00 B5           1504 	.dw	0,181
      002B51 00                    1505 	.uleb128	0
      002B52 0B                    1506 	.uleb128	11
      002B53 00 00 02 F9           1507 	.dw	0,761
      002B57 47 50 49 4F 5F 52 65  1508 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      002B69 00                    1509 	.db	0
      002B6A 00 00 96 BC           1510 	.dw	0,(_GPIO_ReadInputData)
      002B6E 00 00 96 C1           1511 	.dw	0,(XG$GPIO_ReadInputData$0$0+1)
      002B72 01                    1512 	.db	1
      002B73 00 00 37 48           1513 	.dw	0,(Ldebug_loc_start+88)
      002B77 00 00 01 76           1514 	.dw	0,374
      002B7B 07                    1515 	.uleb128	7
      002B7C 02                    1516 	.db	2
      002B7D 91                    1517 	.db	145
      002B7E 02                    1518 	.sleb128	2
      002B7F 47 50 49 4F 78        1519 	.ascii "GPIOx"
      002B84 00                    1520 	.db	0
      002B85 00 00 00 B5           1521 	.dw	0,181
      002B89 00                    1522 	.uleb128	0
      002B8A 0B                    1523 	.uleb128	11
      002B8B 00 00 03 41           1524 	.dw	0,833
      002B8F 47 50 49 4F 5F 52 65  1525 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      002BA0 00                    1526 	.db	0
      002BA1 00 00 96 C1           1527 	.dw	0,(_GPIO_ReadInputPin)
      002BA5 00 00 96 C8           1528 	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
      002BA9 01                    1529 	.db	1
      002BAA 00 00 37 34           1530 	.dw	0,(Ldebug_loc_start+68)
      002BAE 00 00 01 76           1531 	.dw	0,374
      002BB2 07                    1532 	.uleb128	7
      002BB3 02                    1533 	.db	2
      002BB4 91                    1534 	.db	145
      002BB5 02                    1535 	.sleb128	2
      002BB6 47 50 49 4F 78        1536 	.ascii "GPIOx"
      002BBB 00                    1537 	.db	0
      002BBC 00 00 00 B5           1538 	.dw	0,181
      002BC0 07                    1539 	.uleb128	7
      002BC1 02                    1540 	.db	2
      002BC2 91                    1541 	.db	145
      002BC3 04                    1542 	.sleb128	4
      002BC4 47 50 49 4F 5F 50 69  1543 	.ascii "GPIO_Pin"
             6E
      002BCC 00                    1544 	.db	0
      002BCD 00 00 01 76           1545 	.dw	0,374
      002BD1 00                    1546 	.uleb128	0
      002BD2 0C                    1547 	.uleb128	12
      002BD3 47 50 49 4F 5F 45 78  1548 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      002BEC 00                    1549 	.db	0
      002BED 00 00 96 C8           1550 	.dw	0,(_GPIO_ExternalPullUpConfig)
      002BF1 00 00 96 E8           1551 	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+1)
      002BF5 01                    1552 	.db	1
      002BF6 00 00 36 F0           1553 	.dw	0,(Ldebug_loc_start)
      002BFA 07                    1554 	.uleb128	7
      002BFB 02                    1555 	.db	2
      002BFC 91                    1556 	.db	145
      002BFD 02                    1557 	.sleb128	2
      002BFE 47 50 49 4F 78        1558 	.ascii "GPIOx"
      002C03 00                    1559 	.db	0
      002C04 00 00 00 B5           1560 	.dw	0,181
      002C08 07                    1561 	.uleb128	7
      002C09 02                    1562 	.db	2
      002C0A 91                    1563 	.db	145
      002C0B 04                    1564 	.sleb128	4
      002C0C 47 50 49 4F 5F 50 69  1565 	.ascii "GPIO_Pin"
             6E
      002C14 00                    1566 	.db	0
      002C15 00 00 01 76           1567 	.dw	0,374
      002C19 07                    1568 	.uleb128	7
      002C1A 02                    1569 	.db	2
      002C1B 91                    1570 	.db	145
      002C1C 05                    1571 	.sleb128	5
      002C1D 4E 65 77 53 74 61 74  1572 	.ascii "NewState"
             65
      002C25 00                    1573 	.db	0
      002C26 00 00 01 76           1574 	.dw	0,374
      002C2A 0A                    1575 	.uleb128	10
      002C2B 00 00 96 D6           1576 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$106)
      002C2F 00 00 96 D9           1577 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$108)
      002C33 0A                    1578 	.uleb128	10
      002C34 00 00 96 DC           1579 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$109)
      002C38 00 00 96 E6           1580 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$113)
      002C3C 00                    1581 	.uleb128	0
      002C3D 00                    1582 	.uleb128	0
      002C3E 00                    1583 	.uleb128	0
      002C3F 00                    1584 	.uleb128	0
      002C40                       1585 Ldebug_info_end:
                                   1586 
                                   1587 	.area .debug_pubnames (NOLOAD)
      0005BB 00 00 00 D9           1588 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0005BF                       1589 Ldebug_pubnames_start:
      0005BF 00 02                 1590 	.dw	2
      0005C1 00 00 28 91           1591 	.dw	0,(Ldebug_info_start-4)
      0005C5 00 00 03 AF           1592 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0005C9 00 00 00 43           1593 	.dw	0,67
      0005CD 47 50 49 4F 5F 44 65  1594 	.ascii "GPIO_DeInit"
             49 6E 69 74
      0005D8 00                    1595 	.db	0
      0005D9 00 00 00 DB           1596 	.dw	0,219
      0005DD 47 50 49 4F 5F 49 6E  1597 	.ascii "GPIO_Init"
             69 74
      0005E6 00                    1598 	.db	0
      0005E7 00 00 01 87           1599 	.dw	0,391
      0005EB 47 50 49 4F 5F 57 72  1600 	.ascii "GPIO_Write"
             69 74 65
      0005F5 00                    1601 	.db	0
      0005F6 00 00 01 C3           1602 	.dw	0,451
      0005FA 47 50 49 4F 5F 57 72  1603 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000608 00                    1604 	.db	0
      000609 00 00 02 04           1605 	.dw	0,516
      00060D 47 50 49 4F 5F 57 72  1606 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      00061A 00                    1607 	.db	0
      00061B 00 00 02 44           1608 	.dw	0,580
      00061F 47 50 49 4F 5F 57 72  1609 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      000630 00                    1610 	.db	0
      000631 00 00 02 88           1611 	.dw	0,648
      000635 47 50 49 4F 5F 52 65  1612 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      000648 00                    1613 	.db	0
      000649 00 00 02 C1           1614 	.dw	0,705
      00064D 47 50 49 4F 5F 52 65  1615 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      00065F 00                    1616 	.db	0
      000660 00 00 02 F9           1617 	.dw	0,761
      000664 47 50 49 4F 5F 52 65  1618 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      000675 00                    1619 	.db	0
      000676 00 00 03 41           1620 	.dw	0,833
      00067A 47 50 49 4F 5F 45 78  1621 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      000693 00                    1622 	.db	0
      000694 00 00 00 00           1623 	.dw	0,0
      000698                       1624 Ldebug_pubnames_end:
                                   1625 
                                   1626 	.area .debug_frame (NOLOAD)
      0028A4 00 00                 1627 	.dw	0
      0028A6 00 0E                 1628 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0028A8                       1629 Ldebug_CIE0_start:
      0028A8 FF FF                 1630 	.dw	0xffff
      0028AA FF FF                 1631 	.dw	0xffff
      0028AC 01                    1632 	.db	1
      0028AD 00                    1633 	.db	0
      0028AE 01                    1634 	.uleb128	1
      0028AF 7F                    1635 	.sleb128	-1
      0028B0 09                    1636 	.db	9
      0028B1 0C                    1637 	.db	12
      0028B2 08                    1638 	.uleb128	8
      0028B3 02                    1639 	.uleb128	2
      0028B4 89                    1640 	.db	137
      0028B5 01                    1641 	.uleb128	1
      0028B6                       1642 Ldebug_CIE0_end:
      0028B6 00 00 00 2F           1643 	.dw	0,47
      0028BA 00 00 28 A4           1644 	.dw	0,(Ldebug_CIE0_start-4)
      0028BE 00 00 96 C8           1645 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)	;initial loc
      0028C2 00 00 00 20           1646 	.dw	0,Sstm8s_gpio$GPIO_ExternalPullUpConfig$117-Sstm8s_gpio$GPIO_ExternalPullUpConfig$102
      0028C6 01                    1647 	.db	1
      0028C7 00 00 96 C8           1648 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$102)
      0028CB 0E                    1649 	.db	14
      0028CC 02                    1650 	.uleb128	2
      0028CD 01                    1651 	.db	1
      0028CE 00 00 96 C9           1652 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$103)
      0028D2 0E                    1653 	.db	14
      0028D3 03                    1654 	.uleb128	3
      0028D4 01                    1655 	.db	1
      0028D5 00 00 96 DD           1656 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$111)
      0028D9 0E                    1657 	.db	14
      0028DA 04                    1658 	.uleb128	4
      0028DB 01                    1659 	.db	1
      0028DC 00 00 96 E3           1660 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$112)
      0028E0 0E                    1661 	.db	14
      0028E1 03                    1662 	.uleb128	3
      0028E2 01                    1663 	.db	1
      0028E3 00 00 96 E7           1664 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$115)
      0028E7 0E                    1665 	.db	14
      0028E8 02                    1666 	.uleb128	2
                                   1667 
                                   1668 	.area .debug_frame (NOLOAD)
      0028E9 00 00                 1669 	.dw	0
      0028EB 00 0E                 1670 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0028ED                       1671 Ldebug_CIE1_start:
      0028ED FF FF                 1672 	.dw	0xffff
      0028EF FF FF                 1673 	.dw	0xffff
      0028F1 01                    1674 	.db	1
      0028F2 00                    1675 	.db	0
      0028F3 01                    1676 	.uleb128	1
      0028F4 7F                    1677 	.sleb128	-1
      0028F5 09                    1678 	.db	9
      0028F6 0C                    1679 	.db	12
      0028F7 08                    1680 	.uleb128	8
      0028F8 02                    1681 	.uleb128	2
      0028F9 89                    1682 	.db	137
      0028FA 01                    1683 	.uleb128	1
      0028FB                       1684 Ldebug_CIE1_end:
      0028FB 00 00 00 13           1685 	.dw	0,19
      0028FF 00 00 28 E9           1686 	.dw	0,(Ldebug_CIE1_start-4)
      002903 00 00 96 C1           1687 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)	;initial loc
      002907 00 00 00 07           1688 	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$100-Sstm8s_gpio$GPIO_ReadInputPin$96
      00290B 01                    1689 	.db	1
      00290C 00 00 96 C1           1690 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$96)
      002910 0E                    1691 	.db	14
      002911 02                    1692 	.uleb128	2
                                   1693 
                                   1694 	.area .debug_frame (NOLOAD)
      002912 00 00                 1695 	.dw	0
      002914 00 0E                 1696 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      002916                       1697 Ldebug_CIE2_start:
      002916 FF FF                 1698 	.dw	0xffff
      002918 FF FF                 1699 	.dw	0xffff
      00291A 01                    1700 	.db	1
      00291B 00                    1701 	.db	0
      00291C 01                    1702 	.uleb128	1
      00291D 7F                    1703 	.sleb128	-1
      00291E 09                    1704 	.db	9
      00291F 0C                    1705 	.db	12
      002920 08                    1706 	.uleb128	8
      002921 02                    1707 	.uleb128	2
      002922 89                    1708 	.db	137
      002923 01                    1709 	.uleb128	1
      002924                       1710 Ldebug_CIE2_end:
      002924 00 00 00 13           1711 	.dw	0,19
      002928 00 00 29 12           1712 	.dw	0,(Ldebug_CIE2_start-4)
      00292C 00 00 96 BC           1713 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)	;initial loc
      002930 00 00 00 05           1714 	.dw	0,Sstm8s_gpio$GPIO_ReadInputData$94-Sstm8s_gpio$GPIO_ReadInputData$90
      002934 01                    1715 	.db	1
      002935 00 00 96 BC           1716 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$90)
      002939 0E                    1717 	.db	14
      00293A 02                    1718 	.uleb128	2
                                   1719 
                                   1720 	.area .debug_frame (NOLOAD)
      00293B 00 00                 1721 	.dw	0
      00293D 00 0E                 1722 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00293F                       1723 Ldebug_CIE3_start:
      00293F FF FF                 1724 	.dw	0xffff
      002941 FF FF                 1725 	.dw	0xffff
      002943 01                    1726 	.db	1
      002944 00                    1727 	.db	0
      002945 01                    1728 	.uleb128	1
      002946 7F                    1729 	.sleb128	-1
      002947 09                    1730 	.db	9
      002948 0C                    1731 	.db	12
      002949 08                    1732 	.uleb128	8
      00294A 02                    1733 	.uleb128	2
      00294B 89                    1734 	.db	137
      00294C 01                    1735 	.uleb128	1
      00294D                       1736 Ldebug_CIE3_end:
      00294D 00 00 00 13           1737 	.dw	0,19
      002951 00 00 29 3B           1738 	.dw	0,(Ldebug_CIE3_start-4)
      002955 00 00 96 B8           1739 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)	;initial loc
      002959 00 00 00 04           1740 	.dw	0,Sstm8s_gpio$GPIO_ReadOutputData$88-Sstm8s_gpio$GPIO_ReadOutputData$84
      00295D 01                    1741 	.db	1
      00295E 00 00 96 B8           1742 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$84)
      002962 0E                    1743 	.db	14
      002963 02                    1744 	.uleb128	2
                                   1745 
                                   1746 	.area .debug_frame (NOLOAD)
      002964 00 00                 1747 	.dw	0
      002966 00 0E                 1748 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002968                       1749 Ldebug_CIE4_start:
      002968 FF FF                 1750 	.dw	0xffff
      00296A FF FF                 1751 	.dw	0xffff
      00296C 01                    1752 	.db	1
      00296D 00                    1753 	.db	0
      00296E 01                    1754 	.uleb128	1
      00296F 7F                    1755 	.sleb128	-1
      002970 09                    1756 	.db	9
      002971 0C                    1757 	.db	12
      002972 08                    1758 	.uleb128	8
      002973 02                    1759 	.uleb128	2
      002974 89                    1760 	.db	137
      002975 01                    1761 	.uleb128	1
      002976                       1762 Ldebug_CIE4_end:
      002976 00 00 00 13           1763 	.dw	0,19
      00297A 00 00 29 64           1764 	.dw	0,(Ldebug_CIE4_start-4)
      00297E 00 00 96 B1           1765 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)	;initial loc
      002982 00 00 00 07           1766 	.dw	0,Sstm8s_gpio$GPIO_WriteReverse$82-Sstm8s_gpio$GPIO_WriteReverse$78
      002986 01                    1767 	.db	1
      002987 00 00 96 B1           1768 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$78)
      00298B 0E                    1769 	.db	14
      00298C 02                    1770 	.uleb128	2
                                   1771 
                                   1772 	.area .debug_frame (NOLOAD)
      00298D 00 00                 1773 	.dw	0
      00298F 00 0E                 1774 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      002991                       1775 Ldebug_CIE5_start:
      002991 FF FF                 1776 	.dw	0xffff
      002993 FF FF                 1777 	.dw	0xffff
      002995 01                    1778 	.db	1
      002996 00                    1779 	.db	0
      002997 01                    1780 	.uleb128	1
      002998 7F                    1781 	.sleb128	-1
      002999 09                    1782 	.db	9
      00299A 0C                    1783 	.db	12
      00299B 08                    1784 	.uleb128	8
      00299C 02                    1785 	.uleb128	2
      00299D 89                    1786 	.db	137
      00299E 01                    1787 	.uleb128	1
      00299F                       1788 Ldebug_CIE5_end:
      00299F 00 00 00 21           1789 	.dw	0,33
      0029A3 00 00 29 8D           1790 	.dw	0,(Ldebug_CIE5_start-4)
      0029A7 00 00 96 A3           1791 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)	;initial loc
      0029AB 00 00 00 0E           1792 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$76-Sstm8s_gpio$GPIO_WriteLow$70
      0029AF 01                    1793 	.db	1
      0029B0 00 00 96 A3           1794 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$70)
      0029B4 0E                    1795 	.db	14
      0029B5 02                    1796 	.uleb128	2
      0029B6 01                    1797 	.db	1
      0029B7 00 00 96 A4           1798 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$71)
      0029BB 0E                    1799 	.db	14
      0029BC 03                    1800 	.uleb128	3
      0029BD 01                    1801 	.db	1
      0029BE 00 00 96 B0           1802 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$74)
      0029C2 0E                    1803 	.db	14
      0029C3 02                    1804 	.uleb128	2
                                   1805 
                                   1806 	.area .debug_frame (NOLOAD)
      0029C4 00 00                 1807 	.dw	0
      0029C6 00 0E                 1808 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      0029C8                       1809 Ldebug_CIE6_start:
      0029C8 FF FF                 1810 	.dw	0xffff
      0029CA FF FF                 1811 	.dw	0xffff
      0029CC 01                    1812 	.db	1
      0029CD 00                    1813 	.db	0
      0029CE 01                    1814 	.uleb128	1
      0029CF 7F                    1815 	.sleb128	-1
      0029D0 09                    1816 	.db	9
      0029D1 0C                    1817 	.db	12
      0029D2 08                    1818 	.uleb128	8
      0029D3 02                    1819 	.uleb128	2
      0029D4 89                    1820 	.db	137
      0029D5 01                    1821 	.uleb128	1
      0029D6                       1822 Ldebug_CIE6_end:
      0029D6 00 00 00 13           1823 	.dw	0,19
      0029DA 00 00 29 C4           1824 	.dw	0,(Ldebug_CIE6_start-4)
      0029DE 00 00 96 9C           1825 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)	;initial loc
      0029E2 00 00 00 07           1826 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$68-Sstm8s_gpio$GPIO_WriteHigh$64
      0029E6 01                    1827 	.db	1
      0029E7 00 00 96 9C           1828 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$64)
      0029EB 0E                    1829 	.db	14
      0029EC 02                    1830 	.uleb128	2
                                   1831 
                                   1832 	.area .debug_frame (NOLOAD)
      0029ED 00 00                 1833 	.dw	0
      0029EF 00 0E                 1834 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      0029F1                       1835 Ldebug_CIE7_start:
      0029F1 FF FF                 1836 	.dw	0xffff
      0029F3 FF FF                 1837 	.dw	0xffff
      0029F5 01                    1838 	.db	1
      0029F6 00                    1839 	.db	0
      0029F7 01                    1840 	.uleb128	1
      0029F8 7F                    1841 	.sleb128	-1
      0029F9 09                    1842 	.db	9
      0029FA 0C                    1843 	.db	12
      0029FB 08                    1844 	.uleb128	8
      0029FC 02                    1845 	.uleb128	2
      0029FD 89                    1846 	.db	137
      0029FE 01                    1847 	.uleb128	1
      0029FF                       1848 Ldebug_CIE7_end:
      0029FF 00 00 00 13           1849 	.dw	0,19
      002A03 00 00 29 ED           1850 	.dw	0,(Ldebug_CIE7_start-4)
      002A07 00 00 96 96           1851 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)	;initial loc
      002A0B 00 00 00 06           1852 	.dw	0,Sstm8s_gpio$GPIO_Write$62-Sstm8s_gpio$GPIO_Write$58
      002A0F 01                    1853 	.db	1
      002A10 00 00 96 96           1854 	.dw	0,(Sstm8s_gpio$GPIO_Write$58)
      002A14 0E                    1855 	.db	14
      002A15 02                    1856 	.uleb128	2
                                   1857 
                                   1858 	.area .debug_frame (NOLOAD)
      002A16 00 00                 1859 	.dw	0
      002A18 00 0E                 1860 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      002A1A                       1861 Ldebug_CIE8_start:
      002A1A FF FF                 1862 	.dw	0xffff
      002A1C FF FF                 1863 	.dw	0xffff
      002A1E 01                    1864 	.db	1
      002A1F 00                    1865 	.db	0
      002A20 01                    1866 	.uleb128	1
      002A21 7F                    1867 	.sleb128	-1
      002A22 09                    1868 	.db	9
      002A23 0C                    1869 	.db	12
      002A24 08                    1870 	.uleb128	8
      002A25 02                    1871 	.uleb128	2
      002A26 89                    1872 	.db	137
      002A27 01                    1873 	.uleb128	1
      002A28                       1874 Ldebug_CIE8_end:
      002A28 00 00 00 59           1875 	.dw	0,89
      002A2C 00 00 2A 16           1876 	.dw	0,(Ldebug_CIE8_start-4)
      002A30 00 00 96 0F           1877 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)	;initial loc
      002A34 00 00 00 87           1878 	.dw	0,Sstm8s_gpio$GPIO_Init$56-Sstm8s_gpio$GPIO_Init$10
      002A38 01                    1879 	.db	1
      002A39 00 00 96 0F           1880 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      002A3D 0E                    1881 	.db	14
      002A3E 02                    1882 	.uleb128	2
      002A3F 01                    1883 	.db	1
      002A40 00 00 96 11           1884 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      002A44 0E                    1885 	.db	14
      002A45 07                    1886 	.uleb128	7
      002A46 01                    1887 	.db	1
      002A47 00 00 96 1D           1888 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      002A4B 0E                    1889 	.db	14
      002A4C 08                    1890 	.uleb128	8
      002A4D 01                    1891 	.db	1
      002A4E 00 00 96 23           1892 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      002A52 0E                    1893 	.db	14
      002A53 07                    1894 	.uleb128	7
      002A54 01                    1895 	.db	1
      002A55 00 00 96 37           1896 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      002A59 0E                    1897 	.db	14
      002A5A 08                    1898 	.uleb128	8
      002A5B 01                    1899 	.db	1
      002A5C 00 00 96 3C           1900 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      002A60 0E                    1901 	.db	14
      002A61 07                    1902 	.uleb128	7
      002A62 01                    1903 	.db	1
      002A63 00 00 96 65           1904 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      002A67 0E                    1905 	.db	14
      002A68 08                    1906 	.uleb128	8
      002A69 01                    1907 	.db	1
      002A6A 00 00 96 6A           1908 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      002A6E 0E                    1909 	.db	14
      002A6F 07                    1910 	.uleb128	7
      002A70 01                    1911 	.db	1
      002A71 00 00 96 7C           1912 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      002A75 0E                    1913 	.db	14
      002A76 08                    1914 	.uleb128	8
      002A77 01                    1915 	.db	1
      002A78 00 00 96 81           1916 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      002A7C 0E                    1917 	.db	14
      002A7D 07                    1918 	.uleb128	7
      002A7E 01                    1919 	.db	1
      002A7F 00 00 96 95           1920 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      002A83 0E                    1921 	.db	14
      002A84 02                    1922 	.uleb128	2
                                   1923 
                                   1924 	.area .debug_frame (NOLOAD)
      002A85 00 00                 1925 	.dw	0
      002A87 00 0E                 1926 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      002A89                       1927 Ldebug_CIE9_start:
      002A89 FF FF                 1928 	.dw	0xffff
      002A8B FF FF                 1929 	.dw	0xffff
      002A8D 01                    1930 	.db	1
      002A8E 00                    1931 	.db	0
      002A8F 01                    1932 	.uleb128	1
      002A90 7F                    1933 	.sleb128	-1
      002A91 09                    1934 	.db	9
      002A92 0C                    1935 	.db	12
      002A93 08                    1936 	.uleb128	8
      002A94 02                    1937 	.uleb128	2
      002A95 89                    1938 	.db	137
      002A96 01                    1939 	.uleb128	1
      002A97                       1940 Ldebug_CIE9_end:
      002A97 00 00 00 13           1941 	.dw	0,19
      002A9B 00 00 2A 85           1942 	.dw	0,(Ldebug_CIE9_start-4)
      002A9F 00 00 95 FC           1943 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)	;initial loc
      002AA3 00 00 00 13           1944 	.dw	0,Sstm8s_gpio$GPIO_DeInit$8-Sstm8s_gpio$GPIO_DeInit$1
      002AA7 01                    1945 	.db	1
      002AA8 00 00 95 FC           1946 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      002AAC 0E                    1947 	.db	14
      002AAD 02                    1948 	.uleb128	2
