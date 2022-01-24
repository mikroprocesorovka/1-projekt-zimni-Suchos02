                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_itc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ITC_GetCPUCC
                                     12 	.globl _ITC_DeInit
                                     13 	.globl _ITC_GetSoftIntStatus
                                     14 	.globl _ITC_GetSoftwarePriority
                                     15 	.globl _ITC_SetSoftwarePriority
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
                           000000    53 	Sstm8s_itc$ITC_GetCPUCC$0 ==.
                                     54 ;	../SPL/src/stm8s_itc.c: 50: uint8_t ITC_GetCPUCC(void)
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function ITC_GetCPUCC
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      009C6D                         61 _ITC_GetCPUCC:
                           000000    62 	Sstm8s_itc$ITC_GetCPUCC$1 ==.
                           000000    63 	Sstm8s_itc$ITC_GetCPUCC$2 ==.
                                     64 ;	../SPL/src/stm8s_itc.c: 59: __asm__("push cc");
                                     65 ;	genInline
      009C6D 8A               [ 1]   66 	push	cc
                           000001    67 	Sstm8s_itc$ITC_GetCPUCC$3 ==.
                                     68 ;	../SPL/src/stm8s_itc.c: 60: __asm__("pop a");
                                     69 ;	genInline
      009C6E 84               [ 1]   70 	pop	a
                                     71 ; genLabel
      009C6F                         72 00101$:
                           000002    73 	Sstm8s_itc$ITC_GetCPUCC$4 ==.
                                     74 ;	../SPL/src/stm8s_itc.c: 65: }
                                     75 ; genEndFunction
                           000002    76 	Sstm8s_itc$ITC_GetCPUCC$5 ==.
                           000002    77 	XG$ITC_GetCPUCC$0$0 ==.
      009C6F 81               [ 4]   78 	ret
                           000003    79 	Sstm8s_itc$ITC_GetCPUCC$6 ==.
                           000003    80 	Sstm8s_itc$ITC_DeInit$7 ==.
                                     81 ;	../SPL/src/stm8s_itc.c: 83: void ITC_DeInit(void)
                                     82 ; genLabel
                                     83 ;	-----------------------------------------
                                     84 ;	 function ITC_DeInit
                                     85 ;	-----------------------------------------
                                     86 ;	Register assignment is optimal.
                                     87 ;	Stack space usage: 0 bytes.
      009C70                         88 _ITC_DeInit:
                           000003    89 	Sstm8s_itc$ITC_DeInit$8 ==.
                           000003    90 	Sstm8s_itc$ITC_DeInit$9 ==.
                                     91 ;	../SPL/src/stm8s_itc.c: 85: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
                                     92 ; genPointerSet
      009C70 35 FF 7F 70      [ 1]   93 	mov	0x7f70+0, #0xff
                           000007    94 	Sstm8s_itc$ITC_DeInit$10 ==.
                                     95 ;	../SPL/src/stm8s_itc.c: 86: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
                                     96 ; genPointerSet
      009C74 35 FF 7F 71      [ 1]   97 	mov	0x7f71+0, #0xff
                           00000B    98 	Sstm8s_itc$ITC_DeInit$11 ==.
                                     99 ;	../SPL/src/stm8s_itc.c: 87: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
                                    100 ; genPointerSet
      009C78 35 FF 7F 72      [ 1]  101 	mov	0x7f72+0, #0xff
                           00000F   102 	Sstm8s_itc$ITC_DeInit$12 ==.
                                    103 ;	../SPL/src/stm8s_itc.c: 88: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
                                    104 ; genPointerSet
      009C7C 35 FF 7F 73      [ 1]  105 	mov	0x7f73+0, #0xff
                           000013   106 	Sstm8s_itc$ITC_DeInit$13 ==.
                                    107 ;	../SPL/src/stm8s_itc.c: 89: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
                                    108 ; genPointerSet
      009C80 35 FF 7F 74      [ 1]  109 	mov	0x7f74+0, #0xff
                           000017   110 	Sstm8s_itc$ITC_DeInit$14 ==.
                                    111 ;	../SPL/src/stm8s_itc.c: 90: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
                                    112 ; genPointerSet
      009C84 35 FF 7F 75      [ 1]  113 	mov	0x7f75+0, #0xff
                           00001B   114 	Sstm8s_itc$ITC_DeInit$15 ==.
                                    115 ;	../SPL/src/stm8s_itc.c: 91: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
                                    116 ; genPointerSet
      009C88 35 FF 7F 76      [ 1]  117 	mov	0x7f76+0, #0xff
                           00001F   118 	Sstm8s_itc$ITC_DeInit$16 ==.
                                    119 ;	../SPL/src/stm8s_itc.c: 92: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
                                    120 ; genPointerSet
      009C8C 35 FF 7F 77      [ 1]  121 	mov	0x7f77+0, #0xff
                                    122 ; genLabel
      009C90                        123 00101$:
                           000023   124 	Sstm8s_itc$ITC_DeInit$17 ==.
                                    125 ;	../SPL/src/stm8s_itc.c: 93: }
                                    126 ; genEndFunction
                           000023   127 	Sstm8s_itc$ITC_DeInit$18 ==.
                           000023   128 	XG$ITC_DeInit$0$0 ==.
      009C90 81               [ 4]  129 	ret
                           000024   130 	Sstm8s_itc$ITC_DeInit$19 ==.
                           000024   131 	Sstm8s_itc$ITC_GetSoftIntStatus$20 ==.
                                    132 ;	../SPL/src/stm8s_itc.c: 100: uint8_t ITC_GetSoftIntStatus(void)
                                    133 ; genLabel
                                    134 ;	-----------------------------------------
                                    135 ;	 function ITC_GetSoftIntStatus
                                    136 ;	-----------------------------------------
                                    137 ;	Register assignment is optimal.
                                    138 ;	Stack space usage: 0 bytes.
      009C91                        139 _ITC_GetSoftIntStatus:
                           000024   140 	Sstm8s_itc$ITC_GetSoftIntStatus$21 ==.
                           000024   141 	Sstm8s_itc$ITC_GetSoftIntStatus$22 ==.
                                    142 ;	../SPL/src/stm8s_itc.c: 102: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
                                    143 ; genCall
      009C91 CD 9C 6D         [ 4]  144 	call	_ITC_GetCPUCC
                                    145 ; genAnd
      009C94 A4 28            [ 1]  146 	and	a, #0x28
                                    147 ; genReturn
                                    148 ; genLabel
      009C96                        149 00101$:
                           000029   150 	Sstm8s_itc$ITC_GetSoftIntStatus$23 ==.
                                    151 ;	../SPL/src/stm8s_itc.c: 103: }
                                    152 ; genEndFunction
                           000029   153 	Sstm8s_itc$ITC_GetSoftIntStatus$24 ==.
                           000029   154 	XG$ITC_GetSoftIntStatus$0$0 ==.
      009C96 81               [ 4]  155 	ret
                           00002A   156 	Sstm8s_itc$ITC_GetSoftIntStatus$25 ==.
                           00002A   157 	Sstm8s_itc$ITC_GetSoftwarePriority$26 ==.
                                    158 ;	../SPL/src/stm8s_itc.c: 110: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
                                    159 ; genLabel
                                    160 ;	-----------------------------------------
                                    161 ;	 function ITC_GetSoftwarePriority
                                    162 ;	-----------------------------------------
                                    163 ;	Register assignment might be sub-optimal.
                                    164 ;	Stack space usage: 2 bytes.
      009C97                        165 _ITC_GetSoftwarePriority:
                           00002A   166 	Sstm8s_itc$ITC_GetSoftwarePriority$27 ==.
      009C97 89               [ 2]  167 	pushw	x
                           00002B   168 	Sstm8s_itc$ITC_GetSoftwarePriority$28 ==.
                           00002B   169 	Sstm8s_itc$ITC_GetSoftwarePriority$29 ==.
                                    170 ;	../SPL/src/stm8s_itc.c: 112: uint8_t Value = 0;
                                    171 ; genAssign
      009C98 5F               [ 1]  172 	clrw	x
                           00002C   173 	Sstm8s_itc$ITC_GetSoftwarePriority$30 ==.
                                    174 ;	../SPL/src/stm8s_itc.c: 119: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
                                    175 ; genCast
                                    176 ; genAssign
      009C99 7B 05            [ 1]  177 	ld	a, (0x05, sp)
      009C9B 90 5F            [ 1]  178 	clrw	y
                                    179 ; genAnd
      009C9D A4 03            [ 1]  180 	and	a, #0x03
      009C9F 95               [ 1]  181 	ld	xh, a
      009CA0 4F               [ 1]  182 	clr	a
                                    183 ; genCast
                                    184 ; genAssign
      009CA1 9E               [ 1]  185 	ld	a, xh
                                    186 ; genLeftShiftLiteral
      009CA2 48               [ 1]  187 	sll	a
      009CA3 6B 01            [ 1]  188 	ld	(0x01, sp), a
                                    189 ; genLeftShift
      009CA5 A6 03            [ 1]  190 	ld	a, #0x03
      009CA7 6B 02            [ 1]  191 	ld	(0x02, sp), a
      009CA9 7B 01            [ 1]  192 	ld	a, (0x01, sp)
      009CAB 27 05            [ 1]  193 	jreq	00136$
      009CAD                        194 00135$:
      009CAD 08 02            [ 1]  195 	sll	(0x02, sp)
      009CAF 4A               [ 1]  196 	dec	a
      009CB0 26 FB            [ 1]  197 	jrne	00135$
      009CB2                        198 00136$:
                           000045   199 	Sstm8s_itc$ITC_GetSoftwarePriority$31 ==.
                                    200 ;	../SPL/src/stm8s_itc.c: 121: switch (IrqNum)
                                    201 ; genCmp
                                    202 ; genCmpTop
      009CB2 7B 05            [ 1]  203 	ld	a, (0x05, sp)
      009CB4 A1 18            [ 1]  204 	cp	a, #0x18
      009CB6 23 03            [ 2]  205 	jrule	00137$
      009CB8 CC 9D 32         [ 2]  206 	jp	00127$
      009CBB                        207 00137$:
                                    208 ; skipping generated iCode
                                    209 ; genJumpTab
      009CBB 5F               [ 1]  210 	clrw	x
      009CBC 7B 05            [ 1]  211 	ld	a, (0x05, sp)
      009CBE 97               [ 1]  212 	ld	xl, a
      009CBF 58               [ 2]  213 	sllw	x
      009CC0 DE 9C C4         [ 2]  214 	ldw	x, (#00138$, x)
      009CC3 FC               [ 2]  215 	jp	(x)
      009CC4                        216 00138$:
      009CC4 9C F6                  217 	.dw	#00104$
      009CC6 9C F6                  218 	.dw	#00104$
      009CC8 9C F6                  219 	.dw	#00104$
      009CCA 9C F6                  220 	.dw	#00104$
      009CCC 9C FF                  221 	.dw	#00108$
      009CCE 9C FF                  222 	.dw	#00108$
      009CD0 9C FF                  223 	.dw	#00108$
      009CD2 9C FF                  224 	.dw	#00108$
      009CD4 9D 08                  225 	.dw	#00112$
      009CD6 9D 08                  226 	.dw	#00112$
      009CD8 9D 08                  227 	.dw	#00112$
      009CDA 9D 08                  228 	.dw	#00112$
      009CDC 9D 11                  229 	.dw	#00116$
      009CDE 9D 11                  230 	.dw	#00116$
      009CE0 9D 11                  231 	.dw	#00116$
      009CE2 9D 11                  232 	.dw	#00116$
      009CE4 9D 1A                  233 	.dw	#00120$
      009CE6 9D 1A                  234 	.dw	#00120$
      009CE8 9D 1A                  235 	.dw	#00120$
      009CEA 9D 1A                  236 	.dw	#00120$
      009CEC 9D 23                  237 	.dw	#00124$
      009CEE 9D 23                  238 	.dw	#00124$
      009CF0 9D 23                  239 	.dw	#00124$
      009CF2 9D 23                  240 	.dw	#00124$
      009CF4 9D 2C                  241 	.dw	#00125$
                           000089   242 	Sstm8s_itc$ITC_GetSoftwarePriority$32 ==.
                           000089   243 	Sstm8s_itc$ITC_GetSoftwarePriority$33 ==.
                                    244 ;	../SPL/src/stm8s_itc.c: 126: case ITC_IRQ_PORTA:
                                    245 ; genLabel
      009CF6                        246 00104$:
                           000089   247 	Sstm8s_itc$ITC_GetSoftwarePriority$34 ==.
                                    248 ;	../SPL/src/stm8s_itc.c: 127: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
                                    249 ; genPointerGet
      009CF6 C6 7F 70         [ 1]  250 	ld	a, 0x7f70
                                    251 ; genAnd
      009CF9 14 02            [ 1]  252 	and	a, (0x02, sp)
      009CFB 97               [ 1]  253 	ld	xl, a
                           00008F   254 	Sstm8s_itc$ITC_GetSoftwarePriority$35 ==.
                                    255 ;	../SPL/src/stm8s_itc.c: 128: break;
                                    256 ; genGoto
      009CFC CC 9D 32         [ 2]  257 	jp	00127$
                           000092   258 	Sstm8s_itc$ITC_GetSoftwarePriority$36 ==.
                                    259 ;	../SPL/src/stm8s_itc.c: 133: case ITC_IRQ_PORTE:
                                    260 ; genLabel
      009CFF                        261 00108$:
                           000092   262 	Sstm8s_itc$ITC_GetSoftwarePriority$37 ==.
                                    263 ;	../SPL/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
                                    264 ; genPointerGet
      009CFF C6 7F 71         [ 1]  265 	ld	a, 0x7f71
                                    266 ; genAnd
      009D02 14 02            [ 1]  267 	and	a, (0x02, sp)
      009D04 97               [ 1]  268 	ld	xl, a
                           000098   269 	Sstm8s_itc$ITC_GetSoftwarePriority$38 ==.
                                    270 ;	../SPL/src/stm8s_itc.c: 135: break;
                                    271 ; genGoto
      009D05 CC 9D 32         [ 2]  272 	jp	00127$
                           00009B   273 	Sstm8s_itc$ITC_GetSoftwarePriority$39 ==.
                                    274 ;	../SPL/src/stm8s_itc.c: 145: case ITC_IRQ_TIM1_OVF:
                                    275 ; genLabel
      009D08                        276 00112$:
                           00009B   277 	Sstm8s_itc$ITC_GetSoftwarePriority$40 ==.
                                    278 ;	../SPL/src/stm8s_itc.c: 146: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
                                    279 ; genPointerGet
      009D08 C6 7F 72         [ 1]  280 	ld	a, 0x7f72
                                    281 ; genAnd
      009D0B 14 02            [ 1]  282 	and	a, (0x02, sp)
      009D0D 97               [ 1]  283 	ld	xl, a
                           0000A1   284 	Sstm8s_itc$ITC_GetSoftwarePriority$41 ==.
                                    285 ;	../SPL/src/stm8s_itc.c: 147: break;
                                    286 ; genGoto
      009D0E CC 9D 32         [ 2]  287 	jp	00127$
                           0000A4   288 	Sstm8s_itc$ITC_GetSoftwarePriority$42 ==.
                                    289 ;	../SPL/src/stm8s_itc.c: 157: case ITC_IRQ_TIM3_OVF:
                                    290 ; genLabel
      009D11                        291 00116$:
                           0000A4   292 	Sstm8s_itc$ITC_GetSoftwarePriority$43 ==.
                                    293 ;	../SPL/src/stm8s_itc.c: 158: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
                                    294 ; genPointerGet
      009D11 C6 7F 73         [ 1]  295 	ld	a, 0x7f73
                                    296 ; genAnd
      009D14 14 02            [ 1]  297 	and	a, (0x02, sp)
      009D16 97               [ 1]  298 	ld	xl, a
                           0000AA   299 	Sstm8s_itc$ITC_GetSoftwarePriority$44 ==.
                                    300 ;	../SPL/src/stm8s_itc.c: 159: break;
                                    301 ; genGoto
      009D17 CC 9D 32         [ 2]  302 	jp	00127$
                           0000AD   303 	Sstm8s_itc$ITC_GetSoftwarePriority$45 ==.
                                    304 ;	../SPL/src/stm8s_itc.c: 171: case ITC_IRQ_I2C:
                                    305 ; genLabel
      009D1A                        306 00120$:
                           0000AD   307 	Sstm8s_itc$ITC_GetSoftwarePriority$46 ==.
                                    308 ;	../SPL/src/stm8s_itc.c: 172: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
                                    309 ; genPointerGet
      009D1A C6 7F 74         [ 1]  310 	ld	a, 0x7f74
                                    311 ; genAnd
      009D1D 14 02            [ 1]  312 	and	a, (0x02, sp)
      009D1F 97               [ 1]  313 	ld	xl, a
                           0000B3   314 	Sstm8s_itc$ITC_GetSoftwarePriority$47 ==.
                                    315 ;	../SPL/src/stm8s_itc.c: 173: break;
                                    316 ; genGoto
      009D20 CC 9D 32         [ 2]  317 	jp	00127$
                           0000B6   318 	Sstm8s_itc$ITC_GetSoftwarePriority$48 ==.
                                    319 ;	../SPL/src/stm8s_itc.c: 192: case ITC_IRQ_TIM4_OVF:
                                    320 ; genLabel
      009D23                        321 00124$:
                           0000B6   322 	Sstm8s_itc$ITC_GetSoftwarePriority$49 ==.
                                    323 ;	../SPL/src/stm8s_itc.c: 194: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
                                    324 ; genPointerGet
      009D23 C6 7F 75         [ 1]  325 	ld	a, 0x7f75
                                    326 ; genAnd
      009D26 14 02            [ 1]  327 	and	a, (0x02, sp)
      009D28 97               [ 1]  328 	ld	xl, a
                           0000BC   329 	Sstm8s_itc$ITC_GetSoftwarePriority$50 ==.
                                    330 ;	../SPL/src/stm8s_itc.c: 195: break;
                                    331 ; genGoto
      009D29 CC 9D 32         [ 2]  332 	jp	00127$
                           0000BF   333 	Sstm8s_itc$ITC_GetSoftwarePriority$51 ==.
                                    334 ;	../SPL/src/stm8s_itc.c: 197: case ITC_IRQ_EEPROM_EEC:
                                    335 ; genLabel
      009D2C                        336 00125$:
                           0000BF   337 	Sstm8s_itc$ITC_GetSoftwarePriority$52 ==.
                                    338 ;	../SPL/src/stm8s_itc.c: 198: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
                                    339 ; genPointerGet
      009D2C C6 7F 76         [ 1]  340 	ld	a, 0x7f76
                                    341 ; genAnd
      009D2F 14 02            [ 1]  342 	and	a, (0x02, sp)
      009D31 97               [ 1]  343 	ld	xl, a
                           0000C5   344 	Sstm8s_itc$ITC_GetSoftwarePriority$53 ==.
                           0000C5   345 	Sstm8s_itc$ITC_GetSoftwarePriority$54 ==.
                                    346 ;	../SPL/src/stm8s_itc.c: 203: }
                                    347 ; genLabel
      009D32                        348 00127$:
                           0000C5   349 	Sstm8s_itc$ITC_GetSoftwarePriority$55 ==.
                                    350 ;	../SPL/src/stm8s_itc.c: 205: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
                                    351 ; genRightShift
      009D32 7B 01            [ 1]  352 	ld	a, (0x01, sp)
      009D34 27 06            [ 1]  353 	jreq	00140$
      009D36                        354 00139$:
      009D36 41               [ 1]  355 	exg	a, xl
      009D37 44               [ 1]  356 	srl	a
      009D38 41               [ 1]  357 	exg	a, xl
      009D39 4A               [ 1]  358 	dec	a
      009D3A 26 FA            [ 1]  359 	jrne	00139$
      009D3C                        360 00140$:
                                    361 ; genAssign
      009D3C 9F               [ 1]  362 	ld	a, xl
                           0000D0   363 	Sstm8s_itc$ITC_GetSoftwarePriority$56 ==.
                                    364 ;	../SPL/src/stm8s_itc.c: 207: return((ITC_PriorityLevel_TypeDef)Value);
                                    365 ; genReturn
                                    366 ; genLabel
      009D3D                        367 00128$:
                           0000D0   368 	Sstm8s_itc$ITC_GetSoftwarePriority$57 ==.
                                    369 ;	../SPL/src/stm8s_itc.c: 208: }
                                    370 ; genEndFunction
      009D3D 85               [ 2]  371 	popw	x
                           0000D1   372 	Sstm8s_itc$ITC_GetSoftwarePriority$58 ==.
                           0000D1   373 	Sstm8s_itc$ITC_GetSoftwarePriority$59 ==.
                           0000D1   374 	XG$ITC_GetSoftwarePriority$0$0 ==.
      009D3E 81               [ 4]  375 	ret
                           0000D2   376 	Sstm8s_itc$ITC_GetSoftwarePriority$60 ==.
                           0000D2   377 	Sstm8s_itc$ITC_SetSoftwarePriority$61 ==.
                                    378 ;	../SPL/src/stm8s_itc.c: 223: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
                                    379 ; genLabel
                                    380 ;	-----------------------------------------
                                    381 ;	 function ITC_SetSoftwarePriority
                                    382 ;	-----------------------------------------
                                    383 ;	Register assignment might be sub-optimal.
                                    384 ;	Stack space usage: 2 bytes.
      009D3F                        385 _ITC_SetSoftwarePriority:
                           0000D2   386 	Sstm8s_itc$ITC_SetSoftwarePriority$62 ==.
      009D3F 89               [ 2]  387 	pushw	x
                           0000D3   388 	Sstm8s_itc$ITC_SetSoftwarePriority$63 ==.
                           0000D3   389 	Sstm8s_itc$ITC_SetSoftwarePriority$64 ==.
                                    390 ;	../SPL/src/stm8s_itc.c: 237: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
                                    391 ; genCast
                                    392 ; genAssign
      009D40 7B 05            [ 1]  393 	ld	a, (0x05, sp)
      009D42 5F               [ 1]  394 	clrw	x
                                    395 ; genAnd
      009D43 A4 03            [ 1]  396 	and	a, #0x03
      009D45 97               [ 1]  397 	ld	xl, a
      009D46 4F               [ 1]  398 	clr	a
                                    399 ; genCast
                                    400 ; genAssign
                                    401 ; genLeftShiftLiteral
      009D47 58               [ 2]  402 	sllw	x
                                    403 ; genLeftShift
      009D48 A6 03            [ 1]  404 	ld	a, #0x03
      009D4A 88               [ 1]  405 	push	a
                           0000DE   406 	Sstm8s_itc$ITC_SetSoftwarePriority$65 ==.
      009D4B 9F               [ 1]  407 	ld	a, xl
      009D4C 4D               [ 1]  408 	tnz	a
      009D4D 27 05            [ 1]  409 	jreq	00136$
      009D4F                        410 00135$:
      009D4F 08 01            [ 1]  411 	sll	(1, sp)
      009D51 4A               [ 1]  412 	dec	a
      009D52 26 FB            [ 1]  413 	jrne	00135$
      009D54                        414 00136$:
      009D54 84               [ 1]  415 	pop	a
                           0000E8   416 	Sstm8s_itc$ITC_SetSoftwarePriority$66 ==.
                                    417 ; genCpl
      009D55 43               [ 1]  418 	cpl	a
                                    419 ; genAssign
      009D56 6B 01            [ 1]  420 	ld	(0x01, sp), a
                           0000EB   421 	Sstm8s_itc$ITC_SetSoftwarePriority$67 ==.
                                    422 ;	../SPL/src/stm8s_itc.c: 240: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
                                    423 ; genLeftShift
      009D58 7B 06            [ 1]  424 	ld	a, (0x06, sp)
      009D5A 88               [ 1]  425 	push	a
                           0000EE   426 	Sstm8s_itc$ITC_SetSoftwarePriority$68 ==.
      009D5B 9F               [ 1]  427 	ld	a, xl
      009D5C 4D               [ 1]  428 	tnz	a
      009D5D 27 05            [ 1]  429 	jreq	00138$
      009D5F                        430 00137$:
      009D5F 08 01            [ 1]  431 	sll	(1, sp)
      009D61 4A               [ 1]  432 	dec	a
      009D62 26 FB            [ 1]  433 	jrne	00137$
      009D64                        434 00138$:
      009D64 84               [ 1]  435 	pop	a
                           0000F8   436 	Sstm8s_itc$ITC_SetSoftwarePriority$69 ==.
                                    437 ; genAssign
      009D65 6B 02            [ 1]  438 	ld	(0x02, sp), a
                           0000FA   439 	Sstm8s_itc$ITC_SetSoftwarePriority$70 ==.
                                    440 ;	../SPL/src/stm8s_itc.c: 242: switch (IrqNum)
                                    441 ; genCmp
                                    442 ; genCmpTop
      009D67 7B 05            [ 1]  443 	ld	a, (0x05, sp)
      009D69 A1 18            [ 1]  444 	cp	a, #0x18
      009D6B 23 03            [ 2]  445 	jrule	00139$
      009D6D CC 9E 2D         [ 2]  446 	jp	00128$
      009D70                        447 00139$:
                                    448 ; skipping generated iCode
                                    449 ; genJumpTab
      009D70 5F               [ 1]  450 	clrw	x
      009D71 7B 05            [ 1]  451 	ld	a, (0x05, sp)
      009D73 97               [ 1]  452 	ld	xl, a
      009D74 58               [ 2]  453 	sllw	x
      009D75 DE 9D 79         [ 2]  454 	ldw	x, (#00140$, x)
      009D78 FC               [ 2]  455 	jp	(x)
      009D79                        456 00140$:
      009D79 9D AB                  457 	.dw	#00104$
      009D7B 9D AB                  458 	.dw	#00104$
      009D7D 9D AB                  459 	.dw	#00104$
      009D7F 9D AB                  460 	.dw	#00104$
      009D81 9D BE                  461 	.dw	#00108$
      009D83 9D BE                  462 	.dw	#00108$
      009D85 9D BE                  463 	.dw	#00108$
      009D87 9D BE                  464 	.dw	#00108$
      009D89 9D D1                  465 	.dw	#00112$
      009D8B 9D D1                  466 	.dw	#00112$
      009D8D 9D D1                  467 	.dw	#00112$
      009D8F 9D D1                  468 	.dw	#00112$
      009D91 9D E4                  469 	.dw	#00116$
      009D93 9D E4                  470 	.dw	#00116$
      009D95 9D E4                  471 	.dw	#00116$
      009D97 9D E4                  472 	.dw	#00116$
      009D99 9D F7                  473 	.dw	#00120$
      009D9B 9D F7                  474 	.dw	#00120$
      009D9D 9D F7                  475 	.dw	#00120$
      009D9F 9D F7                  476 	.dw	#00120$
      009DA1 9E 0A                  477 	.dw	#00124$
      009DA3 9E 0A                  478 	.dw	#00124$
      009DA5 9E 0A                  479 	.dw	#00124$
      009DA7 9E 0A                  480 	.dw	#00124$
      009DA9 9E 1D                  481 	.dw	#00125$
                           00013E   482 	Sstm8s_itc$ITC_SetSoftwarePriority$71 ==.
                           00013E   483 	Sstm8s_itc$ITC_SetSoftwarePriority$72 ==.
                                    484 ;	../SPL/src/stm8s_itc.c: 247: case ITC_IRQ_PORTA:
                                    485 ; genLabel
      009DAB                        486 00104$:
                           00013E   487 	Sstm8s_itc$ITC_SetSoftwarePriority$73 ==.
                                    488 ;	../SPL/src/stm8s_itc.c: 248: ITC->ISPR1 &= Mask;
                                    489 ; genPointerGet
      009DAB C6 7F 70         [ 1]  490 	ld	a, 0x7f70
                                    491 ; genAnd
      009DAE 14 01            [ 1]  492 	and	a, (0x01, sp)
                                    493 ; genPointerSet
      009DB0 C7 7F 70         [ 1]  494 	ld	0x7f70, a
                           000146   495 	Sstm8s_itc$ITC_SetSoftwarePriority$74 ==.
                                    496 ;	../SPL/src/stm8s_itc.c: 249: ITC->ISPR1 |= NewPriority;
                                    497 ; genPointerGet
      009DB3 C6 7F 70         [ 1]  498 	ld	a, 0x7f70
                                    499 ; genOr
      009DB6 1A 02            [ 1]  500 	or	a, (0x02, sp)
                                    501 ; genPointerSet
      009DB8 C7 7F 70         [ 1]  502 	ld	0x7f70, a
                           00014E   503 	Sstm8s_itc$ITC_SetSoftwarePriority$75 ==.
                                    504 ;	../SPL/src/stm8s_itc.c: 250: break;
                                    505 ; genGoto
      009DBB CC 9E 2D         [ 2]  506 	jp	00128$
                           000151   507 	Sstm8s_itc$ITC_SetSoftwarePriority$76 ==.
                                    508 ;	../SPL/src/stm8s_itc.c: 255: case ITC_IRQ_PORTE:
                                    509 ; genLabel
      009DBE                        510 00108$:
                           000151   511 	Sstm8s_itc$ITC_SetSoftwarePriority$77 ==.
                                    512 ;	../SPL/src/stm8s_itc.c: 256: ITC->ISPR2 &= Mask;
                                    513 ; genPointerGet
      009DBE C6 7F 71         [ 1]  514 	ld	a, 0x7f71
                                    515 ; genAnd
      009DC1 14 01            [ 1]  516 	and	a, (0x01, sp)
                                    517 ; genPointerSet
      009DC3 C7 7F 71         [ 1]  518 	ld	0x7f71, a
                           000159   519 	Sstm8s_itc$ITC_SetSoftwarePriority$78 ==.
                                    520 ;	../SPL/src/stm8s_itc.c: 257: ITC->ISPR2 |= NewPriority;
                                    521 ; genPointerGet
      009DC6 C6 7F 71         [ 1]  522 	ld	a, 0x7f71
                                    523 ; genOr
      009DC9 1A 02            [ 1]  524 	or	a, (0x02, sp)
                                    525 ; genPointerSet
      009DCB C7 7F 71         [ 1]  526 	ld	0x7f71, a
                           000161   527 	Sstm8s_itc$ITC_SetSoftwarePriority$79 ==.
                                    528 ;	../SPL/src/stm8s_itc.c: 258: break;
                                    529 ; genGoto
      009DCE CC 9E 2D         [ 2]  530 	jp	00128$
                           000164   531 	Sstm8s_itc$ITC_SetSoftwarePriority$80 ==.
                                    532 ;	../SPL/src/stm8s_itc.c: 268: case ITC_IRQ_TIM1_OVF:
                                    533 ; genLabel
      009DD1                        534 00112$:
                           000164   535 	Sstm8s_itc$ITC_SetSoftwarePriority$81 ==.
                                    536 ;	../SPL/src/stm8s_itc.c: 269: ITC->ISPR3 &= Mask;
                                    537 ; genPointerGet
      009DD1 C6 7F 72         [ 1]  538 	ld	a, 0x7f72
                                    539 ; genAnd
      009DD4 14 01            [ 1]  540 	and	a, (0x01, sp)
                                    541 ; genPointerSet
      009DD6 C7 7F 72         [ 1]  542 	ld	0x7f72, a
                           00016C   543 	Sstm8s_itc$ITC_SetSoftwarePriority$82 ==.
                                    544 ;	../SPL/src/stm8s_itc.c: 270: ITC->ISPR3 |= NewPriority;
                                    545 ; genPointerGet
      009DD9 C6 7F 72         [ 1]  546 	ld	a, 0x7f72
                                    547 ; genOr
      009DDC 1A 02            [ 1]  548 	or	a, (0x02, sp)
                                    549 ; genPointerSet
      009DDE C7 7F 72         [ 1]  550 	ld	0x7f72, a
                           000174   551 	Sstm8s_itc$ITC_SetSoftwarePriority$83 ==.
                                    552 ;	../SPL/src/stm8s_itc.c: 271: break;
                                    553 ; genGoto
      009DE1 CC 9E 2D         [ 2]  554 	jp	00128$
                           000177   555 	Sstm8s_itc$ITC_SetSoftwarePriority$84 ==.
                                    556 ;	../SPL/src/stm8s_itc.c: 281: case ITC_IRQ_TIM3_OVF:
                                    557 ; genLabel
      009DE4                        558 00116$:
                           000177   559 	Sstm8s_itc$ITC_SetSoftwarePriority$85 ==.
                                    560 ;	../SPL/src/stm8s_itc.c: 282: ITC->ISPR4 &= Mask;
                                    561 ; genPointerGet
      009DE4 C6 7F 73         [ 1]  562 	ld	a, 0x7f73
                                    563 ; genAnd
      009DE7 14 01            [ 1]  564 	and	a, (0x01, sp)
                                    565 ; genPointerSet
      009DE9 C7 7F 73         [ 1]  566 	ld	0x7f73, a
                           00017F   567 	Sstm8s_itc$ITC_SetSoftwarePriority$86 ==.
                                    568 ;	../SPL/src/stm8s_itc.c: 283: ITC->ISPR4 |= NewPriority;
                                    569 ; genPointerGet
      009DEC C6 7F 73         [ 1]  570 	ld	a, 0x7f73
                                    571 ; genOr
      009DEF 1A 02            [ 1]  572 	or	a, (0x02, sp)
                                    573 ; genPointerSet
      009DF1 C7 7F 73         [ 1]  574 	ld	0x7f73, a
                           000187   575 	Sstm8s_itc$ITC_SetSoftwarePriority$87 ==.
                                    576 ;	../SPL/src/stm8s_itc.c: 284: break;
                                    577 ; genGoto
      009DF4 CC 9E 2D         [ 2]  578 	jp	00128$
                           00018A   579 	Sstm8s_itc$ITC_SetSoftwarePriority$88 ==.
                                    580 ;	../SPL/src/stm8s_itc.c: 296: case ITC_IRQ_I2C:
                                    581 ; genLabel
      009DF7                        582 00120$:
                           00018A   583 	Sstm8s_itc$ITC_SetSoftwarePriority$89 ==.
                                    584 ;	../SPL/src/stm8s_itc.c: 297: ITC->ISPR5 &= Mask;
                                    585 ; genPointerGet
      009DF7 C6 7F 74         [ 1]  586 	ld	a, 0x7f74
                                    587 ; genAnd
      009DFA 14 01            [ 1]  588 	and	a, (0x01, sp)
                                    589 ; genPointerSet
      009DFC C7 7F 74         [ 1]  590 	ld	0x7f74, a
                           000192   591 	Sstm8s_itc$ITC_SetSoftwarePriority$90 ==.
                                    592 ;	../SPL/src/stm8s_itc.c: 298: ITC->ISPR5 |= NewPriority;
                                    593 ; genPointerGet
      009DFF C6 7F 74         [ 1]  594 	ld	a, 0x7f74
                                    595 ; genOr
      009E02 1A 02            [ 1]  596 	or	a, (0x02, sp)
                                    597 ; genPointerSet
      009E04 C7 7F 74         [ 1]  598 	ld	0x7f74, a
                           00019A   599 	Sstm8s_itc$ITC_SetSoftwarePriority$91 ==.
                                    600 ;	../SPL/src/stm8s_itc.c: 299: break;
                                    601 ; genGoto
      009E07 CC 9E 2D         [ 2]  602 	jp	00128$
                           00019D   603 	Sstm8s_itc$ITC_SetSoftwarePriority$92 ==.
                                    604 ;	../SPL/src/stm8s_itc.c: 321: case ITC_IRQ_TIM4_OVF:
                                    605 ; genLabel
      009E0A                        606 00124$:
                           00019D   607 	Sstm8s_itc$ITC_SetSoftwarePriority$93 ==.
                                    608 ;	../SPL/src/stm8s_itc.c: 323: ITC->ISPR6 &= Mask;
                                    609 ; genPointerGet
      009E0A C6 7F 75         [ 1]  610 	ld	a, 0x7f75
                                    611 ; genAnd
      009E0D 14 01            [ 1]  612 	and	a, (0x01, sp)
                                    613 ; genPointerSet
      009E0F C7 7F 75         [ 1]  614 	ld	0x7f75, a
                           0001A5   615 	Sstm8s_itc$ITC_SetSoftwarePriority$94 ==.
                                    616 ;	../SPL/src/stm8s_itc.c: 324: ITC->ISPR6 |= NewPriority;
                                    617 ; genPointerGet
      009E12 C6 7F 75         [ 1]  618 	ld	a, 0x7f75
                                    619 ; genOr
      009E15 1A 02            [ 1]  620 	or	a, (0x02, sp)
                                    621 ; genPointerSet
      009E17 C7 7F 75         [ 1]  622 	ld	0x7f75, a
                           0001AD   623 	Sstm8s_itc$ITC_SetSoftwarePriority$95 ==.
                                    624 ;	../SPL/src/stm8s_itc.c: 325: break;
                                    625 ; genGoto
      009E1A CC 9E 2D         [ 2]  626 	jp	00128$
                           0001B0   627 	Sstm8s_itc$ITC_SetSoftwarePriority$96 ==.
                                    628 ;	../SPL/src/stm8s_itc.c: 327: case ITC_IRQ_EEPROM_EEC:
                                    629 ; genLabel
      009E1D                        630 00125$:
                           0001B0   631 	Sstm8s_itc$ITC_SetSoftwarePriority$97 ==.
                                    632 ;	../SPL/src/stm8s_itc.c: 328: ITC->ISPR7 &= Mask;
                                    633 ; genPointerGet
      009E1D C6 7F 76         [ 1]  634 	ld	a, 0x7f76
                                    635 ; genAnd
      009E20 14 01            [ 1]  636 	and	a, (0x01, sp)
                                    637 ; genPointerSet
      009E22 C7 7F 76         [ 1]  638 	ld	0x7f76, a
                           0001B8   639 	Sstm8s_itc$ITC_SetSoftwarePriority$98 ==.
                                    640 ;	../SPL/src/stm8s_itc.c: 329: ITC->ISPR7 |= NewPriority;
                                    641 ; genPointerGet
      009E25 C6 7F 76         [ 1]  642 	ld	a, 0x7f76
                                    643 ; genOr
      009E28 1A 02            [ 1]  644 	or	a, (0x02, sp)
                                    645 ; genPointerSet
      009E2A C7 7F 76         [ 1]  646 	ld	0x7f76, a
                           0001C0   647 	Sstm8s_itc$ITC_SetSoftwarePriority$99 ==.
                           0001C0   648 	Sstm8s_itc$ITC_SetSoftwarePriority$100 ==.
                                    649 ;	../SPL/src/stm8s_itc.c: 334: }
                                    650 ; genLabel
      009E2D                        651 00128$:
                           0001C0   652 	Sstm8s_itc$ITC_SetSoftwarePriority$101 ==.
                                    653 ;	../SPL/src/stm8s_itc.c: 335: }
                                    654 ; genEndFunction
      009E2D 85               [ 2]  655 	popw	x
                           0001C1   656 	Sstm8s_itc$ITC_SetSoftwarePriority$102 ==.
                           0001C1   657 	Sstm8s_itc$ITC_SetSoftwarePriority$103 ==.
                           0001C1   658 	XG$ITC_SetSoftwarePriority$0$0 ==.
      009E2E 81               [ 4]  659 	ret
                           0001C2   660 	Sstm8s_itc$ITC_SetSoftwarePriority$104 ==.
                                    661 	.area CODE
                                    662 	.area CONST
                                    663 	.area INITIALIZER
                                    664 	.area CABS (ABS)
                                    665 
                                    666 	.area .debug_line (NOLOAD)
      002479 00 00 02 87            667 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00247D                        668 Ldebug_line_start:
      00247D 00 02                  669 	.dw	2
      00247F 00 00 00 77            670 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      002483 01                     671 	.db	1
      002484 01                     672 	.db	1
      002485 FB                     673 	.db	-5
      002486 0F                     674 	.db	15
      002487 0A                     675 	.db	10
      002488 00                     676 	.db	0
      002489 01                     677 	.db	1
      00248A 01                     678 	.db	1
      00248B 01                     679 	.db	1
      00248C 01                     680 	.db	1
      00248D 00                     681 	.db	0
      00248E 00                     682 	.db	0
      00248F 00                     683 	.db	0
      002490 01                     684 	.db	1
      002491 43 3A 5C 50 72 6F 67   685 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0024B9 00                     686 	.db	0
      0024BA 43 3A 5C 50 72 6F 67   687 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0024DD 00                     688 	.db	0
      0024DE 00                     689 	.db	0
      0024DF 2E 2E 2F 53 50 4C 2F   690 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      0024F5 00                     691 	.db	0
      0024F6 00                     692 	.uleb128	0
      0024F7 00                     693 	.uleb128	0
      0024F8 00                     694 	.uleb128	0
      0024F9 00                     695 	.db	0
      0024FA                        696 Ldebug_line_stmt:
      0024FA 00                     697 	.db	0
      0024FB 05                     698 	.uleb128	5
      0024FC 02                     699 	.db	2
      0024FD 00 00 9C 6D            700 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$0)
      002501 03                     701 	.db	3
      002502 31                     702 	.sleb128	49
      002503 01                     703 	.db	1
      002504 09                     704 	.db	9
      002505 00 00                  705 	.dw	Sstm8s_itc$ITC_GetCPUCC$2-Sstm8s_itc$ITC_GetCPUCC$0
      002507 03                     706 	.db	3
      002508 09                     707 	.sleb128	9
      002509 01                     708 	.db	1
      00250A 09                     709 	.db	9
      00250B 00 01                  710 	.dw	Sstm8s_itc$ITC_GetCPUCC$3-Sstm8s_itc$ITC_GetCPUCC$2
      00250D 03                     711 	.db	3
      00250E 01                     712 	.sleb128	1
      00250F 01                     713 	.db	1
      002510 09                     714 	.db	9
      002511 00 01                  715 	.dw	Sstm8s_itc$ITC_GetCPUCC$4-Sstm8s_itc$ITC_GetCPUCC$3
      002513 03                     716 	.db	3
      002514 05                     717 	.sleb128	5
      002515 01                     718 	.db	1
      002516 09                     719 	.db	9
      002517 00 01                  720 	.dw	1+Sstm8s_itc$ITC_GetCPUCC$5-Sstm8s_itc$ITC_GetCPUCC$4
      002519 00                     721 	.db	0
      00251A 01                     722 	.uleb128	1
      00251B 01                     723 	.db	1
      00251C 00                     724 	.db	0
      00251D 05                     725 	.uleb128	5
      00251E 02                     726 	.db	2
      00251F 00 00 9C 70            727 	.dw	0,(Sstm8s_itc$ITC_DeInit$7)
      002523 03                     728 	.db	3
      002524 D2 00                  729 	.sleb128	82
      002526 01                     730 	.db	1
      002527 09                     731 	.db	9
      002528 00 00                  732 	.dw	Sstm8s_itc$ITC_DeInit$9-Sstm8s_itc$ITC_DeInit$7
      00252A 03                     733 	.db	3
      00252B 02                     734 	.sleb128	2
      00252C 01                     735 	.db	1
      00252D 09                     736 	.db	9
      00252E 00 04                  737 	.dw	Sstm8s_itc$ITC_DeInit$10-Sstm8s_itc$ITC_DeInit$9
      002530 03                     738 	.db	3
      002531 01                     739 	.sleb128	1
      002532 01                     740 	.db	1
      002533 09                     741 	.db	9
      002534 00 04                  742 	.dw	Sstm8s_itc$ITC_DeInit$11-Sstm8s_itc$ITC_DeInit$10
      002536 03                     743 	.db	3
      002537 01                     744 	.sleb128	1
      002538 01                     745 	.db	1
      002539 09                     746 	.db	9
      00253A 00 04                  747 	.dw	Sstm8s_itc$ITC_DeInit$12-Sstm8s_itc$ITC_DeInit$11
      00253C 03                     748 	.db	3
      00253D 01                     749 	.sleb128	1
      00253E 01                     750 	.db	1
      00253F 09                     751 	.db	9
      002540 00 04                  752 	.dw	Sstm8s_itc$ITC_DeInit$13-Sstm8s_itc$ITC_DeInit$12
      002542 03                     753 	.db	3
      002543 01                     754 	.sleb128	1
      002544 01                     755 	.db	1
      002545 09                     756 	.db	9
      002546 00 04                  757 	.dw	Sstm8s_itc$ITC_DeInit$14-Sstm8s_itc$ITC_DeInit$13
      002548 03                     758 	.db	3
      002549 01                     759 	.sleb128	1
      00254A 01                     760 	.db	1
      00254B 09                     761 	.db	9
      00254C 00 04                  762 	.dw	Sstm8s_itc$ITC_DeInit$15-Sstm8s_itc$ITC_DeInit$14
      00254E 03                     763 	.db	3
      00254F 01                     764 	.sleb128	1
      002550 01                     765 	.db	1
      002551 09                     766 	.db	9
      002552 00 04                  767 	.dw	Sstm8s_itc$ITC_DeInit$16-Sstm8s_itc$ITC_DeInit$15
      002554 03                     768 	.db	3
      002555 01                     769 	.sleb128	1
      002556 01                     770 	.db	1
      002557 09                     771 	.db	9
      002558 00 04                  772 	.dw	Sstm8s_itc$ITC_DeInit$17-Sstm8s_itc$ITC_DeInit$16
      00255A 03                     773 	.db	3
      00255B 01                     774 	.sleb128	1
      00255C 01                     775 	.db	1
      00255D 09                     776 	.db	9
      00255E 00 01                  777 	.dw	1+Sstm8s_itc$ITC_DeInit$18-Sstm8s_itc$ITC_DeInit$17
      002560 00                     778 	.db	0
      002561 01                     779 	.uleb128	1
      002562 01                     780 	.db	1
      002563 00                     781 	.db	0
      002564 05                     782 	.uleb128	5
      002565 02                     783 	.db	2
      002566 00 00 9C 91            784 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$20)
      00256A 03                     785 	.db	3
      00256B E3 00                  786 	.sleb128	99
      00256D 01                     787 	.db	1
      00256E 09                     788 	.db	9
      00256F 00 00                  789 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$22-Sstm8s_itc$ITC_GetSoftIntStatus$20
      002571 03                     790 	.db	3
      002572 02                     791 	.sleb128	2
      002573 01                     792 	.db	1
      002574 09                     793 	.db	9
      002575 00 05                  794 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$23-Sstm8s_itc$ITC_GetSoftIntStatus$22
      002577 03                     795 	.db	3
      002578 01                     796 	.sleb128	1
      002579 01                     797 	.db	1
      00257A 09                     798 	.db	9
      00257B 00 01                  799 	.dw	1+Sstm8s_itc$ITC_GetSoftIntStatus$24-Sstm8s_itc$ITC_GetSoftIntStatus$23
      00257D 00                     800 	.db	0
      00257E 01                     801 	.uleb128	1
      00257F 01                     802 	.db	1
      002580 00                     803 	.db	0
      002581 05                     804 	.uleb128	5
      002582 02                     805 	.db	2
      002583 00 00 9C 97            806 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$26)
      002587 03                     807 	.db	3
      002588 ED 00                  808 	.sleb128	109
      00258A 01                     809 	.db	1
      00258B 09                     810 	.db	9
      00258C 00 01                  811 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$29-Sstm8s_itc$ITC_GetSoftwarePriority$26
      00258E 03                     812 	.db	3
      00258F 02                     813 	.sleb128	2
      002590 01                     814 	.db	1
      002591 09                     815 	.db	9
      002592 00 01                  816 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$30-Sstm8s_itc$ITC_GetSoftwarePriority$29
      002594 03                     817 	.db	3
      002595 07                     818 	.sleb128	7
      002596 01                     819 	.db	1
      002597 09                     820 	.db	9
      002598 00 19                  821 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$31-Sstm8s_itc$ITC_GetSoftwarePriority$30
      00259A 03                     822 	.db	3
      00259B 02                     823 	.sleb128	2
      00259C 01                     824 	.db	1
      00259D 09                     825 	.db	9
      00259E 00 44                  826 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$33-Sstm8s_itc$ITC_GetSoftwarePriority$31
      0025A0 03                     827 	.db	3
      0025A1 05                     828 	.sleb128	5
      0025A2 01                     829 	.db	1
      0025A3 09                     830 	.db	9
      0025A4 00 00                  831 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$34-Sstm8s_itc$ITC_GetSoftwarePriority$33
      0025A6 03                     832 	.db	3
      0025A7 01                     833 	.sleb128	1
      0025A8 01                     834 	.db	1
      0025A9 09                     835 	.db	9
      0025AA 00 06                  836 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$35-Sstm8s_itc$ITC_GetSoftwarePriority$34
      0025AC 03                     837 	.db	3
      0025AD 01                     838 	.sleb128	1
      0025AE 01                     839 	.db	1
      0025AF 09                     840 	.db	9
      0025B0 00 03                  841 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$36-Sstm8s_itc$ITC_GetSoftwarePriority$35
      0025B2 03                     842 	.db	3
      0025B3 05                     843 	.sleb128	5
      0025B4 01                     844 	.db	1
      0025B5 09                     845 	.db	9
      0025B6 00 00                  846 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$37-Sstm8s_itc$ITC_GetSoftwarePriority$36
      0025B8 03                     847 	.db	3
      0025B9 01                     848 	.sleb128	1
      0025BA 01                     849 	.db	1
      0025BB 09                     850 	.db	9
      0025BC 00 06                  851 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$38-Sstm8s_itc$ITC_GetSoftwarePriority$37
      0025BE 03                     852 	.db	3
      0025BF 01                     853 	.sleb128	1
      0025C0 01                     854 	.db	1
      0025C1 09                     855 	.db	9
      0025C2 00 03                  856 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$39-Sstm8s_itc$ITC_GetSoftwarePriority$38
      0025C4 03                     857 	.db	3
      0025C5 0A                     858 	.sleb128	10
      0025C6 01                     859 	.db	1
      0025C7 09                     860 	.db	9
      0025C8 00 00                  861 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$40-Sstm8s_itc$ITC_GetSoftwarePriority$39
      0025CA 03                     862 	.db	3
      0025CB 01                     863 	.sleb128	1
      0025CC 01                     864 	.db	1
      0025CD 09                     865 	.db	9
      0025CE 00 06                  866 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$41-Sstm8s_itc$ITC_GetSoftwarePriority$40
      0025D0 03                     867 	.db	3
      0025D1 01                     868 	.sleb128	1
      0025D2 01                     869 	.db	1
      0025D3 09                     870 	.db	9
      0025D4 00 03                  871 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$42-Sstm8s_itc$ITC_GetSoftwarePriority$41
      0025D6 03                     872 	.db	3
      0025D7 0A                     873 	.sleb128	10
      0025D8 01                     874 	.db	1
      0025D9 09                     875 	.db	9
      0025DA 00 00                  876 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$43-Sstm8s_itc$ITC_GetSoftwarePriority$42
      0025DC 03                     877 	.db	3
      0025DD 01                     878 	.sleb128	1
      0025DE 01                     879 	.db	1
      0025DF 09                     880 	.db	9
      0025E0 00 06                  881 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$44-Sstm8s_itc$ITC_GetSoftwarePriority$43
      0025E2 03                     882 	.db	3
      0025E3 01                     883 	.sleb128	1
      0025E4 01                     884 	.db	1
      0025E5 09                     885 	.db	9
      0025E6 00 03                  886 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$45-Sstm8s_itc$ITC_GetSoftwarePriority$44
      0025E8 03                     887 	.db	3
      0025E9 0C                     888 	.sleb128	12
      0025EA 01                     889 	.db	1
      0025EB 09                     890 	.db	9
      0025EC 00 00                  891 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$46-Sstm8s_itc$ITC_GetSoftwarePriority$45
      0025EE 03                     892 	.db	3
      0025EF 01                     893 	.sleb128	1
      0025F0 01                     894 	.db	1
      0025F1 09                     895 	.db	9
      0025F2 00 06                  896 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$47-Sstm8s_itc$ITC_GetSoftwarePriority$46
      0025F4 03                     897 	.db	3
      0025F5 01                     898 	.sleb128	1
      0025F6 01                     899 	.db	1
      0025F7 09                     900 	.db	9
      0025F8 00 03                  901 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$48-Sstm8s_itc$ITC_GetSoftwarePriority$47
      0025FA 03                     902 	.db	3
      0025FB 13                     903 	.sleb128	19
      0025FC 01                     904 	.db	1
      0025FD 09                     905 	.db	9
      0025FE 00 00                  906 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$49-Sstm8s_itc$ITC_GetSoftwarePriority$48
      002600 03                     907 	.db	3
      002601 02                     908 	.sleb128	2
      002602 01                     909 	.db	1
      002603 09                     910 	.db	9
      002604 00 06                  911 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$50-Sstm8s_itc$ITC_GetSoftwarePriority$49
      002606 03                     912 	.db	3
      002607 01                     913 	.sleb128	1
      002608 01                     914 	.db	1
      002609 09                     915 	.db	9
      00260A 00 03                  916 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$51-Sstm8s_itc$ITC_GetSoftwarePriority$50
      00260C 03                     917 	.db	3
      00260D 02                     918 	.sleb128	2
      00260E 01                     919 	.db	1
      00260F 09                     920 	.db	9
      002610 00 00                  921 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$52-Sstm8s_itc$ITC_GetSoftwarePriority$51
      002612 03                     922 	.db	3
      002613 01                     923 	.sleb128	1
      002614 01                     924 	.db	1
      002615 09                     925 	.db	9
      002616 00 06                  926 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$54-Sstm8s_itc$ITC_GetSoftwarePriority$52
      002618 03                     927 	.db	3
      002619 05                     928 	.sleb128	5
      00261A 01                     929 	.db	1
      00261B 09                     930 	.db	9
      00261C 00 00                  931 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$55-Sstm8s_itc$ITC_GetSoftwarePriority$54
      00261E 03                     932 	.db	3
      00261F 02                     933 	.sleb128	2
      002620 01                     934 	.db	1
      002621 09                     935 	.db	9
      002622 00 0B                  936 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$56-Sstm8s_itc$ITC_GetSoftwarePriority$55
      002624 03                     937 	.db	3
      002625 02                     938 	.sleb128	2
      002626 01                     939 	.db	1
      002627 09                     940 	.db	9
      002628 00 00                  941 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$57-Sstm8s_itc$ITC_GetSoftwarePriority$56
      00262A 03                     942 	.db	3
      00262B 01                     943 	.sleb128	1
      00262C 01                     944 	.db	1
      00262D 09                     945 	.db	9
      00262E 00 02                  946 	.dw	1+Sstm8s_itc$ITC_GetSoftwarePriority$59-Sstm8s_itc$ITC_GetSoftwarePriority$57
      002630 00                     947 	.db	0
      002631 01                     948 	.uleb128	1
      002632 01                     949 	.db	1
      002633 00                     950 	.db	0
      002634 05                     951 	.uleb128	5
      002635 02                     952 	.db	2
      002636 00 00 9D 3F            953 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$61)
      00263A 03                     954 	.db	3
      00263B DE 01                  955 	.sleb128	222
      00263D 01                     956 	.db	1
      00263E 09                     957 	.db	9
      00263F 00 01                  958 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$64-Sstm8s_itc$ITC_SetSoftwarePriority$61
      002641 03                     959 	.db	3
      002642 0E                     960 	.sleb128	14
      002643 01                     961 	.db	1
      002644 09                     962 	.db	9
      002645 00 18                  963 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$67-Sstm8s_itc$ITC_SetSoftwarePriority$64
      002647 03                     964 	.db	3
      002648 03                     965 	.sleb128	3
      002649 01                     966 	.db	1
      00264A 09                     967 	.db	9
      00264B 00 0F                  968 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$70-Sstm8s_itc$ITC_SetSoftwarePriority$67
      00264D 03                     969 	.db	3
      00264E 02                     970 	.sleb128	2
      00264F 01                     971 	.db	1
      002650 09                     972 	.db	9
      002651 00 44                  973 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$72-Sstm8s_itc$ITC_SetSoftwarePriority$70
      002653 03                     974 	.db	3
      002654 05                     975 	.sleb128	5
      002655 01                     976 	.db	1
      002656 09                     977 	.db	9
      002657 00 00                  978 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$73-Sstm8s_itc$ITC_SetSoftwarePriority$72
      002659 03                     979 	.db	3
      00265A 01                     980 	.sleb128	1
      00265B 01                     981 	.db	1
      00265C 09                     982 	.db	9
      00265D 00 08                  983 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$74-Sstm8s_itc$ITC_SetSoftwarePriority$73
      00265F 03                     984 	.db	3
      002660 01                     985 	.sleb128	1
      002661 01                     986 	.db	1
      002662 09                     987 	.db	9
      002663 00 08                  988 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$75-Sstm8s_itc$ITC_SetSoftwarePriority$74
      002665 03                     989 	.db	3
      002666 01                     990 	.sleb128	1
      002667 01                     991 	.db	1
      002668 09                     992 	.db	9
      002669 00 03                  993 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$76-Sstm8s_itc$ITC_SetSoftwarePriority$75
      00266B 03                     994 	.db	3
      00266C 05                     995 	.sleb128	5
      00266D 01                     996 	.db	1
      00266E 09                     997 	.db	9
      00266F 00 00                  998 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$77-Sstm8s_itc$ITC_SetSoftwarePriority$76
      002671 03                     999 	.db	3
      002672 01                    1000 	.sleb128	1
      002673 01                    1001 	.db	1
      002674 09                    1002 	.db	9
      002675 00 08                 1003 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$78-Sstm8s_itc$ITC_SetSoftwarePriority$77
      002677 03                    1004 	.db	3
      002678 01                    1005 	.sleb128	1
      002679 01                    1006 	.db	1
      00267A 09                    1007 	.db	9
      00267B 00 08                 1008 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$79-Sstm8s_itc$ITC_SetSoftwarePriority$78
      00267D 03                    1009 	.db	3
      00267E 01                    1010 	.sleb128	1
      00267F 01                    1011 	.db	1
      002680 09                    1012 	.db	9
      002681 00 03                 1013 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$80-Sstm8s_itc$ITC_SetSoftwarePriority$79
      002683 03                    1014 	.db	3
      002684 0A                    1015 	.sleb128	10
      002685 01                    1016 	.db	1
      002686 09                    1017 	.db	9
      002687 00 00                 1018 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$81-Sstm8s_itc$ITC_SetSoftwarePriority$80
      002689 03                    1019 	.db	3
      00268A 01                    1020 	.sleb128	1
      00268B 01                    1021 	.db	1
      00268C 09                    1022 	.db	9
      00268D 00 08                 1023 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$82-Sstm8s_itc$ITC_SetSoftwarePriority$81
      00268F 03                    1024 	.db	3
      002690 01                    1025 	.sleb128	1
      002691 01                    1026 	.db	1
      002692 09                    1027 	.db	9
      002693 00 08                 1028 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$83-Sstm8s_itc$ITC_SetSoftwarePriority$82
      002695 03                    1029 	.db	3
      002696 01                    1030 	.sleb128	1
      002697 01                    1031 	.db	1
      002698 09                    1032 	.db	9
      002699 00 03                 1033 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$84-Sstm8s_itc$ITC_SetSoftwarePriority$83
      00269B 03                    1034 	.db	3
      00269C 0A                    1035 	.sleb128	10
      00269D 01                    1036 	.db	1
      00269E 09                    1037 	.db	9
      00269F 00 00                 1038 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$85-Sstm8s_itc$ITC_SetSoftwarePriority$84
      0026A1 03                    1039 	.db	3
      0026A2 01                    1040 	.sleb128	1
      0026A3 01                    1041 	.db	1
      0026A4 09                    1042 	.db	9
      0026A5 00 08                 1043 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$86-Sstm8s_itc$ITC_SetSoftwarePriority$85
      0026A7 03                    1044 	.db	3
      0026A8 01                    1045 	.sleb128	1
      0026A9 01                    1046 	.db	1
      0026AA 09                    1047 	.db	9
      0026AB 00 08                 1048 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$87-Sstm8s_itc$ITC_SetSoftwarePriority$86
      0026AD 03                    1049 	.db	3
      0026AE 01                    1050 	.sleb128	1
      0026AF 01                    1051 	.db	1
      0026B0 09                    1052 	.db	9
      0026B1 00 03                 1053 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$88-Sstm8s_itc$ITC_SetSoftwarePriority$87
      0026B3 03                    1054 	.db	3
      0026B4 0C                    1055 	.sleb128	12
      0026B5 01                    1056 	.db	1
      0026B6 09                    1057 	.db	9
      0026B7 00 00                 1058 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$89-Sstm8s_itc$ITC_SetSoftwarePriority$88
      0026B9 03                    1059 	.db	3
      0026BA 01                    1060 	.sleb128	1
      0026BB 01                    1061 	.db	1
      0026BC 09                    1062 	.db	9
      0026BD 00 08                 1063 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$90-Sstm8s_itc$ITC_SetSoftwarePriority$89
      0026BF 03                    1064 	.db	3
      0026C0 01                    1065 	.sleb128	1
      0026C1 01                    1066 	.db	1
      0026C2 09                    1067 	.db	9
      0026C3 00 08                 1068 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$91-Sstm8s_itc$ITC_SetSoftwarePriority$90
      0026C5 03                    1069 	.db	3
      0026C6 01                    1070 	.sleb128	1
      0026C7 01                    1071 	.db	1
      0026C8 09                    1072 	.db	9
      0026C9 00 03                 1073 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$92-Sstm8s_itc$ITC_SetSoftwarePriority$91
      0026CB 03                    1074 	.db	3
      0026CC 16                    1075 	.sleb128	22
      0026CD 01                    1076 	.db	1
      0026CE 09                    1077 	.db	9
      0026CF 00 00                 1078 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$93-Sstm8s_itc$ITC_SetSoftwarePriority$92
      0026D1 03                    1079 	.db	3
      0026D2 02                    1080 	.sleb128	2
      0026D3 01                    1081 	.db	1
      0026D4 09                    1082 	.db	9
      0026D5 00 08                 1083 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$94-Sstm8s_itc$ITC_SetSoftwarePriority$93
      0026D7 03                    1084 	.db	3
      0026D8 01                    1085 	.sleb128	1
      0026D9 01                    1086 	.db	1
      0026DA 09                    1087 	.db	9
      0026DB 00 08                 1088 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$95-Sstm8s_itc$ITC_SetSoftwarePriority$94
      0026DD 03                    1089 	.db	3
      0026DE 01                    1090 	.sleb128	1
      0026DF 01                    1091 	.db	1
      0026E0 09                    1092 	.db	9
      0026E1 00 03                 1093 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$96-Sstm8s_itc$ITC_SetSoftwarePriority$95
      0026E3 03                    1094 	.db	3
      0026E4 02                    1095 	.sleb128	2
      0026E5 01                    1096 	.db	1
      0026E6 09                    1097 	.db	9
      0026E7 00 00                 1098 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$97-Sstm8s_itc$ITC_SetSoftwarePriority$96
      0026E9 03                    1099 	.db	3
      0026EA 01                    1100 	.sleb128	1
      0026EB 01                    1101 	.db	1
      0026EC 09                    1102 	.db	9
      0026ED 00 08                 1103 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$98-Sstm8s_itc$ITC_SetSoftwarePriority$97
      0026EF 03                    1104 	.db	3
      0026F0 01                    1105 	.sleb128	1
      0026F1 01                    1106 	.db	1
      0026F2 09                    1107 	.db	9
      0026F3 00 08                 1108 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$100-Sstm8s_itc$ITC_SetSoftwarePriority$98
      0026F5 03                    1109 	.db	3
      0026F6 05                    1110 	.sleb128	5
      0026F7 01                    1111 	.db	1
      0026F8 09                    1112 	.db	9
      0026F9 00 00                 1113 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$101-Sstm8s_itc$ITC_SetSoftwarePriority$100
      0026FB 03                    1114 	.db	3
      0026FC 01                    1115 	.sleb128	1
      0026FD 01                    1116 	.db	1
      0026FE 09                    1117 	.db	9
      0026FF 00 02                 1118 	.dw	1+Sstm8s_itc$ITC_SetSoftwarePriority$103-Sstm8s_itc$ITC_SetSoftwarePriority$101
      002701 00                    1119 	.db	0
      002702 01                    1120 	.uleb128	1
      002703 01                    1121 	.db	1
      002704                       1122 Ldebug_line_end:
                                   1123 
                                   1124 	.area .debug_loc (NOLOAD)
      003DE0                       1125 Ldebug_loc_start:
      003DE0 00 00 9E 2E           1126 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      003DE4 00 00 9E 2F           1127 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$104)
      003DE8 00 02                 1128 	.dw	2
      003DEA 78                    1129 	.db	120
      003DEB 01                    1130 	.sleb128	1
      003DEC 00 00 9D 65           1131 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
      003DF0 00 00 9E 2E           1132 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      003DF4 00 02                 1133 	.dw	2
      003DF6 78                    1134 	.db	120
      003DF7 03                    1135 	.sleb128	3
      003DF8 00 00 9D 5B           1136 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
      003DFC 00 00 9D 65           1137 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
      003E00 00 02                 1138 	.dw	2
      003E02 78                    1139 	.db	120
      003E03 04                    1140 	.sleb128	4
      003E04 00 00 9D 55           1141 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
      003E08 00 00 9D 5B           1142 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
      003E0C 00 02                 1143 	.dw	2
      003E0E 78                    1144 	.db	120
      003E0F 03                    1145 	.sleb128	3
      003E10 00 00 9D 4B           1146 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
      003E14 00 00 9D 55           1147 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
      003E18 00 02                 1148 	.dw	2
      003E1A 78                    1149 	.db	120
      003E1B 04                    1150 	.sleb128	4
      003E1C 00 00 9D 40           1151 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
      003E20 00 00 9D 4B           1152 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
      003E24 00 02                 1153 	.dw	2
      003E26 78                    1154 	.db	120
      003E27 03                    1155 	.sleb128	3
      003E28 00 00 9D 3F           1156 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)
      003E2C 00 00 9D 40           1157 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
      003E30 00 02                 1158 	.dw	2
      003E32 78                    1159 	.db	120
      003E33 01                    1160 	.sleb128	1
      003E34 00 00 00 00           1161 	.dw	0,0
      003E38 00 00 00 00           1162 	.dw	0,0
      003E3C 00 00 9D 3E           1163 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
      003E40 00 00 9D 3F           1164 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$60)
      003E44 00 02                 1165 	.dw	2
      003E46 78                    1166 	.db	120
      003E47 01                    1167 	.sleb128	1
      003E48 00 00 9C 98           1168 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      003E4C 00 00 9D 3E           1169 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
      003E50 00 02                 1170 	.dw	2
      003E52 78                    1171 	.db	120
      003E53 03                    1172 	.sleb128	3
      003E54 00 00 9C 97           1173 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      003E58 00 00 9C 98           1174 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      003E5C 00 02                 1175 	.dw	2
      003E5E 78                    1176 	.db	120
      003E5F 01                    1177 	.sleb128	1
      003E60 00 00 00 00           1178 	.dw	0,0
      003E64 00 00 00 00           1179 	.dw	0,0
      003E68 00 00 9C 91           1180 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      003E6C 00 00 9C 97           1181 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$25)
      003E70 00 02                 1182 	.dw	2
      003E72 78                    1183 	.db	120
      003E73 01                    1184 	.sleb128	1
      003E74 00 00 00 00           1185 	.dw	0,0
      003E78 00 00 00 00           1186 	.dw	0,0
      003E7C 00 00 9C 70           1187 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      003E80 00 00 9C 91           1188 	.dw	0,(Sstm8s_itc$ITC_DeInit$19)
      003E84 00 02                 1189 	.dw	2
      003E86 78                    1190 	.db	120
      003E87 01                    1191 	.sleb128	1
      003E88 00 00 00 00           1192 	.dw	0,0
      003E8C 00 00 00 00           1193 	.dw	0,0
      003E90 00 00 9C 6D           1194 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      003E94 00 00 9C 70           1195 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$6)
      003E98 00 02                 1196 	.dw	2
      003E9A 78                    1197 	.db	120
      003E9B 01                    1198 	.sleb128	1
      003E9C 00 00 00 00           1199 	.dw	0,0
      003EA0 00 00 00 00           1200 	.dw	0,0
                                   1201 
                                   1202 	.area .debug_abbrev (NOLOAD)
      0005E8                       1203 Ldebug_abbrev:
      0005E8 03                    1204 	.uleb128	3
      0005E9 2E                    1205 	.uleb128	46
      0005EA 00                    1206 	.db	0
      0005EB 03                    1207 	.uleb128	3
      0005EC 08                    1208 	.uleb128	8
      0005ED 11                    1209 	.uleb128	17
      0005EE 01                    1210 	.uleb128	1
      0005EF 12                    1211 	.uleb128	18
      0005F0 01                    1212 	.uleb128	1
      0005F1 3F                    1213 	.uleb128	63
      0005F2 0C                    1214 	.uleb128	12
      0005F3 40                    1215 	.uleb128	64
      0005F4 06                    1216 	.uleb128	6
      0005F5 49                    1217 	.uleb128	73
      0005F6 13                    1218 	.uleb128	19
      0005F7 00                    1219 	.uleb128	0
      0005F8 00                    1220 	.uleb128	0
      0005F9 06                    1221 	.uleb128	6
      0005FA 05                    1222 	.uleb128	5
      0005FB 00                    1223 	.db	0
      0005FC 02                    1224 	.uleb128	2
      0005FD 0A                    1225 	.uleb128	10
      0005FE 03                    1226 	.uleb128	3
      0005FF 08                    1227 	.uleb128	8
      000600 49                    1228 	.uleb128	73
      000601 13                    1229 	.uleb128	19
      000602 00                    1230 	.uleb128	0
      000603 00                    1231 	.uleb128	0
      000604 08                    1232 	.uleb128	8
      000605 34                    1233 	.uleb128	52
      000606 00                    1234 	.db	0
      000607 02                    1235 	.uleb128	2
      000608 0A                    1236 	.uleb128	10
      000609 03                    1237 	.uleb128	3
      00060A 08                    1238 	.uleb128	8
      00060B 49                    1239 	.uleb128	73
      00060C 13                    1240 	.uleb128	19
      00060D 00                    1241 	.uleb128	0
      00060E 00                    1242 	.uleb128	0
      00060F 05                    1243 	.uleb128	5
      000610 2E                    1244 	.uleb128	46
      000611 01                    1245 	.db	1
      000612 01                    1246 	.uleb128	1
      000613 13                    1247 	.uleb128	19
      000614 03                    1248 	.uleb128	3
      000615 08                    1249 	.uleb128	8
      000616 11                    1250 	.uleb128	17
      000617 01                    1251 	.uleb128	1
      000618 12                    1252 	.uleb128	18
      000619 01                    1253 	.uleb128	1
      00061A 3F                    1254 	.uleb128	63
      00061B 0C                    1255 	.uleb128	12
      00061C 40                    1256 	.uleb128	64
      00061D 06                    1257 	.uleb128	6
      00061E 49                    1258 	.uleb128	73
      00061F 13                    1259 	.uleb128	19
      000620 00                    1260 	.uleb128	0
      000621 00                    1261 	.uleb128	0
      000622 01                    1262 	.uleb128	1
      000623 11                    1263 	.uleb128	17
      000624 01                    1264 	.db	1
      000625 03                    1265 	.uleb128	3
      000626 08                    1266 	.uleb128	8
      000627 10                    1267 	.uleb128	16
      000628 06                    1268 	.uleb128	6
      000629 13                    1269 	.uleb128	19
      00062A 0B                    1270 	.uleb128	11
      00062B 25                    1271 	.uleb128	37
      00062C 08                    1272 	.uleb128	8
      00062D 00                    1273 	.uleb128	0
      00062E 00                    1274 	.uleb128	0
      00062F 07                    1275 	.uleb128	7
      000630 0B                    1276 	.uleb128	11
      000631 00                    1277 	.db	0
      000632 11                    1278 	.uleb128	17
      000633 01                    1279 	.uleb128	1
      000634 12                    1280 	.uleb128	18
      000635 01                    1281 	.uleb128	1
      000636 00                    1282 	.uleb128	0
      000637 00                    1283 	.uleb128	0
      000638 04                    1284 	.uleb128	4
      000639 2E                    1285 	.uleb128	46
      00063A 00                    1286 	.db	0
      00063B 03                    1287 	.uleb128	3
      00063C 08                    1288 	.uleb128	8
      00063D 11                    1289 	.uleb128	17
      00063E 01                    1290 	.uleb128	1
      00063F 12                    1291 	.uleb128	18
      000640 01                    1292 	.uleb128	1
      000641 3F                    1293 	.uleb128	63
      000642 0C                    1294 	.uleb128	12
      000643 40                    1295 	.uleb128	64
      000644 06                    1296 	.uleb128	6
      000645 00                    1297 	.uleb128	0
      000646 00                    1298 	.uleb128	0
      000647 09                    1299 	.uleb128	9
      000648 2E                    1300 	.uleb128	46
      000649 01                    1301 	.db	1
      00064A 03                    1302 	.uleb128	3
      00064B 08                    1303 	.uleb128	8
      00064C 11                    1304 	.uleb128	17
      00064D 01                    1305 	.uleb128	1
      00064E 12                    1306 	.uleb128	18
      00064F 01                    1307 	.uleb128	1
      000650 3F                    1308 	.uleb128	63
      000651 0C                    1309 	.uleb128	12
      000652 40                    1310 	.uleb128	64
      000653 06                    1311 	.uleb128	6
      000654 00                    1312 	.uleb128	0
      000655 00                    1313 	.uleb128	0
      000656 02                    1314 	.uleb128	2
      000657 24                    1315 	.uleb128	36
      000658 00                    1316 	.db	0
      000659 03                    1317 	.uleb128	3
      00065A 08                    1318 	.uleb128	8
      00065B 0B                    1319 	.uleb128	11
      00065C 0B                    1320 	.uleb128	11
      00065D 3E                    1321 	.uleb128	62
      00065E 0B                    1322 	.uleb128	11
      00065F 00                    1323 	.uleb128	0
      000660 00                    1324 	.uleb128	0
      000661 00                    1325 	.uleb128	0
                                   1326 
                                   1327 	.area .debug_info (NOLOAD)
      003A61 00 00 01 88           1328 	.dw	0,Ldebug_info_end-Ldebug_info_start
      003A65                       1329 Ldebug_info_start:
      003A65 00 02                 1330 	.dw	2
      003A67 00 00 05 E8           1331 	.dw	0,(Ldebug_abbrev)
      003A6B 04                    1332 	.db	4
      003A6C 01                    1333 	.uleb128	1
      003A6D 2E 2E 2F 53 50 4C 2F  1334 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      003A83 00                    1335 	.db	0
      003A84 00 00 24 79           1336 	.dw	0,(Ldebug_line_start+-4)
      003A88 01                    1337 	.db	1
      003A89 53 44 43 43 20 76 65  1338 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      003AA2 00                    1339 	.db	0
      003AA3 02                    1340 	.uleb128	2
      003AA4 75 6E 73 69 67 6E 65  1341 	.ascii "unsigned char"
             64 20 63 68 61 72
      003AB1 00                    1342 	.db	0
      003AB2 01                    1343 	.db	1
      003AB3 08                    1344 	.db	8
      003AB4 03                    1345 	.uleb128	3
      003AB5 49 54 43 5F 47 65 74  1346 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      003AC1 00                    1347 	.db	0
      003AC2 00 00 9C 6D           1348 	.dw	0,(_ITC_GetCPUCC)
      003AC6 00 00 9C 70           1349 	.dw	0,(XG$ITC_GetCPUCC$0$0+1)
      003ACA 01                    1350 	.db	1
      003ACB 00 00 3E 90           1351 	.dw	0,(Ldebug_loc_start+176)
      003ACF 00 00 00 42           1352 	.dw	0,66
      003AD3 04                    1353 	.uleb128	4
      003AD4 49 54 43 5F 44 65 49  1354 	.ascii "ITC_DeInit"
             6E 69 74
      003ADE 00                    1355 	.db	0
      003ADF 00 00 9C 70           1356 	.dw	0,(_ITC_DeInit)
      003AE3 00 00 9C 91           1357 	.dw	0,(XG$ITC_DeInit$0$0+1)
      003AE7 01                    1358 	.db	1
      003AE8 00 00 3E 7C           1359 	.dw	0,(Ldebug_loc_start+156)
      003AEC 03                    1360 	.uleb128	3
      003AED 49 54 43 5F 47 65 74  1361 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      003B01 00                    1362 	.db	0
      003B02 00 00 9C 91           1363 	.dw	0,(_ITC_GetSoftIntStatus)
      003B06 00 00 9C 97           1364 	.dw	0,(XG$ITC_GetSoftIntStatus$0$0+1)
      003B0A 01                    1365 	.db	1
      003B0B 00 00 3E 68           1366 	.dw	0,(Ldebug_loc_start+136)
      003B0F 00 00 00 42           1367 	.dw	0,66
      003B13 05                    1368 	.uleb128	5
      003B14 00 00 01 13           1369 	.dw	0,275
      003B18 49 54 43 5F 47 65 74  1370 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      003B2F 00                    1371 	.db	0
      003B30 00 00 9C 97           1372 	.dw	0,(_ITC_GetSoftwarePriority)
      003B34 00 00 9D 3F           1373 	.dw	0,(XG$ITC_GetSoftwarePriority$0$0+1)
      003B38 01                    1374 	.db	1
      003B39 00 00 3E 3C           1375 	.dw	0,(Ldebug_loc_start+92)
      003B3D 00 00 00 42           1376 	.dw	0,66
      003B41 06                    1377 	.uleb128	6
      003B42 02                    1378 	.db	2
      003B43 91                    1379 	.db	145
      003B44 02                    1380 	.sleb128	2
      003B45 49 72 71 4E 75 6D     1381 	.ascii "IrqNum"
      003B4B 00                    1382 	.db	0
      003B4C 00 00 00 42           1383 	.dw	0,66
      003B50 07                    1384 	.uleb128	7
      003B51 00 00 9C F6           1385 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
      003B55 00 00 9D 32           1386 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$53)
      003B59 08                    1387 	.uleb128	8
      003B5A 01                    1388 	.db	1
      003B5B 50                    1389 	.db	80
      003B5C 56 61 6C 75 65        1390 	.ascii "Value"
      003B61 00                    1391 	.db	0
      003B62 00 00 00 42           1392 	.dw	0,66
      003B66 08                    1393 	.uleb128	8
      003B67 02                    1394 	.db	2
      003B68 91                    1395 	.db	145
      003B69 7F                    1396 	.sleb128	-1
      003B6A 4D 61 73 6B           1397 	.ascii "Mask"
      003B6E 00                    1398 	.db	0
      003B6F 00 00 00 42           1399 	.dw	0,66
      003B73 00                    1400 	.uleb128	0
      003B74 09                    1401 	.uleb128	9
      003B75 49 54 43 5F 53 65 74  1402 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      003B8C 00                    1403 	.db	0
      003B8D 00 00 9D 3F           1404 	.dw	0,(_ITC_SetSoftwarePriority)
      003B91 00 00 9E 2F           1405 	.dw	0,(XG$ITC_SetSoftwarePriority$0$0+1)
      003B95 01                    1406 	.db	1
      003B96 00 00 3D E0           1407 	.dw	0,(Ldebug_loc_start)
      003B9A 06                    1408 	.uleb128	6
      003B9B 02                    1409 	.db	2
      003B9C 91                    1410 	.db	145
      003B9D 02                    1411 	.sleb128	2
      003B9E 49 72 71 4E 75 6D     1412 	.ascii "IrqNum"
      003BA4 00                    1413 	.db	0
      003BA5 00 00 00 42           1414 	.dw	0,66
      003BA9 06                    1415 	.uleb128	6
      003BAA 02                    1416 	.db	2
      003BAB 91                    1417 	.db	145
      003BAC 03                    1418 	.sleb128	3
      003BAD 50 72 69 6F 72 69 74  1419 	.ascii "PriorityValue"
             79 56 61 6C 75 65
      003BBA 00                    1420 	.db	0
      003BBB 00 00 00 42           1421 	.dw	0,66
      003BBF 07                    1422 	.uleb128	7
      003BC0 00 00 9D AB           1423 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$71)
      003BC4 00 00 9E 2D           1424 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
      003BC8 08                    1425 	.uleb128	8
      003BC9 02                    1426 	.db	2
      003BCA 91                    1427 	.db	145
      003BCB 7E                    1428 	.sleb128	-2
      003BCC 4D 61 73 6B           1429 	.ascii "Mask"
      003BD0 00                    1430 	.db	0
      003BD1 00 00 00 42           1431 	.dw	0,66
      003BD5 08                    1432 	.uleb128	8
      003BD6 02                    1433 	.db	2
      003BD7 91                    1434 	.db	145
      003BD8 7F                    1435 	.sleb128	-1
      003BD9 4E 65 77 50 72 69 6F  1436 	.ascii "NewPriority"
             72 69 74 79
      003BE4 00                    1437 	.db	0
      003BE5 00 00 00 42           1438 	.dw	0,66
      003BE9 00                    1439 	.uleb128	0
      003BEA 00                    1440 	.uleb128	0
      003BEB 00                    1441 	.uleb128	0
      003BEC 00                    1442 	.uleb128	0
      003BED                       1443 Ldebug_info_end:
                                   1444 
                                   1445 	.area .debug_pubnames (NOLOAD)
      000A7F 00 00 00 7F           1446 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000A83                       1447 Ldebug_pubnames_start:
      000A83 00 02                 1448 	.dw	2
      000A85 00 00 3A 61           1449 	.dw	0,(Ldebug_info_start-4)
      000A89 00 00 01 8C           1450 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000A8D 00 00 00 53           1451 	.dw	0,83
      000A91 49 54 43 5F 47 65 74  1452 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      000A9D 00                    1453 	.db	0
      000A9E 00 00 00 72           1454 	.dw	0,114
      000AA2 49 54 43 5F 44 65 49  1455 	.ascii "ITC_DeInit"
             6E 69 74
      000AAC 00                    1456 	.db	0
      000AAD 00 00 00 8B           1457 	.dw	0,139
      000AB1 49 54 43 5F 47 65 74  1458 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      000AC5 00                    1459 	.db	0
      000AC6 00 00 00 B2           1460 	.dw	0,178
      000ACA 49 54 43 5F 47 65 74  1461 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      000AE1 00                    1462 	.db	0
      000AE2 00 00 01 13           1463 	.dw	0,275
      000AE6 49 54 43 5F 53 65 74  1464 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      000AFD 00                    1465 	.db	0
      000AFE 00 00 00 00           1466 	.dw	0,0
      000B02                       1467 Ldebug_pubnames_end:
                                   1468 
                                   1469 	.area .debug_frame (NOLOAD)
      003288 00 00                 1470 	.dw	0
      00328A 00 0E                 1471 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      00328C                       1472 Ldebug_CIE0_start:
      00328C FF FF                 1473 	.dw	0xffff
      00328E FF FF                 1474 	.dw	0xffff
      003290 01                    1475 	.db	1
      003291 00                    1476 	.db	0
      003292 01                    1477 	.uleb128	1
      003293 7F                    1478 	.sleb128	-1
      003294 09                    1479 	.db	9
      003295 0C                    1480 	.db	12
      003296 08                    1481 	.uleb128	8
      003297 02                    1482 	.uleb128	2
      003298 89                    1483 	.db	137
      003299 01                    1484 	.uleb128	1
      00329A                       1485 Ldebug_CIE0_end:
      00329A 00 00 00 3D           1486 	.dw	0,61
      00329E 00 00 32 88           1487 	.dw	0,(Ldebug_CIE0_start-4)
      0032A2 00 00 9D 3F           1488 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)	;initial loc
      0032A6 00 00 00 F0           1489 	.dw	0,Sstm8s_itc$ITC_SetSoftwarePriority$104-Sstm8s_itc$ITC_SetSoftwarePriority$62
      0032AA 01                    1490 	.db	1
      0032AB 00 00 9D 3F           1491 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)
      0032AF 0E                    1492 	.db	14
      0032B0 02                    1493 	.uleb128	2
      0032B1 01                    1494 	.db	1
      0032B2 00 00 9D 40           1495 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
      0032B6 0E                    1496 	.db	14
      0032B7 04                    1497 	.uleb128	4
      0032B8 01                    1498 	.db	1
      0032B9 00 00 9D 4B           1499 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
      0032BD 0E                    1500 	.db	14
      0032BE 05                    1501 	.uleb128	5
      0032BF 01                    1502 	.db	1
      0032C0 00 00 9D 55           1503 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
      0032C4 0E                    1504 	.db	14
      0032C5 04                    1505 	.uleb128	4
      0032C6 01                    1506 	.db	1
      0032C7 00 00 9D 5B           1507 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
      0032CB 0E                    1508 	.db	14
      0032CC 05                    1509 	.uleb128	5
      0032CD 01                    1510 	.db	1
      0032CE 00 00 9D 65           1511 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
      0032D2 0E                    1512 	.db	14
      0032D3 04                    1513 	.uleb128	4
      0032D4 01                    1514 	.db	1
      0032D5 00 00 9E 2E           1515 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      0032D9 0E                    1516 	.db	14
      0032DA 02                    1517 	.uleb128	2
                                   1518 
                                   1519 	.area .debug_frame (NOLOAD)
      0032DB 00 00                 1520 	.dw	0
      0032DD 00 0E                 1521 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0032DF                       1522 Ldebug_CIE1_start:
      0032DF FF FF                 1523 	.dw	0xffff
      0032E1 FF FF                 1524 	.dw	0xffff
      0032E3 01                    1525 	.db	1
      0032E4 00                    1526 	.db	0
      0032E5 01                    1527 	.uleb128	1
      0032E6 7F                    1528 	.sleb128	-1
      0032E7 09                    1529 	.db	9
      0032E8 0C                    1530 	.db	12
      0032E9 08                    1531 	.uleb128	8
      0032EA 02                    1532 	.uleb128	2
      0032EB 89                    1533 	.db	137
      0032EC 01                    1534 	.uleb128	1
      0032ED                       1535 Ldebug_CIE1_end:
      0032ED 00 00 00 21           1536 	.dw	0,33
      0032F1 00 00 32 DB           1537 	.dw	0,(Ldebug_CIE1_start-4)
      0032F5 00 00 9C 97           1538 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)	;initial loc
      0032F9 00 00 00 A8           1539 	.dw	0,Sstm8s_itc$ITC_GetSoftwarePriority$60-Sstm8s_itc$ITC_GetSoftwarePriority$27
      0032FD 01                    1540 	.db	1
      0032FE 00 00 9C 97           1541 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      003302 0E                    1542 	.db	14
      003303 02                    1543 	.uleb128	2
      003304 01                    1544 	.db	1
      003305 00 00 9C 98           1545 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      003309 0E                    1546 	.db	14
      00330A 04                    1547 	.uleb128	4
      00330B 01                    1548 	.db	1
      00330C 00 00 9D 3E           1549 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
      003310 0E                    1550 	.db	14
      003311 02                    1551 	.uleb128	2
                                   1552 
                                   1553 	.area .debug_frame (NOLOAD)
      003312 00 00                 1554 	.dw	0
      003314 00 0E                 1555 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      003316                       1556 Ldebug_CIE2_start:
      003316 FF FF                 1557 	.dw	0xffff
      003318 FF FF                 1558 	.dw	0xffff
      00331A 01                    1559 	.db	1
      00331B 00                    1560 	.db	0
      00331C 01                    1561 	.uleb128	1
      00331D 7F                    1562 	.sleb128	-1
      00331E 09                    1563 	.db	9
      00331F 0C                    1564 	.db	12
      003320 08                    1565 	.uleb128	8
      003321 02                    1566 	.uleb128	2
      003322 89                    1567 	.db	137
      003323 01                    1568 	.uleb128	1
      003324                       1569 Ldebug_CIE2_end:
      003324 00 00 00 13           1570 	.dw	0,19
      003328 00 00 33 12           1571 	.dw	0,(Ldebug_CIE2_start-4)
      00332C 00 00 9C 91           1572 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)	;initial loc
      003330 00 00 00 06           1573 	.dw	0,Sstm8s_itc$ITC_GetSoftIntStatus$25-Sstm8s_itc$ITC_GetSoftIntStatus$21
      003334 01                    1574 	.db	1
      003335 00 00 9C 91           1575 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      003339 0E                    1576 	.db	14
      00333A 02                    1577 	.uleb128	2
                                   1578 
                                   1579 	.area .debug_frame (NOLOAD)
      00333B 00 00                 1580 	.dw	0
      00333D 00 0E                 1581 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00333F                       1582 Ldebug_CIE3_start:
      00333F FF FF                 1583 	.dw	0xffff
      003341 FF FF                 1584 	.dw	0xffff
      003343 01                    1585 	.db	1
      003344 00                    1586 	.db	0
      003345 01                    1587 	.uleb128	1
      003346 7F                    1588 	.sleb128	-1
      003347 09                    1589 	.db	9
      003348 0C                    1590 	.db	12
      003349 08                    1591 	.uleb128	8
      00334A 02                    1592 	.uleb128	2
      00334B 89                    1593 	.db	137
      00334C 01                    1594 	.uleb128	1
      00334D                       1595 Ldebug_CIE3_end:
      00334D 00 00 00 13           1596 	.dw	0,19
      003351 00 00 33 3B           1597 	.dw	0,(Ldebug_CIE3_start-4)
      003355 00 00 9C 70           1598 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)	;initial loc
      003359 00 00 00 21           1599 	.dw	0,Sstm8s_itc$ITC_DeInit$19-Sstm8s_itc$ITC_DeInit$8
      00335D 01                    1600 	.db	1
      00335E 00 00 9C 70           1601 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      003362 0E                    1602 	.db	14
      003363 02                    1603 	.uleb128	2
                                   1604 
                                   1605 	.area .debug_frame (NOLOAD)
      003364 00 00                 1606 	.dw	0
      003366 00 0E                 1607 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      003368                       1608 Ldebug_CIE4_start:
      003368 FF FF                 1609 	.dw	0xffff
      00336A FF FF                 1610 	.dw	0xffff
      00336C 01                    1611 	.db	1
      00336D 00                    1612 	.db	0
      00336E 01                    1613 	.uleb128	1
      00336F 7F                    1614 	.sleb128	-1
      003370 09                    1615 	.db	9
      003371 0C                    1616 	.db	12
      003372 08                    1617 	.uleb128	8
      003373 02                    1618 	.uleb128	2
      003374 89                    1619 	.db	137
      003375 01                    1620 	.uleb128	1
      003376                       1621 Ldebug_CIE4_end:
      003376 00 00 00 13           1622 	.dw	0,19
      00337A 00 00 33 64           1623 	.dw	0,(Ldebug_CIE4_start-4)
      00337E 00 00 9C 6D           1624 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)	;initial loc
      003382 00 00 00 03           1625 	.dw	0,Sstm8s_itc$ITC_GetCPUCC$6-Sstm8s_itc$ITC_GetCPUCC$1
      003386 01                    1626 	.db	1
      003387 00 00 9C 6D           1627 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      00338B 0E                    1628 	.db	14
      00338C 02                    1629 	.uleb128	2
