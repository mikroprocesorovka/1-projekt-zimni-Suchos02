;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_uart1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _UART1_DeInit
	.globl _UART1_Init
	.globl _UART1_Cmd
	.globl _UART1_ITConfig
	.globl _UART1_HalfDuplexCmd
	.globl _UART1_IrDAConfig
	.globl _UART1_IrDACmd
	.globl _UART1_LINBreakDetectionConfig
	.globl _UART1_LINCmd
	.globl _UART1_SmartCardCmd
	.globl _UART1_SmartCardNACKCmd
	.globl _UART1_WakeUpConfig
	.globl _UART1_ReceiverWakeUpCmd
	.globl _UART1_ReceiveData8
	.globl _UART1_ReceiveData9
	.globl _UART1_SendData8
	.globl _UART1_SendData9
	.globl _UART1_SendBreak
	.globl _UART1_SetAddress
	.globl _UART1_SetGuardTime
	.globl _UART1_SetPrescaler
	.globl _UART1_GetFlagStatus
	.globl _UART1_ClearFlag
	.globl _UART1_GetITStatus
	.globl _UART1_ClearITPendingBit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Sstm8s_uart1$UART1_DeInit$0 ==.
;	../SPL/src/stm8s_uart1.c: 53: void UART1_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function UART1_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_DeInit:
	Sstm8s_uart1$UART1_DeInit$1 ==.
	Sstm8s_uart1$UART1_DeInit$2 ==.
;	../SPL/src/stm8s_uart1.c: 57: (void)UART1->SR;
; genPointerGet
; Dummy read
	ld	a, 0x5230
	Sstm8s_uart1$UART1_DeInit$3 ==.
;	../SPL/src/stm8s_uart1.c: 58: (void)UART1->DR;
; genPointerGet
; Dummy read
	ld	a, 0x5231
	Sstm8s_uart1$UART1_DeInit$4 ==.
;	../SPL/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
; genPointerSet
	mov	0x5233+0, #0x00
	Sstm8s_uart1$UART1_DeInit$5 ==.
;	../SPL/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
; genPointerSet
	mov	0x5232+0, #0x00
	Sstm8s_uart1$UART1_DeInit$6 ==.
;	../SPL/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
; genPointerSet
	mov	0x5234+0, #0x00
	Sstm8s_uart1$UART1_DeInit$7 ==.
;	../SPL/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
; genPointerSet
	mov	0x5235+0, #0x00
	Sstm8s_uart1$UART1_DeInit$8 ==.
;	../SPL/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
; genPointerSet
	mov	0x5236+0, #0x00
	Sstm8s_uart1$UART1_DeInit$9 ==.
;	../SPL/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
; genPointerSet
	mov	0x5237+0, #0x00
	Sstm8s_uart1$UART1_DeInit$10 ==.
;	../SPL/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
; genPointerSet
	mov	0x5238+0, #0x00
	Sstm8s_uart1$UART1_DeInit$11 ==.
;	../SPL/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
; genPointerSet
	mov	0x5239+0, #0x00
	Sstm8s_uart1$UART1_DeInit$12 ==.
;	../SPL/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x523a+0, #0x00
; genLabel
00101$:
	Sstm8s_uart1$UART1_DeInit$13 ==.
;	../SPL/src/stm8s_uart1.c: 71: }
; genEndFunction
	Sstm8s_uart1$UART1_DeInit$14 ==.
	XG$UART1_DeInit$0$0 ==.
	ret
	Sstm8s_uart1$UART1_DeInit$15 ==.
	Sstm8s_uart1$UART1_Init$16 ==.
;	../SPL/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
; genLabel
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 17 bytes.
_UART1_Init:
	Sstm8s_uart1$UART1_Init$17 ==.
	sub	sp, #17
	Sstm8s_uart1$UART1_Init$18 ==.
	Sstm8s_uart1$UART1_Init$19 ==.
;	../SPL/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_Init$20 ==.
;	../SPL/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
; genPointerGet
	ld	a, 0x5234
; genOr
	or	a, (0x18, sp)
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_Init$21 ==.
;	../SPL/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
; genPointerGet
	ld	a, 0x5236
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$22 ==.
;	../SPL/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
; genPointerGet
	ld	a, 0x5236
; genOr
	or	a, (0x19, sp)
; genPointerSet
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$23 ==.
;	../SPL/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, #0xf9
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_Init$24 ==.
;	../SPL/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
; genPointerGet
	ld	a, 0x5234
; genOr
	or	a, (0x1a, sp)
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_Init$25 ==.
;	../SPL/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
; genPointerGet
; Dummy read
	ld	a, 0x5232
; genPointerSet
	mov	0x5232+0, #0x00
	Sstm8s_uart1$UART1_Init$26 ==.
;	../SPL/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
; genPointerGet
	ld	a, 0x5233
; genAnd
	and	a, #0x0f
; genPointerSet
	ld	0x5233, a
	Sstm8s_uart1$UART1_Init$27 ==.
;	../SPL/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
; genPointerGet
	ld	a, 0x5233
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5233, a
	Sstm8s_uart1$UART1_Init$28 ==.
;	../SPL/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
; genCall
	call	_CLK_GetClockFreq
	ldw	(0x10, sp), x
; genLeftShift
	ldw	x, (0x14, sp)
	ldw	(0x0a, sp), x
	ldw	x, (0x16, sp)
	ld	a, #0x04
00127$:
	sllw	x
	rlc	(0x0b, sp)
	rlc	(0x0a, sp)
	dec	a
	jrne	00127$
00128$:
	ldw	(0x0c, sp), x
