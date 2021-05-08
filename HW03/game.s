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
	.type	updateBall.part.0, %function
updateBall.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, [r0]
	cmp	r2, #0
	mov	r5, r0
	sub	sp, sp, #20
	ldr	r0, [r0, #16]
	ble	.L2
	ldr	r3, [r5, #24]
	add	r3, r2, r3
	cmp	r3, #120
	bgt	.L2
.L3:
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ldr	r1, [r5, #20]
	ble	.L4
	ldr	ip, [r5, #28]
	add	ip, r3, ip
	cmp	ip, #239
	bgt	.L4
.L5:
	ldr	r4, .L21
	add	r2, r2, r0
	add	r3, r3, r1
	stm	r5, {r2, r3}
	ldr	r7, .L21+4
	ldr	fp, .L21+8
	ldr	r10, .L21+12
	ldr	r9, .L21+16
	ldr	r8, .L21+20
	add	r6, r4, #4000
	b	.L10
.L7:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L20
.L10:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L7
	add	r0, r4, #20
	ldm	r0, {r0, r1}
	ldm	r4, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r7
	mov	ip, r0
	ldr	r0, .L21+24
	cmp	ip, #0
	ldr	r3, [fp]
	ldr	r2, [r10]
	ldr	r1, [r9]
	ldr	r0, [r0]
	beq	.L8
	mov	lr, #0
	ldr	ip, [r8]
	sub	ip, ip, #1
	str	lr, [r4, #32]
	str	ip, [r8]
	str	lr, [r5, #36]
.L8:
	ldr	ip, [r4, #24]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	lr, [r4, #20]
	str	ip, [sp, #4]
	ldr	ip, [r4, #4]
	str	lr, [sp, #12]
	str	ip, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r3, #100
	add	r4, r4, #40
	strne	r3, [r8]
	cmp	r4, r6
	bne	.L10
.L20:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L4:
	rsb	r1, r1, #0
	str	r1, [r5, #20]
	b	.L5
.L2:
	rsb	r0, r0, #0
	str	r0, [r5, #16]
	b	.L3
.L22:
	.align	2
.L21:
	.word	bullets
	.word	collision
	.word	cHeight
	.word	cWidth
	.word	cRow
	.word	ballsRemaining
	.word	cCol
	.size	updateBall.part.0, .-updateBall.part.0
	.align	2
	.global	initCannon
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCannon, %function
initCannon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #125
	push	{r4, lr}
	mov	r2, #118
	mov	r4, #1
	mov	lr, #30
	mov	ip, #2
	mov	r0, #20
	ldr	r3, .L25
	str	r1, [r3]
	str	r1, [r3, #8]
	ldr	r1, .L25+4
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	strh	r1, [r3, #28]	@ movhi
	str	r0, [r3, #32]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	cannon
	.word	32736
	.size	initCannon, .-initCannon
	.align	2
	.global	drawCannon
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCannon, %function
drawCannon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	ip, .L37
	ldr	r4, .L37+4
	sub	sp, sp, #8
	ldr	r5, .L37+8
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldr	ip, .L37+12
	ldr	r3, [r4, #20]
	str	ip, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r2, #186
	mov	r3, #10
	mov	r1, #150
	mov	r0, #0
	str	r2, [sp]
	mov	r2, #240
	mov	lr, pc
	bx	r5
	mov	r3, #10
	ldr	r1, .L37+16
	ldr	r6, .L37+20
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #115
	mov	r1, #70
	ldr	r5, .L37+24
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	cmp	r3, #4
	beq	.L33
	cmp	r3, #3
	beq	.L34
.L29:
	cmp	r3, #2
	beq	.L35
.L30:
	cmp	r3, #1
	beq	.L36
.L31:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	mov	r3, #2
	ldr	r1, .L37+28
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #115
	mov	r1, #70
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	cmp	r3, #3
	bne	.L29
.L34:
	mov	r3, #4
	ldr	r1, .L37+28
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #115
	mov	r1, #70
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	cmp	r3, #2
	bne	.L30
.L35:
	mov	r3, #6
	ldr	r1, .L37+28
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #115
	mov	r1, #70
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L31
.L36:
	mov	r3, #8
	ldr	r1, .L37+28
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #115
	mov	r1, #70
	mov	lr, pc
	bx	r5
	b	.L31
.L38:
	.align	2
.L37:
	.word	52991
	.word	cannon
	.word	drawRect
	.word	15855
	.word	32767
	.word	ballsRemaining
	.word	drawCircle
	.word	32736
	.size	drawCannon, .-drawCannon
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
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #5
	mov	r6, #3
	mvn	r5, #4
	mvn	r4, #1
	ldr	r1, .L43
	ldr	r3, .L43+4
	ldr	r0, .L43+8
	ldr	lr, [r1]
	ldr	ip, [r1, #4]
	add	r1, r3, #4000
.L40:
	str	r7, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3]
	str	ip, [r3, #12]
	str	r4, [r3, #16]
	strh	r0, [r3, #28]	@ movhi
	str	r2, [r3, #32]
	stmib	r3, {r2, lr}
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L40
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	cannon
	.word	bullets
	.word	32736
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
	push	{r4, r5, r6, lr}
	ldr	lr, .L51
	mov	r3, #0
	mov	r2, lr
	b	.L48
.L46:
	add	r3, r3, #1
	cmp	r3, #100
	add	r2, r2, #40
	beq	.L45
.L48:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L46
	mov	r5, #1
	ldr	r4, .L51+4
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #24]
	ldr	r6, [r4]
	add	r0, lr, r3, lsl #3
	add	ip, r2, r2, lsr #31
	str	r6, [lr, r3, lsl #3]
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #24]
	add	r2, r2, ip, asr r5
	add	r3, r3, r3, lsr #31
	add	r3, r2, r3, asr r5
	str	r1, [r0, #36]
	str	r3, [r0, #4]
	str	r5, [r0, #32]
.L45:
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	bullets
	.word	cannon
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updateCannon
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCannon, %function
updateCannon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L64
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, lr}
	ldr	r4, .L64+4
	bne	.L54
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	cmp	r3, r2
	subge	r3, r3, r2
	strge	r3, [r4, #4]
	blt	.L54
.L55:
	ldr	r3, .L64+8
	ldrh	r3, [r3]
	tst	r3, #2
	ldr	r3, [r4, #32]
	beq	.L56
	ldr	r2, .L64+12
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L56
	cmp	r3, #19
	bgt	.L63
.L56:
	add	r3, r3, #1
	str	r3, [r4, #32]
	pop	{r4, lr}
	bx	lr
.L54:
	ldr	r3, .L64
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L55
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	ldr	r3, [r4, #24]
	rsb	r0, r1, #240
	add	r3, r2, r3
	cmp	r3, r0
	addle	r2, r2, r1
	strle	r2, [r4, #4]
	b	.L55
.L63:
	bl	fireBullet
	ldr	r3, [r4, #32]
	b	.L56
.L65:
	.align	2
.L64:
	.word	67109120
	.word	cannon
	.word	oldButtons
	.word	buttons
	.size	updateCannon, .-updateCannon
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
	bl	updateCannon
	ldr	r3, .L83
	add	r1, r3, #4000
.L69:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	ldrne	r0, [r3, #16]
	ldr	r2, [r3]
	strne	r2, [r3, #8]
	addne	r2, r2, r0
	strne	r2, [r3]
	cmp	r2, #0
	streq	r2, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L69
	ldr	r4, .L83+4
	add	r5, r4, #4352
	add	r5, r5, #48
.L71:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	movne	r0, r4
	blne	updateBall.part.0
.L70:
	add	r4, r4, #44
	cmp	r4, r5
	bne	.L71
	ldr	r0, .L83+8
	ldr	ip, .L83+12
	ldr	r1, .L83+16
	ldr	r3, [r0]
	ldr	r2, [ip]
	ldr	r1, [r1]
	cmp	r3, #0
	rsble	r2, r2, #0
	add	r1, r3, r1
	strle	r2, [ip]
	cmp	r1, #240
	rsbgt	r2, r2, #0
	add	r3, r3, r2
	strgt	r2, [ip]
	str	r3, [r0]
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	bullets
	.word	balls
	.word	cCol
	.word	cCDel
	.word	cWidth
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
	ldr	r3, [r0, #32]
	cmp	r3, #0
	ldrne	r2, [r0, #16]
	ldr	r3, [r0]
	strne	r3, [r0, #8]
	addne	r3, r3, r2
	strne	r3, [r0]
	cmp	r3, #0
	streq	r3, [r0, #32]
	bx	lr
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
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L95
	ldr	r3, [r0, #36]
	cmp	r3, #0
	beq	.L96
.L93:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L96:
	ldr	r2, .L97
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r5, .L97+4
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L93
.L95:
	ldr	r2, .L97
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r5, .L97+4
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L93
.L98:
	.align	2
.L97:
	.word	52991
	.word	drawRect
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
	mov	r9, #5
	ldr	r4, .L103
	ldr	r5, .L103+4
	ldr	r8, .L103+8
	ldr	r7, .L103+12
	add	r6, r4, #220
.L100:
	str	r9, [r4, #24]
	str	r9, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #1
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	ip, #31
	mov	r2, #1
	mov	r1, #0
	smull	r3, lr, r7, r0
	asr	r3, r0, ip
	rsb	r3, r3, lr, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl r2
	ldr	r3, [r4]
	add	r0, r0, #10
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [r4, #36]
	strh	ip, [r4, #32]	@ movhi
	str	r1, [r4, #40]
	str	r3, [r4, #8]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L100
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	balls
	.word	rand
	.word	156180629
	.word	2114445439
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #125
	ldr	r6, .L109
	mov	lr, r8
	str	r8, [r6]
	str	r8, [r6, #8]
	mov	r8, #2
	mov	r7, #118
	ldr	r9, .L109+4
	str	r8, [r6, #24]
	mov	fp, #1
	mov	r10, #30
	mov	r8, #20
	mov	ip, r9
	mov	r4, #5
	mov	r0, #3
	mvn	r1, #4
	mov	r3, #0
	mvn	r2, #1
	str	r7, [r6, #4]
	str	r7, [r6, #12]
	mov	r5, r7
	ldr	r7, .L109+8
	str	fp, [r6, #16]
	str	r10, [r6, #20]
	str	r8, [r6, #32]
	strh	r9, [r6, #28]	@ movhi
	add	r6, r7, #4000
.L106:
	str	r4, [r7, #20]
	str	r0, [r7, #24]
	str	r5, [r7, #12]
	str	r2, [r7, #16]
	strh	ip, [r7, #28]	@ movhi
	str	r3, [r7, #32]
	stm	r7, {r1, r3, lr}
	add	r7, r7, #40
	cmp	r7, r6
	bne	.L106
	bl	initBalls
	mov	r0, #10
	mov	r3, #1
	ldr	r2, .L109+12
	ldr	r1, .L109+16
	str	r0, [r2]
	ldr	r2, .L109+20
	str	r3, [r1]
	str	r3, [r2]
	ldr	r0, .L109+24
	ldr	r3, .L109+28
	ldr	r1, .L109+32
	ldr	r2, .L109+36
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r5, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	cannon
	.word	32736
	.word	bullets
	.word	cRow
	.word	cRDel
	.word	cCDel
	.word	ballsRemaining
	.word	cCol
	.word	cHeight
	.word	cWidth
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
	ldr	r3, [r0, #36]
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
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L117
	ldr	r3, [r0, #40]
	cmp	r3, #0
	beq	.L118
.L115:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L118:
	ldr	r2, .L119
	ldr	r3, [r0, #24]
	str	r2, [sp]
	ldr	r5, .L119+4
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L115
.L117:
	ldr	r2, .L119
	ldr	r3, [r0, #24]
	str	r2, [sp]
	ldr	r5, .L119+4
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #32]
	ldr	r3, [r4, #24]
	str	r2, [sp]
	ldr	r2, [r4, #28]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L115
.L120:
	.align	2
.L119:
	.word	52991
	.word	drawCircle
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #8
	bl	drawCannon
	ldr	r4, .L125
	add	r5, r4, #4000
.L122:
	mov	r0, r4
	add	r4, r4, #40
	bl	drawBullet
	cmp	r4, r5
	bne	.L122
	ldr	r0, .L125+4
	bl	drawBall
	ldr	r0, .L125+8
	bl	drawBall
	ldr	r0, .L125+12
	bl	drawBall
	ldr	r0, .L125+16
	bl	drawBall
	ldr	r0, .L125+20
	bl	drawBall
	ldr	r10, .L125+24
	ldr	r9, .L125+28
	ldr	r5, .L125+32
	ldr	r4, .L125+36
	ldr	ip, .L125+40
	ldr	r1, [r5]
	ldr	r0, [r4]
	ldr	r3, [r10]
	ldr	r2, [r9]
	str	ip, [sp]
	ldr	r8, .L125+44
	mov	lr, pc
	bx	r8
	ldr	r7, .L125+48
	ldr	r6, .L125+52
	ldr	ip, .L125+56
	ldr	r3, [r10]
	ldr	r2, [r9]
	ldr	r1, [r7]
	ldr	r0, [r6]
	str	ip, [sp]
	mov	lr, pc
	bx	r8
	ldr	r2, [r7]
	ldr	r3, [r6]
	str	r2, [r5]
	str	r3, [r4]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	bullets
	.word	balls
	.word	balls+44
	.word	balls+88
	.word	balls+132
	.word	balls+176
	.word	cHeight
	.word	cWidth
	.word	cOldRow
	.word	cOldCol
	.word	52991
	.word	drawCircle
	.word	cRow
	.word	cCol
	.word	32767
	.size	drawGame, .-drawGame
	.comm	cCDel,4,4
	.comm	cRDel,4,4
	.comm	cOldCol,4,4
	.comm	cOldRow,4,4
	.comm	cWidth,4,4
	.comm	cHeight,4,4
	.comm	cRow,4,4
	.comm	cCol,4,4
	.comm	ballsRemaining,4,4
	.comm	balls,220,4
	.comm	bullets,4000,4
	.comm	cannon,36,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
