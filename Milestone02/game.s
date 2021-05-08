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
	.file	"game.c"
	.text
	.align	2
	.global	drawGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	ldrh	r3, [r3, #48]
	push	{r4, lr}
	ldr	r4, .L8+4
	tst	r3, #32
	ldrheq	r3, [r4]
	subeq	r3, r3, #1
	strheq	r3, [r4]	@ movhi
	ldr	r3, .L8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldrheq	r3, [r4]
	addeq	r3, r3, #1
	strheq	r3, [r4]	@ movhi
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r2, [r4]
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	67109120
	.word	hOff
	.word	waitForVBlank
	.size	drawGame, .-drawGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L12
	mov	r0, #3
	ldr	r2, .L12+4
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r5, #4864
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #32
	mov	r4, #104
	mov	lr, #100
	mov	r1, #1
	mov	ip, #3
	strh	r5, [r3]	@ movhi
	ldr	r3, .L12+20
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #40]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	spongeBob
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #16
	ldr	r4, .L16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #23552
	mov	r0, #3
	strh	r1, [r2, #10]	@ movhi
	ldr	r3, .L16+8
	mov	r2, #100663296
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	bl	initPlayer
	mov	ip, #5
	mov	r0, #3
	mov	r2, #0
	ldr	r1, .L16+24
	ldr	r3, .L16+28
	strh	ip, [r1]	@ movhi
	ldr	ip, .L16+32
	ldrh	lr, [r3, #48]
	ldr	r1, .L16+36
	ldr	r3, .L16+40
	strh	lr, [ip]	@ movhi
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	gameOnePal
	.word	5792
	.word	gameOneTiles
	.word	100720640
	.word	gameOneMap
	.word	hOff
	.word	67109120
	.word	buttons
	.word	lives
	.word	jellyfish
	.size	initGame, .-initGame
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L22
	ldrh	r2, [r2, #48]
	tst	r2, #64
	ldreq	r0, .L22+4
	ldrheq	r2, [r0]
	subeq	r2, r2, #1
	str	lr, [sp, #-4]!
	strheq	r2, [r0]	@ movhi
	ldr	r2, .L22
	ldrh	r2, [r2, #48]
	tst	r2, #128
	ldreq	r0, .L22+4
	ldrheq	r2, [r0]
	ldr	r3, .L22+8
	addeq	r2, r2, #1
	strheq	r2, [r0]	@ movhi
	ldr	r2, [r3, #4]
	mvn	r2, r2, lsl #17
	mov	ip, #0
	mvn	r2, r2, lsr #17
	ldr	r1, [r3, #28]
	ldr	r0, .L22+12
	ldr	lr, [r3]
	str	r1, [r3, #32]
	lsl	r1, r1, #2
	strh	lr, [r0]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	str	ip, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L23:
	.align	2
.L22:
	.word	67109120
	.word	vOff
	.word	spongeBob
	.word	shadowOAM
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayer
	.size	updateGame, .-updateGame
	.align	2
	.global	contactJelly
	.syntax unified
	.arm
	.fpu softvfp
	.type	contactJelly, %function
contactJelly:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L31
	add	r1, r3, #16
	ldm	r1, {r1, ip}
	ldm	r3, {r2, r3}
	sub	sp, sp, #16
	ldr	r0, .L31+4
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	r4, .L31+8
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	ldrne	r2, .L31+12
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	jelly
	.word	spongeBob
	.word	collision
	.word	jellyfish
	.size	contactJelly, .-contactJelly
	.align	2
	.global	contactBarnacle
	.syntax unified
	.arm
	.fpu softvfp
	.type	contactBarnacle, %function
contactBarnacle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L39
	add	r1, r3, #16
	ldm	r1, {r1, ip}
	ldm	r3, {r2, r3}
	sub	sp, sp, #16
	ldr	r0, .L39+4
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	r4, .L39+8
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	ldrne	r2, .L39+12
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	barna
	.word	spongeBob
	.word	collision
	.word	lives
	.size	contactBarnacle, .-contactBarnacle
	.comm	spongeBob,44,4
	.comm	barna,24,4
	.comm	jelly,24,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.comm	sponge,44,4
	.comm	lives,4,4
	.comm	jellyfish,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
