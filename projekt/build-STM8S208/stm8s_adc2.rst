                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC2_DeInit
                                     12 	.globl _ADC2_Init
                                     13 	.globl _ADC2_Cmd
                                     14 	.globl _ADC2_ITConfig
                                     15 	.globl _ADC2_PrescalerConfig
                                     16 	.globl _ADC2_SchmittTriggerConfig
                                     17 	.globl _ADC2_ConversionConfig
                                     18 	.globl _ADC2_ExternalTriggerConfig
                                     19 	.globl _ADC2_StartConversion
                                     20 	.globl _ADC2_GetConversionValue
                                     21 	.globl _ADC2_GetFlagStatus
                                     22 	.globl _ADC2_ClearFlag
                                     23 	.globl _ADC2_GetITStatus
                                     24 	.globl _ADC2_ClearITPendingBit
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
                           000000    62 	Sstm8s_adc2$ADC2_DeInit$0 ==.
                                     63 ;	../SPL/src/stm8s_adc2.c: 54: void ADC2_DeInit(void)
                                     64 ; genLabel
                                     65 ;	-----------------------------------------
                                     66 ;	 function ADC2_DeInit
                                     67 ;	-----------------------------------------
                                     68 ;	Register assignment is optimal.
                                     69 ;	Stack space usage: 0 bytes.
      00A31A                         70 _ADC2_DeInit:
                           000000    71 	Sstm8s_adc2$ADC2_DeInit$1 ==.
                           000000    72 	Sstm8s_adc2$ADC2_DeInit$2 ==.
                                     73 ;	../SPL/src/stm8s_adc2.c: 56: ADC2->CSR  = ADC2_CSR_RESET_VALUE;
                                     74 ; genPointerSet
      00A31A 35 00 54 00      [ 1]   75 	mov	0x5400+0, #0x00
                           000004    76 	Sstm8s_adc2$ADC2_DeInit$3 ==.
                                     77 ;	../SPL/src/stm8s_adc2.c: 57: ADC2->CR1  = ADC2_CR1_RESET_VALUE;
                                     78 ; genPointerSet
      00A31E 35 00 54 01      [ 1]   79 	mov	0x5401+0, #0x00
                           000008    80 	Sstm8s_adc2$ADC2_DeInit$4 ==.
                                     81 ;	../SPL/src/stm8s_adc2.c: 58: ADC2->CR2  = ADC2_CR2_RESET_VALUE;
                                     82 ; genPointerSet
      00A322 35 00 54 02      [ 1]   83 	mov	0x5402+0, #0x00
                           00000C    84 	Sstm8s_adc2$ADC2_DeInit$5 ==.
                                     85 ;	../SPL/src/stm8s_adc2.c: 59: ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
                                     86 ; genPointerSet
      00A326 35 00 54 06      [ 1]   87 	mov	0x5406+0, #0x00
                           000010    88 	Sstm8s_adc2$ADC2_DeInit$6 ==.
                                     89 ;	../SPL/src/stm8s_adc2.c: 60: ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
                                     90 ; genPointerSet
      00A32A 35 00 54 07      [ 1]   91 	mov	0x5407+0, #0x00
                                     92 ; genLabel
      00A32E                         93 00101$:
                           000014    94 	Sstm8s_adc2$ADC2_DeInit$7 ==.
                                     95 ;	../SPL/src/stm8s_adc2.c: 61: }
                                     96 ; genEndFunction
                           000014    97 	Sstm8s_adc2$ADC2_DeInit$8 ==.
                           000014    98 	XG$ADC2_DeInit$0$0 ==.
      00A32E 81               [ 4]   99 	ret
                           000015   100 	Sstm8s_adc2$ADC2_DeInit$9 ==.
                           000015   101 	Sstm8s_adc2$ADC2_Init$10 ==.
                                    102 ;	../SPL/src/stm8s_adc2.c: 83: void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
                                    103 ; genLabel
                                    104 ;	-----------------------------------------
                                    105 ;	 function ADC2_Init
                                    106 ;	-----------------------------------------
                                    107 ;	Register assignment is optimal.
                                    108 ;	Stack space usage: 0 bytes.
      00A32F                        109 _ADC2_Init:
                           000015   110 	Sstm8s_adc2$ADC2_Init$11 ==.
                           000015   111 	Sstm8s_adc2$ADC2_Init$12 ==.
                                    112 ;	../SPL/src/stm8s_adc2.c: 98: ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
                                    113 ; genIPush
      00A32F 7B 08            [ 1]  114 	ld	a, (0x08, sp)
      00A331 88               [ 1]  115 	push	a
                           000018   116 	Sstm8s_adc2$ADC2_Init$13 ==.
                                    117 ; genIPush
      00A332 7B 05            [ 1]  118 	ld	a, (0x05, sp)
      00A334 88               [ 1]  119 	push	a
                           00001B   120 	Sstm8s_adc2$ADC2_Init$14 ==.
                                    121 ; genIPush
      00A335 7B 05            [ 1]  122 	ld	a, (0x05, sp)
      00A337 88               [ 1]  123 	push	a
                           00001E   124 	Sstm8s_adc2$ADC2_Init$15 ==.
                                    125 ; genCall
      00A338 CD A4 36         [ 4]  126 	call	_ADC2_ConversionConfig
      00A33B 5B 03            [ 2]  127 	addw	sp, #3
                           000023   128 	Sstm8s_adc2$ADC2_Init$16 ==.
                           000023   129 	Sstm8s_adc2$ADC2_Init$17 ==.
                                    130 ;	../SPL/src/stm8s_adc2.c: 100: ADC2_PrescalerConfig(ADC2_PrescalerSelection);
                                    131 ; genIPush
      00A33D 7B 05            [ 1]  132 	ld	a, (0x05, sp)
      00A33F 88               [ 1]  133 	push	a
                           000026   134 	Sstm8s_adc2$ADC2_Init$18 ==.
                                    135 ; genCall
      00A340 CD A3 91         [ 4]  136 	call	_ADC2_PrescalerConfig
      00A343 84               [ 1]  137 	pop	a
                           00002A   138 	Sstm8s_adc2$ADC2_Init$19 ==.
                           00002A   139 	Sstm8s_adc2$ADC2_Init$20 ==.
                                    140 ;	../SPL/src/stm8s_adc2.c: 105: ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
                                    141 ; genIPush
      00A344 7B 07            [ 1]  142 	ld	a, (0x07, sp)
      00A346 88               [ 1]  143 	push	a
                           00002D   144 	Sstm8s_adc2$ADC2_Init$21 ==.
                                    145 ; genIPush
      00A347 7B 07            [ 1]  146 	ld	a, (0x07, sp)
      00A349 88               [ 1]  147 	push	a
                           000030   148 	Sstm8s_adc2$ADC2_Init$22 ==.
                                    149 ; genCall
      00A34A CD A4 74         [ 4]  150 	call	_ADC2_ExternalTriggerConfig
      00A34D 85               [ 2]  151 	popw	x
                           000034   152 	Sstm8s_adc2$ADC2_Init$23 ==.
                           000034   153 	Sstm8s_adc2$ADC2_Init$24 ==.
                                    154 ;	../SPL/src/stm8s_adc2.c: 110: ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
                                    155 ; genIPush
      00A34E 7B 0A            [ 1]  156 	ld	a, (0x0a, sp)
      00A350 88               [ 1]  157 	push	a
                           000037   158 	Sstm8s_adc2$ADC2_Init$25 ==.
                                    159 ; genIPush
      00A351 7B 0A            [ 1]  160 	ld	a, (0x0a, sp)
      00A353 88               [ 1]  161 	push	a
                           00003A   162 	Sstm8s_adc2$ADC2_Init$26 ==.
                                    163 ; genCall
      00A354 CD A3 A2         [ 4]  164 	call	_ADC2_SchmittTriggerConfig
      00A357 85               [ 2]  165 	popw	x
                           00003E   166 	Sstm8s_adc2$ADC2_Init$27 ==.
                           00003E   167 	Sstm8s_adc2$ADC2_Init$28 ==.
                                    168 ;	../SPL/src/stm8s_adc2.c: 113: ADC2->CR1 |= ADC2_CR1_ADON;
                                    169 ; genPointerGet
      00A358 C6 54 01         [ 1]  170 	ld	a, 0x5401
                                    171 ; genOr
      00A35B AA 01            [ 1]  172 	or	a, #0x01
                                    173 ; genPointerSet
      00A35D C7 54 01         [ 1]  174 	ld	0x5401, a
                                    175 ; genLabel
      00A360                        176 00101$:
                           000046   177 	Sstm8s_adc2$ADC2_Init$29 ==.
                                    178 ;	../SPL/src/stm8s_adc2.c: 114: }
                                    179 ; genEndFunction
                           000046   180 	Sstm8s_adc2$ADC2_Init$30 ==.
                           000046   181 	XG$ADC2_Init$0$0 ==.
      00A360 81               [ 4]  182 	ret
                           000047   183 	Sstm8s_adc2$ADC2_Init$31 ==.
                           000047   184 	Sstm8s_adc2$ADC2_Cmd$32 ==.
                                    185 ;	../SPL/src/stm8s_adc2.c: 121: void ADC2_Cmd(FunctionalState NewState)
                                    186 ; genLabel
                                    187 ;	-----------------------------------------
                                    188 ;	 function ADC2_Cmd
                                    189 ;	-----------------------------------------
                                    190 ;	Register assignment is optimal.
                                    191 ;	Stack space usage: 0 bytes.
      00A361                        192 _ADC2_Cmd:
                           000047   193 	Sstm8s_adc2$ADC2_Cmd$33 ==.
                           000047   194 	Sstm8s_adc2$ADC2_Cmd$34 ==.
                                    195 ;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
                                    196 ; genPointerGet
      00A361 C6 54 01         [ 1]  197 	ld	a, 0x5401
                           00004A   198 	Sstm8s_adc2$ADC2_Cmd$35 ==.
                                    199 ;	../SPL/src/stm8s_adc2.c: 126: if (NewState != DISABLE)
                                    200 ; genIfx
      00A364 0D 03            [ 1]  201 	tnz	(0x03, sp)
      00A366 26 03            [ 1]  202 	jrne	00111$
      00A368 CC A3 73         [ 2]  203 	jp	00102$
      00A36B                        204 00111$:
                           000051   205 	Sstm8s_adc2$ADC2_Cmd$36 ==.
                           000051   206 	Sstm8s_adc2$ADC2_Cmd$37 ==.
                                    207 ;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
                                    208 ; genOr
      00A36B AA 01            [ 1]  209 	or	a, #0x01
                                    210 ; genPointerSet
      00A36D C7 54 01         [ 1]  211 	ld	0x5401, a
                           000056   212 	Sstm8s_adc2$ADC2_Cmd$38 ==.
                                    213 ; genGoto
      00A370 CC A3 78         [ 2]  214 	jp	00104$
                                    215 ; genLabel
      00A373                        216 00102$:
                           000059   217 	Sstm8s_adc2$ADC2_Cmd$39 ==.
                           000059   218 	Sstm8s_adc2$ADC2_Cmd$40 ==.
                                    219 ;	../SPL/src/stm8s_adc2.c: 132: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
                                    220 ; genAnd
      00A373 A4 FE            [ 1]  221 	and	a, #0xfe
                                    222 ; genPointerSet
      00A375 C7 54 01         [ 1]  223 	ld	0x5401, a
                           00005E   224 	Sstm8s_adc2$ADC2_Cmd$41 ==.
                                    225 ; genLabel
      00A378                        226 00104$:
                           00005E   227 	Sstm8s_adc2$ADC2_Cmd$42 ==.
                                    228 ;	../SPL/src/stm8s_adc2.c: 134: }
                                    229 ; genEndFunction
                           00005E   230 	Sstm8s_adc2$ADC2_Cmd$43 ==.
                           00005E   231 	XG$ADC2_Cmd$0$0 ==.
      00A378 81               [ 4]  232 	ret
                           00005F   233 	Sstm8s_adc2$ADC2_Cmd$44 ==.
                           00005F   234 	Sstm8s_adc2$ADC2_ITConfig$45 ==.
                                    235 ;	../SPL/src/stm8s_adc2.c: 141: void ADC2_ITConfig(FunctionalState NewState)
                                    236 ; genLabel
                                    237 ;	-----------------------------------------
                                    238 ;	 function ADC2_ITConfig
                                    239 ;	-----------------------------------------
                                    240 ;	Register assignment is optimal.
                                    241 ;	Stack space usage: 0 bytes.
      00A379                        242 _ADC2_ITConfig:
                           00005F   243 	Sstm8s_adc2$ADC2_ITConfig$46 ==.
                           00005F   244 	Sstm8s_adc2$ADC2_ITConfig$47 ==.
                                    245 ;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
                                    246 ; genPointerGet
      00A379 C6 54 00         [ 1]  247 	ld	a, 0x5400
                           000062   248 	Sstm8s_adc2$ADC2_ITConfig$48 ==.
                                    249 ;	../SPL/src/stm8s_adc2.c: 146: if (NewState != DISABLE)
                                    250 ; genIfx
      00A37C 0D 03            [ 1]  251 	tnz	(0x03, sp)
      00A37E 26 03            [ 1]  252 	jrne	00111$
      00A380 CC A3 8B         [ 2]  253 	jp	00102$
      00A383                        254 00111$:
                           000069   255 	Sstm8s_adc2$ADC2_ITConfig$49 ==.
                           000069   256 	Sstm8s_adc2$ADC2_ITConfig$50 ==.
                                    257 ;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
                                    258 ; genOr
      00A383 AA 20            [ 1]  259 	or	a, #0x20
                                    260 ; genPointerSet
      00A385 C7 54 00         [ 1]  261 	ld	0x5400, a
                           00006E   262 	Sstm8s_adc2$ADC2_ITConfig$51 ==.
                                    263 ; genGoto
      00A388 CC A3 90         [ 2]  264 	jp	00104$
                                    265 ; genLabel
      00A38B                        266 00102$:
                           000071   267 	Sstm8s_adc2$ADC2_ITConfig$52 ==.
                           000071   268 	Sstm8s_adc2$ADC2_ITConfig$53 ==.
                                    269 ;	../SPL/src/stm8s_adc2.c: 154: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
                                    270 ; genAnd
      00A38B A4 DF            [ 1]  271 	and	a, #0xdf
                                    272 ; genPointerSet
      00A38D C7 54 00         [ 1]  273 	ld	0x5400, a
                           000076   274 	Sstm8s_adc2$ADC2_ITConfig$54 ==.
                                    275 ; genLabel
      00A390                        276 00104$:
                           000076   277 	Sstm8s_adc2$ADC2_ITConfig$55 ==.
                                    278 ;	../SPL/src/stm8s_adc2.c: 156: }
                                    279 ; genEndFunction
                           000076   280 	Sstm8s_adc2$ADC2_ITConfig$56 ==.
                           000076   281 	XG$ADC2_ITConfig$0$0 ==.
      00A390 81               [ 4]  282 	ret
                           000077   283 	Sstm8s_adc2$ADC2_ITConfig$57 ==.
                           000077   284 	Sstm8s_adc2$ADC2_PrescalerConfig$58 ==.
                                    285 ;	../SPL/src/stm8s_adc2.c: 164: void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
                                    286 ; genLabel
                                    287 ;	-----------------------------------------
                                    288 ;	 function ADC2_PrescalerConfig
                                    289 ;	-----------------------------------------
                                    290 ;	Register assignment is optimal.
                                    291 ;	Stack space usage: 0 bytes.
      00A391                        292 _ADC2_PrescalerConfig:
                           000077   293 	Sstm8s_adc2$ADC2_PrescalerConfig$59 ==.
                           000077   294 	Sstm8s_adc2$ADC2_PrescalerConfig$60 ==.
                                    295 ;	../SPL/src/stm8s_adc2.c: 170: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
                                    296 ; genPointerGet
      00A391 C6 54 01         [ 1]  297 	ld	a, 0x5401
                                    298 ; genAnd
      00A394 A4 8F            [ 1]  299 	and	a, #0x8f
                                    300 ; genPointerSet
      00A396 C7 54 01         [ 1]  301 	ld	0x5401, a
                           00007F   302 	Sstm8s_adc2$ADC2_PrescalerConfig$61 ==.
                                    303 ;	../SPL/src/stm8s_adc2.c: 172: ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
                                    304 ; genPointerGet
      00A399 C6 54 01         [ 1]  305 	ld	a, 0x5401
                                    306 ; genOr
      00A39C 1A 03            [ 1]  307 	or	a, (0x03, sp)
                                    308 ; genPointerSet
      00A39E C7 54 01         [ 1]  309 	ld	0x5401, a
                                    310 ; genLabel
      00A3A1                        311 00101$:
                           000087   312 	Sstm8s_adc2$ADC2_PrescalerConfig$62 ==.
                                    313 ;	../SPL/src/stm8s_adc2.c: 173: }
                                    314 ; genEndFunction
                           000087   315 	Sstm8s_adc2$ADC2_PrescalerConfig$63 ==.
                           000087   316 	XG$ADC2_PrescalerConfig$0$0 ==.
      00A3A1 81               [ 4]  317 	ret
                           000088   318 	Sstm8s_adc2$ADC2_PrescalerConfig$64 ==.
                           000088   319 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$65 ==.
                                    320 ;	../SPL/src/stm8s_adc2.c: 183: void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
                                    321 ; genLabel
                                    322 ;	-----------------------------------------
                                    323 ;	 function ADC2_SchmittTriggerConfig
                                    324 ;	-----------------------------------------
                                    325 ;	Register assignment is optimal.
                                    326 ;	Stack space usage: 1 bytes.
      00A3A2                        327 _ADC2_SchmittTriggerConfig:
                           000088   328 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$66 ==.
      00A3A2 88               [ 1]  329 	push	a
                           000089   330 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$67 ==.
                           000089   331 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$68 ==.
                                    332 ;	../SPL/src/stm8s_adc2.c: 189: if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
                                    333 ; genCmpEQorNE
      00A3A3 7B 04            [ 1]  334 	ld	a, (0x04, sp)
      00A3A5 A1 1F            [ 1]  335 	cp	a, #0x1f
      00A3A7 26 03            [ 1]  336 	jrne	00144$
      00A3A9 CC A3 AF         [ 2]  337 	jp	00145$
      00A3AC                        338 00144$:
      00A3AC CC A3 D5         [ 2]  339 	jp	00114$
      00A3AF                        340 00145$:
                           000095   341 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$69 ==.
                                    342 ; skipping generated iCode
                           000095   343 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$70 ==.
                                    344 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                    345 ; genPointerGet
                                    346 ; Dummy read
      00A3AF C6 54 07         [ 1]  347 	ld	a, 0x5407
                           000098   348 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$71 ==.
                           000098   349 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$72 ==.
                                    350 ;	../SPL/src/stm8s_adc2.c: 191: if (NewState != DISABLE)
                                    351 ; genIfx
      00A3B2 0D 05            [ 1]  352 	tnz	(0x05, sp)
      00A3B4 26 03            [ 1]  353 	jrne	00146$
      00A3B6 CC A3 C7         [ 2]  354 	jp	00102$
      00A3B9                        355 00146$:
                           00009F   356 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$73 ==.
                           00009F   357 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$74 ==.
                                    358 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                    359 ; genPointerSet
      00A3B9 35 00 54 07      [ 1]  360 	mov	0x5407+0, #0x00
                           0000A3   361 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$75 ==.
                                    362 ;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
                                    363 ; genPointerGet
                                    364 ; Dummy read
      00A3BD C6 54 06         [ 1]  365 	ld	a, 0x5406
                                    366 ; genPointerSet
      00A3C0 35 00 54 06      [ 1]  367 	mov	0x5406+0, #0x00
                           0000AA   368 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$76 ==.
                                    369 ; genGoto
      00A3C4 CC A4 34         [ 2]  370 	jp	00116$
                                    371 ; genLabel
      00A3C7                        372 00102$:
                           0000AD   373 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$77 ==.
                           0000AD   374 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$78 ==.
                                    375 ;	../SPL/src/stm8s_adc2.c: 198: ADC2->TDRL |= (uint8_t)0xFF;
                                    376 ; genPointerSet
      00A3C7 35 FF 54 07      [ 1]  377 	mov	0x5407+0, #0xff
                           0000B1   378 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$79 ==.
                                    379 ;	../SPL/src/stm8s_adc2.c: 199: ADC2->TDRH |= (uint8_t)0xFF;
                                    380 ; genPointerGet
                                    381 ; Dummy read
      00A3CB C6 54 06         [ 1]  382 	ld	a, 0x5406
                                    383 ; genPointerSet
      00A3CE 35 FF 54 06      [ 1]  384 	mov	0x5406+0, #0xff
                           0000B8   385 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$80 ==.
                                    386 ; genGoto
      00A3D2 CC A4 34         [ 2]  387 	jp	00116$
                                    388 ; genLabel
      00A3D5                        389 00114$:
                           0000BB   390 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$81 ==.
                                    391 ;	../SPL/src/stm8s_adc2.c: 202: else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
                                    392 ; genCmp
                                    393 ; genCmpTop
      00A3D5 7B 04            [ 1]  394 	ld	a, (0x04, sp)
      00A3D7 A1 08            [ 1]  395 	cp	a, #0x08
      00A3D9 25 03            [ 1]  396 	jrc	00147$
      00A3DB CC A4 08         [ 2]  397 	jp	00111$
      00A3DE                        398 00147$:
                                    399 ; skipping generated iCode
                           0000C4   400 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$82 ==.
                                    401 ;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
                                    402 ; genPointerGet
      00A3DE C6 54 07         [ 1]  403 	ld	a, 0x5407
      00A3E1 6B 01            [ 1]  404 	ld	(0x01, sp), a
                           0000C9   405 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$83 ==.
                                    406 ;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
                                    407 ; genLeftShift
      00A3E3 A6 01            [ 1]  408 	ld	a, #0x01
      00A3E5 88               [ 1]  409 	push	a
                           0000CC   410 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$84 ==.
      00A3E6 7B 05            [ 1]  411 	ld	a, (0x05, sp)
      00A3E8 27 05            [ 1]  412 	jreq	00149$
      00A3EA                        413 00148$:
      00A3EA 08 01            [ 1]  414 	sll	(1, sp)
      00A3EC 4A               [ 1]  415 	dec	a
      00A3ED 26 FB            [ 1]  416 	jrne	00148$
      00A3EF                        417 00149$:
      00A3EF 84               [ 1]  418 	pop	a
                           0000D6   419 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$85 ==.
                           0000D6   420 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$86 ==.
                           0000D6   421 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$87 ==.
                                    422 ;	../SPL/src/stm8s_adc2.c: 204: if (NewState != DISABLE)
                                    423 ; genIfx
      00A3F0 0D 05            [ 1]  424 	tnz	(0x05, sp)
      00A3F2 26 03            [ 1]  425 	jrne	00150$
      00A3F4 CC A4 00         [ 2]  426 	jp	00105$
      00A3F7                        427 00150$:
                           0000DD   428 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$88 ==.
                           0000DD   429 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$89 ==.
                                    430 ;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
                                    431 ; genCpl
      00A3F7 43               [ 1]  432 	cpl	a
                                    433 ; genAnd
      00A3F8 14 01            [ 1]  434 	and	a, (0x01, sp)
                                    435 ; genPointerSet
      00A3FA C7 54 07         [ 1]  436 	ld	0x5407, a
                           0000E3   437 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$90 ==.
                                    438 ; genGoto
      00A3FD CC A4 34         [ 2]  439 	jp	00116$
                                    440 ; genLabel
      00A400                        441 00105$:
                           0000E6   442 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$91 ==.
                           0000E6   443 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$92 ==.
                                    444 ;	../SPL/src/stm8s_adc2.c: 210: ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
                                    445 ; genOr
      00A400 1A 01            [ 1]  446 	or	a, (0x01, sp)
                                    447 ; genPointerSet
      00A402 C7 54 07         [ 1]  448 	ld	0x5407, a
                           0000EB   449 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$93 ==.
                                    450 ; genGoto
      00A405 CC A4 34         [ 2]  451 	jp	00116$
                                    452 ; genLabel
      00A408                        453 00111$:
                           0000EE   454 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$94 ==.
                                    455 ;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
                                    456 ; genPointerGet
      00A408 C6 54 06         [ 1]  457 	ld	a, 0x5406
      00A40B 6B 01            [ 1]  458 	ld	(0x01, sp), a
                           0000F3   459 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$95 ==.
                                    460 ;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
                                    461 ; genMinus
      00A40D 7B 04            [ 1]  462 	ld	a, (0x04, sp)
      00A40F A0 08            [ 1]  463 	sub	a, #0x08
      00A411 97               [ 1]  464 	ld	xl, a
                                    465 ; genLeftShift
      00A412 A6 01            [ 1]  466 	ld	a, #0x01
      00A414 88               [ 1]  467 	push	a
                           0000FB   468 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$96 ==.
      00A415 9F               [ 1]  469 	ld	a, xl
      00A416 4D               [ 1]  470 	tnz	a
      00A417 27 05            [ 1]  471 	jreq	00152$
      00A419                        472 00151$:
      00A419 08 01            [ 1]  473 	sll	(1, sp)
      00A41B 4A               [ 1]  474 	dec	a
      00A41C 26 FB            [ 1]  475 	jrne	00151$
      00A41E                        476 00152$:
      00A41E 84               [ 1]  477 	pop	a
                           000105   478 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$97 ==.
                           000105   479 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$98 ==.
                           000105   480 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$99 ==.
                                    481 ;	../SPL/src/stm8s_adc2.c: 215: if (NewState != DISABLE)
                                    482 ; genIfx
      00A41F 0D 05            [ 1]  483 	tnz	(0x05, sp)
      00A421 26 03            [ 1]  484 	jrne	00153$
      00A423 CC A4 2F         [ 2]  485 	jp	00108$
      00A426                        486 00153$:
                           00010C   487 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$100 ==.
                           00010C   488 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$101 ==.
                                    489 ;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
                                    490 ; genCpl
      00A426 43               [ 1]  491 	cpl	a
                                    492 ; genAnd
      00A427 14 01            [ 1]  493 	and	a, (0x01, sp)
                                    494 ; genPointerSet
      00A429 C7 54 06         [ 1]  495 	ld	0x5406, a
                           000112   496 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$102 ==.
                                    497 ; genGoto
      00A42C CC A4 34         [ 2]  498 	jp	00116$
                                    499 ; genLabel
      00A42F                        500 00108$:
                           000115   501 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$103 ==.
                           000115   502 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$104 ==.
                                    503 ;	../SPL/src/stm8s_adc2.c: 221: ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
                                    504 ; genOr
      00A42F 1A 01            [ 1]  505 	or	a, (0x01, sp)
                                    506 ; genPointerSet
      00A431 C7 54 06         [ 1]  507 	ld	0x5406, a
                           00011A   508 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$105 ==.
                                    509 ; genLabel
      00A434                        510 00116$:
                           00011A   511 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$106 ==.
                                    512 ;	../SPL/src/stm8s_adc2.c: 224: }
                                    513 ; genEndFunction
      00A434 84               [ 1]  514 	pop	a
                           00011B   515 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$107 ==.
                           00011B   516 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$108 ==.
                           00011B   517 	XG$ADC2_SchmittTriggerConfig$0$0 ==.
      00A435 81               [ 4]  518 	ret
                           00011C   519 	Sstm8s_adc2$ADC2_SchmittTriggerConfig$109 ==.
                           00011C   520 	Sstm8s_adc2$ADC2_ConversionConfig$110 ==.
                                    521 ;	../SPL/src/stm8s_adc2.c: 236: void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
                                    522 ; genLabel
                                    523 ;	-----------------------------------------
                                    524 ;	 function ADC2_ConversionConfig
                                    525 ;	-----------------------------------------
                                    526 ;	Register assignment is optimal.
                                    527 ;	Stack space usage: 0 bytes.
      00A436                        528 _ADC2_ConversionConfig:
                           00011C   529 	Sstm8s_adc2$ADC2_ConversionConfig$111 ==.
                           00011C   530 	Sstm8s_adc2$ADC2_ConversionConfig$112 ==.
                                    531 ;	../SPL/src/stm8s_adc2.c: 244: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
                                    532 ; genPointerGet
      00A436 C6 54 02         [ 1]  533 	ld	a, 0x5402
                                    534 ; genAnd
      00A439 A4 F7            [ 1]  535 	and	a, #0xf7
                                    536 ; genPointerSet
      00A43B C7 54 02         [ 1]  537 	ld	0x5402, a
                           000124   538 	Sstm8s_adc2$ADC2_ConversionConfig$113 ==.
                                    539 ;	../SPL/src/stm8s_adc2.c: 246: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    540 ; genPointerGet
      00A43E C6 54 02         [ 1]  541 	ld	a, 0x5402
                                    542 ; genOr
      00A441 1A 05            [ 1]  543 	or	a, (0x05, sp)
                                    544 ; genPointerSet
      00A443 C7 54 02         [ 1]  545 	ld	0x5402, a
                           00012C   546 	Sstm8s_adc2$ADC2_ConversionConfig$114 ==.
                                    547 ;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
                                    548 ; genPointerGet
      00A446 C6 54 01         [ 1]  549 	ld	a, 0x5401
                           00012F   550 	Sstm8s_adc2$ADC2_ConversionConfig$115 ==.
                                    551 ;	../SPL/src/stm8s_adc2.c: 248: if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
                                    552 ; genCmpEQorNE
      00A449 88               [ 1]  553 	push	a
                           000130   554 	Sstm8s_adc2$ADC2_ConversionConfig$116 ==.
      00A44A 7B 04            [ 1]  555 	ld	a, (0x04, sp)
      00A44C 4A               [ 1]  556 	dec	a
      00A44D 84               [ 1]  557 	pop	a
                           000134   558 	Sstm8s_adc2$ADC2_ConversionConfig$117 ==.
      00A44E 26 03            [ 1]  559 	jrne	00112$
      00A450 CC A4 56         [ 2]  560 	jp	00113$
      00A453                        561 00112$:
      00A453 CC A4 5E         [ 2]  562 	jp	00102$
      00A456                        563 00113$:
                           00013C   564 	Sstm8s_adc2$ADC2_ConversionConfig$118 ==.
                                    565 ; skipping generated iCode
                           00013C   566 	Sstm8s_adc2$ADC2_ConversionConfig$119 ==.
                           00013C   567 	Sstm8s_adc2$ADC2_ConversionConfig$120 ==.
                                    568 ;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
                                    569 ; genOr
      00A456 AA 02            [ 1]  570 	or	a, #0x02
                                    571 ; genPointerSet
      00A458 C7 54 01         [ 1]  572 	ld	0x5401, a
                           000141   573 	Sstm8s_adc2$ADC2_ConversionConfig$121 ==.
                                    574 ; genGoto
      00A45B CC A4 63         [ 2]  575 	jp	00103$
                                    576 ; genLabel
      00A45E                        577 00102$:
                           000144   578 	Sstm8s_adc2$ADC2_ConversionConfig$122 ==.
                           000144   579 	Sstm8s_adc2$ADC2_ConversionConfig$123 ==.
                                    580 ;	../SPL/src/stm8s_adc2.c: 256: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
                                    581 ; genAnd
      00A45E A4 FD            [ 1]  582 	and	a, #0xfd
                                    583 ; genPointerSet
      00A460 C7 54 01         [ 1]  584 	ld	0x5401, a
                           000149   585 	Sstm8s_adc2$ADC2_ConversionConfig$124 ==.
                                    586 ; genLabel
      00A463                        587 00103$:
                           000149   588 	Sstm8s_adc2$ADC2_ConversionConfig$125 ==.
                                    589 ;	../SPL/src/stm8s_adc2.c: 260: ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
                                    590 ; genPointerGet
      00A463 C6 54 00         [ 1]  591 	ld	a, 0x5400
                                    592 ; genAnd
      00A466 A4 F0            [ 1]  593 	and	a, #0xf0
                                    594 ; genPointerSet
      00A468 C7 54 00         [ 1]  595 	ld	0x5400, a
                           000151   596 	Sstm8s_adc2$ADC2_ConversionConfig$126 ==.
                                    597 ;	../SPL/src/stm8s_adc2.c: 262: ADC2->CSR |= (uint8_t)(ADC2_Channel);
                                    598 ; genPointerGet
      00A46B C6 54 00         [ 1]  599 	ld	a, 0x5400
                                    600 ; genOr
      00A46E 1A 04            [ 1]  601 	or	a, (0x04, sp)
                                    602 ; genPointerSet
      00A470 C7 54 00         [ 1]  603 	ld	0x5400, a
                                    604 ; genLabel
      00A473                        605 00104$:
                           000159   606 	Sstm8s_adc2$ADC2_ConversionConfig$127 ==.
                                    607 ;	../SPL/src/stm8s_adc2.c: 263: }
                                    608 ; genEndFunction
                           000159   609 	Sstm8s_adc2$ADC2_ConversionConfig$128 ==.
                           000159   610 	XG$ADC2_ConversionConfig$0$0 ==.
      00A473 81               [ 4]  611 	ret
                           00015A   612 	Sstm8s_adc2$ADC2_ConversionConfig$129 ==.
                           00015A   613 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$130 ==.
                                    614 ;	../SPL/src/stm8s_adc2.c: 275: void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
                                    615 ; genLabel
                                    616 ;	-----------------------------------------
                                    617 ;	 function ADC2_ExternalTriggerConfig
                                    618 ;	-----------------------------------------
                                    619 ;	Register assignment is optimal.
                                    620 ;	Stack space usage: 0 bytes.
      00A474                        621 _ADC2_ExternalTriggerConfig:
                           00015A   622 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$131 ==.
                           00015A   623 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$132 ==.
                                    624 ;	../SPL/src/stm8s_adc2.c: 282: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
                                    625 ; genPointerGet
      00A474 C6 54 02         [ 1]  626 	ld	a, 0x5402
                                    627 ; genAnd
      00A477 A4 CF            [ 1]  628 	and	a, #0xcf
                                    629 ; genPointerSet
      00A479 C7 54 02         [ 1]  630 	ld	0x5402, a
                                    631 ; genPointerGet
      00A47C C6 54 02         [ 1]  632 	ld	a, 0x5402
                           000165   633 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$133 ==.
                                    634 ;	../SPL/src/stm8s_adc2.c: 284: if (NewState != DISABLE)
                                    635 ; genIfx
      00A47F 0D 04            [ 1]  636 	tnz	(0x04, sp)
      00A481 26 03            [ 1]  637 	jrne	00111$
      00A483 CC A4 8E         [ 2]  638 	jp	00102$
      00A486                        639 00111$:
                           00016C   640 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$134 ==.
                           00016C   641 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$135 ==.
                                    642 ;	../SPL/src/stm8s_adc2.c: 287: ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
                                    643 ; genOr
      00A486 AA 40            [ 1]  644 	or	a, #0x40
                                    645 ; genPointerSet
      00A488 C7 54 02         [ 1]  646 	ld	0x5402, a
                           000171   647 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$136 ==.
                                    648 ; genGoto
      00A48B CC A4 93         [ 2]  649 	jp	00103$
                                    650 ; genLabel
      00A48E                        651 00102$:
                           000174   652 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$137 ==.
                           000174   653 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$138 ==.
                                    654 ;	../SPL/src/stm8s_adc2.c: 292: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
                                    655 ; genAnd
      00A48E A4 BF            [ 1]  656 	and	a, #0xbf
                                    657 ; genPointerSet
      00A490 C7 54 02         [ 1]  658 	ld	0x5402, a
                           000179   659 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$139 ==.
                                    660 ; genLabel
      00A493                        661 00103$:
                           000179   662 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$140 ==.
                                    663 ;	../SPL/src/stm8s_adc2.c: 296: ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
                                    664 ; genPointerGet
      00A493 C6 54 02         [ 1]  665 	ld	a, 0x5402
                                    666 ; genOr
      00A496 1A 03            [ 1]  667 	or	a, (0x03, sp)
                                    668 ; genPointerSet
      00A498 C7 54 02         [ 1]  669 	ld	0x5402, a
                                    670 ; genLabel
      00A49B                        671 00104$:
                           000181   672 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$141 ==.
                                    673 ;	../SPL/src/stm8s_adc2.c: 297: }
                                    674 ; genEndFunction
                           000181   675 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$142 ==.
                           000181   676 	XG$ADC2_ExternalTriggerConfig$0$0 ==.
      00A49B 81               [ 4]  677 	ret
                           000182   678 	Sstm8s_adc2$ADC2_ExternalTriggerConfig$143 ==.
                           000182   679 	Sstm8s_adc2$ADC2_StartConversion$144 ==.
                                    680 ;	../SPL/src/stm8s_adc2.c: 308: void ADC2_StartConversion(void)
                                    681 ; genLabel
                                    682 ;	-----------------------------------------
                                    683 ;	 function ADC2_StartConversion
                                    684 ;	-----------------------------------------
                                    685 ;	Register assignment is optimal.
                                    686 ;	Stack space usage: 0 bytes.
      00A49C                        687 _ADC2_StartConversion:
                           000182   688 	Sstm8s_adc2$ADC2_StartConversion$145 ==.
                           000182   689 	Sstm8s_adc2$ADC2_StartConversion$146 ==.
                                    690 ;	../SPL/src/stm8s_adc2.c: 310: ADC2->CR1 |= ADC2_CR1_ADON;
                                    691 ; genPointerGet
      00A49C C6 54 01         [ 1]  692 	ld	a, 0x5401
                                    693 ; genOr
      00A49F AA 01            [ 1]  694 	or	a, #0x01
                                    695 ; genPointerSet
      00A4A1 C7 54 01         [ 1]  696 	ld	0x5401, a
                                    697 ; genLabel
      00A4A4                        698 00101$:
                           00018A   699 	Sstm8s_adc2$ADC2_StartConversion$147 ==.
                                    700 ;	../SPL/src/stm8s_adc2.c: 311: }
                                    701 ; genEndFunction
                           00018A   702 	Sstm8s_adc2$ADC2_StartConversion$148 ==.
                           00018A   703 	XG$ADC2_StartConversion$0$0 ==.
      00A4A4 81               [ 4]  704 	ret
                           00018B   705 	Sstm8s_adc2$ADC2_StartConversion$149 ==.
                           00018B   706 	Sstm8s_adc2$ADC2_GetConversionValue$150 ==.
                                    707 ;	../SPL/src/stm8s_adc2.c: 320: uint16_t ADC2_GetConversionValue(void)
                                    708 ; genLabel
                                    709 ;	-----------------------------------------
                                    710 ;	 function ADC2_GetConversionValue
                                    711 ;	-----------------------------------------
                                    712 ;	Register assignment might be sub-optimal.
                                    713 ;	Stack space usage: 4 bytes.
      00A4A5                        714 _ADC2_GetConversionValue:
                           00018B   715 	Sstm8s_adc2$ADC2_GetConversionValue$151 ==.
      00A4A5 52 04            [ 2]  716 	sub	sp, #4
                           00018D   717 	Sstm8s_adc2$ADC2_GetConversionValue$152 ==.
                           00018D   718 	Sstm8s_adc2$ADC2_GetConversionValue$153 ==.
                                    719 ;	../SPL/src/stm8s_adc2.c: 325: if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
                                    720 ; genPointerGet
      00A4A7 C6 54 02         [ 1]  721 	ld	a, 0x5402
                                    722 ; genAnd
      00A4AA A5 08            [ 1]  723 	bcp	a, #0x08
      00A4AC 26 03            [ 1]  724 	jrne	00111$
      00A4AE CC A4 CA         [ 2]  725 	jp	00102$
      00A4B1                        726 00111$:
                                    727 ; skipping generated iCode
                           000197   728 	Sstm8s_adc2$ADC2_GetConversionValue$154 ==.
                           000197   729 	Sstm8s_adc2$ADC2_GetConversionValue$155 ==.
                                    730 ;	../SPL/src/stm8s_adc2.c: 328: templ = ADC2->DRL;
                                    731 ; genPointerGet
      00A4B1 C6 54 05         [ 1]  732 	ld	a, 0x5405
      00A4B4 97               [ 1]  733 	ld	xl, a
                           00019B   734 	Sstm8s_adc2$ADC2_GetConversionValue$156 ==.
                                    735 ;	../SPL/src/stm8s_adc2.c: 330: temph = ADC2->DRH;
                                    736 ; genPointerGet
      00A4B5 C6 54 04         [ 1]  737 	ld	a, 0x5404
                                    738 ; genCast
                                    739 ; genAssign
      00A4B8 90 5F            [ 1]  740 	clrw	y
                                    741 ; genAssign
                           0001A0   742 	Sstm8s_adc2$ADC2_GetConversionValue$157 ==.
                                    743 ;	../SPL/src/stm8s_adc2.c: 332: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
                                    744 ; genLeftShiftLiteral
      00A4BA 0F 02            [ 1]  745 	clr	(0x02, sp)
                                    746 ; genCast
                                    747 ; genAssign
      00A4BC 0F 03            [ 1]  748 	clr	(0x03, sp)
                                    749 ; genOr
      00A4BE 1A 03            [ 1]  750 	or	a, (0x03, sp)
      00A4C0 95               [ 1]  751 	ld	xh, a
      00A4C1 9F               [ 1]  752 	ld	a, xl
      00A4C2 1A 02            [ 1]  753 	or	a, (0x02, sp)
      00A4C4 97               [ 1]  754 	ld	xl, a
                                    755 ; genAssign
      00A4C5 1F 03            [ 2]  756 	ldw	(0x03, sp), x
                           0001AD   757 	Sstm8s_adc2$ADC2_GetConversionValue$158 ==.
                                    758 ; genGoto
      00A4C7 CC A4 E8         [ 2]  759 	jp	00103$
                                    760 ; genLabel
      00A4CA                        761 00102$:
                           0001B0   762 	Sstm8s_adc2$ADC2_GetConversionValue$159 ==.
                           0001B0   763 	Sstm8s_adc2$ADC2_GetConversionValue$160 ==.
                                    764 ;	../SPL/src/stm8s_adc2.c: 337: temph = ADC2->DRH;
                                    765 ; genPointerGet
      00A4CA C6 54 04         [ 1]  766 	ld	a, 0x5404
                                    767 ; genCast
                                    768 ; genAssign
      00A4CD 5F               [ 1]  769 	clrw	x
      00A4CE 97               [ 1]  770 	ld	xl, a
                                    771 ; genAssign
      00A4CF 51               [ 1]  772 	exgw	x, y
                           0001B6   773 	Sstm8s_adc2$ADC2_GetConversionValue$161 ==.
                                    774 ;	../SPL/src/stm8s_adc2.c: 339: templ = ADC2->DRL;
                                    775 ; genPointerGet
      00A4D0 C6 54 05         [ 1]  776 	ld	a, 0x5405
                           0001B9   777 	Sstm8s_adc2$ADC2_GetConversionValue$162 ==.
                                    778 ;	../SPL/src/stm8s_adc2.c: 341: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
                                    779 ; genCast
                                    780 ; genAssign
      00A4D3 5F               [ 1]  781 	clrw	x
      00A4D4 97               [ 1]  782 	ld	xl, a
                                    783 ; genLeftShiftLiteral
      00A4D5 58               [ 2]  784 	sllw	x
      00A4D6 58               [ 2]  785 	sllw	x
      00A4D7 58               [ 2]  786 	sllw	x
      00A4D8 58               [ 2]  787 	sllw	x
      00A4D9 58               [ 2]  788 	sllw	x
      00A4DA 58               [ 2]  789 	sllw	x
      00A4DB 1F 03            [ 2]  790 	ldw	(0x03, sp), x
                                    791 ; genLeftShiftLiteral
      00A4DD 4F               [ 1]  792 	clr	a
                                    793 ; genOr
      00A4DE 1A 04            [ 1]  794 	or	a, (0x04, sp)
      00A4E0 97               [ 1]  795 	ld	xl, a
      00A4E1 90 9F            [ 1]  796 	ld	a, yl
      00A4E3 1A 03            [ 1]  797 	or	a, (0x03, sp)
      00A4E5 95               [ 1]  798 	ld	xh, a
                                    799 ; genAssign
      00A4E6 1F 03            [ 2]  800 	ldw	(0x03, sp), x
                           0001CE   801 	Sstm8s_adc2$ADC2_GetConversionValue$163 ==.
                                    802 ; genLabel
      00A4E8                        803 00103$:
                           0001CE   804 	Sstm8s_adc2$ADC2_GetConversionValue$164 ==.
                                    805 ;	../SPL/src/stm8s_adc2.c: 344: return ((uint16_t)temph);
                                    806 ; genReturn
      00A4E8 1E 03            [ 2]  807 	ldw	x, (0x03, sp)
                                    808 ; genLabel
      00A4EA                        809 00104$:
                           0001D0   810 	Sstm8s_adc2$ADC2_GetConversionValue$165 ==.
                                    811 ;	../SPL/src/stm8s_adc2.c: 345: }
                                    812 ; genEndFunction
      00A4EA 5B 04            [ 2]  813 	addw	sp, #4
                           0001D2   814 	Sstm8s_adc2$ADC2_GetConversionValue$166 ==.
                           0001D2   815 	Sstm8s_adc2$ADC2_GetConversionValue$167 ==.
                           0001D2   816 	XG$ADC2_GetConversionValue$0$0 ==.
      00A4EC 81               [ 4]  817 	ret
                           0001D3   818 	Sstm8s_adc2$ADC2_GetConversionValue$168 ==.
                           0001D3   819 	Sstm8s_adc2$ADC2_GetFlagStatus$169 ==.
                                    820 ;	../SPL/src/stm8s_adc2.c: 352: FlagStatus ADC2_GetFlagStatus(void)
                                    821 ; genLabel
                                    822 ;	-----------------------------------------
                                    823 ;	 function ADC2_GetFlagStatus
                                    824 ;	-----------------------------------------
                                    825 ;	Register assignment is optimal.
                                    826 ;	Stack space usage: 0 bytes.
      00A4ED                        827 _ADC2_GetFlagStatus:
                           0001D3   828 	Sstm8s_adc2$ADC2_GetFlagStatus$170 ==.
                           0001D3   829 	Sstm8s_adc2$ADC2_GetFlagStatus$171 ==.
                                    830 ;	../SPL/src/stm8s_adc2.c: 355: return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
                                    831 ; genPointerGet
      00A4ED C6 54 00         [ 1]  832 	ld	a, 0x5400
                                    833 ; genAnd
      00A4F0 A4 80            [ 1]  834 	and	a, #0x80
                                    835 ; genReturn
                                    836 ; genLabel
      00A4F2                        837 00101$:
                           0001D8   838 	Sstm8s_adc2$ADC2_GetFlagStatus$172 ==.
                                    839 ;	../SPL/src/stm8s_adc2.c: 356: }
                                    840 ; genEndFunction
                           0001D8   841 	Sstm8s_adc2$ADC2_GetFlagStatus$173 ==.
                           0001D8   842 	XG$ADC2_GetFlagStatus$0$0 ==.
      00A4F2 81               [ 4]  843 	ret
                           0001D9   844 	Sstm8s_adc2$ADC2_GetFlagStatus$174 ==.
                           0001D9   845 	Sstm8s_adc2$ADC2_ClearFlag$175 ==.
                                    846 ;	../SPL/src/stm8s_adc2.c: 363: void ADC2_ClearFlag(void)
                                    847 ; genLabel
                                    848 ;	-----------------------------------------
                                    849 ;	 function ADC2_ClearFlag
                                    850 ;	-----------------------------------------
                                    851 ;	Register assignment is optimal.
                                    852 ;	Stack space usage: 0 bytes.
      00A4F3                        853 _ADC2_ClearFlag:
                           0001D9   854 	Sstm8s_adc2$ADC2_ClearFlag$176 ==.
                           0001D9   855 	Sstm8s_adc2$ADC2_ClearFlag$177 ==.
                                    856 ;	../SPL/src/stm8s_adc2.c: 365: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
                                    857 ; genPointerGet
      00A4F3 C6 54 00         [ 1]  858 	ld	a, 0x5400
                                    859 ; genAnd
      00A4F6 A4 7F            [ 1]  860 	and	a, #0x7f
                                    861 ; genPointerSet
      00A4F8 C7 54 00         [ 1]  862 	ld	0x5400, a
                                    863 ; genLabel
      00A4FB                        864 00101$:
                           0001E1   865 	Sstm8s_adc2$ADC2_ClearFlag$178 ==.
                                    866 ;	../SPL/src/stm8s_adc2.c: 366: }
                                    867 ; genEndFunction
                           0001E1   868 	Sstm8s_adc2$ADC2_ClearFlag$179 ==.
                           0001E1   869 	XG$ADC2_ClearFlag$0$0 ==.
      00A4FB 81               [ 4]  870 	ret
                           0001E2   871 	Sstm8s_adc2$ADC2_ClearFlag$180 ==.
                           0001E2   872 	Sstm8s_adc2$ADC2_GetITStatus$181 ==.
                                    873 ;	../SPL/src/stm8s_adc2.c: 374: ITStatus ADC2_GetITStatus(void)
                                    874 ; genLabel
                                    875 ;	-----------------------------------------
                                    876 ;	 function ADC2_GetITStatus
                                    877 ;	-----------------------------------------
                                    878 ;	Register assignment is optimal.
                                    879 ;	Stack space usage: 0 bytes.
      00A4FC                        880 _ADC2_GetITStatus:
                           0001E2   881 	Sstm8s_adc2$ADC2_GetITStatus$182 ==.
                           0001E2   882 	Sstm8s_adc2$ADC2_GetITStatus$183 ==.
                                    883 ;	../SPL/src/stm8s_adc2.c: 376: return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
                                    884 ; genPointerGet
      00A4FC C6 54 00         [ 1]  885 	ld	a, 0x5400
                                    886 ; genAnd
      00A4FF A4 80            [ 1]  887 	and	a, #0x80
                                    888 ; genReturn
                                    889 ; genLabel
      00A501                        890 00101$:
                           0001E7   891 	Sstm8s_adc2$ADC2_GetITStatus$184 ==.
                                    892 ;	../SPL/src/stm8s_adc2.c: 377: }
                                    893 ; genEndFunction
                           0001E7   894 	Sstm8s_adc2$ADC2_GetITStatus$185 ==.
                           0001E7   895 	XG$ADC2_GetITStatus$0$0 ==.
      00A501 81               [ 4]  896 	ret
                           0001E8   897 	Sstm8s_adc2$ADC2_GetITStatus$186 ==.
                           0001E8   898 	Sstm8s_adc2$ADC2_ClearITPendingBit$187 ==.
                                    899 ;	../SPL/src/stm8s_adc2.c: 384: void ADC2_ClearITPendingBit(void)
                                    900 ; genLabel
                                    901 ;	-----------------------------------------
                                    902 ;	 function ADC2_ClearITPendingBit
                                    903 ;	-----------------------------------------
                                    904 ;	Register assignment is optimal.
                                    905 ;	Stack space usage: 0 bytes.
      00A502                        906 _ADC2_ClearITPendingBit:
                           0001E8   907 	Sstm8s_adc2$ADC2_ClearITPendingBit$188 ==.
                           0001E8   908 	Sstm8s_adc2$ADC2_ClearITPendingBit$189 ==.
                                    909 ;	../SPL/src/stm8s_adc2.c: 386: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
                                    910 ; genPointerGet
      00A502 C6 54 00         [ 1]  911 	ld	a, 0x5400
                                    912 ; genAnd
      00A505 A4 7F            [ 1]  913 	and	a, #0x7f
                                    914 ; genPointerSet
      00A507 C7 54 00         [ 1]  915 	ld	0x5400, a
                                    916 ; genLabel
      00A50A                        917 00101$:
                           0001F0   918 	Sstm8s_adc2$ADC2_ClearITPendingBit$190 ==.
                                    919 ;	../SPL/src/stm8s_adc2.c: 387: }
                                    920 ; genEndFunction
                           0001F0   921 	Sstm8s_adc2$ADC2_ClearITPendingBit$191 ==.
                           0001F0   922 	XG$ADC2_ClearITPendingBit$0$0 ==.
      00A50A 81               [ 4]  923 	ret
                           0001F1   924 	Sstm8s_adc2$ADC2_ClearITPendingBit$192 ==.
                                    925 	.area CODE
                                    926 	.area CONST
                                    927 	.area INITIALIZER
                                    928 	.area CABS (ABS)
                                    929 
                                    930 	.area .debug_line (NOLOAD)
      002D25 00 00 03 3F            931 	.dw	0,Ldebug_line_end-Ldebug_line_start
      002D29                        932 Ldebug_line_start:
      002D29 00 02                  933 	.dw	2
      002D2B 00 00 00 78            934 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      002D2F 01                     935 	.db	1
      002D30 01                     936 	.db	1
      002D31 FB                     937 	.db	-5
      002D32 0F                     938 	.db	15
      002D33 0A                     939 	.db	10
      002D34 00                     940 	.db	0
      002D35 01                     941 	.db	1
      002D36 01                     942 	.db	1
      002D37 01                     943 	.db	1
      002D38 01                     944 	.db	1
      002D39 00                     945 	.db	0
      002D3A 00                     946 	.db	0
      002D3B 00                     947 	.db	0
      002D3C 01                     948 	.db	1
      002D3D 43 3A 5C 50 72 6F 67   949 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      002D65 00                     950 	.db	0
      002D66 43 3A 5C 50 72 6F 67   951 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      002D89 00                     952 	.db	0
      002D8A 00                     953 	.db	0
      002D8B 2E 2E 2F 53 50 4C 2F   954 	.ascii "../SPL/src/stm8s_adc2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 61 64 63 32
             2E 63
      002DA2 00                     955 	.db	0
      002DA3 00                     956 	.uleb128	0
      002DA4 00                     957 	.uleb128	0
      002DA5 00                     958 	.uleb128	0
      002DA6 00                     959 	.db	0
      002DA7                        960 Ldebug_line_stmt:
      002DA7 00                     961 	.db	0
      002DA8 05                     962 	.uleb128	5
      002DA9 02                     963 	.db	2
      002DAA 00 00 A3 1A            964 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$0)
      002DAE 03                     965 	.db	3
      002DAF 35                     966 	.sleb128	53
      002DB0 01                     967 	.db	1
      002DB1 09                     968 	.db	9
      002DB2 00 00                  969 	.dw	Sstm8s_adc2$ADC2_DeInit$2-Sstm8s_adc2$ADC2_DeInit$0
      002DB4 03                     970 	.db	3
      002DB5 02                     971 	.sleb128	2
      002DB6 01                     972 	.db	1
      002DB7 09                     973 	.db	9
      002DB8 00 04                  974 	.dw	Sstm8s_adc2$ADC2_DeInit$3-Sstm8s_adc2$ADC2_DeInit$2
      002DBA 03                     975 	.db	3
      002DBB 01                     976 	.sleb128	1
      002DBC 01                     977 	.db	1
      002DBD 09                     978 	.db	9
      002DBE 00 04                  979 	.dw	Sstm8s_adc2$ADC2_DeInit$4-Sstm8s_adc2$ADC2_DeInit$3
      002DC0 03                     980 	.db	3
      002DC1 01                     981 	.sleb128	1
      002DC2 01                     982 	.db	1
      002DC3 09                     983 	.db	9
      002DC4 00 04                  984 	.dw	Sstm8s_adc2$ADC2_DeInit$5-Sstm8s_adc2$ADC2_DeInit$4
      002DC6 03                     985 	.db	3
      002DC7 01                     986 	.sleb128	1
      002DC8 01                     987 	.db	1
      002DC9 09                     988 	.db	9
      002DCA 00 04                  989 	.dw	Sstm8s_adc2$ADC2_DeInit$6-Sstm8s_adc2$ADC2_DeInit$5
      002DCC 03                     990 	.db	3
      002DCD 01                     991 	.sleb128	1
      002DCE 01                     992 	.db	1
      002DCF 09                     993 	.db	9
      002DD0 00 04                  994 	.dw	Sstm8s_adc2$ADC2_DeInit$7-Sstm8s_adc2$ADC2_DeInit$6
      002DD2 03                     995 	.db	3
      002DD3 01                     996 	.sleb128	1
      002DD4 01                     997 	.db	1
      002DD5 09                     998 	.db	9
      002DD6 00 01                  999 	.dw	1+Sstm8s_adc2$ADC2_DeInit$8-Sstm8s_adc2$ADC2_DeInit$7
      002DD8 00                    1000 	.db	0
      002DD9 01                    1001 	.uleb128	1
      002DDA 01                    1002 	.db	1
      002DDB 00                    1003 	.db	0
      002DDC 05                    1004 	.uleb128	5
      002DDD 02                    1005 	.db	2
      002DDE 00 00 A3 2F           1006 	.dw	0,(Sstm8s_adc2$ADC2_Init$10)
      002DE2 03                    1007 	.db	3
      002DE3 D2 00                 1008 	.sleb128	82
      002DE5 01                    1009 	.db	1
      002DE6 09                    1010 	.db	9
      002DE7 00 00                 1011 	.dw	Sstm8s_adc2$ADC2_Init$12-Sstm8s_adc2$ADC2_Init$10
      002DE9 03                    1012 	.db	3
      002DEA 0F                    1013 	.sleb128	15
      002DEB 01                    1014 	.db	1
      002DEC 09                    1015 	.db	9
      002DED 00 0E                 1016 	.dw	Sstm8s_adc2$ADC2_Init$17-Sstm8s_adc2$ADC2_Init$12
      002DEF 03                    1017 	.db	3
      002DF0 02                    1018 	.sleb128	2
      002DF1 01                    1019 	.db	1
      002DF2 09                    1020 	.db	9
      002DF3 00 07                 1021 	.dw	Sstm8s_adc2$ADC2_Init$20-Sstm8s_adc2$ADC2_Init$17
      002DF5 03                    1022 	.db	3
      002DF6 05                    1023 	.sleb128	5
      002DF7 01                    1024 	.db	1
      002DF8 09                    1025 	.db	9
      002DF9 00 0A                 1026 	.dw	Sstm8s_adc2$ADC2_Init$24-Sstm8s_adc2$ADC2_Init$20
      002DFB 03                    1027 	.db	3
      002DFC 05                    1028 	.sleb128	5
      002DFD 01                    1029 	.db	1
      002DFE 09                    1030 	.db	9
      002DFF 00 0A                 1031 	.dw	Sstm8s_adc2$ADC2_Init$28-Sstm8s_adc2$ADC2_Init$24
      002E01 03                    1032 	.db	3
      002E02 03                    1033 	.sleb128	3
      002E03 01                    1034 	.db	1
      002E04 09                    1035 	.db	9
      002E05 00 08                 1036 	.dw	Sstm8s_adc2$ADC2_Init$29-Sstm8s_adc2$ADC2_Init$28
      002E07 03                    1037 	.db	3
      002E08 01                    1038 	.sleb128	1
      002E09 01                    1039 	.db	1
      002E0A 09                    1040 	.db	9
      002E0B 00 01                 1041 	.dw	1+Sstm8s_adc2$ADC2_Init$30-Sstm8s_adc2$ADC2_Init$29
      002E0D 00                    1042 	.db	0
      002E0E 01                    1043 	.uleb128	1
      002E0F 01                    1044 	.db	1
      002E10 00                    1045 	.db	0
      002E11 05                    1046 	.uleb128	5
      002E12 02                    1047 	.db	2
      002E13 00 00 A3 61           1048 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$32)
      002E17 03                    1049 	.db	3
      002E18 F8 00                 1050 	.sleb128	120
      002E1A 01                    1051 	.db	1
      002E1B 09                    1052 	.db	9
      002E1C 00 00                 1053 	.dw	Sstm8s_adc2$ADC2_Cmd$34-Sstm8s_adc2$ADC2_Cmd$32
      002E1E 03                    1054 	.db	3
      002E1F 07                    1055 	.sleb128	7
      002E20 01                    1056 	.db	1
      002E21 09                    1057 	.db	9
      002E22 00 03                 1058 	.dw	Sstm8s_adc2$ADC2_Cmd$35-Sstm8s_adc2$ADC2_Cmd$34
      002E24 03                    1059 	.db	3
      002E25 7E                    1060 	.sleb128	-2
      002E26 01                    1061 	.db	1
      002E27 09                    1062 	.db	9
      002E28 00 07                 1063 	.dw	Sstm8s_adc2$ADC2_Cmd$37-Sstm8s_adc2$ADC2_Cmd$35
      002E2A 03                    1064 	.db	3
      002E2B 02                    1065 	.sleb128	2
      002E2C 01                    1066 	.db	1
      002E2D 09                    1067 	.db	9
      002E2E 00 08                 1068 	.dw	Sstm8s_adc2$ADC2_Cmd$40-Sstm8s_adc2$ADC2_Cmd$37
      002E30 03                    1069 	.db	3
      002E31 04                    1070 	.sleb128	4
      002E32 01                    1071 	.db	1
      002E33 09                    1072 	.db	9
      002E34 00 05                 1073 	.dw	Sstm8s_adc2$ADC2_Cmd$42-Sstm8s_adc2$ADC2_Cmd$40
      002E36 03                    1074 	.db	3
      002E37 02                    1075 	.sleb128	2
      002E38 01                    1076 	.db	1
      002E39 09                    1077 	.db	9
      002E3A 00 01                 1078 	.dw	1+Sstm8s_adc2$ADC2_Cmd$43-Sstm8s_adc2$ADC2_Cmd$42
      002E3C 00                    1079 	.db	0
      002E3D 01                    1080 	.uleb128	1
      002E3E 01                    1081 	.db	1
      002E3F 00                    1082 	.db	0
      002E40 05                    1083 	.uleb128	5
      002E41 02                    1084 	.db	2
      002E42 00 00 A3 79           1085 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$45)
      002E46 03                    1086 	.db	3
      002E47 8C 01                 1087 	.sleb128	140
      002E49 01                    1088 	.db	1
      002E4A 09                    1089 	.db	9
      002E4B 00 00                 1090 	.dw	Sstm8s_adc2$ADC2_ITConfig$47-Sstm8s_adc2$ADC2_ITConfig$45
      002E4D 03                    1091 	.db	3
      002E4E 08                    1092 	.sleb128	8
      002E4F 01                    1093 	.db	1
      002E50 09                    1094 	.db	9
      002E51 00 03                 1095 	.dw	Sstm8s_adc2$ADC2_ITConfig$48-Sstm8s_adc2$ADC2_ITConfig$47
      002E53 03                    1096 	.db	3
      002E54 7D                    1097 	.sleb128	-3
      002E55 01                    1098 	.db	1
      002E56 09                    1099 	.db	9
      002E57 00 07                 1100 	.dw	Sstm8s_adc2$ADC2_ITConfig$50-Sstm8s_adc2$ADC2_ITConfig$48
      002E59 03                    1101 	.db	3
      002E5A 03                    1102 	.sleb128	3
      002E5B 01                    1103 	.db	1
      002E5C 09                    1104 	.db	9
      002E5D 00 08                 1105 	.dw	Sstm8s_adc2$ADC2_ITConfig$53-Sstm8s_adc2$ADC2_ITConfig$50
      002E5F 03                    1106 	.db	3
      002E60 05                    1107 	.sleb128	5
      002E61 01                    1108 	.db	1
      002E62 09                    1109 	.db	9
      002E63 00 05                 1110 	.dw	Sstm8s_adc2$ADC2_ITConfig$55-Sstm8s_adc2$ADC2_ITConfig$53
      002E65 03                    1111 	.db	3
      002E66 02                    1112 	.sleb128	2
      002E67 01                    1113 	.db	1
      002E68 09                    1114 	.db	9
      002E69 00 01                 1115 	.dw	1+Sstm8s_adc2$ADC2_ITConfig$56-Sstm8s_adc2$ADC2_ITConfig$55
      002E6B 00                    1116 	.db	0
      002E6C 01                    1117 	.uleb128	1
      002E6D 01                    1118 	.db	1
      002E6E 00                    1119 	.db	0
      002E6F 05                    1120 	.uleb128	5
      002E70 02                    1121 	.db	2
      002E71 00 00 A3 91           1122 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$58)
      002E75 03                    1123 	.db	3
      002E76 A3 01                 1124 	.sleb128	163
      002E78 01                    1125 	.db	1
      002E79 09                    1126 	.db	9
      002E7A 00 00                 1127 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$60-Sstm8s_adc2$ADC2_PrescalerConfig$58
      002E7C 03                    1128 	.db	3
      002E7D 06                    1129 	.sleb128	6
      002E7E 01                    1130 	.db	1
      002E7F 09                    1131 	.db	9
      002E80 00 08                 1132 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$61-Sstm8s_adc2$ADC2_PrescalerConfig$60
      002E82 03                    1133 	.db	3
      002E83 02                    1134 	.sleb128	2
      002E84 01                    1135 	.db	1
      002E85 09                    1136 	.db	9
      002E86 00 08                 1137 	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$62-Sstm8s_adc2$ADC2_PrescalerConfig$61
      002E88 03                    1138 	.db	3
      002E89 01                    1139 	.sleb128	1
      002E8A 01                    1140 	.db	1
      002E8B 09                    1141 	.db	9
      002E8C 00 01                 1142 	.dw	1+Sstm8s_adc2$ADC2_PrescalerConfig$63-Sstm8s_adc2$ADC2_PrescalerConfig$62
      002E8E 00                    1143 	.db	0
      002E8F 01                    1144 	.uleb128	1
      002E90 01                    1145 	.db	1
      002E91 00                    1146 	.db	0
      002E92 05                    1147 	.uleb128	5
      002E93 02                    1148 	.db	2
      002E94 00 00 A3 A2           1149 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$65)
      002E98 03                    1150 	.db	3
      002E99 B6 01                 1151 	.sleb128	182
      002E9B 01                    1152 	.db	1
      002E9C 09                    1153 	.db	9
      002E9D 00 01                 1154 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$68-Sstm8s_adc2$ADC2_SchmittTriggerConfig$65
      002E9F 03                    1155 	.db	3
      002EA0 06                    1156 	.sleb128	6
      002EA1 01                    1157 	.db	1
      002EA2 09                    1158 	.db	9
      002EA3 00 0C                 1159 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$70-Sstm8s_adc2$ADC2_SchmittTriggerConfig$68
      002EA5 03                    1160 	.db	3
      002EA6 04                    1161 	.sleb128	4
      002EA7 01                    1162 	.db	1
      002EA8 09                    1163 	.db	9
      002EA9 00 03                 1164 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$72-Sstm8s_adc2$ADC2_SchmittTriggerConfig$70
      002EAB 03                    1165 	.db	3
      002EAC 7E                    1166 	.sleb128	-2
      002EAD 01                    1167 	.db	1
      002EAE 09                    1168 	.db	9
      002EAF 00 07                 1169 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$74-Sstm8s_adc2$ADC2_SchmittTriggerConfig$72
      002EB1 03                    1170 	.db	3
      002EB2 02                    1171 	.sleb128	2
      002EB3 01                    1172 	.db	1
      002EB4 09                    1173 	.db	9
      002EB5 00 04                 1174 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$75-Sstm8s_adc2$ADC2_SchmittTriggerConfig$74
      002EB7 03                    1175 	.db	3
      002EB8 01                    1176 	.sleb128	1
      002EB9 01                    1177 	.db	1
      002EBA 09                    1178 	.db	9
      002EBB 00 0A                 1179 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$78-Sstm8s_adc2$ADC2_SchmittTriggerConfig$75
      002EBD 03                    1180 	.db	3
      002EBE 04                    1181 	.sleb128	4
      002EBF 01                    1182 	.db	1
      002EC0 09                    1183 	.db	9
      002EC1 00 04                 1184 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$79-Sstm8s_adc2$ADC2_SchmittTriggerConfig$78
      002EC3 03                    1185 	.db	3
      002EC4 01                    1186 	.sleb128	1
      002EC5 01                    1187 	.db	1
      002EC6 09                    1188 	.db	9
      002EC7 00 0A                 1189 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$81-Sstm8s_adc2$ADC2_SchmittTriggerConfig$79
      002EC9 03                    1190 	.db	3
      002ECA 03                    1191 	.sleb128	3
      002ECB 01                    1192 	.db	1
      002ECC 09                    1193 	.db	9
      002ECD 00 09                 1194 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$82-Sstm8s_adc2$ADC2_SchmittTriggerConfig$81
      002ECF 03                    1195 	.db	3
      002ED0 77                    1196 	.sleb128	-9
      002ED1 01                    1197 	.db	1
      002ED2 09                    1198 	.db	9
      002ED3 00 05                 1199 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$83-Sstm8s_adc2$ADC2_SchmittTriggerConfig$82
      002ED5 03                    1200 	.db	3
      002ED6 0D                    1201 	.sleb128	13
      002ED7 01                    1202 	.db	1
      002ED8 09                    1203 	.db	9
      002ED9 00 0D                 1204 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$87-Sstm8s_adc2$ADC2_SchmittTriggerConfig$83
      002EDB 03                    1205 	.db	3
      002EDC 7E                    1206 	.sleb128	-2
      002EDD 01                    1207 	.db	1
      002EDE 09                    1208 	.db	9
      002EDF 00 07                 1209 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$89-Sstm8s_adc2$ADC2_SchmittTriggerConfig$87
      002EE1 03                    1210 	.db	3
      002EE2 02                    1211 	.sleb128	2
      002EE3 01                    1212 	.db	1
      002EE4 09                    1213 	.db	9
      002EE5 00 09                 1214 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$92-Sstm8s_adc2$ADC2_SchmittTriggerConfig$89
      002EE7 03                    1215 	.db	3
      002EE8 04                    1216 	.sleb128	4
      002EE9 01                    1217 	.db	1
      002EEA 09                    1218 	.db	9
      002EEB 00 08                 1219 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$94-Sstm8s_adc2$ADC2_SchmittTriggerConfig$92
      002EED 03                    1220 	.db	3
      002EEE 70                    1221 	.sleb128	-16
      002EEF 01                    1222 	.db	1
      002EF0 09                    1223 	.db	9
      002EF1 00 05                 1224 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$95-Sstm8s_adc2$ADC2_SchmittTriggerConfig$94
      002EF3 03                    1225 	.db	3
      002EF4 17                    1226 	.sleb128	23
      002EF5 01                    1227 	.db	1
      002EF6 09                    1228 	.db	9
      002EF7 00 12                 1229 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$99-Sstm8s_adc2$ADC2_SchmittTriggerConfig$95
      002EF9 03                    1230 	.db	3
      002EFA 7E                    1231 	.sleb128	-2
      002EFB 01                    1232 	.db	1
      002EFC 09                    1233 	.db	9
      002EFD 00 07                 1234 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$101-Sstm8s_adc2$ADC2_SchmittTriggerConfig$99
      002EFF 03                    1235 	.db	3
      002F00 02                    1236 	.sleb128	2
      002F01 01                    1237 	.db	1
      002F02 09                    1238 	.db	9
      002F03 00 09                 1239 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$104-Sstm8s_adc2$ADC2_SchmittTriggerConfig$101
      002F05 03                    1240 	.db	3
      002F06 04                    1241 	.sleb128	4
      002F07 01                    1242 	.db	1
      002F08 09                    1243 	.db	9
      002F09 00 05                 1244 	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$106-Sstm8s_adc2$ADC2_SchmittTriggerConfig$104
      002F0B 03                    1245 	.db	3
      002F0C 03                    1246 	.sleb128	3
      002F0D 01                    1247 	.db	1
      002F0E 09                    1248 	.db	9
      002F0F 00 02                 1249 	.dw	1+Sstm8s_adc2$ADC2_SchmittTriggerConfig$108-Sstm8s_adc2$ADC2_SchmittTriggerConfig$106
      002F11 00                    1250 	.db	0
      002F12 01                    1251 	.uleb128	1
      002F13 01                    1252 	.db	1
      002F14 00                    1253 	.db	0
      002F15 05                    1254 	.uleb128	5
      002F16 02                    1255 	.db	2
      002F17 00 00 A4 36           1256 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$110)
      002F1B 03                    1257 	.db	3
      002F1C EB 01                 1258 	.sleb128	235
      002F1E 01                    1259 	.db	1
      002F1F 09                    1260 	.db	9
      002F20 00 00                 1261 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$112-Sstm8s_adc2$ADC2_ConversionConfig$110
      002F22 03                    1262 	.db	3
      002F23 08                    1263 	.sleb128	8
      002F24 01                    1264 	.db	1
      002F25 09                    1265 	.db	9
      002F26 00 08                 1266 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$113-Sstm8s_adc2$ADC2_ConversionConfig$112
      002F28 03                    1267 	.db	3
      002F29 02                    1268 	.sleb128	2
      002F2A 01                    1269 	.db	1
      002F2B 09                    1270 	.db	9
      002F2C 00 08                 1271 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$114-Sstm8s_adc2$ADC2_ConversionConfig$113
      002F2E 03                    1272 	.db	3
      002F2F 05                    1273 	.sleb128	5
      002F30 01                    1274 	.db	1
      002F31 09                    1275 	.db	9
      002F32 00 03                 1276 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$115-Sstm8s_adc2$ADC2_ConversionConfig$114
      002F34 03                    1277 	.db	3
      002F35 7D                    1278 	.sleb128	-3
      002F36 01                    1279 	.db	1
      002F37 09                    1280 	.db	9
      002F38 00 0D                 1281 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$120-Sstm8s_adc2$ADC2_ConversionConfig$115
      002F3A 03                    1282 	.db	3
      002F3B 03                    1283 	.sleb128	3
      002F3C 01                    1284 	.db	1
      002F3D 09                    1285 	.db	9
      002F3E 00 08                 1286 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$123-Sstm8s_adc2$ADC2_ConversionConfig$120
      002F40 03                    1287 	.db	3
      002F41 05                    1288 	.sleb128	5
      002F42 01                    1289 	.db	1
      002F43 09                    1290 	.db	9
      002F44 00 05                 1291 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$125-Sstm8s_adc2$ADC2_ConversionConfig$123
      002F46 03                    1292 	.db	3
      002F47 04                    1293 	.sleb128	4
      002F48 01                    1294 	.db	1
      002F49 09                    1295 	.db	9
      002F4A 00 08                 1296 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$126-Sstm8s_adc2$ADC2_ConversionConfig$125
      002F4C 03                    1297 	.db	3
      002F4D 02                    1298 	.sleb128	2
      002F4E 01                    1299 	.db	1
      002F4F 09                    1300 	.db	9
      002F50 00 08                 1301 	.dw	Sstm8s_adc2$ADC2_ConversionConfig$127-Sstm8s_adc2$ADC2_ConversionConfig$126
      002F52 03                    1302 	.db	3
      002F53 01                    1303 	.sleb128	1
      002F54 01                    1304 	.db	1
      002F55 09                    1305 	.db	9
      002F56 00 01                 1306 	.dw	1+Sstm8s_adc2$ADC2_ConversionConfig$128-Sstm8s_adc2$ADC2_ConversionConfig$127
      002F58 00                    1307 	.db	0
      002F59 01                    1308 	.uleb128	1
      002F5A 01                    1309 	.db	1
      002F5B 00                    1310 	.db	0
      002F5C 05                    1311 	.uleb128	5
      002F5D 02                    1312 	.db	2
      002F5E 00 00 A4 74           1313 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$130)
      002F62 03                    1314 	.db	3
      002F63 92 02                 1315 	.sleb128	274
      002F65 01                    1316 	.db	1
      002F66 09                    1317 	.db	9
      002F67 00 00                 1318 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$132-Sstm8s_adc2$ADC2_ExternalTriggerConfig$130
      002F69 03                    1319 	.db	3
      002F6A 07                    1320 	.sleb128	7
      002F6B 01                    1321 	.db	1
      002F6C 09                    1322 	.db	9
      002F6D 00 0B                 1323 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$133-Sstm8s_adc2$ADC2_ExternalTriggerConfig$132
      002F6F 03                    1324 	.db	3
      002F70 02                    1325 	.sleb128	2
      002F71 01                    1326 	.db	1
      002F72 09                    1327 	.db	9
      002F73 00 07                 1328 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$135-Sstm8s_adc2$ADC2_ExternalTriggerConfig$133
      002F75 03                    1329 	.db	3
      002F76 03                    1330 	.sleb128	3
      002F77 01                    1331 	.db	1
      002F78 09                    1332 	.db	9
      002F79 00 08                 1333 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$138-Sstm8s_adc2$ADC2_ExternalTriggerConfig$135
      002F7B 03                    1334 	.db	3
      002F7C 05                    1335 	.sleb128	5
      002F7D 01                    1336 	.db	1
      002F7E 09                    1337 	.db	9
      002F7F 00 05                 1338 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$140-Sstm8s_adc2$ADC2_ExternalTriggerConfig$138
      002F81 03                    1339 	.db	3
      002F82 04                    1340 	.sleb128	4
      002F83 01                    1341 	.db	1
      002F84 09                    1342 	.db	9
      002F85 00 08                 1343 	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$141-Sstm8s_adc2$ADC2_ExternalTriggerConfig$140
      002F87 03                    1344 	.db	3
      002F88 01                    1345 	.sleb128	1
      002F89 01                    1346 	.db	1
      002F8A 09                    1347 	.db	9
      002F8B 00 01                 1348 	.dw	1+Sstm8s_adc2$ADC2_ExternalTriggerConfig$142-Sstm8s_adc2$ADC2_ExternalTriggerConfig$141
      002F8D 00                    1349 	.db	0
      002F8E 01                    1350 	.uleb128	1
      002F8F 01                    1351 	.db	1
      002F90 00                    1352 	.db	0
      002F91 05                    1353 	.uleb128	5
      002F92 02                    1354 	.db	2
      002F93 00 00 A4 9C           1355 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$144)
      002F97 03                    1356 	.db	3
      002F98 B3 02                 1357 	.sleb128	307
      002F9A 01                    1358 	.db	1
      002F9B 09                    1359 	.db	9
      002F9C 00 00                 1360 	.dw	Sstm8s_adc2$ADC2_StartConversion$146-Sstm8s_adc2$ADC2_StartConversion$144
      002F9E 03                    1361 	.db	3
      002F9F 02                    1362 	.sleb128	2
      002FA0 01                    1363 	.db	1
      002FA1 09                    1364 	.db	9
      002FA2 00 08                 1365 	.dw	Sstm8s_adc2$ADC2_StartConversion$147-Sstm8s_adc2$ADC2_StartConversion$146
      002FA4 03                    1366 	.db	3
      002FA5 01                    1367 	.sleb128	1
      002FA6 01                    1368 	.db	1
      002FA7 09                    1369 	.db	9
      002FA8 00 01                 1370 	.dw	1+Sstm8s_adc2$ADC2_StartConversion$148-Sstm8s_adc2$ADC2_StartConversion$147
      002FAA 00                    1371 	.db	0
      002FAB 01                    1372 	.uleb128	1
      002FAC 01                    1373 	.db	1
      002FAD 00                    1374 	.db	0
      002FAE 05                    1375 	.uleb128	5
      002FAF 02                    1376 	.db	2
      002FB0 00 00 A4 A5           1377 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$150)
      002FB4 03                    1378 	.db	3
      002FB5 BF 02                 1379 	.sleb128	319
      002FB7 01                    1380 	.db	1
      002FB8 09                    1381 	.db	9
      002FB9 00 02                 1382 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$153-Sstm8s_adc2$ADC2_GetConversionValue$150
      002FBB 03                    1383 	.db	3
      002FBC 05                    1384 	.sleb128	5
      002FBD 01                    1385 	.db	1
      002FBE 09                    1386 	.db	9
      002FBF 00 0A                 1387 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$155-Sstm8s_adc2$ADC2_GetConversionValue$153
      002FC1 03                    1388 	.db	3
      002FC2 03                    1389 	.sleb128	3
      002FC3 01                    1390 	.db	1
      002FC4 09                    1391 	.db	9
      002FC5 00 04                 1392 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$156-Sstm8s_adc2$ADC2_GetConversionValue$155
      002FC7 03                    1393 	.db	3
      002FC8 02                    1394 	.sleb128	2
      002FC9 01                    1395 	.db	1
      002FCA 09                    1396 	.db	9
      002FCB 00 05                 1397 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$157-Sstm8s_adc2$ADC2_GetConversionValue$156
      002FCD 03                    1398 	.db	3
      002FCE 02                    1399 	.sleb128	2
      002FCF 01                    1400 	.db	1
      002FD0 09                    1401 	.db	9
      002FD1 00 10                 1402 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$160-Sstm8s_adc2$ADC2_GetConversionValue$157
      002FD3 03                    1403 	.db	3
      002FD4 05                    1404 	.sleb128	5
      002FD5 01                    1405 	.db	1
      002FD6 09                    1406 	.db	9
      002FD7 00 06                 1407 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$161-Sstm8s_adc2$ADC2_GetConversionValue$160
      002FD9 03                    1408 	.db	3
      002FDA 02                    1409 	.sleb128	2
      002FDB 01                    1410 	.db	1
      002FDC 09                    1411 	.db	9
      002FDD 00 03                 1412 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$162-Sstm8s_adc2$ADC2_GetConversionValue$161
      002FDF 03                    1413 	.db	3
      002FE0 02                    1414 	.sleb128	2
      002FE1 01                    1415 	.db	1
      002FE2 09                    1416 	.db	9
      002FE3 00 15                 1417 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$164-Sstm8s_adc2$ADC2_GetConversionValue$162
      002FE5 03                    1418 	.db	3
      002FE6 03                    1419 	.sleb128	3
      002FE7 01                    1420 	.db	1
      002FE8 09                    1421 	.db	9
      002FE9 00 02                 1422 	.dw	Sstm8s_adc2$ADC2_GetConversionValue$165-Sstm8s_adc2$ADC2_GetConversionValue$164
      002FEB 03                    1423 	.db	3
      002FEC 01                    1424 	.sleb128	1
      002FED 01                    1425 	.db	1
      002FEE 09                    1426 	.db	9
      002FEF 00 03                 1427 	.dw	1+Sstm8s_adc2$ADC2_GetConversionValue$167-Sstm8s_adc2$ADC2_GetConversionValue$165
      002FF1 00                    1428 	.db	0
      002FF2 01                    1429 	.uleb128	1
      002FF3 01                    1430 	.db	1
      002FF4 00                    1431 	.db	0
      002FF5 05                    1432 	.uleb128	5
      002FF6 02                    1433 	.db	2
      002FF7 00 00 A4 ED           1434 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$169)
      002FFB 03                    1435 	.db	3
      002FFC DF 02                 1436 	.sleb128	351
      002FFE 01                    1437 	.db	1
      002FFF 09                    1438 	.db	9
      003000 00 00                 1439 	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$171-Sstm8s_adc2$ADC2_GetFlagStatus$169
      003002 03                    1440 	.db	3
      003003 03                    1441 	.sleb128	3
      003004 01                    1442 	.db	1
      003005 09                    1443 	.db	9
      003006 00 05                 1444 	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$172-Sstm8s_adc2$ADC2_GetFlagStatus$171
      003008 03                    1445 	.db	3
      003009 01                    1446 	.sleb128	1
      00300A 01                    1447 	.db	1
      00300B 09                    1448 	.db	9
      00300C 00 01                 1449 	.dw	1+Sstm8s_adc2$ADC2_GetFlagStatus$173-Sstm8s_adc2$ADC2_GetFlagStatus$172
      00300E 00                    1450 	.db	0
      00300F 01                    1451 	.uleb128	1
      003010 01                    1452 	.db	1
      003011 00                    1453 	.db	0
      003012 05                    1454 	.uleb128	5
      003013 02                    1455 	.db	2
      003014 00 00 A4 F3           1456 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$175)
      003018 03                    1457 	.db	3
      003019 EA 02                 1458 	.sleb128	362
      00301B 01                    1459 	.db	1
      00301C 09                    1460 	.db	9
      00301D 00 00                 1461 	.dw	Sstm8s_adc2$ADC2_ClearFlag$177-Sstm8s_adc2$ADC2_ClearFlag$175
      00301F 03                    1462 	.db	3
      003020 02                    1463 	.sleb128	2
      003021 01                    1464 	.db	1
      003022 09                    1465 	.db	9
      003023 00 08                 1466 	.dw	Sstm8s_adc2$ADC2_ClearFlag$178-Sstm8s_adc2$ADC2_ClearFlag$177
      003025 03                    1467 	.db	3
      003026 01                    1468 	.sleb128	1
      003027 01                    1469 	.db	1
      003028 09                    1470 	.db	9
      003029 00 01                 1471 	.dw	1+Sstm8s_adc2$ADC2_ClearFlag$179-Sstm8s_adc2$ADC2_ClearFlag$178
      00302B 00                    1472 	.db	0
      00302C 01                    1473 	.uleb128	1
      00302D 01                    1474 	.db	1
      00302E 00                    1475 	.db	0
      00302F 05                    1476 	.uleb128	5
      003030 02                    1477 	.db	2
      003031 00 00 A4 FC           1478 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$181)
      003035 03                    1479 	.db	3
      003036 F5 02                 1480 	.sleb128	373
      003038 01                    1481 	.db	1
      003039 09                    1482 	.db	9
      00303A 00 00                 1483 	.dw	Sstm8s_adc2$ADC2_GetITStatus$183-Sstm8s_adc2$ADC2_GetITStatus$181
      00303C 03                    1484 	.db	3
      00303D 02                    1485 	.sleb128	2
      00303E 01                    1486 	.db	1
      00303F 09                    1487 	.db	9
      003040 00 05                 1488 	.dw	Sstm8s_adc2$ADC2_GetITStatus$184-Sstm8s_adc2$ADC2_GetITStatus$183
      003042 03                    1489 	.db	3
      003043 01                    1490 	.sleb128	1
      003044 01                    1491 	.db	1
      003045 09                    1492 	.db	9
      003046 00 01                 1493 	.dw	1+Sstm8s_adc2$ADC2_GetITStatus$185-Sstm8s_adc2$ADC2_GetITStatus$184
      003048 00                    1494 	.db	0
      003049 01                    1495 	.uleb128	1
      00304A 01                    1496 	.db	1
      00304B 00                    1497 	.db	0
      00304C 05                    1498 	.uleb128	5
      00304D 02                    1499 	.db	2
      00304E 00 00 A5 02           1500 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$187)
      003052 03                    1501 	.db	3
      003053 FF 02                 1502 	.sleb128	383
      003055 01                    1503 	.db	1
      003056 09                    1504 	.db	9
      003057 00 00                 1505 	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$189-Sstm8s_adc2$ADC2_ClearITPendingBit$187
      003059 03                    1506 	.db	3
      00305A 02                    1507 	.sleb128	2
      00305B 01                    1508 	.db	1
      00305C 09                    1509 	.db	9
      00305D 00 08                 1510 	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$190-Sstm8s_adc2$ADC2_ClearITPendingBit$189
      00305F 03                    1511 	.db	3
      003060 01                    1512 	.sleb128	1
      003061 01                    1513 	.db	1
      003062 09                    1514 	.db	9
      003063 00 01                 1515 	.dw	1+Sstm8s_adc2$ADC2_ClearITPendingBit$191-Sstm8s_adc2$ADC2_ClearITPendingBit$190
      003065 00                    1516 	.db	0
      003066 01                    1517 	.uleb128	1
      003067 01                    1518 	.db	1
      003068                       1519 Ldebug_line_end:
                                   1520 
                                   1521 	.area .debug_loc (NOLOAD)
      00438C                       1522 Ldebug_loc_start:
      00438C 00 00 A5 02           1523 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)
      004390 00 00 A5 0B           1524 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$192)
      004394 00 02                 1525 	.dw	2
      004396 78                    1526 	.db	120
      004397 01                    1527 	.sleb128	1
      004398 00 00 00 00           1528 	.dw	0,0
      00439C 00 00 00 00           1529 	.dw	0,0
      0043A0 00 00 A4 FC           1530 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)
      0043A4 00 00 A5 02           1531 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$186)
      0043A8 00 02                 1532 	.dw	2
      0043AA 78                    1533 	.db	120
      0043AB 01                    1534 	.sleb128	1
      0043AC 00 00 00 00           1535 	.dw	0,0
      0043B0 00 00 00 00           1536 	.dw	0,0
      0043B4 00 00 A4 F3           1537 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)
      0043B8 00 00 A4 FC           1538 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$180)
      0043BC 00 02                 1539 	.dw	2
      0043BE 78                    1540 	.db	120
      0043BF 01                    1541 	.sleb128	1
      0043C0 00 00 00 00           1542 	.dw	0,0
      0043C4 00 00 00 00           1543 	.dw	0,0
      0043C8 00 00 A4 ED           1544 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)
      0043CC 00 00 A4 F3           1545 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$174)
      0043D0 00 02                 1546 	.dw	2
      0043D2 78                    1547 	.db	120
      0043D3 01                    1548 	.sleb128	1
      0043D4 00 00 00 00           1549 	.dw	0,0
      0043D8 00 00 00 00           1550 	.dw	0,0
      0043DC 00 00 A4 EC           1551 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
      0043E0 00 00 A4 ED           1552 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$168)
      0043E4 00 02                 1553 	.dw	2
      0043E6 78                    1554 	.db	120
      0043E7 01                    1555 	.sleb128	1
      0043E8 00 00 A4 A7           1556 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
      0043EC 00 00 A4 EC           1557 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
      0043F0 00 02                 1558 	.dw	2
      0043F2 78                    1559 	.db	120
      0043F3 05                    1560 	.sleb128	5
      0043F4 00 00 A4 A5           1561 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)
      0043F8 00 00 A4 A7           1562 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
      0043FC 00 02                 1563 	.dw	2
      0043FE 78                    1564 	.db	120
      0043FF 01                    1565 	.sleb128	1
      004400 00 00 00 00           1566 	.dw	0,0
      004404 00 00 00 00           1567 	.dw	0,0
      004408 00 00 A4 9C           1568 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)
      00440C 00 00 A4 A5           1569 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$149)
      004410 00 02                 1570 	.dw	2
      004412 78                    1571 	.db	120
      004413 01                    1572 	.sleb128	1
      004414 00 00 00 00           1573 	.dw	0,0
      004418 00 00 00 00           1574 	.dw	0,0
      00441C 00 00 A4 74           1575 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)
      004420 00 00 A4 9C           1576 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$143)
      004424 00 02                 1577 	.dw	2
      004426 78                    1578 	.db	120
      004427 01                    1579 	.sleb128	1
      004428 00 00 00 00           1580 	.dw	0,0
      00442C 00 00 00 00           1581 	.dw	0,0
      004430 00 00 A4 56           1582 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
      004434 00 00 A4 74           1583 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$129)
      004438 00 02                 1584 	.dw	2
      00443A 78                    1585 	.db	120
      00443B 01                    1586 	.sleb128	1
      00443C 00 00 A4 4E           1587 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
      004440 00 00 A4 56           1588 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
      004444 00 02                 1589 	.dw	2
      004446 78                    1590 	.db	120
      004447 01                    1591 	.sleb128	1
      004448 00 00 A4 4A           1592 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
      00444C 00 00 A4 4E           1593 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
      004450 00 02                 1594 	.dw	2
      004452 78                    1595 	.db	120
      004453 02                    1596 	.sleb128	2
      004454 00 00 A4 36           1597 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)
      004458 00 00 A4 4A           1598 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
      00445C 00 02                 1599 	.dw	2
      00445E 78                    1600 	.db	120
      00445F 01                    1601 	.sleb128	1
      004460 00 00 00 00           1602 	.dw	0,0
      004464 00 00 00 00           1603 	.dw	0,0
      004468 00 00 A4 35           1604 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
      00446C 00 00 A4 36           1605 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$109)
      004470 00 02                 1606 	.dw	2
      004472 78                    1607 	.db	120
      004473 01                    1608 	.sleb128	1
      004474 00 00 A4 1F           1609 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
      004478 00 00 A4 35           1610 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
      00447C 00 02                 1611 	.dw	2
      00447E 78                    1612 	.db	120
      00447F 02                    1613 	.sleb128	2
      004480 00 00 A4 15           1614 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
      004484 00 00 A4 1F           1615 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
      004488 00 02                 1616 	.dw	2
      00448A 78                    1617 	.db	120
      00448B 03                    1618 	.sleb128	3
      00448C 00 00 A3 F0           1619 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
      004490 00 00 A4 15           1620 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
      004494 00 02                 1621 	.dw	2
      004496 78                    1622 	.db	120
      004497 02                    1623 	.sleb128	2
      004498 00 00 A3 E6           1624 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
      00449C 00 00 A3 F0           1625 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
      0044A0 00 02                 1626 	.dw	2
      0044A2 78                    1627 	.db	120
      0044A3 03                    1628 	.sleb128	3
      0044A4 00 00 A3 AF           1629 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
      0044A8 00 00 A3 E6           1630 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
      0044AC 00 02                 1631 	.dw	2
      0044AE 78                    1632 	.db	120
      0044AF 02                    1633 	.sleb128	2
      0044B0 00 00 A3 A3           1634 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
      0044B4 00 00 A3 AF           1635 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
      0044B8 00 02                 1636 	.dw	2
      0044BA 78                    1637 	.db	120
      0044BB 02                    1638 	.sleb128	2
      0044BC 00 00 A3 A2           1639 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)
      0044C0 00 00 A3 A3           1640 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
      0044C4 00 02                 1641 	.dw	2
      0044C6 78                    1642 	.db	120
      0044C7 01                    1643 	.sleb128	1
      0044C8 00 00 00 00           1644 	.dw	0,0
      0044CC 00 00 00 00           1645 	.dw	0,0
      0044D0 00 00 A3 91           1646 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)
      0044D4 00 00 A3 A2           1647 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$64)
      0044D8 00 02                 1648 	.dw	2
      0044DA 78                    1649 	.db	120
      0044DB 01                    1650 	.sleb128	1
      0044DC 00 00 00 00           1651 	.dw	0,0
      0044E0 00 00 00 00           1652 	.dw	0,0
      0044E4 00 00 A3 79           1653 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)
      0044E8 00 00 A3 91           1654 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$57)
      0044EC 00 02                 1655 	.dw	2
      0044EE 78                    1656 	.db	120
      0044EF 01                    1657 	.sleb128	1
      0044F0 00 00 00 00           1658 	.dw	0,0
      0044F4 00 00 00 00           1659 	.dw	0,0
      0044F8 00 00 A3 61           1660 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)
      0044FC 00 00 A3 79           1661 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$44)
      004500 00 02                 1662 	.dw	2
      004502 78                    1663 	.db	120
      004503 01                    1664 	.sleb128	1
      004504 00 00 00 00           1665 	.dw	0,0
      004508 00 00 00 00           1666 	.dw	0,0
      00450C 00 00 A3 58           1667 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      004510 00 00 A3 61           1668 	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
      004514 00 02                 1669 	.dw	2
      004516 78                    1670 	.db	120
      004517 01                    1671 	.sleb128	1
      004518 00 00 A3 54           1672 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      00451C 00 00 A3 58           1673 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      004520 00 02                 1674 	.dw	2
      004522 78                    1675 	.db	120
      004523 03                    1676 	.sleb128	3
      004524 00 00 A3 51           1677 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      004528 00 00 A3 54           1678 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      00452C 00 02                 1679 	.dw	2
      00452E 78                    1680 	.db	120
      00452F 02                    1681 	.sleb128	2
      004530 00 00 A3 4E           1682 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      004534 00 00 A3 51           1683 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      004538 00 02                 1684 	.dw	2
      00453A 78                    1685 	.db	120
      00453B 01                    1686 	.sleb128	1
      00453C 00 00 A3 4A           1687 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      004540 00 00 A3 4E           1688 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      004544 00 02                 1689 	.dw	2
      004546 78                    1690 	.db	120
      004547 03                    1691 	.sleb128	3
      004548 00 00 A3 47           1692 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      00454C 00 00 A3 4A           1693 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      004550 00 02                 1694 	.dw	2
      004552 78                    1695 	.db	120
      004553 02                    1696 	.sleb128	2
      004554 00 00 A3 44           1697 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      004558 00 00 A3 47           1698 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      00455C 00 02                 1699 	.dw	2
      00455E 78                    1700 	.db	120
      00455F 01                    1701 	.sleb128	1
      004560 00 00 A3 40           1702 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      004564 00 00 A3 44           1703 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      004568 00 02                 1704 	.dw	2
      00456A 78                    1705 	.db	120
      00456B 02                    1706 	.sleb128	2
      00456C 00 00 A3 3D           1707 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      004570 00 00 A3 40           1708 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      004574 00 02                 1709 	.dw	2
      004576 78                    1710 	.db	120
      004577 01                    1711 	.sleb128	1
      004578 00 00 A3 38           1712 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      00457C 00 00 A3 3D           1713 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      004580 00 02                 1714 	.dw	2
      004582 78                    1715 	.db	120
      004583 04                    1716 	.sleb128	4
      004584 00 00 A3 35           1717 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      004588 00 00 A3 38           1718 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      00458C 00 02                 1719 	.dw	2
      00458E 78                    1720 	.db	120
      00458F 03                    1721 	.sleb128	3
      004590 00 00 A3 32           1722 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      004594 00 00 A3 35           1723 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      004598 00 02                 1724 	.dw	2
      00459A 78                    1725 	.db	120
      00459B 02                    1726 	.sleb128	2
      00459C 00 00 A3 2F           1727 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
      0045A0 00 00 A3 32           1728 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      0045A4 00 02                 1729 	.dw	2
      0045A6 78                    1730 	.db	120
      0045A7 01                    1731 	.sleb128	1
      0045A8 00 00 00 00           1732 	.dw	0,0
      0045AC 00 00 00 00           1733 	.dw	0,0
      0045B0 00 00 A3 1A           1734 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
      0045B4 00 00 A3 2F           1735 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$9)
      0045B8 00 02                 1736 	.dw	2
      0045BA 78                    1737 	.db	120
      0045BB 01                    1738 	.sleb128	1
      0045BC 00 00 00 00           1739 	.dw	0,0
      0045C0 00 00 00 00           1740 	.dw	0,0
                                   1741 
                                   1742 	.area .debug_abbrev (NOLOAD)
      0006F6                       1743 Ldebug_abbrev:
      0006F6 0B                    1744 	.uleb128	11
      0006F7 2E                    1745 	.uleb128	46
      0006F8 00                    1746 	.db	0
      0006F9 03                    1747 	.uleb128	3
      0006FA 08                    1748 	.uleb128	8
      0006FB 11                    1749 	.uleb128	17
      0006FC 01                    1750 	.uleb128	1
      0006FD 12                    1751 	.uleb128	18
      0006FE 01                    1752 	.uleb128	1
      0006FF 3F                    1753 	.uleb128	63
      000700 0C                    1754 	.uleb128	12
      000701 40                    1755 	.uleb128	64
      000702 06                    1756 	.uleb128	6
      000703 49                    1757 	.uleb128	73
      000704 13                    1758 	.uleb128	19
      000705 00                    1759 	.uleb128	0
      000706 00                    1760 	.uleb128	0
      000707 04                    1761 	.uleb128	4
      000708 05                    1762 	.uleb128	5
      000709 00                    1763 	.db	0
      00070A 02                    1764 	.uleb128	2
      00070B 0A                    1765 	.uleb128	10
      00070C 03                    1766 	.uleb128	3
      00070D 08                    1767 	.uleb128	8
      00070E 49                    1768 	.uleb128	73
      00070F 13                    1769 	.uleb128	19
      000710 00                    1770 	.uleb128	0
      000711 00                    1771 	.uleb128	0
      000712 03                    1772 	.uleb128	3
      000713 2E                    1773 	.uleb128	46
      000714 01                    1774 	.db	1
      000715 01                    1775 	.uleb128	1
      000716 13                    1776 	.uleb128	19
      000717 03                    1777 	.uleb128	3
      000718 08                    1778 	.uleb128	8
      000719 11                    1779 	.uleb128	17
      00071A 01                    1780 	.uleb128	1
      00071B 12                    1781 	.uleb128	18
      00071C 01                    1782 	.uleb128	1
      00071D 3F                    1783 	.uleb128	63
      00071E 0C                    1784 	.uleb128	12
      00071F 40                    1785 	.uleb128	64
      000720 06                    1786 	.uleb128	6
      000721 00                    1787 	.uleb128	0
      000722 00                    1788 	.uleb128	0
      000723 0A                    1789 	.uleb128	10
      000724 34                    1790 	.uleb128	52
      000725 00                    1791 	.db	0
      000726 02                    1792 	.uleb128	2
      000727 0A                    1793 	.uleb128	10
      000728 03                    1794 	.uleb128	3
      000729 08                    1795 	.uleb128	8
      00072A 49                    1796 	.uleb128	73
      00072B 13                    1797 	.uleb128	19
      00072C 00                    1798 	.uleb128	0
      00072D 00                    1799 	.uleb128	0
      00072E 09                    1800 	.uleb128	9
      00072F 2E                    1801 	.uleb128	46
      000730 01                    1802 	.db	1
      000731 01                    1803 	.uleb128	1
      000732 13                    1804 	.uleb128	19
      000733 03                    1805 	.uleb128	3
      000734 08                    1806 	.uleb128	8
      000735 11                    1807 	.uleb128	17
      000736 01                    1808 	.uleb128	1
      000737 12                    1809 	.uleb128	18
      000738 01                    1810 	.uleb128	1
      000739 3F                    1811 	.uleb128	63
      00073A 0C                    1812 	.uleb128	12
      00073B 40                    1813 	.uleb128	64
      00073C 06                    1814 	.uleb128	6
      00073D 49                    1815 	.uleb128	73
      00073E 13                    1816 	.uleb128	19
      00073F 00                    1817 	.uleb128	0
      000740 00                    1818 	.uleb128	0
      000741 08                    1819 	.uleb128	8
      000742 0B                    1820 	.uleb128	11
      000743 01                    1821 	.db	1
      000744 11                    1822 	.uleb128	17
      000745 01                    1823 	.uleb128	1
      000746 00                    1824 	.uleb128	0
      000747 00                    1825 	.uleb128	0
      000748 01                    1826 	.uleb128	1
      000749 11                    1827 	.uleb128	17
      00074A 01                    1828 	.db	1
      00074B 03                    1829 	.uleb128	3
      00074C 08                    1830 	.uleb128	8
      00074D 10                    1831 	.uleb128	16
      00074E 06                    1832 	.uleb128	6
      00074F 13                    1833 	.uleb128	19
      000750 0B                    1834 	.uleb128	11
      000751 25                    1835 	.uleb128	37
      000752 08                    1836 	.uleb128	8
      000753 00                    1837 	.uleb128	0
      000754 00                    1838 	.uleb128	0
      000755 06                    1839 	.uleb128	6
      000756 0B                    1840 	.uleb128	11
      000757 00                    1841 	.db	0
      000758 11                    1842 	.uleb128	17
      000759 01                    1843 	.uleb128	1
      00075A 12                    1844 	.uleb128	18
      00075B 01                    1845 	.uleb128	1
      00075C 00                    1846 	.uleb128	0
      00075D 00                    1847 	.uleb128	0
      00075E 07                    1848 	.uleb128	7
      00075F 0B                    1849 	.uleb128	11
      000760 01                    1850 	.db	1
      000761 01                    1851 	.uleb128	1
      000762 13                    1852 	.uleb128	19
      000763 11                    1853 	.uleb128	17
      000764 01                    1854 	.uleb128	1
      000765 00                    1855 	.uleb128	0
      000766 00                    1856 	.uleb128	0
      000767 02                    1857 	.uleb128	2
      000768 2E                    1858 	.uleb128	46
      000769 00                    1859 	.db	0
      00076A 03                    1860 	.uleb128	3
      00076B 08                    1861 	.uleb128	8
      00076C 11                    1862 	.uleb128	17
      00076D 01                    1863 	.uleb128	1
      00076E 12                    1864 	.uleb128	18
      00076F 01                    1865 	.uleb128	1
      000770 3F                    1866 	.uleb128	63
      000771 0C                    1867 	.uleb128	12
      000772 40                    1868 	.uleb128	64
      000773 06                    1869 	.uleb128	6
      000774 00                    1870 	.uleb128	0
      000775 00                    1871 	.uleb128	0
      000776 05                    1872 	.uleb128	5
      000777 24                    1873 	.uleb128	36
      000778 00                    1874 	.db	0
      000779 03                    1875 	.uleb128	3
      00077A 08                    1876 	.uleb128	8
      00077B 0B                    1877 	.uleb128	11
      00077C 0B                    1878 	.uleb128	11
      00077D 3E                    1879 	.uleb128	62
      00077E 0B                    1880 	.uleb128	11
      00077F 00                    1881 	.uleb128	0
      000780 00                    1882 	.uleb128	0
      000781 00                    1883 	.uleb128	0
                                   1884 
                                   1885 	.area .debug_info (NOLOAD)
      0044B8 00 00 04 DF           1886 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0044BC                       1887 Ldebug_info_start:
      0044BC 00 02                 1888 	.dw	2
      0044BE 00 00 06 F6           1889 	.dw	0,(Ldebug_abbrev)
      0044C2 04                    1890 	.db	4
      0044C3 01                    1891 	.uleb128	1
      0044C4 2E 2E 2F 53 50 4C 2F  1892 	.ascii "../SPL/src/stm8s_adc2.c"
             73 72 63 2F 73 74 6D
             38 73 5F 61 64 63 32
             2E 63
      0044DB 00                    1893 	.db	0
      0044DC 00 00 2D 25           1894 	.dw	0,(Ldebug_line_start+-4)
      0044E0 01                    1895 	.db	1
      0044E1 53 44 43 43 20 76 65  1896 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0044FA 00                    1897 	.db	0
      0044FB 02                    1898 	.uleb128	2
      0044FC 41 44 43 32 5F 44 65  1899 	.ascii "ADC2_DeInit"
             49 6E 69 74
      004507 00                    1900 	.db	0
      004508 00 00 A3 1A           1901 	.dw	0,(_ADC2_DeInit)
      00450C 00 00 A3 2F           1902 	.dw	0,(XG$ADC2_DeInit$0$0+1)
      004510 01                    1903 	.db	1
      004511 00 00 45 B0           1904 	.dw	0,(Ldebug_loc_start+548)
      004515 03                    1905 	.uleb128	3
      004516 00 00 01 57           1906 	.dw	0,343
      00451A 41 44 43 32 5F 49 6E  1907 	.ascii "ADC2_Init"
             69 74
      004523 00                    1908 	.db	0
      004524 00 00 A3 2F           1909 	.dw	0,(_ADC2_Init)
      004528 00 00 A3 61           1910 	.dw	0,(XG$ADC2_Init$0$0+1)
      00452C 01                    1911 	.db	1
      00452D 00 00 45 0C           1912 	.dw	0,(Ldebug_loc_start+384)
      004531 04                    1913 	.uleb128	4
      004532 02                    1914 	.db	2
      004533 91                    1915 	.db	145
      004534 02                    1916 	.sleb128	2
      004535 41 44 43 32 5F 43 6F  1917 	.ascii "ADC2_ConversionMode"
             6E 76 65 72 73 69 6F
             6E 4D 6F 64 65
      004548 00                    1918 	.db	0
      004549 00 00 01 57           1919 	.dw	0,343
      00454D 04                    1920 	.uleb128	4
      00454E 02                    1921 	.db	2
      00454F 91                    1922 	.db	145
      004550 03                    1923 	.sleb128	3
      004551 41 44 43 32 5F 43 68  1924 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      00455D 00                    1925 	.db	0
      00455E 00 00 01 57           1926 	.dw	0,343
      004562 04                    1927 	.uleb128	4
      004563 02                    1928 	.db	2
      004564 91                    1929 	.db	145
      004565 04                    1930 	.sleb128	4
      004566 41 44 43 32 5F 50 72  1931 	.ascii "ADC2_PrescalerSelection"
             65 73 63 61 6C 65 72
             53 65 6C 65 63 74 69
             6F 6E
      00457D 00                    1932 	.db	0
      00457E 00 00 01 57           1933 	.dw	0,343
      004582 04                    1934 	.uleb128	4
      004583 02                    1935 	.db	2
      004584 91                    1936 	.db	145
      004585 05                    1937 	.sleb128	5
      004586 41 44 43 32 5F 45 78  1938 	.ascii "ADC2_ExtTrigger"
             74 54 72 69 67 67 65
             72
      004595 00                    1939 	.db	0
      004596 00 00 01 57           1940 	.dw	0,343
      00459A 04                    1941 	.uleb128	4
      00459B 02                    1942 	.db	2
      00459C 91                    1943 	.db	145
      00459D 06                    1944 	.sleb128	6
      00459E 41 44 43 32 5F 45 78  1945 	.ascii "ADC2_ExtTriggerState"
             74 54 72 69 67 67 65
             72 53 74 61 74 65
      0045B2 00                    1946 	.db	0
      0045B3 00 00 01 57           1947 	.dw	0,343
      0045B7 04                    1948 	.uleb128	4
      0045B8 02                    1949 	.db	2
      0045B9 91                    1950 	.db	145
      0045BA 07                    1951 	.sleb128	7
      0045BB 41 44 43 32 5F 41 6C  1952 	.ascii "ADC2_Align"
             69 67 6E
      0045C5 00                    1953 	.db	0
      0045C6 00 00 01 57           1954 	.dw	0,343
      0045CA 04                    1955 	.uleb128	4
      0045CB 02                    1956 	.db	2
      0045CC 91                    1957 	.db	145
      0045CD 08                    1958 	.sleb128	8
      0045CE 41 44 43 32 5F 53 63  1959 	.ascii "ADC2_SchmittTriggerChannel"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 68
             61 6E 6E 65 6C
      0045E8 00                    1960 	.db	0
      0045E9 00 00 01 57           1961 	.dw	0,343
      0045ED 04                    1962 	.uleb128	4
      0045EE 02                    1963 	.db	2
      0045EF 91                    1964 	.db	145
      0045F0 09                    1965 	.sleb128	9
      0045F1 41 44 43 32 5F 53 63  1966 	.ascii "ADC2_SchmittTriggerState"
             68 6D 69 74 74 54 72
             69 67 67 65 72 53 74
             61 74 65
      004609 00                    1967 	.db	0
      00460A 00 00 01 57           1968 	.dw	0,343
      00460E 00                    1969 	.uleb128	0
      00460F 05                    1970 	.uleb128	5
      004610 75 6E 73 69 67 6E 65  1971 	.ascii "unsigned char"
             64 20 63 68 61 72
      00461D 00                    1972 	.db	0
      00461E 01                    1973 	.db	1
      00461F 08                    1974 	.db	8
      004620 03                    1975 	.uleb128	3
      004621 00 00 01 A7           1976 	.dw	0,423
      004625 41 44 43 32 5F 43 6D  1977 	.ascii "ADC2_Cmd"
             64
      00462D 00                    1978 	.db	0
      00462E 00 00 A3 61           1979 	.dw	0,(_ADC2_Cmd)
      004632 00 00 A3 79           1980 	.dw	0,(XG$ADC2_Cmd$0$0+1)
      004636 01                    1981 	.db	1
      004637 00 00 44 F8           1982 	.dw	0,(Ldebug_loc_start+364)
      00463B 04                    1983 	.uleb128	4
      00463C 02                    1984 	.db	2
      00463D 91                    1985 	.db	145
      00463E 02                    1986 	.sleb128	2
      00463F 4E 65 77 53 74 61 74  1987 	.ascii "NewState"
             65
      004647 00                    1988 	.db	0
      004648 00 00 01 57           1989 	.dw	0,343
      00464C 06                    1990 	.uleb128	6
      00464D 00 00 A3 6B           1991 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$36)
      004651 00 00 A3 70           1992 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$38)
      004655 06                    1993 	.uleb128	6
      004656 00 00 A3 73           1994 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$39)
      00465A 00 00 A3 78           1995 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$41)
      00465E 00                    1996 	.uleb128	0
      00465F 03                    1997 	.uleb128	3
      004660 00 00 01 EB           1998 	.dw	0,491
      004664 41 44 43 32 5F 49 54  1999 	.ascii "ADC2_ITConfig"
             43 6F 6E 66 69 67
      004671 00                    2000 	.db	0
      004672 00 00 A3 79           2001 	.dw	0,(_ADC2_ITConfig)
      004676 00 00 A3 91           2002 	.dw	0,(XG$ADC2_ITConfig$0$0+1)
      00467A 01                    2003 	.db	1
      00467B 00 00 44 E4           2004 	.dw	0,(Ldebug_loc_start+344)
      00467F 04                    2005 	.uleb128	4
      004680 02                    2006 	.db	2
      004681 91                    2007 	.db	145
      004682 02                    2008 	.sleb128	2
      004683 4E 65 77 53 74 61 74  2009 	.ascii "NewState"
             65
      00468B 00                    2010 	.db	0
      00468C 00 00 01 57           2011 	.dw	0,343
      004690 06                    2012 	.uleb128	6
      004691 00 00 A3 83           2013 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$49)
      004695 00 00 A3 88           2014 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$51)
      004699 06                    2015 	.uleb128	6
      00469A 00 00 A3 8B           2016 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$52)
      00469E 00 00 A3 90           2017 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$54)
      0046A2 00                    2018 	.uleb128	0
      0046A3 03                    2019 	.uleb128	3
      0046A4 00 00 02 2A           2020 	.dw	0,554
      0046A8 41 44 43 32 5F 50 72  2021 	.ascii "ADC2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0046BC 00                    2022 	.db	0
      0046BD 00 00 A3 91           2023 	.dw	0,(_ADC2_PrescalerConfig)
      0046C1 00 00 A3 A2           2024 	.dw	0,(XG$ADC2_PrescalerConfig$0$0+1)
      0046C5 01                    2025 	.db	1
      0046C6 00 00 44 D0           2026 	.dw	0,(Ldebug_loc_start+324)
      0046CA 04                    2027 	.uleb128	4
      0046CB 02                    2028 	.db	2
      0046CC 91                    2029 	.db	145
      0046CD 02                    2030 	.sleb128	2
      0046CE 41 44 43 32 5F 50 72  2031 	.ascii "ADC2_Prescaler"
             65 73 63 61 6C 65 72
      0046DC 00                    2032 	.db	0
      0046DD 00 00 01 57           2033 	.dw	0,343
      0046E1 00                    2034 	.uleb128	0
      0046E2 03                    2035 	.uleb128	3
      0046E3 00 00 02 DB           2036 	.dw	0,731
      0046E7 41 44 43 32 5F 53 63  2037 	.ascii "ADC2_SchmittTriggerConfig"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 6F
             6E 66 69 67
      004700 00                    2038 	.db	0
      004701 00 00 A3 A2           2039 	.dw	0,(_ADC2_SchmittTriggerConfig)
      004705 00 00 A4 36           2040 	.dw	0,(XG$ADC2_SchmittTriggerConfig$0$0+1)
      004709 01                    2041 	.db	1
      00470A 00 00 44 68           2042 	.dw	0,(Ldebug_loc_start+220)
      00470E 04                    2043 	.uleb128	4
      00470F 02                    2044 	.db	2
      004710 91                    2045 	.db	145
      004711 02                    2046 	.sleb128	2
      004712 41 44 43 32 5F 53 63  2047 	.ascii "ADC2_SchmittTriggerChannel"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 68
             61 6E 6E 65 6C
      00472C 00                    2048 	.db	0
      00472D 00 00 01 57           2049 	.dw	0,343
      004731 04                    2050 	.uleb128	4
      004732 02                    2051 	.db	2
      004733 91                    2052 	.db	145
      004734 03                    2053 	.sleb128	3
      004735 4E 65 77 53 74 61 74  2054 	.ascii "NewState"
             65
      00473D 00                    2055 	.db	0
      00473E 00 00 01 57           2056 	.dw	0,343
      004742 07                    2057 	.uleb128	7
      004743 00 00 02 A6           2058 	.dw	0,678
      004747 00 00 A3 B2           2059 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$71)
      00474B 06                    2060 	.uleb128	6
      00474C 00 00 A3 B9           2061 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$73)
      004750 00 00 A3 C4           2062 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$76)
      004754 06                    2063 	.uleb128	6
      004755 00 00 A3 C7           2064 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$77)
      004759 00 00 A3 D2           2065 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$80)
      00475D 00                    2066 	.uleb128	0
      00475E 07                    2067 	.uleb128	7
      00475F 00 00 02 C2           2068 	.dw	0,706
      004763 00 00 A3 F0           2069 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$86)
      004767 06                    2070 	.uleb128	6
      004768 00 00 A3 F7           2071 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$88)
      00476C 00 00 A3 FD           2072 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$90)
      004770 06                    2073 	.uleb128	6
      004771 00 00 A4 00           2074 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$91)
      004775 00 00 A4 05           2075 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$93)
      004779 00                    2076 	.uleb128	0
      00477A 08                    2077 	.uleb128	8
      00477B 00 00 A4 1F           2078 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$98)
      00477F 06                    2079 	.uleb128	6
      004780 00 00 A4 26           2080 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$100)
      004784 00 00 A4 2C           2081 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$102)
      004788 06                    2082 	.uleb128	6
      004789 00 00 A4 2F           2083 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$103)
      00478D 00 00 A4 34           2084 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$105)
      004791 00                    2085 	.uleb128	0
      004792 00                    2086 	.uleb128	0
      004793 03                    2087 	.uleb128	3
      004794 00 00 03 5A           2088 	.dw	0,858
      004798 41 44 43 32 5F 43 6F  2089 	.ascii "ADC2_ConversionConfig"
             6E 76 65 72 73 69 6F
             6E 43 6F 6E 66 69 67
      0047AD 00                    2090 	.db	0
      0047AE 00 00 A4 36           2091 	.dw	0,(_ADC2_ConversionConfig)
      0047B2 00 00 A4 74           2092 	.dw	0,(XG$ADC2_ConversionConfig$0$0+1)
      0047B6 01                    2093 	.db	1
      0047B7 00 00 44 30           2094 	.dw	0,(Ldebug_loc_start+164)
      0047BB 04                    2095 	.uleb128	4
      0047BC 02                    2096 	.db	2
      0047BD 91                    2097 	.db	145
      0047BE 02                    2098 	.sleb128	2
      0047BF 41 44 43 32 5F 43 6F  2099 	.ascii "ADC2_ConversionMode"
             6E 76 65 72 73 69 6F
             6E 4D 6F 64 65
      0047D2 00                    2100 	.db	0
      0047D3 00 00 01 57           2101 	.dw	0,343
      0047D7 04                    2102 	.uleb128	4
      0047D8 02                    2103 	.db	2
      0047D9 91                    2104 	.db	145
      0047DA 03                    2105 	.sleb128	3
      0047DB 41 44 43 32 5F 43 68  2106 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      0047E7 00                    2107 	.db	0
      0047E8 00 00 01 57           2108 	.dw	0,343
      0047EC 04                    2109 	.uleb128	4
      0047ED 02                    2110 	.db	2
      0047EE 91                    2111 	.db	145
      0047EF 04                    2112 	.sleb128	4
      0047F0 41 44 43 32 5F 41 6C  2113 	.ascii "ADC2_Align"
             69 67 6E
      0047FA 00                    2114 	.db	0
      0047FB 00 00 01 57           2115 	.dw	0,343
      0047FF 06                    2116 	.uleb128	6
      004800 00 00 A4 56           2117 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$119)
      004804 00 00 A4 5B           2118 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$121)
      004808 06                    2119 	.uleb128	6
      004809 00 00 A4 5E           2120 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$122)
      00480D 00 00 A4 63           2121 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$124)
      004811 00                    2122 	.uleb128	0
      004812 03                    2123 	.uleb128	3
      004813 00 00 03 C3           2124 	.dw	0,963
      004817 41 44 43 32 5F 45 78  2125 	.ascii "ADC2_ExternalTriggerConfig"
             74 65 72 6E 61 6C 54
             72 69 67 67 65 72 43
             6F 6E 66 69 67
      004831 00                    2126 	.db	0
      004832 00 00 A4 74           2127 	.dw	0,(_ADC2_ExternalTriggerConfig)
      004836 00 00 A4 9C           2128 	.dw	0,(XG$ADC2_ExternalTriggerConfig$0$0+1)
      00483A 01                    2129 	.db	1
      00483B 00 00 44 1C           2130 	.dw	0,(Ldebug_loc_start+144)
      00483F 04                    2131 	.uleb128	4
      004840 02                    2132 	.db	2
      004841 91                    2133 	.db	145
      004842 02                    2134 	.sleb128	2
      004843 41 44 43 32 5F 45 78  2135 	.ascii "ADC2_ExtTrigger"
             74 54 72 69 67 67 65
             72
      004852 00                    2136 	.db	0
      004853 00 00 01 57           2137 	.dw	0,343
      004857 04                    2138 	.uleb128	4
      004858 02                    2139 	.db	2
      004859 91                    2140 	.db	145
      00485A 03                    2141 	.sleb128	3
      00485B 4E 65 77 53 74 61 74  2142 	.ascii "NewState"
             65
      004863 00                    2143 	.db	0
      004864 00 00 01 57           2144 	.dw	0,343
      004868 06                    2145 	.uleb128	6
      004869 00 00 A4 86           2146 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$134)
      00486D 00 00 A4 8B           2147 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$136)
      004871 06                    2148 	.uleb128	6
      004872 00 00 A4 8E           2149 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$137)
      004876 00 00 A4 93           2150 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$139)
      00487A 00                    2151 	.uleb128	0
      00487B 02                    2152 	.uleb128	2
      00487C 41 44 43 32 5F 53 74  2153 	.ascii "ADC2_StartConversion"
             61 72 74 43 6F 6E 76
             65 72 73 69 6F 6E
      004890 00                    2154 	.db	0
      004891 00 00 A4 9C           2155 	.dw	0,(_ADC2_StartConversion)
      004895 00 00 A4 A5           2156 	.dw	0,(XG$ADC2_StartConversion$0$0+1)
      004899 01                    2157 	.db	1
      00489A 00 00 44 08           2158 	.dw	0,(Ldebug_loc_start+124)
      00489E 05                    2159 	.uleb128	5
      00489F 75 6E 73 69 67 6E 65  2160 	.ascii "unsigned int"
             64 20 69 6E 74
      0048AB 00                    2161 	.db	0
      0048AC 02                    2162 	.db	2
      0048AD 07                    2163 	.db	7
      0048AE 09                    2164 	.uleb128	9
      0048AF 00 00 04 56           2165 	.dw	0,1110
      0048B3 41 44 43 32 5F 47 65  2166 	.ascii "ADC2_GetConversionValue"
             74 43 6F 6E 76 65 72
             73 69 6F 6E 56 61 6C
             75 65
      0048CA 00                    2167 	.db	0
      0048CB 00 00 A4 A5           2168 	.dw	0,(_ADC2_GetConversionValue)
      0048CF 00 00 A4 ED           2169 	.dw	0,(XG$ADC2_GetConversionValue$0$0+1)
      0048D3 01                    2170 	.db	1
      0048D4 00 00 43 DC           2171 	.dw	0,(Ldebug_loc_start+80)
      0048D8 00 00 03 E6           2172 	.dw	0,998
      0048DC 06                    2173 	.uleb128	6
      0048DD 00 00 A4 B1           2174 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$154)
      0048E1 00 00 A4 C7           2175 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$158)
      0048E5 06                    2176 	.uleb128	6
      0048E6 00 00 A4 CA           2177 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$159)
      0048EA 00 00 A4 E8           2178 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$163)
      0048EE 0A                    2179 	.uleb128	10
      0048EF 06                    2180 	.db	6
      0048F0 54                    2181 	.db	84
      0048F1 93                    2182 	.db	147
      0048F2 01                    2183 	.uleb128	1
      0048F3 53                    2184 	.db	83
      0048F4 93                    2185 	.db	147
      0048F5 01                    2186 	.uleb128	1
      0048F6 74 65 6D 70 68        2187 	.ascii "temph"
      0048FB 00                    2188 	.db	0
      0048FC 00 00 03 E6           2189 	.dw	0,998
      004900 0A                    2190 	.uleb128	10
      004901 01                    2191 	.db	1
      004902 50                    2192 	.db	80
      004903 74 65 6D 70 6C        2193 	.ascii "templ"
      004908 00                    2194 	.db	0
      004909 00 00 01 57           2195 	.dw	0,343
      00490D 00                    2196 	.uleb128	0
      00490E 0B                    2197 	.uleb128	11
      00490F 41 44 43 32 5F 47 65  2198 	.ascii "ADC2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      004921 00                    2199 	.db	0
      004922 00 00 A4 ED           2200 	.dw	0,(_ADC2_GetFlagStatus)
      004926 00 00 A4 F3           2201 	.dw	0,(XG$ADC2_GetFlagStatus$0$0+1)
      00492A 01                    2202 	.db	1
      00492B 00 00 43 C8           2203 	.dw	0,(Ldebug_loc_start+60)
      00492F 00 00 01 57           2204 	.dw	0,343
      004933 02                    2205 	.uleb128	2
      004934 41 44 43 32 5F 43 6C  2206 	.ascii "ADC2_ClearFlag"
             65 61 72 46 6C 61 67
      004942 00                    2207 	.db	0
      004943 00 00 A4 F3           2208 	.dw	0,(_ADC2_ClearFlag)
      004947 00 00 A4 FC           2209 	.dw	0,(XG$ADC2_ClearFlag$0$0+1)
      00494B 01                    2210 	.db	1
      00494C 00 00 43 B4           2211 	.dw	0,(Ldebug_loc_start+40)
      004950 0B                    2212 	.uleb128	11
      004951 41 44 43 32 5F 47 65  2213 	.ascii "ADC2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      004961 00                    2214 	.db	0
      004962 00 00 A4 FC           2215 	.dw	0,(_ADC2_GetITStatus)
      004966 00 00 A5 02           2216 	.dw	0,(XG$ADC2_GetITStatus$0$0+1)
      00496A 01                    2217 	.db	1
      00496B 00 00 43 A0           2218 	.dw	0,(Ldebug_loc_start+20)
      00496F 00 00 01 57           2219 	.dw	0,343
      004973 02                    2220 	.uleb128	2
      004974 41 44 43 32 5F 43 6C  2221 	.ascii "ADC2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      00498A 00                    2222 	.db	0
      00498B 00 00 A5 02           2223 	.dw	0,(_ADC2_ClearITPendingBit)
      00498F 00 00 A5 0B           2224 	.dw	0,(XG$ADC2_ClearITPendingBit$0$0+1)
      004993 01                    2225 	.db	1
      004994 00 00 43 8C           2226 	.dw	0,(Ldebug_loc_start)
      004998 00                    2227 	.uleb128	0
      004999 00                    2228 	.uleb128	0
      00499A 00                    2229 	.uleb128	0
      00499B                       2230 Ldebug_info_end:
                                   2231 
                                   2232 	.area .debug_pubnames (NOLOAD)
      000D37 00 00 01 4A           2233 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000D3B                       2234 Ldebug_pubnames_start:
      000D3B 00 02                 2235 	.dw	2
      000D3D 00 00 44 B8           2236 	.dw	0,(Ldebug_info_start-4)
      000D41 00 00 04 E3           2237 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000D45 00 00 00 43           2238 	.dw	0,67
      000D49 41 44 43 32 5F 44 65  2239 	.ascii "ADC2_DeInit"
             49 6E 69 74
      000D54 00                    2240 	.db	0
      000D55 00 00 00 5D           2241 	.dw	0,93
      000D59 41 44 43 32 5F 49 6E  2242 	.ascii "ADC2_Init"
             69 74
      000D62 00                    2243 	.db	0
      000D63 00 00 01 68           2244 	.dw	0,360
      000D67 41 44 43 32 5F 43 6D  2245 	.ascii "ADC2_Cmd"
             64
      000D6F 00                    2246 	.db	0
      000D70 00 00 01 A7           2247 	.dw	0,423
      000D74 41 44 43 32 5F 49 54  2248 	.ascii "ADC2_ITConfig"
             43 6F 6E 66 69 67
      000D81 00                    2249 	.db	0
      000D82 00 00 01 EB           2250 	.dw	0,491
      000D86 41 44 43 32 5F 50 72  2251 	.ascii "ADC2_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      000D9A 00                    2252 	.db	0
      000D9B 00 00 02 2A           2253 	.dw	0,554
      000D9F 41 44 43 32 5F 53 63  2254 	.ascii "ADC2_SchmittTriggerConfig"
             68 6D 69 74 74 54 72
             69 67 67 65 72 43 6F
             6E 66 69 67
      000DB8 00                    2255 	.db	0
      000DB9 00 00 02 DB           2256 	.dw	0,731
      000DBD 41 44 43 32 5F 43 6F  2257 	.ascii "ADC2_ConversionConfig"
             6E 76 65 72 73 69 6F
             6E 43 6F 6E 66 69 67
      000DD2 00                    2258 	.db	0
      000DD3 00 00 03 5A           2259 	.dw	0,858
      000DD7 41 44 43 32 5F 45 78  2260 	.ascii "ADC2_ExternalTriggerConfig"
             74 65 72 6E 61 6C 54
             72 69 67 67 65 72 43
             6F 6E 66 69 67
      000DF1 00                    2261 	.db	0
      000DF2 00 00 03 C3           2262 	.dw	0,963
      000DF6 41 44 43 32 5F 53 74  2263 	.ascii "ADC2_StartConversion"
             61 72 74 43 6F 6E 76
             65 72 73 69 6F 6E
      000E0A 00                    2264 	.db	0
      000E0B 00 00 03 F6           2265 	.dw	0,1014
      000E0F 41 44 43 32 5F 47 65  2266 	.ascii "ADC2_GetConversionValue"
             74 43 6F 6E 76 65 72
             73 69 6F 6E 56 61 6C
             75 65
      000E26 00                    2267 	.db	0
      000E27 00 00 04 56           2268 	.dw	0,1110
      000E2B 41 44 43 32 5F 47 65  2269 	.ascii "ADC2_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      000E3D 00                    2270 	.db	0
      000E3E 00 00 04 7B           2271 	.dw	0,1147
      000E42 41 44 43 32 5F 43 6C  2272 	.ascii "ADC2_ClearFlag"
             65 61 72 46 6C 61 67
      000E50 00                    2273 	.db	0
      000E51 00 00 04 98           2274 	.dw	0,1176
      000E55 41 44 43 32 5F 47 65  2275 	.ascii "ADC2_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      000E65 00                    2276 	.db	0
      000E66 00 00 04 BB           2277 	.dw	0,1211
      000E6A 41 44 43 32 5F 43 6C  2278 	.ascii "ADC2_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      000E80 00                    2279 	.db	0
      000E81 00 00 00 00           2280 	.dw	0,0
      000E85                       2281 Ldebug_pubnames_end:
                                   2282 
                                   2283 	.area .debug_frame (NOLOAD)
      003947 00 00                 2284 	.dw	0
      003949 00 0E                 2285 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      00394B                       2286 Ldebug_CIE0_start:
      00394B FF FF                 2287 	.dw	0xffff
      00394D FF FF                 2288 	.dw	0xffff
      00394F 01                    2289 	.db	1
      003950 00                    2290 	.db	0
      003951 01                    2291 	.uleb128	1
      003952 7F                    2292 	.sleb128	-1
      003953 09                    2293 	.db	9
      003954 0C                    2294 	.db	12
      003955 08                    2295 	.uleb128	8
      003956 02                    2296 	.uleb128	2
      003957 89                    2297 	.db	137
      003958 01                    2298 	.uleb128	1
      003959                       2299 Ldebug_CIE0_end:
      003959 00 00 00 13           2300 	.dw	0,19
      00395D 00 00 39 47           2301 	.dw	0,(Ldebug_CIE0_start-4)
      003961 00 00 A5 02           2302 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)	;initial loc
      003965 00 00 00 09           2303 	.dw	0,Sstm8s_adc2$ADC2_ClearITPendingBit$192-Sstm8s_adc2$ADC2_ClearITPendingBit$188
      003969 01                    2304 	.db	1
      00396A 00 00 A5 02           2305 	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)
      00396E 0E                    2306 	.db	14
      00396F 02                    2307 	.uleb128	2
                                   2308 
                                   2309 	.area .debug_frame (NOLOAD)
      003970 00 00                 2310 	.dw	0
      003972 00 0E                 2311 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      003974                       2312 Ldebug_CIE1_start:
      003974 FF FF                 2313 	.dw	0xffff
      003976 FF FF                 2314 	.dw	0xffff
      003978 01                    2315 	.db	1
      003979 00                    2316 	.db	0
      00397A 01                    2317 	.uleb128	1
      00397B 7F                    2318 	.sleb128	-1
      00397C 09                    2319 	.db	9
      00397D 0C                    2320 	.db	12
      00397E 08                    2321 	.uleb128	8
      00397F 02                    2322 	.uleb128	2
      003980 89                    2323 	.db	137
      003981 01                    2324 	.uleb128	1
      003982                       2325 Ldebug_CIE1_end:
      003982 00 00 00 13           2326 	.dw	0,19
      003986 00 00 39 70           2327 	.dw	0,(Ldebug_CIE1_start-4)
      00398A 00 00 A4 FC           2328 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)	;initial loc
      00398E 00 00 00 06           2329 	.dw	0,Sstm8s_adc2$ADC2_GetITStatus$186-Sstm8s_adc2$ADC2_GetITStatus$182
      003992 01                    2330 	.db	1
      003993 00 00 A4 FC           2331 	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)
      003997 0E                    2332 	.db	14
      003998 02                    2333 	.uleb128	2
                                   2334 
                                   2335 	.area .debug_frame (NOLOAD)
      003999 00 00                 2336 	.dw	0
      00399B 00 0E                 2337 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00399D                       2338 Ldebug_CIE2_start:
      00399D FF FF                 2339 	.dw	0xffff
      00399F FF FF                 2340 	.dw	0xffff
      0039A1 01                    2341 	.db	1
      0039A2 00                    2342 	.db	0
      0039A3 01                    2343 	.uleb128	1
      0039A4 7F                    2344 	.sleb128	-1
      0039A5 09                    2345 	.db	9
      0039A6 0C                    2346 	.db	12
      0039A7 08                    2347 	.uleb128	8
      0039A8 02                    2348 	.uleb128	2
      0039A9 89                    2349 	.db	137
      0039AA 01                    2350 	.uleb128	1
      0039AB                       2351 Ldebug_CIE2_end:
      0039AB 00 00 00 13           2352 	.dw	0,19
      0039AF 00 00 39 99           2353 	.dw	0,(Ldebug_CIE2_start-4)
      0039B3 00 00 A4 F3           2354 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)	;initial loc
      0039B7 00 00 00 09           2355 	.dw	0,Sstm8s_adc2$ADC2_ClearFlag$180-Sstm8s_adc2$ADC2_ClearFlag$176
      0039BB 01                    2356 	.db	1
      0039BC 00 00 A4 F3           2357 	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)
      0039C0 0E                    2358 	.db	14
      0039C1 02                    2359 	.uleb128	2
                                   2360 
                                   2361 	.area .debug_frame (NOLOAD)
      0039C2 00 00                 2362 	.dw	0
      0039C4 00 0E                 2363 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0039C6                       2364 Ldebug_CIE3_start:
      0039C6 FF FF                 2365 	.dw	0xffff
      0039C8 FF FF                 2366 	.dw	0xffff
      0039CA 01                    2367 	.db	1
      0039CB 00                    2368 	.db	0
      0039CC 01                    2369 	.uleb128	1
      0039CD 7F                    2370 	.sleb128	-1
      0039CE 09                    2371 	.db	9
      0039CF 0C                    2372 	.db	12
      0039D0 08                    2373 	.uleb128	8
      0039D1 02                    2374 	.uleb128	2
      0039D2 89                    2375 	.db	137
      0039D3 01                    2376 	.uleb128	1
      0039D4                       2377 Ldebug_CIE3_end:
      0039D4 00 00 00 13           2378 	.dw	0,19
      0039D8 00 00 39 C2           2379 	.dw	0,(Ldebug_CIE3_start-4)
      0039DC 00 00 A4 ED           2380 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)	;initial loc
      0039E0 00 00 00 06           2381 	.dw	0,Sstm8s_adc2$ADC2_GetFlagStatus$174-Sstm8s_adc2$ADC2_GetFlagStatus$170
      0039E4 01                    2382 	.db	1
      0039E5 00 00 A4 ED           2383 	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)
      0039E9 0E                    2384 	.db	14
      0039EA 02                    2385 	.uleb128	2
                                   2386 
                                   2387 	.area .debug_frame (NOLOAD)
      0039EB 00 00                 2388 	.dw	0
      0039ED 00 0E                 2389 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0039EF                       2390 Ldebug_CIE4_start:
      0039EF FF FF                 2391 	.dw	0xffff
      0039F1 FF FF                 2392 	.dw	0xffff
      0039F3 01                    2393 	.db	1
      0039F4 00                    2394 	.db	0
      0039F5 01                    2395 	.uleb128	1
      0039F6 7F                    2396 	.sleb128	-1
      0039F7 09                    2397 	.db	9
      0039F8 0C                    2398 	.db	12
      0039F9 08                    2399 	.uleb128	8
      0039FA 02                    2400 	.uleb128	2
      0039FB 89                    2401 	.db	137
      0039FC 01                    2402 	.uleb128	1
      0039FD                       2403 Ldebug_CIE4_end:
      0039FD 00 00 00 21           2404 	.dw	0,33
      003A01 00 00 39 EB           2405 	.dw	0,(Ldebug_CIE4_start-4)
      003A05 00 00 A4 A5           2406 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)	;initial loc
      003A09 00 00 00 48           2407 	.dw	0,Sstm8s_adc2$ADC2_GetConversionValue$168-Sstm8s_adc2$ADC2_GetConversionValue$151
      003A0D 01                    2408 	.db	1
      003A0E 00 00 A4 A5           2409 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)
      003A12 0E                    2410 	.db	14
      003A13 02                    2411 	.uleb128	2
      003A14 01                    2412 	.db	1
      003A15 00 00 A4 A7           2413 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
      003A19 0E                    2414 	.db	14
      003A1A 06                    2415 	.uleb128	6
      003A1B 01                    2416 	.db	1
      003A1C 00 00 A4 EC           2417 	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
      003A20 0E                    2418 	.db	14
      003A21 02                    2419 	.uleb128	2
                                   2420 
                                   2421 	.area .debug_frame (NOLOAD)
      003A22 00 00                 2422 	.dw	0
      003A24 00 0E                 2423 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      003A26                       2424 Ldebug_CIE5_start:
      003A26 FF FF                 2425 	.dw	0xffff
      003A28 FF FF                 2426 	.dw	0xffff
      003A2A 01                    2427 	.db	1
      003A2B 00                    2428 	.db	0
      003A2C 01                    2429 	.uleb128	1
      003A2D 7F                    2430 	.sleb128	-1
      003A2E 09                    2431 	.db	9
      003A2F 0C                    2432 	.db	12
      003A30 08                    2433 	.uleb128	8
      003A31 02                    2434 	.uleb128	2
      003A32 89                    2435 	.db	137
      003A33 01                    2436 	.uleb128	1
      003A34                       2437 Ldebug_CIE5_end:
      003A34 00 00 00 13           2438 	.dw	0,19
      003A38 00 00 3A 22           2439 	.dw	0,(Ldebug_CIE5_start-4)
      003A3C 00 00 A4 9C           2440 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)	;initial loc
      003A40 00 00 00 09           2441 	.dw	0,Sstm8s_adc2$ADC2_StartConversion$149-Sstm8s_adc2$ADC2_StartConversion$145
      003A44 01                    2442 	.db	1
      003A45 00 00 A4 9C           2443 	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)
      003A49 0E                    2444 	.db	14
      003A4A 02                    2445 	.uleb128	2
                                   2446 
                                   2447 	.area .debug_frame (NOLOAD)
      003A4B 00 00                 2448 	.dw	0
      003A4D 00 0E                 2449 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      003A4F                       2450 Ldebug_CIE6_start:
      003A4F FF FF                 2451 	.dw	0xffff
      003A51 FF FF                 2452 	.dw	0xffff
      003A53 01                    2453 	.db	1
      003A54 00                    2454 	.db	0
      003A55 01                    2455 	.uleb128	1
      003A56 7F                    2456 	.sleb128	-1
      003A57 09                    2457 	.db	9
      003A58 0C                    2458 	.db	12
      003A59 08                    2459 	.uleb128	8
      003A5A 02                    2460 	.uleb128	2
      003A5B 89                    2461 	.db	137
      003A5C 01                    2462 	.uleb128	1
      003A5D                       2463 Ldebug_CIE6_end:
      003A5D 00 00 00 13           2464 	.dw	0,19
      003A61 00 00 3A 4B           2465 	.dw	0,(Ldebug_CIE6_start-4)
      003A65 00 00 A4 74           2466 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)	;initial loc
      003A69 00 00 00 28           2467 	.dw	0,Sstm8s_adc2$ADC2_ExternalTriggerConfig$143-Sstm8s_adc2$ADC2_ExternalTriggerConfig$131
      003A6D 01                    2468 	.db	1
      003A6E 00 00 A4 74           2469 	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)
      003A72 0E                    2470 	.db	14
      003A73 02                    2471 	.uleb128	2
                                   2472 
                                   2473 	.area .debug_frame (NOLOAD)
      003A74 00 00                 2474 	.dw	0
      003A76 00 0E                 2475 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      003A78                       2476 Ldebug_CIE7_start:
      003A78 FF FF                 2477 	.dw	0xffff
      003A7A FF FF                 2478 	.dw	0xffff
      003A7C 01                    2479 	.db	1
      003A7D 00                    2480 	.db	0
      003A7E 01                    2481 	.uleb128	1
      003A7F 7F                    2482 	.sleb128	-1
      003A80 09                    2483 	.db	9
      003A81 0C                    2484 	.db	12
      003A82 08                    2485 	.uleb128	8
      003A83 02                    2486 	.uleb128	2
      003A84 89                    2487 	.db	137
      003A85 01                    2488 	.uleb128	1
      003A86                       2489 Ldebug_CIE7_end:
      003A86 00 00 00 28           2490 	.dw	0,40
      003A8A 00 00 3A 74           2491 	.dw	0,(Ldebug_CIE7_start-4)
      003A8E 00 00 A4 36           2492 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)	;initial loc
      003A92 00 00 00 3E           2493 	.dw	0,Sstm8s_adc2$ADC2_ConversionConfig$129-Sstm8s_adc2$ADC2_ConversionConfig$111
      003A96 01                    2494 	.db	1
      003A97 00 00 A4 36           2495 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)
      003A9B 0E                    2496 	.db	14
      003A9C 02                    2497 	.uleb128	2
      003A9D 01                    2498 	.db	1
      003A9E 00 00 A4 4A           2499 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
      003AA2 0E                    2500 	.db	14
      003AA3 03                    2501 	.uleb128	3
      003AA4 01                    2502 	.db	1
      003AA5 00 00 A4 4E           2503 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
      003AA9 0E                    2504 	.db	14
      003AAA 02                    2505 	.uleb128	2
      003AAB 01                    2506 	.db	1
      003AAC 00 00 A4 56           2507 	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
      003AB0 0E                    2508 	.db	14
      003AB1 02                    2509 	.uleb128	2
                                   2510 
                                   2511 	.area .debug_frame (NOLOAD)
      003AB2 00 00                 2512 	.dw	0
      003AB4 00 0E                 2513 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      003AB6                       2514 Ldebug_CIE8_start:
      003AB6 FF FF                 2515 	.dw	0xffff
      003AB8 FF FF                 2516 	.dw	0xffff
      003ABA 01                    2517 	.db	1
      003ABB 00                    2518 	.db	0
      003ABC 01                    2519 	.uleb128	1
      003ABD 7F                    2520 	.sleb128	-1
      003ABE 09                    2521 	.db	9
      003ABF 0C                    2522 	.db	12
      003AC0 08                    2523 	.uleb128	8
      003AC1 02                    2524 	.uleb128	2
      003AC2 89                    2525 	.db	137
      003AC3 01                    2526 	.uleb128	1
      003AC4                       2527 Ldebug_CIE8_end:
      003AC4 00 00 00 44           2528 	.dw	0,68
      003AC8 00 00 3A B2           2529 	.dw	0,(Ldebug_CIE8_start-4)
      003ACC 00 00 A3 A2           2530 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)	;initial loc
      003AD0 00 00 00 94           2531 	.dw	0,Sstm8s_adc2$ADC2_SchmittTriggerConfig$109-Sstm8s_adc2$ADC2_SchmittTriggerConfig$66
      003AD4 01                    2532 	.db	1
      003AD5 00 00 A3 A2           2533 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)
      003AD9 0E                    2534 	.db	14
      003ADA 02                    2535 	.uleb128	2
      003ADB 01                    2536 	.db	1
      003ADC 00 00 A3 A3           2537 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
      003AE0 0E                    2538 	.db	14
      003AE1 03                    2539 	.uleb128	3
      003AE2 01                    2540 	.db	1
      003AE3 00 00 A3 AF           2541 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
      003AE7 0E                    2542 	.db	14
      003AE8 03                    2543 	.uleb128	3
      003AE9 01                    2544 	.db	1
      003AEA 00 00 A3 E6           2545 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
      003AEE 0E                    2546 	.db	14
      003AEF 04                    2547 	.uleb128	4
      003AF0 01                    2548 	.db	1
      003AF1 00 00 A3 F0           2549 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
      003AF5 0E                    2550 	.db	14
      003AF6 03                    2551 	.uleb128	3
      003AF7 01                    2552 	.db	1
      003AF8 00 00 A4 15           2553 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
      003AFC 0E                    2554 	.db	14
      003AFD 04                    2555 	.uleb128	4
      003AFE 01                    2556 	.db	1
      003AFF 00 00 A4 1F           2557 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
      003B03 0E                    2558 	.db	14
      003B04 03                    2559 	.uleb128	3
      003B05 01                    2560 	.db	1
      003B06 00 00 A4 35           2561 	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
      003B0A 0E                    2562 	.db	14
      003B0B 02                    2563 	.uleb128	2
                                   2564 
                                   2565 	.area .debug_frame (NOLOAD)
      003B0C 00 00                 2566 	.dw	0
      003B0E 00 0E                 2567 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      003B10                       2568 Ldebug_CIE9_start:
      003B10 FF FF                 2569 	.dw	0xffff
      003B12 FF FF                 2570 	.dw	0xffff
      003B14 01                    2571 	.db	1
      003B15 00                    2572 	.db	0
      003B16 01                    2573 	.uleb128	1
      003B17 7F                    2574 	.sleb128	-1
      003B18 09                    2575 	.db	9
      003B19 0C                    2576 	.db	12
      003B1A 08                    2577 	.uleb128	8
      003B1B 02                    2578 	.uleb128	2
      003B1C 89                    2579 	.db	137
      003B1D 01                    2580 	.uleb128	1
      003B1E                       2581 Ldebug_CIE9_end:
      003B1E 00 00 00 13           2582 	.dw	0,19
      003B22 00 00 3B 0C           2583 	.dw	0,(Ldebug_CIE9_start-4)
      003B26 00 00 A3 91           2584 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)	;initial loc
      003B2A 00 00 00 11           2585 	.dw	0,Sstm8s_adc2$ADC2_PrescalerConfig$64-Sstm8s_adc2$ADC2_PrescalerConfig$59
      003B2E 01                    2586 	.db	1
      003B2F 00 00 A3 91           2587 	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)
      003B33 0E                    2588 	.db	14
      003B34 02                    2589 	.uleb128	2
                                   2590 
                                   2591 	.area .debug_frame (NOLOAD)
      003B35 00 00                 2592 	.dw	0
      003B37 00 0E                 2593 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      003B39                       2594 Ldebug_CIE10_start:
      003B39 FF FF                 2595 	.dw	0xffff
      003B3B FF FF                 2596 	.dw	0xffff
      003B3D 01                    2597 	.db	1
      003B3E 00                    2598 	.db	0
      003B3F 01                    2599 	.uleb128	1
      003B40 7F                    2600 	.sleb128	-1
      003B41 09                    2601 	.db	9
      003B42 0C                    2602 	.db	12
      003B43 08                    2603 	.uleb128	8
      003B44 02                    2604 	.uleb128	2
      003B45 89                    2605 	.db	137
      003B46 01                    2606 	.uleb128	1
      003B47                       2607 Ldebug_CIE10_end:
      003B47 00 00 00 13           2608 	.dw	0,19
      003B4B 00 00 3B 35           2609 	.dw	0,(Ldebug_CIE10_start-4)
      003B4F 00 00 A3 79           2610 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)	;initial loc
      003B53 00 00 00 18           2611 	.dw	0,Sstm8s_adc2$ADC2_ITConfig$57-Sstm8s_adc2$ADC2_ITConfig$46
      003B57 01                    2612 	.db	1
      003B58 00 00 A3 79           2613 	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)
      003B5C 0E                    2614 	.db	14
      003B5D 02                    2615 	.uleb128	2
                                   2616 
                                   2617 	.area .debug_frame (NOLOAD)
      003B5E 00 00                 2618 	.dw	0
      003B60 00 0E                 2619 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      003B62                       2620 Ldebug_CIE11_start:
      003B62 FF FF                 2621 	.dw	0xffff
      003B64 FF FF                 2622 	.dw	0xffff
      003B66 01                    2623 	.db	1
      003B67 00                    2624 	.db	0
      003B68 01                    2625 	.uleb128	1
      003B69 7F                    2626 	.sleb128	-1
      003B6A 09                    2627 	.db	9
      003B6B 0C                    2628 	.db	12
      003B6C 08                    2629 	.uleb128	8
      003B6D 02                    2630 	.uleb128	2
      003B6E 89                    2631 	.db	137
      003B6F 01                    2632 	.uleb128	1
      003B70                       2633 Ldebug_CIE11_end:
      003B70 00 00 00 13           2634 	.dw	0,19
      003B74 00 00 3B 5E           2635 	.dw	0,(Ldebug_CIE11_start-4)
      003B78 00 00 A3 61           2636 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)	;initial loc
      003B7C 00 00 00 18           2637 	.dw	0,Sstm8s_adc2$ADC2_Cmd$44-Sstm8s_adc2$ADC2_Cmd$33
      003B80 01                    2638 	.db	1
      003B81 00 00 A3 61           2639 	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)
      003B85 0E                    2640 	.db	14
      003B86 02                    2641 	.uleb128	2
                                   2642 
                                   2643 	.area .debug_frame (NOLOAD)
      003B87 00 00                 2644 	.dw	0
      003B89 00 0E                 2645 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      003B8B                       2646 Ldebug_CIE12_start:
      003B8B FF FF                 2647 	.dw	0xffff
      003B8D FF FF                 2648 	.dw	0xffff
      003B8F 01                    2649 	.db	1
      003B90 00                    2650 	.db	0
      003B91 01                    2651 	.uleb128	1
      003B92 7F                    2652 	.sleb128	-1
      003B93 09                    2653 	.db	9
      003B94 0C                    2654 	.db	12
      003B95 08                    2655 	.uleb128	8
      003B96 02                    2656 	.uleb128	2
      003B97 89                    2657 	.db	137
      003B98 01                    2658 	.uleb128	1
      003B99                       2659 Ldebug_CIE12_end:
      003B99 00 00 00 67           2660 	.dw	0,103
      003B9D 00 00 3B 87           2661 	.dw	0,(Ldebug_CIE12_start-4)
      003BA1 00 00 A3 2F           2662 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)	;initial loc
      003BA5 00 00 00 32           2663 	.dw	0,Sstm8s_adc2$ADC2_Init$31-Sstm8s_adc2$ADC2_Init$11
      003BA9 01                    2664 	.db	1
      003BAA 00 00 A3 2F           2665 	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
      003BAE 0E                    2666 	.db	14
      003BAF 02                    2667 	.uleb128	2
      003BB0 01                    2668 	.db	1
      003BB1 00 00 A3 32           2669 	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
      003BB5 0E                    2670 	.db	14
      003BB6 03                    2671 	.uleb128	3
      003BB7 01                    2672 	.db	1
      003BB8 00 00 A3 35           2673 	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
      003BBC 0E                    2674 	.db	14
      003BBD 04                    2675 	.uleb128	4
      003BBE 01                    2676 	.db	1
      003BBF 00 00 A3 38           2677 	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
      003BC3 0E                    2678 	.db	14
      003BC4 05                    2679 	.uleb128	5
      003BC5 01                    2680 	.db	1
      003BC6 00 00 A3 3D           2681 	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
      003BCA 0E                    2682 	.db	14
      003BCB 02                    2683 	.uleb128	2
      003BCC 01                    2684 	.db	1
      003BCD 00 00 A3 40           2685 	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
      003BD1 0E                    2686 	.db	14
      003BD2 03                    2687 	.uleb128	3
      003BD3 01                    2688 	.db	1
      003BD4 00 00 A3 44           2689 	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
      003BD8 0E                    2690 	.db	14
      003BD9 02                    2691 	.uleb128	2
      003BDA 01                    2692 	.db	1
      003BDB 00 00 A3 47           2693 	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
      003BDF 0E                    2694 	.db	14
      003BE0 03                    2695 	.uleb128	3
      003BE1 01                    2696 	.db	1
      003BE2 00 00 A3 4A           2697 	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
      003BE6 0E                    2698 	.db	14
      003BE7 04                    2699 	.uleb128	4
      003BE8 01                    2700 	.db	1
      003BE9 00 00 A3 4E           2701 	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
      003BED 0E                    2702 	.db	14
      003BEE 02                    2703 	.uleb128	2
      003BEF 01                    2704 	.db	1
      003BF0 00 00 A3 51           2705 	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
      003BF4 0E                    2706 	.db	14
      003BF5 03                    2707 	.uleb128	3
      003BF6 01                    2708 	.db	1
      003BF7 00 00 A3 54           2709 	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
      003BFB 0E                    2710 	.db	14
      003BFC 04                    2711 	.uleb128	4
      003BFD 01                    2712 	.db	1
      003BFE 00 00 A3 58           2713 	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
      003C02 0E                    2714 	.db	14
      003C03 02                    2715 	.uleb128	2
                                   2716 
                                   2717 	.area .debug_frame (NOLOAD)
      003C04 00 00                 2718 	.dw	0
      003C06 00 0E                 2719 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      003C08                       2720 Ldebug_CIE13_start:
      003C08 FF FF                 2721 	.dw	0xffff
      003C0A FF FF                 2722 	.dw	0xffff
      003C0C 01                    2723 	.db	1
      003C0D 00                    2724 	.db	0
      003C0E 01                    2725 	.uleb128	1
      003C0F 7F                    2726 	.sleb128	-1
      003C10 09                    2727 	.db	9
      003C11 0C                    2728 	.db	12
      003C12 08                    2729 	.uleb128	8
      003C13 02                    2730 	.uleb128	2
      003C14 89                    2731 	.db	137
      003C15 01                    2732 	.uleb128	1
      003C16                       2733 Ldebug_CIE13_end:
      003C16 00 00 00 13           2734 	.dw	0,19
      003C1A 00 00 3C 04           2735 	.dw	0,(Ldebug_CIE13_start-4)
      003C1E 00 00 A3 1A           2736 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)	;initial loc
      003C22 00 00 00 15           2737 	.dw	0,Sstm8s_adc2$ADC2_DeInit$9-Sstm8s_adc2$ADC2_DeInit$1
      003C26 01                    2738 	.db	1
      003C27 00 00 A3 1A           2739 	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
      003C2B 0E                    2740 	.db	14
      003C2C 02                    2741 	.uleb128	2