; genIPush
	ldw	x, (0x0c, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$29 ==.
	ldw	x, (0x0c, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$30 ==.
; genIPush
	ldw	x, (0x14, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$31 ==.
	pushw	y
	Sstm8s_uart1$UART1_Init$32 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$33 ==.
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
; genAssign
	ldw	y, (0x10, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x0e, sp)
	ldw	(0x01, sp), y
	Sstm8s_uart1$UART1_Init$34 ==.
;	../SPL/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
; genCall
	call	_CLK_GetClockFreq
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
; genIPush
	ldw	x, (0x10, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$35 ==.
	ldw	x, (0x10, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$36 ==.
; genIPush
	push	#0x64
	Sstm8s_uart1$UART1_Init$37 ==.
	clrw	x
	pushw	x
	Sstm8s_uart1$UART1_Init$38 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$39 ==.
; genCall
	call	__mullong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$40 ==.
	ldw	(0x10, sp), x
; genIPush
	ldw	x, (0x0c, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$41 ==.
	ldw	x, (0x0c, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$42 ==.
; genIPush
	ldw	x, (0x14, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$43 ==.
	pushw	y
	Sstm8s_uart1$UART1_Init$44 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$45 ==.
; genAssign
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
	Sstm8s_uart1$UART1_Init$46 ==.
;	../SPL/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
; genPointerGet
	ld	a, 0x5233
	ld	(0x09, sp), a
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$47 ==.
	ldw	x, (0x03, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$48 ==.
; genIPush
	push	#0x64
	Sstm8s_uart1$UART1_Init$49 ==.
	clrw	x
	pushw	x
	Sstm8s_uart1$UART1_Init$50 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$51 ==.
; genCall
	call	__mullong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$52 ==.
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), y
; genMinus
	ldw	x, (0x07, sp)
	subw	x, (0x0c, sp)
	ldw	(0x10, sp), x
	ld	a, (0x06, sp)
	sbc	a, (0x0b, sp)
	ld	(0x0f, sp), a
	ld	a, (0x05, sp)
	sbc	a, (0x0a, sp)
	ld	(0x0e, sp), a
; genLeftShift
	ldw	x, (0x10, sp)
	ldw	y, (0x0e, sp)
	ld	a, #0x04
00129$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00129$
00130$:
; genIPush
	push	#0x64
	Sstm8s_uart1$UART1_Init$53 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$54 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$55 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$56 ==.
; genIPush
	pushw	x
	Sstm8s_uart1$UART1_Init$57 ==.
	pushw	y
	Sstm8s_uart1$UART1_Init$58 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$59 ==.
	ld	a, xl
; genCast
; genAssign
; genAnd
	and	a, #0x0f
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ld	0x5233, a
	Sstm8s_uart1$UART1_Init$60 ==.
;	../SPL/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
; genPointerGet
	ld	a, 0x5233
	ld	(0x11, sp), a
; genCast
; genAssign
	ldw	x, (0x03, sp)
; genRightShiftLiteral
	ld	a, #0x10
	div	x, a
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, #0xf0
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	0x5233, a
	Sstm8s_uart1$UART1_Init$61 ==.
;	../SPL/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
; genPointerGet
	ld	a, 0x5232
	ld	(0x11, sp), a
; genCast
; genAssign
	ld	a, (0x04, sp)
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	0x5232, a
	Sstm8s_uart1$UART1_Init$62 ==.
;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
; genPointerGet
	ld	a, 0x5235
; genAnd
	and	a, #0xf3
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$63 ==.
;	../SPL/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
; genPointerGet
	ld	a, 0x5236
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$64 ==.
;	../SPL/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
; genPointerGet
	ld	a, 0x5236
	ld	(0x11, sp), a
; genAnd
	ld	a, (0x1b, sp)
	and	a, #0x07
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$65 ==.
;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
; genPointerGet
	ld	a, 0x5235
	Sstm8s_uart1$UART1_Init$66 ==.
;	../SPL/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
; genAnd
	push	a
	Sstm8s_uart1$UART1_Init$67 ==.
	ld	a, (0x1d, sp)
	bcp	a, #0x04
	pop	a
	Sstm8s_uart1$UART1_Init$68 ==.
	jrne	00131$
	jp	00102$
00131$:
; skipping generated iCode
	Sstm8s_uart1$UART1_Init$69 ==.
	Sstm8s_uart1$UART1_Init$70 ==.
;	../SPL/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$71 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_uart1$UART1_Init$72 ==.
	Sstm8s_uart1$UART1_Init$73 ==.
;	../SPL/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$74 ==.
; genLabel
00103$:
	Sstm8s_uart1$UART1_Init$75 ==.
;	../SPL/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
; genPointerGet
	ld	a, 0x5235
	Sstm8s_uart1$UART1_Init$76 ==.
;	../SPL/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
; genAnd
	push	a
	Sstm8s_uart1$UART1_Init$77 ==.
	ld	a, (0x1d, sp)
	bcp	a, #0x08
	pop	a
	Sstm8s_uart1$UART1_Init$78 ==.
	jrne	00132$
	jp	00105$
00132$:
; skipping generated iCode
	Sstm8s_uart1$UART1_Init$79 ==.
	Sstm8s_uart1$UART1_Init$80 ==.
;	../SPL/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$81 ==.
; genGoto
	jp	00106$
; genLabel
00105$:
	Sstm8s_uart1$UART1_Init$82 ==.
	Sstm8s_uart1$UART1_Init$83 ==.
;	../SPL/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$84 ==.
; genLabel
00106$:
	Sstm8s_uart1$UART1_Init$85 ==.
;	../SPL/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
; genPointerGet
	ld	a, 0x5236
	Sstm8s_uart1$UART1_Init$86 ==.
;	../SPL/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
; genAnd
	tnz	(0x1b, sp)
	jrmi	00133$
	jp	00108$
00133$:
; skipping generated iCode
	Sstm8s_uart1$UART1_Init$87 ==.
	Sstm8s_uart1$UART1_Init$88 ==.
;	../SPL/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$89 ==.
; genGoto
	jp	00110$
; genLabel
00108$:
	Sstm8s_uart1$UART1_Init$90 ==.
	Sstm8s_uart1$UART1_Init$91 ==.
;	../SPL/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
; genAnd
	push	a
	Sstm8s_uart1$UART1_Init$92 ==.
	ld	a, (0x1c, sp)
	and	a, #0x08
	ld	(0x12, sp), a
	pop	a
	Sstm8s_uart1$UART1_Init$93 ==.
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$94 ==.
; genLabel
00110$:
	Sstm8s_uart1$UART1_Init$95 ==.
;	../SPL/src/stm8s_uart1.c: 176: }
; genEndFunction
	addw	sp, #17
	Sstm8s_uart1$UART1_Init$96 ==.
	Sstm8s_uart1$UART1_Init$97 ==.
	XG$UART1_Init$0$0 ==.
	ret
	Sstm8s_uart1$UART1_Init$98 ==.
	Sstm8s_uart1$UART1_Cmd$99 ==.
;	../SPL/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_Cmd:
	Sstm8s_uart1$UART1_Cmd$100 ==.
	Sstm8s_uart1$UART1_Cmd$101 ==.
;	../SPL/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
; genPointerGet
	ld	a, 0x5234
	Sstm8s_uart1$UART1_Cmd$102 ==.
;	../SPL/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_Cmd$103 ==.
	Sstm8s_uart1$UART1_Cmd$104 ==.
;	../SPL/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_Cmd$105 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_Cmd$106 ==.
	Sstm8s_uart1$UART1_Cmd$107 ==.
;	../SPL/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_Cmd$108 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_Cmd$109 ==.
;	../SPL/src/stm8s_uart1.c: 196: }
; genEndFunction
	Sstm8s_uart1$UART1_Cmd$110 ==.
	XG$UART1_Cmd$0$0 ==.
	ret
	Sstm8s_uart1$UART1_Cmd$111 ==.
	Sstm8s_uart1$UART1_ITConfig$112 ==.
;	../SPL/src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_UART1_ITConfig:
	Sstm8s_uart1$UART1_ITConfig$113 ==.
	pushw	x
	Sstm8s_uart1$UART1_ITConfig$114 ==.
	Sstm8s_uart1$UART1_ITConfig$115 ==.
;	../SPL/src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
; genCast
; genAssign
	ldw	x, (0x05, sp)
; genRightShiftLiteral
	clr	a
; genCast
; genAssign
	Sstm8s_uart1$UART1_ITConfig$116 ==.
;	../SPL/src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genAnd
	and	a, #0x0f
; genLeftShift
	push	a
	Sstm8s_uart1$UART1_ITConfig$117 ==.
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	Sstm8s_uart1$UART1_ITConfig$118 ==.
	tnz	a
	jreq	00144$
00143$:
	sll	(0x02, sp)
	dec	a
	jrne	00143$
00144$:
	Sstm8s_uart1$UART1_ITConfig$119 ==.
;	../SPL/src/stm8s_uart1.c: 227: if (uartreg == 0x01)
; genCmpEQorNE
	ld	a, xh
	dec	a
	jrne	00146$
	ld	a, #0x01
	ld	(0x01, sp), a
	jp	00147$
00146$:
	clr	(0x01, sp)
00147$:
	Sstm8s_uart1$UART1_ITConfig$120 ==.
	Sstm8s_uart1$UART1_ITConfig$121 ==.
;	../SPL/src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
; genCmpEQorNE
	ld	a, xh
	cp	a, #0x02
	jrne	00149$
	ld	a, #0x01
	jp	00150$
00149$:
	clr	a
00150$:
	Sstm8s_uart1$UART1_ITConfig$122 ==.
	Sstm8s_uart1$UART1_ITConfig$123 ==.
;	../SPL/src/stm8s_uart1.c: 224: if (NewState != DISABLE)
; genIfx
	tnz	(0x07, sp)
	jrne	00151$
	jp	00114$
00151$:
	Sstm8s_uart1$UART1_ITConfig$124 ==.
	Sstm8s_uart1$UART1_ITConfig$125 ==.
;	../SPL/src/stm8s_uart1.c: 227: if (uartreg == 0x01)
; genIfx
	tnz	(0x01, sp)
	jrne	00152$
	jp	00105$
00152$:
	Sstm8s_uart1$UART1_ITConfig$126 ==.
	Sstm8s_uart1$UART1_ITConfig$127 ==.
;	../SPL/src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
; genPointerGet
	ld	a, 0x5234
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_ITConfig$128 ==.
; genGoto
	jp	00116$
; genLabel
00105$:
	Sstm8s_uart1$UART1_ITConfig$129 ==.
;	../SPL/src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
; genIfx
	tnz	a
	jrne	00153$
	jp	00102$
00153$:
	Sstm8s_uart1$UART1_ITConfig$130 ==.
	Sstm8s_uart1$UART1_ITConfig$131 ==.
;	../SPL/src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
; genPointerGet
	ld	a, 0x5235
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_ITConfig$132 ==.
; genGoto
	jp	00116$
; genLabel
00102$:
	Sstm8s_uart1$UART1_ITConfig$133 ==.
	Sstm8s_uart1$UART1_ITConfig$134 ==.
;	../SPL/src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
; genPointerGet
	ld	a, 0x5237
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5237, a
	Sstm8s_uart1$UART1_ITConfig$135 ==.
; genGoto
	jp	00116$
; genLabel
00114$:
	Sstm8s_uart1$UART1_ITConfig$136 ==.
;	../SPL/src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
; genCpl
	push	a
	Sstm8s_uart1$UART1_ITConfig$137 ==.
	cpl	(0x03, sp)
	pop	a
	Sstm8s_uart1$UART1_ITConfig$138 ==.
	Sstm8s_uart1$UART1_ITConfig$139 ==.
	Sstm8s_uart1$UART1_ITConfig$140 ==.
;	../SPL/src/stm8s_uart1.c: 243: if (uartreg == 0x01)
; genIfx
	tnz	(0x01, sp)
	jrne	00154$
	jp	00111$
00154$:
	Sstm8s_uart1$UART1_ITConfig$141 ==.
	Sstm8s_uart1$UART1_ITConfig$142 ==.
;	../SPL/src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_ITConfig$143 ==.
; genGoto
	jp	00116$
; genLabel
00111$:
	Sstm8s_uart1$UART1_ITConfig$144 ==.
;	../SPL/src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
; genIfx
	tnz	a
	jrne	00155$
	jp	00108$
00155$:
	Sstm8s_uart1$UART1_ITConfig$145 ==.
	Sstm8s_uart1$UART1_ITConfig$146 ==.
;	../SPL/src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5235
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_ITConfig$147 ==.
; genGoto
	jp	00116$
; genLabel
00108$:
	Sstm8s_uart1$UART1_ITConfig$148 ==.
	Sstm8s_uart1$UART1_ITConfig$149 ==.
;	../SPL/src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5237, a
	Sstm8s_uart1$UART1_ITConfig$150 ==.
; genLabel
00116$:
	Sstm8s_uart1$UART1_ITConfig$151 ==.
;	../SPL/src/stm8s_uart1.c: 257: }
; genEndFunction
	popw	x
	Sstm8s_uart1$UART1_ITConfig$152 ==.
	Sstm8s_uart1$UART1_ITConfig$153 ==.
	XG$UART1_ITConfig$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ITConfig$154 ==.
	Sstm8s_uart1$UART1_HalfDuplexCmd$155 ==.
;	../SPL/src/stm8s_uart1.c: 265: void UART1_HalfDuplexCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_HalfDuplexCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_HalfDuplexCmd:
	Sstm8s_uart1$UART1_HalfDuplexCmd$156 ==.
	Sstm8s_uart1$UART1_HalfDuplexCmd$157 ==.
;	../SPL/src/stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
; genPointerGet
	ld	a, 0x5238
	Sstm8s_uart1$UART1_HalfDuplexCmd$158 ==.
;	../SPL/src/stm8s_uart1.c: 269: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_HalfDuplexCmd$159 ==.
	Sstm8s_uart1$UART1_HalfDuplexCmd$160 ==.
;	../SPL/src/stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_HalfDuplexCmd$161 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_HalfDuplexCmd$162 ==.
	Sstm8s_uart1$UART1_HalfDuplexCmd$163 ==.
;	../SPL/src/stm8s_uart1.c: 275: UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_HalfDuplexCmd$164 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_HalfDuplexCmd$165 ==.
;	../SPL/src/stm8s_uart1.c: 277: }
; genEndFunction
	Sstm8s_uart1$UART1_HalfDuplexCmd$166 ==.
	XG$UART1_HalfDuplexCmd$0$0 ==.
	ret
	Sstm8s_uart1$UART1_HalfDuplexCmd$167 ==.
	Sstm8s_uart1$UART1_IrDAConfig$168 ==.
;	../SPL/src/stm8s_uart1.c: 285: void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
; genLabel
;	-----------------------------------------
;	 function UART1_IrDAConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_IrDAConfig:
	Sstm8s_uart1$UART1_IrDAConfig$169 ==.
	Sstm8s_uart1$UART1_IrDAConfig$170 ==.
;	../SPL/src/stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
; genPointerGet
	ld	a, 0x5238
	Sstm8s_uart1$UART1_IrDAConfig$171 ==.
;	../SPL/src/stm8s_uart1.c: 289: if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_IrDAConfig$172 ==.
	Sstm8s_uart1$UART1_IrDAConfig$173 ==.
;	../SPL/src/stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_IrDAConfig$174 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_IrDAConfig$175 ==.
	Sstm8s_uart1$UART1_IrDAConfig$176 ==.
;	../SPL/src/stm8s_uart1.c: 295: UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_IrDAConfig$177 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_IrDAConfig$178 ==.
;	../SPL/src/stm8s_uart1.c: 297: }
; genEndFunction
	Sstm8s_uart1$UART1_IrDAConfig$179 ==.
	XG$UART1_IrDAConfig$0$0 ==.
	ret
	Sstm8s_uart1$UART1_IrDAConfig$180 ==.
	Sstm8s_uart1$UART1_IrDACmd$181 ==.
;	../SPL/src/stm8s_uart1.c: 305: void UART1_IrDACmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_IrDACmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_IrDACmd:
	Sstm8s_uart1$UART1_IrDACmd$182 ==.
	Sstm8s_uart1$UART1_IrDACmd$183 ==.
;	../SPL/src/stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
; genPointerGet
	ld	a, 0x5238
	Sstm8s_uart1$UART1_IrDACmd$184 ==.
;	../SPL/src/stm8s_uart1.c: 310: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_IrDACmd$185 ==.
	Sstm8s_uart1$UART1_IrDACmd$186 ==.
;	../SPL/src/stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_IrDACmd$187 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_IrDACmd$188 ==.
	Sstm8s_uart1$UART1_IrDACmd$189 ==.
;	../SPL/src/stm8s_uart1.c: 318: UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_IrDACmd$190 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_IrDACmd$191 ==.
;	../SPL/src/stm8s_uart1.c: 320: }
; genEndFunction
	Sstm8s_uart1$UART1_IrDACmd$192 ==.
	XG$UART1_IrDACmd$0$0 ==.
	ret
	Sstm8s_uart1$UART1_IrDACmd$193 ==.
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$194 ==.
;	../SPL/src/stm8s_uart1.c: 329: void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
; genLabel
;	-----------------------------------------
;	 function UART1_LINBreakDetectionConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_LINBreakDetectionConfig:
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$195 ==.
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$196 ==.
;	../SPL/src/stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
; genPointerGet
	ld	a, 0x5237
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$197 ==.
;	../SPL/src/stm8s_uart1.c: 333: if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$198 ==.
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$199 ==.
;	../SPL/src/stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5237, a
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$200 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$201 ==.
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$202 ==.
;	../SPL/src/stm8s_uart1.c: 339: UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5237, a
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$203 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$204 ==.
;	../SPL/src/stm8s_uart1.c: 341: }
; genEndFunction
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$205 ==.
	XG$UART1_LINBreakDetectionConfig$0$0 ==.
	ret
	Sstm8s_uart1$UART1_LINBreakDetectionConfig$206 ==.
	Sstm8s_uart1$UART1_LINCmd$207 ==.
;	../SPL/src/stm8s_uart1.c: 349: void UART1_LINCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_LINCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_LINCmd:
	Sstm8s_uart1$UART1_LINCmd$208 ==.
	Sstm8s_uart1$UART1_LINCmd$209 ==.
;	../SPL/src/stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
; genPointerGet
	ld	a, 0x5236
	Sstm8s_uart1$UART1_LINCmd$210 ==.
;	../SPL/src/stm8s_uart1.c: 353: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_LINCmd$211 ==.
	Sstm8s_uart1$UART1_LINCmd$212 ==.
;	../SPL/src/stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5236, a
	Sstm8s_uart1$UART1_LINCmd$213 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_LINCmd$214 ==.
	Sstm8s_uart1$UART1_LINCmd$215 ==.
;	../SPL/src/stm8s_uart1.c: 361: UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5236, a
	Sstm8s_uart1$UART1_LINCmd$216 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_LINCmd$217 ==.
;	../SPL/src/stm8s_uart1.c: 363: }
; genEndFunction
	Sstm8s_uart1$UART1_LINCmd$218 ==.
	XG$UART1_LINCmd$0$0 ==.
	ret
	Sstm8s_uart1$UART1_LINCmd$219 ==.
	Sstm8s_uart1$UART1_SmartCardCmd$220 ==.
