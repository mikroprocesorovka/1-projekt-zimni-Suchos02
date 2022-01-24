;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_itc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetCPUCC
	.globl _ITC_DeInit
	.globl _ITC_GetSoftIntStatus
	.globl _ITC_GetSoftwarePriority
	.globl _ITC_SetSoftwarePriority
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
	Sstm8s_itc$ITC_GetCPUCC$0 ==.
;	../SPL/src/stm8s_itc.c: 50: uint8_t ITC_GetCPUCC(void)
; genLabel
;	-----------------------------------------
;	 function ITC_GetCPUCC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_GetCPUCC:
	Sstm8s_itc$ITC_GetCPUCC$1 ==.
	Sstm8s_itc$ITC_GetCPUCC$2 ==.
;	../SPL/src/stm8s_itc.c: 59: __asm__("push cc");
;	genInline
	push	cc
	Sstm8s_itc$ITC_GetCPUCC$3 ==.
;	../SPL/src/stm8s_itc.c: 60: __asm__("pop a");
;	genInline
	pop	a
; genLabel
00101$:
	Sstm8s_itc$ITC_GetCPUCC$4 ==.
;	../SPL/src/stm8s_itc.c: 65: }
; genEndFunction
	Sstm8s_itc$ITC_GetCPUCC$5 ==.
	XG$ITC_GetCPUCC$0$0 ==.
	ret
	Sstm8s_itc$ITC_GetCPUCC$6 ==.
	Sstm8s_itc$ITC_DeInit$7 ==.
;	../SPL/src/stm8s_itc.c: 83: void ITC_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function ITC_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_DeInit:
	Sstm8s_itc$ITC_DeInit$8 ==.
	Sstm8s_itc$ITC_DeInit$9 ==.
;	../SPL/src/stm8s_itc.c: 85: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f70+0, #0xff
	Sstm8s_itc$ITC_DeInit$10 ==.
;	../SPL/src/stm8s_itc.c: 86: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f71+0, #0xff
	Sstm8s_itc$ITC_DeInit$11 ==.
;	../SPL/src/stm8s_itc.c: 87: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f72+0, #0xff
	Sstm8s_itc$ITC_DeInit$12 ==.
;	../SPL/src/stm8s_itc.c: 88: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f73+0, #0xff
	Sstm8s_itc$ITC_DeInit$13 ==.
;	../SPL/src/stm8s_itc.c: 89: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f74+0, #0xff
	Sstm8s_itc$ITC_DeInit$14 ==.
;	../SPL/src/stm8s_itc.c: 90: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f75+0, #0xff
	Sstm8s_itc$ITC_DeInit$15 ==.
;	../SPL/src/stm8s_itc.c: 91: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f76+0, #0xff
	Sstm8s_itc$ITC_DeInit$16 ==.
;	../SPL/src/stm8s_itc.c: 92: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f77+0, #0xff
; genLabel
00101$:
	Sstm8s_itc$ITC_DeInit$17 ==.
;	../SPL/src/stm8s_itc.c: 93: }
; genEndFunction
	Sstm8s_itc$ITC_DeInit$18 ==.
	XG$ITC_DeInit$0$0 ==.
	ret
	Sstm8s_itc$ITC_DeInit$19 ==.
	Sstm8s_itc$ITC_GetSoftIntStatus$20 ==.
;	../SPL/src/stm8s_itc.c: 100: uint8_t ITC_GetSoftIntStatus(void)
; genLabel
;	-----------------------------------------
;	 function ITC_GetSoftIntStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_GetSoftIntStatus:
	Sstm8s_itc$ITC_GetSoftIntStatus$21 ==.
	Sstm8s_itc$ITC_GetSoftIntStatus$22 ==.
;	../SPL/src/stm8s_itc.c: 102: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
; genCall
	call	_ITC_GetCPUCC
; genAnd
	and	a, #0x28
; genReturn
; genLabel
00101$:
	Sstm8s_itc$ITC_GetSoftIntStatus$23 ==.
