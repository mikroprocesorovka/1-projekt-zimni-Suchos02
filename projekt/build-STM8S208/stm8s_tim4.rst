                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim4
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM4_DeInit
                                     12 	.globl _TIM4_TimeBaseInit
                                     13 	.globl _TIM4_Cmd
                                     14 	.globl _TIM4_ITConfig
                                     15 	.globl _TIM4_UpdateDisableConfig
                                     16 	.globl _TIM4_UpdateRequestConfig
                                     17 	.globl _TIM4_SelectOnePulseMode
                                     18 	.globl _TIM4_PrescalerConfig
                                     19 	.globl _TIM4_ARRPreloadConfig
                                     20 	.globl _TIM4_GenerateEvent
                                     21 	.globl _TIM4_SetCounter
                                     22 	.globl _TIM4_SetAutoreload
                                     23 	.globl _TIM4_GetCounter
                                     24 	.globl _TIM4_GetPrescaler
                                     25 	.globl _TIM4_GetFlagStatus
                                     26 	.globl _TIM4_ClearFlag
                                     27 	.globl _TIM4_GetITStatus
                                     28 	.globl _TIM4_ClearITPendingBit
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DATA
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area INITIALIZED
                                     37 ;--------------------------------------------------------
                                     38 ; absolute external ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DABS (ABS)
                                     41 
                                     42 ; default segment ordering for linker
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area CONST
                                     47 	.area INITIALIZER
                                     48 	.area CODE
                                     49 
                                     50 ;--------------------------------------------------------
                                     51 ; global & static initialisations
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area GSINIT
                                     55 	.area GSFINAL
                                     56 	.area GSINIT
                                     57 ;--------------------------------------------------------
                                     58 ; Home
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area HOME
                                     62 ;--------------------------------------------------------
                                     63 ; code
                                     64 ;--------------------------------------------------------
                                     65 	.area CODE
                           000000    66 	Sstm8s_tim4$TIM4_DeInit$0 ==.
                                     67 ;	../SPL/src/stm8s_tim4.c: 49: void TIM4_DeInit(void)
                                     68 ; genLabel
                                     69 ;	-----------------------------------------
                                     70 ;	 function TIM4_DeInit
                                     71 ;	-----------------------------------------
                                     72 ;	Register assignment is optimal.
                                     73 ;	Stack space usage: 0 bytes.
      009B41                         74 _TIM4_DeInit:
                           000000    75 	Sstm8s_tim4$TIM4_DeInit$1 ==.
                           000000    76 	Sstm8s_tim4$TIM4_DeInit$2 ==.
                                     77 ;	../SPL/src/stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
                                     78 ; genPointerSet
      009B41 35 00 53 40      [ 1]   79 	mov	0x5340+0, #0x00
                           000004    80 	Sstm8s_tim4$TIM4_DeInit$3 ==.
                                     81 ;	../SPL/src/stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
                                     82 ; genPointerSet
      009B45 35 00 53 41      [ 1]   83 	mov	0x5341+0, #0x00
                           000008    84 	Sstm8s_tim4$TIM4_DeInit$4 ==.
                                     85 ;	../SPL/src/stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
                                     86 ; genPointerSet
      009B49 35 00 53 44      [ 1]   87 	mov	0x5344+0, #0x00
                           00000C    88 	Sstm8s_tim4$TIM4_DeInit$5 ==.
                                     89 ;	../SPL/src/stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
                                     90 ; genPointerSet
      009B4D 35 00 53 45      [ 1]   91 	mov	0x5345+0, #0x00
                           000010    92 	Sstm8s_tim4$TIM4_DeInit$6 ==.
                                     93 ;	../SPL/src/stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
                                     94 ; genPointerSet
      009B51 35 FF 53 46      [ 1]   95 	mov	0x5346+0, #0xff
                           000014    96 	Sstm8s_tim4$TIM4_DeInit$7 ==.
                                     97 ;	../SPL/src/stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
                                     98 ; genPointerSet
      009B55 35 00 53 42      [ 1]   99 	mov	0x5342+0, #0x00
                                    100 ; genLabel
      009B59                        101 00101$:
                           000018   102 	Sstm8s_tim4$TIM4_DeInit$8 ==.
                                    103 ;	../SPL/src/stm8s_tim4.c: 57: }
                                    104 ; genEndFunction
                           000018   105 	Sstm8s_tim4$TIM4_DeInit$9 ==.
                           000018   106 	XG$TIM4_DeInit$0$0 ==.
      009B59 81               [ 4]  107 	ret
                           000019   108 	Sstm8s_tim4$TIM4_DeInit$10 ==.
                           000019   109 	Sstm8s_tim4$TIM4_TimeBaseInit$11 ==.
                                    110 ;	../SPL/src/stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
                                    111 ; genLabel
                                    112 ;	-----------------------------------------
                                    113 ;	 function TIM4_TimeBaseInit
                                    114 ;	-----------------------------------------
                                    115 ;	Register assignment is optimal.
                                    116 ;	Stack space usage: 0 bytes.
      009B5A                        117 _TIM4_TimeBaseInit:
                           000019   118 	Sstm8s_tim4$TIM4_TimeBaseInit$12 ==.
                           000019   119 	Sstm8s_tim4$TIM4_TimeBaseInit$13 ==.
                                    120 ;	../SPL/src/stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
                                    121 ; genPointerSet
      009B5A AE 53 45         [ 2]  122 	ldw	x, #0x5345
      009B5D 7B 03            [ 1]  123 	ld	a, (0x03, sp)
      009B5F F7               [ 1]  124 	ld	(x), a
                           00001F   125 	Sstm8s_tim4$TIM4_TimeBaseInit$14 ==.
                                    126 ;	../SPL/src/stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
                                    127 ; genPointerSet
      009B60 AE 53 46         [ 2]  128 	ldw	x, #0x5346
      009B63 7B 04            [ 1]  129 	ld	a, (0x04, sp)
      009B65 F7               [ 1]  130 	ld	(x), a
                                    131 ; genLabel
      009B66                        132 00101$:
                           000025   133 	Sstm8s_tim4$TIM4_TimeBaseInit$15 ==.
                                    134 ;	../SPL/src/stm8s_tim4.c: 73: }
                                    135 ; genEndFunction
                           000025   136 	Sstm8s_tim4$TIM4_TimeBaseInit$16 ==.
                           000025   137 	XG$TIM4_TimeBaseInit$0$0 ==.
      009B66 81               [ 4]  138 	ret
                           000026   139 	Sstm8s_tim4$TIM4_TimeBaseInit$17 ==.
                           000026   140 	Sstm8s_tim4$TIM4_Cmd$18 ==.
                                    141 ;	../SPL/src/stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
                                    142 ; genLabel
                                    143 ;	-----------------------------------------
                                    144 ;	 function TIM4_Cmd
                                    145 ;	-----------------------------------------
                                    146 ;	Register assignment is optimal.
                                    147 ;	Stack space usage: 0 bytes.
      009B67                        148 _TIM4_Cmd:
                           000026   149 	Sstm8s_tim4$TIM4_Cmd$19 ==.
                           000026   150 	Sstm8s_tim4$TIM4_Cmd$20 ==.
                                    151 ;	../SPL/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
                                    152 ; genPointerGet
      009B67 C6 53 40         [ 1]  153 	ld	a, 0x5340
                           000029   154 	Sstm8s_tim4$TIM4_Cmd$21 ==.
                                    155 ;	../SPL/src/stm8s_tim4.c: 87: if (NewState != DISABLE)
                                    156 ; genIfx
      009B6A 0D 03            [ 1]  157 	tnz	(0x03, sp)
      009B6C 26 03            [ 1]  158 	jrne	00111$
      009B6E CC 9B 79         [ 2]  159 	jp	00102$
      009B71                        160 00111$:
                           000030   161 	Sstm8s_tim4$TIM4_Cmd$22 ==.
                           000030   162 	Sstm8s_tim4$TIM4_Cmd$23 ==.
                                    163 ;	../SPL/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
                                    164 ; genOr
      009B71 AA 01            [ 1]  165 	or	a, #0x01
                                    166 ; genPointerSet
      009B73 C7 53 40         [ 1]  167 	ld	0x5340, a
                           000035   168 	Sstm8s_tim4$TIM4_Cmd$24 ==.
                                    169 ; genGoto
      009B76 CC 9B 7E         [ 2]  170 	jp	00104$
                                    171 ; genLabel
      009B79                        172 00102$:
                           000038   173 	Sstm8s_tim4$TIM4_Cmd$25 ==.
                           000038   174 	Sstm8s_tim4$TIM4_Cmd$26 ==.
                                    175 ;	../SPL/src/stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
                                    176 ; genAnd
      009B79 A4 FE            [ 1]  177 	and	a, #0xfe
                                    178 ; genPointerSet
      009B7B C7 53 40         [ 1]  179 	ld	0x5340, a
                           00003D   180 	Sstm8s_tim4$TIM4_Cmd$27 ==.
                                    181 ; genLabel
      009B7E                        182 00104$:
                           00003D   183 	Sstm8s_tim4$TIM4_Cmd$28 ==.
                                    184 ;	../SPL/src/stm8s_tim4.c: 95: }
                                    185 ; genEndFunction
                           00003D   186 	Sstm8s_tim4$TIM4_Cmd$29 ==.
                           00003D   187 	XG$TIM4_Cmd$0$0 ==.
      009B7E 81               [ 4]  188 	ret
                           00003E   189 	Sstm8s_tim4$TIM4_Cmd$30 ==.
                           00003E   190 	Sstm8s_tim4$TIM4_ITConfig$31 ==.
                                    191 ;	../SPL/src/stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
                                    192 ; genLabel
                                    193 ;	-----------------------------------------
                                    194 ;	 function TIM4_ITConfig
                                    195 ;	-----------------------------------------
                                    196 ;	Register assignment is optimal.
                                    197 ;	Stack space usage: 1 bytes.
      009B7F                        198 _TIM4_ITConfig:
                           00003E   199 	Sstm8s_tim4$TIM4_ITConfig$32 ==.
      009B7F 88               [ 1]  200 	push	a
                           00003F   201 	Sstm8s_tim4$TIM4_ITConfig$33 ==.
                           00003F   202 	Sstm8s_tim4$TIM4_ITConfig$34 ==.
                                    203 ;	../SPL/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
                                    204 ; genPointerGet
      009B80 C6 53 41         [ 1]  205 	ld	a, 0x5341
                           000042   206 	Sstm8s_tim4$TIM4_ITConfig$35 ==.
                                    207 ;	../SPL/src/stm8s_tim4.c: 113: if (NewState != DISABLE)
                                    208 ; genIfx
      009B83 0D 05            [ 1]  209 	tnz	(0x05, sp)
      009B85 26 03            [ 1]  210 	jrne	00111$
      009B87 CC 9B 92         [ 2]  211 	jp	00102$
      009B8A                        212 00111$:
                           000049   213 	Sstm8s_tim4$TIM4_ITConfig$36 ==.
                           000049   214 	Sstm8s_tim4$TIM4_ITConfig$37 ==.
                                    215 ;	../SPL/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
                                    216 ; genOr
      009B8A 1A 04            [ 1]  217 	or	a, (0x04, sp)
                                    218 ; genPointerSet
      009B8C C7 53 41         [ 1]  219 	ld	0x5341, a
                           00004E   220 	Sstm8s_tim4$TIM4_ITConfig$38 ==.
                                    221 ; genGoto
      009B8F CC 9B 9E         [ 2]  222 	jp	00104$
                                    223 ; genLabel
      009B92                        224 00102$:
                           000051   225 	Sstm8s_tim4$TIM4_ITConfig$39 ==.
                           000051   226 	Sstm8s_tim4$TIM4_ITConfig$40 ==.
                                    227 ;	../SPL/src/stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
                                    228 ; genCpl
      009B92 88               [ 1]  229 	push	a
                           000052   230 	Sstm8s_tim4$TIM4_ITConfig$41 ==.
      009B93 7B 05            [ 1]  231 	ld	a, (0x05, sp)
      009B95 43               [ 1]  232 	cpl	a
      009B96 6B 02            [ 1]  233 	ld	(0x02, sp), a
      009B98 84               [ 1]  234 	pop	a
                           000058   235 	Sstm8s_tim4$TIM4_ITConfig$42 ==.
                                    236 ; genAnd
      009B99 14 01            [ 1]  237 	and	a, (0x01, sp)
                                    238 ; genPointerSet
      009B9B C7 53 41         [ 1]  239 	ld	0x5341, a
                           00005D   240 	Sstm8s_tim4$TIM4_ITConfig$43 ==.
                                    241 ; genLabel
      009B9E                        242 00104$:
                           00005D   243 	Sstm8s_tim4$TIM4_ITConfig$44 ==.
                                    244 ;	../SPL/src/stm8s_tim4.c: 123: }
                                    245 ; genEndFunction
      009B9E 84               [ 1]  246 	pop	a
                           00005E   247 	Sstm8s_tim4$TIM4_ITConfig$45 ==.
                           00005E   248 	Sstm8s_tim4$TIM4_ITConfig$46 ==.
                           00005E   249 	XG$TIM4_ITConfig$0$0 ==.
      009B9F 81               [ 4]  250 	ret
                           00005F   251 	Sstm8s_tim4$TIM4_ITConfig$47 ==.
                           00005F   252 	Sstm8s_tim4$TIM4_UpdateDisableConfig$48 ==.
                                    253 ;	../SPL/src/stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
                                    254 ; genLabel
                                    255 ;	-----------------------------------------
                                    256 ;	 function TIM4_UpdateDisableConfig
                                    257 ;	-----------------------------------------
                                    258 ;	Register assignment is optimal.
                                    259 ;	Stack space usage: 0 bytes.
      009BA0                        260 _TIM4_UpdateDisableConfig:
                           00005F   261 	Sstm8s_tim4$TIM4_UpdateDisableConfig$49 ==.
                           00005F   262 	Sstm8s_tim4$TIM4_UpdateDisableConfig$50 ==.
                                    263 ;	../SPL/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
                                    264 ; genPointerGet
      009BA0 C6 53 40         [ 1]  265 	ld	a, 0x5340
                           000062   266 	Sstm8s_tim4$TIM4_UpdateDisableConfig$51 ==.
                                    267 ;	../SPL/src/stm8s_tim4.c: 137: if (NewState != DISABLE)
                                    268 ; genIfx
      009BA3 0D 03            [ 1]  269 	tnz	(0x03, sp)
      009BA5 26 03            [ 1]  270 	jrne	00111$
      009BA7 CC 9B B2         [ 2]  271 	jp	00102$
      009BAA                        272 00111$:
                           000069   273 	Sstm8s_tim4$TIM4_UpdateDisableConfig$52 ==.
                           000069   274 	Sstm8s_tim4$TIM4_UpdateDisableConfig$53 ==.
                                    275 ;	../SPL/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
                                    276 ; genOr
      009BAA AA 02            [ 1]  277 	or	a, #0x02
                                    278 ; genPointerSet
      009BAC C7 53 40         [ 1]  279 	ld	0x5340, a
                           00006E   280 	Sstm8s_tim4$TIM4_UpdateDisableConfig$54 ==.
                                    281 ; genGoto
      009BAF CC 9B B7         [ 2]  282 	jp	00104$
                                    283 ; genLabel
      009BB2                        284 00102$:
                           000071   285 	Sstm8s_tim4$TIM4_UpdateDisableConfig$55 ==.
                           000071   286 	Sstm8s_tim4$TIM4_UpdateDisableConfig$56 ==.
                                    287 ;	../SPL/src/stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
                                    288 ; genAnd
      009BB2 A4 FD            [ 1]  289 	and	a, #0xfd
                                    290 ; genPointerSet
      009BB4 C7 53 40         [ 1]  291 	ld	0x5340, a
                           000076   292 	Sstm8s_tim4$TIM4_UpdateDisableConfig$57 ==.
                                    293 ; genLabel
      009BB7                        294 00104$:
                           000076   295 	Sstm8s_tim4$TIM4_UpdateDisableConfig$58 ==.
                                    296 ;	../SPL/src/stm8s_tim4.c: 145: }
                                    297 ; genEndFunction
                           000076   298 	Sstm8s_tim4$TIM4_UpdateDisableConfig$59 ==.
                           000076   299 	XG$TIM4_UpdateDisableConfig$0$0 ==.
      009BB7 81               [ 4]  300 	ret
                           000077   301 	Sstm8s_tim4$TIM4_UpdateDisableConfig$60 ==.
                           000077   302 	Sstm8s_tim4$TIM4_UpdateRequestConfig$61 ==.
                                    303 ;	../SPL/src/stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
                                    304 ; genLabel
                                    305 ;	-----------------------------------------
                                    306 ;	 function TIM4_UpdateRequestConfig
                                    307 ;	-----------------------------------------
                                    308 ;	Register assignment is optimal.
                                    309 ;	Stack space usage: 0 bytes.
      009BB8                        310 _TIM4_UpdateRequestConfig:
                           000077   311 	Sstm8s_tim4$TIM4_UpdateRequestConfig$62 ==.
                           000077   312 	Sstm8s_tim4$TIM4_UpdateRequestConfig$63 ==.
                                    313 ;	../SPL/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
                                    314 ; genPointerGet
      009BB8 C6 53 40         [ 1]  315 	ld	a, 0x5340
                           00007A   316 	Sstm8s_tim4$TIM4_UpdateRequestConfig$64 ==.
                                    317 ;	../SPL/src/stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
                                    318 ; genIfx
      009BBB 0D 03            [ 1]  319 	tnz	(0x03, sp)
      009BBD 26 03            [ 1]  320 	jrne	00111$
      009BBF CC 9B CA         [ 2]  321 	jp	00102$
      009BC2                        322 00111$:
                           000081   323 	Sstm8s_tim4$TIM4_UpdateRequestConfig$65 ==.
                           000081   324 	Sstm8s_tim4$TIM4_UpdateRequestConfig$66 ==.
                                    325 ;	../SPL/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
                                    326 ; genOr
      009BC2 AA 04            [ 1]  327 	or	a, #0x04
                                    328 ; genPointerSet
      009BC4 C7 53 40         [ 1]  329 	ld	0x5340, a
                           000086   330 	Sstm8s_tim4$TIM4_UpdateRequestConfig$67 ==.
                                    331 ; genGoto
      009BC7 CC 9B CF         [ 2]  332 	jp	00104$
                                    333 ; genLabel
      009BCA                        334 00102$:
                           000089   335 	Sstm8s_tim4$TIM4_UpdateRequestConfig$68 ==.
                           000089   336 	Sstm8s_tim4$TIM4_UpdateRequestConfig$69 ==.
                                    337 ;	../SPL/src/stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
                                    338 ; genAnd
      009BCA A4 FB            [ 1]  339 	and	a, #0xfb
                                    340 ; genPointerSet
      009BCC C7 53 40         [ 1]  341 	ld	0x5340, a
                           00008E   342 	Sstm8s_tim4$TIM4_UpdateRequestConfig$70 ==.
                                    343 ; genLabel
      009BCF                        344 00104$:
                           00008E   345 	Sstm8s_tim4$TIM4_UpdateRequestConfig$71 ==.
                                    346 ;	../SPL/src/stm8s_tim4.c: 169: }
                                    347 ; genEndFunction
                           00008E   348 	Sstm8s_tim4$TIM4_UpdateRequestConfig$72 ==.
                           00008E   349 	XG$TIM4_UpdateRequestConfig$0$0 ==.
      009BCF 81               [ 4]  350 	ret
                           00008F   351 	Sstm8s_tim4$TIM4_UpdateRequestConfig$73 ==.
                           00008F   352 	Sstm8s_tim4$TIM4_SelectOnePulseMode$74 ==.
                                    353 ;	../SPL/src/stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
                                    354 ; genLabel
                                    355 ;	-----------------------------------------
                                    356 ;	 function TIM4_SelectOnePulseMode
                                    357 ;	-----------------------------------------
                                    358 ;	Register assignment is optimal.
                                    359 ;	Stack space usage: 0 bytes.
      009BD0                        360 _TIM4_SelectOnePulseMode:
                           00008F   361 	Sstm8s_tim4$TIM4_SelectOnePulseMode$75 ==.
                           00008F   362 	Sstm8s_tim4$TIM4_SelectOnePulseMode$76 ==.
                                    363 ;	../SPL/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
                                    364 ; genPointerGet
      009BD0 C6 53 40         [ 1]  365 	ld	a, 0x5340
                           000092   366 	Sstm8s_tim4$TIM4_SelectOnePulseMode$77 ==.
                                    367 ;	../SPL/src/stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
                                    368 ; genIfx
      009BD3 0D 03            [ 1]  369 	tnz	(0x03, sp)
      009BD5 26 03            [ 1]  370 	jrne	00111$
      009BD7 CC 9B E2         [ 2]  371 	jp	00102$
      009BDA                        372 00111$:
                           000099   373 	Sstm8s_tim4$TIM4_SelectOnePulseMode$78 ==.
                           000099   374 	Sstm8s_tim4$TIM4_SelectOnePulseMode$79 ==.
                                    375 ;	../SPL/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
                                    376 ; genOr
      009BDA AA 08            [ 1]  377 	or	a, #0x08
                                    378 ; genPointerSet
      009BDC C7 53 40         [ 1]  379 	ld	0x5340, a
                           00009E   380 	Sstm8s_tim4$TIM4_SelectOnePulseMode$80 ==.
                                    381 ; genGoto
      009BDF CC 9B E7         [ 2]  382 	jp	00104$
                                    383 ; genLabel
      009BE2                        384 00102$:
                           0000A1   385 	Sstm8s_tim4$TIM4_SelectOnePulseMode$81 ==.
                           0000A1   386 	Sstm8s_tim4$TIM4_SelectOnePulseMode$82 ==.
                                    387 ;	../SPL/src/stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
                                    388 ; genAnd
      009BE2 A4 F7            [ 1]  389 	and	a, #0xf7
                                    390 ; genPointerSet
      009BE4 C7 53 40         [ 1]  391 	ld	0x5340, a
                           0000A6   392 	Sstm8s_tim4$TIM4_SelectOnePulseMode$83 ==.
                                    393 ; genLabel
      009BE7                        394 00104$:
                           0000A6   395 	Sstm8s_tim4$TIM4_SelectOnePulseMode$84 ==.
                                    396 ;	../SPL/src/stm8s_tim4.c: 193: }
                                    397 ; genEndFunction
                           0000A6   398 	Sstm8s_tim4$TIM4_SelectOnePulseMode$85 ==.
                           0000A6   399 	XG$TIM4_SelectOnePulseMode$0$0 ==.
      009BE7 81               [ 4]  400 	ret
                           0000A7   401 	Sstm8s_tim4$TIM4_SelectOnePulseMode$86 ==.
                           0000A7   402 	Sstm8s_tim4$TIM4_PrescalerConfig$87 ==.
                                    403 ;	../SPL/src/stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
                                    404 ; genLabel
                                    405 ;	-----------------------------------------
                                    406 ;	 function TIM4_PrescalerConfig
                                    407 ;	-----------------------------------------
                                    408 ;	Register assignment is optimal.
                                    409 ;	Stack space usage: 0 bytes.
      009BE8                        410 _TIM4_PrescalerConfig:
                           0000A7   411 	Sstm8s_tim4$TIM4_PrescalerConfig$88 ==.
                           0000A7   412 	Sstm8s_tim4$TIM4_PrescalerConfig$89 ==.
                                    413 ;	../SPL/src/stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
                                    414 ; genPointerSet
      009BE8 AE 53 45         [ 2]  415 	ldw	x, #0x5345
      009BEB 7B 03            [ 1]  416 	ld	a, (0x03, sp)
      009BED F7               [ 1]  417 	ld	(x), a
                           0000AD   418 	Sstm8s_tim4$TIM4_PrescalerConfig$90 ==.
                                    419 ;	../SPL/src/stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
                                    420 ; genPointerSet
      009BEE AE 53 43         [ 2]  421 	ldw	x, #0x5343
      009BF1 7B 04            [ 1]  422 	ld	a, (0x04, sp)
      009BF3 F7               [ 1]  423 	ld	(x), a
                                    424 ; genLabel
      009BF4                        425 00101$:
                           0000B3   426 	Sstm8s_tim4$TIM4_PrescalerConfig$91 ==.
                                    427 ;	../SPL/src/stm8s_tim4.c: 226: }
                                    428 ; genEndFunction
                           0000B3   429 	Sstm8s_tim4$TIM4_PrescalerConfig$92 ==.
                           0000B3   430 	XG$TIM4_PrescalerConfig$0$0 ==.
      009BF4 81               [ 4]  431 	ret
                           0000B4   432 	Sstm8s_tim4$TIM4_PrescalerConfig$93 ==.
                           0000B4   433 	Sstm8s_tim4$TIM4_ARRPreloadConfig$94 ==.
                                    434 ;	../SPL/src/stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
                                    435 ; genLabel
                                    436 ;	-----------------------------------------
                                    437 ;	 function TIM4_ARRPreloadConfig
                                    438 ;	-----------------------------------------
                                    439 ;	Register assignment is optimal.
                                    440 ;	Stack space usage: 0 bytes.
      009BF5                        441 _TIM4_ARRPreloadConfig:
                           0000B4   442 	Sstm8s_tim4$TIM4_ARRPreloadConfig$95 ==.
                           0000B4   443 	Sstm8s_tim4$TIM4_ARRPreloadConfig$96 ==.
                                    444 ;	../SPL/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
                                    445 ; genPointerGet
      009BF5 C6 53 40         [ 1]  446 	ld	a, 0x5340
                           0000B7   447 	Sstm8s_tim4$TIM4_ARRPreloadConfig$97 ==.
                                    448 ;	../SPL/src/stm8s_tim4.c: 240: if (NewState != DISABLE)
                                    449 ; genIfx
      009BF8 0D 03            [ 1]  450 	tnz	(0x03, sp)
      009BFA 26 03            [ 1]  451 	jrne	00111$
      009BFC CC 9C 07         [ 2]  452 	jp	00102$
      009BFF                        453 00111$:
                           0000BE   454 	Sstm8s_tim4$TIM4_ARRPreloadConfig$98 ==.
                           0000BE   455 	Sstm8s_tim4$TIM4_ARRPreloadConfig$99 ==.
                                    456 ;	../SPL/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
                                    457 ; genOr
      009BFF AA 80            [ 1]  458 	or	a, #0x80
                                    459 ; genPointerSet
      009C01 C7 53 40         [ 1]  460 	ld	0x5340, a
                           0000C3   461 	Sstm8s_tim4$TIM4_ARRPreloadConfig$100 ==.
                                    462 ; genGoto
      009C04 CC 9C 0C         [ 2]  463 	jp	00104$
                                    464 ; genLabel
      009C07                        465 00102$:
                           0000C6   466 	Sstm8s_tim4$TIM4_ARRPreloadConfig$101 ==.
                           0000C6   467 	Sstm8s_tim4$TIM4_ARRPreloadConfig$102 ==.
                                    468 ;	../SPL/src/stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
                                    469 ; genAnd
      009C07 A4 7F            [ 1]  470 	and	a, #0x7f
                                    471 ; genPointerSet
      009C09 C7 53 40         [ 1]  472 	ld	0x5340, a
                           0000CB   473 	Sstm8s_tim4$TIM4_ARRPreloadConfig$103 ==.
                                    474 ; genLabel
      009C0C                        475 00104$:
                           0000CB   476 	Sstm8s_tim4$TIM4_ARRPreloadConfig$104 ==.
                                    477 ;	../SPL/src/stm8s_tim4.c: 248: }
                                    478 ; genEndFunction
                           0000CB   479 	Sstm8s_tim4$TIM4_ARRPreloadConfig$105 ==.
                           0000CB   480 	XG$TIM4_ARRPreloadConfig$0$0 ==.
      009C0C 81               [ 4]  481 	ret
                           0000CC   482 	Sstm8s_tim4$TIM4_ARRPreloadConfig$106 ==.
                           0000CC   483 	Sstm8s_tim4$TIM4_GenerateEvent$107 ==.
                                    484 ;	../SPL/src/stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
                                    485 ; genLabel
                                    486 ;	-----------------------------------------
                                    487 ;	 function TIM4_GenerateEvent
                                    488 ;	-----------------------------------------
                                    489 ;	Register assignment is optimal.
                                    490 ;	Stack space usage: 0 bytes.
      009C0D                        491 _TIM4_GenerateEvent:
                           0000CC   492 	Sstm8s_tim4$TIM4_GenerateEvent$108 ==.
                           0000CC   493 	Sstm8s_tim4$TIM4_GenerateEvent$109 ==.
                                    494 ;	../SPL/src/stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
                                    495 ; genPointerSet
      009C0D AE 53 43         [ 2]  496 	ldw	x, #0x5343
      009C10 7B 03            [ 1]  497 	ld	a, (0x03, sp)
      009C12 F7               [ 1]  498 	ld	(x), a
                                    499 ; genLabel
      009C13                        500 00101$:
                           0000D2   501 	Sstm8s_tim4$TIM4_GenerateEvent$110 ==.
                                    502 ;	../SPL/src/stm8s_tim4.c: 264: }
                                    503 ; genEndFunction
                           0000D2   504 	Sstm8s_tim4$TIM4_GenerateEvent$111 ==.
                           0000D2   505 	XG$TIM4_GenerateEvent$0$0 ==.
      009C13 81               [ 4]  506 	ret
                           0000D3   507 	Sstm8s_tim4$TIM4_GenerateEvent$112 ==.
                           0000D3   508 	Sstm8s_tim4$TIM4_SetCounter$113 ==.
                                    509 ;	../SPL/src/stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
                                    510 ; genLabel
                                    511 ;	-----------------------------------------
                                    512 ;	 function TIM4_SetCounter
                                    513 ;	-----------------------------------------
                                    514 ;	Register assignment is optimal.
                                    515 ;	Stack space usage: 0 bytes.
      009C14                        516 _TIM4_SetCounter:
                           0000D3   517 	Sstm8s_tim4$TIM4_SetCounter$114 ==.
                           0000D3   518 	Sstm8s_tim4$TIM4_SetCounter$115 ==.
                                    519 ;	../SPL/src/stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
                                    520 ; genPointerSet
      009C14 AE 53 44         [ 2]  521 	ldw	x, #0x5344
      009C17 7B 03            [ 1]  522 	ld	a, (0x03, sp)
      009C19 F7               [ 1]  523 	ld	(x), a
                                    524 ; genLabel
      009C1A                        525 00101$:
                           0000D9   526 	Sstm8s_tim4$TIM4_SetCounter$116 ==.
                                    527 ;	../SPL/src/stm8s_tim4.c: 276: }
                                    528 ; genEndFunction
                           0000D9   529 	Sstm8s_tim4$TIM4_SetCounter$117 ==.
                           0000D9   530 	XG$TIM4_SetCounter$0$0 ==.
      009C1A 81               [ 4]  531 	ret
                           0000DA   532 	Sstm8s_tim4$TIM4_SetCounter$118 ==.
                           0000DA   533 	Sstm8s_tim4$TIM4_SetAutoreload$119 ==.
                                    534 ;	../SPL/src/stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
                                    535 ; genLabel
                                    536 ;	-----------------------------------------
                                    537 ;	 function TIM4_SetAutoreload
                                    538 ;	-----------------------------------------
                                    539 ;	Register assignment is optimal.
                                    540 ;	Stack space usage: 0 bytes.
      009C1B                        541 _TIM4_SetAutoreload:
                           0000DA   542 	Sstm8s_tim4$TIM4_SetAutoreload$120 ==.
                           0000DA   543 	Sstm8s_tim4$TIM4_SetAutoreload$121 ==.
                                    544 ;	../SPL/src/stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
                                    545 ; genPointerSet
      009C1B AE 53 46         [ 2]  546 	ldw	x, #0x5346
      009C1E 7B 03            [ 1]  547 	ld	a, (0x03, sp)
      009C20 F7               [ 1]  548 	ld	(x), a
                                    549 ; genLabel
      009C21                        550 00101$:
                           0000E0   551 	Sstm8s_tim4$TIM4_SetAutoreload$122 ==.
                                    552 ;	../SPL/src/stm8s_tim4.c: 288: }
                                    553 ; genEndFunction
                           0000E0   554 	Sstm8s_tim4$TIM4_SetAutoreload$123 ==.
                           0000E0   555 	XG$TIM4_SetAutoreload$0$0 ==.
      009C21 81               [ 4]  556 	ret
                           0000E1   557 	Sstm8s_tim4$TIM4_SetAutoreload$124 ==.
                           0000E1   558 	Sstm8s_tim4$TIM4_GetCounter$125 ==.
                                    559 ;	../SPL/src/stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
                                    560 ; genLabel
                                    561 ;	-----------------------------------------
                                    562 ;	 function TIM4_GetCounter
                                    563 ;	-----------------------------------------
                                    564 ;	Register assignment is optimal.
                                    565 ;	Stack space usage: 0 bytes.
      009C22                        566 _TIM4_GetCounter:
                           0000E1   567 	Sstm8s_tim4$TIM4_GetCounter$126 ==.
                           0000E1   568 	Sstm8s_tim4$TIM4_GetCounter$127 ==.
                                    569 ;	../SPL/src/stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
                                    570 ; genPointerGet
      009C22 C6 53 44         [ 1]  571 	ld	a, 0x5344
                                    572 ; genReturn
                                    573 ; genLabel
      009C25                        574 00101$:
                           0000E4   575 	Sstm8s_tim4$TIM4_GetCounter$128 ==.
                                    576 ;	../SPL/src/stm8s_tim4.c: 299: }
                                    577 ; genEndFunction
                           0000E4   578 	Sstm8s_tim4$TIM4_GetCounter$129 ==.
                           0000E4   579 	XG$TIM4_GetCounter$0$0 ==.
      009C25 81               [ 4]  580 	ret
                           0000E5   581 	Sstm8s_tim4$TIM4_GetCounter$130 ==.
                           0000E5   582 	Sstm8s_tim4$TIM4_GetPrescaler$131 ==.
                                    583 ;	../SPL/src/stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
                                    584 ; genLabel
                                    585 ;	-----------------------------------------
                                    586 ;	 function TIM4_GetPrescaler
                                    587 ;	-----------------------------------------
                                    588 ;	Register assignment is optimal.
                                    589 ;	Stack space usage: 0 bytes.
      009C26                        590 _TIM4_GetPrescaler:
                           0000E5   591 	Sstm8s_tim4$TIM4_GetPrescaler$132 ==.
                           0000E5   592 	Sstm8s_tim4$TIM4_GetPrescaler$133 ==.
                                    593 ;	../SPL/src/stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
                                    594 ; genPointerGet
      009C26 C6 53 45         [ 1]  595 	ld	a, 0x5345
                                    596 ; genReturn
                                    597 ; genLabel
      009C29                        598 00101$:
                           0000E8   599 	Sstm8s_tim4$TIM4_GetPrescaler$134 ==.
                                    600 ;	../SPL/src/stm8s_tim4.c: 310: }
                                    601 ; genEndFunction
                           0000E8   602 	Sstm8s_tim4$TIM4_GetPrescaler$135 ==.
                           0000E8   603 	XG$TIM4_GetPrescaler$0$0 ==.
      009C29 81               [ 4]  604 	ret
                           0000E9   605 	Sstm8s_tim4$TIM4_GetPrescaler$136 ==.
                           0000E9   606 	Sstm8s_tim4$TIM4_GetFlagStatus$137 ==.
                                    607 ;	../SPL/src/stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    608 ; genLabel
                                    609 ;	-----------------------------------------
                                    610 ;	 function TIM4_GetFlagStatus
                                    611 ;	-----------------------------------------
                                    612 ;	Register assignment is optimal.
                                    613 ;	Stack space usage: 0 bytes.
      009C2A                        614 _TIM4_GetFlagStatus:
                           0000E9   615 	Sstm8s_tim4$TIM4_GetFlagStatus$138 ==.
                           0000E9   616 	Sstm8s_tim4$TIM4_GetFlagStatus$139 ==.
                                    617 ;	../SPL/src/stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
                                    618 ; genPointerGet
      009C2A C6 53 42         [ 1]  619 	ld	a, 0x5342
                                    620 ; genAnd
      009C2D 14 03            [ 1]  621 	and	a, (0x03, sp)
                                    622 ; genIfx
      009C2F 4D               [ 1]  623 	tnz	a
      009C30 26 03            [ 1]  624 	jrne	00111$
      009C32 CC 9C 3A         [ 2]  625 	jp	00102$
      009C35                        626 00111$:
                           0000F4   627 	Sstm8s_tim4$TIM4_GetFlagStatus$140 ==.
                           0000F4   628 	Sstm8s_tim4$TIM4_GetFlagStatus$141 ==.
                                    629 ;	../SPL/src/stm8s_tim4.c: 328: bitstatus = SET;
                                    630 ; genAssign
      009C35 A6 01            [ 1]  631 	ld	a, #0x01
                           0000F6   632 	Sstm8s_tim4$TIM4_GetFlagStatus$142 ==.
                                    633 ; genGoto
      009C37 CC 9C 3B         [ 2]  634 	jp	00103$
                                    635 ; genLabel
      009C3A                        636 00102$:
                           0000F9   637 	Sstm8s_tim4$TIM4_GetFlagStatus$143 ==.
                           0000F9   638 	Sstm8s_tim4$TIM4_GetFlagStatus$144 ==.
                                    639 ;	../SPL/src/stm8s_tim4.c: 332: bitstatus = RESET;
                                    640 ; genAssign
      009C3A 4F               [ 1]  641 	clr	a
                           0000FA   642 	Sstm8s_tim4$TIM4_GetFlagStatus$145 ==.
                                    643 ; genLabel
      009C3B                        644 00103$:
                           0000FA   645 	Sstm8s_tim4$TIM4_GetFlagStatus$146 ==.
                                    646 ;	../SPL/src/stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
                                    647 ; genReturn
                                    648 ; genLabel
      009C3B                        649 00104$:
                           0000FA   650 	Sstm8s_tim4$TIM4_GetFlagStatus$147 ==.
                                    651 ;	../SPL/src/stm8s_tim4.c: 335: }
                                    652 ; genEndFunction
                           0000FA   653 	Sstm8s_tim4$TIM4_GetFlagStatus$148 ==.
                           0000FA   654 	XG$TIM4_GetFlagStatus$0$0 ==.
      009C3B 81               [ 4]  655 	ret
                           0000FB   656 	Sstm8s_tim4$TIM4_GetFlagStatus$149 ==.
                           0000FB   657 	Sstm8s_tim4$TIM4_ClearFlag$150 ==.
                                    658 ;	../SPL/src/stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    659 ; genLabel
                                    660 ;	-----------------------------------------
                                    661 ;	 function TIM4_ClearFlag
                                    662 ;	-----------------------------------------
                                    663 ;	Register assignment is optimal.
                                    664 ;	Stack space usage: 0 bytes.
      009C3C                        665 _TIM4_ClearFlag:
                           0000FB   666 	Sstm8s_tim4$TIM4_ClearFlag$151 ==.
                           0000FB   667 	Sstm8s_tim4$TIM4_ClearFlag$152 ==.
                                    668 ;	../SPL/src/stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
                                    669 ; genCpl
      009C3C 7B 03            [ 1]  670 	ld	a, (0x03, sp)
      009C3E 43               [ 1]  671 	cpl	a
                                    672 ; genPointerSet
      009C3F C7 53 42         [ 1]  673 	ld	0x5342, a
                                    674 ; genLabel
      009C42                        675 00101$:
                           000101   676 	Sstm8s_tim4$TIM4_ClearFlag$153 ==.
                                    677 ;	../SPL/src/stm8s_tim4.c: 351: }
                                    678 ; genEndFunction
                           000101   679 	Sstm8s_tim4$TIM4_ClearFlag$154 ==.
                           000101   680 	XG$TIM4_ClearFlag$0$0 ==.
      009C42 81               [ 4]  681 	ret
                           000102   682 	Sstm8s_tim4$TIM4_ClearFlag$155 ==.
                           000102   683 	Sstm8s_tim4$TIM4_GetITStatus$156 ==.
                                    684 ;	../SPL/src/stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
                                    685 ; genLabel
                                    686 ;	-----------------------------------------
                                    687 ;	 function TIM4_GetITStatus
                                    688 ;	-----------------------------------------
                                    689 ;	Register assignment is optimal.
                                    690 ;	Stack space usage: 1 bytes.
      009C43                        691 _TIM4_GetITStatus:
                           000102   692 	Sstm8s_tim4$TIM4_GetITStatus$157 ==.
      009C43 88               [ 1]  693 	push	a
                           000103   694 	Sstm8s_tim4$TIM4_GetITStatus$158 ==.
                           000103   695 	Sstm8s_tim4$TIM4_GetITStatus$159 ==.
                                    696 ;	../SPL/src/stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
                                    697 ; genPointerGet
      009C44 C6 53 42         [ 1]  698 	ld	a, 0x5342
                                    699 ; genAnd
      009C47 14 04            [ 1]  700 	and	a, (0x04, sp)
                                    701 ; genAssign
      009C49 6B 01            [ 1]  702 	ld	(0x01, sp), a
                           00010A   703 	Sstm8s_tim4$TIM4_GetITStatus$160 ==.
                                    704 ;	../SPL/src/stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
                                    705 ; genPointerGet
      009C4B C6 53 41         [ 1]  706 	ld	a, 0x5341
                                    707 ; genAnd
      009C4E 14 04            [ 1]  708 	and	a, (0x04, sp)
                                    709 ; genAssign
                           00010F   710 	Sstm8s_tim4$TIM4_GetITStatus$161 ==.
                                    711 ;	../SPL/src/stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
                                    712 ; genIfx
      009C50 0D 01            [ 1]  713 	tnz	(0x01, sp)
      009C52 26 03            [ 1]  714 	jrne	00117$
      009C54 CC 9C 62         [ 2]  715 	jp	00102$
      009C57                        716 00117$:
                                    717 ; genIfx
      009C57 4D               [ 1]  718 	tnz	a
      009C58 26 03            [ 1]  719 	jrne	00118$
      009C5A CC 9C 62         [ 2]  720 	jp	00102$
      009C5D                        721 00118$:
                           00011C   722 	Sstm8s_tim4$TIM4_GetITStatus$162 ==.
                           00011C   723 	Sstm8s_tim4$TIM4_GetITStatus$163 ==.
                                    724 ;	../SPL/src/stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
                                    725 ; genAssign
      009C5D A6 01            [ 1]  726 	ld	a, #0x01
                           00011E   727 	Sstm8s_tim4$TIM4_GetITStatus$164 ==.
                                    728 ; genGoto
      009C5F CC 9C 63         [ 2]  729 	jp	00103$
                                    730 ; genLabel
      009C62                        731 00102$:
                           000121   732 	Sstm8s_tim4$TIM4_GetITStatus$165 ==.
                           000121   733 	Sstm8s_tim4$TIM4_GetITStatus$166 ==.
                                    734 ;	../SPL/src/stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
                                    735 ; genAssign
      009C62 4F               [ 1]  736 	clr	a
                           000122   737 	Sstm8s_tim4$TIM4_GetITStatus$167 ==.
                                    738 ; genLabel
      009C63                        739 00103$:
                           000122   740 	Sstm8s_tim4$TIM4_GetITStatus$168 ==.
                                    741 ;	../SPL/src/stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
                                    742 ; genReturn
                                    743 ; genLabel
      009C63                        744 00105$:
                           000122   745 	Sstm8s_tim4$TIM4_GetITStatus$169 ==.
                                    746 ;	../SPL/src/stm8s_tim4.c: 382: }
                                    747 ; genEndFunction
      009C63 5B 01            [ 2]  748 	addw	sp, #1
                           000124   749 	Sstm8s_tim4$TIM4_GetITStatus$170 ==.
                           000124   750 	Sstm8s_tim4$TIM4_GetITStatus$171 ==.
                           000124   751 	XG$TIM4_GetITStatus$0$0 ==.
      009C65 81               [ 4]  752 	ret
                           000125   753 	Sstm8s_tim4$TIM4_GetITStatus$172 ==.
                           000125   754 	Sstm8s_tim4$TIM4_ClearITPendingBit$173 ==.
                                    755 ;	../SPL/src/stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
                                    756 ; genLabel
                                    757 ;	-----------------------------------------
                                    758 ;	 function TIM4_ClearITPendingBit
                                    759 ;	-----------------------------------------
                                    760 ;	Register assignment is optimal.
                                    761 ;	Stack space usage: 0 bytes.
      009C66                        762 _TIM4_ClearITPendingBit:
                           000125   763 	Sstm8s_tim4$TIM4_ClearITPendingBit$174 ==.
                           000125   764 	Sstm8s_tim4$TIM4_ClearITPendingBit$175 ==.
                                    765 ;	../SPL/src/stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
                                    766 ; genCpl
      009C66 7B 03            [ 1]  767 	ld	a, (0x03, sp)
      009C68 43               [ 1]  768 	cpl	a
                                    769 ; genPointerSet
      009C69 C7 53 42         [ 1]  770 	ld	0x5342, a
                                    771 ; genLabel
      009C6C                        772 00101$:
                           00012B   773 	Sstm8s_tim4$TIM4_ClearITPendingBit$176 ==.
                                    774 ;	../SPL/src/stm8s_tim4.c: 398: }
                                    775 ; genEndFunction
                           00012B   776 	Sstm8s_tim4$TIM4_ClearITPendingBit$177 ==.
                           00012B   777 	XG$TIM4_ClearITPendingBit$0$0 ==.
      009C6C 81               [ 4]  778 	ret
                           00012C   779 	Sstm8s_tim4$TIM4_ClearITPendingBit$178 ==.
                                    780 	.area CODE
                                    781 	.area CONST
                                    782 	.area INITIALIZER
                                    783 	.area CABS (ABS)
                                    784 
                                    785 	.area .debug_line (NOLOAD)
      002128 00 00 03 4D            786 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00212C                        787 Ldebug_line_start:
      00212C 00 02                  788 	.dw	2
      00212E 00 00 00 78            789 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      002132 01                     790 	.db	1
      002133 01                     791 	.db	1
      002134 FB                     792 	.db	-5
      002135 0F                     793 	.db	15
      002136 0A                     794 	.db	10
      002137 00                     795 	.db	0
      002138 01                     796 	.db	1
      002139 01                     797 	.db	1
      00213A 01                     798 	.db	1
      00213B 01                     799 	.db	1
      00213C 00                     800 	.db	0
      00213D 00                     801 	.db	0
      00213E 00                     802 	.db	0
      00213F 01                     803 	.db	1
      002140 43 3A 5C 50 72 6F 67   804 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      002168 00                     805 	.db	0
      002169 43 3A 5C 50 72 6F 67   806 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00218C 00                     807 	.db	0
      00218D 00                     808 	.db	0
      00218E 2E 2E 2F 53 50 4C 2F   809 	.ascii "../SPL/src/stm8s_tim4.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      0021A5 00                     810 	.db	0
      0021A6 00                     811 	.uleb128	0
      0021A7 00                     812 	.uleb128	0
      0021A8 00                     813 	.uleb128	0
      0021A9 00                     814 	.db	0
      0021AA                        815 Ldebug_line_stmt:
      0021AA 00                     816 	.db	0
      0021AB 05                     817 	.uleb128	5
      0021AC 02                     818 	.db	2
      0021AD 00 00 9B 41            819 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$0)
      0021B1 03                     820 	.db	3
      0021B2 30                     821 	.sleb128	48
      0021B3 01                     822 	.db	1
      0021B4 09                     823 	.db	9
      0021B5 00 00                  824 	.dw	Sstm8s_tim4$TIM4_DeInit$2-Sstm8s_tim4$TIM4_DeInit$0
      0021B7 03                     825 	.db	3
      0021B8 02                     826 	.sleb128	2
      0021B9 01                     827 	.db	1
      0021BA 09                     828 	.db	9
      0021BB 00 04                  829 	.dw	Sstm8s_tim4$TIM4_DeInit$3-Sstm8s_tim4$TIM4_DeInit$2
      0021BD 03                     830 	.db	3
      0021BE 01                     831 	.sleb128	1
      0021BF 01                     832 	.db	1
      0021C0 09                     833 	.db	9
      0021C1 00 04                  834 	.dw	Sstm8s_tim4$TIM4_DeInit$4-Sstm8s_tim4$TIM4_DeInit$3
      0021C3 03                     835 	.db	3
      0021C4 01                     836 	.sleb128	1
      0021C5 01                     837 	.db	1
      0021C6 09                     838 	.db	9
      0021C7 00 04                  839 	.dw	Sstm8s_tim4$TIM4_DeInit$5-Sstm8s_tim4$TIM4_DeInit$4
      0021C9 03                     840 	.db	3
      0021CA 01                     841 	.sleb128	1
      0021CB 01                     842 	.db	1
      0021CC 09                     843 	.db	9
      0021CD 00 04                  844 	.dw	Sstm8s_tim4$TIM4_DeInit$6-Sstm8s_tim4$TIM4_DeInit$5
      0021CF 03                     845 	.db	3
      0021D0 01                     846 	.sleb128	1
      0021D1 01                     847 	.db	1
      0021D2 09                     848 	.db	9
      0021D3 00 04                  849 	.dw	Sstm8s_tim4$TIM4_DeInit$7-Sstm8s_tim4$TIM4_DeInit$6
      0021D5 03                     850 	.db	3
      0021D6 01                     851 	.sleb128	1
      0021D7 01                     852 	.db	1
      0021D8 09                     853 	.db	9
      0021D9 00 04                  854 	.dw	Sstm8s_tim4$TIM4_DeInit$8-Sstm8s_tim4$TIM4_DeInit$7
      0021DB 03                     855 	.db	3
      0021DC 01                     856 	.sleb128	1
      0021DD 01                     857 	.db	1
      0021DE 09                     858 	.db	9
      0021DF 00 01                  859 	.dw	1+Sstm8s_tim4$TIM4_DeInit$9-Sstm8s_tim4$TIM4_DeInit$8
      0021E1 00                     860 	.db	0
      0021E2 01                     861 	.uleb128	1
      0021E3 01                     862 	.db	1
      0021E4 00                     863 	.db	0
      0021E5 05                     864 	.uleb128	5
      0021E6 02                     865 	.db	2
      0021E7 00 00 9B 5A            866 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$11)
      0021EB 03                     867 	.db	3
      0021EC C0 00                  868 	.sleb128	64
      0021EE 01                     869 	.db	1
      0021EF 09                     870 	.db	9
      0021F0 00 00                  871 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$13-Sstm8s_tim4$TIM4_TimeBaseInit$11
      0021F2 03                     872 	.db	3
      0021F3 05                     873 	.sleb128	5
      0021F4 01                     874 	.db	1
      0021F5 09                     875 	.db	9
      0021F6 00 06                  876 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$14-Sstm8s_tim4$TIM4_TimeBaseInit$13
      0021F8 03                     877 	.db	3
      0021F9 02                     878 	.sleb128	2
      0021FA 01                     879 	.db	1
      0021FB 09                     880 	.db	9
      0021FC 00 06                  881 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$15-Sstm8s_tim4$TIM4_TimeBaseInit$14
      0021FE 03                     882 	.db	3
      0021FF 01                     883 	.sleb128	1
      002200 01                     884 	.db	1
      002201 09                     885 	.db	9
      002202 00 01                  886 	.dw	1+Sstm8s_tim4$TIM4_TimeBaseInit$16-Sstm8s_tim4$TIM4_TimeBaseInit$15
      002204 00                     887 	.db	0
      002205 01                     888 	.uleb128	1
      002206 01                     889 	.db	1
      002207 00                     890 	.db	0
      002208 05                     891 	.uleb128	5
      002209 02                     892 	.db	2
      00220A 00 00 9B 67            893 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$18)
      00220E 03                     894 	.db	3
      00220F D0 00                  895 	.sleb128	80
      002211 01                     896 	.db	1
      002212 09                     897 	.db	9
      002213 00 00                  898 	.dw	Sstm8s_tim4$TIM4_Cmd$20-Sstm8s_tim4$TIM4_Cmd$18
      002215 03                     899 	.db	3
      002216 08                     900 	.sleb128	8
      002217 01                     901 	.db	1
      002218 09                     902 	.db	9
      002219 00 03                  903 	.dw	Sstm8s_tim4$TIM4_Cmd$21-Sstm8s_tim4$TIM4_Cmd$20
      00221B 03                     904 	.db	3
      00221C 7E                     905 	.sleb128	-2
      00221D 01                     906 	.db	1
      00221E 09                     907 	.db	9
      00221F 00 07                  908 	.dw	Sstm8s_tim4$TIM4_Cmd$23-Sstm8s_tim4$TIM4_Cmd$21
      002221 03                     909 	.db	3
      002222 02                     910 	.sleb128	2
      002223 01                     911 	.db	1
      002224 09                     912 	.db	9
      002225 00 08                  913 	.dw	Sstm8s_tim4$TIM4_Cmd$26-Sstm8s_tim4$TIM4_Cmd$23
      002227 03                     914 	.db	3
      002228 04                     915 	.sleb128	4
      002229 01                     916 	.db	1
      00222A 09                     917 	.db	9
      00222B 00 05                  918 	.dw	Sstm8s_tim4$TIM4_Cmd$28-Sstm8s_tim4$TIM4_Cmd$26
      00222D 03                     919 	.db	3
      00222E 02                     920 	.sleb128	2
      00222F 01                     921 	.db	1
      002230 09                     922 	.db	9
      002231 00 01                  923 	.dw	1+Sstm8s_tim4$TIM4_Cmd$29-Sstm8s_tim4$TIM4_Cmd$28
      002233 00                     924 	.db	0
      002234 01                     925 	.uleb128	1
      002235 01                     926 	.db	1
      002236 00                     927 	.db	0
      002237 05                     928 	.uleb128	5
      002238 02                     929 	.db	2
      002239 00 00 9B 7F            930 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$31)
      00223D 03                     931 	.db	3
      00223E EA 00                  932 	.sleb128	106
      002240 01                     933 	.db	1
      002241 09                     934 	.db	9
      002242 00 01                  935 	.dw	Sstm8s_tim4$TIM4_ITConfig$34-Sstm8s_tim4$TIM4_ITConfig$31
      002244 03                     936 	.db	3
      002245 09                     937 	.sleb128	9
      002246 01                     938 	.db	1
      002247 09                     939 	.db	9
      002248 00 03                  940 	.dw	Sstm8s_tim4$TIM4_ITConfig$35-Sstm8s_tim4$TIM4_ITConfig$34
      00224A 03                     941 	.db	3
      00224B 7D                     942 	.sleb128	-3
      00224C 01                     943 	.db	1
      00224D 09                     944 	.db	9
      00224E 00 07                  945 	.dw	Sstm8s_tim4$TIM4_ITConfig$37-Sstm8s_tim4$TIM4_ITConfig$35
      002250 03                     946 	.db	3
      002251 03                     947 	.sleb128	3
      002252 01                     948 	.db	1
      002253 09                     949 	.db	9
      002254 00 08                  950 	.dw	Sstm8s_tim4$TIM4_ITConfig$40-Sstm8s_tim4$TIM4_ITConfig$37
      002256 03                     951 	.db	3
      002257 05                     952 	.sleb128	5
      002258 01                     953 	.db	1
      002259 09                     954 	.db	9
      00225A 00 0C                  955 	.dw	Sstm8s_tim4$TIM4_ITConfig$44-Sstm8s_tim4$TIM4_ITConfig$40
      00225C 03                     956 	.db	3
      00225D 02                     957 	.sleb128	2
      00225E 01                     958 	.db	1
      00225F 09                     959 	.db	9
      002260 00 02                  960 	.dw	1+Sstm8s_tim4$TIM4_ITConfig$46-Sstm8s_tim4$TIM4_ITConfig$44
      002262 00                     961 	.db	0
      002263 01                     962 	.uleb128	1
      002264 01                     963 	.db	1
      002265 00                     964 	.db	0
      002266 05                     965 	.uleb128	5
      002267 02                     966 	.db	2
      002268 00 00 9B A0            967 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$48)
      00226C 03                     968 	.db	3
      00226D 82 01                  969 	.sleb128	130
      00226F 01                     970 	.db	1
      002270 09                     971 	.db	9
      002271 00 00                  972 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$50-Sstm8s_tim4$TIM4_UpdateDisableConfig$48
      002273 03                     973 	.db	3
      002274 08                     974 	.sleb128	8
      002275 01                     975 	.db	1
      002276 09                     976 	.db	9
      002277 00 03                  977 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$51-Sstm8s_tim4$TIM4_UpdateDisableConfig$50
      002279 03                     978 	.db	3
      00227A 7E                     979 	.sleb128	-2
      00227B 01                     980 	.db	1
      00227C 09                     981 	.db	9
      00227D 00 07                  982 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$53-Sstm8s_tim4$TIM4_UpdateDisableConfig$51
      00227F 03                     983 	.db	3
      002280 02                     984 	.sleb128	2
      002281 01                     985 	.db	1
      002282 09                     986 	.db	9
      002283 00 08                  987 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$56-Sstm8s_tim4$TIM4_UpdateDisableConfig$53
      002285 03                     988 	.db	3
      002286 04                     989 	.sleb128	4
      002287 01                     990 	.db	1
      002288 09                     991 	.db	9
      002289 00 05                  992 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$58-Sstm8s_tim4$TIM4_UpdateDisableConfig$56
      00228B 03                     993 	.db	3
      00228C 02                     994 	.sleb128	2
      00228D 01                     995 	.db	1
      00228E 09                     996 	.db	9
      00228F 00 01                  997 	.dw	1+Sstm8s_tim4$TIM4_UpdateDisableConfig$59-Sstm8s_tim4$TIM4_UpdateDisableConfig$58
      002291 00                     998 	.db	0
      002292 01                     999 	.uleb128	1
      002293 01                    1000 	.db	1
      002294 00                    1001 	.db	0
      002295 05                    1002 	.uleb128	5
      002296 02                    1003 	.db	2
      002297 00 00 9B B8           1004 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$61)
      00229B 03                    1005 	.db	3
      00229C 9A 01                 1006 	.sleb128	154
      00229E 01                    1007 	.db	1
      00229F 09                    1008 	.db	9
      0022A0 00 00                 1009 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$63-Sstm8s_tim4$TIM4_UpdateRequestConfig$61
      0022A2 03                    1010 	.db	3
      0022A3 08                    1011 	.sleb128	8
      0022A4 01                    1012 	.db	1
      0022A5 09                    1013 	.db	9
      0022A6 00 03                 1014 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$64-Sstm8s_tim4$TIM4_UpdateRequestConfig$63
      0022A8 03                    1015 	.db	3
      0022A9 7E                    1016 	.sleb128	-2
      0022AA 01                    1017 	.db	1
      0022AB 09                    1018 	.db	9
      0022AC 00 07                 1019 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$66-Sstm8s_tim4$TIM4_UpdateRequestConfig$64
      0022AE 03                    1020 	.db	3
      0022AF 02                    1021 	.sleb128	2
      0022B0 01                    1022 	.db	1
      0022B1 09                    1023 	.db	9
      0022B2 00 08                 1024 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$69-Sstm8s_tim4$TIM4_UpdateRequestConfig$66
      0022B4 03                    1025 	.db	3
      0022B5 04                    1026 	.sleb128	4
      0022B6 01                    1027 	.db	1
      0022B7 09                    1028 	.db	9
      0022B8 00 05                 1029 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$71-Sstm8s_tim4$TIM4_UpdateRequestConfig$69
      0022BA 03                    1030 	.db	3
      0022BB 02                    1031 	.sleb128	2
      0022BC 01                    1032 	.db	1
      0022BD 09                    1033 	.db	9
      0022BE 00 01                 1034 	.dw	1+Sstm8s_tim4$TIM4_UpdateRequestConfig$72-Sstm8s_tim4$TIM4_UpdateRequestConfig$71
      0022C0 00                    1035 	.db	0
      0022C1 01                    1036 	.uleb128	1
      0022C2 01                    1037 	.db	1
      0022C3 00                    1038 	.db	0
      0022C4 05                    1039 	.uleb128	5
      0022C5 02                    1040 	.db	2
      0022C6 00 00 9B D0           1041 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$74)
      0022CA 03                    1042 	.db	3
      0022CB B2 01                 1043 	.sleb128	178
      0022CD 01                    1044 	.db	1
      0022CE 09                    1045 	.db	9
      0022CF 00 00                 1046 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$76-Sstm8s_tim4$TIM4_SelectOnePulseMode$74
      0022D1 03                    1047 	.db	3
      0022D2 08                    1048 	.sleb128	8
      0022D3 01                    1049 	.db	1
      0022D4 09                    1050 	.db	9
      0022D5 00 03                 1051 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$77-Sstm8s_tim4$TIM4_SelectOnePulseMode$76
      0022D7 03                    1052 	.db	3
      0022D8 7E                    1053 	.sleb128	-2
      0022D9 01                    1054 	.db	1
      0022DA 09                    1055 	.db	9
      0022DB 00 07                 1056 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$79-Sstm8s_tim4$TIM4_SelectOnePulseMode$77
      0022DD 03                    1057 	.db	3
      0022DE 02                    1058 	.sleb128	2
      0022DF 01                    1059 	.db	1
      0022E0 09                    1060 	.db	9
      0022E1 00 08                 1061 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$82-Sstm8s_tim4$TIM4_SelectOnePulseMode$79
      0022E3 03                    1062 	.db	3
      0022E4 04                    1063 	.sleb128	4
      0022E5 01                    1064 	.db	1
      0022E6 09                    1065 	.db	9
      0022E7 00 05                 1066 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$84-Sstm8s_tim4$TIM4_SelectOnePulseMode$82
      0022E9 03                    1067 	.db	3
      0022EA 02                    1068 	.sleb128	2
      0022EB 01                    1069 	.db	1
      0022EC 09                    1070 	.db	9
      0022ED 00 01                 1071 	.dw	1+Sstm8s_tim4$TIM4_SelectOnePulseMode$85-Sstm8s_tim4$TIM4_SelectOnePulseMode$84
      0022EF 00                    1072 	.db	0
      0022F0 01                    1073 	.uleb128	1
      0022F1 01                    1074 	.db	1
      0022F2 00                    1075 	.db	0
      0022F3 05                    1076 	.uleb128	5
      0022F4 02                    1077 	.db	2
      0022F5 00 00 9B E8           1078 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$87)
      0022F9 03                    1079 	.db	3
      0022FA D6 01                 1080 	.sleb128	214
      0022FC 01                    1081 	.db	1
      0022FD 09                    1082 	.db	9
      0022FE 00 00                 1083 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$89-Sstm8s_tim4$TIM4_PrescalerConfig$87
      002300 03                    1084 	.db	3
      002301 07                    1085 	.sleb128	7
      002302 01                    1086 	.db	1
      002303 09                    1087 	.db	9
      002304 00 06                 1088 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$90-Sstm8s_tim4$TIM4_PrescalerConfig$89
      002306 03                    1089 	.db	3
      002307 03                    1090 	.sleb128	3
      002308 01                    1091 	.db	1
      002309 09                    1092 	.db	9
      00230A 00 06                 1093 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$91-Sstm8s_tim4$TIM4_PrescalerConfig$90
      00230C 03                    1094 	.db	3
      00230D 01                    1095 	.sleb128	1
      00230E 01                    1096 	.db	1
      00230F 09                    1097 	.db	9
      002310 00 01                 1098 	.dw	1+Sstm8s_tim4$TIM4_PrescalerConfig$92-Sstm8s_tim4$TIM4_PrescalerConfig$91
      002312 00                    1099 	.db	0
      002313 01                    1100 	.uleb128	1
      002314 01                    1101 	.db	1
      002315 00                    1102 	.db	0
      002316 05                    1103 	.uleb128	5
      002317 02                    1104 	.db	2
      002318 00 00 9B F5           1105 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$94)
      00231C 03                    1106 	.db	3
      00231D E9 01                 1107 	.sleb128	233
      00231F 01                    1108 	.db	1
      002320 09                    1109 	.db	9
      002321 00 00                 1110 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$96-Sstm8s_tim4$TIM4_ARRPreloadConfig$94
      002323 03                    1111 	.db	3
      002324 08                    1112 	.sleb128	8
      002325 01                    1113 	.db	1
      002326 09                    1114 	.db	9
      002327 00 03                 1115 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$97-Sstm8s_tim4$TIM4_ARRPreloadConfig$96
      002329 03                    1116 	.db	3
      00232A 7E                    1117 	.sleb128	-2
      00232B 01                    1118 	.db	1
      00232C 09                    1119 	.db	9
      00232D 00 07                 1120 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$99-Sstm8s_tim4$TIM4_ARRPreloadConfig$97
      00232F 03                    1121 	.db	3
      002330 02                    1122 	.sleb128	2
      002331 01                    1123 	.db	1
      002332 09                    1124 	.db	9
      002333 00 08                 1125 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$102-Sstm8s_tim4$TIM4_ARRPreloadConfig$99
      002335 03                    1126 	.db	3
      002336 04                    1127 	.sleb128	4
      002337 01                    1128 	.db	1
      002338 09                    1129 	.db	9
      002339 00 05                 1130 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$104-Sstm8s_tim4$TIM4_ARRPreloadConfig$102
      00233B 03                    1131 	.db	3
      00233C 02                    1132 	.sleb128	2
      00233D 01                    1133 	.db	1
      00233E 09                    1134 	.db	9
      00233F 00 01                 1135 	.dw	1+Sstm8s_tim4$TIM4_ARRPreloadConfig$105-Sstm8s_tim4$TIM4_ARRPreloadConfig$104
      002341 00                    1136 	.db	0
      002342 01                    1137 	.uleb128	1
      002343 01                    1138 	.db	1
      002344 00                    1139 	.db	0
      002345 05                    1140 	.uleb128	5
      002346 02                    1141 	.db	2
      002347 00 00 9C 0D           1142 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$107)
      00234B 03                    1143 	.db	3
      00234C 80 02                 1144 	.sleb128	256
      00234E 01                    1145 	.db	1
      00234F 09                    1146 	.db	9
      002350 00 00                 1147 	.dw	Sstm8s_tim4$TIM4_GenerateEvent$109-Sstm8s_tim4$TIM4_GenerateEvent$107
      002352 03                    1148 	.db	3
      002353 06                    1149 	.sleb128	6
      002354 01                    1150 	.db	1
      002355 09                    1151 	.db	9
      002356 00 06                 1152 	.dw	Sstm8s_tim4$TIM4_GenerateEvent$110-Sstm8s_tim4$TIM4_GenerateEvent$109
      002358 03                    1153 	.db	3
      002359 01                    1154 	.sleb128	1
      00235A 01                    1155 	.db	1
      00235B 09                    1156 	.db	9
      00235C 00 01                 1157 	.dw	1+Sstm8s_tim4$TIM4_GenerateEvent$111-Sstm8s_tim4$TIM4_GenerateEvent$110
      00235E 00                    1158 	.db	0
      00235F 01                    1159 	.uleb128	1
      002360 01                    1160 	.db	1
      002361 00                    1161 	.db	0
      002362 05                    1162 	.uleb128	5
      002363 02                    1163 	.db	2
      002364 00 00 9C 14           1164 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$113)
      002368 03                    1165 	.db	3
      002369 8F 02                 1166 	.sleb128	271
      00236B 01                    1167 	.db	1
      00236C 09                    1168 	.db	9
      00236D 00 00                 1169 	.dw	Sstm8s_tim4$TIM4_SetCounter$115-Sstm8s_tim4$TIM4_SetCounter$113
      00236F 03                    1170 	.db	3
      002370 03                    1171 	.sleb128	3
      002371 01                    1172 	.db	1
      002372 09                    1173 	.db	9
      002373 00 06                 1174 	.dw	Sstm8s_tim4$TIM4_SetCounter$116-Sstm8s_tim4$TIM4_SetCounter$115
      002375 03                    1175 	.db	3
      002376 01                    1176 	.sleb128	1
      002377 01                    1177 	.db	1
      002378 09                    1178 	.db	9
      002379 00 01                 1179 	.dw	1+Sstm8s_tim4$TIM4_SetCounter$117-Sstm8s_tim4$TIM4_SetCounter$116
      00237B 00                    1180 	.db	0
      00237C 01                    1181 	.uleb128	1
      00237D 01                    1182 	.db	1
      00237E 00                    1183 	.db	0
      00237F 05                    1184 	.uleb128	5
      002380 02                    1185 	.db	2
      002381 00 00 9C 1B           1186 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$119)
      002385 03                    1187 	.db	3
      002386 9B 02                 1188 	.sleb128	283
      002388 01                    1189 	.db	1
      002389 09                    1190 	.db	9
      00238A 00 00                 1191 	.dw	Sstm8s_tim4$TIM4_SetAutoreload$121-Sstm8s_tim4$TIM4_SetAutoreload$119
      00238C 03                    1192 	.db	3
      00238D 03                    1193 	.sleb128	3
      00238E 01                    1194 	.db	1
      00238F 09                    1195 	.db	9
      002390 00 06                 1196 	.dw	Sstm8s_tim4$TIM4_SetAutoreload$122-Sstm8s_tim4$TIM4_SetAutoreload$121
      002392 03                    1197 	.db	3
      002393 01                    1198 	.sleb128	1
      002394 01                    1199 	.db	1
      002395 09                    1200 	.db	9
      002396 00 01                 1201 	.dw	1+Sstm8s_tim4$TIM4_SetAutoreload$123-Sstm8s_tim4$TIM4_SetAutoreload$122
      002398 00                    1202 	.db	0
      002399 01                    1203 	.uleb128	1
      00239A 01                    1204 	.db	1
      00239B 00                    1205 	.db	0
      00239C 05                    1206 	.uleb128	5
      00239D 02                    1207 	.db	2
      00239E 00 00 9C 22           1208 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$125)
      0023A2 03                    1209 	.db	3
      0023A3 A6 02                 1210 	.sleb128	294
      0023A5 01                    1211 	.db	1
      0023A6 09                    1212 	.db	9
      0023A7 00 00                 1213 	.dw	Sstm8s_tim4$TIM4_GetCounter$127-Sstm8s_tim4$TIM4_GetCounter$125
      0023A9 03                    1214 	.db	3
      0023AA 03                    1215 	.sleb128	3
      0023AB 01                    1216 	.db	1
      0023AC 09                    1217 	.db	9
      0023AD 00 03                 1218 	.dw	Sstm8s_tim4$TIM4_GetCounter$128-Sstm8s_tim4$TIM4_GetCounter$127
      0023AF 03                    1219 	.db	3
      0023B0 01                    1220 	.sleb128	1
      0023B1 01                    1221 	.db	1
      0023B2 09                    1222 	.db	9
      0023B3 00 01                 1223 	.dw	1+Sstm8s_tim4$TIM4_GetCounter$129-Sstm8s_tim4$TIM4_GetCounter$128
      0023B5 00                    1224 	.db	0
      0023B6 01                    1225 	.uleb128	1
      0023B7 01                    1226 	.db	1
      0023B8 00                    1227 	.db	0
      0023B9 05                    1228 	.uleb128	5
      0023BA 02                    1229 	.db	2
      0023BB 00 00 9C 26           1230 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$131)
      0023BF 03                    1231 	.db	3
      0023C0 B1 02                 1232 	.sleb128	305
      0023C2 01                    1233 	.db	1
      0023C3 09                    1234 	.db	9
      0023C4 00 00                 1235 	.dw	Sstm8s_tim4$TIM4_GetPrescaler$133-Sstm8s_tim4$TIM4_GetPrescaler$131
      0023C6 03                    1236 	.db	3
      0023C7 03                    1237 	.sleb128	3
      0023C8 01                    1238 	.db	1
      0023C9 09                    1239 	.db	9
      0023CA 00 03                 1240 	.dw	Sstm8s_tim4$TIM4_GetPrescaler$134-Sstm8s_tim4$TIM4_GetPrescaler$133
      0023CC 03                    1241 	.db	3
      0023CD 01                    1242 	.sleb128	1
      0023CE 01                    1243 	.db	1
      0023CF 09                    1244 	.db	9
      0023D0 00 01                 1245 	.dw	1+Sstm8s_tim4$TIM4_GetPrescaler$135-Sstm8s_tim4$TIM4_GetPrescaler$134
      0023D2 00                    1246 	.db	0
      0023D3 01                    1247 	.uleb128	1
      0023D4 01                    1248 	.db	1
      0023D5 00                    1249 	.db	0
      0023D6 05                    1250 	.uleb128	5
      0023D7 02                    1251 	.db	2
      0023D8 00 00 9C 2A           1252 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$137)
      0023DC 03                    1253 	.db	3
      0023DD BE 02                 1254 	.sleb128	318
      0023DF 01                    1255 	.db	1
      0023E0 09                    1256 	.db	9
      0023E1 00 00                 1257 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$139-Sstm8s_tim4$TIM4_GetFlagStatus$137
      0023E3 03                    1258 	.db	3
      0023E4 07                    1259 	.sleb128	7
      0023E5 01                    1260 	.db	1
      0023E6 09                    1261 	.db	9
      0023E7 00 0B                 1262 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$141-Sstm8s_tim4$TIM4_GetFlagStatus$139
      0023E9 03                    1263 	.db	3
      0023EA 02                    1264 	.sleb128	2
      0023EB 01                    1265 	.db	1
      0023EC 09                    1266 	.db	9
      0023ED 00 05                 1267 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$144-Sstm8s_tim4$TIM4_GetFlagStatus$141
      0023EF 03                    1268 	.db	3
      0023F0 04                    1269 	.sleb128	4
      0023F1 01                    1270 	.db	1
      0023F2 09                    1271 	.db	9
      0023F3 00 01                 1272 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$146-Sstm8s_tim4$TIM4_GetFlagStatus$144
      0023F5 03                    1273 	.db	3
      0023F6 02                    1274 	.sleb128	2
      0023F7 01                    1275 	.db	1
      0023F8 09                    1276 	.db	9
      0023F9 00 00                 1277 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$147-Sstm8s_tim4$TIM4_GetFlagStatus$146
      0023FB 03                    1278 	.db	3
      0023FC 01                    1279 	.sleb128	1
      0023FD 01                    1280 	.db	1
      0023FE 09                    1281 	.db	9
      0023FF 00 01                 1282 	.dw	1+Sstm8s_tim4$TIM4_GetFlagStatus$148-Sstm8s_tim4$TIM4_GetFlagStatus$147
      002401 00                    1283 	.db	0
      002402 01                    1284 	.uleb128	1
      002403 01                    1285 	.db	1
      002404 00                    1286 	.db	0
      002405 05                    1287 	.uleb128	5
      002406 02                    1288 	.db	2
      002407 00 00 9C 3C           1289 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$150)
      00240B 03                    1290 	.db	3
      00240C D7 02                 1291 	.sleb128	343
      00240E 01                    1292 	.db	1
      00240F 09                    1293 	.db	9
      002410 00 00                 1294 	.dw	Sstm8s_tim4$TIM4_ClearFlag$152-Sstm8s_tim4$TIM4_ClearFlag$150
      002412 03                    1295 	.db	3
      002413 06                    1296 	.sleb128	6
      002414 01                    1297 	.db	1
      002415 09                    1298 	.db	9
      002416 00 06                 1299 	.dw	Sstm8s_tim4$TIM4_ClearFlag$153-Sstm8s_tim4$TIM4_ClearFlag$152
      002418 03                    1300 	.db	3
      002419 01                    1301 	.sleb128	1
      00241A 01                    1302 	.db	1
      00241B 09                    1303 	.db	9
      00241C 00 01                 1304 	.dw	1+Sstm8s_tim4$TIM4_ClearFlag$154-Sstm8s_tim4$TIM4_ClearFlag$153
      00241E 00                    1305 	.db	0
      00241F 01                    1306 	.uleb128	1
      002420 01                    1307 	.db	1
      002421 00                    1308 	.db	0
      002422 05                    1309 	.uleb128	5
      002423 02                    1310 	.db	2
      002424 00 00 9C 43           1311 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$156)
      002428 03                    1312 	.db	3
      002429 E7 02                 1313 	.sleb128	359
      00242B 01                    1314 	.db	1
      00242C 09                    1315 	.db	9
      00242D 00 01                 1316 	.dw	Sstm8s_tim4$TIM4_GetITStatus$159-Sstm8s_tim4$TIM4_GetITStatus$156
      00242F 03                    1317 	.db	3
      002430 09                    1318 	.sleb128	9
      002431 01                    1319 	.db	1
      002432 09                    1320 	.db	9
      002433 00 07                 1321 	.dw	Sstm8s_tim4$TIM4_GetITStatus$160-Sstm8s_tim4$TIM4_GetITStatus$159
      002435 03                    1322 	.db	3
      002436 02                    1323 	.sleb128	2
      002437 01                    1324 	.db	1
      002438 09                    1325 	.db	9
      002439 00 05                 1326 	.dw	Sstm8s_tim4$TIM4_GetITStatus$161-Sstm8s_tim4$TIM4_GetITStatus$160
      00243B 03                    1327 	.db	3
      00243C 02                    1328 	.sleb128	2
      00243D 01                    1329 	.db	1
      00243E 09                    1330 	.db	9
      00243F 00 0D                 1331 	.dw	Sstm8s_tim4$TIM4_GetITStatus$163-Sstm8s_tim4$TIM4_GetITStatus$161
      002441 03                    1332 	.db	3
      002442 02                    1333 	.sleb128	2
      002443 01                    1334 	.db	1
      002444 09                    1335 	.db	9
      002445 00 05                 1336 	.dw	Sstm8s_tim4$TIM4_GetITStatus$166-Sstm8s_tim4$TIM4_GetITStatus$163
      002447 03                    1337 	.db	3
      002448 04                    1338 	.sleb128	4
      002449 01                    1339 	.db	1
      00244A 09                    1340 	.db	9
      00244B 00 01                 1341 	.dw	Sstm8s_tim4$TIM4_GetITStatus$168-Sstm8s_tim4$TIM4_GetITStatus$166
      00244D 03                    1342 	.db	3
      00244E 02                    1343 	.sleb128	2
      00244F 01                    1344 	.db	1
      002450 09                    1345 	.db	9
      002451 00 00                 1346 	.dw	Sstm8s_tim4$TIM4_GetITStatus$169-Sstm8s_tim4$TIM4_GetITStatus$168
      002453 03                    1347 	.db	3
      002454 01                    1348 	.sleb128	1
      002455 01                    1349 	.db	1
      002456 09                    1350 	.db	9
      002457 00 03                 1351 	.dw	1+Sstm8s_tim4$TIM4_GetITStatus$171-Sstm8s_tim4$TIM4_GetITStatus$169
      002459 00                    1352 	.db	0
      00245A 01                    1353 	.uleb128	1
      00245B 01                    1354 	.db	1
      00245C 00                    1355 	.db	0
      00245D 05                    1356 	.uleb128	5
      00245E 02                    1357 	.db	2
      00245F 00 00 9C 66           1358 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$173)
      002463 03                    1359 	.db	3
      002464 86 03                 1360 	.sleb128	390
      002466 01                    1361 	.db	1
      002467 09                    1362 	.db	9
      002468 00 00                 1363 	.dw	Sstm8s_tim4$TIM4_ClearITPendingBit$175-Sstm8s_tim4$TIM4_ClearITPendingBit$173
      00246A 03                    1364 	.db	3
      00246B 06                    1365 	.sleb128	6
      00246C 01                    1366 	.db	1
      00246D 09                    1367 	.db	9
      00246E 00 06                 1368 	.dw	Sstm8s_tim4$TIM4_ClearITPendingBit$176-Sstm8s_tim4$TIM4_ClearITPendingBit$175
      002470 03                    1369 	.db	3
      002471 01                    1370 	.sleb128	1
      002472 01                    1371 	.db	1
      002473 09                    1372 	.db	9
      002474 00 01                 1373 	.dw	1+Sstm8s_tim4$TIM4_ClearITPendingBit$177-Sstm8s_tim4$TIM4_ClearITPendingBit$176
      002476 00                    1374 	.db	0
      002477 01                    1375 	.uleb128	1
      002478 01                    1376 	.db	1
      002479                       1377 Ldebug_line_end:
                                   1378 
                                   1379 	.area .debug_loc (NOLOAD)
      003C30                       1380 Ldebug_loc_start:
      003C30 00 00 9C 66           1381 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$174)
      003C34 00 00 9C 6D           1382 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$178)
      003C38 00 02                 1383 	.dw	2
      003C3A 78                    1384 	.db	120
      003C3B 01                    1385 	.sleb128	1
      003C3C 00 00 00 00           1386 	.dw	0,0
      003C40 00 00 00 00           1387 	.dw	0,0
      003C44 00 00 9C 65           1388 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$170)
      003C48 00 00 9C 66           1389 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$172)
      003C4C 00 02                 1390 	.dw	2
      003C4E 78                    1391 	.db	120
      003C4F 01                    1392 	.sleb128	1
      003C50 00 00 9C 44           1393 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$158)
      003C54 00 00 9C 65           1394 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$170)
      003C58 00 02                 1395 	.dw	2
      003C5A 78                    1396 	.db	120
      003C5B 02                    1397 	.sleb128	2
      003C5C 00 00 9C 43           1398 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$157)
      003C60 00 00 9C 44           1399 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$158)
      003C64 00 02                 1400 	.dw	2
      003C66 78                    1401 	.db	120
      003C67 01                    1402 	.sleb128	1
      003C68 00 00 00 00           1403 	.dw	0,0
      003C6C 00 00 00 00           1404 	.dw	0,0
      003C70 00 00 9C 3C           1405 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$151)
      003C74 00 00 9C 43           1406 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$155)
      003C78 00 02                 1407 	.dw	2
      003C7A 78                    1408 	.db	120
      003C7B 01                    1409 	.sleb128	1
      003C7C 00 00 00 00           1410 	.dw	0,0
      003C80 00 00 00 00           1411 	.dw	0,0
      003C84 00 00 9C 2A           1412 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$138)
      003C88 00 00 9C 3C           1413 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$149)
      003C8C 00 02                 1414 	.dw	2
      003C8E 78                    1415 	.db	120
      003C8F 01                    1416 	.sleb128	1
      003C90 00 00 00 00           1417 	.dw	0,0
      003C94 00 00 00 00           1418 	.dw	0,0
      003C98 00 00 9C 26           1419 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$132)
      003C9C 00 00 9C 2A           1420 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$136)
      003CA0 00 02                 1421 	.dw	2
      003CA2 78                    1422 	.db	120
      003CA3 01                    1423 	.sleb128	1
      003CA4 00 00 00 00           1424 	.dw	0,0
      003CA8 00 00 00 00           1425 	.dw	0,0
      003CAC 00 00 9C 22           1426 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$126)
      003CB0 00 00 9C 26           1427 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$130)
      003CB4 00 02                 1428 	.dw	2
      003CB6 78                    1429 	.db	120
      003CB7 01                    1430 	.sleb128	1
      003CB8 00 00 00 00           1431 	.dw	0,0
      003CBC 00 00 00 00           1432 	.dw	0,0
      003CC0 00 00 9C 1B           1433 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$120)
      003CC4 00 00 9C 22           1434 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$124)
      003CC8 00 02                 1435 	.dw	2
      003CCA 78                    1436 	.db	120
      003CCB 01                    1437 	.sleb128	1
      003CCC 00 00 00 00           1438 	.dw	0,0
      003CD0 00 00 00 00           1439 	.dw	0,0
      003CD4 00 00 9C 14           1440 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$114)
      003CD8 00 00 9C 1B           1441 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$118)
      003CDC 00 02                 1442 	.dw	2
      003CDE 78                    1443 	.db	120
      003CDF 01                    1444 	.sleb128	1
      003CE0 00 00 00 00           1445 	.dw	0,0
      003CE4 00 00 00 00           1446 	.dw	0,0
      003CE8 00 00 9C 0D           1447 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$108)
      003CEC 00 00 9C 14           1448 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$112)
      003CF0 00 02                 1449 	.dw	2
      003CF2 78                    1450 	.db	120
      003CF3 01                    1451 	.sleb128	1
      003CF4 00 00 00 00           1452 	.dw	0,0
      003CF8 00 00 00 00           1453 	.dw	0,0
      003CFC 00 00 9B F5           1454 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$95)
      003D00 00 00 9C 0D           1455 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$106)
      003D04 00 02                 1456 	.dw	2
      003D06 78                    1457 	.db	120
      003D07 01                    1458 	.sleb128	1
      003D08 00 00 00 00           1459 	.dw	0,0
      003D0C 00 00 00 00           1460 	.dw	0,0
      003D10 00 00 9B E8           1461 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$88)
      003D14 00 00 9B F5           1462 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$93)
      003D18 00 02                 1463 	.dw	2
      003D1A 78                    1464 	.db	120
      003D1B 01                    1465 	.sleb128	1
      003D1C 00 00 00 00           1466 	.dw	0,0
      003D20 00 00 00 00           1467 	.dw	0,0
      003D24 00 00 9B D0           1468 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$75)
      003D28 00 00 9B E8           1469 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$86)
      003D2C 00 02                 1470 	.dw	2
      003D2E 78                    1471 	.db	120
      003D2F 01                    1472 	.sleb128	1
      003D30 00 00 00 00           1473 	.dw	0,0
      003D34 00 00 00 00           1474 	.dw	0,0
      003D38 00 00 9B B8           1475 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$62)
      003D3C 00 00 9B D0           1476 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$73)
      003D40 00 02                 1477 	.dw	2
      003D42 78                    1478 	.db	120
      003D43 01                    1479 	.sleb128	1
      003D44 00 00 00 00           1480 	.dw	0,0
      003D48 00 00 00 00           1481 	.dw	0,0
      003D4C 00 00 9B A0           1482 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$49)
      003D50 00 00 9B B8           1483 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$60)
      003D54 00 02                 1484 	.dw	2
      003D56 78                    1485 	.db	120
      003D57 01                    1486 	.sleb128	1
      003D58 00 00 00 00           1487 	.dw	0,0
      003D5C 00 00 00 00           1488 	.dw	0,0
      003D60 00 00 9B 9F           1489 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$45)
      003D64 00 00 9B A0           1490 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$47)
      003D68 00 02                 1491 	.dw	2
      003D6A 78                    1492 	.db	120
      003D6B 01                    1493 	.sleb128	1
      003D6C 00 00 9B 99           1494 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$42)
      003D70 00 00 9B 9F           1495 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$45)
      003D74 00 02                 1496 	.dw	2
      003D76 78                    1497 	.db	120
      003D77 02                    1498 	.sleb128	2
      003D78 00 00 9B 93           1499 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$41)
      003D7C 00 00 9B 99           1500 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$42)
      003D80 00 02                 1501 	.dw	2
      003D82 78                    1502 	.db	120
      003D83 03                    1503 	.sleb128	3
      003D84 00 00 9B 80           1504 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$33)
      003D88 00 00 9B 93           1505 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$41)
      003D8C 00 02                 1506 	.dw	2
      003D8E 78                    1507 	.db	120
      003D8F 02                    1508 	.sleb128	2
      003D90 00 00 9B 7F           1509 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$32)
      003D94 00 00 9B 80           1510 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$33)
      003D98 00 02                 1511 	.dw	2
      003D9A 78                    1512 	.db	120
      003D9B 01                    1513 	.sleb128	1
      003D9C 00 00 00 00           1514 	.dw	0,0
      003DA0 00 00 00 00           1515 	.dw	0,0
      003DA4 00 00 9B 67           1516 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$19)
      003DA8 00 00 9B 7F           1517 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$30)
      003DAC 00 02                 1518 	.dw	2
      003DAE 78                    1519 	.db	120
      003DAF 01                    1520 	.sleb128	1
      003DB0 00 00 00 00           1521 	.dw	0,0
      003DB4 00 00 00 00           1522 	.dw	0,0
      003DB8 00 00 9B 5A           1523 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)
      003DBC 00 00 9B 67           1524 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$17)
      003DC0 00 02                 1525 	.dw	2
      003DC2 78                    1526 	.db	120
      003DC3 01                    1527 	.sleb128	1
      003DC4 00 00 00 00           1528 	.dw	0,0
      003DC8 00 00 00 00           1529 	.dw	0,0
      003DCC 00 00 9B 41           1530 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)
      003DD0 00 00 9B 5A           1531 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$10)
      003DD4 00 02                 1532 	.dw	2
      003DD6 78                    1533 	.db	120
      003DD7 01                    1534 	.sleb128	1
      003DD8 00 00 00 00           1535 	.dw	0,0
      003DDC 00 00 00 00           1536 	.dw	0,0
                                   1537 
                                   1538 	.area .debug_abbrev (NOLOAD)
      00055D                       1539 Ldebug_abbrev:
      00055D 07                    1540 	.uleb128	7
      00055E 2E                    1541 	.uleb128	46
      00055F 00                    1542 	.db	0
      000560 03                    1543 	.uleb128	3
      000561 08                    1544 	.uleb128	8
      000562 11                    1545 	.uleb128	17
      000563 01                    1546 	.uleb128	1
      000564 12                    1547 	.uleb128	18
      000565 01                    1548 	.uleb128	1
      000566 3F                    1549 	.uleb128	63
      000567 0C                    1550 	.uleb128	12
      000568 40                    1551 	.uleb128	64
      000569 06                    1552 	.uleb128	6
      00056A 49                    1553 	.uleb128	73
      00056B 13                    1554 	.uleb128	19
      00056C 00                    1555 	.uleb128	0
      00056D 00                    1556 	.uleb128	0
      00056E 04                    1557 	.uleb128	4
      00056F 05                    1558 	.uleb128	5
      000570 00                    1559 	.db	0
      000571 02                    1560 	.uleb128	2
      000572 0A                    1561 	.uleb128	10
      000573 03                    1562 	.uleb128	3
      000574 08                    1563 	.uleb128	8
      000575 49                    1564 	.uleb128	73
      000576 13                    1565 	.uleb128	19
      000577 00                    1566 	.uleb128	0
      000578 00                    1567 	.uleb128	0
      000579 03                    1568 	.uleb128	3
      00057A 2E                    1569 	.uleb128	46
      00057B 01                    1570 	.db	1
      00057C 01                    1571 	.uleb128	1
      00057D 13                    1572 	.uleb128	19
      00057E 03                    1573 	.uleb128	3
      00057F 08                    1574 	.uleb128	8
      000580 11                    1575 	.uleb128	17
      000581 01                    1576 	.uleb128	1
      000582 12                    1577 	.uleb128	18
      000583 01                    1578 	.uleb128	1
      000584 3F                    1579 	.uleb128	63
      000585 0C                    1580 	.uleb128	12
      000586 40                    1581 	.uleb128	64
      000587 06                    1582 	.uleb128	6
      000588 00                    1583 	.uleb128	0
      000589 00                    1584 	.uleb128	0
      00058A 09                    1585 	.uleb128	9
      00058B 34                    1586 	.uleb128	52
      00058C 00                    1587 	.db	0
      00058D 02                    1588 	.uleb128	2
      00058E 0A                    1589 	.uleb128	10
      00058F 03                    1590 	.uleb128	3
      000590 08                    1591 	.uleb128	8
      000591 49                    1592 	.uleb128	73
      000592 13                    1593 	.uleb128	19
      000593 00                    1594 	.uleb128	0
      000594 00                    1595 	.uleb128	0
      000595 08                    1596 	.uleb128	8
      000596 2E                    1597 	.uleb128	46
      000597 01                    1598 	.db	1
      000598 01                    1599 	.uleb128	1
      000599 13                    1600 	.uleb128	19
      00059A 03                    1601 	.uleb128	3
      00059B 08                    1602 	.uleb128	8
      00059C 11                    1603 	.uleb128	17
      00059D 01                    1604 	.uleb128	1
      00059E 12                    1605 	.uleb128	18
      00059F 01                    1606 	.uleb128	1
      0005A0 3F                    1607 	.uleb128	63
      0005A1 0C                    1608 	.uleb128	12
      0005A2 40                    1609 	.uleb128	64
      0005A3 06                    1610 	.uleb128	6
      0005A4 49                    1611 	.uleb128	73
      0005A5 13                    1612 	.uleb128	19
      0005A6 00                    1613 	.uleb128	0
      0005A7 00                    1614 	.uleb128	0
      0005A8 01                    1615 	.uleb128	1
      0005A9 11                    1616 	.uleb128	17
      0005AA 01                    1617 	.db	1
      0005AB 03                    1618 	.uleb128	3
      0005AC 08                    1619 	.uleb128	8
      0005AD 10                    1620 	.uleb128	16
      0005AE 06                    1621 	.uleb128	6
      0005AF 13                    1622 	.uleb128	19
      0005B0 0B                    1623 	.uleb128	11
      0005B1 25                    1624 	.uleb128	37
      0005B2 08                    1625 	.uleb128	8
      0005B3 00                    1626 	.uleb128	0
      0005B4 00                    1627 	.uleb128	0
      0005B5 06                    1628 	.uleb128	6
      0005B6 0B                    1629 	.uleb128	11
      0005B7 00                    1630 	.db	0
      0005B8 11                    1631 	.uleb128	17
      0005B9 01                    1632 	.uleb128	1
      0005BA 12                    1633 	.uleb128	18
      0005BB 01                    1634 	.uleb128	1
      0005BC 00                    1635 	.uleb128	0
      0005BD 00                    1636 	.uleb128	0
      0005BE 02                    1637 	.uleb128	2
      0005BF 2E                    1638 	.uleb128	46
      0005C0 00                    1639 	.db	0
      0005C1 03                    1640 	.uleb128	3
      0005C2 08                    1641 	.uleb128	8
      0005C3 11                    1642 	.uleb128	17
      0005C4 01                    1643 	.uleb128	1
      0005C5 12                    1644 	.uleb128	18
      0005C6 01                    1645 	.uleb128	1
      0005C7 3F                    1646 	.uleb128	63
      0005C8 0C                    1647 	.uleb128	12
      0005C9 40                    1648 	.uleb128	64
      0005CA 06                    1649 	.uleb128	6
      0005CB 00                    1650 	.uleb128	0
      0005CC 00                    1651 	.uleb128	0
      0005CD 0A                    1652 	.uleb128	10
      0005CE 2E                    1653 	.uleb128	46
      0005CF 01                    1654 	.db	1
      0005D0 03                    1655 	.uleb128	3
      0005D1 08                    1656 	.uleb128	8
      0005D2 11                    1657 	.uleb128	17
      0005D3 01                    1658 	.uleb128	1
      0005D4 12                    1659 	.uleb128	18
      0005D5 01                    1660 	.uleb128	1
      0005D6 3F                    1661 	.uleb128	63
      0005D7 0C                    1662 	.uleb128	12
      0005D8 40                    1663 	.uleb128	64
      0005D9 06                    1664 	.uleb128	6
      0005DA 00                    1665 	.uleb128	0
      0005DB 00                    1666 	.uleb128	0
      0005DC 05                    1667 	.uleb128	5
      0005DD 24                    1668 	.uleb128	36
      0005DE 00                    1669 	.db	0
      0005DF 03                    1670 	.uleb128	3
      0005E0 08                    1671 	.uleb128	8
      0005E1 0B                    1672 	.uleb128	11
      0005E2 0B                    1673 	.uleb128	11
      0005E3 3E                    1674 	.uleb128	62
      0005E4 0B                    1675 	.uleb128	11
      0005E5 00                    1676 	.uleb128	0
      0005E6 00                    1677 	.uleb128	0
      0005E7 00                    1678 	.uleb128	0
                                   1679 
                                   1680 	.area .debug_info (NOLOAD)
      00353E 00 00 05 1F           1681 	.dw	0,Ldebug_info_end-Ldebug_info_start
      003542                       1682 Ldebug_info_start:
      003542 00 02                 1683 	.dw	2
      003544 00 00 05 5D           1684 	.dw	0,(Ldebug_abbrev)
      003548 04                    1685 	.db	4
      003549 01                    1686 	.uleb128	1
      00354A 2E 2E 2F 53 50 4C 2F  1687 	.ascii "../SPL/src/stm8s_tim4.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      003561 00                    1688 	.db	0
      003562 00 00 21 28           1689 	.dw	0,(Ldebug_line_start+-4)
      003566 01                    1690 	.db	1
      003567 53 44 43 43 20 76 65  1691 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      003580 00                    1692 	.db	0
      003581 02                    1693 	.uleb128	2
      003582 54 49 4D 34 5F 44 65  1694 	.ascii "TIM4_DeInit"
             49 6E 69 74
      00358D 00                    1695 	.db	0
      00358E 00 00 9B 41           1696 	.dw	0,(_TIM4_DeInit)
      003592 00 00 9B 5A           1697 	.dw	0,(XG$TIM4_DeInit$0$0+1)
      003596 01                    1698 	.db	1
      003597 00 00 3D CC           1699 	.dw	0,(Ldebug_loc_start+412)
      00359B 03                    1700 	.uleb128	3
      00359C 00 00 00 AD           1701 	.dw	0,173
      0035A0 54 49 4D 34 5F 54 69  1702 	.ascii "TIM4_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      0035B1 00                    1703 	.db	0
      0035B2 00 00 9B 5A           1704 	.dw	0,(_TIM4_TimeBaseInit)
      0035B6 00 00 9B 67           1705 	.dw	0,(XG$TIM4_TimeBaseInit$0$0+1)
      0035BA 01                    1706 	.db	1
      0035BB 00 00 3D B8           1707 	.dw	0,(Ldebug_loc_start+392)
      0035BF 04                    1708 	.uleb128	4
      0035C0 02                    1709 	.db	2
      0035C1 91                    1710 	.db	145
      0035C2 02                    1711 	.sleb128	2
      0035C3 54 49 4D 34 5F 50 72  1712 	.ascii "TIM4_Prescaler"
             65 73 63 61 6C 65 72
      0035D1 00                    1713 	.db	0
      0035D2 00 00 00 AD           1714 	.dw	0,173
      0035D6 04                    1715 	.uleb128	4
      0035D7 02                    1716 	.db	2
      0035D8 91                    1717 	.db	145
      0035D9 03                    1718 	.sleb128	3
      0035DA 54 49 4D 34 5F 50 65  1719 	.ascii "TIM4_Period"
             72 69 6F 64
      0035E5 00                    1720 	.db	0
      0035E6 00 00 00 AD           1721 	.dw	0,173
      0035EA 00                    1722 	.uleb128	0
      0035EB 05                    1723 	.uleb128	5
      0035EC 75 6E 73 69 67 6E 65  1724 	.ascii "unsigned char"
             64 20 63 68 61 72
      0035F9 00                    1725 	.db	0
      0035FA 01                    1726 	.db	1
      0035FB 08                    1727 	.db	8
      0035FC 03                    1728 	.uleb128	3
      0035FD 00 00 00 FD           1729 	.dw	0,253
      003601 54 49 4D 34 5F 43 6D  1730 	.ascii "TIM4_Cmd"
             64
      003609 00                    1731 	.db	0
      00360A 00 00 9B 67           1732 	.dw	0,(_TIM4_Cmd)
      00360E 00 00 9B 7F           1733 	.dw	0,(XG$TIM4_Cmd$0$0+1)
      003612 01                    1734 	.db	1
      003613 00 00 3D A4           1735 	.dw	0,(Ldebug_loc_start+372)
      003617 04                    1736 	.uleb128	4
      003618 02                    1737 	.db	2
      003619 91                    1738 	.db	145
      00361A 02                    1739 	.sleb128	2
      00361B 4E 65 77 53 74 61 74  1740 	.ascii "NewState"
             65
      003623 00                    1741 	.db	0
      003624 00 00 00 AD           1742 	.dw	0,173
      003628 06                    1743 	.uleb128	6
      003629 00 00 9B 71           1744 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$22)
      00362D 00 00 9B 76           1745 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$24)
      003631 06                    1746 	.uleb128	6
      003632 00 00 9B 79           1747 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$25)
      003636 00 00 9B 7E           1748 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$27)
      00363A 00                    1749 	.uleb128	0
      00363B 03                    1750 	.uleb128	3
      00363C 00 00 01 51           1751 	.dw	0,337
      003640 54 49 4D 34 5F 49 54  1752 	.ascii "TIM4_ITConfig"
             43 6F 6E 66 69 67
      00364D 00                    1753 	.db	0
      00364E 00 00 9B 7F           1754 	.dw	0,(_TIM4_ITConfig)
      003652 00 00 9B A0           1755 	.dw	0,(XG$TIM4_ITConfig$0$0+1)
      003656 01                    1756 	.db	1
      003657 00 00 3D 60           1757 	.dw	0,(Ldebug_loc_start+304)
      00365B 04                    1758 	.uleb128	4
      00365C 02                    1759 	.db	2
      00365D 91                    1760 	.db	145
      00365E 02                    1761 	.sleb128	2
      00365F 54 49 4D 34 5F 49 54  1762 	.ascii "TIM4_IT"
      003666 00                    1763 	.db	0
      003667 00 00 00 AD           1764 	.dw	0,173
      00366B 04                    1765 	.uleb128	4
      00366C 02                    1766 	.db	2
      00366D 91                    1767 	.db	145
      00366E 03                    1768 	.sleb128	3
      00366F 4E 65 77 53 74 61 74  1769 	.ascii "NewState"
             65
      003677 00                    1770 	.db	0
      003678 00 00 00 AD           1771 	.dw	0,173
      00367C 06                    1772 	.uleb128	6
      00367D 00 00 9B 8A           1773 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$36)
      003681 00 00 9B 8F           1774 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$38)
      003685 06                    1775 	.uleb128	6
      003686 00 00 9B 92           1776 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$39)
      00368A 00 00 9B 9E           1777 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$43)
      00368E 00                    1778 	.uleb128	0
      00368F 03                    1779 	.uleb128	3
      003690 00 00 01 A0           1780 	.dw	0,416
      003694 54 49 4D 34 5F 55 70  1781 	.ascii "TIM4_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      0036AC 00                    1782 	.db	0
      0036AD 00 00 9B A0           1783 	.dw	0,(_TIM4_UpdateDisableConfig)
      0036B1 00 00 9B B8           1784 	.dw	0,(XG$TIM4_UpdateDisableConfig$0$0+1)
      0036B5 01                    1785 	.db	1
      0036B6 00 00 3D 4C           1786 	.dw	0,(Ldebug_loc_start+284)
      0036BA 04                    1787 	.uleb128	4
      0036BB 02                    1788 	.db	2
      0036BC 91                    1789 	.db	145
      0036BD 02                    1790 	.sleb128	2
      0036BE 4E 65 77 53 74 61 74  1791 	.ascii "NewState"
             65
      0036C6 00                    1792 	.db	0
      0036C7 00 00 00 AD           1793 	.dw	0,173
      0036CB 06                    1794 	.uleb128	6
      0036CC 00 00 9B AA           1795 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$52)
      0036D0 00 00 9B AF           1796 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$54)
      0036D4 06                    1797 	.uleb128	6
      0036D5 00 00 9B B2           1798 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$55)
      0036D9 00 00 9B B7           1799 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$57)
      0036DD 00                    1800 	.uleb128	0
      0036DE 03                    1801 	.uleb128	3
      0036DF 00 00 01 F8           1802 	.dw	0,504
      0036E3 54 49 4D 34 5F 55 70  1803 	.ascii "TIM4_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      0036FB 00                    1804 	.db	0
      0036FC 00 00 9B B8           1805 	.dw	0,(_TIM4_UpdateRequestConfig)
      003700 00 00 9B D0           1806 	.dw	0,(XG$TIM4_UpdateRequestConfig$0$0+1)
      003704 01                    1807 	.db	1
      003705 00 00 3D 38           1808 	.dw	0,(Ldebug_loc_start+264)
      003709 04                    1809 	.uleb128	4
      00370A 02                    1810 	.db	2
      00370B 91                    1811 	.db	145
      00370C 02                    1812 	.sleb128	2
      00370D 54 49 4D 34 5F 55 70  1813 	.ascii "TIM4_UpdateSource"
             64 61 74 65 53 6F 75
             72 63 65
      00371E 00                    1814 	.db	0
      00371F 00 00 00 AD           1815 	.dw	0,173
      003723 06                    1816 	.uleb128	6
      003724 00 00 9B C2           1817 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$65)
      003728 00 00 9B C7           1818 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$67)
      00372C 06                    1819 	.uleb128	6
      00372D 00 00 9B CA           1820 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$68)
      003731 00 00 9B CF           1821 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$70)
      003735 00                    1822 	.uleb128	0
      003736 03                    1823 	.uleb128	3
      003737 00 00 02 49           1824 	.dw	0,585
      00373B 54 49 4D 34 5F 53 65  1825 	.ascii "TIM4_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      003752 00                    1826 	.db	0
      003753 00 00 9B D0           1827 	.dw	0,(_TIM4_SelectOnePulseMode)
      003757 00 00 9B E8           1828 	.dw	0,(XG$TIM4_SelectOnePulseMode$0$0+1)
      00375B 01                    1829 	.db	1
      00375C 00 00 3D 24           1830 	.dw	0,(Ldebug_loc_start+244)
      003760 04                    1831 	.uleb128	4
      003761 02                    1832 	.db	2
      003762 91                    1833 	.db	145
      003763 02                    1834 	.sleb128	2
      003764 54 49 4D 34 5F 4F 50  1835 	.ascii "TIM4_OPMode"
             4D 6F 64 65
      00376F 00                    1836 	.db	0
      003770 00 00 00 AD           1837 	.dw	0,173
      003774 06                    1838 	.uleb128	6
      003775 00 00 9B DA           1839 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$78)
      003779 00 00 9B DF           1840 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$80)
      00377D 06                    1841 	.uleb128	6
      00377E 00 00 9B E2           1842 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$81)
      003782 00 00 9B E7           1843 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$83)
      003786 00                    1844 	.uleb128	0
      003787 03                    1845 	.uleb128	3
      003788 00 00 02 9E           1846 	.dw	0,670
      00378C 54 49 4D 34 5F 50 72  1847 	.ascii "TIM4_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0037A0 00                    1848 	.db	0
      0037A1 00 00 9B E8           1849 	.dw	0,(_TIM4_PrescalerConfig)
      0037A5 00 00 9B F5           1850 	.dw	0,(XG$TIM4_PrescalerConfig$0$0+1)
      0037A9 01                    1851 	.db	1
      0037AA 00 00 3D 10           1852 	.dw	0,(Ldebug_loc_start+224)
      0037AE 04                    1853 	.uleb128	4
      0037AF 02                    1854 	.db	2
      0037B0 91                    1855 	.db	145
      0037B1 02                    1856 	.sleb128	2
      0037B2 50 72 65 73 63 61 6C  1857 	.ascii "Prescaler"
             65 72
      0037BB 00                    1858 	.db	0
      0037BC 00 00 00 AD           1859 	.dw	0,173
      0037C0 04                    1860 	.uleb128	4
      0037C1 02                    1861 	.db	2
      0037C2 91                    1862 	.db	145
      0037C3 03                    1863 	.sleb128	3
      0037C4 54 49 4D 34 5F 50 53  1864 	.ascii "TIM4_PSCReloadMode"
             43 52 65 6C 6F 61 64
             4D 6F 64 65
      0037D6 00                    1865 	.db	0
      0037D7 00 00 00 AD           1866 	.dw	0,173
      0037DB 00                    1867 	.uleb128	0
      0037DC 03                    1868 	.uleb128	3
      0037DD 00 00 02 EA           1869 	.dw	0,746
      0037E1 54 49 4D 34 5F 41 52  1870 	.ascii "TIM4_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      0037F6 00                    1871 	.db	0
      0037F7 00 00 9B F5           1872 	.dw	0,(_TIM4_ARRPreloadConfig)
      0037FB 00 00 9C 0D           1873 	.dw	0,(XG$TIM4_ARRPreloadConfig$0$0+1)
      0037FF 01                    1874 	.db	1
      003800 00 00 3C FC           1875 	.dw	0,(Ldebug_loc_start+204)
      003804 04                    1876 	.uleb128	4
      003805 02                    1877 	.db	2
      003806 91                    1878 	.db	145
      003807 02                    1879 	.sleb128	2
      003808 4E 65 77 53 74 61 74  1880 	.ascii "NewState"
             65
      003810 00                    1881 	.db	0
      003811 00 00 00 AD           1882 	.dw	0,173
      003815 06                    1883 	.uleb128	6
      003816 00 00 9B FF           1884 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$98)
      00381A 00 00 9C 04           1885 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$100)
      00381E 06                    1886 	.uleb128	6
      00381F 00 00 9C 07           1887 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$101)
      003823 00 00 9C 0C           1888 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$103)
      003827 00                    1889 	.uleb128	0
      003828 03                    1890 	.uleb128	3
      003829 00 00 03 29           1891 	.dw	0,809
      00382D 54 49 4D 34 5F 47 65  1892 	.ascii "TIM4_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      00383F 00                    1893 	.db	0
      003840 00 00 9C 0D           1894 	.dw	0,(_TIM4_GenerateEvent)
      003844 00 00 9C 14           1895 	.dw	0,(XG$TIM4_GenerateEvent$0$0+1)
      003848 01                    1896 	.db	1
      003849 00 00 3C E8           1897 	.dw	0,(Ldebug_loc_start+184)
      00384D 04                    1898 	.uleb128	4
      00384E 02                    1899 	.db	2
      00384F 91                    1900 	.db	145
      003850 02                    1901 	.sleb128	2
      003851 54 49 4D 34 5F 45 76  1902 	.ascii "TIM4_EventSource"
             65 6E 74 53 6F 75 72
             63 65
      003861 00                    1903 	.db	0
      003862 00 00 00 AD           1904 	.dw	0,173
      003866 00                    1905 	.uleb128	0
      003867 03                    1906 	.uleb128	3
      003868 00 00 03 5C           1907 	.dw	0,860
      00386C 54 49 4D 34 5F 53 65  1908 	.ascii "TIM4_SetCounter"
             74 43 6F 75 6E 74 65
             72
      00387B 00                    1909 	.db	0
      00387C 00 00 9C 14           1910 	.dw	0,(_TIM4_SetCounter)
      003880 00 00 9C 1B           1911 	.dw	0,(XG$TIM4_SetCounter$0$0+1)
      003884 01                    1912 	.db	1
      003885 00 00 3C D4           1913 	.dw	0,(Ldebug_loc_start+164)
      003889 04                    1914 	.uleb128	4
      00388A 02                    1915 	.db	2
      00388B 91                    1916 	.db	145
      00388C 02                    1917 	.sleb128	2
      00388D 43 6F 75 6E 74 65 72  1918 	.ascii "Counter"
      003894 00                    1919 	.db	0
      003895 00 00 00 AD           1920 	.dw	0,173
      003899 00                    1921 	.uleb128	0
      00389A 03                    1922 	.uleb128	3
      00389B 00 00 03 95           1923 	.dw	0,917
      00389F 54 49 4D 34 5F 53 65  1924 	.ascii "TIM4_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      0038B1 00                    1925 	.db	0
      0038B2 00 00 9C 1B           1926 	.dw	0,(_TIM4_SetAutoreload)
      0038B6 00 00 9C 22           1927 	.dw	0,(XG$TIM4_SetAutoreload$0$0+1)
      0038BA 01                    1928 	.db	1
      0038BB 00 00 3C C0           1929 	.dw	0,(Ldebug_loc_start+144)
      0038BF 04                    1930 	.uleb128	4
      0038C0 02                    1931 	.db	2
      0038C1 91                    1932 	.db	145
      0038C2 02                    1933 	.sleb128	2
      0038C3 41 75 74 6F 72 65 6C  1934 	.ascii "Autoreload"
             6F 61 64
      0038CD 00                    1935 	.db	0
      0038CE 00 00 00 AD           1936 	.dw	0,173
      0038D2 00                    1937 	.uleb128	0
      0038D3 07                    1938 	.uleb128	7
      0038D4 54 49 4D 34 5F 47 65  1939 	.ascii "TIM4_GetCounter"
             74 43 6F 75 6E 74 65
             72
      0038E3 00                    1940 	.db	0
      0038E4 00 00 9C 22           1941 	.dw	0,(_TIM4_GetCounter)
      0038E8 00 00 9C 26           1942 	.dw	0,(XG$TIM4_GetCounter$0$0+1)
      0038EC 01                    1943 	.db	1
      0038ED 00 00 3C AC           1944 	.dw	0,(Ldebug_loc_start+124)
      0038F1 00 00 00 AD           1945 	.dw	0,173
      0038F5 07                    1946 	.uleb128	7
      0038F6 54 49 4D 34 5F 47 65  1947 	.ascii "TIM4_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      003907 00                    1948 	.db	0
      003908 00 00 9C 26           1949 	.dw	0,(_TIM4_GetPrescaler)
      00390C 00 00 9C 2A           1950 	.dw	0,(XG$TIM4_GetPrescaler$0$0+1)
      003910 01                    1951 	.db	1
      003911 00 00 3C 98           1952 	.dw	0,(Ldebug_loc_start+104)
      003915 00 00 00 AD           1953 	.dw	0,173
      003919 08                    1954 	.uleb128	8
      00391A 00 00 04 3A           1955 	.dw	0,1082
      00391E 54 49 4D 34 5F 47 65  1956 	.ascii "TIM4_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      003930 00                    1957 	.db	0
      003931 00 00 9C 2A           1958 	.dw	0,(_TIM4_GetFlagStatus)
      003935 00 00 9C 3C           1959 	.dw	0,(XG$TIM4_GetFlagStatus$0$0+1)
      003939 01                    1960 	.db	1
      00393A 00 00 3C 84           1961 	.dw	0,(Ldebug_loc_start+84)
      00393E 00 00 00 AD           1962 	.dw	0,173
      003942 04                    1963 	.uleb128	4
      003943 02                    1964 	.db	2
      003944 91                    1965 	.db	145
      003945 02                    1966 	.sleb128	2
      003946 54 49 4D 34 5F 46 4C  1967 	.ascii "TIM4_FLAG"
             41 47
      00394F 00                    1968 	.db	0
      003950 00 00 00 AD           1969 	.dw	0,173
      003954 06                    1970 	.uleb128	6
      003955 00 00 9C 35           1971 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$140)
      003959 00 00 9C 37           1972 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$142)
      00395D 06                    1973 	.uleb128	6
      00395E 00 00 9C 3A           1974 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$143)
      003962 00 00 9C 3B           1975 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$145)
      003966 09                    1976 	.uleb128	9
      003967 01                    1977 	.db	1
      003968 50                    1978 	.db	80
      003969 62 69 74 73 74 61 74  1979 	.ascii "bitstatus"
             75 73
      003972 00                    1980 	.db	0
      003973 00 00 00 AD           1981 	.dw	0,173
      003977 00                    1982 	.uleb128	0
      003978 03                    1983 	.uleb128	3
      003979 00 00 04 6E           1984 	.dw	0,1134
      00397D 54 49 4D 34 5F 43 6C  1985 	.ascii "TIM4_ClearFlag"
             65 61 72 46 6C 61 67
      00398B 00                    1986 	.db	0
      00398C 00 00 9C 3C           1987 	.dw	0,(_TIM4_ClearFlag)
      003990 00 00 9C 43           1988 	.dw	0,(XG$TIM4_ClearFlag$0$0+1)
      003994 01                    1989 	.db	1
      003995 00 00 3C 70           1990 	.dw	0,(Ldebug_loc_start+64)
      003999 04                    1991 	.uleb128	4
      00399A 02                    1992 	.db	2
      00399B 91                    1993 	.db	145
      00399C 02                    1994 	.sleb128	2
      00399D 54 49 4D 34 5F 46 4C  1995 	.ascii "TIM4_FLAG"
             41 47
      0039A6 00                    1996 	.db	0
      0039A7 00 00 00 AD           1997 	.dw	0,173
      0039AB 00                    1998 	.uleb128	0
      0039AC 08                    1999 	.uleb128	8
      0039AD 00 00 04 EA           2000 	.dw	0,1258
      0039B1 54 49 4D 34 5F 47 65  2001 	.ascii "TIM4_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      0039C1 00                    2002 	.db	0
      0039C2 00 00 9C 43           2003 	.dw	0,(_TIM4_GetITStatus)
      0039C6 00 00 9C 66           2004 	.dw	0,(XG$TIM4_GetITStatus$0$0+1)
      0039CA 01                    2005 	.db	1
      0039CB 00 00 3C 44           2006 	.dw	0,(Ldebug_loc_start+20)
      0039CF 00 00 00 AD           2007 	.dw	0,173
      0039D3 04                    2008 	.uleb128	4
      0039D4 02                    2009 	.db	2
      0039D5 91                    2010 	.db	145
      0039D6 02                    2011 	.sleb128	2
      0039D7 54 49 4D 34 5F 49 54  2012 	.ascii "TIM4_IT"
      0039DE 00                    2013 	.db	0
      0039DF 00 00 00 AD           2014 	.dw	0,173
      0039E3 06                    2015 	.uleb128	6
      0039E4 00 00 9C 5D           2016 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$162)
      0039E8 00 00 9C 5F           2017 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$164)
      0039EC 06                    2018 	.uleb128	6
      0039ED 00 00 9C 62           2019 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$165)
      0039F1 00 00 9C 63           2020 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$167)
      0039F5 09                    2021 	.uleb128	9
      0039F6 01                    2022 	.db	1
      0039F7 50                    2023 	.db	80
      0039F8 62 69 74 73 74 61 74  2024 	.ascii "bitstatus"
             75 73
      003A01 00                    2025 	.db	0
      003A02 00 00 00 AD           2026 	.dw	0,173
      003A06 09                    2027 	.uleb128	9
      003A07 02                    2028 	.db	2
      003A08 91                    2029 	.db	145
      003A09 7F                    2030 	.sleb128	-1
      003A0A 69 74 73 74 61 74 75  2031 	.ascii "itstatus"
             73
      003A12 00                    2032 	.db	0
      003A13 00 00 00 AD           2033 	.dw	0,173
      003A17 09                    2034 	.uleb128	9
      003A18 01                    2035 	.db	1
      003A19 50                    2036 	.db	80
      003A1A 69 74 65 6E 61 62 6C  2037 	.ascii "itenable"
             65
      003A22 00                    2038 	.db	0
      003A23 00 00 00 AD           2039 	.dw	0,173
      003A27 00                    2040 	.uleb128	0
      003A28 0A                    2041 	.uleb128	10
      003A29 54 49 4D 34 5F 43 6C  2042 	.ascii "TIM4_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      003A3F 00                    2043 	.db	0
      003A40 00 00 9C 66           2044 	.dw	0,(_TIM4_ClearITPendingBit)
      003A44 00 00 9C 6D           2045 	.dw	0,(XG$TIM4_ClearITPendingBit$0$0+1)
      003A48 01                    2046 	.db	1
      003A49 00 00 3C 30           2047 	.dw	0,(Ldebug_loc_start)
      003A4D 04                    2048 	.uleb128	4
      003A4E 02                    2049 	.db	2
      003A4F 91                    2050 	.db	145
      003A50 02                    2051 	.sleb128	2
      003A51 54 49 4D 34 5F 49 54  2052 	.ascii "TIM4_IT"
      003A58 00                    2053 	.db	0
      003A59 00 00 00 AD           2054 	.dw	0,173
      003A5D 00                    2055 	.uleb128	0
      003A5E 00                    2056 	.uleb128	0
      003A5F 00                    2057 	.uleb128	0
      003A60 00                    2058 	.uleb128	0
      003A61                       2059 Ldebug_info_end:
                                   2060 
                                   2061 	.area .debug_pubnames (NOLOAD)
      0008D9 00 00 01 A2           2062 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0008DD                       2063 Ldebug_pubnames_start:
      0008DD 00 02                 2064 	.dw	2
      0008DF 00 00 35 3E           2065 	.dw	0,(Ldebug_info_start-4)
      0008E3 00 00 05 23           2066 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0008E7 00 00 00 43           2067 	.dw	0,67
      0008EB 54 49 4D 34 5F 44 65  2068 	.ascii "TIM4_DeInit"
             49 6E 69 74
      0008F6 00                    2069 	.db	0
      0008F7 00 00 00 5D           2070 	.dw	0,93
      0008FB 54 49 4D 34 5F 54 69  2071 	.ascii "TIM4_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      00090C 00                    2072 	.db	0
      00090D 00 00 00 BE           2073 	.dw	0,190
      000911 54 49 4D 34 5F 43 6D  2074 	.ascii "TIM4_Cmd"
             64
      000919 00                    2075 	.db	0
      00091A 00 00 00 FD           2076 	.dw	0,253
      00091E 54 49 4D 34 5F 49 54  2077 	.ascii "TIM4_ITConfig"
             43 6F 6E 66 69 67
      00092B 00                    2078 	.db	0
      00092C 00 00 01 51           2079 	.dw	0,337
      000930 54 49 4D 34 5F 55 70  2080 	.ascii "TIM4_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      000948 00                    2081 	.db	0
      000949 00 00 01 A0           2082 	.dw	0,416
      00094D 54 49 4D 34 5F 55 70  2083 	.ascii "TIM4_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      000965 00                    2084 	.db	0
      000966 00 00 01 F8           2085 	.dw	0,504
      00096A 54 49 4D 34 5F 53 65  2086 	.ascii "TIM4_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      000981 00                    2087 	.db	0
      000982 00 00 02 49           2088 	.dw	0,585
      000986 54 49 4D 34 5F 50 72  2089 	.ascii "TIM4_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      00099A 00                    2090 	.db	0
      00099B 00 00 02 9E           2091 	.dw	0,670
      00099F 54 49 4D 34 5F 41 52  2092 	.ascii "TIM4_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      0009B4 00                    2093 	.db	0
      0009B5 00 00 02 EA           2094 	.dw	0,746
      0009B9 54 49 4D 34 5F 47 65  2095 	.ascii "TIM4_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      0009CB 00                    2096 	.db	0
      0009CC 00 00 03 29           2097 	.dw	0,809
      0009D0 54 49 4D 34 5F 53 65  2098 	.ascii "TIM4_SetCounter"
             74 43 6F 75 6E 74 65
             72
      0009DF 00                    2099 	.db	0
      0009E0 00 00 03 5C           2100 	.dw	0,860
      0009E4 54 49 4D 34 5F 53 65  2101 	.ascii "TIM4_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      0009F6 00                    2102 	.db	0
      0009F7 00 00 03 95           2103 	.dw	0,917
      0009FB 54 49 4D 34 5F 47 65  2104 	.ascii "TIM4_GetCounter"
             74 43 6F 75 6E 74 65
             72
      000A0A 00                    2105 	.db	0
      000A0B 00 00 03 B7           2106 	.dw	0,951
      000A0F 54 49 4D 34 5F 47 65  2107 	.ascii "TIM4_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      000A20 00                    2108 	.db	0
      000A21 00 00 03 DB           2109 	.dw	0,987
      000A25 54 49 4D 34 5F 47 65  2110 	.ascii "TIM4_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      000A37 00                    2111 	.db	0
      000A38 00 00 04 3A           2112 	.dw	0,1082
      000A3C 54 49 4D 34 5F 43 6C  2113 	.ascii "TIM4_ClearFlag"
             65 61 72 46 6C 61 67
      000A4A 00                    2114 	.db	0
      000A4B 00 00 04 6E           2115 	.dw	0,1134
      000A4F 54 49 4D 34 5F 47 65  2116 	.ascii "TIM4_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      000A5F 00                    2117 	.db	0
      000A60 00 00 04 EA           2118 	.dw	0,1258
      000A64 54 49 4D 34 5F 43 6C  2119 	.ascii "TIM4_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      000A7A 00                    2120 	.db	0
      000A7B 00 00 00 00           2121 	.dw	0,0
      000A7F                       2122 Ldebug_pubnames_end:
                                   2123 
                                   2124 	.area .debug_frame (NOLOAD)
      002F7C 00 00                 2125 	.dw	0
      002F7E 00 0E                 2126 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      002F80                       2127 Ldebug_CIE0_start:
      002F80 FF FF                 2128 	.dw	0xffff
      002F82 FF FF                 2129 	.dw	0xffff
      002F84 01                    2130 	.db	1
      002F85 00                    2131 	.db	0
      002F86 01                    2132 	.uleb128	1
      002F87 7F                    2133 	.sleb128	-1
      002F88 09                    2134 	.db	9
      002F89 0C                    2135 	.db	12
      002F8A 08                    2136 	.uleb128	8
      002F8B 02                    2137 	.uleb128	2
      002F8C 89                    2138 	.db	137
      002F8D 01                    2139 	.uleb128	1
      002F8E                       2140 Ldebug_CIE0_end:
      002F8E 00 00 00 13           2141 	.dw	0,19
      002F92 00 00 2F 7C           2142 	.dw	0,(Ldebug_CIE0_start-4)
      002F96 00 00 9C 66           2143 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$174)	;initial loc
      002F9A 00 00 00 07           2144 	.dw	0,Sstm8s_tim4$TIM4_ClearITPendingBit$178-Sstm8s_tim4$TIM4_ClearITPendingBit$174
      002F9E 01                    2145 	.db	1
      002F9F 00 00 9C 66           2146 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$174)
      002FA3 0E                    2147 	.db	14
      002FA4 02                    2148 	.uleb128	2
                                   2149 
                                   2150 	.area .debug_frame (NOLOAD)
      002FA5 00 00                 2151 	.dw	0
      002FA7 00 0E                 2152 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      002FA9                       2153 Ldebug_CIE1_start:
      002FA9 FF FF                 2154 	.dw	0xffff
      002FAB FF FF                 2155 	.dw	0xffff
      002FAD 01                    2156 	.db	1
      002FAE 00                    2157 	.db	0
      002FAF 01                    2158 	.uleb128	1
      002FB0 7F                    2159 	.sleb128	-1
      002FB1 09                    2160 	.db	9
      002FB2 0C                    2161 	.db	12
      002FB3 08                    2162 	.uleb128	8
      002FB4 02                    2163 	.uleb128	2
      002FB5 89                    2164 	.db	137
      002FB6 01                    2165 	.uleb128	1
      002FB7                       2166 Ldebug_CIE1_end:
      002FB7 00 00 00 21           2167 	.dw	0,33
      002FBB 00 00 2F A5           2168 	.dw	0,(Ldebug_CIE1_start-4)
      002FBF 00 00 9C 43           2169 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$157)	;initial loc
      002FC3 00 00 00 23           2170 	.dw	0,Sstm8s_tim4$TIM4_GetITStatus$172-Sstm8s_tim4$TIM4_GetITStatus$157
      002FC7 01                    2171 	.db	1
      002FC8 00 00 9C 43           2172 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$157)
      002FCC 0E                    2173 	.db	14
      002FCD 02                    2174 	.uleb128	2
      002FCE 01                    2175 	.db	1
      002FCF 00 00 9C 44           2176 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$158)
      002FD3 0E                    2177 	.db	14
      002FD4 03                    2178 	.uleb128	3
      002FD5 01                    2179 	.db	1
      002FD6 00 00 9C 65           2180 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$170)
      002FDA 0E                    2181 	.db	14
      002FDB 02                    2182 	.uleb128	2
                                   2183 
                                   2184 	.area .debug_frame (NOLOAD)
      002FDC 00 00                 2185 	.dw	0
      002FDE 00 0E                 2186 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      002FE0                       2187 Ldebug_CIE2_start:
      002FE0 FF FF                 2188 	.dw	0xffff
      002FE2 FF FF                 2189 	.dw	0xffff
      002FE4 01                    2190 	.db	1
      002FE5 00                    2191 	.db	0
      002FE6 01                    2192 	.uleb128	1
      002FE7 7F                    2193 	.sleb128	-1
      002FE8 09                    2194 	.db	9
      002FE9 0C                    2195 	.db	12
      002FEA 08                    2196 	.uleb128	8
      002FEB 02                    2197 	.uleb128	2
      002FEC 89                    2198 	.db	137
      002FED 01                    2199 	.uleb128	1
      002FEE                       2200 Ldebug_CIE2_end:
      002FEE 00 00 00 13           2201 	.dw	0,19
      002FF2 00 00 2F DC           2202 	.dw	0,(Ldebug_CIE2_start-4)
      002FF6 00 00 9C 3C           2203 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$151)	;initial loc
      002FFA 00 00 00 07           2204 	.dw	0,Sstm8s_tim4$TIM4_ClearFlag$155-Sstm8s_tim4$TIM4_ClearFlag$151
      002FFE 01                    2205 	.db	1
      002FFF 00 00 9C 3C           2206 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$151)
      003003 0E                    2207 	.db	14
      003004 02                    2208 	.uleb128	2
                                   2209 
                                   2210 	.area .debug_frame (NOLOAD)
      003005 00 00                 2211 	.dw	0
      003007 00 0E                 2212 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      003009                       2213 Ldebug_CIE3_start:
      003009 FF FF                 2214 	.dw	0xffff
      00300B FF FF                 2215 	.dw	0xffff
      00300D 01                    2216 	.db	1
      00300E 00                    2217 	.db	0
      00300F 01                    2218 	.uleb128	1
      003010 7F                    2219 	.sleb128	-1
      003011 09                    2220 	.db	9
      003012 0C                    2221 	.db	12
      003013 08                    2222 	.uleb128	8
      003014 02                    2223 	.uleb128	2
      003015 89                    2224 	.db	137
      003016 01                    2225 	.uleb128	1
      003017                       2226 Ldebug_CIE3_end:
      003017 00 00 00 13           2227 	.dw	0,19
      00301B 00 00 30 05           2228 	.dw	0,(Ldebug_CIE3_start-4)
      00301F 00 00 9C 2A           2229 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$138)	;initial loc
      003023 00 00 00 12           2230 	.dw	0,Sstm8s_tim4$TIM4_GetFlagStatus$149-Sstm8s_tim4$TIM4_GetFlagStatus$138
      003027 01                    2231 	.db	1
      003028 00 00 9C 2A           2232 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$138)
      00302C 0E                    2233 	.db	14
      00302D 02                    2234 	.uleb128	2
                                   2235 
                                   2236 	.area .debug_frame (NOLOAD)
      00302E 00 00                 2237 	.dw	0
      003030 00 0E                 2238 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      003032                       2239 Ldebug_CIE4_start:
      003032 FF FF                 2240 	.dw	0xffff
      003034 FF FF                 2241 	.dw	0xffff
      003036 01                    2242 	.db	1
      003037 00                    2243 	.db	0
      003038 01                    2244 	.uleb128	1
      003039 7F                    2245 	.sleb128	-1
      00303A 09                    2246 	.db	9
      00303B 0C                    2247 	.db	12
      00303C 08                    2248 	.uleb128	8
      00303D 02                    2249 	.uleb128	2
      00303E 89                    2250 	.db	137
      00303F 01                    2251 	.uleb128	1
      003040                       2252 Ldebug_CIE4_end:
      003040 00 00 00 13           2253 	.dw	0,19
      003044 00 00 30 2E           2254 	.dw	0,(Ldebug_CIE4_start-4)
      003048 00 00 9C 26           2255 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$132)	;initial loc
      00304C 00 00 00 04           2256 	.dw	0,Sstm8s_tim4$TIM4_GetPrescaler$136-Sstm8s_tim4$TIM4_GetPrescaler$132
      003050 01                    2257 	.db	1
      003051 00 00 9C 26           2258 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$132)
      003055 0E                    2259 	.db	14
      003056 02                    2260 	.uleb128	2
                                   2261 
                                   2262 	.area .debug_frame (NOLOAD)
      003057 00 00                 2263 	.dw	0
      003059 00 0E                 2264 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      00305B                       2265 Ldebug_CIE5_start:
      00305B FF FF                 2266 	.dw	0xffff
      00305D FF FF                 2267 	.dw	0xffff
      00305F 01                    2268 	.db	1
      003060 00                    2269 	.db	0
      003061 01                    2270 	.uleb128	1
      003062 7F                    2271 	.sleb128	-1
      003063 09                    2272 	.db	9
      003064 0C                    2273 	.db	12
      003065 08                    2274 	.uleb128	8
      003066 02                    2275 	.uleb128	2
      003067 89                    2276 	.db	137
      003068 01                    2277 	.uleb128	1
      003069                       2278 Ldebug_CIE5_end:
      003069 00 00 00 13           2279 	.dw	0,19
      00306D 00 00 30 57           2280 	.dw	0,(Ldebug_CIE5_start-4)
      003071 00 00 9C 22           2281 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$126)	;initial loc
      003075 00 00 00 04           2282 	.dw	0,Sstm8s_tim4$TIM4_GetCounter$130-Sstm8s_tim4$TIM4_GetCounter$126
      003079 01                    2283 	.db	1
      00307A 00 00 9C 22           2284 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$126)
      00307E 0E                    2285 	.db	14
      00307F 02                    2286 	.uleb128	2
                                   2287 
                                   2288 	.area .debug_frame (NOLOAD)
      003080 00 00                 2289 	.dw	0
      003082 00 0E                 2290 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      003084                       2291 Ldebug_CIE6_start:
      003084 FF FF                 2292 	.dw	0xffff
      003086 FF FF                 2293 	.dw	0xffff
      003088 01                    2294 	.db	1
      003089 00                    2295 	.db	0
      00308A 01                    2296 	.uleb128	1
      00308B 7F                    2297 	.sleb128	-1
      00308C 09                    2298 	.db	9
      00308D 0C                    2299 	.db	12
      00308E 08                    2300 	.uleb128	8
      00308F 02                    2301 	.uleb128	2
      003090 89                    2302 	.db	137
      003091 01                    2303 	.uleb128	1
      003092                       2304 Ldebug_CIE6_end:
      003092 00 00 00 13           2305 	.dw	0,19
      003096 00 00 30 80           2306 	.dw	0,(Ldebug_CIE6_start-4)
      00309A 00 00 9C 1B           2307 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$120)	;initial loc
      00309E 00 00 00 07           2308 	.dw	0,Sstm8s_tim4$TIM4_SetAutoreload$124-Sstm8s_tim4$TIM4_SetAutoreload$120
      0030A2 01                    2309 	.db	1
      0030A3 00 00 9C 1B           2310 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$120)
      0030A7 0E                    2311 	.db	14
      0030A8 02                    2312 	.uleb128	2
                                   2313 
                                   2314 	.area .debug_frame (NOLOAD)
      0030A9 00 00                 2315 	.dw	0
      0030AB 00 0E                 2316 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      0030AD                       2317 Ldebug_CIE7_start:
      0030AD FF FF                 2318 	.dw	0xffff
      0030AF FF FF                 2319 	.dw	0xffff
      0030B1 01                    2320 	.db	1
      0030B2 00                    2321 	.db	0
      0030B3 01                    2322 	.uleb128	1
      0030B4 7F                    2323 	.sleb128	-1
      0030B5 09                    2324 	.db	9
      0030B6 0C                    2325 	.db	12
      0030B7 08                    2326 	.uleb128	8
      0030B8 02                    2327 	.uleb128	2
      0030B9 89                    2328 	.db	137
      0030BA 01                    2329 	.uleb128	1
      0030BB                       2330 Ldebug_CIE7_end:
      0030BB 00 00 00 13           2331 	.dw	0,19
      0030BF 00 00 30 A9           2332 	.dw	0,(Ldebug_CIE7_start-4)
      0030C3 00 00 9C 14           2333 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$114)	;initial loc
      0030C7 00 00 00 07           2334 	.dw	0,Sstm8s_tim4$TIM4_SetCounter$118-Sstm8s_tim4$TIM4_SetCounter$114
      0030CB 01                    2335 	.db	1
      0030CC 00 00 9C 14           2336 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$114)
      0030D0 0E                    2337 	.db	14
      0030D1 02                    2338 	.uleb128	2
                                   2339 
                                   2340 	.area .debug_frame (NOLOAD)
      0030D2 00 00                 2341 	.dw	0
      0030D4 00 0E                 2342 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      0030D6                       2343 Ldebug_CIE8_start:
      0030D6 FF FF                 2344 	.dw	0xffff
      0030D8 FF FF                 2345 	.dw	0xffff
      0030DA 01                    2346 	.db	1
      0030DB 00                    2347 	.db	0
      0030DC 01                    2348 	.uleb128	1
      0030DD 7F                    2349 	.sleb128	-1
      0030DE 09                    2350 	.db	9
      0030DF 0C                    2351 	.db	12
      0030E0 08                    2352 	.uleb128	8
      0030E1 02                    2353 	.uleb128	2
      0030E2 89                    2354 	.db	137
      0030E3 01                    2355 	.uleb128	1
      0030E4                       2356 Ldebug_CIE8_end:
      0030E4 00 00 00 13           2357 	.dw	0,19
      0030E8 00 00 30 D2           2358 	.dw	0,(Ldebug_CIE8_start-4)
      0030EC 00 00 9C 0D           2359 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$108)	;initial loc
      0030F0 00 00 00 07           2360 	.dw	0,Sstm8s_tim4$TIM4_GenerateEvent$112-Sstm8s_tim4$TIM4_GenerateEvent$108
      0030F4 01                    2361 	.db	1
      0030F5 00 00 9C 0D           2362 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$108)
      0030F9 0E                    2363 	.db	14
      0030FA 02                    2364 	.uleb128	2
                                   2365 
                                   2366 	.area .debug_frame (NOLOAD)
      0030FB 00 00                 2367 	.dw	0
      0030FD 00 0E                 2368 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      0030FF                       2369 Ldebug_CIE9_start:
      0030FF FF FF                 2370 	.dw	0xffff
      003101 FF FF                 2371 	.dw	0xffff
      003103 01                    2372 	.db	1
      003104 00                    2373 	.db	0
      003105 01                    2374 	.uleb128	1
      003106 7F                    2375 	.sleb128	-1
      003107 09                    2376 	.db	9
      003108 0C                    2377 	.db	12
      003109 08                    2378 	.uleb128	8
      00310A 02                    2379 	.uleb128	2
      00310B 89                    2380 	.db	137
      00310C 01                    2381 	.uleb128	1
      00310D                       2382 Ldebug_CIE9_end:
      00310D 00 00 00 13           2383 	.dw	0,19
      003111 00 00 30 FB           2384 	.dw	0,(Ldebug_CIE9_start-4)
      003115 00 00 9B F5           2385 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$95)	;initial loc
      003119 00 00 00 18           2386 	.dw	0,Sstm8s_tim4$TIM4_ARRPreloadConfig$106-Sstm8s_tim4$TIM4_ARRPreloadConfig$95
      00311D 01                    2387 	.db	1
      00311E 00 00 9B F5           2388 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$95)
      003122 0E                    2389 	.db	14
      003123 02                    2390 	.uleb128	2
                                   2391 
                                   2392 	.area .debug_frame (NOLOAD)
      003124 00 00                 2393 	.dw	0
      003126 00 0E                 2394 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      003128                       2395 Ldebug_CIE10_start:
      003128 FF FF                 2396 	.dw	0xffff
      00312A FF FF                 2397 	.dw	0xffff
      00312C 01                    2398 	.db	1
      00312D 00                    2399 	.db	0
      00312E 01                    2400 	.uleb128	1
      00312F 7F                    2401 	.sleb128	-1
      003130 09                    2402 	.db	9
      003131 0C                    2403 	.db	12
      003132 08                    2404 	.uleb128	8
      003133 02                    2405 	.uleb128	2
      003134 89                    2406 	.db	137
      003135 01                    2407 	.uleb128	1
      003136                       2408 Ldebug_CIE10_end:
      003136 00 00 00 13           2409 	.dw	0,19
      00313A 00 00 31 24           2410 	.dw	0,(Ldebug_CIE10_start-4)
      00313E 00 00 9B E8           2411 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$88)	;initial loc
      003142 00 00 00 0D           2412 	.dw	0,Sstm8s_tim4$TIM4_PrescalerConfig$93-Sstm8s_tim4$TIM4_PrescalerConfig$88
      003146 01                    2413 	.db	1
      003147 00 00 9B E8           2414 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$88)
      00314B 0E                    2415 	.db	14
      00314C 02                    2416 	.uleb128	2
                                   2417 
                                   2418 	.area .debug_frame (NOLOAD)
      00314D 00 00                 2419 	.dw	0
      00314F 00 0E                 2420 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      003151                       2421 Ldebug_CIE11_start:
      003151 FF FF                 2422 	.dw	0xffff
      003153 FF FF                 2423 	.dw	0xffff
      003155 01                    2424 	.db	1
      003156 00                    2425 	.db	0
      003157 01                    2426 	.uleb128	1
      003158 7F                    2427 	.sleb128	-1
      003159 09                    2428 	.db	9
      00315A 0C                    2429 	.db	12
      00315B 08                    2430 	.uleb128	8
      00315C 02                    2431 	.uleb128	2
      00315D 89                    2432 	.db	137
      00315E 01                    2433 	.uleb128	1
      00315F                       2434 Ldebug_CIE11_end:
      00315F 00 00 00 13           2435 	.dw	0,19
      003163 00 00 31 4D           2436 	.dw	0,(Ldebug_CIE11_start-4)
      003167 00 00 9B D0           2437 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$75)	;initial loc
      00316B 00 00 00 18           2438 	.dw	0,Sstm8s_tim4$TIM4_SelectOnePulseMode$86-Sstm8s_tim4$TIM4_SelectOnePulseMode$75
      00316F 01                    2439 	.db	1
      003170 00 00 9B D0           2440 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$75)
      003174 0E                    2441 	.db	14
      003175 02                    2442 	.uleb128	2
                                   2443 
                                   2444 	.area .debug_frame (NOLOAD)
      003176 00 00                 2445 	.dw	0
      003178 00 0E                 2446 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      00317A                       2447 Ldebug_CIE12_start:
      00317A FF FF                 2448 	.dw	0xffff
      00317C FF FF                 2449 	.dw	0xffff
      00317E 01                    2450 	.db	1
      00317F 00                    2451 	.db	0
      003180 01                    2452 	.uleb128	1
      003181 7F                    2453 	.sleb128	-1
      003182 09                    2454 	.db	9
      003183 0C                    2455 	.db	12
      003184 08                    2456 	.uleb128	8
      003185 02                    2457 	.uleb128	2
      003186 89                    2458 	.db	137
      003187 01                    2459 	.uleb128	1
      003188                       2460 Ldebug_CIE12_end:
      003188 00 00 00 13           2461 	.dw	0,19
      00318C 00 00 31 76           2462 	.dw	0,(Ldebug_CIE12_start-4)
      003190 00 00 9B B8           2463 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$62)	;initial loc
      003194 00 00 00 18           2464 	.dw	0,Sstm8s_tim4$TIM4_UpdateRequestConfig$73-Sstm8s_tim4$TIM4_UpdateRequestConfig$62
      003198 01                    2465 	.db	1
      003199 00 00 9B B8           2466 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$62)
      00319D 0E                    2467 	.db	14
      00319E 02                    2468 	.uleb128	2
                                   2469 
                                   2470 	.area .debug_frame (NOLOAD)
      00319F 00 00                 2471 	.dw	0
      0031A1 00 0E                 2472 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      0031A3                       2473 Ldebug_CIE13_start:
      0031A3 FF FF                 2474 	.dw	0xffff
      0031A5 FF FF                 2475 	.dw	0xffff
      0031A7 01                    2476 	.db	1
      0031A8 00                    2477 	.db	0
      0031A9 01                    2478 	.uleb128	1
      0031AA 7F                    2479 	.sleb128	-1
      0031AB 09                    2480 	.db	9
      0031AC 0C                    2481 	.db	12
      0031AD 08                    2482 	.uleb128	8
      0031AE 02                    2483 	.uleb128	2
      0031AF 89                    2484 	.db	137
      0031B0 01                    2485 	.uleb128	1
      0031B1                       2486 Ldebug_CIE13_end:
      0031B1 00 00 00 13           2487 	.dw	0,19
      0031B5 00 00 31 9F           2488 	.dw	0,(Ldebug_CIE13_start-4)
      0031B9 00 00 9B A0           2489 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$49)	;initial loc
      0031BD 00 00 00 18           2490 	.dw	0,Sstm8s_tim4$TIM4_UpdateDisableConfig$60-Sstm8s_tim4$TIM4_UpdateDisableConfig$49
      0031C1 01                    2491 	.db	1
      0031C2 00 00 9B A0           2492 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$49)
      0031C6 0E                    2493 	.db	14
      0031C7 02                    2494 	.uleb128	2
                                   2495 
                                   2496 	.area .debug_frame (NOLOAD)
      0031C8 00 00                 2497 	.dw	0
      0031CA 00 0E                 2498 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      0031CC                       2499 Ldebug_CIE14_start:
      0031CC FF FF                 2500 	.dw	0xffff
      0031CE FF FF                 2501 	.dw	0xffff
      0031D0 01                    2502 	.db	1
      0031D1 00                    2503 	.db	0
      0031D2 01                    2504 	.uleb128	1
      0031D3 7F                    2505 	.sleb128	-1
      0031D4 09                    2506 	.db	9
      0031D5 0C                    2507 	.db	12
      0031D6 08                    2508 	.uleb128	8
      0031D7 02                    2509 	.uleb128	2
      0031D8 89                    2510 	.db	137
      0031D9 01                    2511 	.uleb128	1
      0031DA                       2512 Ldebug_CIE14_end:
      0031DA 00 00 00 2F           2513 	.dw	0,47
      0031DE 00 00 31 C8           2514 	.dw	0,(Ldebug_CIE14_start-4)
      0031E2 00 00 9B 7F           2515 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$32)	;initial loc
      0031E6 00 00 00 21           2516 	.dw	0,Sstm8s_tim4$TIM4_ITConfig$47-Sstm8s_tim4$TIM4_ITConfig$32
      0031EA 01                    2517 	.db	1
      0031EB 00 00 9B 7F           2518 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$32)
      0031EF 0E                    2519 	.db	14
      0031F0 02                    2520 	.uleb128	2
      0031F1 01                    2521 	.db	1
      0031F2 00 00 9B 80           2522 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$33)
      0031F6 0E                    2523 	.db	14
      0031F7 03                    2524 	.uleb128	3
      0031F8 01                    2525 	.db	1
      0031F9 00 00 9B 93           2526 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$41)
      0031FD 0E                    2527 	.db	14
      0031FE 04                    2528 	.uleb128	4
      0031FF 01                    2529 	.db	1
      003200 00 00 9B 99           2530 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$42)
      003204 0E                    2531 	.db	14
      003205 03                    2532 	.uleb128	3
      003206 01                    2533 	.db	1
      003207 00 00 9B 9F           2534 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$45)
      00320B 0E                    2535 	.db	14
      00320C 02                    2536 	.uleb128	2
                                   2537 
                                   2538 	.area .debug_frame (NOLOAD)
      00320D 00 00                 2539 	.dw	0
      00320F 00 0E                 2540 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      003211                       2541 Ldebug_CIE15_start:
      003211 FF FF                 2542 	.dw	0xffff
      003213 FF FF                 2543 	.dw	0xffff
      003215 01                    2544 	.db	1
      003216 00                    2545 	.db	0
      003217 01                    2546 	.uleb128	1
      003218 7F                    2547 	.sleb128	-1
      003219 09                    2548 	.db	9
      00321A 0C                    2549 	.db	12
      00321B 08                    2550 	.uleb128	8
      00321C 02                    2551 	.uleb128	2
      00321D 89                    2552 	.db	137
      00321E 01                    2553 	.uleb128	1
      00321F                       2554 Ldebug_CIE15_end:
      00321F 00 00 00 13           2555 	.dw	0,19
      003223 00 00 32 0D           2556 	.dw	0,(Ldebug_CIE15_start-4)
      003227 00 00 9B 67           2557 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$19)	;initial loc
      00322B 00 00 00 18           2558 	.dw	0,Sstm8s_tim4$TIM4_Cmd$30-Sstm8s_tim4$TIM4_Cmd$19
      00322F 01                    2559 	.db	1
      003230 00 00 9B 67           2560 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$19)
      003234 0E                    2561 	.db	14
      003235 02                    2562 	.uleb128	2
                                   2563 
                                   2564 	.area .debug_frame (NOLOAD)
      003236 00 00                 2565 	.dw	0
      003238 00 0E                 2566 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      00323A                       2567 Ldebug_CIE16_start:
      00323A FF FF                 2568 	.dw	0xffff
      00323C FF FF                 2569 	.dw	0xffff
      00323E 01                    2570 	.db	1
      00323F 00                    2571 	.db	0
      003240 01                    2572 	.uleb128	1
      003241 7F                    2573 	.sleb128	-1
      003242 09                    2574 	.db	9
      003243 0C                    2575 	.db	12
      003244 08                    2576 	.uleb128	8
      003245 02                    2577 	.uleb128	2
      003246 89                    2578 	.db	137
      003247 01                    2579 	.uleb128	1
      003248                       2580 Ldebug_CIE16_end:
      003248 00 00 00 13           2581 	.dw	0,19
      00324C 00 00 32 36           2582 	.dw	0,(Ldebug_CIE16_start-4)
      003250 00 00 9B 5A           2583 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)	;initial loc
      003254 00 00 00 0D           2584 	.dw	0,Sstm8s_tim4$TIM4_TimeBaseInit$17-Sstm8s_tim4$TIM4_TimeBaseInit$12
      003258 01                    2585 	.db	1
      003259 00 00 9B 5A           2586 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)
      00325D 0E                    2587 	.db	14
      00325E 02                    2588 	.uleb128	2
                                   2589 
                                   2590 	.area .debug_frame (NOLOAD)
      00325F 00 00                 2591 	.dw	0
      003261 00 0E                 2592 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      003263                       2593 Ldebug_CIE17_start:
      003263 FF FF                 2594 	.dw	0xffff
      003265 FF FF                 2595 	.dw	0xffff
      003267 01                    2596 	.db	1
      003268 00                    2597 	.db	0
      003269 01                    2598 	.uleb128	1
      00326A 7F                    2599 	.sleb128	-1
      00326B 09                    2600 	.db	9
      00326C 0C                    2601 	.db	12
      00326D 08                    2602 	.uleb128	8
      00326E 02                    2603 	.uleb128	2
      00326F 89                    2604 	.db	137
      003270 01                    2605 	.uleb128	1
      003271                       2606 Ldebug_CIE17_end:
      003271 00 00 00 13           2607 	.dw	0,19
      003275 00 00 32 5F           2608 	.dw	0,(Ldebug_CIE17_start-4)
      003279 00 00 9B 41           2609 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)	;initial loc
      00327D 00 00 00 19           2610 	.dw	0,Sstm8s_tim4$TIM4_DeInit$10-Sstm8s_tim4$TIM4_DeInit$1
      003281 01                    2611 	.db	1
      003282 00 00 9B 41           2612 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)
      003286 0E                    2613 	.db	14
      003287 02                    2614 	.uleb128	2
