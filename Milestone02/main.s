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
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #16
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #67108864
	ldr	r2, .L4+24
	strh	r3, [r1, #16]	@ movhi
	pop	{r4, lr}
	str	r3, [r2]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startScPal
	.word	6992
	.word	startScTiles
	.word	100720640
	.word	startScMap
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
	mov	r0, #4352
	mov	r1, #56320
	mov	r2, #0
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r0, .L7
	ldr	r1, .L7+4
	ldrh	r0, [r0, #48]
	ldr	r3, .L7+8
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.size	initialize, .-initialize
	.align	2
	.global	goToInstruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction, %function
goToInstruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #16
	ldr	r4, .L11
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L11+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L11+8
	ldr	r1, .L11+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L11+16
	mov	r0, #3
	ldr	r1, .L11+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L11+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	DMANow
	.word	instructScPal
	.word	6096
	.word	instructScTiles
	.word	100720640
	.word	instructScMap
	.word	state
	.size	goToInstruction, .-goToInstruction
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
	mov	r3, #16
	ldr	r4, .L15
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L15+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L15+8
	ldr	r1, .L15+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L15+16
	mov	r0, #3
	ldr	r1, .L15+20
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L15+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	DMANow
	.word	gameOnePal
	.word	5792
	.word	gameOneTiles
	.word	100720640
	.word	gameOneMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L29
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L18
	ldr	r2, .L29+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L27
.L18:
	tst	r3, #4
	beq	.L17
	ldr	r3, .L29+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L28
.L17:
	pop	{r4, lr}
	bx	lr
.L28:
	pop	{r4, lr}
	b	goToInstruction
.L27:
	ldr	r3, .L29+8
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L18
.L30:
	.align	2
.L29:
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	start, .-start
	.align	2
	.global	instruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction, %function
instruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L43
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L32
	ldr	r2, .L43+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L41
.L32:
	tst	r3, #8
	beq	.L31
	ldr	r3, .L43+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L42
.L31:
	pop	{r4, lr}
	bx	lr
.L42:
	ldr	r3, .L43+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L41:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L32
.L44:
	.align	2
.L43:
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	instruction, .-instruction
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
	mov	r3, #16
	ldr	r4, .L47
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L47+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L47+8
	ldr	r1, .L47+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L47+16
	ldr	r1, .L47+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #0
	ldr	r3, .L47+24
	strh	r1, [r2, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L47+32
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L47+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L48:
	.align	2
.L47:
	.word	DMANow
	.word	pauseScPal
	.word	5920
	.word	pauseScTiles
	.word	100720640
	.word	pauseScMap
	.word	waitForVBlank
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L61
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L50
	ldr	r2, .L61+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L59
.L50:
	tst	r3, #4
	beq	.L49
	ldr	r3, .L61+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L60
.L49:
	pop	{r4, lr}
	bx	lr
.L60:
	pop	{r4, lr}
	b	goToStart
.L59:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L50
.L62:
	.align	2
.L61:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
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
	ldr	r3, .L65
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L65+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L65+12
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L65+20
	ldr	r1, .L65+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+28
	ldr	r1, .L65+32
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r2, #4
	ldr	r3, .L65+36
	strh	r0, [r1, #16]	@ movhi
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	winScPal
	.word	7440
	.word	winScTiles
	.word	100720640
	.word	winScMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	ldr	r4, .L81+4
	ldr	r3, .L81+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L68
	ldr	r2, .L81+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L78
.L68:
	tst	r3, #4
	beq	.L69
	ldr	r3, .L81+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L79
.L69:
	ldr	r3, .L81+20
	ldr	r3, [r3]
	cmp	r3, #15
	bgt	.L80
	pop	{r4, lr}
	bx	lr
.L80:
	pop	{r4, lr}
	b	goToWin
.L79:
	bl	goToWin
	b	.L69
.L78:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L68
.L82:
	.align	2
.L81:
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.word	jellyfish
	.size	game, .-game
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L90
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L83
	ldr	r3, .L90+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L89
.L83:
	pop	{r4, lr}
	bx	lr
.L89:
	pop	{r4, lr}
	b	goToStart
.L91:
	.align	2
.L90:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
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
	mov	r0, #4352
	mov	r1, #56320
	mov	r2, #0
	push	{r4, r7, fp, lr}
	strh	r0, [r3]	@ movhi
	ldr	r4, .L104
	strh	r1, [r3, #8]	@ movhi
	ldr	r8, .L104+4
	ldrh	r0, [r4, #48]
	ldr	r5, .L104+8
	ldr	r3, .L104+12
	strh	r0, [r8]	@ movhi
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L104+16
	ldr	fp, .L104+20
	ldr	r10, .L104+24
	ldr	r9, .L104+28
	ldr	r7, .L104+32
.L93:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L94:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L94
.L96:
	.word	.L100
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L95
	.word	.L95
.L95:
	mov	lr, pc
	bx	r7
	b	.L93
.L97:
	ldr	r3, .L104+36
	mov	lr, pc
	bx	r3
	b	.L93
.L98:
	mov	lr, pc
	bx	r9
	b	.L93
.L99:
	mov	lr, pc
	bx	r10
	b	.L93
.L100:
	mov	lr, pc
	bx	fp
	b	.L93
.L105:
	.align	2
.L104:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	goToStart
	.word	state
	.word	start
	.word	instruction
	.word	game
	.word	win
	.word	pause
	.size	main, .-main
	.text
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
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L108+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L108+12
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L108+16
	mov	lr, pc
	bx	r4
	mov	r3, #3248
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L108+24
	ldr	r1, .L108+28
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r2, #5
	ldr	r3, .L108+32
	strh	r0, [r1, #16]	@ movhi
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L109:
	.align	2
.L108:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	loseScPal
	.word	loseScTiles
	.word	100720640
	.word	loseScMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	lives,4,4
	.comm	jellyfish,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
