;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module milis
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_ClearFlag
	.globl _TIM4_ITConfig
	.globl _TIM4_Cmd
	.globl _TIM4_TimeBaseInit
	.globl _ITC_SetSoftwarePriority
	.globl _miliseconds
	.globl _milis
	.globl _init_milis
	.globl _TIM4_UPD_OVF_IRQHandler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
G$miliseconds$0_0$0==.
_miliseconds::
	.ds 4
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
	Smilis$milis$0 ==.
;	./src/milis.c: 13: MILIS_PROTOTYPE
; genLabel
;	-----------------------------------------
;	 function milis
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_milis:
	Smilis$milis$1 ==.
	sub	sp, #4
	Smilis$milis$2 ==.
	Smilis$milis$3 ==.
;	./src/milis.c: 20: TIM4_ITConfig(TIM4_IT_UPDATE, DISABLE);
; genIPush
	push	#0x00
	Smilis$milis$4 ==.
; genIPush
	push	#0x01
	Smilis$milis$5 ==.
; genCall
	call	_TIM4_ITConfig
	popw	x
	Smilis$milis$6 ==.
	Smilis$milis$7 ==.
;	./src/milis.c: 21: tmp = miliseconds;
; genAssign
	ldw	x, _miliseconds+2
	ldw	y, _miliseconds+0
	ldw	(0x01, sp), y
	Smilis$milis$8 ==.
;	./src/milis.c: 22: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
; genIPush
	pushw	x
	Smilis$milis$9 ==.
	push	#0x01
	Smilis$milis$10 ==.
; genIPush
	push	#0x01
	Smilis$milis$11 ==.
; genCall
	call	_TIM4_ITConfig
	popw	x
	Smilis$milis$12 ==.
	popw	x
	Smilis$milis$13 ==.
	Smilis$milis$14 ==.
;	./src/milis.c: 23: return tmp;
; genReturn
	ldw	y, (0x01, sp)
; genLabel
00101$:
	Smilis$milis$15 ==.
;	./src/milis.c: 24: }
; genEndFunction
	addw	sp, #4
	Smilis$milis$16 ==.
	Smilis$milis$17 ==.
	XG$milis$0$0 ==.
	ret
	Smilis$milis$18 ==.
	Smilis$init_milis$19 ==.
;	./src/milis.c: 27: void init_milis(void)
; genLabel
;	-----------------------------------------
;	 function init_milis
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init_milis:
	Smilis$init_milis$20 ==.
	Smilis$init_milis$21 ==.
;	./src/milis.c: 29: TIM4_TimeBaseInit(PRESCALER, PERIOD);       // (16MHz / 128) / 125 = 1000Hz
; genIPush
	push	#0x7c
	Smilis$init_milis$22 ==.
; genIPush
	push	#0x07
	Smilis$init_milis$23 ==.
; genCall
	call	_TIM4_TimeBaseInit
	popw	x
	Smilis$init_milis$24 ==.
	Smilis$init_milis$25 ==.
;	./src/milis.c: 30: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
; genIPush
	push	#0x01
	Smilis$init_milis$26 ==.
; genCall
	call	_TIM4_ClearFlag
	pop	a
	Smilis$init_milis$27 ==.
	Smilis$init_milis$28 ==.
;	./src/milis.c: 31: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
; genIPush
	push	#0x01
	Smilis$init_milis$29 ==.
; genIPush
	push	#0x01
	Smilis$init_milis$30 ==.
; genCall
	call	_TIM4_ITConfig
	popw	x
	Smilis$init_milis$31 ==.
	Smilis$init_milis$32 ==.
;	./src/milis.c: 32: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF, ITC_PRIORITYLEVEL_1);     // nízká priorita pøerušení
; genIPush
	push	#0x01
	Smilis$init_milis$33 ==.
; genIPush
	push	#0x17
	Smilis$init_milis$34 ==.
; genCall
	call	_ITC_SetSoftwarePriority
	popw	x
	Smilis$init_milis$35 ==.
	Smilis$init_milis$36 ==.
;	./src/milis.c: 33: enableInterrupts();
;	genInline
	rim
	Smilis$init_milis$37 ==.
