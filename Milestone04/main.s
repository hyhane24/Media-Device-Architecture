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
	mov	r0, #3
	ldr	r1, .L4+16
	mov	r3, #1024
	ldr	r2, .L4+20
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	r3, #67108864
	ldr	r2, .L4+24
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L4+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+32
	ldr	r3, .L4+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+40
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startScPal
	.word	6992
	.word	startScTiles
	.word	startScMap
	.word	100720640
	.word	stopSound
	.word	theme_length
	.word	theme_data
	.word	playSoundA
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
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #7168
	push	{r4, lr}
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	setupSounds
	.word	setupInterrupts
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
	ldr	r4, .L12
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L12+8
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #1
	ldr	r1, .L12+24
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L13:
	.align	2
.L12:
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
	ldr	r3, .L16
	ldr	r4, .L16+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r4
	mov	r3, #11968
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L16+24
	ldrh	r1, [r3]
	ldr	r3, .L16+28
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L16+32
	ldr	r1, .L16+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+40
	ldr	r1, .L16+44
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+52
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L16+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
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
	ldr	r4, .L30
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L19
	ldr	r2, .L30+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L28
.L19:
	tst	r3, #8
	beq	.L18
	ldr	r3, .L30+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L29
.L18:
	pop	{r4, lr}
	bx	lr
.L29:
	ldr	r3, .L30+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L28:
	ldr	r3, .L30+12
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldrh	r3, [r4]
	b	.L19
.L31:
	.align	2