;	../SPL/src/stm8s_itc.c: 103: }
; genEndFunction
	Sstm8s_itc$ITC_GetSoftIntStatus$24 ==.
	XG$ITC_GetSoftIntStatus$0$0 ==.
	ret
	Sstm8s_itc$ITC_GetSoftIntStatus$25 ==.
	Sstm8s_itc$ITC_GetSoftwarePriority$26 ==.
;	../SPL/src/stm8s_itc.c: 110: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
; genLabel
;	-----------------------------------------
;	 function ITC_GetSoftwarePriority
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ITC_GetSoftwarePriority:
	Sstm8s_itc$ITC_GetSoftwarePriority$27 ==.
	pushw	x
	Sstm8s_itc$ITC_GetSoftwarePriority$28 ==.
	Sstm8s_itc$ITC_GetSoftwarePriority$29 ==.
;	../SPL/src/stm8s_itc.c: 112: uint8_t Value = 0;
; genAssign
	clrw	x
	Sstm8s_itc$ITC_GetSoftwarePriority$30 ==.
;	../SPL/src/stm8s_itc.c: 119: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
; genCast
; genAssign
	ld	a, (0x05, sp)
	clrw	y
; genAnd
	and	a, #0x03
	ld	xh, a
	clr	a
; genCast
; genAssign
	ld	a, xh
; genLeftShiftLiteral
	sll	a
	ld	(0x01, sp), a
; genLeftShift
	ld	a, #0x03
	ld	(0x02, sp), a
	ld	a, (0x01, sp)
	jreq	00136$
00135$:
	sll	(0x02, sp)
	dec	a
	jrne	00135$
00136$:
	Sstm8s_itc$ITC_GetSoftwarePriority$31 ==.
;	../SPL/src/stm8s_itc.c: 121: switch (IrqNum)
; genCmp
; genCmpTop
	ld	a, (0x05, sp)
	cp	a, #0x18
	jrule	00137$
	jp	00127$
00137$:
; skipping generated iCode
; genJumpTab
	clrw	x
	ld	a, (0x05, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00138$, x)
	jp	(x)
00138$:
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00112$
	.dw	#00112$
	.dw	#00112$
	.dw	#00112$
	.dw	#00116$
	.dw	#00116$
	.dw	#00116$
	.dw	#00116$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00124$
	.dw	#00124$
	.dw	#00124$
	.dw	#00124$
	.dw	#00125$
	Sstm8s_itc$ITC_GetSoftwarePriority$32 ==.
	Sstm8s_itc$ITC_GetSoftwarePriority$33 ==.
;	../SPL/src/stm8s_itc.c: 126: case ITC_IRQ_PORTA:
; genLabel
00104$:
	Sstm8s_itc$ITC_GetSoftwarePriority$34 ==.
;	../SPL/src/stm8s_itc.c: 127: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f70
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_itc$ITC_GetSoftwarePriority$35 ==.
;	../SPL/src/stm8s_itc.c: 128: break;
; genGoto
	jp	00127$
	Sstm8s_itc$ITC_GetSoftwarePriority$36 ==.
;	../SPL/src/stm8s_itc.c: 133: case ITC_IRQ_PORTE:
; genLabel
00108$:
	Sstm8s_itc$ITC_GetSoftwarePriority$37 ==.
;	../SPL/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f71
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_itc$ITC_GetSoftwarePriority$38 ==.
;	../SPL/src/stm8s_itc.c: 135: break;
; genGoto
	jp	00127$
	Sstm8s_itc$ITC_GetSoftwarePriority$39 ==.
;	../SPL/src/stm8s_itc.c: 145: case ITC_IRQ_TIM1_OVF:
; genLabel
00112$:
	Sstm8s_itc$ITC_GetSoftwarePriority$40 ==.
