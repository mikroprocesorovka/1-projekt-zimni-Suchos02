;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_adc2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC2_DeInit
	.globl _ADC2_Init
	.globl _ADC2_Cmd
	.globl _ADC2_ITConfig
	.globl _ADC2_PrescalerConfig
	.globl _ADC2_SchmittTriggerConfig
	.globl _ADC2_ConversionConfig
	.globl _ADC2_ExternalTriggerConfig
	.globl _ADC2_StartConversion
	.globl _ADC2_GetConversionValue
	.globl _ADC2_GetFlagStatus
	.globl _ADC2_ClearFlag
	.globl _ADC2_GetITStatus
	.globl _ADC2_ClearITPendingBit
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
	Sstm8s_adc2$ADC2_DeInit$0 ==.
;	../SPL/src/stm8s_adc2.c: 54: void ADC2_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_DeInit:
	Sstm8s_adc2$ADC2_DeInit$1 ==.
	Sstm8s_adc2$ADC2_DeInit$2 ==.
;	../SPL/src/stm8s_adc2.c: 56: ADC2->CSR  = ADC2_CSR_RESET_VALUE;
; genPointerSet
	mov	0x5400+0, #0x00
	Sstm8s_adc2$ADC2_DeInit$3 ==.
;	../SPL/src/stm8s_adc2.c: 57: ADC2->CR1  = ADC2_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5401+0, #0x00
	Sstm8s_adc2$ADC2_DeInit$4 ==.
;	../SPL/src/stm8s_adc2.c: 58: ADC2->CR2  = ADC2_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5402+0, #0x00
	Sstm8s_adc2$ADC2_DeInit$5 ==.
;	../SPL/src/stm8s_adc2.c: 59: ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
; genPointerSet
	mov	0x5406+0, #0x00
	Sstm8s_adc2$ADC2_DeInit$6 ==.
;	../SPL/src/stm8s_adc2.c: 60: ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
; genPointerSet
	mov	0x5407+0, #0x00
; genLabel
00101$:
	Sstm8s_adc2$ADC2_DeInit$7 ==.
;	../SPL/src/stm8s_adc2.c: 61: }
; genEndFunction
	Sstm8s_adc2$ADC2_DeInit$8 ==.
	XG$ADC2_DeInit$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_DeInit$9 ==.
	Sstm8s_adc2$ADC2_Init$10 ==.
;	../SPL/src/stm8s_adc2.c: 83: void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
; genLabel
;	-----------------------------------------
;	 function ADC2_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_Init:
	Sstm8s_adc2$ADC2_Init$11 ==.
	Sstm8s_adc2$ADC2_Init$12 ==.
