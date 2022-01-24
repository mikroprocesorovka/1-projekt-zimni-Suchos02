                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _getchar
                                     12 	.globl _putchar
                                     13 	.globl _UART1_GetFlagStatus
                                     14 	.globl _UART1_SendData8
                                     15 	.globl _UART1_ReceiveData8
                                     16 	.globl _UART1_Cmd
                                     17 	.globl _UART1_Init
                                     18 	.globl _UART1_DeInit
                                     19 	.globl _init_uart1
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 
                                     33 ; default segment ordering for linker
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area CONST
                                     38 	.area INITIALIZER
                                     39 	.area CODE
                                     40 
                                     41 ;--------------------------------------------------------
                                     42 ; global & static initialisations
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area GSINIT
                                     48 ;--------------------------------------------------------
                                     49 ; Home
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area HOME
                                     53 ;--------------------------------------------------------
                                     54 ; code
                                     55 ;--------------------------------------------------------
                                     56 	.area CODE
                           000000    57 	Suart1$init_uart1$0 ==.
                                     58 ;	./src/uart1.c: 13: void init_uart1(void)
                                     59 ; genLabel
                                     60 ;	-----------------------------------------
                                     61 ;	 function init_uart1
                                     62 ;	-----------------------------------------
                                     63 ;	Register assignment is optimal.
                                     64 ;	Stack space usage: 0 bytes.
      0095AF                         65 _init_uart1:
                           000000    66 	Suart1$init_uart1$1 ==.
                           000000    67 	Suart1$init_uart1$2 ==.
                                     68 ;	./src/uart1.c: 15: UART1_DeInit();
                                     69 ; genCall
      0095AF CD 9E 2F         [ 4]   70 	call	_UART1_DeInit
                           000003    71 	Suart1$init_uart1$3 ==.
                                     72 ;	./src/uart1.c: 17: UART1_Init((uint32_t) 115200,       // - BaudRate = 115200 baud  
                                     73 ; genIPush
      0095B2 4B 0C            [ 1]   74 	push	#0x0c
                           000005    75 	Suart1$init_uart1$4 ==.
                                     76 ; genIPush
      0095B4 4B 80            [ 1]   77 	push	#0x80
                           000007    78 	Suart1$init_uart1$5 ==.
                                     79 ; genIPush
      0095B6 4B 00            [ 1]   80 	push	#0x00
                           000009    81 	Suart1$init_uart1$6 ==.
                                     82 ; genIPush
      0095B8 4B 00            [ 1]   83 	push	#0x00
                           00000B    84 	Suart1$init_uart1$7 ==.
                                     85 ; genIPush
      0095BA 4B 00            [ 1]   86 	push	#0x00
                           00000D    87 	Suart1$init_uart1$8 ==.
                                     88 ; genIPush
      0095BC 4B 00            [ 1]   89 	push	#0x00
                           00000F    90 	Suart1$init_uart1$9 ==.
      0095BE 4B C2            [ 1]   91 	push	#0xc2
                           000011    92 	Suart1$init_uart1$10 ==.
      0095C0 4B 01            [ 1]   93 	push	#0x01
                           000013    94 	Suart1$init_uart1$11 ==.
      0095C2 4B 00            [ 1]   95 	push	#0x00
                           000015    96 	Suart1$init_uart1$12 ==.
                                     97 ; genCall
      0095C4 CD 9E 5A         [ 4]   98 	call	_UART1_Init
      0095C7 5B 09            [ 2]   99 	addw	sp, #9
                           00001A   100 	Suart1$init_uart1$13 ==.
                           00001A   101 	Suart1$init_uart1$14 ==.
                                    102 ;	./src/uart1.c: 24: UART1_Cmd(ENABLE);
                                    103 ; genIPush
      0095C9 4B 01            [ 1]  104 	push	#0x01
                           00001C   105 	Suart1$init_uart1$15 ==.
                                    106 ; genCall
      0095CB CD 9F E9         [ 4]  107 	call	_UART1_Cmd
      0095CE 84               [ 1]  108 	pop	a
                           000020   109 	Suart1$init_uart1$16 ==.
                                    110 ; genLabel
      0095CF                        111 00101$:
                           000020   112 	Suart1$init_uart1$17 ==.
                                    113 ;	./src/uart1.c: 25: }
                                    114 ; genEndFunction
                           000020   115 	Suart1$init_uart1$18 ==.
                           000020   116 	XG$init_uart1$0$0 ==.
      0095CF 81               [ 4]  117 	ret
                           000021   118 	Suart1$init_uart1$19 ==.
                           000021   119 	Suart1$putchar$20 ==.
                                    120 ;	./src/uart1.c: 28: PUTCHAR_PROTOTYPE {
                                    121 ; genLabel
                                    122 ;	-----------------------------------------
                                    123 ;	 function putchar
                                    124 ;	-----------------------------------------
                                    125 ;	Register assignment is optimal.
                                    126 ;	Stack space usage: 0 bytes.
      0095D0                        127 _putchar:
                           000021   128 	Suart1$putchar$21 ==.
                           000021   129 	Suart1$putchar$22 ==.
                                    130 ;	./src/uart1.c: 30: UART1_SendData8(c);
                                    131 ; genCast
                                    132 ; genAssign
      0095D0 7B 04            [ 1]  133 	ld	a, (0x04, sp)
                                    134 ; genIPush
      0095D2 88               [ 1]  135 	push	a
                           000024   136 	Suart1$putchar$23 ==.
                                    137 ; genCall
      0095D3 CD A1 87         [ 4]  138 	call	_UART1_SendData8
      0095D6 84               [ 1]  139 	pop	a
                           000028   140 	Suart1$putchar$24 ==.
                           000028   141 	Suart1$putchar$25 ==.
                                    142 ;	./src/uart1.c: 32: while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET){
                                    143 ; genLabel
      0095D7                        144 00101$:
                                    145 ; genIPush
      0095D7 4B 80            [ 1]  146 	push	#0x80
                           00002A   147 	Suart1$putchar$26 ==.
      0095D9 4B 00            [ 1]  148 	push	#0x00
                           00002C   149 	Suart1$putchar$27 ==.
                                    150 ; genCall
      0095DB CD A1 D7         [ 4]  151 	call	_UART1_GetFlagStatus
      0095DE 85               [ 2]  152 	popw	x
                           000030   153 	Suart1$putchar$28 ==.
                                    154 ; genIfx
      0095DF 4D               [ 1]  155 	tnz	a
      0095E0 26 03            [ 1]  156 	jrne	00116$
      0095E2 CC 95 D7         [ 2]  157 	jp	00101$
      0095E5                        158 00116$:
                           000036   159 	Suart1$putchar$29 ==.
                                    160 ;	./src/uart1.c: 35: return (c);
                                    161 ; genReturn
      0095E5 1E 03            [ 2]  162 	ldw	x, (0x03, sp)
                                    163 ; genLabel
      0095E7                        164 00104$:
                           000038   165 	Suart1$putchar$30 ==.
                                    166 ;	./src/uart1.c: 36: }
                                    167 ; genEndFunction
                           000038   168 	Suart1$putchar$31 ==.
                           000038   169 	XG$putchar$0$0 ==.
      0095E7 81               [ 4]  170 	ret
                           000039   171 	Suart1$putchar$32 ==.
                           000039   172 	Suart1$getchar$33 ==.
                                    173 ;	./src/uart1.c: 43: GETCHAR_PROTOTYPE {
                                    174 ; genLabel
                                    175 ;	-----------------------------------------
                                    176 ;	 function getchar
                                    177 ;	-----------------------------------------
                                    178 ;	Register assignment might be sub-optimal.
                                    179 ;	Stack space usage: 0 bytes.
      0095E8                        180 _getchar:
                           000039   181 	Suart1$getchar$34 ==.
                           000039   182 	Suart1$getchar$35 ==.
                                    183 ;	./src/uart1.c: 50: while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET) {
                                    184 ; genLabel
      0095E8                        185 00101$:
                                    186 ; genIPush
      0095E8 4B 20            [ 1]  187 	push	#0x20
                           00003B   188 	Suart1$getchar$36 ==.
      0095EA 4B 00            [ 1]  189 	push	#0x00
                           00003D   190 	Suart1$getchar$37 ==.
                                    191 ; genCall
      0095EC CD A1 D7         [ 4]  192 	call	_UART1_GetFlagStatus
      0095EF 85               [ 2]  193 	popw	x
                           000041   194 	Suart1$getchar$38 ==.
                                    195 ; genIfx
      0095F0 4D               [ 1]  196 	tnz	a
      0095F1 26 03            [ 1]  197 	jrne	00116$
      0095F3 CC 95 E8         [ 2]  198 	jp	00101$
      0095F6                        199 00116$:
                           000047   200 	Suart1$getchar$39 ==.
                                    201 ;	./src/uart1.c: 53: c = UART1_ReceiveData8();
                                    202 ; genCall
      0095F6 CD A1 66         [ 4]  203 	call	_UART1_ReceiveData8
                                    204 ; genCast
                                    205 ; genAssign
      0095F9 5F               [ 1]  206 	clrw	x
      0095FA 97               [ 1]  207 	ld	xl, a
                                    208 ; genAssign
                           00004C   209 	Suart1$getchar$40 ==.
                                    210 ;	./src/uart1.c: 54: return (c);
                                    211 ; genReturn
                                    212 ; genLabel
      0095FB                        213 00104$:
                           00004C   214 	Suart1$getchar$41 ==.
                                    215 ;	./src/uart1.c: 55: }
                                    216 ; genEndFunction
                           00004C   217 	Suart1$getchar$42 ==.
                           00004C   218 	XG$getchar$0$0 ==.
      0095FB 81               [ 4]  219 	ret
                           00004D   220 	Suart1$getchar$43 ==.
                                    221 	.area CODE
                                    222 	.area CONST
                                    223 	.area INITIALIZER
                                    224 	.area CABS (ABS)
                                    225 
                                    226 	.area .debug_line (NOLOAD)
      0017E9 00 00 00 EC            227 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0017ED                        228 Ldebug_line_start:
      0017ED 00 02                  229 	.dw	2
      0017EF 00 00 00 6E            230 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0017F3 01                     231 	.db	1
      0017F4 01                     232 	.db	1
      0017F5 FB                     233 	.db	-5
      0017F6 0F                     234 	.db	15
      0017F7 0A                     235 	.db	10
      0017F8 00                     236 	.db	0
      0017F9 01                     237 	.db	1
      0017FA 01                     238 	.db	1
      0017FB 01                     239 	.db	1
      0017FC 01                     240 	.db	1
      0017FD 00                     241 	.db	0
      0017FE 00                     242 	.db	0
      0017FF 00                     243 	.db	0
      001800 01                     244 	.db	1
      001801 43 3A 5C 50 72 6F 67   245 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001829 00                     246 	.db	0
      00182A 43 3A 5C 50 72 6F 67   247 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00184D 00                     248 	.db	0
      00184E 00                     249 	.db	0
      00184F 2E 2F 73 72 63 2F 75   250 	.ascii "./src/uart1.c"
             61 72 74 31 2E 63
      00185C 00                     251 	.db	0
      00185D 00                     252 	.uleb128	0
      00185E 00                     253 	.uleb128	0
      00185F 00                     254 	.uleb128	0
      001860 00                     255 	.db	0
      001861                        256 Ldebug_line_stmt:
      001861 00                     257 	.db	0
      001862 05                     258 	.uleb128	5
      001863 02                     259 	.db	2
      001864 00 00 95 AF            260 	.dw	0,(Suart1$init_uart1$0)
      001868 03                     261 	.db	3
      001869 0C                     262 	.sleb128	12
      00186A 01                     263 	.db	1
      00186B 09                     264 	.db	9
      00186C 00 00                  265 	.dw	Suart1$init_uart1$2-Suart1$init_uart1$0
      00186E 03                     266 	.db	3
      00186F 02                     267 	.sleb128	2
      001870 01                     268 	.db	1
      001871 09                     269 	.db	9
      001872 00 03                  270 	.dw	Suart1$init_uart1$3-Suart1$init_uart1$2
      001874 03                     271 	.db	3
      001875 02                     272 	.sleb128	2
      001876 01                     273 	.db	1
      001877 09                     274 	.db	9
      001878 00 17                  275 	.dw	Suart1$init_uart1$14-Suart1$init_uart1$3
      00187A 03                     276 	.db	3
      00187B 07                     277 	.sleb128	7
      00187C 01                     278 	.db	1
      00187D 09                     279 	.db	9
      00187E 00 06                  280 	.dw	Suart1$init_uart1$17-Suart1$init_uart1$14
      001880 03                     281 	.db	3
      001881 01                     282 	.sleb128	1
      001882 01                     283 	.db	1
      001883 09                     284 	.db	9
      001884 00 01                  285 	.dw	1+Suart1$init_uart1$18-Suart1$init_uart1$17
      001886 00                     286 	.db	0
      001887 01                     287 	.uleb128	1
      001888 01                     288 	.db	1
      001889 00                     289 	.db	0
      00188A 05                     290 	.uleb128	5
      00188B 02                     291 	.db	2
      00188C 00 00 95 D0            292 	.dw	0,(Suart1$putchar$20)
      001890 03                     293 	.db	3
      001891 1B                     294 	.sleb128	27
      001892 01                     295 	.db	1
      001893 09                     296 	.db	9
      001894 00 00                  297 	.dw	Suart1$putchar$22-Suart1$putchar$20
      001896 03                     298 	.db	3
      001897 02                     299 	.sleb128	2
      001898 01                     300 	.db	1
      001899 09                     301 	.db	9
      00189A 00 07                  302 	.dw	Suart1$putchar$25-Suart1$putchar$22
      00189C 03                     303 	.db	3
      00189D 02                     304 	.sleb128	2
      00189E 01                     305 	.db	1
      00189F 09                     306 	.db	9
      0018A0 00 0E                  307 	.dw	Suart1$putchar$29-Suart1$putchar$25
      0018A2 03                     308 	.db	3
      0018A3 03                     309 	.sleb128	3
      0018A4 01                     310 	.db	1
      0018A5 09                     311 	.db	9
      0018A6 00 02                  312 	.dw	Suart1$putchar$30-Suart1$putchar$29
      0018A8 03                     313 	.db	3
      0018A9 01                     314 	.sleb128	1
      0018AA 01                     315 	.db	1
      0018AB 09                     316 	.db	9
      0018AC 00 01                  317 	.dw	1+Suart1$putchar$31-Suart1$putchar$30
      0018AE 00                     318 	.db	0
      0018AF 01                     319 	.uleb128	1
      0018B0 01                     320 	.db	1
      0018B1 00                     321 	.db	0
      0018B2 05                     322 	.uleb128	5
      0018B3 02                     323 	.db	2
      0018B4 00 00 95 E8            324 	.dw	0,(Suart1$getchar$33)
      0018B8 03                     325 	.db	3
      0018B9 2A                     326 	.sleb128	42
      0018BA 01                     327 	.db	1
      0018BB 09                     328 	.db	9
      0018BC 00 00                  329 	.dw	Suart1$getchar$35-Suart1$getchar$33
      0018BE 03                     330 	.db	3
      0018BF 07                     331 	.sleb128	7
      0018C0 01                     332 	.db	1
      0018C1 09                     333 	.db	9
      0018C2 00 0E                  334 	.dw	Suart1$getchar$39-Suart1$getchar$35
      0018C4 03                     335 	.db	3
      0018C5 03                     336 	.sleb128	3
      0018C6 01                     337 	.db	1
      0018C7 09                     338 	.db	9
      0018C8 00 05                  339 	.dw	Suart1$getchar$40-Suart1$getchar$39
      0018CA 03                     340 	.db	3
      0018CB 01                     341 	.sleb128	1
      0018CC 01                     342 	.db	1
      0018CD 09                     343 	.db	9
      0018CE 00 00                  344 	.dw	Suart1$getchar$41-Suart1$getchar$40
      0018D0 03                     345 	.db	3
      0018D1 01                     346 	.sleb128	1
      0018D2 01                     347 	.db	1
      0018D3 09                     348 	.db	9
      0018D4 00 01                  349 	.dw	1+Suart1$getchar$42-Suart1$getchar$41
      0018D6 00                     350 	.db	0
      0018D7 01                     351 	.uleb128	1
      0018D8 01                     352 	.db	1
      0018D9                        353 Ldebug_line_end:
                                    354 
                                    355 	.area .debug_loc (NOLOAD)
      0035C4                        356 Ldebug_loc_start:
      0035C4 00 00 95 F0            357 	.dw	0,(Suart1$getchar$38)
      0035C8 00 00 95 FC            358 	.dw	0,(Suart1$getchar$43)
      0035CC 00 02                  359 	.dw	2
      0035CE 78                     360 	.db	120
      0035CF 01                     361 	.sleb128	1
      0035D0 00 00 95 EC            362 	.dw	0,(Suart1$getchar$37)
      0035D4 00 00 95 F0            363 	.dw	0,(Suart1$getchar$38)
      0035D8 00 02                  364 	.dw	2
      0035DA 78                     365 	.db	120
      0035DB 03                     366 	.sleb128	3
      0035DC 00 00 95 EA            367 	.dw	0,(Suart1$getchar$36)
      0035E0 00 00 95 EC            368 	.dw	0,(Suart1$getchar$37)
      0035E4 00 02                  369 	.dw	2
      0035E6 78                     370 	.db	120
      0035E7 02                     371 	.sleb128	2
      0035E8 00 00 95 E8            372 	.dw	0,(Suart1$getchar$34)
      0035EC 00 00 95 EA            373 	.dw	0,(Suart1$getchar$36)
      0035F0 00 02                  374 	.dw	2
      0035F2 78                     375 	.db	120
      0035F3 01                     376 	.sleb128	1
      0035F4 00 00 00 00            377 	.dw	0,0
      0035F8 00 00 00 00            378 	.dw	0,0
      0035FC 00 00 95 DF            379 	.dw	0,(Suart1$putchar$28)
      003600 00 00 95 E8            380 	.dw	0,(Suart1$putchar$32)
      003604 00 02                  381 	.dw	2
      003606 78                     382 	.db	120
      003607 01                     383 	.sleb128	1
      003608 00 00 95 DB            384 	.dw	0,(Suart1$putchar$27)
      00360C 00 00 95 DF            385 	.dw	0,(Suart1$putchar$28)
      003610 00 02                  386 	.dw	2
      003612 78                     387 	.db	120
      003613 03                     388 	.sleb128	3
      003614 00 00 95 D9            389 	.dw	0,(Suart1$putchar$26)
      003618 00 00 95 DB            390 	.dw	0,(Suart1$putchar$27)
      00361C 00 02                  391 	.dw	2
      00361E 78                     392 	.db	120
      00361F 02                     393 	.sleb128	2
      003620 00 00 95 D7            394 	.dw	0,(Suart1$putchar$24)
      003624 00 00 95 D9            395 	.dw	0,(Suart1$putchar$26)
      003628 00 02                  396 	.dw	2
      00362A 78                     397 	.db	120
      00362B 01                     398 	.sleb128	1
      00362C 00 00 95 D3            399 	.dw	0,(Suart1$putchar$23)
      003630 00 00 95 D7            400 	.dw	0,(Suart1$putchar$24)
      003634 00 02                  401 	.dw	2
      003636 78                     402 	.db	120
      003637 02                     403 	.sleb128	2
      003638 00 00 95 D0            404 	.dw	0,(Suart1$putchar$21)
      00363C 00 00 95 D3            405 	.dw	0,(Suart1$putchar$23)
      003640 00 02                  406 	.dw	2
      003642 78                     407 	.db	120
      003643 01                     408 	.sleb128	1
      003644 00 00 00 00            409 	.dw	0,0
      003648 00 00 00 00            410 	.dw	0,0
      00364C 00 00 95 CF            411 	.dw	0,(Suart1$init_uart1$16)
      003650 00 00 95 D0            412 	.dw	0,(Suart1$init_uart1$19)
      003654 00 02                  413 	.dw	2
      003656 78                     414 	.db	120
      003657 01                     415 	.sleb128	1
      003658 00 00 95 CB            416 	.dw	0,(Suart1$init_uart1$15)
      00365C 00 00 95 CF            417 	.dw	0,(Suart1$init_uart1$16)
      003660 00 02                  418 	.dw	2
      003662 78                     419 	.db	120
      003663 02                     420 	.sleb128	2
      003664 00 00 95 C9            421 	.dw	0,(Suart1$init_uart1$13)
      003668 00 00 95 CB            422 	.dw	0,(Suart1$init_uart1$15)
      00366C 00 02                  423 	.dw	2
      00366E 78                     424 	.db	120
      00366F 01                     425 	.sleb128	1
      003670 00 00 95 C4            426 	.dw	0,(Suart1$init_uart1$12)
      003674 00 00 95 C9            427 	.dw	0,(Suart1$init_uart1$13)
      003678 00 02                  428 	.dw	2
      00367A 78                     429 	.db	120
      00367B 0A                     430 	.sleb128	10
      00367C 00 00 95 C2            431 	.dw	0,(Suart1$init_uart1$11)
      003680 00 00 95 C4            432 	.dw	0,(Suart1$init_uart1$12)
      003684 00 02                  433 	.dw	2
      003686 78                     434 	.db	120
      003687 09                     435 	.sleb128	9
      003688 00 00 95 C0            436 	.dw	0,(Suart1$init_uart1$10)
      00368C 00 00 95 C2            437 	.dw	0,(Suart1$init_uart1$11)
      003690 00 02                  438 	.dw	2
      003692 78                     439 	.db	120
      003693 08                     440 	.sleb128	8
      003694 00 00 95 BE            441 	.dw	0,(Suart1$init_uart1$9)
      003698 00 00 95 C0            442 	.dw	0,(Suart1$init_uart1$10)
      00369C 00 02                  443 	.dw	2
      00369E 78                     444 	.db	120
      00369F 07                     445 	.sleb128	7
      0036A0 00 00 95 BC            446 	.dw	0,(Suart1$init_uart1$8)
      0036A4 00 00 95 BE            447 	.dw	0,(Suart1$init_uart1$9)
      0036A8 00 02                  448 	.dw	2
      0036AA 78                     449 	.db	120
      0036AB 06                     450 	.sleb128	6
      0036AC 00 00 95 BA            451 	.dw	0,(Suart1$init_uart1$7)
      0036B0 00 00 95 BC            452 	.dw	0,(Suart1$init_uart1$8)
      0036B4 00 02                  453 	.dw	2
      0036B6 78                     454 	.db	120
      0036B7 05                     455 	.sleb128	5
      0036B8 00 00 95 B8            456 	.dw	0,(Suart1$init_uart1$6)
      0036BC 00 00 95 BA            457 	.dw	0,(Suart1$init_uart1$7)
      0036C0 00 02                  458 	.dw	2
      0036C2 78                     459 	.db	120
      0036C3 04                     460 	.sleb128	4
      0036C4 00 00 95 B6            461 	.dw	0,(Suart1$init_uart1$5)
      0036C8 00 00 95 B8            462 	.dw	0,(Suart1$init_uart1$6)
      0036CC 00 02                  463 	.dw	2
      0036CE 78                     464 	.db	120
      0036CF 03                     465 	.sleb128	3
      0036D0 00 00 95 B4            466 	.dw	0,(Suart1$init_uart1$4)
      0036D4 00 00 95 B6            467 	.dw	0,(Suart1$init_uart1$5)
      0036D8 00 02                  468 	.dw	2
      0036DA 78                     469 	.db	120
      0036DB 02                     470 	.sleb128	2
      0036DC 00 00 95 AF            471 	.dw	0,(Suart1$init_uart1$1)
      0036E0 00 00 95 B4            472 	.dw	0,(Suart1$init_uart1$4)
      0036E4 00 02                  473 	.dw	2
      0036E6 78                     474 	.db	120
      0036E7 01                     475 	.sleb128	1
      0036E8 00 00 00 00            476 	.dw	0,0
      0036EC 00 00 00 00            477 	.dw	0,0
                                    478 
                                    479 	.area .debug_abbrev (NOLOAD)
      0003AD                        480 Ldebug_abbrev:
      0003AD 06                     481 	.uleb128	6
      0003AE 2E                     482 	.uleb128	46
      0003AF 01                     483 	.db	1
      0003B0 03                     484 	.uleb128	3
      0003B1 08                     485 	.uleb128	8
      0003B2 11                     486 	.uleb128	17
      0003B3 01                     487 	.uleb128	1
      0003B4 12                     488 	.uleb128	18
      0003B5 01                     489 	.uleb128	1
      0003B6 3F                     490 	.uleb128	63
      0003B7 0C                     491 	.uleb128	12
      0003B8 40                     492 	.uleb128	64
      0003B9 06                     493 	.uleb128	6
      0003BA 49                     494 	.uleb128	73
      0003BB 13                     495 	.uleb128	19
      0003BC 00                     496 	.uleb128	0
      0003BD 00                     497 	.uleb128	0
      0003BE 05                     498 	.uleb128	5
      0003BF 05                     499 	.uleb128	5
      0003C0 00                     500 	.db	0
      0003C1 02                     501 	.uleb128	2
      0003C2 0A                     502 	.uleb128	10
      0003C3 03                     503 	.uleb128	3
      0003C4 08                     504 	.uleb128	8
      0003C5 49                     505 	.uleb128	73
      0003C6 13                     506 	.uleb128	19
      0003C7 00                     507 	.uleb128	0
      0003C8 00                     508 	.uleb128	0
      0003C9 07                     509 	.uleb128	7
      0003CA 34                     510 	.uleb128	52
      0003CB 00                     511 	.db	0
      0003CC 02                     512 	.uleb128	2
      0003CD 0A                     513 	.uleb128	10
      0003CE 03                     514 	.uleb128	3
      0003CF 08                     515 	.uleb128	8
      0003D0 49                     516 	.uleb128	73
      0003D1 13                     517 	.uleb128	19
      0003D2 00                     518 	.uleb128	0
      0003D3 00                     519 	.uleb128	0
      0003D4 04                     520 	.uleb128	4
      0003D5 2E                     521 	.uleb128	46
      0003D6 01                     522 	.db	1
      0003D7 01                     523 	.uleb128	1
      0003D8 13                     524 	.uleb128	19
      0003D9 03                     525 	.uleb128	3
      0003DA 08                     526 	.uleb128	8
      0003DB 11                     527 	.uleb128	17
      0003DC 01                     528 	.uleb128	1
      0003DD 12                     529 	.uleb128	18
      0003DE 01                     530 	.uleb128	1
      0003DF 3F                     531 	.uleb128	63
      0003E0 0C                     532 	.uleb128	12
      0003E1 40                     533 	.uleb128	64
      0003E2 06                     534 	.uleb128	6
      0003E3 49                     535 	.uleb128	73
      0003E4 13                     536 	.uleb128	19
      0003E5 00                     537 	.uleb128	0
      0003E6 00                     538 	.uleb128	0
      0003E7 01                     539 	.uleb128	1
      0003E8 11                     540 	.uleb128	17
      0003E9 01                     541 	.db	1
      0003EA 03                     542 	.uleb128	3
      0003EB 08                     543 	.uleb128	8
      0003EC 10                     544 	.uleb128	16
      0003ED 06                     545 	.uleb128	6
      0003EE 13                     546 	.uleb128	19
      0003EF 0B                     547 	.uleb128	11
      0003F0 25                     548 	.uleb128	37
      0003F1 08                     549 	.uleb128	8
      0003F2 00                     550 	.uleb128	0
      0003F3 00                     551 	.uleb128	0
      0003F4 02                     552 	.uleb128	2
      0003F5 2E                     553 	.uleb128	46
      0003F6 00                     554 	.db	0
      0003F7 03                     555 	.uleb128	3
      0003F8 08                     556 	.uleb128	8
      0003F9 11                     557 	.uleb128	17
      0003FA 01                     558 	.uleb128	1
      0003FB 12                     559 	.uleb128	18
      0003FC 01                     560 	.uleb128	1
      0003FD 3F                     561 	.uleb128	63
      0003FE 0C                     562 	.uleb128	12
      0003FF 40                     563 	.uleb128	64
      000400 06                     564 	.uleb128	6
      000401 00                     565 	.uleb128	0
      000402 00                     566 	.uleb128	0
      000403 03                     567 	.uleb128	3
      000404 24                     568 	.uleb128	36
      000405 00                     569 	.db	0
      000406 03                     570 	.uleb128	3
      000407 08                     571 	.uleb128	8
      000408 0B                     572 	.uleb128	11
      000409 0B                     573 	.uleb128	11
      00040A 3E                     574 	.uleb128	62
      00040B 0B                     575 	.uleb128	11
      00040C 00                     576 	.uleb128	0
      00040D 00                     577 	.uleb128	0
      00040E 00                     578 	.uleb128	0
                                    579 
                                    580 	.area .debug_info (NOLOAD)
      0027E3 00 00 00 AA            581 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0027E7                        582 Ldebug_info_start:
      0027E7 00 02                  583 	.dw	2
      0027E9 00 00 03 AD            584 	.dw	0,(Ldebug_abbrev)
      0027ED 04                     585 	.db	4
      0027EE 01                     586 	.uleb128	1
      0027EF 2E 2F 73 72 63 2F 75   587 	.ascii "./src/uart1.c"
             61 72 74 31 2E 63
      0027FC 00                     588 	.db	0
      0027FD 00 00 17 E9            589 	.dw	0,(Ldebug_line_start+-4)
      002801 01                     590 	.db	1
      002802 53 44 43 43 20 76 65   591 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      00281B 00                     592 	.db	0
      00281C 02                     593 	.uleb128	2
      00281D 69 6E 69 74 5F 75 61   594 	.ascii "init_uart1"
             72 74 31
      002827 00                     595 	.db	0
      002828 00 00 95 AF            596 	.dw	0,(_init_uart1)
      00282C 00 00 95 D0            597 	.dw	0,(XG$init_uart1$0$0+1)
      002830 01                     598 	.db	1
      002831 00 00 36 4C            599 	.dw	0,(Ldebug_loc_start+136)
      002835 03                     600 	.uleb128	3
      002836 69 6E 74               601 	.ascii "int"
      002839 00                     602 	.db	0
      00283A 02                     603 	.db	2
      00283B 05                     604 	.db	5
      00283C 04                     605 	.uleb128	4
      00283D 00 00 00 82            606 	.dw	0,130
      002841 70 75 74 63 68 61 72   607 	.ascii "putchar"
      002848 00                     608 	.db	0
      002849 00 00 95 D0            609 	.dw	0,(_putchar)
      00284D 00 00 95 E8            610 	.dw	0,(XG$putchar$0$0+1)
      002851 01                     611 	.db	1
      002852 00 00 35 FC            612 	.dw	0,(Ldebug_loc_start+56)
      002856 00 00 00 52            613 	.dw	0,82
      00285A 05                     614 	.uleb128	5
      00285B 02                     615 	.db	2
      00285C 91                     616 	.db	145
      00285D 02                     617 	.sleb128	2
      00285E 63                     618 	.ascii "c"
      00285F 00                     619 	.db	0
      002860 00 00 00 52            620 	.dw	0,82
      002864 00                     621 	.uleb128	0
      002865 06                     622 	.uleb128	6
      002866 67 65 74 63 68 61 72   623 	.ascii "getchar"
      00286D 00                     624 	.db	0
      00286E 00 00 95 E8            625 	.dw	0,(_getchar)
      002872 00 00 95 FC            626 	.dw	0,(XG$getchar$0$0+1)
      002876 01                     627 	.db	1
      002877 00 00 35 C4            628 	.dw	0,(Ldebug_loc_start)
      00287B 00 00 00 52            629 	.dw	0,82
      00287F 07                     630 	.uleb128	7
      002880 06                     631 	.db	6
      002881 52                     632 	.db	82
      002882 93                     633 	.db	147
      002883 01                     634 	.uleb128	1
      002884 51                     635 	.db	81
      002885 93                     636 	.db	147
      002886 01                     637 	.uleb128	1
      002887 63                     638 	.ascii "c"
      002888 00                     639 	.db	0
      002889 00 00 00 52            640 	.dw	0,82
      00288D 00                     641 	.uleb128	0
      00288E 00                     642 	.uleb128	0
      00288F 00                     643 	.uleb128	0
      002890 00                     644 	.uleb128	0
      002891                        645 Ldebug_info_end:
                                    646 
                                    647 	.area .debug_pubnames (NOLOAD)
      000582 00 00 00 35            648 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000586                        649 Ldebug_pubnames_start:
      000586 00 02                  650 	.dw	2
      000588 00 00 27 E3            651 	.dw	0,(Ldebug_info_start-4)
      00058C 00 00 00 AE            652 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000590 00 00 00 39            653 	.dw	0,57
      000594 69 6E 69 74 5F 75 61   654 	.ascii "init_uart1"
             72 74 31
      00059E 00                     655 	.db	0
      00059F 00 00 00 59            656 	.dw	0,89
      0005A3 70 75 74 63 68 61 72   657 	.ascii "putchar"
      0005AA 00                     658 	.db	0
      0005AB 00 00 00 82            659 	.dw	0,130
      0005AF 67 65 74 63 68 61 72   660 	.ascii "getchar"
      0005B6 00                     661 	.db	0
      0005B7 00 00 00 00            662 	.dw	0,0
      0005BB                        663 Ldebug_pubnames_end:
                                    664 
                                    665 	.area .debug_frame (NOLOAD)
      00279D 00 00                  666 	.dw	0
      00279F 00 0E                  667 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0027A1                        668 Ldebug_CIE0_start:
      0027A1 FF FF                  669 	.dw	0xffff
      0027A3 FF FF                  670 	.dw	0xffff
      0027A5 01                     671 	.db	1
      0027A6 00                     672 	.db	0
      0027A7 01                     673 	.uleb128	1
      0027A8 7F                     674 	.sleb128	-1
      0027A9 09                     675 	.db	9
      0027AA 0C                     676 	.db	12
      0027AB 08                     677 	.uleb128	8
      0027AC 02                     678 	.uleb128	2
      0027AD 89                     679 	.db	137
      0027AE 01                     680 	.uleb128	1
      0027AF                        681 Ldebug_CIE0_end:
      0027AF 00 00 00 28            682 	.dw	0,40
      0027B3 00 00 27 9D            683 	.dw	0,(Ldebug_CIE0_start-4)
      0027B7 00 00 95 E8            684 	.dw	0,(Suart1$getchar$34)	;initial loc
      0027BB 00 00 00 14            685 	.dw	0,Suart1$getchar$43-Suart1$getchar$34
      0027BF 01                     686 	.db	1
      0027C0 00 00 95 E8            687 	.dw	0,(Suart1$getchar$34)
      0027C4 0E                     688 	.db	14
      0027C5 02                     689 	.uleb128	2
      0027C6 01                     690 	.db	1
      0027C7 00 00 95 EA            691 	.dw	0,(Suart1$getchar$36)
      0027CB 0E                     692 	.db	14
      0027CC 03                     693 	.uleb128	3
      0027CD 01                     694 	.db	1
      0027CE 00 00 95 EC            695 	.dw	0,(Suart1$getchar$37)
      0027D2 0E                     696 	.db	14
      0027D3 04                     697 	.uleb128	4
      0027D4 01                     698 	.db	1
      0027D5 00 00 95 F0            699 	.dw	0,(Suart1$getchar$38)
      0027D9 0E                     700 	.db	14
      0027DA 02                     701 	.uleb128	2
                                    702 
                                    703 	.area .debug_frame (NOLOAD)
      0027DB 00 00                  704 	.dw	0
      0027DD 00 0E                  705 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0027DF                        706 Ldebug_CIE1_start:
      0027DF FF FF                  707 	.dw	0xffff
      0027E1 FF FF                  708 	.dw	0xffff
      0027E3 01                     709 	.db	1
      0027E4 00                     710 	.db	0
      0027E5 01                     711 	.uleb128	1
      0027E6 7F                     712 	.sleb128	-1
      0027E7 09                     713 	.db	9
      0027E8 0C                     714 	.db	12
      0027E9 08                     715 	.uleb128	8
      0027EA 02                     716 	.uleb128	2
      0027EB 89                     717 	.db	137
      0027EC 01                     718 	.uleb128	1
      0027ED                        719 Ldebug_CIE1_end:
      0027ED 00 00 00 36            720 	.dw	0,54
      0027F1 00 00 27 DB            721 	.dw	0,(Ldebug_CIE1_start-4)
      0027F5 00 00 95 D0            722 	.dw	0,(Suart1$putchar$21)	;initial loc
      0027F9 00 00 00 18            723 	.dw	0,Suart1$putchar$32-Suart1$putchar$21
      0027FD 01                     724 	.db	1
      0027FE 00 00 95 D0            725 	.dw	0,(Suart1$putchar$21)
      002802 0E                     726 	.db	14
      002803 02                     727 	.uleb128	2
      002804 01                     728 	.db	1
      002805 00 00 95 D3            729 	.dw	0,(Suart1$putchar$23)
      002809 0E                     730 	.db	14
      00280A 03                     731 	.uleb128	3
      00280B 01                     732 	.db	1
      00280C 00 00 95 D7            733 	.dw	0,(Suart1$putchar$24)
      002810 0E                     734 	.db	14
      002811 02                     735 	.uleb128	2
      002812 01                     736 	.db	1
      002813 00 00 95 D9            737 	.dw	0,(Suart1$putchar$26)
      002817 0E                     738 	.db	14
      002818 03                     739 	.uleb128	3
      002819 01                     740 	.db	1
      00281A 00 00 95 DB            741 	.dw	0,(Suart1$putchar$27)
      00281E 0E                     742 	.db	14
      00281F 04                     743 	.uleb128	4
      002820 01                     744 	.db	1
      002821 00 00 95 DF            745 	.dw	0,(Suart1$putchar$28)
      002825 0E                     746 	.db	14
      002826 02                     747 	.uleb128	2
                                    748 
                                    749 	.area .debug_frame (NOLOAD)
      002827 00 00                  750 	.dw	0
      002829 00 0E                  751 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00282B                        752 Ldebug_CIE2_start:
      00282B FF FF                  753 	.dw	0xffff
      00282D FF FF                  754 	.dw	0xffff
      00282F 01                     755 	.db	1
      002830 00                     756 	.db	0
      002831 01                     757 	.uleb128	1
      002832 7F                     758 	.sleb128	-1
      002833 09                     759 	.db	9
      002834 0C                     760 	.db	12
      002835 08                     761 	.uleb128	8
      002836 02                     762 	.uleb128	2
      002837 89                     763 	.db	137
      002838 01                     764 	.uleb128	1
      002839                        765 Ldebug_CIE2_end:
      002839 00 00 00 67            766 	.dw	0,103
      00283D 00 00 28 27            767 	.dw	0,(Ldebug_CIE2_start-4)
      002841 00 00 95 AF            768 	.dw	0,(Suart1$init_uart1$1)	;initial loc
      002845 00 00 00 21            769 	.dw	0,Suart1$init_uart1$19-Suart1$init_uart1$1
      002849 01                     770 	.db	1
      00284A 00 00 95 AF            771 	.dw	0,(Suart1$init_uart1$1)
      00284E 0E                     772 	.db	14
      00284F 02                     773 	.uleb128	2
      002850 01                     774 	.db	1
      002851 00 00 95 B4            775 	.dw	0,(Suart1$init_uart1$4)
      002855 0E                     776 	.db	14
      002856 03                     777 	.uleb128	3
      002857 01                     778 	.db	1
      002858 00 00 95 B6            779 	.dw	0,(Suart1$init_uart1$5)
      00285C 0E                     780 	.db	14
      00285D 04                     781 	.uleb128	4
      00285E 01                     782 	.db	1
      00285F 00 00 95 B8            783 	.dw	0,(Suart1$init_uart1$6)
      002863 0E                     784 	.db	14
      002864 05                     785 	.uleb128	5
      002865 01                     786 	.db	1
      002866 00 00 95 BA            787 	.dw	0,(Suart1$init_uart1$7)
      00286A 0E                     788 	.db	14
      00286B 06                     789 	.uleb128	6
      00286C 01                     790 	.db	1
      00286D 00 00 95 BC            791 	.dw	0,(Suart1$init_uart1$8)
      002871 0E                     792 	.db	14
      002872 07                     793 	.uleb128	7
      002873 01                     794 	.db	1
      002874 00 00 95 BE            795 	.dw	0,(Suart1$init_uart1$9)
      002878 0E                     796 	.db	14
      002879 08                     797 	.uleb128	8
      00287A 01                     798 	.db	1
      00287B 00 00 95 C0            799 	.dw	0,(Suart1$init_uart1$10)
      00287F 0E                     800 	.db	14
      002880 09                     801 	.uleb128	9
      002881 01                     802 	.db	1
      002882 00 00 95 C2            803 	.dw	0,(Suart1$init_uart1$11)
      002886 0E                     804 	.db	14
      002887 0A                     805 	.uleb128	10
      002888 01                     806 	.db	1
      002889 00 00 95 C4            807 	.dw	0,(Suart1$init_uart1$12)
      00288D 0E                     808 	.db	14
      00288E 0B                     809 	.uleb128	11
      00288F 01                     810 	.db	1
      002890 00 00 95 C9            811 	.dw	0,(Suart1$init_uart1$13)
      002894 0E                     812 	.db	14
      002895 02                     813 	.uleb128	2
      002896 01                     814 	.db	1
      002897 00 00 95 CB            815 	.dw	0,(Suart1$init_uart1$15)
      00289B 0E                     816 	.db	14
      00289C 03                     817 	.uleb128	3
      00289D 01                     818 	.db	1
      00289E 00 00 95 CF            819 	.dw	0,(Suart1$init_uart1$16)
      0028A2 0E                     820 	.db	14
      0028A3 02                     821 	.uleb128	2