.L30:
	.word	oldButtons
	.word	buttons
	.word	initGame
	.word	unpauseSound
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
	ldr	r3, .L34
	ldr	r4, .L34+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L34+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L34+12
	ldr	r1, .L34+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L34+20
	ldr	r1, .L34+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L34+28
	ldrh	r1, [r3]
	ldr	r3, .L34+32
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L34+36
	ldr	r1, .L34+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L34+44
	ldr	r1, .L34+48
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L34+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L34+56
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L34+60
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L38
	ldr	r4, .L38+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L38+12
	ldr	r1, .L38+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L38+20
	ldr	r1, .L38+24
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r3, #16384
	strh	r0, [r1, #18]	@ movhi
	ldr	r2, .L38+28
	strh	r0, [r1, #16]	@ movhi
	mov	r0, #3
	ldr	r1, .L38+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L38+36
	ldr	r1, .L38+40
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L38+48
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L38+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	waitForVBlank
	.word	DMANow
	.word	gameThreePal
	.word	5776
	.word	gameThreeTiles
	.word	100720640
	.word	gameThreeMap
	.word	100728832
	.word	spritesheetTwoTiles
	.word	83886592
	.word	spritesheetTwoPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGameThree, .-goToGameThree
	.align	2
	.global	goToCheatOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCheatOne, %function
goToCheatOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L42
	ldr	r4, .L42+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+8
	mov	lr, pc
	bx	r4
	mov	r3, #11968
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L42+24
	ldrh	r1, [r3]
	ldr	r3, .L42+28
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L42+32
	ldr	r1, .L42+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L42+40
	ldr	r1, .L42+44
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L42+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L42+52
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L42+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
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
	.size	goToCheatOne, .-goToCheatOne
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
	ldr	r4, .L61
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L45
	ldr	r2, .L61+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L58
.L45:
	tst	r3, #4
	beq	.L46
	ldr	r2, .L61+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L59
.L46:
	tst	r3, #32
	beq	.L44
	ldr	r3, .L61+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L60
.L44:
	pop	{r4, lr}
	bx	lr
.L60:
	ldr	r3, .L61+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+12
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L61+16
	ldr	r3, .L61+20
	mov	lr, pc
	bx	r3
	bl	goToCheatOne
	ldr	r3, .L61+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L58:
	ldr	r3, .L61+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+12
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L61+16
	ldr	r3, .L61+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L61+24
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L45
.L59:
	ldr	r3, .L61+28
	mov	lr, pc
	bx	r3
	bl	goToInstruction
	ldrh	r3, [r4]
	b	.L46
.L62:
	.align	2
.L61:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	theme_length
	.word	theme_data
	.word	playSoundA
	.word	initGame
	.word	pauseSound
	.size	start, .-start
	.align	2
	.global	goToCheatTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCheatTwo, %function
goToCheatTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L65
	ldr	r4, .L65+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L65+12
	ldr	r1, .L65+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+20
	ldr	r1, .L65+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L65+28
	ldrh	r1, [r3]
	ldr	r3, .L65+32
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L65+36
	ldr	r1, .L65+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L65+44
	ldr	r1, .L65+48
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L65+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L65+56
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L65+60
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
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
	.size	goToCheatTwo, .-goToCheatTwo
	.align	2
	.global	goToCheatThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCheatThree, %function
goToCheatThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L69
	ldr	r4, .L69+4
	mov	lr, pc
	bx	r3
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L69+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L69+12
	ldr	r1, .L69+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L69+20
	ldr	r1, .L69+24
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r0, #0
	mov	r3, #16384
	strh	r0, [r1, #18]	@ movhi
	ldr	r2, .L69+28
	strh	r0, [r1, #16]	@ movhi
	mov	r0, #3
	ldr	r1, .L69+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L69+36
	ldr	r1, .L69+40
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L69+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L69+48
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L69+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L70:
	.align	2
.L69:
	.word	waitForVBlank
	.word	DMANow
	.word	gameThreePal
	.word	5776
	.word	gameThreeTiles
	.word	100720640
	.word	gameThreeMap
	.word	100728832
	.word	spritesheetTwoTiles
	.word	83886592
	.word	spritesheetTwoPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToCheatThree, .-goToCheatThree
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
	ldr	r4, .L73
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L73+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L73+8
	ldr	r1, .L73+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L73+16
	ldr	r1, .L73+20
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r3, #67108864
	ldr	r1, .L73+24
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L73+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L73+32
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L73+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L74:
	.align	2
.L73:
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
	.global	cheatOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	cheatOne, %function
cheatOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L99
	sub	sp, sp, #20
	ldr	r4, .L99+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L76
	ldr	r2, .L99+12
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L94
.L76:
	tst	r3, #8
	beq	.L77
	ldr	r3, .L99+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L95
.L77:
	ldr	r3, .L99+16
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	ldr	r4, .L99+20
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r5, .L99+24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L96
.L78:
	ldr	r3, .L99+28
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L97
.L79:
	ldr	r3, .L99+32
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L98
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L98:
	ldr	r3, .L99+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+40
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L99+44
	ldr	r3, .L99+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+52
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToCheatTwo
.L97:
	ldr	r3, .L99+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+40
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L99+44
	ldr	r3, .L99+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+52
	mov	lr, pc
	bx	r3
	bl	goToCheatTwo
	b	.L79
.L96:
	ldr	r3, .L99+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+40
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L99+44
	ldr	r3, .L99+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+52
	mov	lr, pc
	bx	r3
	bl	goToCheatTwo
	b	.L78
.L95:
	ldr	r3, .L99+56
	mov	lr, pc
	bx	r3
	bl	goToPause
	mov	r2, #4
	ldr	r3, .L99+60
	str	r2, [r3]
	b	.L77
.L94:
	ldr	r3, .L99+64
	mov	lr, pc
	bx	r3
	bl	goToGameThree
	ldrh	r3, [r4]
	b	.L76
.L100:
	.align	2
.L99:
	.word	updateGame
	.word	oldButtons
	.word	drawGame
	.word	buttons
	.word	jellyf
	.word	spongebob
	.word	collision
	.word	jelly
	.word	fish
	.word	stopSound
	.word	theme_length
	.word	theme_data
	.word	playSoundA
	.word	initGame
	.word	pauseSound
	.word	prevState
	.word	initGameThree
	.size	cheatOne, .-cheatOne
	.align	2
	.global	cheatTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	cheatTwo, %function
cheatTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L120
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L102
	ldr	r3, .L120+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L116
.L102:
	ldr	r3, .L120+20
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	ldr	r4, .L120+24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r5, .L120+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L117
.L103:
	ldr	r3, .L120+32
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L118
.L104:
	ldr	r3, .L120+36
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L119
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L119:
	ldr	r3, .L120+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+44
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L120+48
	ldr	r3, .L120+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+56
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToCheatThree
.L118:
	ldr	r3, .L120+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+44
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L120+48
	ldr	r3, .L120+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+56
	mov	lr, pc
	bx	r3
	bl	goToCheatThree
	b	.L104
.L117:
	ldr	r3, .L120+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+44
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L120+48
	ldr	r3, .L120+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+56
	mov	lr, pc
	bx	r3
	bl	goToCheatThree
	b	.L103
.L116:
	ldr	r3, .L120+60
	mov	lr, pc
	bx	r3
	bl	goToPause
	mov	r2, #5
	ldr	r3, .L120+64
	str	r2, [r3]
	b	.L102
.L121:
	.align	2
.L120:
	.word	updateGame
	.word	updateGameTwo
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	jellyf
	.word	spongebob
	.word	collision
	.word	jelly
	.word	fish
	.word	stopSound
	.word	theme_length
	.word	theme_data
	.word	playSoundA
	.word	initGameThree
	.word	pauseSound
	.word	prevState
	.size	cheatTwo, .-cheatTwo
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L146
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L123
	ldr	r2, .L146+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L139
.L123:
	tst	r3, #4
	beq	.L122
	ldr	r3, .L146+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L140
.L122:
	pop	{r4, r5, r6, lr}
	bx	lr
.L139:
	ldr	r5, .L146+8
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L141
.L124:
	cmp	r3, #2
	beq	.L142
.L125:
	cmp	r3, #3
	beq	.L143
.L126:
	cmp	r3, #4
	beq	.L144
.L127:
	cmp	r3, #5
	beq	.L145
.L128:
	cmp	r3, #6
	beq	.L129
.L138:
	ldrh	r3, [r4]
	b	.L123
.L140:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L129:
	ldr	r3, .L146+12
	mov	lr, pc
	bx	r3
	bl	goToCheatThree
	b	.L138
.L145:
	ldr	r3, .L146+12
	mov	lr, pc
	bx	r3
	bl	goToCheatTwo
	ldr	r3, [r5]
	b	.L128
.L144:
	ldr	r3, .L146+12
	mov	lr, pc
	bx	r3
	bl	goToCheatOne
	ldr	r3, [r5]
	b	.L127
.L143:
	ldr	r3, .L146+12
	mov	lr, pc
	bx	r3
	bl	goToGameThree
	ldr	r3, [r5]
	b	.L126
.L142:
	ldr	r3, .L146+12
	mov	lr, pc
	bx	r3
	bl	goToGameTwo
	ldr	r3, [r5]
	b	.L125
.L141:
	ldr	r3, .L146+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, [r5]
	b	.L124
.L147:
	.align	2
.L146:
	.word	oldButtons
	.word	buttons
	.word	prevState
	.word	unpauseSound
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
	ldr	r3, .L150
	mov	lr, pc
	bx	r3
	ldr	r3, .L150+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L150+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L150+12
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L150+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L150+20
	ldr	r1, .L150+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L150+28
	ldr	r1, .L150+32
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #9
	ldr	r1, .L150+36
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L151:
	.align	2
.L150:
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
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameThree.part.0, %function
gameThree.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L154
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L154+8
	ldr	r3, .L154+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToWin
.L155:
	.align	2
.L154:
	.word	stopSound
	.word	theme_length
	.word	theme_data
	.word	playSoundA
	.size	gameThree.part.0, .-gameThree.part.0
	.set	cheatThree.part.0,gameThree.part.0
	.align	2
	.global	cheatThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	cheatThree, %function
cheatThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L165
	mov	lr, pc
	bx	r3
	ldr	r3, .L165+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L165+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L157
	ldr	r3, .L165+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L163
.L157:
	ldr	r3, .L165+16
	ldr	r3, [r3]
	cmp	r3, #100
	beq	.L164
	pop	{r4, lr}
	bx	lr
.L164:
	pop	{r4, lr}
	b	cheatThree.part.0
.L163:
	ldr	r3, .L165+20
	mov	lr, pc
	bx	r3
	bl	goToPause
	mov	r2, #6
	ldr	r3, .L165+24
	str	r2, [r3]
	b	.L157
.L166:
	.align	2
.L165:
	.word	updateGameThree
	.word	drawGameThree
	.word	oldButtons
	.word	buttons
	.word	jellyfish
	.word	pauseSound
	.word	prevState
	.size	cheatThree, .-cheatThree
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
	ldr	r3, .L176
	mov	lr, pc
	bx	r3
	ldr	r3, .L176+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L176+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L168
	ldr	r3, .L176+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L174
.L168:
	ldr	r3, .L176+16
	ldr	r3, [r3]
	cmp	r3, #100
	beq	.L175
	pop	{r4, lr}
	bx	lr
.L175:
	pop	{r4, lr}
	b	gameThree.part.0
.L174:
	ldr	r3, .L176+20
	mov	lr, pc
	bx	r3
	bl	goToPause
	mov	r2, #3
	ldr	r3, .L176+24
	str	r2, [r3]
	b	.L168
.L177:
	.align	2
.L176:
	.word	updateGameThree
	.word	drawGameThree
	.word	oldButtons
	.word	buttons
	.word	jellyfish
	.word	pauseSound
	.word	prevState
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
	ldr	r3, .L185
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L178
	ldr	r3, .L185+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L184
.L178:
	pop	{r4, lr}
	bx	lr
.L184:
	pop	{r4, lr}
	b	goToStart
.L186:
	.align	2
.L185:
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
	ldr	r3, .L189
	mov	lr, pc
	bx	r3
	ldr	r3, .L189+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L189+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L189+12
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L189+16
	mov	lr, pc
	bx	r4
	mov	r3, #3248
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L189+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L189+24
	mov	r3, #1024
	ldr	r2, .L189+28
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	r3, #67108864
	ldr	r2, .L189+32
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L189+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L189+40
	ldr	r3, .L189+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L189+48
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L189+52
	ldr	r3, .L189+56
	mov	lr, pc
	bx	r3
	mov	r2, #10
	ldr	r3, .L189+60
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L190:
	.align	2
.L189:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	loseScPal
	.word	loseScTiles
	.word	loseScMap
	.word	100720640
	.word	stopSound
	.word	lose_length
	.word	lose_data
	.word	playSoundA
	.word	hello_length
	.word	hello_data
	.word	playSoundB
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
	push	{r4, r5, lr}
	ldr	r3, .L217
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L192
	ldr	r3, .L217+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L211
.L192:
	ldr	r3, .L217+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L212
.L193:
	ldr	r3, .L217+20
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	ldr	r4, .L217+24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r5, .L217+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L213
.L194:
	ldr	r3, .L217+32
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L214
.L195:
	ldr	r3, .L217+36
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L215
.L196:
	ldr	r3, .L217+40
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L216
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L216:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToLose
.L215:
	ldr	r3, .L217+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+48
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L217+52
	ldr	r3, .L217+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+60
	mov	lr, pc
	bx	r3
	bl	goToGameTwo
	b	.L196
.L214:
	ldr	r3, .L217+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+48
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L217+52
	ldr	r3, .L217+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+60
	mov	lr, pc
	bx	r3
	bl	goToGameTwo
	b	.L195
.L213:
	ldr	r3, .L217+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+48
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L217+52
	ldr	r3, .L217+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L217+60
	mov	lr, pc
	bx	r3
	bl	goToGameTwo
	b	.L194
.L212:
	bl	goToLose
	b	.L193
.L211:
	ldr	r3, .L217+64
	mov	lr, pc
	bx	r3
	bl	goToPause
	mov	r2, #1
	ldr	r3, .L217+68
	str	r2, [r3]
	b	.L192
.L218:
	.align	2
.L217:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	life
	.word	jellyf
	.word	spongebob
	.word	collision
	.word	jelly
	.word	fish
	.word	flypat
	.word	stopSound
	.word	theme_length
	.word	theme_data
	.word	playSoundA
	.word	initGame
	.word	pauseSound
	.word	prevState
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
	push	{r4, r5, lr}
	ldr	r3, .L245
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L220
	ldr	r3, .L245+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L239
.L220:
	ldr	r3, .L245+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L240
.L221:
	ldr	r3, .L245+24
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	ldr	r4, .L245+28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r5, .L245+32
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L241
.L222:
	ldr	r3, .L245+36
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L242
.L223:
	ldr	r3, .L245+40
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L243
.L224:
	ldr	r3, .L245+44
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L244
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L244:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToLose
.L243:
	ldr	r3, .L245+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L245+56
	ldr	r3, .L245+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+64
	mov	lr, pc
	bx	r3
	bl	goToGameThree
	b	.L224
.L242:
	ldr	r3, .L245+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L245+56
	ldr	r3, .L245+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+64
	mov	lr, pc
	bx	r3
	bl	goToGameThree
	b	.L223
.L241:
	ldr	r3, .L245+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L245+56
	ldr	r3, .L245+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+64
	mov	lr, pc
	bx	r3
	bl	goToGameThree
	b	.L222
.L240:
	bl	goToLose
	b	.L221
.L239:
	ldr	r3, .L245+68
	mov	lr, pc
	bx	r3
	bl	goToPause
	mov	r2, #2
	ldr	r3, .L245+72
	str	r2, [r3]
	b	.L220
.L246:
	.align	2
.L245:
	.word	updateGame
	.word	updateGameTwo
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	life
	.word	jellyf
	.word	spongebob
	.word	collision
	.word	jelly
	.word	fish
	.word	flypat
	.word	stopSound
	.word	theme_length
	.word	theme_data
	.word	playSoundA
	.word	initGameThree
	.word	pauseSound
	.word	prevState
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L264
	mov	lr, pc
	bx	r3
	ldr	r6, .L264+4
	ldr	r8, .L264+8
	ldr	r5, .L264+12
	ldr	fp, .L264+16
	ldr	r10, .L264+20
	ldr	r9, .L264+24
	ldr	r7, .L264+28
	ldr	r4, .L264+32
.L248:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L249:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L249
.L251:
	.word	.L260
	.word	.L259
	.word	.L258
	.word	.L257
	.word	.L256
	.word	.L255
	.word	.L254
	.word	.L253
	.word	.L252
	.word	.L250
	.word	.L250
.L250:
	mov	lr, pc
	bx	r7
	b	.L248
.L252:
	ldr	r3, .L264+36
	mov	lr, pc
	bx	r3
	b	.L248
.L253:
	ldr	r3, .L264+40
	mov	lr, pc
	bx	r3
	b	.L248
.L254:
	ldr	r3, .L264+44
	mov	lr, pc
	bx	r3
	b	.L248
.L255:
	ldr	r3, .L264+48
	mov	lr, pc
	bx	r3
	b	.L248
.L256:
	ldr	r3, .L264+52
	mov	lr, pc
	bx	r3
	b	.L248
.L257:
	ldr	r3, .L264+56
	mov	lr, pc
	bx	r3
	b	.L248
.L258:
	mov	lr, pc
	bx	r9
	b	.L248
.L259:
	mov	lr, pc
	bx	r10
	b	.L248
.L260:
	mov	lr, pc
	bx	fp
	b	.L248
.L265:
	.align	2
.L264:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	instruction
	.word	game
	.word	win
	.word	67109120
	.word	pause
	.word	cheatThree
	.word	cheatTwo
	.word	cheatOne
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
	.comm	prevState,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