;	../SPL/src/stm8s_adc2.c: 98: ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$13 ==.
; genIPush
	ld	a, (0x05, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$14 ==.
; genIPush
	ld	a, (0x05, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$15 ==.
; genCall
	call	_ADC2_ConversionConfig
	addw	sp, #3
	Sstm8s_adc2$ADC2_Init$16 ==.
	Sstm8s_adc2$ADC2_Init$17 ==.
;	../SPL/src/stm8s_adc2.c: 100: ADC2_PrescalerConfig(ADC2_PrescalerSelection);
; genIPush
	ld	a, (0x05, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$18 ==.
; genCall
	call	_ADC2_PrescalerConfig
	pop	a
	Sstm8s_adc2$ADC2_Init$19 ==.
	Sstm8s_adc2$ADC2_Init$20 ==.
;	../SPL/src/stm8s_adc2.c: 105: ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
; genIPush
	ld	a, (0x07, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$21 ==.
; genIPush
	ld	a, (0x07, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$22 ==.
; genCall
	call	_ADC2_ExternalTriggerConfig
	popw	x
	Sstm8s_adc2$ADC2_Init$23 ==.
	Sstm8s_adc2$ADC2_Init$24 ==.
;	../SPL/src/stm8s_adc2.c: 110: ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
; genIPush
	ld	a, (0x0a, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$25 ==.
; genIPush
	ld	a, (0x0a, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$26 ==.
; genCall
	call	_ADC2_SchmittTriggerConfig
	popw	x
	Sstm8s_adc2$ADC2_Init$27 ==.
	Sstm8s_adc2$ADC2_Init$28 ==.
;	../SPL/src/stm8s_adc2.c: 113: ADC2->CR1 |= ADC2_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_Init$29 ==.
;	../SPL/src/stm8s_adc2.c: 114: }
; genEndFunction
	Sstm8s_adc2$ADC2_Init$30 ==.
	XG$ADC2_Init$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_Init$31 ==.
	Sstm8s_adc2$ADC2_Cmd$32 ==.
;	../SPL/src/stm8s_adc2.c: 121: void ADC2_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_Cmd:
	Sstm8s_adc2$ADC2_Cmd$33 ==.
	Sstm8s_adc2$ADC2_Cmd$34 ==.
;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
	Sstm8s_adc2$ADC2_Cmd$35 ==.
;	../SPL/src/stm8s_adc2.c: 126: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_adc2$ADC2_Cmd$36 ==.
	Sstm8s_adc2$ADC2_Cmd$37 ==.
;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_Cmd$38 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_Cmd$39 ==.
	Sstm8s_adc2$ADC2_Cmd$40 ==.
;	../SPL/src/stm8s_adc2.c: 132: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_Cmd$41 ==.
; genLabel
00104$:
	Sstm8s_adc2$ADC2_Cmd$42 ==.
;	../SPL/src/stm8s_adc2.c: 134: }
; genEndFunction
	Sstm8s_adc2$ADC2_Cmd$43 ==.
	XG$ADC2_Cmd$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_Cmd$44 ==.
	Sstm8s_adc2$ADC2_ITConfig$45 ==.
;	../SPL/src/stm8s_adc2.c: 141: void ADC2_ITConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ITConfig:
	Sstm8s_adc2$ADC2_ITConfig$46 ==.
	Sstm8s_adc2$ADC2_ITConfig$47 ==.
;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
; genPointerGet
	ld	a, 0x5400
	Sstm8s_adc2$ADC2_ITConfig$48 ==.
;	../SPL/src/stm8s_adc2.c: 146: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_adc2$ADC2_ITConfig$49 ==.
	Sstm8s_adc2$ADC2_ITConfig$50 ==.
;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5400, a
	Sstm8s_adc2$ADC2_ITConfig$51 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_ITConfig$52 ==.
	Sstm8s_adc2$ADC2_ITConfig$53 ==.
;	../SPL/src/stm8s_adc2.c: 154: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5400, a
	Sstm8s_adc2$ADC2_ITConfig$54 ==.
; genLabel
00104$:
	Sstm8s_adc2$ADC2_ITConfig$55 ==.
;	../SPL/src/stm8s_adc2.c: 156: }
; genEndFunction
	Sstm8s_adc2$ADC2_ITConfig$56 ==.
	XG$ADC2_ITConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ITConfig$57 ==.
	Sstm8s_adc2$ADC2_PrescalerConfig$58 ==.
;	../SPL/src/stm8s_adc2.c: 164: void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
; genLabel
;	-----------------------------------------
;	 function ADC2_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_PrescalerConfig:
	Sstm8s_adc2$ADC2_PrescalerConfig$59 ==.
	Sstm8s_adc2$ADC2_PrescalerConfig$60 ==.
;	../SPL/src/stm8s_adc2.c: 170: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
; genPointerGet
	ld	a, 0x5401
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_PrescalerConfig$61 ==.
;	../SPL/src/stm8s_adc2.c: 172: ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_PrescalerConfig$62 ==.
;	../SPL/src/stm8s_adc2.c: 173: }
; genEndFunction
	Sstm8s_adc2$ADC2_PrescalerConfig$63 ==.
	XG$ADC2_PrescalerConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_PrescalerConfig$64 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$65 ==.
;	../SPL/src/stm8s_adc2.c: 183: void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_SchmittTriggerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_ADC2_SchmittTriggerConfig:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$66 ==.
	push	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$67 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$68 ==.
;	../SPL/src/stm8s_adc2.c: 189: if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x1f
	jrne	00144$
	jp	00145$
00144$:
	jp	00114$
00145$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$69 ==.
; skipping generated iCode
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$70 ==.
;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
; genPointerGet
; Dummy read
	ld	a, 0x5407
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$71 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$72 ==.
;	../SPL/src/stm8s_adc2.c: 191: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00146$
	jp	00102$
00146$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$73 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$74 ==.
;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
; genPointerSet
	mov	0x5407+0, #0x00
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$75 ==.
;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
; genPointerGet
; Dummy read
	ld	a, 0x5406
; genPointerSet
	mov	0x5406+0, #0x00
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$76 ==.
; genGoto
	jp	00116$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$77 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$78 ==.
;	../SPL/src/stm8s_adc2.c: 198: ADC2->TDRL |= (uint8_t)0xFF;
; genPointerSet
	mov	0x5407+0, #0xff
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$79 ==.
;	../SPL/src/stm8s_adc2.c: 199: ADC2->TDRH |= (uint8_t)0xFF;
; genPointerGet
; Dummy read
	ld	a, 0x5406
; genPointerSet
	mov	0x5406+0, #0xff
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$80 ==.
; genGoto
	jp	00116$
; genLabel
00114$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$81 ==.
;	../SPL/src/stm8s_adc2.c: 202: else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
; genCmp
; genCmpTop
	ld	a, (0x04, sp)
	cp	a, #0x08
	jrc	00147$
	jp	00111$
00147$:
; skipping generated iCode
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$82 ==.
;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
; genPointerGet
	ld	a, 0x5407
	ld	(0x01, sp), a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$83 ==.
;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
; genLeftShift
	ld	a, #0x01
	push	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$84 ==.
	ld	a, (0x05, sp)
	jreq	00149$
00148$:
	sll	(1, sp)
	dec	a
	jrne	00148$
00149$:
	pop	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$85 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$86 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$87 ==.
;	../SPL/src/stm8s_adc2.c: 204: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00150$
	jp	00105$
00150$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$88 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$89 ==.
;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5407, a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$90 ==.
; genGoto
	jp	00116$
; genLabel
00105$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$91 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$92 ==.
;	../SPL/src/stm8s_adc2.c: 210: ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5407, a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$93 ==.
; genGoto
	jp	00116$
; genLabel
00111$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$94 ==.
;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
; genPointerGet
	ld	a, 0x5406
	ld	(0x01, sp), a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$95 ==.
;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
; genMinus
	ld	a, (0x04, sp)
	sub	a, #0x08
	ld	xl, a
; genLeftShift
	ld	a, #0x01
	push	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$96 ==.
	ld	a, xl
	tnz	a
	jreq	00152$
00151$:
	sll	(1, sp)
	dec	a
	jrne	00151$
00152$:
	pop	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$97 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$98 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$99 ==.
;	../SPL/src/stm8s_adc2.c: 215: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00153$
	jp	00108$
00153$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$100 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$101 ==.
;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5406, a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$102 ==.
; genGoto
	jp	00116$
; genLabel
00108$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$103 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$104 ==.
;	../SPL/src/stm8s_adc2.c: 221: ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5406, a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$105 ==.
; genLabel
00116$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$106 ==.
;	../SPL/src/stm8s_adc2.c: 224: }
; genEndFunction
	pop	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$107 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$108 ==.
	XG$ADC2_SchmittTriggerConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$109 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$110 ==.
;	../SPL/src/stm8s_adc2.c: 236: void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
; genLabel
;	-----------------------------------------
;	 function ADC2_ConversionConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ConversionConfig:
	Sstm8s_adc2$ADC2_ConversionConfig$111 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$112 ==.
;	../SPL/src/stm8s_adc2.c: 244: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
; genPointerGet
	ld	a, 0x5402
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5402, a
	Sstm8s_adc2$ADC2_ConversionConfig$113 ==.
;	../SPL/src/stm8s_adc2.c: 246: ADC2->CR2 |= (uint8_t)(ADC2_Align);
; genPointerGet
	ld	a, 0x5402
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x5402, a
	Sstm8s_adc2$ADC2_ConversionConfig$114 ==.
;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
; genPointerGet
	ld	a, 0x5401
	Sstm8s_adc2$ADC2_ConversionConfig$115 ==.
;	../SPL/src/stm8s_adc2.c: 248: if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
; genCmpEQorNE
	push	a
	Sstm8s_adc2$ADC2_ConversionConfig$116 ==.
	ld	a, (0x04, sp)
	dec	a
	pop	a
	Sstm8s_adc2$ADC2_ConversionConfig$117 ==.
	jrne	00112$
	jp	00113$
00112$:
	jp	00102$
00113$:
	Sstm8s_adc2$ADC2_ConversionConfig$118 ==.
; skipping generated iCode
	Sstm8s_adc2$ADC2_ConversionConfig$119 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$120 ==.
;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_ConversionConfig$121 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_ConversionConfig$122 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$123 ==.
;	../SPL/src/stm8s_adc2.c: 256: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_ConversionConfig$124 ==.
; genLabel
00103$:
	Sstm8s_adc2$ADC2_ConversionConfig$125 ==.
;	../SPL/src/stm8s_adc2.c: 260: ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5400, a
	Sstm8s_adc2$ADC2_ConversionConfig$126 ==.
;	../SPL/src/stm8s_adc2.c: 262: ADC2->CSR |= (uint8_t)(ADC2_Channel);
; genPointerGet
	ld	a, 0x5400
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5400, a
; genLabel
00104$:
	Sstm8s_adc2$ADC2_ConversionConfig$127 ==.
;	../SPL/src/stm8s_adc2.c: 263: }
; genEndFunction
	Sstm8s_adc2$ADC2_ConversionConfig$128 ==.
	XG$ADC2_ConversionConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ConversionConfig$129 ==.
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$130 ==.
;	../SPL/src/stm8s_adc2.c: 275: void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_ExternalTriggerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ExternalTriggerConfig:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$131 ==.
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$132 ==.
;	../SPL/src/stm8s_adc2.c: 282: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
; genPointerGet
	ld	a, 0x5402
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5402, a
; genPointerGet
	ld	a, 0x5402
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$133 ==.
;	../SPL/src/stm8s_adc2.c: 284: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00111$
	jp	00102$
00111$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$134 ==.
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$135 ==.
;	../SPL/src/stm8s_adc2.c: 287: ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5402, a
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$136 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$137 ==.
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$138 ==.
;	../SPL/src/stm8s_adc2.c: 292: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5402, a
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$139 ==.
; genLabel
00103$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$140 ==.
;	../SPL/src/stm8s_adc2.c: 296: ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
; genPointerGet
	ld	a, 0x5402
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5402, a
; genLabel
00104$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$141 ==.
;	../SPL/src/stm8s_adc2.c: 297: }
; genEndFunction
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$142 ==.
	XG$ADC2_ExternalTriggerConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$143 ==.
	Sstm8s_adc2$ADC2_StartConversion$144 ==.