;	./src/milis.c: 34: TIM4_Cmd(ENABLE);
; genIPush
	push	#0x01
	Smilis$init_milis$38 ==.
; genCall
	call	_TIM4_Cmd
	pop	a
	Smilis$init_milis$39 ==.
; genLabel
00101$:
	Smilis$init_milis$40 ==.
;	./src/milis.c: 35: }
; genEndFunction
	Smilis$init_milis$41 ==.
	XG$init_milis$0$0 ==.
	ret
	Smilis$init_milis$42 ==.
	Smilis$TIM4_UPD_OVF_IRQHandler$43 ==.
;	./src/milis.c: 38: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
; genLabel
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_TIM4_UPD_OVF_IRQHandler:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
	Smilis$TIM4_UPD_OVF_IRQHandler$44 ==.
	Smilis$TIM4_UPD_OVF_IRQHandler$45 ==.
;	./src/milis.c: 40: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
; genIPush
	push	#0x01
	Smilis$TIM4_UPD_OVF_IRQHandler$46 ==.
; genCall
	call	_TIM4_ClearFlag
	pop	a
	Smilis$TIM4_UPD_OVF_IRQHandler$47 ==.
	Smilis$TIM4_UPD_OVF_IRQHandler$48 ==.
;	./src/milis.c: 41: miliseconds++;
; genAssign
	ldw	x, _miliseconds+2
	ldw	y, _miliseconds+0
; genPlus
	incw	x
	jrne	00103$
	incw	y
00103$:
; genAssign
	ldw	_miliseconds+2, x
	ldw	_miliseconds+0, y
; genLabel
00101$:
	Smilis$TIM4_UPD_OVF_IRQHandler$49 ==.
;	./src/milis.c: 42: }
; genEndFunction
	Smilis$TIM4_UPD_OVF_IRQHandler$50 ==.
	XG$TIM4_UPD_OVF_IRQHandler$0$0 ==.
	iret
	Smilis$TIM4_UPD_OVF_IRQHandler$51 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