;	../SPL/src/stm8s_itc.c: 146: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f72
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_itc$ITC_GetSoftwarePriority$41 ==.
;	../SPL/src/stm8s_itc.c: 147: break;
; genGoto
	jp	00127$
	Sstm8s_itc$ITC_GetSoftwarePriority$42 ==.
;	../SPL/src/stm8s_itc.c: 157: case ITC_IRQ_TIM3_OVF:
; genLabel
00116$:
	Sstm8s_itc$ITC_GetSoftwarePriority$43 ==.
;	../SPL/src/stm8s_itc.c: 158: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f73
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_itc$ITC_GetSoftwarePriority$44 ==.
;	../SPL/src/stm8s_itc.c: 159: break;
; genGoto
	jp	00127$
	Sstm8s_itc$ITC_GetSoftwarePriority$45 ==.
;	../SPL/src/stm8s_itc.c: 171: case ITC_IRQ_I2C:
; genLabel
00120$:
	Sstm8s_itc$ITC_GetSoftwarePriority$46 ==.
;	../SPL/src/stm8s_itc.c: 172: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f74
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_itc$ITC_GetSoftwarePriority$47 ==.
;	../SPL/src/stm8s_itc.c: 173: break;
; genGoto
	jp	00127$
	Sstm8s_itc$ITC_GetSoftwarePriority$48 ==.
;	../SPL/src/stm8s_itc.c: 192: case ITC_IRQ_TIM4_OVF:
; genLabel
00124$:
	Sstm8s_itc$ITC_GetSoftwarePriority$49 ==.
;	../SPL/src/stm8s_itc.c: 194: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f75
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_itc$ITC_GetSoftwarePriority$50 ==.
;	../SPL/src/stm8s_itc.c: 195: break;
; genGoto
	jp	00127$
	Sstm8s_itc$ITC_GetSoftwarePriority$51 ==.
;	../SPL/src/stm8s_itc.c: 197: case ITC_IRQ_EEPROM_EEC:
; genLabel
00125$:
	Sstm8s_itc$ITC_GetSoftwarePriority$52 ==.
;	../SPL/src/stm8s_itc.c: 198: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
; genPointerGet
	ld	a, 0x7f76
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_itc$ITC_GetSoftwarePriority$53 ==.
	Sstm8s_itc$ITC_GetSoftwarePriority$54 ==.
;	../SPL/src/stm8s_itc.c: 203: }
; genLabel
00127$:
	Sstm8s_itc$ITC_GetSoftwarePriority$55 ==.
;	../SPL/src/stm8s_itc.c: 205: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
; genRightShift
	ld	a, (0x01, sp)
	jreq	00140$
00139$:
	exg	a, xl
	srl	a
	exg	a, xl
	dec	a
	jrne	00139$
00140$:
; genAssign
	ld	a, xl
	Sstm8s_itc$ITC_GetSoftwarePriority$56 ==.
;	../SPL/src/stm8s_itc.c: 207: return((ITC_PriorityLevel_TypeDef)Value);
; genReturn
; genLabel
00128$:
	Sstm8s_itc$ITC_GetSoftwarePriority$57 ==.
;	../SPL/src/stm8s_itc.c: 208: }
; genEndFunction
	popw	x
	Sstm8s_itc$ITC_GetSoftwarePriority$58 ==.
	Sstm8s_itc$ITC_GetSoftwarePriority$59 ==.
	XG$ITC_GetSoftwarePriority$0$0 ==.
	ret
	Sstm8s_itc$ITC_GetSoftwarePriority$60 ==.
	Sstm8s_itc$ITC_SetSoftwarePriority$61 ==.
;	../SPL/src/stm8s_itc.c: 223: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
; genLabel
;	-----------------------------------------
;	 function ITC_SetSoftwarePriority
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ITC_SetSoftwarePriority:
	Sstm8s_itc$ITC_SetSoftwarePriority$62 ==.
	pushw	x
	Sstm8s_itc$ITC_SetSoftwarePriority$63 ==.
	Sstm8s_itc$ITC_SetSoftwarePriority$64 ==.
