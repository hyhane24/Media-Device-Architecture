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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L4
	ldr	r2, .L4+4
	ldr	r3, [r0, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, .L4+8
	str	lr, [sp, #-4]!
	ldr	r1, [r0]
	ldr	lr, [r2]
	ldr	ip, [r0, #36]
	ldr	r2, [r0, #28]
	sub	r1, r1, lr
	ldr	r0, .L4+12
	add	r2, r2, ip, lsl #5
	and	r1, r1, #255
	lsl	r2, r2, #2
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	jigglypuff
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawPlayer.part.0, .-drawPlayer.part.0
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
	push	{r4, r5, r6, r7, lr}
	mov	r7, #96
	mov	r6, #9
	mov	r2, #0
	mov	r5, #19
	mov	r4, #20
	mov	lr, #167
	mov	r1, #1
	mov	ip, #119
	mov	r0, #3
	ldr	r3, .L8
	str	r7, [r3]
	ldr	r3, .L8+4
	str	r6, [r3]
	ldr	r3, .L8+8
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	vOff
	.word	hOff
	.word	jigglypuff
	.size	initGame, .-initGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L14
	ldr	r3, [r3, #44]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L11
	ldr	r2, .L14+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L12:
	ldr	r3, .L14+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L14+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L14+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L14+16
	ldrh	r1, [r2]
	ldr	r2, .L14+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L11:
	bl	drawPlayer.part.0
	b	.L12
.L15:
	.align	2
.L14:
	.word	jigglypuff
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
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
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #19
	mov	r4, #20
	mov	lr, #3
	mov	ip, #1
	ldr	r3, .L18
	ldr	r0, [r3]
	ldr	r3, .L18+4
	ldr	r1, [r3]
	ldr	r3, .L18+8
	add	r0, r0, #71
	add	r1, r1, #110
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #40]
	str	r0, [r3]
	str	r1, [r3, #4]
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, r5, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	vOff
	.word	hOff
	.word	jigglypuff
	.size	initPlayer, .-initPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L33
	ldr	r3, .L33+4
	ldr	r5, [r4, #24]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	ldr	r6, [r4, #28]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	str	r6, [r4, #32]
	str	r1, [r4, #28]
	bne	.L21
	ldr	r0, [r4, #36]
	ldr	r3, .L33+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L21:
	ldr	r3, .L33+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #28]
	ldr	r3, .L33+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #28]
	ldr	r3, .L33+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L24
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #28]
	bne	.L26
.L27:
	mov	r3, #2
	str	r3, [r4, #28]
.L26:
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L27
	ldr	r3, [r4, #28]
	cmp	r3, #4
	bne	.L26
	mov	r3, #0
	str	r6, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	jigglypuff
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
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
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	bne	.L37
	ldr	r0, .L74+4
	ldr	r2, [r0]
	cmp	r2, #0
	ble	.L37
	ldr	r3, [r0, #8]
	ldr	lr, [r0, #4]
	sub	r2, r2, r3
	ldr	ip, .L74+8
	add	r1, lr, r2, lsl #8
	lsl	r1, r1, #1
	ldrh	r3, [ip, r1]
	cmp	r3, #0
	lsl	r3, r2, #8
	beq	.L37
	ldr	r1, [r0, #16]
	add	r3, r3, r1
	add	r3, r3, lr
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L37
	ldr	r1, .L74+12
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r0]
	ble	.L37
	sub	r2, r2, r3
	cmp	r2, #79
	suble	r3, r3, #1
	strle	r3, [r1]
.L37:
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L40
	ldr	r2, .L74+4
	ldr	r1, [r2]
	ldr	r3, [r2, #20]
	add	r3, r1, r3
	cmp	r3, #255
	ble	.L73
.L40:
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L43
	ldr	r0, .L74+4
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ble	.L43
	ldr	r1, [r0, #12]
	ldr	r2, [r0]
	sub	r3, r3, r1
	ldr	ip, .L74+8
	add	r1, r3, r2, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	beq	.L43
	ldr	r1, [r0, #20]
	add	r2, r2, r1
	add	r2, r3, r2, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L43
	ldr	r1, .L74+16
	ldr	r2, [r1]
	cmp	r2, #0
	str	r3, [r0, #4]
	ble	.L43
	sub	r3, r3, r2
	cmp	r3, #119
	suble	r2, r2, #1
	strle	r2, [r1]
.L43:
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L46
	ldr	r2, .L74+4
	ldr	r1, [r2, #4]
	ldr	r3, [r2, #16]
	add	r3, r1, r3
	cmp	r3, #255
	bgt	.L46
	ldr	r4, [r2, #12]
	ldr	ip, [r2]
	add	r3, r3, r4
	ldr	lr, .L74+8
	add	r0, r3, ip, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	beq	.L46
	ldr	r0, [r2, #20]
	add	ip, ip, r0
	add	r3, r3, ip, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	beq	.L46
	ldr	ip, .L74+16
	ldr	r0, [ip]
	add	r3, r1, r4
	cmp	r0, #15
	str	r3, [r2, #4]
	bgt	.L46
	sub	r3, r3, r0
	cmp	r3, #120
	addgt	r0, r0, #1
	strgt	r0, [ip]
.L46:
	pop	{r4, lr}
	b	animatePlayer
.L73:
	ldr	r4, [r2, #8]
	ldr	lr, [r2, #4]
	add	r3, r3, r4
	add	r0, lr, r3, lsl #8
	ldr	ip, .L74+8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	lsl	r3, r3, #8
	beq	.L40
	ldr	r0, [r2, #16]
	add	r3, r3, r0
	add	r3, r3, lr
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L40
	ldr	ip, .L74+12
	ldr	r0, [ip]
	add	r3, r1, r4
	cmp	r0, #95
	str	r3, [r2]
	bgt	.L40
	sub	r3, r3, r0
	cmp	r3, #80
	addgt	r0, r0, #1
	strgt	r0, [ip]
	b	.L40
.L75:
	.align	2
.L74:
	.word	67109120
	.word	jigglypuff
	.word	collisionmapBitmap
	.word	vOff
	.word	hOff
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
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L81
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L78
	ldr	r2, .L81+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L78:
	b	drawPlayer.part.0
.L82:
	.align	2
.L81:
	.word	jigglypuff
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.comm	jigglypuff,48,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