;	../SPL/src/stm8s_adc2.c: 308: void ADC2_StartConversion(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_StartConversion
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_StartConversion:
	Sstm8s_adc2$ADC2_StartConversion$145 ==.
	Sstm8s_adc2$ADC2_StartConversion$146 ==.
;	../SPL/src/stm8s_adc2.c: 310: ADC2->CR1 |= ADC2_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_StartConversion$147 ==.
;	../SPL/src/stm8s_adc2.c: 311: }
; genEndFunction
	Sstm8s_adc2$ADC2_StartConversion$148 ==.
	XG$ADC2_StartConversion$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_StartConversion$149 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$150 ==.
;	../SPL/src/stm8s_adc2.c: 320: uint16_t ADC2_GetConversionValue(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetConversionValue
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_ADC2_GetConversionValue:
	Sstm8s_adc2$ADC2_GetConversionValue$151 ==.
	sub	sp, #4
	Sstm8s_adc2$ADC2_GetConversionValue$152 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$153 ==.
;	../SPL/src/stm8s_adc2.c: 325: if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
; genPointerGet
	ld	a, 0x5402
; genAnd
	bcp	a, #0x08
	jrne	00111$
	jp	00102$
00111$:
; skipping generated iCode
	Sstm8s_adc2$ADC2_GetConversionValue$154 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$155 ==.
;	../SPL/src/stm8s_adc2.c: 328: templ = ADC2->DRL;
; genPointerGet
	ld	a, 0x5405
	ld	xl, a
	Sstm8s_adc2$ADC2_GetConversionValue$156 ==.
;	../SPL/src/stm8s_adc2.c: 330: temph = ADC2->DRH;
; genPointerGet
	ld	a, 0x5404
; genCast
; genAssign
	clrw	y
; genAssign
	Sstm8s_adc2$ADC2_GetConversionValue$157 ==.
;	../SPL/src/stm8s_adc2.c: 332: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
; genLeftShiftLiteral
	clr	(0x02, sp)
; genCast
; genAssign
	clr	(0x03, sp)
; genOr
	or	a, (0x03, sp)
	ld	xh, a
	ld	a, xl
	or	a, (0x02, sp)
	ld	xl, a
; genAssign
	ldw	(0x03, sp), x
	Sstm8s_adc2$ADC2_GetConversionValue$158 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_GetConversionValue$159 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$160 ==.
;	../SPL/src/stm8s_adc2.c: 337: temph = ADC2->DRH;
; genPointerGet
	ld	a, 0x5404
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genAssign
	exgw	x, y
	Sstm8s_adc2$ADC2_GetConversionValue$161 ==.
;	../SPL/src/stm8s_adc2.c: 339: templ = ADC2->DRL;
; genPointerGet
	ld	a, 0x5405
	Sstm8s_adc2$ADC2_GetConversionValue$162 ==.
;	../SPL/src/stm8s_adc2.c: 341: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x03, sp), x
; genLeftShiftLiteral
	clr	a