;	../SPL/src/stm8s_uart1.c: 371: void UART1_SmartCardCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_SmartCardCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SmartCardCmd:
	Sstm8s_uart1$UART1_SmartCardCmd$221 ==.
	Sstm8s_uart1$UART1_SmartCardCmd$222 ==.
;	../SPL/src/stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
; genPointerGet
	ld	a, 0x5238
	Sstm8s_uart1$UART1_SmartCardCmd$223 ==.
;	../SPL/src/stm8s_uart1.c: 375: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_SmartCardCmd$224 ==.
	Sstm8s_uart1$UART1_SmartCardCmd$225 ==.
;	../SPL/src/stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_SmartCardCmd$226 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_SmartCardCmd$227 ==.
	Sstm8s_uart1$UART1_SmartCardCmd$228 ==.
;	../SPL/src/stm8s_uart1.c: 383: UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_SmartCardCmd$229 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_SmartCardCmd$230 ==.
;	../SPL/src/stm8s_uart1.c: 385: }
; genEndFunction
	Sstm8s_uart1$UART1_SmartCardCmd$231 ==.
	XG$UART1_SmartCardCmd$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SmartCardCmd$232 ==.
	Sstm8s_uart1$UART1_SmartCardNACKCmd$233 ==.
;	../SPL/src/stm8s_uart1.c: 394: void UART1_SmartCardNACKCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_SmartCardNACKCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SmartCardNACKCmd:
	Sstm8s_uart1$UART1_SmartCardNACKCmd$234 ==.
	Sstm8s_uart1$UART1_SmartCardNACKCmd$235 ==.
;	../SPL/src/stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
; genPointerGet
	ld	a, 0x5238
	Sstm8s_uart1$UART1_SmartCardNACKCmd$236 ==.
;	../SPL/src/stm8s_uart1.c: 398: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_SmartCardNACKCmd$237 ==.
	Sstm8s_uart1$UART1_SmartCardNACKCmd$238 ==.
;	../SPL/src/stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_SmartCardNACKCmd$239 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_SmartCardNACKCmd$240 ==.
	Sstm8s_uart1$UART1_SmartCardNACKCmd$241 ==.
;	../SPL/src/stm8s_uart1.c: 406: UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5238, a
	Sstm8s_uart1$UART1_SmartCardNACKCmd$242 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_SmartCardNACKCmd$243 ==.
;	../SPL/src/stm8s_uart1.c: 408: }
; genEndFunction
	Sstm8s_uart1$UART1_SmartCardNACKCmd$244 ==.
	XG$UART1_SmartCardNACKCmd$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SmartCardNACKCmd$245 ==.
	Sstm8s_uart1$UART1_WakeUpConfig$246 ==.
;	../SPL/src/stm8s_uart1.c: 416: void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
; genLabel
;	-----------------------------------------
;	 function UART1_WakeUpConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_WakeUpConfig:
	Sstm8s_uart1$UART1_WakeUpConfig$247 ==.
	Sstm8s_uart1$UART1_WakeUpConfig$248 ==.
;	../SPL/src/stm8s_uart1.c: 420: UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_WakeUpConfig$249 ==.
;	../SPL/src/stm8s_uart1.c: 421: UART1->CR1 |= (uint8_t)UART1_WakeUp;
; genPointerGet
	ld	a, 0x5234
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5234, a
; genLabel
00101$:
	Sstm8s_uart1$UART1_WakeUpConfig$250 ==.
;	../SPL/src/stm8s_uart1.c: 422: }
; genEndFunction
	Sstm8s_uart1$UART1_WakeUpConfig$251 ==.
	XG$UART1_WakeUpConfig$0$0 ==.
	ret
	Sstm8s_uart1$UART1_WakeUpConfig$252 ==.
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253 ==.
;	../SPL/src/stm8s_uart1.c: 430: void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_ReceiverWakeUpCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_ReceiverWakeUpCmd:
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254 ==.
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255 ==.
;	../SPL/src/stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
; genPointerGet
	ld	a, 0x5235
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256 ==.
;	../SPL/src/stm8s_uart1.c: 434: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$257 ==.
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258 ==.
;	../SPL/src/stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$259 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$260 ==.
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261 ==.
;	../SPL/src/stm8s_uart1.c: 442: UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5235, a
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$262 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263 ==.
;	../SPL/src/stm8s_uart1.c: 444: }
; genEndFunction
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$264 ==.
	XG$UART1_ReceiverWakeUpCmd$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265 ==.
	Sstm8s_uart1$UART1_ReceiveData8$266 ==.
;	../SPL/src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
; genLabel
;	-----------------------------------------
;	 function UART1_ReceiveData8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_ReceiveData8:
	Sstm8s_uart1$UART1_ReceiveData8$267 ==.
	Sstm8s_uart1$UART1_ReceiveData8$268 ==.
;	../SPL/src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
; genPointerGet
	ld	a, 0x5231
; genReturn
; genLabel
00101$:
	Sstm8s_uart1$UART1_ReceiveData8$269 ==.
;	../SPL/src/stm8s_uart1.c: 454: }
; genEndFunction
	Sstm8s_uart1$UART1_ReceiveData8$270 ==.
	XG$UART1_ReceiveData8$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ReceiveData8$271 ==.
	Sstm8s_uart1$UART1_ReceiveData9$272 ==.
;	../SPL/src/stm8s_uart1.c: 461: uint16_t UART1_ReceiveData9(void)
; genLabel
;	-----------------------------------------
;	 function UART1_ReceiveData9
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_UART1_ReceiveData9:
	Sstm8s_uart1$UART1_ReceiveData9$273 ==.
	pushw	x
	Sstm8s_uart1$UART1_ReceiveData9$274 ==.
	Sstm8s_uart1$UART1_ReceiveData9$275 ==.
;	../SPL/src/stm8s_uart1.c: 465: temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
; genPointerGet
	ld	a, 0x5234
; genCast
; genAssign
	clrw	x
; genAnd
	and	a, #0x80
	ld	xl, a
	clr	a
; genLeftShiftLiteral
	ld	xh, a
	sllw	x
; genAssign
	ldw	(0x01, sp), x
	Sstm8s_uart1$UART1_ReceiveData9$276 ==.
;	../SPL/src/stm8s_uart1.c: 466: return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
; genPointerGet
	ld	a, 0x5231
; genCast
; genAssign
	clrw	x
; genOr
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x01, sp)
; genAnd
	and	a, #0x01
	ld	xh, a
; genReturn
; genLabel
00101$:
	Sstm8s_uart1$UART1_ReceiveData9$277 ==.
;	../SPL/src/stm8s_uart1.c: 467: }
; genEndFunction
	addw	sp, #2
	Sstm8s_uart1$UART1_ReceiveData9$278 ==.
	Sstm8s_uart1$UART1_ReceiveData9$279 ==.
	XG$UART1_ReceiveData9$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ReceiveData9$280 ==.
	Sstm8s_uart1$UART1_SendData8$281 ==.
;	../SPL/src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function UART1_SendData8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SendData8:
	Sstm8s_uart1$UART1_SendData8$282 ==.
	Sstm8s_uart1$UART1_SendData8$283 ==.
;	../SPL/src/stm8s_uart1.c: 477: UART1->DR = Data;
; genPointerSet
	ldw	x, #0x5231
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
	Sstm8s_uart1$UART1_SendData8$284 ==.
;	../SPL/src/stm8s_uart1.c: 478: }
; genEndFunction
	Sstm8s_uart1$UART1_SendData8$285 ==.
	XG$UART1_SendData8$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SendData8$286 ==.
	Sstm8s_uart1$UART1_SendData9$287 ==.
;	../SPL/src/stm8s_uart1.c: 486: void UART1_SendData9(uint16_t Data)
; genLabel
;	-----------------------------------------
;	 function UART1_SendData9
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_UART1_SendData9:
	Sstm8s_uart1$UART1_SendData9$288 ==.
	push	a
	Sstm8s_uart1$UART1_SendData9$289 ==.
	Sstm8s_uart1$UART1_SendData9$290 ==.
