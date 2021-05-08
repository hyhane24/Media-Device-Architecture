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
	.type	updateBullet.part.0, %function
updateBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	ldr	r3, [r0, #16]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L2
	ldr	r1, [r0, #12]
	ldr	r3, [r0, #4]
	add	r3, r3, r1
	sub	r1, r3, #1
	cmp	r1, #237
	bls	.L5
.L2:
	mov	r3, #0
	str	r3, [r0, #28]
	bx	lr
.L5:
	ldr	r1, [r0, #8]
	add	r2, r1, r2
	stm	r0, {r2, r3}
	bx	lr
	.size	updateBullet.part.0, .-updateBullet.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall.part.0, %function
updateBall.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r2, [r0]
	cmp	r2, #1
	mov	r5, r0
	sub	sp, sp, #16
	ldr	r0, [r0, #8]
	ble	.L7
	ldr	r3, [r5, #16]
	add	r3, r2, r3
	cmp	r3, #110
	bgt	.L7
.L8:
	ldr	r3, [r5, #4]
	cmp	r3, #1
	ldr	r1, [r5, #12]
	ble	.L9
	ldr	ip, [r5, #20]
	add	ip, r3, ip
	cmp	ip, #238
	bgt	.L9
.L10:
	add	r2, r2, r0
	add	r3, r3, r1
	ldr	r4, .L21
	stm	r5, {r2, r3}
	ldr	r8, .L21+4
	ldr	r10, .L21+8
	ldr	r9, .L21+12
	add	r6, r4, #160
.L14:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L12
	ldr	r7, [r5, #24]
	cmp	r7, #0
	beq	.L20
.L12:
	add	r4, r4, #32
	cmp	r6, r4
	bne	.L14
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	rsb	r1, r1, #0
	str	r1, [r5, #12]
	b	.L10
.L7:
	rsb	r0, r0, #0
	str	r0, [r5, #8]
	b	.L8
.L20:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	ldm	r4, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L12
	mov	r1, #1
	mov	r2, #16
	ldr	r3, [r10]
	sub	r3, r3, #1
	str	r3, [r10]
	ldr	r3, [r9]
	add	r3, r3, r1
	str	r7, [r4, #28]
	str	r3, [r9]
	str	r1, [r5, #24]
	str	r2, [r5, #16]
	str	r2, [r5, #20]
	b	.L12
.L22:
	.align	2
.L21:
	.word	bullets
	.word	collision
	.word	ballsRemaining
	.word	mushroomCount
	.size	updateBall.part.0, .-updateBall.part.0
	.align	2
	.global	drawBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBar, %function
drawBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #253
	push	{r4, lr}
	sub	sp, sp, #8
	ldr	r4, .L25
	str	r2, [sp]
	mov	r3, #3
	mov	r2, #240
	mov	r1, #5
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	r2, #251
	mov	r3, #3
	str	r2, [sp]
	mov	r1, #15
	mov	r2, #240
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	r2, #252
	mov	r3, #3
	str	r2, [sp]
	mov	r1, #25
	mov	r2, #240
	mov	r0, #0
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	drawRect4
	.size	drawBar, .-drawBar
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
	mvn	r0, #4
	push	{r4, lr}
	mov	r2, #10
	mov	r4, #130
	mov	lr, #118
	mov	ip, #2
	mov	r1, #3
	ldr	r3, .L29
	strb	r0, [r3, #20]
	stm	r3, {r4, lr}
	str	ip, [r3, #8]
	str	r1, [r3, #24]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	pop	{r4, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	player
	.size	initPlayer, .-initPlayer
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
	push	{r4, lr}
	ldr	r0, .L33
	ldrb	r2, [r0, #20]	@ zero_extendqisi2
	sub	sp, sp, #8
	ldr	r3, [r0, #12]
	str	r2, [sp]
	ldr	r4, .L33+4
	ldr	r2, [r0, #16]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	player
	.word	drawRect4
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #1
	mov	r2, #0
	mvn	lr, #1
	mvn	ip, #5
	ldr	r3, .L39
	add	r0, r3, #160
.L36:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3]
	str	r2, [r3, #12]
	strb	ip, [r3, #24]
	str	r2, [r3, #28]
	stmib	r3, {r2, lr}
	add	r3, r3, #32
	cmp	r3, r0
	bne	.L36
	ldr	lr, [sp], #4
	bx	lr
.L40:
	.align	2
.L39:
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r1, .L52
	ldr	r2, [r1, r3, lsl #5]
	cmp	r2, #0
	lsl	r2, r3, #5
	beq	.L51
.L42:
	add	r3, r3, #1
	cmp	r3, #5
	bxeq	lr
	ldr	r2, [r1, r3, lsl #5]
	cmp	r2, #0
	lsl	r2, r3, #5
	bne	.L42
.L51:
	push	{r4, r5, lr}
	mov	r5, #1
	ldr	lr, .L52+4
	ldr	r4, .L52+8
	ldr	ip, [lr, #16]
	add	r2, r4, r2
	ldr	r1, [lr, #4]
	ldr	r0, [r2, #20]
	add	ip, ip, ip, lsr #31
	add	r1, r1, ip, asr r5
	add	r0, r0, r0, lsr #31
	ldr	ip, [lr]
	add	r1, r1, r0, asr r5
	str	ip, [r4, r3, lsl #5]
	str	r5, [r2, #28]
	str	r1, [r2, #4]
	pop	{r4, r5, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	bullets+28
	.word	player
	.word	bullets
	.size	fireBullet, .-fireBullet
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
	ldr	r3, .L67
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, lr}
	ldr	r4, .L67+4
	bne	.L55
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	cmp	r3, r2
	blt	.L55
	mvn	r1, #0
	sub	r3, r3, r2
	str	r3, [r4, #4]
	str	r1, [r4, #28]
	b	.L56
.L55:
	ldr	r3, .L67
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L66
.L57:
	mov	r3, #0
	str	r3, [r4, #28]
.L56:
	ldr	r3, .L67+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #24]
	beq	.L65
	ldr	r2, .L67+12
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L60
.L65:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, lr}
	bx	lr
.L66:
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #16]
	ldr	r1, [r4, #8]
	add	r3, r2, r3
	rsb	r0, r1, #240
	cmp	r3, r0
	bgt	.L57
	mov	r3, #1
	add	r2, r2, r1
	str	r2, [r4, #4]
	str	r3, [r4, #28]
	b	.L56
.L60:
	cmp	r3, #0
	ble	.L65
	bl	fireBullet
	mov	r3, #1
	str	r3, [r4, #24]
	pop	{r4, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
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
	push	{r4, r5, r6, lr}
	bl	updatePlayer
	ldr	r0, .L83
	add	r4, r0, #160
.L71:
	ldr	r3, [r0, #28]
	cmp	r3, #0
	blne	updateBullet.part.0
.L70:
	add	r0, r0, #32
	cmp	r0, r4
	bne	.L71
	ldr	r4, .L83+4
	add	r5, r4, #320
.L73:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	updateBall.part.0
.L72:
	add	r4, r4, #32
	cmp	r5, r4
	bne	.L73
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	bullets
	.word	balls
	.size	updateGame, .-updateGame
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	b	updateBullet.part.0
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldrb	r2, [r0, #24]	@ zero_extendqisi2
	sub	sp, sp, #8
	ldr	r3, [r0, #16]
	str	r2, [sp]
	ldr	r4, .L96
	ldr	r2, [r0, #20]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	drawRect4
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initBalls
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBalls, %function
initBalls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L104
	mov	r9, #0
	mov	r8, r7
	mov	r10, #2
	mov	r6, #1
	ldr	r5, .L104+4
	ldr	r4, .L104+8
	b	.L102
.L100:
	add	r9, r9, #1
	add	r8, r8, #32
.L102:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	str	r3, [r8]
	mov	lr, pc
	bx	r5
	smull	r3, r1, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	mov	r2, #0
	sub	r3, r0, r3, lsl #2
	str	r3, [r8, #4]
	mov	r3, #16
	cmp	r9, r2
	str	r10, [r8, #8]
	str	r10, [r8, #12]
	str	r6, [r8, #28]
	str	r2, [r8, #24]
	streq	r6, [r7, #24]
	streq	r3, [r7, #16]
	streq	r3, [r7, #20]
	beq	.L100
	cmp	r9, #9
	str	r3, [r8, #16]
	str	r3, [r8, #20]
	bne	.L100
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L105:
	.align	2
.L104:
	.word	balls
	.word	rand
	.word	1374389535
	.size	initBalls, .-initBalls
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
	mov	r3, #3
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #10
	mov	r8, #130
	mov	r7, #118
	mov	r6, #2
	mvn	lr, #4
	mov	r5, #1
	mov	r4, #0
	mvn	r0, #1
	mvn	r1, #5
	ldr	r2, .L110
	str	r3, [r2, #24]
	ldr	r3, .L110+4
	str	r8, [r2]
	str	r7, [r2, #4]
	str	r6, [r2, #8]
	strb	lr, [r2, #20]
	str	ip, [r2, #12]
	str	ip, [r2, #16]
	add	r2, r3, #160
.L107:
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r0, [r3, #8]
	str	r4, [r3, #12]
	strb	r1, [r3, #24]
	str	r4, [r3, #28]
	add	r3, r3, #32
	cmp	r3, r2
	bne	.L107
	bl	initBalls
	mov	r0, #9
	ldr	ip, .L110+8
	ldr	r1, .L110+12
	str	r5, [ip]
	str	r0, [r1]
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L110+16
	ldr	r5, .L110+20
	mov	lr, pc
	bx	r5
	mvn	lr, #32768
	ldr	r3, .L110+24
	ldr	ip, .L110+28
	ldr	r0, .L110+32
	ldr	r1, .L110+36
	ldr	r2, .L110+40
	strh	lr, [r3, #252]	@ movhi
	strh	r4, [r3, #244]	@ movhi
	strh	ip, [r3, #246]	@ movhi
	strh	r0, [r3, #248]	@ movhi
	strh	r1, [r3, #250]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L111:
	.align	2
.L110:
	.word	player
	.word	bullets
	.word	mushroomCount
	.word	ballsRemaining
	.word	mushroomPal
	.word	DMANow
	.word	83886336
	.word	28274
	.word	21152
	.word	16668
	.word	15855
	.size	initGame, .-initGame
	.align	2
	.global	updateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall, %function
updateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	b	updateBall.part.0
	.size	updateBall, .-updateBall
	.align	2
	.global	drawBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBall, %function
drawBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #28]
	cmp	r2, #0
	bxeq	lr
	mov	r3, r0
	push	{r4, lr}
	ldr	r2, [r0, #24]
	cmp	r2, #0
	ldrne	ip, .L124
	ldreq	ip, .L124+4
	sub	sp, sp, #8
	ldr	r1, [r3]
	ldr	r2, [r3, #20]
	ldr	r0, [r0, #4]
	ldr	r3, [r3, #16]
	ldr	r4, .L124+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L125:
	.align	2
.L124:
	.word	mushroomBitmap
	.word	ghostBitmap
	.word	drawImage4
	.size	drawBall, .-drawBall
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
	push	{r4, r5, r6, lr}
	mov	r0, #254
	ldr	r3, .L137
	sub	sp, sp, #8
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	bl	drawBar
	ldr	r4, .L137+4
	ldr	r6, .L137+8
	add	r5, r4, #160
.L128:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L136
.L127:
	add	r4, r4, #32
	cmp	r4, r5
	bne	.L128
	ldr	r4, .L137+12
	add	r5, r4, #320
.L129:
	mov	r0, r4
	add	r4, r4, #32
	bl	drawBall
	cmp	r4, r5
	bne	.L129
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L136:
	ldrb	r2, [r4, #24]	@ zero_extendqisi2
	ldr	r3, [r4, #16]
	str	r2, [sp]
	ldr	r2, [r4, #20]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	b	.L127
.L138:
	.align	2
.L137:
	.word	fillScreen4
	.word	bullets
	.word	drawRect4
	.word	balls
	.size	drawGame, .-drawGame
	.comm	mushroomCount,4,4
	.comm	ballsRemaining,4,4
	.comm	balls,320,4
	.comm	bullets,160,4
	.comm	player,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
