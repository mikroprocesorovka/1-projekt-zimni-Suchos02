                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TRAP_IRQHandler
                                     12 	.globl _TLI_IRQHandler
                                     13 	.globl _AWU_IRQHandler
                                     14 	.globl _CLK_IRQHandler
                                     15 	.globl _EXTI_PORTA_IRQHandler
                                     16 	.globl _EXTI_PORTB_IRQHandler
                                     17 	.globl _EXTI_PORTC_IRQHandler
                                     18 	.globl _EXTI_PORTD_IRQHandler
                                     19 	.globl _EXTI_PORTE_IRQHandler
                                     20 	.globl _CAN_RX_IRQHandler
                                     21 	.globl _CAN_TX_IRQHandler
                                     22 	.globl _SPI_IRQHandler
                                     23 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     24 	.globl _TIM1_CAP_COM_IRQHandler
                                     25 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     26 	.globl _TIM2_CAP_COM_IRQHandler
                                     27 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     28 	.globl _TIM3_CAP_COM_IRQHandler
                                     29 	.globl _UART1_TX_IRQHandler
                                     30 	.globl _UART1_RX_IRQHandler
                                     31 	.globl _I2C_IRQHandler
                                     32 	.globl _UART3_TX_IRQHandler
                                     33 	.globl _UART3_RX_IRQHandler
                                     34 	.globl _ADC2_IRQHandler
                                     35 	.globl _EEPROM_EEC_IRQHandler
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 
                                     49 ; default segment ordering for linker
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area CONST
                                     54 	.area INITIALIZER
                                     55 	.area CODE
                                     56 
                                     57 ;--------------------------------------------------------
                                     58 ; global & static initialisations
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area GSINIT
                                     64 ;--------------------------------------------------------
                                     65 ; Home
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area HOME
                                     69 ;--------------------------------------------------------
                                     70 ; code
                                     71 ;--------------------------------------------------------
                                     72 	.area CODE
                           000000    73 	Sstm8s_it$TRAP_IRQHandler$0 ==.
                                     74 ;	./src/stm8s_it.c: 63: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     75 ; genLabel
                                     76 ;	-----------------------------------------
                                     77 ;	 function TRAP_IRQHandler
                                     78 ;	-----------------------------------------
                                     79 ;	Register assignment is optimal.
                                     80 ;	Stack space usage: 0 bytes.
      008DEE                         81 _TRAP_IRQHandler:
                           000000    82 	Sstm8s_it$TRAP_IRQHandler$1 ==.
                           000000    83 	Sstm8s_it$TRAP_IRQHandler$2 ==.
                                     84 ;	./src/stm8s_it.c: 68: }
                                     85 ; genLabel
      008DEE                         86 00101$:
                                     87 ; genEndFunction
                           000000    88 	Sstm8s_it$TRAP_IRQHandler$3 ==.
                           000000    89 	XG$TRAP_IRQHandler$0$0 ==.
      008DEE 80               [11]   90 	iret
                           000001    91 	Sstm8s_it$TRAP_IRQHandler$4 ==.
                           000001    92 	Sstm8s_it$TLI_IRQHandler$5 ==.
                                     93 ;	./src/stm8s_it.c: 74: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     94 ; genLabel
                                     95 ;	-----------------------------------------
                                     96 ;	 function TLI_IRQHandler
                                     97 ;	-----------------------------------------
                                     98 ;	Register assignment is optimal.
                                     99 ;	Stack space usage: 0 bytes.
      008DEF                        100 _TLI_IRQHandler:
                           000001   101 	Sstm8s_it$TLI_IRQHandler$6 ==.
                           000001   102 	Sstm8s_it$TLI_IRQHandler$7 ==.
                                    103 ;	./src/stm8s_it.c: 79: }
                                    104 ; genLabel
      008DEF                        105 00101$:
                                    106 ; genEndFunction
                           000001   107 	Sstm8s_it$TLI_IRQHandler$8 ==.
                           000001   108 	XG$TLI_IRQHandler$0$0 ==.
      008DEF 80               [11]  109 	iret
                           000002   110 	Sstm8s_it$TLI_IRQHandler$9 ==.
                           000002   111 	Sstm8s_it$AWU_IRQHandler$10 ==.
                                    112 ;	./src/stm8s_it.c: 86: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                    113 ; genLabel
                                    114 ;	-----------------------------------------
                                    115 ;	 function AWU_IRQHandler
                                    116 ;	-----------------------------------------
                                    117 ;	Register assignment is optimal.
                                    118 ;	Stack space usage: 0 bytes.
      008DF0                        119 _AWU_IRQHandler:
                           000002   120 	Sstm8s_it$AWU_IRQHandler$11 ==.
                           000002   121 	Sstm8s_it$AWU_IRQHandler$12 ==.
                                    122 ;	./src/stm8s_it.c: 91: }
                                    123 ; genLabel
      008DF0                        124 00101$:
                                    125 ; genEndFunction
                           000002   126 	Sstm8s_it$AWU_IRQHandler$13 ==.
                           000002   127 	XG$AWU_IRQHandler$0$0 ==.
      008DF0 80               [11]  128 	iret
                           000003   129 	Sstm8s_it$AWU_IRQHandler$14 ==.
                           000003   130 	Sstm8s_it$CLK_IRQHandler$15 ==.
                                    131 ;	./src/stm8s_it.c: 98: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    132 ; genLabel
                                    133 ;	-----------------------------------------
                                    134 ;	 function CLK_IRQHandler
                                    135 ;	-----------------------------------------
                                    136 ;	Register assignment is optimal.
                                    137 ;	Stack space usage: 0 bytes.
      008DF1                        138 _CLK_IRQHandler:
                           000003   139 	Sstm8s_it$CLK_IRQHandler$16 ==.
                           000003   140 	Sstm8s_it$CLK_IRQHandler$17 ==.
                                    141 ;	./src/stm8s_it.c: 103: }
                                    142 ; genLabel
      008DF1                        143 00101$:
                                    144 ; genEndFunction
                           000003   145 	Sstm8s_it$CLK_IRQHandler$18 ==.
                           000003   146 	XG$CLK_IRQHandler$0$0 ==.
      008DF1 80               [11]  147 	iret
                           000004   148 	Sstm8s_it$CLK_IRQHandler$19 ==.
                           000004   149 	Sstm8s_it$EXTI_PORTA_IRQHandler$20 ==.
                                    150 ;	./src/stm8s_it.c: 110: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    151 ; genLabel
                                    152 ;	-----------------------------------------
                                    153 ;	 function EXTI_PORTA_IRQHandler
                                    154 ;	-----------------------------------------
                                    155 ;	Register assignment is optimal.
                                    156 ;	Stack space usage: 0 bytes.
      008DF2                        157 _EXTI_PORTA_IRQHandler:
                           000004   158 	Sstm8s_it$EXTI_PORTA_IRQHandler$21 ==.
                           000004   159 	Sstm8s_it$EXTI_PORTA_IRQHandler$22 ==.
                                    160 ;	./src/stm8s_it.c: 115: }
                                    161 ; genLabel
      008DF2                        162 00101$:
                                    163 ; genEndFunction
                           000004   164 	Sstm8s_it$EXTI_PORTA_IRQHandler$23 ==.
                           000004   165 	XG$EXTI_PORTA_IRQHandler$0$0 ==.
      008DF2 80               [11]  166 	iret
                           000005   167 	Sstm8s_it$EXTI_PORTA_IRQHandler$24 ==.
                           000005   168 	Sstm8s_it$EXTI_PORTB_IRQHandler$25 ==.
                                    169 ;	./src/stm8s_it.c: 122: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    170 ; genLabel
                                    171 ;	-----------------------------------------
                                    172 ;	 function EXTI_PORTB_IRQHandler
                                    173 ;	-----------------------------------------
                                    174 ;	Register assignment is optimal.
                                    175 ;	Stack space usage: 0 bytes.
      008DF3                        176 _EXTI_PORTB_IRQHandler:
                           000005   177 	Sstm8s_it$EXTI_PORTB_IRQHandler$26 ==.
                           000005   178 	Sstm8s_it$EXTI_PORTB_IRQHandler$27 ==.
                                    179 ;	./src/stm8s_it.c: 127: }
                                    180 ; genLabel
      008DF3                        181 00101$:
                                    182 ; genEndFunction
                           000005   183 	Sstm8s_it$EXTI_PORTB_IRQHandler$28 ==.
                           000005   184 	XG$EXTI_PORTB_IRQHandler$0$0 ==.
      008DF3 80               [11]  185 	iret
                           000006   186 	Sstm8s_it$EXTI_PORTB_IRQHandler$29 ==.
                           000006   187 	Sstm8s_it$EXTI_PORTC_IRQHandler$30 ==.
                                    188 ;	./src/stm8s_it.c: 134: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    189 ; genLabel
                                    190 ;	-----------------------------------------
                                    191 ;	 function EXTI_PORTC_IRQHandler
                                    192 ;	-----------------------------------------
                                    193 ;	Register assignment is optimal.
                                    194 ;	Stack space usage: 0 bytes.
      008DF4                        195 _EXTI_PORTC_IRQHandler:
                           000006   196 	Sstm8s_it$EXTI_PORTC_IRQHandler$31 ==.
                           000006   197 	Sstm8s_it$EXTI_PORTC_IRQHandler$32 ==.
                                    198 ;	./src/stm8s_it.c: 139: }
                                    199 ; genLabel
      008DF4                        200 00101$:
                                    201 ; genEndFunction
                           000006   202 	Sstm8s_it$EXTI_PORTC_IRQHandler$33 ==.
                           000006   203 	XG$EXTI_PORTC_IRQHandler$0$0 ==.
      008DF4 80               [11]  204 	iret
                           000007   205 	Sstm8s_it$EXTI_PORTC_IRQHandler$34 ==.
                           000007   206 	Sstm8s_it$EXTI_PORTD_IRQHandler$35 ==.
                                    207 ;	./src/stm8s_it.c: 146: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    208 ; genLabel
                                    209 ;	-----------------------------------------
                                    210 ;	 function EXTI_PORTD_IRQHandler
                                    211 ;	-----------------------------------------
                                    212 ;	Register assignment is optimal.
                                    213 ;	Stack space usage: 0 bytes.
      008DF5                        214 _EXTI_PORTD_IRQHandler:
                           000007   215 	Sstm8s_it$EXTI_PORTD_IRQHandler$36 ==.
                           000007   216 	Sstm8s_it$EXTI_PORTD_IRQHandler$37 ==.
                                    217 ;	./src/stm8s_it.c: 151: }
                                    218 ; genLabel
      008DF5                        219 00101$:
                                    220 ; genEndFunction
                           000007   221 	Sstm8s_it$EXTI_PORTD_IRQHandler$38 ==.
                           000007   222 	XG$EXTI_PORTD_IRQHandler$0$0 ==.
      008DF5 80               [11]  223 	iret
                           000008   224 	Sstm8s_it$EXTI_PORTD_IRQHandler$39 ==.
                           000008   225 	Sstm8s_it$EXTI_PORTE_IRQHandler$40 ==.
                                    226 ;	./src/stm8s_it.c: 158: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    227 ; genLabel
                                    228 ;	-----------------------------------------
                                    229 ;	 function EXTI_PORTE_IRQHandler
                                    230 ;	-----------------------------------------
                                    231 ;	Register assignment is optimal.
                                    232 ;	Stack space usage: 0 bytes.
      008DF6                        233 _EXTI_PORTE_IRQHandler:
                           000008   234 	Sstm8s_it$EXTI_PORTE_IRQHandler$41 ==.
                           000008   235 	Sstm8s_it$EXTI_PORTE_IRQHandler$42 ==.
                                    236 ;	./src/stm8s_it.c: 163: }
                                    237 ; genLabel
      008DF6                        238 00101$:
                                    239 ; genEndFunction
                           000008   240 	Sstm8s_it$EXTI_PORTE_IRQHandler$43 ==.
                           000008   241 	XG$EXTI_PORTE_IRQHandler$0$0 ==.
      008DF6 80               [11]  242 	iret
                           000009   243 	Sstm8s_it$EXTI_PORTE_IRQHandler$44 ==.
                           000009   244 	Sstm8s_it$CAN_RX_IRQHandler$45 ==.
                                    245 ;	./src/stm8s_it.c: 184: INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
                                    246 ; genLabel
                                    247 ;	-----------------------------------------
                                    248 ;	 function CAN_RX_IRQHandler
                                    249 ;	-----------------------------------------
                                    250 ;	Register assignment is optimal.
                                    251 ;	Stack space usage: 0 bytes.
      008DF7                        252 _CAN_RX_IRQHandler:
                           000009   253 	Sstm8s_it$CAN_RX_IRQHandler$46 ==.
                           000009   254 	Sstm8s_it$CAN_RX_IRQHandler$47 ==.
                                    255 ;	./src/stm8s_it.c: 189: }
                                    256 ; genLabel
      008DF7                        257 00101$:
                                    258 ; genEndFunction
                           000009   259 	Sstm8s_it$CAN_RX_IRQHandler$48 ==.
                           000009   260 	XG$CAN_RX_IRQHandler$0$0 ==.
      008DF7 80               [11]  261 	iret
                           00000A   262 	Sstm8s_it$CAN_RX_IRQHandler$49 ==.
                           00000A   263 	Sstm8s_it$CAN_TX_IRQHandler$50 ==.
                                    264 ;	./src/stm8s_it.c: 196: INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
                                    265 ; genLabel
                                    266 ;	-----------------------------------------
                                    267 ;	 function CAN_TX_IRQHandler
                                    268 ;	-----------------------------------------
                                    269 ;	Register assignment is optimal.
                                    270 ;	Stack space usage: 0 bytes.
      008DF8                        271 _CAN_TX_IRQHandler:
                           00000A   272 	Sstm8s_it$CAN_TX_IRQHandler$51 ==.
                           00000A   273 	Sstm8s_it$CAN_TX_IRQHandler$52 ==.
                                    274 ;	./src/stm8s_it.c: 201: }
                                    275 ; genLabel
      008DF8                        276 00101$:
                                    277 ; genEndFunction
                           00000A   278 	Sstm8s_it$CAN_TX_IRQHandler$53 ==.
                           00000A   279 	XG$CAN_TX_IRQHandler$0$0 ==.
      008DF8 80               [11]  280 	iret
                           00000B   281 	Sstm8s_it$CAN_TX_IRQHandler$54 ==.
                           00000B   282 	Sstm8s_it$SPI_IRQHandler$55 ==.
                                    283 ;	./src/stm8s_it.c: 209: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    284 ; genLabel
                                    285 ;	-----------------------------------------
                                    286 ;	 function SPI_IRQHandler
                                    287 ;	-----------------------------------------
                                    288 ;	Register assignment is optimal.
                                    289 ;	Stack space usage: 0 bytes.
      008DF9                        290 _SPI_IRQHandler:
                           00000B   291 	Sstm8s_it$SPI_IRQHandler$56 ==.
                           00000B   292 	Sstm8s_it$SPI_IRQHandler$57 ==.
                                    293 ;	./src/stm8s_it.c: 214: }
                                    294 ; genLabel
      008DF9                        295 00101$:
                                    296 ; genEndFunction
                           00000B   297 	Sstm8s_it$SPI_IRQHandler$58 ==.
                           00000B   298 	XG$SPI_IRQHandler$0$0 ==.
      008DF9 80               [11]  299 	iret
                           00000C   300 	Sstm8s_it$SPI_IRQHandler$59 ==.
                           00000C   301 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60 ==.
                                    302 ;	./src/stm8s_it.c: 221: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    303 ; genLabel
                                    304 ;	-----------------------------------------
                                    305 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    306 ;	-----------------------------------------
                                    307 ;	Register assignment is optimal.
                                    308 ;	Stack space usage: 0 bytes.
      008DFA                        309 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                           00000C   310 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61 ==.
                           00000C   311 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62 ==.
                                    312 ;	./src/stm8s_it.c: 226: }
                                    313 ; genLabel
      008DFA                        314 00101$:
                                    315 ; genEndFunction
                           00000C   316 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63 ==.
                           00000C   317 	XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0 ==.
      008DFA 80               [11]  318 	iret
                           00000D   319 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64 ==.
                           00000D   320 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$65 ==.
                                    321 ;	./src/stm8s_it.c: 233: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    322 ; genLabel
                                    323 ;	-----------------------------------------
                                    324 ;	 function TIM1_CAP_COM_IRQHandler
                                    325 ;	-----------------------------------------
                                    326 ;	Register assignment is optimal.
                                    327 ;	Stack space usage: 0 bytes.
      008DFB                        328 _TIM1_CAP_COM_IRQHandler:
                           00000D   329 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$66 ==.
                           00000D   330 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67 ==.
                                    331 ;	./src/stm8s_it.c: 238: }
                                    332 ; genLabel
      008DFB                        333 00101$:
                                    334 ; genEndFunction
                           00000D   335 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$68 ==.
                           00000D   336 	XG$TIM1_CAP_COM_IRQHandler$0$0 ==.
      008DFB 80               [11]  337 	iret
                           00000E   338 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$69 ==.
                           00000E   339 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70 ==.
                                    340 ;	./src/stm8s_it.c: 270: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    341 ; genLabel
                                    342 ;	-----------------------------------------
                                    343 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    344 ;	-----------------------------------------
                                    345 ;	Register assignment is optimal.
                                    346 ;	Stack space usage: 0 bytes.
      008DFC                        347 _TIM2_UPD_OVF_BRK_IRQHandler:
                           00000E   348 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71 ==.
                           00000E   349 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72 ==.
                                    350 ;	./src/stm8s_it.c: 275: }
                                    351 ; genLabel
      008DFC                        352 00101$:
                                    353 ; genEndFunction
                           00000E   354 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73 ==.
                           00000E   355 	XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0 ==.
      008DFC 80               [11]  356 	iret
                           00000F   357 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74 ==.
                           00000F   358 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$75 ==.
                                    359 ;	./src/stm8s_it.c: 282: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    360 ; genLabel
                                    361 ;	-----------------------------------------
                                    362 ;	 function TIM2_CAP_COM_IRQHandler
                                    363 ;	-----------------------------------------
                                    364 ;	Register assignment is optimal.
                                    365 ;	Stack space usage: 0 bytes.
      008DFD                        366 _TIM2_CAP_COM_IRQHandler:
                           00000F   367 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$76 ==.
                           00000F   368 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$77 ==.
                                    369 ;	./src/stm8s_it.c: 287: }
                                    370 ; genLabel
      008DFD                        371 00101$:
                                    372 ; genEndFunction
                           00000F   373 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$78 ==.
                           00000F   374 	XG$TIM2_CAP_COM_IRQHandler$0$0 ==.
      008DFD 80               [11]  375 	iret
                           000010   376 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$79 ==.
                           000010   377 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80 ==.
                                    378 ;	./src/stm8s_it.c: 297: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    379 ; genLabel
                                    380 ;	-----------------------------------------
                                    381 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    382 ;	-----------------------------------------
                                    383 ;	Register assignment is optimal.
                                    384 ;	Stack space usage: 0 bytes.
      008DFE                        385 _TIM3_UPD_OVF_BRK_IRQHandler:
                           000010   386 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81 ==.
                           000010   387 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82 ==.
                                    388 ;	./src/stm8s_it.c: 302: }
                                    389 ; genLabel
      008DFE                        390 00101$:
                                    391 ; genEndFunction
                           000010   392 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$83 ==.
                           000010   393 	XG$TIM3_UPD_OVF_BRK_IRQHandler$0$0 ==.
      008DFE 80               [11]  394 	iret
                           000011   395 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84 ==.
                           000011   396 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$85 ==.
                                    397 ;	./src/stm8s_it.c: 309: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    398 ; genLabel
                                    399 ;	-----------------------------------------
                                    400 ;	 function TIM3_CAP_COM_IRQHandler
                                    401 ;	-----------------------------------------
                                    402 ;	Register assignment is optimal.
                                    403 ;	Stack space usage: 0 bytes.
      008DFF                        404 _TIM3_CAP_COM_IRQHandler:
                           000011   405 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$86 ==.
                           000011   406 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$87 ==.
                                    407 ;	./src/stm8s_it.c: 314: }
                                    408 ; genLabel
      008DFF                        409 00101$:
                                    410 ; genEndFunction
                           000011   411 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$88 ==.
                           000011   412 	XG$TIM3_CAP_COM_IRQHandler$0$0 ==.
      008DFF 80               [11]  413 	iret
                           000012   414 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$89 ==.
                           000012   415 	Sstm8s_it$UART1_TX_IRQHandler$90 ==.
                                    416 ;	./src/stm8s_it.c: 324: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    417 ; genLabel
                                    418 ;	-----------------------------------------
                                    419 ;	 function UART1_TX_IRQHandler
                                    420 ;	-----------------------------------------
                                    421 ;	Register assignment is optimal.
                                    422 ;	Stack space usage: 0 bytes.
      008E00                        423 _UART1_TX_IRQHandler:
                           000012   424 	Sstm8s_it$UART1_TX_IRQHandler$91 ==.
                           000012   425 	Sstm8s_it$UART1_TX_IRQHandler$92 ==.
                                    426 ;	./src/stm8s_it.c: 329: }
                                    427 ; genLabel
      008E00                        428 00101$:
                                    429 ; genEndFunction
                           000012   430 	Sstm8s_it$UART1_TX_IRQHandler$93 ==.
                           000012   431 	XG$UART1_TX_IRQHandler$0$0 ==.
      008E00 80               [11]  432 	iret
                           000013   433 	Sstm8s_it$UART1_TX_IRQHandler$94 ==.
                           000013   434 	Sstm8s_it$UART1_RX_IRQHandler$95 ==.
                                    435 ;	./src/stm8s_it.c: 336: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    436 ; genLabel
                                    437 ;	-----------------------------------------
                                    438 ;	 function UART1_RX_IRQHandler
                                    439 ;	-----------------------------------------
                                    440 ;	Register assignment is optimal.
                                    441 ;	Stack space usage: 0 bytes.
      008E01                        442 _UART1_RX_IRQHandler:
                           000013   443 	Sstm8s_it$UART1_RX_IRQHandler$96 ==.
                           000013   444 	Sstm8s_it$UART1_RX_IRQHandler$97 ==.
                                    445 ;	./src/stm8s_it.c: 341: }
                                    446 ; genLabel
      008E01                        447 00101$:
                                    448 ; genEndFunction
                           000013   449 	Sstm8s_it$UART1_RX_IRQHandler$98 ==.
                           000013   450 	XG$UART1_RX_IRQHandler$0$0 ==.
      008E01 80               [11]  451 	iret
                           000014   452 	Sstm8s_it$UART1_RX_IRQHandler$99 ==.
                           000014   453 	Sstm8s_it$I2C_IRQHandler$100 ==.
                                    454 ;	./src/stm8s_it.c: 349: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    455 ; genLabel
                                    456 ;	-----------------------------------------
                                    457 ;	 function I2C_IRQHandler
                                    458 ;	-----------------------------------------
                                    459 ;	Register assignment is optimal.
                                    460 ;	Stack space usage: 0 bytes.
      008E02                        461 _I2C_IRQHandler:
                           000014   462 	Sstm8s_it$I2C_IRQHandler$101 ==.
                           000014   463 	Sstm8s_it$I2C_IRQHandler$102 ==.
                                    464 ;	./src/stm8s_it.c: 354: }
                                    465 ; genLabel
      008E02                        466 00101$:
                                    467 ; genEndFunction
                           000014   468 	Sstm8s_it$I2C_IRQHandler$103 ==.
                           000014   469 	XG$I2C_IRQHandler$0$0 ==.
      008E02 80               [11]  470 	iret
                           000015   471 	Sstm8s_it$I2C_IRQHandler$104 ==.
                           000015   472 	Sstm8s_it$UART3_TX_IRQHandler$105 ==.
                                    473 ;	./src/stm8s_it.c: 388: INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
                                    474 ; genLabel
                                    475 ;	-----------------------------------------
                                    476 ;	 function UART3_TX_IRQHandler
                                    477 ;	-----------------------------------------
                                    478 ;	Register assignment is optimal.
                                    479 ;	Stack space usage: 0 bytes.
      008E03                        480 _UART3_TX_IRQHandler:
                           000015   481 	Sstm8s_it$UART3_TX_IRQHandler$106 ==.
                           000015   482 	Sstm8s_it$UART3_TX_IRQHandler$107 ==.
                                    483 ;	./src/stm8s_it.c: 393: }
                                    484 ; genLabel
      008E03                        485 00101$:
                                    486 ; genEndFunction
                           000015   487 	Sstm8s_it$UART3_TX_IRQHandler$108 ==.
                           000015   488 	XG$UART3_TX_IRQHandler$0$0 ==.
      008E03 80               [11]  489 	iret
                           000016   490 	Sstm8s_it$UART3_TX_IRQHandler$109 ==.
                           000016   491 	Sstm8s_it$UART3_RX_IRQHandler$110 ==.
                                    492 ;	./src/stm8s_it.c: 400: INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
                                    493 ; genLabel
                                    494 ;	-----------------------------------------
                                    495 ;	 function UART3_RX_IRQHandler
                                    496 ;	-----------------------------------------
                                    497 ;	Register assignment is optimal.
                                    498 ;	Stack space usage: 0 bytes.
      008E04                        499 _UART3_RX_IRQHandler:
                           000016   500 	Sstm8s_it$UART3_RX_IRQHandler$111 ==.
                           000016   501 	Sstm8s_it$UART3_RX_IRQHandler$112 ==.
                                    502 ;	./src/stm8s_it.c: 405: }
                                    503 ; genLabel
      008E04                        504 00101$:
                                    505 ; genEndFunction
                           000016   506 	Sstm8s_it$UART3_RX_IRQHandler$113 ==.
                           000016   507 	XG$UART3_RX_IRQHandler$0$0 ==.
      008E04 80               [11]  508 	iret
                           000017   509 	Sstm8s_it$UART3_RX_IRQHandler$114 ==.
                           000017   510 	Sstm8s_it$ADC2_IRQHandler$115 ==.
                                    511 ;	./src/stm8s_it.c: 414: INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
                                    512 ; genLabel
                                    513 ;	-----------------------------------------
                                    514 ;	 function ADC2_IRQHandler
                                    515 ;	-----------------------------------------
                                    516 ;	Register assignment is optimal.
                                    517 ;	Stack space usage: 0 bytes.
      008E05                        518 _ADC2_IRQHandler:
                           000017   519 	Sstm8s_it$ADC2_IRQHandler$116 ==.
                           000017   520 	Sstm8s_it$ADC2_IRQHandler$117 ==.
                                    521 ;	./src/stm8s_it.c: 420: return;
                                    522 ; genReturn
                                    523 ; genLabel
      008E05                        524 00101$:
                           000017   525 	Sstm8s_it$ADC2_IRQHandler$118 ==.
                                    526 ;	./src/stm8s_it.c: 422: }
                                    527 ; genEndFunction
                           000017   528 	Sstm8s_it$ADC2_IRQHandler$119 ==.
                           000017   529 	XG$ADC2_IRQHandler$0$0 ==.
      008E05 80               [11]  530 	iret
                           000018   531 	Sstm8s_it$ADC2_IRQHandler$120 ==.
                           000018   532 	Sstm8s_it$EEPROM_EEC_IRQHandler$121 ==.
                                    533 ;	./src/stm8s_it.c: 471: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    534 ; genLabel
                                    535 ;	-----------------------------------------
                                    536 ;	 function EEPROM_EEC_IRQHandler
                                    537 ;	-----------------------------------------
                                    538 ;	Register assignment is optimal.
                                    539 ;	Stack space usage: 0 bytes.
      008E06                        540 _EEPROM_EEC_IRQHandler:
                           000018   541 	Sstm8s_it$EEPROM_EEC_IRQHandler$122 ==.
                           000018   542 	Sstm8s_it$EEPROM_EEC_IRQHandler$123 ==.
                                    543 ;	./src/stm8s_it.c: 476: }
                                    544 ; genLabel
      008E06                        545 00101$:
                                    546 ; genEndFunction
                           000018   547 	Sstm8s_it$EEPROM_EEC_IRQHandler$124 ==.
                           000018   548 	XG$EEPROM_EEC_IRQHandler$0$0 ==.
      008E06 80               [11]  549 	iret
                           000019   550 	Sstm8s_it$EEPROM_EEC_IRQHandler$125 ==.
                                    551 	.area CODE
                                    552 	.area CONST
                                    553 	.area INITIALIZER
                                    554 	.area CABS (ABS)
                                    555 
                                    556 	.area .debug_line (NOLOAD)
      000D64 00 00 02 BB            557 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000D68                        558 Ldebug_line_start:
      000D68 00 02                  559 	.dw	2
      000D6A 00 00 00 71            560 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000D6E 01                     561 	.db	1
      000D6F 01                     562 	.db	1
      000D70 FB                     563 	.db	-5
      000D71 0F                     564 	.db	15
      000D72 0A                     565 	.db	10
      000D73 00                     566 	.db	0
      000D74 01                     567 	.db	1
      000D75 01                     568 	.db	1
      000D76 01                     569 	.db	1
      000D77 01                     570 	.db	1
      000D78 00                     571 	.db	0
      000D79 00                     572 	.db	0
      000D7A 00                     573 	.db	0
      000D7B 01                     574 	.db	1
      000D7C 43 3A 5C 50 72 6F 67   575 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000DA4 00                     576 	.db	0
      000DA5 43 3A 5C 50 72 6F 67   577 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000DC8 00                     578 	.db	0
      000DC9 00                     579 	.db	0
      000DCA 2E 2F 73 72 63 2F 73   580 	.ascii "./src/stm8s_it.c"
             74 6D 38 73 5F 69 74
             2E 63
      000DDA 00                     581 	.db	0
      000DDB 00                     582 	.uleb128	0
      000DDC 00                     583 	.uleb128	0
      000DDD 00                     584 	.uleb128	0
      000DDE 00                     585 	.db	0
      000DDF                        586 Ldebug_line_stmt:
      000DDF 00                     587 	.db	0
      000DE0 05                     588 	.uleb128	5
      000DE1 02                     589 	.db	2
      000DE2 00 00 8D EE            590 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$0)
      000DE6 03                     591 	.db	3
      000DE7 3E                     592 	.sleb128	62
      000DE8 01                     593 	.db	1
      000DE9 09                     594 	.db	9
      000DEA 00 00                  595 	.dw	Sstm8s_it$TRAP_IRQHandler$2-Sstm8s_it$TRAP_IRQHandler$0
      000DEC 03                     596 	.db	3
      000DED 05                     597 	.sleb128	5
      000DEE 01                     598 	.db	1
      000DEF 09                     599 	.db	9
      000DF0 00 01                  600 	.dw	1+Sstm8s_it$TRAP_IRQHandler$3-Sstm8s_it$TRAP_IRQHandler$2
      000DF2 00                     601 	.db	0
      000DF3 01                     602 	.uleb128	1
      000DF4 01                     603 	.db	1
      000DF5 00                     604 	.db	0
      000DF6 05                     605 	.uleb128	5
      000DF7 02                     606 	.db	2
      000DF8 00 00 8D EF            607 	.dw	0,(Sstm8s_it$TLI_IRQHandler$5)
      000DFC 03                     608 	.db	3
      000DFD C9 00                  609 	.sleb128	73
      000DFF 01                     610 	.db	1
      000E00 09                     611 	.db	9
      000E01 00 00                  612 	.dw	Sstm8s_it$TLI_IRQHandler$7-Sstm8s_it$TLI_IRQHandler$5
      000E03 03                     613 	.db	3
      000E04 05                     614 	.sleb128	5
      000E05 01                     615 	.db	1
      000E06 09                     616 	.db	9
      000E07 00 01                  617 	.dw	1+Sstm8s_it$TLI_IRQHandler$8-Sstm8s_it$TLI_IRQHandler$7
      000E09 00                     618 	.db	0
      000E0A 01                     619 	.uleb128	1
      000E0B 01                     620 	.db	1
      000E0C 00                     621 	.db	0
      000E0D 05                     622 	.uleb128	5
      000E0E 02                     623 	.db	2
      000E0F 00 00 8D F0            624 	.dw	0,(Sstm8s_it$AWU_IRQHandler$10)
      000E13 03                     625 	.db	3
      000E14 D5 00                  626 	.sleb128	85
      000E16 01                     627 	.db	1
      000E17 09                     628 	.db	9
      000E18 00 00                  629 	.dw	Sstm8s_it$AWU_IRQHandler$12-Sstm8s_it$AWU_IRQHandler$10
      000E1A 03                     630 	.db	3
      000E1B 05                     631 	.sleb128	5
      000E1C 01                     632 	.db	1
      000E1D 09                     633 	.db	9
      000E1E 00 01                  634 	.dw	1+Sstm8s_it$AWU_IRQHandler$13-Sstm8s_it$AWU_IRQHandler$12
      000E20 00                     635 	.db	0
      000E21 01                     636 	.uleb128	1
      000E22 01                     637 	.db	1
      000E23 00                     638 	.db	0
      000E24 05                     639 	.uleb128	5
      000E25 02                     640 	.db	2
      000E26 00 00 8D F1            641 	.dw	0,(Sstm8s_it$CLK_IRQHandler$15)
      000E2A 03                     642 	.db	3
      000E2B E1 00                  643 	.sleb128	97
      000E2D 01                     644 	.db	1
      000E2E 09                     645 	.db	9
      000E2F 00 00                  646 	.dw	Sstm8s_it$CLK_IRQHandler$17-Sstm8s_it$CLK_IRQHandler$15
      000E31 03                     647 	.db	3
      000E32 05                     648 	.sleb128	5
      000E33 01                     649 	.db	1
      000E34 09                     650 	.db	9
      000E35 00 01                  651 	.dw	1+Sstm8s_it$CLK_IRQHandler$18-Sstm8s_it$CLK_IRQHandler$17
      000E37 00                     652 	.db	0
      000E38 01                     653 	.uleb128	1
      000E39 01                     654 	.db	1
      000E3A 00                     655 	.db	0
      000E3B 05                     656 	.uleb128	5
      000E3C 02                     657 	.db	2
      000E3D 00 00 8D F2            658 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$20)
      000E41 03                     659 	.db	3
      000E42 ED 00                  660 	.sleb128	109
      000E44 01                     661 	.db	1
      000E45 09                     662 	.db	9
      000E46 00 00                  663 	.dw	Sstm8s_it$EXTI_PORTA_IRQHandler$22-Sstm8s_it$EXTI_PORTA_IRQHandler$20
      000E48 03                     664 	.db	3
      000E49 05                     665 	.sleb128	5
      000E4A 01                     666 	.db	1
      000E4B 09                     667 	.db	9
      000E4C 00 01                  668 	.dw	1+Sstm8s_it$EXTI_PORTA_IRQHandler$23-Sstm8s_it$EXTI_PORTA_IRQHandler$22
      000E4E 00                     669 	.db	0
      000E4F 01                     670 	.uleb128	1
      000E50 01                     671 	.db	1
      000E51 00                     672 	.db	0
      000E52 05                     673 	.uleb128	5
      000E53 02                     674 	.db	2
      000E54 00 00 8D F3            675 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$25)
      000E58 03                     676 	.db	3
      000E59 F9 00                  677 	.sleb128	121
      000E5B 01                     678 	.db	1
      000E5C 09                     679 	.db	9
      000E5D 00 00                  680 	.dw	Sstm8s_it$EXTI_PORTB_IRQHandler$27-Sstm8s_it$EXTI_PORTB_IRQHandler$25
      000E5F 03                     681 	.db	3
      000E60 05                     682 	.sleb128	5
      000E61 01                     683 	.db	1
      000E62 09                     684 	.db	9
      000E63 00 01                  685 	.dw	1+Sstm8s_it$EXTI_PORTB_IRQHandler$28-Sstm8s_it$EXTI_PORTB_IRQHandler$27
      000E65 00                     686 	.db	0
      000E66 01                     687 	.uleb128	1
      000E67 01                     688 	.db	1
      000E68 00                     689 	.db	0
      000E69 05                     690 	.uleb128	5
      000E6A 02                     691 	.db	2
      000E6B 00 00 8D F4            692 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$30)
      000E6F 03                     693 	.db	3
      000E70 85 01                  694 	.sleb128	133
      000E72 01                     695 	.db	1
      000E73 09                     696 	.db	9
      000E74 00 00                  697 	.dw	Sstm8s_it$EXTI_PORTC_IRQHandler$32-Sstm8s_it$EXTI_PORTC_IRQHandler$30
      000E76 03                     698 	.db	3
      000E77 05                     699 	.sleb128	5
      000E78 01                     700 	.db	1
      000E79 09                     701 	.db	9
      000E7A 00 01                  702 	.dw	1+Sstm8s_it$EXTI_PORTC_IRQHandler$33-Sstm8s_it$EXTI_PORTC_IRQHandler$32
      000E7C 00                     703 	.db	0
      000E7D 01                     704 	.uleb128	1
      000E7E 01                     705 	.db	1
      000E7F 00                     706 	.db	0
      000E80 05                     707 	.uleb128	5
      000E81 02                     708 	.db	2
      000E82 00 00 8D F5            709 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$35)
      000E86 03                     710 	.db	3
      000E87 91 01                  711 	.sleb128	145
      000E89 01                     712 	.db	1
      000E8A 09                     713 	.db	9
      000E8B 00 00                  714 	.dw	Sstm8s_it$EXTI_PORTD_IRQHandler$37-Sstm8s_it$EXTI_PORTD_IRQHandler$35
      000E8D 03                     715 	.db	3
      000E8E 05                     716 	.sleb128	5
      000E8F 01                     717 	.db	1
      000E90 09                     718 	.db	9
      000E91 00 01                  719 	.dw	1+Sstm8s_it$EXTI_PORTD_IRQHandler$38-Sstm8s_it$EXTI_PORTD_IRQHandler$37
      000E93 00                     720 	.db	0
      000E94 01                     721 	.uleb128	1
      000E95 01                     722 	.db	1
      000E96 00                     723 	.db	0
      000E97 05                     724 	.uleb128	5
      000E98 02                     725 	.db	2
      000E99 00 00 8D F6            726 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$40)
      000E9D 03                     727 	.db	3
      000E9E 9D 01                  728 	.sleb128	157
      000EA0 01                     729 	.db	1
      000EA1 09                     730 	.db	9
      000EA2 00 00                  731 	.dw	Sstm8s_it$EXTI_PORTE_IRQHandler$42-Sstm8s_it$EXTI_PORTE_IRQHandler$40
      000EA4 03                     732 	.db	3
      000EA5 05                     733 	.sleb128	5
      000EA6 01                     734 	.db	1
      000EA7 09                     735 	.db	9
      000EA8 00 01                  736 	.dw	1+Sstm8s_it$EXTI_PORTE_IRQHandler$43-Sstm8s_it$EXTI_PORTE_IRQHandler$42
      000EAA 00                     737 	.db	0
      000EAB 01                     738 	.uleb128	1
      000EAC 01                     739 	.db	1
      000EAD 00                     740 	.db	0
      000EAE 05                     741 	.uleb128	5
      000EAF 02                     742 	.db	2
      000EB0 00 00 8D F7            743 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$45)
      000EB4 03                     744 	.db	3
      000EB5 B7 01                  745 	.sleb128	183
      000EB7 01                     746 	.db	1
      000EB8 09                     747 	.db	9
      000EB9 00 00                  748 	.dw	Sstm8s_it$CAN_RX_IRQHandler$47-Sstm8s_it$CAN_RX_IRQHandler$45
      000EBB 03                     749 	.db	3
      000EBC 05                     750 	.sleb128	5
      000EBD 01                     751 	.db	1
      000EBE 09                     752 	.db	9
      000EBF 00 01                  753 	.dw	1+Sstm8s_it$CAN_RX_IRQHandler$48-Sstm8s_it$CAN_RX_IRQHandler$47
      000EC1 00                     754 	.db	0
      000EC2 01                     755 	.uleb128	1
      000EC3 01                     756 	.db	1
      000EC4 00                     757 	.db	0
      000EC5 05                     758 	.uleb128	5
      000EC6 02                     759 	.db	2
      000EC7 00 00 8D F8            760 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$50)
      000ECB 03                     761 	.db	3
      000ECC C3 01                  762 	.sleb128	195
      000ECE 01                     763 	.db	1
      000ECF 09                     764 	.db	9
      000ED0 00 00                  765 	.dw	Sstm8s_it$CAN_TX_IRQHandler$52-Sstm8s_it$CAN_TX_IRQHandler$50
      000ED2 03                     766 	.db	3
      000ED3 05                     767 	.sleb128	5
      000ED4 01                     768 	.db	1
      000ED5 09                     769 	.db	9
      000ED6 00 01                  770 	.dw	1+Sstm8s_it$CAN_TX_IRQHandler$53-Sstm8s_it$CAN_TX_IRQHandler$52
      000ED8 00                     771 	.db	0
      000ED9 01                     772 	.uleb128	1
      000EDA 01                     773 	.db	1
      000EDB 00                     774 	.db	0
      000EDC 05                     775 	.uleb128	5
      000EDD 02                     776 	.db	2
      000EDE 00 00 8D F9            777 	.dw	0,(Sstm8s_it$SPI_IRQHandler$55)
      000EE2 03                     778 	.db	3
      000EE3 D0 01                  779 	.sleb128	208
      000EE5 01                     780 	.db	1
      000EE6 09                     781 	.db	9
      000EE7 00 00                  782 	.dw	Sstm8s_it$SPI_IRQHandler$57-Sstm8s_it$SPI_IRQHandler$55
      000EE9 03                     783 	.db	3
      000EEA 05                     784 	.sleb128	5
      000EEB 01                     785 	.db	1
      000EEC 09                     786 	.db	9
      000EED 00 01                  787 	.dw	1+Sstm8s_it$SPI_IRQHandler$58-Sstm8s_it$SPI_IRQHandler$57
      000EEF 00                     788 	.db	0
      000EF0 01                     789 	.uleb128	1
      000EF1 01                     790 	.db	1
      000EF2 00                     791 	.db	0
      000EF3 05                     792 	.uleb128	5
      000EF4 02                     793 	.db	2
      000EF5 00 00 8D FA            794 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60)
      000EF9 03                     795 	.db	3
      000EFA DC 01                  796 	.sleb128	220
      000EFC 01                     797 	.db	1
      000EFD 09                     798 	.db	9
      000EFE 00 00                  799 	.dw	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60
      000F00 03                     800 	.db	3
      000F01 05                     801 	.sleb128	5
      000F02 01                     802 	.db	1
      000F03 09                     803 	.db	9
      000F04 00 01                  804 	.dw	1+Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62
      000F06 00                     805 	.db	0
      000F07 01                     806 	.uleb128	1
      000F08 01                     807 	.db	1
      000F09 00                     808 	.db	0
      000F0A 05                     809 	.uleb128	5
      000F0B 02                     810 	.db	2
      000F0C 00 00 8D FB            811 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$65)
      000F10 03                     812 	.db	3
      000F11 E8 01                  813 	.sleb128	232
      000F13 01                     814 	.db	1
      000F14 09                     815 	.db	9
      000F15 00 00                  816 	.dw	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67-Sstm8s_it$TIM1_CAP_COM_IRQHandler$65
      000F17 03                     817 	.db	3
      000F18 05                     818 	.sleb128	5
      000F19 01                     819 	.db	1
      000F1A 09                     820 	.db	9
      000F1B 00 01                  821 	.dw	1+Sstm8s_it$TIM1_CAP_COM_IRQHandler$68-Sstm8s_it$TIM1_CAP_COM_IRQHandler$67
      000F1D 00                     822 	.db	0
      000F1E 01                     823 	.uleb128	1
      000F1F 01                     824 	.db	1
      000F20 00                     825 	.db	0
      000F21 05                     826 	.uleb128	5
      000F22 02                     827 	.db	2
      000F23 00 00 8D FC            828 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70)
      000F27 03                     829 	.db	3
      000F28 8D 02                  830 	.sleb128	269
      000F2A 01                     831 	.db	1
      000F2B 09                     832 	.db	9
      000F2C 00 00                  833 	.dw	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70
      000F2E 03                     834 	.db	3
      000F2F 05                     835 	.sleb128	5
      000F30 01                     836 	.db	1
      000F31 09                     837 	.db	9
      000F32 00 01                  838 	.dw	1+Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72
      000F34 00                     839 	.db	0
      000F35 01                     840 	.uleb128	1
      000F36 01                     841 	.db	1
      000F37 00                     842 	.db	0
      000F38 05                     843 	.uleb128	5
      000F39 02                     844 	.db	2
      000F3A 00 00 8D FD            845 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$75)
      000F3E 03                     846 	.db	3
      000F3F 99 02                  847 	.sleb128	281
      000F41 01                     848 	.db	1
      000F42 09                     849 	.db	9
      000F43 00 00                  850 	.dw	Sstm8s_it$TIM2_CAP_COM_IRQHandler$77-Sstm8s_it$TIM2_CAP_COM_IRQHandler$75
      000F45 03                     851 	.db	3
      000F46 05                     852 	.sleb128	5
      000F47 01                     853 	.db	1
      000F48 09                     854 	.db	9
      000F49 00 01                  855 	.dw	1+Sstm8s_it$TIM2_CAP_COM_IRQHandler$78-Sstm8s_it$TIM2_CAP_COM_IRQHandler$77
      000F4B 00                     856 	.db	0
      000F4C 01                     857 	.uleb128	1
      000F4D 01                     858 	.db	1
      000F4E 00                     859 	.db	0
      000F4F 05                     860 	.uleb128	5
      000F50 02                     861 	.db	2
      000F51 00 00 8D FE            862 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80)
      000F55 03                     863 	.db	3
      000F56 A8 02                  864 	.sleb128	296
      000F58 01                     865 	.db	1
      000F59 09                     866 	.db	9
      000F5A 00 00                  867 	.dw	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80
      000F5C 03                     868 	.db	3
      000F5D 05                     869 	.sleb128	5
      000F5E 01                     870 	.db	1
      000F5F 09                     871 	.db	9
      000F60 00 01                  872 	.dw	1+Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$83-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82
      000F62 00                     873 	.db	0
      000F63 01                     874 	.uleb128	1
      000F64 01                     875 	.db	1
      000F65 00                     876 	.db	0
      000F66 05                     877 	.uleb128	5
      000F67 02                     878 	.db	2
      000F68 00 00 8D FF            879 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$85)
      000F6C 03                     880 	.db	3
      000F6D B4 02                  881 	.sleb128	308
      000F6F 01                     882 	.db	1
      000F70 09                     883 	.db	9
      000F71 00 00                  884 	.dw	Sstm8s_it$TIM3_CAP_COM_IRQHandler$87-Sstm8s_it$TIM3_CAP_COM_IRQHandler$85
      000F73 03                     885 	.db	3
      000F74 05                     886 	.sleb128	5
      000F75 01                     887 	.db	1
      000F76 09                     888 	.db	9
      000F77 00 01                  889 	.dw	1+Sstm8s_it$TIM3_CAP_COM_IRQHandler$88-Sstm8s_it$TIM3_CAP_COM_IRQHandler$87
      000F79 00                     890 	.db	0
      000F7A 01                     891 	.uleb128	1
      000F7B 01                     892 	.db	1
      000F7C 00                     893 	.db	0
      000F7D 05                     894 	.uleb128	5
      000F7E 02                     895 	.db	2
      000F7F 00 00 8E 00            896 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$90)
      000F83 03                     897 	.db	3
      000F84 C3 02                  898 	.sleb128	323
      000F86 01                     899 	.db	1
      000F87 09                     900 	.db	9
      000F88 00 00                  901 	.dw	Sstm8s_it$UART1_TX_IRQHandler$92-Sstm8s_it$UART1_TX_IRQHandler$90
      000F8A 03                     902 	.db	3
      000F8B 05                     903 	.sleb128	5
      000F8C 01                     904 	.db	1
      000F8D 09                     905 	.db	9
      000F8E 00 01                  906 	.dw	1+Sstm8s_it$UART1_TX_IRQHandler$93-Sstm8s_it$UART1_TX_IRQHandler$92
      000F90 00                     907 	.db	0
      000F91 01                     908 	.uleb128	1
      000F92 01                     909 	.db	1
      000F93 00                     910 	.db	0
      000F94 05                     911 	.uleb128	5
      000F95 02                     912 	.db	2
      000F96 00 00 8E 01            913 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$95)
      000F9A 03                     914 	.db	3
      000F9B CF 02                  915 	.sleb128	335
      000F9D 01                     916 	.db	1
      000F9E 09                     917 	.db	9
      000F9F 00 00                  918 	.dw	Sstm8s_it$UART1_RX_IRQHandler$97-Sstm8s_it$UART1_RX_IRQHandler$95
      000FA1 03                     919 	.db	3
      000FA2 05                     920 	.sleb128	5
      000FA3 01                     921 	.db	1
      000FA4 09                     922 	.db	9
      000FA5 00 01                  923 	.dw	1+Sstm8s_it$UART1_RX_IRQHandler$98-Sstm8s_it$UART1_RX_IRQHandler$97
      000FA7 00                     924 	.db	0
      000FA8 01                     925 	.uleb128	1
      000FA9 01                     926 	.db	1
      000FAA 00                     927 	.db	0
      000FAB 05                     928 	.uleb128	5
      000FAC 02                     929 	.db	2
      000FAD 00 00 8E 02            930 	.dw	0,(Sstm8s_it$I2C_IRQHandler$100)
      000FB1 03                     931 	.db	3
      000FB2 DC 02                  932 	.sleb128	348
      000FB4 01                     933 	.db	1
      000FB5 09                     934 	.db	9
      000FB6 00 00                  935 	.dw	Sstm8s_it$I2C_IRQHandler$102-Sstm8s_it$I2C_IRQHandler$100
      000FB8 03                     936 	.db	3
      000FB9 05                     937 	.sleb128	5
      000FBA 01                     938 	.db	1
      000FBB 09                     939 	.db	9
      000FBC 00 01                  940 	.dw	1+Sstm8s_it$I2C_IRQHandler$103-Sstm8s_it$I2C_IRQHandler$102
      000FBE 00                     941 	.db	0
      000FBF 01                     942 	.uleb128	1
      000FC0 01                     943 	.db	1
      000FC1 00                     944 	.db	0
      000FC2 05                     945 	.uleb128	5
      000FC3 02                     946 	.db	2
      000FC4 00 00 8E 03            947 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$105)
      000FC8 03                     948 	.db	3
      000FC9 83 03                  949 	.sleb128	387
      000FCB 01                     950 	.db	1
      000FCC 09                     951 	.db	9
      000FCD 00 00                  952 	.dw	Sstm8s_it$UART3_TX_IRQHandler$107-Sstm8s_it$UART3_TX_IRQHandler$105
      000FCF 03                     953 	.db	3
      000FD0 05                     954 	.sleb128	5
      000FD1 01                     955 	.db	1
      000FD2 09                     956 	.db	9
      000FD3 00 01                  957 	.dw	1+Sstm8s_it$UART3_TX_IRQHandler$108-Sstm8s_it$UART3_TX_IRQHandler$107
      000FD5 00                     958 	.db	0
      000FD6 01                     959 	.uleb128	1
      000FD7 01                     960 	.db	1
      000FD8 00                     961 	.db	0
      000FD9 05                     962 	.uleb128	5
      000FDA 02                     963 	.db	2
      000FDB 00 00 8E 04            964 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$110)
      000FDF 03                     965 	.db	3
      000FE0 8F 03                  966 	.sleb128	399
      000FE2 01                     967 	.db	1
      000FE3 09                     968 	.db	9
      000FE4 00 00                  969 	.dw	Sstm8s_it$UART3_RX_IRQHandler$112-Sstm8s_it$UART3_RX_IRQHandler$110
      000FE6 03                     970 	.db	3
      000FE7 05                     971 	.sleb128	5
      000FE8 01                     972 	.db	1
      000FE9 09                     973 	.db	9
      000FEA 00 01                  974 	.dw	1+Sstm8s_it$UART3_RX_IRQHandler$113-Sstm8s_it$UART3_RX_IRQHandler$112
      000FEC 00                     975 	.db	0
      000FED 01                     976 	.uleb128	1
      000FEE 01                     977 	.db	1
      000FEF 00                     978 	.db	0
      000FF0 05                     979 	.uleb128	5
      000FF1 02                     980 	.db	2
      000FF2 00 00 8E 05            981 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$115)
      000FF6 03                     982 	.db	3
      000FF7 9D 03                  983 	.sleb128	413
      000FF9 01                     984 	.db	1
      000FFA 09                     985 	.db	9
      000FFB 00 00                  986 	.dw	Sstm8s_it$ADC2_IRQHandler$117-Sstm8s_it$ADC2_IRQHandler$115
      000FFD 03                     987 	.db	3
      000FFE 06                     988 	.sleb128	6
      000FFF 01                     989 	.db	1
      001000 09                     990 	.db	9
      001001 00 00                  991 	.dw	Sstm8s_it$ADC2_IRQHandler$118-Sstm8s_it$ADC2_IRQHandler$117
      001003 03                     992 	.db	3
      001004 02                     993 	.sleb128	2
      001005 01                     994 	.db	1
      001006 09                     995 	.db	9
      001007 00 01                  996 	.dw	1+Sstm8s_it$ADC2_IRQHandler$119-Sstm8s_it$ADC2_IRQHandler$118
      001009 00                     997 	.db	0
      00100A 01                     998 	.uleb128	1
      00100B 01                     999 	.db	1
      00100C 00                    1000 	.db	0
      00100D 05                    1001 	.uleb128	5
      00100E 02                    1002 	.db	2
      00100F 00 00 8E 06           1003 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$121)
      001013 03                    1004 	.db	3
      001014 D6 03                 1005 	.sleb128	470
      001016 01                    1006 	.db	1
      001017 09                    1007 	.db	9
      001018 00 00                 1008 	.dw	Sstm8s_it$EEPROM_EEC_IRQHandler$123-Sstm8s_it$EEPROM_EEC_IRQHandler$121
      00101A 03                    1009 	.db	3
      00101B 05                    1010 	.sleb128	5
      00101C 01                    1011 	.db	1
      00101D 09                    1012 	.db	9
      00101E 00 01                 1013 	.dw	1+Sstm8s_it$EEPROM_EEC_IRQHandler$124-Sstm8s_it$EEPROM_EEC_IRQHandler$123
      001020 00                    1014 	.db	0
      001021 01                    1015 	.uleb128	1
      001022 01                    1016 	.db	1
      001023                       1017 Ldebug_line_end:
                                   1018 
                                   1019 	.area .debug_loc (NOLOAD)
      0025E0                       1020 Ldebug_loc_start:
      0025E0 00 00 8E 06           1021 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)
      0025E4 00 00 8E 07           1022 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$125)
      0025E8 00 02                 1023 	.dw	2
      0025EA 78                    1024 	.db	120
      0025EB 01                    1025 	.sleb128	1
      0025EC 00 00 00 00           1026 	.dw	0,0
      0025F0 00 00 00 00           1027 	.dw	0,0
      0025F4 00 00 8E 05           1028 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)
      0025F8 00 00 8E 06           1029 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$120)
      0025FC 00 02                 1030 	.dw	2
      0025FE 78                    1031 	.db	120
      0025FF 01                    1032 	.sleb128	1
      002600 00 00 00 00           1033 	.dw	0,0
      002604 00 00 00 00           1034 	.dw	0,0
      002608 00 00 8E 04           1035 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)
      00260C 00 00 8E 05           1036 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$114)
      002610 00 02                 1037 	.dw	2
      002612 78                    1038 	.db	120
      002613 01                    1039 	.sleb128	1
      002614 00 00 00 00           1040 	.dw	0,0
      002618 00 00 00 00           1041 	.dw	0,0
      00261C 00 00 8E 03           1042 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)
      002620 00 00 8E 04           1043 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$109)
      002624 00 02                 1044 	.dw	2
      002626 78                    1045 	.db	120
      002627 01                    1046 	.sleb128	1
      002628 00 00 00 00           1047 	.dw	0,0
      00262C 00 00 00 00           1048 	.dw	0,0
      002630 00 00 8E 02           1049 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
      002634 00 00 8E 03           1050 	.dw	0,(Sstm8s_it$I2C_IRQHandler$104)
      002638 00 02                 1051 	.dw	2
      00263A 78                    1052 	.db	120
      00263B 01                    1053 	.sleb128	1
      00263C 00 00 00 00           1054 	.dw	0,0
      002640 00 00 00 00           1055 	.dw	0,0
      002644 00 00 8E 01           1056 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)
      002648 00 00 8E 02           1057 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$99)
      00264C 00 02                 1058 	.dw	2
      00264E 78                    1059 	.db	120
      00264F 01                    1060 	.sleb128	1
      002650 00 00 00 00           1061 	.dw	0,0
      002654 00 00 00 00           1062 	.dw	0,0
      002658 00 00 8E 00           1063 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)
      00265C 00 00 8E 01           1064 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$94)
      002660 00 02                 1065 	.dw	2
      002662 78                    1066 	.db	120
      002663 01                    1067 	.sleb128	1
      002664 00 00 00 00           1068 	.dw	0,0
      002668 00 00 00 00           1069 	.dw	0,0
      00266C 00 00 8D FF           1070 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)
      002670 00 00 8E 00           1071 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$89)
      002674 00 02                 1072 	.dw	2
      002676 78                    1073 	.db	120
      002677 01                    1074 	.sleb128	1
      002678 00 00 00 00           1075 	.dw	0,0
      00267C 00 00 00 00           1076 	.dw	0,0
      002680 00 00 8D FE           1077 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)
      002684 00 00 8D FF           1078 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84)
      002688 00 02                 1079 	.dw	2
      00268A 78                    1080 	.db	120
      00268B 01                    1081 	.sleb128	1
      00268C 00 00 00 00           1082 	.dw	0,0
      002690 00 00 00 00           1083 	.dw	0,0
      002694 00 00 8D FD           1084 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)
      002698 00 00 8D FE           1085 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$79)
      00269C 00 02                 1086 	.dw	2
      00269E 78                    1087 	.db	120
      00269F 01                    1088 	.sleb128	1
      0026A0 00 00 00 00           1089 	.dw	0,0
      0026A4 00 00 00 00           1090 	.dw	0,0
      0026A8 00 00 8D FC           1091 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)
      0026AC 00 00 8D FD           1092 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74)
      0026B0 00 02                 1093 	.dw	2
      0026B2 78                    1094 	.db	120
      0026B3 01                    1095 	.sleb128	1
      0026B4 00 00 00 00           1096 	.dw	0,0
      0026B8 00 00 00 00           1097 	.dw	0,0
      0026BC 00 00 8D FB           1098 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
      0026C0 00 00 8D FC           1099 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$69)
      0026C4 00 02                 1100 	.dw	2
      0026C6 78                    1101 	.db	120
      0026C7 01                    1102 	.sleb128	1
      0026C8 00 00 00 00           1103 	.dw	0,0
      0026CC 00 00 00 00           1104 	.dw	0,0
      0026D0 00 00 8D FA           1105 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
      0026D4 00 00 8D FB           1106 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64)
      0026D8 00 02                 1107 	.dw	2
      0026DA 78                    1108 	.db	120
      0026DB 01                    1109 	.sleb128	1
      0026DC 00 00 00 00           1110 	.dw	0,0
      0026E0 00 00 00 00           1111 	.dw	0,0
      0026E4 00 00 8D F9           1112 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)
      0026E8 00 00 8D FA           1113 	.dw	0,(Sstm8s_it$SPI_IRQHandler$59)
      0026EC 00 02                 1114 	.dw	2
      0026EE 78                    1115 	.db	120
      0026EF 01                    1116 	.sleb128	1
      0026F0 00 00 00 00           1117 	.dw	0,0
      0026F4 00 00 00 00           1118 	.dw	0,0
      0026F8 00 00 8D F8           1119 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)
      0026FC 00 00 8D F9           1120 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$54)
      002700 00 02                 1121 	.dw	2
      002702 78                    1122 	.db	120
      002703 01                    1123 	.sleb128	1
      002704 00 00 00 00           1124 	.dw	0,0
      002708 00 00 00 00           1125 	.dw	0,0
      00270C 00 00 8D F7           1126 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)
      002710 00 00 8D F8           1127 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$49)
      002714 00 02                 1128 	.dw	2
      002716 78                    1129 	.db	120
      002717 01                    1130 	.sleb128	1
      002718 00 00 00 00           1131 	.dw	0,0
      00271C 00 00 00 00           1132 	.dw	0,0
      002720 00 00 8D F6           1133 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)
      002724 00 00 8D F7           1134 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$44)
      002728 00 02                 1135 	.dw	2
      00272A 78                    1136 	.db	120
      00272B 01                    1137 	.sleb128	1
      00272C 00 00 00 00           1138 	.dw	0,0
      002730 00 00 00 00           1139 	.dw	0,0
      002734 00 00 8D F5           1140 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)
      002738 00 00 8D F6           1141 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$39)
      00273C 00 02                 1142 	.dw	2
      00273E 78                    1143 	.db	120
      00273F 01                    1144 	.sleb128	1
      002740 00 00 00 00           1145 	.dw	0,0
      002744 00 00 00 00           1146 	.dw	0,0
      002748 00 00 8D F4           1147 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)
      00274C 00 00 8D F5           1148 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$34)
      002750 00 02                 1149 	.dw	2
      002752 78                    1150 	.db	120
      002753 01                    1151 	.sleb128	1
      002754 00 00 00 00           1152 	.dw	0,0
      002758 00 00 00 00           1153 	.dw	0,0
      00275C 00 00 8D F3           1154 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)
      002760 00 00 8D F4           1155 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$29)
      002764 00 02                 1156 	.dw	2
      002766 78                    1157 	.db	120
      002767 01                    1158 	.sleb128	1
      002768 00 00 00 00           1159 	.dw	0,0
      00276C 00 00 00 00           1160 	.dw	0,0
      002770 00 00 8D F2           1161 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)
      002774 00 00 8D F3           1162 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$24)
      002778 00 02                 1163 	.dw	2
      00277A 78                    1164 	.db	120
      00277B 01                    1165 	.sleb128	1
      00277C 00 00 00 00           1166 	.dw	0,0
      002780 00 00 00 00           1167 	.dw	0,0
      002784 00 00 8D F1           1168 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)
      002788 00 00 8D F2           1169 	.dw	0,(Sstm8s_it$CLK_IRQHandler$19)
      00278C 00 02                 1170 	.dw	2
      00278E 78                    1171 	.db	120
      00278F 01                    1172 	.sleb128	1
      002790 00 00 00 00           1173 	.dw	0,0
      002794 00 00 00 00           1174 	.dw	0,0
      002798 00 00 8D F0           1175 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)
      00279C 00 00 8D F1           1176 	.dw	0,(Sstm8s_it$AWU_IRQHandler$14)
      0027A0 00 02                 1177 	.dw	2
      0027A2 78                    1178 	.db	120
      0027A3 01                    1179 	.sleb128	1
      0027A4 00 00 00 00           1180 	.dw	0,0
      0027A8 00 00 00 00           1181 	.dw	0,0
      0027AC 00 00 8D EF           1182 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
      0027B0 00 00 8D F0           1183 	.dw	0,(Sstm8s_it$TLI_IRQHandler$9)
      0027B4 00 02                 1184 	.dw	2
      0027B6 78                    1185 	.db	120
      0027B7 01                    1186 	.sleb128	1
      0027B8 00 00 00 00           1187 	.dw	0,0
      0027BC 00 00 00 00           1188 	.dw	0,0
      0027C0 00 00 8D EE           1189 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
      0027C4 00 00 8D EF           1190 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$4)
      0027C8 00 02                 1191 	.dw	2
      0027CA 78                    1192 	.db	120
      0027CB 01                    1193 	.sleb128	1
      0027CC 00 00 00 00           1194 	.dw	0,0
      0027D0 00 00 00 00           1195 	.dw	0,0
                                   1196 
                                   1197 	.area .debug_abbrev (NOLOAD)
      00026F                       1198 Ldebug_abbrev:
      00026F 01                    1199 	.uleb128	1
      000270 11                    1200 	.uleb128	17
      000271 01                    1201 	.db	1
      000272 03                    1202 	.uleb128	3
      000273 08                    1203 	.uleb128	8
      000274 10                    1204 	.uleb128	16
      000275 06                    1205 	.uleb128	6
      000276 13                    1206 	.uleb128	19
      000277 0B                    1207 	.uleb128	11
      000278 25                    1208 	.uleb128	37
      000279 08                    1209 	.uleb128	8
      00027A 00                    1210 	.uleb128	0
      00027B 00                    1211 	.uleb128	0
      00027C 02                    1212 	.uleb128	2
      00027D 2E                    1213 	.uleb128	46
      00027E 00                    1214 	.db	0
      00027F 03                    1215 	.uleb128	3
      000280 08                    1216 	.uleb128	8
      000281 11                    1217 	.uleb128	17
      000282 01                    1218 	.uleb128	1
      000283 12                    1219 	.uleb128	18
      000284 01                    1220 	.uleb128	1
      000285 36                    1221 	.uleb128	54
      000286 0B                    1222 	.uleb128	11
      000287 3F                    1223 	.uleb128	63
      000288 0C                    1224 	.uleb128	12
      000289 40                    1225 	.uleb128	64
      00028A 06                    1226 	.uleb128	6
      00028B 00                    1227 	.uleb128	0
      00028C 00                    1228 	.uleb128	0
      00028D 00                    1229 	.uleb128	0
                                   1230 
                                   1231 	.area .debug_info (NOLOAD)
      001465 00 00 03 B5           1232 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001469                       1233 Ldebug_info_start:
      001469 00 02                 1234 	.dw	2
      00146B 00 00 02 6F           1235 	.dw	0,(Ldebug_abbrev)
      00146F 04                    1236 	.db	4
      001470 01                    1237 	.uleb128	1
      001471 2E 2F 73 72 63 2F 73  1238 	.ascii "./src/stm8s_it.c"
             74 6D 38 73 5F 69 74
             2E 63
      001481 00                    1239 	.db	0
      001482 00 00 0D 64           1240 	.dw	0,(Ldebug_line_start+-4)
      001486 01                    1241 	.db	1
      001487 53 44 43 43 20 76 65  1242 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0014A0 00                    1243 	.db	0
      0014A1 02                    1244 	.uleb128	2
      0014A2 54 52 41 50 5F 49 52  1245 	.ascii "TRAP_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      0014B1 00                    1246 	.db	0
      0014B2 00 00 8D EE           1247 	.dw	0,(_TRAP_IRQHandler)
      0014B6 00 00 8D EF           1248 	.dw	0,(XG$TRAP_IRQHandler$0$0+1)
      0014BA 03                    1249 	.db	3
      0014BB 01                    1250 	.db	1
      0014BC 00 00 27 C0           1251 	.dw	0,(Ldebug_loc_start+480)
      0014C0 02                    1252 	.uleb128	2
      0014C1 54 4C 49 5F 49 52 51  1253 	.ascii "TLI_IRQHandler"
             48 61 6E 64 6C 65 72
      0014CF 00                    1254 	.db	0
      0014D0 00 00 8D EF           1255 	.dw	0,(_TLI_IRQHandler)
      0014D4 00 00 8D F0           1256 	.dw	0,(XG$TLI_IRQHandler$0$0+1)
      0014D8 03                    1257 	.db	3
      0014D9 01                    1258 	.db	1
      0014DA 00 00 27 AC           1259 	.dw	0,(Ldebug_loc_start+460)
      0014DE 02                    1260 	.uleb128	2
      0014DF 41 57 55 5F 49 52 51  1261 	.ascii "AWU_IRQHandler"
             48 61 6E 64 6C 65 72
      0014ED 00                    1262 	.db	0
      0014EE 00 00 8D F0           1263 	.dw	0,(_AWU_IRQHandler)
      0014F2 00 00 8D F1           1264 	.dw	0,(XG$AWU_IRQHandler$0$0+1)
      0014F6 03                    1265 	.db	3
      0014F7 01                    1266 	.db	1
      0014F8 00 00 27 98           1267 	.dw	0,(Ldebug_loc_start+440)
      0014FC 02                    1268 	.uleb128	2
      0014FD 43 4C 4B 5F 49 52 51  1269 	.ascii "CLK_IRQHandler"
             48 61 6E 64 6C 65 72
      00150B 00                    1270 	.db	0
      00150C 00 00 8D F1           1271 	.dw	0,(_CLK_IRQHandler)
      001510 00 00 8D F2           1272 	.dw	0,(XG$CLK_IRQHandler$0$0+1)
      001514 03                    1273 	.db	3
      001515 01                    1274 	.db	1
      001516 00 00 27 84           1275 	.dw	0,(Ldebug_loc_start+420)
      00151A 02                    1276 	.uleb128	2
      00151B 45 58 54 49 5F 50 4F  1277 	.ascii "EXTI_PORTA_IRQHandler"
             52 54 41 5F 49 52 51
             48 61 6E 64 6C 65 72
      001530 00                    1278 	.db	0
      001531 00 00 8D F2           1279 	.dw	0,(_EXTI_PORTA_IRQHandler)
      001535 00 00 8D F3           1280 	.dw	0,(XG$EXTI_PORTA_IRQHandler$0$0+1)
      001539 03                    1281 	.db	3
      00153A 01                    1282 	.db	1
      00153B 00 00 27 70           1283 	.dw	0,(Ldebug_loc_start+400)
      00153F 02                    1284 	.uleb128	2
      001540 45 58 54 49 5F 50 4F  1285 	.ascii "EXTI_PORTB_IRQHandler"
             52 54 42 5F 49 52 51
             48 61 6E 64 6C 65 72
      001555 00                    1286 	.db	0
      001556 00 00 8D F3           1287 	.dw	0,(_EXTI_PORTB_IRQHandler)
      00155A 00 00 8D F4           1288 	.dw	0,(XG$EXTI_PORTB_IRQHandler$0$0+1)
      00155E 03                    1289 	.db	3
      00155F 01                    1290 	.db	1
      001560 00 00 27 5C           1291 	.dw	0,(Ldebug_loc_start+380)
      001564 02                    1292 	.uleb128	2
      001565 45 58 54 49 5F 50 4F  1293 	.ascii "EXTI_PORTC_IRQHandler"
             52 54 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00157A 00                    1294 	.db	0
      00157B 00 00 8D F4           1295 	.dw	0,(_EXTI_PORTC_IRQHandler)
      00157F 00 00 8D F5           1296 	.dw	0,(XG$EXTI_PORTC_IRQHandler$0$0+1)
      001583 03                    1297 	.db	3
      001584 01                    1298 	.db	1
      001585 00 00 27 48           1299 	.dw	0,(Ldebug_loc_start+360)
      001589 02                    1300 	.uleb128	2
      00158A 45 58 54 49 5F 50 4F  1301 	.ascii "EXTI_PORTD_IRQHandler"
             52 54 44 5F 49 52 51
             48 61 6E 64 6C 65 72
      00159F 00                    1302 	.db	0
      0015A0 00 00 8D F5           1303 	.dw	0,(_EXTI_PORTD_IRQHandler)
      0015A4 00 00 8D F6           1304 	.dw	0,(XG$EXTI_PORTD_IRQHandler$0$0+1)
      0015A8 03                    1305 	.db	3
      0015A9 01                    1306 	.db	1
      0015AA 00 00 27 34           1307 	.dw	0,(Ldebug_loc_start+340)
      0015AE 02                    1308 	.uleb128	2
      0015AF 45 58 54 49 5F 50 4F  1309 	.ascii "EXTI_PORTE_IRQHandler"
             52 54 45 5F 49 52 51
             48 61 6E 64 6C 65 72
      0015C4 00                    1310 	.db	0
      0015C5 00 00 8D F6           1311 	.dw	0,(_EXTI_PORTE_IRQHandler)
      0015C9 00 00 8D F7           1312 	.dw	0,(XG$EXTI_PORTE_IRQHandler$0$0+1)
      0015CD 03                    1313 	.db	3
      0015CE 01                    1314 	.db	1
      0015CF 00 00 27 20           1315 	.dw	0,(Ldebug_loc_start+320)
      0015D3 02                    1316 	.uleb128	2
      0015D4 43 41 4E 5F 52 58 5F  1317 	.ascii "CAN_RX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      0015E5 00                    1318 	.db	0
      0015E6 00 00 8D F7           1319 	.dw	0,(_CAN_RX_IRQHandler)
      0015EA 00 00 8D F8           1320 	.dw	0,(XG$CAN_RX_IRQHandler$0$0+1)
      0015EE 03                    1321 	.db	3
      0015EF 01                    1322 	.db	1
      0015F0 00 00 27 0C           1323 	.dw	0,(Ldebug_loc_start+300)
      0015F4 02                    1324 	.uleb128	2
      0015F5 43 41 4E 5F 54 58 5F  1325 	.ascii "CAN_TX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      001606 00                    1326 	.db	0
      001607 00 00 8D F8           1327 	.dw	0,(_CAN_TX_IRQHandler)
      00160B 00 00 8D F9           1328 	.dw	0,(XG$CAN_TX_IRQHandler$0$0+1)
      00160F 03                    1329 	.db	3
      001610 01                    1330 	.db	1
      001611 00 00 26 F8           1331 	.dw	0,(Ldebug_loc_start+280)
      001615 02                    1332 	.uleb128	2
      001616 53 50 49 5F 49 52 51  1333 	.ascii "SPI_IRQHandler"
             48 61 6E 64 6C 65 72
      001624 00                    1334 	.db	0
      001625 00 00 8D F9           1335 	.dw	0,(_SPI_IRQHandler)
      001629 00 00 8D FA           1336 	.dw	0,(XG$SPI_IRQHandler$0$0+1)
      00162D 03                    1337 	.db	3
      00162E 01                    1338 	.db	1
      00162F 00 00 26 E4           1339 	.dw	0,(Ldebug_loc_start+260)
      001633 02                    1340 	.uleb128	2
      001634 54 49 4D 31 5F 55 50  1341 	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
             44 5F 4F 56 46 5F 54
             52 47 5F 42 52 4B 5F
             49 52 51 48 61 6E 64
             6C 65 72
      001653 00                    1342 	.db	0
      001654 00 00 8D FA           1343 	.dw	0,(_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
      001658 00 00 8D FB           1344 	.dw	0,(XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0+1)
      00165C 03                    1345 	.db	3
      00165D 01                    1346 	.db	1
      00165E 00 00 26 D0           1347 	.dw	0,(Ldebug_loc_start+240)
      001662 02                    1348 	.uleb128	2
      001663 54 49 4D 31 5F 43 41  1349 	.ascii "TIM1_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      00167A 00                    1350 	.db	0
      00167B 00 00 8D FB           1351 	.dw	0,(_TIM1_CAP_COM_IRQHandler)
      00167F 00 00 8D FC           1352 	.dw	0,(XG$TIM1_CAP_COM_IRQHandler$0$0+1)
      001683 03                    1353 	.db	3
      001684 01                    1354 	.db	1
      001685 00 00 26 BC           1355 	.dw	0,(Ldebug_loc_start+220)
      001689 02                    1356 	.uleb128	2
      00168A 54 49 4D 32 5F 55 50  1357 	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      0016A5 00                    1358 	.db	0
      0016A6 00 00 8D FC           1359 	.dw	0,(_TIM2_UPD_OVF_BRK_IRQHandler)
      0016AA 00 00 8D FD           1360 	.dw	0,(XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0+1)
      0016AE 03                    1361 	.db	3
      0016AF 01                    1362 	.db	1
      0016B0 00 00 26 A8           1363 	.dw	0,(Ldebug_loc_start+200)
      0016B4 02                    1364 	.uleb128	2
      0016B5 54 49 4D 32 5F 43 41  1365 	.ascii "TIM2_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0016CC 00                    1366 	.db	0
      0016CD 00 00 8D FD           1367 	.dw	0,(_TIM2_CAP_COM_IRQHandler)
      0016D1 00 00 8D FE           1368 	.dw	0,(XG$TIM2_CAP_COM_IRQHandler$0$0+1)
      0016D5 03                    1369 	.db	3
      0016D6 01                    1370 	.db	1
      0016D7 00 00 26 94           1371 	.dw	0,(Ldebug_loc_start+180)
      0016DB 02                    1372 	.uleb128	2
      0016DC 54 49 4D 33 5F 55 50  1373 	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      0016F7 00                    1374 	.db	0
      0016F8 00 00 8D FE           1375 	.dw	0,(_TIM3_UPD_OVF_BRK_IRQHandler)
      0016FC 00 00 8D FF           1376 	.dw	0,(XG$TIM3_UPD_OVF_BRK_IRQHandler$0$0+1)
      001700 03                    1377 	.db	3
      001701 01                    1378 	.db	1
      001702 00 00 26 80           1379 	.dw	0,(Ldebug_loc_start+160)
      001706 02                    1380 	.uleb128	2
      001707 54 49 4D 33 5F 43 41  1381 	.ascii "TIM3_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      00171E 00                    1382 	.db	0
      00171F 00 00 8D FF           1383 	.dw	0,(_TIM3_CAP_COM_IRQHandler)
      001723 00 00 8E 00           1384 	.dw	0,(XG$TIM3_CAP_COM_IRQHandler$0$0+1)
      001727 03                    1385 	.db	3
      001728 01                    1386 	.db	1
      001729 00 00 26 6C           1387 	.dw	0,(Ldebug_loc_start+140)
      00172D 02                    1388 	.uleb128	2
      00172E 55 41 52 54 31 5F 54  1389 	.ascii "UART1_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001741 00                    1390 	.db	0
      001742 00 00 8E 00           1391 	.dw	0,(_UART1_TX_IRQHandler)
      001746 00 00 8E 01           1392 	.dw	0,(XG$UART1_TX_IRQHandler$0$0+1)
      00174A 03                    1393 	.db	3
      00174B 01                    1394 	.db	1
      00174C 00 00 26 58           1395 	.dw	0,(Ldebug_loc_start+120)
      001750 02                    1396 	.uleb128	2
      001751 55 41 52 54 31 5F 52  1397 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001764 00                    1398 	.db	0
      001765 00 00 8E 01           1399 	.dw	0,(_UART1_RX_IRQHandler)
      001769 00 00 8E 02           1400 	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
      00176D 03                    1401 	.db	3
      00176E 01                    1402 	.db	1
      00176F 00 00 26 44           1403 	.dw	0,(Ldebug_loc_start+100)
      001773 02                    1404 	.uleb128	2
      001774 49 32 43 5F 49 52 51  1405 	.ascii "I2C_IRQHandler"
             48 61 6E 64 6C 65 72
      001782 00                    1406 	.db	0
      001783 00 00 8E 02           1407 	.dw	0,(_I2C_IRQHandler)
      001787 00 00 8E 03           1408 	.dw	0,(XG$I2C_IRQHandler$0$0+1)
      00178B 03                    1409 	.db	3
      00178C 01                    1410 	.db	1
      00178D 00 00 26 30           1411 	.dw	0,(Ldebug_loc_start+80)
      001791 02                    1412 	.uleb128	2
      001792 55 41 52 54 33 5F 54  1413 	.ascii "UART3_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0017A5 00                    1414 	.db	0
      0017A6 00 00 8E 03           1415 	.dw	0,(_UART3_TX_IRQHandler)
      0017AA 00 00 8E 04           1416 	.dw	0,(XG$UART3_TX_IRQHandler$0$0+1)
      0017AE 03                    1417 	.db	3
      0017AF 01                    1418 	.db	1
      0017B0 00 00 26 1C           1419 	.dw	0,(Ldebug_loc_start+60)
      0017B4 02                    1420 	.uleb128	2
      0017B5 55 41 52 54 33 5F 52  1421 	.ascii "UART3_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0017C8 00                    1422 	.db	0
      0017C9 00 00 8E 04           1423 	.dw	0,(_UART3_RX_IRQHandler)
      0017CD 00 00 8E 05           1424 	.dw	0,(XG$UART3_RX_IRQHandler$0$0+1)
      0017D1 03                    1425 	.db	3
      0017D2 01                    1426 	.db	1
      0017D3 00 00 26 08           1427 	.dw	0,(Ldebug_loc_start+40)
      0017D7 02                    1428 	.uleb128	2
      0017D8 41 44 43 32 5F 49 52  1429 	.ascii "ADC2_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      0017E7 00                    1430 	.db	0
      0017E8 00 00 8E 05           1431 	.dw	0,(_ADC2_IRQHandler)
      0017EC 00 00 8E 06           1432 	.dw	0,(XG$ADC2_IRQHandler$0$0+1)
      0017F0 03                    1433 	.db	3
      0017F1 01                    1434 	.db	1
      0017F2 00 00 25 F4           1435 	.dw	0,(Ldebug_loc_start+20)
      0017F6 02                    1436 	.uleb128	2
      0017F7 45 45 50 52 4F 4D 5F  1437 	.ascii "EEPROM_EEC_IRQHandler"
             45 45 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00180C 00                    1438 	.db	0
      00180D 00 00 8E 06           1439 	.dw	0,(_EEPROM_EEC_IRQHandler)
      001811 00 00 8E 07           1440 	.dw	0,(XG$EEPROM_EEC_IRQHandler$0$0+1)
      001815 03                    1441 	.db	3
      001816 01                    1442 	.db	1
      001817 00 00 25 E0           1443 	.dw	0,(Ldebug_loc_start)
      00181B 00                    1444 	.uleb128	0
      00181C 00                    1445 	.uleb128	0
      00181D 00                    1446 	.uleb128	0
      00181E                       1447 Ldebug_info_end:
                                   1448 
                                   1449 	.area .debug_pubnames (NOLOAD)
      000214 00 00 02 75           1450 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000218                       1451 Ldebug_pubnames_start:
      000218 00 02                 1452 	.dw	2
      00021A 00 00 14 65           1453 	.dw	0,(Ldebug_info_start-4)
      00021E 00 00 03 B9           1454 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000222 00 00 00 3C           1455 	.dw	0,60
      000226 54 52 41 50 5F 49 52  1456 	.ascii "TRAP_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      000235 00                    1457 	.db	0
      000236 00 00 00 5B           1458 	.dw	0,91
      00023A 54 4C 49 5F 49 52 51  1459 	.ascii "TLI_IRQHandler"
             48 61 6E 64 6C 65 72
      000248 00                    1460 	.db	0
      000249 00 00 00 79           1461 	.dw	0,121
      00024D 41 57 55 5F 49 52 51  1462 	.ascii "AWU_IRQHandler"
             48 61 6E 64 6C 65 72
      00025B 00                    1463 	.db	0
      00025C 00 00 00 97           1464 	.dw	0,151
      000260 43 4C 4B 5F 49 52 51  1465 	.ascii "CLK_IRQHandler"
             48 61 6E 64 6C 65 72
      00026E 00                    1466 	.db	0
      00026F 00 00 00 B5           1467 	.dw	0,181
      000273 45 58 54 49 5F 50 4F  1468 	.ascii "EXTI_PORTA_IRQHandler"
             52 54 41 5F 49 52 51
             48 61 6E 64 6C 65 72
      000288 00                    1469 	.db	0
      000289 00 00 00 DA           1470 	.dw	0,218
      00028D 45 58 54 49 5F 50 4F  1471 	.ascii "EXTI_PORTB_IRQHandler"
             52 54 42 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002A2 00                    1472 	.db	0
      0002A3 00 00 00 FF           1473 	.dw	0,255
      0002A7 45 58 54 49 5F 50 4F  1474 	.ascii "EXTI_PORTC_IRQHandler"
             52 54 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002BC 00                    1475 	.db	0
      0002BD 00 00 01 24           1476 	.dw	0,292
      0002C1 45 58 54 49 5F 50 4F  1477 	.ascii "EXTI_PORTD_IRQHandler"
             52 54 44 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002D6 00                    1478 	.db	0
      0002D7 00 00 01 49           1479 	.dw	0,329
      0002DB 45 58 54 49 5F 50 4F  1480 	.ascii "EXTI_PORTE_IRQHandler"
             52 54 45 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002F0 00                    1481 	.db	0
      0002F1 00 00 01 6E           1482 	.dw	0,366
      0002F5 43 41 4E 5F 52 58 5F  1483 	.ascii "CAN_RX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      000306 00                    1484 	.db	0
      000307 00 00 01 8F           1485 	.dw	0,399
      00030B 43 41 4E 5F 54 58 5F  1486 	.ascii "CAN_TX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      00031C 00                    1487 	.db	0
      00031D 00 00 01 B0           1488 	.dw	0,432
      000321 53 50 49 5F 49 52 51  1489 	.ascii "SPI_IRQHandler"
             48 61 6E 64 6C 65 72
      00032F 00                    1490 	.db	0
      000330 00 00 01 CE           1491 	.dw	0,462
      000334 54 49 4D 31 5F 55 50  1492 	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
             44 5F 4F 56 46 5F 54
             52 47 5F 42 52 4B 5F
             49 52 51 48 61 6E 64
             6C 65 72
      000353 00                    1493 	.db	0
      000354 00 00 01 FD           1494 	.dw	0,509
      000358 54 49 4D 31 5F 43 41  1495 	.ascii "TIM1_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      00036F 00                    1496 	.db	0
      000370 00 00 02 24           1497 	.dw	0,548
      000374 54 49 4D 32 5F 55 50  1498 	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      00038F 00                    1499 	.db	0
      000390 00 00 02 4F           1500 	.dw	0,591
      000394 54 49 4D 32 5F 43 41  1501 	.ascii "TIM2_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0003AB 00                    1502 	.db	0
      0003AC 00 00 02 76           1503 	.dw	0,630
      0003B0 54 49 4D 33 5F 55 50  1504 	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      0003CB 00                    1505 	.db	0
      0003CC 00 00 02 A1           1506 	.dw	0,673
      0003D0 54 49 4D 33 5F 43 41  1507 	.ascii "TIM3_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0003E7 00                    1508 	.db	0
      0003E8 00 00 02 C8           1509 	.dw	0,712
      0003EC 55 41 52 54 31 5F 54  1510 	.ascii "UART1_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0003FF 00                    1511 	.db	0
      000400 00 00 02 EB           1512 	.dw	0,747
      000404 55 41 52 54 31 5F 52  1513 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000417 00                    1514 	.db	0
      000418 00 00 03 0E           1515 	.dw	0,782
      00041C 49 32 43 5F 49 52 51  1516 	.ascii "I2C_IRQHandler"
             48 61 6E 64 6C 65 72
      00042A 00                    1517 	.db	0
      00042B 00 00 03 2C           1518 	.dw	0,812
      00042F 55 41 52 54 33 5F 54  1519 	.ascii "UART3_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000442 00                    1520 	.db	0
      000443 00 00 03 4F           1521 	.dw	0,847
      000447 55 41 52 54 33 5F 52  1522 	.ascii "UART3_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      00045A 00                    1523 	.db	0
      00045B 00 00 03 72           1524 	.dw	0,882
      00045F 41 44 43 32 5F 49 52  1525 	.ascii "ADC2_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      00046E 00                    1526 	.db	0
      00046F 00 00 03 91           1527 	.dw	0,913
      000473 45 45 50 52 4F 4D 5F  1528 	.ascii "EEPROM_EEC_IRQHandler"
             45 45 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      000488 00                    1529 	.db	0
      000489 00 00 00 00           1530 	.dw	0,0
      00048D                       1531 Ldebug_pubnames_end:
                                   1532 
                                   1533 	.area .debug_frame (NOLOAD)
      0019E0 00 00                 1534 	.dw	0
      0019E2 00 0E                 1535 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0019E4                       1536 Ldebug_CIE0_start:
      0019E4 FF FF                 1537 	.dw	0xffff
      0019E6 FF FF                 1538 	.dw	0xffff
      0019E8 01                    1539 	.db	1
      0019E9 00                    1540 	.db	0
      0019EA 01                    1541 	.uleb128	1
      0019EB 7F                    1542 	.sleb128	-1
      0019EC 09                    1543 	.db	9
      0019ED 0C                    1544 	.db	12
      0019EE 08                    1545 	.uleb128	8
      0019EF 09                    1546 	.uleb128	9
      0019F0 89                    1547 	.db	137
      0019F1 01                    1548 	.uleb128	1
      0019F2                       1549 Ldebug_CIE0_end:
      0019F2 00 00 00 13           1550 	.dw	0,19
      0019F6 00 00 19 E0           1551 	.dw	0,(Ldebug_CIE0_start-4)
      0019FA 00 00 8E 06           1552 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)	;initial loc
      0019FE 00 00 00 01           1553 	.dw	0,Sstm8s_it$EEPROM_EEC_IRQHandler$125-Sstm8s_it$EEPROM_EEC_IRQHandler$122
      001A02 01                    1554 	.db	1
      001A03 00 00 8E 06           1555 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)
      001A07 0E                    1556 	.db	14
      001A08 09                    1557 	.uleb128	9
                                   1558 
                                   1559 	.area .debug_frame (NOLOAD)
      001A09 00 00                 1560 	.dw	0
      001A0B 00 0E                 1561 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001A0D                       1562 Ldebug_CIE1_start:
      001A0D FF FF                 1563 	.dw	0xffff
      001A0F FF FF                 1564 	.dw	0xffff
      001A11 01                    1565 	.db	1
      001A12 00                    1566 	.db	0
      001A13 01                    1567 	.uleb128	1
      001A14 7F                    1568 	.sleb128	-1
      001A15 09                    1569 	.db	9
      001A16 0C                    1570 	.db	12
      001A17 08                    1571 	.uleb128	8
      001A18 09                    1572 	.uleb128	9
      001A19 89                    1573 	.db	137
      001A1A 01                    1574 	.uleb128	1
      001A1B                       1575 Ldebug_CIE1_end:
      001A1B 00 00 00 13           1576 	.dw	0,19
      001A1F 00 00 1A 09           1577 	.dw	0,(Ldebug_CIE1_start-4)
      001A23 00 00 8E 05           1578 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)	;initial loc
      001A27 00 00 00 01           1579 	.dw	0,Sstm8s_it$ADC2_IRQHandler$120-Sstm8s_it$ADC2_IRQHandler$116
      001A2B 01                    1580 	.db	1
      001A2C 00 00 8E 05           1581 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)
      001A30 0E                    1582 	.db	14
      001A31 09                    1583 	.uleb128	9
                                   1584 
                                   1585 	.area .debug_frame (NOLOAD)
      001A32 00 00                 1586 	.dw	0
      001A34 00 0E                 1587 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      001A36                       1588 Ldebug_CIE2_start:
      001A36 FF FF                 1589 	.dw	0xffff
      001A38 FF FF                 1590 	.dw	0xffff
      001A3A 01                    1591 	.db	1
      001A3B 00                    1592 	.db	0
      001A3C 01                    1593 	.uleb128	1
      001A3D 7F                    1594 	.sleb128	-1
      001A3E 09                    1595 	.db	9
      001A3F 0C                    1596 	.db	12
      001A40 08                    1597 	.uleb128	8
      001A41 09                    1598 	.uleb128	9
      001A42 89                    1599 	.db	137
      001A43 01                    1600 	.uleb128	1
      001A44                       1601 Ldebug_CIE2_end:
      001A44 00 00 00 13           1602 	.dw	0,19
      001A48 00 00 1A 32           1603 	.dw	0,(Ldebug_CIE2_start-4)
      001A4C 00 00 8E 04           1604 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)	;initial loc
      001A50 00 00 00 01           1605 	.dw	0,Sstm8s_it$UART3_RX_IRQHandler$114-Sstm8s_it$UART3_RX_IRQHandler$111
      001A54 01                    1606 	.db	1
      001A55 00 00 8E 04           1607 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)
      001A59 0E                    1608 	.db	14
      001A5A 09                    1609 	.uleb128	9
                                   1610 
                                   1611 	.area .debug_frame (NOLOAD)
      001A5B 00 00                 1612 	.dw	0
      001A5D 00 0E                 1613 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      001A5F                       1614 Ldebug_CIE3_start:
      001A5F FF FF                 1615 	.dw	0xffff
      001A61 FF FF                 1616 	.dw	0xffff
      001A63 01                    1617 	.db	1
      001A64 00                    1618 	.db	0
      001A65 01                    1619 	.uleb128	1
      001A66 7F                    1620 	.sleb128	-1
      001A67 09                    1621 	.db	9
      001A68 0C                    1622 	.db	12
      001A69 08                    1623 	.uleb128	8
      001A6A 09                    1624 	.uleb128	9
      001A6B 89                    1625 	.db	137
      001A6C 01                    1626 	.uleb128	1
      001A6D                       1627 Ldebug_CIE3_end:
      001A6D 00 00 00 13           1628 	.dw	0,19
      001A71 00 00 1A 5B           1629 	.dw	0,(Ldebug_CIE3_start-4)
      001A75 00 00 8E 03           1630 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)	;initial loc
      001A79 00 00 00 01           1631 	.dw	0,Sstm8s_it$UART3_TX_IRQHandler$109-Sstm8s_it$UART3_TX_IRQHandler$106
      001A7D 01                    1632 	.db	1
      001A7E 00 00 8E 03           1633 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)
      001A82 0E                    1634 	.db	14
      001A83 09                    1635 	.uleb128	9
                                   1636 
                                   1637 	.area .debug_frame (NOLOAD)
      001A84 00 00                 1638 	.dw	0
      001A86 00 0E                 1639 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      001A88                       1640 Ldebug_CIE4_start:
      001A88 FF FF                 1641 	.dw	0xffff
      001A8A FF FF                 1642 	.dw	0xffff
      001A8C 01                    1643 	.db	1
      001A8D 00                    1644 	.db	0
      001A8E 01                    1645 	.uleb128	1
      001A8F 7F                    1646 	.sleb128	-1
      001A90 09                    1647 	.db	9
      001A91 0C                    1648 	.db	12
      001A92 08                    1649 	.uleb128	8
      001A93 09                    1650 	.uleb128	9
      001A94 89                    1651 	.db	137
      001A95 01                    1652 	.uleb128	1
      001A96                       1653 Ldebug_CIE4_end:
      001A96 00 00 00 13           1654 	.dw	0,19
      001A9A 00 00 1A 84           1655 	.dw	0,(Ldebug_CIE4_start-4)
      001A9E 00 00 8E 02           1656 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)	;initial loc
      001AA2 00 00 00 01           1657 	.dw	0,Sstm8s_it$I2C_IRQHandler$104-Sstm8s_it$I2C_IRQHandler$101
      001AA6 01                    1658 	.db	1
      001AA7 00 00 8E 02           1659 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
      001AAB 0E                    1660 	.db	14
      001AAC 09                    1661 	.uleb128	9
                                   1662 
                                   1663 	.area .debug_frame (NOLOAD)
      001AAD 00 00                 1664 	.dw	0
      001AAF 00 0E                 1665 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      001AB1                       1666 Ldebug_CIE5_start:
      001AB1 FF FF                 1667 	.dw	0xffff
      001AB3 FF FF                 1668 	.dw	0xffff
      001AB5 01                    1669 	.db	1
      001AB6 00                    1670 	.db	0
      001AB7 01                    1671 	.uleb128	1
      001AB8 7F                    1672 	.sleb128	-1
      001AB9 09                    1673 	.db	9
      001ABA 0C                    1674 	.db	12
      001ABB 08                    1675 	.uleb128	8
      001ABC 09                    1676 	.uleb128	9
      001ABD 89                    1677 	.db	137
      001ABE 01                    1678 	.uleb128	1
      001ABF                       1679 Ldebug_CIE5_end:
      001ABF 00 00 00 13           1680 	.dw	0,19
      001AC3 00 00 1A AD           1681 	.dw	0,(Ldebug_CIE5_start-4)
      001AC7 00 00 8E 01           1682 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)	;initial loc
      001ACB 00 00 00 01           1683 	.dw	0,Sstm8s_it$UART1_RX_IRQHandler$99-Sstm8s_it$UART1_RX_IRQHandler$96
      001ACF 01                    1684 	.db	1
      001AD0 00 00 8E 01           1685 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)
      001AD4 0E                    1686 	.db	14
      001AD5 09                    1687 	.uleb128	9
                                   1688 
                                   1689 	.area .debug_frame (NOLOAD)
      001AD6 00 00                 1690 	.dw	0
      001AD8 00 0E                 1691 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      001ADA                       1692 Ldebug_CIE6_start:
      001ADA FF FF                 1693 	.dw	0xffff
      001ADC FF FF                 1694 	.dw	0xffff
      001ADE 01                    1695 	.db	1
      001ADF 00                    1696 	.db	0
      001AE0 01                    1697 	.uleb128	1
      001AE1 7F                    1698 	.sleb128	-1
      001AE2 09                    1699 	.db	9
      001AE3 0C                    1700 	.db	12
      001AE4 08                    1701 	.uleb128	8
      001AE5 09                    1702 	.uleb128	9
      001AE6 89                    1703 	.db	137
      001AE7 01                    1704 	.uleb128	1
      001AE8                       1705 Ldebug_CIE6_end:
      001AE8 00 00 00 13           1706 	.dw	0,19
      001AEC 00 00 1A D6           1707 	.dw	0,(Ldebug_CIE6_start-4)
      001AF0 00 00 8E 00           1708 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)	;initial loc
      001AF4 00 00 00 01           1709 	.dw	0,Sstm8s_it$UART1_TX_IRQHandler$94-Sstm8s_it$UART1_TX_IRQHandler$91
      001AF8 01                    1710 	.db	1
      001AF9 00 00 8E 00           1711 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)
      001AFD 0E                    1712 	.db	14
      001AFE 09                    1713 	.uleb128	9
                                   1714 
                                   1715 	.area .debug_frame (NOLOAD)
      001AFF 00 00                 1716 	.dw	0
      001B01 00 0E                 1717 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      001B03                       1718 Ldebug_CIE7_start:
      001B03 FF FF                 1719 	.dw	0xffff
      001B05 FF FF                 1720 	.dw	0xffff
      001B07 01                    1721 	.db	1
      001B08 00                    1722 	.db	0
      001B09 01                    1723 	.uleb128	1
      001B0A 7F                    1724 	.sleb128	-1
      001B0B 09                    1725 	.db	9
      001B0C 0C                    1726 	.db	12
      001B0D 08                    1727 	.uleb128	8
      001B0E 09                    1728 	.uleb128	9
      001B0F 89                    1729 	.db	137
      001B10 01                    1730 	.uleb128	1
      001B11                       1731 Ldebug_CIE7_end:
      001B11 00 00 00 13           1732 	.dw	0,19
      001B15 00 00 1A FF           1733 	.dw	0,(Ldebug_CIE7_start-4)
      001B19 00 00 8D FF           1734 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)	;initial loc
      001B1D 00 00 00 01           1735 	.dw	0,Sstm8s_it$TIM3_CAP_COM_IRQHandler$89-Sstm8s_it$TIM3_CAP_COM_IRQHandler$86
      001B21 01                    1736 	.db	1
      001B22 00 00 8D FF           1737 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)
      001B26 0E                    1738 	.db	14
      001B27 09                    1739 	.uleb128	9
                                   1740 
                                   1741 	.area .debug_frame (NOLOAD)
      001B28 00 00                 1742 	.dw	0
      001B2A 00 0E                 1743 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      001B2C                       1744 Ldebug_CIE8_start:
      001B2C FF FF                 1745 	.dw	0xffff
      001B2E FF FF                 1746 	.dw	0xffff
      001B30 01                    1747 	.db	1
      001B31 00                    1748 	.db	0
      001B32 01                    1749 	.uleb128	1
      001B33 7F                    1750 	.sleb128	-1
      001B34 09                    1751 	.db	9
      001B35 0C                    1752 	.db	12
      001B36 08                    1753 	.uleb128	8
      001B37 09                    1754 	.uleb128	9
      001B38 89                    1755 	.db	137
      001B39 01                    1756 	.uleb128	1
      001B3A                       1757 Ldebug_CIE8_end:
      001B3A 00 00 00 13           1758 	.dw	0,19
      001B3E 00 00 1B 28           1759 	.dw	0,(Ldebug_CIE8_start-4)
      001B42 00 00 8D FE           1760 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)	;initial loc
      001B46 00 00 00 01           1761 	.dw	0,Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81
      001B4A 01                    1762 	.db	1
      001B4B 00 00 8D FE           1763 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)
      001B4F 0E                    1764 	.db	14
      001B50 09                    1765 	.uleb128	9
                                   1766 
                                   1767 	.area .debug_frame (NOLOAD)
      001B51 00 00                 1768 	.dw	0
      001B53 00 0E                 1769 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      001B55                       1770 Ldebug_CIE9_start:
      001B55 FF FF                 1771 	.dw	0xffff
      001B57 FF FF                 1772 	.dw	0xffff
      001B59 01                    1773 	.db	1
      001B5A 00                    1774 	.db	0
      001B5B 01                    1775 	.uleb128	1
      001B5C 7F                    1776 	.sleb128	-1
      001B5D 09                    1777 	.db	9
      001B5E 0C                    1778 	.db	12
      001B5F 08                    1779 	.uleb128	8
      001B60 09                    1780 	.uleb128	9
      001B61 89                    1781 	.db	137
      001B62 01                    1782 	.uleb128	1
      001B63                       1783 Ldebug_CIE9_end:
      001B63 00 00 00 13           1784 	.dw	0,19
      001B67 00 00 1B 51           1785 	.dw	0,(Ldebug_CIE9_start-4)
      001B6B 00 00 8D FD           1786 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)	;initial loc
      001B6F 00 00 00 01           1787 	.dw	0,Sstm8s_it$TIM2_CAP_COM_IRQHandler$79-Sstm8s_it$TIM2_CAP_COM_IRQHandler$76
      001B73 01                    1788 	.db	1
      001B74 00 00 8D FD           1789 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)
      001B78 0E                    1790 	.db	14
      001B79 09                    1791 	.uleb128	9
                                   1792 
                                   1793 	.area .debug_frame (NOLOAD)
      001B7A 00 00                 1794 	.dw	0
      001B7C 00 0E                 1795 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      001B7E                       1796 Ldebug_CIE10_start:
      001B7E FF FF                 1797 	.dw	0xffff
      001B80 FF FF                 1798 	.dw	0xffff
      001B82 01                    1799 	.db	1
      001B83 00                    1800 	.db	0
      001B84 01                    1801 	.uleb128	1
      001B85 7F                    1802 	.sleb128	-1
      001B86 09                    1803 	.db	9
      001B87 0C                    1804 	.db	12
      001B88 08                    1805 	.uleb128	8
      001B89 09                    1806 	.uleb128	9
      001B8A 89                    1807 	.db	137
      001B8B 01                    1808 	.uleb128	1
      001B8C                       1809 Ldebug_CIE10_end:
      001B8C 00 00 00 13           1810 	.dw	0,19
      001B90 00 00 1B 7A           1811 	.dw	0,(Ldebug_CIE10_start-4)
      001B94 00 00 8D FC           1812 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)	;initial loc
      001B98 00 00 00 01           1813 	.dw	0,Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71
      001B9C 01                    1814 	.db	1
      001B9D 00 00 8D FC           1815 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)
      001BA1 0E                    1816 	.db	14
      001BA2 09                    1817 	.uleb128	9
                                   1818 
                                   1819 	.area .debug_frame (NOLOAD)
      001BA3 00 00                 1820 	.dw	0
      001BA5 00 0E                 1821 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      001BA7                       1822 Ldebug_CIE11_start:
      001BA7 FF FF                 1823 	.dw	0xffff
      001BA9 FF FF                 1824 	.dw	0xffff
      001BAB 01                    1825 	.db	1
      001BAC 00                    1826 	.db	0
      001BAD 01                    1827 	.uleb128	1
      001BAE 7F                    1828 	.sleb128	-1
      001BAF 09                    1829 	.db	9
      001BB0 0C                    1830 	.db	12
      001BB1 08                    1831 	.uleb128	8
      001BB2 09                    1832 	.uleb128	9
      001BB3 89                    1833 	.db	137
      001BB4 01                    1834 	.uleb128	1
      001BB5                       1835 Ldebug_CIE11_end:
      001BB5 00 00 00 13           1836 	.dw	0,19
      001BB9 00 00 1B A3           1837 	.dw	0,(Ldebug_CIE11_start-4)
      001BBD 00 00 8D FB           1838 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)	;initial loc
      001BC1 00 00 00 01           1839 	.dw	0,Sstm8s_it$TIM1_CAP_COM_IRQHandler$69-Sstm8s_it$TIM1_CAP_COM_IRQHandler$66
      001BC5 01                    1840 	.db	1
      001BC6 00 00 8D FB           1841 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
      001BCA 0E                    1842 	.db	14
      001BCB 09                    1843 	.uleb128	9
                                   1844 
                                   1845 	.area .debug_frame (NOLOAD)
      001BCC 00 00                 1846 	.dw	0
      001BCE 00 0E                 1847 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      001BD0                       1848 Ldebug_CIE12_start:
      001BD0 FF FF                 1849 	.dw	0xffff
      001BD2 FF FF                 1850 	.dw	0xffff
      001BD4 01                    1851 	.db	1
      001BD5 00                    1852 	.db	0
      001BD6 01                    1853 	.uleb128	1
      001BD7 7F                    1854 	.sleb128	-1
      001BD8 09                    1855 	.db	9
      001BD9 0C                    1856 	.db	12
      001BDA 08                    1857 	.uleb128	8
      001BDB 09                    1858 	.uleb128	9
      001BDC 89                    1859 	.db	137
      001BDD 01                    1860 	.uleb128	1
      001BDE                       1861 Ldebug_CIE12_end:
      001BDE 00 00 00 13           1862 	.dw	0,19
      001BE2 00 00 1B CC           1863 	.dw	0,(Ldebug_CIE12_start-4)
      001BE6 00 00 8D FA           1864 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)	;initial loc
      001BEA 00 00 00 01           1865 	.dw	0,Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61
      001BEE 01                    1866 	.db	1
      001BEF 00 00 8D FA           1867 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
      001BF3 0E                    1868 	.db	14
      001BF4 09                    1869 	.uleb128	9
                                   1870 
                                   1871 	.area .debug_frame (NOLOAD)
      001BF5 00 00                 1872 	.dw	0
      001BF7 00 0E                 1873 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      001BF9                       1874 Ldebug_CIE13_start:
      001BF9 FF FF                 1875 	.dw	0xffff
      001BFB FF FF                 1876 	.dw	0xffff
      001BFD 01                    1877 	.db	1
      001BFE 00                    1878 	.db	0
      001BFF 01                    1879 	.uleb128	1
      001C00 7F                    1880 	.sleb128	-1
      001C01 09                    1881 	.db	9
      001C02 0C                    1882 	.db	12
      001C03 08                    1883 	.uleb128	8
      001C04 09                    1884 	.uleb128	9
      001C05 89                    1885 	.db	137
      001C06 01                    1886 	.uleb128	1
      001C07                       1887 Ldebug_CIE13_end:
      001C07 00 00 00 13           1888 	.dw	0,19
      001C0B 00 00 1B F5           1889 	.dw	0,(Ldebug_CIE13_start-4)
      001C0F 00 00 8D F9           1890 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)	;initial loc
      001C13 00 00 00 01           1891 	.dw	0,Sstm8s_it$SPI_IRQHandler$59-Sstm8s_it$SPI_IRQHandler$56
      001C17 01                    1892 	.db	1
      001C18 00 00 8D F9           1893 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)
      001C1C 0E                    1894 	.db	14
      001C1D 09                    1895 	.uleb128	9
                                   1896 
                                   1897 	.area .debug_frame (NOLOAD)
      001C1E 00 00                 1898 	.dw	0
      001C20 00 0E                 1899 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      001C22                       1900 Ldebug_CIE14_start:
      001C22 FF FF                 1901 	.dw	0xffff
      001C24 FF FF                 1902 	.dw	0xffff
      001C26 01                    1903 	.db	1
      001C27 00                    1904 	.db	0
      001C28 01                    1905 	.uleb128	1
      001C29 7F                    1906 	.sleb128	-1
      001C2A 09                    1907 	.db	9
      001C2B 0C                    1908 	.db	12
      001C2C 08                    1909 	.uleb128	8
      001C2D 09                    1910 	.uleb128	9
      001C2E 89                    1911 	.db	137
      001C2F 01                    1912 	.uleb128	1
      001C30                       1913 Ldebug_CIE14_end:
      001C30 00 00 00 13           1914 	.dw	0,19
      001C34 00 00 1C 1E           1915 	.dw	0,(Ldebug_CIE14_start-4)
      001C38 00 00 8D F8           1916 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)	;initial loc
      001C3C 00 00 00 01           1917 	.dw	0,Sstm8s_it$CAN_TX_IRQHandler$54-Sstm8s_it$CAN_TX_IRQHandler$51
      001C40 01                    1918 	.db	1
      001C41 00 00 8D F8           1919 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)
      001C45 0E                    1920 	.db	14
      001C46 09                    1921 	.uleb128	9
                                   1922 
                                   1923 	.area .debug_frame (NOLOAD)
      001C47 00 00                 1924 	.dw	0
      001C49 00 0E                 1925 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      001C4B                       1926 Ldebug_CIE15_start:
      001C4B FF FF                 1927 	.dw	0xffff
      001C4D FF FF                 1928 	.dw	0xffff
      001C4F 01                    1929 	.db	1
      001C50 00                    1930 	.db	0
      001C51 01                    1931 	.uleb128	1
      001C52 7F                    1932 	.sleb128	-1
      001C53 09                    1933 	.db	9
      001C54 0C                    1934 	.db	12
      001C55 08                    1935 	.uleb128	8
      001C56 09                    1936 	.uleb128	9
      001C57 89                    1937 	.db	137
      001C58 01                    1938 	.uleb128	1
      001C59                       1939 Ldebug_CIE15_end:
      001C59 00 00 00 13           1940 	.dw	0,19
      001C5D 00 00 1C 47           1941 	.dw	0,(Ldebug_CIE15_start-4)
      001C61 00 00 8D F7           1942 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)	;initial loc
      001C65 00 00 00 01           1943 	.dw	0,Sstm8s_it$CAN_RX_IRQHandler$49-Sstm8s_it$CAN_RX_IRQHandler$46
      001C69 01                    1944 	.db	1
      001C6A 00 00 8D F7           1945 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)
      001C6E 0E                    1946 	.db	14
      001C6F 09                    1947 	.uleb128	9
                                   1948 
                                   1949 	.area .debug_frame (NOLOAD)
      001C70 00 00                 1950 	.dw	0
      001C72 00 0E                 1951 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      001C74                       1952 Ldebug_CIE16_start:
      001C74 FF FF                 1953 	.dw	0xffff
      001C76 FF FF                 1954 	.dw	0xffff
      001C78 01                    1955 	.db	1
      001C79 00                    1956 	.db	0
      001C7A 01                    1957 	.uleb128	1
      001C7B 7F                    1958 	.sleb128	-1
      001C7C 09                    1959 	.db	9
      001C7D 0C                    1960 	.db	12
      001C7E 08                    1961 	.uleb128	8
      001C7F 09                    1962 	.uleb128	9
      001C80 89                    1963 	.db	137
      001C81 01                    1964 	.uleb128	1
      001C82                       1965 Ldebug_CIE16_end:
      001C82 00 00 00 13           1966 	.dw	0,19
      001C86 00 00 1C 70           1967 	.dw	0,(Ldebug_CIE16_start-4)
      001C8A 00 00 8D F6           1968 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)	;initial loc
      001C8E 00 00 00 01           1969 	.dw	0,Sstm8s_it$EXTI_PORTE_IRQHandler$44-Sstm8s_it$EXTI_PORTE_IRQHandler$41
      001C92 01                    1970 	.db	1
      001C93 00 00 8D F6           1971 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)
      001C97 0E                    1972 	.db	14
      001C98 09                    1973 	.uleb128	9
                                   1974 
                                   1975 	.area .debug_frame (NOLOAD)
      001C99 00 00                 1976 	.dw	0
      001C9B 00 0E                 1977 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      001C9D                       1978 Ldebug_CIE17_start:
      001C9D FF FF                 1979 	.dw	0xffff
      001C9F FF FF                 1980 	.dw	0xffff
      001CA1 01                    1981 	.db	1
      001CA2 00                    1982 	.db	0
      001CA3 01                    1983 	.uleb128	1
      001CA4 7F                    1984 	.sleb128	-1
      001CA5 09                    1985 	.db	9
      001CA6 0C                    1986 	.db	12
      001CA7 08                    1987 	.uleb128	8
      001CA8 09                    1988 	.uleb128	9
      001CA9 89                    1989 	.db	137
      001CAA 01                    1990 	.uleb128	1
      001CAB                       1991 Ldebug_CIE17_end:
      001CAB 00 00 00 13           1992 	.dw	0,19
      001CAF 00 00 1C 99           1993 	.dw	0,(Ldebug_CIE17_start-4)
      001CB3 00 00 8D F5           1994 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)	;initial loc
      001CB7 00 00 00 01           1995 	.dw	0,Sstm8s_it$EXTI_PORTD_IRQHandler$39-Sstm8s_it$EXTI_PORTD_IRQHandler$36
      001CBB 01                    1996 	.db	1
      001CBC 00 00 8D F5           1997 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)
      001CC0 0E                    1998 	.db	14
      001CC1 09                    1999 	.uleb128	9
                                   2000 
                                   2001 	.area .debug_frame (NOLOAD)
      001CC2 00 00                 2002 	.dw	0
      001CC4 00 0E                 2003 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      001CC6                       2004 Ldebug_CIE18_start:
      001CC6 FF FF                 2005 	.dw	0xffff
      001CC8 FF FF                 2006 	.dw	0xffff
      001CCA 01                    2007 	.db	1
      001CCB 00                    2008 	.db	0
      001CCC 01                    2009 	.uleb128	1
      001CCD 7F                    2010 	.sleb128	-1
      001CCE 09                    2011 	.db	9
      001CCF 0C                    2012 	.db	12
      001CD0 08                    2013 	.uleb128	8
      001CD1 09                    2014 	.uleb128	9
      001CD2 89                    2015 	.db	137
      001CD3 01                    2016 	.uleb128	1
      001CD4                       2017 Ldebug_CIE18_end:
      001CD4 00 00 00 13           2018 	.dw	0,19
      001CD8 00 00 1C C2           2019 	.dw	0,(Ldebug_CIE18_start-4)
      001CDC 00 00 8D F4           2020 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)	;initial loc
      001CE0 00 00 00 01           2021 	.dw	0,Sstm8s_it$EXTI_PORTC_IRQHandler$34-Sstm8s_it$EXTI_PORTC_IRQHandler$31
      001CE4 01                    2022 	.db	1
      001CE5 00 00 8D F4           2023 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)
      001CE9 0E                    2024 	.db	14
      001CEA 09                    2025 	.uleb128	9
                                   2026 
                                   2027 	.area .debug_frame (NOLOAD)
      001CEB 00 00                 2028 	.dw	0
      001CED 00 0E                 2029 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      001CEF                       2030 Ldebug_CIE19_start:
      001CEF FF FF                 2031 	.dw	0xffff
      001CF1 FF FF                 2032 	.dw	0xffff
      001CF3 01                    2033 	.db	1
      001CF4 00                    2034 	.db	0
      001CF5 01                    2035 	.uleb128	1
      001CF6 7F                    2036 	.sleb128	-1
      001CF7 09                    2037 	.db	9
      001CF8 0C                    2038 	.db	12
      001CF9 08                    2039 	.uleb128	8
      001CFA 09                    2040 	.uleb128	9
      001CFB 89                    2041 	.db	137
      001CFC 01                    2042 	.uleb128	1
      001CFD                       2043 Ldebug_CIE19_end:
      001CFD 00 00 00 13           2044 	.dw	0,19
      001D01 00 00 1C EB           2045 	.dw	0,(Ldebug_CIE19_start-4)
      001D05 00 00 8D F3           2046 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)	;initial loc
      001D09 00 00 00 01           2047 	.dw	0,Sstm8s_it$EXTI_PORTB_IRQHandler$29-Sstm8s_it$EXTI_PORTB_IRQHandler$26
      001D0D 01                    2048 	.db	1
      001D0E 00 00 8D F3           2049 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)
      001D12 0E                    2050 	.db	14
      001D13 09                    2051 	.uleb128	9
                                   2052 
                                   2053 	.area .debug_frame (NOLOAD)
      001D14 00 00                 2054 	.dw	0
      001D16 00 0E                 2055 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      001D18                       2056 Ldebug_CIE20_start:
      001D18 FF FF                 2057 	.dw	0xffff
      001D1A FF FF                 2058 	.dw	0xffff
      001D1C 01                    2059 	.db	1
      001D1D 00                    2060 	.db	0
      001D1E 01                    2061 	.uleb128	1
      001D1F 7F                    2062 	.sleb128	-1
      001D20 09                    2063 	.db	9
      001D21 0C                    2064 	.db	12
      001D22 08                    2065 	.uleb128	8
      001D23 09                    2066 	.uleb128	9
      001D24 89                    2067 	.db	137
      001D25 01                    2068 	.uleb128	1
      001D26                       2069 Ldebug_CIE20_end:
      001D26 00 00 00 13           2070 	.dw	0,19
      001D2A 00 00 1D 14           2071 	.dw	0,(Ldebug_CIE20_start-4)
      001D2E 00 00 8D F2           2072 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)	;initial loc
      001D32 00 00 00 01           2073 	.dw	0,Sstm8s_it$EXTI_PORTA_IRQHandler$24-Sstm8s_it$EXTI_PORTA_IRQHandler$21
      001D36 01                    2074 	.db	1
      001D37 00 00 8D F2           2075 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)
      001D3B 0E                    2076 	.db	14
      001D3C 09                    2077 	.uleb128	9
                                   2078 
                                   2079 	.area .debug_frame (NOLOAD)
      001D3D 00 00                 2080 	.dw	0
      001D3F 00 0E                 2081 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      001D41                       2082 Ldebug_CIE21_start:
      001D41 FF FF                 2083 	.dw	0xffff
      001D43 FF FF                 2084 	.dw	0xffff
      001D45 01                    2085 	.db	1
      001D46 00                    2086 	.db	0
      001D47 01                    2087 	.uleb128	1
      001D48 7F                    2088 	.sleb128	-1
      001D49 09                    2089 	.db	9
      001D4A 0C                    2090 	.db	12
      001D4B 08                    2091 	.uleb128	8
      001D4C 09                    2092 	.uleb128	9
      001D4D 89                    2093 	.db	137
      001D4E 01                    2094 	.uleb128	1
      001D4F                       2095 Ldebug_CIE21_end:
      001D4F 00 00 00 13           2096 	.dw	0,19
      001D53 00 00 1D 3D           2097 	.dw	0,(Ldebug_CIE21_start-4)
      001D57 00 00 8D F1           2098 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)	;initial loc
      001D5B 00 00 00 01           2099 	.dw	0,Sstm8s_it$CLK_IRQHandler$19-Sstm8s_it$CLK_IRQHandler$16
      001D5F 01                    2100 	.db	1
      001D60 00 00 8D F1           2101 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)
      001D64 0E                    2102 	.db	14
      001D65 09                    2103 	.uleb128	9
                                   2104 
                                   2105 	.area .debug_frame (NOLOAD)
      001D66 00 00                 2106 	.dw	0
      001D68 00 0E                 2107 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      001D6A                       2108 Ldebug_CIE22_start:
      001D6A FF FF                 2109 	.dw	0xffff
      001D6C FF FF                 2110 	.dw	0xffff
      001D6E 01                    2111 	.db	1
      001D6F 00                    2112 	.db	0
      001D70 01                    2113 	.uleb128	1
      001D71 7F                    2114 	.sleb128	-1
      001D72 09                    2115 	.db	9
      001D73 0C                    2116 	.db	12
      001D74 08                    2117 	.uleb128	8
      001D75 09                    2118 	.uleb128	9
      001D76 89                    2119 	.db	137
      001D77 01                    2120 	.uleb128	1
      001D78                       2121 Ldebug_CIE22_end:
      001D78 00 00 00 13           2122 	.dw	0,19
      001D7C 00 00 1D 66           2123 	.dw	0,(Ldebug_CIE22_start-4)
      001D80 00 00 8D F0           2124 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)	;initial loc
      001D84 00 00 00 01           2125 	.dw	0,Sstm8s_it$AWU_IRQHandler$14-Sstm8s_it$AWU_IRQHandler$11
      001D88 01                    2126 	.db	1
      001D89 00 00 8D F0           2127 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)
      001D8D 0E                    2128 	.db	14
      001D8E 09                    2129 	.uleb128	9
                                   2130 
                                   2131 	.area .debug_frame (NOLOAD)
      001D8F 00 00                 2132 	.dw	0
      001D91 00 0E                 2133 	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
      001D93                       2134 Ldebug_CIE23_start:
      001D93 FF FF                 2135 	.dw	0xffff
      001D95 FF FF                 2136 	.dw	0xffff
      001D97 01                    2137 	.db	1
      001D98 00                    2138 	.db	0
      001D99 01                    2139 	.uleb128	1
      001D9A 7F                    2140 	.sleb128	-1
      001D9B 09                    2141 	.db	9
      001D9C 0C                    2142 	.db	12
      001D9D 08                    2143 	.uleb128	8
      001D9E 09                    2144 	.uleb128	9
      001D9F 89                    2145 	.db	137
      001DA0 01                    2146 	.uleb128	1
      001DA1                       2147 Ldebug_CIE23_end:
      001DA1 00 00 00 13           2148 	.dw	0,19
      001DA5 00 00 1D 8F           2149 	.dw	0,(Ldebug_CIE23_start-4)
      001DA9 00 00 8D EF           2150 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)	;initial loc
      001DAD 00 00 00 01           2151 	.dw	0,Sstm8s_it$TLI_IRQHandler$9-Sstm8s_it$TLI_IRQHandler$6
      001DB1 01                    2152 	.db	1
      001DB2 00 00 8D EF           2153 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
      001DB6 0E                    2154 	.db	14
      001DB7 09                    2155 	.uleb128	9
                                   2156 
                                   2157 	.area .debug_frame (NOLOAD)
      001DB8 00 00                 2158 	.dw	0
      001DBA 00 0E                 2159 	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
      001DBC                       2160 Ldebug_CIE24_start:
      001DBC FF FF                 2161 	.dw	0xffff
      001DBE FF FF                 2162 	.dw	0xffff
      001DC0 01                    2163 	.db	1
      001DC1 00                    2164 	.db	0
      001DC2 01                    2165 	.uleb128	1
      001DC3 7F                    2166 	.sleb128	-1
      001DC4 09                    2167 	.db	9
      001DC5 0C                    2168 	.db	12
      001DC6 08                    2169 	.uleb128	8
      001DC7 09                    2170 	.uleb128	9
      001DC8 89                    2171 	.db	137
      001DC9 01                    2172 	.uleb128	1
      001DCA                       2173 Ldebug_CIE24_end:
      001DCA 00 00 00 13           2174 	.dw	0,19
      001DCE 00 00 1D B8           2175 	.dw	0,(Ldebug_CIE24_start-4)
      001DD2 00 00 8D EE           2176 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)	;initial loc
      001DD6 00 00 00 01           2177 	.dw	0,Sstm8s_it$TRAP_IRQHandler$4-Sstm8s_it$TRAP_IRQHandler$1
      001DDA 01                    2178 	.db	1
      001DDB 00 00 8D EE           2179 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
      001DDF 0E                    2180 	.db	14
      001DE0 09                    2181 	.uleb128	9
