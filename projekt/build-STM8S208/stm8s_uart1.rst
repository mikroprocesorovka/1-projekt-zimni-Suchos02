                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLK_GetClockFreq
                                     12 	.globl _UART1_DeInit
                                     13 	.globl _UART1_Init
                                     14 	.globl _UART1_Cmd
                                     15 	.globl _UART1_ITConfig
                                     16 	.globl _UART1_HalfDuplexCmd
                                     17 	.globl _UART1_IrDAConfig
                                     18 	.globl _UART1_IrDACmd
                                     19 	.globl _UART1_LINBreakDetectionConfig
                                     20 	.globl _UART1_LINCmd
                                     21 	.globl _UART1_SmartCardCmd
                                     22 	.globl _UART1_SmartCardNACKCmd
                                     23 	.globl _UART1_WakeUpConfig
                                     24 	.globl _UART1_ReceiverWakeUpCmd
                                     25 	.globl _UART1_ReceiveData8
                                     26 	.globl _UART1_ReceiveData9
                                     27 	.globl _UART1_SendData8
                                     28 	.globl _UART1_SendData9
                                     29 	.globl _UART1_SendBreak
                                     30 	.globl _UART1_SetAddress
                                     31 	.globl _UART1_SetGuardTime
                                     32 	.globl _UART1_SetPrescaler
                                     33 	.globl _UART1_GetFlagStatus
                                     34 	.globl _UART1_ClearFlag
                                     35 	.globl _UART1_GetITStatus
                                     36 	.globl _UART1_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                           000000    74 	Sstm8s_uart1$UART1_DeInit$0 ==.
                                     75 ;	../SPL/src/stm8s_uart1.c: 53: void UART1_DeInit(void)
                                     76 ; genLabel
                                     77 ;	-----------------------------------------
                                     78 ;	 function UART1_DeInit
                                     79 ;	-----------------------------------------
                                     80 ;	Register assignment is optimal.
                                     81 ;	Stack space usage: 0 bytes.
      009E2F                         82 _UART1_DeInit:
                           000000    83 	Sstm8s_uart1$UART1_DeInit$1 ==.
                           000000    84 	Sstm8s_uart1$UART1_DeInit$2 ==.
                                     85 ;	../SPL/src/stm8s_uart1.c: 57: (void)UART1->SR;
                                     86 ; genPointerGet
                                     87 ; Dummy read
      009E2F C6 52 30         [ 1]   88 	ld	a, 0x5230
                           000003    89 	Sstm8s_uart1$UART1_DeInit$3 ==.
                                     90 ;	../SPL/src/stm8s_uart1.c: 58: (void)UART1->DR;
                                     91 ; genPointerGet
                                     92 ; Dummy read
      009E32 C6 52 31         [ 1]   93 	ld	a, 0x5231
                           000006    94 	Sstm8s_uart1$UART1_DeInit$4 ==.
                                     95 ;	../SPL/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
                                     96 ; genPointerSet
      009E35 35 00 52 33      [ 1]   97 	mov	0x5233+0, #0x00
                           00000A    98 	Sstm8s_uart1$UART1_DeInit$5 ==.
                                     99 ;	../SPL/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
                                    100 ; genPointerSet
      009E39 35 00 52 32      [ 1]  101 	mov	0x5232+0, #0x00
                           00000E   102 	Sstm8s_uart1$UART1_DeInit$6 ==.
                                    103 ;	../SPL/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
                                    104 ; genPointerSet
      009E3D 35 00 52 34      [ 1]  105 	mov	0x5234+0, #0x00
                           000012   106 	Sstm8s_uart1$UART1_DeInit$7 ==.
                                    107 ;	../SPL/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
                                    108 ; genPointerSet
      009E41 35 00 52 35      [ 1]  109 	mov	0x5235+0, #0x00
                           000016   110 	Sstm8s_uart1$UART1_DeInit$8 ==.
                                    111 ;	../SPL/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
                                    112 ; genPointerSet
      009E45 35 00 52 36      [ 1]  113 	mov	0x5236+0, #0x00
                           00001A   114 	Sstm8s_uart1$UART1_DeInit$9 ==.
                                    115 ;	../SPL/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
                                    116 ; genPointerSet
      009E49 35 00 52 37      [ 1]  117 	mov	0x5237+0, #0x00
                           00001E   118 	Sstm8s_uart1$UART1_DeInit$10 ==.
                                    119 ;	../SPL/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
                                    120 ; genPointerSet
      009E4D 35 00 52 38      [ 1]  121 	mov	0x5238+0, #0x00
                           000022   122 	Sstm8s_uart1$UART1_DeInit$11 ==.
                                    123 ;	../SPL/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
                                    124 ; genPointerSet
      009E51 35 00 52 39      [ 1]  125 	mov	0x5239+0, #0x00
                           000026   126 	Sstm8s_uart1$UART1_DeInit$12 ==.
                                    127 ;	../SPL/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
                                    128 ; genPointerSet
      009E55 35 00 52 3A      [ 1]  129 	mov	0x523a+0, #0x00
                                    130 ; genLabel
      009E59                        131 00101$:
                           00002A   132 	Sstm8s_uart1$UART1_DeInit$13 ==.
                                    133 ;	../SPL/src/stm8s_uart1.c: 71: }
                                    134 ; genEndFunction
                           00002A   135 	Sstm8s_uart1$UART1_DeInit$14 ==.
                           00002A   136 	XG$UART1_DeInit$0$0 ==.
      009E59 81               [ 4]  137 	ret
                           00002B   138 	Sstm8s_uart1$UART1_DeInit$15 ==.
                           00002B   139 	Sstm8s_uart1$UART1_Init$16 ==.
                                    140 ;	../SPL/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                    141 ; genLabel
                                    142 ;	-----------------------------------------
                                    143 ;	 function UART1_Init
                                    144 ;	-----------------------------------------
                                    145 ;	Register assignment might be sub-optimal.
                                    146 ;	Stack space usage: 17 bytes.
      009E5A                        147 _UART1_Init:
                           00002B   148 	Sstm8s_uart1$UART1_Init$17 ==.
      009E5A 52 11            [ 2]  149 	sub	sp, #17
                           00002D   150 	Sstm8s_uart1$UART1_Init$18 ==.
                           00002D   151 	Sstm8s_uart1$UART1_Init$19 ==.
                                    152 ;	../SPL/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
                                    153 ; genPointerGet
      009E5C C6 52 34         [ 1]  154 	ld	a, 0x5234
                                    155 ; genAnd
      009E5F A4 EF            [ 1]  156 	and	a, #0xef
                                    157 ; genPointerSet
      009E61 C7 52 34         [ 1]  158 	ld	0x5234, a
                           000035   159 	Sstm8s_uart1$UART1_Init$20 ==.
                                    160 ;	../SPL/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
                                    161 ; genPointerGet
      009E64 C6 52 34         [ 1]  162 	ld	a, 0x5234
                                    163 ; genOr
      009E67 1A 18            [ 1]  164 	or	a, (0x18, sp)
                                    165 ; genPointerSet
      009E69 C7 52 34         [ 1]  166 	ld	0x5234, a
                           00003D   167 	Sstm8s_uart1$UART1_Init$21 ==.
                                    168 ;	../SPL/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
                                    169 ; genPointerGet
      009E6C C6 52 36         [ 1]  170 	ld	a, 0x5236
                                    171 ; genAnd
      009E6F A4 CF            [ 1]  172 	and	a, #0xcf
                                    173 ; genPointerSet
      009E71 C7 52 36         [ 1]  174 	ld	0x5236, a
                           000045   175 	Sstm8s_uart1$UART1_Init$22 ==.
                                    176 ;	../SPL/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
                                    177 ; genPointerGet
      009E74 C6 52 36         [ 1]  178 	ld	a, 0x5236
                                    179 ; genOr
      009E77 1A 19            [ 1]  180 	or	a, (0x19, sp)
                                    181 ; genPointerSet
      009E79 C7 52 36         [ 1]  182 	ld	0x5236, a
                           00004D   183 	Sstm8s_uart1$UART1_Init$23 ==.
                                    184 ;	../SPL/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
                                    185 ; genPointerGet
      009E7C C6 52 34         [ 1]  186 	ld	a, 0x5234
                                    187 ; genAnd
      009E7F A4 F9            [ 1]  188 	and	a, #0xf9
                                    189 ; genPointerSet
      009E81 C7 52 34         [ 1]  190 	ld	0x5234, a
                           000055   191 	Sstm8s_uart1$UART1_Init$24 ==.
                                    192 ;	../SPL/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
                                    193 ; genPointerGet
      009E84 C6 52 34         [ 1]  194 	ld	a, 0x5234
                                    195 ; genOr
      009E87 1A 1A            [ 1]  196 	or	a, (0x1a, sp)
                                    197 ; genPointerSet
      009E89 C7 52 34         [ 1]  198 	ld	0x5234, a
                           00005D   199 	Sstm8s_uart1$UART1_Init$25 ==.
                                    200 ;	../SPL/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
                                    201 ; genPointerGet
                                    202 ; Dummy read
      009E8C C6 52 32         [ 1]  203 	ld	a, 0x5232
                                    204 ; genPointerSet
      009E8F 35 00 52 32      [ 1]  205 	mov	0x5232+0, #0x00
                           000064   206 	Sstm8s_uart1$UART1_Init$26 ==.
                                    207 ;	../SPL/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
                                    208 ; genPointerGet
      009E93 C6 52 33         [ 1]  209 	ld	a, 0x5233
                                    210 ; genAnd
      009E96 A4 0F            [ 1]  211 	and	a, #0x0f
                                    212 ; genPointerSet
      009E98 C7 52 33         [ 1]  213 	ld	0x5233, a
                           00006C   214 	Sstm8s_uart1$UART1_Init$27 ==.
                                    215 ;	../SPL/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
                                    216 ; genPointerGet
      009E9B C6 52 33         [ 1]  217 	ld	a, 0x5233
                                    218 ; genAnd
      009E9E A4 F0            [ 1]  219 	and	a, #0xf0
                                    220 ; genPointerSet
      009EA0 C7 52 33         [ 1]  221 	ld	0x5233, a
                           000074   222 	Sstm8s_uart1$UART1_Init$28 ==.
                                    223 ;	../SPL/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
                                    224 ; genCall
      009EA3 CD 9A 11         [ 4]  225 	call	_CLK_GetClockFreq
      009EA6 1F 10            [ 2]  226 	ldw	(0x10, sp), x
                                    227 ; genLeftShift
      009EA8 1E 14            [ 2]  228 	ldw	x, (0x14, sp)
      009EAA 1F 0A            [ 2]  229 	ldw	(0x0a, sp), x
      009EAC 1E 16            [ 2]  230 	ldw	x, (0x16, sp)
      009EAE A6 04            [ 1]  231 	ld	a, #0x04
      009EB0                        232 00127$:
      009EB0 58               [ 2]  233 	sllw	x
      009EB1 09 0B            [ 1]  234 	rlc	(0x0b, sp)
      009EB3 09 0A            [ 1]  235 	rlc	(0x0a, sp)
      009EB5 4A               [ 1]  236 	dec	a
      009EB6 26 F8            [ 1]  237 	jrne	00127$
      009EB8                        238 00128$:
      009EB8 1F 0C            [ 2]  239 	ldw	(0x0c, sp), x
                                    240 ; genIPush
      009EBA 1E 0C            [ 2]  241 	ldw	x, (0x0c, sp)
      009EBC 89               [ 2]  242 	pushw	x
                           00008E   243 	Sstm8s_uart1$UART1_Init$29 ==.
      009EBD 1E 0C            [ 2]  244 	ldw	x, (0x0c, sp)
      009EBF 89               [ 2]  245 	pushw	x
                           000091   246 	Sstm8s_uart1$UART1_Init$30 ==.
                                    247 ; genIPush
      009EC0 1E 14            [ 2]  248 	ldw	x, (0x14, sp)
      009EC2 89               [ 2]  249 	pushw	x
                           000094   250 	Sstm8s_uart1$UART1_Init$31 ==.
      009EC3 90 89            [ 2]  251 	pushw	y
                           000096   252 	Sstm8s_uart1$UART1_Init$32 ==.
                                    253 ; genCall
      009EC5 CD A5 C2         [ 4]  254 	call	__divulong
      009EC8 5B 08            [ 2]  255 	addw	sp, #8
                           00009B   256 	Sstm8s_uart1$UART1_Init$33 ==.
      009ECA 1F 10            [ 2]  257 	ldw	(0x10, sp), x
      009ECC 17 0E            [ 2]  258 	ldw	(0x0e, sp), y
                                    259 ; genAssign
      009ECE 16 10            [ 2]  260 	ldw	y, (0x10, sp)
      009ED0 17 03            [ 2]  261 	ldw	(0x03, sp), y
      009ED2 16 0E            [ 2]  262 	ldw	y, (0x0e, sp)
      009ED4 17 01            [ 2]  263 	ldw	(0x01, sp), y
                           0000A7   264 	Sstm8s_uart1$UART1_Init$34 ==.
                                    265 ;	../SPL/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
                                    266 ; genCall
      009ED6 CD 9A 11         [ 4]  267 	call	_CLK_GetClockFreq
      009ED9 1F 10            [ 2]  268 	ldw	(0x10, sp), x
      009EDB 17 0E            [ 2]  269 	ldw	(0x0e, sp), y
                                    270 ; genIPush
      009EDD 1E 10            [ 2]  271 	ldw	x, (0x10, sp)
      009EDF 89               [ 2]  272 	pushw	x
                           0000B1   273 	Sstm8s_uart1$UART1_Init$35 ==.
      009EE0 1E 10            [ 2]  274 	ldw	x, (0x10, sp)
      009EE2 89               [ 2]  275 	pushw	x
                           0000B4   276 	Sstm8s_uart1$UART1_Init$36 ==.
                                    277 ; genIPush
      009EE3 4B 64            [ 1]  278 	push	#0x64
                           0000B6   279 	Sstm8s_uart1$UART1_Init$37 ==.
      009EE5 5F               [ 1]  280 	clrw	x
      009EE6 89               [ 2]  281 	pushw	x
                           0000B8   282 	Sstm8s_uart1$UART1_Init$38 ==.
      009EE7 4B 00            [ 1]  283 	push	#0x00
                           0000BA   284 	Sstm8s_uart1$UART1_Init$39 ==.
                                    285 ; genCall
      009EE9 CD A6 1C         [ 4]  286 	call	__mullong
      009EEC 5B 08            [ 2]  287 	addw	sp, #8
                           0000BF   288 	Sstm8s_uart1$UART1_Init$40 ==.
      009EEE 1F 10            [ 2]  289 	ldw	(0x10, sp), x
                                    290 ; genIPush
      009EF0 1E 0C            [ 2]  291 	ldw	x, (0x0c, sp)
      009EF2 89               [ 2]  292 	pushw	x
                           0000C4   293 	Sstm8s_uart1$UART1_Init$41 ==.
      009EF3 1E 0C            [ 2]  294 	ldw	x, (0x0c, sp)
      009EF5 89               [ 2]  295 	pushw	x
                           0000C7   296 	Sstm8s_uart1$UART1_Init$42 ==.
                                    297 ; genIPush
      009EF6 1E 14            [ 2]  298 	ldw	x, (0x14, sp)
      009EF8 89               [ 2]  299 	pushw	x
                           0000CA   300 	Sstm8s_uart1$UART1_Init$43 ==.
      009EF9 90 89            [ 2]  301 	pushw	y
                           0000CC   302 	Sstm8s_uart1$UART1_Init$44 ==.
                                    303 ; genCall
      009EFB CD A5 C2         [ 4]  304 	call	__divulong
      009EFE 5B 08            [ 2]  305 	addw	sp, #8
                           0000D1   306 	Sstm8s_uart1$UART1_Init$45 ==.
                                    307 ; genAssign
      009F00 1F 07            [ 2]  308 	ldw	(0x07, sp), x
      009F02 17 05            [ 2]  309 	ldw	(0x05, sp), y
                           0000D5   310 	Sstm8s_uart1$UART1_Init$46 ==.
                                    311 ;	../SPL/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
                                    312 ; genPointerGet
      009F04 C6 52 33         [ 1]  313 	ld	a, 0x5233
      009F07 6B 09            [ 1]  314 	ld	(0x09, sp), a
                                    315 ; genIPush
      009F09 1E 03            [ 2]  316 	ldw	x, (0x03, sp)
      009F0B 89               [ 2]  317 	pushw	x
                           0000DD   318 	Sstm8s_uart1$UART1_Init$47 ==.
      009F0C 1E 03            [ 2]  319 	ldw	x, (0x03, sp)
      009F0E 89               [ 2]  320 	pushw	x
                           0000E0   321 	Sstm8s_uart1$UART1_Init$48 ==.
                                    322 ; genIPush
      009F0F 4B 64            [ 1]  323 	push	#0x64
                           0000E2   324 	Sstm8s_uart1$UART1_Init$49 ==.
      009F11 5F               [ 1]  325 	clrw	x
      009F12 89               [ 2]  326 	pushw	x
                           0000E4   327 	Sstm8s_uart1$UART1_Init$50 ==.
      009F13 4B 00            [ 1]  328 	push	#0x00
                           0000E6   329 	Sstm8s_uart1$UART1_Init$51 ==.
                                    330 ; genCall
      009F15 CD A6 1C         [ 4]  331 	call	__mullong
      009F18 5B 08            [ 2]  332 	addw	sp, #8
                           0000EB   333 	Sstm8s_uart1$UART1_Init$52 ==.
      009F1A 1F 0C            [ 2]  334 	ldw	(0x0c, sp), x
      009F1C 17 0A            [ 2]  335 	ldw	(0x0a, sp), y
                                    336 ; genMinus
      009F1E 1E 07            [ 2]  337 	ldw	x, (0x07, sp)
      009F20 72 F0 0C         [ 2]  338 	subw	x, (0x0c, sp)
      009F23 1F 10            [ 2]  339 	ldw	(0x10, sp), x
      009F25 7B 06            [ 1]  340 	ld	a, (0x06, sp)
      009F27 12 0B            [ 1]  341 	sbc	a, (0x0b, sp)
      009F29 6B 0F            [ 1]  342 	ld	(0x0f, sp), a
      009F2B 7B 05            [ 1]  343 	ld	a, (0x05, sp)
      009F2D 12 0A            [ 1]  344 	sbc	a, (0x0a, sp)
      009F2F 6B 0E            [ 1]  345 	ld	(0x0e, sp), a
                                    346 ; genLeftShift
      009F31 1E 10            [ 2]  347 	ldw	x, (0x10, sp)
      009F33 16 0E            [ 2]  348 	ldw	y, (0x0e, sp)
      009F35 A6 04            [ 1]  349 	ld	a, #0x04
      009F37                        350 00129$:
      009F37 58               [ 2]  351 	sllw	x
      009F38 90 59            [ 2]  352 	rlcw	y
      009F3A 4A               [ 1]  353 	dec	a
      009F3B 26 FA            [ 1]  354 	jrne	00129$
      009F3D                        355 00130$:
                                    356 ; genIPush
      009F3D 4B 64            [ 1]  357 	push	#0x64
                           000110   358 	Sstm8s_uart1$UART1_Init$53 ==.
      009F3F 4B 00            [ 1]  359 	push	#0x00
                           000112   360 	Sstm8s_uart1$UART1_Init$54 ==.
      009F41 4B 00            [ 1]  361 	push	#0x00
                           000114   362 	Sstm8s_uart1$UART1_Init$55 ==.
      009F43 4B 00            [ 1]  363 	push	#0x00
                           000116   364 	Sstm8s_uart1$UART1_Init$56 ==.
                                    365 ; genIPush
      009F45 89               [ 2]  366 	pushw	x
                           000117   367 	Sstm8s_uart1$UART1_Init$57 ==.
      009F46 90 89            [ 2]  368 	pushw	y
                           000119   369 	Sstm8s_uart1$UART1_Init$58 ==.
                                    370 ; genCall
      009F48 CD A5 C2         [ 4]  371 	call	__divulong
      009F4B 5B 08            [ 2]  372 	addw	sp, #8
                           00011E   373 	Sstm8s_uart1$UART1_Init$59 ==.
      009F4D 9F               [ 1]  374 	ld	a, xl
                                    375 ; genCast
                                    376 ; genAssign
                                    377 ; genAnd
      009F4E A4 0F            [ 1]  378 	and	a, #0x0f
                                    379 ; genOr
      009F50 1A 09            [ 1]  380 	or	a, (0x09, sp)
                                    381 ; genPointerSet
      009F52 C7 52 33         [ 1]  382 	ld	0x5233, a
                           000126   383 	Sstm8s_uart1$UART1_Init$60 ==.
                                    384 ;	../SPL/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
                                    385 ; genPointerGet
      009F55 C6 52 33         [ 1]  386 	ld	a, 0x5233
      009F58 6B 11            [ 1]  387 	ld	(0x11, sp), a
                                    388 ; genCast
                                    389 ; genAssign
      009F5A 1E 03            [ 2]  390 	ldw	x, (0x03, sp)
                                    391 ; genRightShiftLiteral
      009F5C A6 10            [ 1]  392 	ld	a, #0x10
      009F5E 62               [ 2]  393 	div	x, a
                                    394 ; genCast
                                    395 ; genAssign
      009F5F 9F               [ 1]  396 	ld	a, xl
                                    397 ; genAnd
      009F60 A4 F0            [ 1]  398 	and	a, #0xf0
                                    399 ; genOr
      009F62 1A 11            [ 1]  400 	or	a, (0x11, sp)
                                    401 ; genPointerSet
      009F64 C7 52 33         [ 1]  402 	ld	0x5233, a
                           000138   403 	Sstm8s_uart1$UART1_Init$61 ==.
                                    404 ;	../SPL/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
                                    405 ; genPointerGet
      009F67 C6 52 32         [ 1]  406 	ld	a, 0x5232
      009F6A 6B 11            [ 1]  407 	ld	(0x11, sp), a
                                    408 ; genCast
                                    409 ; genAssign
      009F6C 7B 04            [ 1]  410 	ld	a, (0x04, sp)
                                    411 ; genOr
      009F6E 1A 11            [ 1]  412 	or	a, (0x11, sp)
                                    413 ; genPointerSet
      009F70 C7 52 32         [ 1]  414 	ld	0x5232, a
                           000144   415 	Sstm8s_uart1$UART1_Init$62 ==.
                                    416 ;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
                                    417 ; genPointerGet
      009F73 C6 52 35         [ 1]  418 	ld	a, 0x5235
                                    419 ; genAnd
      009F76 A4 F3            [ 1]  420 	and	a, #0xf3
                                    421 ; genPointerSet
      009F78 C7 52 35         [ 1]  422 	ld	0x5235, a
                           00014C   423 	Sstm8s_uart1$UART1_Init$63 ==.
                                    424 ;	../SPL/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
                                    425 ; genPointerGet
      009F7B C6 52 36         [ 1]  426 	ld	a, 0x5236
                                    427 ; genAnd
      009F7E A4 F8            [ 1]  428 	and	a, #0xf8
                                    429 ; genPointerSet
      009F80 C7 52 36         [ 1]  430 	ld	0x5236, a
                           000154   431 	Sstm8s_uart1$UART1_Init$64 ==.
                                    432 ;	../SPL/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
                                    433 ; genPointerGet
      009F83 C6 52 36         [ 1]  434 	ld	a, 0x5236
      009F86 6B 11            [ 1]  435 	ld	(0x11, sp), a
                                    436 ; genAnd
      009F88 7B 1B            [ 1]  437 	ld	a, (0x1b, sp)
      009F8A A4 07            [ 1]  438 	and	a, #0x07
                                    439 ; genOr
      009F8C 1A 11            [ 1]  440 	or	a, (0x11, sp)
                                    441 ; genPointerSet
      009F8E C7 52 36         [ 1]  442 	ld	0x5236, a
                           000162   443 	Sstm8s_uart1$UART1_Init$65 ==.
                                    444 ;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
                                    445 ; genPointerGet
      009F91 C6 52 35         [ 1]  446 	ld	a, 0x5235
                           000165   447 	Sstm8s_uart1$UART1_Init$66 ==.
                                    448 ;	../SPL/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
                                    449 ; genAnd
      009F94 88               [ 1]  450 	push	a
                           000166   451 	Sstm8s_uart1$UART1_Init$67 ==.
      009F95 7B 1D            [ 1]  452 	ld	a, (0x1d, sp)
      009F97 A5 04            [ 1]  453 	bcp	a, #0x04
      009F99 84               [ 1]  454 	pop	a
                           00016B   455 	Sstm8s_uart1$UART1_Init$68 ==.
      009F9A 26 03            [ 1]  456 	jrne	00131$
      009F9C CC 9F A7         [ 2]  457 	jp	00102$
      009F9F                        458 00131$:
                                    459 ; skipping generated iCode
                           000170   460 	Sstm8s_uart1$UART1_Init$69 ==.
                           000170   461 	Sstm8s_uart1$UART1_Init$70 ==.
                                    462 ;	../SPL/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
                                    463 ; genOr
      009F9F AA 08            [ 1]  464 	or	a, #0x08
                                    465 ; genPointerSet
      009FA1 C7 52 35         [ 1]  466 	ld	0x5235, a
                           000175   467 	Sstm8s_uart1$UART1_Init$71 ==.
                                    468 ; genGoto
      009FA4 CC 9F AC         [ 2]  469 	jp	00103$
                                    470 ; genLabel
      009FA7                        471 00102$:
                           000178   472 	Sstm8s_uart1$UART1_Init$72 ==.
                           000178   473 	Sstm8s_uart1$UART1_Init$73 ==.
                                    474 ;	../SPL/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
                                    475 ; genAnd
      009FA7 A4 F7            [ 1]  476 	and	a, #0xf7
                                    477 ; genPointerSet
      009FA9 C7 52 35         [ 1]  478 	ld	0x5235, a
                           00017D   479 	Sstm8s_uart1$UART1_Init$74 ==.
                                    480 ; genLabel
      009FAC                        481 00103$:
                           00017D   482 	Sstm8s_uart1$UART1_Init$75 ==.
                                    483 ;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
                                    484 ; genPointerGet
      009FAC C6 52 35         [ 1]  485 	ld	a, 0x5235
                           000180   486 	Sstm8s_uart1$UART1_Init$76 ==.
                                    487 ;	../SPL/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
                                    488 ; genAnd
      009FAF 88               [ 1]  489 	push	a
                           000181   490 	Sstm8s_uart1$UART1_Init$77 ==.
      009FB0 7B 1D            [ 1]  491 	ld	a, (0x1d, sp)
      009FB2 A5 08            [ 1]  492 	bcp	a, #0x08
      009FB4 84               [ 1]  493 	pop	a
                           000186   494 	Sstm8s_uart1$UART1_Init$78 ==.
      009FB5 26 03            [ 1]  495 	jrne	00132$
      009FB7 CC 9F C2         [ 2]  496 	jp	00105$
      009FBA                        497 00132$:
                                    498 ; skipping generated iCode
                           00018B   499 	Sstm8s_uart1$UART1_Init$79 ==.
                           00018B   500 	Sstm8s_uart1$UART1_Init$80 ==.
                                    501 ;	../SPL/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
                                    502 ; genOr
      009FBA AA 04            [ 1]  503 	or	a, #0x04
                                    504 ; genPointerSet
      009FBC C7 52 35         [ 1]  505 	ld	0x5235, a
                           000190   506 	Sstm8s_uart1$UART1_Init$81 ==.
                                    507 ; genGoto
      009FBF CC 9F C7         [ 2]  508 	jp	00106$
                                    509 ; genLabel
      009FC2                        510 00105$:
                           000193   511 	Sstm8s_uart1$UART1_Init$82 ==.
                           000193   512 	Sstm8s_uart1$UART1_Init$83 ==.
                                    513 ;	../SPL/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
                                    514 ; genAnd
      009FC2 A4 FB            [ 1]  515 	and	a, #0xfb
                                    516 ; genPointerSet
      009FC4 C7 52 35         [ 1]  517 	ld	0x5235, a
                           000198   518 	Sstm8s_uart1$UART1_Init$84 ==.
                                    519 ; genLabel
      009FC7                        520 00106$:
                           000198   521 	Sstm8s_uart1$UART1_Init$85 ==.
                                    522 ;	../SPL/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
                                    523 ; genPointerGet
      009FC7 C6 52 36         [ 1]  524 	ld	a, 0x5236
                           00019B   525 	Sstm8s_uart1$UART1_Init$86 ==.
                                    526 ;	../SPL/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
                                    527 ; genAnd
      009FCA 0D 1B            [ 1]  528 	tnz	(0x1b, sp)
      009FCC 2B 03            [ 1]  529 	jrmi	00133$
      009FCE CC 9F D9         [ 2]  530 	jp	00108$
      009FD1                        531 00133$:
                                    532 ; skipping generated iCode
                           0001A2   533 	Sstm8s_uart1$UART1_Init$87 ==.
                           0001A2   534 	Sstm8s_uart1$UART1_Init$88 ==.
                                    535 ;	../SPL/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
                                    536 ; genAnd
      009FD1 A4 F7            [ 1]  537 	and	a, #0xf7
                                    538 ; genPointerSet
      009FD3 C7 52 36         [ 1]  539 	ld	0x5236, a
                           0001A7   540 	Sstm8s_uart1$UART1_Init$89 ==.
                                    541 ; genGoto
      009FD6 CC 9F E6         [ 2]  542 	jp	00110$
                                    543 ; genLabel
      009FD9                        544 00108$:
                           0001AA   545 	Sstm8s_uart1$UART1_Init$90 ==.
                           0001AA   546 	Sstm8s_uart1$UART1_Init$91 ==.
                                    547 ;	../SPL/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
                                    548 ; genAnd
      009FD9 88               [ 1]  549 	push	a
                           0001AB   550 	Sstm8s_uart1$UART1_Init$92 ==.
      009FDA 7B 1C            [ 1]  551 	ld	a, (0x1c, sp)
      009FDC A4 08            [ 1]  552 	and	a, #0x08
      009FDE 6B 12            [ 1]  553 	ld	(0x12, sp), a
      009FE0 84               [ 1]  554 	pop	a
                           0001B2   555 	Sstm8s_uart1$UART1_Init$93 ==.
                                    556 ; genOr
      009FE1 1A 11            [ 1]  557 	or	a, (0x11, sp)
                                    558 ; genPointerSet
      009FE3 C7 52 36         [ 1]  559 	ld	0x5236, a
                           0001B7   560 	Sstm8s_uart1$UART1_Init$94 ==.
                                    561 ; genLabel
      009FE6                        562 00110$:
                           0001B7   563 	Sstm8s_uart1$UART1_Init$95 ==.
                                    564 ;	../SPL/src/stm8s_uart1.c: 176: }
                                    565 ; genEndFunction
      009FE6 5B 11            [ 2]  566 	addw	sp, #17
                           0001B9   567 	Sstm8s_uart1$UART1_Init$96 ==.
                           0001B9   568 	Sstm8s_uart1$UART1_Init$97 ==.
                           0001B9   569 	XG$UART1_Init$0$0 ==.
      009FE8 81               [ 4]  570 	ret
                           0001BA   571 	Sstm8s_uart1$UART1_Init$98 ==.
                           0001BA   572 	Sstm8s_uart1$UART1_Cmd$99 ==.
                                    573 ;	../SPL/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    574 ; genLabel
                                    575 ;	-----------------------------------------
                                    576 ;	 function UART1_Cmd
                                    577 ;	-----------------------------------------
                                    578 ;	Register assignment is optimal.
                                    579 ;	Stack space usage: 0 bytes.
      009FE9                        580 _UART1_Cmd:
                           0001BA   581 	Sstm8s_uart1$UART1_Cmd$100 ==.
                           0001BA   582 	Sstm8s_uart1$UART1_Cmd$101 ==.
                                    583 ;	../SPL/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
                                    584 ; genPointerGet
      009FE9 C6 52 34         [ 1]  585 	ld	a, 0x5234
                           0001BD   586 	Sstm8s_uart1$UART1_Cmd$102 ==.
                                    587 ;	../SPL/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
                                    588 ; genIfx
      009FEC 0D 03            [ 1]  589 	tnz	(0x03, sp)
      009FEE 26 03            [ 1]  590 	jrne	00111$
      009FF0 CC 9F FB         [ 2]  591 	jp	00102$
      009FF3                        592 00111$:
                           0001C4   593 	Sstm8s_uart1$UART1_Cmd$103 ==.
                           0001C4   594 	Sstm8s_uart1$UART1_Cmd$104 ==.
                                    595 ;	../SPL/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
                                    596 ; genAnd
      009FF3 A4 DF            [ 1]  597 	and	a, #0xdf
                                    598 ; genPointerSet
      009FF5 C7 52 34         [ 1]  599 	ld	0x5234, a
                           0001C9   600 	Sstm8s_uart1$UART1_Cmd$105 ==.
                                    601 ; genGoto
      009FF8 CC A0 00         [ 2]  602 	jp	00104$
                                    603 ; genLabel
      009FFB                        604 00102$:
                           0001CC   605 	Sstm8s_uart1$UART1_Cmd$106 ==.
                           0001CC   606 	Sstm8s_uart1$UART1_Cmd$107 ==.
                                    607 ;	../SPL/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
                                    608 ; genOr
      009FFB AA 20            [ 1]  609 	or	a, #0x20
                                    610 ; genPointerSet
      009FFD C7 52 34         [ 1]  611 	ld	0x5234, a
                           0001D1   612 	Sstm8s_uart1$UART1_Cmd$108 ==.
                                    613 ; genLabel
      00A000                        614 00104$:
                           0001D1   615 	Sstm8s_uart1$UART1_Cmd$109 ==.
                                    616 ;	../SPL/src/stm8s_uart1.c: 196: }
                                    617 ; genEndFunction
                           0001D1   618 	Sstm8s_uart1$UART1_Cmd$110 ==.
                           0001D1   619 	XG$UART1_Cmd$0$0 ==.
      00A000 81               [ 4]  620 	ret
                           0001D2   621 	Sstm8s_uart1$UART1_Cmd$111 ==.
                           0001D2   622 	Sstm8s_uart1$UART1_ITConfig$112 ==.
                                    623 ;	../SPL/src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
                                    624 ; genLabel
                                    625 ;	-----------------------------------------
                                    626 ;	 function UART1_ITConfig
                                    627 ;	-----------------------------------------
                                    628 ;	Register assignment might be sub-optimal.
                                    629 ;	Stack space usage: 2 bytes.
      00A001                        630 _UART1_ITConfig:
                           0001D2   631 	Sstm8s_uart1$UART1_ITConfig$113 ==.
      00A001 89               [ 2]  632 	pushw	x
                           0001D3   633 	Sstm8s_uart1$UART1_ITConfig$114 ==.
                           0001D3   634 	Sstm8s_uart1$UART1_ITConfig$115 ==.
                                    635 ;	../SPL/src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
                                    636 ; genCast
                                    637 ; genAssign
      00A002 1E 05            [ 2]  638 	ldw	x, (0x05, sp)
                                    639 ; genRightShiftLiteral
      00A004 4F               [ 1]  640 	clr	a
                                    641 ; genCast
                                    642 ; genAssign
                           0001D6   643 	Sstm8s_uart1$UART1_ITConfig$116 ==.
                                    644 ;	../SPL/src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
                                    645 ; genCast
                                    646 ; genAssign
      00A005 7B 06            [ 1]  647 	ld	a, (0x06, sp)
                                    648 ; genAnd
      00A007 A4 0F            [ 1]  649 	and	a, #0x0f
                                    650 ; genLeftShift
      00A009 88               [ 1]  651 	push	a
                           0001DB   652 	Sstm8s_uart1$UART1_ITConfig$117 ==.
      00A00A A6 01            [ 1]  653 	ld	a, #0x01
      00A00C 6B 03            [ 1]  654 	ld	(0x03, sp), a
      00A00E 84               [ 1]  655 	pop	a
                           0001E0   656 	Sstm8s_uart1$UART1_ITConfig$118 ==.
      00A00F 4D               [ 1]  657 	tnz	a
      00A010 27 05            [ 1]  658 	jreq	00144$
      00A012                        659 00143$:
      00A012 08 02            [ 1]  660 	sll	(0x02, sp)
      00A014 4A               [ 1]  661 	dec	a
      00A015 26 FB            [ 1]  662 	jrne	00143$
      00A017                        663 00144$:
                           0001E8   664 	Sstm8s_uart1$UART1_ITConfig$119 ==.
                                    665 ;	../SPL/src/stm8s_uart1.c: 227: if (uartreg == 0x01)
                                    666 ; genCmpEQorNE
      00A017 9E               [ 1]  667 	ld	a, xh
      00A018 4A               [ 1]  668 	dec	a
      00A019 26 07            [ 1]  669 	jrne	00146$
      00A01B A6 01            [ 1]  670 	ld	a, #0x01
      00A01D 6B 01            [ 1]  671 	ld	(0x01, sp), a
      00A01F CC A0 24         [ 2]  672 	jp	00147$
      00A022                        673 00146$:
      00A022 0F 01            [ 1]  674 	clr	(0x01, sp)
      00A024                        675 00147$:
                           0001F5   676 	Sstm8s_uart1$UART1_ITConfig$120 ==.
                           0001F5   677 	Sstm8s_uart1$UART1_ITConfig$121 ==.
                                    678 ;	../SPL/src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
                                    679 ; genCmpEQorNE
      00A024 9E               [ 1]  680 	ld	a, xh
      00A025 A1 02            [ 1]  681 	cp	a, #0x02
      00A027 26 05            [ 1]  682 	jrne	00149$
      00A029 A6 01            [ 1]  683 	ld	a, #0x01
      00A02B CC A0 2F         [ 2]  684 	jp	00150$
      00A02E                        685 00149$:
      00A02E 4F               [ 1]  686 	clr	a
      00A02F                        687 00150$:
                           000200   688 	Sstm8s_uart1$UART1_ITConfig$122 ==.
                           000200   689 	Sstm8s_uart1$UART1_ITConfig$123 ==.
                                    690 ;	../SPL/src/stm8s_uart1.c: 224: if (NewState != DISABLE)
                                    691 ; genIfx
      00A02F 0D 07            [ 1]  692 	tnz	(0x07, sp)
      00A031 26 03            [ 1]  693 	jrne	00151$
      00A033 CC A0 64         [ 2]  694 	jp	00114$
      00A036                        695 00151$:
                           000207   696 	Sstm8s_uart1$UART1_ITConfig$124 ==.
                           000207   697 	Sstm8s_uart1$UART1_ITConfig$125 ==.
                                    698 ;	../SPL/src/stm8s_uart1.c: 227: if (uartreg == 0x01)
                                    699 ; genIfx
      00A036 0D 01            [ 1]  700 	tnz	(0x01, sp)
      00A038 26 03            [ 1]  701 	jrne	00152$
      00A03A CC A0 48         [ 2]  702 	jp	00105$
      00A03D                        703 00152$:
                           00020E   704 	Sstm8s_uart1$UART1_ITConfig$126 ==.
                           00020E   705 	Sstm8s_uart1$UART1_ITConfig$127 ==.
                                    706 ;	../SPL/src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
                                    707 ; genPointerGet
      00A03D C6 52 34         [ 1]  708 	ld	a, 0x5234
                                    709 ; genOr
      00A040 1A 02            [ 1]  710 	or	a, (0x02, sp)
                                    711 ; genPointerSet
      00A042 C7 52 34         [ 1]  712 	ld	0x5234, a
                           000216   713 	Sstm8s_uart1$UART1_ITConfig$128 ==.
                                    714 ; genGoto
      00A045 CC A0 93         [ 2]  715 	jp	00116$
                                    716 ; genLabel
      00A048                        717 00105$:
                           000219   718 	Sstm8s_uart1$UART1_ITConfig$129 ==.
                                    719 ;	../SPL/src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
                                    720 ; genIfx
      00A048 4D               [ 1]  721 	tnz	a
      00A049 26 03            [ 1]  722 	jrne	00153$
      00A04B CC A0 59         [ 2]  723 	jp	00102$
      00A04E                        724 00153$:
                           00021F   725 	Sstm8s_uart1$UART1_ITConfig$130 ==.
                           00021F   726 	Sstm8s_uart1$UART1_ITConfig$131 ==.
                                    727 ;	../SPL/src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
                                    728 ; genPointerGet
      00A04E C6 52 35         [ 1]  729 	ld	a, 0x5235
                                    730 ; genOr
      00A051 1A 02            [ 1]  731 	or	a, (0x02, sp)
                                    732 ; genPointerSet
      00A053 C7 52 35         [ 1]  733 	ld	0x5235, a
                           000227   734 	Sstm8s_uart1$UART1_ITConfig$132 ==.
                                    735 ; genGoto
      00A056 CC A0 93         [ 2]  736 	jp	00116$
                                    737 ; genLabel
      00A059                        738 00102$:
                           00022A   739 	Sstm8s_uart1$UART1_ITConfig$133 ==.
                           00022A   740 	Sstm8s_uart1$UART1_ITConfig$134 ==.
                                    741 ;	../SPL/src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
                                    742 ; genPointerGet
      00A059 C6 52 37         [ 1]  743 	ld	a, 0x5237
                                    744 ; genOr
      00A05C 1A 02            [ 1]  745 	or	a, (0x02, sp)
                                    746 ; genPointerSet
      00A05E C7 52 37         [ 1]  747 	ld	0x5237, a
                           000232   748 	Sstm8s_uart1$UART1_ITConfig$135 ==.
                                    749 ; genGoto
      00A061 CC A0 93         [ 2]  750 	jp	00116$
                                    751 ; genLabel
      00A064                        752 00114$:
                           000235   753 	Sstm8s_uart1$UART1_ITConfig$136 ==.
                                    754 ;	../SPL/src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
                                    755 ; genCpl
      00A064 88               [ 1]  756 	push	a
                           000236   757 	Sstm8s_uart1$UART1_ITConfig$137 ==.
      00A065 03 03            [ 1]  758 	cpl	(0x03, sp)
      00A067 84               [ 1]  759 	pop	a
                           000239   760 	Sstm8s_uart1$UART1_ITConfig$138 ==.
                           000239   761 	Sstm8s_uart1$UART1_ITConfig$139 ==.
                           000239   762 	Sstm8s_uart1$UART1_ITConfig$140 ==.
                                    763 ;	../SPL/src/stm8s_uart1.c: 243: if (uartreg == 0x01)
                                    764 ; genIfx
      00A068 0D 01            [ 1]  765 	tnz	(0x01, sp)
      00A06A 26 03            [ 1]  766 	jrne	00154$
      00A06C CC A0 7A         [ 2]  767 	jp	00111$
      00A06F                        768 00154$:
                           000240   769 	Sstm8s_uart1$UART1_ITConfig$141 ==.
                           000240   770 	Sstm8s_uart1$UART1_ITConfig$142 ==.
                                    771 ;	../SPL/src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
                                    772 ; genPointerGet
      00A06F C6 52 34         [ 1]  773 	ld	a, 0x5234
                                    774 ; genAnd
      00A072 14 02            [ 1]  775 	and	a, (0x02, sp)
                                    776 ; genPointerSet
      00A074 C7 52 34         [ 1]  777 	ld	0x5234, a
                           000248   778 	Sstm8s_uart1$UART1_ITConfig$143 ==.
                                    779 ; genGoto
      00A077 CC A0 93         [ 2]  780 	jp	00116$
                                    781 ; genLabel
      00A07A                        782 00111$:
                           00024B   783 	Sstm8s_uart1$UART1_ITConfig$144 ==.
                                    784 ;	../SPL/src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
                                    785 ; genIfx
      00A07A 4D               [ 1]  786 	tnz	a
      00A07B 26 03            [ 1]  787 	jrne	00155$
      00A07D CC A0 8B         [ 2]  788 	jp	00108$
      00A080                        789 00155$:
                           000251   790 	Sstm8s_uart1$UART1_ITConfig$145 ==.
                           000251   791 	Sstm8s_uart1$UART1_ITConfig$146 ==.
                                    792 ;	../SPL/src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
                                    793 ; genPointerGet
      00A080 C6 52 35         [ 1]  794 	ld	a, 0x5235
                                    795 ; genAnd
      00A083 14 02            [ 1]  796 	and	a, (0x02, sp)
                                    797 ; genPointerSet
      00A085 C7 52 35         [ 1]  798 	ld	0x5235, a
                           000259   799 	Sstm8s_uart1$UART1_ITConfig$147 ==.
                                    800 ; genGoto
      00A088 CC A0 93         [ 2]  801 	jp	00116$
                                    802 ; genLabel
      00A08B                        803 00108$:
                           00025C   804 	Sstm8s_uart1$UART1_ITConfig$148 ==.
                           00025C   805 	Sstm8s_uart1$UART1_ITConfig$149 ==.
                                    806 ;	../SPL/src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
                                    807 ; genPointerGet
      00A08B C6 52 37         [ 1]  808 	ld	a, 0x5237
                                    809 ; genAnd
      00A08E 14 02            [ 1]  810 	and	a, (0x02, sp)
                                    811 ; genPointerSet
      00A090 C7 52 37         [ 1]  812 	ld	0x5237, a
                           000264   813 	Sstm8s_uart1$UART1_ITConfig$150 ==.
                                    814 ; genLabel
      00A093                        815 00116$:
                           000264   816 	Sstm8s_uart1$UART1_ITConfig$151 ==.
                                    817 ;	../SPL/src/stm8s_uart1.c: 257: }
                                    818 ; genEndFunction
      00A093 85               [ 2]  819 	popw	x
                           000265   820 	Sstm8s_uart1$UART1_ITConfig$152 ==.
                           000265   821 	Sstm8s_uart1$UART1_ITConfig$153 ==.
                           000265   822 	XG$UART1_ITConfig$0$0 ==.
      00A094 81               [ 4]  823 	ret
                           000266   824 	Sstm8s_uart1$UART1_ITConfig$154 ==.
                           000266   825 	Sstm8s_uart1$UART1_HalfDuplexCmd$155 ==.
                                    826 ;	../SPL/src/stm8s_uart1.c: 265: void UART1_HalfDuplexCmd(FunctionalState NewState)
                                    827 ; genLabel
                                    828 ;	-----------------------------------------
                                    829 ;	 function UART1_HalfDuplexCmd
                                    830 ;	-----------------------------------------
                                    831 ;	Register assignment is optimal.
                                    832 ;	Stack space usage: 0 bytes.
      00A095                        833 _UART1_HalfDuplexCmd:
                           000266   834 	Sstm8s_uart1$UART1_HalfDuplexCmd$156 ==.
                           000266   835 	Sstm8s_uart1$UART1_HalfDuplexCmd$157 ==.
                                    836 ;	../SPL/src/stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
                                    837 ; genPointerGet
      00A095 C6 52 38         [ 1]  838 	ld	a, 0x5238
                           000269   839 	Sstm8s_uart1$UART1_HalfDuplexCmd$158 ==.
                                    840 ;	../SPL/src/stm8s_uart1.c: 269: if (NewState != DISABLE)
                                    841 ; genIfx
      00A098 0D 03            [ 1]  842 	tnz	(0x03, sp)
      00A09A 26 03            [ 1]  843 	jrne	00111$
      00A09C CC A0 A7         [ 2]  844 	jp	00102$
      00A09F                        845 00111$:
                           000270   846 	Sstm8s_uart1$UART1_HalfDuplexCmd$159 ==.
                           000270   847 	Sstm8s_uart1$UART1_HalfDuplexCmd$160 ==.
                                    848 ;	../SPL/src/stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
                                    849 ; genOr
      00A09F AA 08            [ 1]  850 	or	a, #0x08
                                    851 ; genPointerSet
      00A0A1 C7 52 38         [ 1]  852 	ld	0x5238, a
                           000275   853 	Sstm8s_uart1$UART1_HalfDuplexCmd$161 ==.
                                    854 ; genGoto
      00A0A4 CC A0 AC         [ 2]  855 	jp	00104$
                                    856 ; genLabel
      00A0A7                        857 00102$:
                           000278   858 	Sstm8s_uart1$UART1_HalfDuplexCmd$162 ==.
                           000278   859 	Sstm8s_uart1$UART1_HalfDuplexCmd$163 ==.
                                    860 ;	../SPL/src/stm8s_uart1.c: 275: UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
                                    861 ; genAnd
      00A0A7 A4 F7            [ 1]  862 	and	a, #0xf7
                                    863 ; genPointerSet
      00A0A9 C7 52 38         [ 1]  864 	ld	0x5238, a
                           00027D   865 	Sstm8s_uart1$UART1_HalfDuplexCmd$164 ==.
                                    866 ; genLabel
      00A0AC                        867 00104$:
                           00027D   868 	Sstm8s_uart1$UART1_HalfDuplexCmd$165 ==.
                                    869 ;	../SPL/src/stm8s_uart1.c: 277: }
                                    870 ; genEndFunction
                           00027D   871 	Sstm8s_uart1$UART1_HalfDuplexCmd$166 ==.
                           00027D   872 	XG$UART1_HalfDuplexCmd$0$0 ==.
      00A0AC 81               [ 4]  873 	ret
                           00027E   874 	Sstm8s_uart1$UART1_HalfDuplexCmd$167 ==.
                           00027E   875 	Sstm8s_uart1$UART1_IrDAConfig$168 ==.
                                    876 ;	../SPL/src/stm8s_uart1.c: 285: void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
                                    877 ; genLabel
                                    878 ;	-----------------------------------------
                                    879 ;	 function UART1_IrDAConfig
                                    880 ;	-----------------------------------------
                                    881 ;	Register assignment is optimal.
                                    882 ;	Stack space usage: 0 bytes.
      00A0AD                        883 _UART1_IrDAConfig:
                           00027E   884 	Sstm8s_uart1$UART1_IrDAConfig$169 ==.
                           00027E   885 	Sstm8s_uart1$UART1_IrDAConfig$170 ==.
                                    886 ;	../SPL/src/stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
                                    887 ; genPointerGet
      00A0AD C6 52 38         [ 1]  888 	ld	a, 0x5238
                           000281   889 	Sstm8s_uart1$UART1_IrDAConfig$171 ==.
                                    890 ;	../SPL/src/stm8s_uart1.c: 289: if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
                                    891 ; genIfx
      00A0B0 0D 03            [ 1]  892 	tnz	(0x03, sp)
      00A0B2 26 03            [ 1]  893 	jrne	00111$
      00A0B4 CC A0 BF         [ 2]  894 	jp	00102$
      00A0B7                        895 00111$:
                           000288   896 	Sstm8s_uart1$UART1_IrDAConfig$172 ==.
                           000288   897 	Sstm8s_uart1$UART1_IrDAConfig$173 ==.
                                    898 ;	../SPL/src/stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
                                    899 ; genOr
      00A0B7 AA 04            [ 1]  900 	or	a, #0x04
                                    901 ; genPointerSet
      00A0B9 C7 52 38         [ 1]  902 	ld	0x5238, a
                           00028D   903 	Sstm8s_uart1$UART1_IrDAConfig$174 ==.
                                    904 ; genGoto
      00A0BC CC A0 C4         [ 2]  905 	jp	00104$
                                    906 ; genLabel
      00A0BF                        907 00102$:
                           000290   908 	Sstm8s_uart1$UART1_IrDAConfig$175 ==.
                           000290   909 	Sstm8s_uart1$UART1_IrDAConfig$176 ==.
                                    910 ;	../SPL/src/stm8s_uart1.c: 295: UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
                                    911 ; genAnd
      00A0BF A4 FB            [ 1]  912 	and	a, #0xfb
                                    913 ; genPointerSet
      00A0C1 C7 52 38         [ 1]  914 	ld	0x5238, a
                           000295   915 	Sstm8s_uart1$UART1_IrDAConfig$177 ==.
                                    916 ; genLabel
      00A0C4                        917 00104$:
                           000295   918 	Sstm8s_uart1$UART1_IrDAConfig$178 ==.
                                    919 ;	../SPL/src/stm8s_uart1.c: 297: }
                                    920 ; genEndFunction
                           000295   921 	Sstm8s_uart1$UART1_IrDAConfig$179 ==.
                           000295   922 	XG$UART1_IrDAConfig$0$0 ==.
      00A0C4 81               [ 4]  923 	ret
                           000296   924 	Sstm8s_uart1$UART1_IrDAConfig$180 ==.
                           000296   925 	Sstm8s_uart1$UART1_IrDACmd$181 ==.
                                    926 ;	../SPL/src/stm8s_uart1.c: 305: void UART1_IrDACmd(FunctionalState NewState)
                                    927 ; genLabel
                                    928 ;	-----------------------------------------
                                    929 ;	 function UART1_IrDACmd
                                    930 ;	-----------------------------------------
                                    931 ;	Register assignment is optimal.
                                    932 ;	Stack space usage: 0 bytes.
      00A0C5                        933 _UART1_IrDACmd:
                           000296   934 	Sstm8s_uart1$UART1_IrDACmd$182 ==.
                           000296   935 	Sstm8s_uart1$UART1_IrDACmd$183 ==.
                                    936 ;	../SPL/src/stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
                                    937 ; genPointerGet
      00A0C5 C6 52 38         [ 1]  938 	ld	a, 0x5238
                           000299   939 	Sstm8s_uart1$UART1_IrDACmd$184 ==.
                                    940 ;	../SPL/src/stm8s_uart1.c: 310: if (NewState != DISABLE)
                                    941 ; genIfx
      00A0C8 0D 03            [ 1]  942 	tnz	(0x03, sp)
      00A0CA 26 03            [ 1]  943 	jrne	00111$
      00A0CC CC A0 D7         [ 2]  944 	jp	00102$
      00A0CF                        945 00111$:
                           0002A0   946 	Sstm8s_uart1$UART1_IrDACmd$185 ==.
                           0002A0   947 	Sstm8s_uart1$UART1_IrDACmd$186 ==.
                                    948 ;	../SPL/src/stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
                                    949 ; genOr
      00A0CF AA 02            [ 1]  950 	or	a, #0x02
                                    951 ; genPointerSet
      00A0D1 C7 52 38         [ 1]  952 	ld	0x5238, a
                           0002A5   953 	Sstm8s_uart1$UART1_IrDACmd$187 ==.
                                    954 ; genGoto
      00A0D4 CC A0 DC         [ 2]  955 	jp	00104$
                                    956 ; genLabel
      00A0D7                        957 00102$:
                           0002A8   958 	Sstm8s_uart1$UART1_IrDACmd$188 ==.
                           0002A8   959 	Sstm8s_uart1$UART1_IrDACmd$189 ==.
                                    960 ;	../SPL/src/stm8s_uart1.c: 318: UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
                                    961 ; genAnd
      00A0D7 A4 FD            [ 1]  962 	and	a, #0xfd
                                    963 ; genPointerSet
      00A0D9 C7 52 38         [ 1]  964 	ld	0x5238, a
                           0002AD   965 	Sstm8s_uart1$UART1_IrDACmd$190 ==.
                                    966 ; genLabel
      00A0DC                        967 00104$:
                           0002AD   968 	Sstm8s_uart1$UART1_IrDACmd$191 ==.
                                    969 ;	../SPL/src/stm8s_uart1.c: 320: }
                                    970 ; genEndFunction
                           0002AD   971 	Sstm8s_uart1$UART1_IrDACmd$192 ==.
                           0002AD   972 	XG$UART1_IrDACmd$0$0 ==.
      00A0DC 81               [ 4]  973 	ret
                           0002AE   974 	Sstm8s_uart1$UART1_IrDACmd$193 ==.
                           0002AE   975 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$194 ==.
                                    976 ;	../SPL/src/stm8s_uart1.c: 329: void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
                                    977 ; genLabel
                                    978 ;	-----------------------------------------
                                    979 ;	 function UART1_LINBreakDetectionConfig
                                    980 ;	-----------------------------------------
                                    981 ;	Register assignment is optimal.
                                    982 ;	Stack space usage: 0 bytes.
      00A0DD                        983 _UART1_LINBreakDetectionConfig:
                           0002AE   984 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$195 ==.
                           0002AE   985 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$196 ==.
                                    986 ;	../SPL/src/stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
                                    987 ; genPointerGet
      00A0DD C6 52 37         [ 1]  988 	ld	a, 0x5237
                           0002B1   989 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$197 ==.
                                    990 ;	../SPL/src/stm8s_uart1.c: 333: if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
                                    991 ; genIfx
      00A0E0 0D 03            [ 1]  992 	tnz	(0x03, sp)
      00A0E2 26 03            [ 1]  993 	jrne	00111$
      00A0E4 CC A0 EF         [ 2]  994 	jp	00102$
      00A0E7                        995 00111$:
                           0002B8   996 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$198 ==.
                           0002B8   997 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$199 ==.
                                    998 ;	../SPL/src/stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
                                    999 ; genOr
      00A0E7 AA 20            [ 1] 1000 	or	a, #0x20
                                   1001 ; genPointerSet
      00A0E9 C7 52 37         [ 1] 1002 	ld	0x5237, a
                           0002BD  1003 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$200 ==.
                                   1004 ; genGoto
      00A0EC CC A0 F4         [ 2] 1005 	jp	00104$
                                   1006 ; genLabel
      00A0EF                       1007 00102$:
                           0002C0  1008 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$201 ==.
                           0002C0  1009 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$202 ==.
                                   1010 ;	../SPL/src/stm8s_uart1.c: 339: UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
                                   1011 ; genAnd
      00A0EF A4 DF            [ 1] 1012 	and	a, #0xdf
                                   1013 ; genPointerSet
      00A0F1 C7 52 37         [ 1] 1014 	ld	0x5237, a
                           0002C5  1015 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$203 ==.
                                   1016 ; genLabel
      00A0F4                       1017 00104$:
                           0002C5  1018 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$204 ==.
                                   1019 ;	../SPL/src/stm8s_uart1.c: 341: }
                                   1020 ; genEndFunction
                           0002C5  1021 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$205 ==.
                           0002C5  1022 	XG$UART1_LINBreakDetectionConfig$0$0 ==.
      00A0F4 81               [ 4] 1023 	ret
                           0002C6  1024 	Sstm8s_uart1$UART1_LINBreakDetectionConfig$206 ==.
                           0002C6  1025 	Sstm8s_uart1$UART1_LINCmd$207 ==.
                                   1026 ;	../SPL/src/stm8s_uart1.c: 349: void UART1_LINCmd(FunctionalState NewState)
                                   1027 ; genLabel
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function UART1_LINCmd
                                   1030 ;	-----------------------------------------
                                   1031 ;	Register assignment is optimal.
                                   1032 ;	Stack space usage: 0 bytes.
      00A0F5                       1033 _UART1_LINCmd:
                           0002C6  1034 	Sstm8s_uart1$UART1_LINCmd$208 ==.
                           0002C6  1035 	Sstm8s_uart1$UART1_LINCmd$209 ==.
                                   1036 ;	../SPL/src/stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
                                   1037 ; genPointerGet
      00A0F5 C6 52 36         [ 1] 1038 	ld	a, 0x5236
                           0002C9  1039 	Sstm8s_uart1$UART1_LINCmd$210 ==.
                                   1040 ;	../SPL/src/stm8s_uart1.c: 353: if (NewState != DISABLE)
                                   1041 ; genIfx
      00A0F8 0D 03            [ 1] 1042 	tnz	(0x03, sp)
      00A0FA 26 03            [ 1] 1043 	jrne	00111$
      00A0FC CC A1 07         [ 2] 1044 	jp	00102$
      00A0FF                       1045 00111$:
                           0002D0  1046 	Sstm8s_uart1$UART1_LINCmd$211 ==.
                           0002D0  1047 	Sstm8s_uart1$UART1_LINCmd$212 ==.
                                   1048 ;	../SPL/src/stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
                                   1049 ; genOr
      00A0FF AA 40            [ 1] 1050 	or	a, #0x40
                                   1051 ; genPointerSet
      00A101 C7 52 36         [ 1] 1052 	ld	0x5236, a
                           0002D5  1053 	Sstm8s_uart1$UART1_LINCmd$213 ==.
                                   1054 ; genGoto
      00A104 CC A1 0C         [ 2] 1055 	jp	00104$
                                   1056 ; genLabel
      00A107                       1057 00102$:
                           0002D8  1058 	Sstm8s_uart1$UART1_LINCmd$214 ==.
                           0002D8  1059 	Sstm8s_uart1$UART1_LINCmd$215 ==.
                                   1060 ;	../SPL/src/stm8s_uart1.c: 361: UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
                                   1061 ; genAnd
      00A107 A4 BF            [ 1] 1062 	and	a, #0xbf
                                   1063 ; genPointerSet
      00A109 C7 52 36         [ 1] 1064 	ld	0x5236, a
                           0002DD  1065 	Sstm8s_uart1$UART1_LINCmd$216 ==.
                                   1066 ; genLabel
      00A10C                       1067 00104$:
                           0002DD  1068 	Sstm8s_uart1$UART1_LINCmd$217 ==.
                                   1069 ;	../SPL/src/stm8s_uart1.c: 363: }
                                   1070 ; genEndFunction
                           0002DD  1071 	Sstm8s_uart1$UART1_LINCmd$218 ==.
                           0002DD  1072 	XG$UART1_LINCmd$0$0 ==.
      00A10C 81               [ 4] 1073 	ret
                           0002DE  1074 	Sstm8s_uart1$UART1_LINCmd$219 ==.
                           0002DE  1075 	Sstm8s_uart1$UART1_SmartCardCmd$220 ==.
                                   1076 ;	../SPL/src/stm8s_uart1.c: 371: void UART1_SmartCardCmd(FunctionalState NewState)
                                   1077 ; genLabel
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function UART1_SmartCardCmd
                                   1080 ;	-----------------------------------------
                                   1081 ;	Register assignment is optimal.
                                   1082 ;	Stack space usage: 0 bytes.
      00A10D                       1083 _UART1_SmartCardCmd:
                           0002DE  1084 	Sstm8s_uart1$UART1_SmartCardCmd$221 ==.
                           0002DE  1085 	Sstm8s_uart1$UART1_SmartCardCmd$222 ==.
                                   1086 ;	../SPL/src/stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
                                   1087 ; genPointerGet
      00A10D C6 52 38         [ 1] 1088 	ld	a, 0x5238
                           0002E1  1089 	Sstm8s_uart1$UART1_SmartCardCmd$223 ==.
                                   1090 ;	../SPL/src/stm8s_uart1.c: 375: if (NewState != DISABLE)
                                   1091 ; genIfx
      00A110 0D 03            [ 1] 1092 	tnz	(0x03, sp)
      00A112 26 03            [ 1] 1093 	jrne	00111$
      00A114 CC A1 1F         [ 2] 1094 	jp	00102$
      00A117                       1095 00111$:
                           0002E8  1096 	Sstm8s_uart1$UART1_SmartCardCmd$224 ==.
                           0002E8  1097 	Sstm8s_uart1$UART1_SmartCardCmd$225 ==.
                                   1098 ;	../SPL/src/stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
                                   1099 ; genOr
      00A117 AA 20            [ 1] 1100 	or	a, #0x20
                                   1101 ; genPointerSet
      00A119 C7 52 38         [ 1] 1102 	ld	0x5238, a
                           0002ED  1103 	Sstm8s_uart1$UART1_SmartCardCmd$226 ==.
                                   1104 ; genGoto
      00A11C CC A1 24         [ 2] 1105 	jp	00104$
                                   1106 ; genLabel
      00A11F                       1107 00102$:
                           0002F0  1108 	Sstm8s_uart1$UART1_SmartCardCmd$227 ==.
                           0002F0  1109 	Sstm8s_uart1$UART1_SmartCardCmd$228 ==.
                                   1110 ;	../SPL/src/stm8s_uart1.c: 383: UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
                                   1111 ; genAnd
      00A11F A4 DF            [ 1] 1112 	and	a, #0xdf
                                   1113 ; genPointerSet
      00A121 C7 52 38         [ 1] 1114 	ld	0x5238, a
                           0002F5  1115 	Sstm8s_uart1$UART1_SmartCardCmd$229 ==.
                                   1116 ; genLabel
      00A124                       1117 00104$:
                           0002F5  1118 	Sstm8s_uart1$UART1_SmartCardCmd$230 ==.
                                   1119 ;	../SPL/src/stm8s_uart1.c: 385: }
                                   1120 ; genEndFunction
                           0002F5  1121 	Sstm8s_uart1$UART1_SmartCardCmd$231 ==.
                           0002F5  1122 	XG$UART1_SmartCardCmd$0$0 ==.
      00A124 81               [ 4] 1123 	ret
                           0002F6  1124 	Sstm8s_uart1$UART1_SmartCardCmd$232 ==.
                           0002F6  1125 	Sstm8s_uart1$UART1_SmartCardNACKCmd$233 ==.
                                   1126 ;	../SPL/src/stm8s_uart1.c: 394: void UART1_SmartCardNACKCmd(FunctionalState NewState)
                                   1127 ; genLabel
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function UART1_SmartCardNACKCmd
                                   1130 ;	-----------------------------------------
                                   1131 ;	Register assignment is optimal.
                                   1132 ;	Stack space usage: 0 bytes.
      00A125                       1133 _UART1_SmartCardNACKCmd:
                           0002F6  1134 	Sstm8s_uart1$UART1_SmartCardNACKCmd$234 ==.
                           0002F6  1135 	Sstm8s_uart1$UART1_SmartCardNACKCmd$235 ==.
                                   1136 ;	../SPL/src/stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
                                   1137 ; genPointerGet
      00A125 C6 52 38         [ 1] 1138 	ld	a, 0x5238
                           0002F9  1139 	Sstm8s_uart1$UART1_SmartCardNACKCmd$236 ==.
                                   1140 ;	../SPL/src/stm8s_uart1.c: 398: if (NewState != DISABLE)
                                   1141 ; genIfx
      00A128 0D 03            [ 1] 1142 	tnz	(0x03, sp)
      00A12A 26 03            [ 1] 1143 	jrne	00111$
      00A12C CC A1 37         [ 2] 1144 	jp	00102$
      00A12F                       1145 00111$:
                           000300  1146 	Sstm8s_uart1$UART1_SmartCardNACKCmd$237 ==.
                           000300  1147 	Sstm8s_uart1$UART1_SmartCardNACKCmd$238 ==.
                                   1148 ;	../SPL/src/stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
                                   1149 ; genOr
      00A12F AA 10            [ 1] 1150 	or	a, #0x10
                                   1151 ; genPointerSet
      00A131 C7 52 38         [ 1] 1152 	ld	0x5238, a
                           000305  1153 	Sstm8s_uart1$UART1_SmartCardNACKCmd$239 ==.
                                   1154 ; genGoto
      00A134 CC A1 3C         [ 2] 1155 	jp	00104$
                                   1156 ; genLabel
      00A137                       1157 00102$:
                           000308  1158 	Sstm8s_uart1$UART1_SmartCardNACKCmd$240 ==.
                           000308  1159 	Sstm8s_uart1$UART1_SmartCardNACKCmd$241 ==.
                                   1160 ;	../SPL/src/stm8s_uart1.c: 406: UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
                                   1161 ; genAnd
      00A137 A4 EF            [ 1] 1162 	and	a, #0xef
                                   1163 ; genPointerSet
      00A139 C7 52 38         [ 1] 1164 	ld	0x5238, a
                           00030D  1165 	Sstm8s_uart1$UART1_SmartCardNACKCmd$242 ==.
                                   1166 ; genLabel
      00A13C                       1167 00104$:
                           00030D  1168 	Sstm8s_uart1$UART1_SmartCardNACKCmd$243 ==.
                                   1169 ;	../SPL/src/stm8s_uart1.c: 408: }
                                   1170 ; genEndFunction
                           00030D  1171 	Sstm8s_uart1$UART1_SmartCardNACKCmd$244 ==.
                           00030D  1172 	XG$UART1_SmartCardNACKCmd$0$0 ==.
      00A13C 81               [ 4] 1173 	ret
                           00030E  1174 	Sstm8s_uart1$UART1_SmartCardNACKCmd$245 ==.
                           00030E  1175 	Sstm8s_uart1$UART1_WakeUpConfig$246 ==.
                                   1176 ;	../SPL/src/stm8s_uart1.c: 416: void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
                                   1177 ; genLabel
                                   1178 ;	-----------------------------------------
                                   1179 ;	 function UART1_WakeUpConfig
                                   1180 ;	-----------------------------------------
                                   1181 ;	Register assignment is optimal.
                                   1182 ;	Stack space usage: 0 bytes.
      00A13D                       1183 _UART1_WakeUpConfig:
                           00030E  1184 	Sstm8s_uart1$UART1_WakeUpConfig$247 ==.
                           00030E  1185 	Sstm8s_uart1$UART1_WakeUpConfig$248 ==.
                                   1186 ;	../SPL/src/stm8s_uart1.c: 420: UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
                                   1187 ; genPointerGet
      00A13D C6 52 34         [ 1] 1188 	ld	a, 0x5234
                                   1189 ; genAnd
      00A140 A4 F7            [ 1] 1190 	and	a, #0xf7
                                   1191 ; genPointerSet
      00A142 C7 52 34         [ 1] 1192 	ld	0x5234, a
                           000316  1193 	Sstm8s_uart1$UART1_WakeUpConfig$249 ==.
                                   1194 ;	../SPL/src/stm8s_uart1.c: 421: UART1->CR1 |= (uint8_t)UART1_WakeUp;
                                   1195 ; genPointerGet
      00A145 C6 52 34         [ 1] 1196 	ld	a, 0x5234
                                   1197 ; genOr
      00A148 1A 03            [ 1] 1198 	or	a, (0x03, sp)
                                   1199 ; genPointerSet
      00A14A C7 52 34         [ 1] 1200 	ld	0x5234, a
                                   1201 ; genLabel
      00A14D                       1202 00101$:
                           00031E  1203 	Sstm8s_uart1$UART1_WakeUpConfig$250 ==.
                                   1204 ;	../SPL/src/stm8s_uart1.c: 422: }
                                   1205 ; genEndFunction
                           00031E  1206 	Sstm8s_uart1$UART1_WakeUpConfig$251 ==.
                           00031E  1207 	XG$UART1_WakeUpConfig$0$0 ==.
      00A14D 81               [ 4] 1208 	ret
                           00031F  1209 	Sstm8s_uart1$UART1_WakeUpConfig$252 ==.
                           00031F  1210 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253 ==.
                                   1211 ;	../SPL/src/stm8s_uart1.c: 430: void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
                                   1212 ; genLabel
                                   1213 ;	-----------------------------------------
                                   1214 ;	 function UART1_ReceiverWakeUpCmd
                                   1215 ;	-----------------------------------------
                                   1216 ;	Register assignment is optimal.
                                   1217 ;	Stack space usage: 0 bytes.
      00A14E                       1218 _UART1_ReceiverWakeUpCmd:
                           00031F  1219 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254 ==.
                           00031F  1220 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255 ==.
                                   1221 ;	../SPL/src/stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
                                   1222 ; genPointerGet
      00A14E C6 52 35         [ 1] 1223 	ld	a, 0x5235
                           000322  1224 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256 ==.
                                   1225 ;	../SPL/src/stm8s_uart1.c: 434: if (NewState != DISABLE)
                                   1226 ; genIfx
      00A151 0D 03            [ 1] 1227 	tnz	(0x03, sp)
      00A153 26 03            [ 1] 1228 	jrne	00111$
      00A155 CC A1 60         [ 2] 1229 	jp	00102$
      00A158                       1230 00111$:
                           000329  1231 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$257 ==.
                           000329  1232 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258 ==.
                                   1233 ;	../SPL/src/stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
                                   1234 ; genOr
      00A158 AA 02            [ 1] 1235 	or	a, #0x02
                                   1236 ; genPointerSet
      00A15A C7 52 35         [ 1] 1237 	ld	0x5235, a
                           00032E  1238 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$259 ==.
                                   1239 ; genGoto
      00A15D CC A1 65         [ 2] 1240 	jp	00104$
                                   1241 ; genLabel
      00A160                       1242 00102$:
                           000331  1243 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$260 ==.
                           000331  1244 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261 ==.
                                   1245 ;	../SPL/src/stm8s_uart1.c: 442: UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
                                   1246 ; genAnd
      00A160 A4 FD            [ 1] 1247 	and	a, #0xfd
                                   1248 ; genPointerSet
      00A162 C7 52 35         [ 1] 1249 	ld	0x5235, a
                           000336  1250 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$262 ==.
                                   1251 ; genLabel
      00A165                       1252 00104$:
                           000336  1253 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263 ==.
                                   1254 ;	../SPL/src/stm8s_uart1.c: 444: }
                                   1255 ; genEndFunction
                           000336  1256 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$264 ==.
                           000336  1257 	XG$UART1_ReceiverWakeUpCmd$0$0 ==.
      00A165 81               [ 4] 1258 	ret
                           000337  1259 	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265 ==.
                           000337  1260 	Sstm8s_uart1$UART1_ReceiveData8$266 ==.
                                   1261 ;	../SPL/src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
                                   1262 ; genLabel
                                   1263 ;	-----------------------------------------
                                   1264 ;	 function UART1_ReceiveData8
                                   1265 ;	-----------------------------------------
                                   1266 ;	Register assignment is optimal.
                                   1267 ;	Stack space usage: 0 bytes.
      00A166                       1268 _UART1_ReceiveData8:
                           000337  1269 	Sstm8s_uart1$UART1_ReceiveData8$267 ==.
                           000337  1270 	Sstm8s_uart1$UART1_ReceiveData8$268 ==.
                                   1271 ;	../SPL/src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
                                   1272 ; genPointerGet
      00A166 C6 52 31         [ 1] 1273 	ld	a, 0x5231
                                   1274 ; genReturn
                                   1275 ; genLabel
      00A169                       1276 00101$:
                           00033A  1277 	Sstm8s_uart1$UART1_ReceiveData8$269 ==.
                                   1278 ;	../SPL/src/stm8s_uart1.c: 454: }
                                   1279 ; genEndFunction
                           00033A  1280 	Sstm8s_uart1$UART1_ReceiveData8$270 ==.
                           00033A  1281 	XG$UART1_ReceiveData8$0$0 ==.
      00A169 81               [ 4] 1282 	ret
                           00033B  1283 	Sstm8s_uart1$UART1_ReceiveData8$271 ==.
                           00033B  1284 	Sstm8s_uart1$UART1_ReceiveData9$272 ==.
                                   1285 ;	../SPL/src/stm8s_uart1.c: 461: uint16_t UART1_ReceiveData9(void)
                                   1286 ; genLabel
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function UART1_ReceiveData9
                                   1289 ;	-----------------------------------------
                                   1290 ;	Register assignment might be sub-optimal.
                                   1291 ;	Stack space usage: 2 bytes.
      00A16A                       1292 _UART1_ReceiveData9:
                           00033B  1293 	Sstm8s_uart1$UART1_ReceiveData9$273 ==.
      00A16A 89               [ 2] 1294 	pushw	x
                           00033C  1295 	Sstm8s_uart1$UART1_ReceiveData9$274 ==.
                           00033C  1296 	Sstm8s_uart1$UART1_ReceiveData9$275 ==.
                                   1297 ;	../SPL/src/stm8s_uart1.c: 465: temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
                                   1298 ; genPointerGet
      00A16B C6 52 34         [ 1] 1299 	ld	a, 0x5234
                                   1300 ; genCast
                                   1301 ; genAssign
      00A16E 5F               [ 1] 1302 	clrw	x
                                   1303 ; genAnd
      00A16F A4 80            [ 1] 1304 	and	a, #0x80
      00A171 97               [ 1] 1305 	ld	xl, a
      00A172 4F               [ 1] 1306 	clr	a
                                   1307 ; genLeftShiftLiteral
      00A173 95               [ 1] 1308 	ld	xh, a
      00A174 58               [ 2] 1309 	sllw	x
                                   1310 ; genAssign
      00A175 1F 01            [ 2] 1311 	ldw	(0x01, sp), x
                           000348  1312 	Sstm8s_uart1$UART1_ReceiveData9$276 ==.
                                   1313 ;	../SPL/src/stm8s_uart1.c: 466: return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
                                   1314 ; genPointerGet
      00A177 C6 52 31         [ 1] 1315 	ld	a, 0x5231
                                   1316 ; genCast
                                   1317 ; genAssign
      00A17A 5F               [ 1] 1318 	clrw	x
                                   1319 ; genOr
      00A17B 1A 02            [ 1] 1320 	or	a, (0x02, sp)
      00A17D 97               [ 1] 1321 	ld	xl, a
      00A17E 9E               [ 1] 1322 	ld	a, xh
      00A17F 1A 01            [ 1] 1323 	or	a, (0x01, sp)
                                   1324 ; genAnd
      00A181 A4 01            [ 1] 1325 	and	a, #0x01
      00A183 95               [ 1] 1326 	ld	xh, a
                                   1327 ; genReturn
                                   1328 ; genLabel
      00A184                       1329 00101$:
                           000355  1330 	Sstm8s_uart1$UART1_ReceiveData9$277 ==.
                                   1331 ;	../SPL/src/stm8s_uart1.c: 467: }
                                   1332 ; genEndFunction
      00A184 5B 02            [ 2] 1333 	addw	sp, #2
                           000357  1334 	Sstm8s_uart1$UART1_ReceiveData9$278 ==.
                           000357  1335 	Sstm8s_uart1$UART1_ReceiveData9$279 ==.
                           000357  1336 	XG$UART1_ReceiveData9$0$0 ==.
      00A186 81               [ 4] 1337 	ret
                           000358  1338 	Sstm8s_uart1$UART1_ReceiveData9$280 ==.
                           000358  1339 	Sstm8s_uart1$UART1_SendData8$281 ==.
                                   1340 ;	../SPL/src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
                                   1341 ; genLabel
                                   1342 ;	-----------------------------------------
                                   1343 ;	 function UART1_SendData8
                                   1344 ;	-----------------------------------------
                                   1345 ;	Register assignment is optimal.
                                   1346 ;	Stack space usage: 0 bytes.
      00A187                       1347 _UART1_SendData8:
                           000358  1348 	Sstm8s_uart1$UART1_SendData8$282 ==.
                           000358  1349 	Sstm8s_uart1$UART1_SendData8$283 ==.
                                   1350 ;	../SPL/src/stm8s_uart1.c: 477: UART1->DR = Data;
                                   1351 ; genPointerSet
      00A187 AE 52 31         [ 2] 1352 	ldw	x, #0x5231
      00A18A 7B 03            [ 1] 1353 	ld	a, (0x03, sp)
      00A18C F7               [ 1] 1354 	ld	(x), a
                                   1355 ; genLabel
      00A18D                       1356 00101$:
                           00035E  1357 	Sstm8s_uart1$UART1_SendData8$284 ==.
                                   1358 ;	../SPL/src/stm8s_uart1.c: 478: }
                                   1359 ; genEndFunction
                           00035E  1360 	Sstm8s_uart1$UART1_SendData8$285 ==.
                           00035E  1361 	XG$UART1_SendData8$0$0 ==.
      00A18D 81               [ 4] 1362 	ret
                           00035F  1363 	Sstm8s_uart1$UART1_SendData8$286 ==.
                           00035F  1364 	Sstm8s_uart1$UART1_SendData9$287 ==.
                                   1365 ;	../SPL/src/stm8s_uart1.c: 486: void UART1_SendData9(uint16_t Data)
                                   1366 ; genLabel
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function UART1_SendData9
                                   1369 ;	-----------------------------------------
                                   1370 ;	Register assignment might be sub-optimal.
                                   1371 ;	Stack space usage: 1 bytes.
      00A18E                       1372 _UART1_SendData9:
                           00035F  1373 	Sstm8s_uart1$UART1_SendData9$288 ==.
      00A18E 88               [ 1] 1374 	push	a
                           000360  1375 	Sstm8s_uart1$UART1_SendData9$289 ==.
                           000360  1376 	Sstm8s_uart1$UART1_SendData9$290 ==.
                                   1377 ;	../SPL/src/stm8s_uart1.c: 489: UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
                                   1378 ; genPointerGet
      00A18F C6 52 34         [ 1] 1379 	ld	a, 0x5234
                                   1380 ; genAnd
      00A192 A4 BF            [ 1] 1381 	and	a, #0xbf
                                   1382 ; genPointerSet
      00A194 C7 52 34         [ 1] 1383 	ld	0x5234, a
                           000368  1384 	Sstm8s_uart1$UART1_SendData9$291 ==.
                                   1385 ;	../SPL/src/stm8s_uart1.c: 491: UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
                                   1386 ; genPointerGet
      00A197 C6 52 34         [ 1] 1387 	ld	a, 0x5234
      00A19A 6B 01            [ 1] 1388 	ld	(0x01, sp), a
                                   1389 ; genRightShiftLiteral
      00A19C 1E 04            [ 2] 1390 	ldw	x, (0x04, sp)
      00A19E 54               [ 2] 1391 	srlw	x
      00A19F 54               [ 2] 1392 	srlw	x
                                   1393 ; genCast
                                   1394 ; genAssign
      00A1A0 9F               [ 1] 1395 	ld	a, xl
                                   1396 ; genAnd
      00A1A1 A4 40            [ 1] 1397 	and	a, #0x40
                                   1398 ; genOr
      00A1A3 1A 01            [ 1] 1399 	or	a, (0x01, sp)
                                   1400 ; genPointerSet
      00A1A5 C7 52 34         [ 1] 1401 	ld	0x5234, a
                           000379  1402 	Sstm8s_uart1$UART1_SendData9$292 ==.
                                   1403 ;	../SPL/src/stm8s_uart1.c: 493: UART1->DR   = (uint8_t)(Data);
                                   1404 ; genCast
                                   1405 ; genAssign
      00A1A8 7B 05            [ 1] 1406 	ld	a, (0x05, sp)
                                   1407 ; genPointerSet
      00A1AA C7 52 31         [ 1] 1408 	ld	0x5231, a
                                   1409 ; genLabel
      00A1AD                       1410 00101$:
                           00037E  1411 	Sstm8s_uart1$UART1_SendData9$293 ==.
                                   1412 ;	../SPL/src/stm8s_uart1.c: 494: }
                                   1413 ; genEndFunction
      00A1AD 84               [ 1] 1414 	pop	a
                           00037F  1415 	Sstm8s_uart1$UART1_SendData9$294 ==.
                           00037F  1416 	Sstm8s_uart1$UART1_SendData9$295 ==.
                           00037F  1417 	XG$UART1_SendData9$0$0 ==.
      00A1AE 81               [ 4] 1418 	ret
                           000380  1419 	Sstm8s_uart1$UART1_SendData9$296 ==.
                           000380  1420 	Sstm8s_uart1$UART1_SendBreak$297 ==.
                                   1421 ;	../SPL/src/stm8s_uart1.c: 501: void UART1_SendBreak(void)
                                   1422 ; genLabel
                                   1423 ;	-----------------------------------------
                                   1424 ;	 function UART1_SendBreak
                                   1425 ;	-----------------------------------------
                                   1426 ;	Register assignment is optimal.
                                   1427 ;	Stack space usage: 0 bytes.
      00A1AF                       1428 _UART1_SendBreak:
                           000380  1429 	Sstm8s_uart1$UART1_SendBreak$298 ==.
                           000380  1430 	Sstm8s_uart1$UART1_SendBreak$299 ==.
                                   1431 ;	../SPL/src/stm8s_uart1.c: 503: UART1->CR2 |= UART1_CR2_SBK;
                                   1432 ; genPointerGet
      00A1AF C6 52 35         [ 1] 1433 	ld	a, 0x5235
                                   1434 ; genOr
      00A1B2 AA 01            [ 1] 1435 	or	a, #0x01
                                   1436 ; genPointerSet
      00A1B4 C7 52 35         [ 1] 1437 	ld	0x5235, a
                                   1438 ; genLabel
      00A1B7                       1439 00101$:
                           000388  1440 	Sstm8s_uart1$UART1_SendBreak$300 ==.
                                   1441 ;	../SPL/src/stm8s_uart1.c: 504: }
                                   1442 ; genEndFunction
                           000388  1443 	Sstm8s_uart1$UART1_SendBreak$301 ==.
                           000388  1444 	XG$UART1_SendBreak$0$0 ==.
      00A1B7 81               [ 4] 1445 	ret
                           000389  1446 	Sstm8s_uart1$UART1_SendBreak$302 ==.
                           000389  1447 	Sstm8s_uart1$UART1_SetAddress$303 ==.
                                   1448 ;	../SPL/src/stm8s_uart1.c: 511: void UART1_SetAddress(uint8_t UART1_Address)
                                   1449 ; genLabel
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function UART1_SetAddress
                                   1452 ;	-----------------------------------------
                                   1453 ;	Register assignment is optimal.
                                   1454 ;	Stack space usage: 0 bytes.
      00A1B8                       1455 _UART1_SetAddress:
                           000389  1456 	Sstm8s_uart1$UART1_SetAddress$304 ==.
                           000389  1457 	Sstm8s_uart1$UART1_SetAddress$305 ==.
                                   1458 ;	../SPL/src/stm8s_uart1.c: 517: UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
                                   1459 ; genPointerGet
      00A1B8 C6 52 37         [ 1] 1460 	ld	a, 0x5237
                                   1461 ; genAnd
      00A1BB A4 F0            [ 1] 1462 	and	a, #0xf0
                                   1463 ; genPointerSet
      00A1BD C7 52 37         [ 1] 1464 	ld	0x5237, a
                           000391  1465 	Sstm8s_uart1$UART1_SetAddress$306 ==.
                                   1466 ;	../SPL/src/stm8s_uart1.c: 519: UART1->CR4 |= UART1_Address;
                                   1467 ; genPointerGet
      00A1C0 C6 52 37         [ 1] 1468 	ld	a, 0x5237
                                   1469 ; genOr
      00A1C3 1A 03            [ 1] 1470 	or	a, (0x03, sp)
                                   1471 ; genPointerSet
      00A1C5 C7 52 37         [ 1] 1472 	ld	0x5237, a
                                   1473 ; genLabel
      00A1C8                       1474 00101$:
                           000399  1475 	Sstm8s_uart1$UART1_SetAddress$307 ==.
                                   1476 ;	../SPL/src/stm8s_uart1.c: 520: }
                                   1477 ; genEndFunction
                           000399  1478 	Sstm8s_uart1$UART1_SetAddress$308 ==.
                           000399  1479 	XG$UART1_SetAddress$0$0 ==.
      00A1C8 81               [ 4] 1480 	ret
                           00039A  1481 	Sstm8s_uart1$UART1_SetAddress$309 ==.
                           00039A  1482 	Sstm8s_uart1$UART1_SetGuardTime$310 ==.
                                   1483 ;	../SPL/src/stm8s_uart1.c: 528: void UART1_SetGuardTime(uint8_t UART1_GuardTime)
                                   1484 ; genLabel
                                   1485 ;	-----------------------------------------
                                   1486 ;	 function UART1_SetGuardTime
                                   1487 ;	-----------------------------------------
                                   1488 ;	Register assignment is optimal.
                                   1489 ;	Stack space usage: 0 bytes.
      00A1C9                       1490 _UART1_SetGuardTime:
                           00039A  1491 	Sstm8s_uart1$UART1_SetGuardTime$311 ==.
                           00039A  1492 	Sstm8s_uart1$UART1_SetGuardTime$312 ==.
                                   1493 ;	../SPL/src/stm8s_uart1.c: 531: UART1->GTR = UART1_GuardTime;
                                   1494 ; genPointerSet
      00A1C9 AE 52 39         [ 2] 1495 	ldw	x, #0x5239
      00A1CC 7B 03            [ 1] 1496 	ld	a, (0x03, sp)
      00A1CE F7               [ 1] 1497 	ld	(x), a
                                   1498 ; genLabel
      00A1CF                       1499 00101$:
                           0003A0  1500 	Sstm8s_uart1$UART1_SetGuardTime$313 ==.
                                   1501 ;	../SPL/src/stm8s_uart1.c: 532: }
                                   1502 ; genEndFunction
                           0003A0  1503 	Sstm8s_uart1$UART1_SetGuardTime$314 ==.
                           0003A0  1504 	XG$UART1_SetGuardTime$0$0 ==.
      00A1CF 81               [ 4] 1505 	ret
                           0003A1  1506 	Sstm8s_uart1$UART1_SetGuardTime$315 ==.
                           0003A1  1507 	Sstm8s_uart1$UART1_SetPrescaler$316 ==.
                                   1508 ;	../SPL/src/stm8s_uart1.c: 556: void UART1_SetPrescaler(uint8_t UART1_Prescaler)
                                   1509 ; genLabel
                                   1510 ;	-----------------------------------------
                                   1511 ;	 function UART1_SetPrescaler
                                   1512 ;	-----------------------------------------
                                   1513 ;	Register assignment is optimal.
                                   1514 ;	Stack space usage: 0 bytes.
      00A1D0                       1515 _UART1_SetPrescaler:
                           0003A1  1516 	Sstm8s_uart1$UART1_SetPrescaler$317 ==.
                           0003A1  1517 	Sstm8s_uart1$UART1_SetPrescaler$318 ==.
                                   1518 ;	../SPL/src/stm8s_uart1.c: 559: UART1->PSCR = UART1_Prescaler;
                                   1519 ; genPointerSet
      00A1D0 AE 52 3A         [ 2] 1520 	ldw	x, #0x523a
      00A1D3 7B 03            [ 1] 1521 	ld	a, (0x03, sp)
      00A1D5 F7               [ 1] 1522 	ld	(x), a
                                   1523 ; genLabel
      00A1D6                       1524 00101$:
                           0003A7  1525 	Sstm8s_uart1$UART1_SetPrescaler$319 ==.
                                   1526 ;	../SPL/src/stm8s_uart1.c: 560: }
                                   1527 ; genEndFunction
                           0003A7  1528 	Sstm8s_uart1$UART1_SetPrescaler$320 ==.
                           0003A7  1529 	XG$UART1_SetPrescaler$0$0 ==.
      00A1D6 81               [ 4] 1530 	ret
                           0003A8  1531 	Sstm8s_uart1$UART1_SetPrescaler$321 ==.
                           0003A8  1532 	Sstm8s_uart1$UART1_GetFlagStatus$322 ==.
                                   1533 ;	../SPL/src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                   1534 ; genLabel
                                   1535 ;	-----------------------------------------
                                   1536 ;	 function UART1_GetFlagStatus
                                   1537 ;	-----------------------------------------
                                   1538 ;	Register assignment might be sub-optimal.
                                   1539 ;	Stack space usage: 3 bytes.
      00A1D7                       1540 _UART1_GetFlagStatus:
                           0003A8  1541 	Sstm8s_uart1$UART1_GetFlagStatus$323 ==.
      00A1D7 52 03            [ 2] 1542 	sub	sp, #3
                           0003AA  1543 	Sstm8s_uart1$UART1_GetFlagStatus$324 ==.
                           0003AA  1544 	Sstm8s_uart1$UART1_GetFlagStatus$325 ==.
                                   1545 ;	../SPL/src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
                                   1546 ; genCast
                                   1547 ; genAssign
      00A1D9 16 06            [ 2] 1548 	ldw	y, (0x06, sp)
      00A1DB 17 01            [ 2] 1549 	ldw	(0x01, sp), y
                           0003AE  1550 	Sstm8s_uart1$UART1_GetFlagStatus$326 ==.
                                   1551 ;	../SPL/src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
                                   1552 ; genCast
                                   1553 ; genAssign
      00A1DD 7B 07            [ 1] 1554 	ld	a, (0x07, sp)
      00A1DF 6B 03            [ 1] 1555 	ld	(0x03, sp), a
                           0003B2  1556 	Sstm8s_uart1$UART1_GetFlagStatus$327 ==.
                                   1557 ;	../SPL/src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
                                   1558 ; genCmpEQorNE
      00A1E1 1E 01            [ 2] 1559 	ldw	x, (0x01, sp)
      00A1E3 A3 02 10         [ 2] 1560 	cpw	x, #0x0210
      00A1E6 26 03            [ 1] 1561 	jrne	00144$
      00A1E8 CC A1 EE         [ 2] 1562 	jp	00145$
      00A1EB                       1563 00144$:
      00A1EB CC A2 02         [ 2] 1564 	jp	00114$
      00A1EE                       1565 00145$:
                           0003BF  1566 	Sstm8s_uart1$UART1_GetFlagStatus$328 ==.
                                   1567 ; skipping generated iCode
                           0003BF  1568 	Sstm8s_uart1$UART1_GetFlagStatus$329 ==.
                           0003BF  1569 	Sstm8s_uart1$UART1_GetFlagStatus$330 ==.
                                   1570 ;	../SPL/src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
                                   1571 ; genPointerGet
      00A1EE C6 52 37         [ 1] 1572 	ld	a, 0x5237
                                   1573 ; genAnd
      00A1F1 14 03            [ 1] 1574 	and	a, (0x03, sp)
                                   1575 ; genIfx
      00A1F3 4D               [ 1] 1576 	tnz	a
      00A1F4 26 03            [ 1] 1577 	jrne	00146$
      00A1F6 CC A1 FE         [ 2] 1578 	jp	00102$
      00A1F9                       1579 00146$:
                           0003CA  1580 	Sstm8s_uart1$UART1_GetFlagStatus$331 ==.
                           0003CA  1581 	Sstm8s_uart1$UART1_GetFlagStatus$332 ==.
                                   1582 ;	../SPL/src/stm8s_uart1.c: 582: status = SET;
                                   1583 ; genAssign
      00A1F9 A6 01            [ 1] 1584 	ld	a, #0x01
                           0003CC  1585 	Sstm8s_uart1$UART1_GetFlagStatus$333 ==.
                                   1586 ; genGoto
      00A1FB CC A2 34         [ 2] 1587 	jp	00115$
                                   1588 ; genLabel
      00A1FE                       1589 00102$:
                           0003CF  1590 	Sstm8s_uart1$UART1_GetFlagStatus$334 ==.
                           0003CF  1591 	Sstm8s_uart1$UART1_GetFlagStatus$335 ==.
                                   1592 ;	../SPL/src/stm8s_uart1.c: 587: status = RESET;
                                   1593 ; genAssign
      00A1FE 4F               [ 1] 1594 	clr	a
                           0003D0  1595 	Sstm8s_uart1$UART1_GetFlagStatus$336 ==.
                                   1596 ; genGoto
      00A1FF CC A2 34         [ 2] 1597 	jp	00115$
                                   1598 ; genLabel
      00A202                       1599 00114$:
                           0003D3  1600 	Sstm8s_uart1$UART1_GetFlagStatus$337 ==.
                                   1601 ;	../SPL/src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
                                   1602 ; genCmpEQorNE
      00A202 1E 01            [ 2] 1603 	ldw	x, (0x01, sp)
      00A204 A3 01 01         [ 2] 1604 	cpw	x, #0x0101
      00A207 26 03            [ 1] 1605 	jrne	00148$
      00A209 CC A2 0F         [ 2] 1606 	jp	00149$
      00A20C                       1607 00148$:
      00A20C CC A2 23         [ 2] 1608 	jp	00111$
      00A20F                       1609 00149$:
                           0003E0  1610 	Sstm8s_uart1$UART1_GetFlagStatus$338 ==.
                                   1611 ; skipping generated iCode
                           0003E0  1612 	Sstm8s_uart1$UART1_GetFlagStatus$339 ==.
                           0003E0  1613 	Sstm8s_uart1$UART1_GetFlagStatus$340 ==.
                                   1614 ;	../SPL/src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
                                   1615 ; genPointerGet
      00A20F C6 52 35         [ 1] 1616 	ld	a, 0x5235
                                   1617 ; genAnd
      00A212 14 03            [ 1] 1618 	and	a, (0x03, sp)
                                   1619 ; genIfx
      00A214 4D               [ 1] 1620 	tnz	a
      00A215 26 03            [ 1] 1621 	jrne	00150$
      00A217 CC A2 1F         [ 2] 1622 	jp	00105$
      00A21A                       1623 00150$:
                           0003EB  1624 	Sstm8s_uart1$UART1_GetFlagStatus$341 ==.
                           0003EB  1625 	Sstm8s_uart1$UART1_GetFlagStatus$342 ==.
                                   1626 ;	../SPL/src/stm8s_uart1.c: 595: status = SET;
                                   1627 ; genAssign
      00A21A A6 01            [ 1] 1628 	ld	a, #0x01
                           0003ED  1629 	Sstm8s_uart1$UART1_GetFlagStatus$343 ==.
                                   1630 ; genGoto
      00A21C CC A2 34         [ 2] 1631 	jp	00115$
                                   1632 ; genLabel
      00A21F                       1633 00105$:
                           0003F0  1634 	Sstm8s_uart1$UART1_GetFlagStatus$344 ==.
                           0003F0  1635 	Sstm8s_uart1$UART1_GetFlagStatus$345 ==.
                                   1636 ;	../SPL/src/stm8s_uart1.c: 600: status = RESET;
                                   1637 ; genAssign
      00A21F 4F               [ 1] 1638 	clr	a
                           0003F1  1639 	Sstm8s_uart1$UART1_GetFlagStatus$346 ==.
                                   1640 ; genGoto
      00A220 CC A2 34         [ 2] 1641 	jp	00115$
                                   1642 ; genLabel
      00A223                       1643 00111$:
                           0003F4  1644 	Sstm8s_uart1$UART1_GetFlagStatus$347 ==.
                           0003F4  1645 	Sstm8s_uart1$UART1_GetFlagStatus$348 ==.
                                   1646 ;	../SPL/src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
                                   1647 ; genPointerGet
      00A223 C6 52 30         [ 1] 1648 	ld	a, 0x5230
                                   1649 ; genAnd
      00A226 14 03            [ 1] 1650 	and	a, (0x03, sp)
                                   1651 ; genIfx
      00A228 4D               [ 1] 1652 	tnz	a
      00A229 26 03            [ 1] 1653 	jrne	00151$
      00A22B CC A2 33         [ 2] 1654 	jp	00108$
      00A22E                       1655 00151$:
                           0003FF  1656 	Sstm8s_uart1$UART1_GetFlagStatus$349 ==.
                           0003FF  1657 	Sstm8s_uart1$UART1_GetFlagStatus$350 ==.
                                   1658 ;	../SPL/src/stm8s_uart1.c: 608: status = SET;
                                   1659 ; genAssign
      00A22E A6 01            [ 1] 1660 	ld	a, #0x01
                           000401  1661 	Sstm8s_uart1$UART1_GetFlagStatus$351 ==.
                                   1662 ; genGoto
      00A230 CC A2 34         [ 2] 1663 	jp	00115$
                                   1664 ; genLabel
      00A233                       1665 00108$:
                           000404  1666 	Sstm8s_uart1$UART1_GetFlagStatus$352 ==.
                           000404  1667 	Sstm8s_uart1$UART1_GetFlagStatus$353 ==.
                                   1668 ;	../SPL/src/stm8s_uart1.c: 613: status = RESET;
                                   1669 ; genAssign
      00A233 4F               [ 1] 1670 	clr	a
                           000405  1671 	Sstm8s_uart1$UART1_GetFlagStatus$354 ==.
                                   1672 ; genLabel
      00A234                       1673 00115$:
                           000405  1674 	Sstm8s_uart1$UART1_GetFlagStatus$355 ==.
                                   1675 ;	../SPL/src/stm8s_uart1.c: 617: return status;
                                   1676 ; genReturn
                                   1677 ; genLabel
      00A234                       1678 00116$:
                           000405  1679 	Sstm8s_uart1$UART1_GetFlagStatus$356 ==.
                                   1680 ;	../SPL/src/stm8s_uart1.c: 618: }
                                   1681 ; genEndFunction
      00A234 5B 03            [ 2] 1682 	addw	sp, #3
                           000407  1683 	Sstm8s_uart1$UART1_GetFlagStatus$357 ==.
                           000407  1684 	Sstm8s_uart1$UART1_GetFlagStatus$358 ==.
                           000407  1685 	XG$UART1_GetFlagStatus$0$0 ==.
      00A236 81               [ 4] 1686 	ret
                           000408  1687 	Sstm8s_uart1$UART1_GetFlagStatus$359 ==.
                           000408  1688 	Sstm8s_uart1$UART1_ClearFlag$360 ==.
                                   1689 ;	../SPL/src/stm8s_uart1.c: 646: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                   1690 ; genLabel
                                   1691 ;	-----------------------------------------
                                   1692 ;	 function UART1_ClearFlag
                                   1693 ;	-----------------------------------------
                                   1694 ;	Register assignment is optimal.
                                   1695 ;	Stack space usage: 0 bytes.
      00A237                       1696 _UART1_ClearFlag:
                           000408  1697 	Sstm8s_uart1$UART1_ClearFlag$361 ==.
                           000408  1698 	Sstm8s_uart1$UART1_ClearFlag$362 ==.
                                   1699 ;	../SPL/src/stm8s_uart1.c: 651: if (UART1_FLAG == UART1_FLAG_RXNE)
                                   1700 ; genCast
                                   1701 ; genAssign
      00A237 1E 03            [ 2] 1702 	ldw	x, (0x03, sp)
                                   1703 ; genCmpEQorNE
      00A239 A3 00 20         [ 2] 1704 	cpw	x, #0x0020
      00A23C 26 03            [ 1] 1705 	jrne	00112$
      00A23E CC A2 44         [ 2] 1706 	jp	00113$
      00A241                       1707 00112$:
      00A241 CC A2 4B         [ 2] 1708 	jp	00102$
      00A244                       1709 00113$:
                           000415  1710 	Sstm8s_uart1$UART1_ClearFlag$363 ==.
                                   1711 ; skipping generated iCode
                           000415  1712 	Sstm8s_uart1$UART1_ClearFlag$364 ==.
                           000415  1713 	Sstm8s_uart1$UART1_ClearFlag$365 ==.
                                   1714 ;	../SPL/src/stm8s_uart1.c: 653: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
                                   1715 ; genPointerSet
      00A244 35 DF 52 30      [ 1] 1716 	mov	0x5230+0, #0xdf
                           000419  1717 	Sstm8s_uart1$UART1_ClearFlag$366 ==.
                                   1718 ; genGoto
      00A248 CC A2 53         [ 2] 1719 	jp	00104$
                                   1720 ; genLabel
      00A24B                       1721 00102$:
                           00041C  1722 	Sstm8s_uart1$UART1_ClearFlag$367 ==.
                           00041C  1723 	Sstm8s_uart1$UART1_ClearFlag$368 ==.
                                   1724 ;	../SPL/src/stm8s_uart1.c: 658: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
                                   1725 ; genPointerGet
      00A24B C6 52 37         [ 1] 1726 	ld	a, 0x5237
                                   1727 ; genAnd
      00A24E A4 EF            [ 1] 1728 	and	a, #0xef
                                   1729 ; genPointerSet
      00A250 C7 52 37         [ 1] 1730 	ld	0x5237, a
                           000424  1731 	Sstm8s_uart1$UART1_ClearFlag$369 ==.
                                   1732 ; genLabel
      00A253                       1733 00104$:
                           000424  1734 	Sstm8s_uart1$UART1_ClearFlag$370 ==.
                                   1735 ;	../SPL/src/stm8s_uart1.c: 660: }
                                   1736 ; genEndFunction
                           000424  1737 	Sstm8s_uart1$UART1_ClearFlag$371 ==.
                           000424  1738 	XG$UART1_ClearFlag$0$0 ==.
      00A253 81               [ 4] 1739 	ret
                           000425  1740 	Sstm8s_uart1$UART1_ClearFlag$372 ==.
                           000425  1741 	Sstm8s_uart1$UART1_GetITStatus$373 ==.
                                   1742 ;	../SPL/src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
                                   1743 ; genLabel
                                   1744 ;	-----------------------------------------
                                   1745 ;	 function UART1_GetITStatus
                                   1746 ;	-----------------------------------------
                                   1747 ;	Register assignment might be sub-optimal.
                                   1748 ;	Stack space usage: 4 bytes.
      00A254                       1749 _UART1_GetITStatus:
                           000425  1750 	Sstm8s_uart1$UART1_GetITStatus$374 ==.
      00A254 52 04            [ 2] 1751 	sub	sp, #4
                           000427  1752 	Sstm8s_uart1$UART1_GetITStatus$375 ==.
                           000427  1753 	Sstm8s_uart1$UART1_GetITStatus$376 ==.
                                   1754 ;	../SPL/src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
                                   1755 ; genCast
                                   1756 ; genAssign
      00A256 7B 08            [ 1] 1757 	ld	a, (0x08, sp)
      00A258 97               [ 1] 1758 	ld	xl, a
                                   1759 ; genAnd
      00A259 9F               [ 1] 1760 	ld	a, xl
      00A25A A4 0F            [ 1] 1761 	and	a, #0x0f
                                   1762 ; genLeftShift
      00A25C 88               [ 1] 1763 	push	a
                           00042E  1764 	Sstm8s_uart1$UART1_GetITStatus$377 ==.
      00A25D A6 01            [ 1] 1765 	ld	a, #0x01
      00A25F 6B 02            [ 1] 1766 	ld	(0x02, sp), a
      00A261 84               [ 1] 1767 	pop	a
                           000433  1768 	Sstm8s_uart1$UART1_GetITStatus$378 ==.
      00A262 4D               [ 1] 1769 	tnz	a
      00A263 27 05            [ 1] 1770 	jreq	00162$
      00A265                       1771 00161$:
      00A265 08 01            [ 1] 1772 	sll	(0x01, sp)
      00A267 4A               [ 1] 1773 	dec	a
      00A268 26 FB            [ 1] 1774 	jrne	00161$
      00A26A                       1775 00162$:
                           00043B  1776 	Sstm8s_uart1$UART1_GetITStatus$379 ==.
                                   1777 ;	../SPL/src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
                                   1778 ; genRightShiftLiteral
      00A26A 9F               [ 1] 1779 	ld	a, xl
      00A26B 4E               [ 1] 1780 	swap	a
      00A26C A4 0F            [ 1] 1781 	and	a, #0x0f
                           00043F  1782 	Sstm8s_uart1$UART1_GetITStatus$380 ==.
                                   1783 ;	../SPL/src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
                                   1784 ; genLeftShift
      00A26E 88               [ 1] 1785 	push	a
                           000440  1786 	Sstm8s_uart1$UART1_GetITStatus$381 ==.
      00A26F A6 01            [ 1] 1787 	ld	a, #0x01
      00A271 6B 03            [ 1] 1788 	ld	(0x03, sp), a
      00A273 84               [ 1] 1789 	pop	a
                           000445  1790 	Sstm8s_uart1$UART1_GetITStatus$382 ==.
      00A274 4D               [ 1] 1791 	tnz	a
      00A275 27 05            [ 1] 1792 	jreq	00164$
      00A277                       1793 00163$:
      00A277 08 02            [ 1] 1794 	sll	(0x02, sp)
      00A279 4A               [ 1] 1795 	dec	a
      00A27A 26 FB            [ 1] 1796 	jrne	00163$
      00A27C                       1797 00164$:
                           00044D  1798 	Sstm8s_uart1$UART1_GetITStatus$383 ==.
                                   1799 ;	../SPL/src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
                                   1800 ; genCast
                                   1801 ; genAssign
      00A27C 16 07            [ 2] 1802 	ldw	y, (0x07, sp)
      00A27E 17 03            [ 2] 1803 	ldw	(0x03, sp), y
                                   1804 ; genCmpEQorNE
      00A280 1E 03            [ 2] 1805 	ldw	x, (0x03, sp)
      00A282 A3 01 00         [ 2] 1806 	cpw	x, #0x0100
      00A285 26 03            [ 1] 1807 	jrne	00166$
      00A287 CC A2 8D         [ 2] 1808 	jp	00167$
      00A28A                       1809 00166$:
      00A28A CC A2 AE         [ 2] 1810 	jp	00117$
      00A28D                       1811 00167$:
                           00045E  1812 	Sstm8s_uart1$UART1_GetITStatus$384 ==.
                                   1813 ; skipping generated iCode
                           00045E  1814 	Sstm8s_uart1$UART1_GetITStatus$385 ==.
                           00045E  1815 	Sstm8s_uart1$UART1_GetITStatus$386 ==.
                                   1816 ;	../SPL/src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
                                   1817 ; genPointerGet
      00A28D C6 52 34         [ 1] 1818 	ld	a, 0x5234
                                   1819 ; genAnd
      00A290 14 02            [ 1] 1820 	and	a, (0x02, sp)
      00A292 97               [ 1] 1821 	ld	xl, a
                           000464  1822 	Sstm8s_uart1$UART1_GetITStatus$387 ==.
                                   1823 ;	../SPL/src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
                                   1824 ; genPointerGet
      00A293 C6 52 30         [ 1] 1825 	ld	a, 0x5230
                                   1826 ; genAnd
      00A296 14 01            [ 1] 1827 	and	a, (0x01, sp)
                                   1828 ; genIfx
      00A298 4D               [ 1] 1829 	tnz	a
      00A299 26 03            [ 1] 1830 	jrne	00168$
      00A29B CC A2 AA         [ 2] 1831 	jp	00102$
      00A29E                       1832 00168$:
                                   1833 ; genIfx
      00A29E 9F               [ 1] 1834 	ld	a, xl
      00A29F 4D               [ 1] 1835 	tnz	a
      00A2A0 26 03            [ 1] 1836 	jrne	00169$
      00A2A2 CC A2 AA         [ 2] 1837 	jp	00102$
      00A2A5                       1838 00169$:
                           000476  1839 	Sstm8s_uart1$UART1_GetITStatus$388 ==.
                           000476  1840 	Sstm8s_uart1$UART1_GetITStatus$389 ==.
                                   1841 ;	../SPL/src/stm8s_uart1.c: 704: pendingbitstatus = SET;
                                   1842 ; genAssign
      00A2A5 A6 01            [ 1] 1843 	ld	a, #0x01
                           000478  1844 	Sstm8s_uart1$UART1_GetITStatus$390 ==.
                                   1845 ; genGoto
      00A2A7 CC A2 FA         [ 2] 1846 	jp	00118$
                                   1847 ; genLabel
      00A2AA                       1848 00102$:
                           00047B  1849 	Sstm8s_uart1$UART1_GetITStatus$391 ==.
                           00047B  1850 	Sstm8s_uart1$UART1_GetITStatus$392 ==.
                                   1851 ;	../SPL/src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
                                   1852 ; genAssign
      00A2AA 4F               [ 1] 1853 	clr	a
                           00047C  1854 	Sstm8s_uart1$UART1_GetITStatus$393 ==.
                                   1855 ; genGoto
      00A2AB CC A2 FA         [ 2] 1856 	jp	00118$
                                   1857 ; genLabel
      00A2AE                       1858 00117$:
                           00047F  1859 	Sstm8s_uart1$UART1_GetITStatus$394 ==.
                                   1860 ;	../SPL/src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
                                   1861 ; genCmpEQorNE
      00A2AE 1E 03            [ 2] 1862 	ldw	x, (0x03, sp)
      00A2B0 A3 03 46         [ 2] 1863 	cpw	x, #0x0346
      00A2B3 26 03            [ 1] 1864 	jrne	00171$
      00A2B5 CC A2 BB         [ 2] 1865 	jp	00172$
      00A2B8                       1866 00171$:
      00A2B8 CC A2 DC         [ 2] 1867 	jp	00114$
      00A2BB                       1868 00172$:
                           00048C  1869 	Sstm8s_uart1$UART1_GetITStatus$395 ==.
                                   1870 ; skipping generated iCode
                           00048C  1871 	Sstm8s_uart1$UART1_GetITStatus$396 ==.
                           00048C  1872 	Sstm8s_uart1$UART1_GetITStatus$397 ==.
                                   1873 ;	../SPL/src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
                                   1874 ; genPointerGet
      00A2BB C6 52 37         [ 1] 1875 	ld	a, 0x5237
                                   1876 ; genAnd
      00A2BE 14 02            [ 1] 1877 	and	a, (0x02, sp)
                                   1878 ; genAssign
      00A2C0 97               [ 1] 1879 	ld	xl, a
                           000492  1880 	Sstm8s_uart1$UART1_GetITStatus$398 ==.
                                   1881 ;	../SPL/src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
                                   1882 ; genPointerGet
      00A2C1 C6 52 37         [ 1] 1883 	ld	a, 0x5237
                                   1884 ; genAnd
      00A2C4 14 01            [ 1] 1885 	and	a, (0x01, sp)
                                   1886 ; genIfx
      00A2C6 4D               [ 1] 1887 	tnz	a
      00A2C7 26 03            [ 1] 1888 	jrne	00173$
      00A2C9 CC A2 D8         [ 2] 1889 	jp	00106$
      00A2CC                       1890 00173$:
                                   1891 ; genIfx
      00A2CC 9F               [ 1] 1892 	ld	a, xl
      00A2CD 4D               [ 1] 1893 	tnz	a
      00A2CE 26 03            [ 1] 1894 	jrne	00174$
      00A2D0 CC A2 D8         [ 2] 1895 	jp	00106$
      00A2D3                       1896 00174$:
                           0004A4  1897 	Sstm8s_uart1$UART1_GetITStatus$399 ==.
                           0004A4  1898 	Sstm8s_uart1$UART1_GetITStatus$400 ==.
                                   1899 ;	../SPL/src/stm8s_uart1.c: 721: pendingbitstatus = SET;
                                   1900 ; genAssign
      00A2D3 A6 01            [ 1] 1901 	ld	a, #0x01
                           0004A6  1902 	Sstm8s_uart1$UART1_GetITStatus$401 ==.
                                   1903 ; genGoto
      00A2D5 CC A2 FA         [ 2] 1904 	jp	00118$
                                   1905 ; genLabel
      00A2D8                       1906 00106$:
                           0004A9  1907 	Sstm8s_uart1$UART1_GetITStatus$402 ==.
                           0004A9  1908 	Sstm8s_uart1$UART1_GetITStatus$403 ==.
                                   1909 ;	../SPL/src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
                                   1910 ; genAssign
      00A2D8 4F               [ 1] 1911 	clr	a
                           0004AA  1912 	Sstm8s_uart1$UART1_GetITStatus$404 ==.
                                   1913 ; genGoto
      00A2D9 CC A2 FA         [ 2] 1914 	jp	00118$
                                   1915 ; genLabel
      00A2DC                       1916 00114$:
                           0004AD  1917 	Sstm8s_uart1$UART1_GetITStatus$405 ==.
                           0004AD  1918 	Sstm8s_uart1$UART1_GetITStatus$406 ==.
                                   1919 ;	../SPL/src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
                                   1920 ; genPointerGet
      00A2DC C6 52 35         [ 1] 1921 	ld	a, 0x5235
                                   1922 ; genAnd
      00A2DF 14 02            [ 1] 1923 	and	a, (0x02, sp)
      00A2E1 97               [ 1] 1924 	ld	xl, a
                           0004B3  1925 	Sstm8s_uart1$UART1_GetITStatus$407 ==.
                                   1926 ;	../SPL/src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
                                   1927 ; genPointerGet
      00A2E2 C6 52 30         [ 1] 1928 	ld	a, 0x5230
                                   1929 ; genAnd
      00A2E5 14 01            [ 1] 1930 	and	a, (0x01, sp)
                                   1931 ; genIfx
      00A2E7 4D               [ 1] 1932 	tnz	a
      00A2E8 26 03            [ 1] 1933 	jrne	00175$
      00A2EA CC A2 F9         [ 2] 1934 	jp	00110$
      00A2ED                       1935 00175$:
                                   1936 ; genIfx
      00A2ED 9F               [ 1] 1937 	ld	a, xl
      00A2EE 4D               [ 1] 1938 	tnz	a
      00A2EF 26 03            [ 1] 1939 	jrne	00176$
      00A2F1 CC A2 F9         [ 2] 1940 	jp	00110$
      00A2F4                       1941 00176$:
                           0004C5  1942 	Sstm8s_uart1$UART1_GetITStatus$408 ==.
                           0004C5  1943 	Sstm8s_uart1$UART1_GetITStatus$409 ==.
                                   1944 ;	../SPL/src/stm8s_uart1.c: 737: pendingbitstatus = SET;
                                   1945 ; genAssign
      00A2F4 A6 01            [ 1] 1946 	ld	a, #0x01
                           0004C7  1947 	Sstm8s_uart1$UART1_GetITStatus$410 ==.
                                   1948 ; genGoto
      00A2F6 CC A2 FA         [ 2] 1949 	jp	00118$
                                   1950 ; genLabel
      00A2F9                       1951 00110$:
                           0004CA  1952 	Sstm8s_uart1$UART1_GetITStatus$411 ==.
                           0004CA  1953 	Sstm8s_uart1$UART1_GetITStatus$412 ==.
                                   1954 ;	../SPL/src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
                                   1955 ; genAssign
      00A2F9 4F               [ 1] 1956 	clr	a
                           0004CB  1957 	Sstm8s_uart1$UART1_GetITStatus$413 ==.
                                   1958 ; genLabel
      00A2FA                       1959 00118$:
                           0004CB  1960 	Sstm8s_uart1$UART1_GetITStatus$414 ==.
                                   1961 ;	../SPL/src/stm8s_uart1.c: 747: return  pendingbitstatus;
                                   1962 ; genReturn
                                   1963 ; genLabel
      00A2FA                       1964 00119$:
                           0004CB  1965 	Sstm8s_uart1$UART1_GetITStatus$415 ==.
                                   1966 ;	../SPL/src/stm8s_uart1.c: 748: }
                                   1967 ; genEndFunction
      00A2FA 5B 04            [ 2] 1968 	addw	sp, #4
                           0004CD  1969 	Sstm8s_uart1$UART1_GetITStatus$416 ==.
                           0004CD  1970 	Sstm8s_uart1$UART1_GetITStatus$417 ==.
                           0004CD  1971 	XG$UART1_GetITStatus$0$0 ==.
      00A2FC 81               [ 4] 1972 	ret
                           0004CE  1973 	Sstm8s_uart1$UART1_GetITStatus$418 ==.
                           0004CE  1974 	Sstm8s_uart1$UART1_ClearITPendingBit$419 ==.
                                   1975 ;	../SPL/src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
                                   1976 ; genLabel
                                   1977 ;	-----------------------------------------
                                   1978 ;	 function UART1_ClearITPendingBit
                                   1979 ;	-----------------------------------------
                                   1980 ;	Register assignment is optimal.
                                   1981 ;	Stack space usage: 0 bytes.
      00A2FD                       1982 _UART1_ClearITPendingBit:
                           0004CE  1983 	Sstm8s_uart1$UART1_ClearITPendingBit$420 ==.
                           0004CE  1984 	Sstm8s_uart1$UART1_ClearITPendingBit$421 ==.
                                   1985 ;	../SPL/src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
                                   1986 ; genCast
                                   1987 ; genAssign
      00A2FD 1E 03            [ 2] 1988 	ldw	x, (0x03, sp)
                                   1989 ; genCmpEQorNE
      00A2FF A3 02 55         [ 2] 1990 	cpw	x, #0x0255
      00A302 26 03            [ 1] 1991 	jrne	00112$
      00A304 CC A3 0A         [ 2] 1992 	jp	00113$
      00A307                       1993 00112$:
      00A307 CC A3 11         [ 2] 1994 	jp	00102$
      00A30A                       1995 00113$:
                           0004DB  1996 	Sstm8s_uart1$UART1_ClearITPendingBit$422 ==.
                                   1997 ; skipping generated iCode
                           0004DB  1998 	Sstm8s_uart1$UART1_ClearITPendingBit$423 ==.
                           0004DB  1999 	Sstm8s_uart1$UART1_ClearITPendingBit$424 ==.
                                   2000 ;	../SPL/src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
                                   2001 ; genPointerSet
      00A30A 35 DF 52 30      [ 1] 2002 	mov	0x5230+0, #0xdf
                           0004DF  2003 	Sstm8s_uart1$UART1_ClearITPendingBit$425 ==.
                                   2004 ; genGoto
      00A30E CC A3 19         [ 2] 2005 	jp	00104$
                                   2006 ; genLabel
      00A311                       2007 00102$:
                           0004E2  2008 	Sstm8s_uart1$UART1_ClearITPendingBit$426 ==.
                           0004E2  2009 	Sstm8s_uart1$UART1_ClearITPendingBit$427 ==.
                                   2010 ;	../SPL/src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
                                   2011 ; genPointerGet
      00A311 C6 52 37         [ 1] 2012 	ld	a, 0x5237
                                   2013 ; genAnd
      00A314 A4 EF            [ 1] 2014 	and	a, #0xef
                                   2015 ; genPointerSet
      00A316 C7 52 37         [ 1] 2016 	ld	0x5237, a
                           0004EA  2017 	Sstm8s_uart1$UART1_ClearITPendingBit$428 ==.
                                   2018 ; genLabel
      00A319                       2019 00104$:
                           0004EA  2020 	Sstm8s_uart1$UART1_ClearITPendingBit$429 ==.
                                   2021 ;	../SPL/src/stm8s_uart1.c: 789: }
                                   2022 ; genEndFunction
                           0004EA  2023 	Sstm8s_uart1$UART1_ClearITPendingBit$430 ==.
                           0004EA  2024 	XG$UART1_ClearITPendingBit$0$0 ==.
      00A319 81               [ 4] 2025 	ret
                           0004EB  2026 	Sstm8s_uart1$UART1_ClearITPendingBit$431 ==.
                                   2027 	.area CODE
                                   2028 	.area CONST
                                   2029 	.area INITIALIZER
                                   2030 	.area CABS (ABS)
                                   2031 
                                   2032 	.area .debug_line (NOLOAD)
      002704 00 00 06 1D           2033 	.dw	0,Ldebug_line_end-Ldebug_line_start
      002708                       2034 Ldebug_line_start:
      002708 00 02                 2035 	.dw	2
      00270A 00 00 00 79           2036 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00270E 01                    2037 	.db	1
      00270F 01                    2038 	.db	1
      002710 FB                    2039 	.db	-5
      002711 0F                    2040 	.db	15
      002712 0A                    2041 	.db	10
      002713 00                    2042 	.db	0
      002714 01                    2043 	.db	1
      002715 01                    2044 	.db	1
      002716 01                    2045 	.db	1
      002717 01                    2046 	.db	1
      002718 00                    2047 	.db	0
      002719 00                    2048 	.db	0
      00271A 00                    2049 	.db	0
      00271B 01                    2050 	.db	1
      00271C 43 3A 5C 50 72 6F 67  2051 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      002744 00                    2052 	.db	0
      002745 43 3A 5C 50 72 6F 67  2053 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      002768 00                    2054 	.db	0
      002769 00                    2055 	.db	0
      00276A 2E 2E 2F 53 50 4C 2F  2056 	.ascii "../SPL/src/stm8s_uart1.c"
             73 72 63 2F 73 74 6D
             38 73 5F 75 61 72 74
             31 2E 63
      002782 00                    2057 	.db	0
      002783 00                    2058 	.uleb128	0
      002784 00                    2059 	.uleb128	0
      002785 00                    2060 	.uleb128	0
      002786 00                    2061 	.db	0
      002787                       2062 Ldebug_line_stmt:
      002787 00                    2063 	.db	0
      002788 05                    2064 	.uleb128	5
      002789 02                    2065 	.db	2
      00278A 00 00 9E 2F           2066 	.dw	0,(Sstm8s_uart1$UART1_DeInit$0)
      00278E 03                    2067 	.db	3
      00278F 34                    2068 	.sleb128	52
      002790 01                    2069 	.db	1
      002791 09                    2070 	.db	9
      002792 00 00                 2071 	.dw	Sstm8s_uart1$UART1_DeInit$2-Sstm8s_uart1$UART1_DeInit$0
      002794 03                    2072 	.db	3
      002795 04                    2073 	.sleb128	4
      002796 01                    2074 	.db	1
      002797 09                    2075 	.db	9
      002798 00 03                 2076 	.dw	Sstm8s_uart1$UART1_DeInit$3-Sstm8s_uart1$UART1_DeInit$2
      00279A 03                    2077 	.db	3
      00279B 01                    2078 	.sleb128	1
      00279C 01                    2079 	.db	1
      00279D 09                    2080 	.db	9
      00279E 00 03                 2081 	.dw	Sstm8s_uart1$UART1_DeInit$4-Sstm8s_uart1$UART1_DeInit$3
      0027A0 03                    2082 	.db	3
      0027A1 02                    2083 	.sleb128	2
      0027A2 01                    2084 	.db	1
      0027A3 09                    2085 	.db	9
      0027A4 00 04                 2086 	.dw	Sstm8s_uart1$UART1_DeInit$5-Sstm8s_uart1$UART1_DeInit$4
      0027A6 03                    2087 	.db	3
      0027A7 01                    2088 	.sleb128	1
      0027A8 01                    2089 	.db	1
      0027A9 09                    2090 	.db	9
      0027AA 00 04                 2091 	.dw	Sstm8s_uart1$UART1_DeInit$6-Sstm8s_uart1$UART1_DeInit$5
      0027AC 03                    2092 	.db	3
      0027AD 02                    2093 	.sleb128	2
      0027AE 01                    2094 	.db	1
      0027AF 09                    2095 	.db	9
      0027B0 00 04                 2096 	.dw	Sstm8s_uart1$UART1_DeInit$7-Sstm8s_uart1$UART1_DeInit$6
      0027B2 03                    2097 	.db	3
      0027B3 01                    2098 	.sleb128	1
      0027B4 01                    2099 	.db	1
      0027B5 09                    2100 	.db	9
      0027B6 00 04                 2101 	.dw	Sstm8s_uart1$UART1_DeInit$8-Sstm8s_uart1$UART1_DeInit$7
      0027B8 03                    2102 	.db	3
      0027B9 01                    2103 	.sleb128	1
      0027BA 01                    2104 	.db	1
      0027BB 09                    2105 	.db	9
      0027BC 00 04                 2106 	.dw	Sstm8s_uart1$UART1_DeInit$9-Sstm8s_uart1$UART1_DeInit$8
      0027BE 03                    2107 	.db	3
      0027BF 01                    2108 	.sleb128	1
      0027C0 01                    2109 	.db	1
      0027C1 09                    2110 	.db	9
      0027C2 00 04                 2111 	.dw	Sstm8s_uart1$UART1_DeInit$10-Sstm8s_uart1$UART1_DeInit$9
      0027C4 03                    2112 	.db	3
      0027C5 01                    2113 	.sleb128	1
      0027C6 01                    2114 	.db	1
      0027C7 09                    2115 	.db	9
      0027C8 00 04                 2116 	.dw	Sstm8s_uart1$UART1_DeInit$11-Sstm8s_uart1$UART1_DeInit$10
      0027CA 03                    2117 	.db	3
      0027CB 02                    2118 	.sleb128	2
      0027CC 01                    2119 	.db	1
      0027CD 09                    2120 	.db	9
      0027CE 00 04                 2121 	.dw	Sstm8s_uart1$UART1_DeInit$12-Sstm8s_uart1$UART1_DeInit$11
      0027D0 03                    2122 	.db	3
      0027D1 01                    2123 	.sleb128	1
      0027D2 01                    2124 	.db	1
      0027D3 09                    2125 	.db	9
      0027D4 00 04                 2126 	.dw	Sstm8s_uart1$UART1_DeInit$13-Sstm8s_uart1$UART1_DeInit$12
      0027D6 03                    2127 	.db	3
      0027D7 01                    2128 	.sleb128	1
      0027D8 01                    2129 	.db	1
      0027D9 09                    2130 	.db	9
      0027DA 00 01                 2131 	.dw	1+Sstm8s_uart1$UART1_DeInit$14-Sstm8s_uart1$UART1_DeInit$13
      0027DC 00                    2132 	.db	0
      0027DD 01                    2133 	.uleb128	1
      0027DE 01                    2134 	.db	1
      0027DF 00                    2135 	.db	0
      0027E0 05                    2136 	.uleb128	5
      0027E1 02                    2137 	.db	2
      0027E2 00 00 9E 5A           2138 	.dw	0,(Sstm8s_uart1$UART1_Init$16)
      0027E6 03                    2139 	.db	3
      0027E7 D9 00                 2140 	.sleb128	89
      0027E9 01                    2141 	.db	1
      0027EA 09                    2142 	.db	9
      0027EB 00 02                 2143 	.dw	Sstm8s_uart1$UART1_Init$19-Sstm8s_uart1$UART1_Init$16
      0027ED 03                    2144 	.db	3
      0027EE 0F                    2145 	.sleb128	15
      0027EF 01                    2146 	.db	1
      0027F0 09                    2147 	.db	9
      0027F1 00 08                 2148 	.dw	Sstm8s_uart1$UART1_Init$20-Sstm8s_uart1$UART1_Init$19
      0027F3 03                    2149 	.db	3
      0027F4 03                    2150 	.sleb128	3
      0027F5 01                    2151 	.db	1
      0027F6 09                    2152 	.db	9
      0027F7 00 08                 2153 	.dw	Sstm8s_uart1$UART1_Init$21-Sstm8s_uart1$UART1_Init$20
      0027F9 03                    2154 	.db	3
      0027FA 03                    2155 	.sleb128	3
      0027FB 01                    2156 	.db	1
      0027FC 09                    2157 	.db	9
      0027FD 00 08                 2158 	.dw	Sstm8s_uart1$UART1_Init$22-Sstm8s_uart1$UART1_Init$21
      0027FF 03                    2159 	.db	3
      002800 02                    2160 	.sleb128	2
      002801 01                    2161 	.db	1
      002802 09                    2162 	.db	9
      002803 00 08                 2163 	.dw	Sstm8s_uart1$UART1_Init$23-Sstm8s_uart1$UART1_Init$22
      002805 03                    2164 	.db	3
      002806 03                    2165 	.sleb128	3
      002807 01                    2166 	.db	1
      002808 09                    2167 	.db	9
      002809 00 08                 2168 	.dw	Sstm8s_uart1$UART1_Init$24-Sstm8s_uart1$UART1_Init$23
      00280B 03                    2169 	.db	3
      00280C 02                    2170 	.sleb128	2
      00280D 01                    2171 	.db	1
      00280E 09                    2172 	.db	9
      00280F 00 08                 2173 	.dw	Sstm8s_uart1$UART1_Init$25-Sstm8s_uart1$UART1_Init$24
      002811 03                    2174 	.db	3
      002812 03                    2175 	.sleb128	3
      002813 01                    2176 	.db	1
      002814 09                    2177 	.db	9
      002815 00 07                 2178 	.dw	Sstm8s_uart1$UART1_Init$26-Sstm8s_uart1$UART1_Init$25
      002817 03                    2179 	.db	3
      002818 02                    2180 	.sleb128	2
      002819 01                    2181 	.db	1
      00281A 09                    2182 	.db	9
      00281B 00 08                 2183 	.dw	Sstm8s_uart1$UART1_Init$27-Sstm8s_uart1$UART1_Init$26
      00281D 03                    2184 	.db	3
      00281E 02                    2185 	.sleb128	2
      00281F 01                    2186 	.db	1
      002820 09                    2187 	.db	9
      002821 00 08                 2188 	.dw	Sstm8s_uart1$UART1_Init$28-Sstm8s_uart1$UART1_Init$27
      002823 03                    2189 	.db	3
      002824 03                    2190 	.sleb128	3
      002825 01                    2191 	.db	1
      002826 09                    2192 	.db	9
      002827 00 33                 2193 	.dw	Sstm8s_uart1$UART1_Init$34-Sstm8s_uart1$UART1_Init$28
      002829 03                    2194 	.db	3
      00282A 01                    2195 	.sleb128	1
      00282B 01                    2196 	.db	1
      00282C 09                    2197 	.db	9
      00282D 00 2E                 2198 	.dw	Sstm8s_uart1$UART1_Init$46-Sstm8s_uart1$UART1_Init$34
      00282F 03                    2199 	.db	3
      002830 02                    2200 	.sleb128	2
      002831 01                    2201 	.db	1
      002832 09                    2202 	.db	9
      002833 00 51                 2203 	.dw	Sstm8s_uart1$UART1_Init$60-Sstm8s_uart1$UART1_Init$46
      002835 03                    2204 	.db	3
      002836 02                    2205 	.sleb128	2
      002837 01                    2206 	.db	1
      002838 09                    2207 	.db	9
      002839 00 12                 2208 	.dw	Sstm8s_uart1$UART1_Init$61-Sstm8s_uart1$UART1_Init$60
      00283B 03                    2209 	.db	3
      00283C 02                    2210 	.sleb128	2
      00283D 01                    2211 	.db	1
      00283E 09                    2212 	.db	9
      00283F 00 0C                 2213 	.dw	Sstm8s_uart1$UART1_Init$62-Sstm8s_uart1$UART1_Init$61
      002841 03                    2214 	.db	3
      002842 03                    2215 	.sleb128	3
      002843 01                    2216 	.db	1
      002844 09                    2217 	.db	9
      002845 00 08                 2218 	.dw	Sstm8s_uart1$UART1_Init$63-Sstm8s_uart1$UART1_Init$62
      002847 03                    2219 	.db	3
      002848 02                    2220 	.sleb128	2
      002849 01                    2221 	.db	1
      00284A 09                    2222 	.db	9
      00284B 00 08                 2223 	.dw	Sstm8s_uart1$UART1_Init$64-Sstm8s_uart1$UART1_Init$63
      00284D 03                    2224 	.db	3
      00284E 02                    2225 	.sleb128	2
      00284F 01                    2226 	.db	1
      002850 09                    2227 	.db	9
      002851 00 0E                 2228 	.dw	Sstm8s_uart1$UART1_Init$65-Sstm8s_uart1$UART1_Init$64
      002853 03                    2229 	.db	3
      002854 7C                    2230 	.sleb128	-4
      002855 01                    2231 	.db	1
      002856 09                    2232 	.db	9
      002857 00 03                 2233 	.dw	Sstm8s_uart1$UART1_Init$66-Sstm8s_uart1$UART1_Init$65
      002859 03                    2234 	.db	3
      00285A 07                    2235 	.sleb128	7
      00285B 01                    2236 	.db	1
      00285C 09                    2237 	.db	9
      00285D 00 0B                 2238 	.dw	Sstm8s_uart1$UART1_Init$70-Sstm8s_uart1$UART1_Init$66
      00285F 03                    2239 	.db	3
      002860 03                    2240 	.sleb128	3
      002861 01                    2241 	.db	1
      002862 09                    2242 	.db	9
      002863 00 08                 2243 	.dw	Sstm8s_uart1$UART1_Init$73-Sstm8s_uart1$UART1_Init$70
      002865 03                    2244 	.db	3
      002866 05                    2245 	.sleb128	5
      002867 01                    2246 	.db	1
      002868 09                    2247 	.db	9
      002869 00 05                 2248 	.dw	Sstm8s_uart1$UART1_Init$75-Sstm8s_uart1$UART1_Init$73
      00286B 03                    2249 	.db	3
      00286C 71                    2250 	.sleb128	-15
      00286D 01                    2251 	.db	1
      00286E 09                    2252 	.db	9
      00286F 00 03                 2253 	.dw	Sstm8s_uart1$UART1_Init$76-Sstm8s_uart1$UART1_Init$75
      002871 03                    2254 	.db	3
      002872 11                    2255 	.sleb128	17
      002873 01                    2256 	.db	1
      002874 09                    2257 	.db	9
      002875 00 0B                 2258 	.dw	Sstm8s_uart1$UART1_Init$80-Sstm8s_uart1$UART1_Init$76
      002877 03                    2259 	.db	3
      002878 03                    2260 	.sleb128	3
      002879 01                    2261 	.db	1
      00287A 09                    2262 	.db	9
      00287B 00 08                 2263 	.dw	Sstm8s_uart1$UART1_Init$83-Sstm8s_uart1$UART1_Init$80
      00287D 03                    2264 	.db	3
      00287E 05                    2265 	.sleb128	5
      00287F 01                    2266 	.db	1
      002880 09                    2267 	.db	9
      002881 00 05                 2268 	.dw	Sstm8s_uart1$UART1_Init$85-Sstm8s_uart1$UART1_Init$83
      002883 03                    2269 	.db	3
      002884 4C                    2270 	.sleb128	-52
      002885 01                    2271 	.db	1
      002886 09                    2272 	.db	9
      002887 00 03                 2273 	.dw	Sstm8s_uart1$UART1_Init$86-Sstm8s_uart1$UART1_Init$85
      002889 03                    2274 	.db	3
      00288A 38                    2275 	.sleb128	56
      00288B 01                    2276 	.db	1
      00288C 09                    2277 	.db	9
      00288D 00 07                 2278 	.dw	Sstm8s_uart1$UART1_Init$88-Sstm8s_uart1$UART1_Init$86
      00288F 03                    2279 	.db	3
      002890 03                    2280 	.sleb128	3
      002891 01                    2281 	.db	1
      002892 09                    2282 	.db	9
      002893 00 08                 2283 	.dw	Sstm8s_uart1$UART1_Init$91-Sstm8s_uart1$UART1_Init$88
      002895 03                    2284 	.db	3
      002896 04                    2285 	.sleb128	4
      002897 01                    2286 	.db	1
      002898 09                    2287 	.db	9
      002899 00 0D                 2288 	.dw	Sstm8s_uart1$UART1_Init$95-Sstm8s_uart1$UART1_Init$91
      00289B 03                    2289 	.db	3
      00289C 02                    2290 	.sleb128	2
      00289D 01                    2291 	.db	1
      00289E 09                    2292 	.db	9
      00289F 00 03                 2293 	.dw	1+Sstm8s_uart1$UART1_Init$97-Sstm8s_uart1$UART1_Init$95
      0028A1 00                    2294 	.db	0
      0028A2 01                    2295 	.uleb128	1
      0028A3 01                    2296 	.db	1
      0028A4 00                    2297 	.db	0
      0028A5 05                    2298 	.uleb128	5
      0028A6 02                    2299 	.db	2
      0028A7 00 00 9F E9           2300 	.dw	0,(Sstm8s_uart1$UART1_Cmd$99)
      0028AB 03                    2301 	.db	3
      0028AC B7 01                 2302 	.sleb128	183
      0028AE 01                    2303 	.db	1
      0028AF 09                    2304 	.db	9
      0028B0 00 00                 2305 	.dw	Sstm8s_uart1$UART1_Cmd$101-Sstm8s_uart1$UART1_Cmd$99
      0028B2 03                    2306 	.db	3
      0028B3 05                    2307 	.sleb128	5
      0028B4 01                    2308 	.db	1
      0028B5 09                    2309 	.db	9
      0028B6 00 03                 2310 	.dw	Sstm8s_uart1$UART1_Cmd$102-Sstm8s_uart1$UART1_Cmd$101
      0028B8 03                    2311 	.db	3
      0028B9 7D                    2312 	.sleb128	-3
      0028BA 01                    2313 	.db	1
      0028BB 09                    2314 	.db	9
      0028BC 00 07                 2315 	.dw	Sstm8s_uart1$UART1_Cmd$104-Sstm8s_uart1$UART1_Cmd$102
      0028BE 03                    2316 	.db	3
      0028BF 03                    2317 	.sleb128	3
      0028C0 01                    2318 	.db	1
      0028C1 09                    2319 	.db	9
      0028C2 00 08                 2320 	.dw	Sstm8s_uart1$UART1_Cmd$107-Sstm8s_uart1$UART1_Cmd$104
      0028C4 03                    2321 	.db	3
      0028C5 05                    2322 	.sleb128	5
      0028C6 01                    2323 	.db	1
      0028C7 09                    2324 	.db	9
      0028C8 00 05                 2325 	.dw	Sstm8s_uart1$UART1_Cmd$109-Sstm8s_uart1$UART1_Cmd$107
      0028CA 03                    2326 	.db	3
      0028CB 02                    2327 	.sleb128	2
      0028CC 01                    2328 	.db	1
      0028CD 09                    2329 	.db	9
      0028CE 00 01                 2330 	.dw	1+Sstm8s_uart1$UART1_Cmd$110-Sstm8s_uart1$UART1_Cmd$109
      0028D0 00                    2331 	.db	0
      0028D1 01                    2332 	.uleb128	1
      0028D2 01                    2333 	.db	1
      0028D3 00                    2334 	.db	0
      0028D4 05                    2335 	.uleb128	5
      0028D5 02                    2336 	.db	2
      0028D6 00 00 A0 01           2337 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$112)
      0028DA 03                    2338 	.db	3
      0028DB D2 01                 2339 	.sleb128	210
      0028DD 01                    2340 	.db	1
      0028DE 09                    2341 	.db	9
      0028DF 00 01                 2342 	.dw	Sstm8s_uart1$UART1_ITConfig$115-Sstm8s_uart1$UART1_ITConfig$112
      0028E1 03                    2343 	.db	3
      0028E2 09                    2344 	.sleb128	9
      0028E3 01                    2345 	.db	1
      0028E4 09                    2346 	.db	9
      0028E5 00 03                 2347 	.dw	Sstm8s_uart1$UART1_ITConfig$116-Sstm8s_uart1$UART1_ITConfig$115
      0028E7 03                    2348 	.db	3
      0028E8 02                    2349 	.sleb128	2
      0028E9 01                    2350 	.db	1
      0028EA 09                    2351 	.db	9
      0028EB 00 12                 2352 	.dw	Sstm8s_uart1$UART1_ITConfig$119-Sstm8s_uart1$UART1_ITConfig$116
      0028ED 03                    2353 	.db	3
      0028EE 05                    2354 	.sleb128	5
      0028EF 01                    2355 	.db	1
      0028F0 09                    2356 	.db	9
      0028F1 00 0D                 2357 	.dw	Sstm8s_uart1$UART1_ITConfig$121-Sstm8s_uart1$UART1_ITConfig$119
      0028F3 03                    2358 	.db	3
      0028F4 04                    2359 	.sleb128	4
      0028F5 01                    2360 	.db	1
      0028F6 09                    2361 	.db	9
      0028F7 00 0B                 2362 	.dw	Sstm8s_uart1$UART1_ITConfig$123-Sstm8s_uart1$UART1_ITConfig$121
      0028F9 03                    2363 	.db	3
      0028FA 79                    2364 	.sleb128	-7
      0028FB 01                    2365 	.db	1
      0028FC 09                    2366 	.db	9
      0028FD 00 07                 2367 	.dw	Sstm8s_uart1$UART1_ITConfig$125-Sstm8s_uart1$UART1_ITConfig$123
      0028FF 03                    2368 	.db	3
      002900 03                    2369 	.sleb128	3
      002901 01                    2370 	.db	1
      002902 09                    2371 	.db	9
      002903 00 07                 2372 	.dw	Sstm8s_uart1$UART1_ITConfig$127-Sstm8s_uart1$UART1_ITConfig$125
      002905 03                    2373 	.db	3
      002906 02                    2374 	.sleb128	2
      002907 01                    2375 	.db	1
      002908 09                    2376 	.db	9
      002909 00 0B                 2377 	.dw	Sstm8s_uart1$UART1_ITConfig$129-Sstm8s_uart1$UART1_ITConfig$127
      00290B 03                    2378 	.db	3
      00290C 02                    2379 	.sleb128	2
      00290D 01                    2380 	.db	1
      00290E 09                    2381 	.db	9
      00290F 00 06                 2382 	.dw	Sstm8s_uart1$UART1_ITConfig$131-Sstm8s_uart1$UART1_ITConfig$129
      002911 03                    2383 	.db	3
      002912 02                    2384 	.sleb128	2
      002913 01                    2385 	.db	1
      002914 09                    2386 	.db	9
      002915 00 0B                 2387 	.dw	Sstm8s_uart1$UART1_ITConfig$134-Sstm8s_uart1$UART1_ITConfig$131
      002917 03                    2388 	.db	3
      002918 04                    2389 	.sleb128	4
      002919 01                    2390 	.db	1
      00291A 09                    2391 	.db	9
      00291B 00 0B                 2392 	.dw	Sstm8s_uart1$UART1_ITConfig$136-Sstm8s_uart1$UART1_ITConfig$134
      00291D 03                    2393 	.db	3
      00291E 08                    2394 	.sleb128	8
      00291F 01                    2395 	.db	1
      002920 09                    2396 	.db	9
      002921 00 04                 2397 	.dw	Sstm8s_uart1$UART1_ITConfig$140-Sstm8s_uart1$UART1_ITConfig$136
      002923 03                    2398 	.db	3
      002924 7E                    2399 	.sleb128	-2
      002925 01                    2400 	.db	1
      002926 09                    2401 	.db	9
      002927 00 07                 2402 	.dw	Sstm8s_uart1$UART1_ITConfig$142-Sstm8s_uart1$UART1_ITConfig$140
      002929 03                    2403 	.db	3
      00292A 02                    2404 	.sleb128	2
      00292B 01                    2405 	.db	1
      00292C 09                    2406 	.db	9
      00292D 00 0B                 2407 	.dw	Sstm8s_uart1$UART1_ITConfig$144-Sstm8s_uart1$UART1_ITConfig$142
      00292F 03                    2408 	.db	3
      002930 02                    2409 	.sleb128	2
      002931 01                    2410 	.db	1
      002932 09                    2411 	.db	9
      002933 00 06                 2412 	.dw	Sstm8s_uart1$UART1_ITConfig$146-Sstm8s_uart1$UART1_ITConfig$144
      002935 03                    2413 	.db	3
      002936 02                    2414 	.sleb128	2
      002937 01                    2415 	.db	1
      002938 09                    2416 	.db	9
      002939 00 0B                 2417 	.dw	Sstm8s_uart1$UART1_ITConfig$149-Sstm8s_uart1$UART1_ITConfig$146
      00293B 03                    2418 	.db	3
      00293C 04                    2419 	.sleb128	4
      00293D 01                    2420 	.db	1
      00293E 09                    2421 	.db	9
      00293F 00 08                 2422 	.dw	Sstm8s_uart1$UART1_ITConfig$151-Sstm8s_uart1$UART1_ITConfig$149
      002941 03                    2423 	.db	3
      002942 04                    2424 	.sleb128	4
      002943 01                    2425 	.db	1
      002944 09                    2426 	.db	9
      002945 00 02                 2427 	.dw	1+Sstm8s_uart1$UART1_ITConfig$153-Sstm8s_uart1$UART1_ITConfig$151
      002947 00                    2428 	.db	0
      002948 01                    2429 	.uleb128	1
      002949 01                    2430 	.db	1
      00294A 00                    2431 	.db	0
      00294B 05                    2432 	.uleb128	5
      00294C 02                    2433 	.db	2
      00294D 00 00 A0 95           2434 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$155)
      002951 03                    2435 	.db	3
      002952 88 02                 2436 	.sleb128	264
      002954 01                    2437 	.db	1
      002955 09                    2438 	.db	9
      002956 00 00                 2439 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$157-Sstm8s_uart1$UART1_HalfDuplexCmd$155
      002958 03                    2440 	.db	3
      002959 06                    2441 	.sleb128	6
      00295A 01                    2442 	.db	1
      00295B 09                    2443 	.db	9
      00295C 00 03                 2444 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$158-Sstm8s_uart1$UART1_HalfDuplexCmd$157
      00295E 03                    2445 	.db	3
      00295F 7E                    2446 	.sleb128	-2
      002960 01                    2447 	.db	1
      002961 09                    2448 	.db	9
      002962 00 07                 2449 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$160-Sstm8s_uart1$UART1_HalfDuplexCmd$158
      002964 03                    2450 	.db	3
      002965 02                    2451 	.sleb128	2
      002966 01                    2452 	.db	1
      002967 09                    2453 	.db	9
      002968 00 08                 2454 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$163-Sstm8s_uart1$UART1_HalfDuplexCmd$160
      00296A 03                    2455 	.db	3
      00296B 04                    2456 	.sleb128	4
      00296C 01                    2457 	.db	1
      00296D 09                    2458 	.db	9
      00296E 00 05                 2459 	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$165-Sstm8s_uart1$UART1_HalfDuplexCmd$163
      002970 03                    2460 	.db	3
      002971 02                    2461 	.sleb128	2
      002972 01                    2462 	.db	1
      002973 09                    2463 	.db	9
      002974 00 01                 2464 	.dw	1+Sstm8s_uart1$UART1_HalfDuplexCmd$166-Sstm8s_uart1$UART1_HalfDuplexCmd$165
      002976 00                    2465 	.db	0
      002977 01                    2466 	.uleb128	1
      002978 01                    2467 	.db	1
      002979 00                    2468 	.db	0
      00297A 05                    2469 	.uleb128	5
      00297B 02                    2470 	.db	2
      00297C 00 00 A0 AD           2471 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$168)
      002980 03                    2472 	.db	3
      002981 9C 02                 2473 	.sleb128	284
      002983 01                    2474 	.db	1
      002984 09                    2475 	.db	9
      002985 00 00                 2476 	.dw	Sstm8s_uart1$UART1_IrDAConfig$170-Sstm8s_uart1$UART1_IrDAConfig$168
      002987 03                    2477 	.db	3
      002988 06                    2478 	.sleb128	6
      002989 01                    2479 	.db	1
      00298A 09                    2480 	.db	9
      00298B 00 03                 2481 	.dw	Sstm8s_uart1$UART1_IrDAConfig$171-Sstm8s_uart1$UART1_IrDAConfig$170
      00298D 03                    2482 	.db	3
      00298E 7E                    2483 	.sleb128	-2
      00298F 01                    2484 	.db	1
      002990 09                    2485 	.db	9
      002991 00 07                 2486 	.dw	Sstm8s_uart1$UART1_IrDAConfig$173-Sstm8s_uart1$UART1_IrDAConfig$171
      002993 03                    2487 	.db	3
      002994 02                    2488 	.sleb128	2
      002995 01                    2489 	.db	1
      002996 09                    2490 	.db	9
      002997 00 08                 2491 	.dw	Sstm8s_uart1$UART1_IrDAConfig$176-Sstm8s_uart1$UART1_IrDAConfig$173
      002999 03                    2492 	.db	3
      00299A 04                    2493 	.sleb128	4
      00299B 01                    2494 	.db	1
      00299C 09                    2495 	.db	9
      00299D 00 05                 2496 	.dw	Sstm8s_uart1$UART1_IrDAConfig$178-Sstm8s_uart1$UART1_IrDAConfig$176
      00299F 03                    2497 	.db	3
      0029A0 02                    2498 	.sleb128	2
      0029A1 01                    2499 	.db	1
      0029A2 09                    2500 	.db	9
      0029A3 00 01                 2501 	.dw	1+Sstm8s_uart1$UART1_IrDAConfig$179-Sstm8s_uart1$UART1_IrDAConfig$178
      0029A5 00                    2502 	.db	0
      0029A6 01                    2503 	.uleb128	1
      0029A7 01                    2504 	.db	1
      0029A8 00                    2505 	.db	0
      0029A9 05                    2506 	.uleb128	5
      0029AA 02                    2507 	.db	2
      0029AB 00 00 A0 C5           2508 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$181)
      0029AF 03                    2509 	.db	3
      0029B0 B0 02                 2510 	.sleb128	304
      0029B2 01                    2511 	.db	1
      0029B3 09                    2512 	.db	9
      0029B4 00 00                 2513 	.dw	Sstm8s_uart1$UART1_IrDACmd$183-Sstm8s_uart1$UART1_IrDACmd$181
      0029B6 03                    2514 	.db	3
      0029B7 08                    2515 	.sleb128	8
      0029B8 01                    2516 	.db	1
      0029B9 09                    2517 	.db	9
      0029BA 00 03                 2518 	.dw	Sstm8s_uart1$UART1_IrDACmd$184-Sstm8s_uart1$UART1_IrDACmd$183
      0029BC 03                    2519 	.db	3
      0029BD 7D                    2520 	.sleb128	-3
      0029BE 01                    2521 	.db	1
      0029BF 09                    2522 	.db	9
      0029C0 00 07                 2523 	.dw	Sstm8s_uart1$UART1_IrDACmd$186-Sstm8s_uart1$UART1_IrDACmd$184
      0029C2 03                    2524 	.db	3
      0029C3 03                    2525 	.sleb128	3
      0029C4 01                    2526 	.db	1
      0029C5 09                    2527 	.db	9
      0029C6 00 08                 2528 	.dw	Sstm8s_uart1$UART1_IrDACmd$189-Sstm8s_uart1$UART1_IrDACmd$186
      0029C8 03                    2529 	.db	3
      0029C9 05                    2530 	.sleb128	5
      0029CA 01                    2531 	.db	1
      0029CB 09                    2532 	.db	9
      0029CC 00 05                 2533 	.dw	Sstm8s_uart1$UART1_IrDACmd$191-Sstm8s_uart1$UART1_IrDACmd$189
      0029CE 03                    2534 	.db	3
      0029CF 02                    2535 	.sleb128	2
      0029D0 01                    2536 	.db	1
      0029D1 09                    2537 	.db	9
      0029D2 00 01                 2538 	.dw	1+Sstm8s_uart1$UART1_IrDACmd$192-Sstm8s_uart1$UART1_IrDACmd$191
      0029D4 00                    2539 	.db	0
      0029D5 01                    2540 	.uleb128	1
      0029D6 01                    2541 	.db	1
      0029D7 00                    2542 	.db	0
      0029D8 05                    2543 	.uleb128	5
      0029D9 02                    2544 	.db	2
      0029DA 00 00 A0 DD           2545 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$194)
      0029DE 03                    2546 	.db	3
      0029DF C8 02                 2547 	.sleb128	328
      0029E1 01                    2548 	.db	1
      0029E2 09                    2549 	.db	9
      0029E3 00 00                 2550 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$196-Sstm8s_uart1$UART1_LINBreakDetectionConfig$194
      0029E5 03                    2551 	.db	3
      0029E6 06                    2552 	.sleb128	6
      0029E7 01                    2553 	.db	1
      0029E8 09                    2554 	.db	9
      0029E9 00 03                 2555 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$197-Sstm8s_uart1$UART1_LINBreakDetectionConfig$196
      0029EB 03                    2556 	.db	3
      0029EC 7E                    2557 	.sleb128	-2
      0029ED 01                    2558 	.db	1
      0029EE 09                    2559 	.db	9
      0029EF 00 07                 2560 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$199-Sstm8s_uart1$UART1_LINBreakDetectionConfig$197
      0029F1 03                    2561 	.db	3
      0029F2 02                    2562 	.sleb128	2
      0029F3 01                    2563 	.db	1
      0029F4 09                    2564 	.db	9
      0029F5 00 08                 2565 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$202-Sstm8s_uart1$UART1_LINBreakDetectionConfig$199
      0029F7 03                    2566 	.db	3
      0029F8 04                    2567 	.sleb128	4
      0029F9 01                    2568 	.db	1
      0029FA 09                    2569 	.db	9
      0029FB 00 05                 2570 	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$204-Sstm8s_uart1$UART1_LINBreakDetectionConfig$202
      0029FD 03                    2571 	.db	3
      0029FE 02                    2572 	.sleb128	2
      0029FF 01                    2573 	.db	1
      002A00 09                    2574 	.db	9
      002A01 00 01                 2575 	.dw	1+Sstm8s_uart1$UART1_LINBreakDetectionConfig$205-Sstm8s_uart1$UART1_LINBreakDetectionConfig$204
      002A03 00                    2576 	.db	0
      002A04 01                    2577 	.uleb128	1
      002A05 01                    2578 	.db	1
      002A06 00                    2579 	.db	0
      002A07 05                    2580 	.uleb128	5
      002A08 02                    2581 	.db	2
      002A09 00 00 A0 F5           2582 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$207)
      002A0D 03                    2583 	.db	3
      002A0E DC 02                 2584 	.sleb128	348
      002A10 01                    2585 	.db	1
      002A11 09                    2586 	.db	9
      002A12 00 00                 2587 	.dw	Sstm8s_uart1$UART1_LINCmd$209-Sstm8s_uart1$UART1_LINCmd$207
      002A14 03                    2588 	.db	3
      002A15 07                    2589 	.sleb128	7
      002A16 01                    2590 	.db	1
      002A17 09                    2591 	.db	9
      002A18 00 03                 2592 	.dw	Sstm8s_uart1$UART1_LINCmd$210-Sstm8s_uart1$UART1_LINCmd$209
      002A1A 03                    2593 	.db	3
      002A1B 7D                    2594 	.sleb128	-3
      002A1C 01                    2595 	.db	1
      002A1D 09                    2596 	.db	9
      002A1E 00 07                 2597 	.dw	Sstm8s_uart1$UART1_LINCmd$212-Sstm8s_uart1$UART1_LINCmd$210
      002A20 03                    2598 	.db	3
      002A21 03                    2599 	.sleb128	3
      002A22 01                    2600 	.db	1
      002A23 09                    2601 	.db	9
      002A24 00 08                 2602 	.dw	Sstm8s_uart1$UART1_LINCmd$215-Sstm8s_uart1$UART1_LINCmd$212
      002A26 03                    2603 	.db	3
      002A27 05                    2604 	.sleb128	5
      002A28 01                    2605 	.db	1
      002A29 09                    2606 	.db	9
      002A2A 00 05                 2607 	.dw	Sstm8s_uart1$UART1_LINCmd$217-Sstm8s_uart1$UART1_LINCmd$215
      002A2C 03                    2608 	.db	3
      002A2D 02                    2609 	.sleb128	2
      002A2E 01                    2610 	.db	1
      002A2F 09                    2611 	.db	9
      002A30 00 01                 2612 	.dw	1+Sstm8s_uart1$UART1_LINCmd$218-Sstm8s_uart1$UART1_LINCmd$217
      002A32 00                    2613 	.db	0
      002A33 01                    2614 	.uleb128	1
      002A34 01                    2615 	.db	1
      002A35 00                    2616 	.db	0
      002A36 05                    2617 	.uleb128	5
      002A37 02                    2618 	.db	2
      002A38 00 00 A1 0D           2619 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$220)
      002A3C 03                    2620 	.db	3
      002A3D F2 02                 2621 	.sleb128	370
      002A3F 01                    2622 	.db	1
      002A40 09                    2623 	.db	9
      002A41 00 00                 2624 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$222-Sstm8s_uart1$UART1_SmartCardCmd$220
      002A43 03                    2625 	.db	3
      002A44 07                    2626 	.sleb128	7
      002A45 01                    2627 	.db	1
      002A46 09                    2628 	.db	9
      002A47 00 03                 2629 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$223-Sstm8s_uart1$UART1_SmartCardCmd$222
      002A49 03                    2630 	.db	3
      002A4A 7D                    2631 	.sleb128	-3
      002A4B 01                    2632 	.db	1
      002A4C 09                    2633 	.db	9
      002A4D 00 07                 2634 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$225-Sstm8s_uart1$UART1_SmartCardCmd$223
      002A4F 03                    2635 	.db	3
      002A50 03                    2636 	.sleb128	3
      002A51 01                    2637 	.db	1
      002A52 09                    2638 	.db	9
      002A53 00 08                 2639 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$228-Sstm8s_uart1$UART1_SmartCardCmd$225
      002A55 03                    2640 	.db	3
      002A56 05                    2641 	.sleb128	5
      002A57 01                    2642 	.db	1
      002A58 09                    2643 	.db	9
      002A59 00 05                 2644 	.dw	Sstm8s_uart1$UART1_SmartCardCmd$230-Sstm8s_uart1$UART1_SmartCardCmd$228
      002A5B 03                    2645 	.db	3
      002A5C 02                    2646 	.sleb128	2
      002A5D 01                    2647 	.db	1
      002A5E 09                    2648 	.db	9
      002A5F 00 01                 2649 	.dw	1+Sstm8s_uart1$UART1_SmartCardCmd$231-Sstm8s_uart1$UART1_SmartCardCmd$230
      002A61 00                    2650 	.db	0
      002A62 01                    2651 	.uleb128	1
      002A63 01                    2652 	.db	1
      002A64 00                    2653 	.db	0
      002A65 05                    2654 	.uleb128	5
      002A66 02                    2655 	.db	2
      002A67 00 00 A1 25           2656 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$233)
      002A6B 03                    2657 	.db	3
      002A6C 89 03                 2658 	.sleb128	393
      002A6E 01                    2659 	.db	1
      002A6F 09                    2660 	.db	9
      002A70 00 00                 2661 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$235-Sstm8s_uart1$UART1_SmartCardNACKCmd$233
      002A72 03                    2662 	.db	3
      002A73 07                    2663 	.sleb128	7
      002A74 01                    2664 	.db	1
      002A75 09                    2665 	.db	9
      002A76 00 03                 2666 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$236-Sstm8s_uart1$UART1_SmartCardNACKCmd$235
      002A78 03                    2667 	.db	3
      002A79 7D                    2668 	.sleb128	-3
      002A7A 01                    2669 	.db	1
      002A7B 09                    2670 	.db	9
      002A7C 00 07                 2671 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$238-Sstm8s_uart1$UART1_SmartCardNACKCmd$236
      002A7E 03                    2672 	.db	3
      002A7F 03                    2673 	.sleb128	3
      002A80 01                    2674 	.db	1
      002A81 09                    2675 	.db	9
      002A82 00 08                 2676 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$241-Sstm8s_uart1$UART1_SmartCardNACKCmd$238
      002A84 03                    2677 	.db	3
      002A85 05                    2678 	.sleb128	5
      002A86 01                    2679 	.db	1
      002A87 09                    2680 	.db	9
      002A88 00 05                 2681 	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$243-Sstm8s_uart1$UART1_SmartCardNACKCmd$241
      002A8A 03                    2682 	.db	3
      002A8B 02                    2683 	.sleb128	2
      002A8C 01                    2684 	.db	1
      002A8D 09                    2685 	.db	9
      002A8E 00 01                 2686 	.dw	1+Sstm8s_uart1$UART1_SmartCardNACKCmd$244-Sstm8s_uart1$UART1_SmartCardNACKCmd$243
      002A90 00                    2687 	.db	0
      002A91 01                    2688 	.uleb128	1
      002A92 01                    2689 	.db	1
      002A93 00                    2690 	.db	0
      002A94 05                    2691 	.uleb128	5
      002A95 02                    2692 	.db	2
      002A96 00 00 A1 3D           2693 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$246)
      002A9A 03                    2694 	.db	3
      002A9B 9F 03                 2695 	.sleb128	415
      002A9D 01                    2696 	.db	1
      002A9E 09                    2697 	.db	9
      002A9F 00 00                 2698 	.dw	Sstm8s_uart1$UART1_WakeUpConfig$248-Sstm8s_uart1$UART1_WakeUpConfig$246
      002AA1 03                    2699 	.db	3
      002AA2 04                    2700 	.sleb128	4
      002AA3 01                    2701 	.db	1
      002AA4 09                    2702 	.db	9
      002AA5 00 08                 2703 	.dw	Sstm8s_uart1$UART1_WakeUpConfig$249-Sstm8s_uart1$UART1_WakeUpConfig$248
      002AA7 03                    2704 	.db	3
      002AA8 01                    2705 	.sleb128	1
      002AA9 01                    2706 	.db	1
      002AAA 09                    2707 	.db	9
      002AAB 00 08                 2708 	.dw	Sstm8s_uart1$UART1_WakeUpConfig$250-Sstm8s_uart1$UART1_WakeUpConfig$249
      002AAD 03                    2709 	.db	3
      002AAE 01                    2710 	.sleb128	1
      002AAF 01                    2711 	.db	1
      002AB0 09                    2712 	.db	9
      002AB1 00 01                 2713 	.dw	1+Sstm8s_uart1$UART1_WakeUpConfig$251-Sstm8s_uart1$UART1_WakeUpConfig$250
      002AB3 00                    2714 	.db	0
      002AB4 01                    2715 	.uleb128	1
      002AB5 01                    2716 	.db	1
      002AB6 00                    2717 	.db	0
      002AB7 05                    2718 	.uleb128	5
      002AB8 02                    2719 	.db	2
      002AB9 00 00 A1 4E           2720 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253)
      002ABD 03                    2721 	.db	3
      002ABE AD 03                 2722 	.sleb128	429
      002AC0 01                    2723 	.db	1
      002AC1 09                    2724 	.db	9
      002AC2 00 00                 2725 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253
      002AC4 03                    2726 	.db	3
      002AC5 07                    2727 	.sleb128	7
      002AC6 01                    2728 	.db	1
      002AC7 09                    2729 	.db	9
      002AC8 00 03                 2730 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255
      002ACA 03                    2731 	.db	3
      002ACB 7D                    2732 	.sleb128	-3
      002ACC 01                    2733 	.db	1
      002ACD 09                    2734 	.db	9
      002ACE 00 07                 2735 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256
      002AD0 03                    2736 	.db	3
      002AD1 03                    2737 	.sleb128	3
      002AD2 01                    2738 	.db	1
      002AD3 09                    2739 	.db	9
      002AD4 00 08                 2740 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258
      002AD6 03                    2741 	.db	3
      002AD7 05                    2742 	.sleb128	5
      002AD8 01                    2743 	.db	1
      002AD9 09                    2744 	.db	9
      002ADA 00 05                 2745 	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261
      002ADC 03                    2746 	.db	3
      002ADD 02                    2747 	.sleb128	2
      002ADE 01                    2748 	.db	1
      002ADF 09                    2749 	.db	9
      002AE0 00 01                 2750 	.dw	1+Sstm8s_uart1$UART1_ReceiverWakeUpCmd$264-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263
      002AE2 00                    2751 	.db	0
      002AE3 01                    2752 	.uleb128	1
      002AE4 01                    2753 	.db	1
      002AE5 00                    2754 	.db	0
      002AE6 05                    2755 	.uleb128	5
      002AE7 02                    2756 	.db	2
      002AE8 00 00 A1 66           2757 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$266)
      002AEC 03                    2758 	.db	3
      002AED C2 03                 2759 	.sleb128	450
      002AEF 01                    2760 	.db	1
      002AF0 09                    2761 	.db	9
      002AF1 00 00                 2762 	.dw	Sstm8s_uart1$UART1_ReceiveData8$268-Sstm8s_uart1$UART1_ReceiveData8$266
      002AF3 03                    2763 	.db	3
      002AF4 02                    2764 	.sleb128	2
      002AF5 01                    2765 	.db	1
      002AF6 09                    2766 	.db	9
      002AF7 00 03                 2767 	.dw	Sstm8s_uart1$UART1_ReceiveData8$269-Sstm8s_uart1$UART1_ReceiveData8$268
      002AF9 03                    2768 	.db	3
      002AFA 01                    2769 	.sleb128	1
      002AFB 01                    2770 	.db	1
      002AFC 09                    2771 	.db	9
      002AFD 00 01                 2772 	.dw	1+Sstm8s_uart1$UART1_ReceiveData8$270-Sstm8s_uart1$UART1_ReceiveData8$269
      002AFF 00                    2773 	.db	0
      002B00 01                    2774 	.uleb128	1
      002B01 01                    2775 	.db	1
      002B02 00                    2776 	.db	0
      002B03 05                    2777 	.uleb128	5
      002B04 02                    2778 	.db	2
      002B05 00 00 A1 6A           2779 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$272)
      002B09 03                    2780 	.db	3
      002B0A CC 03                 2781 	.sleb128	460
      002B0C 01                    2782 	.db	1
      002B0D 09                    2783 	.db	9
      002B0E 00 01                 2784 	.dw	Sstm8s_uart1$UART1_ReceiveData9$275-Sstm8s_uart1$UART1_ReceiveData9$272
      002B10 03                    2785 	.db	3
      002B11 04                    2786 	.sleb128	4
      002B12 01                    2787 	.db	1
      002B13 09                    2788 	.db	9
      002B14 00 0C                 2789 	.dw	Sstm8s_uart1$UART1_ReceiveData9$276-Sstm8s_uart1$UART1_ReceiveData9$275
      002B16 03                    2790 	.db	3
      002B17 01                    2791 	.sleb128	1
      002B18 01                    2792 	.db	1
      002B19 09                    2793 	.db	9
      002B1A 00 0D                 2794 	.dw	Sstm8s_uart1$UART1_ReceiveData9$277-Sstm8s_uart1$UART1_ReceiveData9$276
      002B1C 03                    2795 	.db	3
      002B1D 01                    2796 	.sleb128	1
      002B1E 01                    2797 	.db	1
      002B1F 09                    2798 	.db	9
      002B20 00 03                 2799 	.dw	1+Sstm8s_uart1$UART1_ReceiveData9$279-Sstm8s_uart1$UART1_ReceiveData9$277
      002B22 00                    2800 	.db	0
      002B23 01                    2801 	.uleb128	1
      002B24 01                    2802 	.db	1
      002B25 00                    2803 	.db	0
      002B26 05                    2804 	.uleb128	5
      002B27 02                    2805 	.db	2
      002B28 00 00 A1 87           2806 	.dw	0,(Sstm8s_uart1$UART1_SendData8$281)
      002B2C 03                    2807 	.db	3
      002B2D D9 03                 2808 	.sleb128	473
      002B2F 01                    2809 	.db	1
      002B30 09                    2810 	.db	9
      002B31 00 00                 2811 	.dw	Sstm8s_uart1$UART1_SendData8$283-Sstm8s_uart1$UART1_SendData8$281
      002B33 03                    2812 	.db	3
      002B34 03                    2813 	.sleb128	3
      002B35 01                    2814 	.db	1
      002B36 09                    2815 	.db	9
      002B37 00 06                 2816 	.dw	Sstm8s_uart1$UART1_SendData8$284-Sstm8s_uart1$UART1_SendData8$283
      002B39 03                    2817 	.db	3
      002B3A 01                    2818 	.sleb128	1
      002B3B 01                    2819 	.db	1
      002B3C 09                    2820 	.db	9
      002B3D 00 01                 2821 	.dw	1+Sstm8s_uart1$UART1_SendData8$285-Sstm8s_uart1$UART1_SendData8$284
      002B3F 00                    2822 	.db	0
      002B40 01                    2823 	.uleb128	1
      002B41 01                    2824 	.db	1
      002B42 00                    2825 	.db	0
      002B43 05                    2826 	.uleb128	5
      002B44 02                    2827 	.db	2
      002B45 00 00 A1 8E           2828 	.dw	0,(Sstm8s_uart1$UART1_SendData9$287)
      002B49 03                    2829 	.db	3
      002B4A E5 03                 2830 	.sleb128	485
      002B4C 01                    2831 	.db	1
      002B4D 09                    2832 	.db	9
      002B4E 00 01                 2833 	.dw	Sstm8s_uart1$UART1_SendData9$290-Sstm8s_uart1$UART1_SendData9$287
      002B50 03                    2834 	.db	3
      002B51 03                    2835 	.sleb128	3
      002B52 01                    2836 	.db	1
      002B53 09                    2837 	.db	9
      002B54 00 08                 2838 	.dw	Sstm8s_uart1$UART1_SendData9$291-Sstm8s_uart1$UART1_SendData9$290
      002B56 03                    2839 	.db	3
      002B57 02                    2840 	.sleb128	2
      002B58 01                    2841 	.db	1
      002B59 09                    2842 	.db	9
      002B5A 00 11                 2843 	.dw	Sstm8s_uart1$UART1_SendData9$292-Sstm8s_uart1$UART1_SendData9$291
      002B5C 03                    2844 	.db	3
      002B5D 02                    2845 	.sleb128	2
      002B5E 01                    2846 	.db	1
      002B5F 09                    2847 	.db	9
      002B60 00 05                 2848 	.dw	Sstm8s_uart1$UART1_SendData9$293-Sstm8s_uart1$UART1_SendData9$292
      002B62 03                    2849 	.db	3
      002B63 01                    2850 	.sleb128	1
      002B64 01                    2851 	.db	1
      002B65 09                    2852 	.db	9
      002B66 00 02                 2853 	.dw	1+Sstm8s_uart1$UART1_SendData9$295-Sstm8s_uart1$UART1_SendData9$293
      002B68 00                    2854 	.db	0
      002B69 01                    2855 	.uleb128	1
      002B6A 01                    2856 	.db	1
      002B6B 00                    2857 	.db	0
      002B6C 05                    2858 	.uleb128	5
      002B6D 02                    2859 	.db	2
      002B6E 00 00 A1 AF           2860 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$297)
      002B72 03                    2861 	.db	3
      002B73 F4 03                 2862 	.sleb128	500
      002B75 01                    2863 	.db	1
      002B76 09                    2864 	.db	9
      002B77 00 00                 2865 	.dw	Sstm8s_uart1$UART1_SendBreak$299-Sstm8s_uart1$UART1_SendBreak$297
      002B79 03                    2866 	.db	3
      002B7A 02                    2867 	.sleb128	2
      002B7B 01                    2868 	.db	1
      002B7C 09                    2869 	.db	9
      002B7D 00 08                 2870 	.dw	Sstm8s_uart1$UART1_SendBreak$300-Sstm8s_uart1$UART1_SendBreak$299
      002B7F 03                    2871 	.db	3
      002B80 01                    2872 	.sleb128	1
      002B81 01                    2873 	.db	1
      002B82 09                    2874 	.db	9
      002B83 00 01                 2875 	.dw	1+Sstm8s_uart1$UART1_SendBreak$301-Sstm8s_uart1$UART1_SendBreak$300
      002B85 00                    2876 	.db	0
      002B86 01                    2877 	.uleb128	1
      002B87 01                    2878 	.db	1
      002B88 00                    2879 	.db	0
      002B89 05                    2880 	.uleb128	5
      002B8A 02                    2881 	.db	2
      002B8B 00 00 A1 B8           2882 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$303)
      002B8F 03                    2883 	.db	3
      002B90 FE 03                 2884 	.sleb128	510
      002B92 01                    2885 	.db	1
      002B93 09                    2886 	.db	9
      002B94 00 00                 2887 	.dw	Sstm8s_uart1$UART1_SetAddress$305-Sstm8s_uart1$UART1_SetAddress$303
      002B96 03                    2888 	.db	3
      002B97 06                    2889 	.sleb128	6
      002B98 01                    2890 	.db	1
      002B99 09                    2891 	.db	9
      002B9A 00 08                 2892 	.dw	Sstm8s_uart1$UART1_SetAddress$306-Sstm8s_uart1$UART1_SetAddress$305
      002B9C 03                    2893 	.db	3
      002B9D 02                    2894 	.sleb128	2
      002B9E 01                    2895 	.db	1
      002B9F 09                    2896 	.db	9
      002BA0 00 08                 2897 	.dw	Sstm8s_uart1$UART1_SetAddress$307-Sstm8s_uart1$UART1_SetAddress$306
      002BA2 03                    2898 	.db	3
      002BA3 01                    2899 	.sleb128	1
      002BA4 01                    2900 	.db	1
      002BA5 09                    2901 	.db	9
      002BA6 00 01                 2902 	.dw	1+Sstm8s_uart1$UART1_SetAddress$308-Sstm8s_uart1$UART1_SetAddress$307
      002BA8 00                    2903 	.db	0
      002BA9 01                    2904 	.uleb128	1
      002BAA 01                    2905 	.db	1
      002BAB 00                    2906 	.db	0
      002BAC 05                    2907 	.uleb128	5
      002BAD 02                    2908 	.db	2
      002BAE 00 00 A1 C9           2909 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$310)
      002BB2 03                    2910 	.db	3
      002BB3 8F 04                 2911 	.sleb128	527
      002BB5 01                    2912 	.db	1
      002BB6 09                    2913 	.db	9
      002BB7 00 00                 2914 	.dw	Sstm8s_uart1$UART1_SetGuardTime$312-Sstm8s_uart1$UART1_SetGuardTime$310
      002BB9 03                    2915 	.db	3
      002BBA 03                    2916 	.sleb128	3
      002BBB 01                    2917 	.db	1
      002BBC 09                    2918 	.db	9
      002BBD 00 06                 2919 	.dw	Sstm8s_uart1$UART1_SetGuardTime$313-Sstm8s_uart1$UART1_SetGuardTime$312
      002BBF 03                    2920 	.db	3
      002BC0 01                    2921 	.sleb128	1
      002BC1 01                    2922 	.db	1
      002BC2 09                    2923 	.db	9
      002BC3 00 01                 2924 	.dw	1+Sstm8s_uart1$UART1_SetGuardTime$314-Sstm8s_uart1$UART1_SetGuardTime$313
      002BC5 00                    2925 	.db	0
      002BC6 01                    2926 	.uleb128	1
      002BC7 01                    2927 	.db	1
      002BC8 00                    2928 	.db	0
      002BC9 05                    2929 	.uleb128	5
      002BCA 02                    2930 	.db	2
      002BCB 00 00 A1 D0           2931 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$316)
      002BCF 03                    2932 	.db	3
      002BD0 AB 04                 2933 	.sleb128	555
      002BD2 01                    2934 	.db	1
      002BD3 09                    2935 	.db	9
      002BD4 00 00                 2936 	.dw	Sstm8s_uart1$UART1_SetPrescaler$318-Sstm8s_uart1$UART1_SetPrescaler$316
      002BD6 03                    2937 	.db	3
      002BD7 03                    2938 	.sleb128	3
      002BD8 01                    2939 	.db	1
      002BD9 09                    2940 	.db	9
      002BDA 00 06                 2941 	.dw	Sstm8s_uart1$UART1_SetPrescaler$319-Sstm8s_uart1$UART1_SetPrescaler$318
      002BDC 03                    2942 	.db	3
      002BDD 01                    2943 	.sleb128	1
      002BDE 01                    2944 	.db	1
      002BDF 09                    2945 	.db	9
      002BE0 00 01                 2946 	.dw	1+Sstm8s_uart1$UART1_SetPrescaler$320-Sstm8s_uart1$UART1_SetPrescaler$319
      002BE2 00                    2947 	.db	0
      002BE3 01                    2948 	.uleb128	1
      002BE4 01                    2949 	.db	1
      002BE5 00                    2950 	.db	0
      002BE6 05                    2951 	.uleb128	5
      002BE7 02                    2952 	.db	2
      002BE8 00 00 A1 D7           2953 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$322)
      002BEC 03                    2954 	.db	3
      002BED B7 04                 2955 	.sleb128	567
      002BEF 01                    2956 	.db	1
      002BF0 09                    2957 	.db	9
      002BF1 00 02                 2958 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$325-Sstm8s_uart1$UART1_GetFlagStatus$322
      002BF3 03                    2959 	.db	3
      002BF4 09                    2960 	.sleb128	9
      002BF5 01                    2961 	.db	1
      002BF6 09                    2962 	.db	9
      002BF7 00 04                 2963 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$326-Sstm8s_uart1$UART1_GetFlagStatus$325
      002BF9 03                    2964 	.db	3
      002BFA 02                    2965 	.sleb128	2
      002BFB 01                    2966 	.db	1
      002BFC 09                    2967 	.db	9
      002BFD 00 04                 2968 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$327-Sstm8s_uart1$UART1_GetFlagStatus$326
      002BFF 03                    2969 	.db	3
      002C00 7E                    2970 	.sleb128	-2
      002C01 01                    2971 	.db	1
      002C02 09                    2972 	.db	9
      002C03 00 0D                 2973 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$330-Sstm8s_uart1$UART1_GetFlagStatus$327
      002C05 03                    2974 	.db	3
      002C06 02                    2975 	.sleb128	2
      002C07 01                    2976 	.db	1
      002C08 09                    2977 	.db	9
      002C09 00 0B                 2978 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$332-Sstm8s_uart1$UART1_GetFlagStatus$330
      002C0B 03                    2979 	.db	3
      002C0C 03                    2980 	.sleb128	3
      002C0D 01                    2981 	.db	1
      002C0E 09                    2982 	.db	9
      002C0F 00 05                 2983 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$335-Sstm8s_uart1$UART1_GetFlagStatus$332
      002C11 03                    2984 	.db	3
      002C12 05                    2985 	.sleb128	5
      002C13 01                    2986 	.db	1
      002C14 09                    2987 	.db	9
      002C15 00 04                 2988 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$337-Sstm8s_uart1$UART1_GetFlagStatus$335
      002C17 03                    2989 	.db	3
      002C18 03                    2990 	.sleb128	3
      002C19 01                    2991 	.db	1
      002C1A 09                    2992 	.db	9
      002C1B 00 0D                 2993 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$340-Sstm8s_uart1$UART1_GetFlagStatus$337
      002C1D 03                    2994 	.db	3
      002C1E 02                    2995 	.sleb128	2
      002C1F 01                    2996 	.db	1
      002C20 09                    2997 	.db	9
      002C21 00 0B                 2998 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$342-Sstm8s_uart1$UART1_GetFlagStatus$340
      002C23 03                    2999 	.db	3
      002C24 03                    3000 	.sleb128	3
      002C25 01                    3001 	.db	1
      002C26 09                    3002 	.db	9
      002C27 00 05                 3003 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$345-Sstm8s_uart1$UART1_GetFlagStatus$342
      002C29 03                    3004 	.db	3
      002C2A 05                    3005 	.sleb128	5
      002C2B 01                    3006 	.db	1
      002C2C 09                    3007 	.db	9
      002C2D 00 04                 3008 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$348-Sstm8s_uart1$UART1_GetFlagStatus$345
      002C2F 03                    3009 	.db	3
      002C30 05                    3010 	.sleb128	5
      002C31 01                    3011 	.db	1
      002C32 09                    3012 	.db	9
      002C33 00 0B                 3013 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$350-Sstm8s_uart1$UART1_GetFlagStatus$348
      002C35 03                    3014 	.db	3
      002C36 03                    3015 	.sleb128	3
      002C37 01                    3016 	.db	1
      002C38 09                    3017 	.db	9
      002C39 00 05                 3018 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$353-Sstm8s_uart1$UART1_GetFlagStatus$350
      002C3B 03                    3019 	.db	3
      002C3C 05                    3020 	.sleb128	5
      002C3D 01                    3021 	.db	1
      002C3E 09                    3022 	.db	9
      002C3F 00 01                 3023 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$355-Sstm8s_uart1$UART1_GetFlagStatus$353
      002C41 03                    3024 	.db	3
      002C42 04                    3025 	.sleb128	4
      002C43 01                    3026 	.db	1
      002C44 09                    3027 	.db	9
      002C45 00 00                 3028 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$356-Sstm8s_uart1$UART1_GetFlagStatus$355
      002C47 03                    3029 	.db	3
      002C48 01                    3030 	.sleb128	1
      002C49 01                    3031 	.db	1
      002C4A 09                    3032 	.db	9
      002C4B 00 03                 3033 	.dw	1+Sstm8s_uart1$UART1_GetFlagStatus$358-Sstm8s_uart1$UART1_GetFlagStatus$356
      002C4D 00                    3034 	.db	0
      002C4E 01                    3035 	.uleb128	1
      002C4F 01                    3036 	.db	1
      002C50 00                    3037 	.db	0
      002C51 05                    3038 	.uleb128	5
      002C52 02                    3039 	.db	2
      002C53 00 00 A2 37           3040 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$360)
      002C57 03                    3041 	.db	3
      002C58 85 05                 3042 	.sleb128	645
      002C5A 01                    3043 	.db	1
      002C5B 09                    3044 	.db	9
      002C5C 00 00                 3045 	.dw	Sstm8s_uart1$UART1_ClearFlag$362-Sstm8s_uart1$UART1_ClearFlag$360
      002C5E 03                    3046 	.db	3
      002C5F 05                    3047 	.sleb128	5
      002C60 01                    3048 	.db	1
      002C61 09                    3049 	.db	9
      002C62 00 0D                 3050 	.dw	Sstm8s_uart1$UART1_ClearFlag$365-Sstm8s_uart1$UART1_ClearFlag$362
      002C64 03                    3051 	.db	3
      002C65 02                    3052 	.sleb128	2
      002C66 01                    3053 	.db	1
      002C67 09                    3054 	.db	9
      002C68 00 07                 3055 	.dw	Sstm8s_uart1$UART1_ClearFlag$368-Sstm8s_uart1$UART1_ClearFlag$365
      002C6A 03                    3056 	.db	3
      002C6B 05                    3057 	.sleb128	5
      002C6C 01                    3058 	.db	1
      002C6D 09                    3059 	.db	9
      002C6E 00 08                 3060 	.dw	Sstm8s_uart1$UART1_ClearFlag$370-Sstm8s_uart1$UART1_ClearFlag$368
      002C70 03                    3061 	.db	3
      002C71 02                    3062 	.sleb128	2
      002C72 01                    3063 	.db	1
      002C73 09                    3064 	.db	9
      002C74 00 01                 3065 	.dw	1+Sstm8s_uart1$UART1_ClearFlag$371-Sstm8s_uart1$UART1_ClearFlag$370
      002C76 00                    3066 	.db	0
      002C77 01                    3067 	.uleb128	1
      002C78 01                    3068 	.db	1
      002C79 00                    3069 	.db	0
      002C7A 05                    3070 	.uleb128	5
      002C7B 02                    3071 	.db	2
      002C7C 00 00 A2 54           3072 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$373)
      002C80 03                    3073 	.db	3
      002C81 A2 05                 3074 	.sleb128	674
      002C83 01                    3075 	.db	1
      002C84 09                    3076 	.db	9
      002C85 00 02                 3077 	.dw	Sstm8s_uart1$UART1_GetITStatus$376-Sstm8s_uart1$UART1_GetITStatus$373
      002C87 03                    3078 	.db	3
      002C88 0C                    3079 	.sleb128	12
      002C89 01                    3080 	.db	1
      002C8A 09                    3081 	.db	9
      002C8B 00 14                 3082 	.dw	Sstm8s_uart1$UART1_GetITStatus$379-Sstm8s_uart1$UART1_GetITStatus$376
      002C8D 03                    3083 	.db	3
      002C8E 02                    3084 	.sleb128	2
      002C8F 01                    3085 	.db	1
      002C90 09                    3086 	.db	9
      002C91 00 04                 3087 	.dw	Sstm8s_uart1$UART1_GetITStatus$380-Sstm8s_uart1$UART1_GetITStatus$379
      002C93 03                    3088 	.db	3
      002C94 02                    3089 	.sleb128	2
      002C95 01                    3090 	.db	1
      002C96 09                    3091 	.db	9
      002C97 00 0E                 3092 	.dw	Sstm8s_uart1$UART1_GetITStatus$383-Sstm8s_uart1$UART1_GetITStatus$380
      002C99 03                    3093 	.db	3
      002C9A 04                    3094 	.sleb128	4
      002C9B 01                    3095 	.db	1
      002C9C 09                    3096 	.db	9
      002C9D 00 11                 3097 	.dw	Sstm8s_uart1$UART1_GetITStatus$386-Sstm8s_uart1$UART1_GetITStatus$383
      002C9F 03                    3098 	.db	3
      002CA0 03                    3099 	.sleb128	3
      002CA1 01                    3100 	.db	1
      002CA2 09                    3101 	.db	9
      002CA3 00 06                 3102 	.dw	Sstm8s_uart1$UART1_GetITStatus$387-Sstm8s_uart1$UART1_GetITStatus$386
      002CA5 03                    3103 	.db	3
      002CA6 03                    3104 	.sleb128	3
      002CA7 01                    3105 	.db	1
      002CA8 09                    3106 	.db	9
      002CA9 00 12                 3107 	.dw	Sstm8s_uart1$UART1_GetITStatus$389-Sstm8s_uart1$UART1_GetITStatus$387
      002CAB 03                    3108 	.db	3
      002CAC 03                    3109 	.sleb128	3
      002CAD 01                    3110 	.db	1
      002CAE 09                    3111 	.db	9
      002CAF 00 05                 3112 	.dw	Sstm8s_uart1$UART1_GetITStatus$392-Sstm8s_uart1$UART1_GetITStatus$389
      002CB1 03                    3113 	.db	3
      002CB2 05                    3114 	.sleb128	5
      002CB3 01                    3115 	.db	1
      002CB4 09                    3116 	.db	9
      002CB5 00 04                 3117 	.dw	Sstm8s_uart1$UART1_GetITStatus$394-Sstm8s_uart1$UART1_GetITStatus$392
      002CB7 03                    3118 	.db	3
      002CB8 04                    3119 	.sleb128	4
      002CB9 01                    3120 	.db	1
      002CBA 09                    3121 	.db	9
      002CBB 00 0D                 3122 	.dw	Sstm8s_uart1$UART1_GetITStatus$397-Sstm8s_uart1$UART1_GetITStatus$394
      002CBD 03                    3123 	.db	3
      002CBE 03                    3124 	.sleb128	3
      002CBF 01                    3125 	.db	1
      002CC0 09                    3126 	.db	9
      002CC1 00 06                 3127 	.dw	Sstm8s_uart1$UART1_GetITStatus$398-Sstm8s_uart1$UART1_GetITStatus$397
      002CC3 03                    3128 	.db	3
      002CC4 02                    3129 	.sleb128	2
      002CC5 01                    3130 	.db	1
      002CC6 09                    3131 	.db	9
      002CC7 00 12                 3132 	.dw	Sstm8s_uart1$UART1_GetITStatus$400-Sstm8s_uart1$UART1_GetITStatus$398
      002CC9 03                    3133 	.db	3
      002CCA 03                    3134 	.sleb128	3
      002CCB 01                    3135 	.db	1
      002CCC 09                    3136 	.db	9
      002CCD 00 05                 3137 	.dw	Sstm8s_uart1$UART1_GetITStatus$403-Sstm8s_uart1$UART1_GetITStatus$400
      002CCF 03                    3138 	.db	3
      002CD0 05                    3139 	.sleb128	5
      002CD1 01                    3140 	.db	1
      002CD2 09                    3141 	.db	9
      002CD3 00 04                 3142 	.dw	Sstm8s_uart1$UART1_GetITStatus$406-Sstm8s_uart1$UART1_GetITStatus$403
      002CD5 03                    3143 	.db	3
      002CD6 06                    3144 	.sleb128	6
      002CD7 01                    3145 	.db	1
      002CD8 09                    3146 	.db	9
      002CD9 00 06                 3147 	.dw	Sstm8s_uart1$UART1_GetITStatus$407-Sstm8s_uart1$UART1_GetITStatus$406
      002CDB 03                    3148 	.db	3
      002CDC 02                    3149 	.sleb128	2
      002CDD 01                    3150 	.db	1
      002CDE 09                    3151 	.db	9
      002CDF 00 12                 3152 	.dw	Sstm8s_uart1$UART1_GetITStatus$409-Sstm8s_uart1$UART1_GetITStatus$407
      002CE1 03                    3153 	.db	3
      002CE2 03                    3154 	.sleb128	3
      002CE3 01                    3155 	.db	1
      002CE4 09                    3156 	.db	9
      002CE5 00 05                 3157 	.dw	Sstm8s_uart1$UART1_GetITStatus$412-Sstm8s_uart1$UART1_GetITStatus$409
      002CE7 03                    3158 	.db	3
      002CE8 05                    3159 	.sleb128	5
      002CE9 01                    3160 	.db	1
      002CEA 09                    3161 	.db	9
      002CEB 00 01                 3162 	.dw	Sstm8s_uart1$UART1_GetITStatus$414-Sstm8s_uart1$UART1_GetITStatus$412
      002CED 03                    3163 	.db	3
      002CEE 05                    3164 	.sleb128	5
      002CEF 01                    3165 	.db	1
      002CF0 09                    3166 	.db	9
      002CF1 00 00                 3167 	.dw	Sstm8s_uart1$UART1_GetITStatus$415-Sstm8s_uart1$UART1_GetITStatus$414
      002CF3 03                    3168 	.db	3
      002CF4 01                    3169 	.sleb128	1
      002CF5 01                    3170 	.db	1
      002CF6 09                    3171 	.db	9
      002CF7 00 03                 3172 	.dw	1+Sstm8s_uart1$UART1_GetITStatus$417-Sstm8s_uart1$UART1_GetITStatus$415
      002CF9 00                    3173 	.db	0
      002CFA 01                    3174 	.uleb128	1
      002CFB 01                    3175 	.db	1
      002CFC 00                    3176 	.db	0
      002CFD 05                    3177 	.uleb128	5
      002CFE 02                    3178 	.db	2
      002CFF 00 00 A2 FD           3179 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$419)
      002D03 03                    3180 	.db	3
      002D04 86 06                 3181 	.sleb128	774
      002D06 01                    3182 	.db	1
      002D07 09                    3183 	.db	9
      002D08 00 00                 3184 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$421-Sstm8s_uart1$UART1_ClearITPendingBit$419
      002D0A 03                    3185 	.db	3
      002D0B 05                    3186 	.sleb128	5
      002D0C 01                    3187 	.db	1
      002D0D 09                    3188 	.db	9
      002D0E 00 0D                 3189 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$424-Sstm8s_uart1$UART1_ClearITPendingBit$421
      002D10 03                    3190 	.db	3
      002D11 02                    3191 	.sleb128	2
      002D12 01                    3192 	.db	1
      002D13 09                    3193 	.db	9
      002D14 00 07                 3194 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$427-Sstm8s_uart1$UART1_ClearITPendingBit$424
      002D16 03                    3195 	.db	3
      002D17 05                    3196 	.sleb128	5
      002D18 01                    3197 	.db	1
      002D19 09                    3198 	.db	9
      002D1A 00 08                 3199 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$429-Sstm8s_uart1$UART1_ClearITPendingBit$427
      002D1C 03                    3200 	.db	3
      002D1D 02                    3201 	.sleb128	2
      002D1E 01                    3202 	.db	1
      002D1F 09                    3203 	.db	9
      002D20 00 01                 3204 	.dw	1+Sstm8s_uart1$UART1_ClearITPendingBit$430-Sstm8s_uart1$UART1_ClearITPendingBit$429
      002D22 00                    3205 	.db	0
      002D23 01                    3206 	.uleb128	1
      002D24 01                    3207 	.db	1
      002D25                       3208 Ldebug_line_end:
                                   3209 
                                   3210 	.area .debug_loc (NOLOAD)
      003EA4                       3211 Ldebug_loc_start:
      003EA4 00 00 A3 0A           3212 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
      003EA8 00 00 A3 1A           3213 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$431)
      003EAC 00 02                 3214 	.dw	2
      003EAE 78                    3215 	.db	120
      003EAF 01                    3216 	.sleb128	1
      003EB0 00 00 A2 FD           3217 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)
      003EB4 00 00 A3 0A           3218 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
      003EB8 00 02                 3219 	.dw	2
      003EBA 78                    3220 	.db	120
      003EBB 01                    3221 	.sleb128	1
      003EBC 00 00 00 00           3222 	.dw	0,0
      003EC0 00 00 00 00           3223 	.dw	0,0
      003EC4 00 00 A2 FC           3224 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
      003EC8 00 00 A2 FD           3225 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$418)
      003ECC 00 02                 3226 	.dw	2
      003ECE 78                    3227 	.db	120
      003ECF 01                    3228 	.sleb128	1
      003ED0 00 00 A2 BB           3229 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
      003ED4 00 00 A2 FC           3230 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
      003ED8 00 02                 3231 	.dw	2
      003EDA 78                    3232 	.db	120
      003EDB 05                    3233 	.sleb128	5
      003EDC 00 00 A2 8D           3234 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
      003EE0 00 00 A2 BB           3235 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
      003EE4 00 02                 3236 	.dw	2
      003EE6 78                    3237 	.db	120
      003EE7 05                    3238 	.sleb128	5
      003EE8 00 00 A2 74           3239 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
      003EEC 00 00 A2 8D           3240 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
      003EF0 00 02                 3241 	.dw	2
      003EF2 78                    3242 	.db	120
      003EF3 05                    3243 	.sleb128	5
      003EF4 00 00 A2 6F           3244 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
      003EF8 00 00 A2 74           3245 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
      003EFC 00 02                 3246 	.dw	2
      003EFE 78                    3247 	.db	120
      003EFF 06                    3248 	.sleb128	6
      003F00 00 00 A2 62           3249 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
      003F04 00 00 A2 6F           3250 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
      003F08 00 02                 3251 	.dw	2
      003F0A 78                    3252 	.db	120
      003F0B 05                    3253 	.sleb128	5
      003F0C 00 00 A2 5D           3254 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
      003F10 00 00 A2 62           3255 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
      003F14 00 02                 3256 	.dw	2
      003F16 78                    3257 	.db	120
      003F17 06                    3258 	.sleb128	6
      003F18 00 00 A2 56           3259 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
      003F1C 00 00 A2 5D           3260 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
      003F20 00 02                 3261 	.dw	2
      003F22 78                    3262 	.db	120
      003F23 05                    3263 	.sleb128	5
      003F24 00 00 A2 54           3264 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)
      003F28 00 00 A2 56           3265 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
      003F2C 00 02                 3266 	.dw	2
      003F2E 78                    3267 	.db	120
      003F2F 01                    3268 	.sleb128	1
      003F30 00 00 00 00           3269 	.dw	0,0
      003F34 00 00 00 00           3270 	.dw	0,0
      003F38 00 00 A2 44           3271 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
      003F3C 00 00 A2 54           3272 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$372)
      003F40 00 02                 3273 	.dw	2
      003F42 78                    3274 	.db	120
      003F43 01                    3275 	.sleb128	1
      003F44 00 00 A2 37           3276 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)
      003F48 00 00 A2 44           3277 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
      003F4C 00 02                 3278 	.dw	2
      003F4E 78                    3279 	.db	120
      003F4F 01                    3280 	.sleb128	1
      003F50 00 00 00 00           3281 	.dw	0,0
      003F54 00 00 00 00           3282 	.dw	0,0
      003F58 00 00 A2 36           3283 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
      003F5C 00 00 A2 37           3284 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$359)
      003F60 00 02                 3285 	.dw	2
      003F62 78                    3286 	.db	120
      003F63 01                    3287 	.sleb128	1
      003F64 00 00 A2 0F           3288 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
      003F68 00 00 A2 36           3289 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
      003F6C 00 02                 3290 	.dw	2
      003F6E 78                    3291 	.db	120
      003F6F 04                    3292 	.sleb128	4
      003F70 00 00 A1 EE           3293 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
      003F74 00 00 A2 0F           3294 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
      003F78 00 02                 3295 	.dw	2
      003F7A 78                    3296 	.db	120
      003F7B 04                    3297 	.sleb128	4
      003F7C 00 00 A1 D9           3298 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
      003F80 00 00 A1 EE           3299 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
      003F84 00 02                 3300 	.dw	2
      003F86 78                    3301 	.db	120
      003F87 04                    3302 	.sleb128	4
      003F88 00 00 A1 D7           3303 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)
      003F8C 00 00 A1 D9           3304 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
      003F90 00 02                 3305 	.dw	2
      003F92 78                    3306 	.db	120
      003F93 01                    3307 	.sleb128	1
      003F94 00 00 00 00           3308 	.dw	0,0
      003F98 00 00 00 00           3309 	.dw	0,0
      003F9C 00 00 A1 D0           3310 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)
      003FA0 00 00 A1 D7           3311 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$321)
      003FA4 00 02                 3312 	.dw	2
      003FA6 78                    3313 	.db	120
      003FA7 01                    3314 	.sleb128	1
      003FA8 00 00 00 00           3315 	.dw	0,0
      003FAC 00 00 00 00           3316 	.dw	0,0
      003FB0 00 00 A1 C9           3317 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)
      003FB4 00 00 A1 D0           3318 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$315)
      003FB8 00 02                 3319 	.dw	2
      003FBA 78                    3320 	.db	120
      003FBB 01                    3321 	.sleb128	1
      003FBC 00 00 00 00           3322 	.dw	0,0
      003FC0 00 00 00 00           3323 	.dw	0,0
      003FC4 00 00 A1 B8           3324 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)
      003FC8 00 00 A1 C9           3325 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$309)
      003FCC 00 02                 3326 	.dw	2
      003FCE 78                    3327 	.db	120
      003FCF 01                    3328 	.sleb128	1
      003FD0 00 00 00 00           3329 	.dw	0,0
      003FD4 00 00 00 00           3330 	.dw	0,0
      003FD8 00 00 A1 AF           3331 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)
      003FDC 00 00 A1 B8           3332 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$302)
      003FE0 00 02                 3333 	.dw	2
      003FE2 78                    3334 	.db	120
      003FE3 01                    3335 	.sleb128	1
      003FE4 00 00 00 00           3336 	.dw	0,0
      003FE8 00 00 00 00           3337 	.dw	0,0
      003FEC 00 00 A1 AE           3338 	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
      003FF0 00 00 A1 AF           3339 	.dw	0,(Sstm8s_uart1$UART1_SendData9$296)
      003FF4 00 02                 3340 	.dw	2
      003FF6 78                    3341 	.db	120
      003FF7 01                    3342 	.sleb128	1
      003FF8 00 00 A1 8F           3343 	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
      003FFC 00 00 A1 AE           3344 	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
      004000 00 02                 3345 	.dw	2
      004002 78                    3346 	.db	120
      004003 02                    3347 	.sleb128	2
      004004 00 00 A1 8E           3348 	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)
      004008 00 00 A1 8F           3349 	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
      00400C 00 02                 3350 	.dw	2
      00400E 78                    3351 	.db	120
      00400F 01                    3352 	.sleb128	1
      004010 00 00 00 00           3353 	.dw	0,0
      004014 00 00 00 00           3354 	.dw	0,0
      004018 00 00 A1 87           3355 	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)
      00401C 00 00 A1 8E           3356 	.dw	0,(Sstm8s_uart1$UART1_SendData8$286)
      004020 00 02                 3357 	.dw	2
      004022 78                    3358 	.db	120
      004023 01                    3359 	.sleb128	1
      004024 00 00 00 00           3360 	.dw	0,0
      004028 00 00 00 00           3361 	.dw	0,0
      00402C 00 00 A1 86           3362 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
      004030 00 00 A1 87           3363 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$280)
      004034 00 02                 3364 	.dw	2
      004036 78                    3365 	.db	120
      004037 01                    3366 	.sleb128	1
      004038 00 00 A1 6B           3367 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
      00403C 00 00 A1 86           3368 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
      004040 00 02                 3369 	.dw	2
      004042 78                    3370 	.db	120
      004043 03                    3371 	.sleb128	3
      004044 00 00 A1 6A           3372 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)
      004048 00 00 A1 6B           3373 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
      00404C 00 02                 3374 	.dw	2
      00404E 78                    3375 	.db	120
      00404F 01                    3376 	.sleb128	1
      004050 00 00 00 00           3377 	.dw	0,0
      004054 00 00 00 00           3378 	.dw	0,0
      004058 00 00 A1 66           3379 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)
      00405C 00 00 A1 6A           3380 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$271)
      004060 00 02                 3381 	.dw	2
      004062 78                    3382 	.db	120
      004063 01                    3383 	.sleb128	1
      004064 00 00 00 00           3384 	.dw	0,0
      004068 00 00 00 00           3385 	.dw	0,0
      00406C 00 00 A1 4E           3386 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)
      004070 00 00 A1 66           3387 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265)
      004074 00 02                 3388 	.dw	2
      004076 78                    3389 	.db	120
      004077 01                    3390 	.sleb128	1
      004078 00 00 00 00           3391 	.dw	0,0
      00407C 00 00 00 00           3392 	.dw	0,0
      004080 00 00 A1 3D           3393 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)
      004084 00 00 A1 4E           3394 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$252)
      004088 00 02                 3395 	.dw	2
      00408A 78                    3396 	.db	120
      00408B 01                    3397 	.sleb128	1
      00408C 00 00 00 00           3398 	.dw	0,0
      004090 00 00 00 00           3399 	.dw	0,0
      004094 00 00 A1 25           3400 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)
      004098 00 00 A1 3D           3401 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$245)
      00409C 00 02                 3402 	.dw	2
      00409E 78                    3403 	.db	120
      00409F 01                    3404 	.sleb128	1
      0040A0 00 00 00 00           3405 	.dw	0,0
      0040A4 00 00 00 00           3406 	.dw	0,0
      0040A8 00 00 A1 0D           3407 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)
      0040AC 00 00 A1 25           3408 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$232)
      0040B0 00 02                 3409 	.dw	2
      0040B2 78                    3410 	.db	120
      0040B3 01                    3411 	.sleb128	1
      0040B4 00 00 00 00           3412 	.dw	0,0
      0040B8 00 00 00 00           3413 	.dw	0,0
      0040BC 00 00 A0 F5           3414 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)
      0040C0 00 00 A1 0D           3415 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$219)
      0040C4 00 02                 3416 	.dw	2
      0040C6 78                    3417 	.db	120
      0040C7 01                    3418 	.sleb128	1
      0040C8 00 00 00 00           3419 	.dw	0,0
      0040CC 00 00 00 00           3420 	.dw	0,0
      0040D0 00 00 A0 DD           3421 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)
      0040D4 00 00 A0 F5           3422 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$206)
      0040D8 00 02                 3423 	.dw	2
      0040DA 78                    3424 	.db	120
      0040DB 01                    3425 	.sleb128	1
      0040DC 00 00 00 00           3426 	.dw	0,0
      0040E0 00 00 00 00           3427 	.dw	0,0
      0040E4 00 00 A0 C5           3428 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)
      0040E8 00 00 A0 DD           3429 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$193)
      0040EC 00 02                 3430 	.dw	2
      0040EE 78                    3431 	.db	120
      0040EF 01                    3432 	.sleb128	1
      0040F0 00 00 00 00           3433 	.dw	0,0
      0040F4 00 00 00 00           3434 	.dw	0,0
      0040F8 00 00 A0 AD           3435 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)
      0040FC 00 00 A0 C5           3436 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$180)
      004100 00 02                 3437 	.dw	2
      004102 78                    3438 	.db	120
      004103 01                    3439 	.sleb128	1
      004104 00 00 00 00           3440 	.dw	0,0
      004108 00 00 00 00           3441 	.dw	0,0
      00410C 00 00 A0 95           3442 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)
      004110 00 00 A0 AD           3443 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$167)
      004114 00 02                 3444 	.dw	2
      004116 78                    3445 	.db	120
      004117 01                    3446 	.sleb128	1
      004118 00 00 00 00           3447 	.dw	0,0
      00411C 00 00 00 00           3448 	.dw	0,0
      004120 00 00 A0 94           3449 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
      004124 00 00 A0 95           3450 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$154)
      004128 00 02                 3451 	.dw	2
      00412A 78                    3452 	.db	120
      00412B 01                    3453 	.sleb128	1
      00412C 00 00 A0 68           3454 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
      004130 00 00 A0 94           3455 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
      004134 00 02                 3456 	.dw	2
      004136 78                    3457 	.db	120
      004137 03                    3458 	.sleb128	3
      004138 00 00 A0 65           3459 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
      00413C 00 00 A0 68           3460 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
      004140 00 02                 3461 	.dw	2
      004142 78                    3462 	.db	120
      004143 04                    3463 	.sleb128	4
      004144 00 00 A0 2F           3464 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      004148 00 00 A0 65           3465 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
      00414C 00 02                 3466 	.dw	2
      00414E 78                    3467 	.db	120
      00414F 03                    3468 	.sleb128	3
      004150 00 00 A0 24           3469 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      004154 00 00 A0 2F           3470 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      004158 00 02                 3471 	.dw	2
      00415A 78                    3472 	.db	120
      00415B 03                    3473 	.sleb128	3
      00415C 00 00 A0 0F           3474 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      004160 00 00 A0 24           3475 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      004164 00 02                 3476 	.dw	2
      004166 78                    3477 	.db	120
      004167 03                    3478 	.sleb128	3
      004168 00 00 A0 0A           3479 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      00416C 00 00 A0 0F           3480 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      004170 00 02                 3481 	.dw	2
      004172 78                    3482 	.db	120
      004173 04                    3483 	.sleb128	4
      004174 00 00 A0 02           3484 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      004178 00 00 A0 0A           3485 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      00417C 00 02                 3486 	.dw	2
      00417E 78                    3487 	.db	120
      00417F 03                    3488 	.sleb128	3
      004180 00 00 A0 01           3489 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
      004184 00 00 A0 02           3490 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      004188 00 02                 3491 	.dw	2
      00418A 78                    3492 	.db	120
      00418B 01                    3493 	.sleb128	1
      00418C 00 00 00 00           3494 	.dw	0,0
      004190 00 00 00 00           3495 	.dw	0,0
      004194 00 00 9F E9           3496 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
      004198 00 00 A0 01           3497 	.dw	0,(Sstm8s_uart1$UART1_Cmd$111)
      00419C 00 02                 3498 	.dw	2
      00419E 78                    3499 	.db	120
      00419F 01                    3500 	.sleb128	1
      0041A0 00 00 00 00           3501 	.dw	0,0
      0041A4 00 00 00 00           3502 	.dw	0,0
      0041A8 00 00 9F E8           3503 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      0041AC 00 00 9F E9           3504 	.dw	0,(Sstm8s_uart1$UART1_Init$98)
      0041B0 00 02                 3505 	.dw	2
      0041B2 78                    3506 	.db	120
      0041B3 01                    3507 	.sleb128	1
      0041B4 00 00 9F E1           3508 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      0041B8 00 00 9F E8           3509 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      0041BC 00 02                 3510 	.dw	2
      0041BE 78                    3511 	.db	120
      0041BF 12                    3512 	.sleb128	18
      0041C0 00 00 9F DA           3513 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      0041C4 00 00 9F E1           3514 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      0041C8 00 02                 3515 	.dw	2
      0041CA 78                    3516 	.db	120
      0041CB 13                    3517 	.sleb128	19
      0041CC 00 00 9F B5           3518 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      0041D0 00 00 9F DA           3519 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      0041D4 00 02                 3520 	.dw	2
      0041D6 78                    3521 	.db	120
      0041D7 12                    3522 	.sleb128	18
      0041D8 00 00 9F B0           3523 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      0041DC 00 00 9F B5           3524 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      0041E0 00 02                 3525 	.dw	2
      0041E2 78                    3526 	.db	120
      0041E3 13                    3527 	.sleb128	19
      0041E4 00 00 9F 9A           3528 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      0041E8 00 00 9F B0           3529 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      0041EC 00 02                 3530 	.dw	2
      0041EE 78                    3531 	.db	120
      0041EF 12                    3532 	.sleb128	18
      0041F0 00 00 9F 95           3533 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      0041F4 00 00 9F 9A           3534 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      0041F8 00 02                 3535 	.dw	2
      0041FA 78                    3536 	.db	120
      0041FB 13                    3537 	.sleb128	19
      0041FC 00 00 9F 4D           3538 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      004200 00 00 9F 95           3539 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      004204 00 02                 3540 	.dw	2
      004206 78                    3541 	.db	120
      004207 12                    3542 	.sleb128	18
      004208 00 00 9F 48           3543 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      00420C 00 00 9F 4D           3544 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      004210 00 02                 3545 	.dw	2
      004212 78                    3546 	.db	120
      004213 1A                    3547 	.sleb128	26
      004214 00 00 9F 46           3548 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      004218 00 00 9F 48           3549 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      00421C 00 02                 3550 	.dw	2
      00421E 78                    3551 	.db	120
      00421F 18                    3552 	.sleb128	24
      004220 00 00 9F 45           3553 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      004224 00 00 9F 46           3554 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      004228 00 02                 3555 	.dw	2
      00422A 78                    3556 	.db	120
      00422B 16                    3557 	.sleb128	22
      00422C 00 00 9F 43           3558 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      004230 00 00 9F 45           3559 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      004234 00 02                 3560 	.dw	2
      004236 78                    3561 	.db	120
      004237 15                    3562 	.sleb128	21
      004238 00 00 9F 41           3563 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      00423C 00 00 9F 43           3564 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      004240 00 02                 3565 	.dw	2
      004242 78                    3566 	.db	120
      004243 14                    3567 	.sleb128	20
      004244 00 00 9F 3F           3568 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      004248 00 00 9F 41           3569 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      00424C 00 02                 3570 	.dw	2
      00424E 78                    3571 	.db	120
      00424F 13                    3572 	.sleb128	19
      004250 00 00 9F 1A           3573 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      004254 00 00 9F 3F           3574 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      004258 00 02                 3575 	.dw	2
      00425A 78                    3576 	.db	120
      00425B 12                    3577 	.sleb128	18
      00425C 00 00 9F 15           3578 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      004260 00 00 9F 1A           3579 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      004264 00 02                 3580 	.dw	2
      004266 78                    3581 	.db	120
      004267 1A                    3582 	.sleb128	26
      004268 00 00 9F 13           3583 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      00426C 00 00 9F 15           3584 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      004270 00 02                 3585 	.dw	2
      004272 78                    3586 	.db	120
      004273 19                    3587 	.sleb128	25
      004274 00 00 9F 11           3588 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      004278 00 00 9F 13           3589 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      00427C 00 02                 3590 	.dw	2
      00427E 78                    3591 	.db	120
      00427F 17                    3592 	.sleb128	23
      004280 00 00 9F 0F           3593 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      004284 00 00 9F 11           3594 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      004288 00 02                 3595 	.dw	2
      00428A 78                    3596 	.db	120
      00428B 16                    3597 	.sleb128	22
      00428C 00 00 9F 0C           3598 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      004290 00 00 9F 0F           3599 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      004294 00 02                 3600 	.dw	2
      004296 78                    3601 	.db	120
      004297 14                    3602 	.sleb128	20
      004298 00 00 9F 00           3603 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      00429C 00 00 9F 0C           3604 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      0042A0 00 02                 3605 	.dw	2
      0042A2 78                    3606 	.db	120
      0042A3 12                    3607 	.sleb128	18
      0042A4 00 00 9E FB           3608 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      0042A8 00 00 9F 00           3609 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      0042AC 00 02                 3610 	.dw	2
      0042AE 78                    3611 	.db	120
      0042AF 1A                    3612 	.sleb128	26
      0042B0 00 00 9E F9           3613 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      0042B4 00 00 9E FB           3614 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      0042B8 00 02                 3615 	.dw	2
      0042BA 78                    3616 	.db	120
      0042BB 18                    3617 	.sleb128	24
      0042BC 00 00 9E F6           3618 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      0042C0 00 00 9E F9           3619 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      0042C4 00 02                 3620 	.dw	2
      0042C6 78                    3621 	.db	120
      0042C7 16                    3622 	.sleb128	22
      0042C8 00 00 9E F3           3623 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      0042CC 00 00 9E F6           3624 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      0042D0 00 02                 3625 	.dw	2
      0042D2 78                    3626 	.db	120
      0042D3 14                    3627 	.sleb128	20
      0042D4 00 00 9E EE           3628 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      0042D8 00 00 9E F3           3629 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      0042DC 00 02                 3630 	.dw	2
      0042DE 78                    3631 	.db	120
      0042DF 12                    3632 	.sleb128	18
      0042E0 00 00 9E E9           3633 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      0042E4 00 00 9E EE           3634 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      0042E8 00 02                 3635 	.dw	2
      0042EA 78                    3636 	.db	120
      0042EB 1A                    3637 	.sleb128	26
      0042EC 00 00 9E E7           3638 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      0042F0 00 00 9E E9           3639 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      0042F4 00 02                 3640 	.dw	2
      0042F6 78                    3641 	.db	120
      0042F7 19                    3642 	.sleb128	25
      0042F8 00 00 9E E5           3643 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      0042FC 00 00 9E E7           3644 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      004300 00 02                 3645 	.dw	2
      004302 78                    3646 	.db	120
      004303 17                    3647 	.sleb128	23
      004304 00 00 9E E3           3648 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      004308 00 00 9E E5           3649 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      00430C 00 02                 3650 	.dw	2
      00430E 78                    3651 	.db	120
      00430F 16                    3652 	.sleb128	22
      004310 00 00 9E E0           3653 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      004314 00 00 9E E3           3654 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      004318 00 02                 3655 	.dw	2
      00431A 78                    3656 	.db	120
      00431B 14                    3657 	.sleb128	20
      00431C 00 00 9E CA           3658 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      004320 00 00 9E E0           3659 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      004324 00 02                 3660 	.dw	2
      004326 78                    3661 	.db	120
      004327 12                    3662 	.sleb128	18
      004328 00 00 9E C5           3663 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      00432C 00 00 9E CA           3664 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      004330 00 02                 3665 	.dw	2
      004332 78                    3666 	.db	120
      004333 1A                    3667 	.sleb128	26
      004334 00 00 9E C3           3668 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      004338 00 00 9E C5           3669 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      00433C 00 02                 3670 	.dw	2
      00433E 78                    3671 	.db	120
      00433F 18                    3672 	.sleb128	24
      004340 00 00 9E C0           3673 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      004344 00 00 9E C3           3674 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      004348 00 02                 3675 	.dw	2
      00434A 78                    3676 	.db	120
      00434B 16                    3677 	.sleb128	22
      00434C 00 00 9E BD           3678 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      004350 00 00 9E C0           3679 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      004354 00 02                 3680 	.dw	2
      004356 78                    3681 	.db	120
      004357 14                    3682 	.sleb128	20
      004358 00 00 9E 5C           3683 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      00435C 00 00 9E BD           3684 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      004360 00 02                 3685 	.dw	2
      004362 78                    3686 	.db	120
      004363 12                    3687 	.sleb128	18
      004364 00 00 9E 5A           3688 	.dw	0,(Sstm8s_uart1$UART1_Init$17)
      004368 00 00 9E 5C           3689 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      00436C 00 02                 3690 	.dw	2
      00436E 78                    3691 	.db	120
      00436F 01                    3692 	.sleb128	1
      004370 00 00 00 00           3693 	.dw	0,0
      004374 00 00 00 00           3694 	.dw	0,0
      004378 00 00 9E 2F           3695 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
      00437C 00 00 9E 5A           3696 	.dw	0,(Sstm8s_uart1$UART1_DeInit$15)
      004380 00 02                 3697 	.dw	2
      004382 78                    3698 	.db	120
      004383 01                    3699 	.sleb128	1
      004384 00 00 00 00           3700 	.dw	0,0
      004388 00 00 00 00           3701 	.dw	0,0
                                   3702 
                                   3703 	.area .debug_abbrev (NOLOAD)
      000662                       3704 Ldebug_abbrev:
      000662 09                    3705 	.uleb128	9
      000663 2E                    3706 	.uleb128	46
      000664 00                    3707 	.db	0
      000665 03                    3708 	.uleb128	3
      000666 08                    3709 	.uleb128	8
      000667 11                    3710 	.uleb128	17
      000668 01                    3711 	.uleb128	1
      000669 12                    3712 	.uleb128	18
      00066A 01                    3713 	.uleb128	1
      00066B 3F                    3714 	.uleb128	63
      00066C 0C                    3715 	.uleb128	12
      00066D 40                    3716 	.uleb128	64
      00066E 06                    3717 	.uleb128	6
      00066F 49                    3718 	.uleb128	73
      000670 13                    3719 	.uleb128	19
      000671 00                    3720 	.uleb128	0
      000672 00                    3721 	.uleb128	0
      000673 04                    3722 	.uleb128	4
      000674 05                    3723 	.uleb128	5
      000675 00                    3724 	.db	0
      000676 02                    3725 	.uleb128	2
      000677 0A                    3726 	.uleb128	10
      000678 03                    3727 	.uleb128	3
      000679 08                    3728 	.uleb128	8
      00067A 49                    3729 	.uleb128	73
      00067B 13                    3730 	.uleb128	19
      00067C 00                    3731 	.uleb128	0
      00067D 00                    3732 	.uleb128	0
      00067E 03                    3733 	.uleb128	3
      00067F 2E                    3734 	.uleb128	46
      000680 01                    3735 	.db	1
      000681 01                    3736 	.uleb128	1
      000682 13                    3737 	.uleb128	19
      000683 03                    3738 	.uleb128	3
      000684 08                    3739 	.uleb128	8
      000685 11                    3740 	.uleb128	17
      000686 01                    3741 	.uleb128	1
      000687 12                    3742 	.uleb128	18
      000688 01                    3743 	.uleb128	1
      000689 3F                    3744 	.uleb128	63
      00068A 0C                    3745 	.uleb128	12
      00068B 40                    3746 	.uleb128	64
      00068C 06                    3747 	.uleb128	6
      00068D 00                    3748 	.uleb128	0
      00068E 00                    3749 	.uleb128	0
      00068F 06                    3750 	.uleb128	6
      000690 34                    3751 	.uleb128	52
      000691 00                    3752 	.db	0
      000692 02                    3753 	.uleb128	2
      000693 0A                    3754 	.uleb128	10
      000694 03                    3755 	.uleb128	3
      000695 08                    3756 	.uleb128	8
      000696 49                    3757 	.uleb128	73
      000697 13                    3758 	.uleb128	19
      000698 00                    3759 	.uleb128	0
      000699 00                    3760 	.uleb128	0
      00069A 0A                    3761 	.uleb128	10
      00069B 2E                    3762 	.uleb128	46
      00069C 01                    3763 	.db	1
      00069D 01                    3764 	.uleb128	1
      00069E 13                    3765 	.uleb128	19
      00069F 03                    3766 	.uleb128	3
      0006A0 08                    3767 	.uleb128	8
      0006A1 11                    3768 	.uleb128	17
      0006A2 01                    3769 	.uleb128	1
      0006A3 12                    3770 	.uleb128	18
      0006A4 01                    3771 	.uleb128	1
      0006A5 3F                    3772 	.uleb128	63
      0006A6 0C                    3773 	.uleb128	12
      0006A7 40                    3774 	.uleb128	64
      0006A8 06                    3775 	.uleb128	6
      0006A9 49                    3776 	.uleb128	73
      0006AA 13                    3777 	.uleb128	19
      0006AB 00                    3778 	.uleb128	0
      0006AC 00                    3779 	.uleb128	0
      0006AD 01                    3780 	.uleb128	1
      0006AE 11                    3781 	.uleb128	17
      0006AF 01                    3782 	.db	1
      0006B0 03                    3783 	.uleb128	3
      0006B1 08                    3784 	.uleb128	8
      0006B2 10                    3785 	.uleb128	16
      0006B3 06                    3786 	.uleb128	6
      0006B4 13                    3787 	.uleb128	19
      0006B5 0B                    3788 	.uleb128	11
      0006B6 25                    3789 	.uleb128	37
      0006B7 08                    3790 	.uleb128	8
      0006B8 00                    3791 	.uleb128	0
      0006B9 00                    3792 	.uleb128	0
      0006BA 05                    3793 	.uleb128	5
      0006BB 0B                    3794 	.uleb128	11
      0006BC 00                    3795 	.db	0
      0006BD 11                    3796 	.uleb128	17
      0006BE 01                    3797 	.uleb128	1
      0006BF 12                    3798 	.uleb128	18
      0006C0 01                    3799 	.uleb128	1
      0006C1 00                    3800 	.uleb128	0
      0006C2 00                    3801 	.uleb128	0
      0006C3 08                    3802 	.uleb128	8
      0006C4 0B                    3803 	.uleb128	11
      0006C5 01                    3804 	.db	1
      0006C6 01                    3805 	.uleb128	1
      0006C7 13                    3806 	.uleb128	19
      0006C8 11                    3807 	.uleb128	17
      0006C9 01                    3808 	.uleb128	1
      0006CA 00                    3809 	.uleb128	0
      0006CB 00                    3810 	.uleb128	0
      0006CC 02                    3811 	.uleb128	2
      0006CD 2E                    3812 	.uleb128	46
      0006CE 00                    3813 	.db	0
      0006CF 03                    3814 	.uleb128	3
      0006D0 08                    3815 	.uleb128	8
      0006D1 11                    3816 	.uleb128	17
      0006D2 01                    3817 	.uleb128	1
      0006D3 12                    3818 	.uleb128	18
      0006D4 01                    3819 	.uleb128	1
      0006D5 3F                    3820 	.uleb128	63
      0006D6 0C                    3821 	.uleb128	12
      0006D7 40                    3822 	.uleb128	64
      0006D8 06                    3823 	.uleb128	6
      0006D9 00                    3824 	.uleb128	0
      0006DA 00                    3825 	.uleb128	0
      0006DB 0B                    3826 	.uleb128	11
      0006DC 2E                    3827 	.uleb128	46
      0006DD 01                    3828 	.db	1
      0006DE 03                    3829 	.uleb128	3
      0006DF 08                    3830 	.uleb128	8
      0006E0 11                    3831 	.uleb128	17
      0006E1 01                    3832 	.uleb128	1
      0006E2 12                    3833 	.uleb128	18
      0006E3 01                    3834 	.uleb128	1
      0006E4 3F                    3835 	.uleb128	63
      0006E5 0C                    3836 	.uleb128	12
      0006E6 40                    3837 	.uleb128	64
      0006E7 06                    3838 	.uleb128	6
      0006E8 00                    3839 	.uleb128	0
      0006E9 00                    3840 	.uleb128	0
      0006EA 07                    3841 	.uleb128	7
      0006EB 24                    3842 	.uleb128	36
      0006EC 00                    3843 	.db	0
      0006ED 03                    3844 	.uleb128	3
      0006EE 08                    3845 	.uleb128	8
      0006EF 0B                    3846 	.uleb128	11
      0006F0 0B                    3847 	.uleb128	11
      0006F1 3E                    3848 	.uleb128	62
      0006F2 0B                    3849 	.uleb128	11
      0006F3 00                    3850 	.uleb128	0
      0006F4 00                    3851 	.uleb128	0
      0006F5 00                    3852 	.uleb128	0
                                   3853 
                                   3854 	.area .debug_info (NOLOAD)
      003BED 00 00 08 C7           3855 	.dw	0,Ldebug_info_end-Ldebug_info_start
      003BF1                       3856 Ldebug_info_start:
      003BF1 00 02                 3857 	.dw	2
      003BF3 00 00 06 62           3858 	.dw	0,(Ldebug_abbrev)
      003BF7 04                    3859 	.db	4
      003BF8 01                    3860 	.uleb128	1
      003BF9 2E 2E 2F 53 50 4C 2F  3861 	.ascii "../SPL/src/stm8s_uart1.c"
             73 72 63 2F 73 74 6D
             38 73 5F 75 61 72 74
             31 2E 63
      003C11 00                    3862 	.db	0
      003C12 00 00 27 04           3863 	.dw	0,(Ldebug_line_start+-4)
      003C16 01                    3864 	.db	1
      003C17 53 44 43 43 20 76 65  3865 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      003C30 00                    3866 	.db	0
      003C31 02                    3867 	.uleb128	2
      003C32 55 41 52 54 31 5F 44  3868 	.ascii "UART1_DeInit"
             65 49 6E 69 74
      003C3E 00                    3869 	.db	0
      003C3F 00 00 9E 2F           3870 	.dw	0,(_UART1_DeInit)
      003C43 00 00 9E 5A           3871 	.dw	0,(XG$UART1_DeInit$0$0+1)
      003C47 01                    3872 	.db	1
      003C48 00 00 43 78           3873 	.dw	0,(Ldebug_loc_start+1236)
      003C4C 03                    3874 	.uleb128	3
      003C4D 00 00 01 4C           3875 	.dw	0,332
      003C51 55 41 52 54 31 5F 49  3876 	.ascii "UART1_Init"
             6E 69 74
      003C5B 00                    3877 	.db	0
      003C5C 00 00 9E 5A           3878 	.dw	0,(_UART1_Init)
      003C60 00 00 9F E9           3879 	.dw	0,(XG$UART1_Init$0$0+1)
      003C64 01                    3880 	.db	1
      003C65 00 00 41 A8           3881 	.dw	0,(Ldebug_loc_start+772)
      003C69 04                    3882 	.uleb128	4
      003C6A 02                    3883 	.db	2
      003C6B 91                    3884 	.db	145
      003C6C 02                    3885 	.sleb128	2
      003C6D 42 61 75 64 52 61 74  3886 	.ascii "BaudRate"
             65
      003C75 00                    3887 	.db	0
      003C76 00 00 01 4C           3888 	.dw	0,332
      003C7A 04                    3889 	.uleb128	4
      003C7B 02                    3890 	.db	2
      003C7C 91                    3891 	.db	145
      003C7D 06                    3892 	.sleb128	6
      003C7E 57 6F 72 64 4C 65 6E  3893 	.ascii "WordLength"
             67 74 68
      003C88 00                    3894 	.db	0
      003C89 00 00 01 5D           3895 	.dw	0,349
      003C8D 04                    3896 	.uleb128	4
      003C8E 02                    3897 	.db	2
      003C8F 91                    3898 	.db	145
      003C90 07                    3899 	.sleb128	7
      003C91 53 74 6F 70 42 69 74  3900 	.ascii "StopBits"
             73
      003C99 00                    3901 	.db	0
      003C9A 00 00 01 5D           3902 	.dw	0,349
      003C9E 04                    3903 	.uleb128	4
      003C9F 02                    3904 	.db	2
      003CA0 91                    3905 	.db	145
      003CA1 08                    3906 	.sleb128	8
      003CA2 50 61 72 69 74 79     3907 	.ascii "Parity"
      003CA8 00                    3908 	.db	0
      003CA9 00 00 01 5D           3909 	.dw	0,349
      003CAD 04                    3910 	.uleb128	4
      003CAE 02                    3911 	.db	2
      003CAF 91                    3912 	.db	145
      003CB0 09                    3913 	.sleb128	9
      003CB1 53 79 6E 63 4D 6F 64  3914 	.ascii "SyncMode"
             65
      003CB9 00                    3915 	.db	0
      003CBA 00 00 01 5D           3916 	.dw	0,349
      003CBE 04                    3917 	.uleb128	4
      003CBF 02                    3918 	.db	2
      003CC0 91                    3919 	.db	145
      003CC1 0A                    3920 	.sleb128	10
      003CC2 4D 6F 64 65           3921 	.ascii "Mode"
      003CC6 00                    3922 	.db	0
      003CC7 00 00 01 5D           3923 	.dw	0,349
      003CCB 05                    3924 	.uleb128	5
      003CCC 00 00 9F 9F           3925 	.dw	0,(Sstm8s_uart1$UART1_Init$69)
      003CD0 00 00 9F A4           3926 	.dw	0,(Sstm8s_uart1$UART1_Init$71)
      003CD4 05                    3927 	.uleb128	5
      003CD5 00 00 9F A7           3928 	.dw	0,(Sstm8s_uart1$UART1_Init$72)
      003CD9 00 00 9F AC           3929 	.dw	0,(Sstm8s_uart1$UART1_Init$74)
      003CDD 05                    3930 	.uleb128	5
      003CDE 00 00 9F BA           3931 	.dw	0,(Sstm8s_uart1$UART1_Init$79)
      003CE2 00 00 9F BF           3932 	.dw	0,(Sstm8s_uart1$UART1_Init$81)
      003CE6 05                    3933 	.uleb128	5
      003CE7 00 00 9F C2           3934 	.dw	0,(Sstm8s_uart1$UART1_Init$82)
      003CEB 00 00 9F C7           3935 	.dw	0,(Sstm8s_uart1$UART1_Init$84)
      003CEF 05                    3936 	.uleb128	5
      003CF0 00 00 9F D1           3937 	.dw	0,(Sstm8s_uart1$UART1_Init$87)
      003CF4 00 00 9F D6           3938 	.dw	0,(Sstm8s_uart1$UART1_Init$89)
      003CF8 05                    3939 	.uleb128	5
      003CF9 00 00 9F D9           3940 	.dw	0,(Sstm8s_uart1$UART1_Init$90)
      003CFD 00 00 9F E6           3941 	.dw	0,(Sstm8s_uart1$UART1_Init$94)
      003D01 06                    3942 	.uleb128	6
      003D02 02                    3943 	.db	2
      003D03 91                    3944 	.db	145
      003D04 6F                    3945 	.sleb128	-17
      003D05 42 61 75 64 52 61 74  3946 	.ascii "BaudRate_Mantissa"
             65 5F 4D 61 6E 74 69
             73 73 61
      003D16 00                    3947 	.db	0
      003D17 00 00 01 4C           3948 	.dw	0,332
      003D1B 06                    3949 	.uleb128	6
      003D1C 02                    3950 	.db	2
      003D1D 91                    3951 	.db	145
      003D1E 73                    3952 	.sleb128	-13
      003D1F 42 61 75 64 52 61 74  3953 	.ascii "BaudRate_Mantissa100"
             65 5F 4D 61 6E 74 69
             73 73 61 31 30 30
      003D33 00                    3954 	.db	0
      003D34 00 00 01 4C           3955 	.dw	0,332
      003D38 00                    3956 	.uleb128	0
      003D39 07                    3957 	.uleb128	7
      003D3A 75 6E 73 69 67 6E 65  3958 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      003D47 00                    3959 	.db	0
      003D48 04                    3960 	.db	4
      003D49 07                    3961 	.db	7
      003D4A 07                    3962 	.uleb128	7
      003D4B 75 6E 73 69 67 6E 65  3963 	.ascii "unsigned char"
             64 20 63 68 61 72
      003D58 00                    3964 	.db	0
      003D59 01                    3965 	.db	1
      003D5A 08                    3966 	.db	8
      003D5B 03                    3967 	.uleb128	3
      003D5C 00 00 01 AE           3968 	.dw	0,430
      003D60 55 41 52 54 31 5F 43  3969 	.ascii "UART1_Cmd"
             6D 64
      003D69 00                    3970 	.db	0
      003D6A 00 00 9F E9           3971 	.dw	0,(_UART1_Cmd)
      003D6E 00 00 A0 01           3972 	.dw	0,(XG$UART1_Cmd$0$0+1)
      003D72 01                    3973 	.db	1
      003D73 00 00 41 94           3974 	.dw	0,(Ldebug_loc_start+752)
      003D77 04                    3975 	.uleb128	4
      003D78 02                    3976 	.db	2
      003D79 91                    3977 	.db	145
      003D7A 02                    3978 	.sleb128	2
      003D7B 4E 65 77 53 74 61 74  3979 	.ascii "NewState"
             65
      003D83 00                    3980 	.db	0
      003D84 00 00 01 5D           3981 	.dw	0,349
      003D88 05                    3982 	.uleb128	5
      003D89 00 00 9F F3           3983 	.dw	0,(Sstm8s_uart1$UART1_Cmd$103)
      003D8D 00 00 9F F8           3984 	.dw	0,(Sstm8s_uart1$UART1_Cmd$105)
      003D91 05                    3985 	.uleb128	5
      003D92 00 00 9F FB           3986 	.dw	0,(Sstm8s_uart1$UART1_Cmd$106)
      003D96 00 00 A0 00           3987 	.dw	0,(Sstm8s_uart1$UART1_Cmd$108)
      003D9A 00                    3988 	.uleb128	0
      003D9B 03                    3989 	.uleb128	3
      003D9C 00 00 02 59           3990 	.dw	0,601
      003DA0 55 41 52 54 31 5F 49  3991 	.ascii "UART1_ITConfig"
             54 43 6F 6E 66 69 67
      003DAE 00                    3992 	.db	0
      003DAF 00 00 A0 01           3993 	.dw	0,(_UART1_ITConfig)
      003DB3 00 00 A0 95           3994 	.dw	0,(XG$UART1_ITConfig$0$0+1)
      003DB7 01                    3995 	.db	1
      003DB8 00 00 41 20           3996 	.dw	0,(Ldebug_loc_start+636)
      003DBC 04                    3997 	.uleb128	4
      003DBD 02                    3998 	.db	2
      003DBE 91                    3999 	.db	145
      003DBF 02                    4000 	.sleb128	2
      003DC0 55 41 52 54 31 5F 49  4001 	.ascii "UART1_IT"
             54
      003DC8 00                    4002 	.db	0
      003DC9 00 00 02 59           4003 	.dw	0,601
      003DCD 04                    4004 	.uleb128	4
      003DCE 02                    4005 	.db	2
      003DCF 91                    4006 	.db	145
      003DD0 04                    4007 	.sleb128	4
      003DD1 4E 65 77 53 74 61 74  4008 	.ascii "NewState"
             65
      003DD9 00                    4009 	.db	0
      003DDA 00 00 01 5D           4010 	.dw	0,349
      003DDE 08                    4011 	.uleb128	8
      003DDF 00 00 02 16           4012 	.dw	0,534
      003DE3 00 00 A0 36           4013 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$124)
      003DE7 05                    4014 	.uleb128	5
      003DE8 00 00 A0 3D           4015 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$126)
      003DEC 00 00 A0 45           4016 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$128)
      003DF0 05                    4017 	.uleb128	5
      003DF1 00 00 A0 4E           4018 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$130)
      003DF5 00 00 A0 56           4019 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$132)
      003DF9 05                    4020 	.uleb128	5
      003DFA 00 00 A0 59           4021 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$133)
      003DFE 00 00 A0 61           4022 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$135)
      003E02 00                    4023 	.uleb128	0
      003E03 08                    4024 	.uleb128	8
      003E04 00 00 02 3B           4025 	.dw	0,571
      003E08 00 00 A0 68           4026 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$139)
      003E0C 05                    4027 	.uleb128	5
      003E0D 00 00 A0 6F           4028 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$141)
      003E11 00 00 A0 77           4029 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$143)
      003E15 05                    4030 	.uleb128	5
      003E16 00 00 A0 80           4031 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$145)
      003E1A 00 00 A0 88           4032 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$147)
      003E1E 05                    4033 	.uleb128	5
      003E1F 00 00 A0 8B           4034 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$148)
      003E23 00 00 A0 93           4035 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
      003E27 00                    4036 	.uleb128	0
      003E28 06                    4037 	.uleb128	6
      003E29 01                    4038 	.db	1
      003E2A 52                    4039 	.db	82
      003E2B 75 61 72 74 72 65 67  4040 	.ascii "uartreg"
      003E32 00                    4041 	.db	0
      003E33 00 00 01 5D           4042 	.dw	0,349
      003E37 06                    4043 	.uleb128	6
      003E38 02                    4044 	.db	2
      003E39 91                    4045 	.db	145
      003E3A 7F                    4046 	.sleb128	-1
      003E3B 69 74 70 6F 73        4047 	.ascii "itpos"
      003E40 00                    4048 	.db	0
      003E41 00 00 01 5D           4049 	.dw	0,349
      003E45 00                    4050 	.uleb128	0
      003E46 07                    4051 	.uleb128	7
      003E47 75 6E 73 69 67 6E 65  4052 	.ascii "unsigned int"
             64 20 69 6E 74
      003E53 00                    4053 	.db	0
      003E54 02                    4054 	.db	2
      003E55 07                    4055 	.db	7
      003E56 03                    4056 	.uleb128	3
      003E57 00 00 02 B3           4057 	.dw	0,691
      003E5B 55 41 52 54 31 5F 48  4058 	.ascii "UART1_HalfDuplexCmd"
             61 6C 66 44 75 70 6C
             65 78 43 6D 64
      003E6E 00                    4059 	.db	0
      003E6F 00 00 A0 95           4060 	.dw	0,(_UART1_HalfDuplexCmd)
      003E73 00 00 A0 AD           4061 	.dw	0,(XG$UART1_HalfDuplexCmd$0$0+1)
      003E77 01                    4062 	.db	1
      003E78 00 00 41 0C           4063 	.dw	0,(Ldebug_loc_start+616)
      003E7C 04                    4064 	.uleb128	4
      003E7D 02                    4065 	.db	2
      003E7E 91                    4066 	.db	145
      003E7F 02                    4067 	.sleb128	2
      003E80 4E 65 77 53 74 61 74  4068 	.ascii "NewState"
             65
      003E88 00                    4069 	.db	0
      003E89 00 00 01 5D           4070 	.dw	0,349
      003E8D 05                    4071 	.uleb128	5
      003E8E 00 00 A0 9F           4072 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$159)
      003E92 00 00 A0 A4           4073 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$161)
      003E96 05                    4074 	.uleb128	5
      003E97 00 00 A0 A7           4075 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$162)
      003E9B 00 00 A0 AC           4076 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$164)
      003E9F 00                    4077 	.uleb128	0
      003EA0 03                    4078 	.uleb128	3
      003EA1 00 00 03 00           4079 	.dw	0,768
      003EA5 55 41 52 54 31 5F 49  4080 	.ascii "UART1_IrDAConfig"
             72 44 41 43 6F 6E 66
             69 67
      003EB5 00                    4081 	.db	0
      003EB6 00 00 A0 AD           4082 	.dw	0,(_UART1_IrDAConfig)
      003EBA 00 00 A0 C5           4083 	.dw	0,(XG$UART1_IrDAConfig$0$0+1)
      003EBE 01                    4084 	.db	1
      003EBF 00 00 40 F8           4085 	.dw	0,(Ldebug_loc_start+596)
      003EC3 04                    4086 	.uleb128	4
      003EC4 02                    4087 	.db	2
      003EC5 91                    4088 	.db	145
      003EC6 02                    4089 	.sleb128	2
      003EC7 55 41 52 54 31 5F 49  4090 	.ascii "UART1_IrDAMode"
             72 44 41 4D 6F 64 65
      003ED5 00                    4091 	.db	0
      003ED6 00 00 01 5D           4092 	.dw	0,349
      003EDA 05                    4093 	.uleb128	5
      003EDB 00 00 A0 B7           4094 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$172)
      003EDF 00 00 A0 BC           4095 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$174)
      003EE3 05                    4096 	.uleb128	5
      003EE4 00 00 A0 BF           4097 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$175)
      003EE8 00 00 A0 C4           4098 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$177)
      003EEC 00                    4099 	.uleb128	0
      003EED 03                    4100 	.uleb128	3
      003EEE 00 00 03 44           4101 	.dw	0,836
      003EF2 55 41 52 54 31 5F 49  4102 	.ascii "UART1_IrDACmd"
             72 44 41 43 6D 64
      003EFF 00                    4103 	.db	0
      003F00 00 00 A0 C5           4104 	.dw	0,(_UART1_IrDACmd)
      003F04 00 00 A0 DD           4105 	.dw	0,(XG$UART1_IrDACmd$0$0+1)
      003F08 01                    4106 	.db	1
      003F09 00 00 40 E4           4107 	.dw	0,(Ldebug_loc_start+576)
      003F0D 04                    4108 	.uleb128	4
      003F0E 02                    4109 	.db	2
      003F0F 91                    4110 	.db	145
      003F10 02                    4111 	.sleb128	2
      003F11 4E 65 77 53 74 61 74  4112 	.ascii "NewState"
             65
      003F19 00                    4113 	.db	0
      003F1A 00 00 01 5D           4114 	.dw	0,349
      003F1E 05                    4115 	.uleb128	5
      003F1F 00 00 A0 CF           4116 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$185)
      003F23 00 00 A0 D4           4117 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$187)
      003F27 05                    4118 	.uleb128	5
      003F28 00 00 A0 D7           4119 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$188)
      003F2C 00 00 A0 DC           4120 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$190)
      003F30 00                    4121 	.uleb128	0
      003F31 03                    4122 	.uleb128	3
      003F32 00 00 03 AD           4123 	.dw	0,941
      003F36 55 41 52 54 31 5F 4C  4124 	.ascii "UART1_LINBreakDetectionConfig"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 43 6F 6E 66 69
             67
      003F53 00                    4125 	.db	0
      003F54 00 00 A0 DD           4126 	.dw	0,(_UART1_LINBreakDetectionConfig)
      003F58 00 00 A0 F5           4127 	.dw	0,(XG$UART1_LINBreakDetectionConfig$0$0+1)
      003F5C 01                    4128 	.db	1
      003F5D 00 00 40 D0           4129 	.dw	0,(Ldebug_loc_start+556)
      003F61 04                    4130 	.uleb128	4
      003F62 02                    4131 	.db	2
      003F63 91                    4132 	.db	145
      003F64 02                    4133 	.sleb128	2
      003F65 55 41 52 54 31 5F 4C  4134 	.ascii "UART1_LINBreakDetectionLength"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 4C 65 6E 67 74
             68
      003F82 00                    4135 	.db	0
      003F83 00 00 01 5D           4136 	.dw	0,349
      003F87 05                    4137 	.uleb128	5
      003F88 00 00 A0 E7           4138 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$198)
      003F8C 00 00 A0 EC           4139 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$200)
      003F90 05                    4140 	.uleb128	5
      003F91 00 00 A0 EF           4141 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$201)
      003F95 00 00 A0 F4           4142 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$203)
      003F99 00                    4143 	.uleb128	0
      003F9A 03                    4144 	.uleb128	3
      003F9B 00 00 03 F0           4145 	.dw	0,1008
      003F9F 55 41 52 54 31 5F 4C  4146 	.ascii "UART1_LINCmd"
             49 4E 43 6D 64
      003FAB 00                    4147 	.db	0
      003FAC 00 00 A0 F5           4148 	.dw	0,(_UART1_LINCmd)
      003FB0 00 00 A1 0D           4149 	.dw	0,(XG$UART1_LINCmd$0$0+1)
      003FB4 01                    4150 	.db	1
      003FB5 00 00 40 BC           4151 	.dw	0,(Ldebug_loc_start+536)
      003FB9 04                    4152 	.uleb128	4
      003FBA 02                    4153 	.db	2
      003FBB 91                    4154 	.db	145
      003FBC 02                    4155 	.sleb128	2
      003FBD 4E 65 77 53 74 61 74  4156 	.ascii "NewState"
             65
      003FC5 00                    4157 	.db	0
      003FC6 00 00 01 5D           4158 	.dw	0,349
      003FCA 05                    4159 	.uleb128	5
      003FCB 00 00 A0 FF           4160 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$211)
      003FCF 00 00 A1 04           4161 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$213)
      003FD3 05                    4162 	.uleb128	5
      003FD4 00 00 A1 07           4163 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$214)
      003FD8 00 00 A1 0C           4164 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$216)
      003FDC 00                    4165 	.uleb128	0
      003FDD 03                    4166 	.uleb128	3
      003FDE 00 00 04 39           4167 	.dw	0,1081
      003FE2 55 41 52 54 31 5F 53  4168 	.ascii "UART1_SmartCardCmd"
             6D 61 72 74 43 61 72
             64 43 6D 64
      003FF4 00                    4169 	.db	0
      003FF5 00 00 A1 0D           4170 	.dw	0,(_UART1_SmartCardCmd)
      003FF9 00 00 A1 25           4171 	.dw	0,(XG$UART1_SmartCardCmd$0$0+1)
      003FFD 01                    4172 	.db	1
      003FFE 00 00 40 A8           4173 	.dw	0,(Ldebug_loc_start+516)
      004002 04                    4174 	.uleb128	4
      004003 02                    4175 	.db	2
      004004 91                    4176 	.db	145
      004005 02                    4177 	.sleb128	2
      004006 4E 65 77 53 74 61 74  4178 	.ascii "NewState"
             65
      00400E 00                    4179 	.db	0
      00400F 00 00 01 5D           4180 	.dw	0,349
      004013 05                    4181 	.uleb128	5
      004014 00 00 A1 17           4182 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$224)
      004018 00 00 A1 1C           4183 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$226)
      00401C 05                    4184 	.uleb128	5
      00401D 00 00 A1 1F           4185 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$227)
      004021 00 00 A1 24           4186 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$229)
      004025 00                    4187 	.uleb128	0
      004026 03                    4188 	.uleb128	3
      004027 00 00 04 86           4189 	.dw	0,1158
      00402B 55 41 52 54 31 5F 53  4190 	.ascii "UART1_SmartCardNACKCmd"
             6D 61 72 74 43 61 72
             64 4E 41 43 4B 43 6D
             64
      004041 00                    4191 	.db	0
      004042 00 00 A1 25           4192 	.dw	0,(_UART1_SmartCardNACKCmd)
      004046 00 00 A1 3D           4193 	.dw	0,(XG$UART1_SmartCardNACKCmd$0$0+1)
      00404A 01                    4194 	.db	1
      00404B 00 00 40 94           4195 	.dw	0,(Ldebug_loc_start+496)
      00404F 04                    4196 	.uleb128	4
      004050 02                    4197 	.db	2
      004051 91                    4198 	.db	145
      004052 02                    4199 	.sleb128	2
      004053 4E 65 77 53 74 61 74  4200 	.ascii "NewState"
             65
      00405B 00                    4201 	.db	0
      00405C 00 00 01 5D           4202 	.dw	0,349
      004060 05                    4203 	.uleb128	5
      004061 00 00 A1 2F           4204 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$237)
      004065 00 00 A1 34           4205 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$239)
      004069 05                    4206 	.uleb128	5
      00406A 00 00 A1 37           4207 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$240)
      00406E 00 00 A1 3C           4208 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$242)
      004072 00                    4209 	.uleb128	0
      004073 03                    4210 	.uleb128	3
      004074 00 00 04 C1           4211 	.dw	0,1217
      004078 55 41 52 54 31 5F 57  4212 	.ascii "UART1_WakeUpConfig"
             61 6B 65 55 70 43 6F
             6E 66 69 67
      00408A 00                    4213 	.db	0
      00408B 00 00 A1 3D           4214 	.dw	0,(_UART1_WakeUpConfig)
      00408F 00 00 A1 4E           4215 	.dw	0,(XG$UART1_WakeUpConfig$0$0+1)
      004093 01                    4216 	.db	1
      004094 00 00 40 80           4217 	.dw	0,(Ldebug_loc_start+476)
      004098 04                    4218 	.uleb128	4
      004099 02                    4219 	.db	2
      00409A 91                    4220 	.db	145
      00409B 02                    4221 	.sleb128	2
      00409C 55 41 52 54 31 5F 57  4222 	.ascii "UART1_WakeUp"
             61 6B 65 55 70
      0040A8 00                    4223 	.db	0
      0040A9 00 00 01 5D           4224 	.dw	0,349
      0040AD 00                    4225 	.uleb128	0
      0040AE 03                    4226 	.uleb128	3
      0040AF 00 00 05 0F           4227 	.dw	0,1295
      0040B3 55 41 52 54 31 5F 52  4228 	.ascii "UART1_ReceiverWakeUpCmd"
             65 63 65 69 76 65 72
             57 61 6B 65 55 70 43
             6D 64
      0040CA 00                    4229 	.db	0
      0040CB 00 00 A1 4E           4230 	.dw	0,(_UART1_ReceiverWakeUpCmd)
      0040CF 00 00 A1 66           4231 	.dw	0,(XG$UART1_ReceiverWakeUpCmd$0$0+1)
      0040D3 01                    4232 	.db	1
      0040D4 00 00 40 6C           4233 	.dw	0,(Ldebug_loc_start+456)
      0040D8 04                    4234 	.uleb128	4
      0040D9 02                    4235 	.db	2
      0040DA 91                    4236 	.db	145
      0040DB 02                    4237 	.sleb128	2
      0040DC 4E 65 77 53 74 61 74  4238 	.ascii "NewState"
             65
      0040E4 00                    4239 	.db	0
      0040E5 00 00 01 5D           4240 	.dw	0,349
      0040E9 05                    4241 	.uleb128	5
      0040EA 00 00 A1 58           4242 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$257)
      0040EE 00 00 A1 5D           4243 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$259)
      0040F2 05                    4244 	.uleb128	5
      0040F3 00 00 A1 60           4245 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$260)
      0040F7 00 00 A1 65           4246 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$262)
      0040FB 00                    4247 	.uleb128	0
      0040FC 09                    4248 	.uleb128	9
      0040FD 55 41 52 54 31 5F 52  4249 	.ascii "UART1_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      00410F 00                    4250 	.db	0
      004110 00 00 A1 66           4251 	.dw	0,(_UART1_ReceiveData8)
      004114 00 00 A1 6A           4252 	.dw	0,(XG$UART1_ReceiveData8$0$0+1)
      004118 01                    4253 	.db	1
      004119 00 00 40 58           4254 	.dw	0,(Ldebug_loc_start+436)
      00411D 00 00 01 5D           4255 	.dw	0,349
      004121 07                    4256 	.uleb128	7
      004122 75 6E 73 69 67 6E 65  4257 	.ascii "unsigned int"
             64 20 69 6E 74
      00412E 00                    4258 	.db	0
      00412F 02                    4259 	.db	2
      004130 07                    4260 	.db	7
      004131 0A                    4261 	.uleb128	10
      004132 00 00 05 7B           4262 	.dw	0,1403
      004136 55 41 52 54 31 5F 52  4263 	.ascii "UART1_ReceiveData9"
             65 63 65 69 76 65 44
             61 74 61 39
      004148 00                    4264 	.db	0
      004149 00 00 A1 6A           4265 	.dw	0,(_UART1_ReceiveData9)
      00414D 00 00 A1 87           4266 	.dw	0,(XG$UART1_ReceiveData9$0$0+1)
      004151 01                    4267 	.db	1
      004152 00 00 40 2C           4268 	.dw	0,(Ldebug_loc_start+392)
      004156 00 00 05 34           4269 	.dw	0,1332
      00415A 06                    4270 	.uleb128	6
      00415B 02                    4271 	.db	2
      00415C 91                    4272 	.db	145
      00415D 7E                    4273 	.sleb128	-2
      00415E 74 65 6D 70           4274 	.ascii "temp"
      004162 00                    4275 	.db	0
      004163 00 00 05 34           4276 	.dw	0,1332
      004167 00                    4277 	.uleb128	0
      004168 03                    4278 	.uleb128	3
      004169 00 00 05 AB           4279 	.dw	0,1451
      00416D 55 41 52 54 31 5F 53  4280 	.ascii "UART1_SendData8"
             65 6E 64 44 61 74 61
             38
      00417C 00                    4281 	.db	0
      00417D 00 00 A1 87           4282 	.dw	0,(_UART1_SendData8)
      004181 00 00 A1 8E           4283 	.dw	0,(XG$UART1_SendData8$0$0+1)
      004185 01                    4284 	.db	1
      004186 00 00 40 18           4285 	.dw	0,(Ldebug_loc_start+372)
      00418A 04                    4286 	.uleb128	4
      00418B 02                    4287 	.db	2
      00418C 91                    4288 	.db	145
      00418D 02                    4289 	.sleb128	2
      00418E 44 61 74 61           4290 	.ascii "Data"
      004192 00                    4291 	.db	0
      004193 00 00 01 5D           4292 	.dw	0,349
      004197 00                    4293 	.uleb128	0
      004198 03                    4294 	.uleb128	3
      004199 00 00 05 DB           4295 	.dw	0,1499
      00419D 55 41 52 54 31 5F 53  4296 	.ascii "UART1_SendData9"
             65 6E 64 44 61 74 61
             39
      0041AC 00                    4297 	.db	0
      0041AD 00 00 A1 8E           4298 	.dw	0,(_UART1_SendData9)
      0041B1 00 00 A1 AF           4299 	.dw	0,(XG$UART1_SendData9$0$0+1)
      0041B5 01                    4300 	.db	1
      0041B6 00 00 3F EC           4301 	.dw	0,(Ldebug_loc_start+328)
      0041BA 04                    4302 	.uleb128	4
      0041BB 02                    4303 	.db	2
      0041BC 91                    4304 	.db	145
      0041BD 02                    4305 	.sleb128	2
      0041BE 44 61 74 61           4306 	.ascii "Data"
      0041C2 00                    4307 	.db	0
      0041C3 00 00 05 34           4308 	.dw	0,1332
      0041C7 00                    4309 	.uleb128	0
      0041C8 02                    4310 	.uleb128	2
      0041C9 55 41 52 54 31 5F 53  4311 	.ascii "UART1_SendBreak"
             65 6E 64 42 72 65 61
             6B
      0041D8 00                    4312 	.db	0
      0041D9 00 00 A1 AF           4313 	.dw	0,(_UART1_SendBreak)
      0041DD 00 00 A1 B8           4314 	.dw	0,(XG$UART1_SendBreak$0$0+1)
      0041E1 01                    4315 	.db	1
      0041E2 00 00 3F D8           4316 	.dw	0,(Ldebug_loc_start+308)
      0041E6 03                    4317 	.uleb128	3
      0041E7 00 00 06 33           4318 	.dw	0,1587
      0041EB 55 41 52 54 31 5F 53  4319 	.ascii "UART1_SetAddress"
             65 74 41 64 64 72 65
             73 73
      0041FB 00                    4320 	.db	0
      0041FC 00 00 A1 B8           4321 	.dw	0,(_UART1_SetAddress)
      004200 00 00 A1 C9           4322 	.dw	0,(XG$UART1_SetAddress$0$0+1)
      004204 01                    4323 	.db	1
      004205 00 00 3F C4           4324 	.dw	0,(Ldebug_loc_start+288)
      004209 04                    4325 	.uleb128	4
      00420A 02                    4326 	.db	2
      00420B 91                    4327 	.db	145
      00420C 02                    4328 	.sleb128	2
      00420D 55 41 52 54 31 5F 41  4329 	.ascii "UART1_Address"
             64 64 72 65 73 73
      00421A 00                    4330 	.db	0
      00421B 00 00 01 5D           4331 	.dw	0,349
      00421F 00                    4332 	.uleb128	0
      004220 03                    4333 	.uleb128	3
      004221 00 00 06 71           4334 	.dw	0,1649
      004225 55 41 52 54 31 5F 53  4335 	.ascii "UART1_SetGuardTime"
             65 74 47 75 61 72 64
             54 69 6D 65
      004237 00                    4336 	.db	0
      004238 00 00 A1 C9           4337 	.dw	0,(_UART1_SetGuardTime)
      00423C 00 00 A1 D0           4338 	.dw	0,(XG$UART1_SetGuardTime$0$0+1)
      004240 01                    4339 	.db	1
      004241 00 00 3F B0           4340 	.dw	0,(Ldebug_loc_start+268)
      004245 04                    4341 	.uleb128	4
      004246 02                    4342 	.db	2
      004247 91                    4343 	.db	145
      004248 02                    4344 	.sleb128	2
      004249 55 41 52 54 31 5F 47  4345 	.ascii "UART1_GuardTime"
             75 61 72 64 54 69 6D
             65
      004258 00                    4346 	.db	0
      004259 00 00 01 5D           4347 	.dw	0,349
      00425D 00                    4348 	.uleb128	0
      00425E 03                    4349 	.uleb128	3
      00425F 00 00 06 AF           4350 	.dw	0,1711
      004263 55 41 52 54 31 5F 53  4351 	.ascii "UART1_SetPrescaler"
             65 74 50 72 65 73 63
             61 6C 65 72
      004275 00                    4352 	.db	0
      004276 00 00 A1 D0           4353 	.dw	0,(_UART1_SetPrescaler)
      00427A 00 00 A1 D7           4354 	.dw	0,(XG$UART1_SetPrescaler$0$0+1)
      00427E 01                    4355 	.db	1
      00427F 00 00 3F 9C           4356 	.dw	0,(Ldebug_loc_start+248)
      004283 04                    4357 	.uleb128	4
      004284 02                    4358 	.db	2
      004285 91                    4359 	.db	145
      004286 02                    4360 	.sleb128	2
      004287 55 41 52 54 31 5F 50  4361 	.ascii "UART1_Prescaler"
             72 65 73 63 61 6C 65
             72
      004296 00                    4362 	.db	0
      004297 00 00 01 5D           4363 	.dw	0,349
      00429B 00                    4364 	.uleb128	0
      00429C 0A                    4365 	.uleb128	10
      00429D 00 00 07 4F           4366 	.dw	0,1871
      0042A1 55 41 52 54 31 5F 47  4367 	.ascii "UART1_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      0042B4 00                    4368 	.db	0
      0042B5 00 00 A1 D7           4369 	.dw	0,(_UART1_GetFlagStatus)
      0042B9 00 00 A2 37           4370 	.dw	0,(XG$UART1_GetFlagStatus$0$0+1)
      0042BD 01                    4371 	.db	1
      0042BE 00 00 3F 58           4372 	.dw	0,(Ldebug_loc_start+180)
      0042C2 00 00 01 5D           4373 	.dw	0,349
      0042C6 04                    4374 	.uleb128	4
      0042C7 02                    4375 	.db	2
      0042C8 91                    4376 	.db	145
      0042C9 02                    4377 	.sleb128	2
      0042CA 55 41 52 54 31 5F 46  4378 	.ascii "UART1_FLAG"
             4C 41 47
      0042D4 00                    4379 	.db	0
      0042D5 00 00 02 59           4380 	.dw	0,601
      0042D9 08                    4381 	.uleb128	8
      0042DA 00 00 07 08           4382 	.dw	0,1800
      0042DE 00 00 A1 EE           4383 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$329)
      0042E2 05                    4384 	.uleb128	5
      0042E3 00 00 A1 F9           4385 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$331)
      0042E7 00 00 A1 FB           4386 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$333)
      0042EB 05                    4387 	.uleb128	5
      0042EC 00 00 A1 FE           4388 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$334)
      0042F0 00 00 A1 FF           4389 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$336)
      0042F4 00                    4390 	.uleb128	0
      0042F5 08                    4391 	.uleb128	8
      0042F6 00 00 07 24           4392 	.dw	0,1828
      0042FA 00 00 A2 0F           4393 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$339)
      0042FE 05                    4394 	.uleb128	5
      0042FF 00 00 A2 1A           4395 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$341)
      004303 00 00 A2 1C           4396 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$343)
      004307 05                    4397 	.uleb128	5
      004308 00 00 A2 1F           4398 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$344)
      00430C 00 00 A2 20           4399 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$346)
      004310 00                    4400 	.uleb128	0
      004311 08                    4401 	.uleb128	8
      004312 00 00 07 40           4402 	.dw	0,1856
      004316 00 00 A2 23           4403 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$347)
      00431A 05                    4404 	.uleb128	5
      00431B 00 00 A2 2E           4405 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$349)
      00431F 00 00 A2 30           4406 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$351)
      004323 05                    4407 	.uleb128	5
      004324 00 00 A2 33           4408 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$352)
      004328 00 00 A2 34           4409 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$354)
      00432C 00                    4410 	.uleb128	0
      00432D 06                    4411 	.uleb128	6
      00432E 01                    4412 	.db	1
      00432F 50                    4413 	.db	80
      004330 73 74 61 74 75 73     4414 	.ascii "status"
      004336 00                    4415 	.db	0
      004337 00 00 01 5D           4416 	.dw	0,349
      00433B 00                    4417 	.uleb128	0
      00433C 03                    4418 	.uleb128	3
      00433D 00 00 07 97           4419 	.dw	0,1943
      004341 55 41 52 54 31 5F 43  4420 	.ascii "UART1_ClearFlag"
             6C 65 61 72 46 6C 61
             67
      004350 00                    4421 	.db	0
      004351 00 00 A2 37           4422 	.dw	0,(_UART1_ClearFlag)
      004355 00 00 A2 54           4423 	.dw	0,(XG$UART1_ClearFlag$0$0+1)
      004359 01                    4424 	.db	1
      00435A 00 00 3F 38           4425 	.dw	0,(Ldebug_loc_start+148)
      00435E 04                    4426 	.uleb128	4
      00435F 02                    4427 	.db	2
      004360 91                    4428 	.db	145
      004361 02                    4429 	.sleb128	2
      004362 55 41 52 54 31 5F 46  4430 	.ascii "UART1_FLAG"
             4C 41 47
      00436C 00                    4431 	.db	0
      00436D 00 00 02 59           4432 	.dw	0,601
      004371 05                    4433 	.uleb128	5
      004372 00 00 A2 44           4434 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$364)
      004376 00 00 A2 48           4435 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$366)
      00437A 05                    4436 	.uleb128	5
      00437B 00 00 A2 4B           4437 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$367)
      00437F 00 00 A2 53           4438 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$369)
      004383 00                    4439 	.uleb128	0
      004384 0A                    4440 	.uleb128	10
      004385 00 00 08 7E           4441 	.dw	0,2174
      004389 55 41 52 54 31 5F 47  4442 	.ascii "UART1_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      00439A 00                    4443 	.db	0
      00439B 00 00 A2 54           4444 	.dw	0,(_UART1_GetITStatus)
      00439F 00 00 A2 FD           4445 	.dw	0,(XG$UART1_GetITStatus$0$0+1)
      0043A3 01                    4446 	.db	1
      0043A4 00 00 3E C4           4447 	.dw	0,(Ldebug_loc_start+32)
      0043A8 00 00 01 5D           4448 	.dw	0,349
      0043AC 04                    4449 	.uleb128	4
      0043AD 02                    4450 	.db	2
      0043AE 91                    4451 	.db	145
      0043AF 02                    4452 	.sleb128	2
      0043B0 55 41 52 54 31 5F 49  4453 	.ascii "UART1_IT"
             54
      0043B8 00                    4454 	.db	0
      0043B9 00 00 02 59           4455 	.dw	0,601
      0043BD 08                    4456 	.uleb128	8
      0043BE 00 00 07 EC           4457 	.dw	0,2028
      0043C2 00 00 A2 8D           4458 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$385)
      0043C6 05                    4459 	.uleb128	5
      0043C7 00 00 A2 A5           4460 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$388)
      0043CB 00 00 A2 A7           4461 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$390)
      0043CF 05                    4462 	.uleb128	5
      0043D0 00 00 A2 AA           4463 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$391)
      0043D4 00 00 A2 AB           4464 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$393)
      0043D8 00                    4465 	.uleb128	0
      0043D9 08                    4466 	.uleb128	8
      0043DA 00 00 08 08           4467 	.dw	0,2056
      0043DE 00 00 A2 BB           4468 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$396)
      0043E2 05                    4469 	.uleb128	5
      0043E3 00 00 A2 D3           4470 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$399)
      0043E7 00 00 A2 D5           4471 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$401)
      0043EB 05                    4472 	.uleb128	5
      0043EC 00 00 A2 D8           4473 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$402)
      0043F0 00 00 A2 D9           4474 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$404)
      0043F4 00                    4475 	.uleb128	0
      0043F5 08                    4476 	.uleb128	8
      0043F6 00 00 08 24           4477 	.dw	0,2084
      0043FA 00 00 A2 DC           4478 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$405)
      0043FE 05                    4479 	.uleb128	5
      0043FF 00 00 A2 F4           4480 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$408)
      004403 00 00 A2 F6           4481 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$410)
      004407 05                    4482 	.uleb128	5
      004408 00 00 A2 F9           4483 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$411)
      00440C 00 00 A2 FA           4484 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$413)
      004410 00                    4485 	.uleb128	0
      004411 06                    4486 	.uleb128	6
      004412 01                    4487 	.db	1
      004413 50                    4488 	.db	80
      004414 70 65 6E 64 69 6E 67  4489 	.ascii "pendingbitstatus"
             62 69 74 73 74 61 74
             75 73
      004424 00                    4490 	.db	0
      004425 00 00 01 5D           4491 	.dw	0,349
      004429 06                    4492 	.uleb128	6
      00442A 02                    4493 	.db	2
      00442B 91                    4494 	.db	145
      00442C 7C                    4495 	.sleb128	-4
      00442D 69 74 70 6F 73        4496 	.ascii "itpos"
      004432 00                    4497 	.db	0
      004433 00 00 01 5D           4498 	.dw	0,349
      004437 06                    4499 	.uleb128	6
      004438 01                    4500 	.db	1
      004439 50                    4501 	.db	80
      00443A 69 74 6D 61 73 6B 31  4502 	.ascii "itmask1"
      004441 00                    4503 	.db	0
      004442 00 00 01 5D           4504 	.dw	0,349
      004446 06                    4505 	.uleb128	6
      004447 02                    4506 	.db	2
      004448 91                    4507 	.db	145
      004449 7D                    4508 	.sleb128	-3
      00444A 69 74 6D 61 73 6B 32  4509 	.ascii "itmask2"
      004451 00                    4510 	.db	0
      004452 00 00 01 5D           4511 	.dw	0,349
      004456 06                    4512 	.uleb128	6
      004457 01                    4513 	.db	1
      004458 51                    4514 	.db	81
      004459 65 6E 61 62 6C 65 73  4515 	.ascii "enablestatus"
             74 61 74 75 73
      004465 00                    4516 	.db	0
      004466 00 00 01 5D           4517 	.dw	0,349
      00446A 00                    4518 	.uleb128	0
      00446B 0B                    4519 	.uleb128	11
      00446C 55 41 52 54 31 5F 43  4520 	.ascii "UART1_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      004483 00                    4521 	.db	0
      004484 00 00 A2 FD           4522 	.dw	0,(_UART1_ClearITPendingBit)
      004488 00 00 A3 1A           4523 	.dw	0,(XG$UART1_ClearITPendingBit$0$0+1)
      00448C 01                    4524 	.db	1
      00448D 00 00 3E A4           4525 	.dw	0,(Ldebug_loc_start)
      004491 04                    4526 	.uleb128	4
      004492 02                    4527 	.db	2
      004493 91                    4528 	.db	145
      004494 02                    4529 	.sleb128	2
      004495 55 41 52 54 31 5F 49  4530 	.ascii "UART1_IT"
             54
      00449D 00                    4531 	.db	0
      00449E 00 00 02 59           4532 	.dw	0,601
      0044A2 05                    4533 	.uleb128	5
      0044A3 00 00 A3 0A           4534 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$423)
      0044A7 00 00 A3 0E           4535 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$425)
      0044AB 05                    4536 	.uleb128	5
      0044AC 00 00 A3 11           4537 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$426)
      0044B0 00 00 A3 19           4538 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$428)
      0044B4 00                    4539 	.uleb128	0
      0044B5 00                    4540 	.uleb128	0
      0044B6 00                    4541 	.uleb128	0
      0044B7 00                    4542 	.uleb128	0
      0044B8                       4543 Ldebug_info_end:
                                   4544 
                                   4545 	.area .debug_pubnames (NOLOAD)
      000B02 00 00 02 31           4546 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000B06                       4547 Ldebug_pubnames_start:
      000B06 00 02                 4548 	.dw	2
      000B08 00 00 3B ED           4549 	.dw	0,(Ldebug_info_start-4)
      000B0C 00 00 08 CB           4550 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000B10 00 00 00 44           4551 	.dw	0,68
      000B14 55 41 52 54 31 5F 44  4552 	.ascii "UART1_DeInit"
             65 49 6E 69 74
      000B20 00                    4553 	.db	0
      000B21 00 00 00 5F           4554 	.dw	0,95
      000B25 55 41 52 54 31 5F 49  4555 	.ascii "UART1_Init"
             6E 69 74
      000B2F 00                    4556 	.db	0
      000B30 00 00 01 6E           4557 	.dw	0,366
      000B34 55 41 52 54 31 5F 43  4558 	.ascii "UART1_Cmd"
             6D 64
      000B3D 00                    4559 	.db	0
      000B3E 00 00 01 AE           4560 	.dw	0,430
      000B42 55 41 52 54 31 5F 49  4561 	.ascii "UART1_ITConfig"
             54 43 6F 6E 66 69 67
      000B50 00                    4562 	.db	0
      000B51 00 00 02 69           4563 	.dw	0,617
      000B55 55 41 52 54 31 5F 48  4564 	.ascii "UART1_HalfDuplexCmd"
             61 6C 66 44 75 70 6C
             65 78 43 6D 64
      000B68 00                    4565 	.db	0
      000B69 00 00 02 B3           4566 	.dw	0,691
      000B6D 55 41 52 54 31 5F 49  4567 	.ascii "UART1_IrDAConfig"
             72 44 41 43 6F 6E 66
             69 67
      000B7D 00                    4568 	.db	0
      000B7E 00 00 03 00           4569 	.dw	0,768
      000B82 55 41 52 54 31 5F 49  4570 	.ascii "UART1_IrDACmd"
             72 44 41 43 6D 64
      000B8F 00                    4571 	.db	0
      000B90 00 00 03 44           4572 	.dw	0,836
      000B94 55 41 52 54 31 5F 4C  4573 	.ascii "UART1_LINBreakDetectionConfig"
             49 4E 42 72 65 61 6B
             44 65 74 65 63 74 69
             6F 6E 43 6F 6E 66 69
             67
      000BB1 00                    4574 	.db	0
      000BB2 00 00 03 AD           4575 	.dw	0,941
      000BB6 55 41 52 54 31 5F 4C  4576 	.ascii "UART1_LINCmd"
             49 4E 43 6D 64
      000BC2 00                    4577 	.db	0
      000BC3 00 00 03 F0           4578 	.dw	0,1008
      000BC7 55 41 52 54 31 5F 53  4579 	.ascii "UART1_SmartCardCmd"
             6D 61 72 74 43 61 72
             64 43 6D 64
      000BD9 00                    4580 	.db	0
      000BDA 00 00 04 39           4581 	.dw	0,1081
      000BDE 55 41 52 54 31 5F 53  4582 	.ascii "UART1_SmartCardNACKCmd"
             6D 61 72 74 43 61 72
             64 4E 41 43 4B 43 6D
             64
      000BF4 00                    4583 	.db	0
      000BF5 00 00 04 86           4584 	.dw	0,1158
      000BF9 55 41 52 54 31 5F 57  4585 	.ascii "UART1_WakeUpConfig"
             61 6B 65 55 70 43 6F
             6E 66 69 67
      000C0B 00                    4586 	.db	0
      000C0C 00 00 04 C1           4587 	.dw	0,1217
      000C10 55 41 52 54 31 5F 52  4588 	.ascii "UART1_ReceiverWakeUpCmd"
             65 63 65 69 76 65 72
             57 61 6B 65 55 70 43
             6D 64
      000C27 00                    4589 	.db	0
      000C28 00 00 05 0F           4590 	.dw	0,1295
      000C2C 55 41 52 54 31 5F 52  4591 	.ascii "UART1_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      000C3E 00                    4592 	.db	0
      000C3F 00 00 05 44           4593 	.dw	0,1348
      000C43 55 41 52 54 31 5F 52  4594 	.ascii "UART1_ReceiveData9"
             65 63 65 69 76 65 44
             61 74 61 39
      000C55 00                    4595 	.db	0
      000C56 00 00 05 7B           4596 	.dw	0,1403
      000C5A 55 41 52 54 31 5F 53  4597 	.ascii "UART1_SendData8"
             65 6E 64 44 61 74 61
             38
      000C69 00                    4598 	.db	0
      000C6A 00 00 05 AB           4599 	.dw	0,1451
      000C6E 55 41 52 54 31 5F 53  4600 	.ascii "UART1_SendData9"
             65 6E 64 44 61 74 61
             39
      000C7D 00                    4601 	.db	0
      000C7E 00 00 05 DB           4602 	.dw	0,1499
      000C82 55 41 52 54 31 5F 53  4603 	.ascii "UART1_SendBreak"
             65 6E 64 42 72 65 61
             6B
      000C91 00                    4604 	.db	0
      000C92 00 00 05 F9           4605 	.dw	0,1529
      000C96 55 41 52 54 31 5F 53  4606 	.ascii "UART1_SetAddress"
             65 74 41 64 64 72 65
             73 73
      000CA6 00                    4607 	.db	0
      000CA7 00 00 06 33           4608 	.dw	0,1587
      000CAB 55 41 52 54 31 5F 53  4609 	.ascii "UART1_SetGuardTime"
             65 74 47 75 61 72 64
             54 69 6D 65
      000CBD 00                    4610 	.db	0
      000CBE 00 00 06 71           4611 	.dw	0,1649
      000CC2 55 41 52 54 31 5F 53  4612 	.ascii "UART1_SetPrescaler"
             65 74 50 72 65 73 63
             61 6C 65 72
      000CD4 00                    4613 	.db	0
      000CD5 00 00 06 AF           4614 	.dw	0,1711
      000CD9 55 41 52 54 31 5F 47  4615 	.ascii "UART1_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      000CEC 00                    4616 	.db	0
      000CED 00 00 07 4F           4617 	.dw	0,1871
      000CF1 55 41 52 54 31 5F 43  4618 	.ascii "UART1_ClearFlag"
             6C 65 61 72 46 6C 61
             67
      000D00 00                    4619 	.db	0
      000D01 00 00 07 97           4620 	.dw	0,1943
      000D05 55 41 52 54 31 5F 47  4621 	.ascii "UART1_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      000D16 00                    4622 	.db	0
      000D17 00 00 08 7E           4623 	.dw	0,2174
      000D1B 55 41 52 54 31 5F 43  4624 	.ascii "UART1_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      000D32 00                    4625 	.db	0
      000D33 00 00 00 00           4626 	.dw	0,0
      000D37                       4627 Ldebug_pubnames_end:
                                   4628 
                                   4629 	.area .debug_frame (NOLOAD)
      00338D 00 00                 4630 	.dw	0
      00338F 00 0E                 4631 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      003391                       4632 Ldebug_CIE0_start:
      003391 FF FF                 4633 	.dw	0xffff
      003393 FF FF                 4634 	.dw	0xffff
      003395 01                    4635 	.db	1
      003396 00                    4636 	.db	0
      003397 01                    4637 	.uleb128	1
      003398 7F                    4638 	.sleb128	-1
      003399 09                    4639 	.db	9
      00339A 0C                    4640 	.db	12
      00339B 08                    4641 	.uleb128	8
      00339C 02                    4642 	.uleb128	2
      00339D 89                    4643 	.db	137
      00339E 01                    4644 	.uleb128	1
      00339F                       4645 Ldebug_CIE0_end:
      00339F 00 00 00 1A           4646 	.dw	0,26
      0033A3 00 00 33 8D           4647 	.dw	0,(Ldebug_CIE0_start-4)
      0033A7 00 00 A2 FD           4648 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)	;initial loc
      0033AB 00 00 00 1D           4649 	.dw	0,Sstm8s_uart1$UART1_ClearITPendingBit$431-Sstm8s_uart1$UART1_ClearITPendingBit$420
      0033AF 01                    4650 	.db	1
      0033B0 00 00 A2 FD           4651 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)
      0033B4 0E                    4652 	.db	14
      0033B5 02                    4653 	.uleb128	2
      0033B6 01                    4654 	.db	1
      0033B7 00 00 A3 0A           4655 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
      0033BB 0E                    4656 	.db	14
      0033BC 02                    4657 	.uleb128	2
                                   4658 
                                   4659 	.area .debug_frame (NOLOAD)
      0033BD 00 00                 4660 	.dw	0
      0033BF 00 0E                 4661 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0033C1                       4662 Ldebug_CIE1_start:
      0033C1 FF FF                 4663 	.dw	0xffff
      0033C3 FF FF                 4664 	.dw	0xffff
      0033C5 01                    4665 	.db	1
      0033C6 00                    4666 	.db	0
      0033C7 01                    4667 	.uleb128	1
      0033C8 7F                    4668 	.sleb128	-1
      0033C9 09                    4669 	.db	9
      0033CA 0C                    4670 	.db	12
      0033CB 08                    4671 	.uleb128	8
      0033CC 02                    4672 	.uleb128	2
      0033CD 89                    4673 	.db	137
      0033CE 01                    4674 	.uleb128	1
      0033CF                       4675 Ldebug_CIE1_end:
      0033CF 00 00 00 4B           4676 	.dw	0,75
      0033D3 00 00 33 BD           4677 	.dw	0,(Ldebug_CIE1_start-4)
      0033D7 00 00 A2 54           4678 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)	;initial loc
      0033DB 00 00 00 A9           4679 	.dw	0,Sstm8s_uart1$UART1_GetITStatus$418-Sstm8s_uart1$UART1_GetITStatus$374
      0033DF 01                    4680 	.db	1
      0033E0 00 00 A2 54           4681 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)
      0033E4 0E                    4682 	.db	14
      0033E5 02                    4683 	.uleb128	2
      0033E6 01                    4684 	.db	1
      0033E7 00 00 A2 56           4685 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
      0033EB 0E                    4686 	.db	14
      0033EC 06                    4687 	.uleb128	6
      0033ED 01                    4688 	.db	1
      0033EE 00 00 A2 5D           4689 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
      0033F2 0E                    4690 	.db	14
      0033F3 07                    4691 	.uleb128	7
      0033F4 01                    4692 	.db	1
      0033F5 00 00 A2 62           4693 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
      0033F9 0E                    4694 	.db	14
      0033FA 06                    4695 	.uleb128	6
      0033FB 01                    4696 	.db	1
      0033FC 00 00 A2 6F           4697 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
      003400 0E                    4698 	.db	14
      003401 07                    4699 	.uleb128	7
      003402 01                    4700 	.db	1
      003403 00 00 A2 74           4701 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
      003407 0E                    4702 	.db	14
      003408 06                    4703 	.uleb128	6
      003409 01                    4704 	.db	1
      00340A 00 00 A2 8D           4705 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
      00340E 0E                    4706 	.db	14
      00340F 06                    4707 	.uleb128	6
      003410 01                    4708 	.db	1
      003411 00 00 A2 BB           4709 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
      003415 0E                    4710 	.db	14
      003416 06                    4711 	.uleb128	6
      003417 01                    4712 	.db	1
      003418 00 00 A2 FC           4713 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
      00341C 0E                    4714 	.db	14
      00341D 02                    4715 	.uleb128	2
                                   4716 
                                   4717 	.area .debug_frame (NOLOAD)
      00341E 00 00                 4718 	.dw	0
      003420 00 0E                 4719 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      003422                       4720 Ldebug_CIE2_start:
      003422 FF FF                 4721 	.dw	0xffff
      003424 FF FF                 4722 	.dw	0xffff
      003426 01                    4723 	.db	1
      003427 00                    4724 	.db	0
      003428 01                    4725 	.uleb128	1
      003429 7F                    4726 	.sleb128	-1
      00342A 09                    4727 	.db	9
      00342B 0C                    4728 	.db	12
      00342C 08                    4729 	.uleb128	8
      00342D 02                    4730 	.uleb128	2
      00342E 89                    4731 	.db	137
      00342F 01                    4732 	.uleb128	1
      003430                       4733 Ldebug_CIE2_end:
      003430 00 00 00 1A           4734 	.dw	0,26
      003434 00 00 34 1E           4735 	.dw	0,(Ldebug_CIE2_start-4)
      003438 00 00 A2 37           4736 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)	;initial loc
      00343C 00 00 00 1D           4737 	.dw	0,Sstm8s_uart1$UART1_ClearFlag$372-Sstm8s_uart1$UART1_ClearFlag$361
      003440 01                    4738 	.db	1
      003441 00 00 A2 37           4739 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)
      003445 0E                    4740 	.db	14
      003446 02                    4741 	.uleb128	2
      003447 01                    4742 	.db	1
      003448 00 00 A2 44           4743 	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
      00344C 0E                    4744 	.db	14
      00344D 02                    4745 	.uleb128	2
                                   4746 
                                   4747 	.area .debug_frame (NOLOAD)
      00344E 00 00                 4748 	.dw	0
      003450 00 0E                 4749 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      003452                       4750 Ldebug_CIE3_start:
      003452 FF FF                 4751 	.dw	0xffff
      003454 FF FF                 4752 	.dw	0xffff
      003456 01                    4753 	.db	1
      003457 00                    4754 	.db	0
      003458 01                    4755 	.uleb128	1
      003459 7F                    4756 	.sleb128	-1
      00345A 09                    4757 	.db	9
      00345B 0C                    4758 	.db	12
      00345C 08                    4759 	.uleb128	8
      00345D 02                    4760 	.uleb128	2
      00345E 89                    4761 	.db	137
      00345F 01                    4762 	.uleb128	1
      003460                       4763 Ldebug_CIE3_end:
      003460 00 00 00 2F           4764 	.dw	0,47
      003464 00 00 34 4E           4765 	.dw	0,(Ldebug_CIE3_start-4)
      003468 00 00 A1 D7           4766 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)	;initial loc
      00346C 00 00 00 60           4767 	.dw	0,Sstm8s_uart1$UART1_GetFlagStatus$359-Sstm8s_uart1$UART1_GetFlagStatus$323
      003470 01                    4768 	.db	1
      003471 00 00 A1 D7           4769 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)
      003475 0E                    4770 	.db	14
      003476 02                    4771 	.uleb128	2
      003477 01                    4772 	.db	1
      003478 00 00 A1 D9           4773 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
      00347C 0E                    4774 	.db	14
      00347D 05                    4775 	.uleb128	5
      00347E 01                    4776 	.db	1
      00347F 00 00 A1 EE           4777 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
      003483 0E                    4778 	.db	14
      003484 05                    4779 	.uleb128	5
      003485 01                    4780 	.db	1
      003486 00 00 A2 0F           4781 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
      00348A 0E                    4782 	.db	14
      00348B 05                    4783 	.uleb128	5
      00348C 01                    4784 	.db	1
      00348D 00 00 A2 36           4785 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
      003491 0E                    4786 	.db	14
      003492 02                    4787 	.uleb128	2
                                   4788 
                                   4789 	.area .debug_frame (NOLOAD)
      003493 00 00                 4790 	.dw	0
      003495 00 0E                 4791 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      003497                       4792 Ldebug_CIE4_start:
      003497 FF FF                 4793 	.dw	0xffff
      003499 FF FF                 4794 	.dw	0xffff
      00349B 01                    4795 	.db	1
      00349C 00                    4796 	.db	0
      00349D 01                    4797 	.uleb128	1
      00349E 7F                    4798 	.sleb128	-1
      00349F 09                    4799 	.db	9
      0034A0 0C                    4800 	.db	12
      0034A1 08                    4801 	.uleb128	8
      0034A2 02                    4802 	.uleb128	2
      0034A3 89                    4803 	.db	137
      0034A4 01                    4804 	.uleb128	1
      0034A5                       4805 Ldebug_CIE4_end:
      0034A5 00 00 00 13           4806 	.dw	0,19
      0034A9 00 00 34 93           4807 	.dw	0,(Ldebug_CIE4_start-4)
      0034AD 00 00 A1 D0           4808 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)	;initial loc
      0034B1 00 00 00 07           4809 	.dw	0,Sstm8s_uart1$UART1_SetPrescaler$321-Sstm8s_uart1$UART1_SetPrescaler$317
      0034B5 01                    4810 	.db	1
      0034B6 00 00 A1 D0           4811 	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)
      0034BA 0E                    4812 	.db	14
      0034BB 02                    4813 	.uleb128	2
                                   4814 
                                   4815 	.area .debug_frame (NOLOAD)
      0034BC 00 00                 4816 	.dw	0
      0034BE 00 0E                 4817 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0034C0                       4818 Ldebug_CIE5_start:
      0034C0 FF FF                 4819 	.dw	0xffff
      0034C2 FF FF                 4820 	.dw	0xffff
      0034C4 01                    4821 	.db	1
      0034C5 00                    4822 	.db	0
      0034C6 01                    4823 	.uleb128	1
      0034C7 7F                    4824 	.sleb128	-1
      0034C8 09                    4825 	.db	9
      0034C9 0C                    4826 	.db	12
      0034CA 08                    4827 	.uleb128	8
      0034CB 02                    4828 	.uleb128	2
      0034CC 89                    4829 	.db	137
      0034CD 01                    4830 	.uleb128	1
      0034CE                       4831 Ldebug_CIE5_end:
      0034CE 00 00 00 13           4832 	.dw	0,19
      0034D2 00 00 34 BC           4833 	.dw	0,(Ldebug_CIE5_start-4)
      0034D6 00 00 A1 C9           4834 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)	;initial loc
      0034DA 00 00 00 07           4835 	.dw	0,Sstm8s_uart1$UART1_SetGuardTime$315-Sstm8s_uart1$UART1_SetGuardTime$311
      0034DE 01                    4836 	.db	1
      0034DF 00 00 A1 C9           4837 	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)
      0034E3 0E                    4838 	.db	14
      0034E4 02                    4839 	.uleb128	2
                                   4840 
                                   4841 	.area .debug_frame (NOLOAD)
      0034E5 00 00                 4842 	.dw	0
      0034E7 00 0E                 4843 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      0034E9                       4844 Ldebug_CIE6_start:
      0034E9 FF FF                 4845 	.dw	0xffff
      0034EB FF FF                 4846 	.dw	0xffff
      0034ED 01                    4847 	.db	1
      0034EE 00                    4848 	.db	0
      0034EF 01                    4849 	.uleb128	1
      0034F0 7F                    4850 	.sleb128	-1
      0034F1 09                    4851 	.db	9
      0034F2 0C                    4852 	.db	12
      0034F3 08                    4853 	.uleb128	8
      0034F4 02                    4854 	.uleb128	2
      0034F5 89                    4855 	.db	137
      0034F6 01                    4856 	.uleb128	1
      0034F7                       4857 Ldebug_CIE6_end:
      0034F7 00 00 00 13           4858 	.dw	0,19
      0034FB 00 00 34 E5           4859 	.dw	0,(Ldebug_CIE6_start-4)
      0034FF 00 00 A1 B8           4860 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)	;initial loc
      003503 00 00 00 11           4861 	.dw	0,Sstm8s_uart1$UART1_SetAddress$309-Sstm8s_uart1$UART1_SetAddress$304
      003507 01                    4862 	.db	1
      003508 00 00 A1 B8           4863 	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)
      00350C 0E                    4864 	.db	14
      00350D 02                    4865 	.uleb128	2
                                   4866 
                                   4867 	.area .debug_frame (NOLOAD)
      00350E 00 00                 4868 	.dw	0
      003510 00 0E                 4869 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      003512                       4870 Ldebug_CIE7_start:
      003512 FF FF                 4871 	.dw	0xffff
      003514 FF FF                 4872 	.dw	0xffff
      003516 01                    4873 	.db	1
      003517 00                    4874 	.db	0
      003518 01                    4875 	.uleb128	1
      003519 7F                    4876 	.sleb128	-1
      00351A 09                    4877 	.db	9
      00351B 0C                    4878 	.db	12
      00351C 08                    4879 	.uleb128	8
      00351D 02                    4880 	.uleb128	2
      00351E 89                    4881 	.db	137
      00351F 01                    4882 	.uleb128	1
      003520                       4883 Ldebug_CIE7_end:
      003520 00 00 00 13           4884 	.dw	0,19
      003524 00 00 35 0E           4885 	.dw	0,(Ldebug_CIE7_start-4)
      003528 00 00 A1 AF           4886 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)	;initial loc
      00352C 00 00 00 09           4887 	.dw	0,Sstm8s_uart1$UART1_SendBreak$302-Sstm8s_uart1$UART1_SendBreak$298
      003530 01                    4888 	.db	1
      003531 00 00 A1 AF           4889 	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)
      003535 0E                    4890 	.db	14
      003536 02                    4891 	.uleb128	2
                                   4892 
                                   4893 	.area .debug_frame (NOLOAD)
      003537 00 00                 4894 	.dw	0
      003539 00 0E                 4895 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      00353B                       4896 Ldebug_CIE8_start:
      00353B FF FF                 4897 	.dw	0xffff
      00353D FF FF                 4898 	.dw	0xffff
      00353F 01                    4899 	.db	1
      003540 00                    4900 	.db	0
      003541 01                    4901 	.uleb128	1
      003542 7F                    4902 	.sleb128	-1
      003543 09                    4903 	.db	9
      003544 0C                    4904 	.db	12
      003545 08                    4905 	.uleb128	8
      003546 02                    4906 	.uleb128	2
      003547 89                    4907 	.db	137
      003548 01                    4908 	.uleb128	1
      003549                       4909 Ldebug_CIE8_end:
      003549 00 00 00 21           4910 	.dw	0,33
      00354D 00 00 35 37           4911 	.dw	0,(Ldebug_CIE8_start-4)
      003551 00 00 A1 8E           4912 	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)	;initial loc
      003555 00 00 00 21           4913 	.dw	0,Sstm8s_uart1$UART1_SendData9$296-Sstm8s_uart1$UART1_SendData9$288
      003559 01                    4914 	.db	1
      00355A 00 00 A1 8E           4915 	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)
      00355E 0E                    4916 	.db	14
      00355F 02                    4917 	.uleb128	2
      003560 01                    4918 	.db	1
      003561 00 00 A1 8F           4919 	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
      003565 0E                    4920 	.db	14
      003566 03                    4921 	.uleb128	3
      003567 01                    4922 	.db	1
      003568 00 00 A1 AE           4923 	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
      00356C 0E                    4924 	.db	14
      00356D 02                    4925 	.uleb128	2
                                   4926 
                                   4927 	.area .debug_frame (NOLOAD)
      00356E 00 00                 4928 	.dw	0
      003570 00 0E                 4929 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      003572                       4930 Ldebug_CIE9_start:
      003572 FF FF                 4931 	.dw	0xffff
      003574 FF FF                 4932 	.dw	0xffff
      003576 01                    4933 	.db	1
      003577 00                    4934 	.db	0
      003578 01                    4935 	.uleb128	1
      003579 7F                    4936 	.sleb128	-1
      00357A 09                    4937 	.db	9
      00357B 0C                    4938 	.db	12
      00357C 08                    4939 	.uleb128	8
      00357D 02                    4940 	.uleb128	2
      00357E 89                    4941 	.db	137
      00357F 01                    4942 	.uleb128	1
      003580                       4943 Ldebug_CIE9_end:
      003580 00 00 00 13           4944 	.dw	0,19
      003584 00 00 35 6E           4945 	.dw	0,(Ldebug_CIE9_start-4)
      003588 00 00 A1 87           4946 	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)	;initial loc
      00358C 00 00 00 07           4947 	.dw	0,Sstm8s_uart1$UART1_SendData8$286-Sstm8s_uart1$UART1_SendData8$282
      003590 01                    4948 	.db	1
      003591 00 00 A1 87           4949 	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)
      003595 0E                    4950 	.db	14
      003596 02                    4951 	.uleb128	2
                                   4952 
                                   4953 	.area .debug_frame (NOLOAD)
      003597 00 00                 4954 	.dw	0
      003599 00 0E                 4955 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      00359B                       4956 Ldebug_CIE10_start:
      00359B FF FF                 4957 	.dw	0xffff
      00359D FF FF                 4958 	.dw	0xffff
      00359F 01                    4959 	.db	1
      0035A0 00                    4960 	.db	0
      0035A1 01                    4961 	.uleb128	1
      0035A2 7F                    4962 	.sleb128	-1
      0035A3 09                    4963 	.db	9
      0035A4 0C                    4964 	.db	12
      0035A5 08                    4965 	.uleb128	8
      0035A6 02                    4966 	.uleb128	2
      0035A7 89                    4967 	.db	137
      0035A8 01                    4968 	.uleb128	1
      0035A9                       4969 Ldebug_CIE10_end:
      0035A9 00 00 00 21           4970 	.dw	0,33
      0035AD 00 00 35 97           4971 	.dw	0,(Ldebug_CIE10_start-4)
      0035B1 00 00 A1 6A           4972 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)	;initial loc
      0035B5 00 00 00 1D           4973 	.dw	0,Sstm8s_uart1$UART1_ReceiveData9$280-Sstm8s_uart1$UART1_ReceiveData9$273
      0035B9 01                    4974 	.db	1
      0035BA 00 00 A1 6A           4975 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)
      0035BE 0E                    4976 	.db	14
      0035BF 02                    4977 	.uleb128	2
      0035C0 01                    4978 	.db	1
      0035C1 00 00 A1 6B           4979 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
      0035C5 0E                    4980 	.db	14
      0035C6 04                    4981 	.uleb128	4
      0035C7 01                    4982 	.db	1
      0035C8 00 00 A1 86           4983 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
      0035CC 0E                    4984 	.db	14
      0035CD 02                    4985 	.uleb128	2
                                   4986 
                                   4987 	.area .debug_frame (NOLOAD)
      0035CE 00 00                 4988 	.dw	0
      0035D0 00 0E                 4989 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      0035D2                       4990 Ldebug_CIE11_start:
      0035D2 FF FF                 4991 	.dw	0xffff
      0035D4 FF FF                 4992 	.dw	0xffff
      0035D6 01                    4993 	.db	1
      0035D7 00                    4994 	.db	0
      0035D8 01                    4995 	.uleb128	1
      0035D9 7F                    4996 	.sleb128	-1
      0035DA 09                    4997 	.db	9
      0035DB 0C                    4998 	.db	12
      0035DC 08                    4999 	.uleb128	8
      0035DD 02                    5000 	.uleb128	2
      0035DE 89                    5001 	.db	137
      0035DF 01                    5002 	.uleb128	1
      0035E0                       5003 Ldebug_CIE11_end:
      0035E0 00 00 00 13           5004 	.dw	0,19
      0035E4 00 00 35 CE           5005 	.dw	0,(Ldebug_CIE11_start-4)
      0035E8 00 00 A1 66           5006 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)	;initial loc
      0035EC 00 00 00 04           5007 	.dw	0,Sstm8s_uart1$UART1_ReceiveData8$271-Sstm8s_uart1$UART1_ReceiveData8$267
      0035F0 01                    5008 	.db	1
      0035F1 00 00 A1 66           5009 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)
      0035F5 0E                    5010 	.db	14
      0035F6 02                    5011 	.uleb128	2
                                   5012 
                                   5013 	.area .debug_frame (NOLOAD)
      0035F7 00 00                 5014 	.dw	0
      0035F9 00 0E                 5015 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      0035FB                       5016 Ldebug_CIE12_start:
      0035FB FF FF                 5017 	.dw	0xffff
      0035FD FF FF                 5018 	.dw	0xffff
      0035FF 01                    5019 	.db	1
      003600 00                    5020 	.db	0
      003601 01                    5021 	.uleb128	1
      003602 7F                    5022 	.sleb128	-1
      003603 09                    5023 	.db	9
      003604 0C                    5024 	.db	12
      003605 08                    5025 	.uleb128	8
      003606 02                    5026 	.uleb128	2
      003607 89                    5027 	.db	137
      003608 01                    5028 	.uleb128	1
      003609                       5029 Ldebug_CIE12_end:
      003609 00 00 00 13           5030 	.dw	0,19
      00360D 00 00 35 F7           5031 	.dw	0,(Ldebug_CIE12_start-4)
      003611 00 00 A1 4E           5032 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)	;initial loc
      003615 00 00 00 18           5033 	.dw	0,Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254
      003619 01                    5034 	.db	1
      00361A 00 00 A1 4E           5035 	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)
      00361E 0E                    5036 	.db	14
      00361F 02                    5037 	.uleb128	2
                                   5038 
                                   5039 	.area .debug_frame (NOLOAD)
      003620 00 00                 5040 	.dw	0
      003622 00 0E                 5041 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      003624                       5042 Ldebug_CIE13_start:
      003624 FF FF                 5043 	.dw	0xffff
      003626 FF FF                 5044 	.dw	0xffff
      003628 01                    5045 	.db	1
      003629 00                    5046 	.db	0
      00362A 01                    5047 	.uleb128	1
      00362B 7F                    5048 	.sleb128	-1
      00362C 09                    5049 	.db	9
      00362D 0C                    5050 	.db	12
      00362E 08                    5051 	.uleb128	8
      00362F 02                    5052 	.uleb128	2
      003630 89                    5053 	.db	137
      003631 01                    5054 	.uleb128	1
      003632                       5055 Ldebug_CIE13_end:
      003632 00 00 00 13           5056 	.dw	0,19
      003636 00 00 36 20           5057 	.dw	0,(Ldebug_CIE13_start-4)
      00363A 00 00 A1 3D           5058 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)	;initial loc
      00363E 00 00 00 11           5059 	.dw	0,Sstm8s_uart1$UART1_WakeUpConfig$252-Sstm8s_uart1$UART1_WakeUpConfig$247
      003642 01                    5060 	.db	1
      003643 00 00 A1 3D           5061 	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)
      003647 0E                    5062 	.db	14
      003648 02                    5063 	.uleb128	2
                                   5064 
                                   5065 	.area .debug_frame (NOLOAD)
      003649 00 00                 5066 	.dw	0
      00364B 00 0E                 5067 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      00364D                       5068 Ldebug_CIE14_start:
      00364D FF FF                 5069 	.dw	0xffff
      00364F FF FF                 5070 	.dw	0xffff
      003651 01                    5071 	.db	1
      003652 00                    5072 	.db	0
      003653 01                    5073 	.uleb128	1
      003654 7F                    5074 	.sleb128	-1
      003655 09                    5075 	.db	9
      003656 0C                    5076 	.db	12
      003657 08                    5077 	.uleb128	8
      003658 02                    5078 	.uleb128	2
      003659 89                    5079 	.db	137
      00365A 01                    5080 	.uleb128	1
      00365B                       5081 Ldebug_CIE14_end:
      00365B 00 00 00 13           5082 	.dw	0,19
      00365F 00 00 36 49           5083 	.dw	0,(Ldebug_CIE14_start-4)
      003663 00 00 A1 25           5084 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)	;initial loc
      003667 00 00 00 18           5085 	.dw	0,Sstm8s_uart1$UART1_SmartCardNACKCmd$245-Sstm8s_uart1$UART1_SmartCardNACKCmd$234
      00366B 01                    5086 	.db	1
      00366C 00 00 A1 25           5087 	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)
      003670 0E                    5088 	.db	14
      003671 02                    5089 	.uleb128	2
                                   5090 
                                   5091 	.area .debug_frame (NOLOAD)
      003672 00 00                 5092 	.dw	0
      003674 00 0E                 5093 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      003676                       5094 Ldebug_CIE15_start:
      003676 FF FF                 5095 	.dw	0xffff
      003678 FF FF                 5096 	.dw	0xffff
      00367A 01                    5097 	.db	1
      00367B 00                    5098 	.db	0
      00367C 01                    5099 	.uleb128	1
      00367D 7F                    5100 	.sleb128	-1
      00367E 09                    5101 	.db	9
      00367F 0C                    5102 	.db	12
      003680 08                    5103 	.uleb128	8
      003681 02                    5104 	.uleb128	2
      003682 89                    5105 	.db	137
      003683 01                    5106 	.uleb128	1
      003684                       5107 Ldebug_CIE15_end:
      003684 00 00 00 13           5108 	.dw	0,19
      003688 00 00 36 72           5109 	.dw	0,(Ldebug_CIE15_start-4)
      00368C 00 00 A1 0D           5110 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)	;initial loc
      003690 00 00 00 18           5111 	.dw	0,Sstm8s_uart1$UART1_SmartCardCmd$232-Sstm8s_uart1$UART1_SmartCardCmd$221
      003694 01                    5112 	.db	1
      003695 00 00 A1 0D           5113 	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)
      003699 0E                    5114 	.db	14
      00369A 02                    5115 	.uleb128	2
                                   5116 
                                   5117 	.area .debug_frame (NOLOAD)
      00369B 00 00                 5118 	.dw	0
      00369D 00 0E                 5119 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      00369F                       5120 Ldebug_CIE16_start:
      00369F FF FF                 5121 	.dw	0xffff
      0036A1 FF FF                 5122 	.dw	0xffff
      0036A3 01                    5123 	.db	1
      0036A4 00                    5124 	.db	0
      0036A5 01                    5125 	.uleb128	1
      0036A6 7F                    5126 	.sleb128	-1
      0036A7 09                    5127 	.db	9
      0036A8 0C                    5128 	.db	12
      0036A9 08                    5129 	.uleb128	8
      0036AA 02                    5130 	.uleb128	2
      0036AB 89                    5131 	.db	137
      0036AC 01                    5132 	.uleb128	1
      0036AD                       5133 Ldebug_CIE16_end:
      0036AD 00 00 00 13           5134 	.dw	0,19
      0036B1 00 00 36 9B           5135 	.dw	0,(Ldebug_CIE16_start-4)
      0036B5 00 00 A0 F5           5136 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)	;initial loc
      0036B9 00 00 00 18           5137 	.dw	0,Sstm8s_uart1$UART1_LINCmd$219-Sstm8s_uart1$UART1_LINCmd$208
      0036BD 01                    5138 	.db	1
      0036BE 00 00 A0 F5           5139 	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)
      0036C2 0E                    5140 	.db	14
      0036C3 02                    5141 	.uleb128	2
                                   5142 
                                   5143 	.area .debug_frame (NOLOAD)
      0036C4 00 00                 5144 	.dw	0
      0036C6 00 0E                 5145 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      0036C8                       5146 Ldebug_CIE17_start:
      0036C8 FF FF                 5147 	.dw	0xffff
      0036CA FF FF                 5148 	.dw	0xffff
      0036CC 01                    5149 	.db	1
      0036CD 00                    5150 	.db	0
      0036CE 01                    5151 	.uleb128	1
      0036CF 7F                    5152 	.sleb128	-1
      0036D0 09                    5153 	.db	9
      0036D1 0C                    5154 	.db	12
      0036D2 08                    5155 	.uleb128	8
      0036D3 02                    5156 	.uleb128	2
      0036D4 89                    5157 	.db	137
      0036D5 01                    5158 	.uleb128	1
      0036D6                       5159 Ldebug_CIE17_end:
      0036D6 00 00 00 13           5160 	.dw	0,19
      0036DA 00 00 36 C4           5161 	.dw	0,(Ldebug_CIE17_start-4)
      0036DE 00 00 A0 DD           5162 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)	;initial loc
      0036E2 00 00 00 18           5163 	.dw	0,Sstm8s_uart1$UART1_LINBreakDetectionConfig$206-Sstm8s_uart1$UART1_LINBreakDetectionConfig$195
      0036E6 01                    5164 	.db	1
      0036E7 00 00 A0 DD           5165 	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)
      0036EB 0E                    5166 	.db	14
      0036EC 02                    5167 	.uleb128	2
                                   5168 
                                   5169 	.area .debug_frame (NOLOAD)
      0036ED 00 00                 5170 	.dw	0
      0036EF 00 0E                 5171 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      0036F1                       5172 Ldebug_CIE18_start:
      0036F1 FF FF                 5173 	.dw	0xffff
      0036F3 FF FF                 5174 	.dw	0xffff
      0036F5 01                    5175 	.db	1
      0036F6 00                    5176 	.db	0
      0036F7 01                    5177 	.uleb128	1
      0036F8 7F                    5178 	.sleb128	-1
      0036F9 09                    5179 	.db	9
      0036FA 0C                    5180 	.db	12
      0036FB 08                    5181 	.uleb128	8
      0036FC 02                    5182 	.uleb128	2
      0036FD 89                    5183 	.db	137
      0036FE 01                    5184 	.uleb128	1
      0036FF                       5185 Ldebug_CIE18_end:
      0036FF 00 00 00 13           5186 	.dw	0,19
      003703 00 00 36 ED           5187 	.dw	0,(Ldebug_CIE18_start-4)
      003707 00 00 A0 C5           5188 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)	;initial loc
      00370B 00 00 00 18           5189 	.dw	0,Sstm8s_uart1$UART1_IrDACmd$193-Sstm8s_uart1$UART1_IrDACmd$182
      00370F 01                    5190 	.db	1
      003710 00 00 A0 C5           5191 	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)
      003714 0E                    5192 	.db	14
      003715 02                    5193 	.uleb128	2
                                   5194 
                                   5195 	.area .debug_frame (NOLOAD)
      003716 00 00                 5196 	.dw	0
      003718 00 0E                 5197 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      00371A                       5198 Ldebug_CIE19_start:
      00371A FF FF                 5199 	.dw	0xffff
      00371C FF FF                 5200 	.dw	0xffff
      00371E 01                    5201 	.db	1
      00371F 00                    5202 	.db	0
      003720 01                    5203 	.uleb128	1
      003721 7F                    5204 	.sleb128	-1
      003722 09                    5205 	.db	9
      003723 0C                    5206 	.db	12
      003724 08                    5207 	.uleb128	8
      003725 02                    5208 	.uleb128	2
      003726 89                    5209 	.db	137
      003727 01                    5210 	.uleb128	1
      003728                       5211 Ldebug_CIE19_end:
      003728 00 00 00 13           5212 	.dw	0,19
      00372C 00 00 37 16           5213 	.dw	0,(Ldebug_CIE19_start-4)
      003730 00 00 A0 AD           5214 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)	;initial loc
      003734 00 00 00 18           5215 	.dw	0,Sstm8s_uart1$UART1_IrDAConfig$180-Sstm8s_uart1$UART1_IrDAConfig$169
      003738 01                    5216 	.db	1
      003739 00 00 A0 AD           5217 	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)
      00373D 0E                    5218 	.db	14
      00373E 02                    5219 	.uleb128	2
                                   5220 
                                   5221 	.area .debug_frame (NOLOAD)
      00373F 00 00                 5222 	.dw	0
      003741 00 0E                 5223 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      003743                       5224 Ldebug_CIE20_start:
      003743 FF FF                 5225 	.dw	0xffff
      003745 FF FF                 5226 	.dw	0xffff
      003747 01                    5227 	.db	1
      003748 00                    5228 	.db	0
      003749 01                    5229 	.uleb128	1
      00374A 7F                    5230 	.sleb128	-1
      00374B 09                    5231 	.db	9
      00374C 0C                    5232 	.db	12
      00374D 08                    5233 	.uleb128	8
      00374E 02                    5234 	.uleb128	2
      00374F 89                    5235 	.db	137
      003750 01                    5236 	.uleb128	1
      003751                       5237 Ldebug_CIE20_end:
      003751 00 00 00 13           5238 	.dw	0,19
      003755 00 00 37 3F           5239 	.dw	0,(Ldebug_CIE20_start-4)
      003759 00 00 A0 95           5240 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)	;initial loc
      00375D 00 00 00 18           5241 	.dw	0,Sstm8s_uart1$UART1_HalfDuplexCmd$167-Sstm8s_uart1$UART1_HalfDuplexCmd$156
      003761 01                    5242 	.db	1
      003762 00 00 A0 95           5243 	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)
      003766 0E                    5244 	.db	14
      003767 02                    5245 	.uleb128	2
                                   5246 
                                   5247 	.area .debug_frame (NOLOAD)
      003768 00 00                 5248 	.dw	0
      00376A 00 0E                 5249 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      00376C                       5250 Ldebug_CIE21_start:
      00376C FF FF                 5251 	.dw	0xffff
      00376E FF FF                 5252 	.dw	0xffff
      003770 01                    5253 	.db	1
      003771 00                    5254 	.db	0
      003772 01                    5255 	.uleb128	1
      003773 7F                    5256 	.sleb128	-1
      003774 09                    5257 	.db	9
      003775 0C                    5258 	.db	12
      003776 08                    5259 	.uleb128	8
      003777 02                    5260 	.uleb128	2
      003778 89                    5261 	.db	137
      003779 01                    5262 	.uleb128	1
      00377A                       5263 Ldebug_CIE21_end:
      00377A 00 00 00 4B           5264 	.dw	0,75
      00377E 00 00 37 68           5265 	.dw	0,(Ldebug_CIE21_start-4)
      003782 00 00 A0 01           5266 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)	;initial loc
      003786 00 00 00 94           5267 	.dw	0,Sstm8s_uart1$UART1_ITConfig$154-Sstm8s_uart1$UART1_ITConfig$113
      00378A 01                    5268 	.db	1
      00378B 00 00 A0 01           5269 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
      00378F 0E                    5270 	.db	14
      003790 02                    5271 	.uleb128	2
      003791 01                    5272 	.db	1
      003792 00 00 A0 02           5273 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      003796 0E                    5274 	.db	14
      003797 04                    5275 	.uleb128	4
      003798 01                    5276 	.db	1
      003799 00 00 A0 0A           5277 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      00379D 0E                    5278 	.db	14
      00379E 05                    5279 	.uleb128	5
      00379F 01                    5280 	.db	1
      0037A0 00 00 A0 0F           5281 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      0037A4 0E                    5282 	.db	14
      0037A5 04                    5283 	.uleb128	4
      0037A6 01                    5284 	.db	1
      0037A7 00 00 A0 24           5285 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      0037AB 0E                    5286 	.db	14
      0037AC 04                    5287 	.uleb128	4
      0037AD 01                    5288 	.db	1
      0037AE 00 00 A0 2F           5289 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      0037B2 0E                    5290 	.db	14
      0037B3 04                    5291 	.uleb128	4
      0037B4 01                    5292 	.db	1
      0037B5 00 00 A0 65           5293 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
      0037B9 0E                    5294 	.db	14
      0037BA 05                    5295 	.uleb128	5
      0037BB 01                    5296 	.db	1
      0037BC 00 00 A0 68           5297 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
      0037C0 0E                    5298 	.db	14
      0037C1 04                    5299 	.uleb128	4
      0037C2 01                    5300 	.db	1
      0037C3 00 00 A0 94           5301 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
      0037C7 0E                    5302 	.db	14
      0037C8 02                    5303 	.uleb128	2
                                   5304 
                                   5305 	.area .debug_frame (NOLOAD)
      0037C9 00 00                 5306 	.dw	0
      0037CB 00 0E                 5307 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      0037CD                       5308 Ldebug_CIE22_start:
      0037CD FF FF                 5309 	.dw	0xffff
      0037CF FF FF                 5310 	.dw	0xffff
      0037D1 01                    5311 	.db	1
      0037D2 00                    5312 	.db	0
      0037D3 01                    5313 	.uleb128	1
      0037D4 7F                    5314 	.sleb128	-1
      0037D5 09                    5315 	.db	9
      0037D6 0C                    5316 	.db	12
      0037D7 08                    5317 	.uleb128	8
      0037D8 02                    5318 	.uleb128	2
      0037D9 89                    5319 	.db	137
      0037DA 01                    5320 	.uleb128	1
      0037DB                       5321 Ldebug_CIE22_end:
      0037DB 00 00 00 13           5322 	.dw	0,19
      0037DF 00 00 37 C9           5323 	.dw	0,(Ldebug_CIE22_start-4)
      0037E3 00 00 9F E9           5324 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)	;initial loc
      0037E7 00 00 00 18           5325 	.dw	0,Sstm8s_uart1$UART1_Cmd$111-Sstm8s_uart1$UART1_Cmd$100
      0037EB 01                    5326 	.db	1
      0037EC 00 00 9F E9           5327 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
      0037F0 0E                    5328 	.db	14
      0037F1 02                    5329 	.uleb128	2
                                   5330 
                                   5331 	.area .debug_frame (NOLOAD)
      0037F2 00 00                 5332 	.dw	0
      0037F4 00 0E                 5333 	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
      0037F6                       5334 Ldebug_CIE23_start:
      0037F6 FF FF                 5335 	.dw	0xffff
      0037F8 FF FF                 5336 	.dw	0xffff
      0037FA 01                    5337 	.db	1
      0037FB 00                    5338 	.db	0
      0037FC 01                    5339 	.uleb128	1
      0037FD 7F                    5340 	.sleb128	-1
      0037FE 09                    5341 	.db	9
      0037FF 0C                    5342 	.db	12
      003800 08                    5343 	.uleb128	8
      003801 02                    5344 	.uleb128	2
      003802 89                    5345 	.db	137
      003803 01                    5346 	.uleb128	1
      003804                       5347 Ldebug_CIE23_end:
      003804 00 00 01 16           5348 	.dw	0,278
      003808 00 00 37 F2           5349 	.dw	0,(Ldebug_CIE23_start-4)
      00380C 00 00 9E 5A           5350 	.dw	0,(Sstm8s_uart1$UART1_Init$17)	;initial loc
      003810 00 00 01 8F           5351 	.dw	0,Sstm8s_uart1$UART1_Init$98-Sstm8s_uart1$UART1_Init$17
      003814 01                    5352 	.db	1
      003815 00 00 9E 5A           5353 	.dw	0,(Sstm8s_uart1$UART1_Init$17)
      003819 0E                    5354 	.db	14
      00381A 02                    5355 	.uleb128	2
      00381B 01                    5356 	.db	1
      00381C 00 00 9E 5C           5357 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      003820 0E                    5358 	.db	14
      003821 13                    5359 	.uleb128	19
      003822 01                    5360 	.db	1
      003823 00 00 9E BD           5361 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      003827 0E                    5362 	.db	14
      003828 15                    5363 	.uleb128	21
      003829 01                    5364 	.db	1
      00382A 00 00 9E C0           5365 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      00382E 0E                    5366 	.db	14
      00382F 17                    5367 	.uleb128	23
      003830 01                    5368 	.db	1
      003831 00 00 9E C3           5369 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      003835 0E                    5370 	.db	14
      003836 19                    5371 	.uleb128	25
      003837 01                    5372 	.db	1
      003838 00 00 9E C5           5373 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      00383C 0E                    5374 	.db	14
      00383D 1B                    5375 	.uleb128	27
      00383E 01                    5376 	.db	1
      00383F 00 00 9E CA           5377 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      003843 0E                    5378 	.db	14
      003844 13                    5379 	.uleb128	19
      003845 01                    5380 	.db	1
      003846 00 00 9E E0           5381 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      00384A 0E                    5382 	.db	14
      00384B 15                    5383 	.uleb128	21
      00384C 01                    5384 	.db	1
      00384D 00 00 9E E3           5385 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      003851 0E                    5386 	.db	14
      003852 17                    5387 	.uleb128	23
      003853 01                    5388 	.db	1
      003854 00 00 9E E5           5389 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      003858 0E                    5390 	.db	14
      003859 18                    5391 	.uleb128	24
      00385A 01                    5392 	.db	1
      00385B 00 00 9E E7           5393 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      00385F 0E                    5394 	.db	14
      003860 1A                    5395 	.uleb128	26
      003861 01                    5396 	.db	1
      003862 00 00 9E E9           5397 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      003866 0E                    5398 	.db	14
      003867 1B                    5399 	.uleb128	27
      003868 01                    5400 	.db	1
      003869 00 00 9E EE           5401 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      00386D 0E                    5402 	.db	14
      00386E 13                    5403 	.uleb128	19
      00386F 01                    5404 	.db	1
      003870 00 00 9E F3           5405 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      003874 0E                    5406 	.db	14
      003875 15                    5407 	.uleb128	21
      003876 01                    5408 	.db	1
      003877 00 00 9E F6           5409 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      00387B 0E                    5410 	.db	14
      00387C 17                    5411 	.uleb128	23
      00387D 01                    5412 	.db	1
      00387E 00 00 9E F9           5413 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      003882 0E                    5414 	.db	14
      003883 19                    5415 	.uleb128	25
      003884 01                    5416 	.db	1
      003885 00 00 9E FB           5417 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      003889 0E                    5418 	.db	14
      00388A 1B                    5419 	.uleb128	27
      00388B 01                    5420 	.db	1
      00388C 00 00 9F 00           5421 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      003890 0E                    5422 	.db	14
      003891 13                    5423 	.uleb128	19
      003892 01                    5424 	.db	1
      003893 00 00 9F 0C           5425 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      003897 0E                    5426 	.db	14
      003898 15                    5427 	.uleb128	21
      003899 01                    5428 	.db	1
      00389A 00 00 9F 0F           5429 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      00389E 0E                    5430 	.db	14
      00389F 17                    5431 	.uleb128	23
      0038A0 01                    5432 	.db	1
      0038A1 00 00 9F 11           5433 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      0038A5 0E                    5434 	.db	14
      0038A6 18                    5435 	.uleb128	24
      0038A7 01                    5436 	.db	1
      0038A8 00 00 9F 13           5437 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      0038AC 0E                    5438 	.db	14
      0038AD 1A                    5439 	.uleb128	26
      0038AE 01                    5440 	.db	1
      0038AF 00 00 9F 15           5441 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      0038B3 0E                    5442 	.db	14
      0038B4 1B                    5443 	.uleb128	27
      0038B5 01                    5444 	.db	1
      0038B6 00 00 9F 1A           5445 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      0038BA 0E                    5446 	.db	14
      0038BB 13                    5447 	.uleb128	19
      0038BC 01                    5448 	.db	1
      0038BD 00 00 9F 3F           5449 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      0038C1 0E                    5450 	.db	14
      0038C2 14                    5451 	.uleb128	20
      0038C3 01                    5452 	.db	1
      0038C4 00 00 9F 41           5453 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      0038C8 0E                    5454 	.db	14
      0038C9 15                    5455 	.uleb128	21
      0038CA 01                    5456 	.db	1
      0038CB 00 00 9F 43           5457 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      0038CF 0E                    5458 	.db	14
      0038D0 16                    5459 	.uleb128	22
      0038D1 01                    5460 	.db	1
      0038D2 00 00 9F 45           5461 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      0038D6 0E                    5462 	.db	14
      0038D7 17                    5463 	.uleb128	23
      0038D8 01                    5464 	.db	1
      0038D9 00 00 9F 46           5465 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      0038DD 0E                    5466 	.db	14
      0038DE 19                    5467 	.uleb128	25
      0038DF 01                    5468 	.db	1
      0038E0 00 00 9F 48           5469 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      0038E4 0E                    5470 	.db	14
      0038E5 1B                    5471 	.uleb128	27
      0038E6 01                    5472 	.db	1
      0038E7 00 00 9F 4D           5473 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      0038EB 0E                    5474 	.db	14
      0038EC 13                    5475 	.uleb128	19
      0038ED 01                    5476 	.db	1
      0038EE 00 00 9F 95           5477 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      0038F2 0E                    5478 	.db	14
      0038F3 14                    5479 	.uleb128	20
      0038F4 01                    5480 	.db	1
      0038F5 00 00 9F 9A           5481 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      0038F9 0E                    5482 	.db	14
      0038FA 13                    5483 	.uleb128	19
      0038FB 01                    5484 	.db	1
      0038FC 00 00 9F B0           5485 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      003900 0E                    5486 	.db	14
      003901 14                    5487 	.uleb128	20
      003902 01                    5488 	.db	1
      003903 00 00 9F B5           5489 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      003907 0E                    5490 	.db	14
      003908 13                    5491 	.uleb128	19
      003909 01                    5492 	.db	1
      00390A 00 00 9F DA           5493 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      00390E 0E                    5494 	.db	14
      00390F 14                    5495 	.uleb128	20
      003910 01                    5496 	.db	1
      003911 00 00 9F E1           5497 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      003915 0E                    5498 	.db	14
      003916 13                    5499 	.uleb128	19
      003917 01                    5500 	.db	1
      003918 00 00 9F E8           5501 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      00391C 0E                    5502 	.db	14
      00391D 02                    5503 	.uleb128	2
                                   5504 
                                   5505 	.area .debug_frame (NOLOAD)
      00391E 00 00                 5506 	.dw	0
      003920 00 0E                 5507 	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
      003922                       5508 Ldebug_CIE24_start:
      003922 FF FF                 5509 	.dw	0xffff
      003924 FF FF                 5510 	.dw	0xffff
      003926 01                    5511 	.db	1
      003927 00                    5512 	.db	0
      003928 01                    5513 	.uleb128	1
      003929 7F                    5514 	.sleb128	-1
      00392A 09                    5515 	.db	9
      00392B 0C                    5516 	.db	12
      00392C 08                    5517 	.uleb128	8
      00392D 02                    5518 	.uleb128	2
      00392E 89                    5519 	.db	137
      00392F 01                    5520 	.uleb128	1
      003930                       5521 Ldebug_CIE24_end:
      003930 00 00 00 13           5522 	.dw	0,19
      003934 00 00 39 1E           5523 	.dw	0,(Ldebug_CIE24_start-4)
      003938 00 00 9E 2F           5524 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)	;initial loc
      00393C 00 00 00 2B           5525 	.dw	0,Sstm8s_uart1$UART1_DeInit$15-Sstm8s_uart1$UART1_DeInit$1
      003940 01                    5526 	.db	1
      003941 00 00 9E 2F           5527 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
      003945 0E                    5528 	.db	14
      003946 02                    5529 	.uleb128	2
