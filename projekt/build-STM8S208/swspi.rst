                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module swspi
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_WriteLow
                                     12 	.globl _GPIO_WriteHigh
                                     13 	.globl _GPIO_Init
                                     14 	.globl _swspi_init
                                     15 	.globl _swspi_tx16
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
                           000000    53 	Sswspi$swspi_init$0 ==.
                                     54 ;	./src/swspi.c: 12: void swspi_init(void){
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function swspi_init
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      00951C                         61 _swspi_init:
                           000000    62 	Sswspi$swspi_init$1 ==.
                           000000    63 	Sswspi$swspi_init$2 ==.
                                     64 ;	./src/swspi.c: 13: GPIO_Init(CS_GPIO,CS_PIN,GPIO_MODE_OUT_PP_HIGH_FAST);
                                     65 ; genIPush
      00951C 4B F0            [ 1]   66 	push	#0xf0
                           000002    67 	Sswspi$swspi_init$3 ==.
                                     68 ; genIPush
      00951E 4B 10            [ 1]   69 	push	#0x10
                           000004    70 	Sswspi$swspi_init$4 ==.
                                     71 ; genIPush
      009520 4B 05            [ 1]   72 	push	#0x05
                           000006    73 	Sswspi$swspi_init$5 ==.
      009522 4B 50            [ 1]   74 	push	#0x50
                           000008    75 	Sswspi$swspi_init$6 ==.
                                     76 ; genCall
      009524 CD 96 0F         [ 4]   77 	call	_GPIO_Init
      009527 5B 04            [ 2]   78 	addw	sp, #4
                           00000D    79 	Sswspi$swspi_init$7 ==.
                           00000D    80 	Sswspi$swspi_init$8 ==.
                                     81 ;	./src/swspi.c: 14: GPIO_Init(CLK_GPIO,CLK_PIN,GPIO_MODE_OUT_PP_LOW_FAST);
                                     82 ; genIPush
      009529 4B E0            [ 1]   83 	push	#0xe0
                           00000F    84 	Sswspi$swspi_init$9 ==.
                                     85 ; genIPush
      00952B 4B 08            [ 1]   86 	push	#0x08
                           000011    87 	Sswspi$swspi_init$10 ==.
                                     88 ; genIPush
      00952D 4B 05            [ 1]   89 	push	#0x05
                           000013    90 	Sswspi$swspi_init$11 ==.
      00952F 4B 50            [ 1]   91 	push	#0x50
                           000015    92 	Sswspi$swspi_init$12 ==.
                                     93 ; genCall
      009531 CD 96 0F         [ 4]   94 	call	_GPIO_Init
      009534 5B 04            [ 2]   95 	addw	sp, #4
                           00001A    96 	Sswspi$swspi_init$13 ==.
                           00001A    97 	Sswspi$swspi_init$14 ==.
                                     98 ;	./src/swspi.c: 15: GPIO_Init(DIN_GPIO,DIN_PIN,GPIO_MODE_OUT_PP_LOW_FAST);
                                     99 ; genIPush
      009536 4B E0            [ 1]  100 	push	#0xe0
                           00001C   101 	Sswspi$swspi_init$15 ==.
                                    102 ; genIPush
      009538 4B 20            [ 1]  103 	push	#0x20
                           00001E   104 	Sswspi$swspi_init$16 ==.
                                    105 ; genIPush
      00953A 4B 05            [ 1]  106 	push	#0x05
                           000020   107 	Sswspi$swspi_init$17 ==.
      00953C 4B 50            [ 1]  108 	push	#0x50
                           000022   109 	Sswspi$swspi_init$18 ==.
                                    110 ; genCall
      00953E CD 96 0F         [ 4]  111 	call	_GPIO_Init
      009541 5B 04            [ 2]  112 	addw	sp, #4
                           000027   113 	Sswspi$swspi_init$19 ==.
                                    114 ; genLabel
      009543                        115 00101$:
                           000027   116 	Sswspi$swspi_init$20 ==.
                                    117 ;	./src/swspi.c: 16: }
                                    118 ; genEndFunction
                           000027   119 	Sswspi$swspi_init$21 ==.
                           000027   120 	XG$swspi_init$0$0 ==.
      009543 81               [ 4]  121 	ret
                           000028   122 	Sswspi$swspi_init$22 ==.
                           000028   123 	Sswspi$swspi_tx16$23 ==.
                                    124 ;	./src/swspi.c: 19: void swspi_tx16(uint16_t data)
                                    125 ; genLabel
                                    126 ;	-----------------------------------------
                                    127 ;	 function swspi_tx16
                                    128 ;	-----------------------------------------
                                    129 ;	Register assignment is optimal.
                                    130 ;	Stack space usage: 2 bytes.
      009544                        131 _swspi_tx16:
                           000028   132 	Sswspi$swspi_tx16$24 ==.
      009544 89               [ 2]  133 	pushw	x
                           000029   134 	Sswspi$swspi_tx16$25 ==.
                           000029   135 	Sswspi$swspi_tx16$26 ==.
                                    136 ;	./src/swspi.c: 21: uint16_t maska = 1 << 15;
                                    137 ; genAssign
      009545 AE 80 00         [ 2]  138 	ldw	x, #0x8000
      009548 1F 01            [ 2]  139 	ldw	(0x01, sp), x
                           00002E   140 	Sswspi$swspi_tx16$27 ==.
                                    141 ;	./src/swspi.c: 23: CS_L;
                                    142 ; genIPush
      00954A 4B 10            [ 1]  143 	push	#0x10
                           000030   144 	Sswspi$swspi_tx16$28 ==.
                                    145 ; genIPush
      00954C 4B 05            [ 1]  146 	push	#0x05
                           000032   147 	Sswspi$swspi_tx16$29 ==.
      00954E 4B 50            [ 1]  148 	push	#0x50
                           000034   149 	Sswspi$swspi_tx16$30 ==.
                                    150 ; genCall
      009550 CD 96 A3         [ 4]  151 	call	_GPIO_WriteLow
      009553 5B 03            [ 2]  152 	addw	sp, #3
                           000039   153 	Sswspi$swspi_tx16$31 ==.
                           000039   154 	Sswspi$swspi_tx16$32 ==.
                                    155 ;	./src/swspi.c: 24: while (maska) {
                                    156 ; genLabel
      009555                        157 00104$:
                                    158 ; genIfx
      009555 1E 01            [ 2]  159 	ldw	x, (0x01, sp)
      009557 26 03            [ 1]  160 	jrne	00124$
      009559 CC 95 A2         [ 2]  161 	jp	00106$
      00955C                        162 00124$:
                           000040   163 	Sswspi$swspi_tx16$33 ==.
                           000040   164 	Sswspi$swspi_tx16$34 ==.
                                    165 ;	./src/swspi.c: 25: if (maska & data) {
                                    166 ; genAnd
      00955C 7B 02            [ 1]  167 	ld	a, (0x02, sp)
      00955E 14 06            [ 1]  168 	and	a, (0x06, sp)
      009560 97               [ 1]  169 	ld	xl, a
      009561 7B 01            [ 1]  170 	ld	a, (0x01, sp)
      009563 14 05            [ 1]  171 	and	a, (0x05, sp)
      009565 95               [ 1]  172 	ld	xh, a
                                    173 ; genIfx
      009566 5D               [ 2]  174 	tnzw	x
      009567 26 03            [ 1]  175 	jrne	00125$
      009569 CC 95 7A         [ 2]  176 	jp	00102$
      00956C                        177 00125$:
                           000050   178 	Sswspi$swspi_tx16$35 ==.
                           000050   179 	Sswspi$swspi_tx16$36 ==.
                                    180 ;	./src/swspi.c: 26: DIN_H;
                                    181 ; genIPush
      00956C 4B 20            [ 1]  182 	push	#0x20
                           000052   183 	Sswspi$swspi_tx16$37 ==.
                                    184 ; genIPush
      00956E 4B 05            [ 1]  185 	push	#0x05
                           000054   186 	Sswspi$swspi_tx16$38 ==.
      009570 4B 50            [ 1]  187 	push	#0x50
                           000056   188 	Sswspi$swspi_tx16$39 ==.
                                    189 ; genCall
      009572 CD 96 9C         [ 4]  190 	call	_GPIO_WriteHigh
      009575 5B 03            [ 2]  191 	addw	sp, #3
                           00005B   192 	Sswspi$swspi_tx16$40 ==.
                           00005B   193 	Sswspi$swspi_tx16$41 ==.
                                    194 ; genGoto
      009577 CC 95 85         [ 2]  195 	jp	00103$
                                    196 ; genLabel
      00957A                        197 00102$:
                           00005E   198 	Sswspi$swspi_tx16$42 ==.
                           00005E   199 	Sswspi$swspi_tx16$43 ==.
                                    200 ;	./src/swspi.c: 28: DIN_L;
                                    201 ; genIPush
      00957A 4B 20            [ 1]  202 	push	#0x20
                           000060   203 	Sswspi$swspi_tx16$44 ==.
                                    204 ; genIPush
      00957C 4B 05            [ 1]  205 	push	#0x05
                           000062   206 	Sswspi$swspi_tx16$45 ==.
      00957E 4B 50            [ 1]  207 	push	#0x50
                           000064   208 	Sswspi$swspi_tx16$46 ==.
                                    209 ; genCall
      009580 CD 96 A3         [ 4]  210 	call	_GPIO_WriteLow
      009583 5B 03            [ 2]  211 	addw	sp, #3
                           000069   212 	Sswspi$swspi_tx16$47 ==.
                           000069   213 	Sswspi$swspi_tx16$48 ==.
                                    214 ; genLabel
      009585                        215 00103$:
                           000069   216 	Sswspi$swspi_tx16$49 ==.
                                    217 ;	./src/swspi.c: 30: CLK_H;
                                    218 ; genIPush
      009585 4B 08            [ 1]  219 	push	#0x08
                           00006B   220 	Sswspi$swspi_tx16$50 ==.
                                    221 ; genIPush
      009587 4B 05            [ 1]  222 	push	#0x05
                           00006D   223 	Sswspi$swspi_tx16$51 ==.
      009589 4B 50            [ 1]  224 	push	#0x50
                           00006F   225 	Sswspi$swspi_tx16$52 ==.
                                    226 ; genCall
      00958B CD 96 9C         [ 4]  227 	call	_GPIO_WriteHigh
      00958E 5B 03            [ 2]  228 	addw	sp, #3
                           000074   229 	Sswspi$swspi_tx16$53 ==.
                           000074   230 	Sswspi$swspi_tx16$54 ==.
                                    231 ;	./src/swspi.c: 31: maska = maska >> 1;
                                    232 ; genRightShiftLiteral
      009590 04 01            [ 1]  233 	srl	(0x01, sp)
      009592 06 02            [ 1]  234 	rrc	(0x02, sp)
                           000078   235 	Sswspi$swspi_tx16$55 ==.
                                    236 ;	./src/swspi.c: 32: CLK_L;
                                    237 ; genIPush
      009594 4B 08            [ 1]  238 	push	#0x08
                           00007A   239 	Sswspi$swspi_tx16$56 ==.
                                    240 ; genIPush
      009596 4B 05            [ 1]  241 	push	#0x05
                           00007C   242 	Sswspi$swspi_tx16$57 ==.
      009598 4B 50            [ 1]  243 	push	#0x50
                           00007E   244 	Sswspi$swspi_tx16$58 ==.
                                    245 ; genCall
      00959A CD 96 A3         [ 4]  246 	call	_GPIO_WriteLow
      00959D 5B 03            [ 2]  247 	addw	sp, #3
                           000083   248 	Sswspi$swspi_tx16$59 ==.
                           000083   249 	Sswspi$swspi_tx16$60 ==.
                                    250 ; genGoto
      00959F CC 95 55         [ 2]  251 	jp	00104$
                                    252 ; genLabel
      0095A2                        253 00106$:
                           000086   254 	Sswspi$swspi_tx16$61 ==.
                                    255 ;	./src/swspi.c: 34: CS_H;
                                    256 ; genIPush
      0095A2 4B 10            [ 1]  257 	push	#0x10
                           000088   258 	Sswspi$swspi_tx16$62 ==.
                                    259 ; genIPush
      0095A4 4B 05            [ 1]  260 	push	#0x05
                           00008A   261 	Sswspi$swspi_tx16$63 ==.
      0095A6 4B 50            [ 1]  262 	push	#0x50
                           00008C   263 	Sswspi$swspi_tx16$64 ==.
                                    264 ; genCall
      0095A8 CD 96 9C         [ 4]  265 	call	_GPIO_WriteHigh
      0095AB 5B 03            [ 2]  266 	addw	sp, #3
                           000091   267 	Sswspi$swspi_tx16$65 ==.
                                    268 ; genLabel
      0095AD                        269 00107$:
                           000091   270 	Sswspi$swspi_tx16$66 ==.
                                    271 ;	./src/swspi.c: 35: }
                                    272 ; genEndFunction
      0095AD 85               [ 2]  273 	popw	x
                           000092   274 	Sswspi$swspi_tx16$67 ==.
                           000092   275 	Sswspi$swspi_tx16$68 ==.
                           000092   276 	XG$swspi_tx16$0$0 ==.
      0095AE 81               [ 4]  277 	ret
                           000093   278 	Sswspi$swspi_tx16$69 ==.
                                    279 	.area CODE
                                    280 	.area CONST
                                    281 	.area INITIALIZER
                                    282 	.area CABS (ABS)
                                    283 
                                    284 	.area .debug_line (NOLOAD)
      0016F7 00 00 00 EE            285 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0016FB                        286 Ldebug_line_start:
      0016FB 00 02                  287 	.dw	2
      0016FD 00 00 00 6E            288 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001701 01                     289 	.db	1
      001702 01                     290 	.db	1
      001703 FB                     291 	.db	-5
      001704 0F                     292 	.db	15
      001705 0A                     293 	.db	10
      001706 00                     294 	.db	0
      001707 01                     295 	.db	1
      001708 01                     296 	.db	1
      001709 01                     297 	.db	1
      00170A 01                     298 	.db	1
      00170B 00                     299 	.db	0
      00170C 00                     300 	.db	0
      00170D 00                     301 	.db	0
      00170E 01                     302 	.db	1
      00170F 43 3A 5C 50 72 6F 67   303 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001737 00                     304 	.db	0
      001738 43 3A 5C 50 72 6F 67   305 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00175B 00                     306 	.db	0
      00175C 00                     307 	.db	0
      00175D 2E 2F 73 72 63 2F 73   308 	.ascii "./src/swspi.c"
             77 73 70 69 2E 63
      00176A 00                     309 	.db	0
      00176B 00                     310 	.uleb128	0
      00176C 00                     311 	.uleb128	0
      00176D 00                     312 	.uleb128	0
      00176E 00                     313 	.db	0
      00176F                        314 Ldebug_line_stmt:
      00176F 00                     315 	.db	0
      001770 05                     316 	.uleb128	5
      001771 02                     317 	.db	2
      001772 00 00 95 1C            318 	.dw	0,(Sswspi$swspi_init$0)
      001776 03                     319 	.db	3
      001777 0B                     320 	.sleb128	11
      001778 01                     321 	.db	1
      001779 09                     322 	.db	9
      00177A 00 00                  323 	.dw	Sswspi$swspi_init$2-Sswspi$swspi_init$0
      00177C 03                     324 	.db	3
      00177D 01                     325 	.sleb128	1
      00177E 01                     326 	.db	1
      00177F 09                     327 	.db	9
      001780 00 0D                  328 	.dw	Sswspi$swspi_init$8-Sswspi$swspi_init$2
      001782 03                     329 	.db	3
      001783 01                     330 	.sleb128	1
      001784 01                     331 	.db	1
      001785 09                     332 	.db	9
      001786 00 0D                  333 	.dw	Sswspi$swspi_init$14-Sswspi$swspi_init$8
      001788 03                     334 	.db	3
      001789 01                     335 	.sleb128	1
      00178A 01                     336 	.db	1
      00178B 09                     337 	.db	9
      00178C 00 0D                  338 	.dw	Sswspi$swspi_init$20-Sswspi$swspi_init$14
      00178E 03                     339 	.db	3
      00178F 01                     340 	.sleb128	1
      001790 01                     341 	.db	1
      001791 09                     342 	.db	9
      001792 00 01                  343 	.dw	1+Sswspi$swspi_init$21-Sswspi$swspi_init$20
      001794 00                     344 	.db	0
      001795 01                     345 	.uleb128	1
      001796 01                     346 	.db	1
      001797 00                     347 	.db	0
      001798 05                     348 	.uleb128	5
      001799 02                     349 	.db	2
      00179A 00 00 95 44            350 	.dw	0,(Sswspi$swspi_tx16$23)
      00179E 03                     351 	.db	3
      00179F 12                     352 	.sleb128	18
      0017A0 01                     353 	.db	1
      0017A1 09                     354 	.db	9
      0017A2 00 01                  355 	.dw	Sswspi$swspi_tx16$26-Sswspi$swspi_tx16$23
      0017A4 03                     356 	.db	3
      0017A5 02                     357 	.sleb128	2
      0017A6 01                     358 	.db	1
      0017A7 09                     359 	.db	9
      0017A8 00 05                  360 	.dw	Sswspi$swspi_tx16$27-Sswspi$swspi_tx16$26
      0017AA 03                     361 	.db	3
      0017AB 02                     362 	.sleb128	2
      0017AC 01                     363 	.db	1
      0017AD 09                     364 	.db	9
      0017AE 00 0B                  365 	.dw	Sswspi$swspi_tx16$32-Sswspi$swspi_tx16$27
      0017B0 03                     366 	.db	3
      0017B1 01                     367 	.sleb128	1
      0017B2 01                     368 	.db	1
      0017B3 09                     369 	.db	9
      0017B4 00 07                  370 	.dw	Sswspi$swspi_tx16$34-Sswspi$swspi_tx16$32
      0017B6 03                     371 	.db	3
      0017B7 01                     372 	.sleb128	1
      0017B8 01                     373 	.db	1
      0017B9 09                     374 	.db	9
      0017BA 00 10                  375 	.dw	Sswspi$swspi_tx16$36-Sswspi$swspi_tx16$34
      0017BC 03                     376 	.db	3
      0017BD 01                     377 	.sleb128	1
      0017BE 01                     378 	.db	1
      0017BF 09                     379 	.db	9
      0017C0 00 0E                  380 	.dw	Sswspi$swspi_tx16$43-Sswspi$swspi_tx16$36
      0017C2 03                     381 	.db	3
      0017C3 02                     382 	.sleb128	2
      0017C4 01                     383 	.db	1
      0017C5 09                     384 	.db	9
      0017C6 00 0B                  385 	.dw	Sswspi$swspi_tx16$49-Sswspi$swspi_tx16$43
      0017C8 03                     386 	.db	3
      0017C9 02                     387 	.sleb128	2
      0017CA 01                     388 	.db	1
      0017CB 09                     389 	.db	9
      0017CC 00 0B                  390 	.dw	Sswspi$swspi_tx16$54-Sswspi$swspi_tx16$49
      0017CE 03                     391 	.db	3
      0017CF 01                     392 	.sleb128	1
      0017D0 01                     393 	.db	1
      0017D1 09                     394 	.db	9
      0017D2 00 04                  395 	.dw	Sswspi$swspi_tx16$55-Sswspi$swspi_tx16$54
      0017D4 03                     396 	.db	3
      0017D5 01                     397 	.sleb128	1
      0017D6 01                     398 	.db	1
      0017D7 09                     399 	.db	9
      0017D8 00 0E                  400 	.dw	Sswspi$swspi_tx16$61-Sswspi$swspi_tx16$55
      0017DA 03                     401 	.db	3
      0017DB 02                     402 	.sleb128	2
      0017DC 01                     403 	.db	1
      0017DD 09                     404 	.db	9
      0017DE 00 0B                  405 	.dw	Sswspi$swspi_tx16$66-Sswspi$swspi_tx16$61
      0017E0 03                     406 	.db	3
      0017E1 01                     407 	.sleb128	1
      0017E2 01                     408 	.db	1
      0017E3 09                     409 	.db	9
      0017E4 00 02                  410 	.dw	1+Sswspi$swspi_tx16$68-Sswspi$swspi_tx16$66
      0017E6 00                     411 	.db	0
      0017E7 01                     412 	.uleb128	1
      0017E8 01                     413 	.db	1
      0017E9                        414 Ldebug_line_end:
                                    415 
                                    416 	.area .debug_loc (NOLOAD)
      0033B0                        417 Ldebug_loc_start:
      0033B0 00 00 95 AE            418 	.dw	0,(Sswspi$swspi_tx16$67)
      0033B4 00 00 95 AF            419 	.dw	0,(Sswspi$swspi_tx16$69)
      0033B8 00 02                  420 	.dw	2
      0033BA 78                     421 	.db	120
      0033BB 01                     422 	.sleb128	1
      0033BC 00 00 95 AD            423 	.dw	0,(Sswspi$swspi_tx16$65)
      0033C0 00 00 95 AE            424 	.dw	0,(Sswspi$swspi_tx16$67)
      0033C4 00 02                  425 	.dw	2
      0033C6 78                     426 	.db	120
      0033C7 03                     427 	.sleb128	3
      0033C8 00 00 95 A8            428 	.dw	0,(Sswspi$swspi_tx16$64)
      0033CC 00 00 95 AD            429 	.dw	0,(Sswspi$swspi_tx16$65)
      0033D0 00 02                  430 	.dw	2
      0033D2 78                     431 	.db	120
      0033D3 06                     432 	.sleb128	6
      0033D4 00 00 95 A6            433 	.dw	0,(Sswspi$swspi_tx16$63)
      0033D8 00 00 95 A8            434 	.dw	0,(Sswspi$swspi_tx16$64)
      0033DC 00 02                  435 	.dw	2
      0033DE 78                     436 	.db	120
      0033DF 05                     437 	.sleb128	5
      0033E0 00 00 95 A4            438 	.dw	0,(Sswspi$swspi_tx16$62)
      0033E4 00 00 95 A6            439 	.dw	0,(Sswspi$swspi_tx16$63)
      0033E8 00 02                  440 	.dw	2
      0033EA 78                     441 	.db	120
      0033EB 04                     442 	.sleb128	4
      0033EC 00 00 95 9F            443 	.dw	0,(Sswspi$swspi_tx16$59)
      0033F0 00 00 95 A4            444 	.dw	0,(Sswspi$swspi_tx16$62)
      0033F4 00 02                  445 	.dw	2
      0033F6 78                     446 	.db	120
      0033F7 03                     447 	.sleb128	3
      0033F8 00 00 95 9A            448 	.dw	0,(Sswspi$swspi_tx16$58)
      0033FC 00 00 95 9F            449 	.dw	0,(Sswspi$swspi_tx16$59)
      003400 00 02                  450 	.dw	2
      003402 78                     451 	.db	120
      003403 06                     452 	.sleb128	6
      003404 00 00 95 98            453 	.dw	0,(Sswspi$swspi_tx16$57)
      003408 00 00 95 9A            454 	.dw	0,(Sswspi$swspi_tx16$58)
      00340C 00 02                  455 	.dw	2
      00340E 78                     456 	.db	120
      00340F 05                     457 	.sleb128	5
      003410 00 00 95 96            458 	.dw	0,(Sswspi$swspi_tx16$56)
      003414 00 00 95 98            459 	.dw	0,(Sswspi$swspi_tx16$57)
      003418 00 02                  460 	.dw	2
      00341A 78                     461 	.db	120
      00341B 04                     462 	.sleb128	4
      00341C 00 00 95 90            463 	.dw	0,(Sswspi$swspi_tx16$53)
      003420 00 00 95 96            464 	.dw	0,(Sswspi$swspi_tx16$56)
      003424 00 02                  465 	.dw	2
      003426 78                     466 	.db	120
      003427 03                     467 	.sleb128	3
      003428 00 00 95 8B            468 	.dw	0,(Sswspi$swspi_tx16$52)
      00342C 00 00 95 90            469 	.dw	0,(Sswspi$swspi_tx16$53)
      003430 00 02                  470 	.dw	2
      003432 78                     471 	.db	120
      003433 06                     472 	.sleb128	6
      003434 00 00 95 89            473 	.dw	0,(Sswspi$swspi_tx16$51)
      003438 00 00 95 8B            474 	.dw	0,(Sswspi$swspi_tx16$52)
      00343C 00 02                  475 	.dw	2
      00343E 78                     476 	.db	120
      00343F 05                     477 	.sleb128	5
      003440 00 00 95 87            478 	.dw	0,(Sswspi$swspi_tx16$50)
      003444 00 00 95 89            479 	.dw	0,(Sswspi$swspi_tx16$51)
      003448 00 02                  480 	.dw	2
      00344A 78                     481 	.db	120
      00344B 04                     482 	.sleb128	4
      00344C 00 00 95 85            483 	.dw	0,(Sswspi$swspi_tx16$47)
      003450 00 00 95 87            484 	.dw	0,(Sswspi$swspi_tx16$50)
      003454 00 02                  485 	.dw	2
      003456 78                     486 	.db	120
      003457 03                     487 	.sleb128	3
      003458 00 00 95 80            488 	.dw	0,(Sswspi$swspi_tx16$46)
      00345C 00 00 95 85            489 	.dw	0,(Sswspi$swspi_tx16$47)
      003460 00 02                  490 	.dw	2
      003462 78                     491 	.db	120
      003463 06                     492 	.sleb128	6
      003464 00 00 95 7E            493 	.dw	0,(Sswspi$swspi_tx16$45)
      003468 00 00 95 80            494 	.dw	0,(Sswspi$swspi_tx16$46)
      00346C 00 02                  495 	.dw	2
      00346E 78                     496 	.db	120
      00346F 05                     497 	.sleb128	5
      003470 00 00 95 7C            498 	.dw	0,(Sswspi$swspi_tx16$44)
      003474 00 00 95 7E            499 	.dw	0,(Sswspi$swspi_tx16$45)
      003478 00 02                  500 	.dw	2
      00347A 78                     501 	.db	120
      00347B 04                     502 	.sleb128	4
      00347C 00 00 95 77            503 	.dw	0,(Sswspi$swspi_tx16$40)
      003480 00 00 95 7C            504 	.dw	0,(Sswspi$swspi_tx16$44)
      003484 00 02                  505 	.dw	2
      003486 78                     506 	.db	120
      003487 03                     507 	.sleb128	3
      003488 00 00 95 72            508 	.dw	0,(Sswspi$swspi_tx16$39)
      00348C 00 00 95 77            509 	.dw	0,(Sswspi$swspi_tx16$40)
      003490 00 02                  510 	.dw	2
      003492 78                     511 	.db	120
      003493 06                     512 	.sleb128	6
      003494 00 00 95 70            513 	.dw	0,(Sswspi$swspi_tx16$38)
      003498 00 00 95 72            514 	.dw	0,(Sswspi$swspi_tx16$39)
      00349C 00 02                  515 	.dw	2
      00349E 78                     516 	.db	120
      00349F 05                     517 	.sleb128	5
      0034A0 00 00 95 6E            518 	.dw	0,(Sswspi$swspi_tx16$37)
      0034A4 00 00 95 70            519 	.dw	0,(Sswspi$swspi_tx16$38)
      0034A8 00 02                  520 	.dw	2
      0034AA 78                     521 	.db	120
      0034AB 04                     522 	.sleb128	4
      0034AC 00 00 95 55            523 	.dw	0,(Sswspi$swspi_tx16$31)
      0034B0 00 00 95 6E            524 	.dw	0,(Sswspi$swspi_tx16$37)
      0034B4 00 02                  525 	.dw	2
      0034B6 78                     526 	.db	120
      0034B7 03                     527 	.sleb128	3
      0034B8 00 00 95 50            528 	.dw	0,(Sswspi$swspi_tx16$30)
      0034BC 00 00 95 55            529 	.dw	0,(Sswspi$swspi_tx16$31)
      0034C0 00 02                  530 	.dw	2
      0034C2 78                     531 	.db	120
      0034C3 06                     532 	.sleb128	6
      0034C4 00 00 95 4E            533 	.dw	0,(Sswspi$swspi_tx16$29)
      0034C8 00 00 95 50            534 	.dw	0,(Sswspi$swspi_tx16$30)
      0034CC 00 02                  535 	.dw	2
      0034CE 78                     536 	.db	120
      0034CF 05                     537 	.sleb128	5
      0034D0 00 00 95 4C            538 	.dw	0,(Sswspi$swspi_tx16$28)
      0034D4 00 00 95 4E            539 	.dw	0,(Sswspi$swspi_tx16$29)
      0034D8 00 02                  540 	.dw	2
      0034DA 78                     541 	.db	120
      0034DB 04                     542 	.sleb128	4
      0034DC 00 00 95 45            543 	.dw	0,(Sswspi$swspi_tx16$25)
      0034E0 00 00 95 4C            544 	.dw	0,(Sswspi$swspi_tx16$28)
      0034E4 00 02                  545 	.dw	2
      0034E6 78                     546 	.db	120
      0034E7 03                     547 	.sleb128	3
      0034E8 00 00 95 44            548 	.dw	0,(Sswspi$swspi_tx16$24)
      0034EC 00 00 95 45            549 	.dw	0,(Sswspi$swspi_tx16$25)
      0034F0 00 02                  550 	.dw	2
      0034F2 78                     551 	.db	120
      0034F3 01                     552 	.sleb128	1
      0034F4 00 00 00 00            553 	.dw	0,0
      0034F8 00 00 00 00            554 	.dw	0,0
      0034FC 00 00 95 43            555 	.dw	0,(Sswspi$swspi_init$19)
      003500 00 00 95 44            556 	.dw	0,(Sswspi$swspi_init$22)
      003504 00 02                  557 	.dw	2
      003506 78                     558 	.db	120
      003507 01                     559 	.sleb128	1
      003508 00 00 95 3E            560 	.dw	0,(Sswspi$swspi_init$18)
      00350C 00 00 95 43            561 	.dw	0,(Sswspi$swspi_init$19)
      003510 00 02                  562 	.dw	2
      003512 78                     563 	.db	120
      003513 05                     564 	.sleb128	5
      003514 00 00 95 3C            565 	.dw	0,(Sswspi$swspi_init$17)
      003518 00 00 95 3E            566 	.dw	0,(Sswspi$swspi_init$18)
      00351C 00 02                  567 	.dw	2
      00351E 78                     568 	.db	120
      00351F 04                     569 	.sleb128	4
      003520 00 00 95 3A            570 	.dw	0,(Sswspi$swspi_init$16)
      003524 00 00 95 3C            571 	.dw	0,(Sswspi$swspi_init$17)
      003528 00 02                  572 	.dw	2
      00352A 78                     573 	.db	120
      00352B 03                     574 	.sleb128	3
      00352C 00 00 95 38            575 	.dw	0,(Sswspi$swspi_init$15)
      003530 00 00 95 3A            576 	.dw	0,(Sswspi$swspi_init$16)
      003534 00 02                  577 	.dw	2
      003536 78                     578 	.db	120
      003537 02                     579 	.sleb128	2
      003538 00 00 95 36            580 	.dw	0,(Sswspi$swspi_init$13)
      00353C 00 00 95 38            581 	.dw	0,(Sswspi$swspi_init$15)
      003540 00 02                  582 	.dw	2
      003542 78                     583 	.db	120
      003543 01                     584 	.sleb128	1
      003544 00 00 95 31            585 	.dw	0,(Sswspi$swspi_init$12)
      003548 00 00 95 36            586 	.dw	0,(Sswspi$swspi_init$13)
      00354C 00 02                  587 	.dw	2
      00354E 78                     588 	.db	120
      00354F 05                     589 	.sleb128	5
      003550 00 00 95 2F            590 	.dw	0,(Sswspi$swspi_init$11)
      003554 00 00 95 31            591 	.dw	0,(Sswspi$swspi_init$12)
      003558 00 02                  592 	.dw	2
      00355A 78                     593 	.db	120
      00355B 04                     594 	.sleb128	4
      00355C 00 00 95 2D            595 	.dw	0,(Sswspi$swspi_init$10)
      003560 00 00 95 2F            596 	.dw	0,(Sswspi$swspi_init$11)
      003564 00 02                  597 	.dw	2
      003566 78                     598 	.db	120
      003567 03                     599 	.sleb128	3
      003568 00 00 95 2B            600 	.dw	0,(Sswspi$swspi_init$9)
      00356C 00 00 95 2D            601 	.dw	0,(Sswspi$swspi_init$10)
      003570 00 02                  602 	.dw	2
      003572 78                     603 	.db	120
      003573 02                     604 	.sleb128	2
      003574 00 00 95 29            605 	.dw	0,(Sswspi$swspi_init$7)
      003578 00 00 95 2B            606 	.dw	0,(Sswspi$swspi_init$9)
      00357C 00 02                  607 	.dw	2
      00357E 78                     608 	.db	120
      00357F 01                     609 	.sleb128	1
      003580 00 00 95 24            610 	.dw	0,(Sswspi$swspi_init$6)
      003584 00 00 95 29            611 	.dw	0,(Sswspi$swspi_init$7)
      003588 00 02                  612 	.dw	2
      00358A 78                     613 	.db	120
      00358B 05                     614 	.sleb128	5
      00358C 00 00 95 22            615 	.dw	0,(Sswspi$swspi_init$5)
      003590 00 00 95 24            616 	.dw	0,(Sswspi$swspi_init$6)
      003594 00 02                  617 	.dw	2
      003596 78                     618 	.db	120
      003597 04                     619 	.sleb128	4
      003598 00 00 95 20            620 	.dw	0,(Sswspi$swspi_init$4)
      00359C 00 00 95 22            621 	.dw	0,(Sswspi$swspi_init$5)
      0035A0 00 02                  622 	.dw	2
      0035A2 78                     623 	.db	120
      0035A3 03                     624 	.sleb128	3
      0035A4 00 00 95 1E            625 	.dw	0,(Sswspi$swspi_init$3)
      0035A8 00 00 95 20            626 	.dw	0,(Sswspi$swspi_init$4)
      0035AC 00 02                  627 	.dw	2
      0035AE 78                     628 	.db	120
      0035AF 02                     629 	.sleb128	2
      0035B0 00 00 95 1C            630 	.dw	0,(Sswspi$swspi_init$1)
      0035B4 00 00 95 1E            631 	.dw	0,(Sswspi$swspi_init$3)
      0035B8 00 02                  632 	.dw	2
      0035BA 78                     633 	.db	120
      0035BB 01                     634 	.sleb128	1
      0035BC 00 00 00 00            635 	.dw	0,0
      0035C0 00 00 00 00            636 	.dw	0,0
                                    637 
                                    638 	.area .debug_abbrev (NOLOAD)
      00034A                        639 Ldebug_abbrev:
      00034A 04                     640 	.uleb128	4
      00034B 05                     641 	.uleb128	5
      00034C 00                     642 	.db	0
      00034D 02                     643 	.uleb128	2
      00034E 0A                     644 	.uleb128	10
      00034F 03                     645 	.uleb128	3
      000350 08                     646 	.uleb128	8
      000351 49                     647 	.uleb128	73
      000352 13                     648 	.uleb128	19
      000353 00                     649 	.uleb128	0
      000354 00                     650 	.uleb128	0
      000355 03                     651 	.uleb128	3
      000356 2E                     652 	.uleb128	46
      000357 01                     653 	.db	1
      000358 01                     654 	.uleb128	1
      000359 13                     655 	.uleb128	19
      00035A 03                     656 	.uleb128	3
      00035B 08                     657 	.uleb128	8
      00035C 11                     658 	.uleb128	17
      00035D 01                     659 	.uleb128	1
      00035E 12                     660 	.uleb128	18
      00035F 01                     661 	.uleb128	1
      000360 3F                     662 	.uleb128	63
      000361 0C                     663 	.uleb128	12
      000362 40                     664 	.uleb128	64
      000363 06                     665 	.uleb128	6
      000364 00                     666 	.uleb128	0
      000365 00                     667 	.uleb128	0
      000366 07                     668 	.uleb128	7
      000367 34                     669 	.uleb128	52
      000368 00                     670 	.db	0
      000369 02                     671 	.uleb128	2
      00036A 0A                     672 	.uleb128	10
      00036B 03                     673 	.uleb128	3
      00036C 08                     674 	.uleb128	8
      00036D 49                     675 	.uleb128	73
      00036E 13                     676 	.uleb128	19
      00036F 00                     677 	.uleb128	0
      000370 00                     678 	.uleb128	0
      000371 01                     679 	.uleb128	1
      000372 11                     680 	.uleb128	17
      000373 01                     681 	.db	1
      000374 03                     682 	.uleb128	3
      000375 08                     683 	.uleb128	8
      000376 10                     684 	.uleb128	16
      000377 06                     685 	.uleb128	6
      000378 13                     686 	.uleb128	19
      000379 0B                     687 	.uleb128	11
      00037A 25                     688 	.uleb128	37
      00037B 08                     689 	.uleb128	8
      00037C 00                     690 	.uleb128	0
      00037D 00                     691 	.uleb128	0
      00037E 06                     692 	.uleb128	6
      00037F 0B                     693 	.uleb128	11
      000380 00                     694 	.db	0
      000381 11                     695 	.uleb128	17
      000382 01                     696 	.uleb128	1
      000383 12                     697 	.uleb128	18
      000384 01                     698 	.uleb128	1
      000385 00                     699 	.uleb128	0
      000386 00                     700 	.uleb128	0
      000387 02                     701 	.uleb128	2
      000388 2E                     702 	.uleb128	46
      000389 00                     703 	.db	0
      00038A 03                     704 	.uleb128	3
      00038B 08                     705 	.uleb128	8
      00038C 11                     706 	.uleb128	17
      00038D 01                     707 	.uleb128	1
      00038E 12                     708 	.uleb128	18
      00038F 01                     709 	.uleb128	1
      000390 3F                     710 	.uleb128	63
      000391 0C                     711 	.uleb128	12
      000392 40                     712 	.uleb128	64
      000393 06                     713 	.uleb128	6
      000394 00                     714 	.uleb128	0
      000395 00                     715 	.uleb128	0
      000396 05                     716 	.uleb128	5
      000397 0B                     717 	.uleb128	11
      000398 01                     718 	.db	1
      000399 01                     719 	.uleb128	1
      00039A 13                     720 	.uleb128	19
      00039B 11                     721 	.uleb128	17
      00039C 01                     722 	.uleb128	1
      00039D 12                     723 	.uleb128	18
      00039E 01                     724 	.uleb128	1
      00039F 00                     725 	.uleb128	0
      0003A0 00                     726 	.uleb128	0
      0003A1 08                     727 	.uleb128	8
      0003A2 24                     728 	.uleb128	36
      0003A3 00                     729 	.db	0
      0003A4 03                     730 	.uleb128	3
      0003A5 08                     731 	.uleb128	8
      0003A6 0B                     732 	.uleb128	11
      0003A7 0B                     733 	.uleb128	11
      0003A8 3E                     734 	.uleb128	62
      0003A9 0B                     735 	.uleb128	11
      0003AA 00                     736 	.uleb128	0
      0003AB 00                     737 	.uleb128	0
      0003AC 00                     738 	.uleb128	0
                                    739 
                                    740 	.area .debug_info (NOLOAD)
      002725 00 00 00 BA            741 	.dw	0,Ldebug_info_end-Ldebug_info_start
      002729                        742 Ldebug_info_start:
      002729 00 02                  743 	.dw	2
      00272B 00 00 03 4A            744 	.dw	0,(Ldebug_abbrev)
      00272F 04                     745 	.db	4
      002730 01                     746 	.uleb128	1
      002731 2E 2F 73 72 63 2F 73   747 	.ascii "./src/swspi.c"
             77 73 70 69 2E 63
      00273E 00                     748 	.db	0
      00273F 00 00 16 F7            749 	.dw	0,(Ldebug_line_start+-4)
      002743 01                     750 	.db	1
      002744 53 44 43 43 20 76 65   751 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      00275D 00                     752 	.db	0
      00275E 02                     753 	.uleb128	2
      00275F 73 77 73 70 69 5F 69   754 	.ascii "swspi_init"
             6E 69 74
      002769 00                     755 	.db	0
      00276A 00 00 95 1C            756 	.dw	0,(_swspi_init)
      00276E 00 00 95 44            757 	.dw	0,(XG$swspi_init$0$0+1)
      002772 01                     758 	.db	1
      002773 00 00 34 FC            759 	.dw	0,(Ldebug_loc_start+332)
      002777 03                     760 	.uleb128	3
      002778 00 00 00 AB            761 	.dw	0,171
      00277C 73 77 73 70 69 5F 74   762 	.ascii "swspi_tx16"
             78 31 36
      002786 00                     763 	.db	0
      002787 00 00 95 44            764 	.dw	0,(_swspi_tx16)
      00278B 00 00 95 AF            765 	.dw	0,(XG$swspi_tx16$0$0+1)
      00278F 01                     766 	.db	1
      002790 00 00 33 B0            767 	.dw	0,(Ldebug_loc_start)
      002794 04                     768 	.uleb128	4
      002795 02                     769 	.db	2
      002796 91                     770 	.db	145
      002797 02                     771 	.sleb128	2
      002798 64 61 74 61            772 	.ascii "data"
      00279C 00                     773 	.db	0
      00279D 00 00 00 AB            774 	.dw	0,171
      0027A1 05                     775 	.uleb128	5
      0027A2 00 00 00 9C            776 	.dw	0,156
      0027A6 00 00 95 5C            777 	.dw	0,(Sswspi$swspi_tx16$33)
      0027AA 00 00 95 9F            778 	.dw	0,(Sswspi$swspi_tx16$60)
      0027AE 06                     779 	.uleb128	6
      0027AF 00 00 95 6C            780 	.dw	0,(Sswspi$swspi_tx16$35)
      0027B3 00 00 95 77            781 	.dw	0,(Sswspi$swspi_tx16$41)
      0027B7 06                     782 	.uleb128	6
      0027B8 00 00 95 7A            783 	.dw	0,(Sswspi$swspi_tx16$42)
      0027BC 00 00 95 85            784 	.dw	0,(Sswspi$swspi_tx16$48)
      0027C0 00                     785 	.uleb128	0
      0027C1 07                     786 	.uleb128	7
      0027C2 02                     787 	.db	2
      0027C3 91                     788 	.db	145
      0027C4 7E                     789 	.sleb128	-2
      0027C5 6D 61 73 6B 61         790 	.ascii "maska"
      0027CA 00                     791 	.db	0
      0027CB 00 00 00 AB            792 	.dw	0,171
      0027CF 00                     793 	.uleb128	0
      0027D0 08                     794 	.uleb128	8
      0027D1 75 6E 73 69 67 6E 65   795 	.ascii "unsigned int"
             64 20 69 6E 74
      0027DD 00                     796 	.db	0
      0027DE 02                     797 	.db	2
      0027DF 07                     798 	.db	7
      0027E0 00                     799 	.uleb128	0
      0027E1 00                     800 	.uleb128	0
      0027E2 00                     801 	.uleb128	0
      0027E3                        802 Ldebug_info_end:
                                    803 
                                    804 	.area .debug_pubnames (NOLOAD)
      000552 00 00 00 2C            805 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000556                        806 Ldebug_pubnames_start:
      000556 00 02                  807 	.dw	2
      000558 00 00 27 25            808 	.dw	0,(Ldebug_info_start-4)
      00055C 00 00 00 BE            809 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000560 00 00 00 39            810 	.dw	0,57
      000564 73 77 73 70 69 5F 69   811 	.ascii "swspi_init"
             6E 69 74
      00056E 00                     812 	.db	0
      00056F 00 00 00 52            813 	.dw	0,82
      000573 73 77 73 70 69 5F 74   814 	.ascii "swspi_tx16"
             78 31 36
      00057D 00                     815 	.db	0
      00057E 00 00 00 00            816 	.dw	0,0
      000582                        817 Ldebug_pubnames_end:
                                    818 
                                    819 	.area .debug_frame (NOLOAD)
      00262C 00 00                  820 	.dw	0
      00262E 00 0E                  821 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      002630                        822 Ldebug_CIE0_start:
      002630 FF FF                  823 	.dw	0xffff
      002632 FF FF                  824 	.dw	0xffff
      002634 01                     825 	.db	1
      002635 00                     826 	.db	0
      002636 01                     827 	.uleb128	1
      002637 7F                     828 	.sleb128	-1
      002638 09                     829 	.db	9
      002639 0C                     830 	.db	12
      00263A 08                     831 	.uleb128	8
      00263B 02                     832 	.uleb128	2
      00263C 89                     833 	.db	137
      00263D 01                     834 	.uleb128	1
      00263E                        835 Ldebug_CIE0_end:
      00263E 00 00 00 C9            836 	.dw	0,201
      002642 00 00 26 2C            837 	.dw	0,(Ldebug_CIE0_start-4)
      002646 00 00 95 44            838 	.dw	0,(Sswspi$swspi_tx16$24)	;initial loc
      00264A 00 00 00 6B            839 	.dw	0,Sswspi$swspi_tx16$69-Sswspi$swspi_tx16$24
      00264E 01                     840 	.db	1
      00264F 00 00 95 44            841 	.dw	0,(Sswspi$swspi_tx16$24)
      002653 0E                     842 	.db	14
      002654 02                     843 	.uleb128	2
      002655 01                     844 	.db	1
      002656 00 00 95 45            845 	.dw	0,(Sswspi$swspi_tx16$25)
      00265A 0E                     846 	.db	14
      00265B 04                     847 	.uleb128	4
      00265C 01                     848 	.db	1
      00265D 00 00 95 4C            849 	.dw	0,(Sswspi$swspi_tx16$28)
      002661 0E                     850 	.db	14
      002662 05                     851 	.uleb128	5
      002663 01                     852 	.db	1
      002664 00 00 95 4E            853 	.dw	0,(Sswspi$swspi_tx16$29)
      002668 0E                     854 	.db	14
      002669 06                     855 	.uleb128	6
      00266A 01                     856 	.db	1
      00266B 00 00 95 50            857 	.dw	0,(Sswspi$swspi_tx16$30)
      00266F 0E                     858 	.db	14
      002670 07                     859 	.uleb128	7
      002671 01                     860 	.db	1
      002672 00 00 95 55            861 	.dw	0,(Sswspi$swspi_tx16$31)
      002676 0E                     862 	.db	14
      002677 04                     863 	.uleb128	4
      002678 01                     864 	.db	1
      002679 00 00 95 6E            865 	.dw	0,(Sswspi$swspi_tx16$37)
      00267D 0E                     866 	.db	14
      00267E 05                     867 	.uleb128	5
      00267F 01                     868 	.db	1
      002680 00 00 95 70            869 	.dw	0,(Sswspi$swspi_tx16$38)
      002684 0E                     870 	.db	14
      002685 06                     871 	.uleb128	6
      002686 01                     872 	.db	1
      002687 00 00 95 72            873 	.dw	0,(Sswspi$swspi_tx16$39)
      00268B 0E                     874 	.db	14
      00268C 07                     875 	.uleb128	7
      00268D 01                     876 	.db	1
      00268E 00 00 95 77            877 	.dw	0,(Sswspi$swspi_tx16$40)
      002692 0E                     878 	.db	14
      002693 04                     879 	.uleb128	4
      002694 01                     880 	.db	1
      002695 00 00 95 7C            881 	.dw	0,(Sswspi$swspi_tx16$44)
      002699 0E                     882 	.db	14
      00269A 05                     883 	.uleb128	5
      00269B 01                     884 	.db	1
      00269C 00 00 95 7E            885 	.dw	0,(Sswspi$swspi_tx16$45)
      0026A0 0E                     886 	.db	14
      0026A1 06                     887 	.uleb128	6
      0026A2 01                     888 	.db	1
      0026A3 00 00 95 80            889 	.dw	0,(Sswspi$swspi_tx16$46)
      0026A7 0E                     890 	.db	14
      0026A8 07                     891 	.uleb128	7
      0026A9 01                     892 	.db	1
      0026AA 00 00 95 85            893 	.dw	0,(Sswspi$swspi_tx16$47)
      0026AE 0E                     894 	.db	14
      0026AF 04                     895 	.uleb128	4
      0026B0 01                     896 	.db	1
      0026B1 00 00 95 87            897 	.dw	0,(Sswspi$swspi_tx16$50)
      0026B5 0E                     898 	.db	14
      0026B6 05                     899 	.uleb128	5
      0026B7 01                     900 	.db	1
      0026B8 00 00 95 89            901 	.dw	0,(Sswspi$swspi_tx16$51)
      0026BC 0E                     902 	.db	14
      0026BD 06                     903 	.uleb128	6
      0026BE 01                     904 	.db	1
      0026BF 00 00 95 8B            905 	.dw	0,(Sswspi$swspi_tx16$52)
      0026C3 0E                     906 	.db	14
      0026C4 07                     907 	.uleb128	7
      0026C5 01                     908 	.db	1
      0026C6 00 00 95 90            909 	.dw	0,(Sswspi$swspi_tx16$53)
      0026CA 0E                     910 	.db	14
      0026CB 04                     911 	.uleb128	4
      0026CC 01                     912 	.db	1
      0026CD 00 00 95 96            913 	.dw	0,(Sswspi$swspi_tx16$56)
      0026D1 0E                     914 	.db	14
      0026D2 05                     915 	.uleb128	5
      0026D3 01                     916 	.db	1
      0026D4 00 00 95 98            917 	.dw	0,(Sswspi$swspi_tx16$57)
      0026D8 0E                     918 	.db	14
      0026D9 06                     919 	.uleb128	6
      0026DA 01                     920 	.db	1
      0026DB 00 00 95 9A            921 	.dw	0,(Sswspi$swspi_tx16$58)
      0026DF 0E                     922 	.db	14
      0026E0 07                     923 	.uleb128	7
      0026E1 01                     924 	.db	1
      0026E2 00 00 95 9F            925 	.dw	0,(Sswspi$swspi_tx16$59)
      0026E6 0E                     926 	.db	14
      0026E7 04                     927 	.uleb128	4
      0026E8 01                     928 	.db	1
      0026E9 00 00 95 A4            929 	.dw	0,(Sswspi$swspi_tx16$62)
      0026ED 0E                     930 	.db	14
      0026EE 05                     931 	.uleb128	5
      0026EF 01                     932 	.db	1
      0026F0 00 00 95 A6            933 	.dw	0,(Sswspi$swspi_tx16$63)
      0026F4 0E                     934 	.db	14
      0026F5 06                     935 	.uleb128	6
      0026F6 01                     936 	.db	1
      0026F7 00 00 95 A8            937 	.dw	0,(Sswspi$swspi_tx16$64)
      0026FB 0E                     938 	.db	14
      0026FC 07                     939 	.uleb128	7
      0026FD 01                     940 	.db	1
      0026FE 00 00 95 AD            941 	.dw	0,(Sswspi$swspi_tx16$65)
      002702 0E                     942 	.db	14
      002703 04                     943 	.uleb128	4
      002704 01                     944 	.db	1
      002705 00 00 95 AE            945 	.dw	0,(Sswspi$swspi_tx16$67)
      002709 0E                     946 	.db	14
      00270A 02                     947 	.uleb128	2
                                    948 
                                    949 	.area .debug_frame (NOLOAD)
      00270B 00 00                  950 	.dw	0
      00270D 00 0E                  951 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00270F                        952 Ldebug_CIE1_start:
      00270F FF FF                  953 	.dw	0xffff
      002711 FF FF                  954 	.dw	0xffff
      002713 01                     955 	.db	1
      002714 00                     956 	.db	0
      002715 01                     957 	.uleb128	1
      002716 7F                     958 	.sleb128	-1
      002717 09                     959 	.db	9
      002718 0C                     960 	.db	12
      002719 08                     961 	.uleb128	8
      00271A 02                     962 	.uleb128	2
      00271B 89                     963 	.db	137
      00271C 01                     964 	.uleb128	1
      00271D                        965 Ldebug_CIE1_end:
      00271D 00 00 00 7C            966 	.dw	0,124
      002721 00 00 27 0B            967 	.dw	0,(Ldebug_CIE1_start-4)
      002725 00 00 95 1C            968 	.dw	0,(Sswspi$swspi_init$1)	;initial loc
      002729 00 00 00 28            969 	.dw	0,Sswspi$swspi_init$22-Sswspi$swspi_init$1
      00272D 01                     970 	.db	1
      00272E 00 00 95 1C            971 	.dw	0,(Sswspi$swspi_init$1)
      002732 0E                     972 	.db	14
      002733 02                     973 	.uleb128	2
      002734 01                     974 	.db	1
      002735 00 00 95 1E            975 	.dw	0,(Sswspi$swspi_init$3)
      002739 0E                     976 	.db	14
      00273A 03                     977 	.uleb128	3
      00273B 01                     978 	.db	1
      00273C 00 00 95 20            979 	.dw	0,(Sswspi$swspi_init$4)
      002740 0E                     980 	.db	14
      002741 04                     981 	.uleb128	4
      002742 01                     982 	.db	1
      002743 00 00 95 22            983 	.dw	0,(Sswspi$swspi_init$5)
      002747 0E                     984 	.db	14
      002748 05                     985 	.uleb128	5
      002749 01                     986 	.db	1
      00274A 00 00 95 24            987 	.dw	0,(Sswspi$swspi_init$6)
      00274E 0E                     988 	.db	14
      00274F 06                     989 	.uleb128	6
      002750 01                     990 	.db	1
      002751 00 00 95 29            991 	.dw	0,(Sswspi$swspi_init$7)
      002755 0E                     992 	.db	14
      002756 02                     993 	.uleb128	2
      002757 01                     994 	.db	1
      002758 00 00 95 2B            995 	.dw	0,(Sswspi$swspi_init$9)
      00275C 0E                     996 	.db	14
      00275D 03                     997 	.uleb128	3
      00275E 01                     998 	.db	1
      00275F 00 00 95 2D            999 	.dw	0,(Sswspi$swspi_init$10)
      002763 0E                    1000 	.db	14
      002764 04                    1001 	.uleb128	4
      002765 01                    1002 	.db	1
      002766 00 00 95 2F           1003 	.dw	0,(Sswspi$swspi_init$11)
      00276A 0E                    1004 	.db	14
      00276B 05                    1005 	.uleb128	5
      00276C 01                    1006 	.db	1
      00276D 00 00 95 31           1007 	.dw	0,(Sswspi$swspi_init$12)
      002771 0E                    1008 	.db	14
      002772 06                    1009 	.uleb128	6
      002773 01                    1010 	.db	1
      002774 00 00 95 36           1011 	.dw	0,(Sswspi$swspi_init$13)
      002778 0E                    1012 	.db	14
      002779 02                    1013 	.uleb128	2
      00277A 01                    1014 	.db	1
      00277B 00 00 95 38           1015 	.dw	0,(Sswspi$swspi_init$15)
      00277F 0E                    1016 	.db	14
      002780 03                    1017 	.uleb128	3
      002781 01                    1018 	.db	1
      002782 00 00 95 3A           1019 	.dw	0,(Sswspi$swspi_init$16)
      002786 0E                    1020 	.db	14
      002787 04                    1021 	.uleb128	4
      002788 01                    1022 	.db	1
      002789 00 00 95 3C           1023 	.dw	0,(Sswspi$swspi_init$17)
      00278D 0E                    1024 	.db	14
      00278E 05                    1025 	.uleb128	5
      00278F 01                    1026 	.db	1
      002790 00 00 95 3E           1027 	.dw	0,(Sswspi$swspi_init$18)
      002794 0E                    1028 	.db	14
      002795 06                    1029 	.uleb128	6
      002796 01                    1030 	.db	1
      002797 00 00 95 43           1031 	.dw	0,(Sswspi$swspi_init$19)
      00279B 0E                    1032 	.db	14
      00279C 02                    1033 	.uleb128	2