Fmilis$__xinit_miliseconds$0_0$0 == .
__xinit__miliseconds:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
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
	.ascii "./src/milis.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smilis$milis$0)
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Smilis$milis$3-Smilis$milis$0
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Smilis$milis$7-Smilis$milis$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$milis$8-Smilis$milis$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$milis$14-Smilis$milis$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$milis$15-Smilis$milis$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smilis$milis$17-Smilis$milis$15
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smilis$init_milis$19)
	.db	3
	.sleb128	26
	.db	1
	.db	9
	.dw	Smilis$init_milis$21-Smilis$init_milis$19
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smilis$init_milis$25-Smilis$init_milis$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$init_milis$28-Smilis$init_milis$25
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$init_milis$32-Smilis$init_milis$28
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$init_milis$36-Smilis$init_milis$32
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$init_milis$37-Smilis$init_milis$36
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$init_milis$40-Smilis$init_milis$37
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smilis$init_milis$41-Smilis$init_milis$40
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$43)
	.db	3
	.sleb128	37
	.db	1
	.db	9
	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$45-Smilis$TIM4_UPD_OVF_IRQHandler$43
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$48-Smilis$TIM4_UPD_OVF_IRQHandler$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smilis$TIM4_UPD_OVF_IRQHandler$49-Smilis$TIM4_UPD_OVF_IRQHandler$48
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smilis$TIM4_UPD_OVF_IRQHandler$50-Smilis$TIM4_UPD_OVF_IRQHandler$49
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$51)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smilis$init_milis$39)
	.dw	0,(Smilis$init_milis$42)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smilis$init_milis$38)
	.dw	0,(Smilis$init_milis$39)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smilis$init_milis$35)
	.dw	0,(Smilis$init_milis$38)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smilis$init_milis$34)
	.dw	0,(Smilis$init_milis$35)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smilis$init_milis$33)
	.dw	0,(Smilis$init_milis$34)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smilis$init_milis$31)
	.dw	0,(Smilis$init_milis$33)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smilis$init_milis$30)
	.dw	0,(Smilis$init_milis$31)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smilis$init_milis$29)
	.dw	0,(Smilis$init_milis$30)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smilis$init_milis$27)
	.dw	0,(Smilis$init_milis$29)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smilis$init_milis$26)
	.dw	0,(Smilis$init_milis$27)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smilis$init_milis$24)
	.dw	0,(Smilis$init_milis$26)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smilis$init_milis$23)
	.dw	0,(Smilis$init_milis$24)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smilis$init_milis$22)
	.dw	0,(Smilis$init_milis$23)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smilis$init_milis$20)
	.dw	0,(Smilis$init_milis$22)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smilis$milis$16)
	.dw	0,(Smilis$milis$18)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smilis$milis$13)
	.dw	0,(Smilis$milis$16)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smilis$milis$12)
	.dw	0,(Smilis$milis$13)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smilis$milis$11)
	.dw	0,(Smilis$milis$12)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Smilis$milis$10)
	.dw	0,(Smilis$milis$11)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Smilis$milis$9)
	.dw	0,(Smilis$milis$10)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smilis$milis$6)
	.dw	0,(Smilis$milis$9)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smilis$milis$5)
	.dw	0,(Smilis$milis$6)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smilis$milis$4)
	.dw	0,(Smilis$milis$5)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smilis$milis$2)
	.dw	0,(Smilis$milis$4)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smilis$milis$1)
	.dw	0,(Smilis$milis$2)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	7
	.uleb128	53
	.db	0
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
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
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
	.uleb128	6
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
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
	.ascii "./src/milis.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	3
	.dw	0,127
	.ascii "milis"
	.db	0
	.dw	0,(_milis)
	.dw	0,(XG$milis$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.dw	0,57
	.uleb128	4
	.db	14
	.db	145
	.sleb128	-4
	.db	147
	.uleb128	1
	.db	145
	.sleb128	-3
	.db	147
	.uleb128	1
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "tmp"
	.db	0
	.dw	0,57
	.uleb128	0
	.uleb128	5
	.ascii "init_milis"
	.db	0
	.dw	0,(_init_milis)
	.dw	0,(XG$init_milis$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+44)
	.uleb128	6
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.db	0
	.dw	0,(_TIM4_UPD_OVF_IRQHandler)
	.dw	0,(XG$TIM4_UPD_OVF_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	7
	.dw	0,57
	.uleb128	8
	.db	5
	.db	3
	.dw	0,(_miliseconds)
	.ascii "miliseconds"
	.db	0
	.db	1
	.dw	0,191
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
	.dw	0,74
	.ascii "milis"
	.db	0
	.dw	0,127
	.ascii "init_milis"
	.db	0
	.dw	0,152
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.db	0
	.dw	0,196
	.ascii "miliseconds"
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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)	;initial loc
	.dw	0,Smilis$TIM4_UPD_OVF_IRQHandler$51-Smilis$TIM4_UPD_OVF_IRQHandler$44
	.db	1
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$44)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$46)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smilis$TIM4_UPD_OVF_IRQHandler$47)
	.db	14
	.uleb128	9

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
	.dw	0,110
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smilis$init_milis$20)	;initial loc
	.dw	0,Smilis$init_milis$42-Smilis$init_milis$20
	.db	1
	.dw	0,(Smilis$init_milis$20)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smilis$init_milis$22)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smilis$init_milis$23)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smilis$init_milis$24)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smilis$init_milis$26)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smilis$init_milis$27)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smilis$init_milis$29)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smilis$init_milis$30)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smilis$init_milis$31)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smilis$init_milis$33)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smilis$init_milis$34)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smilis$init_milis$35)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smilis$init_milis$38)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smilis$init_milis$39)
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
	.dw	0,89
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Smilis$milis$1)	;initial loc
	.dw	0,Smilis$milis$18-Smilis$milis$1
	.db	1
	.dw	0,(Smilis$milis$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smilis$milis$2)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smilis$milis$4)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smilis$milis$5)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smilis$milis$6)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smilis$milis$9)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smilis$milis$10)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smilis$milis$11)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smilis$milis$12)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smilis$milis$13)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smilis$milis$16)
	.db	14
	.uleb128	2