; genOr
	or	a, (0x04, sp)
	ld	xl, a
	ld	a, yl
	or	a, (0x03, sp)
	ld	xh, a
; genAssign
	ldw	(0x03, sp), x
	Sstm8s_adc2$ADC2_GetConversionValue$163 ==.
; genLabel
00103$:
	Sstm8s_adc2$ADC2_GetConversionValue$164 ==.
;	../SPL/src/stm8s_adc2.c: 344: return ((uint16_t)temph);
; genReturn
	ldw	x, (0x03, sp)
; genLabel
00104$:
	Sstm8s_adc2$ADC2_GetConversionValue$165 ==.
;	../SPL/src/stm8s_adc2.c: 345: }
; genEndFunction
	addw	sp, #4
	Sstm8s_adc2$ADC2_GetConversionValue$166 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$167 ==.
	XG$ADC2_GetConversionValue$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_GetConversionValue$168 ==.
	Sstm8s_adc2$ADC2_GetFlagStatus$169 ==.
;	../SPL/src/stm8s_adc2.c: 352: FlagStatus ADC2_GetFlagStatus(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_GetFlagStatus:
	Sstm8s_adc2$ADC2_GetFlagStatus$170 ==.
	Sstm8s_adc2$ADC2_GetFlagStatus$171 ==.
;	../SPL/src/stm8s_adc2.c: 355: return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x80
; genReturn
; genLabel
00101$:
	Sstm8s_adc2$ADC2_GetFlagStatus$172 ==.
;	../SPL/src/stm8s_adc2.c: 356: }
; genEndFunction
	Sstm8s_adc2$ADC2_GetFlagStatus$173 ==.
	XG$ADC2_GetFlagStatus$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_GetFlagStatus$174 ==.
	Sstm8s_adc2$ADC2_ClearFlag$175 ==.