;	../SPL/src/stm8s_itc.c: 237: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
; genCast
; genAssign
	ld	a, (0x05, sp)
	clrw	x
; genAnd
	and	a, #0x03
	ld	xl, a
	clr	a
; genCast
; genAssign
; genLeftShiftLiteral
	sllw	x
; genLeftShift
	ld	a, #0x03
	push	a
	Sstm8s_itc$ITC_SetSoftwarePriority$65 ==.
	ld	a, xl
	tnz	a
	jreq	00136$
00135$:
	sll	(1, sp)
	dec	a
	jrne	00135$
00136$:
	pop	a
	Sstm8s_itc$ITC_SetSoftwarePriority$66 ==.
; genCpl
	cpl	a
; genAssign
	ld	(0x01, sp), a
	Sstm8s_itc$ITC_SetSoftwarePriority$67 ==.
;	../SPL/src/stm8s_itc.c: 240: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
; genLeftShift
	ld	a, (0x06, sp)
	push	a
	Sstm8s_itc$ITC_SetSoftwarePriority$68 ==.
	ld	a, xl
	tnz	a
	jreq	00138$
00137$:
	sll	(1, sp)
	dec	a
	jrne	00137$
00138$:
	pop	a
	Sstm8s_itc$ITC_SetSoftwarePriority$69 ==.
; genAssign
	ld	(0x02, sp), a
	Sstm8s_itc$ITC_SetSoftwarePriority$70 ==.
;	../SPL/src/stm8s_itc.c: 242: switch (IrqNum)
; genCmp
; genCmpTop
	ld	a, (0x05, sp)
	cp	a, #0x18
	jrule	00139$
	jp	00128$
00139$:
; skipping generated iCode
; genJumpTab
	clrw	x
	ld	a, (0x05, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00140$, x)
	jp	(x)
00140$:
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00112$
	.dw	#00112$
	.dw	#00112$
	.dw	#00112$
	.dw	#00116$
	.dw	#00116$
	.dw	#00116$
	.dw	#00116$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00124$
	.dw	#00124$
	.dw	#00124$
	.dw	#00124$
	.dw	#00125$
	Sstm8s_itc$ITC_SetSoftwarePriority$71 ==.
	Sstm8s_itc$ITC_SetSoftwarePriority$72 ==.
;	../SPL/src/stm8s_itc.c: 247: case ITC_IRQ_PORTA:
; genLabel
00104$:
	Sstm8s_itc$ITC_SetSoftwarePriority$73 ==.
;	../SPL/src/stm8s_itc.c: 248: ITC->ISPR1 &= Mask;
; genPointerGet
	ld	a, 0x7f70
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f70, a
	Sstm8s_itc$ITC_SetSoftwarePriority$74 ==.
;	../SPL/src/stm8s_itc.c: 249: ITC->ISPR1 |= NewPriority;
; genPointerGet
	ld	a, 0x7f70
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f70, a
	Sstm8s_itc$ITC_SetSoftwarePriority$75 ==.
;	../SPL/src/stm8s_itc.c: 250: break;
; genGoto
	jp	00128$
	Sstm8s_itc$ITC_SetSoftwarePriority$76 ==.
;	../SPL/src/stm8s_itc.c: 255: case ITC_IRQ_PORTE:
; genLabel
00108$:
	Sstm8s_itc$ITC_SetSoftwarePriority$77 ==.
;	../SPL/src/stm8s_itc.c: 256: ITC->ISPR2 &= Mask;
; genPointerGet
	ld	a, 0x7f71
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f71, a
	Sstm8s_itc$ITC_SetSoftwarePriority$78 ==.
;	../SPL/src/stm8s_itc.c: 257: ITC->ISPR2 |= NewPriority;
; genPointerGet
	ld	a, 0x7f71
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f71, a
	Sstm8s_itc$ITC_SetSoftwarePriority$79 ==.
