                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module milis
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM4_ClearFlag
                                     12 	.globl _TIM4_ITConfig
                                     13 	.globl _TIM4_Cmd
                                     14 	.globl _TIM4_TimeBaseInit
                                     15 	.globl _ITC_SetSoftwarePriority
                                     16 	.globl _miliseconds
                                     17 	.globl _milis
                                     18 	.globl _init_milis
                                     19 	.globl _TIM4_UPD_OVF_IRQHandler
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                           000000    28 G$miliseconds$0_0$0==.
      000001                         29 _miliseconds::
      000001                         30 	.ds 4
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                           000000    60 	Smilis$milis$0 ==.
                                     61 ;	./src/milis.c: 13: MILIS_PROTOTYPE
                                     62 ; genLabel
                                     63 ;	-----------------------------------------
                                     64 ;	 function milis
                                     65 ;	-----------------------------------------
                                     66 ;	Register assignment is optimal.
                                     67 ;	Stack space usage: 4 bytes.
      0087F1                         68 _milis:
                           000000    69 	Smilis$milis$1 ==.
      0087F1 52 04            [ 2]   70 	sub	sp, #4
                           000002    71 	Smilis$milis$2 ==.
                           000002    72 	Smilis$milis$3 ==.
                                     73 ;	./src/milis.c: 20: TIM4_ITConfig(TIM4_IT_UPDATE, DISABLE);
                                     74 ; genIPush
      0087F3 4B 00            [ 1]   75 	push	#0x00
                           000004    76 	Smilis$milis$4 ==.
                                     77 ; genIPush
      0087F5 4B 01            [ 1]   78 	push	#0x01
                           000006    79 	Smilis$milis$5 ==.
                                     80 ; genCall
      0087F7 CD 9B 7F         [ 4]   81 	call	_TIM4_ITConfig
      0087FA 85               [ 2]   82 	popw	x
                           00000A    83 	Smilis$milis$6 ==.
                           00000A    84 	Smilis$milis$7 ==.
                                     85 ;	./src/milis.c: 21: tmp = miliseconds;
                                     86 ; genAssign
      0087FB CE 00 03         [ 2]   87 	ldw	x, _miliseconds+2
      0087FE 90 CE 00 01      [ 2]   88 	ldw	y, _miliseconds+0
      008802 17 01            [ 2]   89 	ldw	(0x01, sp), y
                           000013    90 	Smilis$milis$8 ==.
                                     91 ;	./src/milis.c: 22: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
                                     92 ; genIPush
      008804 89               [ 2]   93 	pushw	x
                           000014    94 	Smilis$milis$9 ==.
      008805 4B 01            [ 1]   95 	push	#0x01
                           000016    96 	Smilis$milis$10 ==.
                                     97 ; genIPush
      008807 4B 01            [ 1]   98 	push	#0x01
                           000018    99 	Smilis$milis$11 ==.
                                    100 ; genCall
      008809 CD 9B 7F         [ 4]  101 	call	_TIM4_ITConfig
      00880C 85               [ 2]  102 	popw	x
                           00001C   103 	Smilis$milis$12 ==.
      00880D 85               [ 2]  104 	popw	x
                           00001D   105 	Smilis$milis$13 ==.
                           00001D   106 	Smilis$milis$14 ==.
                                    107 ;	./src/milis.c: 23: return tmp;
                                    108 ; genReturn
      00880E 16 01            [ 2]  109 	ldw	y, (0x01, sp)
                                    110 ; genLabel
      008810                        111 00101$:
                           00001F   112 	Smilis$milis$15 ==.
                                    113 ;	./src/milis.c: 24: }
                                    114 ; genEndFunction
      008810 5B 04            [ 2]  115 	addw	sp, #4
                           000021   116 	Smilis$milis$16 ==.
                           000021   117 	Smilis$milis$17 ==.
                           000021   118 	XG$milis$0$0 ==.
      008812 81               [ 4]  119 	ret
                           000022   120 	Smilis$milis$18 ==.
                           000022   121 	Smilis$init_milis$19 ==.
                                    122 ;	./src/milis.c: 27: void init_milis(void)
                                    123 ; genLabel
                                    124 ;	-----------------------------------------
                                    125 ;	 function init_milis
                                    126 ;	-----------------------------------------
                                    127 ;	Register assignment is optimal.
                                    128 ;	Stack space usage: 0 bytes.
      008813                        129 _init_milis:
                           000022   130 	Smilis$init_milis$20 ==.
                           000022   131 	Smilis$init_milis$21 ==.
                                    132 ;	./src/milis.c: 29: TIM4_TimeBaseInit(PRESCALER, PERIOD);       // (16MHz / 128) / 125 = 1000Hz
                                    133 ; genIPush
      008813 4B 7C            [ 1]  134 	push	#0x7c
                           000024   135 	Smilis$init_milis$22 ==.
                                    136 ; genIPush
      008815 4B 07            [ 1]  137 	push	#0x07
                           000026   138 	Smilis$init_milis$23 ==.
                                    139 ; genCall
      008817 CD 9B 5A         [ 4]  140 	call	_TIM4_TimeBaseInit
      00881A 85               [ 2]  141 	popw	x
                           00002A   142 	Smilis$init_milis$24 ==.
                           00002A   143 	Smilis$init_milis$25 ==.
                                    144 ;	./src/milis.c: 30: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
                                    145 ; genIPush
      00881B 4B 01            [ 1]  146 	push	#0x01
                           00002C   147 	Smilis$init_milis$26 ==.
                                    148 ; genCall
      00881D CD 9C 3C         [ 4]  149 	call	_TIM4_ClearFlag
      008820 84               [ 1]  150 	pop	a
                           000030   151 	Smilis$init_milis$27 ==.
                           000030   152 	Smilis$init_milis$28 ==.
                                    153 ;	./src/milis.c: 31: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
                                    154 ; genIPush
      008821 4B 01            [ 1]  155 	push	#0x01
                           000032   156 	Smilis$init_milis$29 ==.
                                    157 ; genIPush
      008823 4B 01            [ 1]  158 	push	#0x01
                           000034   159 	Smilis$init_milis$30 ==.
                                    160 ; genCall
      008825 CD 9B 7F         [ 4]  161 	call	_TIM4_ITConfig
      008828 85               [ 2]  162 	popw	x
                           000038   163 	Smilis$init_milis$31 ==.
                           000038   164 	Smilis$init_milis$32 ==.
                                    165 ;	./src/milis.c: 32: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF, ITC_PRIORITYLEVEL_1);     // nízká priorita pøerušení
                                    166 ; genIPush
      008829 4B 01            [ 1]  167 	push	#0x01
                           00003A   168 	Smilis$init_milis$33 ==.
                                    169 ; genIPush
      00882B 4B 17            [ 1]  170 	push	#0x17
                           00003C   171 	Smilis$init_milis$34 ==.
                                    172 ; genCall
      00882D CD 9D 3F         [ 4]  173 	call	_ITC_SetSoftwarePriority
      008830 85               [ 2]  174 	popw	x
                           000040   175 	Smilis$init_milis$35 ==.
                           000040   176 	Smilis$init_milis$36 ==.
                                    177 ;	./src/milis.c: 33: enableInterrupts();
                                    178 ;	genInline
      008831 9A               [ 1]  179 	rim
                           000041   180 	Smilis$init_milis$37 ==.
                                    181 ;	./src/milis.c: 34: TIM4_Cmd(ENABLE);
                                    182 ; genIPush
      008832 4B 01            [ 1]  183 	push	#0x01
                           000043   184 	Smilis$init_milis$38 ==.
                                    185 ; genCall
      008834 CD 9B 67         [ 4]  186 	call	_TIM4_Cmd
      008837 84               [ 1]  187 	pop	a
                           000047   188 	Smilis$init_milis$39 ==.
                                    189 ; genLabel
      008838                        190 00101$:
                           000047   191 	Smilis$init_milis$40 ==.
                                    192 ;	./src/milis.c: 35: }
                                    193 ; genEndFunction
                           000047   194 	Smilis$init_milis$41 ==.
                           000047   195 	XG$init_milis$0$0 ==.
      008838 81               [ 4]  196 	ret
                           000048   197 	Smilis$init_milis$42 ==.
                           000048   198 	Smilis$TIM4_UPD_OVF_IRQHandler$43 ==.
                                    199 ;	./src/milis.c: 38: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    200 ; genLabel
                                    201 ;	-----------------------------------------
                                    202 ;	 function TIM4_UPD_OVF_IRQHandler
                                    203 ;	-----------------------------------------
                                    204 ;	Register assignment might be sub-optimal.
                                    205 ;	Stack space usage: 0 bytes.
      008839                        206 _TIM4_UPD_OVF_IRQHandler:
                                    207 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      008839 62               [ 2]  208 	div	x, a
                           000049   209 	Smilis$TIM4_UPD_OVF_IRQHandler$44 ==.
                           000049   210 	Smilis$TIM4_UPD_OVF_IRQHandler$45 ==.
                                    211 ;	./src/milis.c: 40: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
                                    212 ; genIPush
      00883A 4B 01            [ 1]  213 	push	#0x01
                           00004B   214 	Smilis$TIM4_UPD_OVF_IRQHandler$46 ==.
                                    215 ; genCall
      00883C CD 9C 3C         [ 4]  216 	call	_TIM4_ClearFlag
      00883F 84               [ 1]  217 	pop	a
                           00004F   218 	Smilis$TIM4_UPD_OVF_IRQHandler$47 ==.
                           00004F   219 	Smilis$TIM4_UPD_OVF_IRQHandler$48 ==.
                                    220 ;	./src/milis.c: 41: miliseconds++;
                                    221 ; genAssign
      008840 CE 00 03         [ 2]  222 	ldw	x, _miliseconds+2
      008843 90 CE 00 01      [ 2]  223 	ldw	y, _miliseconds+0
                                    224 ; genPlus
      008847 5C               [ 1]  225 	incw	x
      008848 26 02            [ 1]  226 	jrne	00103$
      00884A 90 5C            [ 1]  227 	incw	y
      00884C                        228 00103$:
                                    229 ; genAssign
      00884C CF 00 03         [ 2]  230 	ldw	_miliseconds+2, x
      00884F 90 CF 00 01      [ 2]  231 	ldw	_miliseconds+0, y
                                    232 ; genLabel
      008853                        233 00101$:
                           000062   234 	Smilis$TIM4_UPD_OVF_IRQHandler$49 ==.
                                    235 ;	./src/milis.c: 42: }
                                    236 ; genEndFunction
                           000062   237 	Smilis$TIM4_UPD_OVF_IRQHandler$50 ==.
                           000062   238 	XG$TIM4_UPD_OVF_IRQHandler$0$0 ==.
      008853 80               [11]  239 	iret
                           000063   240 	Smilis$TIM4_UPD_OVF_IRQHandler$51 ==.
                                    241 	.area CODE
                                    242 	.area CONST
                                    243 	.area INITIALIZER
                           000000   244 Fmilis$__xinit_miliseconds$0_0$0 == .
      0080F9                        245 __xinit__miliseconds:
      0080F9 00 00 00 00            246 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                                    247 	.area CABS (ABS)
                                    248 
                                    249 	.area .debug_line (NOLOAD)
      000548 00 00 00 FE            250 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00054C                        251 Ldebug_line_start:
      00054C 00 02                  252 	.dw	2
      00054E 00 00 00 6E            253 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000552 01                     254 	.db	1
      000553 01                     255 	.db	1
      000554 FB                     256 	.db	-5
      000555 0F                     257 	.db	15
      000556 0A                     258 	.db	10
      000557 00                     259 	.db	0
      000558 01                     260 	.db	1
      000559 01                     261 	.db	1
      00055A 01                     262 	.db	1
      00055B 01                     263 	.db	1
      00055C 00                     264 	.db	0
      00055D 00                     265 	.db	0
      00055E 00                     266 	.db	0
      00055F 01                     267 	.db	1
      000560 43 3A 5C 50 72 6F 67   268 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000588 00                     269 	.db	0
      000589 43 3A 5C 50 72 6F 67   270 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0005AC 00                     271 	.db	0
      0005AD 00                     272 	.db	0
      0005AE 2E 2F 73 72 63 2F 6D   273 	.ascii "./src/milis.c"
             69 6C 69 73 2E 63
      0005BB 00                     274 	.db	0
      0005BC 00                     275 	.uleb128	0
      0005BD 00                     276 	.uleb128	0
      0005BE 00                     277 	.uleb128	0
      0005BF 00                     278 	.db	0
      0005C0                        279 Ldebug_line_stmt:
      0005C0 00                     280 	.db	0
      0005C1 05                     281 	.uleb128	5
      0005C2 02                     282 	.db	2
      0005C3 00 00 87 F1            283 	.dw	0,(Smilis$milis$0)
      0005C7 03                     284 	.db	3
      0005C8 0C                     285 	.sleb128	12
      0005C9 01                     286 	.db	1
      0005CA 09                     287 	.db	9
      0005CB 00 02                  288 	.dw	Smilis$milis$3-Smilis$milis$0
      0005CD 03                     289 	.db	3
      0005CE 07                     290 	.sleb128	7
      0005CF 01                     291 	.db	1
      0005D0 09                     292 	.db	9
      0005D1 00 08                  293 	.dw	Smilis$milis$7-Smilis$milis$3
      0005D3 03                     294 	.db	3
      0005D4 01                     295 	.sleb128	1
      0005D5 01                     296 	.db	1
      0005D6 09                     297 	.db	9
      0005D7 00 09                  298 	.dw	Smilis$milis$8-Smilis$milis$7
      0005D9 03                     299 	.db	3
      0005DA 01                     300 	.sleb128	1
      0005DB 01                     301 	.db	1
      0005DC 09                     302 	.db	9
      0005DD 00 0A                  303 	.dw	Smilis$milis$14-Smilis$milis$8
      0005DF 03                     304 	.db	3
      0005E0 01                     305 	.sleb128	1
      0005E1 01                     306 	.db	1
      0005E2 09                     307 	.db	9
      0005E3 00 02                  308 	.dw	Smilis$milis$15-Smilis$milis$14
      0005E5 03                     309 	.db	3
      0005E6 01                     310 	.sleb128	1
      0005E7 01                     311 	.db	1
      0005E8 09                     312 	.db	9
      0005E9 00 03                  313 	.dw	1+Smilis$milis$17-Smilis$milis$15
      0005EB 00                     314 	.db	0
      0005EC 01                     315 	.uleb128	1
      0005ED 01                     316 	.db	1
      0005EE 00                     317 	.db	0
      0005EF 05                     318 	.uleb128	5
      0005F0 02                     319 	.db	2
      0005F1 00 00 88 13            320 	.dw	0,(Smilis$init_milis$19)
      0005F5 03                     321 	.db	3
      0005F6 1A                     322 	.sleb128	26
      0005F7 01                     323 	.db	1
      0005F8 09                     324 	.db	9
      0005F9 00 00                  325 	.dw	Smilis$init_milis$21-Smilis$init_milis$19
      0005FB 03                     326 	.db	3
      0005FC 02                     327 	.sleb128	2
      0005FD 01                     328 	.db	1
      0005FE 09                     329 	.db	9
      0005FF 00 08                  330 	.dw	Smilis$init_milis$25-Smilis$init_milis$21
      000601 03                     331 	.db	3
      000602 01                     332 	.sleb128	1
      000603 01                     333 	.db	1
      000604 09                     334 	.db	9
      000605 00 06                  335 	.dw	Smilis$init_milis$28-Smilis$init_milis$25
      000607 03                     336 	.db	3
      000608 01                     337 	.sleb128	1
      000609 01                     338 	.db	1
      00060A 09                     339 	.db	9
      00060B 00 08                  340 	.dw	Smilis$init_milis$32-Smilis$init_milis$28
      00060D 03                     341 	.db	3
      00060E 01                     342 	.sleb128	1
      00060F 01                     343 	.db	1
      000610 09                     344 	.db	9
      000611 00 08                  345 	.dw	Smilis$init_milis$36-Smilis$init_milis$32
      000613 03                     346 	.db	3
      000614 01                     347 	.sleb128	1
      000615 01                     348 	.db	1
      000616 09                     349 	.db	9
      000617 00 01                  350 	.dw	Smilis$init_milis$37-Smilis$init_milis$36
      000619 03                     351 	.db	3
      00061A 01                     352 	.sleb128	1
      00061B 01                     353 	.db	1
      00061C 09                     354 	.db	9
      00061D 00 06                  355 	.dw	Smilis$init_milis$40-Smilis$init_milis$37
      00061F 03                     356 	.db	3
      000620 01                     357 	.sleb128	1
      000621 01                     358 	.db	1
      000622 09                     359 	.db	9
      000623 00 01                  360 	.dw	1+Smilis$init_milis$41-Smilis$init_milis$40
      000625 00                     361 	.db	0
      000626 01                     362 	.uleb128	1
      000627 01                     363 	.db	1
      000628 00                     364 	.db	0
      000629 05                     365 	.uleb128	5
      00062A 02                     366 	.db	2
      00062B 00 00 88 39            367 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$43)
      00062F 03                     368 	.db	3
      000630 25                     369 	.sleb128	37
      000631 01                     370 	.db	1
      000632 09                     371 	.db	9
      000633 00 01                  372 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$45-Smilis$TIM4_UPD_OVF_IRQHandler$43
      000635 03                     373 	.db	3
      000636 02                     374 	.sleb128	2
      000637 01                     375 	.db	1
      000638 09                     376 	.db	9
      000639 00 06                  377 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$48-Smilis$TIM4_UPD_OVF_IRQHandler$45
      00063B 03                     378 	.db	3
      00063C 01                     379 	.sleb128	1
      00063D 01                     380 	.db	1
      00063E 09                     381 	.db	9
      00063F 00 13                  382 	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$49-Smilis$TIM4_UPD_OVF_IRQHandler$48
      000641 03                     383 	.db	3
      000642 01                     384 	.sleb128	1
      000643 01                     385 	.db	1
      000644 09                     386 	.db	9
      000645 00 01                  387 	.dw	1+Smilis$TIM4_UPD_OVF_IRQHandler$50-Smilis$TIM4_UPD_OVF_IRQHandler$49
      000647 00                     388 	.db	0
      000648 01                     389 	.uleb128	1
      000649 01                     390 	.db	1
      00064A                        391 Ldebug_line_end:
                                    392 
                                    393 	.area .debug_loc (NOLOAD)
      0014D4                        394 Ldebug_loc_start:
      0014D4 00 00 88 40            395 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      0014D8 00 00 88 54            396 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$51)
      0014DC 00 02                  397 	.dw	2
      0014DE 78                     398 	.db	120
      0014DF 01                     399 	.sleb128	1
      0014E0 00 00 88 3C            400 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      0014E4 00 00 88 40            401 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      0014E8 00 02                  402 	.dw	2
      0014EA 78                     403 	.db	120
      0014EB 02                     404 	.sleb128	2
      0014EC 00 00 88 3A            405 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)
      0014F0 00 00 88 3C            406 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      0014F4 00 02                  407 	.dw	2
      0014F6 78                     408 	.db	120
      0014F7 01                     409 	.sleb128	1
      0014F8 00 00 00 00            410 	.dw	0,0
      0014FC 00 00 00 00            411 	.dw	0,0
      001500 00 00 88 38            412 	.dw	0,(Smilis$init_milis$39)
      001504 00 00 88 39            413 	.dw	0,(Smilis$init_milis$42)
      001508 00 02                  414 	.dw	2
      00150A 78                     415 	.db	120
      00150B 01                     416 	.sleb128	1
      00150C 00 00 88 34            417 	.dw	0,(Smilis$init_milis$38)
      001510 00 00 88 38            418 	.dw	0,(Smilis$init_milis$39)
      001514 00 02                  419 	.dw	2
      001516 78                     420 	.db	120
      001517 02                     421 	.sleb128	2
      001518 00 00 88 31            422 	.dw	0,(Smilis$init_milis$35)
      00151C 00 00 88 34            423 	.dw	0,(Smilis$init_milis$38)
      001520 00 02                  424 	.dw	2
      001522 78                     425 	.db	120
      001523 01                     426 	.sleb128	1
      001524 00 00 88 2D            427 	.dw	0,(Smilis$init_milis$34)
      001528 00 00 88 31            428 	.dw	0,(Smilis$init_milis$35)
      00152C 00 02                  429 	.dw	2
      00152E 78                     430 	.db	120
      00152F 03                     431 	.sleb128	3
      001530 00 00 88 2B            432 	.dw	0,(Smilis$init_milis$33)
      001534 00 00 88 2D            433 	.dw	0,(Smilis$init_milis$34)
      001538 00 02                  434 	.dw	2
      00153A 78                     435 	.db	120
      00153B 02                     436 	.sleb128	2
      00153C 00 00 88 29            437 	.dw	0,(Smilis$init_milis$31)
      001540 00 00 88 2B            438 	.dw	0,(Smilis$init_milis$33)
      001544 00 02                  439 	.dw	2
      001546 78                     440 	.db	120
      001547 01                     441 	.sleb128	1
      001548 00 00 88 25            442 	.dw	0,(Smilis$init_milis$30)
      00154C 00 00 88 29            443 	.dw	0,(Smilis$init_milis$31)
      001550 00 02                  444 	.dw	2
      001552 78                     445 	.db	120
      001553 03                     446 	.sleb128	3
      001554 00 00 88 23            447 	.dw	0,(Smilis$init_milis$29)
      001558 00 00 88 25            448 	.dw	0,(Smilis$init_milis$30)
      00155C 00 02                  449 	.dw	2
      00155E 78                     450 	.db	120
      00155F 02                     451 	.sleb128	2
      001560 00 00 88 21            452 	.dw	0,(Smilis$init_milis$27)
      001564 00 00 88 23            453 	.dw	0,(Smilis$init_milis$29)
      001568 00 02                  454 	.dw	2
      00156A 78                     455 	.db	120
      00156B 01                     456 	.sleb128	1
      00156C 00 00 88 1D            457 	.dw	0,(Smilis$init_milis$26)
      001570 00 00 88 21            458 	.dw	0,(Smilis$init_milis$27)
      001574 00 02                  459 	.dw	2
      001576 78                     460 	.db	120
      001577 02                     461 	.sleb128	2
      001578 00 00 88 1B            462 	.dw	0,(Smilis$init_milis$24)
      00157C 00 00 88 1D            463 	.dw	0,(Smilis$init_milis$26)
      001580 00 02                  464 	.dw	2
      001582 78                     465 	.db	120
      001583 01                     466 	.sleb128	1
      001584 00 00 88 17            467 	.dw	0,(Smilis$init_milis$23)
      001588 00 00 88 1B            468 	.dw	0,(Smilis$init_milis$24)
      00158C 00 02                  469 	.dw	2
      00158E 78                     470 	.db	120
      00158F 03                     471 	.sleb128	3
      001590 00 00 88 15            472 	.dw	0,(Smilis$init_milis$22)
      001594 00 00 88 17            473 	.dw	0,(Smilis$init_milis$23)
      001598 00 02                  474 	.dw	2
      00159A 78                     475 	.db	120
      00159B 02                     476 	.sleb128	2
      00159C 00 00 88 13            477 	.dw	0,(Smilis$init_milis$20)
      0015A0 00 00 88 15            478 	.dw	0,(Smilis$init_milis$22)
      0015A4 00 02                  479 	.dw	2
      0015A6 78                     480 	.db	120
      0015A7 01                     481 	.sleb128	1
      0015A8 00 00 00 00            482 	.dw	0,0
      0015AC 00 00 00 00            483 	.dw	0,0
      0015B0 00 00 88 12            484 	.dw	0,(Smilis$milis$16)
      0015B4 00 00 88 13            485 	.dw	0,(Smilis$milis$18)
      0015B8 00 02                  486 	.dw	2
      0015BA 78                     487 	.db	120
      0015BB 01                     488 	.sleb128	1
      0015BC 00 00 88 0E            489 	.dw	0,(Smilis$milis$13)
      0015C0 00 00 88 12            490 	.dw	0,(Smilis$milis$16)
      0015C4 00 02                  491 	.dw	2
      0015C6 78                     492 	.db	120
      0015C7 05                     493 	.sleb128	5
      0015C8 00 00 88 0D            494 	.dw	0,(Smilis$milis$12)
      0015CC 00 00 88 0E            495 	.dw	0,(Smilis$milis$13)
      0015D0 00 02                  496 	.dw	2
      0015D2 78                     497 	.db	120
      0015D3 07                     498 	.sleb128	7
      0015D4 00 00 88 09            499 	.dw	0,(Smilis$milis$11)
      0015D8 00 00 88 0D            500 	.dw	0,(Smilis$milis$12)
      0015DC 00 02                  501 	.dw	2
      0015DE 78                     502 	.db	120
      0015DF 09                     503 	.sleb128	9
      0015E0 00 00 88 07            504 	.dw	0,(Smilis$milis$10)
      0015E4 00 00 88 09            505 	.dw	0,(Smilis$milis$11)
      0015E8 00 02                  506 	.dw	2
      0015EA 78                     507 	.db	120
      0015EB 08                     508 	.sleb128	8
      0015EC 00 00 88 05            509 	.dw	0,(Smilis$milis$9)
      0015F0 00 00 88 07            510 	.dw	0,(Smilis$milis$10)
      0015F4 00 02                  511 	.dw	2
      0015F6 78                     512 	.db	120
      0015F7 07                     513 	.sleb128	7
      0015F8 00 00 87 FB            514 	.dw	0,(Smilis$milis$6)
      0015FC 00 00 88 05            515 	.dw	0,(Smilis$milis$9)
      001600 00 02                  516 	.dw	2
      001602 78                     517 	.db	120
      001603 05                     518 	.sleb128	5
      001604 00 00 87 F7            519 	.dw	0,(Smilis$milis$5)
      001608 00 00 87 FB            520 	.dw	0,(Smilis$milis$6)
      00160C 00 02                  521 	.dw	2
      00160E 78                     522 	.db	120
      00160F 07                     523 	.sleb128	7
      001610 00 00 87 F5            524 	.dw	0,(Smilis$milis$4)
      001614 00 00 87 F7            525 	.dw	0,(Smilis$milis$5)
      001618 00 02                  526 	.dw	2
      00161A 78                     527 	.db	120
      00161B 06                     528 	.sleb128	6
      00161C 00 00 87 F3            529 	.dw	0,(Smilis$milis$2)
      001620 00 00 87 F5            530 	.dw	0,(Smilis$milis$4)
      001624 00 02                  531 	.dw	2
      001626 78                     532 	.db	120
      001627 05                     533 	.sleb128	5
      001628 00 00 87 F1            534 	.dw	0,(Smilis$milis$1)
      00162C 00 00 87 F3            535 	.dw	0,(Smilis$milis$2)
      001630 00 02                  536 	.dw	2
      001632 78                     537 	.db	120
      001633 01                     538 	.sleb128	1
      001634 00 00 00 00            539 	.dw	0,0
      001638 00 00 00 00            540 	.dw	0,0
                                    541 
                                    542 	.area .debug_abbrev (NOLOAD)
      0000B4                        543 Ldebug_abbrev:
      0000B4 07                     544 	.uleb128	7
      0000B5 35                     545 	.uleb128	53
      0000B6 00                     546 	.db	0
      0000B7 49                     547 	.uleb128	73
      0000B8 13                     548 	.uleb128	19
      0000B9 00                     549 	.uleb128	0
      0000BA 00                     550 	.uleb128	0
      0000BB 08                     551 	.uleb128	8
      0000BC 34                     552 	.uleb128	52
      0000BD 00                     553 	.db	0
      0000BE 02                     554 	.uleb128	2
      0000BF 0A                     555 	.uleb128	10
      0000C0 03                     556 	.uleb128	3
      0000C1 08                     557 	.uleb128	8
      0000C2 3F                     558 	.uleb128	63
      0000C3 0C                     559 	.uleb128	12
      0000C4 49                     560 	.uleb128	73
      0000C5 13                     561 	.uleb128	19
      0000C6 00                     562 	.uleb128	0
      0000C7 00                     563 	.uleb128	0
      0000C8 04                     564 	.uleb128	4
      0000C9 34                     565 	.uleb128	52
      0000CA 00                     566 	.db	0
      0000CB 02                     567 	.uleb128	2
      0000CC 0A                     568 	.uleb128	10
      0000CD 03                     569 	.uleb128	3
      0000CE 08                     570 	.uleb128	8
      0000CF 49                     571 	.uleb128	73
      0000D0 13                     572 	.uleb128	19
      0000D1 00                     573 	.uleb128	0
      0000D2 00                     574 	.uleb128	0
      0000D3 03                     575 	.uleb128	3
      0000D4 2E                     576 	.uleb128	46
      0000D5 01                     577 	.db	1
      0000D6 01                     578 	.uleb128	1
      0000D7 13                     579 	.uleb128	19
      0000D8 03                     580 	.uleb128	3
      0000D9 08                     581 	.uleb128	8
      0000DA 11                     582 	.uleb128	17
      0000DB 01                     583 	.uleb128	1
      0000DC 12                     584 	.uleb128	18
      0000DD 01                     585 	.uleb128	1
      0000DE 3F                     586 	.uleb128	63
      0000DF 0C                     587 	.uleb128	12
      0000E0 40                     588 	.uleb128	64
      0000E1 06                     589 	.uleb128	6
      0000E2 49                     590 	.uleb128	73
      0000E3 13                     591 	.uleb128	19
      0000E4 00                     592 	.uleb128	0
      0000E5 00                     593 	.uleb128	0
      0000E6 01                     594 	.uleb128	1
      0000E7 11                     595 	.uleb128	17
      0000E8 01                     596 	.db	1
      0000E9 03                     597 	.uleb128	3
      0000EA 08                     598 	.uleb128	8
      0000EB 10                     599 	.uleb128	16
      0000EC 06                     600 	.uleb128	6
      0000ED 13                     601 	.uleb128	19
      0000EE 0B                     602 	.uleb128	11
      0000EF 25                     603 	.uleb128	37
      0000F0 08                     604 	.uleb128	8
      0000F1 00                     605 	.uleb128	0
      0000F2 00                     606 	.uleb128	0
      0000F3 05                     607 	.uleb128	5
      0000F4 2E                     608 	.uleb128	46
      0000F5 00                     609 	.db	0
      0000F6 03                     610 	.uleb128	3
      0000F7 08                     611 	.uleb128	8
      0000F8 11                     612 	.uleb128	17
      0000F9 01                     613 	.uleb128	1
      0000FA 12                     614 	.uleb128	18
      0000FB 01                     615 	.uleb128	1
      0000FC 3F                     616 	.uleb128	63
      0000FD 0C                     617 	.uleb128	12
      0000FE 40                     618 	.uleb128	64
      0000FF 06                     619 	.uleb128	6
      000100 00                     620 	.uleb128	0
      000101 00                     621 	.uleb128	0
      000102 02                     622 	.uleb128	2
      000103 24                     623 	.uleb128	36
      000104 00                     624 	.db	0
      000105 03                     625 	.uleb128	3
      000106 08                     626 	.uleb128	8
      000107 0B                     627 	.uleb128	11
      000108 0B                     628 	.uleb128	11
      000109 3E                     629 	.uleb128	62
      00010A 0B                     630 	.uleb128	11
      00010B 00                     631 	.uleb128	0
      00010C 00                     632 	.uleb128	0
      00010D 06                     633 	.uleb128	6
      00010E 2E                     634 	.uleb128	46
      00010F 00                     635 	.db	0
      000110 03                     636 	.uleb128	3
      000111 08                     637 	.uleb128	8
      000112 11                     638 	.uleb128	17
      000113 01                     639 	.uleb128	1
      000114 12                     640 	.uleb128	18
      000115 01                     641 	.uleb128	1
      000116 36                     642 	.uleb128	54
      000117 0B                     643 	.uleb128	11
      000118 3F                     644 	.uleb128	63
      000119 0C                     645 	.uleb128	12
      00011A 40                     646 	.uleb128	64
      00011B 06                     647 	.uleb128	6
      00011C 00                     648 	.uleb128	0
      00011D 00                     649 	.uleb128	0
      00011E 00                     650 	.uleb128	0
                                    651 
                                    652 	.area .debug_info (NOLOAD)
      0005F5 00 00 00 DB            653 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0005F9                        654 Ldebug_info_start:
      0005F9 00 02                  655 	.dw	2
      0005FB 00 00 00 B4            656 	.dw	0,(Ldebug_abbrev)
      0005FF 04                     657 	.db	4
      000600 01                     658 	.uleb128	1
      000601 2E 2F 73 72 63 2F 6D   659 	.ascii "./src/milis.c"
             69 6C 69 73 2E 63
      00060E 00                     660 	.db	0
      00060F 00 00 05 48            661 	.dw	0,(Ldebug_line_start+-4)
      000613 01                     662 	.db	1
      000614 53 44 43 43 20 76 65   663 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      00062D 00                     664 	.db	0
      00062E 02                     665 	.uleb128	2
      00062F 75 6E 73 69 67 6E 65   666 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      00063C 00                     667 	.db	0
      00063D 04                     668 	.db	4
      00063E 07                     669 	.db	7
      00063F 03                     670 	.uleb128	3
      000640 00 00 00 7F            671 	.dw	0,127
      000644 6D 69 6C 69 73         672 	.ascii "milis"
      000649 00                     673 	.db	0
      00064A 00 00 87 F1            674 	.dw	0,(_milis)
      00064E 00 00 88 13            675 	.dw	0,(XG$milis$0$0+1)
      000652 01                     676 	.db	1
      000653 00 00 15 B0            677 	.dw	0,(Ldebug_loc_start+220)
      000657 00 00 00 39            678 	.dw	0,57
      00065B 04                     679 	.uleb128	4
      00065C 0E                     680 	.db	14
      00065D 91                     681 	.db	145
      00065E 7C                     682 	.sleb128	-4
      00065F 93                     683 	.db	147
      000660 01                     684 	.uleb128	1
      000661 91                     685 	.db	145
      000662 7D                     686 	.sleb128	-3
      000663 93                     687 	.db	147
      000664 01                     688 	.uleb128	1
      000665 52                     689 	.db	82
      000666 93                     690 	.db	147
      000667 01                     691 	.uleb128	1
      000668 51                     692 	.db	81
      000669 93                     693 	.db	147
      00066A 01                     694 	.uleb128	1
      00066B 74 6D 70               695 	.ascii "tmp"
      00066E 00                     696 	.db	0
      00066F 00 00 00 39            697 	.dw	0,57
      000673 00                     698 	.uleb128	0
      000674 05                     699 	.uleb128	5
      000675 69 6E 69 74 5F 6D 69   700 	.ascii "init_milis"
             6C 69 73
      00067F 00                     701 	.db	0
      000680 00 00 88 13            702 	.dw	0,(_init_milis)
      000684 00 00 88 39            703 	.dw	0,(XG$init_milis$0$0+1)
      000688 01                     704 	.db	1
      000689 00 00 15 00            705 	.dw	0,(Ldebug_loc_start+44)
      00068D 06                     706 	.uleb128	6
      00068E 54 49 4D 34 5F 55 50   707 	.ascii "TIM4_UPD_OVF_IRQHandler"
             44 5F 4F 56 46 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0006A5 00                     708 	.db	0
      0006A6 00 00 88 39            709 	.dw	0,(_TIM4_UPD_OVF_IRQHandler)
      0006AA 00 00 88 54            710 	.dw	0,(XG$TIM4_UPD_OVF_IRQHandler$0$0+1)
      0006AE 03                     711 	.db	3
      0006AF 01                     712 	.db	1
      0006B0 00 00 14 D4            713 	.dw	0,(Ldebug_loc_start)
      0006B4 07                     714 	.uleb128	7
      0006B5 00 00 00 39            715 	.dw	0,57
      0006B9 08                     716 	.uleb128	8
      0006BA 05                     717 	.db	5
      0006BB 03                     718 	.db	3
      0006BC 00 00 00 01            719 	.dw	0,(_miliseconds)
      0006C0 6D 69 6C 69 73 65 63   720 	.ascii "miliseconds"
             6F 6E 64 73
      0006CB 00                     721 	.db	0
      0006CC 01                     722 	.db	1
      0006CD 00 00 00 BF            723 	.dw	0,191
      0006D1 00                     724 	.uleb128	0
      0006D2 00                     725 	.uleb128	0
      0006D3 00                     726 	.uleb128	0
      0006D4                        727 Ldebug_info_end:
                                    728 
                                    729 	.area .debug_pubnames (NOLOAD)
      000032 00 00 00 53            730 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000036                        731 Ldebug_pubnames_start:
      000036 00 02                  732 	.dw	2
      000038 00 00 05 F5            733 	.dw	0,(Ldebug_info_start-4)
      00003C 00 00 00 DF            734 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000040 00 00 00 4A            735 	.dw	0,74
      000044 6D 69 6C 69 73         736 	.ascii "milis"
      000049 00                     737 	.db	0
      00004A 00 00 00 7F            738 	.dw	0,127
      00004E 69 6E 69 74 5F 6D 69   739 	.ascii "init_milis"
             6C 69 73
      000058 00                     740 	.db	0
      000059 00 00 00 98            741 	.dw	0,152
      00005D 54 49 4D 34 5F 55 50   742 	.ascii "TIM4_UPD_OVF_IRQHandler"
             44 5F 4F 56 46 5F 49
             52 51 48 61 6E 64 6C
             65 72
      000074 00                     743 	.db	0
      000075 00 00 00 C4            744 	.dw	0,196
      000079 6D 69 6C 69 73 65 63   745 	.ascii "miliseconds"
             6F 6E 64 73
      000084 00                     746 	.db	0
      000085 00 00 00 00            747 	.dw	0,0
      000089                        748 Ldebug_pubnames_end:
                                    749 
                                    750 	.area .debug_frame (NOLOAD)
      000CB9 00 00                  751 	.dw	0
      000CBB 00 0E                  752 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000CBD                        753 Ldebug_CIE0_start:
      000CBD FF FF                  754 	.dw	0xffff
      000CBF FF FF                  755 	.dw	0xffff
      000CC1 01                     756 	.db	1
      000CC2 00                     757 	.db	0
      000CC3 01                     758 	.uleb128	1
      000CC4 7F                     759 	.sleb128	-1
      000CC5 09                     760 	.db	9
      000CC6 0C                     761 	.db	12
      000CC7 08                     762 	.uleb128	8
      000CC8 09                     763 	.uleb128	9
      000CC9 89                     764 	.db	137
      000CCA 01                     765 	.uleb128	1
      000CCB                        766 Ldebug_CIE0_end:
      000CCB 00 00 00 21            767 	.dw	0,33
      000CCF 00 00 0C B9            768 	.dw	0,(Ldebug_CIE0_start-4)
      000CD3 00 00 88 3A            769 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)	;initial loc
      000CD7 00 00 00 1A            770 	.dw	0,Smilis$TIM4_UPD_OVF_IRQHandler$51-Smilis$TIM4_UPD_OVF_IRQHandler$44
      000CDB 01                     771 	.db	1
      000CDC 00 00 88 3A            772 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)
      000CE0 0E                     773 	.db	14
      000CE1 09                     774 	.uleb128	9
      000CE2 01                     775 	.db	1
      000CE3 00 00 88 3C            776 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
      000CE7 0E                     777 	.db	14
      000CE8 0A                     778 	.uleb128	10
      000CE9 01                     779 	.db	1
      000CEA 00 00 88 40            780 	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
      000CEE 0E                     781 	.db	14
      000CEF 09                     782 	.uleb128	9
                                    783 
                                    784 	.area .debug_frame (NOLOAD)
      000CF0 00 00                  785 	.dw	0
      000CF2 00 0E                  786 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000CF4                        787 Ldebug_CIE1_start:
      000CF4 FF FF                  788 	.dw	0xffff
      000CF6 FF FF                  789 	.dw	0xffff
      000CF8 01                     790 	.db	1
      000CF9 00                     791 	.db	0
      000CFA 01                     792 	.uleb128	1
      000CFB 7F                     793 	.sleb128	-1
      000CFC 09                     794 	.db	9
      000CFD 0C                     795 	.db	12
      000CFE 08                     796 	.uleb128	8
      000CFF 02                     797 	.uleb128	2
      000D00 89                     798 	.db	137
      000D01 01                     799 	.uleb128	1
      000D02                        800 Ldebug_CIE1_end:
      000D02 00 00 00 6E            801 	.dw	0,110
      000D06 00 00 0C F0            802 	.dw	0,(Ldebug_CIE1_start-4)
      000D0A 00 00 88 13            803 	.dw	0,(Smilis$init_milis$20)	;initial loc
      000D0E 00 00 00 26            804 	.dw	0,Smilis$init_milis$42-Smilis$init_milis$20
      000D12 01                     805 	.db	1
      000D13 00 00 88 13            806 	.dw	0,(Smilis$init_milis$20)
      000D17 0E                     807 	.db	14
      000D18 02                     808 	.uleb128	2
      000D19 01                     809 	.db	1
      000D1A 00 00 88 15            810 	.dw	0,(Smilis$init_milis$22)
      000D1E 0E                     811 	.db	14
      000D1F 03                     812 	.uleb128	3
      000D20 01                     813 	.db	1
      000D21 00 00 88 17            814 	.dw	0,(Smilis$init_milis$23)
      000D25 0E                     815 	.db	14
      000D26 04                     816 	.uleb128	4
      000D27 01                     817 	.db	1
      000D28 00 00 88 1B            818 	.dw	0,(Smilis$init_milis$24)
      000D2C 0E                     819 	.db	14
      000D2D 02                     820 	.uleb128	2
      000D2E 01                     821 	.db	1
      000D2F 00 00 88 1D            822 	.dw	0,(Smilis$init_milis$26)
      000D33 0E                     823 	.db	14
      000D34 03                     824 	.uleb128	3
      000D35 01                     825 	.db	1
      000D36 00 00 88 21            826 	.dw	0,(Smilis$init_milis$27)
      000D3A 0E                     827 	.db	14
      000D3B 02                     828 	.uleb128	2
      000D3C 01                     829 	.db	1
      000D3D 00 00 88 23            830 	.dw	0,(Smilis$init_milis$29)
      000D41 0E                     831 	.db	14
      000D42 03                     832 	.uleb128	3
      000D43 01                     833 	.db	1
      000D44 00 00 88 25            834 	.dw	0,(Smilis$init_milis$30)
      000D48 0E                     835 	.db	14
      000D49 04                     836 	.uleb128	4
      000D4A 01                     837 	.db	1
      000D4B 00 00 88 29            838 	.dw	0,(Smilis$init_milis$31)
      000D4F 0E                     839 	.db	14
      000D50 02                     840 	.uleb128	2
      000D51 01                     841 	.db	1
      000D52 00 00 88 2B            842 	.dw	0,(Smilis$init_milis$33)
      000D56 0E                     843 	.db	14
      000D57 03                     844 	.uleb128	3
      000D58 01                     845 	.db	1
      000D59 00 00 88 2D            846 	.dw	0,(Smilis$init_milis$34)
      000D5D 0E                     847 	.db	14
      000D5E 04                     848 	.uleb128	4
      000D5F 01                     849 	.db	1
      000D60 00 00 88 31            850 	.dw	0,(Smilis$init_milis$35)
      000D64 0E                     851 	.db	14
      000D65 02                     852 	.uleb128	2
      000D66 01                     853 	.db	1
      000D67 00 00 88 34            854 	.dw	0,(Smilis$init_milis$38)
      000D6B 0E                     855 	.db	14
      000D6C 03                     856 	.uleb128	3
      000D6D 01                     857 	.db	1
      000D6E 00 00 88 38            858 	.dw	0,(Smilis$init_milis$39)
      000D72 0E                     859 	.db	14
      000D73 02                     860 	.uleb128	2
                                    861 
                                    862 	.area .debug_frame (NOLOAD)
      000D74 00 00                  863 	.dw	0
      000D76 00 0E                  864 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000D78                        865 Ldebug_CIE2_start:
      000D78 FF FF                  866 	.dw	0xffff
      000D7A FF FF                  867 	.dw	0xffff
      000D7C 01                     868 	.db	1
      000D7D 00                     869 	.db	0
      000D7E 01                     870 	.uleb128	1
      000D7F 7F                     871 	.sleb128	-1
      000D80 09                     872 	.db	9
      000D81 0C                     873 	.db	12
      000D82 08                     874 	.uleb128	8
      000D83 02                     875 	.uleb128	2
      000D84 89                     876 	.db	137
      000D85 01                     877 	.uleb128	1
      000D86                        878 Ldebug_CIE2_end:
      000D86 00 00 00 59            879 	.dw	0,89
      000D8A 00 00 0D 74            880 	.dw	0,(Ldebug_CIE2_start-4)
      000D8E 00 00 87 F1            881 	.dw	0,(Smilis$milis$1)	;initial loc
      000D92 00 00 00 22            882 	.dw	0,Smilis$milis$18-Smilis$milis$1
      000D96 01                     883 	.db	1
      000D97 00 00 87 F1            884 	.dw	0,(Smilis$milis$1)
      000D9B 0E                     885 	.db	14
      000D9C 02                     886 	.uleb128	2
      000D9D 01                     887 	.db	1
      000D9E 00 00 87 F3            888 	.dw	0,(Smilis$milis$2)
      000DA2 0E                     889 	.db	14
      000DA3 06                     890 	.uleb128	6
      000DA4 01                     891 	.db	1
      000DA5 00 00 87 F5            892 	.dw	0,(Smilis$milis$4)
      000DA9 0E                     893 	.db	14
      000DAA 07                     894 	.uleb128	7
      000DAB 01                     895 	.db	1
      000DAC 00 00 87 F7            896 	.dw	0,(Smilis$milis$5)
      000DB0 0E                     897 	.db	14
      000DB1 08                     898 	.uleb128	8
      000DB2 01                     899 	.db	1
      000DB3 00 00 87 FB            900 	.dw	0,(Smilis$milis$6)
      000DB7 0E                     901 	.db	14
      000DB8 06                     902 	.uleb128	6
      000DB9 01                     903 	.db	1
      000DBA 00 00 88 05            904 	.dw	0,(Smilis$milis$9)
      000DBE 0E                     905 	.db	14
      000DBF 08                     906 	.uleb128	8
      000DC0 01                     907 	.db	1
      000DC1 00 00 88 07            908 	.dw	0,(Smilis$milis$10)
      000DC5 0E                     909 	.db	14
      000DC6 09                     910 	.uleb128	9
      000DC7 01                     911 	.db	1
      000DC8 00 00 88 09            912 	.dw	0,(Smilis$milis$11)
      000DCC 0E                     913 	.db	14
      000DCD 0A                     914 	.uleb128	10
      000DCE 01                     915 	.db	1
      000DCF 00 00 88 0D            916 	.dw	0,(Smilis$milis$12)
      000DD3 0E                     917 	.db	14
      000DD4 08                     918 	.uleb128	8
      000DD5 01                     919 	.db	1
      000DD6 00 00 88 0E            920 	.dw	0,(Smilis$milis$13)
      000DDA 0E                     921 	.db	14
      000DDB 06                     922 	.uleb128	6
      000DDC 01                     923 	.db	1
      000DDD 00 00 88 12            924 	.dw	0,(Smilis$milis$16)
      000DE1 0E                     925 	.db	14
      000DE2 02                     926 	.uleb128	2