;	../SPL/src/stm8s_uart1.c: 489: UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_SendData9$291 ==.
;	../SPL/src/stm8s_uart1.c: 491: UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
; genPointerGet
	ld	a, 0x5234
	ld	(0x01, sp), a
; genRightShiftLiteral
	ldw	x, (0x04, sp)
	srlw	x
	srlw	x
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, #0x40
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5234, a
	Sstm8s_uart1$UART1_SendData9$292 ==.
;	../SPL/src/stm8s_uart1.c: 493: UART1->DR   = (uint8_t)(Data);
; genCast
; genAssign
	ld	a, (0x05, sp)
; genPointerSet
	ld	0x5231, a
; genLabel
00101$:
	Sstm8s_uart1$UART1_SendData9$293 ==.
;	../SPL/src/stm8s_uart1.c: 494: }
; genEndFunction
	pop	a
	Sstm8s_uart1$UART1_SendData9$294 ==.
	Sstm8s_uart1$UART1_SendData9$295 ==.
	XG$UART1_SendData9$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SendData9$296 ==.
	Sstm8s_uart1$UART1_SendBreak$297 ==.
;	../SPL/src/stm8s_uart1.c: 501: void UART1_SendBreak(void)
; genLabel
;	-----------------------------------------
;	 function UART1_SendBreak
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SendBreak:
	Sstm8s_uart1$UART1_SendBreak$298 ==.
	Sstm8s_uart1$UART1_SendBreak$299 ==.
;	../SPL/src/stm8s_uart1.c: 503: UART1->CR2 |= UART1_CR2_SBK;
; genPointerGet
	ld	a, 0x5235
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5235, a
; genLabel
00101$:
	Sstm8s_uart1$UART1_SendBreak$300 ==.
;	../SPL/src/stm8s_uart1.c: 504: }
; genEndFunction
	Sstm8s_uart1$UART1_SendBreak$301 ==.
	XG$UART1_SendBreak$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SendBreak$302 ==.
	Sstm8s_uart1$UART1_SetAddress$303 ==.
;	../SPL/src/stm8s_uart1.c: 511: void UART1_SetAddress(uint8_t UART1_Address)
; genLabel
;	-----------------------------------------
;	 function UART1_SetAddress
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SetAddress:
	Sstm8s_uart1$UART1_SetAddress$304 ==.
	Sstm8s_uart1$UART1_SetAddress$305 ==.
;	../SPL/src/stm8s_uart1.c: 517: UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5237, a
	Sstm8s_uart1$UART1_SetAddress$306 ==.
;	../SPL/src/stm8s_uart1.c: 519: UART1->CR4 |= UART1_Address;
; genPointerGet
	ld	a, 0x5237
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5237, a
; genLabel
00101$:
	Sstm8s_uart1$UART1_SetAddress$307 ==.
;	../SPL/src/stm8s_uart1.c: 520: }
; genEndFunction
	Sstm8s_uart1$UART1_SetAddress$308 ==.
	XG$UART1_SetAddress$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SetAddress$309 ==.
	Sstm8s_uart1$UART1_SetGuardTime$310 ==.
;	../SPL/src/stm8s_uart1.c: 528: void UART1_SetGuardTime(uint8_t UART1_GuardTime)
; genLabel
;	-----------------------------------------
;	 function UART1_SetGuardTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SetGuardTime:
	Sstm8s_uart1$UART1_SetGuardTime$311 ==.
	Sstm8s_uart1$UART1_SetGuardTime$312 ==.
;	../SPL/src/stm8s_uart1.c: 531: UART1->GTR = UART1_GuardTime;
; genPointerSet
	ldw	x, #0x5239
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
	Sstm8s_uart1$UART1_SetGuardTime$313 ==.
;	../SPL/src/stm8s_uart1.c: 532: }
; genEndFunction
	Sstm8s_uart1$UART1_SetGuardTime$314 ==.
	XG$UART1_SetGuardTime$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SetGuardTime$315 ==.
	Sstm8s_uart1$UART1_SetPrescaler$316 ==.
;	../SPL/src/stm8s_uart1.c: 556: void UART1_SetPrescaler(uint8_t UART1_Prescaler)
; genLabel
;	-----------------------------------------
;	 function UART1_SetPrescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_SetPrescaler:
	Sstm8s_uart1$UART1_SetPrescaler$317 ==.
	Sstm8s_uart1$UART1_SetPrescaler$318 ==.
;	../SPL/src/stm8s_uart1.c: 559: UART1->PSCR = UART1_Prescaler;
; genPointerSet
	ldw	x, #0x523a
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
	Sstm8s_uart1$UART1_SetPrescaler$319 ==.
;	../SPL/src/stm8s_uart1.c: 560: }
; genEndFunction
	Sstm8s_uart1$UART1_SetPrescaler$320 ==.
	XG$UART1_SetPrescaler$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SetPrescaler$321 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$322 ==.
;	../SPL/src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
; genLabel
;	-----------------------------------------
;	 function UART1_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_UART1_GetFlagStatus:
	Sstm8s_uart1$UART1_GetFlagStatus$323 ==.
	sub	sp, #3
	Sstm8s_uart1$UART1_GetFlagStatus$324 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$325 ==.
;	../SPL/src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
; genCast
; genAssign
	ldw	y, (0x06, sp)
	ldw	(0x01, sp), y
	Sstm8s_uart1$UART1_GetFlagStatus$326 ==.
;	../SPL/src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
; genCast
; genAssign
	ld	a, (0x07, sp)
	ld	(0x03, sp), a
	Sstm8s_uart1$UART1_GetFlagStatus$327 ==.
;	../SPL/src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0210
	jrne	00144$
	jp	00145$
00144$:
	jp	00114$
00145$:
	Sstm8s_uart1$UART1_GetFlagStatus$328 ==.
; skipping generated iCode
	Sstm8s_uart1$UART1_GetFlagStatus$329 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$330 ==.
;	../SPL/src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00146$
	jp	00102$
00146$:
	Sstm8s_uart1$UART1_GetFlagStatus$331 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$332 ==.
;	../SPL/src/stm8s_uart1.c: 582: status = SET;
; genAssign
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetFlagStatus$333 ==.
; genGoto
	jp	00115$
; genLabel
00102$:
	Sstm8s_uart1$UART1_GetFlagStatus$334 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$335 ==.
;	../SPL/src/stm8s_uart1.c: 587: status = RESET;
; genAssign
	clr	a
	Sstm8s_uart1$UART1_GetFlagStatus$336 ==.
; genGoto
	jp	00115$
; genLabel
00114$:
	Sstm8s_uart1$UART1_GetFlagStatus$337 ==.
;	../SPL/src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0101
	jrne	00148$
	jp	00149$
00148$:
	jp	00111$
00149$:
	Sstm8s_uart1$UART1_GetFlagStatus$338 ==.
; skipping generated iCode
	Sstm8s_uart1$UART1_GetFlagStatus$339 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$340 ==.
;	../SPL/src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5235
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00150$
	jp	00105$
00150$:
	Sstm8s_uart1$UART1_GetFlagStatus$341 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$342 ==.
;	../SPL/src/stm8s_uart1.c: 595: status = SET;
; genAssign
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetFlagStatus$343 ==.
; genGoto
	jp	00115$
; genLabel
00105$:
	Sstm8s_uart1$UART1_GetFlagStatus$344 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$345 ==.
;	../SPL/src/stm8s_uart1.c: 600: status = RESET;
; genAssign
	clr	a
	Sstm8s_uart1$UART1_GetFlagStatus$346 ==.
; genGoto
	jp	00115$
; genLabel
00111$:
	Sstm8s_uart1$UART1_GetFlagStatus$347 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$348 ==.
;	../SPL/src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5230
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00151$
	jp	00108$
00151$:
	Sstm8s_uart1$UART1_GetFlagStatus$349 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$350 ==.
;	../SPL/src/stm8s_uart1.c: 608: status = SET;
; genAssign
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetFlagStatus$351 ==.
; genGoto
	jp	00115$
; genLabel
00108$:
	Sstm8s_uart1$UART1_GetFlagStatus$352 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$353 ==.
;	../SPL/src/stm8s_uart1.c: 613: status = RESET;
; genAssign
	clr	a
	Sstm8s_uart1$UART1_GetFlagStatus$354 ==.
; genLabel
00115$:
	Sstm8s_uart1$UART1_GetFlagStatus$355 ==.
;	../SPL/src/stm8s_uart1.c: 617: return status;
; genReturn
; genLabel
00116$:
	Sstm8s_uart1$UART1_GetFlagStatus$356 ==.
;	../SPL/src/stm8s_uart1.c: 618: }
; genEndFunction
	addw	sp, #3
	Sstm8s_uart1$UART1_GetFlagStatus$357 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$358 ==.
	XG$UART1_GetFlagStatus$0$0 ==.
	ret
	Sstm8s_uart1$UART1_GetFlagStatus$359 ==.
	Sstm8s_uart1$UART1_ClearFlag$360 ==.
;	../SPL/src/stm8s_uart1.c: 646: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
; genLabel
;	-----------------------------------------
;	 function UART1_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_ClearFlag:
	Sstm8s_uart1$UART1_ClearFlag$361 ==.
	Sstm8s_uart1$UART1_ClearFlag$362 ==.
;	../SPL/src/stm8s_uart1.c: 651: if (UART1_FLAG == UART1_FLAG_RXNE)
; genCast
; genAssign
	ldw	x, (0x03, sp)
; genCmpEQorNE
	cpw	x, #0x0020
	jrne	00112$
	jp	00113$
00112$:
	jp	00102$
00113$:
	Sstm8s_uart1$UART1_ClearFlag$363 ==.
; skipping generated iCode
	Sstm8s_uart1$UART1_ClearFlag$364 ==.
	Sstm8s_uart1$UART1_ClearFlag$365 ==.
;	../SPL/src/stm8s_uart1.c: 653: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
; genPointerSet
	mov	0x5230+0, #0xdf
	Sstm8s_uart1$UART1_ClearFlag$366 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_ClearFlag$367 ==.
	Sstm8s_uart1$UART1_ClearFlag$368 ==.
;	../SPL/src/stm8s_uart1.c: 658: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5237, a
	Sstm8s_uart1$UART1_ClearFlag$369 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_ClearFlag$370 ==.
;	../SPL/src/stm8s_uart1.c: 660: }
; genEndFunction
	Sstm8s_uart1$UART1_ClearFlag$371 ==.
	XG$UART1_ClearFlag$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ClearFlag$372 ==.
	Sstm8s_uart1$UART1_GetITStatus$373 ==.
;	../SPL/src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
; genLabel
;	-----------------------------------------
;	 function UART1_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_UART1_GetITStatus:
	Sstm8s_uart1$UART1_GetITStatus$374 ==.
	sub	sp, #4
	Sstm8s_uart1$UART1_GetITStatus$375 ==.
	Sstm8s_uart1$UART1_GetITStatus$376 ==.