;	../SPL/src/stm8s_adc2.c: 363: void ADC2_ClearFlag(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ClearFlag:
	Sstm8s_adc2$ADC2_ClearFlag$176 ==.
	Sstm8s_adc2$ADC2_ClearFlag$177 ==.
;	../SPL/src/stm8s_adc2.c: 365: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5400, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_ClearFlag$178 ==.
;	../SPL/src/stm8s_adc2.c: 366: }
; genEndFunction
	Sstm8s_adc2$ADC2_ClearFlag$179 ==.
	XG$ADC2_ClearFlag$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ClearFlag$180 ==.
	Sstm8s_adc2$ADC2_GetITStatus$181 ==.
;	../SPL/src/stm8s_adc2.c: 374: ITStatus ADC2_GetITStatus(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_GetITStatus:
	Sstm8s_adc2$ADC2_GetITStatus$182 ==.
	Sstm8s_adc2$ADC2_GetITStatus$183 ==.
;	../SPL/src/stm8s_adc2.c: 376: return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x80
; genReturn
; genLabel
00101$:
	Sstm8s_adc2$ADC2_GetITStatus$184 ==.
;	../SPL/src/stm8s_adc2.c: 377: }
; genEndFunction
	Sstm8s_adc2$ADC2_GetITStatus$185 ==.
	XG$ADC2_GetITStatus$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_GetITStatus$186 ==.
	Sstm8s_adc2$ADC2_ClearITPendingBit$187 ==.
