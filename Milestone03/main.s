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
	mov	r2, #67108864
	ldr	r1, .L4+24
	strh	r3, [r2, #16]	@ movhi
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	str	r3, [r1]
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
	mov	r1, #4352
	mov	r2, #7168
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	b	goToStart
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
	ldr	r4, .L9
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L9+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L9+8
	ldr	r1, .L9+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L9+16
	ldr	r1, .L9+20
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #1
	ldr	r1, .L9+24
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L10:
	.align	2
.L9:
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
	ldr	r3, .L13
	ldr	r4, .L13+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L13+8
	mov	lr, pc
	bx	r4
	mov	r3, #11968
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L13+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L13+16
	ldr	r1, .L13+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L13+24
	ldrh	r1, [r3]
	ldr	r3, .L13+28
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L13+32
	ldr	r1, .L13+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L13+40
	ldr	r1, .L13+44
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L13+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L13+52
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L13+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L14:
	.align	2
.L13:
	.word	waitForVBlank
	.word	DMANow
	.word	gameOnePal
	.word	gameOneTiles
	.word	100720640
	.word	gameOneMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
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
	ldr	r4, .L27
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L16
	ldr	r2, .L27+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L25
.L16:
	tst	r3, #4
	beq	.L15
	ldr	r3, .L27+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L26
.L15:
	pop	{r4, lr}
	bx	lr
.L26:
	pop	{r4, lr}
	b	goToInstruction
.L25:
	bl	goToGame
	ldr	r3, .L27+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L16
.L28:
	.align	2
.L27:
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
	ldr	r4, .L41
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L30
	ldr	r2, .L41+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L39
.L30:
	tst	r3, #8
	beq	.L29
	ldr	r3, .L41+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L40
.L29:
	pop	{r4, lr}
	bx	lr
.L40:
	ldr	r3, .L41+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L39:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L30
.L42:
	.align	2
.L41:
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	instruction, .-instruction
	.align	2
	.global	goToGameTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGameTwo, %function
goToGameTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L45
	ldr	r4, .L45+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L45+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L45+12
	ldr	r1, .L45+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L45+20
	ldr	r1, .L45+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L45+28
	ldrh	r1, [r3]
	ldr	r3, .L45+32
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L45+36
	ldr	r1, .L45+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L45+44
	ldr	r1, .L45+48
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L45+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L45+56
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L45+60
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	waitForVBlank
	.word	DMANow
	.word	gameTwoPal
	.word	14800
	.word	gameTwoTiles
	.word	100720640
	.word	gameTwoMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGameTwo, .-goToGameTwo
	.align	2
	.global	goToGameThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGameThree, %function
goToGameThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L49
	ldr	r4, .L49+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L49+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L49+12
	ldr	r1, .L49+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L49+20
	ldr	r1, .L49+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L49+28
	ldrh	r1, [r3]
	ldr	r3, .L49+32
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L49+36
	ldr	r1, .L49+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L49+44
	ldr	r1, .L49+48
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L49+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L49+56
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L49+60
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L50:
	.align	2
.L49:
	.word	waitForVBlank
	.word	DMANow
	.word	gameThreePal
	.word	5776
	.word	gameThreeTiles
	.word	100720640
	.word	gameThreeMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGameThree, .-goToGameThree
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
	ldr	r4, .L53
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L53+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L53+8
	ldr	r1, .L53+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L53+16
	ldr	r1, .L53+20
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r3, #67108864
	ldr	r1, .L53+24
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L53+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L53+32
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L53+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L54:
	.align	2
.L53:
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
	ldr	r4, .L67
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L56
	ldr	r2, .L67+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L65
.L56:
	tst	r3, #4
	beq	.L55
	ldr	r3, .L67+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L66
.L55:
	pop	{r4, lr}
	bx	lr
.L66:
	pop	{r4, lr}
	b	goToStart
.L65:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L56
.L68:
	.align	2
.L67:
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
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L71+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L71+12
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L71+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L71+20
	ldr	r1, .L71+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+28
	ldr	r1, .L71+32
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #6
	ldr	r1, .L71+36
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L72:
	.align	2
.L71:
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
	.global	gameThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameThree, %function
gameThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L82
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L74
	ldr	r3, .L82+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L80
.L74:
	ldr	r3, .L82+16
	ldr	r3, [r3]
	cmp	r3, #100
	beq	.L81
	pop	{r4, lr}
	bx	lr
.L81:
	pop	{r4, lr}
	b	goToWin
.L80:
	bl	goToPause
	b	.L74
.L83:
	.align	2
.L82:
	.word	updateGameThree
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	jellyfish
	.size	gameThree, .-gameThree
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
	ldr	r3, .L91
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L84
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L90
.L84:
	pop	{r4, lr}
	bx	lr
.L90:
	pop	{r4, lr}
	b	goToStart
.L92:
	.align	2
.L91:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
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
	ldr	r3, .L95
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L95+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L95+12
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3248
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L95+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L95+24
	ldr	r1, .L95+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #7
	ldr	r1, .L95+32
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L98
	ldr	r3, .L108+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L105
.L98:
	ldr	r3, .L108+16
	ldr	r3, [r3]
	cmp	r3, #50
	beq	.L106
.L99:
	ldr	r3, .L108+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L107
	pop	{r4, lr}
	bx	lr
.L107:
	pop	{r4, lr}
	b	goToLose
.L106:
	ldr	r3, .L108+24
	mov	lr, pc
	bx	r3
	bl	goToGameTwo
	b	.L99
.L105:
	bl	goToPause
	b	.L98
.L109:
	.align	2
.L108:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	jellyfish
	.word	life
	.word	initGame
	.size	game, .-game
	.align	2
	.global	gameTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameTwo, %function
gameTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L121
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L111
	ldr	r3, .L121+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L118
.L111:
	ldr	r3, .L121+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L119
.L112:
	ldr	r3, .L121+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L120
	pop	{r4, lr}
	bx	lr
.L120:
	pop	{r4, lr}
	b	goToLose
.L119:
	ldr	r3, .L121+24
	mov	lr, pc
	bx	r3
	bl	goToGameThree
	b	.L112
.L118:
	bl	goToPause
	b	.L111
.L122:
	.align	2
.L121:
	.word	updateGameTwo
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	jellyfish
	.word	life
	.word	initGameThree
	.size	gameTwo, .-gameTwo
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
	mov	r1, #4352
	mov	r2, #7168
	push	{r4, r7, fp, lr}
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L137
	mov	lr, pc
	bx	r3
	ldr	r6, .L137+4
	ldr	r8, .L137+8
	ldr	r5, .L137+12
	ldr	fp, .L137+16
	ldr	r10, .L137+20
	ldr	r9, .L137+24
	ldr	r7, .L137+28
	ldr	r4, .L137+32
.L124:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L125:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L125
.L127:
	.word	.L133
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L126
	.word	.L126
.L126:
	mov	lr, pc
	bx	r7
	b	.L124
.L128:
	ldr	r3, .L137+36
	mov	lr, pc
	bx	r3
	b	.L124
.L129:
	ldr	r3, .L137+40
	mov	lr, pc
	bx	r3
	b	.L124
.L130:
	ldr	r3, .L137+44
	mov	lr, pc
	bx	r3
	b	.L124
.L131:
	mov	lr, pc
	bx	r9
	b	.L124
.L132:
	mov	lr, pc
	bx	r10
	b	.L124
.L133:
	mov	lr, pc
	bx	fp
	b	.L124
.L138:
	.align	2
.L137:
	.word	goToStart
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	instruction
	.word	game
	.word	win
	.word	67109120
	.word	pause
	.word	gameThree
	.word	gameTwo
	.size	main, .-main
	.text
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
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