;	../SPL/src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
; genCast
; genAssign
	ld	a, (0x08, sp)
	ld	xl, a
; genAnd
	ld	a, xl
	and	a, #0x0f
; genLeftShift
	push	a
	Sstm8s_uart1$UART1_GetITStatus$377 ==.
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	Sstm8s_uart1$UART1_GetITStatus$378 ==.
	tnz	a
	jreq	00162$
00161$:
	sll	(0x01, sp)
	dec	a
	jrne	00161$
00162$:
	Sstm8s_uart1$UART1_GetITStatus$379 ==.
;	../SPL/src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
; genRightShiftLiteral
	ld	a, xl
	swap	a
	and	a, #0x0f
	Sstm8s_uart1$UART1_GetITStatus$380 ==.
;	../SPL/src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
; genLeftShift
	push	a
	Sstm8s_uart1$UART1_GetITStatus$381 ==.
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	Sstm8s_uart1$UART1_GetITStatus$382 ==.
	tnz	a
	jreq	00164$
00163$:
	sll	(0x02, sp)
	dec	a
	jrne	00163$
00164$:
	Sstm8s_uart1$UART1_GetITStatus$383 ==.
;	../SPL/src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
; genCast
; genAssign
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
; genCmpEQorNE
	ldw	x, (0x03, sp)
	cpw	x, #0x0100
	jrne	00166$
	jp	00167$
00166$:
	jp	00117$
00167$:
	Sstm8s_uart1$UART1_GetITStatus$384 ==.
; skipping generated iCode
	Sstm8s_uart1$UART1_GetITStatus$385 ==.
	Sstm8s_uart1$UART1_GetITStatus$386 ==.
;	../SPL/src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_uart1$UART1_GetITStatus$387 ==.
;	../SPL/src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5230
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00168$
	jp	00102$
00168$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00169$
	jp	00102$
00169$:
	Sstm8s_uart1$UART1_GetITStatus$388 ==.
	Sstm8s_uart1$UART1_GetITStatus$389 ==.
;	../SPL/src/stm8s_uart1.c: 704: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetITStatus$390 ==.
; genGoto
	jp	00118$
; genLabel
00102$:
	Sstm8s_uart1$UART1_GetITStatus$391 ==.
	Sstm8s_uart1$UART1_GetITStatus$392 ==.
;	../SPL/src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
; genAssign
	clr	a
	Sstm8s_uart1$UART1_GetITStatus$393 ==.
; genGoto
	jp	00118$
; genLabel
00117$:
	Sstm8s_uart1$UART1_GetITStatus$394 ==.
;	../SPL/src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
; genCmpEQorNE
	ldw	x, (0x03, sp)
	cpw	x, #0x0346
	jrne	00171$
	jp	00172$
00171$:
	jp	00114$
00172$:
	Sstm8s_uart1$UART1_GetITStatus$395 ==.
; skipping generated iCode
	Sstm8s_uart1$UART1_GetITStatus$396 ==.
	Sstm8s_uart1$UART1_GetITStatus$397 ==.
;	../SPL/src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, (0x02, sp)
; genAssign
	ld	xl, a
	Sstm8s_uart1$UART1_GetITStatus$398 ==.
;	../SPL/src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00173$
	jp	00106$
00173$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00174$
	jp	00106$
00174$:
	Sstm8s_uart1$UART1_GetITStatus$399 ==.
	Sstm8s_uart1$UART1_GetITStatus$400 ==.
;	../SPL/src/stm8s_uart1.c: 721: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetITStatus$401 ==.
; genGoto
	jp	00118$
; genLabel
00106$:
	Sstm8s_uart1$UART1_GetITStatus$402 ==.
	Sstm8s_uart1$UART1_GetITStatus$403 ==.
;	../SPL/src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
; genAssign
	clr	a
	Sstm8s_uart1$UART1_GetITStatus$404 ==.
; genGoto
	jp	00118$
; genLabel
00114$:
	Sstm8s_uart1$UART1_GetITStatus$405 ==.
	Sstm8s_uart1$UART1_GetITStatus$406 ==.
;	../SPL/src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
; genPointerGet
	ld	a, 0x5235
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_uart1$UART1_GetITStatus$407 ==.
;	../SPL/src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5230
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00175$
	jp	00110$
00175$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00176$
	jp	00110$
00176$:
	Sstm8s_uart1$UART1_GetITStatus$408 ==.
	Sstm8s_uart1$UART1_GetITStatus$409 ==.
;	../SPL/src/stm8s_uart1.c: 737: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetITStatus$410 ==.
; genGoto
	jp	00118$
; genLabel
00110$:
	Sstm8s_uart1$UART1_GetITStatus$411 ==.
	Sstm8s_uart1$UART1_GetITStatus$412 ==.
;	../SPL/src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
; genAssign
	clr	a
	Sstm8s_uart1$UART1_GetITStatus$413 ==.
; genLabel
00118$:
	Sstm8s_uart1$UART1_GetITStatus$414 ==.
;	../SPL/src/stm8s_uart1.c: 747: return  pendingbitstatus;
; genReturn
; genLabel
00119$:
	Sstm8s_uart1$UART1_GetITStatus$415 ==.
;	../SPL/src/stm8s_uart1.c: 748: }
; genEndFunction
	addw	sp, #4
	Sstm8s_uart1$UART1_GetITStatus$416 ==.
	Sstm8s_uart1$UART1_GetITStatus$417 ==.
	XG$UART1_GetITStatus$0$0 ==.
	ret
	Sstm8s_uart1$UART1_GetITStatus$418 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$419 ==.
;	../SPL/src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
; genLabel
;	-----------------------------------------
;	 function UART1_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_ClearITPendingBit:
	Sstm8s_uart1$UART1_ClearITPendingBit$420 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$421 ==.
;	../SPL/src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
; genCast
; genAssign
	ldw	x, (0x03, sp)
; genCmpEQorNE
	cpw	x, #0x0255
	jrne	00112$
	jp	00113$
00112$:
	jp	00102$
00113$:
	Sstm8s_uart1$UART1_ClearITPendingBit$422 ==.
; skipping generated iCode
	Sstm8s_uart1$UART1_ClearITPendingBit$423 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$424 ==.
;	../SPL/src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
; genPointerSet
	mov	0x5230+0, #0xdf
	Sstm8s_uart1$UART1_ClearITPendingBit$425 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_uart1$UART1_ClearITPendingBit$426 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$427 ==.
;	../SPL/src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5237, a
	Sstm8s_uart1$UART1_ClearITPendingBit$428 ==.
; genLabel
00104$:
	Sstm8s_uart1$UART1_ClearITPendingBit$429 ==.
