	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	startState
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	startState, %function
startState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L11
	ldr	r2, .L11+4
	ldr	r0, [r3]
	ldrh	r2, [r2]
	add	r0, r0, #1
	tst	r2, #4
	str	r0, [r3]
	bxeq	lr
	ldr	r3, .L11+8
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L11+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L11+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L11+20
	ldr	r0, .L11+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L11+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	initGame
	.word	fillScreen
	.word	52991
	.word	state
	.size	startState, .-startState
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L15
	sub	sp, sp, #8
	ldr	r0, .L15+4
	ldr	r3, .L15+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L15+12
	mov	r3, #10
	mov	r2, #240
	mov	r1, #150
	mov	r0, #0
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r5, #31
	mov	r1, #0
	mov	r3, #10
	mov	r0, r1
	mov	r2, #240
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldr	r1, .L15+16
	ldr	r4, .L15+20
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #115
	mov	r1, #70
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #70
	mov	r2, r3
	mov	r0, #115
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #90
	mov	r2, r3
	mov	r0, #115
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #50
	mov	r2, r3
	mov	r0, #115
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #70
	mov	r2, r3
	mov	r0, #95
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #70
	mov	r2, r3
	mov	r0, #135
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L15+24
	str	r2, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	32736
	.word	15855
	.word	fillScreen
	.word	drawRect
	.word	32767
	.word	drawCircle
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L18
	strh	r2, [r3]	@ movhi
	b	goToStart
.L19:
	.align	2
.L18:
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	winState.part.0, %function
winState.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L23:
	.align	2
.L22:
	.word	buttons
	.size	winState.part.0, .-winState.part.0
	.set	loseState.part.0,winState.part.0
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L26
	ldr	r0, .L26+4
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L26+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	fillScreen
	.word	52991
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	pauseState
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseState, %function
pauseState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L40
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L29
	ldr	r2, .L40+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L38
.L29:
	tst	r3, #8
	beq	.L28
	ldr	r3, .L40+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L39
.L28:
	pop	{r4, lr}
	bx	lr
.L39:
	pop	{r4, lr}
	b	goToStart
.L38:
	ldr	r3, .L40+8
	ldr	r0, .L40+12
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L40+16
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L29
.L41:
	.align	2
.L40:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	52991
	.word	state
	.size	pauseState, .-pauseState
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L44
	ldr	r0, .L44+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L44+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	fillScreen
	.word	24319
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	winState
	.syntax unified
	.arm
	.fpu softvfp
	.type	winState, %function
winState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L48
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	b	winState.part.0
.L49:
	.align	2
.L48:
	.word	oldButtons
	.size	winState, .-winState
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L52
	sub	sp, sp, #8
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	mov	r2, #186
	mov	r3, #10
	str	r2, [sp]
	mov	r1, #150
	mov	r2, #240
	mov	r0, #0
	ldr	r4, .L52+8
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L52+12
	str	r2, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	32736
	.word	fillScreen
	.word	drawRect
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	loseState
	.syntax unified
	.arm
	.fpu softvfp
	.type	loseState, %function
loseState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	winState
	.size	loseState, .-loseState
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #31
	sub	sp, sp, #8
	ldr	r3, .L57
	mov	lr, pc
	bx	r3
	mov	r2, #186
	mov	r3, #10
	str	r2, [sp]
	mov	r1, #150
	mov	r2, #240
	mov	r0, #0
	ldr	r4, .L57+4
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L57+8
	str	r2, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	fillScreen
	.word	drawRect
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	gameState
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameState, %function
gameState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L75
	mov	lr, pc
	bx	r3
	ldr	r4, .L75+4
	ldr	r3, .L75+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L60
	ldr	r3, .L75+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L71
.L60:
	ldr	r5, .L75+20
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L72
	cmp	r3, #100
	beq	.L73
.L62:
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L59
	ldr	r3, .L75+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L74
.L59:
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	bl	goToWin
	ldr	r3, [r5]
	cmp	r3, #100
	bne	.L62
.L73:
	bl	goToLose
	b	.L62
.L74:
	pop	{r4, r5, r6, lr}
	b	goToLose
.L71:
	ldr	r3, .L75+24
	ldr	r0, .L75+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L75+32
	str	r2, [r3]
	b	.L60
.L76:
	.align	2
.L75:
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.word	ballsRemaining
	.word	fillScreen
	.word	24319
	.word	state
	.size	gameState, .-gameState
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L91
	ldr	r6, .L91+4
	ldr	r10, .L91+8
	push	{r4, r7, fp, lr}
	strh	r2, [r3]	@ movhi
	ldr	r3, .L91+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L91+16
	ldr	r2, [r6]
	ldrh	r0, [r10]
	ldr	r9, .L91+20
	ldr	r8, .L91+24
	ldr	r7, .L91+28
	ldr	fp, .L91+32
	ldr	r4, .L91+36
.L79:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L87
.L81:
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L80
.L80:
	tst	r0, #4
	beq	.L87
	ldr	r3, .L91+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L79
.L82:
	tst	r0, #4
	beq	.L87
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L79
.L83:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L79
.L84:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L79
.L85:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L79
.L87:
	mov	r0, r3
	b	.L79
.L92:
	.align	2
.L91:
	.word	1027
	.word	state
	.word	buttons
	.word	goToStart
	.word	oldButtons
	.word	startState
	.word	gameState
	.word	pauseState
	.word	winState.part.0
	.word	67109120
	.word	loseState.part.0
	.size	main, .-main
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