;	../SPL/src/stm8s_itc.c: 258: break;
; genGoto
	jp	00128$
	Sstm8s_itc$ITC_SetSoftwarePriority$80 ==.
;	../SPL/src/stm8s_itc.c: 268: case ITC_IRQ_TIM1_OVF:
; genLabel
00112$:
	Sstm8s_itc$ITC_SetSoftwarePriority$81 ==.
;	../SPL/src/stm8s_itc.c: 269: ITC->ISPR3 &= Mask;
; genPointerGet
	ld	a, 0x7f72
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f72, a
	Sstm8s_itc$ITC_SetSoftwarePriority$82 ==.
;	../SPL/src/stm8s_itc.c: 270: ITC->ISPR3 |= NewPriority;
; genPointerGet
	ld	a, 0x7f72
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f72, a
	Sstm8s_itc$ITC_SetSoftwarePriority$83 ==.
;	../SPL/src/stm8s_itc.c: 271: break;
; genGoto
	jp	00128$
	Sstm8s_itc$ITC_SetSoftwarePriority$84 ==.
;	../SPL/src/stm8s_itc.c: 281: case ITC_IRQ_TIM3_OVF:
; genLabel
00116$:
	Sstm8s_itc$ITC_SetSoftwarePriority$85 ==.
;	../SPL/src/stm8s_itc.c: 282: ITC->ISPR4 &= Mask;
; genPointerGet
	ld	a, 0x7f73
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f73, a
	Sstm8s_itc$ITC_SetSoftwarePriority$86 ==.
;	../SPL/src/stm8s_itc.c: 283: ITC->ISPR4 |= NewPriority;
; genPointerGet
	ld	a, 0x7f73
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f73, a
	Sstm8s_itc$ITC_SetSoftwarePriority$87 ==.
;	../SPL/src/stm8s_itc.c: 284: break;
; genGoto
	jp	00128$
	Sstm8s_itc$ITC_SetSoftwarePriority$88 ==.
;	../SPL/src/stm8s_itc.c: 296: case ITC_IRQ_I2C:
; genLabel
00120$:
	Sstm8s_itc$ITC_SetSoftwarePriority$89 ==.
;	../SPL/src/stm8s_itc.c: 297: ITC->ISPR5 &= Mask;
; genPointerGet
	ld	a, 0x7f74
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f74, a
	Sstm8s_itc$ITC_SetSoftwarePriority$90 ==.
;	../SPL/src/stm8s_itc.c: 298: ITC->ISPR5 |= NewPriority;
; genPointerGet
	ld	a, 0x7f74
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f74, a
	Sstm8s_itc$ITC_SetSoftwarePriority$91 ==.
;	../SPL/src/stm8s_itc.c: 299: break;
; genGoto
	jp	00128$
	Sstm8s_itc$ITC_SetSoftwarePriority$92 ==.
;	../SPL/src/stm8s_itc.c: 321: case ITC_IRQ_TIM4_OVF:
; genLabel
00124$:
	Sstm8s_itc$ITC_SetSoftwarePriority$93 ==.
;	../SPL/src/stm8s_itc.c: 323: ITC->ISPR6 &= Mask;
; genPointerGet
	ld	a, 0x7f75
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f75, a
	Sstm8s_itc$ITC_SetSoftwarePriority$94 ==.
;	../SPL/src/stm8s_itc.c: 324: ITC->ISPR6 |= NewPriority;
; genPointerGet
	ld	a, 0x7f75
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f75, a
	Sstm8s_itc$ITC_SetSoftwarePriority$95 ==.
;	../SPL/src/stm8s_itc.c: 325: break;
; genGoto
	jp	00128$
	Sstm8s_itc$ITC_SetSoftwarePriority$96 ==.
;	../SPL/src/stm8s_itc.c: 327: case ITC_IRQ_EEPROM_EEC:
; genLabel
00125$:
	Sstm8s_itc$ITC_SetSoftwarePriority$97 ==.