;	../SPL/src/stm8s_uart1.c: 789: }
; genEndFunction
	Sstm8s_uart1$UART1_ClearITPendingBit$430 ==.
	XG$UART1_ClearITPendingBit$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ClearITPendingBit$431 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
	.db	0
	.ascii "C:\Program Files\SDCC\bin\..\include"
	.db	0
	.db	0
	.ascii "../SPL/src/stm8s_uart1.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_DeInit$0)
	.db	3
	.sleb128	52
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$2-Sstm8s_uart1$UART1_DeInit$0
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$3-Sstm8s_uart1$UART1_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$4-Sstm8s_uart1$UART1_DeInit$3
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$5-Sstm8s_uart1$UART1_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$6-Sstm8s_uart1$UART1_DeInit$5
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$7-Sstm8s_uart1$UART1_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$8-Sstm8s_uart1$UART1_DeInit$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$9-Sstm8s_uart1$UART1_DeInit$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$10-Sstm8s_uart1$UART1_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$11-Sstm8s_uart1$UART1_DeInit$10
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$12-Sstm8s_uart1$UART1_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$13-Sstm8s_uart1$UART1_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_DeInit$14-Sstm8s_uart1$UART1_DeInit$13
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_Init$16)
	.db	3
	.sleb128	89
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$19-Sstm8s_uart1$UART1_Init$16
	.db	3
	.sleb128	15
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$20-Sstm8s_uart1$UART1_Init$19
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$21-Sstm8s_uart1$UART1_Init$20
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$22-Sstm8s_uart1$UART1_Init$21
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$23-Sstm8s_uart1$UART1_Init$22
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$24-Sstm8s_uart1$UART1_Init$23
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$25-Sstm8s_uart1$UART1_Init$24
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$26-Sstm8s_uart1$UART1_Init$25
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$27-Sstm8s_uart1$UART1_Init$26
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$28-Sstm8s_uart1$UART1_Init$27
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$34-Sstm8s_uart1$UART1_Init$28
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$46-Sstm8s_uart1$UART1_Init$34
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$60-Sstm8s_uart1$UART1_Init$46
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$61-Sstm8s_uart1$UART1_Init$60
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$62-Sstm8s_uart1$UART1_Init$61
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$63-Sstm8s_uart1$UART1_Init$62
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$64-Sstm8s_uart1$UART1_Init$63
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$65-Sstm8s_uart1$UART1_Init$64
	.db	3
	.sleb128	-4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$66-Sstm8s_uart1$UART1_Init$65
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$70-Sstm8s_uart1$UART1_Init$66
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$73-Sstm8s_uart1$UART1_Init$70
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$75-Sstm8s_uart1$UART1_Init$73
	.db	3
	.sleb128	-15
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$76-Sstm8s_uart1$UART1_Init$75
	.db	3
	.sleb128	17
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$80-Sstm8s_uart1$UART1_Init$76
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$83-Sstm8s_uart1$UART1_Init$80
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$85-Sstm8s_uart1$UART1_Init$83
	.db	3
	.sleb128	-52
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$86-Sstm8s_uart1$UART1_Init$85
	.db	3
	.sleb128	56
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$88-Sstm8s_uart1$UART1_Init$86
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$91-Sstm8s_uart1$UART1_Init$88
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$95-Sstm8s_uart1$UART1_Init$91
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_Init$97-Sstm8s_uart1$UART1_Init$95
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_Cmd$99)
	.db	3
	.sleb128	183
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$101-Sstm8s_uart1$UART1_Cmd$99
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$102-Sstm8s_uart1$UART1_Cmd$101
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$104-Sstm8s_uart1$UART1_Cmd$102
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$107-Sstm8s_uart1$UART1_Cmd$104
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$109-Sstm8s_uart1$UART1_Cmd$107
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_Cmd$110-Sstm8s_uart1$UART1_Cmd$109
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$112)
	.db	3
	.sleb128	210
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$115-Sstm8s_uart1$UART1_ITConfig$112
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$116-Sstm8s_uart1$UART1_ITConfig$115
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$119-Sstm8s_uart1$UART1_ITConfig$116
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$121-Sstm8s_uart1$UART1_ITConfig$119
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$123-Sstm8s_uart1$UART1_ITConfig$121
	.db	3
	.sleb128	-7
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$125-Sstm8s_uart1$UART1_ITConfig$123
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$127-Sstm8s_uart1$UART1_ITConfig$125
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$129-Sstm8s_uart1$UART1_ITConfig$127
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$131-Sstm8s_uart1$UART1_ITConfig$129
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$134-Sstm8s_uart1$UART1_ITConfig$131
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$136-Sstm8s_uart1$UART1_ITConfig$134
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$140-Sstm8s_uart1$UART1_ITConfig$136
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$142-Sstm8s_uart1$UART1_ITConfig$140
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$144-Sstm8s_uart1$UART1_ITConfig$142
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$146-Sstm8s_uart1$UART1_ITConfig$144
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$149-Sstm8s_uart1$UART1_ITConfig$146
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$151-Sstm8s_uart1$UART1_ITConfig$149
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ITConfig$153-Sstm8s_uart1$UART1_ITConfig$151
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$155)
	.db	3
	.sleb128	264
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$157-Sstm8s_uart1$UART1_HalfDuplexCmd$155
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$158-Sstm8s_uart1$UART1_HalfDuplexCmd$157
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$160-Sstm8s_uart1$UART1_HalfDuplexCmd$158
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$163-Sstm8s_uart1$UART1_HalfDuplexCmd$160
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_HalfDuplexCmd$165-Sstm8s_uart1$UART1_HalfDuplexCmd$163
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_HalfDuplexCmd$166-Sstm8s_uart1$UART1_HalfDuplexCmd$165
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$168)
	.db	3
	.sleb128	284
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDAConfig$170-Sstm8s_uart1$UART1_IrDAConfig$168
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDAConfig$171-Sstm8s_uart1$UART1_IrDAConfig$170
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDAConfig$173-Sstm8s_uart1$UART1_IrDAConfig$171
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDAConfig$176-Sstm8s_uart1$UART1_IrDAConfig$173
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDAConfig$178-Sstm8s_uart1$UART1_IrDAConfig$176
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_IrDAConfig$179-Sstm8s_uart1$UART1_IrDAConfig$178
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$181)
	.db	3
	.sleb128	304
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDACmd$183-Sstm8s_uart1$UART1_IrDACmd$181
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDACmd$184-Sstm8s_uart1$UART1_IrDACmd$183
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDACmd$186-Sstm8s_uart1$UART1_IrDACmd$184
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDACmd$189-Sstm8s_uart1$UART1_IrDACmd$186
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_IrDACmd$191-Sstm8s_uart1$UART1_IrDACmd$189
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_IrDACmd$192-Sstm8s_uart1$UART1_IrDACmd$191
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$194)
	.db	3
	.sleb128	328
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$196-Sstm8s_uart1$UART1_LINBreakDetectionConfig$194
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$197-Sstm8s_uart1$UART1_LINBreakDetectionConfig$196
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$199-Sstm8s_uart1$UART1_LINBreakDetectionConfig$197
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$202-Sstm8s_uart1$UART1_LINBreakDetectionConfig$199
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINBreakDetectionConfig$204-Sstm8s_uart1$UART1_LINBreakDetectionConfig$202
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_LINBreakDetectionConfig$205-Sstm8s_uart1$UART1_LINBreakDetectionConfig$204
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$207)
	.db	3
	.sleb128	348
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINCmd$209-Sstm8s_uart1$UART1_LINCmd$207
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINCmd$210-Sstm8s_uart1$UART1_LINCmd$209
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINCmd$212-Sstm8s_uart1$UART1_LINCmd$210
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINCmd$215-Sstm8s_uart1$UART1_LINCmd$212
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_LINCmd$217-Sstm8s_uart1$UART1_LINCmd$215
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_LINCmd$218-Sstm8s_uart1$UART1_LINCmd$217
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$220)
	.db	3
	.sleb128	370
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardCmd$222-Sstm8s_uart1$UART1_SmartCardCmd$220
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardCmd$223-Sstm8s_uart1$UART1_SmartCardCmd$222
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardCmd$225-Sstm8s_uart1$UART1_SmartCardCmd$223
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardCmd$228-Sstm8s_uart1$UART1_SmartCardCmd$225
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardCmd$230-Sstm8s_uart1$UART1_SmartCardCmd$228
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SmartCardCmd$231-Sstm8s_uart1$UART1_SmartCardCmd$230
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$233)
	.db	3
	.sleb128	393
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$235-Sstm8s_uart1$UART1_SmartCardNACKCmd$233
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$236-Sstm8s_uart1$UART1_SmartCardNACKCmd$235
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$238-Sstm8s_uart1$UART1_SmartCardNACKCmd$236
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$241-Sstm8s_uart1$UART1_SmartCardNACKCmd$238
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SmartCardNACKCmd$243-Sstm8s_uart1$UART1_SmartCardNACKCmd$241
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SmartCardNACKCmd$244-Sstm8s_uart1$UART1_SmartCardNACKCmd$243
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$246)
	.db	3
	.sleb128	415
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_WakeUpConfig$248-Sstm8s_uart1$UART1_WakeUpConfig$246
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_WakeUpConfig$249-Sstm8s_uart1$UART1_WakeUpConfig$248
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_WakeUpConfig$250-Sstm8s_uart1$UART1_WakeUpConfig$249
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_WakeUpConfig$251-Sstm8s_uart1$UART1_WakeUpConfig$250
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253)
	.db	3
	.sleb128	429
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$253
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$255
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$256
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$258
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$261
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ReceiverWakeUpCmd$264-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$263
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$266)
	.db	3
	.sleb128	450
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiveData8$268-Sstm8s_uart1$UART1_ReceiveData8$266
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiveData8$269-Sstm8s_uart1$UART1_ReceiveData8$268
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ReceiveData8$270-Sstm8s_uart1$UART1_ReceiveData8$269
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$272)
	.db	3
	.sleb128	460
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiveData9$275-Sstm8s_uart1$UART1_ReceiveData9$272
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiveData9$276-Sstm8s_uart1$UART1_ReceiveData9$275
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiveData9$277-Sstm8s_uart1$UART1_ReceiveData9$276
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ReceiveData9$279-Sstm8s_uart1$UART1_ReceiveData9$277
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SendData8$281)
	.db	3
	.sleb128	473
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendData8$283-Sstm8s_uart1$UART1_SendData8$281
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendData8$284-Sstm8s_uart1$UART1_SendData8$283
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SendData8$285-Sstm8s_uart1$UART1_SendData8$284
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SendData9$287)
	.db	3
	.sleb128	485
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendData9$290-Sstm8s_uart1$UART1_SendData9$287
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendData9$291-Sstm8s_uart1$UART1_SendData9$290
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendData9$292-Sstm8s_uart1$UART1_SendData9$291
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendData9$293-Sstm8s_uart1$UART1_SendData9$292
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SendData9$295-Sstm8s_uart1$UART1_SendData9$293
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SendBreak$297)
	.db	3
	.sleb128	500
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendBreak$299-Sstm8s_uart1$UART1_SendBreak$297
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendBreak$300-Sstm8s_uart1$UART1_SendBreak$299
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SendBreak$301-Sstm8s_uart1$UART1_SendBreak$300
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SetAddress$303)
	.db	3
	.sleb128	510
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SetAddress$305-Sstm8s_uart1$UART1_SetAddress$303
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SetAddress$306-Sstm8s_uart1$UART1_SetAddress$305
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SetAddress$307-Sstm8s_uart1$UART1_SetAddress$306
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SetAddress$308-Sstm8s_uart1$UART1_SetAddress$307
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$310)
	.db	3
	.sleb128	527
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SetGuardTime$312-Sstm8s_uart1$UART1_SetGuardTime$310
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SetGuardTime$313-Sstm8s_uart1$UART1_SetGuardTime$312
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SetGuardTime$314-Sstm8s_uart1$UART1_SetGuardTime$313
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$316)
	.db	3
	.sleb128	555
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SetPrescaler$318-Sstm8s_uart1$UART1_SetPrescaler$316
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SetPrescaler$319-Sstm8s_uart1$UART1_SetPrescaler$318
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SetPrescaler$320-Sstm8s_uart1$UART1_SetPrescaler$319
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$322)
	.db	3
	.sleb128	567
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$325-Sstm8s_uart1$UART1_GetFlagStatus$322
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$326-Sstm8s_uart1$UART1_GetFlagStatus$325
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$327-Sstm8s_uart1$UART1_GetFlagStatus$326
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$330-Sstm8s_uart1$UART1_GetFlagStatus$327
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$332-Sstm8s_uart1$UART1_GetFlagStatus$330
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$335-Sstm8s_uart1$UART1_GetFlagStatus$332
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$337-Sstm8s_uart1$UART1_GetFlagStatus$335
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$340-Sstm8s_uart1$UART1_GetFlagStatus$337
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$342-Sstm8s_uart1$UART1_GetFlagStatus$340
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$345-Sstm8s_uart1$UART1_GetFlagStatus$342
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$348-Sstm8s_uart1$UART1_GetFlagStatus$345
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$350-Sstm8s_uart1$UART1_GetFlagStatus$348
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$353-Sstm8s_uart1$UART1_GetFlagStatus$350
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$355-Sstm8s_uart1$UART1_GetFlagStatus$353
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$356-Sstm8s_uart1$UART1_GetFlagStatus$355
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_GetFlagStatus$358-Sstm8s_uart1$UART1_GetFlagStatus$356
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$360)
	.db	3
	.sleb128	645
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearFlag$362-Sstm8s_uart1$UART1_ClearFlag$360
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearFlag$365-Sstm8s_uart1$UART1_ClearFlag$362
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearFlag$368-Sstm8s_uart1$UART1_ClearFlag$365
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearFlag$370-Sstm8s_uart1$UART1_ClearFlag$368
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ClearFlag$371-Sstm8s_uart1$UART1_ClearFlag$370
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$373)
	.db	3
	.sleb128	674
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$376-Sstm8s_uart1$UART1_GetITStatus$373
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$379-Sstm8s_uart1$UART1_GetITStatus$376
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$380-Sstm8s_uart1$UART1_GetITStatus$379
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$383-Sstm8s_uart1$UART1_GetITStatus$380
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$386-Sstm8s_uart1$UART1_GetITStatus$383
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$387-Sstm8s_uart1$UART1_GetITStatus$386
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$389-Sstm8s_uart1$UART1_GetITStatus$387
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$392-Sstm8s_uart1$UART1_GetITStatus$389
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$394-Sstm8s_uart1$UART1_GetITStatus$392
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$397-Sstm8s_uart1$UART1_GetITStatus$394
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$398-Sstm8s_uart1$UART1_GetITStatus$397
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$400-Sstm8s_uart1$UART1_GetITStatus$398
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$403-Sstm8s_uart1$UART1_GetITStatus$400
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$406-Sstm8s_uart1$UART1_GetITStatus$403
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$407-Sstm8s_uart1$UART1_GetITStatus$406
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$409-Sstm8s_uart1$UART1_GetITStatus$407
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$412-Sstm8s_uart1$UART1_GetITStatus$409
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$414-Sstm8s_uart1$UART1_GetITStatus$412
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$415-Sstm8s_uart1$UART1_GetITStatus$414
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_GetITStatus$417-Sstm8s_uart1$UART1_GetITStatus$415
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$419)
	.db	3
	.sleb128	774
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$421-Sstm8s_uart1$UART1_ClearITPendingBit$419
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$424-Sstm8s_uart1$UART1_ClearITPendingBit$421
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$427-Sstm8s_uart1$UART1_ClearITPendingBit$424
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$429-Sstm8s_uart1$UART1_ClearITPendingBit$427
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ClearITPendingBit$430-Sstm8s_uart1$UART1_ClearITPendingBit$429
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$431)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$418)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$372)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$359)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)
	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$321)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)
	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$315)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)
	.dw	0,(Sstm8s_uart1$UART1_SetAddress$309)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)
	.dw	0,(Sstm8s_uart1$UART1_SendBreak$302)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
	.dw	0,(Sstm8s_uart1$UART1_SendData9$296)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)
	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)
	.dw	0,(Sstm8s_uart1$UART1_SendData8$286)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$280)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$271)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)
	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$252)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$245)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$232)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$219)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$206)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$193)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$180)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$167)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$154)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
	.dw	0,(Sstm8s_uart1$UART1_Cmd$111)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_Init$96)
	.dw	0,(Sstm8s_uart1$UART1_Init$98)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_Init$93)
	.dw	0,(Sstm8s_uart1$UART1_Init$96)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$92)
	.dw	0,(Sstm8s_uart1$UART1_Init$93)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sstm8s_uart1$UART1_Init$78)
	.dw	0,(Sstm8s_uart1$UART1_Init$92)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$77)
	.dw	0,(Sstm8s_uart1$UART1_Init$78)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sstm8s_uart1$UART1_Init$68)
	.dw	0,(Sstm8s_uart1$UART1_Init$77)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$67)
	.dw	0,(Sstm8s_uart1$UART1_Init$68)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sstm8s_uart1$UART1_Init$59)
	.dw	0,(Sstm8s_uart1$UART1_Init$67)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$58)
	.dw	0,(Sstm8s_uart1$UART1_Init$59)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$57)
	.dw	0,(Sstm8s_uart1$UART1_Init$58)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sstm8s_uart1$UART1_Init$56)
	.dw	0,(Sstm8s_uart1$UART1_Init$57)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$55)
	.dw	0,(Sstm8s_uart1$UART1_Init$56)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Sstm8s_uart1$UART1_Init$54)
	.dw	0,(Sstm8s_uart1$UART1_Init$55)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$53)
	.dw	0,(Sstm8s_uart1$UART1_Init$54)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sstm8s_uart1$UART1_Init$52)
	.dw	0,(Sstm8s_uart1$UART1_Init$53)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$51)
	.dw	0,(Sstm8s_uart1$UART1_Init$52)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$50)
	.dw	0,(Sstm8s_uart1$UART1_Init$51)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sstm8s_uart1$UART1_Init$49)
	.dw	0,(Sstm8s_uart1$UART1_Init$50)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sstm8s_uart1$UART1_Init$48)
	.dw	0,(Sstm8s_uart1$UART1_Init$49)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$47)
	.dw	0,(Sstm8s_uart1$UART1_Init$48)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$45)
	.dw	0,(Sstm8s_uart1$UART1_Init$47)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$44)
	.dw	0,(Sstm8s_uart1$UART1_Init$45)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$43)
	.dw	0,(Sstm8s_uart1$UART1_Init$44)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sstm8s_uart1$UART1_Init$42)
	.dw	0,(Sstm8s_uart1$UART1_Init$43)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$41)
	.dw	0,(Sstm8s_uart1$UART1_Init$42)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$40)
	.dw	0,(Sstm8s_uart1$UART1_Init$41)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$39)
	.dw	0,(Sstm8s_uart1$UART1_Init$40)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$38)
	.dw	0,(Sstm8s_uart1$UART1_Init$39)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sstm8s_uart1$UART1_Init$37)
	.dw	0,(Sstm8s_uart1$UART1_Init$38)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sstm8s_uart1$UART1_Init$36)
	.dw	0,(Sstm8s_uart1$UART1_Init$37)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$35)
	.dw	0,(Sstm8s_uart1$UART1_Init$36)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$33)
	.dw	0,(Sstm8s_uart1$UART1_Init$35)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$32)
	.dw	0,(Sstm8s_uart1$UART1_Init$33)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$31)
	.dw	0,(Sstm8s_uart1$UART1_Init$32)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sstm8s_uart1$UART1_Init$30)
	.dw	0,(Sstm8s_uart1$UART1_Init$31)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$29)
	.dw	0,(Sstm8s_uart1$UART1_Init$30)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$18)
	.dw	0,(Sstm8s_uart1$UART1_Init$29)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$17)
	.dw	0,(Sstm8s_uart1$UART1_Init$18)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
	.dw	0,(Sstm8s_uart1$UART1_DeInit$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	9
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.uleb128	46
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "../SPL/src/stm8s_uart1.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "UART1_DeInit"
	.db	0
	.dw	0,(_UART1_DeInit)
	.dw	0,(XG$UART1_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1236)
	.uleb128	3
	.dw	0,332
	.ascii "UART1_Init"
	.db	0
	.dw	0,(_UART1_Init)
	.dw	0,(XG$UART1_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+772)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "BaudRate"
	.db	0
	.dw	0,332
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "WordLength"
	.db	0
	.dw	0,349
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "StopBits"
	.db	0
	.dw	0,349
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "Parity"
	.db	0
	.dw	0,349
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "SyncMode"
	.db	0
	.dw	0,349
	.uleb128	4
	.db	2
	.db	145
	.sleb128	10
	.ascii "Mode"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$69)
	.dw	0,(Sstm8s_uart1$UART1_Init$71)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$72)
	.dw	0,(Sstm8s_uart1$UART1_Init$74)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$79)
	.dw	0,(Sstm8s_uart1$UART1_Init$81)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$82)
	.dw	0,(Sstm8s_uart1$UART1_Init$84)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$87)
	.dw	0,(Sstm8s_uart1$UART1_Init$89)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$90)
	.dw	0,(Sstm8s_uart1$UART1_Init$94)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-17
	.ascii "BaudRate_Mantissa"
	.db	0
	.dw	0,332
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-13
	.ascii "BaudRate_Mantissa100"
	.db	0
	.dw	0,332
	.uleb128	0
	.uleb128	7
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	7
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,430
	.ascii "UART1_Cmd"
	.db	0
	.dw	0,(_UART1_Cmd)
	.dw	0,(XG$UART1_Cmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+752)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Cmd$103)
	.dw	0,(Sstm8s_uart1$UART1_Cmd$105)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Cmd$106)
	.dw	0,(Sstm8s_uart1$UART1_Cmd$108)
	.uleb128	0
	.uleb128	3
	.dw	0,601
	.ascii "UART1_ITConfig"
	.db	0
	.dw	0,(_UART1_ITConfig)
	.dw	0,(XG$UART1_ITConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+636)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_IT"
	.db	0
	.dw	0,601
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,349
	.uleb128	8
	.dw	0,534
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$124)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$126)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$128)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$130)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$132)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$133)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$135)
	.uleb128	0
	.uleb128	8
	.dw	0,571
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$139)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$141)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$143)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$145)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$147)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$148)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
	.uleb128	0
	.uleb128	6
	.db	1
	.db	82
	.ascii "uartreg"
	.db	0
	.dw	0,349
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-1
	.ascii "itpos"
	.db	0
	.dw	0,349
	.uleb128	0
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	3
	.dw	0,691
	.ascii "UART1_HalfDuplexCmd"
	.db	0
	.dw	0,(_UART1_HalfDuplexCmd)
	.dw	0,(XG$UART1_HalfDuplexCmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+616)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$159)
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$161)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$162)
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$164)
	.uleb128	0
	.uleb128	3
	.dw	0,768
	.ascii "UART1_IrDAConfig"
	.db	0
	.dw	0,(_UART1_IrDAConfig)
	.dw	0,(XG$UART1_IrDAConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+596)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_IrDAMode"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$172)
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$174)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$175)
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$177)
	.uleb128	0
	.uleb128	3
	.dw	0,836
	.ascii "UART1_IrDACmd"
	.db	0
	.dw	0,(_UART1_IrDACmd)
	.dw	0,(XG$UART1_IrDACmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+576)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$185)
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$187)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$188)
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$190)
	.uleb128	0
	.uleb128	3
	.dw	0,941
	.ascii "UART1_LINBreakDetectionConfig"
	.db	0
	.dw	0,(_UART1_LINBreakDetectionConfig)
	.dw	0,(XG$UART1_LINBreakDetectionConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+556)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_LINBreakDetectionLength"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$198)
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$200)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$201)
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$203)
	.uleb128	0
	.uleb128	3
	.dw	0,1008
	.ascii "UART1_LINCmd"
	.db	0
	.dw	0,(_UART1_LINCmd)
	.dw	0,(XG$UART1_LINCmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+536)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$211)
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$213)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$214)
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$216)
	.uleb128	0
	.uleb128	3
	.dw	0,1081
	.ascii "UART1_SmartCardCmd"
	.db	0
	.dw	0,(_UART1_SmartCardCmd)
	.dw	0,(XG$UART1_SmartCardCmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+516)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$224)
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$226)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$227)
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$229)
	.uleb128	0
	.uleb128	3
	.dw	0,1158
	.ascii "UART1_SmartCardNACKCmd"
	.db	0
	.dw	0,(_UART1_SmartCardNACKCmd)
	.dw	0,(XG$UART1_SmartCardNACKCmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+496)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$237)
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$239)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$240)
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$242)
	.uleb128	0
	.uleb128	3
	.dw	0,1217
	.ascii "UART1_WakeUpConfig"
	.db	0
	.dw	0,(_UART1_WakeUpConfig)
	.dw	0,(XG$UART1_WakeUpConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+476)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_WakeUp"
	.db	0
	.dw	0,349
	.uleb128	0
	.uleb128	3
	.dw	0,1295
	.ascii "UART1_ReceiverWakeUpCmd"
	.db	0
	.dw	0,(_UART1_ReceiverWakeUpCmd)
	.dw	0,(XG$UART1_ReceiverWakeUpCmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+456)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,349
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$257)
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$259)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$260)
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$262)
	.uleb128	0
	.uleb128	9
	.ascii "UART1_ReceiveData8"
	.db	0
	.dw	0,(_UART1_ReceiveData8)
	.dw	0,(XG$UART1_ReceiveData8$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+436)
	.dw	0,349
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	10
	.dw	0,1403
	.ascii "UART1_ReceiveData9"
	.db	0
	.dw	0,(_UART1_ReceiveData9)
	.dw	0,(XG$UART1_ReceiveData9$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+392)
	.dw	0,1332
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-2
	.ascii "temp"
	.db	0
	.dw	0,1332
	.uleb128	0
	.uleb128	3
	.dw	0,1451
	.ascii "UART1_SendData8"
	.db	0
	.dw	0,(_UART1_SendData8)
	.dw	0,(XG$UART1_SendData8$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+372)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Data"
	.db	0
	.dw	0,349
	.uleb128	0
	.uleb128	3
	.dw	0,1499
	.ascii "UART1_SendData9"
	.db	0
	.dw	0,(_UART1_SendData9)
	.dw	0,(XG$UART1_SendData9$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+328)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Data"
	.db	0
	.dw	0,1332
	.uleb128	0
	.uleb128	2
	.ascii "UART1_SendBreak"
	.db	0
	.dw	0,(_UART1_SendBreak)
	.dw	0,(XG$UART1_SendBreak$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+308)
	.uleb128	3
	.dw	0,1587
	.ascii "UART1_SetAddress"
	.db	0
	.dw	0,(_UART1_SetAddress)
	.dw	0,(XG$UART1_SetAddress$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+288)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_Address"
	.db	0
	.dw	0,349
	.uleb128	0
	.uleb128	3
	.dw	0,1649
	.ascii "UART1_SetGuardTime"
	.db	0
	.dw	0,(_UART1_SetGuardTime)
	.dw	0,(XG$UART1_SetGuardTime$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+268)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_GuardTime"
	.db	0
	.dw	0,349
	.uleb128	0
	.uleb128	3
	.dw	0,1711
	.ascii "UART1_SetPrescaler"
	.db	0
	.dw	0,(_UART1_SetPrescaler)
	.dw	0,(XG$UART1_SetPrescaler$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+248)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_Prescaler"
	.db	0
	.dw	0,349
	.uleb128	0
	.uleb128	10
	.dw	0,1871
	.ascii "UART1_GetFlagStatus"
	.db	0
	.dw	0,(_UART1_GetFlagStatus)
	.dw	0,(XG$UART1_GetFlagStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.dw	0,349
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_FLAG"
	.db	0
	.dw	0,601
	.uleb128	8
	.dw	0,1800
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$329)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$331)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$333)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$334)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$336)
	.uleb128	0
	.uleb128	8
	.dw	0,1828
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$339)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$341)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$343)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$344)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$346)
	.uleb128	0
	.uleb128	8
	.dw	0,1856
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$347)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$349)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$351)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$352)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$354)
	.uleb128	0
	.uleb128	6
	.db	1
	.db	80
	.ascii "status"
	.db	0
	.dw	0,349
	.uleb128	0
	.uleb128	3
	.dw	0,1943
	.ascii "UART1_ClearFlag"
	.db	0
	.dw	0,(_UART1_ClearFlag)
	.dw	0,(XG$UART1_ClearFlag$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+148)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_FLAG"
	.db	0
	.dw	0,601
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$364)
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$366)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$367)
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$369)
	.uleb128	0
	.uleb128	10
	.dw	0,2174
	.ascii "UART1_GetITStatus"
	.db	0
	.dw	0,(_UART1_GetITStatus)
	.dw	0,(XG$UART1_GetITStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+32)
	.dw	0,349
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_IT"
	.db	0
	.dw	0,601
	.uleb128	8
	.dw	0,2028
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$385)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$388)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$390)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$391)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$393)
	.uleb128	0
	.uleb128	8
	.dw	0,2056
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$396)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$399)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$401)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$402)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$404)
	.uleb128	0
	.uleb128	8
	.dw	0,2084
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$405)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$408)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$410)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$411)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$413)
	.uleb128	0
	.uleb128	6
	.db	1
	.db	80
	.ascii "pendingbitstatus"
	.db	0
	.dw	0,349
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-4
	.ascii "itpos"
	.db	0
	.dw	0,349
	.uleb128	6
	.db	1
	.db	80
	.ascii "itmask1"
	.db	0
	.dw	0,349
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-3
	.ascii "itmask2"
	.db	0
	.dw	0,349
	.uleb128	6
	.db	1
	.db	81
	.ascii "enablestatus"
	.db	0
	.dw	0,349
	.uleb128	0
	.uleb128	11
	.ascii "UART1_ClearITPendingBit"
	.db	0
	.dw	0,(_UART1_ClearITPendingBit)
	.dw	0,(XG$UART1_ClearITPendingBit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_IT"
	.db	0
	.dw	0,601
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$423)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$425)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$426)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$428)
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,68
	.ascii "UART1_DeInit"
	.db	0
	.dw	0,95
	.ascii "UART1_Init"
	.db	0
	.dw	0,366
	.ascii "UART1_Cmd"
	.db	0
	.dw	0,430
	.ascii "UART1_ITConfig"
	.db	0
	.dw	0,617
	.ascii "UART1_HalfDuplexCmd"
	.db	0
	.dw	0,691
	.ascii "UART1_IrDAConfig"
	.db	0
	.dw	0,768
	.ascii "UART1_IrDACmd"
	.db	0
	.dw	0,836
	.ascii "UART1_LINBreakDetectionConfig"
	.db	0
	.dw	0,941
	.ascii "UART1_LINCmd"
	.db	0
	.dw	0,1008
	.ascii "UART1_SmartCardCmd"
	.db	0
	.dw	0,1081
	.ascii "UART1_SmartCardNACKCmd"
	.db	0
	.dw	0,1158
	.ascii "UART1_WakeUpConfig"
	.db	0
	.dw	0,1217
	.ascii "UART1_ReceiverWakeUpCmd"
	.db	0
	.dw	0,1295
	.ascii "UART1_ReceiveData8"
	.db	0
	.dw	0,1348
	.ascii "UART1_ReceiveData9"
	.db	0
	.dw	0,1403
	.ascii "UART1_SendData8"
	.db	0
	.dw	0,1451
	.ascii "UART1_SendData9"
	.db	0
	.dw	0,1499
	.ascii "UART1_SendBreak"
	.db	0
	.dw	0,1529
	.ascii "UART1_SetAddress"
	.db	0
	.dw	0,1587
	.ascii "UART1_SetGuardTime"
	.db	0
	.dw	0,1649
	.ascii "UART1_SetPrescaler"
	.db	0
	.dw	0,1711
	.ascii "UART1_GetFlagStatus"
	.db	0
	.dw	0,1871
	.ascii "UART1_ClearFlag"
	.db	0
	.dw	0,1943
	.ascii "UART1_GetITStatus"
	.db	0
	.dw	0,2174
	.ascii "UART1_ClearITPendingBit"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,26
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ClearITPendingBit$431-Sstm8s_uart1$UART1_ClearITPendingBit$420
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$420)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$422)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,75
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_GetITStatus$418-Sstm8s_uart1$UART1_GetITStatus$374
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$374)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$375)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$377)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$378)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$381)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$382)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$384)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$395)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$416)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,26
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ClearFlag$372-Sstm8s_uart1$UART1_ClearFlag$361
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$361)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ClearFlag$363)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE3_end:
	.dw	0,47
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_GetFlagStatus$359-Sstm8s_uart1$UART1_GetFlagStatus$323
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$323)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$324)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$328)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$338)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$357)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE4_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SetPrescaler$321-Sstm8s_uart1$UART1_SetPrescaler$317
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SetPrescaler$317)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE5_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SetGuardTime$315-Sstm8s_uart1$UART1_SetGuardTime$311
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SetGuardTime$311)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
Ldebug_CIE6_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE6_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SetAddress$309-Sstm8s_uart1$UART1_SetAddress$304
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SetAddress$304)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
Ldebug_CIE7_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE7_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SendBreak$302-Sstm8s_uart1$UART1_SendBreak$298
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SendBreak$298)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
Ldebug_CIE8_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE8_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SendData9$296-Sstm8s_uart1$UART1_SendData9$288
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SendData9$288)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SendData9$289)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SendData9$294)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
Ldebug_CIE9_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE9_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE9_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SendData8$286-Sstm8s_uart1$UART1_SendData8$282
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SendData8$282)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
Ldebug_CIE10_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE10_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE10_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ReceiveData9$280-Sstm8s_uart1$UART1_ReceiveData9$273
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$273)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$274)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData9$278)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
Ldebug_CIE11_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE11_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE11_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ReceiveData8$271-Sstm8s_uart1$UART1_ReceiveData8$267
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$267)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
Ldebug_CIE12_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE12_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE12_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ReceiverWakeUpCmd$265-Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ReceiverWakeUpCmd$254)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
Ldebug_CIE13_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE13_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE13_start-4)
	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_WakeUpConfig$252-Sstm8s_uart1$UART1_WakeUpConfig$247
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_WakeUpConfig$247)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
Ldebug_CIE14_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE14_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE14_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SmartCardNACKCmd$245-Sstm8s_uart1$UART1_SmartCardNACKCmd$234
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SmartCardNACKCmd$234)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
Ldebug_CIE15_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE15_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE15_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SmartCardCmd$232-Sstm8s_uart1$UART1_SmartCardCmd$221
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SmartCardCmd$221)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
Ldebug_CIE16_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE16_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE16_start-4)
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_LINCmd$219-Sstm8s_uart1$UART1_LINCmd$208
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_LINCmd$208)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
Ldebug_CIE17_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE17_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE17_start-4)
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_LINBreakDetectionConfig$206-Sstm8s_uart1$UART1_LINBreakDetectionConfig$195
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_LINBreakDetectionConfig$195)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
Ldebug_CIE18_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE18_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE18_start-4)
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_IrDACmd$193-Sstm8s_uart1$UART1_IrDACmd$182
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_IrDACmd$182)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
Ldebug_CIE19_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE19_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE19_start-4)
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_IrDAConfig$180-Sstm8s_uart1$UART1_IrDAConfig$169
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_IrDAConfig$169)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
Ldebug_CIE20_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE20_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE20_start-4)
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_HalfDuplexCmd$167-Sstm8s_uart1$UART1_HalfDuplexCmd$156
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_HalfDuplexCmd$156)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
Ldebug_CIE21_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE21_end:
	.dw	0,75
	.dw	0,(Ldebug_CIE21_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ITConfig$154-Sstm8s_uart1$UART1_ITConfig$113
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$138)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
Ldebug_CIE22_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE22_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE22_start-4)
	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_Cmd$111-Sstm8s_uart1$UART1_Cmd$100
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
Ldebug_CIE23_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE23_end:
	.dw	0,278
	.dw	0,(Ldebug_CIE23_start-4)
	.dw	0,(Sstm8s_uart1$UART1_Init$17)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_Init$98-Sstm8s_uart1$UART1_Init$17
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$17)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$18)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$29)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$30)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$31)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$32)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$33)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$35)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$36)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$37)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$38)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$39)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$40)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$41)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$42)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$43)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$44)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$45)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$47)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$48)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$49)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$50)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$51)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$52)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$53)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$54)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$55)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$56)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$57)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$58)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$59)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$67)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$68)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$77)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$78)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$92)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$93)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$96)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
Ldebug_CIE24_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE24_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE24_start-4)
	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_DeInit$15-Sstm8s_uart1$UART1_DeInit$1
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
	.db	14
	.uleb128	2
