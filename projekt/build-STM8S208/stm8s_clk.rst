                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _CLK_DeInit
                                     14 	.globl _CLK_FastHaltWakeUpCmd
                                     15 	.globl _CLK_HSECmd
                                     16 	.globl _CLK_HSICmd
                                     17 	.globl _CLK_LSICmd
                                     18 	.globl _CLK_CCOCmd
                                     19 	.globl _CLK_ClockSwitchCmd
                                     20 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     21 	.globl _CLK_PeripheralClockConfig
                                     22 	.globl _CLK_ClockSwitchConfig
                                     23 	.globl _CLK_HSIPrescalerConfig
                                     24 	.globl _CLK_CCOConfig
                                     25 	.globl _CLK_ITConfig
                                     26 	.globl _CLK_SYSCLKConfig
                                     27 	.globl _CLK_SWIMConfig
                                     28 	.globl _CLK_ClockSecuritySystemEnable
                                     29 	.globl _CLK_GetSYSCLKSource
                                     30 	.globl _CLK_GetClockFreq
                                     31 	.globl _CLK_AdjustHSICalibrationValue
                                     32 	.globl _CLK_SYSCLKEmergencyClear
                                     33 	.globl _CLK_GetFlagStatus
                                     34 	.globl _CLK_GetITStatus
                                     35 	.globl _CLK_ClearITPendingBit
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
                           000000    73 	Sstm8s_clk$CLK_DeInit$0 ==.
                                     74 ;	../SPL/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ; genLabel
                                     76 ;	-----------------------------------------
                                     77 ;	 function CLK_DeInit
                                     78 ;	-----------------------------------------
                                     79 ;	Register assignment is optimal.
                                     80 ;	Stack space usage: 0 bytes.
      0096E8                         81 _CLK_DeInit:
                           000000    82 	Sstm8s_clk$CLK_DeInit$1 ==.
                           000000    83 	Sstm8s_clk$CLK_DeInit$2 ==.
                                     84 ;	../SPL/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
                                     85 ; genPointerSet
      0096E8 35 01 50 C0      [ 1]   86 	mov	0x50c0+0, #0x01
                           000004    87 	Sstm8s_clk$CLK_DeInit$3 ==.
                                     88 ;	../SPL/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
                                     89 ; genPointerSet
      0096EC 35 00 50 C1      [ 1]   90 	mov	0x50c1+0, #0x00
                           000008    91 	Sstm8s_clk$CLK_DeInit$4 ==.
                                     92 ;	../SPL/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
                                     93 ; genPointerSet
      0096F0 35 E1 50 C4      [ 1]   94 	mov	0x50c4+0, #0xe1
                           00000C    95 	Sstm8s_clk$CLK_DeInit$5 ==.
                                     96 ;	../SPL/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
                                     97 ; genPointerSet
      0096F4 35 00 50 C5      [ 1]   98 	mov	0x50c5+0, #0x00
                           000010    99 	Sstm8s_clk$CLK_DeInit$6 ==.
                                    100 ;	../SPL/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
                                    101 ; genPointerSet
      0096F8 35 18 50 C6      [ 1]  102 	mov	0x50c6+0, #0x18
                           000014   103 	Sstm8s_clk$CLK_DeInit$7 ==.
                                    104 ;	../SPL/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
                                    105 ; genPointerSet
      0096FC 35 FF 50 C7      [ 1]  106 	mov	0x50c7+0, #0xff
                           000018   107 	Sstm8s_clk$CLK_DeInit$8 ==.
                                    108 ;	../SPL/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
                                    109 ; genPointerSet
      009700 35 FF 50 CA      [ 1]  110 	mov	0x50ca+0, #0xff
                           00001C   111 	Sstm8s_clk$CLK_DeInit$9 ==.
                                    112 ;	../SPL/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
                                    113 ; genPointerSet
      009704 35 00 50 C8      [ 1]  114 	mov	0x50c8+0, #0x00
                           000020   115 	Sstm8s_clk$CLK_DeInit$10 ==.
                                    116 ;	../SPL/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    117 ; genPointerSet
      009708 35 00 50 C9      [ 1]  118 	mov	0x50c9+0, #0x00
                           000024   119 	Sstm8s_clk$CLK_DeInit$11 ==.
                                    120 ;	../SPL/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
                                    121 ; genLabel
      00970C                        122 00101$:
                                    123 ; genPointerGet
      00970C C6 50 C9         [ 1]  124 	ld	a, 0x50c9
                                    125 ; genAnd
      00970F 44               [ 1]  126 	srl	a
      009710 24 03            [ 1]  127 	jrnc	00116$
      009712 CC 97 0C         [ 2]  128 	jp	00101$
      009715                        129 00116$:
                                    130 ; skipping generated iCode
                           00002D   131 	Sstm8s_clk$CLK_DeInit$12 ==.
                                    132 ;	../SPL/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    133 ; genPointerSet
      009715 35 00 50 C9      [ 1]  134 	mov	0x50c9+0, #0x00
                           000031   135 	Sstm8s_clk$CLK_DeInit$13 ==.
                                    136 ;	../SPL/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
                                    137 ; genPointerSet
      009719 35 00 50 CC      [ 1]  138 	mov	0x50cc+0, #0x00
                           000035   139 	Sstm8s_clk$CLK_DeInit$14 ==.
                                    140 ;	../SPL/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
                                    141 ; genPointerSet
      00971D 35 00 50 CD      [ 1]  142 	mov	0x50cd+0, #0x00
                                    143 ; genLabel
      009721                        144 00104$:
                           000039   145 	Sstm8s_clk$CLK_DeInit$15 ==.
                                    146 ;	../SPL/src/stm8s_clk.c: 88: }
                                    147 ; genEndFunction
                           000039   148 	Sstm8s_clk$CLK_DeInit$16 ==.
                           000039   149 	XG$CLK_DeInit$0$0 ==.
      009721 81               [ 4]  150 	ret
                           00003A   151 	Sstm8s_clk$CLK_DeInit$17 ==.
                           00003A   152 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$18 ==.
                                    153 ;	../SPL/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    154 ; genLabel
                                    155 ;	-----------------------------------------
                                    156 ;	 function CLK_FastHaltWakeUpCmd
                                    157 ;	-----------------------------------------
                                    158 ;	Register assignment is optimal.
                                    159 ;	Stack space usage: 0 bytes.
      009722                        160 _CLK_FastHaltWakeUpCmd:
                           00003A   161 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$19 ==.
                           00003A   162 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20 ==.
                                    163 ;	../SPL/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
                                    164 ; genPointerGet
      009722 C6 50 C0         [ 1]  165 	ld	a, 0x50c0
                           00003D   166 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21 ==.
                                    167 ;	../SPL/src/stm8s_clk.c: 104: if (NewState != DISABLE)
                                    168 ; genIfx
      009725 0D 03            [ 1]  169 	tnz	(0x03, sp)
      009727 26 03            [ 1]  170 	jrne	00111$
      009729 CC 97 34         [ 2]  171 	jp	00102$
      00972C                        172 00111$:
                           000044   173 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$22 ==.
                           000044   174 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23 ==.
                                    175 ;	../SPL/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
                                    176 ; genOr
      00972C AA 04            [ 1]  177 	or	a, #0x04
                                    178 ; genPointerSet
      00972E C7 50 C0         [ 1]  179 	ld	0x50c0, a
                           000049   180 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$24 ==.
                                    181 ; genGoto
      009731 CC 97 39         [ 2]  182 	jp	00104$
                                    183 ; genLabel
      009734                        184 00102$:
                           00004C   185 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$25 ==.
                           00004C   186 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$26 ==.
                                    187 ;	../SPL/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
                                    188 ; genAnd
      009734 A4 FB            [ 1]  189 	and	a, #0xfb
                                    190 ; genPointerSet
      009736 C7 50 C0         [ 1]  191 	ld	0x50c0, a
                           000051   192 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$27 ==.
                                    193 ; genLabel
      009739                        194 00104$:
                           000051   195 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$28 ==.
                                    196 ;	../SPL/src/stm8s_clk.c: 114: }
                                    197 ; genEndFunction
                           000051   198 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$29 ==.
                           000051   199 	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
      009739 81               [ 4]  200 	ret
                           000052   201 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$30 ==.
                           000052   202 	Sstm8s_clk$CLK_HSECmd$31 ==.
                                    203 ;	../SPL/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    204 ; genLabel
                                    205 ;	-----------------------------------------
                                    206 ;	 function CLK_HSECmd
                                    207 ;	-----------------------------------------
                                    208 ;	Register assignment is optimal.
                                    209 ;	Stack space usage: 0 bytes.
      00973A                        210 _CLK_HSECmd:
                           000052   211 	Sstm8s_clk$CLK_HSECmd$32 ==.
                           000052   212 	Sstm8s_clk$CLK_HSECmd$33 ==.
                                    213 ;	../SPL/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
                                    214 ; genPointerGet
      00973A C6 50 C1         [ 1]  215 	ld	a, 0x50c1
                           000055   216 	Sstm8s_clk$CLK_HSECmd$34 ==.
                                    217 ;	../SPL/src/stm8s_clk.c: 126: if (NewState != DISABLE)
                                    218 ; genIfx
      00973D 0D 03            [ 1]  219 	tnz	(0x03, sp)
      00973F 26 03            [ 1]  220 	jrne	00111$
      009741 CC 97 4C         [ 2]  221 	jp	00102$
      009744                        222 00111$:
                           00005C   223 	Sstm8s_clk$CLK_HSECmd$35 ==.
                           00005C   224 	Sstm8s_clk$CLK_HSECmd$36 ==.
                                    225 ;	../SPL/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
                                    226 ; genOr
      009744 AA 01            [ 1]  227 	or	a, #0x01
                                    228 ; genPointerSet
      009746 C7 50 C1         [ 1]  229 	ld	0x50c1, a
                           000061   230 	Sstm8s_clk$CLK_HSECmd$37 ==.
                                    231 ; genGoto
      009749 CC 97 51         [ 2]  232 	jp	00104$
                                    233 ; genLabel
      00974C                        234 00102$:
                           000064   235 	Sstm8s_clk$CLK_HSECmd$38 ==.
                           000064   236 	Sstm8s_clk$CLK_HSECmd$39 ==.
                                    237 ;	../SPL/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
                                    238 ; genAnd
      00974C A4 FE            [ 1]  239 	and	a, #0xfe
                                    240 ; genPointerSet
      00974E C7 50 C1         [ 1]  241 	ld	0x50c1, a
                           000069   242 	Sstm8s_clk$CLK_HSECmd$40 ==.
                                    243 ; genLabel
      009751                        244 00104$:
                           000069   245 	Sstm8s_clk$CLK_HSECmd$41 ==.
                                    246 ;	../SPL/src/stm8s_clk.c: 136: }
                                    247 ; genEndFunction
                           000069   248 	Sstm8s_clk$CLK_HSECmd$42 ==.
                           000069   249 	XG$CLK_HSECmd$0$0 ==.
      009751 81               [ 4]  250 	ret
                           00006A   251 	Sstm8s_clk$CLK_HSECmd$43 ==.
                           00006A   252 	Sstm8s_clk$CLK_HSICmd$44 ==.
                                    253 ;	../SPL/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    254 ; genLabel
                                    255 ;	-----------------------------------------
                                    256 ;	 function CLK_HSICmd
                                    257 ;	-----------------------------------------
                                    258 ;	Register assignment is optimal.
                                    259 ;	Stack space usage: 0 bytes.
      009752                        260 _CLK_HSICmd:
                           00006A   261 	Sstm8s_clk$CLK_HSICmd$45 ==.
                           00006A   262 	Sstm8s_clk$CLK_HSICmd$46 ==.
                                    263 ;	../SPL/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
                                    264 ; genPointerGet
      009752 C6 50 C0         [ 1]  265 	ld	a, 0x50c0
                           00006D   266 	Sstm8s_clk$CLK_HSICmd$47 ==.
                                    267 ;	../SPL/src/stm8s_clk.c: 148: if (NewState != DISABLE)
                                    268 ; genIfx
      009755 0D 03            [ 1]  269 	tnz	(0x03, sp)
      009757 26 03            [ 1]  270 	jrne	00111$
      009759 CC 97 64         [ 2]  271 	jp	00102$
      00975C                        272 00111$:
                           000074   273 	Sstm8s_clk$CLK_HSICmd$48 ==.
                           000074   274 	Sstm8s_clk$CLK_HSICmd$49 ==.
                                    275 ;	../SPL/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
                                    276 ; genOr
      00975C AA 01            [ 1]  277 	or	a, #0x01
                                    278 ; genPointerSet
      00975E C7 50 C0         [ 1]  279 	ld	0x50c0, a
                           000079   280 	Sstm8s_clk$CLK_HSICmd$50 ==.
                                    281 ; genGoto
      009761 CC 97 69         [ 2]  282 	jp	00104$
                                    283 ; genLabel
      009764                        284 00102$:
                           00007C   285 	Sstm8s_clk$CLK_HSICmd$51 ==.
                           00007C   286 	Sstm8s_clk$CLK_HSICmd$52 ==.
                                    287 ;	../SPL/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
                                    288 ; genAnd
      009764 A4 FE            [ 1]  289 	and	a, #0xfe
                                    290 ; genPointerSet
      009766 C7 50 C0         [ 1]  291 	ld	0x50c0, a
                           000081   292 	Sstm8s_clk$CLK_HSICmd$53 ==.
                                    293 ; genLabel
      009769                        294 00104$:
                           000081   295 	Sstm8s_clk$CLK_HSICmd$54 ==.
                                    296 ;	../SPL/src/stm8s_clk.c: 158: }
                                    297 ; genEndFunction
                           000081   298 	Sstm8s_clk$CLK_HSICmd$55 ==.
                           000081   299 	XG$CLK_HSICmd$0$0 ==.
      009769 81               [ 4]  300 	ret
                           000082   301 	Sstm8s_clk$CLK_HSICmd$56 ==.
                           000082   302 	Sstm8s_clk$CLK_LSICmd$57 ==.
                                    303 ;	../SPL/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    304 ; genLabel
                                    305 ;	-----------------------------------------
                                    306 ;	 function CLK_LSICmd
                                    307 ;	-----------------------------------------
                                    308 ;	Register assignment is optimal.
                                    309 ;	Stack space usage: 0 bytes.
      00976A                        310 _CLK_LSICmd:
                           000082   311 	Sstm8s_clk$CLK_LSICmd$58 ==.
                           000082   312 	Sstm8s_clk$CLK_LSICmd$59 ==.
                                    313 ;	../SPL/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
                                    314 ; genPointerGet
      00976A C6 50 C0         [ 1]  315 	ld	a, 0x50c0
                           000085   316 	Sstm8s_clk$CLK_LSICmd$60 ==.
                                    317 ;	../SPL/src/stm8s_clk.c: 171: if (NewState != DISABLE)
                                    318 ; genIfx
      00976D 0D 03            [ 1]  319 	tnz	(0x03, sp)
      00976F 26 03            [ 1]  320 	jrne	00111$
      009771 CC 97 7C         [ 2]  321 	jp	00102$
      009774                        322 00111$:
                           00008C   323 	Sstm8s_clk$CLK_LSICmd$61 ==.
                           00008C   324 	Sstm8s_clk$CLK_LSICmd$62 ==.
                                    325 ;	../SPL/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
                                    326 ; genOr
      009774 AA 08            [ 1]  327 	or	a, #0x08
                                    328 ; genPointerSet
      009776 C7 50 C0         [ 1]  329 	ld	0x50c0, a
                           000091   330 	Sstm8s_clk$CLK_LSICmd$63 ==.
                                    331 ; genGoto
      009779 CC 97 81         [ 2]  332 	jp	00104$
                                    333 ; genLabel
      00977C                        334 00102$:
                           000094   335 	Sstm8s_clk$CLK_LSICmd$64 ==.
                           000094   336 	Sstm8s_clk$CLK_LSICmd$65 ==.
                                    337 ;	../SPL/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
                                    338 ; genAnd
      00977C A4 F7            [ 1]  339 	and	a, #0xf7
                                    340 ; genPointerSet
      00977E C7 50 C0         [ 1]  341 	ld	0x50c0, a
                           000099   342 	Sstm8s_clk$CLK_LSICmd$66 ==.
                                    343 ; genLabel
      009781                        344 00104$:
                           000099   345 	Sstm8s_clk$CLK_LSICmd$67 ==.
                                    346 ;	../SPL/src/stm8s_clk.c: 181: }
                                    347 ; genEndFunction
                           000099   348 	Sstm8s_clk$CLK_LSICmd$68 ==.
                           000099   349 	XG$CLK_LSICmd$0$0 ==.
      009781 81               [ 4]  350 	ret
                           00009A   351 	Sstm8s_clk$CLK_LSICmd$69 ==.
                           00009A   352 	Sstm8s_clk$CLK_CCOCmd$70 ==.
                                    353 ;	../SPL/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    354 ; genLabel
                                    355 ;	-----------------------------------------
                                    356 ;	 function CLK_CCOCmd
                                    357 ;	-----------------------------------------
                                    358 ;	Register assignment is optimal.
                                    359 ;	Stack space usage: 0 bytes.
      009782                        360 _CLK_CCOCmd:
                           00009A   361 	Sstm8s_clk$CLK_CCOCmd$71 ==.
                           00009A   362 	Sstm8s_clk$CLK_CCOCmd$72 ==.
                                    363 ;	../SPL/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    364 ; genPointerGet
      009782 C6 50 C9         [ 1]  365 	ld	a, 0x50c9
                           00009D   366 	Sstm8s_clk$CLK_CCOCmd$73 ==.
                                    367 ;	../SPL/src/stm8s_clk.c: 194: if (NewState != DISABLE)
                                    368 ; genIfx
      009785 0D 03            [ 1]  369 	tnz	(0x03, sp)
      009787 26 03            [ 1]  370 	jrne	00111$
      009789 CC 97 94         [ 2]  371 	jp	00102$
      00978C                        372 00111$:
                           0000A4   373 	Sstm8s_clk$CLK_CCOCmd$74 ==.
                           0000A4   374 	Sstm8s_clk$CLK_CCOCmd$75 ==.
                                    375 ;	../SPL/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    376 ; genOr
      00978C AA 01            [ 1]  377 	or	a, #0x01
                                    378 ; genPointerSet
      00978E C7 50 C9         [ 1]  379 	ld	0x50c9, a
                           0000A9   380 	Sstm8s_clk$CLK_CCOCmd$76 ==.
                                    381 ; genGoto
      009791 CC 97 99         [ 2]  382 	jp	00104$
                                    383 ; genLabel
      009794                        384 00102$:
                           0000AC   385 	Sstm8s_clk$CLK_CCOCmd$77 ==.
                           0000AC   386 	Sstm8s_clk$CLK_CCOCmd$78 ==.
                                    387 ;	../SPL/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
                                    388 ; genAnd
      009794 A4 FE            [ 1]  389 	and	a, #0xfe
                                    390 ; genPointerSet
      009796 C7 50 C9         [ 1]  391 	ld	0x50c9, a
                           0000B1   392 	Sstm8s_clk$CLK_CCOCmd$79 ==.
                                    393 ; genLabel
      009799                        394 00104$:
                           0000B1   395 	Sstm8s_clk$CLK_CCOCmd$80 ==.
                                    396 ;	../SPL/src/stm8s_clk.c: 204: }
                                    397 ; genEndFunction
                           0000B1   398 	Sstm8s_clk$CLK_CCOCmd$81 ==.
                           0000B1   399 	XG$CLK_CCOCmd$0$0 ==.
      009799 81               [ 4]  400 	ret
                           0000B2   401 	Sstm8s_clk$CLK_CCOCmd$82 ==.
                           0000B2   402 	Sstm8s_clk$CLK_ClockSwitchCmd$83 ==.
                                    403 ;	../SPL/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    404 ; genLabel
                                    405 ;	-----------------------------------------
                                    406 ;	 function CLK_ClockSwitchCmd
                                    407 ;	-----------------------------------------
                                    408 ;	Register assignment is optimal.
                                    409 ;	Stack space usage: 0 bytes.
      00979A                        410 _CLK_ClockSwitchCmd:
                           0000B2   411 	Sstm8s_clk$CLK_ClockSwitchCmd$84 ==.
                           0000B2   412 	Sstm8s_clk$CLK_ClockSwitchCmd$85 ==.
                                    413 ;	../SPL/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
                                    414 ; genPointerGet
      00979A C6 50 C5         [ 1]  415 	ld	a, 0x50c5
                           0000B5   416 	Sstm8s_clk$CLK_ClockSwitchCmd$86 ==.
                                    417 ;	../SPL/src/stm8s_clk.c: 218: if (NewState != DISABLE )
                                    418 ; genIfx
      00979D 0D 03            [ 1]  419 	tnz	(0x03, sp)
      00979F 26 03            [ 1]  420 	jrne	00111$
      0097A1 CC 97 AC         [ 2]  421 	jp	00102$
      0097A4                        422 00111$:
                           0000BC   423 	Sstm8s_clk$CLK_ClockSwitchCmd$87 ==.
                           0000BC   424 	Sstm8s_clk$CLK_ClockSwitchCmd$88 ==.
                                    425 ;	../SPL/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
                                    426 ; genOr
      0097A4 AA 02            [ 1]  427 	or	a, #0x02
                                    428 ; genPointerSet
      0097A6 C7 50 C5         [ 1]  429 	ld	0x50c5, a
                           0000C1   430 	Sstm8s_clk$CLK_ClockSwitchCmd$89 ==.
                                    431 ; genGoto
      0097A9 CC 97 B1         [ 2]  432 	jp	00104$
                                    433 ; genLabel
      0097AC                        434 00102$:
                           0000C4   435 	Sstm8s_clk$CLK_ClockSwitchCmd$90 ==.
                           0000C4   436 	Sstm8s_clk$CLK_ClockSwitchCmd$91 ==.
                                    437 ;	../SPL/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
                                    438 ; genAnd
      0097AC A4 FD            [ 1]  439 	and	a, #0xfd
                                    440 ; genPointerSet
      0097AE C7 50 C5         [ 1]  441 	ld	0x50c5, a
                           0000C9   442 	Sstm8s_clk$CLK_ClockSwitchCmd$92 ==.
                                    443 ; genLabel
      0097B1                        444 00104$:
                           0000C9   445 	Sstm8s_clk$CLK_ClockSwitchCmd$93 ==.
                                    446 ;	../SPL/src/stm8s_clk.c: 228: }
                                    447 ; genEndFunction
                           0000C9   448 	Sstm8s_clk$CLK_ClockSwitchCmd$94 ==.
                           0000C9   449 	XG$CLK_ClockSwitchCmd$0$0 ==.
      0097B1 81               [ 4]  450 	ret
                           0000CA   451 	Sstm8s_clk$CLK_ClockSwitchCmd$95 ==.
                           0000CA   452 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$96 ==.
                                    453 ;	../SPL/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    454 ; genLabel
                                    455 ;	-----------------------------------------
                                    456 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    457 ;	-----------------------------------------
                                    458 ;	Register assignment is optimal.
                                    459 ;	Stack space usage: 0 bytes.
      0097B2                        460 _CLK_SlowActiveHaltWakeUpCmd:
                           0000CA   461 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97 ==.
                           0000CA   462 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$98 ==.
                                    463 ;	../SPL/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
                                    464 ; genPointerGet
      0097B2 C6 50 C0         [ 1]  465 	ld	a, 0x50c0
                           0000CD   466 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$99 ==.
                                    467 ;	../SPL/src/stm8s_clk.c: 243: if (NewState != DISABLE)
                                    468 ; genIfx
      0097B5 0D 03            [ 1]  469 	tnz	(0x03, sp)
      0097B7 26 03            [ 1]  470 	jrne	00111$
      0097B9 CC 97 C4         [ 2]  471 	jp	00102$
      0097BC                        472 00111$:
                           0000D4   473 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$100 ==.
                           0000D4   474 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$101 ==.
                                    475 ;	../SPL/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
                                    476 ; genOr
      0097BC AA 20            [ 1]  477 	or	a, #0x20
                                    478 ; genPointerSet
      0097BE C7 50 C0         [ 1]  479 	ld	0x50c0, a
                           0000D9   480 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$102 ==.
                                    481 ; genGoto
      0097C1 CC 97 C9         [ 2]  482 	jp	00104$
                                    483 ; genLabel
      0097C4                        484 00102$:
                           0000DC   485 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$103 ==.
                           0000DC   486 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$104 ==.
                                    487 ;	../SPL/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
                                    488 ; genAnd
      0097C4 A4 DF            [ 1]  489 	and	a, #0xdf
                                    490 ; genPointerSet
      0097C6 C7 50 C0         [ 1]  491 	ld	0x50c0, a
                           0000E1   492 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$105 ==.
                                    493 ; genLabel
      0097C9                        494 00104$:
                           0000E1   495 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$106 ==.
                                    496 ;	../SPL/src/stm8s_clk.c: 253: }
                                    497 ; genEndFunction
                           0000E1   498 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$107 ==.
                           0000E1   499 	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
      0097C9 81               [ 4]  500 	ret
                           0000E2   501 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$108 ==.
                           0000E2   502 	Sstm8s_clk$CLK_PeripheralClockConfig$109 ==.
                                    503 ;	../SPL/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    504 ; genLabel
                                    505 ;	-----------------------------------------
                                    506 ;	 function CLK_PeripheralClockConfig
                                    507 ;	-----------------------------------------
                                    508 ;	Register assignment is optimal.
                                    509 ;	Stack space usage: 2 bytes.
      0097CA                        510 _CLK_PeripheralClockConfig:
                           0000E2   511 	Sstm8s_clk$CLK_PeripheralClockConfig$110 ==.
      0097CA 89               [ 2]  512 	pushw	x
                           0000E3   513 	Sstm8s_clk$CLK_PeripheralClockConfig$111 ==.
                           0000E3   514 	Sstm8s_clk$CLK_PeripheralClockConfig$112 ==.
                                    515 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    516 ; genAnd
      0097CB 7B 05            [ 1]  517 	ld	a, (0x05, sp)
      0097CD A4 0F            [ 1]  518 	and	a, #0x0f
                                    519 ; genLeftShift
      0097CF 88               [ 1]  520 	push	a
                           0000E8   521 	Sstm8s_clk$CLK_PeripheralClockConfig$113 ==.
      0097D0 A6 01            [ 1]  522 	ld	a, #0x01
      0097D2 6B 02            [ 1]  523 	ld	(0x02, sp), a
      0097D4 84               [ 1]  524 	pop	a
                           0000ED   525 	Sstm8s_clk$CLK_PeripheralClockConfig$114 ==.
      0097D5 4D               [ 1]  526 	tnz	a
      0097D6 27 05            [ 1]  527 	jreq	00128$
      0097D8                        528 00127$:
      0097D8 08 01            [ 1]  529 	sll	(0x01, sp)
      0097DA 4A               [ 1]  530 	dec	a
      0097DB 26 FB            [ 1]  531 	jrne	00127$
      0097DD                        532 00128$:
                           0000F5   533 	Sstm8s_clk$CLK_PeripheralClockConfig$115 ==.
                                    534 ;	../SPL/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    535 ; genCpl
      0097DD 7B 01            [ 1]  536 	ld	a, (0x01, sp)
      0097DF 43               [ 1]  537 	cpl	a
      0097E0 6B 02            [ 1]  538 	ld	(0x02, sp), a
                           0000FA   539 	Sstm8s_clk$CLK_PeripheralClockConfig$116 ==.
                                    540 ;	../SPL/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
                                    541 ; genAnd
      0097E2 7B 05            [ 1]  542 	ld	a, (0x05, sp)
      0097E4 A5 10            [ 1]  543 	bcp	a, #0x10
      0097E6 27 03            [ 1]  544 	jreq	00129$
      0097E8 CC 98 05         [ 2]  545 	jp	00108$
      0097EB                        546 00129$:
                                    547 ; skipping generated iCode
                           000103   548 	Sstm8s_clk$CLK_PeripheralClockConfig$117 ==.
                                    549 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    550 ; genPointerGet
      0097EB C6 50 C7         [ 1]  551 	ld	a, 0x50c7
                           000106   552 	Sstm8s_clk$CLK_PeripheralClockConfig$118 ==.
                           000106   553 	Sstm8s_clk$CLK_PeripheralClockConfig$119 ==.
                                    554 ;	../SPL/src/stm8s_clk.c: 271: if (NewState != DISABLE)
                                    555 ; genIfx
      0097EE 0D 06            [ 1]  556 	tnz	(0x06, sp)
      0097F0 26 03            [ 1]  557 	jrne	00130$
      0097F2 CC 97 FD         [ 2]  558 	jp	00102$
      0097F5                        559 00130$:
                           00010D   560 	Sstm8s_clk$CLK_PeripheralClockConfig$120 ==.
                           00010D   561 	Sstm8s_clk$CLK_PeripheralClockConfig$121 ==.
                                    562 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    563 ; genOr
      0097F5 1A 01            [ 1]  564 	or	a, (0x01, sp)
                                    565 ; genPointerSet
      0097F7 C7 50 C7         [ 1]  566 	ld	0x50c7, a
                           000112   567 	Sstm8s_clk$CLK_PeripheralClockConfig$122 ==.
                                    568 ; genGoto
      0097FA CC 98 1C         [ 2]  569 	jp	00110$
                                    570 ; genLabel
      0097FD                        571 00102$:
                           000115   572 	Sstm8s_clk$CLK_PeripheralClockConfig$123 ==.
                           000115   573 	Sstm8s_clk$CLK_PeripheralClockConfig$124 ==.
                                    574 ;	../SPL/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    575 ; genAnd
      0097FD 14 02            [ 1]  576 	and	a, (0x02, sp)
                                    577 ; genPointerSet
      0097FF C7 50 C7         [ 1]  578 	ld	0x50c7, a
                           00011A   579 	Sstm8s_clk$CLK_PeripheralClockConfig$125 ==.
                                    580 ; genGoto
      009802 CC 98 1C         [ 2]  581 	jp	00110$
                                    582 ; genLabel
      009805                        583 00108$:
                           00011D   584 	Sstm8s_clk$CLK_PeripheralClockConfig$126 ==.
                                    585 ;	../SPL/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    586 ; genPointerGet
      009805 C6 50 CA         [ 1]  587 	ld	a, 0x50ca
                           000120   588 	Sstm8s_clk$CLK_PeripheralClockConfig$127 ==.
                           000120   589 	Sstm8s_clk$CLK_PeripheralClockConfig$128 ==.
                                    590 ;	../SPL/src/stm8s_clk.c: 284: if (NewState != DISABLE)
                                    591 ; genIfx
      009808 0D 06            [ 1]  592 	tnz	(0x06, sp)
      00980A 26 03            [ 1]  593 	jrne	00131$
      00980C CC 98 17         [ 2]  594 	jp	00105$
      00980F                        595 00131$:
                           000127   596 	Sstm8s_clk$CLK_PeripheralClockConfig$129 ==.
                           000127   597 	Sstm8s_clk$CLK_PeripheralClockConfig$130 ==.
                                    598 ;	../SPL/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    599 ; genOr
      00980F 1A 01            [ 1]  600 	or	a, (0x01, sp)
                                    601 ; genPointerSet
      009811 C7 50 CA         [ 1]  602 	ld	0x50ca, a
                           00012C   603 	Sstm8s_clk$CLK_PeripheralClockConfig$131 ==.
                                    604 ; genGoto
      009814 CC 98 1C         [ 2]  605 	jp	00110$
                                    606 ; genLabel
      009817                        607 00105$:
                           00012F   608 	Sstm8s_clk$CLK_PeripheralClockConfig$132 ==.
                           00012F   609 	Sstm8s_clk$CLK_PeripheralClockConfig$133 ==.
                                    610 ;	../SPL/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    611 ; genAnd
      009817 14 02            [ 1]  612 	and	a, (0x02, sp)
                                    613 ; genPointerSet
      009819 C7 50 CA         [ 1]  614 	ld	0x50ca, a
                           000134   615 	Sstm8s_clk$CLK_PeripheralClockConfig$134 ==.
                                    616 ; genLabel
      00981C                        617 00110$:
                           000134   618 	Sstm8s_clk$CLK_PeripheralClockConfig$135 ==.
                                    619 ;	../SPL/src/stm8s_clk.c: 295: }
                                    620 ; genEndFunction
      00981C 85               [ 2]  621 	popw	x
                           000135   622 	Sstm8s_clk$CLK_PeripheralClockConfig$136 ==.
                           000135   623 	Sstm8s_clk$CLK_PeripheralClockConfig$137 ==.
                           000135   624 	XG$CLK_PeripheralClockConfig$0$0 ==.
      00981D 81               [ 4]  625 	ret
                           000136   626 	Sstm8s_clk$CLK_PeripheralClockConfig$138 ==.
                           000136   627 	Sstm8s_clk$CLK_ClockSwitchConfig$139 ==.
                                    628 ;	../SPL/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    629 ; genLabel
                                    630 ;	-----------------------------------------
                                    631 ;	 function CLK_ClockSwitchConfig
                                    632 ;	-----------------------------------------
                                    633 ;	Register assignment might be sub-optimal.
                                    634 ;	Stack space usage: 1 bytes.
      00981E                        635 _CLK_ClockSwitchConfig:
                           000136   636 	Sstm8s_clk$CLK_ClockSwitchConfig$140 ==.
      00981E 88               [ 1]  637 	push	a
                           000137   638 	Sstm8s_clk$CLK_ClockSwitchConfig$141 ==.
                           000137   639 	Sstm8s_clk$CLK_ClockSwitchConfig$142 ==.
                                    640 ;	../SPL/src/stm8s_clk.c: 312: uint16_t DownCounter = CLK_TIMEOUT;
                                    641 ; genAssign
      00981F 5F               [ 1]  642 	clrw	x
      009820 5A               [ 2]  643 	decw	x
                           000139   644 	Sstm8s_clk$CLK_ClockSwitchConfig$143 ==.
                                    645 ;	../SPL/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
                                    646 ; genPointerGet
      009821 C6 50 C3         [ 1]  647 	ld	a, 0x50c3
      009824 6B 01            [ 1]  648 	ld	(0x01, sp), a
                           00013E   649 	Sstm8s_clk$CLK_ClockSwitchConfig$144 ==.
                                    650 ;	../SPL/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
                                    651 ; genPointerGet
      009826 C6 50 C5         [ 1]  652 	ld	a, 0x50c5
                           000141   653 	Sstm8s_clk$CLK_ClockSwitchConfig$145 ==.
                                    654 ;	../SPL/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
                                    655 ; genCmpEQorNE
      009829 88               [ 1]  656 	push	a
                           000142   657 	Sstm8s_clk$CLK_ClockSwitchConfig$146 ==.
      00982A 7B 05            [ 1]  658 	ld	a, (0x05, sp)
      00982C 4A               [ 1]  659 	dec	a
      00982D 84               [ 1]  660 	pop	a
                           000146   661 	Sstm8s_clk$CLK_ClockSwitchConfig$147 ==.
      00982E 26 03            [ 1]  662 	jrne	00232$
      009830 CC 98 36         [ 2]  663 	jp	00233$
      009833                        664 00232$:
      009833 CC 98 7D         [ 2]  665 	jp	00122$
      009836                        666 00233$:
                           00014E   667 	Sstm8s_clk$CLK_ClockSwitchConfig$148 ==.
                                    668 ; skipping generated iCode
                           00014E   669 	Sstm8s_clk$CLK_ClockSwitchConfig$149 ==.
                           00014E   670 	Sstm8s_clk$CLK_ClockSwitchConfig$150 ==.
                                    671 ;	../SPL/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
                                    672 ; genOr
      009836 AA 02            [ 1]  673 	or	a, #0x02
                                    674 ; genPointerSet
      009838 C7 50 C5         [ 1]  675 	ld	0x50c5, a
                           000153   676 	Sstm8s_clk$CLK_ClockSwitchConfig$151 ==.
                                    677 ; genPointerGet
      00983B C6 50 C5         [ 1]  678 	ld	a, 0x50c5
                           000156   679 	Sstm8s_clk$CLK_ClockSwitchConfig$152 ==.
                                    680 ;	../SPL/src/stm8s_clk.c: 331: if (ITState != DISABLE)
                                    681 ; genIfx
      00983E 0D 06            [ 1]  682 	tnz	(0x06, sp)
      009840 26 03            [ 1]  683 	jrne	00234$
      009842 CC 98 4D         [ 2]  684 	jp	00102$
      009845                        685 00234$:
                           00015D   686 	Sstm8s_clk$CLK_ClockSwitchConfig$153 ==.
                           00015D   687 	Sstm8s_clk$CLK_ClockSwitchConfig$154 ==.
                                    688 ;	../SPL/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
                                    689 ; genOr
      009845 AA 04            [ 1]  690 	or	a, #0x04
                                    691 ; genPointerSet
      009847 C7 50 C5         [ 1]  692 	ld	0x50c5, a
                           000162   693 	Sstm8s_clk$CLK_ClockSwitchConfig$155 ==.
                                    694 ; genGoto
      00984A CC 98 52         [ 2]  695 	jp	00103$
                                    696 ; genLabel
      00984D                        697 00102$:
                           000165   698 	Sstm8s_clk$CLK_ClockSwitchConfig$156 ==.
                           000165   699 	Sstm8s_clk$CLK_ClockSwitchConfig$157 ==.
                                    700 ;	../SPL/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
                                    701 ; genAnd
      00984D A4 FB            [ 1]  702 	and	a, #0xfb
                                    703 ; genPointerSet
      00984F C7 50 C5         [ 1]  704 	ld	0x50c5, a
                           00016A   705 	Sstm8s_clk$CLK_ClockSwitchConfig$158 ==.
                                    706 ; genLabel
      009852                        707 00103$:
                           00016A   708 	Sstm8s_clk$CLK_ClockSwitchConfig$159 ==.
                                    709 ;	../SPL/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
                                    710 ; genPointerSet
      009852 90 AE 50 C4      [ 2]  711 	ldw	y, #0x50c4
      009856 7B 05            [ 1]  712 	ld	a, (0x05, sp)
      009858 90 F7            [ 1]  713 	ld	(y), a
                           000172   714 	Sstm8s_clk$CLK_ClockSwitchConfig$160 ==.
                           000172   715 	Sstm8s_clk$CLK_ClockSwitchConfig$161 ==.
                                    716 ;	../SPL/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
                                    717 ; genAssign
                                    718 ; genLabel
      00985A                        719 00105$:
                                    720 ; genPointerGet
      00985A C6 50 C5         [ 1]  721 	ld	a, 0x50c5
                                    722 ; genAnd
      00985D 44               [ 1]  723 	srl	a
      00985E 25 03            [ 1]  724 	jrc	00235$
      009860 CC 98 6D         [ 2]  725 	jp	00157$
      009863                        726 00235$:
                                    727 ; skipping generated iCode
                                    728 ; genIfx
      009863 5D               [ 2]  729 	tnzw	x
      009864 26 03            [ 1]  730 	jrne	00236$
      009866 CC 98 6D         [ 2]  731 	jp	00157$
      009869                        732 00236$:
                           000181   733 	Sstm8s_clk$CLK_ClockSwitchConfig$162 ==.
                           000181   734 	Sstm8s_clk$CLK_ClockSwitchConfig$163 ==.
                                    735 ;	../SPL/src/stm8s_clk.c: 346: DownCounter--;
                                    736 ; genMinus
      009869 5A               [ 2]  737 	decw	x
                           000182   738 	Sstm8s_clk$CLK_ClockSwitchConfig$164 ==.
                                    739 ; genGoto
      00986A CC 98 5A         [ 2]  740 	jp	00105$
                           000185   741 	Sstm8s_clk$CLK_ClockSwitchConfig$165 ==.
                                    742 ; genLabel
      00986D                        743 00157$:
                                    744 ; genAssign
                           000185   745 	Sstm8s_clk$CLK_ClockSwitchConfig$166 ==.
                                    746 ;	../SPL/src/stm8s_clk.c: 349: if(DownCounter != 0)
                                    747 ; genIfx
      00986D 5D               [ 2]  748 	tnzw	x
      00986E 26 03            [ 1]  749 	jrne	00237$
      009870 CC 98 79         [ 2]  750 	jp	00109$
      009873                        751 00237$:
                           00018B   752 	Sstm8s_clk$CLK_ClockSwitchConfig$167 ==.
                           00018B   753 	Sstm8s_clk$CLK_ClockSwitchConfig$168 ==.
                                    754 ;	../SPL/src/stm8s_clk.c: 351: Swif = SUCCESS;
                                    755 ; genAssign
      009873 A6 01            [ 1]  756 	ld	a, #0x01
      009875 97               [ 1]  757 	ld	xl, a
                           00018E   758 	Sstm8s_clk$CLK_ClockSwitchConfig$169 ==.
                                    759 ; genGoto
      009876 CC 98 C2         [ 2]  760 	jp	00123$
                                    761 ; genLabel
      009879                        762 00109$:
                           000191   763 	Sstm8s_clk$CLK_ClockSwitchConfig$170 ==.
                           000191   764 	Sstm8s_clk$CLK_ClockSwitchConfig$171 ==.
                                    765 ;	../SPL/src/stm8s_clk.c: 355: Swif = ERROR;
                                    766 ; genAssign
      009879 5F               [ 1]  767 	clrw	x
                           000192   768 	Sstm8s_clk$CLK_ClockSwitchConfig$172 ==.
                                    769 ; genGoto
      00987A CC 98 C2         [ 2]  770 	jp	00123$
                                    771 ; genLabel
      00987D                        772 00122$:
                           000195   773 	Sstm8s_clk$CLK_ClockSwitchConfig$173 ==.
                           000195   774 	Sstm8s_clk$CLK_ClockSwitchConfig$174 ==.
                                    775 ;	../SPL/src/stm8s_clk.c: 361: if (ITState != DISABLE)
                                    776 ; genIfx
      00987D 0D 06            [ 1]  777 	tnz	(0x06, sp)
      00987F 26 03            [ 1]  778 	jrne	00238$
      009881 CC 98 8C         [ 2]  779 	jp	00112$
      009884                        780 00238$:
                           00019C   781 	Sstm8s_clk$CLK_ClockSwitchConfig$175 ==.
                           00019C   782 	Sstm8s_clk$CLK_ClockSwitchConfig$176 ==.
                                    783 ;	../SPL/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
                                    784 ; genOr
      009884 AA 04            [ 1]  785 	or	a, #0x04
                                    786 ; genPointerSet
      009886 C7 50 C5         [ 1]  787 	ld	0x50c5, a
                           0001A1   788 	Sstm8s_clk$CLK_ClockSwitchConfig$177 ==.
                                    789 ; genGoto
      009889 CC 98 91         [ 2]  790 	jp	00113$
                                    791 ; genLabel
      00988C                        792 00112$:
                           0001A4   793 	Sstm8s_clk$CLK_ClockSwitchConfig$178 ==.
                           0001A4   794 	Sstm8s_clk$CLK_ClockSwitchConfig$179 ==.
                                    795 ;	../SPL/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
                                    796 ; genAnd
      00988C A4 FB            [ 1]  797 	and	a, #0xfb
                                    798 ; genPointerSet
      00988E C7 50 C5         [ 1]  799 	ld	0x50c5, a
                           0001A9   800 	Sstm8s_clk$CLK_ClockSwitchConfig$180 ==.
                                    801 ; genLabel
      009891                        802 00113$:
                           0001A9   803 	Sstm8s_clk$CLK_ClockSwitchConfig$181 ==.
                                    804 ;	../SPL/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
                                    805 ; genPointerSet
      009891 90 AE 50 C4      [ 2]  806 	ldw	y, #0x50c4
      009895 7B 05            [ 1]  807 	ld	a, (0x05, sp)
      009897 90 F7            [ 1]  808 	ld	(y), a
                           0001B1   809 	Sstm8s_clk$CLK_ClockSwitchConfig$182 ==.
                           0001B1   810 	Sstm8s_clk$CLK_ClockSwitchConfig$183 ==.
                                    811 ;	../SPL/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
                                    812 ; genAssign
                                    813 ; genLabel
      009899                        814 00115$:
                                    815 ; genPointerGet
      009899 C6 50 C5         [ 1]  816 	ld	a, 0x50c5
                                    817 ; genAnd
      00989C A5 08            [ 1]  818 	bcp	a, #0x08
      00989E 26 03            [ 1]  819 	jrne	00239$
      0098A0 CC 98 AD         [ 2]  820 	jp	00158$
      0098A3                        821 00239$:
                                    822 ; skipping generated iCode
                                    823 ; genIfx
      0098A3 5D               [ 2]  824 	tnzw	x
      0098A4 26 03            [ 1]  825 	jrne	00240$
      0098A6 CC 98 AD         [ 2]  826 	jp	00158$
      0098A9                        827 00240$:
                           0001C1   828 	Sstm8s_clk$CLK_ClockSwitchConfig$184 ==.
                           0001C1   829 	Sstm8s_clk$CLK_ClockSwitchConfig$185 ==.
                                    830 ;	../SPL/src/stm8s_clk.c: 376: DownCounter--;
                                    831 ; genMinus
      0098A9 5A               [ 2]  832 	decw	x
                           0001C2   833 	Sstm8s_clk$CLK_ClockSwitchConfig$186 ==.
                                    834 ; genGoto
      0098AA CC 98 99         [ 2]  835 	jp	00115$
                           0001C5   836 	Sstm8s_clk$CLK_ClockSwitchConfig$187 ==.
                                    837 ; genLabel
      0098AD                        838 00158$:
                                    839 ; genAssign
                           0001C5   840 	Sstm8s_clk$CLK_ClockSwitchConfig$188 ==.
                                    841 ;	../SPL/src/stm8s_clk.c: 379: if(DownCounter != 0)
                                    842 ; genIfx
      0098AD 5D               [ 2]  843 	tnzw	x
      0098AE 26 03            [ 1]  844 	jrne	00241$
      0098B0 CC 98 C1         [ 2]  845 	jp	00119$
      0098B3                        846 00241$:
                           0001CB   847 	Sstm8s_clk$CLK_ClockSwitchConfig$189 ==.
                           0001CB   848 	Sstm8s_clk$CLK_ClockSwitchConfig$190 ==.
                                    849 ;	../SPL/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
                                    850 ; genPointerGet
      0098B3 C6 50 C5         [ 1]  851 	ld	a, 0x50c5
                                    852 ; genOr
      0098B6 AA 02            [ 1]  853 	or	a, #0x02
                                    854 ; genPointerSet
      0098B8 C7 50 C5         [ 1]  855 	ld	0x50c5, a
                           0001D3   856 	Sstm8s_clk$CLK_ClockSwitchConfig$191 ==.
                                    857 ;	../SPL/src/stm8s_clk.c: 383: Swif = SUCCESS;
                                    858 ; genAssign
      0098BB A6 01            [ 1]  859 	ld	a, #0x01
      0098BD 97               [ 1]  860 	ld	xl, a
                           0001D6   861 	Sstm8s_clk$CLK_ClockSwitchConfig$192 ==.
                                    862 ; genGoto
      0098BE CC 98 C2         [ 2]  863 	jp	00123$
                                    864 ; genLabel
      0098C1                        865 00119$:
                           0001D9   866 	Sstm8s_clk$CLK_ClockSwitchConfig$193 ==.
                           0001D9   867 	Sstm8s_clk$CLK_ClockSwitchConfig$194 ==.
                                    868 ;	../SPL/src/stm8s_clk.c: 387: Swif = ERROR;
                                    869 ; genAssign
      0098C1 5F               [ 1]  870 	clrw	x
                           0001DA   871 	Sstm8s_clk$CLK_ClockSwitchConfig$195 ==.
                                    872 ; genLabel
      0098C2                        873 00123$:
                           0001DA   874 	Sstm8s_clk$CLK_ClockSwitchConfig$196 ==.
                                    875 ;	../SPL/src/stm8s_clk.c: 390: if(Swif != ERROR)
                                    876 ; genIfx
      0098C2 9F               [ 1]  877 	ld	a, xl
      0098C3 4D               [ 1]  878 	tnz	a
      0098C4 26 03            [ 1]  879 	jrne	00242$
      0098C6 CC 99 20         [ 2]  880 	jp	00136$
      0098C9                        881 00242$:
                           0001E1   882 	Sstm8s_clk$CLK_ClockSwitchConfig$197 ==.
                           0001E1   883 	Sstm8s_clk$CLK_ClockSwitchConfig$198 ==.
                                    884 ;	../SPL/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
                                    885 ; genIfx
      0098C9 0D 07            [ 1]  886 	tnz	(0x07, sp)
      0098CB 27 03            [ 1]  887 	jreq	00243$
      0098CD CC 98 E7         [ 2]  888 	jp	00132$
      0098D0                        889 00243$:
                                    890 ; genCmpEQorNE
      0098D0 7B 01            [ 1]  891 	ld	a, (0x01, sp)
      0098D2 A1 E1            [ 1]  892 	cp	a, #0xe1
      0098D4 26 03            [ 1]  893 	jrne	00245$
      0098D6 CC 98 DC         [ 2]  894 	jp	00246$
      0098D9                        895 00245$:
      0098D9 CC 98 E7         [ 2]  896 	jp	00132$
      0098DC                        897 00246$:
                           0001F4   898 	Sstm8s_clk$CLK_ClockSwitchConfig$199 ==.
                                    899 ; skipping generated iCode
                           0001F4   900 	Sstm8s_clk$CLK_ClockSwitchConfig$200 ==.
                           0001F4   901 	Sstm8s_clk$CLK_ClockSwitchConfig$201 ==.
                                    902 ;	../SPL/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
                                    903 ; genPointerGet
      0098DC C6 50 C0         [ 1]  904 	ld	a, 0x50c0
                                    905 ; genAnd
      0098DF A4 FE            [ 1]  906 	and	a, #0xfe
                                    907 ; genPointerSet
      0098E1 C7 50 C0         [ 1]  908 	ld	0x50c0, a
                           0001FC   909 	Sstm8s_clk$CLK_ClockSwitchConfig$202 ==.
                                    910 ; genGoto
      0098E4 CC 99 20         [ 2]  911 	jp	00136$
                                    912 ; genLabel
      0098E7                        913 00132$:
                           0001FF   914 	Sstm8s_clk$CLK_ClockSwitchConfig$203 ==.
                                    915 ;	../SPL/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
                                    916 ; genIfx
      0098E7 0D 07            [ 1]  917 	tnz	(0x07, sp)
      0098E9 27 03            [ 1]  918 	jreq	00247$
      0098EB CC 99 05         [ 2]  919 	jp	00128$
      0098EE                        920 00247$:
                                    921 ; genCmpEQorNE
      0098EE 7B 01            [ 1]  922 	ld	a, (0x01, sp)
      0098F0 A1 D2            [ 1]  923 	cp	a, #0xd2
      0098F2 26 03            [ 1]  924 	jrne	00249$
      0098F4 CC 98 FA         [ 2]  925 	jp	00250$
      0098F7                        926 00249$:
      0098F7 CC 99 05         [ 2]  927 	jp	00128$
      0098FA                        928 00250$:
                           000212   929 	Sstm8s_clk$CLK_ClockSwitchConfig$204 ==.
                                    930 ; skipping generated iCode
                           000212   931 	Sstm8s_clk$CLK_ClockSwitchConfig$205 ==.
                           000212   932 	Sstm8s_clk$CLK_ClockSwitchConfig$206 ==.
                                    933 ;	../SPL/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
                                    934 ; genPointerGet
      0098FA C6 50 C0         [ 1]  935 	ld	a, 0x50c0
                                    936 ; genAnd
      0098FD A4 F7            [ 1]  937 	and	a, #0xf7
                                    938 ; genPointerSet
      0098FF C7 50 C0         [ 1]  939 	ld	0x50c0, a
                           00021A   940 	Sstm8s_clk$CLK_ClockSwitchConfig$207 ==.
                                    941 ; genGoto
      009902 CC 99 20         [ 2]  942 	jp	00136$
                                    943 ; genLabel
      009905                        944 00128$:
                           00021D   945 	Sstm8s_clk$CLK_ClockSwitchConfig$208 ==.
                                    946 ;	../SPL/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
                                    947 ; genIfx
      009905 0D 07            [ 1]  948 	tnz	(0x07, sp)
      009907 27 03            [ 1]  949 	jreq	00251$
      009909 CC 99 20         [ 2]  950 	jp	00136$
      00990C                        951 00251$:
                                    952 ; genCmpEQorNE
      00990C 7B 01            [ 1]  953 	ld	a, (0x01, sp)
      00990E A1 B4            [ 1]  954 	cp	a, #0xb4
      009910 26 03            [ 1]  955 	jrne	00253$
      009912 CC 99 18         [ 2]  956 	jp	00254$
      009915                        957 00253$:
      009915 CC 99 20         [ 2]  958 	jp	00136$
      009918                        959 00254$:
                           000230   960 	Sstm8s_clk$CLK_ClockSwitchConfig$209 ==.
                                    961 ; skipping generated iCode
                           000230   962 	Sstm8s_clk$CLK_ClockSwitchConfig$210 ==.
                           000230   963 	Sstm8s_clk$CLK_ClockSwitchConfig$211 ==.
                                    964 ;	../SPL/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
                                    965 ; genPointerGet
      009918 C6 50 C1         [ 1]  966 	ld	a, 0x50c1
                                    967 ; genAnd
      00991B A4 FE            [ 1]  968 	and	a, #0xfe
                                    969 ; genPointerSet
      00991D C7 50 C1         [ 1]  970 	ld	0x50c1, a
                           000238   971 	Sstm8s_clk$CLK_ClockSwitchConfig$212 ==.
                                    972 ; genLabel
      009920                        973 00136$:
                           000238   974 	Sstm8s_clk$CLK_ClockSwitchConfig$213 ==.
                                    975 ;	../SPL/src/stm8s_clk.c: 406: return(Swif);
                                    976 ; genReturn
      009920 9F               [ 1]  977 	ld	a, xl
                                    978 ; genLabel
      009921                        979 00137$:
                           000239   980 	Sstm8s_clk$CLK_ClockSwitchConfig$214 ==.
                                    981 ;	../SPL/src/stm8s_clk.c: 407: }
                                    982 ; genEndFunction
      009921 5B 01            [ 2]  983 	addw	sp, #1
                           00023B   984 	Sstm8s_clk$CLK_ClockSwitchConfig$215 ==.
                           00023B   985 	Sstm8s_clk$CLK_ClockSwitchConfig$216 ==.
                           00023B   986 	XG$CLK_ClockSwitchConfig$0$0 ==.
      009923 81               [ 4]  987 	ret
                           00023C   988 	Sstm8s_clk$CLK_ClockSwitchConfig$217 ==.
                           00023C   989 	Sstm8s_clk$CLK_HSIPrescalerConfig$218 ==.
                                    990 ;	../SPL/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    991 ; genLabel
                                    992 ;	-----------------------------------------
                                    993 ;	 function CLK_HSIPrescalerConfig
                                    994 ;	-----------------------------------------
                                    995 ;	Register assignment is optimal.
                                    996 ;	Stack space usage: 0 bytes.
      009924                        997 _CLK_HSIPrescalerConfig:
                           00023C   998 	Sstm8s_clk$CLK_HSIPrescalerConfig$219 ==.
                           00023C   999 	Sstm8s_clk$CLK_HSIPrescalerConfig$220 ==.
                                   1000 ;	../SPL/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   1001 ; genPointerGet
      009924 C6 50 C6         [ 1] 1002 	ld	a, 0x50c6
                                   1003 ; genAnd
      009927 A4 E7            [ 1] 1004 	and	a, #0xe7
                                   1005 ; genPointerSet
      009929 C7 50 C6         [ 1] 1006 	ld	0x50c6, a
                           000244  1007 	Sstm8s_clk$CLK_HSIPrescalerConfig$221 ==.
                                   1008 ;	../SPL/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
                                   1009 ; genPointerGet
      00992C C6 50 C6         [ 1] 1010 	ld	a, 0x50c6
                                   1011 ; genOr
      00992F 1A 03            [ 1] 1012 	or	a, (0x03, sp)
                                   1013 ; genPointerSet
      009931 C7 50 C6         [ 1] 1014 	ld	0x50c6, a
                                   1015 ; genLabel
      009934                       1016 00101$:
                           00024C  1017 	Sstm8s_clk$CLK_HSIPrescalerConfig$222 ==.
                                   1018 ;	../SPL/src/stm8s_clk.c: 425: }
                                   1019 ; genEndFunction
                           00024C  1020 	Sstm8s_clk$CLK_HSIPrescalerConfig$223 ==.
                           00024C  1021 	XG$CLK_HSIPrescalerConfig$0$0 ==.
      009934 81               [ 4] 1022 	ret
                           00024D  1023 	Sstm8s_clk$CLK_HSIPrescalerConfig$224 ==.
                           00024D  1024 	Sstm8s_clk$CLK_CCOConfig$225 ==.
                                   1025 ;	../SPL/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                   1026 ; genLabel
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function CLK_CCOConfig
                                   1029 ;	-----------------------------------------
                                   1030 ;	Register assignment is optimal.
                                   1031 ;	Stack space usage: 0 bytes.
      009935                       1032 _CLK_CCOConfig:
                           00024D  1033 	Sstm8s_clk$CLK_CCOConfig$226 ==.
                           00024D  1034 	Sstm8s_clk$CLK_CCOConfig$227 ==.
                                   1035 ;	../SPL/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
                                   1036 ; genPointerGet
      009935 C6 50 C9         [ 1] 1037 	ld	a, 0x50c9
                                   1038 ; genAnd
      009938 A4 E1            [ 1] 1039 	and	a, #0xe1
                                   1040 ; genPointerSet
      00993A C7 50 C9         [ 1] 1041 	ld	0x50c9, a
                           000255  1042 	Sstm8s_clk$CLK_CCOConfig$228 ==.
                                   1043 ;	../SPL/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
                                   1044 ; genPointerGet
      00993D C6 50 C9         [ 1] 1045 	ld	a, 0x50c9
                                   1046 ; genOr
      009940 1A 03            [ 1] 1047 	or	a, (0x03, sp)
                                   1048 ; genPointerSet
      009942 C7 50 C9         [ 1] 1049 	ld	0x50c9, a
                           00025D  1050 	Sstm8s_clk$CLK_CCOConfig$229 ==.
                                   1051 ;	../SPL/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
                                   1052 ; genPointerGet
      009945 C6 50 C9         [ 1] 1053 	ld	a, 0x50c9
                                   1054 ; genOr
      009948 AA 01            [ 1] 1055 	or	a, #0x01
                                   1056 ; genPointerSet
      00994A C7 50 C9         [ 1] 1057 	ld	0x50c9, a
                                   1058 ; genLabel
      00994D                       1059 00101$:
                           000265  1060 	Sstm8s_clk$CLK_CCOConfig$230 ==.
                                   1061 ;	../SPL/src/stm8s_clk.c: 449: }
                                   1062 ; genEndFunction
                           000265  1063 	Sstm8s_clk$CLK_CCOConfig$231 ==.
                           000265  1064 	XG$CLK_CCOConfig$0$0 ==.
      00994D 81               [ 4] 1065 	ret
                           000266  1066 	Sstm8s_clk$CLK_CCOConfig$232 ==.
                           000266  1067 	Sstm8s_clk$CLK_ITConfig$233 ==.
                                   1068 ;	../SPL/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                   1069 ; genLabel
                                   1070 ;	-----------------------------------------
                                   1071 ;	 function CLK_ITConfig
                                   1072 ;	-----------------------------------------
                                   1073 ;	Register assignment is optimal.
                                   1074 ;	Stack space usage: 1 bytes.
      00994E                       1075 _CLK_ITConfig:
                           000266  1076 	Sstm8s_clk$CLK_ITConfig$234 ==.
      00994E 88               [ 1] 1077 	push	a
                           000267  1078 	Sstm8s_clk$CLK_ITConfig$235 ==.
                           000267  1079 	Sstm8s_clk$CLK_ITConfig$236 ==.
                                   1080 ;	../SPL/src/stm8s_clk.c: 467: switch (CLK_IT)
                                   1081 ; genCmpEQorNE
      00994F 7B 04            [ 1] 1082 	ld	a, (0x04, sp)
      009951 A1 0C            [ 1] 1083 	cp	a, #0x0c
      009953 26 07            [ 1] 1084 	jrne	00140$
      009955 A6 01            [ 1] 1085 	ld	a, #0x01
      009957 6B 01            [ 1] 1086 	ld	(0x01, sp), a
      009959 CC 99 5E         [ 2] 1087 	jp	00141$
      00995C                       1088 00140$:
      00995C 0F 01            [ 1] 1089 	clr	(0x01, sp)
      00995E                       1090 00141$:
                           000276  1091 	Sstm8s_clk$CLK_ITConfig$237 ==.
                                   1092 ; genCmpEQorNE
      00995E 7B 04            [ 1] 1093 	ld	a, (0x04, sp)
      009960 A1 1C            [ 1] 1094 	cp	a, #0x1c
      009962 26 05            [ 1] 1095 	jrne	00143$
      009964 A6 01            [ 1] 1096 	ld	a, #0x01
      009966 CC 99 6A         [ 2] 1097 	jp	00144$
      009969                       1098 00143$:
      009969 4F               [ 1] 1099 	clr	a
      00996A                       1100 00144$:
                           000282  1101 	Sstm8s_clk$CLK_ITConfig$238 ==.
                           000282  1102 	Sstm8s_clk$CLK_ITConfig$239 ==.
                                   1103 ;	../SPL/src/stm8s_clk.c: 465: if (NewState != DISABLE)
                                   1104 ; genIfx
      00996A 0D 05            [ 1] 1105 	tnz	(0x05, sp)
      00996C 26 03            [ 1] 1106 	jrne	00145$
      00996E CC 99 94         [ 2] 1107 	jp	00110$
      009971                       1108 00145$:
                           000289  1109 	Sstm8s_clk$CLK_ITConfig$240 ==.
                           000289  1110 	Sstm8s_clk$CLK_ITConfig$241 ==.
                                   1111 ;	../SPL/src/stm8s_clk.c: 467: switch (CLK_IT)
                                   1112 ; genIfx
      009971 0D 01            [ 1] 1113 	tnz	(0x01, sp)
      009973 27 03            [ 1] 1114 	jreq	00146$
      009975 CC 99 89         [ 2] 1115 	jp	00102$
      009978                       1116 00146$:
                                   1117 ; genIfx
      009978 4D               [ 1] 1118 	tnz	a
      009979 26 03            [ 1] 1119 	jrne	00147$
      00997B CC 99 B4         [ 2] 1120 	jp	00112$
      00997E                       1121 00147$:
                           000296  1122 	Sstm8s_clk$CLK_ITConfig$242 ==.
                           000296  1123 	Sstm8s_clk$CLK_ITConfig$243 ==.
                                   1124 ;	../SPL/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
                                   1125 ; genPointerGet
      00997E C6 50 C5         [ 1] 1126 	ld	a, 0x50c5
                                   1127 ; genOr
      009981 AA 04            [ 1] 1128 	or	a, #0x04
                                   1129 ; genPointerSet
      009983 C7 50 C5         [ 1] 1130 	ld	0x50c5, a
                           00029E  1131 	Sstm8s_clk$CLK_ITConfig$244 ==.
                                   1132 ;	../SPL/src/stm8s_clk.c: 471: break;
                                   1133 ; genGoto
      009986 CC 99 B4         [ 2] 1134 	jp	00112$
                           0002A1  1135 	Sstm8s_clk$CLK_ITConfig$245 ==.
                                   1136 ;	../SPL/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
                                   1137 ; genLabel
      009989                       1138 00102$:
                           0002A1  1139 	Sstm8s_clk$CLK_ITConfig$246 ==.
                                   1140 ;	../SPL/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
                                   1141 ; genPointerGet
      009989 C6 50 C8         [ 1] 1142 	ld	a, 0x50c8
                                   1143 ; genOr
      00998C AA 04            [ 1] 1144 	or	a, #0x04
                                   1145 ; genPointerSet
      00998E C7 50 C8         [ 1] 1146 	ld	0x50c8, a
                           0002A9  1147 	Sstm8s_clk$CLK_ITConfig$247 ==.
                                   1148 ;	../SPL/src/stm8s_clk.c: 474: break;
                                   1149 ; genGoto
      009991 CC 99 B4         [ 2] 1150 	jp	00112$
                           0002AC  1151 	Sstm8s_clk$CLK_ITConfig$248 ==.
                           0002AC  1152 	Sstm8s_clk$CLK_ITConfig$249 ==.
                                   1153 ;	../SPL/src/stm8s_clk.c: 477: }
                                   1154 ; genLabel
      009994                       1155 00110$:
                           0002AC  1156 	Sstm8s_clk$CLK_ITConfig$250 ==.
                           0002AC  1157 	Sstm8s_clk$CLK_ITConfig$251 ==.
                                   1158 ;	../SPL/src/stm8s_clk.c: 481: switch (CLK_IT)
                                   1159 ; genIfx
      009994 0D 01            [ 1] 1160 	tnz	(0x01, sp)
      009996 27 03            [ 1] 1161 	jreq	00148$
      009998 CC 99 AC         [ 2] 1162 	jp	00106$
      00999B                       1163 00148$:
                                   1164 ; genIfx
      00999B 4D               [ 1] 1165 	tnz	a
      00999C 26 03            [ 1] 1166 	jrne	00149$
      00999E CC 99 B4         [ 2] 1167 	jp	00112$
      0099A1                       1168 00149$:
                           0002B9  1169 	Sstm8s_clk$CLK_ITConfig$252 ==.
                           0002B9  1170 	Sstm8s_clk$CLK_ITConfig$253 ==.
                                   1171 ;	../SPL/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
                                   1172 ; genPointerGet
      0099A1 C6 50 C5         [ 1] 1173 	ld	a, 0x50c5
                                   1174 ; genAnd
      0099A4 A4 FB            [ 1] 1175 	and	a, #0xfb
                                   1176 ; genPointerSet
      0099A6 C7 50 C5         [ 1] 1177 	ld	0x50c5, a
                           0002C1  1178 	Sstm8s_clk$CLK_ITConfig$254 ==.
                                   1179 ;	../SPL/src/stm8s_clk.c: 485: break;
                                   1180 ; genGoto
      0099A9 CC 99 B4         [ 2] 1181 	jp	00112$
                           0002C4  1182 	Sstm8s_clk$CLK_ITConfig$255 ==.
                                   1183 ;	../SPL/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
                                   1184 ; genLabel
      0099AC                       1185 00106$:
                           0002C4  1186 	Sstm8s_clk$CLK_ITConfig$256 ==.
                                   1187 ;	../SPL/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
                                   1188 ; genPointerGet
      0099AC C6 50 C8         [ 1] 1189 	ld	a, 0x50c8
                                   1190 ; genAnd
      0099AF A4 FB            [ 1] 1191 	and	a, #0xfb
                                   1192 ; genPointerSet
      0099B1 C7 50 C8         [ 1] 1193 	ld	0x50c8, a
                           0002CC  1194 	Sstm8s_clk$CLK_ITConfig$257 ==.
                           0002CC  1195 	Sstm8s_clk$CLK_ITConfig$258 ==.
                                   1196 ;	../SPL/src/stm8s_clk.c: 491: }
                                   1197 ; genLabel
      0099B4                       1198 00112$:
                           0002CC  1199 	Sstm8s_clk$CLK_ITConfig$259 ==.
                                   1200 ;	../SPL/src/stm8s_clk.c: 493: }
                                   1201 ; genEndFunction
      0099B4 84               [ 1] 1202 	pop	a
                           0002CD  1203 	Sstm8s_clk$CLK_ITConfig$260 ==.
                           0002CD  1204 	Sstm8s_clk$CLK_ITConfig$261 ==.
                           0002CD  1205 	XG$CLK_ITConfig$0$0 ==.
      0099B5 81               [ 4] 1206 	ret
                           0002CE  1207 	Sstm8s_clk$CLK_ITConfig$262 ==.
                           0002CE  1208 	Sstm8s_clk$CLK_SYSCLKConfig$263 ==.
                                   1209 ;	../SPL/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                   1210 ; genLabel
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function CLK_SYSCLKConfig
                                   1213 ;	-----------------------------------------
                                   1214 ;	Register assignment is optimal.
                                   1215 ;	Stack space usage: 1 bytes.
      0099B6                       1216 _CLK_SYSCLKConfig:
                           0002CE  1217 	Sstm8s_clk$CLK_SYSCLKConfig$264 ==.
      0099B6 88               [ 1] 1218 	push	a
                           0002CF  1219 	Sstm8s_clk$CLK_SYSCLKConfig$265 ==.
                           0002CF  1220 	Sstm8s_clk$CLK_SYSCLKConfig$266 ==.
                                   1221 ;	../SPL/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   1222 ; genPointerGet
      0099B7 C6 50 C6         [ 1] 1223 	ld	a, 0x50c6
                           0002D2  1224 	Sstm8s_clk$CLK_SYSCLKConfig$267 ==.
                                   1225 ;	../SPL/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
                                   1226 ; genAnd
      0099BA 0D 04            [ 1] 1227 	tnz	(0x04, sp)
      0099BC 2A 03            [ 1] 1228 	jrpl	00111$
      0099BE CC 99 D7         [ 2] 1229 	jp	00102$
      0099C1                       1230 00111$:
                                   1231 ; skipping generated iCode
                           0002D9  1232 	Sstm8s_clk$CLK_SYSCLKConfig$268 ==.
                           0002D9  1233 	Sstm8s_clk$CLK_SYSCLKConfig$269 ==.
                                   1234 ;	../SPL/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   1235 ; genAnd
      0099C1 A4 E7            [ 1] 1236 	and	a, #0xe7
                                   1237 ; genPointerSet
      0099C3 C7 50 C6         [ 1] 1238 	ld	0x50c6, a
                           0002DE  1239 	Sstm8s_clk$CLK_SYSCLKConfig$270 ==.
                                   1240 ;	../SPL/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
                                   1241 ; genPointerGet
      0099C6 C6 50 C6         [ 1] 1242 	ld	a, 0x50c6
      0099C9 6B 01            [ 1] 1243 	ld	(0x01, sp), a
                                   1244 ; genAnd
      0099CB 7B 04            [ 1] 1245 	ld	a, (0x04, sp)
      0099CD A4 18            [ 1] 1246 	and	a, #0x18
                                   1247 ; genOr
      0099CF 1A 01            [ 1] 1248 	or	a, (0x01, sp)
                                   1249 ; genPointerSet
      0099D1 C7 50 C6         [ 1] 1250 	ld	0x50c6, a
                           0002EC  1251 	Sstm8s_clk$CLK_SYSCLKConfig$271 ==.
                                   1252 ; genGoto
      0099D4 CC 99 EA         [ 2] 1253 	jp	00104$
                                   1254 ; genLabel
      0099D7                       1255 00102$:
                           0002EF  1256 	Sstm8s_clk$CLK_SYSCLKConfig$272 ==.
                           0002EF  1257 	Sstm8s_clk$CLK_SYSCLKConfig$273 ==.
                                   1258 ;	../SPL/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
                                   1259 ; genAnd
      0099D7 A4 F8            [ 1] 1260 	and	a, #0xf8
                                   1261 ; genPointerSet
      0099D9 C7 50 C6         [ 1] 1262 	ld	0x50c6, a
                           0002F4  1263 	Sstm8s_clk$CLK_SYSCLKConfig$274 ==.
                                   1264 ;	../SPL/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
                                   1265 ; genPointerGet
      0099DC C6 50 C6         [ 1] 1266 	ld	a, 0x50c6
      0099DF 6B 01            [ 1] 1267 	ld	(0x01, sp), a
                                   1268 ; genAnd
      0099E1 7B 04            [ 1] 1269 	ld	a, (0x04, sp)
      0099E3 A4 07            [ 1] 1270 	and	a, #0x07
                                   1271 ; genOr
      0099E5 1A 01            [ 1] 1272 	or	a, (0x01, sp)
                                   1273 ; genPointerSet
      0099E7 C7 50 C6         [ 1] 1274 	ld	0x50c6, a
                           000302  1275 	Sstm8s_clk$CLK_SYSCLKConfig$275 ==.
                                   1276 ; genLabel
      0099EA                       1277 00104$:
                           000302  1278 	Sstm8s_clk$CLK_SYSCLKConfig$276 ==.
                                   1279 ;	../SPL/src/stm8s_clk.c: 515: }
                                   1280 ; genEndFunction
      0099EA 84               [ 1] 1281 	pop	a
                           000303  1282 	Sstm8s_clk$CLK_SYSCLKConfig$277 ==.
                           000303  1283 	Sstm8s_clk$CLK_SYSCLKConfig$278 ==.
                           000303  1284 	XG$CLK_SYSCLKConfig$0$0 ==.
      0099EB 81               [ 4] 1285 	ret
                           000304  1286 	Sstm8s_clk$CLK_SYSCLKConfig$279 ==.
                           000304  1287 	Sstm8s_clk$CLK_SWIMConfig$280 ==.
                                   1288 ;	../SPL/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                   1289 ; genLabel
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function CLK_SWIMConfig
                                   1292 ;	-----------------------------------------
                                   1293 ;	Register assignment is optimal.
                                   1294 ;	Stack space usage: 0 bytes.
      0099EC                       1295 _CLK_SWIMConfig:
                           000304  1296 	Sstm8s_clk$CLK_SWIMConfig$281 ==.
                           000304  1297 	Sstm8s_clk$CLK_SWIMConfig$282 ==.
                                   1298 ;	../SPL/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
                                   1299 ; genPointerGet
      0099EC C6 50 CD         [ 1] 1300 	ld	a, 0x50cd
                           000307  1301 	Sstm8s_clk$CLK_SWIMConfig$283 ==.
                                   1302 ;	../SPL/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
                                   1303 ; genIfx
      0099EF 0D 03            [ 1] 1304 	tnz	(0x03, sp)
      0099F1 26 03            [ 1] 1305 	jrne	00111$
      0099F3 CC 99 FE         [ 2] 1306 	jp	00102$
      0099F6                       1307 00111$:
                           00030E  1308 	Sstm8s_clk$CLK_SWIMConfig$284 ==.
                           00030E  1309 	Sstm8s_clk$CLK_SWIMConfig$285 ==.
                                   1310 ;	../SPL/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
                                   1311 ; genOr
      0099F6 AA 01            [ 1] 1312 	or	a, #0x01
                                   1313 ; genPointerSet
      0099F8 C7 50 CD         [ 1] 1314 	ld	0x50cd, a
                           000313  1315 	Sstm8s_clk$CLK_SWIMConfig$286 ==.
                                   1316 ; genGoto
      0099FB CC 9A 03         [ 2] 1317 	jp	00104$
                                   1318 ; genLabel
      0099FE                       1319 00102$:
                           000316  1320 	Sstm8s_clk$CLK_SWIMConfig$287 ==.
                           000316  1321 	Sstm8s_clk$CLK_SWIMConfig$288 ==.
                                   1322 ;	../SPL/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
                                   1323 ; genAnd
      0099FE A4 FE            [ 1] 1324 	and	a, #0xfe
                                   1325 ; genPointerSet
      009A00 C7 50 CD         [ 1] 1326 	ld	0x50cd, a
                           00031B  1327 	Sstm8s_clk$CLK_SWIMConfig$289 ==.
                                   1328 ; genLabel
      009A03                       1329 00104$:
                           00031B  1330 	Sstm8s_clk$CLK_SWIMConfig$290 ==.
                                   1331 ;	../SPL/src/stm8s_clk.c: 538: }
                                   1332 ; genEndFunction
                           00031B  1333 	Sstm8s_clk$CLK_SWIMConfig$291 ==.
                           00031B  1334 	XG$CLK_SWIMConfig$0$0 ==.
      009A03 81               [ 4] 1335 	ret
                           00031C  1336 	Sstm8s_clk$CLK_SWIMConfig$292 ==.
                           00031C  1337 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$293 ==.
                                   1338 ;	../SPL/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1339 ; genLabel
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function CLK_ClockSecuritySystemEnable
                                   1342 ;	-----------------------------------------
                                   1343 ;	Register assignment is optimal.
                                   1344 ;	Stack space usage: 0 bytes.
      009A04                       1345 _CLK_ClockSecuritySystemEnable:
                           00031C  1346 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$294 ==.
                           00031C  1347 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$295 ==.
                                   1348 ;	../SPL/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
                                   1349 ; genPointerGet
      009A04 C6 50 C8         [ 1] 1350 	ld	a, 0x50c8
                                   1351 ; genOr
      009A07 AA 01            [ 1] 1352 	or	a, #0x01
                                   1353 ; genPointerSet
      009A09 C7 50 C8         [ 1] 1354 	ld	0x50c8, a
                                   1355 ; genLabel
      009A0C                       1356 00101$:
                           000324  1357 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$296 ==.
                                   1358 ;	../SPL/src/stm8s_clk.c: 551: }
                                   1359 ; genEndFunction
                           000324  1360 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$297 ==.
                           000324  1361 	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
      009A0C 81               [ 4] 1362 	ret
                           000325  1363 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$298 ==.
                           000325  1364 	Sstm8s_clk$CLK_GetSYSCLKSource$299 ==.
                                   1365 ;	../SPL/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1366 ; genLabel
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function CLK_GetSYSCLKSource
                                   1369 ;	-----------------------------------------
                                   1370 ;	Register assignment is optimal.
                                   1371 ;	Stack space usage: 0 bytes.
      009A0D                       1372 _CLK_GetSYSCLKSource:
                           000325  1373 	Sstm8s_clk$CLK_GetSYSCLKSource$300 ==.
                           000325  1374 	Sstm8s_clk$CLK_GetSYSCLKSource$301 ==.
                                   1375 ;	../SPL/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
                                   1376 ; genPointerGet
      009A0D C6 50 C3         [ 1] 1377 	ld	a, 0x50c3
                                   1378 ; genReturn
                                   1379 ; genLabel
      009A10                       1380 00101$:
                           000328  1381 	Sstm8s_clk$CLK_GetSYSCLKSource$302 ==.
                                   1382 ;	../SPL/src/stm8s_clk.c: 562: }
                                   1383 ; genEndFunction
                           000328  1384 	Sstm8s_clk$CLK_GetSYSCLKSource$303 ==.
                           000328  1385 	XG$CLK_GetSYSCLKSource$0$0 ==.
      009A10 81               [ 4] 1386 	ret
                           000329  1387 	Sstm8s_clk$CLK_GetSYSCLKSource$304 ==.
                           000329  1388 	Sstm8s_clk$CLK_GetClockFreq$305 ==.
                                   1389 ;	../SPL/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1390 ; genLabel
                                   1391 ;	-----------------------------------------
                                   1392 ;	 function CLK_GetClockFreq
                                   1393 ;	-----------------------------------------
                                   1394 ;	Register assignment might be sub-optimal.
                                   1395 ;	Stack space usage: 4 bytes.
      009A11                       1396 _CLK_GetClockFreq:
                           000329  1397 	Sstm8s_clk$CLK_GetClockFreq$306 ==.
      009A11 52 04            [ 2] 1398 	sub	sp, #4
                           00032B  1399 	Sstm8s_clk$CLK_GetClockFreq$307 ==.
                           00032B  1400 	Sstm8s_clk$CLK_GetClockFreq$308 ==.
                                   1401 ;	../SPL/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
                                   1402 ; genPointerGet
      009A13 C6 50 C3         [ 1] 1403 	ld	a, 0x50c3
      009A16 6B 04            [ 1] 1404 	ld	(0x04, sp), a
                           000330  1405 	Sstm8s_clk$CLK_GetClockFreq$309 ==.
                                   1406 ;	../SPL/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
                                   1407 ; genCmpEQorNE
      009A18 7B 04            [ 1] 1408 	ld	a, (0x04, sp)
      009A1A A1 E1            [ 1] 1409 	cp	a, #0xe1
      009A1C 26 03            [ 1] 1410 	jrne	00120$
      009A1E CC 9A 24         [ 2] 1411 	jp	00121$
      009A21                       1412 00120$:
      009A21 CC 9A 4C         [ 2] 1413 	jp	00105$
      009A24                       1414 00121$:
                           00033C  1415 	Sstm8s_clk$CLK_GetClockFreq$310 ==.
                                   1416 ; skipping generated iCode
                           00033C  1417 	Sstm8s_clk$CLK_GetClockFreq$311 ==.
                           00033C  1418 	Sstm8s_clk$CLK_GetClockFreq$312 ==.
                                   1419 ;	../SPL/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
                                   1420 ; genPointerGet
      009A24 C6 50 C6         [ 1] 1421 	ld	a, 0x50c6
                                   1422 ; genAnd
      009A27 A4 18            [ 1] 1423 	and	a, #0x18
                           000341  1424 	Sstm8s_clk$CLK_GetClockFreq$313 ==.
                                   1425 ;	../SPL/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
                                   1426 ; genRightShiftLiteral
      009A29 44               [ 1] 1427 	srl	a
      009A2A 44               [ 1] 1428 	srl	a
      009A2B 44               [ 1] 1429 	srl	a
                           000344  1430 	Sstm8s_clk$CLK_GetClockFreq$314 ==.
                                   1431 ;	../SPL/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
                                   1432 ; skipping iCode since result will be rematerialized
                                   1433 ; genPlus
      009A2C 5F               [ 1] 1434 	clrw	x
      009A2D 97               [ 1] 1435 	ld	xl, a
      009A2E 1C 80 E2         [ 2] 1436 	addw	x, #(_HSIDivFactor+0)
                                   1437 ; genPointerGet
      009A31 F6               [ 1] 1438 	ld	a, (x)
                           00034A  1439 	Sstm8s_clk$CLK_GetClockFreq$315 ==.
                                   1440 ;	../SPL/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
                                   1441 ; genCast
                                   1442 ; genAssign
      009A32 5F               [ 1] 1443 	clrw	x
      009A33 97               [ 1] 1444 	ld	xl, a
      009A34 90 5F            [ 1] 1445 	clrw	y
                           00034E  1446 	Sstm8s_clk$CLK_GetClockFreq$316 ==.
                                   1447 ; genIPush
      009A36 89               [ 2] 1448 	pushw	x
                           00034F  1449 	Sstm8s_clk$CLK_GetClockFreq$317 ==.
      009A37 90 89            [ 2] 1450 	pushw	y
                           000351  1451 	Sstm8s_clk$CLK_GetClockFreq$318 ==.
                                   1452 ; genIPush
      009A39 4B 00            [ 1] 1453 	push	#0x00
                           000353  1454 	Sstm8s_clk$CLK_GetClockFreq$319 ==.
      009A3B 4B 24            [ 1] 1455 	push	#0x24
                           000355  1456 	Sstm8s_clk$CLK_GetClockFreq$320 ==.
      009A3D 4B F4            [ 1] 1457 	push	#0xf4
                           000357  1458 	Sstm8s_clk$CLK_GetClockFreq$321 ==.
      009A3F 4B 00            [ 1] 1459 	push	#0x00
                           000359  1460 	Sstm8s_clk$CLK_GetClockFreq$322 ==.
                                   1461 ; genCall
      009A41 CD A5 C2         [ 4] 1462 	call	__divulong
      009A44 5B 08            [ 2] 1463 	addw	sp, #8
                           00035E  1464 	Sstm8s_clk$CLK_GetClockFreq$323 ==.
      009A46 51               [ 1] 1465 	exgw	x, y
                                   1466 ; genAssign
      009A47 17 03            [ 2] 1467 	ldw	(0x03, sp), y
                                   1468 ; genGoto
      009A49 CC 9A 6A         [ 2] 1469 	jp	00106$
                                   1470 ; genLabel
      009A4C                       1471 00105$:
                           000364  1472 	Sstm8s_clk$CLK_GetClockFreq$324 ==.
                                   1473 ;	../SPL/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
                                   1474 ; genCmpEQorNE
      009A4C 7B 04            [ 1] 1475 	ld	a, (0x04, sp)
      009A4E A1 D2            [ 1] 1476 	cp	a, #0xd2
      009A50 26 03            [ 1] 1477 	jrne	00123$
      009A52 CC 9A 58         [ 2] 1478 	jp	00124$
      009A55                       1479 00123$:
      009A55 CC 9A 62         [ 2] 1480 	jp	00102$
      009A58                       1481 00124$:
                           000370  1482 	Sstm8s_clk$CLK_GetClockFreq$325 ==.
                                   1483 ; skipping generated iCode
                           000370  1484 	Sstm8s_clk$CLK_GetClockFreq$326 ==.
                           000370  1485 	Sstm8s_clk$CLK_GetClockFreq$327 ==.
                                   1486 ;	../SPL/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
                                   1487 ; genAssign
      009A58 AE F4 00         [ 2] 1488 	ldw	x, #0xf400
      009A5B 1F 03            [ 2] 1489 	ldw	(0x03, sp), x
      009A5D 5F               [ 1] 1490 	clrw	x
      009A5E 5C               [ 1] 1491 	incw	x
                           000377  1492 	Sstm8s_clk$CLK_GetClockFreq$328 ==.
                                   1493 ; genGoto
      009A5F CC 9A 6A         [ 2] 1494 	jp	00106$
                                   1495 ; genLabel
      009A62                       1496 00102$:
                           00037A  1497 	Sstm8s_clk$CLK_GetClockFreq$329 ==.
                           00037A  1498 	Sstm8s_clk$CLK_GetClockFreq$330 ==.
                                   1499 ;	../SPL/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
                                   1500 ; genAssign
      009A62 AE 36 00         [ 2] 1501 	ldw	x, #0x3600
      009A65 1F 03            [ 2] 1502 	ldw	(0x03, sp), x
      009A67 AE 01 6E         [ 2] 1503 	ldw	x, #0x016e
                           000382  1504 	Sstm8s_clk$CLK_GetClockFreq$331 ==.
                                   1505 ; genLabel
      009A6A                       1506 00106$:
                           000382  1507 	Sstm8s_clk$CLK_GetClockFreq$332 ==.
                                   1508 ;	../SPL/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
                                   1509 ; genReturn
      009A6A 51               [ 1] 1510 	exgw	x, y
      009A6B 1E 03            [ 2] 1511 	ldw	x, (0x03, sp)
                                   1512 ; genLabel
      009A6D                       1513 00107$:
                           000385  1514 	Sstm8s_clk$CLK_GetClockFreq$333 ==.
                                   1515 ;	../SPL/src/stm8s_clk.c: 595: }
                                   1516 ; genEndFunction
      009A6D 5B 04            [ 2] 1517 	addw	sp, #4
                           000387  1518 	Sstm8s_clk$CLK_GetClockFreq$334 ==.
                           000387  1519 	Sstm8s_clk$CLK_GetClockFreq$335 ==.
                           000387  1520 	XG$CLK_GetClockFreq$0$0 ==.
      009A6F 81               [ 4] 1521 	ret
                           000388  1522 	Sstm8s_clk$CLK_GetClockFreq$336 ==.
                           000388  1523 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$337 ==.
                                   1524 ;	../SPL/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1525 ; genLabel
                                   1526 ;	-----------------------------------------
                                   1527 ;	 function CLK_AdjustHSICalibrationValue
                                   1528 ;	-----------------------------------------
                                   1529 ;	Register assignment is optimal.
                                   1530 ;	Stack space usage: 0 bytes.
      009A70                       1531 _CLK_AdjustHSICalibrationValue:
                           000388  1532 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$338 ==.
                           000388  1533 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$339 ==.
                                   1534 ;	../SPL/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
                                   1535 ; genPointerGet
      009A70 C6 50 CC         [ 1] 1536 	ld	a, 0x50cc
                                   1537 ; genAnd
      009A73 A4 F8            [ 1] 1538 	and	a, #0xf8
                                   1539 ; genOr
      009A75 1A 03            [ 1] 1540 	or	a, (0x03, sp)
                                   1541 ; genPointerSet
      009A77 C7 50 CC         [ 1] 1542 	ld	0x50cc, a
                                   1543 ; genLabel
      009A7A                       1544 00101$:
                           000392  1545 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$340 ==.
                                   1546 ;	../SPL/src/stm8s_clk.c: 611: }
                                   1547 ; genEndFunction
                           000392  1548 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$341 ==.
                           000392  1549 	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
      009A7A 81               [ 4] 1550 	ret
                           000393  1551 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$342 ==.
                           000393  1552 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$343 ==.
                                   1553 ;	../SPL/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1554 ; genLabel
                                   1555 ;	-----------------------------------------
                                   1556 ;	 function CLK_SYSCLKEmergencyClear
                                   1557 ;	-----------------------------------------
                                   1558 ;	Register assignment is optimal.
                                   1559 ;	Stack space usage: 0 bytes.
      009A7B                       1560 _CLK_SYSCLKEmergencyClear:
                           000393  1561 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$344 ==.
                           000393  1562 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$345 ==.
                                   1563 ;	../SPL/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
                                   1564 ; genPointerGet
      009A7B C6 50 C5         [ 1] 1565 	ld	a, 0x50c5
                                   1566 ; genAnd
      009A7E A4 FE            [ 1] 1567 	and	a, #0xfe
                                   1568 ; genPointerSet
      009A80 C7 50 C5         [ 1] 1569 	ld	0x50c5, a
                                   1570 ; genLabel
      009A83                       1571 00101$:
                           00039B  1572 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$346 ==.
                                   1573 ;	../SPL/src/stm8s_clk.c: 625: }
                                   1574 ; genEndFunction
                           00039B  1575 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$347 ==.
                           00039B  1576 	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
      009A83 81               [ 4] 1577 	ret
                           00039C  1578 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$348 ==.
                           00039C  1579 	Sstm8s_clk$CLK_GetFlagStatus$349 ==.
                                   1580 ;	../SPL/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1581 ; genLabel
                                   1582 ;	-----------------------------------------
                                   1583 ;	 function CLK_GetFlagStatus
                                   1584 ;	-----------------------------------------
                                   1585 ;	Register assignment might be sub-optimal.
                                   1586 ;	Stack space usage: 1 bytes.
      009A84                       1587 _CLK_GetFlagStatus:
                           00039C  1588 	Sstm8s_clk$CLK_GetFlagStatus$350 ==.
      009A84 88               [ 1] 1589 	push	a
                           00039D  1590 	Sstm8s_clk$CLK_GetFlagStatus$351 ==.
                           00039D  1591 	Sstm8s_clk$CLK_GetFlagStatus$352 ==.
                                   1592 ;	../SPL/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
                                   1593 ; genCast
                                   1594 ; genAssign
      009A85 1E 04            [ 2] 1595 	ldw	x, (0x04, sp)
                                   1596 ; genAnd
      009A87 4F               [ 1] 1597 	clr	a
                                   1598 ; genAssign
                           0003A0  1599 	Sstm8s_clk$CLK_GetFlagStatus$353 ==.
                                   1600 ;	../SPL/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
                                   1601 ; genCast
                                   1602 ; genAssign
      009A88 97               [ 1] 1603 	ld	xl, a
                                   1604 ; genCmpEQorNE
      009A89 A3 01 00         [ 2] 1605 	cpw	x, #0x0100
      009A8C 26 03            [ 1] 1606 	jrne	00144$
      009A8E CC 9A 94         [ 2] 1607 	jp	00145$
      009A91                       1608 00144$:
      009A91 CC 9A 9A         [ 2] 1609 	jp	00111$
      009A94                       1610 00145$:
                           0003AC  1611 	Sstm8s_clk$CLK_GetFlagStatus$354 ==.
                                   1612 ; skipping generated iCode
                           0003AC  1613 	Sstm8s_clk$CLK_GetFlagStatus$355 ==.
                           0003AC  1614 	Sstm8s_clk$CLK_GetFlagStatus$356 ==.
                                   1615 ;	../SPL/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
                                   1616 ; genPointerGet
      009A94 C6 50 C0         [ 1] 1617 	ld	a, 0x50c0
                           0003AF  1618 	Sstm8s_clk$CLK_GetFlagStatus$357 ==.
                                   1619 ; genGoto
      009A97 CC 9A D0         [ 2] 1620 	jp	00112$
                                   1621 ; genLabel
      009A9A                       1622 00111$:
                           0003B2  1623 	Sstm8s_clk$CLK_GetFlagStatus$358 ==.
                                   1624 ;	../SPL/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
                                   1625 ; genCmpEQorNE
      009A9A A3 02 00         [ 2] 1626 	cpw	x, #0x0200
      009A9D 26 03            [ 1] 1627 	jrne	00147$
      009A9F CC 9A A5         [ 2] 1628 	jp	00148$
      009AA2                       1629 00147$:
      009AA2 CC 9A AB         [ 2] 1630 	jp	00108$
      009AA5                       1631 00148$:
                           0003BD  1632 	Sstm8s_clk$CLK_GetFlagStatus$359 ==.
                                   1633 ; skipping generated iCode
                           0003BD  1634 	Sstm8s_clk$CLK_GetFlagStatus$360 ==.
                           0003BD  1635 	Sstm8s_clk$CLK_GetFlagStatus$361 ==.
                                   1636 ;	../SPL/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
                                   1637 ; genPointerGet
      009AA5 C6 50 C1         [ 1] 1638 	ld	a, 0x50c1
                           0003C0  1639 	Sstm8s_clk$CLK_GetFlagStatus$362 ==.
                                   1640 ; genGoto
      009AA8 CC 9A D0         [ 2] 1641 	jp	00112$
                                   1642 ; genLabel
      009AAB                       1643 00108$:
                           0003C3  1644 	Sstm8s_clk$CLK_GetFlagStatus$363 ==.
                                   1645 ;	../SPL/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
                                   1646 ; genCmpEQorNE
      009AAB A3 03 00         [ 2] 1647 	cpw	x, #0x0300
      009AAE 26 03            [ 1] 1648 	jrne	00150$
      009AB0 CC 9A B6         [ 2] 1649 	jp	00151$
      009AB3                       1650 00150$:
      009AB3 CC 9A BC         [ 2] 1651 	jp	00105$
      009AB6                       1652 00151$:
                           0003CE  1653 	Sstm8s_clk$CLK_GetFlagStatus$364 ==.
                                   1654 ; skipping generated iCode
                           0003CE  1655 	Sstm8s_clk$CLK_GetFlagStatus$365 ==.
                           0003CE  1656 	Sstm8s_clk$CLK_GetFlagStatus$366 ==.
                                   1657 ;	../SPL/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
                                   1658 ; genPointerGet
      009AB6 C6 50 C5         [ 1] 1659 	ld	a, 0x50c5
                           0003D1  1660 	Sstm8s_clk$CLK_GetFlagStatus$367 ==.
                                   1661 ; genGoto
      009AB9 CC 9A D0         [ 2] 1662 	jp	00112$
                                   1663 ; genLabel
      009ABC                       1664 00105$:
                           0003D4  1665 	Sstm8s_clk$CLK_GetFlagStatus$368 ==.
                                   1666 ;	../SPL/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
                                   1667 ; genCmpEQorNE
      009ABC A3 04 00         [ 2] 1668 	cpw	x, #0x0400
      009ABF 26 03            [ 1] 1669 	jrne	00153$
      009AC1 CC 9A C7         [ 2] 1670 	jp	00154$
      009AC4                       1671 00153$:
      009AC4 CC 9A CD         [ 2] 1672 	jp	00102$
      009AC7                       1673 00154$:
                           0003DF  1674 	Sstm8s_clk$CLK_GetFlagStatus$369 ==.
                                   1675 ; skipping generated iCode
                           0003DF  1676 	Sstm8s_clk$CLK_GetFlagStatus$370 ==.
                           0003DF  1677 	Sstm8s_clk$CLK_GetFlagStatus$371 ==.
                                   1678 ;	../SPL/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
                                   1679 ; genPointerGet
      009AC7 C6 50 C8         [ 1] 1680 	ld	a, 0x50c8
                           0003E2  1681 	Sstm8s_clk$CLK_GetFlagStatus$372 ==.
                                   1682 ; genGoto
      009ACA CC 9A D0         [ 2] 1683 	jp	00112$
                                   1684 ; genLabel
      009ACD                       1685 00102$:
                           0003E5  1686 	Sstm8s_clk$CLK_GetFlagStatus$373 ==.
                           0003E5  1687 	Sstm8s_clk$CLK_GetFlagStatus$374 ==.
                                   1688 ;	../SPL/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
                                   1689 ; genPointerGet
      009ACD C6 50 C9         [ 1] 1690 	ld	a, 0x50c9
                           0003E8  1691 	Sstm8s_clk$CLK_GetFlagStatus$375 ==.
                                   1692 ; genLabel
      009AD0                       1693 00112$:
                           0003E8  1694 	Sstm8s_clk$CLK_GetFlagStatus$376 ==.
                                   1695 ;	../SPL/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
                                   1696 ; genCast
                                   1697 ; genAssign
      009AD0 88               [ 1] 1698 	push	a
                           0003E9  1699 	Sstm8s_clk$CLK_GetFlagStatus$377 ==.
      009AD1 7B 06            [ 1] 1700 	ld	a, (0x06, sp)
      009AD3 6B 02            [ 1] 1701 	ld	(0x02, sp), a
      009AD5 84               [ 1] 1702 	pop	a
                           0003EE  1703 	Sstm8s_clk$CLK_GetFlagStatus$378 ==.
                                   1704 ; genAnd
      009AD6 14 01            [ 1] 1705 	and	a, (0x01, sp)
                                   1706 ; genIfx
      009AD8 4D               [ 1] 1707 	tnz	a
      009AD9 26 03            [ 1] 1708 	jrne	00155$
      009ADB CC 9A E3         [ 2] 1709 	jp	00114$
      009ADE                       1710 00155$:
                           0003F6  1711 	Sstm8s_clk$CLK_GetFlagStatus$379 ==.
                           0003F6  1712 	Sstm8s_clk$CLK_GetFlagStatus$380 ==.
                                   1713 ;	../SPL/src/stm8s_clk.c: 670: bitstatus = SET;
                                   1714 ; genAssign
      009ADE A6 01            [ 1] 1715 	ld	a, #0x01
                           0003F8  1716 	Sstm8s_clk$CLK_GetFlagStatus$381 ==.
                                   1717 ; genGoto
      009AE0 CC 9A E4         [ 2] 1718 	jp	00115$
                                   1719 ; genLabel
      009AE3                       1720 00114$:
                           0003FB  1721 	Sstm8s_clk$CLK_GetFlagStatus$382 ==.
                           0003FB  1722 	Sstm8s_clk$CLK_GetFlagStatus$383 ==.
                                   1723 ;	../SPL/src/stm8s_clk.c: 674: bitstatus = RESET;
                                   1724 ; genAssign
      009AE3 4F               [ 1] 1725 	clr	a
                           0003FC  1726 	Sstm8s_clk$CLK_GetFlagStatus$384 ==.
                                   1727 ; genLabel
      009AE4                       1728 00115$:
                           0003FC  1729 	Sstm8s_clk$CLK_GetFlagStatus$385 ==.
                                   1730 ;	../SPL/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1731 ; genReturn
                                   1732 ; genLabel
      009AE4                       1733 00116$:
                           0003FC  1734 	Sstm8s_clk$CLK_GetFlagStatus$386 ==.
                                   1735 ;	../SPL/src/stm8s_clk.c: 679: }
                                   1736 ; genEndFunction
      009AE4 5B 01            [ 2] 1737 	addw	sp, #1
                           0003FE  1738 	Sstm8s_clk$CLK_GetFlagStatus$387 ==.
                           0003FE  1739 	Sstm8s_clk$CLK_GetFlagStatus$388 ==.
                           0003FE  1740 	XG$CLK_GetFlagStatus$0$0 ==.
      009AE6 81               [ 4] 1741 	ret
                           0003FF  1742 	Sstm8s_clk$CLK_GetFlagStatus$389 ==.
                           0003FF  1743 	Sstm8s_clk$CLK_GetITStatus$390 ==.
                                   1744 ;	../SPL/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1745 ; genLabel
                                   1746 ;	-----------------------------------------
                                   1747 ;	 function CLK_GetITStatus
                                   1748 ;	-----------------------------------------
                                   1749 ;	Register assignment is optimal.
                                   1750 ;	Stack space usage: 0 bytes.
      009AE7                       1751 _CLK_GetITStatus:
                           0003FF  1752 	Sstm8s_clk$CLK_GetITStatus$391 ==.
                           0003FF  1753 	Sstm8s_clk$CLK_GetITStatus$392 ==.
                                   1754 ;	../SPL/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
                                   1755 ; genCmpEQorNE
      009AE7 7B 03            [ 1] 1756 	ld	a, (0x03, sp)
      009AE9 A1 1C            [ 1] 1757 	cp	a, #0x1c
      009AEB 26 03            [ 1] 1758 	jrne	00128$
      009AED CC 9A F3         [ 2] 1759 	jp	00129$
      009AF0                       1760 00128$:
      009AF0 CC 9B 0B         [ 2] 1761 	jp	00108$
      009AF3                       1762 00129$:
                           00040B  1763 	Sstm8s_clk$CLK_GetITStatus$393 ==.
                                   1764 ; skipping generated iCode
                           00040B  1765 	Sstm8s_clk$CLK_GetITStatus$394 ==.
                           00040B  1766 	Sstm8s_clk$CLK_GetITStatus$395 ==.
                                   1767 ;	../SPL/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1768 ; genPointerGet
      009AF3 C6 50 C5         [ 1] 1769 	ld	a, 0x50c5
                                   1770 ; genAnd
      009AF6 14 03            [ 1] 1771 	and	a, (0x03, sp)
                                   1772 ; genCmpEQorNE
      009AF8 A1 0C            [ 1] 1773 	cp	a, #0x0c
      009AFA 26 03            [ 1] 1774 	jrne	00131$
      009AFC CC 9B 02         [ 2] 1775 	jp	00132$
      009AFF                       1776 00131$:
      009AFF CC 9B 07         [ 2] 1777 	jp	00102$
      009B02                       1778 00132$:
                           00041A  1779 	Sstm8s_clk$CLK_GetITStatus$396 ==.
                                   1780 ; skipping generated iCode
                           00041A  1781 	Sstm8s_clk$CLK_GetITStatus$397 ==.
                           00041A  1782 	Sstm8s_clk$CLK_GetITStatus$398 ==.
                                   1783 ;	../SPL/src/stm8s_clk.c: 699: bitstatus = SET;
                                   1784 ; genAssign
      009B02 A6 01            [ 1] 1785 	ld	a, #0x01
                           00041C  1786 	Sstm8s_clk$CLK_GetITStatus$399 ==.
                                   1787 ; genGoto
      009B04 CC 9B 20         [ 2] 1788 	jp	00109$
                                   1789 ; genLabel
      009B07                       1790 00102$:
                           00041F  1791 	Sstm8s_clk$CLK_GetITStatus$400 ==.
                           00041F  1792 	Sstm8s_clk$CLK_GetITStatus$401 ==.
                                   1793 ;	../SPL/src/stm8s_clk.c: 703: bitstatus = RESET;
                                   1794 ; genAssign
      009B07 4F               [ 1] 1795 	clr	a
                           000420  1796 	Sstm8s_clk$CLK_GetITStatus$402 ==.
                                   1797 ; genGoto
      009B08 CC 9B 20         [ 2] 1798 	jp	00109$
                                   1799 ; genLabel
      009B0B                       1800 00108$:
                           000423  1801 	Sstm8s_clk$CLK_GetITStatus$403 ==.
                           000423  1802 	Sstm8s_clk$CLK_GetITStatus$404 ==.
                                   1803 ;	../SPL/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1804 ; genPointerGet
      009B0B C6 50 C8         [ 1] 1805 	ld	a, 0x50c8
                                   1806 ; genAnd
      009B0E 14 03            [ 1] 1807 	and	a, (0x03, sp)
                                   1808 ; genCmpEQorNE
      009B10 A1 0C            [ 1] 1809 	cp	a, #0x0c
      009B12 26 03            [ 1] 1810 	jrne	00134$
      009B14 CC 9B 1A         [ 2] 1811 	jp	00135$
      009B17                       1812 00134$:
      009B17 CC 9B 1F         [ 2] 1813 	jp	00105$
      009B1A                       1814 00135$:
                           000432  1815 	Sstm8s_clk$CLK_GetITStatus$405 ==.
                                   1816 ; skipping generated iCode
                           000432  1817 	Sstm8s_clk$CLK_GetITStatus$406 ==.
                           000432  1818 	Sstm8s_clk$CLK_GetITStatus$407 ==.
                                   1819 ;	../SPL/src/stm8s_clk.c: 711: bitstatus = SET;
                                   1820 ; genAssign
      009B1A A6 01            [ 1] 1821 	ld	a, #0x01
                           000434  1822 	Sstm8s_clk$CLK_GetITStatus$408 ==.
                                   1823 ; genGoto
      009B1C CC 9B 20         [ 2] 1824 	jp	00109$
                                   1825 ; genLabel
      009B1F                       1826 00105$:
                           000437  1827 	Sstm8s_clk$CLK_GetITStatus$409 ==.
                           000437  1828 	Sstm8s_clk$CLK_GetITStatus$410 ==.
                                   1829 ;	../SPL/src/stm8s_clk.c: 715: bitstatus = RESET;
                                   1830 ; genAssign
      009B1F 4F               [ 1] 1831 	clr	a
                           000438  1832 	Sstm8s_clk$CLK_GetITStatus$411 ==.
                                   1833 ; genLabel
      009B20                       1834 00109$:
                           000438  1835 	Sstm8s_clk$CLK_GetITStatus$412 ==.
                                   1836 ;	../SPL/src/stm8s_clk.c: 720: return bitstatus;
                                   1837 ; genReturn
                                   1838 ; genLabel
      009B20                       1839 00110$:
                           000438  1840 	Sstm8s_clk$CLK_GetITStatus$413 ==.
                                   1841 ;	../SPL/src/stm8s_clk.c: 721: }
                                   1842 ; genEndFunction
                           000438  1843 	Sstm8s_clk$CLK_GetITStatus$414 ==.
                           000438  1844 	XG$CLK_GetITStatus$0$0 ==.
      009B20 81               [ 4] 1845 	ret
                           000439  1846 	Sstm8s_clk$CLK_GetITStatus$415 ==.
                           000439  1847 	Sstm8s_clk$CLK_ClearITPendingBit$416 ==.
                                   1848 ;	../SPL/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1849 ; genLabel
                                   1850 ;	-----------------------------------------
                                   1851 ;	 function CLK_ClearITPendingBit
                                   1852 ;	-----------------------------------------
                                   1853 ;	Register assignment is optimal.
                                   1854 ;	Stack space usage: 0 bytes.
      009B21                       1855 _CLK_ClearITPendingBit:
                           000439  1856 	Sstm8s_clk$CLK_ClearITPendingBit$417 ==.
                           000439  1857 	Sstm8s_clk$CLK_ClearITPendingBit$418 ==.
                                   1858 ;	../SPL/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
                                   1859 ; genCmpEQorNE
      009B21 7B 03            [ 1] 1860 	ld	a, (0x03, sp)
      009B23 A1 0C            [ 1] 1861 	cp	a, #0x0c
      009B25 26 03            [ 1] 1862 	jrne	00112$
      009B27 CC 9B 2D         [ 2] 1863 	jp	00113$
      009B2A                       1864 00112$:
      009B2A CC 9B 38         [ 2] 1865 	jp	00102$
      009B2D                       1866 00113$:
                           000445  1867 	Sstm8s_clk$CLK_ClearITPendingBit$419 ==.
                                   1868 ; skipping generated iCode
                           000445  1869 	Sstm8s_clk$CLK_ClearITPendingBit$420 ==.
                           000445  1870 	Sstm8s_clk$CLK_ClearITPendingBit$421 ==.
                                   1871 ;	../SPL/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
                                   1872 ; genPointerGet
      009B2D C6 50 C8         [ 1] 1873 	ld	a, 0x50c8
                                   1874 ; genAnd
      009B30 A4 F7            [ 1] 1875 	and	a, #0xf7
                                   1876 ; genPointerSet
      009B32 C7 50 C8         [ 1] 1877 	ld	0x50c8, a
                           00044D  1878 	Sstm8s_clk$CLK_ClearITPendingBit$422 ==.
                                   1879 ; genGoto
      009B35 CC 9B 40         [ 2] 1880 	jp	00104$
                                   1881 ; genLabel
      009B38                       1882 00102$:
                           000450  1883 	Sstm8s_clk$CLK_ClearITPendingBit$423 ==.
                           000450  1884 	Sstm8s_clk$CLK_ClearITPendingBit$424 ==.
                                   1885 ;	../SPL/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
                                   1886 ; genPointerGet
      009B38 C6 50 C5         [ 1] 1887 	ld	a, 0x50c5
                                   1888 ; genAnd
      009B3B A4 F7            [ 1] 1889 	and	a, #0xf7
                                   1890 ; genPointerSet
      009B3D C7 50 C5         [ 1] 1891 	ld	0x50c5, a
                           000458  1892 	Sstm8s_clk$CLK_ClearITPendingBit$425 ==.
                                   1893 ; genLabel
      009B40                       1894 00104$:
                           000458  1895 	Sstm8s_clk$CLK_ClearITPendingBit$426 ==.
                                   1896 ;	../SPL/src/stm8s_clk.c: 745: }
                                   1897 ; genEndFunction
                           000458  1898 	Sstm8s_clk$CLK_ClearITPendingBit$427 ==.
                           000458  1899 	XG$CLK_ClearITPendingBit$0$0 ==.
      009B40 81               [ 4] 1900 	ret
                           000459  1901 	Sstm8s_clk$CLK_ClearITPendingBit$428 ==.
                                   1902 	.area CODE
                                   1903 	.area CONST
                           000000  1904 G$HSIDivFactor$0_0$0 == .
      0080E2                       1905 _HSIDivFactor:
      0080E2 01                    1906 	.db #0x01	; 1
      0080E3 02                    1907 	.db #0x02	; 2
      0080E4 04                    1908 	.db #0x04	; 4
      0080E5 08                    1909 	.db #0x08	; 8
                           000004  1910 G$CLKPrescTable$0_0$0 == .
      0080E6                       1911 _CLKPrescTable:
      0080E6 01                    1912 	.db #0x01	; 1
      0080E7 02                    1913 	.db #0x02	; 2
      0080E8 04                    1914 	.db #0x04	; 4
      0080E9 08                    1915 	.db #0x08	; 8
      0080EA 0A                    1916 	.db #0x0a	; 10
      0080EB 10                    1917 	.db #0x10	; 16
      0080EC 14                    1918 	.db #0x14	; 20
      0080ED 28                    1919 	.db #0x28	; 40
                                   1920 	.area INITIALIZER
                                   1921 	.area CABS (ABS)
                                   1922 
                                   1923 	.area .debug_line (NOLOAD)
      001B00 00 00 06 24           1924 	.dw	0,Ldebug_line_end-Ldebug_line_start
      001B04                       1925 Ldebug_line_start:
      001B04 00 02                 1926 	.dw	2
      001B06 00 00 00 77           1927 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001B0A 01                    1928 	.db	1
      001B0B 01                    1929 	.db	1
      001B0C FB                    1930 	.db	-5
      001B0D 0F                    1931 	.db	15
      001B0E 0A                    1932 	.db	10
      001B0F 00                    1933 	.db	0
      001B10 01                    1934 	.db	1
      001B11 01                    1935 	.db	1
      001B12 01                    1936 	.db	1
      001B13 01                    1937 	.db	1
      001B14 00                    1938 	.db	0
      001B15 00                    1939 	.db	0
      001B16 00                    1940 	.db	0
      001B17 01                    1941 	.db	1
      001B18 43 3A 5C 50 72 6F 67  1942 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001B40 00                    1943 	.db	0
      001B41 43 3A 5C 50 72 6F 67  1944 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001B64 00                    1945 	.db	0
      001B65 00                    1946 	.db	0
      001B66 2E 2E 2F 53 50 4C 2F  1947 	.ascii "../SPL/src/stm8s_clk.c"
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      001B7C 00                    1948 	.db	0
      001B7D 00                    1949 	.uleb128	0
      001B7E 00                    1950 	.uleb128	0
      001B7F 00                    1951 	.uleb128	0
      001B80 00                    1952 	.db	0
      001B81                       1953 Ldebug_line_stmt:
      001B81 00                    1954 	.db	0
      001B82 05                    1955 	.uleb128	5
      001B83 02                    1956 	.db	2
      001B84 00 00 96 E8           1957 	.dw	0,(Sstm8s_clk$CLK_DeInit$0)
      001B88 03                    1958 	.db	3
      001B89 C7 00                 1959 	.sleb128	71
      001B8B 01                    1960 	.db	1
      001B8C 09                    1961 	.db	9
      001B8D 00 00                 1962 	.dw	Sstm8s_clk$CLK_DeInit$2-Sstm8s_clk$CLK_DeInit$0
      001B8F 03                    1963 	.db	3
      001B90 02                    1964 	.sleb128	2
      001B91 01                    1965 	.db	1
      001B92 09                    1966 	.db	9
      001B93 00 04                 1967 	.dw	Sstm8s_clk$CLK_DeInit$3-Sstm8s_clk$CLK_DeInit$2
      001B95 03                    1968 	.db	3
      001B96 01                    1969 	.sleb128	1
      001B97 01                    1970 	.db	1
      001B98 09                    1971 	.db	9
      001B99 00 04                 1972 	.dw	Sstm8s_clk$CLK_DeInit$4-Sstm8s_clk$CLK_DeInit$3
      001B9B 03                    1973 	.db	3
      001B9C 01                    1974 	.sleb128	1
      001B9D 01                    1975 	.db	1
      001B9E 09                    1976 	.db	9
      001B9F 00 04                 1977 	.dw	Sstm8s_clk$CLK_DeInit$5-Sstm8s_clk$CLK_DeInit$4
      001BA1 03                    1978 	.db	3
      001BA2 01                    1979 	.sleb128	1
      001BA3 01                    1980 	.db	1
      001BA4 09                    1981 	.db	9
      001BA5 00 04                 1982 	.dw	Sstm8s_clk$CLK_DeInit$6-Sstm8s_clk$CLK_DeInit$5
      001BA7 03                    1983 	.db	3
      001BA8 01                    1984 	.sleb128	1
      001BA9 01                    1985 	.db	1
      001BAA 09                    1986 	.db	9
      001BAB 00 04                 1987 	.dw	Sstm8s_clk$CLK_DeInit$7-Sstm8s_clk$CLK_DeInit$6
      001BAD 03                    1988 	.db	3
      001BAE 01                    1989 	.sleb128	1
      001BAF 01                    1990 	.db	1
      001BB0 09                    1991 	.db	9
      001BB1 00 04                 1992 	.dw	Sstm8s_clk$CLK_DeInit$8-Sstm8s_clk$CLK_DeInit$7
      001BB3 03                    1993 	.db	3
      001BB4 01                    1994 	.sleb128	1
      001BB5 01                    1995 	.db	1
      001BB6 09                    1996 	.db	9
      001BB7 00 04                 1997 	.dw	Sstm8s_clk$CLK_DeInit$9-Sstm8s_clk$CLK_DeInit$8
      001BB9 03                    1998 	.db	3
      001BBA 01                    1999 	.sleb128	1
      001BBB 01                    2000 	.db	1
      001BBC 09                    2001 	.db	9
      001BBD 00 04                 2002 	.dw	Sstm8s_clk$CLK_DeInit$10-Sstm8s_clk$CLK_DeInit$9
      001BBF 03                    2003 	.db	3
      001BC0 01                    2004 	.sleb128	1
      001BC1 01                    2005 	.db	1
      001BC2 09                    2006 	.db	9
      001BC3 00 04                 2007 	.dw	Sstm8s_clk$CLK_DeInit$11-Sstm8s_clk$CLK_DeInit$10
      001BC5 03                    2008 	.db	3
      001BC6 01                    2009 	.sleb128	1
      001BC7 01                    2010 	.db	1
      001BC8 09                    2011 	.db	9
      001BC9 00 09                 2012 	.dw	Sstm8s_clk$CLK_DeInit$12-Sstm8s_clk$CLK_DeInit$11
      001BCB 03                    2013 	.db	3
      001BCC 02                    2014 	.sleb128	2
      001BCD 01                    2015 	.db	1
      001BCE 09                    2016 	.db	9
      001BCF 00 04                 2017 	.dw	Sstm8s_clk$CLK_DeInit$13-Sstm8s_clk$CLK_DeInit$12
      001BD1 03                    2018 	.db	3
      001BD2 01                    2019 	.sleb128	1
      001BD3 01                    2020 	.db	1
      001BD4 09                    2021 	.db	9
      001BD5 00 04                 2022 	.dw	Sstm8s_clk$CLK_DeInit$14-Sstm8s_clk$CLK_DeInit$13
      001BD7 03                    2023 	.db	3
      001BD8 01                    2024 	.sleb128	1
      001BD9 01                    2025 	.db	1
      001BDA 09                    2026 	.db	9
      001BDB 00 04                 2027 	.dw	Sstm8s_clk$CLK_DeInit$15-Sstm8s_clk$CLK_DeInit$14
      001BDD 03                    2028 	.db	3
      001BDE 01                    2029 	.sleb128	1
      001BDF 01                    2030 	.db	1
      001BE0 09                    2031 	.db	9
      001BE1 00 01                 2032 	.dw	1+Sstm8s_clk$CLK_DeInit$16-Sstm8s_clk$CLK_DeInit$15
      001BE3 00                    2033 	.db	0
      001BE4 01                    2034 	.uleb128	1
      001BE5 01                    2035 	.db	1
      001BE6 00                    2036 	.db	0
      001BE7 05                    2037 	.uleb128	5
      001BE8 02                    2038 	.db	2
      001BE9 00 00 97 22           2039 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$18)
      001BED 03                    2040 	.db	3
      001BEE E2 00                 2041 	.sleb128	98
      001BF0 01                    2042 	.db	1
      001BF1 09                    2043 	.db	9
      001BF2 00 00                 2044 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20-Sstm8s_clk$CLK_FastHaltWakeUpCmd$18
      001BF4 03                    2045 	.db	3
      001BF5 08                    2046 	.sleb128	8
      001BF6 01                    2047 	.db	1
      001BF7 09                    2048 	.db	9
      001BF8 00 03                 2049 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21-Sstm8s_clk$CLK_FastHaltWakeUpCmd$20
      001BFA 03                    2050 	.db	3
      001BFB 7D                    2051 	.sleb128	-3
      001BFC 01                    2052 	.db	1
      001BFD 09                    2053 	.db	9
      001BFE 00 07                 2054 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23-Sstm8s_clk$CLK_FastHaltWakeUpCmd$21
      001C00 03                    2055 	.db	3
      001C01 03                    2056 	.sleb128	3
      001C02 01                    2057 	.db	1
      001C03 09                    2058 	.db	9
      001C04 00 08                 2059 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$26-Sstm8s_clk$CLK_FastHaltWakeUpCmd$23
      001C06 03                    2060 	.db	3
      001C07 05                    2061 	.sleb128	5
      001C08 01                    2062 	.db	1
      001C09 09                    2063 	.db	9
      001C0A 00 05                 2064 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$28-Sstm8s_clk$CLK_FastHaltWakeUpCmd$26
      001C0C 03                    2065 	.db	3
      001C0D 02                    2066 	.sleb128	2
      001C0E 01                    2067 	.db	1
      001C0F 09                    2068 	.db	9
      001C10 00 01                 2069 	.dw	1+Sstm8s_clk$CLK_FastHaltWakeUpCmd$29-Sstm8s_clk$CLK_FastHaltWakeUpCmd$28
      001C12 00                    2070 	.db	0
      001C13 01                    2071 	.uleb128	1
      001C14 01                    2072 	.db	1
      001C15 00                    2073 	.db	0
      001C16 05                    2074 	.uleb128	5
      001C17 02                    2075 	.db	2
      001C18 00 00 97 3A           2076 	.dw	0,(Sstm8s_clk$CLK_HSECmd$31)
      001C1C 03                    2077 	.db	3
      001C1D F8 00                 2078 	.sleb128	120
      001C1F 01                    2079 	.db	1
      001C20 09                    2080 	.db	9
      001C21 00 00                 2081 	.dw	Sstm8s_clk$CLK_HSECmd$33-Sstm8s_clk$CLK_HSECmd$31
      001C23 03                    2082 	.db	3
      001C24 08                    2083 	.sleb128	8
      001C25 01                    2084 	.db	1
      001C26 09                    2085 	.db	9
      001C27 00 03                 2086 	.dw	Sstm8s_clk$CLK_HSECmd$34-Sstm8s_clk$CLK_HSECmd$33
      001C29 03                    2087 	.db	3
      001C2A 7D                    2088 	.sleb128	-3
      001C2B 01                    2089 	.db	1
      001C2C 09                    2090 	.db	9
      001C2D 00 07                 2091 	.dw	Sstm8s_clk$CLK_HSECmd$36-Sstm8s_clk$CLK_HSECmd$34
      001C2F 03                    2092 	.db	3
      001C30 03                    2093 	.sleb128	3
      001C31 01                    2094 	.db	1
      001C32 09                    2095 	.db	9
      001C33 00 08                 2096 	.dw	Sstm8s_clk$CLK_HSECmd$39-Sstm8s_clk$CLK_HSECmd$36
      001C35 03                    2097 	.db	3
      001C36 05                    2098 	.sleb128	5
      001C37 01                    2099 	.db	1
      001C38 09                    2100 	.db	9
      001C39 00 05                 2101 	.dw	Sstm8s_clk$CLK_HSECmd$41-Sstm8s_clk$CLK_HSECmd$39
      001C3B 03                    2102 	.db	3
      001C3C 02                    2103 	.sleb128	2
      001C3D 01                    2104 	.db	1
      001C3E 09                    2105 	.db	9
      001C3F 00 01                 2106 	.dw	1+Sstm8s_clk$CLK_HSECmd$42-Sstm8s_clk$CLK_HSECmd$41
      001C41 00                    2107 	.db	0
      001C42 01                    2108 	.uleb128	1
      001C43 01                    2109 	.db	1
      001C44 00                    2110 	.db	0
      001C45 05                    2111 	.uleb128	5
      001C46 02                    2112 	.db	2
      001C47 00 00 97 52           2113 	.dw	0,(Sstm8s_clk$CLK_HSICmd$44)
      001C4B 03                    2114 	.db	3
      001C4C 8E 01                 2115 	.sleb128	142
      001C4E 01                    2116 	.db	1
      001C4F 09                    2117 	.db	9
      001C50 00 00                 2118 	.dw	Sstm8s_clk$CLK_HSICmd$46-Sstm8s_clk$CLK_HSICmd$44
      001C52 03                    2119 	.db	3
      001C53 08                    2120 	.sleb128	8
      001C54 01                    2121 	.db	1
      001C55 09                    2122 	.db	9
      001C56 00 03                 2123 	.dw	Sstm8s_clk$CLK_HSICmd$47-Sstm8s_clk$CLK_HSICmd$46
      001C58 03                    2124 	.db	3
      001C59 7D                    2125 	.sleb128	-3
      001C5A 01                    2126 	.db	1
      001C5B 09                    2127 	.db	9
      001C5C 00 07                 2128 	.dw	Sstm8s_clk$CLK_HSICmd$49-Sstm8s_clk$CLK_HSICmd$47
      001C5E 03                    2129 	.db	3
      001C5F 03                    2130 	.sleb128	3
      001C60 01                    2131 	.db	1
      001C61 09                    2132 	.db	9
      001C62 00 08                 2133 	.dw	Sstm8s_clk$CLK_HSICmd$52-Sstm8s_clk$CLK_HSICmd$49
      001C64 03                    2134 	.db	3
      001C65 05                    2135 	.sleb128	5
      001C66 01                    2136 	.db	1
      001C67 09                    2137 	.db	9
      001C68 00 05                 2138 	.dw	Sstm8s_clk$CLK_HSICmd$54-Sstm8s_clk$CLK_HSICmd$52
      001C6A 03                    2139 	.db	3
      001C6B 02                    2140 	.sleb128	2
      001C6C 01                    2141 	.db	1
      001C6D 09                    2142 	.db	9
      001C6E 00 01                 2143 	.dw	1+Sstm8s_clk$CLK_HSICmd$55-Sstm8s_clk$CLK_HSICmd$54
      001C70 00                    2144 	.db	0
      001C71 01                    2145 	.uleb128	1
      001C72 01                    2146 	.db	1
      001C73 00                    2147 	.db	0
      001C74 05                    2148 	.uleb128	5
      001C75 02                    2149 	.db	2
      001C76 00 00 97 6A           2150 	.dw	0,(Sstm8s_clk$CLK_LSICmd$57)
      001C7A 03                    2151 	.db	3
      001C7B A5 01                 2152 	.sleb128	165
      001C7D 01                    2153 	.db	1
      001C7E 09                    2154 	.db	9
      001C7F 00 00                 2155 	.dw	Sstm8s_clk$CLK_LSICmd$59-Sstm8s_clk$CLK_LSICmd$57
      001C81 03                    2156 	.db	3
      001C82 08                    2157 	.sleb128	8
      001C83 01                    2158 	.db	1
      001C84 09                    2159 	.db	9
      001C85 00 03                 2160 	.dw	Sstm8s_clk$CLK_LSICmd$60-Sstm8s_clk$CLK_LSICmd$59
      001C87 03                    2161 	.db	3
      001C88 7D                    2162 	.sleb128	-3
      001C89 01                    2163 	.db	1
      001C8A 09                    2164 	.db	9
      001C8B 00 07                 2165 	.dw	Sstm8s_clk$CLK_LSICmd$62-Sstm8s_clk$CLK_LSICmd$60
      001C8D 03                    2166 	.db	3
      001C8E 03                    2167 	.sleb128	3
      001C8F 01                    2168 	.db	1
      001C90 09                    2169 	.db	9
      001C91 00 08                 2170 	.dw	Sstm8s_clk$CLK_LSICmd$65-Sstm8s_clk$CLK_LSICmd$62
      001C93 03                    2171 	.db	3
      001C94 05                    2172 	.sleb128	5
      001C95 01                    2173 	.db	1
      001C96 09                    2174 	.db	9
      001C97 00 05                 2175 	.dw	Sstm8s_clk$CLK_LSICmd$67-Sstm8s_clk$CLK_LSICmd$65
      001C99 03                    2176 	.db	3
      001C9A 02                    2177 	.sleb128	2
      001C9B 01                    2178 	.db	1
      001C9C 09                    2179 	.db	9
      001C9D 00 01                 2180 	.dw	1+Sstm8s_clk$CLK_LSICmd$68-Sstm8s_clk$CLK_LSICmd$67
      001C9F 00                    2181 	.db	0
      001CA0 01                    2182 	.uleb128	1
      001CA1 01                    2183 	.db	1
      001CA2 00                    2184 	.db	0
      001CA3 05                    2185 	.uleb128	5
      001CA4 02                    2186 	.db	2
      001CA5 00 00 97 82           2187 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$70)
      001CA9 03                    2188 	.db	3
      001CAA BC 01                 2189 	.sleb128	188
      001CAC 01                    2190 	.db	1
      001CAD 09                    2191 	.db	9
      001CAE 00 00                 2192 	.dw	Sstm8s_clk$CLK_CCOCmd$72-Sstm8s_clk$CLK_CCOCmd$70
      001CB0 03                    2193 	.db	3
      001CB1 08                    2194 	.sleb128	8
      001CB2 01                    2195 	.db	1
      001CB3 09                    2196 	.db	9
      001CB4 00 03                 2197 	.dw	Sstm8s_clk$CLK_CCOCmd$73-Sstm8s_clk$CLK_CCOCmd$72
      001CB6 03                    2198 	.db	3
      001CB7 7D                    2199 	.sleb128	-3
      001CB8 01                    2200 	.db	1
      001CB9 09                    2201 	.db	9
      001CBA 00 07                 2202 	.dw	Sstm8s_clk$CLK_CCOCmd$75-Sstm8s_clk$CLK_CCOCmd$73
      001CBC 03                    2203 	.db	3
      001CBD 03                    2204 	.sleb128	3
      001CBE 01                    2205 	.db	1
      001CBF 09                    2206 	.db	9
      001CC0 00 08                 2207 	.dw	Sstm8s_clk$CLK_CCOCmd$78-Sstm8s_clk$CLK_CCOCmd$75
      001CC2 03                    2208 	.db	3
      001CC3 05                    2209 	.sleb128	5
      001CC4 01                    2210 	.db	1
      001CC5 09                    2211 	.db	9
      001CC6 00 05                 2212 	.dw	Sstm8s_clk$CLK_CCOCmd$80-Sstm8s_clk$CLK_CCOCmd$78
      001CC8 03                    2213 	.db	3
      001CC9 02                    2214 	.sleb128	2
      001CCA 01                    2215 	.db	1
      001CCB 09                    2216 	.db	9
      001CCC 00 01                 2217 	.dw	1+Sstm8s_clk$CLK_CCOCmd$81-Sstm8s_clk$CLK_CCOCmd$80
      001CCE 00                    2218 	.db	0
      001CCF 01                    2219 	.uleb128	1
      001CD0 01                    2220 	.db	1
      001CD1 00                    2221 	.db	0
      001CD2 05                    2222 	.uleb128	5
      001CD3 02                    2223 	.db	2
      001CD4 00 00 97 9A           2224 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$83)
      001CD8 03                    2225 	.db	3
      001CD9 D4 01                 2226 	.sleb128	212
      001CDB 01                    2227 	.db	1
      001CDC 09                    2228 	.db	9
      001CDD 00 00                 2229 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$85-Sstm8s_clk$CLK_ClockSwitchCmd$83
      001CDF 03                    2230 	.db	3
      001CE0 08                    2231 	.sleb128	8
      001CE1 01                    2232 	.db	1
      001CE2 09                    2233 	.db	9
      001CE3 00 03                 2234 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$86-Sstm8s_clk$CLK_ClockSwitchCmd$85
      001CE5 03                    2235 	.db	3
      001CE6 7D                    2236 	.sleb128	-3
      001CE7 01                    2237 	.db	1
      001CE8 09                    2238 	.db	9
      001CE9 00 07                 2239 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$88-Sstm8s_clk$CLK_ClockSwitchCmd$86
      001CEB 03                    2240 	.db	3
      001CEC 03                    2241 	.sleb128	3
      001CED 01                    2242 	.db	1
      001CEE 09                    2243 	.db	9
      001CEF 00 08                 2244 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$91-Sstm8s_clk$CLK_ClockSwitchCmd$88
      001CF1 03                    2245 	.db	3
      001CF2 05                    2246 	.sleb128	5
      001CF3 01                    2247 	.db	1
      001CF4 09                    2248 	.db	9
      001CF5 00 05                 2249 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$93-Sstm8s_clk$CLK_ClockSwitchCmd$91
      001CF7 03                    2250 	.db	3
      001CF8 02                    2251 	.sleb128	2
      001CF9 01                    2252 	.db	1
      001CFA 09                    2253 	.db	9
      001CFB 00 01                 2254 	.dw	1+Sstm8s_clk$CLK_ClockSwitchCmd$94-Sstm8s_clk$CLK_ClockSwitchCmd$93
      001CFD 00                    2255 	.db	0
      001CFE 01                    2256 	.uleb128	1
      001CFF 01                    2257 	.db	1
      001D00 00                    2258 	.db	0
      001D01 05                    2259 	.uleb128	5
      001D02 02                    2260 	.db	2
      001D03 00 00 97 B2           2261 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$96)
      001D07 03                    2262 	.db	3
      001D08 ED 01                 2263 	.sleb128	237
      001D0A 01                    2264 	.db	1
      001D0B 09                    2265 	.db	9
      001D0C 00 00                 2266 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$98-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$96
      001D0E 03                    2267 	.db	3
      001D0F 08                    2268 	.sleb128	8
      001D10 01                    2269 	.db	1
      001D11 09                    2270 	.db	9
      001D12 00 03                 2271 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$99-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$98
      001D14 03                    2272 	.db	3
      001D15 7D                    2273 	.sleb128	-3
      001D16 01                    2274 	.db	1
      001D17 09                    2275 	.db	9
      001D18 00 07                 2276 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$101-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$99
      001D1A 03                    2277 	.db	3
      001D1B 03                    2278 	.sleb128	3
      001D1C 01                    2279 	.db	1
      001D1D 09                    2280 	.db	9
      001D1E 00 08                 2281 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$104-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$101
      001D20 03                    2282 	.db	3
      001D21 05                    2283 	.sleb128	5
      001D22 01                    2284 	.db	1
      001D23 09                    2285 	.db	9
      001D24 00 05                 2286 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$106-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$104
      001D26 03                    2287 	.db	3
      001D27 02                    2288 	.sleb128	2
      001D28 01                    2289 	.db	1
      001D29 09                    2290 	.db	9
      001D2A 00 01                 2291 	.dw	1+Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$107-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$106
      001D2C 00                    2292 	.db	0
      001D2D 01                    2293 	.uleb128	1
      001D2E 01                    2294 	.db	1
      001D2F 00                    2295 	.db	0
      001D30 05                    2296 	.uleb128	5
      001D31 02                    2297 	.db	2
      001D32 00 00 97 CA           2298 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$109)
      001D36 03                    2299 	.db	3
      001D37 86 02                 2300 	.sleb128	262
      001D39 01                    2301 	.db	1
      001D3A 09                    2302 	.db	9
      001D3B 00 01                 2303 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$112-Sstm8s_clk$CLK_PeripheralClockConfig$109
      001D3D 03                    2304 	.db	3
      001D3E 0B                    2305 	.sleb128	11
      001D3F 01                    2306 	.db	1
      001D40 09                    2307 	.db	9
      001D41 00 12                 2308 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$115-Sstm8s_clk$CLK_PeripheralClockConfig$112
      001D43 03                    2309 	.db	3
      001D44 05                    2310 	.sleb128	5
      001D45 01                    2311 	.db	1
      001D46 09                    2312 	.db	9
      001D47 00 05                 2313 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$116-Sstm8s_clk$CLK_PeripheralClockConfig$115
      001D49 03                    2314 	.db	3
      001D4A 76                    2315 	.sleb128	-10
      001D4B 01                    2316 	.db	1
      001D4C 09                    2317 	.db	9
      001D4D 00 09                 2318 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$117-Sstm8s_clk$CLK_PeripheralClockConfig$116
      001D4F 03                    2319 	.db	3
      001D50 05                    2320 	.sleb128	5
      001D51 01                    2321 	.db	1
      001D52 09                    2322 	.db	9
      001D53 00 03                 2323 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$119-Sstm8s_clk$CLK_PeripheralClockConfig$117
      001D55 03                    2324 	.db	3
      001D56 7D                    2325 	.sleb128	-3
      001D57 01                    2326 	.db	1
      001D58 09                    2327 	.db	9
      001D59 00 07                 2328 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$121-Sstm8s_clk$CLK_PeripheralClockConfig$119
      001D5B 03                    2329 	.db	3
      001D5C 03                    2330 	.sleb128	3
      001D5D 01                    2331 	.db	1
      001D5E 09                    2332 	.db	9
      001D5F 00 08                 2333 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$124-Sstm8s_clk$CLK_PeripheralClockConfig$121
      001D61 03                    2334 	.db	3
      001D62 05                    2335 	.sleb128	5
      001D63 01                    2336 	.db	1
      001D64 09                    2337 	.db	9
      001D65 00 08                 2338 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$126-Sstm8s_clk$CLK_PeripheralClockConfig$124
      001D67 03                    2339 	.db	3
      001D68 08                    2340 	.sleb128	8
      001D69 01                    2341 	.db	1
      001D6A 09                    2342 	.db	9
      001D6B 00 03                 2343 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$128-Sstm8s_clk$CLK_PeripheralClockConfig$126
      001D6D 03                    2344 	.db	3
      001D6E 7D                    2345 	.sleb128	-3
      001D6F 01                    2346 	.db	1
      001D70 09                    2347 	.db	9
      001D71 00 07                 2348 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$130-Sstm8s_clk$CLK_PeripheralClockConfig$128
      001D73 03                    2349 	.db	3
      001D74 03                    2350 	.sleb128	3
      001D75 01                    2351 	.db	1
      001D76 09                    2352 	.db	9
      001D77 00 08                 2353 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$133-Sstm8s_clk$CLK_PeripheralClockConfig$130
      001D79 03                    2354 	.db	3
      001D7A 05                    2355 	.sleb128	5
      001D7B 01                    2356 	.db	1
      001D7C 09                    2357 	.db	9
      001D7D 00 05                 2358 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$135-Sstm8s_clk$CLK_PeripheralClockConfig$133
      001D7F 03                    2359 	.db	3
      001D80 03                    2360 	.sleb128	3
      001D81 01                    2361 	.db	1
      001D82 09                    2362 	.db	9
      001D83 00 02                 2363 	.dw	1+Sstm8s_clk$CLK_PeripheralClockConfig$137-Sstm8s_clk$CLK_PeripheralClockConfig$135
      001D85 00                    2364 	.db	0
      001D86 01                    2365 	.uleb128	1
      001D87 01                    2366 	.db	1
      001D88 00                    2367 	.db	0
      001D89 05                    2368 	.uleb128	5
      001D8A 02                    2369 	.db	2
      001D8B 00 00 98 1E           2370 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$139)
      001D8F 03                    2371 	.db	3
      001D90 B4 02                 2372 	.sleb128	308
      001D92 01                    2373 	.db	1
      001D93 09                    2374 	.db	9
      001D94 00 01                 2375 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$142-Sstm8s_clk$CLK_ClockSwitchConfig$139
      001D96 03                    2376 	.db	3
      001D97 03                    2377 	.sleb128	3
      001D98 01                    2378 	.db	1
      001D99 09                    2379 	.db	9
      001D9A 00 02                 2380 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$143-Sstm8s_clk$CLK_ClockSwitchConfig$142
      001D9C 03                    2381 	.db	3
      001D9D 0A                    2382 	.sleb128	10
      001D9E 01                    2383 	.db	1
      001D9F 09                    2384 	.db	9
      001DA0 00 05                 2385 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$144-Sstm8s_clk$CLK_ClockSwitchConfig$143
      001DA2 03                    2386 	.db	3
      001DA3 06                    2387 	.sleb128	6
      001DA4 01                    2388 	.db	1
      001DA5 09                    2389 	.db	9
      001DA6 00 03                 2390 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$145-Sstm8s_clk$CLK_ClockSwitchConfig$144
      001DA8 03                    2391 	.db	3
      001DA9 7D                    2392 	.sleb128	-3
      001DAA 01                    2393 	.db	1
      001DAB 09                    2394 	.db	9
      001DAC 00 0D                 2395 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$150-Sstm8s_clk$CLK_ClockSwitchConfig$145
      001DAE 03                    2396 	.db	3
      001DAF 03                    2397 	.sleb128	3
      001DB0 01                    2398 	.db	1
      001DB1 09                    2399 	.db	9
      001DB2 00 08                 2400 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$152-Sstm8s_clk$CLK_ClockSwitchConfig$150
      001DB4 03                    2401 	.db	3
      001DB5 03                    2402 	.sleb128	3
      001DB6 01                    2403 	.db	1
      001DB7 09                    2404 	.db	9
      001DB8 00 07                 2405 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$154-Sstm8s_clk$CLK_ClockSwitchConfig$152
      001DBA 03                    2406 	.db	3
      001DBB 02                    2407 	.sleb128	2
      001DBC 01                    2408 	.db	1
      001DBD 09                    2409 	.db	9
      001DBE 00 08                 2410 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$157-Sstm8s_clk$CLK_ClockSwitchConfig$154
      001DC0 03                    2411 	.db	3
      001DC1 04                    2412 	.sleb128	4
      001DC2 01                    2413 	.db	1
      001DC3 09                    2414 	.db	9
      001DC4 00 05                 2415 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$159-Sstm8s_clk$CLK_ClockSwitchConfig$157
      001DC6 03                    2416 	.db	3
      001DC7 04                    2417 	.sleb128	4
      001DC8 01                    2418 	.db	1
      001DC9 09                    2419 	.db	9
      001DCA 00 08                 2420 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$161-Sstm8s_clk$CLK_ClockSwitchConfig$159
      001DCC 03                    2421 	.db	3
      001DCD 03                    2422 	.sleb128	3
      001DCE 01                    2423 	.db	1
      001DCF 09                    2424 	.db	9
      001DD0 00 0F                 2425 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$163-Sstm8s_clk$CLK_ClockSwitchConfig$161
      001DD2 03                    2426 	.db	3
      001DD3 02                    2427 	.sleb128	2
      001DD4 01                    2428 	.db	1
      001DD5 09                    2429 	.db	9
      001DD6 00 04                 2430 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$166-Sstm8s_clk$CLK_ClockSwitchConfig$163
      001DD8 03                    2431 	.db	3
      001DD9 03                    2432 	.sleb128	3
      001DDA 01                    2433 	.db	1
      001DDB 09                    2434 	.db	9
      001DDC 00 06                 2435 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$168-Sstm8s_clk$CLK_ClockSwitchConfig$166
      001DDE 03                    2436 	.db	3
      001DDF 02                    2437 	.sleb128	2
      001DE0 01                    2438 	.db	1
      001DE1 09                    2439 	.db	9
      001DE2 00 06                 2440 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$171-Sstm8s_clk$CLK_ClockSwitchConfig$168
      001DE4 03                    2441 	.db	3
      001DE5 04                    2442 	.sleb128	4
      001DE6 01                    2443 	.db	1
      001DE7 09                    2444 	.db	9
      001DE8 00 04                 2445 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$174-Sstm8s_clk$CLK_ClockSwitchConfig$171
      001DEA 03                    2446 	.db	3
      001DEB 06                    2447 	.sleb128	6
      001DEC 01                    2448 	.db	1
      001DED 09                    2449 	.db	9
      001DEE 00 07                 2450 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$176-Sstm8s_clk$CLK_ClockSwitchConfig$174
      001DF0 03                    2451 	.db	3
      001DF1 02                    2452 	.sleb128	2
      001DF2 01                    2453 	.db	1
      001DF3 09                    2454 	.db	9
      001DF4 00 08                 2455 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$179-Sstm8s_clk$CLK_ClockSwitchConfig$176
      001DF6 03                    2456 	.db	3
      001DF7 04                    2457 	.sleb128	4
      001DF8 01                    2458 	.db	1
      001DF9 09                    2459 	.db	9
      001DFA 00 05                 2460 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$181-Sstm8s_clk$CLK_ClockSwitchConfig$179
      001DFC 03                    2461 	.db	3
      001DFD 04                    2462 	.sleb128	4
      001DFE 01                    2463 	.db	1
      001DFF 09                    2464 	.db	9
      001E00 00 08                 2465 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$183-Sstm8s_clk$CLK_ClockSwitchConfig$181
      001E02 03                    2466 	.db	3
      001E03 03                    2467 	.sleb128	3
      001E04 01                    2468 	.db	1
      001E05 09                    2469 	.db	9
      001E06 00 10                 2470 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$185-Sstm8s_clk$CLK_ClockSwitchConfig$183
      001E08 03                    2471 	.db	3
      001E09 02                    2472 	.sleb128	2
      001E0A 01                    2473 	.db	1
      001E0B 09                    2474 	.db	9
      001E0C 00 04                 2475 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$188-Sstm8s_clk$CLK_ClockSwitchConfig$185
      001E0E 03                    2476 	.db	3
      001E0F 03                    2477 	.sleb128	3
      001E10 01                    2478 	.db	1
      001E11 09                    2479 	.db	9
      001E12 00 06                 2480 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$190-Sstm8s_clk$CLK_ClockSwitchConfig$188
      001E14 03                    2481 	.db	3
      001E15 03                    2482 	.sleb128	3
      001E16 01                    2483 	.db	1
      001E17 09                    2484 	.db	9
      001E18 00 08                 2485 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$191-Sstm8s_clk$CLK_ClockSwitchConfig$190
      001E1A 03                    2486 	.db	3
      001E1B 01                    2487 	.sleb128	1
      001E1C 01                    2488 	.db	1
      001E1D 09                    2489 	.db	9
      001E1E 00 06                 2490 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$194-Sstm8s_clk$CLK_ClockSwitchConfig$191
      001E20 03                    2491 	.db	3
      001E21 04                    2492 	.sleb128	4
      001E22 01                    2493 	.db	1
      001E23 09                    2494 	.db	9
      001E24 00 01                 2495 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$196-Sstm8s_clk$CLK_ClockSwitchConfig$194
      001E26 03                    2496 	.db	3
      001E27 03                    2497 	.sleb128	3
      001E28 01                    2498 	.db	1
      001E29 09                    2499 	.db	9
      001E2A 00 07                 2500 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$198-Sstm8s_clk$CLK_ClockSwitchConfig$196
      001E2C 03                    2501 	.db	3
      001E2D 03                    2502 	.sleb128	3
      001E2E 01                    2503 	.db	1
      001E2F 09                    2504 	.db	9
      001E30 00 13                 2505 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$201-Sstm8s_clk$CLK_ClockSwitchConfig$198
      001E32 03                    2506 	.db	3
      001E33 02                    2507 	.sleb128	2
      001E34 01                    2508 	.db	1
      001E35 09                    2509 	.db	9
      001E36 00 0B                 2510 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$203-Sstm8s_clk$CLK_ClockSwitchConfig$201
      001E38 03                    2511 	.db	3
      001E39 02                    2512 	.sleb128	2
      001E3A 01                    2513 	.db	1
      001E3B 09                    2514 	.db	9
      001E3C 00 13                 2515 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$206-Sstm8s_clk$CLK_ClockSwitchConfig$203
      001E3E 03                    2516 	.db	3
      001E3F 02                    2517 	.sleb128	2
      001E40 01                    2518 	.db	1
      001E41 09                    2519 	.db	9
      001E42 00 0B                 2520 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$208-Sstm8s_clk$CLK_ClockSwitchConfig$206
      001E44 03                    2521 	.db	3
      001E45 02                    2522 	.sleb128	2
      001E46 01                    2523 	.db	1
      001E47 09                    2524 	.db	9
      001E48 00 13                 2525 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$211-Sstm8s_clk$CLK_ClockSwitchConfig$208
      001E4A 03                    2526 	.db	3
      001E4B 02                    2527 	.sleb128	2
      001E4C 01                    2528 	.db	1
      001E4D 09                    2529 	.db	9
      001E4E 00 08                 2530 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$213-Sstm8s_clk$CLK_ClockSwitchConfig$211
      001E50 03                    2531 	.db	3
      001E51 03                    2532 	.sleb128	3
      001E52 01                    2533 	.db	1
      001E53 09                    2534 	.db	9
      001E54 00 01                 2535 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$214-Sstm8s_clk$CLK_ClockSwitchConfig$213
      001E56 03                    2536 	.db	3
      001E57 01                    2537 	.sleb128	1
      001E58 01                    2538 	.db	1
      001E59 09                    2539 	.db	9
      001E5A 00 03                 2540 	.dw	1+Sstm8s_clk$CLK_ClockSwitchConfig$216-Sstm8s_clk$CLK_ClockSwitchConfig$214
      001E5C 00                    2541 	.db	0
      001E5D 01                    2542 	.uleb128	1
      001E5E 01                    2543 	.db	1
      001E5F 00                    2544 	.db	0
      001E60 05                    2545 	.uleb128	5
      001E61 02                    2546 	.db	2
      001E62 00 00 99 24           2547 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$218)
      001E66 03                    2548 	.db	3
      001E67 9E 03                 2549 	.sleb128	414
      001E69 01                    2550 	.db	1
      001E6A 09                    2551 	.db	9
      001E6B 00 00                 2552 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$220-Sstm8s_clk$CLK_HSIPrescalerConfig$218
      001E6D 03                    2553 	.db	3
      001E6E 06                    2554 	.sleb128	6
      001E6F 01                    2555 	.db	1
      001E70 09                    2556 	.db	9
      001E71 00 08                 2557 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$221-Sstm8s_clk$CLK_HSIPrescalerConfig$220
      001E73 03                    2558 	.db	3
      001E74 03                    2559 	.sleb128	3
      001E75 01                    2560 	.db	1
      001E76 09                    2561 	.db	9
      001E77 00 08                 2562 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$222-Sstm8s_clk$CLK_HSIPrescalerConfig$221
      001E79 03                    2563 	.db	3
      001E7A 01                    2564 	.sleb128	1
      001E7B 01                    2565 	.db	1
      001E7C 09                    2566 	.db	9
      001E7D 00 01                 2567 	.dw	1+Sstm8s_clk$CLK_HSIPrescalerConfig$223-Sstm8s_clk$CLK_HSIPrescalerConfig$222
      001E7F 00                    2568 	.db	0
      001E80 01                    2569 	.uleb128	1
      001E81 01                    2570 	.db	1
      001E82 00                    2571 	.db	0
      001E83 05                    2572 	.uleb128	5
      001E84 02                    2573 	.db	2
      001E85 00 00 99 35           2574 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$225)
      001E89 03                    2575 	.db	3
      001E8A B3 03                 2576 	.sleb128	435
      001E8C 01                    2577 	.db	1
      001E8D 09                    2578 	.db	9
      001E8E 00 00                 2579 	.dw	Sstm8s_clk$CLK_CCOConfig$227-Sstm8s_clk$CLK_CCOConfig$225
      001E90 03                    2580 	.db	3
      001E91 06                    2581 	.sleb128	6
      001E92 01                    2582 	.db	1
      001E93 09                    2583 	.db	9
      001E94 00 08                 2584 	.dw	Sstm8s_clk$CLK_CCOConfig$228-Sstm8s_clk$CLK_CCOConfig$227
      001E96 03                    2585 	.db	3
      001E97 03                    2586 	.sleb128	3
      001E98 01                    2587 	.db	1
      001E99 09                    2588 	.db	9
      001E9A 00 08                 2589 	.dw	Sstm8s_clk$CLK_CCOConfig$229-Sstm8s_clk$CLK_CCOConfig$228
      001E9C 03                    2590 	.db	3
      001E9D 03                    2591 	.sleb128	3
      001E9E 01                    2592 	.db	1
      001E9F 09                    2593 	.db	9
      001EA0 00 08                 2594 	.dw	Sstm8s_clk$CLK_CCOConfig$230-Sstm8s_clk$CLK_CCOConfig$229
      001EA2 03                    2595 	.db	3
      001EA3 01                    2596 	.sleb128	1
      001EA4 01                    2597 	.db	1
      001EA5 09                    2598 	.db	9
      001EA6 00 01                 2599 	.dw	1+Sstm8s_clk$CLK_CCOConfig$231-Sstm8s_clk$CLK_CCOConfig$230
      001EA8 00                    2600 	.db	0
      001EA9 01                    2601 	.uleb128	1
      001EAA 01                    2602 	.db	1
      001EAB 00                    2603 	.db	0
      001EAC 05                    2604 	.uleb128	5
      001EAD 02                    2605 	.db	2
      001EAE 00 00 99 4E           2606 	.dw	0,(Sstm8s_clk$CLK_ITConfig$233)
      001EB2 03                    2607 	.db	3
      001EB3 CA 03                 2608 	.sleb128	458
      001EB5 01                    2609 	.db	1
      001EB6 09                    2610 	.db	9
      001EB7 00 01                 2611 	.dw	Sstm8s_clk$CLK_ITConfig$236-Sstm8s_clk$CLK_ITConfig$233
      001EB9 03                    2612 	.db	3
      001EBA 08                    2613 	.sleb128	8
      001EBB 01                    2614 	.db	1
      001EBC 09                    2615 	.db	9
      001EBD 00 1B                 2616 	.dw	Sstm8s_clk$CLK_ITConfig$239-Sstm8s_clk$CLK_ITConfig$236
      001EBF 03                    2617 	.db	3
      001EC0 7E                    2618 	.sleb128	-2
      001EC1 01                    2619 	.db	1
      001EC2 09                    2620 	.db	9
      001EC3 00 07                 2621 	.dw	Sstm8s_clk$CLK_ITConfig$241-Sstm8s_clk$CLK_ITConfig$239
      001EC5 03                    2622 	.db	3
      001EC6 02                    2623 	.sleb128	2
      001EC7 01                    2624 	.db	1
      001EC8 09                    2625 	.db	9
      001EC9 00 0D                 2626 	.dw	Sstm8s_clk$CLK_ITConfig$243-Sstm8s_clk$CLK_ITConfig$241
      001ECB 03                    2627 	.db	3
      001ECC 03                    2628 	.sleb128	3
      001ECD 01                    2629 	.db	1
      001ECE 09                    2630 	.db	9
      001ECF 00 08                 2631 	.dw	Sstm8s_clk$CLK_ITConfig$244-Sstm8s_clk$CLK_ITConfig$243
      001ED1 03                    2632 	.db	3
      001ED2 01                    2633 	.sleb128	1
      001ED3 01                    2634 	.db	1
      001ED4 09                    2635 	.db	9
      001ED5 00 03                 2636 	.dw	Sstm8s_clk$CLK_ITConfig$245-Sstm8s_clk$CLK_ITConfig$244
      001ED7 03                    2637 	.db	3
      001ED8 01                    2638 	.sleb128	1
      001ED9 01                    2639 	.db	1
      001EDA 09                    2640 	.db	9
      001EDB 00 00                 2641 	.dw	Sstm8s_clk$CLK_ITConfig$246-Sstm8s_clk$CLK_ITConfig$245
      001EDD 03                    2642 	.db	3
      001EDE 01                    2643 	.sleb128	1
      001EDF 01                    2644 	.db	1
      001EE0 09                    2645 	.db	9
      001EE1 00 08                 2646 	.dw	Sstm8s_clk$CLK_ITConfig$247-Sstm8s_clk$CLK_ITConfig$246
      001EE3 03                    2647 	.db	3
      001EE4 01                    2648 	.sleb128	1
      001EE5 01                    2649 	.db	1
      001EE6 09                    2650 	.db	9
      001EE7 00 03                 2651 	.dw	Sstm8s_clk$CLK_ITConfig$249-Sstm8s_clk$CLK_ITConfig$247
      001EE9 03                    2652 	.db	3
      001EEA 03                    2653 	.sleb128	3
      001EEB 01                    2654 	.db	1
      001EEC 09                    2655 	.db	9
      001EED 00 00                 2656 	.dw	Sstm8s_clk$CLK_ITConfig$251-Sstm8s_clk$CLK_ITConfig$249
      001EEF 03                    2657 	.db	3
      001EF0 04                    2658 	.sleb128	4
      001EF1 01                    2659 	.db	1
      001EF2 09                    2660 	.db	9
      001EF3 00 0D                 2661 	.dw	Sstm8s_clk$CLK_ITConfig$253-Sstm8s_clk$CLK_ITConfig$251
      001EF5 03                    2662 	.db	3
      001EF6 03                    2663 	.sleb128	3
      001EF7 01                    2664 	.db	1
      001EF8 09                    2665 	.db	9
      001EF9 00 08                 2666 	.dw	Sstm8s_clk$CLK_ITConfig$254-Sstm8s_clk$CLK_ITConfig$253
      001EFB 03                    2667 	.db	3
      001EFC 01                    2668 	.sleb128	1
      001EFD 01                    2669 	.db	1
      001EFE 09                    2670 	.db	9
      001EFF 00 03                 2671 	.dw	Sstm8s_clk$CLK_ITConfig$255-Sstm8s_clk$CLK_ITConfig$254
      001F01 03                    2672 	.db	3
      001F02 01                    2673 	.sleb128	1
      001F03 01                    2674 	.db	1
      001F04 09                    2675 	.db	9
      001F05 00 00                 2676 	.dw	Sstm8s_clk$CLK_ITConfig$256-Sstm8s_clk$CLK_ITConfig$255
      001F07 03                    2677 	.db	3
      001F08 01                    2678 	.sleb128	1
      001F09 01                    2679 	.db	1
      001F0A 09                    2680 	.db	9
      001F0B 00 08                 2681 	.dw	Sstm8s_clk$CLK_ITConfig$258-Sstm8s_clk$CLK_ITConfig$256
      001F0D 03                    2682 	.db	3
      001F0E 04                    2683 	.sleb128	4
      001F0F 01                    2684 	.db	1
      001F10 09                    2685 	.db	9
      001F11 00 00                 2686 	.dw	Sstm8s_clk$CLK_ITConfig$259-Sstm8s_clk$CLK_ITConfig$258
      001F13 03                    2687 	.db	3
      001F14 02                    2688 	.sleb128	2
      001F15 01                    2689 	.db	1
      001F16 09                    2690 	.db	9
      001F17 00 02                 2691 	.dw	1+Sstm8s_clk$CLK_ITConfig$261-Sstm8s_clk$CLK_ITConfig$259
      001F19 00                    2692 	.db	0
      001F1A 01                    2693 	.uleb128	1
      001F1B 01                    2694 	.db	1
      001F1C 00                    2695 	.db	0
      001F1D 05                    2696 	.uleb128	5
      001F1E 02                    2697 	.db	2
      001F1F 00 00 99 B6           2698 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$263)
      001F23 03                    2699 	.db	3
      001F24 F3 03                 2700 	.sleb128	499
      001F26 01                    2701 	.db	1
      001F27 09                    2702 	.db	9
      001F28 00 01                 2703 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$266-Sstm8s_clk$CLK_SYSCLKConfig$263
      001F2A 03                    2704 	.db	3
      001F2B 07                    2705 	.sleb128	7
      001F2C 01                    2706 	.db	1
      001F2D 09                    2707 	.db	9
      001F2E 00 03                 2708 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$267-Sstm8s_clk$CLK_SYSCLKConfig$266
      001F30 03                    2709 	.db	3
      001F31 7E                    2710 	.sleb128	-2
      001F32 01                    2711 	.db	1
      001F33 09                    2712 	.db	9
      001F34 00 07                 2713 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$269-Sstm8s_clk$CLK_SYSCLKConfig$267
      001F36 03                    2714 	.db	3
      001F37 02                    2715 	.sleb128	2
      001F38 01                    2716 	.db	1
      001F39 09                    2717 	.db	9
      001F3A 00 05                 2718 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$270-Sstm8s_clk$CLK_SYSCLKConfig$269
      001F3C 03                    2719 	.db	3
      001F3D 01                    2720 	.sleb128	1
      001F3E 01                    2721 	.db	1
      001F3F 09                    2722 	.db	9
      001F40 00 11                 2723 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$273-Sstm8s_clk$CLK_SYSCLKConfig$270
      001F42 03                    2724 	.db	3
      001F43 04                    2725 	.sleb128	4
      001F44 01                    2726 	.db	1
      001F45 09                    2727 	.db	9
      001F46 00 05                 2728 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$274-Sstm8s_clk$CLK_SYSCLKConfig$273
      001F48 03                    2729 	.db	3
      001F49 01                    2730 	.sleb128	1
      001F4A 01                    2731 	.db	1
      001F4B 09                    2732 	.db	9
      001F4C 00 0E                 2733 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$276-Sstm8s_clk$CLK_SYSCLKConfig$274
      001F4E 03                    2734 	.db	3
      001F4F 02                    2735 	.sleb128	2
      001F50 01                    2736 	.db	1
      001F51 09                    2737 	.db	9
      001F52 00 02                 2738 	.dw	1+Sstm8s_clk$CLK_SYSCLKConfig$278-Sstm8s_clk$CLK_SYSCLKConfig$276
      001F54 00                    2739 	.db	0
      001F55 01                    2740 	.uleb128	1
      001F56 01                    2741 	.db	1
      001F57 00                    2742 	.db	0
      001F58 05                    2743 	.uleb128	5
      001F59 02                    2744 	.db	2
      001F5A 00 00 99 EC           2745 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$280)
      001F5E 03                    2746 	.db	3
      001F5F 8A 04                 2747 	.sleb128	522
      001F61 01                    2748 	.db	1
      001F62 09                    2749 	.db	9
      001F63 00 00                 2750 	.dw	Sstm8s_clk$CLK_SWIMConfig$282-Sstm8s_clk$CLK_SWIMConfig$280
      001F65 03                    2751 	.db	3
      001F66 08                    2752 	.sleb128	8
      001F67 01                    2753 	.db	1
      001F68 09                    2754 	.db	9
      001F69 00 03                 2755 	.dw	Sstm8s_clk$CLK_SWIMConfig$283-Sstm8s_clk$CLK_SWIMConfig$282
      001F6B 03                    2756 	.db	3
      001F6C 7D                    2757 	.sleb128	-3
      001F6D 01                    2758 	.db	1
      001F6E 09                    2759 	.db	9
      001F6F 00 07                 2760 	.dw	Sstm8s_clk$CLK_SWIMConfig$285-Sstm8s_clk$CLK_SWIMConfig$283
      001F71 03                    2761 	.db	3
      001F72 03                    2762 	.sleb128	3
      001F73 01                    2763 	.db	1
      001F74 09                    2764 	.db	9
      001F75 00 08                 2765 	.dw	Sstm8s_clk$CLK_SWIMConfig$288-Sstm8s_clk$CLK_SWIMConfig$285
      001F77 03                    2766 	.db	3
      001F78 05                    2767 	.sleb128	5
      001F79 01                    2768 	.db	1
      001F7A 09                    2769 	.db	9
      001F7B 00 05                 2770 	.dw	Sstm8s_clk$CLK_SWIMConfig$290-Sstm8s_clk$CLK_SWIMConfig$288
      001F7D 03                    2771 	.db	3
      001F7E 02                    2772 	.sleb128	2
      001F7F 01                    2773 	.db	1
      001F80 09                    2774 	.db	9
      001F81 00 01                 2775 	.dw	1+Sstm8s_clk$CLK_SWIMConfig$291-Sstm8s_clk$CLK_SWIMConfig$290
      001F83 00                    2776 	.db	0
      001F84 01                    2777 	.uleb128	1
      001F85 01                    2778 	.db	1
      001F86 00                    2779 	.db	0
      001F87 05                    2780 	.uleb128	5
      001F88 02                    2781 	.db	2
      001F89 00 00 9A 04           2782 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$293)
      001F8D 03                    2783 	.db	3
      001F8E A2 04                 2784 	.sleb128	546
      001F90 01                    2785 	.db	1
      001F91 09                    2786 	.db	9
      001F92 00 00                 2787 	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$295-Sstm8s_clk$CLK_ClockSecuritySystemEnable$293
      001F94 03                    2788 	.db	3
      001F95 03                    2789 	.sleb128	3
      001F96 01                    2790 	.db	1
      001F97 09                    2791 	.db	9
      001F98 00 08                 2792 	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$296-Sstm8s_clk$CLK_ClockSecuritySystemEnable$295
      001F9A 03                    2793 	.db	3
      001F9B 01                    2794 	.sleb128	1
      001F9C 01                    2795 	.db	1
      001F9D 09                    2796 	.db	9
      001F9E 00 01                 2797 	.dw	1+Sstm8s_clk$CLK_ClockSecuritySystemEnable$297-Sstm8s_clk$CLK_ClockSecuritySystemEnable$296
      001FA0 00                    2798 	.db	0
      001FA1 01                    2799 	.uleb128	1
      001FA2 01                    2800 	.db	1
      001FA3 00                    2801 	.db	0
      001FA4 05                    2802 	.uleb128	5
      001FA5 02                    2803 	.db	2
      001FA6 00 00 9A 0D           2804 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$299)
      001FAA 03                    2805 	.db	3
      001FAB AE 04                 2806 	.sleb128	558
      001FAD 01                    2807 	.db	1
      001FAE 09                    2808 	.db	9
      001FAF 00 00                 2809 	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$301-Sstm8s_clk$CLK_GetSYSCLKSource$299
      001FB1 03                    2810 	.db	3
      001FB2 02                    2811 	.sleb128	2
      001FB3 01                    2812 	.db	1
      001FB4 09                    2813 	.db	9
      001FB5 00 03                 2814 	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$302-Sstm8s_clk$CLK_GetSYSCLKSource$301
      001FB7 03                    2815 	.db	3
      001FB8 01                    2816 	.sleb128	1
      001FB9 01                    2817 	.db	1
      001FBA 09                    2818 	.db	9
      001FBB 00 01                 2819 	.dw	1+Sstm8s_clk$CLK_GetSYSCLKSource$303-Sstm8s_clk$CLK_GetSYSCLKSource$302
      001FBD 00                    2820 	.db	0
      001FBE 01                    2821 	.uleb128	1
      001FBF 01                    2822 	.db	1
      001FC0 00                    2823 	.db	0
      001FC1 05                    2824 	.uleb128	5
      001FC2 02                    2825 	.db	2
      001FC3 00 00 9A 11           2826 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$305)
      001FC7 03                    2827 	.db	3
      001FC8 B8 04                 2828 	.sleb128	568
      001FCA 01                    2829 	.db	1
      001FCB 09                    2830 	.db	9
      001FCC 00 02                 2831 	.dw	Sstm8s_clk$CLK_GetClockFreq$308-Sstm8s_clk$CLK_GetClockFreq$305
      001FCE 03                    2832 	.db	3
      001FCF 07                    2833 	.sleb128	7
      001FD0 01                    2834 	.db	1
      001FD1 09                    2835 	.db	9
      001FD2 00 05                 2836 	.dw	Sstm8s_clk$CLK_GetClockFreq$309-Sstm8s_clk$CLK_GetClockFreq$308
      001FD4 03                    2837 	.db	3
      001FD5 02                    2838 	.sleb128	2
      001FD6 01                    2839 	.db	1
      001FD7 09                    2840 	.db	9
      001FD8 00 0C                 2841 	.dw	Sstm8s_clk$CLK_GetClockFreq$312-Sstm8s_clk$CLK_GetClockFreq$309
      001FDA 03                    2842 	.db	3
      001FDB 02                    2843 	.sleb128	2
      001FDC 01                    2844 	.db	1
      001FDD 09                    2845 	.db	9
      001FDE 00 05                 2846 	.dw	Sstm8s_clk$CLK_GetClockFreq$313-Sstm8s_clk$CLK_GetClockFreq$312
      001FE0 03                    2847 	.db	3
      001FE1 01                    2848 	.sleb128	1
      001FE2 01                    2849 	.db	1
      001FE3 09                    2850 	.db	9
      001FE4 00 03                 2851 	.dw	Sstm8s_clk$CLK_GetClockFreq$314-Sstm8s_clk$CLK_GetClockFreq$313
      001FE6 03                    2852 	.db	3
      001FE7 01                    2853 	.sleb128	1
      001FE8 01                    2854 	.db	1
      001FE9 09                    2855 	.db	9
      001FEA 00 06                 2856 	.dw	Sstm8s_clk$CLK_GetClockFreq$315-Sstm8s_clk$CLK_GetClockFreq$314
      001FEC 03                    2857 	.db	3
      001FED 01                    2858 	.sleb128	1
      001FEE 01                    2859 	.db	1
      001FEF 09                    2860 	.db	9
      001FF0 00 1A                 2861 	.dw	Sstm8s_clk$CLK_GetClockFreq$324-Sstm8s_clk$CLK_GetClockFreq$315
      001FF2 03                    2862 	.db	3
      001FF3 02                    2863 	.sleb128	2
      001FF4 01                    2864 	.db	1
      001FF5 09                    2865 	.db	9
      001FF6 00 0C                 2866 	.dw	Sstm8s_clk$CLK_GetClockFreq$327-Sstm8s_clk$CLK_GetClockFreq$324
      001FF8 03                    2867 	.db	3
      001FF9 02                    2868 	.sleb128	2
      001FFA 01                    2869 	.db	1
      001FFB 09                    2870 	.db	9
      001FFC 00 0A                 2871 	.dw	Sstm8s_clk$CLK_GetClockFreq$330-Sstm8s_clk$CLK_GetClockFreq$327
      001FFE 03                    2872 	.db	3
      001FFF 04                    2873 	.sleb128	4
      002000 01                    2874 	.db	1
      002001 09                    2875 	.db	9
      002002 00 08                 2876 	.dw	Sstm8s_clk$CLK_GetClockFreq$332-Sstm8s_clk$CLK_GetClockFreq$330
      002004 03                    2877 	.db	3
      002005 03                    2878 	.sleb128	3
      002006 01                    2879 	.db	1
      002007 09                    2880 	.db	9
      002008 00 03                 2881 	.dw	Sstm8s_clk$CLK_GetClockFreq$333-Sstm8s_clk$CLK_GetClockFreq$332
      00200A 03                    2882 	.db	3
      00200B 01                    2883 	.sleb128	1
      00200C 01                    2884 	.db	1
      00200D 09                    2885 	.db	9
      00200E 00 03                 2886 	.dw	1+Sstm8s_clk$CLK_GetClockFreq$335-Sstm8s_clk$CLK_GetClockFreq$333
      002010 00                    2887 	.db	0
      002011 01                    2888 	.uleb128	1
      002012 01                    2889 	.db	1
      002013 00                    2890 	.db	0
      002014 05                    2891 	.uleb128	5
      002015 02                    2892 	.db	2
      002016 00 00 9A 70           2893 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$337)
      00201A 03                    2894 	.db	3
      00201B DB 04                 2895 	.sleb128	603
      00201D 01                    2896 	.db	1
      00201E 09                    2897 	.db	9
      00201F 00 00                 2898 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$339-Sstm8s_clk$CLK_AdjustHSICalibrationValue$337
      002021 03                    2899 	.db	3
      002022 06                    2900 	.sleb128	6
      002023 01                    2901 	.db	1
      002024 09                    2902 	.db	9
      002025 00 0A                 2903 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$340-Sstm8s_clk$CLK_AdjustHSICalibrationValue$339
      002027 03                    2904 	.db	3
      002028 01                    2905 	.sleb128	1
      002029 01                    2906 	.db	1
      00202A 09                    2907 	.db	9
      00202B 00 01                 2908 	.dw	1+Sstm8s_clk$CLK_AdjustHSICalibrationValue$341-Sstm8s_clk$CLK_AdjustHSICalibrationValue$340
      00202D 00                    2909 	.db	0
      00202E 01                    2910 	.uleb128	1
      00202F 01                    2911 	.db	1
      002030 00                    2912 	.db	0
      002031 05                    2913 	.uleb128	5
      002032 02                    2914 	.db	2
      002033 00 00 9A 7B           2915 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$343)
      002037 03                    2916 	.db	3
      002038 ED 04                 2917 	.sleb128	621
      00203A 01                    2918 	.db	1
      00203B 09                    2919 	.db	9
      00203C 00 00                 2920 	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$345-Sstm8s_clk$CLK_SYSCLKEmergencyClear$343
      00203E 03                    2921 	.db	3
      00203F 02                    2922 	.sleb128	2
      002040 01                    2923 	.db	1
      002041 09                    2924 	.db	9
      002042 00 08                 2925 	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$346-Sstm8s_clk$CLK_SYSCLKEmergencyClear$345
      002044 03                    2926 	.db	3
      002045 01                    2927 	.sleb128	1
      002046 01                    2928 	.db	1
      002047 09                    2929 	.db	9
      002048 00 01                 2930 	.dw	1+Sstm8s_clk$CLK_SYSCLKEmergencyClear$347-Sstm8s_clk$CLK_SYSCLKEmergencyClear$346
      00204A 00                    2931 	.db	0
      00204B 01                    2932 	.uleb128	1
      00204C 01                    2933 	.db	1
      00204D 00                    2934 	.db	0
      00204E 05                    2935 	.uleb128	5
      00204F 02                    2936 	.db	2
      002050 00 00 9A 84           2937 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$349)
      002054 03                    2938 	.db	3
      002055 F9 04                 2939 	.sleb128	633
      002057 01                    2940 	.db	1
      002058 09                    2941 	.db	9
      002059 00 01                 2942 	.dw	Sstm8s_clk$CLK_GetFlagStatus$352-Sstm8s_clk$CLK_GetFlagStatus$349
      00205B 03                    2943 	.db	3
      00205C 0A                    2944 	.sleb128	10
      00205D 01                    2945 	.db	1
      00205E 09                    2946 	.db	9
      00205F 00 03                 2947 	.dw	Sstm8s_clk$CLK_GetFlagStatus$353-Sstm8s_clk$CLK_GetFlagStatus$352
      002061 03                    2948 	.db	3
      002062 03                    2949 	.sleb128	3
      002063 01                    2950 	.db	1
      002064 09                    2951 	.db	9
      002065 00 0C                 2952 	.dw	Sstm8s_clk$CLK_GetFlagStatus$356-Sstm8s_clk$CLK_GetFlagStatus$353
      002067 03                    2953 	.db	3
      002068 02                    2954 	.sleb128	2
      002069 01                    2955 	.db	1
      00206A 09                    2956 	.db	9
      00206B 00 06                 2957 	.dw	Sstm8s_clk$CLK_GetFlagStatus$358-Sstm8s_clk$CLK_GetFlagStatus$356
      00206D 03                    2958 	.db	3
      00206E 02                    2959 	.sleb128	2
      00206F 01                    2960 	.db	1
      002070 09                    2961 	.db	9
      002071 00 0B                 2962 	.dw	Sstm8s_clk$CLK_GetFlagStatus$361-Sstm8s_clk$CLK_GetFlagStatus$358
      002073 03                    2963 	.db	3
      002074 02                    2964 	.sleb128	2
      002075 01                    2965 	.db	1
      002076 09                    2966 	.db	9
      002077 00 06                 2967 	.dw	Sstm8s_clk$CLK_GetFlagStatus$363-Sstm8s_clk$CLK_GetFlagStatus$361
      002079 03                    2968 	.db	3
      00207A 02                    2969 	.sleb128	2
      00207B 01                    2970 	.db	1
      00207C 09                    2971 	.db	9
      00207D 00 0B                 2972 	.dw	Sstm8s_clk$CLK_GetFlagStatus$366-Sstm8s_clk$CLK_GetFlagStatus$363
      00207F 03                    2973 	.db	3
      002080 02                    2974 	.sleb128	2
      002081 01                    2975 	.db	1
      002082 09                    2976 	.db	9
      002083 00 06                 2977 	.dw	Sstm8s_clk$CLK_GetFlagStatus$368-Sstm8s_clk$CLK_GetFlagStatus$366
      002085 03                    2978 	.db	3
      002086 02                    2979 	.sleb128	2
      002087 01                    2980 	.db	1
      002088 09                    2981 	.db	9
      002089 00 0B                 2982 	.dw	Sstm8s_clk$CLK_GetFlagStatus$371-Sstm8s_clk$CLK_GetFlagStatus$368
      00208B 03                    2983 	.db	3
      00208C 02                    2984 	.sleb128	2
      00208D 01                    2985 	.db	1
      00208E 09                    2986 	.db	9
      00208F 00 06                 2987 	.dw	Sstm8s_clk$CLK_GetFlagStatus$374-Sstm8s_clk$CLK_GetFlagStatus$371
      002091 03                    2988 	.db	3
      002092 04                    2989 	.sleb128	4
      002093 01                    2990 	.db	1
      002094 09                    2991 	.db	9
      002095 00 03                 2992 	.dw	Sstm8s_clk$CLK_GetFlagStatus$376-Sstm8s_clk$CLK_GetFlagStatus$374
      002097 03                    2993 	.db	3
      002098 03                    2994 	.sleb128	3
      002099 01                    2995 	.db	1
      00209A 09                    2996 	.db	9
      00209B 00 0E                 2997 	.dw	Sstm8s_clk$CLK_GetFlagStatus$380-Sstm8s_clk$CLK_GetFlagStatus$376
      00209D 03                    2998 	.db	3
      00209E 02                    2999 	.sleb128	2
      00209F 01                    3000 	.db	1
      0020A0 09                    3001 	.db	9
      0020A1 00 05                 3002 	.dw	Sstm8s_clk$CLK_GetFlagStatus$383-Sstm8s_clk$CLK_GetFlagStatus$380
      0020A3 03                    3003 	.db	3
      0020A4 04                    3004 	.sleb128	4
      0020A5 01                    3005 	.db	1
      0020A6 09                    3006 	.db	9
      0020A7 00 01                 3007 	.dw	Sstm8s_clk$CLK_GetFlagStatus$385-Sstm8s_clk$CLK_GetFlagStatus$383
      0020A9 03                    3008 	.db	3
      0020AA 04                    3009 	.sleb128	4
      0020AB 01                    3010 	.db	1
      0020AC 09                    3011 	.db	9
      0020AD 00 00                 3012 	.dw	Sstm8s_clk$CLK_GetFlagStatus$386-Sstm8s_clk$CLK_GetFlagStatus$385
      0020AF 03                    3013 	.db	3
      0020B0 01                    3014 	.sleb128	1
      0020B1 01                    3015 	.db	1
      0020B2 09                    3016 	.db	9
      0020B3 00 03                 3017 	.dw	1+Sstm8s_clk$CLK_GetFlagStatus$388-Sstm8s_clk$CLK_GetFlagStatus$386
      0020B5 00                    3018 	.db	0
      0020B6 01                    3019 	.uleb128	1
      0020B7 01                    3020 	.db	1
      0020B8 00                    3021 	.db	0
      0020B9 05                    3022 	.uleb128	5
      0020BA 02                    3023 	.db	2
      0020BB 00 00 9A E7           3024 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$390)
      0020BF 03                    3025 	.db	3
      0020C0 AE 05                 3026 	.sleb128	686
      0020C2 01                    3027 	.db	1
      0020C3 09                    3028 	.db	9
      0020C4 00 00                 3029 	.dw	Sstm8s_clk$CLK_GetITStatus$392-Sstm8s_clk$CLK_GetITStatus$390
      0020C6 03                    3030 	.db	3
      0020C7 07                    3031 	.sleb128	7
      0020C8 01                    3032 	.db	1
      0020C9 09                    3033 	.db	9
      0020CA 00 0C                 3034 	.dw	Sstm8s_clk$CLK_GetITStatus$395-Sstm8s_clk$CLK_GetITStatus$392
      0020CC 03                    3035 	.db	3
      0020CD 03                    3036 	.sleb128	3
      0020CE 01                    3037 	.db	1
      0020CF 09                    3038 	.db	9
      0020D0 00 0F                 3039 	.dw	Sstm8s_clk$CLK_GetITStatus$398-Sstm8s_clk$CLK_GetITStatus$395
      0020D2 03                    3040 	.db	3
      0020D3 02                    3041 	.sleb128	2
      0020D4 01                    3042 	.db	1
      0020D5 09                    3043 	.db	9
      0020D6 00 05                 3044 	.dw	Sstm8s_clk$CLK_GetITStatus$401-Sstm8s_clk$CLK_GetITStatus$398
      0020D8 03                    3045 	.db	3
      0020D9 04                    3046 	.sleb128	4
      0020DA 01                    3047 	.db	1
      0020DB 09                    3048 	.db	9
      0020DC 00 04                 3049 	.dw	Sstm8s_clk$CLK_GetITStatus$404-Sstm8s_clk$CLK_GetITStatus$401
      0020DE 03                    3050 	.db	3
      0020DF 06                    3051 	.sleb128	6
      0020E0 01                    3052 	.db	1
      0020E1 09                    3053 	.db	9
      0020E2 00 0F                 3054 	.dw	Sstm8s_clk$CLK_GetITStatus$407-Sstm8s_clk$CLK_GetITStatus$404
      0020E4 03                    3055 	.db	3
      0020E5 02                    3056 	.sleb128	2
      0020E6 01                    3057 	.db	1
      0020E7 09                    3058 	.db	9
      0020E8 00 05                 3059 	.dw	Sstm8s_clk$CLK_GetITStatus$410-Sstm8s_clk$CLK_GetITStatus$407
      0020EA 03                    3060 	.db	3
      0020EB 04                    3061 	.sleb128	4
      0020EC 01                    3062 	.db	1
      0020ED 09                    3063 	.db	9
      0020EE 00 01                 3064 	.dw	Sstm8s_clk$CLK_GetITStatus$412-Sstm8s_clk$CLK_GetITStatus$410
      0020F0 03                    3065 	.db	3
      0020F1 05                    3066 	.sleb128	5
      0020F2 01                    3067 	.db	1
      0020F3 09                    3068 	.db	9
      0020F4 00 00                 3069 	.dw	Sstm8s_clk$CLK_GetITStatus$413-Sstm8s_clk$CLK_GetITStatus$412
      0020F6 03                    3070 	.db	3
      0020F7 01                    3071 	.sleb128	1
      0020F8 01                    3072 	.db	1
      0020F9 09                    3073 	.db	9
      0020FA 00 01                 3074 	.dw	1+Sstm8s_clk$CLK_GetITStatus$414-Sstm8s_clk$CLK_GetITStatus$413
      0020FC 00                    3075 	.db	0
      0020FD 01                    3076 	.uleb128	1
      0020FE 01                    3077 	.db	1
      0020FF 00                    3078 	.db	0
      002100 05                    3079 	.uleb128	5
      002101 02                    3080 	.db	2
      002102 00 00 9B 21           3081 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$416)
      002106 03                    3082 	.db	3
      002107 D8 05                 3083 	.sleb128	728
      002109 01                    3084 	.db	1
      00210A 09                    3085 	.db	9
      00210B 00 00                 3086 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$418-Sstm8s_clk$CLK_ClearITPendingBit$416
      00210D 03                    3087 	.db	3
      00210E 05                    3088 	.sleb128	5
      00210F 01                    3089 	.db	1
      002110 09                    3090 	.db	9
      002111 00 0C                 3091 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$421-Sstm8s_clk$CLK_ClearITPendingBit$418
      002113 03                    3092 	.db	3
      002114 03                    3093 	.sleb128	3
      002115 01                    3094 	.db	1
      002116 09                    3095 	.db	9
      002117 00 0B                 3096 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$424-Sstm8s_clk$CLK_ClearITPendingBit$421
      002119 03                    3097 	.db	3
      00211A 05                    3098 	.sleb128	5
      00211B 01                    3099 	.db	1
      00211C 09                    3100 	.db	9
      00211D 00 08                 3101 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$426-Sstm8s_clk$CLK_ClearITPendingBit$424
      00211F 03                    3102 	.db	3
      002120 03                    3103 	.sleb128	3
      002121 01                    3104 	.db	1
      002122 09                    3105 	.db	9
      002123 00 01                 3106 	.dw	1+Sstm8s_clk$CLK_ClearITPendingBit$427-Sstm8s_clk$CLK_ClearITPendingBit$426
      002125 00                    3107 	.db	0
      002126 01                    3108 	.uleb128	1
      002127 01                    3109 	.db	1
      002128                       3110 Ldebug_line_end:
                                   3111 
                                   3112 	.area .debug_loc (NOLOAD)
      003878                       3113 Ldebug_loc_start:
      003878 00 00 9B 2D           3114 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$419)
      00387C 00 00 9B 41           3115 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$428)
      003880 00 02                 3116 	.dw	2
      003882 78                    3117 	.db	120
      003883 01                    3118 	.sleb128	1
      003884 00 00 9B 21           3119 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$417)
      003888 00 00 9B 2D           3120 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$419)
      00388C 00 02                 3121 	.dw	2
      00388E 78                    3122 	.db	120
      00388F 01                    3123 	.sleb128	1
      003890 00 00 00 00           3124 	.dw	0,0
      003894 00 00 00 00           3125 	.dw	0,0
      003898 00 00 9B 1A           3126 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$405)
      00389C 00 00 9B 21           3127 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$415)
      0038A0 00 02                 3128 	.dw	2
      0038A2 78                    3129 	.db	120
      0038A3 01                    3130 	.sleb128	1
      0038A4 00 00 9B 02           3131 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$396)
      0038A8 00 00 9B 1A           3132 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$405)
      0038AC 00 02                 3133 	.dw	2
      0038AE 78                    3134 	.db	120
      0038AF 01                    3135 	.sleb128	1
      0038B0 00 00 9A F3           3136 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$393)
      0038B4 00 00 9B 02           3137 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$396)
      0038B8 00 02                 3138 	.dw	2
      0038BA 78                    3139 	.db	120
      0038BB 01                    3140 	.sleb128	1
      0038BC 00 00 9A E7           3141 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$391)
      0038C0 00 00 9A F3           3142 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$393)
      0038C4 00 02                 3143 	.dw	2
      0038C6 78                    3144 	.db	120
      0038C7 01                    3145 	.sleb128	1
      0038C8 00 00 00 00           3146 	.dw	0,0
      0038CC 00 00 00 00           3147 	.dw	0,0
      0038D0 00 00 9A E6           3148 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$387)
      0038D4 00 00 9A E7           3149 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$389)
      0038D8 00 02                 3150 	.dw	2
      0038DA 78                    3151 	.db	120
      0038DB 01                    3152 	.sleb128	1
      0038DC 00 00 9A D6           3153 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$378)
      0038E0 00 00 9A E6           3154 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$387)
      0038E4 00 02                 3155 	.dw	2
      0038E6 78                    3156 	.db	120
      0038E7 02                    3157 	.sleb128	2
      0038E8 00 00 9A D1           3158 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$377)
      0038EC 00 00 9A D6           3159 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$378)
      0038F0 00 02                 3160 	.dw	2
      0038F2 78                    3161 	.db	120
      0038F3 03                    3162 	.sleb128	3
      0038F4 00 00 9A C7           3163 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$369)
      0038F8 00 00 9A D1           3164 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$377)
      0038FC 00 02                 3165 	.dw	2
      0038FE 78                    3166 	.db	120
      0038FF 02                    3167 	.sleb128	2
      003900 00 00 9A B6           3168 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$364)
      003904 00 00 9A C7           3169 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$369)
      003908 00 02                 3170 	.dw	2
      00390A 78                    3171 	.db	120
      00390B 02                    3172 	.sleb128	2
      00390C 00 00 9A A5           3173 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$359)
      003910 00 00 9A B6           3174 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$364)
      003914 00 02                 3175 	.dw	2
      003916 78                    3176 	.db	120
      003917 02                    3177 	.sleb128	2
      003918 00 00 9A 94           3178 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$354)
      00391C 00 00 9A A5           3179 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$359)
      003920 00 02                 3180 	.dw	2
      003922 78                    3181 	.db	120
      003923 02                    3182 	.sleb128	2
      003924 00 00 9A 85           3183 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$351)
      003928 00 00 9A 94           3184 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$354)
      00392C 00 02                 3185 	.dw	2
      00392E 78                    3186 	.db	120
      00392F 02                    3187 	.sleb128	2
      003930 00 00 9A 84           3188 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$350)
      003934 00 00 9A 85           3189 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$351)
      003938 00 02                 3190 	.dw	2
      00393A 78                    3191 	.db	120
      00393B 01                    3192 	.sleb128	1
      00393C 00 00 00 00           3193 	.dw	0,0
      003940 00 00 00 00           3194 	.dw	0,0
      003944 00 00 9A 7B           3195 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$344)
      003948 00 00 9A 84           3196 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$348)
      00394C 00 02                 3197 	.dw	2
      00394E 78                    3198 	.db	120
      00394F 01                    3199 	.sleb128	1
      003950 00 00 00 00           3200 	.dw	0,0
      003954 00 00 00 00           3201 	.dw	0,0
      003958 00 00 9A 70           3202 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$338)
      00395C 00 00 9A 7B           3203 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$342)
      003960 00 02                 3204 	.dw	2
      003962 78                    3205 	.db	120
      003963 01                    3206 	.sleb128	1
      003964 00 00 00 00           3207 	.dw	0,0
      003968 00 00 00 00           3208 	.dw	0,0
      00396C 00 00 9A 6F           3209 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$334)
      003970 00 00 9A 70           3210 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$336)
      003974 00 02                 3211 	.dw	2
      003976 78                    3212 	.db	120
      003977 01                    3213 	.sleb128	1
      003978 00 00 9A 58           3214 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$325)
      00397C 00 00 9A 6F           3215 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$334)
      003980 00 02                 3216 	.dw	2
      003982 78                    3217 	.db	120
      003983 05                    3218 	.sleb128	5
      003984 00 00 9A 46           3219 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$323)
      003988 00 00 9A 58           3220 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$325)
      00398C 00 02                 3221 	.dw	2
      00398E 78                    3222 	.db	120
      00398F 05                    3223 	.sleb128	5
      003990 00 00 9A 41           3224 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$322)
      003994 00 00 9A 46           3225 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$323)
      003998 00 02                 3226 	.dw	2
      00399A 78                    3227 	.db	120
      00399B 0D                    3228 	.sleb128	13
      00399C 00 00 9A 3F           3229 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$321)
      0039A0 00 00 9A 41           3230 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$322)
      0039A4 00 02                 3231 	.dw	2
      0039A6 78                    3232 	.db	120
      0039A7 0C                    3233 	.sleb128	12
      0039A8 00 00 9A 3D           3234 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$320)
      0039AC 00 00 9A 3F           3235 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$321)
      0039B0 00 02                 3236 	.dw	2
      0039B2 78                    3237 	.db	120
      0039B3 0B                    3238 	.sleb128	11
      0039B4 00 00 9A 3B           3239 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$319)
      0039B8 00 00 9A 3D           3240 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$320)
      0039BC 00 02                 3241 	.dw	2
      0039BE 78                    3242 	.db	120
      0039BF 0A                    3243 	.sleb128	10
      0039C0 00 00 9A 39           3244 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$318)
      0039C4 00 00 9A 3B           3245 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$319)
      0039C8 00 02                 3246 	.dw	2
      0039CA 78                    3247 	.db	120
      0039CB 09                    3248 	.sleb128	9
      0039CC 00 00 9A 37           3249 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$317)
      0039D0 00 00 9A 39           3250 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$318)
      0039D4 00 02                 3251 	.dw	2
      0039D6 78                    3252 	.db	120
      0039D7 07                    3253 	.sleb128	7
      0039D8 00 00 9A 24           3254 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$310)
      0039DC 00 00 9A 37           3255 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$317)
      0039E0 00 02                 3256 	.dw	2
      0039E2 78                    3257 	.db	120
      0039E3 05                    3258 	.sleb128	5
      0039E4 00 00 9A 13           3259 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$307)
      0039E8 00 00 9A 24           3260 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$310)
      0039EC 00 02                 3261 	.dw	2
      0039EE 78                    3262 	.db	120
      0039EF 05                    3263 	.sleb128	5
      0039F0 00 00 9A 11           3264 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$306)
      0039F4 00 00 9A 13           3265 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$307)
      0039F8 00 02                 3266 	.dw	2
      0039FA 78                    3267 	.db	120
      0039FB 01                    3268 	.sleb128	1
      0039FC 00 00 00 00           3269 	.dw	0,0
      003A00 00 00 00 00           3270 	.dw	0,0
      003A04 00 00 9A 0D           3271 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$300)
      003A08 00 00 9A 11           3272 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$304)
      003A0C 00 02                 3273 	.dw	2
      003A0E 78                    3274 	.db	120
      003A0F 01                    3275 	.sleb128	1
      003A10 00 00 00 00           3276 	.dw	0,0
      003A14 00 00 00 00           3277 	.dw	0,0
      003A18 00 00 9A 04           3278 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$294)
      003A1C 00 00 9A 0D           3279 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$298)
      003A20 00 02                 3280 	.dw	2
      003A22 78                    3281 	.db	120
      003A23 01                    3282 	.sleb128	1
      003A24 00 00 00 00           3283 	.dw	0,0
      003A28 00 00 00 00           3284 	.dw	0,0
      003A2C 00 00 99 EC           3285 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$281)
      003A30 00 00 9A 04           3286 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$292)
      003A34 00 02                 3287 	.dw	2
      003A36 78                    3288 	.db	120
      003A37 01                    3289 	.sleb128	1
      003A38 00 00 00 00           3290 	.dw	0,0
      003A3C 00 00 00 00           3291 	.dw	0,0
      003A40 00 00 99 EB           3292 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$277)
      003A44 00 00 99 EC           3293 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$279)
      003A48 00 02                 3294 	.dw	2
      003A4A 78                    3295 	.db	120
      003A4B 01                    3296 	.sleb128	1
      003A4C 00 00 99 B7           3297 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$265)
      003A50 00 00 99 EB           3298 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$277)
      003A54 00 02                 3299 	.dw	2
      003A56 78                    3300 	.db	120
      003A57 02                    3301 	.sleb128	2
      003A58 00 00 99 B6           3302 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$264)
      003A5C 00 00 99 B7           3303 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$265)
      003A60 00 02                 3304 	.dw	2
      003A62 78                    3305 	.db	120
      003A63 01                    3306 	.sleb128	1
      003A64 00 00 00 00           3307 	.dw	0,0
      003A68 00 00 00 00           3308 	.dw	0,0
      003A6C 00 00 99 B5           3309 	.dw	0,(Sstm8s_clk$CLK_ITConfig$260)
      003A70 00 00 99 B6           3310 	.dw	0,(Sstm8s_clk$CLK_ITConfig$262)
      003A74 00 02                 3311 	.dw	2
      003A76 78                    3312 	.db	120
      003A77 01                    3313 	.sleb128	1
      003A78 00 00 99 6A           3314 	.dw	0,(Sstm8s_clk$CLK_ITConfig$238)
      003A7C 00 00 99 B5           3315 	.dw	0,(Sstm8s_clk$CLK_ITConfig$260)
      003A80 00 02                 3316 	.dw	2
      003A82 78                    3317 	.db	120
      003A83 02                    3318 	.sleb128	2
      003A84 00 00 99 5E           3319 	.dw	0,(Sstm8s_clk$CLK_ITConfig$237)
      003A88 00 00 99 6A           3320 	.dw	0,(Sstm8s_clk$CLK_ITConfig$238)
      003A8C 00 02                 3321 	.dw	2
      003A8E 78                    3322 	.db	120
      003A8F 02                    3323 	.sleb128	2
      003A90 00 00 99 4F           3324 	.dw	0,(Sstm8s_clk$CLK_ITConfig$235)
      003A94 00 00 99 5E           3325 	.dw	0,(Sstm8s_clk$CLK_ITConfig$237)
      003A98 00 02                 3326 	.dw	2
      003A9A 78                    3327 	.db	120
      003A9B 02                    3328 	.sleb128	2
      003A9C 00 00 99 4E           3329 	.dw	0,(Sstm8s_clk$CLK_ITConfig$234)
      003AA0 00 00 99 4F           3330 	.dw	0,(Sstm8s_clk$CLK_ITConfig$235)
      003AA4 00 02                 3331 	.dw	2
      003AA6 78                    3332 	.db	120
      003AA7 01                    3333 	.sleb128	1
      003AA8 00 00 00 00           3334 	.dw	0,0
      003AAC 00 00 00 00           3335 	.dw	0,0
      003AB0 00 00 99 35           3336 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$226)
      003AB4 00 00 99 4E           3337 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$232)
      003AB8 00 02                 3338 	.dw	2
      003ABA 78                    3339 	.db	120
      003ABB 01                    3340 	.sleb128	1
      003ABC 00 00 00 00           3341 	.dw	0,0
      003AC0 00 00 00 00           3342 	.dw	0,0
      003AC4 00 00 99 24           3343 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$219)
      003AC8 00 00 99 35           3344 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$224)
      003ACC 00 02                 3345 	.dw	2
      003ACE 78                    3346 	.db	120
      003ACF 01                    3347 	.sleb128	1
      003AD0 00 00 00 00           3348 	.dw	0,0
      003AD4 00 00 00 00           3349 	.dw	0,0
      003AD8 00 00 99 23           3350 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$215)
      003ADC 00 00 99 24           3351 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$217)
      003AE0 00 02                 3352 	.dw	2
      003AE2 78                    3353 	.db	120
      003AE3 01                    3354 	.sleb128	1
      003AE4 00 00 99 18           3355 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$209)
      003AE8 00 00 99 23           3356 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$215)
      003AEC 00 02                 3357 	.dw	2
      003AEE 78                    3358 	.db	120
      003AEF 02                    3359 	.sleb128	2
      003AF0 00 00 98 FA           3360 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$204)
      003AF4 00 00 99 18           3361 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$209)
      003AF8 00 02                 3362 	.dw	2
      003AFA 78                    3363 	.db	120
      003AFB 02                    3364 	.sleb128	2
      003AFC 00 00 98 DC           3365 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$199)
      003B00 00 00 98 FA           3366 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$204)
      003B04 00 02                 3367 	.dw	2
      003B06 78                    3368 	.db	120
      003B07 02                    3369 	.sleb128	2
      003B08 00 00 98 36           3370 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$148)
      003B0C 00 00 98 DC           3371 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$199)
      003B10 00 02                 3372 	.dw	2
      003B12 78                    3373 	.db	120
      003B13 02                    3374 	.sleb128	2
      003B14 00 00 98 2E           3375 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$147)
      003B18 00 00 98 36           3376 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$148)
      003B1C 00 02                 3377 	.dw	2
      003B1E 78                    3378 	.db	120
      003B1F 02                    3379 	.sleb128	2
      003B20 00 00 98 2A           3380 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$146)
      003B24 00 00 98 2E           3381 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$147)
      003B28 00 02                 3382 	.dw	2
      003B2A 78                    3383 	.db	120
      003B2B 03                    3384 	.sleb128	3
      003B2C 00 00 98 1F           3385 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$141)
      003B30 00 00 98 2A           3386 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$146)
      003B34 00 02                 3387 	.dw	2
      003B36 78                    3388 	.db	120
      003B37 02                    3389 	.sleb128	2
      003B38 00 00 98 1E           3390 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$140)
      003B3C 00 00 98 1F           3391 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$141)
      003B40 00 02                 3392 	.dw	2
      003B42 78                    3393 	.db	120
      003B43 01                    3394 	.sleb128	1
      003B44 00 00 00 00           3395 	.dw	0,0
      003B48 00 00 00 00           3396 	.dw	0,0
      003B4C 00 00 98 1D           3397 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$136)
      003B50 00 00 98 1E           3398 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$138)
      003B54 00 02                 3399 	.dw	2
      003B56 78                    3400 	.db	120
      003B57 01                    3401 	.sleb128	1
      003B58 00 00 97 D5           3402 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$114)
      003B5C 00 00 98 1D           3403 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$136)
      003B60 00 02                 3404 	.dw	2
      003B62 78                    3405 	.db	120
      003B63 03                    3406 	.sleb128	3
      003B64 00 00 97 D0           3407 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$113)
      003B68 00 00 97 D5           3408 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$114)
      003B6C 00 02                 3409 	.dw	2
      003B6E 78                    3410 	.db	120
      003B6F 04                    3411 	.sleb128	4
      003B70 00 00 97 CB           3412 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$111)
      003B74 00 00 97 D0           3413 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$113)
      003B78 00 02                 3414 	.dw	2
      003B7A 78                    3415 	.db	120
      003B7B 03                    3416 	.sleb128	3
      003B7C 00 00 97 CA           3417 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$110)
      003B80 00 00 97 CB           3418 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$111)
      003B84 00 02                 3419 	.dw	2
      003B86 78                    3420 	.db	120
      003B87 01                    3421 	.sleb128	1
      003B88 00 00 00 00           3422 	.dw	0,0
      003B8C 00 00 00 00           3423 	.dw	0,0
      003B90 00 00 97 B2           3424 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97)
      003B94 00 00 97 CA           3425 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$108)
      003B98 00 02                 3426 	.dw	2
      003B9A 78                    3427 	.db	120
      003B9B 01                    3428 	.sleb128	1
      003B9C 00 00 00 00           3429 	.dw	0,0
      003BA0 00 00 00 00           3430 	.dw	0,0
      003BA4 00 00 97 9A           3431 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$84)
      003BA8 00 00 97 B2           3432 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$95)
      003BAC 00 02                 3433 	.dw	2
      003BAE 78                    3434 	.db	120
      003BAF 01                    3435 	.sleb128	1
      003BB0 00 00 00 00           3436 	.dw	0,0
      003BB4 00 00 00 00           3437 	.dw	0,0
      003BB8 00 00 97 82           3438 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$71)
      003BBC 00 00 97 9A           3439 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$82)
      003BC0 00 02                 3440 	.dw	2
      003BC2 78                    3441 	.db	120
      003BC3 01                    3442 	.sleb128	1
      003BC4 00 00 00 00           3443 	.dw	0,0
      003BC8 00 00 00 00           3444 	.dw	0,0
      003BCC 00 00 97 6A           3445 	.dw	0,(Sstm8s_clk$CLK_LSICmd$58)
      003BD0 00 00 97 82           3446 	.dw	0,(Sstm8s_clk$CLK_LSICmd$69)
      003BD4 00 02                 3447 	.dw	2
      003BD6 78                    3448 	.db	120
      003BD7 01                    3449 	.sleb128	1
      003BD8 00 00 00 00           3450 	.dw	0,0
      003BDC 00 00 00 00           3451 	.dw	0,0
      003BE0 00 00 97 52           3452 	.dw	0,(Sstm8s_clk$CLK_HSICmd$45)
      003BE4 00 00 97 6A           3453 	.dw	0,(Sstm8s_clk$CLK_HSICmd$56)
      003BE8 00 02                 3454 	.dw	2
      003BEA 78                    3455 	.db	120
      003BEB 01                    3456 	.sleb128	1
      003BEC 00 00 00 00           3457 	.dw	0,0
      003BF0 00 00 00 00           3458 	.dw	0,0
      003BF4 00 00 97 3A           3459 	.dw	0,(Sstm8s_clk$CLK_HSECmd$32)
      003BF8 00 00 97 52           3460 	.dw	0,(Sstm8s_clk$CLK_HSECmd$43)
      003BFC 00 02                 3461 	.dw	2
      003BFE 78                    3462 	.db	120
      003BFF 01                    3463 	.sleb128	1
      003C00 00 00 00 00           3464 	.dw	0,0
      003C04 00 00 00 00           3465 	.dw	0,0
      003C08 00 00 97 22           3466 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)
      003C0C 00 00 97 3A           3467 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$30)
      003C10 00 02                 3468 	.dw	2
      003C12 78                    3469 	.db	120
      003C13 01                    3470 	.sleb128	1
      003C14 00 00 00 00           3471 	.dw	0,0
      003C18 00 00 00 00           3472 	.dw	0,0
      003C1C 00 00 96 E8           3473 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      003C20 00 00 97 22           3474 	.dw	0,(Sstm8s_clk$CLK_DeInit$17)
      003C24 00 02                 3475 	.dw	2
      003C26 78                    3476 	.db	120
      003C27 01                    3477 	.sleb128	1
      003C28 00 00 00 00           3478 	.dw	0,0
      003C2C 00 00 00 00           3479 	.dw	0,0
                                   3480 
                                   3481 	.area .debug_abbrev (NOLOAD)
      0004A0                       3482 Ldebug_abbrev:
      0004A0 0C                    3483 	.uleb128	12
      0004A1 2E                    3484 	.uleb128	46
      0004A2 00                    3485 	.db	0
      0004A3 03                    3486 	.uleb128	3
      0004A4 08                    3487 	.uleb128	8
      0004A5 11                    3488 	.uleb128	17
      0004A6 01                    3489 	.uleb128	1
      0004A7 12                    3490 	.uleb128	18
      0004A8 01                    3491 	.uleb128	1
      0004A9 3F                    3492 	.uleb128	63
      0004AA 0C                    3493 	.uleb128	12
      0004AB 40                    3494 	.uleb128	64
      0004AC 06                    3495 	.uleb128	6
      0004AD 49                    3496 	.uleb128	73
      0004AE 13                    3497 	.uleb128	19
      0004AF 00                    3498 	.uleb128	0
      0004B0 00                    3499 	.uleb128	0
      0004B1 10                    3500 	.uleb128	16
      0004B2 34                    3501 	.uleb128	52
      0004B3 00                    3502 	.db	0
      0004B4 02                    3503 	.uleb128	2
      0004B5 0A                    3504 	.uleb128	10
      0004B6 03                    3505 	.uleb128	3
      0004B7 08                    3506 	.uleb128	8
      0004B8 3F                    3507 	.uleb128	63
      0004B9 0C                    3508 	.uleb128	12
      0004BA 49                    3509 	.uleb128	73
      0004BB 13                    3510 	.uleb128	19
      0004BC 00                    3511 	.uleb128	0
      0004BD 00                    3512 	.uleb128	0
      0004BE 04                    3513 	.uleb128	4
      0004BF 05                    3514 	.uleb128	5
      0004C0 00                    3515 	.db	0
      0004C1 02                    3516 	.uleb128	2
      0004C2 0A                    3517 	.uleb128	10
      0004C3 03                    3518 	.uleb128	3
      0004C4 08                    3519 	.uleb128	8
      0004C5 49                    3520 	.uleb128	73
      0004C6 13                    3521 	.uleb128	19
      0004C7 00                    3522 	.uleb128	0
      0004C8 00                    3523 	.uleb128	0
      0004C9 0E                    3524 	.uleb128	14
      0004CA 01                    3525 	.uleb128	1
      0004CB 01                    3526 	.db	1
      0004CC 01                    3527 	.uleb128	1
      0004CD 13                    3528 	.uleb128	19
      0004CE 0B                    3529 	.uleb128	11
      0004CF 0B                    3530 	.uleb128	11
      0004D0 49                    3531 	.uleb128	73
      0004D1 13                    3532 	.uleb128	19
      0004D2 00                    3533 	.uleb128	0
      0004D3 00                    3534 	.uleb128	0
      0004D4 03                    3535 	.uleb128	3
      0004D5 2E                    3536 	.uleb128	46
      0004D6 01                    3537 	.db	1
      0004D7 01                    3538 	.uleb128	1
      0004D8 13                    3539 	.uleb128	19
      0004D9 03                    3540 	.uleb128	3
      0004DA 08                    3541 	.uleb128	8
      0004DB 11                    3542 	.uleb128	17
      0004DC 01                    3543 	.uleb128	1
      0004DD 12                    3544 	.uleb128	18
      0004DE 01                    3545 	.uleb128	1
      0004DF 3F                    3546 	.uleb128	63
      0004E0 0C                    3547 	.uleb128	12
      0004E1 40                    3548 	.uleb128	64
      0004E2 06                    3549 	.uleb128	6
      0004E3 00                    3550 	.uleb128	0
      0004E4 00                    3551 	.uleb128	0
      0004E5 0B                    3552 	.uleb128	11
      0004E6 34                    3553 	.uleb128	52
      0004E7 00                    3554 	.db	0
      0004E8 02                    3555 	.uleb128	2
      0004E9 0A                    3556 	.uleb128	10
      0004EA 03                    3557 	.uleb128	3
      0004EB 08                    3558 	.uleb128	8
      0004EC 49                    3559 	.uleb128	73
      0004ED 13                    3560 	.uleb128	19
      0004EE 00                    3561 	.uleb128	0
      0004EF 00                    3562 	.uleb128	0
      0004F0 09                    3563 	.uleb128	9
      0004F1 2E                    3564 	.uleb128	46
      0004F2 01                    3565 	.db	1
      0004F3 01                    3566 	.uleb128	1
      0004F4 13                    3567 	.uleb128	19
      0004F5 03                    3568 	.uleb128	3
      0004F6 08                    3569 	.uleb128	8
      0004F7 11                    3570 	.uleb128	17
      0004F8 01                    3571 	.uleb128	1
      0004F9 12                    3572 	.uleb128	18
      0004FA 01                    3573 	.uleb128	1
      0004FB 3F                    3574 	.uleb128	63
      0004FC 0C                    3575 	.uleb128	12
      0004FD 40                    3576 	.uleb128	64
      0004FE 06                    3577 	.uleb128	6
      0004FF 49                    3578 	.uleb128	73
      000500 13                    3579 	.uleb128	19
      000501 00                    3580 	.uleb128	0
      000502 00                    3581 	.uleb128	0
      000503 0D                    3582 	.uleb128	13
      000504 26                    3583 	.uleb128	38
      000505 00                    3584 	.db	0
      000506 49                    3585 	.uleb128	73
      000507 13                    3586 	.uleb128	19
      000508 00                    3587 	.uleb128	0
      000509 00                    3588 	.uleb128	0
      00050A 08                    3589 	.uleb128	8
      00050B 0B                    3590 	.uleb128	11
      00050C 01                    3591 	.db	1
      00050D 11                    3592 	.uleb128	17
      00050E 01                    3593 	.uleb128	1
      00050F 00                    3594 	.uleb128	0
      000510 00                    3595 	.uleb128	0
      000511 01                    3596 	.uleb128	1
      000512 11                    3597 	.uleb128	17
      000513 01                    3598 	.db	1
      000514 03                    3599 	.uleb128	3
      000515 08                    3600 	.uleb128	8
      000516 10                    3601 	.uleb128	16
      000517 06                    3602 	.uleb128	6
      000518 13                    3603 	.uleb128	19
      000519 0B                    3604 	.uleb128	11
      00051A 25                    3605 	.uleb128	37
      00051B 08                    3606 	.uleb128	8
      00051C 00                    3607 	.uleb128	0
      00051D 00                    3608 	.uleb128	0
      00051E 05                    3609 	.uleb128	5
      00051F 0B                    3610 	.uleb128	11
      000520 00                    3611 	.db	0
      000521 11                    3612 	.uleb128	17
      000522 01                    3613 	.uleb128	1
      000523 12                    3614 	.uleb128	18
      000524 01                    3615 	.uleb128	1
      000525 00                    3616 	.uleb128	0
      000526 00                    3617 	.uleb128	0
      000527 07                    3618 	.uleb128	7
      000528 0B                    3619 	.uleb128	11
      000529 01                    3620 	.db	1
      00052A 01                    3621 	.uleb128	1
      00052B 13                    3622 	.uleb128	19
      00052C 11                    3623 	.uleb128	17
      00052D 01                    3624 	.uleb128	1
      00052E 00                    3625 	.uleb128	0
      00052F 00                    3626 	.uleb128	0
      000530 02                    3627 	.uleb128	2
      000531 2E                    3628 	.uleb128	46
      000532 00                    3629 	.db	0
      000533 03                    3630 	.uleb128	3
      000534 08                    3631 	.uleb128	8
      000535 11                    3632 	.uleb128	17
      000536 01                    3633 	.uleb128	1
      000537 12                    3634 	.uleb128	18
      000538 01                    3635 	.uleb128	1
      000539 3F                    3636 	.uleb128	63
      00053A 0C                    3637 	.uleb128	12
      00053B 40                    3638 	.uleb128	64
      00053C 06                    3639 	.uleb128	6
      00053D 00                    3640 	.uleb128	0
      00053E 00                    3641 	.uleb128	0
      00053F 0A                    3642 	.uleb128	10
      000540 0B                    3643 	.uleb128	11
      000541 01                    3644 	.db	1
      000542 01                    3645 	.uleb128	1
      000543 13                    3646 	.uleb128	19
      000544 11                    3647 	.uleb128	17
      000545 01                    3648 	.uleb128	1
      000546 12                    3649 	.uleb128	18
      000547 01                    3650 	.uleb128	1
      000548 00                    3651 	.uleb128	0
      000549 00                    3652 	.uleb128	0
      00054A 0F                    3653 	.uleb128	15
      00054B 21                    3654 	.uleb128	33
      00054C 00                    3655 	.db	0
      00054D 2F                    3656 	.uleb128	47
      00054E 0B                    3657 	.uleb128	11
      00054F 00                    3658 	.uleb128	0
      000550 00                    3659 	.uleb128	0
      000551 06                    3660 	.uleb128	6
      000552 24                    3661 	.uleb128	36
      000553 00                    3662 	.db	0
      000554 03                    3663 	.uleb128	3
      000555 08                    3664 	.uleb128	8
      000556 0B                    3665 	.uleb128	11
      000557 0B                    3666 	.uleb128	11
      000558 3E                    3667 	.uleb128	62
      000559 0B                    3668 	.uleb128	11
      00055A 00                    3669 	.uleb128	0
      00055B 00                    3670 	.uleb128	0
      00055C 00                    3671 	.uleb128	0
                                   3672 
                                   3673 	.area .debug_info (NOLOAD)
      002C40 00 00 08 FA           3674 	.dw	0,Ldebug_info_end-Ldebug_info_start
      002C44                       3675 Ldebug_info_start:
      002C44 00 02                 3676 	.dw	2
      002C46 00 00 04 A0           3677 	.dw	0,(Ldebug_abbrev)
      002C4A 04                    3678 	.db	4
      002C4B 01                    3679 	.uleb128	1
      002C4C 2E 2E 2F 53 50 4C 2F  3680 	.ascii "../SPL/src/stm8s_clk.c"
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      002C62 00                    3681 	.db	0
      002C63 00 00 1B 00           3682 	.dw	0,(Ldebug_line_start+-4)
      002C67 01                    3683 	.db	1
      002C68 53 44 43 43 20 76 65  3684 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      002C81 00                    3685 	.db	0
      002C82 02                    3686 	.uleb128	2
      002C83 43 4C 4B 5F 44 65 49  3687 	.ascii "CLK_DeInit"
             6E 69 74
      002C8D 00                    3688 	.db	0
      002C8E 00 00 96 E8           3689 	.dw	0,(_CLK_DeInit)
      002C92 00 00 97 22           3690 	.dw	0,(XG$CLK_DeInit$0$0+1)
      002C96 01                    3691 	.db	1
      002C97 00 00 3C 1C           3692 	.dw	0,(Ldebug_loc_start+932)
      002C9B 03                    3693 	.uleb128	3
      002C9C 00 00 00 A7           3694 	.dw	0,167
      002CA0 43 4C 4B 5F 46 61 73  3695 	.ascii "CLK_FastHaltWakeUpCmd"
             74 48 61 6C 74 57 61
             6B 65 55 70 43 6D 64
      002CB5 00                    3696 	.db	0
      002CB6 00 00 97 22           3697 	.dw	0,(_CLK_FastHaltWakeUpCmd)
      002CBA 00 00 97 3A           3698 	.dw	0,(XG$CLK_FastHaltWakeUpCmd$0$0+1)
      002CBE 01                    3699 	.db	1
      002CBF 00 00 3C 08           3700 	.dw	0,(Ldebug_loc_start+912)
      002CC3 04                    3701 	.uleb128	4
      002CC4 02                    3702 	.db	2
      002CC5 91                    3703 	.db	145
      002CC6 02                    3704 	.sleb128	2
      002CC7 4E 65 77 53 74 61 74  3705 	.ascii "NewState"
             65
      002CCF 00                    3706 	.db	0
      002CD0 00 00 00 A7           3707 	.dw	0,167
      002CD4 05                    3708 	.uleb128	5
      002CD5 00 00 97 2C           3709 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$22)
      002CD9 00 00 97 31           3710 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$24)
      002CDD 05                    3711 	.uleb128	5
      002CDE 00 00 97 34           3712 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$25)
      002CE2 00 00 97 39           3713 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$27)
      002CE6 00                    3714 	.uleb128	0
      002CE7 06                    3715 	.uleb128	6
      002CE8 75 6E 73 69 67 6E 65  3716 	.ascii "unsigned char"
             64 20 63 68 61 72
      002CF5 00                    3717 	.db	0
      002CF6 01                    3718 	.db	1
      002CF7 08                    3719 	.db	8
      002CF8 03                    3720 	.uleb128	3
      002CF9 00 00 00 F9           3721 	.dw	0,249
      002CFD 43 4C 4B 5F 48 53 45  3722 	.ascii "CLK_HSECmd"
             43 6D 64
      002D07 00                    3723 	.db	0
      002D08 00 00 97 3A           3724 	.dw	0,(_CLK_HSECmd)
      002D0C 00 00 97 52           3725 	.dw	0,(XG$CLK_HSECmd$0$0+1)
      002D10 01                    3726 	.db	1
      002D11 00 00 3B F4           3727 	.dw	0,(Ldebug_loc_start+892)
      002D15 04                    3728 	.uleb128	4
      002D16 02                    3729 	.db	2
      002D17 91                    3730 	.db	145
      002D18 02                    3731 	.sleb128	2
      002D19 4E 65 77 53 74 61 74  3732 	.ascii "NewState"
             65
      002D21 00                    3733 	.db	0
      002D22 00 00 00 A7           3734 	.dw	0,167
      002D26 05                    3735 	.uleb128	5
      002D27 00 00 97 44           3736 	.dw	0,(Sstm8s_clk$CLK_HSECmd$35)
      002D2B 00 00 97 49           3737 	.dw	0,(Sstm8s_clk$CLK_HSECmd$37)
      002D2F 05                    3738 	.uleb128	5
      002D30 00 00 97 4C           3739 	.dw	0,(Sstm8s_clk$CLK_HSECmd$38)
      002D34 00 00 97 51           3740 	.dw	0,(Sstm8s_clk$CLK_HSECmd$40)
      002D38 00                    3741 	.uleb128	0
      002D39 03                    3742 	.uleb128	3
      002D3A 00 00 01 3A           3743 	.dw	0,314
      002D3E 43 4C 4B 5F 48 53 49  3744 	.ascii "CLK_HSICmd"
             43 6D 64
      002D48 00                    3745 	.db	0
      002D49 00 00 97 52           3746 	.dw	0,(_CLK_HSICmd)
      002D4D 00 00 97 6A           3747 	.dw	0,(XG$CLK_HSICmd$0$0+1)
      002D51 01                    3748 	.db	1
      002D52 00 00 3B E0           3749 	.dw	0,(Ldebug_loc_start+872)
      002D56 04                    3750 	.uleb128	4
      002D57 02                    3751 	.db	2
      002D58 91                    3752 	.db	145
      002D59 02                    3753 	.sleb128	2
      002D5A 4E 65 77 53 74 61 74  3754 	.ascii "NewState"
             65
      002D62 00                    3755 	.db	0
      002D63 00 00 00 A7           3756 	.dw	0,167
      002D67 05                    3757 	.uleb128	5
      002D68 00 00 97 5C           3758 	.dw	0,(Sstm8s_clk$CLK_HSICmd$48)
      002D6C 00 00 97 61           3759 	.dw	0,(Sstm8s_clk$CLK_HSICmd$50)
      002D70 05                    3760 	.uleb128	5
      002D71 00 00 97 64           3761 	.dw	0,(Sstm8s_clk$CLK_HSICmd$51)
      002D75 00 00 97 69           3762 	.dw	0,(Sstm8s_clk$CLK_HSICmd$53)
      002D79 00                    3763 	.uleb128	0
      002D7A 03                    3764 	.uleb128	3
      002D7B 00 00 01 7B           3765 	.dw	0,379
      002D7F 43 4C 4B 5F 4C 53 49  3766 	.ascii "CLK_LSICmd"
             43 6D 64
      002D89 00                    3767 	.db	0
      002D8A 00 00 97 6A           3768 	.dw	0,(_CLK_LSICmd)
      002D8E 00 00 97 82           3769 	.dw	0,(XG$CLK_LSICmd$0$0+1)
      002D92 01                    3770 	.db	1
      002D93 00 00 3B CC           3771 	.dw	0,(Ldebug_loc_start+852)
      002D97 04                    3772 	.uleb128	4
      002D98 02                    3773 	.db	2
      002D99 91                    3774 	.db	145
      002D9A 02                    3775 	.sleb128	2
      002D9B 4E 65 77 53 74 61 74  3776 	.ascii "NewState"
             65
      002DA3 00                    3777 	.db	0
      002DA4 00 00 00 A7           3778 	.dw	0,167
      002DA8 05                    3779 	.uleb128	5
      002DA9 00 00 97 74           3780 	.dw	0,(Sstm8s_clk$CLK_LSICmd$61)
      002DAD 00 00 97 79           3781 	.dw	0,(Sstm8s_clk$CLK_LSICmd$63)
      002DB1 05                    3782 	.uleb128	5
      002DB2 00 00 97 7C           3783 	.dw	0,(Sstm8s_clk$CLK_LSICmd$64)
      002DB6 00 00 97 81           3784 	.dw	0,(Sstm8s_clk$CLK_LSICmd$66)
      002DBA 00                    3785 	.uleb128	0
      002DBB 03                    3786 	.uleb128	3
      002DBC 00 00 01 BC           3787 	.dw	0,444
      002DC0 43 4C 4B 5F 43 43 4F  3788 	.ascii "CLK_CCOCmd"
             43 6D 64
      002DCA 00                    3789 	.db	0
      002DCB 00 00 97 82           3790 	.dw	0,(_CLK_CCOCmd)
      002DCF 00 00 97 9A           3791 	.dw	0,(XG$CLK_CCOCmd$0$0+1)
      002DD3 01                    3792 	.db	1
      002DD4 00 00 3B B8           3793 	.dw	0,(Ldebug_loc_start+832)
      002DD8 04                    3794 	.uleb128	4
      002DD9 02                    3795 	.db	2
      002DDA 91                    3796 	.db	145
      002DDB 02                    3797 	.sleb128	2
      002DDC 4E 65 77 53 74 61 74  3798 	.ascii "NewState"
             65
      002DE4 00                    3799 	.db	0
      002DE5 00 00 00 A7           3800 	.dw	0,167
      002DE9 05                    3801 	.uleb128	5
      002DEA 00 00 97 8C           3802 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$74)
      002DEE 00 00 97 91           3803 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$76)
      002DF2 05                    3804 	.uleb128	5
      002DF3 00 00 97 94           3805 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$77)
      002DF7 00 00 97 99           3806 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$79)
      002DFB 00                    3807 	.uleb128	0
      002DFC 03                    3808 	.uleb128	3
      002DFD 00 00 02 05           3809 	.dw	0,517
      002E01 43 4C 4B 5F 43 6C 6F  3810 	.ascii "CLK_ClockSwitchCmd"
             63 6B 53 77 69 74 63
             68 43 6D 64
      002E13 00                    3811 	.db	0
      002E14 00 00 97 9A           3812 	.dw	0,(_CLK_ClockSwitchCmd)
      002E18 00 00 97 B2           3813 	.dw	0,(XG$CLK_ClockSwitchCmd$0$0+1)
      002E1C 01                    3814 	.db	1
      002E1D 00 00 3B A4           3815 	.dw	0,(Ldebug_loc_start+812)
      002E21 04                    3816 	.uleb128	4
      002E22 02                    3817 	.db	2
      002E23 91                    3818 	.db	145
      002E24 02                    3819 	.sleb128	2
      002E25 4E 65 77 53 74 61 74  3820 	.ascii "NewState"
             65
      002E2D 00                    3821 	.db	0
      002E2E 00 00 00 A7           3822 	.dw	0,167
      002E32 05                    3823 	.uleb128	5
      002E33 00 00 97 A4           3824 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$87)
      002E37 00 00 97 A9           3825 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$89)
      002E3B 05                    3826 	.uleb128	5
      002E3C 00 00 97 AC           3827 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$90)
      002E40 00 00 97 B1           3828 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$92)
      002E44 00                    3829 	.uleb128	0
      002E45 03                    3830 	.uleb128	3
      002E46 00 00 02 57           3831 	.dw	0,599
      002E4A 43 4C 4B 5F 53 6C 6F  3832 	.ascii "CLK_SlowActiveHaltWakeUpCmd"
             77 41 63 74 69 76 65
             48 61 6C 74 57 61 6B
             65 55 70 43 6D 64
      002E65 00                    3833 	.db	0
      002E66 00 00 97 B2           3834 	.dw	0,(_CLK_SlowActiveHaltWakeUpCmd)
      002E6A 00 00 97 CA           3835 	.dw	0,(XG$CLK_SlowActiveHaltWakeUpCmd$0$0+1)
      002E6E 01                    3836 	.db	1
      002E6F 00 00 3B 90           3837 	.dw	0,(Ldebug_loc_start+792)
      002E73 04                    3838 	.uleb128	4
      002E74 02                    3839 	.db	2
      002E75 91                    3840 	.db	145
      002E76 02                    3841 	.sleb128	2
      002E77 4E 65 77 53 74 61 74  3842 	.ascii "NewState"
             65
      002E7F 00                    3843 	.db	0
      002E80 00 00 00 A7           3844 	.dw	0,167
      002E84 05                    3845 	.uleb128	5
      002E85 00 00 97 BC           3846 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$100)
      002E89 00 00 97 C1           3847 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$102)
      002E8D 05                    3848 	.uleb128	5
      002E8E 00 00 97 C4           3849 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$103)
      002E92 00 00 97 C9           3850 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$105)
      002E96 00                    3851 	.uleb128	0
      002E97 03                    3852 	.uleb128	3
      002E98 00 00 02 E0           3853 	.dw	0,736
      002E9C 43 4C 4B 5F 50 65 72  3854 	.ascii "CLK_PeripheralClockConfig"
             69 70 68 65 72 61 6C
             43 6C 6F 63 6B 43 6F
             6E 66 69 67
      002EB5 00                    3855 	.db	0
      002EB6 00 00 97 CA           3856 	.dw	0,(_CLK_PeripheralClockConfig)
      002EBA 00 00 98 1E           3857 	.dw	0,(XG$CLK_PeripheralClockConfig$0$0+1)
      002EBE 01                    3858 	.db	1
      002EBF 00 00 3B 4C           3859 	.dw	0,(Ldebug_loc_start+724)
      002EC3 04                    3860 	.uleb128	4
      002EC4 02                    3861 	.db	2
      002EC5 91                    3862 	.db	145
      002EC6 02                    3863 	.sleb128	2
      002EC7 43 4C 4B 5F 50 65 72  3864 	.ascii "CLK_Peripheral"
             69 70 68 65 72 61 6C
      002ED5 00                    3865 	.db	0
      002ED6 00 00 00 A7           3866 	.dw	0,167
      002EDA 04                    3867 	.uleb128	4
      002EDB 02                    3868 	.db	2
      002EDC 91                    3869 	.db	145
      002EDD 03                    3870 	.sleb128	3
      002EDE 4E 65 77 53 74 61 74  3871 	.ascii "NewState"
             65
      002EE6 00                    3872 	.db	0
      002EE7 00 00 00 A7           3873 	.dw	0,167
      002EEB 07                    3874 	.uleb128	7
      002EEC 00 00 02 C7           3875 	.dw	0,711
      002EF0 00 00 97 EE           3876 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$118)
      002EF4 05                    3877 	.uleb128	5
      002EF5 00 00 97 F5           3878 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$120)
      002EF9 00 00 97 FA           3879 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$122)
      002EFD 05                    3880 	.uleb128	5
      002EFE 00 00 97 FD           3881 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$123)
      002F02 00 00 98 02           3882 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$125)
      002F06 00                    3883 	.uleb128	0
      002F07 08                    3884 	.uleb128	8
      002F08 00 00 98 08           3885 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$127)
      002F0C 05                    3886 	.uleb128	5
      002F0D 00 00 98 0F           3887 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$129)
      002F11 00 00 98 14           3888 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$131)
      002F15 05                    3889 	.uleb128	5
      002F16 00 00 98 17           3890 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$132)
      002F1A 00 00 98 1C           3891 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$134)
      002F1E 00                    3892 	.uleb128	0
      002F1F 00                    3893 	.uleb128	0
      002F20 09                    3894 	.uleb128	9
      002F21 00 00 04 3B           3895 	.dw	0,1083
      002F25 43 4C 4B 5F 43 6C 6F  3896 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      002F3A 00                    3897 	.db	0
      002F3B 00 00 98 1E           3898 	.dw	0,(_CLK_ClockSwitchConfig)
      002F3F 00 00 99 24           3899 	.dw	0,(XG$CLK_ClockSwitchConfig$0$0+1)
      002F43 01                    3900 	.db	1
      002F44 00 00 3A D8           3901 	.dw	0,(Ldebug_loc_start+608)
      002F48 00 00 00 A7           3902 	.dw	0,167
      002F4C 04                    3903 	.uleb128	4
      002F4D 02                    3904 	.db	2
      002F4E 91                    3905 	.db	145
      002F4F 02                    3906 	.sleb128	2
      002F50 43 4C 4B 5F 53 77 69  3907 	.ascii "CLK_SwitchMode"
             74 63 68 4D 6F 64 65
      002F5E 00                    3908 	.db	0
      002F5F 00 00 00 A7           3909 	.dw	0,167
      002F63 04                    3910 	.uleb128	4
      002F64 02                    3911 	.db	2
      002F65 91                    3912 	.db	145
      002F66 03                    3913 	.sleb128	3
      002F67 43 4C 4B 5F 4E 65 77  3914 	.ascii "CLK_NewClock"
             43 6C 6F 63 6B
      002F73 00                    3915 	.db	0
      002F74 00 00 00 A7           3916 	.dw	0,167
      002F78 04                    3917 	.uleb128	4
      002F79 02                    3918 	.db	2
      002F7A 91                    3919 	.db	145
      002F7B 04                    3920 	.sleb128	4
      002F7C 49 54 53 74 61 74 65  3921 	.ascii "ITState"
      002F83 00                    3922 	.db	0
      002F84 00 00 00 A7           3923 	.dw	0,167
      002F88 04                    3924 	.uleb128	4
      002F89 02                    3925 	.db	2
      002F8A 91                    3926 	.db	145
      002F8B 05                    3927 	.sleb128	5
      002F8C 43 4C 4B 5F 43 75 72  3928 	.ascii "CLK_CurrentClockState"
             72 65 6E 74 43 6C 6F
             63 6B 53 74 61 74 65
      002FA1 00                    3929 	.db	0
      002FA2 00 00 00 A7           3930 	.dw	0,167
      002FA6 0A                    3931 	.uleb128	10
      002FA7 00 00 03 A1           3932 	.dw	0,929
      002FAB 00 00 98 36           3933 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$149)
      002FAF 00 00 98 6D           3934 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$165)
      002FB3 05                    3935 	.uleb128	5
      002FB4 00 00 98 45           3936 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$153)
      002FB8 00 00 98 4A           3937 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$155)
      002FBC 05                    3938 	.uleb128	5
      002FBD 00 00 98 4D           3939 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$156)
      002FC1 00 00 98 52           3940 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$158)
      002FC5 05                    3941 	.uleb128	5
      002FC6 00 00 98 69           3942 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$162)
      002FCA 00 00 98 6A           3943 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$164)
      002FCE 05                    3944 	.uleb128	5
      002FCF 00 00 98 73           3945 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$167)
      002FD3 00 00 98 76           3946 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$169)
      002FD7 05                    3947 	.uleb128	5
      002FD8 00 00 98 79           3948 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$170)
      002FDC 00 00 98 7A           3949 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$172)
      002FE0 00                    3950 	.uleb128	0
      002FE1 0A                    3951 	.uleb128	10
      002FE2 00 00 03 DC           3952 	.dw	0,988
      002FE6 00 00 98 7D           3953 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$173)
      002FEA 00 00 98 AD           3954 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$187)
      002FEE 05                    3955 	.uleb128	5
      002FEF 00 00 98 84           3956 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$175)
      002FF3 00 00 98 89           3957 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$177)
      002FF7 05                    3958 	.uleb128	5
      002FF8 00 00 98 8C           3959 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$178)
      002FFC 00 00 98 91           3960 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$180)
      003000 05                    3961 	.uleb128	5
      003001 00 00 98 A9           3962 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$184)
      003005 00 00 98 AA           3963 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$186)
      003009 05                    3964 	.uleb128	5
      00300A 00 00 98 B3           3965 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$189)
      00300E 00 00 98 BE           3966 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$192)
      003012 05                    3967 	.uleb128	5
      003013 00 00 98 C1           3968 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$193)
      003017 00 00 98 C2           3969 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$195)
      00301B 00                    3970 	.uleb128	0
      00301C 07                    3971 	.uleb128	7
      00301D 00 00 04 01           3972 	.dw	0,1025
      003021 00 00 98 C9           3973 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$197)
      003025 05                    3974 	.uleb128	5
      003026 00 00 98 DC           3975 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$200)
      00302A 00 00 98 E4           3976 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$202)
      00302E 05                    3977 	.uleb128	5
      00302F 00 00 98 FA           3978 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$205)
      003033 00 00 99 02           3979 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$207)
      003037 05                    3980 	.uleb128	5
      003038 00 00 99 18           3981 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$210)
      00303C 00 00 99 20           3982 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$212)
      003040 00                    3983 	.uleb128	0
      003041 0B                    3984 	.uleb128	11
      003042 02                    3985 	.db	2
      003043 91                    3986 	.db	145
      003044 7F                    3987 	.sleb128	-1
      003045 63 6C 6F 63 6B 5F 6D  3988 	.ascii "clock_master"
             61 73 74 65 72
      003051 00                    3989 	.db	0
      003052 00 00 00 A7           3990 	.dw	0,167
      003056 0B                    3991 	.uleb128	11
      003057 06                    3992 	.db	6
      003058 52                    3993 	.db	82
      003059 93                    3994 	.db	147
      00305A 01                    3995 	.uleb128	1
      00305B 51                    3996 	.db	81
      00305C 93                    3997 	.db	147
      00305D 01                    3998 	.uleb128	1
      00305E 44 6F 77 6E 43 6F 75  3999 	.ascii "DownCounter"
             6E 74 65 72
      003069 00                    4000 	.db	0
      00306A 00 00 04 3B           4001 	.dw	0,1083
      00306E 0B                    4002 	.uleb128	11
      00306F 01                    4003 	.db	1
      003070 51                    4004 	.db	81
      003071 53 77 69 66           4005 	.ascii "Swif"
      003075 00                    4006 	.db	0
      003076 00 00 00 A7           4007 	.dw	0,167
      00307A 00                    4008 	.uleb128	0
      00307B 06                    4009 	.uleb128	6
      00307C 75 6E 73 69 67 6E 65  4010 	.ascii "unsigned int"
             64 20 69 6E 74
      003088 00                    4011 	.db	0
      003089 02                    4012 	.db	2
      00308A 07                    4013 	.db	7
      00308B 03                    4014 	.uleb128	3
      00308C 00 00 04 8A           4015 	.dw	0,1162
      003090 43 4C 4B 5F 48 53 49  4016 	.ascii "CLK_HSIPrescalerConfig"
             50 72 65 73 63 61 6C
             65 72 43 6F 6E 66 69
             67
      0030A6 00                    4017 	.db	0
      0030A7 00 00 99 24           4018 	.dw	0,(_CLK_HSIPrescalerConfig)
      0030AB 00 00 99 35           4019 	.dw	0,(XG$CLK_HSIPrescalerConfig$0$0+1)
      0030AF 01                    4020 	.db	1
      0030B0 00 00 3A C4           4021 	.dw	0,(Ldebug_loc_start+588)
      0030B4 04                    4022 	.uleb128	4
      0030B5 02                    4023 	.db	2
      0030B6 91                    4024 	.db	145
      0030B7 02                    4025 	.sleb128	2
      0030B8 48 53 49 50 72 65 73  4026 	.ascii "HSIPrescaler"
             63 61 6C 65 72
      0030C4 00                    4027 	.db	0
      0030C5 00 00 00 A7           4028 	.dw	0,167
      0030C9 00                    4029 	.uleb128	0
      0030CA 03                    4030 	.uleb128	3
      0030CB 00 00 04 BB           4031 	.dw	0,1211
      0030CF 43 4C 4B 5F 43 43 4F  4032 	.ascii "CLK_CCOConfig"
             43 6F 6E 66 69 67
      0030DC 00                    4033 	.db	0
      0030DD 00 00 99 35           4034 	.dw	0,(_CLK_CCOConfig)
      0030E1 00 00 99 4E           4035 	.dw	0,(XG$CLK_CCOConfig$0$0+1)
      0030E5 01                    4036 	.db	1
      0030E6 00 00 3A B0           4037 	.dw	0,(Ldebug_loc_start+568)
      0030EA 04                    4038 	.uleb128	4
      0030EB 02                    4039 	.db	2
      0030EC 91                    4040 	.db	145
      0030ED 02                    4041 	.sleb128	2
      0030EE 43 4C 4B 5F 43 43 4F  4042 	.ascii "CLK_CCO"
      0030F5 00                    4043 	.db	0
      0030F6 00 00 00 A7           4044 	.dw	0,167
      0030FA 00                    4045 	.uleb128	0
      0030FB 03                    4046 	.uleb128	3
      0030FC 00 00 05 1D           4047 	.dw	0,1309
      003100 43 4C 4B 5F 49 54 43  4048 	.ascii "CLK_ITConfig"
             6F 6E 66 69 67
      00310C 00                    4049 	.db	0
      00310D 00 00 99 4E           4050 	.dw	0,(_CLK_ITConfig)
      003111 00 00 99 B6           4051 	.dw	0,(XG$CLK_ITConfig$0$0+1)
      003115 01                    4052 	.db	1
      003116 00 00 3A 6C           4053 	.dw	0,(Ldebug_loc_start+500)
      00311A 04                    4054 	.uleb128	4
      00311B 02                    4055 	.db	2
      00311C 91                    4056 	.db	145
      00311D 02                    4057 	.sleb128	2
      00311E 43 4C 4B 5F 49 54     4058 	.ascii "CLK_IT"
      003124 00                    4059 	.db	0
      003125 00 00 00 A7           4060 	.dw	0,167
      003129 04                    4061 	.uleb128	4
      00312A 02                    4062 	.db	2
      00312B 91                    4063 	.db	145
      00312C 03                    4064 	.sleb128	3
      00312D 4E 65 77 53 74 61 74  4065 	.ascii "NewState"
             65
      003135 00                    4066 	.db	0
      003136 00 00 00 A7           4067 	.dw	0,167
      00313A 07                    4068 	.uleb128	7
      00313B 00 00 05 0D           4069 	.dw	0,1293
      00313F 00 00 99 71           4070 	.dw	0,(Sstm8s_clk$CLK_ITConfig$240)
      003143 05                    4071 	.uleb128	5
      003144 00 00 99 7E           4072 	.dw	0,(Sstm8s_clk$CLK_ITConfig$242)
      003148 00 00 99 94           4073 	.dw	0,(Sstm8s_clk$CLK_ITConfig$248)
      00314C 00                    4074 	.uleb128	0
      00314D 08                    4075 	.uleb128	8
      00314E 00 00 99 94           4076 	.dw	0,(Sstm8s_clk$CLK_ITConfig$250)
      003152 05                    4077 	.uleb128	5
      003153 00 00 99 A1           4078 	.dw	0,(Sstm8s_clk$CLK_ITConfig$252)
      003157 00 00 99 B4           4079 	.dw	0,(Sstm8s_clk$CLK_ITConfig$257)
      00315B 00                    4080 	.uleb128	0
      00315C 00                    4081 	.uleb128	0
      00315D 03                    4082 	.uleb128	3
      00315E 00 00 05 69           4083 	.dw	0,1385
      003162 43 4C 4B 5F 53 59 53  4084 	.ascii "CLK_SYSCLKConfig"
             43 4C 4B 43 6F 6E 66
             69 67
      003172 00                    4085 	.db	0
      003173 00 00 99 B6           4086 	.dw	0,(_CLK_SYSCLKConfig)
      003177 00 00 99 EC           4087 	.dw	0,(XG$CLK_SYSCLKConfig$0$0+1)
      00317B 01                    4088 	.db	1
      00317C 00 00 3A 40           4089 	.dw	0,(Ldebug_loc_start+456)
      003180 04                    4090 	.uleb128	4
      003181 02                    4091 	.db	2
      003182 91                    4092 	.db	145
      003183 02                    4093 	.sleb128	2
      003184 43 4C 4B 5F 50 72 65  4094 	.ascii "CLK_Prescaler"
             73 63 61 6C 65 72
      003191 00                    4095 	.db	0
      003192 00 00 00 A7           4096 	.dw	0,167
      003196 05                    4097 	.uleb128	5
      003197 00 00 99 C1           4098 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$268)
      00319B 00 00 99 D4           4099 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$271)
      00319F 05                    4100 	.uleb128	5
      0031A0 00 00 99 D7           4101 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$272)
      0031A4 00 00 99 EA           4102 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$275)
      0031A8 00                    4103 	.uleb128	0
      0031A9 03                    4104 	.uleb128	3
      0031AA 00 00 05 B5           4105 	.dw	0,1461
      0031AE 43 4C 4B 5F 53 57 49  4106 	.ascii "CLK_SWIMConfig"
             4D 43 6F 6E 66 69 67
      0031BC 00                    4107 	.db	0
      0031BD 00 00 99 EC           4108 	.dw	0,(_CLK_SWIMConfig)
      0031C1 00 00 9A 04           4109 	.dw	0,(XG$CLK_SWIMConfig$0$0+1)
      0031C5 01                    4110 	.db	1
      0031C6 00 00 3A 2C           4111 	.dw	0,(Ldebug_loc_start+436)
      0031CA 04                    4112 	.uleb128	4
      0031CB 02                    4113 	.db	2
      0031CC 91                    4114 	.db	145
      0031CD 02                    4115 	.sleb128	2
      0031CE 43 4C 4B 5F 53 57 49  4116 	.ascii "CLK_SWIMDivider"
             4D 44 69 76 69 64 65
             72
      0031DD 00                    4117 	.db	0
      0031DE 00 00 00 A7           4118 	.dw	0,167
      0031E2 05                    4119 	.uleb128	5
      0031E3 00 00 99 F6           4120 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$284)
      0031E7 00 00 99 FB           4121 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$286)
      0031EB 05                    4122 	.uleb128	5
      0031EC 00 00 99 FE           4123 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$287)
      0031F0 00 00 9A 03           4124 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$289)
      0031F4 00                    4125 	.uleb128	0
      0031F5 02                    4126 	.uleb128	2
      0031F6 43 4C 4B 5F 43 6C 6F  4127 	.ascii "CLK_ClockSecuritySystemEnable"
             63 6B 53 65 63 75 72
             69 74 79 53 79 73 74
             65 6D 45 6E 61 62 6C
             65
      003213 00                    4128 	.db	0
      003214 00 00 9A 04           4129 	.dw	0,(_CLK_ClockSecuritySystemEnable)
      003218 00 00 9A 0D           4130 	.dw	0,(XG$CLK_ClockSecuritySystemEnable$0$0+1)
      00321C 01                    4131 	.db	1
      00321D 00 00 3A 18           4132 	.dw	0,(Ldebug_loc_start+416)
      003221 0C                    4133 	.uleb128	12
      003222 43 4C 4B 5F 47 65 74  4134 	.ascii "CLK_GetSYSCLKSource"
             53 59 53 43 4C 4B 53
             6F 75 72 63 65
      003235 00                    4135 	.db	0
      003236 00 00 9A 0D           4136 	.dw	0,(_CLK_GetSYSCLKSource)
      00323A 00 00 9A 11           4137 	.dw	0,(XG$CLK_GetSYSCLKSource$0$0+1)
      00323E 01                    4138 	.db	1
      00323F 00 00 3A 04           4139 	.dw	0,(Ldebug_loc_start+396)
      003243 00 00 00 A7           4140 	.dw	0,167
      003247 06                    4141 	.uleb128	6
      003248 75 6E 73 69 67 6E 65  4142 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      003255 00                    4143 	.db	0
      003256 04                    4144 	.db	4
      003257 07                    4145 	.db	7
      003258 09                    4146 	.uleb128	9
      003259 00 00 06 AA           4147 	.dw	0,1706
      00325D 43 4C 4B 5F 47 65 74  4148 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      00326D 00                    4149 	.db	0
      00326E 00 00 9A 11           4150 	.dw	0,(_CLK_GetClockFreq)
      003272 00 00 9A 70           4151 	.dw	0,(XG$CLK_GetClockFreq$0$0+1)
      003276 01                    4152 	.db	1
      003277 00 00 39 6C           4153 	.dw	0,(Ldebug_loc_start+244)
      00327B 00 00 06 07           4154 	.dw	0,1543
      00327F 05                    4155 	.uleb128	5
      003280 00 00 9A 24           4156 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$311)
      003284 00 00 9A 36           4157 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$316)
      003288 05                    4158 	.uleb128	5
      003289 00 00 9A 58           4159 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$326)
      00328D 00 00 9A 5F           4160 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$328)
      003291 05                    4161 	.uleb128	5
      003292 00 00 9A 62           4162 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$329)
      003296 00 00 9A 6A           4163 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$331)
      00329A 0B                    4164 	.uleb128	11
      00329B 0E                    4165 	.db	14
      00329C 52                    4166 	.db	82
      00329D 93                    4167 	.db	147
      00329E 01                    4168 	.uleb128	1
      00329F 51                    4169 	.db	81
      0032A0 93                    4170 	.db	147
      0032A1 01                    4171 	.uleb128	1
      0032A2 91                    4172 	.db	145
      0032A3 7E                    4173 	.sleb128	-2
      0032A4 93                    4174 	.db	147
      0032A5 01                    4175 	.uleb128	1
      0032A6 91                    4176 	.db	145
      0032A7 7F                    4177 	.sleb128	-1
      0032A8 93                    4178 	.db	147
      0032A9 01                    4179 	.uleb128	1
      0032AA 63 6C 6F 63 6B 66 72  4180 	.ascii "clockfrequency"
             65 71 75 65 6E 63 79
      0032B8 00                    4181 	.db	0
      0032B9 00 00 06 07           4182 	.dw	0,1543
      0032BD 0B                    4183 	.uleb128	11
      0032BE 02                    4184 	.db	2
      0032BF 91                    4185 	.db	145
      0032C0 7F                    4186 	.sleb128	-1
      0032C1 63 6C 6F 63 6B 73 6F  4187 	.ascii "clocksource"
             75 72 63 65
      0032CC 00                    4188 	.db	0
      0032CD 00 00 00 A7           4189 	.dw	0,167
      0032D1 0B                    4190 	.uleb128	11
      0032D2 01                    4191 	.db	1
      0032D3 50                    4192 	.db	80
      0032D4 74 6D 70              4193 	.ascii "tmp"
      0032D7 00                    4194 	.db	0
      0032D8 00 00 00 A7           4195 	.dw	0,167
      0032DC 0B                    4196 	.uleb128	11
      0032DD 01                    4197 	.db	1
      0032DE 50                    4198 	.db	80
      0032DF 70 72 65 73 63        4199 	.ascii "presc"
      0032E4 00                    4200 	.db	0
      0032E5 00 00 00 A7           4201 	.dw	0,167
      0032E9 00                    4202 	.uleb128	0
      0032EA 03                    4203 	.uleb128	3
      0032EB 00 00 06 FB           4204 	.dw	0,1787
      0032EF 43 4C 4B 5F 41 64 6A  4205 	.ascii "CLK_AdjustHSICalibrationValue"
             75 73 74 48 53 49 43
             61 6C 69 62 72 61 74
             69 6F 6E 56 61 6C 75
             65
      00330C 00                    4206 	.db	0
      00330D 00 00 9A 70           4207 	.dw	0,(_CLK_AdjustHSICalibrationValue)
      003311 00 00 9A 7B           4208 	.dw	0,(XG$CLK_AdjustHSICalibrationValue$0$0+1)
      003315 01                    4209 	.db	1
      003316 00 00 39 58           4210 	.dw	0,(Ldebug_loc_start+224)
      00331A 04                    4211 	.uleb128	4
      00331B 02                    4212 	.db	2
      00331C 91                    4213 	.db	145
      00331D 02                    4214 	.sleb128	2
      00331E 43 4C 4B 5F 48 53 49  4215 	.ascii "CLK_HSICalibrationValue"
             43 61 6C 69 62 72 61
             74 69 6F 6E 56 61 6C
             75 65
      003335 00                    4216 	.db	0
      003336 00 00 00 A7           4217 	.dw	0,167
      00333A 00                    4218 	.uleb128	0
      00333B 02                    4219 	.uleb128	2
      00333C 43 4C 4B 5F 53 59 53  4220 	.ascii "CLK_SYSCLKEmergencyClear"
             43 4C 4B 45 6D 65 72
             67 65 6E 63 79 43 6C
             65 61 72
      003354 00                    4221 	.db	0
      003355 00 00 9A 7B           4222 	.dw	0,(_CLK_SYSCLKEmergencyClear)
      003359 00 00 9A 84           4223 	.dw	0,(XG$CLK_SYSCLKEmergencyClear$0$0+1)
      00335D 01                    4224 	.db	1
      00335E 00 00 39 44           4225 	.dw	0,(Ldebug_loc_start+204)
      003362 09                    4226 	.uleb128	9
      003363 00 00 07 D0           4227 	.dw	0,2000
      003367 43 4C 4B 5F 47 65 74  4228 	.ascii "CLK_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      003378 00                    4229 	.db	0
      003379 00 00 9A 84           4230 	.dw	0,(_CLK_GetFlagStatus)
      00337D 00 00 9A E7           4231 	.dw	0,(XG$CLK_GetFlagStatus$0$0+1)
      003381 01                    4232 	.db	1
      003382 00 00 38 D0           4233 	.dw	0,(Ldebug_loc_start+88)
      003386 00 00 00 A7           4234 	.dw	0,167
      00338A 04                    4235 	.uleb128	4
      00338B 02                    4236 	.db	2
      00338C 91                    4237 	.db	145
      00338D 02                    4238 	.sleb128	2
      00338E 43 4C 4B 5F 46 4C 41  4239 	.ascii "CLK_FLAG"
             47
      003396 00                    4240 	.db	0
      003397 00 00 07 D0           4241 	.dw	0,2000
      00339B 05                    4242 	.uleb128	5
      00339C 00 00 9A 94           4243 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$355)
      0033A0 00 00 9A 97           4244 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$357)
      0033A4 05                    4245 	.uleb128	5
      0033A5 00 00 9A A5           4246 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$360)
      0033A9 00 00 9A A8           4247 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$362)
      0033AD 05                    4248 	.uleb128	5
      0033AE 00 00 9A B6           4249 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$365)
      0033B2 00 00 9A B9           4250 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$367)
      0033B6 05                    4251 	.uleb128	5
      0033B7 00 00 9A C7           4252 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$370)
      0033BB 00 00 9A CA           4253 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$372)
      0033BF 05                    4254 	.uleb128	5
      0033C0 00 00 9A CD           4255 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$373)
      0033C4 00 00 9A D0           4256 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$375)
      0033C8 05                    4257 	.uleb128	5
      0033C9 00 00 9A DE           4258 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$379)
      0033CD 00 00 9A E0           4259 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$381)
      0033D1 05                    4260 	.uleb128	5
      0033D2 00 00 9A E3           4261 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$382)
      0033D6 00 00 9A E4           4262 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$384)
      0033DA 0B                    4263 	.uleb128	11
      0033DB 06                    4264 	.db	6
      0033DC 52                    4265 	.db	82
      0033DD 93                    4266 	.db	147
      0033DE 01                    4267 	.uleb128	1
      0033DF 50                    4268 	.db	80
      0033E0 93                    4269 	.db	147
      0033E1 01                    4270 	.uleb128	1
      0033E2 73 74 61 74 75 73 72  4271 	.ascii "statusreg"
             65 67
      0033EB 00                    4272 	.db	0
      0033EC 00 00 04 3B           4273 	.dw	0,1083
      0033F0 0B                    4274 	.uleb128	11
      0033F1 01                    4275 	.db	1
      0033F2 50                    4276 	.db	80
      0033F3 74 6D 70 72 65 67     4277 	.ascii "tmpreg"
      0033F9 00                    4278 	.db	0
      0033FA 00 00 00 A7           4279 	.dw	0,167
      0033FE 0B                    4280 	.uleb128	11
      0033FF 01                    4281 	.db	1
      003400 50                    4282 	.db	80
      003401 62 69 74 73 74 61 74  4283 	.ascii "bitstatus"
             75 73
      00340A 00                    4284 	.db	0
      00340B 00 00 00 A7           4285 	.dw	0,167
      00340F 00                    4286 	.uleb128	0
      003410 06                    4287 	.uleb128	6
      003411 75 6E 73 69 67 6E 65  4288 	.ascii "unsigned int"
             64 20 69 6E 74
      00341D 00                    4289 	.db	0
      00341E 02                    4290 	.db	2
      00341F 07                    4291 	.db	7
      003420 09                    4292 	.uleb128	9
      003421 00 00 08 5F           4293 	.dw	0,2143
      003425 43 4C 4B 5F 47 65 74  4294 	.ascii "CLK_GetITStatus"
             49 54 53 74 61 74 75
             73
      003434 00                    4295 	.db	0
      003435 00 00 9A E7           4296 	.dw	0,(_CLK_GetITStatus)
      003439 00 00 9B 21           4297 	.dw	0,(XG$CLK_GetITStatus$0$0+1)
      00343D 01                    4298 	.db	1
      00343E 00 00 38 98           4299 	.dw	0,(Ldebug_loc_start+32)
      003442 00 00 00 A7           4300 	.dw	0,167
      003446 04                    4301 	.uleb128	4
      003447 02                    4302 	.db	2
      003448 91                    4303 	.db	145
      003449 02                    4304 	.sleb128	2
      00344A 43 4C 4B 5F 49 54     4305 	.ascii "CLK_IT"
      003450 00                    4306 	.db	0
      003451 00 00 00 A7           4307 	.dw	0,167
      003455 07                    4308 	.uleb128	7
      003456 00 00 08 31           4309 	.dw	0,2097
      00345A 00 00 9A F3           4310 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$394)
      00345E 05                    4311 	.uleb128	5
      00345F 00 00 9B 02           4312 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$397)
      003463 00 00 9B 04           4313 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$399)
      003467 05                    4314 	.uleb128	5
      003468 00 00 9B 07           4315 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$400)
      00346C 00 00 9B 08           4316 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$402)
      003470 00                    4317 	.uleb128	0
      003471 07                    4318 	.uleb128	7
      003472 00 00 08 4D           4319 	.dw	0,2125
      003476 00 00 9B 0B           4320 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$403)
      00347A 05                    4321 	.uleb128	5
      00347B 00 00 9B 1A           4322 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$406)
      00347F 00 00 9B 1C           4323 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$408)
      003483 05                    4324 	.uleb128	5
      003484 00 00 9B 1F           4325 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$409)
      003488 00 00 9B 20           4326 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$411)
      00348C 00                    4327 	.uleb128	0
      00348D 0B                    4328 	.uleb128	11
      00348E 01                    4329 	.db	1
      00348F 50                    4330 	.db	80
      003490 62 69 74 73 74 61 74  4331 	.ascii "bitstatus"
             75 73
      003499 00                    4332 	.db	0
      00349A 00 00 00 A7           4333 	.dw	0,167
      00349E 00                    4334 	.uleb128	0
      00349F 03                    4335 	.uleb128	3
      0034A0 00 00 08 A9           4336 	.dw	0,2217
      0034A4 43 4C 4B 5F 43 6C 65  4337 	.ascii "CLK_ClearITPendingBit"
             61 72 49 54 50 65 6E
             64 69 6E 67 42 69 74
      0034B9 00                    4338 	.db	0
      0034BA 00 00 9B 21           4339 	.dw	0,(_CLK_ClearITPendingBit)
      0034BE 00 00 9B 41           4340 	.dw	0,(XG$CLK_ClearITPendingBit$0$0+1)
      0034C2 01                    4341 	.db	1
      0034C3 00 00 38 78           4342 	.dw	0,(Ldebug_loc_start)
      0034C7 04                    4343 	.uleb128	4
      0034C8 02                    4344 	.db	2
      0034C9 91                    4345 	.db	145
      0034CA 02                    4346 	.sleb128	2
      0034CB 43 4C 4B 5F 49 54     4347 	.ascii "CLK_IT"
      0034D1 00                    4348 	.db	0
      0034D2 00 00 00 A7           4349 	.dw	0,167
      0034D6 05                    4350 	.uleb128	5
      0034D7 00 00 9B 2D           4351 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$420)
      0034DB 00 00 9B 35           4352 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$422)
      0034DF 05                    4353 	.uleb128	5
      0034E0 00 00 9B 38           4354 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$423)
      0034E4 00 00 9B 40           4355 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$425)
      0034E8 00                    4356 	.uleb128	0
      0034E9 0D                    4357 	.uleb128	13
      0034EA 00 00 00 A7           4358 	.dw	0,167
      0034EE 0E                    4359 	.uleb128	14
      0034EF 00 00 08 BB           4360 	.dw	0,2235
      0034F3 04                    4361 	.db	4
      0034F4 00 00 08 A9           4362 	.dw	0,2217
      0034F8 0F                    4363 	.uleb128	15
      0034F9 03                    4364 	.db	3
      0034FA 00                    4365 	.uleb128	0
      0034FB 10                    4366 	.uleb128	16
      0034FC 05                    4367 	.db	5
      0034FD 03                    4368 	.db	3
      0034FE 00 00 80 E2           4369 	.dw	0,(_HSIDivFactor)
      003502 48 53 49 44 69 76 46  4370 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      00350E 00                    4371 	.db	0
      00350F 01                    4372 	.db	1
      003510 00 00 08 AE           4373 	.dw	0,2222
      003514 0E                    4374 	.uleb128	14
      003515 00 00 08 E1           4375 	.dw	0,2273
      003519 08                    4376 	.db	8
      00351A 00 00 08 A9           4377 	.dw	0,2217
      00351E 0F                    4378 	.uleb128	15
      00351F 07                    4379 	.db	7
      003520 00                    4380 	.uleb128	0
      003521 10                    4381 	.uleb128	16
      003522 05                    4382 	.db	5
      003523 03                    4383 	.db	3
      003524 00 00 80 E6           4384 	.dw	0,(_CLKPrescTable)
      003528 43 4C 4B 50 72 65 73  4385 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      003535 00                    4386 	.db	0
      003536 01                    4387 	.db	1
      003537 00 00 08 D4           4388 	.dw	0,2260
      00353B 00                    4389 	.uleb128	0
      00353C 00                    4390 	.uleb128	0
      00353D 00                    4391 	.uleb128	0
      00353E                       4392 Ldebug_info_end:
                                   4393 
                                   4394 	.area .debug_pubnames (NOLOAD)
      000698 00 00 02 3D           4395 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00069C                       4396 Ldebug_pubnames_start:
      00069C 00 02                 4397 	.dw	2
      00069E 00 00 2C 40           4398 	.dw	0,(Ldebug_info_start-4)
      0006A2 00 00 08 FE           4399 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0006A6 00 00 00 42           4400 	.dw	0,66
      0006AA 43 4C 4B 5F 44 65 49  4401 	.ascii "CLK_DeInit"
             6E 69 74
      0006B4 00                    4402 	.db	0
      0006B5 00 00 00 5B           4403 	.dw	0,91
      0006B9 43 4C 4B 5F 46 61 73  4404 	.ascii "CLK_FastHaltWakeUpCmd"
             74 48 61 6C 74 57 61
             6B 65 55 70 43 6D 64
      0006CE 00                    4405 	.db	0
      0006CF 00 00 00 B8           4406 	.dw	0,184
      0006D3 43 4C 4B 5F 48 53 45  4407 	.ascii "CLK_HSECmd"
             43 6D 64
      0006DD 00                    4408 	.db	0
      0006DE 00 00 00 F9           4409 	.dw	0,249
      0006E2 43 4C 4B 5F 48 53 49  4410 	.ascii "CLK_HSICmd"
             43 6D 64
      0006EC 00                    4411 	.db	0
      0006ED 00 00 01 3A           4412 	.dw	0,314
      0006F1 43 4C 4B 5F 4C 53 49  4413 	.ascii "CLK_LSICmd"
             43 6D 64
      0006FB 00                    4414 	.db	0
      0006FC 00 00 01 7B           4415 	.dw	0,379
      000700 43 4C 4B 5F 43 43 4F  4416 	.ascii "CLK_CCOCmd"
             43 6D 64
      00070A 00                    4417 	.db	0
      00070B 00 00 01 BC           4418 	.dw	0,444
      00070F 43 4C 4B 5F 43 6C 6F  4419 	.ascii "CLK_ClockSwitchCmd"
             63 6B 53 77 69 74 63
             68 43 6D 64
      000721 00                    4420 	.db	0
      000722 00 00 02 05           4421 	.dw	0,517
      000726 43 4C 4B 5F 53 6C 6F  4422 	.ascii "CLK_SlowActiveHaltWakeUpCmd"
             77 41 63 74 69 76 65
             48 61 6C 74 57 61 6B
             65 55 70 43 6D 64
      000741 00                    4423 	.db	0
      000742 00 00 02 57           4424 	.dw	0,599
      000746 43 4C 4B 5F 50 65 72  4425 	.ascii "CLK_PeripheralClockConfig"
             69 70 68 65 72 61 6C
             43 6C 6F 63 6B 43 6F
             6E 66 69 67
      00075F 00                    4426 	.db	0
      000760 00 00 02 E0           4427 	.dw	0,736
      000764 43 4C 4B 5F 43 6C 6F  4428 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      000779 00                    4429 	.db	0
      00077A 00 00 04 4B           4430 	.dw	0,1099
      00077E 43 4C 4B 5F 48 53 49  4431 	.ascii "CLK_HSIPrescalerConfig"
             50 72 65 73 63 61 6C
             65 72 43 6F 6E 66 69
             67
      000794 00                    4432 	.db	0
      000795 00 00 04 8A           4433 	.dw	0,1162
      000799 43 4C 4B 5F 43 43 4F  4434 	.ascii "CLK_CCOConfig"
             43 6F 6E 66 69 67
      0007A6 00                    4435 	.db	0
      0007A7 00 00 04 BB           4436 	.dw	0,1211
      0007AB 43 4C 4B 5F 49 54 43  4437 	.ascii "CLK_ITConfig"
             6F 6E 66 69 67
      0007B7 00                    4438 	.db	0
      0007B8 00 00 05 1D           4439 	.dw	0,1309
      0007BC 43 4C 4B 5F 53 59 53  4440 	.ascii "CLK_SYSCLKConfig"
             43 4C 4B 43 6F 6E 66
             69 67
      0007CC 00                    4441 	.db	0
      0007CD 00 00 05 69           4442 	.dw	0,1385
      0007D1 43 4C 4B 5F 53 57 49  4443 	.ascii "CLK_SWIMConfig"
             4D 43 6F 6E 66 69 67
      0007DF 00                    4444 	.db	0
      0007E0 00 00 05 B5           4445 	.dw	0,1461
      0007E4 43 4C 4B 5F 43 6C 6F  4446 	.ascii "CLK_ClockSecuritySystemEnable"
             63 6B 53 65 63 75 72
             69 74 79 53 79 73 74
             65 6D 45 6E 61 62 6C
             65
      000801 00                    4447 	.db	0
      000802 00 00 05 E1           4448 	.dw	0,1505
      000806 43 4C 4B 5F 47 65 74  4449 	.ascii "CLK_GetSYSCLKSource"
             53 59 53 43 4C 4B 53
             6F 75 72 63 65
      000819 00                    4450 	.db	0
      00081A 00 00 06 18           4451 	.dw	0,1560
      00081E 43 4C 4B 5F 47 65 74  4452 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      00082E 00                    4453 	.db	0
      00082F 00 00 06 AA           4454 	.dw	0,1706
      000833 43 4C 4B 5F 41 64 6A  4455 	.ascii "CLK_AdjustHSICalibrationValue"
             75 73 74 48 53 49 43
             61 6C 69 62 72 61 74
             69 6F 6E 56 61 6C 75
             65
      000850 00                    4456 	.db	0
      000851 00 00 06 FB           4457 	.dw	0,1787
      000855 43 4C 4B 5F 53 59 53  4458 	.ascii "CLK_SYSCLKEmergencyClear"
             43 4C 4B 45 6D 65 72
             67 65 6E 63 79 43 6C
             65 61 72
      00086D 00                    4459 	.db	0
      00086E 00 00 07 22           4460 	.dw	0,1826
      000872 43 4C 4B 5F 47 65 74  4461 	.ascii "CLK_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      000883 00                    4462 	.db	0
      000884 00 00 07 E0           4463 	.dw	0,2016
      000888 43 4C 4B 5F 47 65 74  4464 	.ascii "CLK_GetITStatus"
             49 54 53 74 61 74 75
             73
      000897 00                    4465 	.db	0
      000898 00 00 08 5F           4466 	.dw	0,2143
      00089C 43 4C 4B 5F 43 6C 65  4467 	.ascii "CLK_ClearITPendingBit"
             61 72 49 54 50 65 6E
             64 69 6E 67 42 69 74
      0008B1 00                    4468 	.db	0
      0008B2 00 00 08 BB           4469 	.dw	0,2235
      0008B6 48 53 49 44 69 76 46  4470 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      0008C2 00                    4471 	.db	0
      0008C3 00 00 08 E1           4472 	.dw	0,2273
      0008C7 43 4C 4B 50 72 65 73  4473 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      0008D4 00                    4474 	.db	0
      0008D5 00 00 00 00           4475 	.dw	0,0
      0008D9                       4476 Ldebug_pubnames_end:
                                   4477 
                                   4478 	.area .debug_frame (NOLOAD)
      002AAE 00 00                 4479 	.dw	0
      002AB0 00 0E                 4480 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      002AB2                       4481 Ldebug_CIE0_start:
      002AB2 FF FF                 4482 	.dw	0xffff
      002AB4 FF FF                 4483 	.dw	0xffff
      002AB6 01                    4484 	.db	1
      002AB7 00                    4485 	.db	0
      002AB8 01                    4486 	.uleb128	1
      002AB9 7F                    4487 	.sleb128	-1
      002ABA 09                    4488 	.db	9
      002ABB 0C                    4489 	.db	12
      002ABC 08                    4490 	.uleb128	8
      002ABD 02                    4491 	.uleb128	2
      002ABE 89                    4492 	.db	137
      002ABF 01                    4493 	.uleb128	1
      002AC0                       4494 Ldebug_CIE0_end:
      002AC0 00 00 00 1A           4495 	.dw	0,26
      002AC4 00 00 2A AE           4496 	.dw	0,(Ldebug_CIE0_start-4)
      002AC8 00 00 9B 21           4497 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$417)	;initial loc
      002ACC 00 00 00 20           4498 	.dw	0,Sstm8s_clk$CLK_ClearITPendingBit$428-Sstm8s_clk$CLK_ClearITPendingBit$417
      002AD0 01                    4499 	.db	1
      002AD1 00 00 9B 21           4500 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$417)
      002AD5 0E                    4501 	.db	14
      002AD6 02                    4502 	.uleb128	2
      002AD7 01                    4503 	.db	1
      002AD8 00 00 9B 2D           4504 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$419)
      002ADC 0E                    4505 	.db	14
      002ADD 02                    4506 	.uleb128	2
                                   4507 
                                   4508 	.area .debug_frame (NOLOAD)
      002ADE 00 00                 4509 	.dw	0
      002AE0 00 0E                 4510 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      002AE2                       4511 Ldebug_CIE1_start:
      002AE2 FF FF                 4512 	.dw	0xffff
      002AE4 FF FF                 4513 	.dw	0xffff
      002AE6 01                    4514 	.db	1
      002AE7 00                    4515 	.db	0
      002AE8 01                    4516 	.uleb128	1
      002AE9 7F                    4517 	.sleb128	-1
      002AEA 09                    4518 	.db	9
      002AEB 0C                    4519 	.db	12
      002AEC 08                    4520 	.uleb128	8
      002AED 02                    4521 	.uleb128	2
      002AEE 89                    4522 	.db	137
      002AEF 01                    4523 	.uleb128	1
      002AF0                       4524 Ldebug_CIE1_end:
      002AF0 00 00 00 28           4525 	.dw	0,40
      002AF4 00 00 2A DE           4526 	.dw	0,(Ldebug_CIE1_start-4)
      002AF8 00 00 9A E7           4527 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$391)	;initial loc
      002AFC 00 00 00 3A           4528 	.dw	0,Sstm8s_clk$CLK_GetITStatus$415-Sstm8s_clk$CLK_GetITStatus$391
      002B00 01                    4529 	.db	1
      002B01 00 00 9A E7           4530 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$391)
      002B05 0E                    4531 	.db	14
      002B06 02                    4532 	.uleb128	2
      002B07 01                    4533 	.db	1
      002B08 00 00 9A F3           4534 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$393)
      002B0C 0E                    4535 	.db	14
      002B0D 02                    4536 	.uleb128	2
      002B0E 01                    4537 	.db	1
      002B0F 00 00 9B 02           4538 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$396)
      002B13 0E                    4539 	.db	14
      002B14 02                    4540 	.uleb128	2
      002B15 01                    4541 	.db	1
      002B16 00 00 9B 1A           4542 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$405)
      002B1A 0E                    4543 	.db	14
      002B1B 02                    4544 	.uleb128	2
                                   4545 
                                   4546 	.area .debug_frame (NOLOAD)
      002B1C 00 00                 4547 	.dw	0
      002B1E 00 0E                 4548 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      002B20                       4549 Ldebug_CIE2_start:
      002B20 FF FF                 4550 	.dw	0xffff
      002B22 FF FF                 4551 	.dw	0xffff
      002B24 01                    4552 	.db	1
      002B25 00                    4553 	.db	0
      002B26 01                    4554 	.uleb128	1
      002B27 7F                    4555 	.sleb128	-1
      002B28 09                    4556 	.db	9
      002B29 0C                    4557 	.db	12
      002B2A 08                    4558 	.uleb128	8
      002B2B 02                    4559 	.uleb128	2
      002B2C 89                    4560 	.db	137
      002B2D 01                    4561 	.uleb128	1
      002B2E                       4562 Ldebug_CIE2_end:
      002B2E 00 00 00 4B           4563 	.dw	0,75
      002B32 00 00 2B 1C           4564 	.dw	0,(Ldebug_CIE2_start-4)
      002B36 00 00 9A 84           4565 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$350)	;initial loc
      002B3A 00 00 00 63           4566 	.dw	0,Sstm8s_clk$CLK_GetFlagStatus$389-Sstm8s_clk$CLK_GetFlagStatus$350
      002B3E 01                    4567 	.db	1
      002B3F 00 00 9A 84           4568 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$350)
      002B43 0E                    4569 	.db	14
      002B44 02                    4570 	.uleb128	2
      002B45 01                    4571 	.db	1
      002B46 00 00 9A 85           4572 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$351)
      002B4A 0E                    4573 	.db	14
      002B4B 03                    4574 	.uleb128	3
      002B4C 01                    4575 	.db	1
      002B4D 00 00 9A 94           4576 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$354)
      002B51 0E                    4577 	.db	14
      002B52 03                    4578 	.uleb128	3
      002B53 01                    4579 	.db	1
      002B54 00 00 9A A5           4580 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$359)
      002B58 0E                    4581 	.db	14
      002B59 03                    4582 	.uleb128	3
      002B5A 01                    4583 	.db	1
      002B5B 00 00 9A B6           4584 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$364)
      002B5F 0E                    4585 	.db	14
      002B60 03                    4586 	.uleb128	3
      002B61 01                    4587 	.db	1
      002B62 00 00 9A C7           4588 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$369)
      002B66 0E                    4589 	.db	14
      002B67 03                    4590 	.uleb128	3
      002B68 01                    4591 	.db	1
      002B69 00 00 9A D1           4592 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$377)
      002B6D 0E                    4593 	.db	14
      002B6E 04                    4594 	.uleb128	4
      002B6F 01                    4595 	.db	1
      002B70 00 00 9A D6           4596 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$378)
      002B74 0E                    4597 	.db	14
      002B75 03                    4598 	.uleb128	3
      002B76 01                    4599 	.db	1
      002B77 00 00 9A E6           4600 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$387)
      002B7B 0E                    4601 	.db	14
      002B7C 02                    4602 	.uleb128	2
                                   4603 
                                   4604 	.area .debug_frame (NOLOAD)
      002B7D 00 00                 4605 	.dw	0
      002B7F 00 0E                 4606 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      002B81                       4607 Ldebug_CIE3_start:
      002B81 FF FF                 4608 	.dw	0xffff
      002B83 FF FF                 4609 	.dw	0xffff
      002B85 01                    4610 	.db	1
      002B86 00                    4611 	.db	0
      002B87 01                    4612 	.uleb128	1
      002B88 7F                    4613 	.sleb128	-1
      002B89 09                    4614 	.db	9
      002B8A 0C                    4615 	.db	12
      002B8B 08                    4616 	.uleb128	8
      002B8C 02                    4617 	.uleb128	2
      002B8D 89                    4618 	.db	137
      002B8E 01                    4619 	.uleb128	1
      002B8F                       4620 Ldebug_CIE3_end:
      002B8F 00 00 00 13           4621 	.dw	0,19
      002B93 00 00 2B 7D           4622 	.dw	0,(Ldebug_CIE3_start-4)
      002B97 00 00 9A 7B           4623 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$344)	;initial loc
      002B9B 00 00 00 09           4624 	.dw	0,Sstm8s_clk$CLK_SYSCLKEmergencyClear$348-Sstm8s_clk$CLK_SYSCLKEmergencyClear$344
      002B9F 01                    4625 	.db	1
      002BA0 00 00 9A 7B           4626 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$344)
      002BA4 0E                    4627 	.db	14
      002BA5 02                    4628 	.uleb128	2
                                   4629 
                                   4630 	.area .debug_frame (NOLOAD)
      002BA6 00 00                 4631 	.dw	0
      002BA8 00 0E                 4632 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002BAA                       4633 Ldebug_CIE4_start:
      002BAA FF FF                 4634 	.dw	0xffff
      002BAC FF FF                 4635 	.dw	0xffff
      002BAE 01                    4636 	.db	1
      002BAF 00                    4637 	.db	0
      002BB0 01                    4638 	.uleb128	1
      002BB1 7F                    4639 	.sleb128	-1
      002BB2 09                    4640 	.db	9
      002BB3 0C                    4641 	.db	12
      002BB4 08                    4642 	.uleb128	8
      002BB5 02                    4643 	.uleb128	2
      002BB6 89                    4644 	.db	137
      002BB7 01                    4645 	.uleb128	1
      002BB8                       4646 Ldebug_CIE4_end:
      002BB8 00 00 00 13           4647 	.dw	0,19
      002BBC 00 00 2B A6           4648 	.dw	0,(Ldebug_CIE4_start-4)
      002BC0 00 00 9A 70           4649 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$338)	;initial loc
      002BC4 00 00 00 0B           4650 	.dw	0,Sstm8s_clk$CLK_AdjustHSICalibrationValue$342-Sstm8s_clk$CLK_AdjustHSICalibrationValue$338
      002BC8 01                    4651 	.db	1
      002BC9 00 00 9A 70           4652 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$338)
      002BCD 0E                    4653 	.db	14
      002BCE 02                    4654 	.uleb128	2
                                   4655 
                                   4656 	.area .debug_frame (NOLOAD)
      002BCF 00 00                 4657 	.dw	0
      002BD1 00 0E                 4658 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      002BD3                       4659 Ldebug_CIE5_start:
      002BD3 FF FF                 4660 	.dw	0xffff
      002BD5 FF FF                 4661 	.dw	0xffff
      002BD7 01                    4662 	.db	1
      002BD8 00                    4663 	.db	0
      002BD9 01                    4664 	.uleb128	1
      002BDA 7F                    4665 	.sleb128	-1
      002BDB 09                    4666 	.db	9
      002BDC 0C                    4667 	.db	12
      002BDD 08                    4668 	.uleb128	8
      002BDE 02                    4669 	.uleb128	2
      002BDF 89                    4670 	.db	137
      002BE0 01                    4671 	.uleb128	1
      002BE1                       4672 Ldebug_CIE5_end:
      002BE1 00 00 00 60           4673 	.dw	0,96
      002BE5 00 00 2B CF           4674 	.dw	0,(Ldebug_CIE5_start-4)
      002BE9 00 00 9A 11           4675 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$306)	;initial loc
      002BED 00 00 00 5F           4676 	.dw	0,Sstm8s_clk$CLK_GetClockFreq$336-Sstm8s_clk$CLK_GetClockFreq$306
      002BF1 01                    4677 	.db	1
      002BF2 00 00 9A 11           4678 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$306)
      002BF6 0E                    4679 	.db	14
      002BF7 02                    4680 	.uleb128	2
      002BF8 01                    4681 	.db	1
      002BF9 00 00 9A 13           4682 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$307)
      002BFD 0E                    4683 	.db	14
      002BFE 06                    4684 	.uleb128	6
      002BFF 01                    4685 	.db	1
      002C00 00 00 9A 24           4686 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$310)
      002C04 0E                    4687 	.db	14
      002C05 06                    4688 	.uleb128	6
      002C06 01                    4689 	.db	1
      002C07 00 00 9A 37           4690 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$317)
      002C0B 0E                    4691 	.db	14
      002C0C 08                    4692 	.uleb128	8
      002C0D 01                    4693 	.db	1
      002C0E 00 00 9A 39           4694 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$318)
      002C12 0E                    4695 	.db	14
      002C13 0A                    4696 	.uleb128	10
      002C14 01                    4697 	.db	1
      002C15 00 00 9A 3B           4698 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$319)
      002C19 0E                    4699 	.db	14
      002C1A 0B                    4700 	.uleb128	11
      002C1B 01                    4701 	.db	1
      002C1C 00 00 9A 3D           4702 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$320)
      002C20 0E                    4703 	.db	14
      002C21 0C                    4704 	.uleb128	12
      002C22 01                    4705 	.db	1
      002C23 00 00 9A 3F           4706 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$321)
      002C27 0E                    4707 	.db	14
      002C28 0D                    4708 	.uleb128	13
      002C29 01                    4709 	.db	1
      002C2A 00 00 9A 41           4710 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$322)
      002C2E 0E                    4711 	.db	14
      002C2F 0E                    4712 	.uleb128	14
      002C30 01                    4713 	.db	1
      002C31 00 00 9A 46           4714 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$323)
      002C35 0E                    4715 	.db	14
      002C36 06                    4716 	.uleb128	6
      002C37 01                    4717 	.db	1
      002C38 00 00 9A 58           4718 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$325)
      002C3C 0E                    4719 	.db	14
      002C3D 06                    4720 	.uleb128	6
      002C3E 01                    4721 	.db	1
      002C3F 00 00 9A 6F           4722 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$334)
      002C43 0E                    4723 	.db	14
      002C44 02                    4724 	.uleb128	2
                                   4725 
                                   4726 	.area .debug_frame (NOLOAD)
      002C45 00 00                 4727 	.dw	0
      002C47 00 0E                 4728 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      002C49                       4729 Ldebug_CIE6_start:
      002C49 FF FF                 4730 	.dw	0xffff
      002C4B FF FF                 4731 	.dw	0xffff
      002C4D 01                    4732 	.db	1
      002C4E 00                    4733 	.db	0
      002C4F 01                    4734 	.uleb128	1
      002C50 7F                    4735 	.sleb128	-1
      002C51 09                    4736 	.db	9
      002C52 0C                    4737 	.db	12
      002C53 08                    4738 	.uleb128	8
      002C54 02                    4739 	.uleb128	2
      002C55 89                    4740 	.db	137
      002C56 01                    4741 	.uleb128	1
      002C57                       4742 Ldebug_CIE6_end:
      002C57 00 00 00 13           4743 	.dw	0,19
      002C5B 00 00 2C 45           4744 	.dw	0,(Ldebug_CIE6_start-4)
      002C5F 00 00 9A 0D           4745 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$300)	;initial loc
      002C63 00 00 00 04           4746 	.dw	0,Sstm8s_clk$CLK_GetSYSCLKSource$304-Sstm8s_clk$CLK_GetSYSCLKSource$300
      002C67 01                    4747 	.db	1
      002C68 00 00 9A 0D           4748 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$300)
      002C6C 0E                    4749 	.db	14
      002C6D 02                    4750 	.uleb128	2
                                   4751 
                                   4752 	.area .debug_frame (NOLOAD)
      002C6E 00 00                 4753 	.dw	0
      002C70 00 0E                 4754 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      002C72                       4755 Ldebug_CIE7_start:
      002C72 FF FF                 4756 	.dw	0xffff
      002C74 FF FF                 4757 	.dw	0xffff
      002C76 01                    4758 	.db	1
      002C77 00                    4759 	.db	0
      002C78 01                    4760 	.uleb128	1
      002C79 7F                    4761 	.sleb128	-1
      002C7A 09                    4762 	.db	9
      002C7B 0C                    4763 	.db	12
      002C7C 08                    4764 	.uleb128	8
      002C7D 02                    4765 	.uleb128	2
      002C7E 89                    4766 	.db	137
      002C7F 01                    4767 	.uleb128	1
      002C80                       4768 Ldebug_CIE7_end:
      002C80 00 00 00 13           4769 	.dw	0,19
      002C84 00 00 2C 6E           4770 	.dw	0,(Ldebug_CIE7_start-4)
      002C88 00 00 9A 04           4771 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$294)	;initial loc
      002C8C 00 00 00 09           4772 	.dw	0,Sstm8s_clk$CLK_ClockSecuritySystemEnable$298-Sstm8s_clk$CLK_ClockSecuritySystemEnable$294
      002C90 01                    4773 	.db	1
      002C91 00 00 9A 04           4774 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$294)
      002C95 0E                    4775 	.db	14
      002C96 02                    4776 	.uleb128	2
                                   4777 
                                   4778 	.area .debug_frame (NOLOAD)
      002C97 00 00                 4779 	.dw	0
      002C99 00 0E                 4780 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      002C9B                       4781 Ldebug_CIE8_start:
      002C9B FF FF                 4782 	.dw	0xffff
      002C9D FF FF                 4783 	.dw	0xffff
      002C9F 01                    4784 	.db	1
      002CA0 00                    4785 	.db	0
      002CA1 01                    4786 	.uleb128	1
      002CA2 7F                    4787 	.sleb128	-1
      002CA3 09                    4788 	.db	9
      002CA4 0C                    4789 	.db	12
      002CA5 08                    4790 	.uleb128	8
      002CA6 02                    4791 	.uleb128	2
      002CA7 89                    4792 	.db	137
      002CA8 01                    4793 	.uleb128	1
      002CA9                       4794 Ldebug_CIE8_end:
      002CA9 00 00 00 13           4795 	.dw	0,19
      002CAD 00 00 2C 97           4796 	.dw	0,(Ldebug_CIE8_start-4)
      002CB1 00 00 99 EC           4797 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$281)	;initial loc
      002CB5 00 00 00 18           4798 	.dw	0,Sstm8s_clk$CLK_SWIMConfig$292-Sstm8s_clk$CLK_SWIMConfig$281
      002CB9 01                    4799 	.db	1
      002CBA 00 00 99 EC           4800 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$281)
      002CBE 0E                    4801 	.db	14
      002CBF 02                    4802 	.uleb128	2
                                   4803 
                                   4804 	.area .debug_frame (NOLOAD)
      002CC0 00 00                 4805 	.dw	0
      002CC2 00 0E                 4806 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      002CC4                       4807 Ldebug_CIE9_start:
      002CC4 FF FF                 4808 	.dw	0xffff
      002CC6 FF FF                 4809 	.dw	0xffff
      002CC8 01                    4810 	.db	1
      002CC9 00                    4811 	.db	0
      002CCA 01                    4812 	.uleb128	1
      002CCB 7F                    4813 	.sleb128	-1
      002CCC 09                    4814 	.db	9
      002CCD 0C                    4815 	.db	12
      002CCE 08                    4816 	.uleb128	8
      002CCF 02                    4817 	.uleb128	2
      002CD0 89                    4818 	.db	137
      002CD1 01                    4819 	.uleb128	1
      002CD2                       4820 Ldebug_CIE9_end:
      002CD2 00 00 00 21           4821 	.dw	0,33
      002CD6 00 00 2C C0           4822 	.dw	0,(Ldebug_CIE9_start-4)
      002CDA 00 00 99 B6           4823 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$264)	;initial loc
      002CDE 00 00 00 36           4824 	.dw	0,Sstm8s_clk$CLK_SYSCLKConfig$279-Sstm8s_clk$CLK_SYSCLKConfig$264
      002CE2 01                    4825 	.db	1
      002CE3 00 00 99 B6           4826 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$264)
      002CE7 0E                    4827 	.db	14
      002CE8 02                    4828 	.uleb128	2
      002CE9 01                    4829 	.db	1
      002CEA 00 00 99 B7           4830 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$265)
      002CEE 0E                    4831 	.db	14
      002CEF 03                    4832 	.uleb128	3
      002CF0 01                    4833 	.db	1
      002CF1 00 00 99 EB           4834 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$277)
      002CF5 0E                    4835 	.db	14
      002CF6 02                    4836 	.uleb128	2
                                   4837 
                                   4838 	.area .debug_frame (NOLOAD)
      002CF7 00 00                 4839 	.dw	0
      002CF9 00 0E                 4840 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      002CFB                       4841 Ldebug_CIE10_start:
      002CFB FF FF                 4842 	.dw	0xffff
      002CFD FF FF                 4843 	.dw	0xffff
      002CFF 01                    4844 	.db	1
      002D00 00                    4845 	.db	0
      002D01 01                    4846 	.uleb128	1
      002D02 7F                    4847 	.sleb128	-1
      002D03 09                    4848 	.db	9
      002D04 0C                    4849 	.db	12
      002D05 08                    4850 	.uleb128	8
      002D06 02                    4851 	.uleb128	2
      002D07 89                    4852 	.db	137
      002D08 01                    4853 	.uleb128	1
      002D09                       4854 Ldebug_CIE10_end:
      002D09 00 00 00 2F           4855 	.dw	0,47
      002D0D 00 00 2C F7           4856 	.dw	0,(Ldebug_CIE10_start-4)
      002D11 00 00 99 4E           4857 	.dw	0,(Sstm8s_clk$CLK_ITConfig$234)	;initial loc
      002D15 00 00 00 68           4858 	.dw	0,Sstm8s_clk$CLK_ITConfig$262-Sstm8s_clk$CLK_ITConfig$234
      002D19 01                    4859 	.db	1
      002D1A 00 00 99 4E           4860 	.dw	0,(Sstm8s_clk$CLK_ITConfig$234)
      002D1E 0E                    4861 	.db	14
      002D1F 02                    4862 	.uleb128	2
      002D20 01                    4863 	.db	1
      002D21 00 00 99 4F           4864 	.dw	0,(Sstm8s_clk$CLK_ITConfig$235)
      002D25 0E                    4865 	.db	14
      002D26 03                    4866 	.uleb128	3
      002D27 01                    4867 	.db	1
      002D28 00 00 99 5E           4868 	.dw	0,(Sstm8s_clk$CLK_ITConfig$237)
      002D2C 0E                    4869 	.db	14
      002D2D 03                    4870 	.uleb128	3
      002D2E 01                    4871 	.db	1
      002D2F 00 00 99 6A           4872 	.dw	0,(Sstm8s_clk$CLK_ITConfig$238)
      002D33 0E                    4873 	.db	14
      002D34 03                    4874 	.uleb128	3
      002D35 01                    4875 	.db	1
      002D36 00 00 99 B5           4876 	.dw	0,(Sstm8s_clk$CLK_ITConfig$260)
      002D3A 0E                    4877 	.db	14
      002D3B 02                    4878 	.uleb128	2
                                   4879 
                                   4880 	.area .debug_frame (NOLOAD)
      002D3C 00 00                 4881 	.dw	0
      002D3E 00 0E                 4882 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      002D40                       4883 Ldebug_CIE11_start:
      002D40 FF FF                 4884 	.dw	0xffff
      002D42 FF FF                 4885 	.dw	0xffff
      002D44 01                    4886 	.db	1
      002D45 00                    4887 	.db	0
      002D46 01                    4888 	.uleb128	1
      002D47 7F                    4889 	.sleb128	-1
      002D48 09                    4890 	.db	9
      002D49 0C                    4891 	.db	12
      002D4A 08                    4892 	.uleb128	8
      002D4B 02                    4893 	.uleb128	2
      002D4C 89                    4894 	.db	137
      002D4D 01                    4895 	.uleb128	1
      002D4E                       4896 Ldebug_CIE11_end:
      002D4E 00 00 00 13           4897 	.dw	0,19
      002D52 00 00 2D 3C           4898 	.dw	0,(Ldebug_CIE11_start-4)
      002D56 00 00 99 35           4899 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$226)	;initial loc
      002D5A 00 00 00 19           4900 	.dw	0,Sstm8s_clk$CLK_CCOConfig$232-Sstm8s_clk$CLK_CCOConfig$226
      002D5E 01                    4901 	.db	1
      002D5F 00 00 99 35           4902 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$226)
      002D63 0E                    4903 	.db	14
      002D64 02                    4904 	.uleb128	2
                                   4905 
                                   4906 	.area .debug_frame (NOLOAD)
      002D65 00 00                 4907 	.dw	0
      002D67 00 0E                 4908 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      002D69                       4909 Ldebug_CIE12_start:
      002D69 FF FF                 4910 	.dw	0xffff
      002D6B FF FF                 4911 	.dw	0xffff
      002D6D 01                    4912 	.db	1
      002D6E 00                    4913 	.db	0
      002D6F 01                    4914 	.uleb128	1
      002D70 7F                    4915 	.sleb128	-1
      002D71 09                    4916 	.db	9
      002D72 0C                    4917 	.db	12
      002D73 08                    4918 	.uleb128	8
      002D74 02                    4919 	.uleb128	2
      002D75 89                    4920 	.db	137
      002D76 01                    4921 	.uleb128	1
      002D77                       4922 Ldebug_CIE12_end:
      002D77 00 00 00 13           4923 	.dw	0,19
      002D7B 00 00 2D 65           4924 	.dw	0,(Ldebug_CIE12_start-4)
      002D7F 00 00 99 24           4925 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$219)	;initial loc
      002D83 00 00 00 11           4926 	.dw	0,Sstm8s_clk$CLK_HSIPrescalerConfig$224-Sstm8s_clk$CLK_HSIPrescalerConfig$219
      002D87 01                    4927 	.db	1
      002D88 00 00 99 24           4928 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$219)
      002D8C 0E                    4929 	.db	14
      002D8D 02                    4930 	.uleb128	2
                                   4931 
                                   4932 	.area .debug_frame (NOLOAD)
      002D8E 00 00                 4933 	.dw	0
      002D90 00 0E                 4934 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      002D92                       4935 Ldebug_CIE13_start:
      002D92 FF FF                 4936 	.dw	0xffff
      002D94 FF FF                 4937 	.dw	0xffff
      002D96 01                    4938 	.db	1
      002D97 00                    4939 	.db	0
      002D98 01                    4940 	.uleb128	1
      002D99 7F                    4941 	.sleb128	-1
      002D9A 09                    4942 	.db	9
      002D9B 0C                    4943 	.db	12
      002D9C 08                    4944 	.uleb128	8
      002D9D 02                    4945 	.uleb128	2
      002D9E 89                    4946 	.db	137
      002D9F 01                    4947 	.uleb128	1
      002DA0                       4948 Ldebug_CIE13_end:
      002DA0 00 00 00 4B           4949 	.dw	0,75
      002DA4 00 00 2D 8E           4950 	.dw	0,(Ldebug_CIE13_start-4)
      002DA8 00 00 98 1E           4951 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$140)	;initial loc
      002DAC 00 00 01 06           4952 	.dw	0,Sstm8s_clk$CLK_ClockSwitchConfig$217-Sstm8s_clk$CLK_ClockSwitchConfig$140
      002DB0 01                    4953 	.db	1
      002DB1 00 00 98 1E           4954 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$140)
      002DB5 0E                    4955 	.db	14
      002DB6 02                    4956 	.uleb128	2
      002DB7 01                    4957 	.db	1
      002DB8 00 00 98 1F           4958 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$141)
      002DBC 0E                    4959 	.db	14
      002DBD 03                    4960 	.uleb128	3
      002DBE 01                    4961 	.db	1
      002DBF 00 00 98 2A           4962 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$146)
      002DC3 0E                    4963 	.db	14
      002DC4 04                    4964 	.uleb128	4
      002DC5 01                    4965 	.db	1
      002DC6 00 00 98 2E           4966 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$147)
      002DCA 0E                    4967 	.db	14
      002DCB 03                    4968 	.uleb128	3
      002DCC 01                    4969 	.db	1
      002DCD 00 00 98 36           4970 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$148)
      002DD1 0E                    4971 	.db	14
      002DD2 03                    4972 	.uleb128	3
      002DD3 01                    4973 	.db	1
      002DD4 00 00 98 DC           4974 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$199)
      002DD8 0E                    4975 	.db	14
      002DD9 03                    4976 	.uleb128	3
      002DDA 01                    4977 	.db	1
      002DDB 00 00 98 FA           4978 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$204)
      002DDF 0E                    4979 	.db	14
      002DE0 03                    4980 	.uleb128	3
      002DE1 01                    4981 	.db	1
      002DE2 00 00 99 18           4982 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$209)
      002DE6 0E                    4983 	.db	14
      002DE7 03                    4984 	.uleb128	3
      002DE8 01                    4985 	.db	1
      002DE9 00 00 99 23           4986 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$215)
      002DED 0E                    4987 	.db	14
      002DEE 02                    4988 	.uleb128	2
                                   4989 
                                   4990 	.area .debug_frame (NOLOAD)
      002DEF 00 00                 4991 	.dw	0
      002DF1 00 0E                 4992 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      002DF3                       4993 Ldebug_CIE14_start:
      002DF3 FF FF                 4994 	.dw	0xffff
      002DF5 FF FF                 4995 	.dw	0xffff
      002DF7 01                    4996 	.db	1
      002DF8 00                    4997 	.db	0
      002DF9 01                    4998 	.uleb128	1
      002DFA 7F                    4999 	.sleb128	-1
      002DFB 09                    5000 	.db	9
      002DFC 0C                    5001 	.db	12
      002DFD 08                    5002 	.uleb128	8
      002DFE 02                    5003 	.uleb128	2
      002DFF 89                    5004 	.db	137
      002E00 01                    5005 	.uleb128	1
      002E01                       5006 Ldebug_CIE14_end:
      002E01 00 00 00 2F           5007 	.dw	0,47
      002E05 00 00 2D EF           5008 	.dw	0,(Ldebug_CIE14_start-4)
      002E09 00 00 97 CA           5009 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$110)	;initial loc
      002E0D 00 00 00 54           5010 	.dw	0,Sstm8s_clk$CLK_PeripheralClockConfig$138-Sstm8s_clk$CLK_PeripheralClockConfig$110
      002E11 01                    5011 	.db	1
      002E12 00 00 97 CA           5012 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$110)
      002E16 0E                    5013 	.db	14
      002E17 02                    5014 	.uleb128	2
      002E18 01                    5015 	.db	1
      002E19 00 00 97 CB           5016 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$111)
      002E1D 0E                    5017 	.db	14
      002E1E 04                    5018 	.uleb128	4
      002E1F 01                    5019 	.db	1
      002E20 00 00 97 D0           5020 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$113)
      002E24 0E                    5021 	.db	14
      002E25 05                    5022 	.uleb128	5
      002E26 01                    5023 	.db	1
      002E27 00 00 97 D5           5024 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$114)
      002E2B 0E                    5025 	.db	14
      002E2C 04                    5026 	.uleb128	4
      002E2D 01                    5027 	.db	1
      002E2E 00 00 98 1D           5028 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$136)
      002E32 0E                    5029 	.db	14
      002E33 02                    5030 	.uleb128	2
                                   5031 
                                   5032 	.area .debug_frame (NOLOAD)
      002E34 00 00                 5033 	.dw	0
      002E36 00 0E                 5034 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      002E38                       5035 Ldebug_CIE15_start:
      002E38 FF FF                 5036 	.dw	0xffff
      002E3A FF FF                 5037 	.dw	0xffff
      002E3C 01                    5038 	.db	1
      002E3D 00                    5039 	.db	0
      002E3E 01                    5040 	.uleb128	1
      002E3F 7F                    5041 	.sleb128	-1
      002E40 09                    5042 	.db	9
      002E41 0C                    5043 	.db	12
      002E42 08                    5044 	.uleb128	8
      002E43 02                    5045 	.uleb128	2
      002E44 89                    5046 	.db	137
      002E45 01                    5047 	.uleb128	1
      002E46                       5048 Ldebug_CIE15_end:
      002E46 00 00 00 13           5049 	.dw	0,19
      002E4A 00 00 2E 34           5050 	.dw	0,(Ldebug_CIE15_start-4)
      002E4E 00 00 97 B2           5051 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97)	;initial loc
      002E52 00 00 00 18           5052 	.dw	0,Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$108-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97
      002E56 01                    5053 	.db	1
      002E57 00 00 97 B2           5054 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$97)
      002E5B 0E                    5055 	.db	14
      002E5C 02                    5056 	.uleb128	2
                                   5057 
                                   5058 	.area .debug_frame (NOLOAD)
      002E5D 00 00                 5059 	.dw	0
      002E5F 00 0E                 5060 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      002E61                       5061 Ldebug_CIE16_start:
      002E61 FF FF                 5062 	.dw	0xffff
      002E63 FF FF                 5063 	.dw	0xffff
      002E65 01                    5064 	.db	1
      002E66 00                    5065 	.db	0
      002E67 01                    5066 	.uleb128	1
      002E68 7F                    5067 	.sleb128	-1
      002E69 09                    5068 	.db	9
      002E6A 0C                    5069 	.db	12
      002E6B 08                    5070 	.uleb128	8
      002E6C 02                    5071 	.uleb128	2
      002E6D 89                    5072 	.db	137
      002E6E 01                    5073 	.uleb128	1
      002E6F                       5074 Ldebug_CIE16_end:
      002E6F 00 00 00 13           5075 	.dw	0,19
      002E73 00 00 2E 5D           5076 	.dw	0,(Ldebug_CIE16_start-4)
      002E77 00 00 97 9A           5077 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$84)	;initial loc
      002E7B 00 00 00 18           5078 	.dw	0,Sstm8s_clk$CLK_ClockSwitchCmd$95-Sstm8s_clk$CLK_ClockSwitchCmd$84
      002E7F 01                    5079 	.db	1
      002E80 00 00 97 9A           5080 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$84)
      002E84 0E                    5081 	.db	14
      002E85 02                    5082 	.uleb128	2
                                   5083 
                                   5084 	.area .debug_frame (NOLOAD)
      002E86 00 00                 5085 	.dw	0
      002E88 00 0E                 5086 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      002E8A                       5087 Ldebug_CIE17_start:
      002E8A FF FF                 5088 	.dw	0xffff
      002E8C FF FF                 5089 	.dw	0xffff
      002E8E 01                    5090 	.db	1
      002E8F 00                    5091 	.db	0
      002E90 01                    5092 	.uleb128	1
      002E91 7F                    5093 	.sleb128	-1
      002E92 09                    5094 	.db	9
      002E93 0C                    5095 	.db	12
      002E94 08                    5096 	.uleb128	8
      002E95 02                    5097 	.uleb128	2
      002E96 89                    5098 	.db	137
      002E97 01                    5099 	.uleb128	1
      002E98                       5100 Ldebug_CIE17_end:
      002E98 00 00 00 13           5101 	.dw	0,19
      002E9C 00 00 2E 86           5102 	.dw	0,(Ldebug_CIE17_start-4)
      002EA0 00 00 97 82           5103 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$71)	;initial loc
      002EA4 00 00 00 18           5104 	.dw	0,Sstm8s_clk$CLK_CCOCmd$82-Sstm8s_clk$CLK_CCOCmd$71
      002EA8 01                    5105 	.db	1
      002EA9 00 00 97 82           5106 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$71)
      002EAD 0E                    5107 	.db	14
      002EAE 02                    5108 	.uleb128	2
                                   5109 
                                   5110 	.area .debug_frame (NOLOAD)
      002EAF 00 00                 5111 	.dw	0
      002EB1 00 0E                 5112 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      002EB3                       5113 Ldebug_CIE18_start:
      002EB3 FF FF                 5114 	.dw	0xffff
      002EB5 FF FF                 5115 	.dw	0xffff
      002EB7 01                    5116 	.db	1
      002EB8 00                    5117 	.db	0
      002EB9 01                    5118 	.uleb128	1
      002EBA 7F                    5119 	.sleb128	-1
      002EBB 09                    5120 	.db	9
      002EBC 0C                    5121 	.db	12
      002EBD 08                    5122 	.uleb128	8
      002EBE 02                    5123 	.uleb128	2
      002EBF 89                    5124 	.db	137
      002EC0 01                    5125 	.uleb128	1
      002EC1                       5126 Ldebug_CIE18_end:
      002EC1 00 00 00 13           5127 	.dw	0,19
      002EC5 00 00 2E AF           5128 	.dw	0,(Ldebug_CIE18_start-4)
      002EC9 00 00 97 6A           5129 	.dw	0,(Sstm8s_clk$CLK_LSICmd$58)	;initial loc
      002ECD 00 00 00 18           5130 	.dw	0,Sstm8s_clk$CLK_LSICmd$69-Sstm8s_clk$CLK_LSICmd$58
      002ED1 01                    5131 	.db	1
      002ED2 00 00 97 6A           5132 	.dw	0,(Sstm8s_clk$CLK_LSICmd$58)
      002ED6 0E                    5133 	.db	14
      002ED7 02                    5134 	.uleb128	2
                                   5135 
                                   5136 	.area .debug_frame (NOLOAD)
      002ED8 00 00                 5137 	.dw	0
      002EDA 00 0E                 5138 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      002EDC                       5139 Ldebug_CIE19_start:
      002EDC FF FF                 5140 	.dw	0xffff
      002EDE FF FF                 5141 	.dw	0xffff
      002EE0 01                    5142 	.db	1
      002EE1 00                    5143 	.db	0
      002EE2 01                    5144 	.uleb128	1
      002EE3 7F                    5145 	.sleb128	-1
      002EE4 09                    5146 	.db	9
      002EE5 0C                    5147 	.db	12
      002EE6 08                    5148 	.uleb128	8
      002EE7 02                    5149 	.uleb128	2
      002EE8 89                    5150 	.db	137
      002EE9 01                    5151 	.uleb128	1
      002EEA                       5152 Ldebug_CIE19_end:
      002EEA 00 00 00 13           5153 	.dw	0,19
      002EEE 00 00 2E D8           5154 	.dw	0,(Ldebug_CIE19_start-4)
      002EF2 00 00 97 52           5155 	.dw	0,(Sstm8s_clk$CLK_HSICmd$45)	;initial loc
      002EF6 00 00 00 18           5156 	.dw	0,Sstm8s_clk$CLK_HSICmd$56-Sstm8s_clk$CLK_HSICmd$45
      002EFA 01                    5157 	.db	1
      002EFB 00 00 97 52           5158 	.dw	0,(Sstm8s_clk$CLK_HSICmd$45)
      002EFF 0E                    5159 	.db	14
      002F00 02                    5160 	.uleb128	2
                                   5161 
                                   5162 	.area .debug_frame (NOLOAD)
      002F01 00 00                 5163 	.dw	0
      002F03 00 0E                 5164 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      002F05                       5165 Ldebug_CIE20_start:
      002F05 FF FF                 5166 	.dw	0xffff
      002F07 FF FF                 5167 	.dw	0xffff
      002F09 01                    5168 	.db	1
      002F0A 00                    5169 	.db	0
      002F0B 01                    5170 	.uleb128	1
      002F0C 7F                    5171 	.sleb128	-1
      002F0D 09                    5172 	.db	9
      002F0E 0C                    5173 	.db	12
      002F0F 08                    5174 	.uleb128	8
      002F10 02                    5175 	.uleb128	2
      002F11 89                    5176 	.db	137
      002F12 01                    5177 	.uleb128	1
      002F13                       5178 Ldebug_CIE20_end:
      002F13 00 00 00 13           5179 	.dw	0,19
      002F17 00 00 2F 01           5180 	.dw	0,(Ldebug_CIE20_start-4)
      002F1B 00 00 97 3A           5181 	.dw	0,(Sstm8s_clk$CLK_HSECmd$32)	;initial loc
      002F1F 00 00 00 18           5182 	.dw	0,Sstm8s_clk$CLK_HSECmd$43-Sstm8s_clk$CLK_HSECmd$32
      002F23 01                    5183 	.db	1
      002F24 00 00 97 3A           5184 	.dw	0,(Sstm8s_clk$CLK_HSECmd$32)
      002F28 0E                    5185 	.db	14
      002F29 02                    5186 	.uleb128	2
                                   5187 
                                   5188 	.area .debug_frame (NOLOAD)
      002F2A 00 00                 5189 	.dw	0
      002F2C 00 0E                 5190 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      002F2E                       5191 Ldebug_CIE21_start:
      002F2E FF FF                 5192 	.dw	0xffff
      002F30 FF FF                 5193 	.dw	0xffff
      002F32 01                    5194 	.db	1
      002F33 00                    5195 	.db	0
      002F34 01                    5196 	.uleb128	1
      002F35 7F                    5197 	.sleb128	-1
      002F36 09                    5198 	.db	9
      002F37 0C                    5199 	.db	12
      002F38 08                    5200 	.uleb128	8
      002F39 02                    5201 	.uleb128	2
      002F3A 89                    5202 	.db	137
      002F3B 01                    5203 	.uleb128	1
      002F3C                       5204 Ldebug_CIE21_end:
      002F3C 00 00 00 13           5205 	.dw	0,19
      002F40 00 00 2F 2A           5206 	.dw	0,(Ldebug_CIE21_start-4)
      002F44 00 00 97 22           5207 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)	;initial loc
      002F48 00 00 00 18           5208 	.dw	0,Sstm8s_clk$CLK_FastHaltWakeUpCmd$30-Sstm8s_clk$CLK_FastHaltWakeUpCmd$19
      002F4C 01                    5209 	.db	1
      002F4D 00 00 97 22           5210 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)
      002F51 0E                    5211 	.db	14
      002F52 02                    5212 	.uleb128	2
                                   5213 
                                   5214 	.area .debug_frame (NOLOAD)
      002F53 00 00                 5215 	.dw	0
      002F55 00 0E                 5216 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      002F57                       5217 Ldebug_CIE22_start:
      002F57 FF FF                 5218 	.dw	0xffff
      002F59 FF FF                 5219 	.dw	0xffff
      002F5B 01                    5220 	.db	1
      002F5C 00                    5221 	.db	0
      002F5D 01                    5222 	.uleb128	1
      002F5E 7F                    5223 	.sleb128	-1
      002F5F 09                    5224 	.db	9
      002F60 0C                    5225 	.db	12
      002F61 08                    5226 	.uleb128	8
      002F62 02                    5227 	.uleb128	2
      002F63 89                    5228 	.db	137
      002F64 01                    5229 	.uleb128	1
      002F65                       5230 Ldebug_CIE22_end:
      002F65 00 00 00 13           5231 	.dw	0,19
      002F69 00 00 2F 53           5232 	.dw	0,(Ldebug_CIE22_start-4)
      002F6D 00 00 96 E8           5233 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)	;initial loc
      002F71 00 00 00 3A           5234 	.dw	0,Sstm8s_clk$CLK_DeInit$17-Sstm8s_clk$CLK_DeInit$1
      002F75 01                    5235 	.db	1
      002F76 00 00 96 E8           5236 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      002F7A 0E                    5237 	.db	14
      002F7B 02                    5238 	.uleb128	2