;	../SPL/src/stm8s_itc.c: 328: ITC->ISPR7 &= Mask;
; genPointerGet
	ld	a, 0x7f76
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x7f76, a
	Sstm8s_itc$ITC_SetSoftwarePriority$98 ==.
;	../SPL/src/stm8s_itc.c: 329: ITC->ISPR7 |= NewPriority;
; genPointerGet
	ld	a, 0x7f76
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x7f76, a
	Sstm8s_itc$ITC_SetSoftwarePriority$99 ==.
	Sstm8s_itc$ITC_SetSoftwarePriority$100 ==.
;	../SPL/src/stm8s_itc.c: 334: }
; genLabel
00128$:
	Sstm8s_itc$ITC_SetSoftwarePriority$101 ==.
;	../SPL/src/stm8s_itc.c: 335: }
; genEndFunction
	popw	x
	Sstm8s_itc$ITC_SetSoftwarePriority$102 ==.
	Sstm8s_itc$ITC_SetSoftwarePriority$103 ==.
	XG$ITC_SetSoftwarePriority$0$0 ==.
	ret
	Sstm8s_itc$ITC_SetSoftwarePriority$104 ==.
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
	.ascii "../SPL/src/stm8s_itc.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$0)
	.db	3
	.sleb128	49
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetCPUCC$2-Sstm8s_itc$ITC_GetCPUCC$0
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetCPUCC$3-Sstm8s_itc$ITC_GetCPUCC$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetCPUCC$4-Sstm8s_itc$ITC_GetCPUCC$3
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	1+Sstm8s_itc$ITC_GetCPUCC$5-Sstm8s_itc$ITC_GetCPUCC$4
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_DeInit$7)
	.db	3
	.sleb128	82
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$9-Sstm8s_itc$ITC_DeInit$7
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$10-Sstm8s_itc$ITC_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$11-Sstm8s_itc$ITC_DeInit$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$12-Sstm8s_itc$ITC_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$13-Sstm8s_itc$ITC_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$14-Sstm8s_itc$ITC_DeInit$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$15-Sstm8s_itc$ITC_DeInit$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$16-Sstm8s_itc$ITC_DeInit$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_DeInit$17-Sstm8s_itc$ITC_DeInit$16
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_itc$ITC_DeInit$18-Sstm8s_itc$ITC_DeInit$17
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$20)
	.db	3
	.sleb128	99
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$22-Sstm8s_itc$ITC_GetSoftIntStatus$20
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$23-Sstm8s_itc$ITC_GetSoftIntStatus$22
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_itc$ITC_GetSoftIntStatus$24-Sstm8s_itc$ITC_GetSoftIntStatus$23
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$26)
	.db	3
	.sleb128	109
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$29-Sstm8s_itc$ITC_GetSoftwarePriority$26
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$30-Sstm8s_itc$ITC_GetSoftwarePriority$29
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$31-Sstm8s_itc$ITC_GetSoftwarePriority$30
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$33-Sstm8s_itc$ITC_GetSoftwarePriority$31
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$34-Sstm8s_itc$ITC_GetSoftwarePriority$33
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$35-Sstm8s_itc$ITC_GetSoftwarePriority$34
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$36-Sstm8s_itc$ITC_GetSoftwarePriority$35
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$37-Sstm8s_itc$ITC_GetSoftwarePriority$36
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$38-Sstm8s_itc$ITC_GetSoftwarePriority$37
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$39-Sstm8s_itc$ITC_GetSoftwarePriority$38
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$40-Sstm8s_itc$ITC_GetSoftwarePriority$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$41-Sstm8s_itc$ITC_GetSoftwarePriority$40
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$42-Sstm8s_itc$ITC_GetSoftwarePriority$41
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$43-Sstm8s_itc$ITC_GetSoftwarePriority$42
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$44-Sstm8s_itc$ITC_GetSoftwarePriority$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$45-Sstm8s_itc$ITC_GetSoftwarePriority$44
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$46-Sstm8s_itc$ITC_GetSoftwarePriority$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$47-Sstm8s_itc$ITC_GetSoftwarePriority$46
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$48-Sstm8s_itc$ITC_GetSoftwarePriority$47
	.db	3
	.sleb128	19
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$49-Sstm8s_itc$ITC_GetSoftwarePriority$48
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$50-Sstm8s_itc$ITC_GetSoftwarePriority$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$51-Sstm8s_itc$ITC_GetSoftwarePriority$50
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$52-Sstm8s_itc$ITC_GetSoftwarePriority$51
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$54-Sstm8s_itc$ITC_GetSoftwarePriority$52
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$55-Sstm8s_itc$ITC_GetSoftwarePriority$54
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$56-Sstm8s_itc$ITC_GetSoftwarePriority$55
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$57-Sstm8s_itc$ITC_GetSoftwarePriority$56
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_itc$ITC_GetSoftwarePriority$59-Sstm8s_itc$ITC_GetSoftwarePriority$57
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$61)
	.db	3
	.sleb128	222
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$64-Sstm8s_itc$ITC_SetSoftwarePriority$61
	.db	3
	.sleb128	14
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$67-Sstm8s_itc$ITC_SetSoftwarePriority$64
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$70-Sstm8s_itc$ITC_SetSoftwarePriority$67
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$72-Sstm8s_itc$ITC_SetSoftwarePriority$70
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$73-Sstm8s_itc$ITC_SetSoftwarePriority$72
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$74-Sstm8s_itc$ITC_SetSoftwarePriority$73
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$75-Sstm8s_itc$ITC_SetSoftwarePriority$74
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$76-Sstm8s_itc$ITC_SetSoftwarePriority$75
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$77-Sstm8s_itc$ITC_SetSoftwarePriority$76
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$78-Sstm8s_itc$ITC_SetSoftwarePriority$77
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$79-Sstm8s_itc$ITC_SetSoftwarePriority$78
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$80-Sstm8s_itc$ITC_SetSoftwarePriority$79
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$81-Sstm8s_itc$ITC_SetSoftwarePriority$80
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$82-Sstm8s_itc$ITC_SetSoftwarePriority$81
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$83-Sstm8s_itc$ITC_SetSoftwarePriority$82
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$84-Sstm8s_itc$ITC_SetSoftwarePriority$83
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$85-Sstm8s_itc$ITC_SetSoftwarePriority$84
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$86-Sstm8s_itc$ITC_SetSoftwarePriority$85
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$87-Sstm8s_itc$ITC_SetSoftwarePriority$86
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$88-Sstm8s_itc$ITC_SetSoftwarePriority$87
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$89-Sstm8s_itc$ITC_SetSoftwarePriority$88
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$90-Sstm8s_itc$ITC_SetSoftwarePriority$89
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$91-Sstm8s_itc$ITC_SetSoftwarePriority$90
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$92-Sstm8s_itc$ITC_SetSoftwarePriority$91
	.db	3
	.sleb128	22
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$93-Sstm8s_itc$ITC_SetSoftwarePriority$92
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$94-Sstm8s_itc$ITC_SetSoftwarePriority$93
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$95-Sstm8s_itc$ITC_SetSoftwarePriority$94
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$96-Sstm8s_itc$ITC_SetSoftwarePriority$95
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$97-Sstm8s_itc$ITC_SetSoftwarePriority$96
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$98-Sstm8s_itc$ITC_SetSoftwarePriority$97
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$100-Sstm8s_itc$ITC_SetSoftwarePriority$98
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$101-Sstm8s_itc$ITC_SetSoftwarePriority$100
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_itc$ITC_SetSoftwarePriority$103-Sstm8s_itc$ITC_SetSoftwarePriority$101
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$104)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$60)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$25)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
	.dw	0,(Sstm8s_itc$ITC_DeInit$19)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$6)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	3
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
	.uleb128	6
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
	.uleb128	8
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
	.uleb128	5
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
	.uleb128	7
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	4
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
	.uleb128	9
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
	.uleb128	2
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
	.ascii "../SPL/src/stm8s_itc.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.ascii "ITC_GetCPUCC"
	.db	0
	.dw	0,(_ITC_GetCPUCC)
	.dw	0,(XG$ITC_GetCPUCC$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+176)
	.dw	0,66
	.uleb128	4
	.ascii "ITC_DeInit"
	.db	0
	.dw	0,(_ITC_DeInit)
	.dw	0,(XG$ITC_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+156)
	.uleb128	3
	.ascii "ITC_GetSoftIntStatus"
	.db	0
	.dw	0,(_ITC_GetSoftIntStatus)
	.dw	0,(XG$ITC_GetSoftIntStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+136)
	.dw	0,66
	.uleb128	5
	.dw	0,275
	.ascii "ITC_GetSoftwarePriority"
	.db	0
	.dw	0,(_ITC_GetSoftwarePriority)
	.dw	0,(XG$ITC_GetSoftwarePriority$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+92)
	.dw	0,66
	.uleb128	6
	.db	2
	.db	145
	.sleb128	2
	.ascii "IrqNum"
	.db	0
	.dw	0,66
	.uleb128	7
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$53)
	.uleb128	8
	.db	1
	.db	80
	.ascii "Value"
	.db	0
	.dw	0,66
	.uleb128	8
	.db	2
	.db	145
	.sleb128	-1
	.ascii "Mask"
	.db	0
	.dw	0,66
	.uleb128	0
	.uleb128	9
	.ascii "ITC_SetSoftwarePriority"
	.db	0
	.dw	0,(_ITC_SetSoftwarePriority)
	.dw	0,(XG$ITC_SetSoftwarePriority$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	2
	.ascii "IrqNum"
	.db	0
	.dw	0,66
	.uleb128	6
	.db	2
	.db	145
	.sleb128	3
	.ascii "PriorityValue"
	.db	0
	.dw	0,66
	.uleb128	7
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$71)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
	.uleb128	8
	.db	2
	.db	145
	.sleb128	-2
	.ascii "Mask"
	.db	0
	.dw	0,66
	.uleb128	8
	.db	2
	.db	145
	.sleb128	-1
	.ascii "NewPriority"
	.db	0
	.dw	0,66
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
	.dw	0,83
	.ascii "ITC_GetCPUCC"
	.db	0
	.dw	0,114
	.ascii "ITC_DeInit"
	.db	0
	.dw	0,139
	.ascii "ITC_GetSoftIntStatus"
	.db	0
	.dw	0,178
	.ascii "ITC_GetSoftwarePriority"
	.db	0
	.dw	0,275
	.ascii "ITC_SetSoftwarePriority"
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
	.dw	0,61
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)	;initial loc
	.dw	0,Sstm8s_itc$ITC_SetSoftwarePriority$104-Sstm8s_itc$ITC_SetSoftwarePriority$62
	.db	1
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$62)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$63)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$65)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$66)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$68)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$69)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
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
	.dw	0,33
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)	;initial loc
	.dw	0,Sstm8s_itc$ITC_GetSoftwarePriority$60-Sstm8s_itc$ITC_GetSoftwarePriority$27
	.db	1
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$58)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)	;initial loc
	.dw	0,Sstm8s_itc$ITC_GetSoftIntStatus$25-Sstm8s_itc$ITC_GetSoftIntStatus$21
	.db	1
	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sstm8s_itc$ITC_DeInit$8)	;initial loc
	.dw	0,Sstm8s_itc$ITC_DeInit$19-Sstm8s_itc$ITC_DeInit$8
	.db	1
	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
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
	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)	;initial loc
	.dw	0,Sstm8s_itc$ITC_GetCPUCC$6-Sstm8s_itc$ITC_GetCPUCC$1
	.db	1
	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
	.db	14
	.uleb128	2
