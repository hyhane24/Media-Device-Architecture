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
	.word	spongebob
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
	mov	r1, #1
	mov	r5, #19
	mov	r4, #20
	mov	lr, #167
	mov	ip, #119
	mov	r0, #3
	ldr	r3, .L8
	str	r7, [r3]
	ldr	r3, .L8+4
	str	r6, [r3]
	ldr	r3, .L8+8
	str	r2, [r3]
	ldr	r3, .L8+12
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	ldr	r2, .L8+16
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r2]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	vOff
	.word	hOff
	.word	jellyfish
	.word	spongebob
	.word	life
	.size	initGame, .-initGame
	.align	2
	.global	initGameThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGameThree, %function
initGameThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	r1, #1
	mov	r5, #19
	mov	r4, #20
	mov	lr, #71
	mov	ip, #110
	mov	r0, #3
	ldr	r6, .L12
	ldr	r3, .L12+4
	str	r2, [r6]
	ldr	r6, .L12+8
	str	r2, [r3]
	ldrh	r6, [r6, #48]
	ldr	r3, .L12+12
	strh	r6, [r3]	@ movhi
	ldr	r3, .L12+16
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	hOff
	.word	vOff
	.word	67109120
	.word	buttons
	.word	spongebob
	.size	initGameThree, .-initGameThree
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
	ldr	r3, .L18
	ldr	r3, [r3, #44]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L15
	ldr	r2, .L18+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L16:
	ldr	r3, .L18+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L18+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L18+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L18+16
	ldrh	r1, [r2]
	ldr	r2, .L18+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L15:
	bl	drawPlayer.part.0
	b	.L16
.L19:
	.align	2
.L18:
	.word	spongebob
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
	ldr	r3, .L22
	ldr	r0, [r3]
	ldr	r3, .L22+4
	ldr	r1, [r3]
	ldr	r3, .L22+8
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
.L23:
	.align	2
.L22:
	.word	vOff
	.word	hOff
	.word	spongebob
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
	ldr	r4, .L37
	ldr	r3, .L37+4
	ldr	r5, [r4, #24]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	ldr	r6, [r4, #28]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	str	r6, [r4, #32]
	str	r1, [r4, #28]
	bne	.L25
	ldr	r0, [r4, #36]
	ldr	r3, .L37+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L25:
	ldr	r3, .L37+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	streq	r3, [r4, #28]
	ldr	r3, .L37+12
	ldrh	r3, [r3, #48]
	ldr	r2, .L37+12
	ands	r3, r3, #128
	streq	r3, [r4, #28]
	ldrh	r3, [r2, #48]
	ands	r3, r3, #32
	bne	.L28
	ldrh	r2, [r2, #48]
	tst	r2, #16
	str	r3, [r4, #28]
	bne	.L30
.L31:
	mov	r3, #0
	str	r3, [r4, #28]
.L30:
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	ldrh	r3, [r2, #48]
	tst	r3, #16
	beq	.L31
	ldr	r3, [r4, #28]
	cmp	r3, #4
	bne	.L30
	mov	r3, #0
	str	r6, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	spongebob
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
	ldr	r3, .L137
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, r7, r8, lr}
	bne	.L40
	ldr	r3, .L137+4
	ldr	r2, [r3]
	ldmib	r3, {r0, ip}
	cmp	r2, #0
	sub	r2, r2, ip
	add	r4, r0, r2, lsl #8
	lsl	r1, r2, #8
	lslle	r4, r4, #1
	ble	.L41
	ldr	r5, .L137+8
	lsl	r4, r4, #1
	ldrh	lr, [r5, r4]
	cmp	lr, #0
	bne	.L133
.L41:
	ldr	lr, .L137+12
	ldr	r2, [lr]
	add	r2, r2, #1
	str	r2, [lr]
.L42:
	ldr	r2, .L137+16
	ldrh	ip, [r2, r4]
	cmp	ip, #0
	beq	.L43
	ldr	r3, [r3, #16]
	add	r3, r1, r3
	add	r3, r3, r0
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0
	beq	.L43
	mov	r2, #1
	ldr	r3, .L137+20
	str	r2, [r3]
.L40:
	ldr	r3, .L137
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L44
	ldr	r3, .L137+4
	ldr	r1, [r3]
	ldr	ip, [r3, #20]
	ldr	r4, [r3, #8]
	add	r2, r1, ip
	ldr	r0, [r3, #4]
	cmp	r2, #255
	add	r2, r2, r4
	lsl	lr, r2, #8
	add	r2, r0, r2, lsl #8
	lslgt	r2, r2, #1
	ble	.L134
.L45:
	ldr	ip, .L137+12
	ldr	r1, [ip]
	add	r1, r1, #1
	str	r1, [ip]
.L46:
	ldr	r1, .L137+16
	ldrh	r2, [r1, r2]
	cmp	r2, #0
	beq	.L47
	ldr	r3, [r3, #16]
	add	r3, r0, r3
	add	r3, r3, lr
	lsl	r3, r3, #1
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	beq	.L47
	mov	r2, #1
	ldr	r3, .L137+20
	str	r2, [r3]
.L44:
	ldr	r3, .L137
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L48
	ldr	r3, .L137+4
	ldr	r1, [r3, #4]
	ldr	lr, [r3, #12]
	ldr	ip, [r3]
	sub	r2, r1, lr
	cmp	r1, #0
	add	r0, r2, ip, lsl #8
	lsl	r5, ip, #8
	lslle	r0, r0, #1
	ble	.L49
	ldr	r4, .L137+8
	lsl	r0, r0, #1
	ldrh	r1, [r4, r0]
	cmp	r1, #0
	bne	.L135
.L49:
	ldr	lr, .L137+12
	ldr	r1, [lr]
	add	r1, r1, #1
	str	r1, [lr]
.L50:
	ldr	r1, .L137+16
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	beq	.L51
	ldr	r3, [r3, #20]
	add	r3, ip, r3
	add	r2, r2, r3, lsl #8
	lsl	r2, r2, #1
	ldrh	r3, [r1, r2]
	cmp	r3, #0
	beq	.L51
	mov	r2, #1
	ldr	r3, .L137+20
	str	r2, [r3]
.L48:
	ldr	r3, .L137
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L52
	ldr	r3, .L137+4
	ldr	r0, [r3, #4]
	ldr	r4, [r3, #16]
	ldr	r5, [r3, #12]
	ldr	lr, [r3]
	add	r2, r0, r4
	add	r1, r2, r5
	cmp	r2, #255
	add	ip, r1, lr, lsl #8
	lsl	r6, lr, #8
	lslgt	ip, ip, #1
	ble	.L136
.L53:
	ldr	r0, .L137+12
	ldr	r2, [r0]
	add	r2, r2, #1
	str	r2, [r0]
.L54:
	ldr	r2, .L137+16
	ldrh	r0, [r2, ip]
	cmp	r0, #0
	beq	.L55
	ldr	r3, [r3, #20]
	add	r3, lr, r3
	add	r3, r1, r3, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0
	beq	.L55
	mov	r2, #1
	ldr	r3, .L137+20
	str	r2, [r3]
.L52:
	pop	{r4, r5, r6, r7, r8, lr}
	b	animatePlayer
.L134:
	ldr	r6, .L137+8
	lsl	r2, r2, #1
	ldrh	r5, [r6, r2]
	cmp	r5, #0
	beq	.L45
	ldr	r5, [r3, #16]
	add	r5, r0, r5
	add	r5, r5, lr
	lsl	r5, r5, #1
	ldrh	r5, [r6, r5]
	cmp	r5, #0
	beq	.L45
	ldr	r6, .L137+24
	add	r1, r1, r4
	ldr	r5, [r6]
	add	r2, ip, r1
	add	r2, r2, r4
	cmp	r5, #95
	lsl	lr, r2, #8
	str	r1, [r3]
	add	r2, r0, r2, lsl #8
	bgt	.L130
	sub	r1, r1, r5
	cmp	r1, #80
	addgt	r5, r5, #1
	strgt	r5, [r6]
.L130:
	lsl	r2, r2, #1
	b	.L46
.L136:
	ldr	r7, .L137+8
	lsl	ip, ip, #1
	ldrh	r2, [r7, ip]
	cmp	r2, #0
	beq	.L53
	ldr	r2, [r3, #20]
	add	r2, lr, r2
	add	r2, r1, r2, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L53
	ldr	r8, .L137+28
	add	r0, r0, r5
	ldr	r7, [r8]
	add	r2, r4, r0
	add	r1, r2, r5
	cmp	r7, #15
	str	r0, [r3, #4]
	add	ip, r6, r1
	bgt	.L132
	sub	r0, r0, r7
	cmp	r0, #120
	addgt	r7, r7, #1
	strgt	r7, [r8]
.L132:
	lsl	ip, ip, #1
	b	.L54
.L43:
	mov	r2, #0
	ldr	r3, .L137+20
	str	r2, [r3]
	b	.L40
.L51:
	mov	r2, #0
	ldr	r3, .L137+20
	str	r2, [r3]
	b	.L48
.L55:
	mov	r2, #0
	ldr	r3, .L137+20
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	b	animatePlayer
.L47:
	mov	r2, #0
	ldr	r3, .L137+20
	str	r2, [r3]
	b	.L44
.L133:
	ldr	lr, [r3, #16]
	add	lr, r1, lr
	add	lr, lr, r0
	lsl	lr, lr, #1
	ldrh	lr, [r5, lr]
	cmp	lr, #0
	beq	.L41
	ldr	r5, .L137+24
	ldr	lr, [r5]
	sub	ip, r2, ip
	cmp	lr, #0
	str	r2, [r3]
	lsl	r1, ip, #8
	add	r4, r0, ip, lsl #8
	ble	.L128
	sub	r2, r2, lr
	cmp	r2, #79
	suble	lr, lr, #1
	strle	lr, [r5]
.L128:
	lsl	r4, r4, #1
	b	.L42
.L135:
	ldr	r1, [r3, #20]
	add	r1, ip, r1
	add	r1, r2, r1, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r4, r1]
	cmp	r1, #0
	beq	.L49
	ldr	r4, .L137+28
	ldr	r1, [r4]
	sub	lr, r2, lr
	cmp	r1, #0
	str	r2, [r3, #4]
	add	r0, r5, lr
	ble	.L57
	sub	r2, r2, r1
	cmp	r2, #119
	bgt	.L57
	sub	r1, r1, #1
	mov	r2, lr
	str	r1, [r4]
	lsl	r0, r0, #1
	b	.L50
.L57:
	mov	r2, lr
	lsl	r0, r0, #1
	b	.L50
.L138:
	.align	2
.L137:
	.word	67109120
	.word	spongebob
	.word	collisionmapBitmap
	.word	jellyfish
	.word	collisionmapTwoBitmap
	.word	life
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
	.global	updatePlayerTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerTwo, %function
updatePlayerTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L238
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, r7, r8, lr}
	bne	.L141
	ldr	r3, .L238+4
	ldr	r2, [r3]
	ldmib	r3, {r0, ip}
	cmp	r2, #0
	sub	r2, r2, ip
	add	r4, r0, r2, lsl #8
	lsl	r1, r2, #8
	lslle	r4, r4, #1
	ble	.L142
	ldr	r5, .L238+8
	lsl	r4, r4, #1
	ldrh	lr, [r5, r4]
	cmp	lr, #0
	bne	.L234
.L142:
	ldr	lr, .L238+12
	ldr	r2, [lr]
	add	r2, r2, #1
	str	r2, [lr]
.L143:
	ldr	r2, .L238+16
	ldrh	ip, [r2, r4]
	cmp	ip, #0
	beq	.L144
	ldr	r3, [r3, #16]
	add	r3, r1, r3
	add	r3, r3, r0
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0
	beq	.L144
	mov	r2, #1
	ldr	r3, .L238+20
	str	r2, [r3]
.L141:
	ldr	r3, .L238
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L145
	ldr	r3, .L238+4
	ldr	r1, [r3]
	ldr	ip, [r3, #20]
	ldr	r4, [r3, #8]
	add	r2, r1, ip
	ldr	r0, [r3, #4]
	cmp	r2, #255
	add	r2, r2, r4
	lsl	lr, r2, #8
	add	r2, r0, r2, lsl #8
	lslgt	r2, r2, #1
	ble	.L235
.L146:
	ldr	ip, .L238+12
	ldr	r1, [ip]
	add	r1, r1, #1
	str	r1, [ip]
.L147:
	ldr	r1, .L238+16
	ldrh	r2, [r1, r2]
	cmp	r2, #0
	beq	.L148
	ldr	r3, [r3, #16]
	add	r3, r0, r3
	add	r3, r3, lr
	lsl	r3, r3, #1
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	beq	.L148
	mov	r2, #1
	ldr	r3, .L238+20
	str	r2, [r3]
.L145:
	ldr	r3, .L238
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L149
	ldr	r3, .L238+4
	ldr	r1, [r3, #4]
	ldr	lr, [r3, #12]
	ldr	ip, [r3]
	sub	r2, r1, lr
	cmp	r1, #0
	add	r0, r2, ip, lsl #8
	lsl	r5, ip, #8
	lslle	r0, r0, #1
	ble	.L150
	ldr	r4, .L238+8
	lsl	r0, r0, #1
	ldrh	r1, [r4, r0]
	cmp	r1, #0
	bne	.L236
.L150:
	ldr	lr, .L238+12
	ldr	r1, [lr]
	add	r1, r1, #1
	str	r1, [lr]
.L151:
	ldr	r1, .L238+16
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	beq	.L152
	ldr	r3, [r3, #20]
	add	r3, ip, r3
	add	r2, r2, r3, lsl #8
	lsl	r2, r2, #1
	ldrh	r3, [r1, r2]
	cmp	r3, #0
	beq	.L152
	mov	r2, #1
	ldr	r3, .L238+20
	str	r2, [r3]
.L149:
	ldr	r3, .L238
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L153
	ldr	r3, .L238+4
	ldr	r0, [r3, #4]
	ldr	r4, [r3, #16]
	ldr	r5, [r3, #12]
	ldr	lr, [r3]
	add	r2, r0, r4
	add	r1, r2, r5
	cmp	r2, #255
	add	ip, r1, lr, lsl #8
	lsl	r6, lr, #8
	lslgt	ip, ip, #1
	ble	.L237
.L154:
	ldr	r0, .L238+12
	ldr	r2, [r0]
	add	r2, r2, #1
	str	r2, [r0]
.L155:
	ldr	r2, .L238+16
	ldrh	r0, [r2, ip]
	cmp	r0, #0
	beq	.L156
	ldr	r3, [r3, #20]
	add	r3, lr, r3
	add	r3, r1, r3, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0
	beq	.L156
	mov	r2, #1
	ldr	r3, .L238+20
	str	r2, [r3]
.L153:
	pop	{r4, r5, r6, r7, r8, lr}
	b	animatePlayer
.L235:
	ldr	r6, .L238+8
	lsl	r2, r2, #1
	ldrh	r5, [r6, r2]
	cmp	r5, #0
	beq	.L146
	ldr	r5, [r3, #16]
	add	r5, r0, r5
	add	r5, r5, lr
	lsl	r5, r5, #1
	ldrh	r5, [r6, r5]
	cmp	r5, #0
	beq	.L146
	ldr	r6, .L238+24
	add	r1, r1, r4
	ldr	r5, [r6]
	add	r2, ip, r1
	add	r2, r2, r4
	cmp	r5, #95
	lsl	lr, r2, #8
	str	r1, [r3]
	add	r2, r0, r2, lsl #8
	bgt	.L231
	sub	r1, r1, r5
	cmp	r1, #80
	addgt	r5, r5, #1
	strgt	r5, [r6]
.L231:
	lsl	r2, r2, #1
	b	.L147
.L237:
	ldr	r7, .L238+8
	lsl	ip, ip, #1
	ldrh	r2, [r7, ip]
	cmp	r2, #0
	beq	.L154
	ldr	r2, [r3, #20]
	add	r2, lr, r2
	add	r2, r1, r2, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L154
	ldr	r8, .L238+28
	add	r0, r0, r5
	ldr	r7, [r8]
	add	r2, r4, r0
	add	r1, r2, r5
	cmp	r7, #15
	str	r0, [r3, #4]
	add	ip, r6, r1
	bgt	.L233
	sub	r0, r0, r7
	cmp	r0, #120
	addgt	r7, r7, #1
	strgt	r7, [r8]
.L233:
	lsl	ip, ip, #1
	b	.L155
.L144:
	mov	r2, #0
	ldr	r3, .L238+20
	str	r2, [r3]
	b	.L141
.L152:
	mov	r2, #0
	ldr	r3, .L238+20
	str	r2, [r3]
	b	.L149
.L156:
	mov	r2, #0
	ldr	r3, .L238+20
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	b	animatePlayer
.L148:
	mov	r2, #0
	ldr	r3, .L238+20
	str	r2, [r3]
	b	.L145
.L234:
	ldr	lr, [r3, #16]
	add	lr, r1, lr
	add	lr, lr, r0
	lsl	lr, lr, #1
	ldrh	lr, [r5, lr]
	cmp	lr, #0
	beq	.L142
	ldr	r5, .L238+24
	ldr	lr, [r5]
	sub	ip, r2, ip
	cmp	lr, #0
	str	r2, [r3]
	lsl	r1, ip, #8
	add	r4, r0, ip, lsl #8
	ble	.L229
	sub	r2, r2, lr
	cmp	r2, #79
	suble	lr, lr, #1
	strle	lr, [r5]
.L229:
	lsl	r4, r4, #1
	b	.L143
.L236:
	ldr	r1, [r3, #20]
	add	r1, ip, r1
	add	r1, r2, r1, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r4, r1]
	cmp	r1, #0
	beq	.L150
	ldr	r4, .L238+28
	ldr	r1, [r4]
	sub	lr, r2, lr
	cmp	r1, #0
	str	r2, [r3, #4]
	add	r0, r5, lr
	ble	.L158
	sub	r2, r2, r1
	cmp	r2, #119
	bgt	.L158
	sub	r1, r1, #1
	mov	r2, lr
	str	r1, [r4]
	lsl	r0, r0, #1
	b	.L151
.L158:
	mov	r2, lr
	lsl	r0, r0, #1
	b	.L151
.L239:
	.align	2
.L238:
	.word	67109120
	.word	spongebob
	.word	collisionmapThreeBitmap
	.word	jellyfish
	.word	collisionmapFourBitmap
	.word	life
	.word	vOff
	.word	hOff
	.size	updatePlayerTwo, .-updatePlayerTwo
	.align	2
	.global	updateGameTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGameTwo, %function
updateGameTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayerTwo
	.size	updateGameTwo, .-updateGameTwo
	.align	2
	.global	updatePlayerThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerThree, %function
updatePlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L250
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L242
	ldr	r2, .L250+4
	ldr	r0, .L250+8
	ldr	r1, [r2, #4]
	ldr	r3, [r0]
	ldr	ip, [r2, #12]
	sub	r3, r3, #1
	sub	r1, r1, ip
	str	r1, [r2, #4]
	str	r3, [r0]
.L242:
	ldr	r3, .L250
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L247
	ldr	r3, .L250+4
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	ldr	r0, [r3, #16]
	str	lr, [sp, #-4]!
	add	r2, r2, r1
	ldr	lr, .L250+12
	add	r0, r2, r0
	cmp	r0, lr
	str	r2, [r3, #4]
	moveq	r2, #100
	ldr	ip, .L250+8
	ldr	r1, [ip]
	ldreq	r3, .L250+16
	add	r1, r1, #1
	ldr	lr, [sp], #4
	str	r1, [ip]
	streq	r2, [r3]
	b	animatePlayer
.L247:
	b	animatePlayer
.L251:
	.align	2
.L250:
	.word	67109120
	.word	spongebob
	.word	hOff
	.word	550
	.word	jellyfish
	.size	updatePlayerThree, .-updatePlayerThree
	.align	2
	.global	updateGameThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGameThree, %function
updateGameThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayerThree
	.size	updateGameThree, .-updateGameThree
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
	ldr	r3, .L257
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L254
	ldr	r2, .L257+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L254:
	b	drawPlayer.part.0
.L258:
	.align	2
.L257:
	.word	spongebob
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.comm	spongebob,48,4
	.comm	shadowOAM,1024,4
	.comm	life,4,4
	.comm	jellyfish,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