;	../SPL/src/stm8s_adc2.c: 384: void ADC2_ClearITPendingBit(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ClearITPendingBit:
	Sstm8s_adc2$ADC2_ClearITPendingBit$188 ==.
	Sstm8s_adc2$ADC2_ClearITPendingBit$189 ==.
;	../SPL/src/stm8s_adc2.c: 386: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5400, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_ClearITPendingBit$190 ==.
;	../SPL/src/stm8s_adc2.c: 387: }
; genEndFunction
	Sstm8s_adc2$ADC2_ClearITPendingBit$191 ==.
	XG$ADC2_ClearITPendingBit$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ClearITPendingBit$192 ==.
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
	.ascii "../SPL/src/stm8s_adc2.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$0)
	.db	3
	.sleb128	53
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$2-Sstm8s_adc2$ADC2_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$3-Sstm8s_adc2$ADC2_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$4-Sstm8s_adc2$ADC2_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$5-Sstm8s_adc2$ADC2_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$6-Sstm8s_adc2$ADC2_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$7-Sstm8s_adc2$ADC2_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_DeInit$8-Sstm8s_adc2$ADC2_DeInit$7
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$10)
	.db	3
	.sleb128	82
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$12-Sstm8s_adc2$ADC2_Init$10
	.db	3
	.sleb128	15
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$17-Sstm8s_adc2$ADC2_Init$12
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$20-Sstm8s_adc2$ADC2_Init$17
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$24-Sstm8s_adc2$ADC2_Init$20
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$28-Sstm8s_adc2$ADC2_Init$24
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$29-Sstm8s_adc2$ADC2_Init$28
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_Init$30-Sstm8s_adc2$ADC2_Init$29
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$32)
	.db	3
	.sleb128	120
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$34-Sstm8s_adc2$ADC2_Cmd$32
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$35-Sstm8s_adc2$ADC2_Cmd$34
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$37-Sstm8s_adc2$ADC2_Cmd$35
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$40-Sstm8s_adc2$ADC2_Cmd$37
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$42-Sstm8s_adc2$ADC2_Cmd$40
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_Cmd$43-Sstm8s_adc2$ADC2_Cmd$42
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$45)
	.db	3
	.sleb128	140
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$47-Sstm8s_adc2$ADC2_ITConfig$45
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$48-Sstm8s_adc2$ADC2_ITConfig$47
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$50-Sstm8s_adc2$ADC2_ITConfig$48
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$53-Sstm8s_adc2$ADC2_ITConfig$50
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$55-Sstm8s_adc2$ADC2_ITConfig$53
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ITConfig$56-Sstm8s_adc2$ADC2_ITConfig$55
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$58)
	.db	3
	.sleb128	163
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$60-Sstm8s_adc2$ADC2_PrescalerConfig$58
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$61-Sstm8s_adc2$ADC2_PrescalerConfig$60
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$62-Sstm8s_adc2$ADC2_PrescalerConfig$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_PrescalerConfig$63-Sstm8s_adc2$ADC2_PrescalerConfig$62
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$65)
	.db	3
	.sleb128	182
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$68-Sstm8s_adc2$ADC2_SchmittTriggerConfig$65
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$70-Sstm8s_adc2$ADC2_SchmittTriggerConfig$68
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$72-Sstm8s_adc2$ADC2_SchmittTriggerConfig$70
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$74-Sstm8s_adc2$ADC2_SchmittTriggerConfig$72
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$75-Sstm8s_adc2$ADC2_SchmittTriggerConfig$74
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$78-Sstm8s_adc2$ADC2_SchmittTriggerConfig$75
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$79-Sstm8s_adc2$ADC2_SchmittTriggerConfig$78
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$81-Sstm8s_adc2$ADC2_SchmittTriggerConfig$79
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$82-Sstm8s_adc2$ADC2_SchmittTriggerConfig$81
	.db	3
	.sleb128	-9
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$83-Sstm8s_adc2$ADC2_SchmittTriggerConfig$82
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$87-Sstm8s_adc2$ADC2_SchmittTriggerConfig$83
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$89-Sstm8s_adc2$ADC2_SchmittTriggerConfig$87
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$92-Sstm8s_adc2$ADC2_SchmittTriggerConfig$89
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$94-Sstm8s_adc2$ADC2_SchmittTriggerConfig$92
	.db	3
	.sleb128	-16
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$95-Sstm8s_adc2$ADC2_SchmittTriggerConfig$94
	.db	3
	.sleb128	23
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$99-Sstm8s_adc2$ADC2_SchmittTriggerConfig$95
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$101-Sstm8s_adc2$ADC2_SchmittTriggerConfig$99
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$104-Sstm8s_adc2$ADC2_SchmittTriggerConfig$101
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$106-Sstm8s_adc2$ADC2_SchmittTriggerConfig$104
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_SchmittTriggerConfig$108-Sstm8s_adc2$ADC2_SchmittTriggerConfig$106
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$110)
	.db	3
	.sleb128	235
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$112-Sstm8s_adc2$ADC2_ConversionConfig$110
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$113-Sstm8s_adc2$ADC2_ConversionConfig$112
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$114-Sstm8s_adc2$ADC2_ConversionConfig$113
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$115-Sstm8s_adc2$ADC2_ConversionConfig$114
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$120-Sstm8s_adc2$ADC2_ConversionConfig$115
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$123-Sstm8s_adc2$ADC2_ConversionConfig$120
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$125-Sstm8s_adc2$ADC2_ConversionConfig$123
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$126-Sstm8s_adc2$ADC2_ConversionConfig$125
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$127-Sstm8s_adc2$ADC2_ConversionConfig$126
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ConversionConfig$128-Sstm8s_adc2$ADC2_ConversionConfig$127
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$130)
	.db	3
	.sleb128	274
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$132-Sstm8s_adc2$ADC2_ExternalTriggerConfig$130
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$133-Sstm8s_adc2$ADC2_ExternalTriggerConfig$132
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$135-Sstm8s_adc2$ADC2_ExternalTriggerConfig$133
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$138-Sstm8s_adc2$ADC2_ExternalTriggerConfig$135
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$140-Sstm8s_adc2$ADC2_ExternalTriggerConfig$138
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$141-Sstm8s_adc2$ADC2_ExternalTriggerConfig$140
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ExternalTriggerConfig$142-Sstm8s_adc2$ADC2_ExternalTriggerConfig$141
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$144)
	.db	3
	.sleb128	307
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_StartConversion$146-Sstm8s_adc2$ADC2_StartConversion$144
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_StartConversion$147-Sstm8s_adc2$ADC2_StartConversion$146
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_StartConversion$148-Sstm8s_adc2$ADC2_StartConversion$147
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$150)
	.db	3
	.sleb128	319
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$153-Sstm8s_adc2$ADC2_GetConversionValue$150
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$155-Sstm8s_adc2$ADC2_GetConversionValue$153
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$156-Sstm8s_adc2$ADC2_GetConversionValue$155
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$157-Sstm8s_adc2$ADC2_GetConversionValue$156
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$160-Sstm8s_adc2$ADC2_GetConversionValue$157
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$161-Sstm8s_adc2$ADC2_GetConversionValue$160
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$162-Sstm8s_adc2$ADC2_GetConversionValue$161
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$164-Sstm8s_adc2$ADC2_GetConversionValue$162
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$165-Sstm8s_adc2$ADC2_GetConversionValue$164
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_GetConversionValue$167-Sstm8s_adc2$ADC2_GetConversionValue$165
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$169)
	.db	3
	.sleb128	351
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$171-Sstm8s_adc2$ADC2_GetFlagStatus$169
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$172-Sstm8s_adc2$ADC2_GetFlagStatus$171
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_GetFlagStatus$173-Sstm8s_adc2$ADC2_GetFlagStatus$172
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$175)
	.db	3
	.sleb128	362
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ClearFlag$177-Sstm8s_adc2$ADC2_ClearFlag$175
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ClearFlag$178-Sstm8s_adc2$ADC2_ClearFlag$177
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ClearFlag$179-Sstm8s_adc2$ADC2_ClearFlag$178
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$181)
	.db	3
	.sleb128	373
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetITStatus$183-Sstm8s_adc2$ADC2_GetITStatus$181
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetITStatus$184-Sstm8s_adc2$ADC2_GetITStatus$183
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_GetITStatus$185-Sstm8s_adc2$ADC2_GetITStatus$184
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$187)
	.db	3
	.sleb128	383
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$189-Sstm8s_adc2$ADC2_ClearITPendingBit$187
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$190-Sstm8s_adc2$ADC2_ClearITPendingBit$189
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ClearITPendingBit$191-Sstm8s_adc2$ADC2_ClearITPendingBit$190
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$192)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$186)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$180)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$174)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$168)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$149)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$143)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$129)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$109)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$64)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$57)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$44)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$9)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	11
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
	.uleb128	10
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
	.uleb128	9
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
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
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
	.uleb128	6
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	7
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
	.uleb128	5
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
	.ascii "../SPL/src/stm8s_adc2.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "ADC2_DeInit"
	.db	0
	.dw	0,(_ADC2_DeInit)
	.dw	0,(XG$ADC2_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+548)
	.uleb128	3
	.dw	0,343
	.ascii "ADC2_Init"
	.db	0
	.dw	0,(_ADC2_Init)
	.dw	0,(XG$ADC2_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+384)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_ConversionMode"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "ADC2_Channel"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC2_PrescalerSelection"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "ADC2_ExtTrigger"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ADC2_ExtTriggerState"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "ADC2_Align"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "ADC2_SchmittTriggerChannel"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "ADC2_SchmittTriggerState"
	.db	0
	.dw	0,343
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,423
	.ascii "ADC2_Cmd"
	.db	0
	.dw	0,(_ADC2_Cmd)
	.dw	0,(XG$ADC2_Cmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+364)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,343
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$36)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$38)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$39)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$41)
	.uleb128	0
	.uleb128	3
	.dw	0,491
	.ascii "ADC2_ITConfig"
	.db	0
	.dw	0,(_ADC2_ITConfig)
	.dw	0,(XG$ADC2_ITConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+344)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,343
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$49)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$51)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$52)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$54)
	.uleb128	0
	.uleb128	3
	.dw	0,554
	.ascii "ADC2_PrescalerConfig"
	.db	0
	.dw	0,(_ADC2_PrescalerConfig)
	.dw	0,(XG$ADC2_PrescalerConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+324)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_Prescaler"
	.db	0
	.dw	0,343
	.uleb128	0
	.uleb128	3
	.dw	0,731
	.ascii "ADC2_SchmittTriggerConfig"
	.db	0
	.dw	0,(_ADC2_SchmittTriggerConfig)
	.dw	0,(XG$ADC2_SchmittTriggerConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_SchmittTriggerChannel"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "NewState"
	.db	0
	.dw	0,343
	.uleb128	7
	.dw	0,678
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$71)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$73)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$76)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$77)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$80)
	.uleb128	0
	.uleb128	7
	.dw	0,706
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$86)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$88)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$90)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$91)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$93)
	.uleb128	0
	.uleb128	8
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$98)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$100)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$102)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$103)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$105)
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,858
	.ascii "ADC2_ConversionConfig"
	.db	0
	.dw	0,(_ADC2_ConversionConfig)
	.dw	0,(XG$ADC2_ConversionConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+164)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_ConversionMode"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "ADC2_Channel"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC2_Align"
	.db	0
	.dw	0,343
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$119)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$121)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$122)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$124)
	.uleb128	0
	.uleb128	3
	.dw	0,963
	.ascii "ADC2_ExternalTriggerConfig"
	.db	0
	.dw	0,(_ADC2_ExternalTriggerConfig)
	.dw	0,(XG$ADC2_ExternalTriggerConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+144)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_ExtTrigger"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "NewState"
	.db	0
	.dw	0,343
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$134)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$136)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$137)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$139)
	.uleb128	0
	.uleb128	2
	.ascii "ADC2_StartConversion"
	.db	0
	.dw	0,(_ADC2_StartConversion)
	.dw	0,(XG$ADC2_StartConversion$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+124)
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	9
	.dw	0,1110
	.ascii "ADC2_GetConversionValue"
	.db	0
	.dw	0,(_ADC2_GetConversionValue)
	.dw	0,(XG$ADC2_GetConversionValue$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.dw	0,998
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$154)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$158)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$159)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$163)
	.uleb128	10
	.db	6
	.db	84
	.db	147
	.uleb128	1
	.db	83
	.db	147
	.uleb128	1
	.ascii "temph"
	.db	0
	.dw	0,998
	.uleb128	10
	.db	1
	.db	80
	.ascii "templ"
	.db	0
	.dw	0,343
	.uleb128	0
	.uleb128	11
	.ascii "ADC2_GetFlagStatus"
	.db	0
	.dw	0,(_ADC2_GetFlagStatus)
	.dw	0,(XG$ADC2_GetFlagStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.dw	0,343
	.uleb128	2
	.ascii "ADC2_ClearFlag"
	.db	0
	.dw	0,(_ADC2_ClearFlag)
	.dw	0,(XG$ADC2_ClearFlag$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	11
	.ascii "ADC2_GetITStatus"
	.db	0
	.dw	0,(_ADC2_GetITStatus)
	.dw	0,(XG$ADC2_GetITStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,343
	.uleb128	2
	.ascii "ADC2_ClearITPendingBit"
	.db	0
	.dw	0,(_ADC2_ClearITPendingBit)
	.dw	0,(XG$ADC2_ClearITPendingBit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
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
	.dw	0,67
	.ascii "ADC2_DeInit"
	.db	0
	.dw	0,93
	.ascii "ADC2_Init"
	.db	0
	.dw	0,360
	.ascii "ADC2_Cmd"
	.db	0
	.dw	0,423
	.ascii "ADC2_ITConfig"
	.db	0
	.dw	0,491
	.ascii "ADC2_PrescalerConfig"
	.db	0
	.dw	0,554
	.ascii "ADC2_SchmittTriggerConfig"
	.db	0
	.dw	0,731
	.ascii "ADC2_ConversionConfig"
	.db	0
	.dw	0,858
	.ascii "ADC2_ExternalTriggerConfig"
	.db	0
	.dw	0,963
	.ascii "ADC2_StartConversion"
	.db	0
	.dw	0,1014
	.ascii "ADC2_GetConversionValue"
	.db	0
	.dw	0,1110
	.ascii "ADC2_GetFlagStatus"
	.db	0
	.dw	0,1147
	.ascii "ADC2_ClearFlag"
	.db	0
	.dw	0,1176
	.ascii "ADC2_GetITStatus"
	.db	0
	.dw	0,1211
	.ascii "ADC2_ClearITPendingBit"
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
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ClearITPendingBit$192-Sstm8s_adc2$ADC2_ClearITPendingBit$188
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$188)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_GetITStatus$186-Sstm8s_adc2$ADC2_GetITStatus$182
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$182)
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
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ClearFlag$180-Sstm8s_adc2$ADC2_ClearFlag$176
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$176)
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
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_GetFlagStatus$174-Sstm8s_adc2$ADC2_GetFlagStatus$170
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$170)
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
	.dw	0,33
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_GetConversionValue$168-Sstm8s_adc2$ADC2_GetConversionValue$151
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$151)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$152)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$166)
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
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_StartConversion$149-Sstm8s_adc2$ADC2_StartConversion$145
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$145)
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
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ExternalTriggerConfig$143-Sstm8s_adc2$ADC2_ExternalTriggerConfig$131
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$131)
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
	.dw	0,40
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ConversionConfig$129-Sstm8s_adc2$ADC2_ConversionConfig$111
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$111)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$116)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$117)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$118)
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
	.dw	0,68
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_SchmittTriggerConfig$109-Sstm8s_adc2$ADC2_SchmittTriggerConfig$66
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$66)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$67)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$69)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$84)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$85)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$96)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$97)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$107)
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
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_PrescalerConfig$64-Sstm8s_adc2$ADC2_PrescalerConfig$59
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$59)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE10_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ITConfig$57-Sstm8s_adc2$ADC2_ITConfig$46
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$46)
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
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_Cmd$44-Sstm8s_adc2$ADC2_Cmd$33
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$33)
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
	.dw	0,103
	.dw	0,(Ldebug_CIE12_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_Init$11)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_Init$31-Sstm8s_adc2$ADC2_Init$11
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
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
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_DeInit$9-Sstm8s_adc2$ADC2_DeInit$1
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
	.db	14
	.uleb128	2
