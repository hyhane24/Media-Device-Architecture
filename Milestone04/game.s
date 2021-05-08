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
	ldr	r3, [r0, #12]
	ldr	r2, [r2]
	sub	r3, r3, r2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, .L4+8
	str	lr, [sp, #-4]!
	ldr	r1, [r0, #8]
	ldr	lr, [r2]
	ldr	ip, [r0, #44]
	ldr	r2, [r0, #36]
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
	.set	drawPlayerThree.part.0,drawPlayer.part.0
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r9, #96
	mov	r8, #9
	mov	r3, #0
	mov	r2, #20
	mov	r1, #1
	mov	r7, #19
	mov	r6, #167
	mov	lr, #119
	mov	ip, #3
	mov	r4, #110
	mov	r5, #24
	ldr	r0, .L8
	str	r9, [r0]
	ldr	r0, .L8+4
	str	r8, [r0]
	ldr	r0, .L8+8
	str	r3, [r0]
	ldr	r0, .L8+12
	str	r7, [r0, #24]
	str	r6, [r0, #8]
	str	lr, [r0, #12]
	str	r3, [r0, #32]
	str	r3, [r0, #36]
	str	ip, [r0, #48]
	str	r1, [r0, #16]
	str	r1, [r0, #20]
	str	r3, [r0, #44]
	ldr	ip, .L8+16
	str	r2, [r0, #28]
	ldr	r0, .L8+20
	ldr	lr, .L8+24
	str	r4, [r0, #4]
	str	r5, [r0, #36]
	str	r1, [ip]
	str	r2, [r0, #16]
	ldr	ip, .L8+28
	str	r2, [r0, #20]
	str	r2, [r0]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r3, [r0, #24]
	str	r3, [r0, #32]
	str	r3, [r0, #40]
	ldr	r0, .L8+32
	stm	lr, {r2, r4}
	str	r2, [lr, #16]
	str	r2, [lr, #20]
	str	r1, [lr, #8]
	str	r1, [lr, #12]
	str	r3, [lr, #24]
	str	r3, [lr, #32]
	stm	ip, {r2, r4}
	str	r5, [lr, #36]
	str	r3, [lr, #40]
	str	r5, [ip, #36]
	str	r4, [r0, #4]
	str	r2, [ip, #16]
	str	r2, [ip, #20]
	str	r1, [ip, #8]
	str	r1, [ip, #12]
	str	r3, [ip, #24]
	str	r3, [ip, #32]
	str	r3, [ip, #40]
	str	r2, [r0, #16]
	str	r2, [r0, #20]
	str	r2, [r0]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r3, [r0, #24]
	str	r3, [r0, #32]
	str	r2, [r0, #36]
	str	r3, [r0, #40]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	vOff
	.word	hOff
	.word	jellyfish
	.word	spongebob
	.word	life
	.word	jellyf
	.word	jelly
	.word	fish
	.word	flypat
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
	push	{r4, r5, lr}
	mov	ip, #20
	mov	r4, #70
	mov	lr, #110
	mov	r0, #1
	mov	r1, #3
	ldr	r5, .L12
	ldr	r3, .L12+4
	str	r2, [r5]
	ldr	r5, .L12+8
	str	r2, [r3]
	ldrh	r5, [r5, #48]
	ldr	r3, .L12+12
	strh	r5, [r3]	@ movhi
	ldr	r3, .L12+16
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #44]
	str	r1, [r3, #48]
	pop	{r4, r5, lr}
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
	.global	updateJellyf
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateJellyf, %function
updateJellyf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L29
	mov	lr, pc
	bx	r5
	ldr	r4, .L29+4
	smull	r3, r4, r0, r4
	sub	r4, r4, r0, asr #31
	add	r4, r4, r4, lsl #1
	sub	r4, r0, r4
	mov	lr, pc
	bx	r5
	cmp	r4, #1
	beq	.L15
	cmp	r4, #2
	beq	.L16
	cmp	r4, #0
	ldr	r4, .L29+8
	beq	.L17
	ldm	r4, {r2, r3}
.L18:
	cmp	r2, #19
	movle	r1, #20
	movle	r2, r1
	strle	r1, [r4]
	ldr	r1, [r4, #20]
	rsb	r1, r1, #159
	cmp	r1, r2
	strlt	r1, [r4]
	cmp	r3, #169
	movle	r2, #170
	movle	r3, r2
	strle	r2, [r4, #4]
	ldr	r2, [r4, #16]
	rsb	r2, r2, #239
	cmp	r2, r3
	strlt	r2, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	ldr	r4, .L29+8
	tst	r0, #1
	ldr	r6, [r4, #12]
	beq	.L27
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r0, r6, r0
	ldr	r3, [r4, #4]
	add	r0, r0, #3
	sub	r3, r3, r0
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L18
.L16:
	ldr	r4, .L29+8
	tst	r0, #1
	ldr	r6, [r4, #8]
	bne	.L28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r3, r6, r0
	ldr	r2, [r4]
	add	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r4]
	ldr	r6, [r4, #12]
.L27:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r3, r0, #1
	rsblt	r3, r3, #0
	mul	r3, r6, r3
	ldr	r2, [r4, #4]
	add	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L18
.L17:
	tst	r0, #1
	ldr	r6, [r4, #8]
	beq	.L19
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r0, r6, r0
	ldr	r2, [r4]
	add	r0, r0, #3
	sub	r2, r2, r0
	str	r2, [r4]
	ldr	r3, [r4, #4]
	b	.L18
.L28:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r3, r6, r0
	ldr	r2, [r4]
	add	r3, r3, #3
	sub	r3, r2, r3
	str	r3, [r4]
	ldr	r6, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r3, r0, #1
	rsblt	r3, r3, #0
	mul	r2, r6, r3
	ldr	r3, [r4, #4]
	add	r2, r2, #3
	sub	r3, r3, r2
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L18
.L19:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r2, r0, #1
	rsblt	r2, r2, #0
	mul	r2, r6, r2
	ldr	r3, [r4]
	add	r2, r2, #3
	add	r2, r2, r3
	str	r2, [r4]
	ldr	r3, [r4, #4]
	b	.L18
.L30:
	.align	2
.L29:
	.word	rand
	.word	1431655766
	.word	jellyf
	.size	updateJellyf, .-updateJellyf
	.align	2
	.global	updateJelly
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateJelly, %function
updateJelly:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L46
	mov	lr, pc
	bx	r5
	ldr	r4, .L46+4
	smull	r3, r4, r0, r4
	sub	r4, r4, r0, asr #31
	add	r4, r4, r4, lsl #1
	sub	r4, r0, r4
	mov	lr, pc
	bx	r5
	cmp	r4, #1
	beq	.L32
	cmp	r4, #2
	beq	.L33
	cmp	r4, #0
	ldr	r4, .L46+8
	beq	.L34
	ldm	r4, {r2, r3}
.L35:
	cmp	r2, #0
	movlt	r1, #0
	movlt	r2, r1
	strlt	r1, [r4]
	ldr	r1, [r4, #20]
	rsb	r1, r1, #79
	cmp	r1, r2
	strlt	r1, [r4]
	cmp	r3, #0
	movlt	r2, #0
	movlt	r3, r2
	strlt	r2, [r4, #4]
	ldr	r2, [r4, #16]
	rsb	r2, r2, #100
	cmp	r2, r3
	strlt	r2, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L32:
	ldr	r4, .L46+8
	tst	r0, #1
	ldr	r6, [r4, #12]
	beq	.L44
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r0, r6, r0
	ldr	r3, [r4, #4]
	add	r0, r0, #3
	sub	r3, r3, r0
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L35
.L33:
	ldr	r4, .L46+8
	tst	r0, #1
	ldr	r6, [r4, #8]
	bne	.L45
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r3, r6, r0
	ldr	r2, [r4]
	add	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r4]
	ldr	r6, [r4, #12]
.L44:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r3, r0, #1
	rsblt	r3, r3, #0
	mul	r3, r6, r3
	ldr	r2, [r4, #4]
	add	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L35
.L34:
	tst	r0, #1
	ldr	r6, [r4, #8]
	beq	.L36
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r0, r6, r0
	ldr	r2, [r4]
	add	r0, r0, #3
	sub	r2, r2, r0
	str	r2, [r4]
	ldr	r3, [r4, #4]
	b	.L35
.L45:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r3, r6, r0
	ldr	r2, [r4]
	add	r3, r3, #3
	sub	r3, r2, r3
	str	r3, [r4]
	ldr	r6, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r3, r0, #1
	rsblt	r3, r3, #0
	mul	r2, r6, r3
	ldr	r3, [r4, #4]
	add	r2, r2, #3
	sub	r3, r3, r2
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L35
.L36:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r2, r0, #1
	rsblt	r2, r2, #0
	mul	r2, r6, r2
	ldr	r3, [r4]
	add	r2, r2, #3
	add	r2, r2, r3
	str	r2, [r4]
	ldr	r3, [r4, #4]
	b	.L35
.L47:
	.align	2
.L46:
	.word	rand
	.word	1431655766
	.word	jelly
	.size	updateJelly, .-updateJelly
	.align	2
	.global	updateFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFish, %function
updateFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L63
	mov	lr, pc
	bx	r5
	ldr	r4, .L63+4
	smull	r3, r4, r0, r4
	sub	r4, r4, r0, asr #31
	add	r4, r4, r4, lsl #1
	sub	r4, r0, r4
	mov	lr, pc
	bx	r5
	cmp	r4, #1
	beq	.L49
	cmp	r4, #2
	beq	.L50
	cmp	r4, #0
	ldr	r4, .L63+8
	beq	.L51
	ldm	r4, {r2, r3}
.L52:
	cmp	r2, #0
	movlt	r1, #0
	movlt	r2, r1
	strlt	r1, [r4]
	ldr	r1, [r4, #20]
	rsb	r1, r1, #159
	cmp	r1, r2
	strlt	r1, [r4]
	cmp	r3, #0
	movlt	r2, #0
	movlt	r3, r2
	strlt	r2, [r4, #4]
	ldr	r2, [r4, #16]
	rsb	r2, r2, #100
	cmp	r2, r3
	strlt	r2, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	ldr	r4, .L63+8
	tst	r0, #1
	ldr	r6, [r4, #12]
	beq	.L61
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r0, r6, r0
	ldr	r3, [r4, #4]
	add	r0, r0, #3
	sub	r3, r3, r0
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L52
.L50:
	ldr	r4, .L63+8
	tst	r0, #1
	ldr	r6, [r4, #8]
	bne	.L62
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r3, r6, r0
	ldr	r2, [r4]
	add	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r4]
	ldr	r6, [r4, #12]
.L61:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r3, r0, #1
	rsblt	r3, r3, #0
	mul	r3, r6, r3
	ldr	r2, [r4, #4]
	add	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L52
.L51:
	tst	r0, #1
	ldr	r6, [r4, #8]
	beq	.L53
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r0, r6, r0
	ldr	r2, [r4]
	add	r0, r0, #3
	sub	r2, r2, r0
	str	r2, [r4]
	ldr	r3, [r4, #4]
	b	.L52
.L62:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	mul	r3, r6, r0
	ldr	r2, [r4]
	add	r3, r3, #3
	sub	r3, r2, r3
	str	r3, [r4]
	ldr	r6, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r3, r0, #1
	rsblt	r3, r3, #0
	mul	r2, r6, r3
	ldr	r3, [r4, #4]
	add	r2, r2, #3
	sub	r3, r3, r2
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L52
.L53:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r2, r0, #1
	rsblt	r2, r2, #0
	mul	r2, r6, r2
	ldr	r3, [r4]
	add	r2, r2, #3
	add	r2, r2, r3
	str	r2, [r4]
	ldr	r3, [r4, #4]
	b	.L52
.L64:
	.align	2
.L63:
	.word	rand
	.word	1431655766
	.word	fish
	.size	updateFish, .-updateFish
	.align	2
	.global	updateFlypat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFlypat, %function
updateFlypat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L81
	mov	lr, pc
	bx	r5
	ldr	r4, .L81+4
	smull	r3, r4, r0, r4
	sub	r4, r4, r0, asr #31
	add	r4, r4, r4, lsl #1
	sub	r4, r0, r4
	mov	lr, pc
	bx	r5
	cmp	r4, #1
	beq	.L66
	cmp	r4, #2
	beq	.L67
	cmp	r4, #0
	ldr	r4, .L81+8
	beq	.L68
	ldm	r4, {r2, r3}
.L69:
	cmp	r2, #0
	movlt	r1, #0
	movlt	r2, r1
	strlt	r1, [r4]
	ldr	r1, [r4, #20]
	rsb	r1, r1, #40
	cmp	r1, r2
	strlt	r1, [r4]
	cmp	r3, #0
	movlt	r2, #0
	movlt	r3, r2
	strlt	r2, [r4, #4]
	ldr	r2, [r4, #16]
	rsb	r2, r2, #239
	cmp	r2, r3
	strlt	r2, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	ldr	r4, .L81+8
	tst	r0, #1
	ldr	r6, [r4, #12]
	beq	.L78
.L79:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r2, r0, #1
	mul	r2, r6, r2
	ldr	r3, [r4, #4]
	add	r2, r2, #3
	sub	r3, r3, r2
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L69
.L67:
	ldr	r4, .L81+8
	tst	r0, #1
	ldr	r6, [r4, #8]
	bne	.L80
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r3, r0, #1
	mul	r3, r6, r3
	ldr	r2, [r4]
	add	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r4]
	ldr	r6, [r4, #12]
.L78:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r3, r0, #1
	mul	r3, r6, r3
	ldr	r2, [r4, #4]
	add	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r4, #4]
	ldr	r2, [r4]
	b	.L69
.L68:
	tst	r0, #1
	ldr	r6, [r4, #8]
	beq	.L70
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r3, r0, #1
	mul	r3, r6, r3
	ldr	r2, [r4]
	add	r3, r3, #3
	sub	r2, r2, r3
	str	r2, [r4]
	ldr	r3, [r4, #4]
	b	.L69
.L80:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r3, r0, #1
	mul	r3, r6, r3
	ldr	r2, [r4]
	add	r3, r3, #3
	sub	r3, r2, r3
	str	r3, [r4]
	ldr	r6, [r4, #12]
	b	.L79
.L70:
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r2, r0, #1
	mul	r2, r6, r2
	ldr	r3, [r4]
	add	r2, r2, #3
	add	r2, r2, r3
	str	r2, [r4]
	ldr	r3, [r4, #4]
	b	.L69
.L82:
	.align	2
.L81:
	.word	rand
	.word	1431655766
	.word	flypat
	.size	updateFlypat, .-updateFlypat
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
	ldr	r3, .L87
	ldr	r3, [r3, #52]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	beq	.L84
	ldr	r4, .L87+4
	ldrh	r3, [r4]
	orr	r3, r3, #512
	strh	r3, [r4]	@ movhi
.L85:
	ldr	r3, .L87+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L87+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L87+4
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	ldr	r2, .L87+16
	ldrh	r1, [r2]
	ldr	r2, .L87+20
	ldr	lr, .L87+24
	ldr	ip, .L87+28
	ldr	r6, .L87+32
	ldrh	r2, [r2]
	ldr	r5, .L87+36
	strh	r1, [r3, #16]	@ movhi
	ldr	r0, [r6, #4]
	strh	r2, [r3, #18]	@ movhi
	ldr	r1, [r5, #4]
	ldr	r3, .L87+40
	ldr	r2, [lr, #4]
	ldr	r7, [ip, #4]
	and	r0, r0, r3
	and	r7, r7, r3
	and	r1, r1, r3
	and	r2, r2, r3
	ldrb	r3, [r5]	@ zero_extendqisi2
	strh	r3, [r4, #32]	@ movhi
	ldrb	r3, [lr]	@ zero_extendqisi2
	strh	r3, [r4, #40]	@ movhi
	ldrb	r3, [ip]	@ zero_extendqisi2
	strh	r3, [r4, #48]	@ movhi
	ldr	r3, .L87+44
	ldrb	r8, [r6]	@ zero_extendqisi2
	add	r6, r6, #32
	orr	r0, r0, r3
	orr	r1, r1, r3
	orr	r2, r2, r3
	orr	r3, r7, r3
	ldm	r6, {r6, r7}
	add	r5, r5, #32
	add	r6, r6, r7, lsl #5
	ldm	r5, {r5, r7}
	add	r5, r5, r7, lsl #5
	ldr	r7, [lr, #36]
	ldr	lr, [lr, #32]
	add	lr, lr, r7, lsl #5
	ldr	r7, [ip, #36]
	ldr	ip, [ip, #32]
	add	ip, ip, r7, lsl #5
	strh	r8, [r4, #16]	@ movhi
	strh	r0, [r4, #18]	@ movhi
	strh	r1, [r4, #34]	@ movhi
	strh	r2, [r4, #42]	@ movhi
	strh	r3, [r4, #50]	@ movhi
	strh	r6, [r4, #20]	@ movhi
	strh	r5, [r4, #36]	@ movhi
	strh	lr, [r4, #44]	@ movhi
	strh	ip, [r4, #52]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L84:
	bl	drawPlayer.part.0
	ldr	r4, .L87+4
	b	.L85
.L88:
	.align	2
.L87:
	.word	spongebob
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.word	fish
	.word	flypat
	.word	jellyf
	.word	jelly
	.word	511
	.word	-32768
	.size	drawGame, .-drawGame
	.align	2
	.global	drawGameThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGameThree, %function
drawGameThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L93
	ldr	r3, [r3, #52]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L90
	ldr	r2, .L93+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L91:
	ldr	r3, .L93+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L93+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L93+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L93+16
	ldrh	r1, [r1]
	pop	{r4, lr}
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L90:
	bl	drawPlayerThree.part.0
	b	.L91
.L94:
	.align	2
.L93:
	.word	spongebob
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.size	drawGameThree, .-drawGameThree
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
	ldr	r3, .L97
	ldr	r0, [r3]
	ldr	r3, .L97+4
	ldr	r1, [r3]
	ldr	r3, .L97+8
	add	r0, r0, #71
	add	r1, r1, #110
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #48]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	pop	{r4, r5, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	vOff
	.word	hOff
	.word	spongebob
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initPlayerThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerThree, %function
initPlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #0
	mov	r4, #20
	mov	lr, #1
	mov	r0, #3
	ldr	r2, .L101
	ldr	r3, .L101+4
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L101+8
	add	r1, r1, #70
	add	r2, r2, #110
	str	r4, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	str	ip, [r3, #32]
	str	ip, [r3, #36]
	str	r0, [r3, #44]
	str	r0, [r3, #48]
	pop	{r4, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	vOff
	.word	hOff
	.word	spongebob
	.size	initPlayerThree, .-initPlayerThree
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
	ldr	r4, .L116
	ldr	r3, .L116+4
	ldr	r5, [r4, #32]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	ldr	r6, [r4, #36]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	str	r6, [r4, #40]
	str	r1, [r4, #36]
	bne	.L104
	ldr	r0, [r4, #44]
	ldr	r3, .L116+8
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L104:
	ldr	r3, .L116+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L116+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L116+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L107
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	bne	.L109
.L110:
	mov	r3, #2
	str	r3, [r4, #36]
.L109:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L107:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L110
	ldr	r3, [r4, #36]
	cmp	r3, #4
	bne	.L109
	mov	r3, #0
	str	r6, [r4, #36]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r3, .L207
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, r7, lr}
	bne	.L119
	ldr	r3, .L207+4
	add	r2, r3, #8
	ldm	r2, {r2, ip, lr}
	cmp	r2, #0
	sub	r2, r2, lr
	lsl	r0, r2, #8
	add	r1, ip, r2, lsl #8
	ble	.L202
	ldr	r5, .L207+8
	lsl	r1, r1, #1
	ldrh	r4, [r5, r1]
	cmp	r4, #0
	beq	.L120
	ldr	r4, [r3, #24]
	add	r4, r0, r4
	add	r4, r4, ip
	lsl	r4, r4, #1
	ldrh	r4, [r5, r4]
	cmp	r4, #0
	beq	.L120
	ldr	r5, .L207+12
	ldr	r4, [r5]
	sub	r1, r2, lr
	cmp	r4, #0
	lsl	r0, r1, #8
	str	r2, [r3, #8]
	add	r1, ip, r1, lsl #8
	ble	.L202
	sub	r2, r2, r4
	cmp	r2, #79
	suble	r4, r4, #1
	strle	r4, [r5]
.L202:
	lsl	r1, r1, #1
.L120:
	ldr	r2, .L207+16
	ldrh	r1, [r2, r1]
	cmp	r1, #0
	beq	.L121
	ldr	r3, [r3, #24]
	add	r3, r0, r3
	add	r3, r3, ip
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0
	beq	.L121
	mov	r2, #1
	ldr	r3, .L207+20
	str	r2, [r3]
.L119:
	ldr	r3, .L207
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L122
	ldr	r3, .L207+4
	ldr	r0, [r3, #8]
	ldr	ip, [r3, #28]
	ldr	lr, [r3, #16]
	add	r2, r0, ip
	ldr	r1, [r3, #12]
	cmp	r2, #255
	add	r2, r2, lr
	lsl	r4, r2, #8
	add	r2, r1, r2, lsl #8
	ble	.L194
.L203:
	lsl	r2, r2, #1
.L123:
	ldr	r0, .L207+16
	ldrh	r2, [r0, r2]
	cmp	r2, #0
	beq	.L124
	ldr	r3, [r3, #24]
	add	r3, r1, r3
	add	r3, r3, r4
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L124
	mov	r2, #1
	ldr	r3, .L207+20
	str	r2, [r3]
.L122:
	ldr	r3, .L207
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L125
	ldr	r3, .L207+4
	ldr	r1, [r3, #12]
	ldr	r0, [r3, #20]
	ldr	lr, [r3, #8]
	cmp	r1, #0
	sub	r2, r1, r0
	add	r1, r2, lr, lsl #8
	lsl	r5, lr, #8
	ble	.L204
	ldr	r4, .L207+8
	lsl	r1, r1, #1
	ldrh	ip, [r4, r1]
	cmp	ip, #0
	beq	.L126
	ldr	ip, [r3, #28]
	add	ip, lr, ip
	add	ip, r2, ip, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r4, ip]
	cmp	ip, #0
	beq	.L126
	ldr	r4, .L207+24
	ldr	ip, [r4]
	sub	r0, r2, r0
	cmp	ip, #0
	str	r2, [r3, #12]
	add	r1, r5, r0
	ble	.L132
	sub	r2, r2, ip
	cmp	r2, #119
	bgt	.L132
	sub	ip, ip, #1
	mov	r2, r0
	str	ip, [r4]
	lsl	r1, r1, #1
	b	.L126
.L132:
	mov	r2, r0
.L204:
	lsl	r1, r1, #1
.L126:
	ldr	r0, .L207+16
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L127
	ldr	r3, [r3, #28]
	add	r3, lr, r3
	add	r2, r2, r3, lsl #8
	lsl	r2, r2, #1
	ldrh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L206
.L127:
	mov	r2, #0
	ldr	r3, .L207+20
	str	r2, [r3]
.L125:
	ldr	r3, .L207
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L128
	ldr	r3, .L207+4
	add	r4, r3, #20
	ldm	r4, {r4, lr}
	ldr	r0, [r3, #12]
	ldr	ip, [r3, #8]
	add	r2, r0, lr
	cmp	r2, #255
	add	r2, r2, r4
	add	r1, r2, ip, lsl #8
	lsl	r6, ip, #8
	ble	.L198
.L205:
	lsl	r1, r1, #1
.L129:
	ldr	r0, .L207+16
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L130
	ldr	r3, [r3, #28]
	add	r3, ip, r3
	add	r3, r2, r3, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L130
	mov	r2, #1
	ldr	r3, .L207+20
	str	r2, [r3]
.L128:
	pop	{r4, r5, r6, r7, lr}
	b	animatePlayer
.L194:
	ldr	r6, .L207+8
	lsl	r2, r2, #1
	ldrh	r5, [r6, r2]
	cmp	r5, #0
	beq	.L123
	ldr	r5, [r3, #24]
	add	r5, r1, r5
	add	r5, r5, r4
	lsl	r5, r5, #1
	ldrh	r5, [r6, r5]
	cmp	r5, #0
	beq	.L123
	ldr	r6, .L207+12
	add	r0, r0, lr
	ldr	r5, [r6]
	add	r2, ip, r0
	add	r2, r2, lr
	cmp	r5, #95
	lsl	r4, r2, #8
	str	r0, [r3, #8]
	add	r2, r1, r2, lsl #8
	bgt	.L203
	sub	r0, r0, r5
	cmp	r0, #80
	addgt	r5, r5, #1
	strgt	r5, [r6]
	b	.L203
.L198:
	ldr	r7, .L207+8
	lsl	r1, r1, #1
	ldrh	r5, [r7, r1]
	cmp	r5, #0
	beq	.L129
	ldr	r5, [r3, #28]
	add	r5, ip, r5
	add	r5, r2, r5, lsl #8
	lsl	r5, r5, #1
	ldrh	r5, [r7, r5]
	cmp	r5, #0
	beq	.L129
	ldr	r7, .L207+24
	add	r0, r0, r4
	ldr	r5, [r7]
	add	r2, lr, r0
	add	r2, r2, r4
	cmp	r5, #15
	str	r0, [r3, #12]
	add	r1, r6, r2
	bgt	.L205
	sub	r0, r0, r5
	cmp	r0, #120
	addgt	r5, r5, #1
	strgt	r5, [r7]
	b	.L205
.L124:
	mov	r2, #0
	ldr	r3, .L207+20
	str	r2, [r3]
	b	.L122
.L130:
	mov	r2, #0
	ldr	r3, .L207+20
	pop	{r4, r5, r6, r7, lr}
	str	r2, [r3]
	b	animatePlayer
.L121:
	mov	r2, #0
	ldr	r3, .L207+20
	str	r2, [r3]
	b	.L119
.L206:
	mov	r2, #1
	ldr	r3, .L207+20
	str	r2, [r3]
	b	.L125
.L208:
	.align	2
.L207:
	.word	67109120
	.word	spongebob
	.word	collisionmapBitmap
	.word	vOff
	.word	collisionmapTwoBitmap
	.word	life
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
	push	{r4, lr}
	bl	updatePlayer
	bl	updateJellyf
	bl	updateJelly
	bl	updateFish
	pop	{r4, lr}
	b	updateFlypat
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
	ldr	r3, .L309
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, r7, r8, lr}
	bne	.L212
	ldr	r3, .L309+4
	add	r0, r3, #12
	ldr	r2, [r3, #8]
	ldm	r0, {r0, ip}
	cmp	r2, #0
	sub	r2, r2, ip
	add	r4, r0, r2, lsl #8
	lsl	r1, r2, #8
	lslle	r4, r4, #1
	ble	.L213
	ldr	r5, .L309+8
	lsl	r4, r4, #1
	ldrh	lr, [r5, r4]
	cmp	lr, #0
	bne	.L305
.L213:
	ldr	lr, .L309+12
	ldr	r2, [lr]
	add	r2, r2, #1
	str	r2, [lr]
.L214:
	ldr	r2, .L309+16
	ldrh	ip, [r2, r4]
	cmp	ip, #0
	beq	.L215
	ldr	r3, [r3, #24]
	add	r3, r1, r3
	add	r3, r3, r0
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0
	beq	.L215
	mov	r2, #1
	ldr	r3, .L309+20
	str	r2, [r3]
.L212:
	ldr	r3, .L309
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L216
	ldr	r3, .L309+4
	ldr	r1, [r3, #8]
	ldr	ip, [r3, #28]
	ldr	r4, [r3, #16]
	add	r2, r1, ip
	ldr	r0, [r3, #12]
	cmp	r2, #255
	add	r2, r2, r4
	lsl	lr, r2, #8
	add	r2, r0, r2, lsl #8
	lslgt	r2, r2, #1
	ble	.L306
.L217:
	ldr	ip, .L309+12
	ldr	r1, [ip]
	add	r1, r1, #1
	str	r1, [ip]
.L218:
	ldr	r1, .L309+16
	ldrh	r2, [r1, r2]
	cmp	r2, #0
	beq	.L219
	ldr	r3, [r3, #24]
	add	r3, r0, r3
	add	r3, r3, lr
	lsl	r3, r3, #1
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	beq	.L219
	mov	r2, #1
	ldr	r3, .L309+20
	str	r2, [r3]
.L216:
	ldr	r3, .L309
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L220
	ldr	r3, .L309+4
	ldr	r1, [r3, #12]
	ldr	lr, [r3, #20]
	ldr	ip, [r3, #8]
	sub	r2, r1, lr
	cmp	r1, #0
	add	r0, r2, ip, lsl #8
	lsl	r5, ip, #8
	lslle	r0, r0, #1
	ble	.L221
	ldr	r4, .L309+8
	lsl	r0, r0, #1
	ldrh	r1, [r4, r0]
	cmp	r1, #0
	bne	.L307
.L221:
	ldr	lr, .L309+12
	ldr	r1, [lr]
	add	r1, r1, #1
	str	r1, [lr]
.L222:
	ldr	r1, .L309+16
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	beq	.L223
	ldr	r3, [r3, #28]
	add	r3, ip, r3
	add	r2, r2, r3, lsl #8
	lsl	r2, r2, #1
	ldrh	r3, [r1, r2]
	cmp	r3, #0
	beq	.L223
	mov	r2, #1
	ldr	r3, .L309+20
	str	r2, [r3]
.L220:
	ldr	r3, .L309
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L224
	ldr	r3, .L309+4
	ldr	r0, [r3, #12]
	ldr	r4, [r3, #24]
	ldr	r5, [r3, #20]
	ldr	lr, [r3, #8]
	add	r2, r0, r4
	add	r1, r2, r5
	cmp	r2, #255
	add	ip, r1, lr, lsl #8
	lsl	r6, lr, #8
	lslgt	ip, ip, #1
	ble	.L308
.L225:
	ldr	r0, .L309+12
	ldr	r2, [r0]
	add	r2, r2, #1
	str	r2, [r0]
.L226:
	ldr	r2, .L309+16
	ldrh	r0, [r2, ip]
	cmp	r0, #0
	beq	.L227
	ldr	r3, [r3, #28]
	add	r3, lr, r3
	add	r3, r1, r3, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0
	beq	.L227
	mov	r2, #1
	ldr	r3, .L309+20
	str	r2, [r3]
.L224:
	pop	{r4, r5, r6, r7, r8, lr}
	b	animatePlayer
.L306:
	ldr	r6, .L309+8
	lsl	r2, r2, #1
	ldrh	r5, [r6, r2]
	cmp	r5, #0
	beq	.L217
	ldr	r5, [r3, #24]
	add	r5, r0, r5
	add	r5, r5, lr
	lsl	r5, r5, #1
	ldrh	r5, [r6, r5]
	cmp	r5, #0
	beq	.L217
	ldr	r6, .L309+24
	add	r1, r1, r4
	ldr	r5, [r6]
	add	r2, ip, r1
	add	r2, r2, r4
	cmp	r5, #95
	lsl	lr, r2, #8
	str	r1, [r3, #8]
	add	r2, r0, r2, lsl #8
	bgt	.L302
	sub	r1, r1, r5
	cmp	r1, #80
	addgt	r5, r5, #1
	strgt	r5, [r6]
.L302:
	lsl	r2, r2, #1
	b	.L218
.L308:
	ldr	r7, .L309+8
	lsl	ip, ip, #1
	ldrh	r2, [r7, ip]
	cmp	r2, #0
	beq	.L225
	ldr	r2, [r3, #28]
	add	r2, lr, r2
	add	r2, r1, r2, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L225
	ldr	r8, .L309+28
	add	r0, r0, r5
	ldr	r7, [r8]
	add	r2, r4, r0
	add	r1, r2, r5
	cmp	r7, #15
	str	r0, [r3, #12]
	add	ip, r6, r1
	bgt	.L304
	sub	r0, r0, r7
	cmp	r0, #120
	addgt	r7, r7, #1
	strgt	r7, [r8]
.L304:
	lsl	ip, ip, #1
	b	.L226
.L215:
	mov	r2, #0
	ldr	r3, .L309+20
	str	r2, [r3]
	b	.L212
.L223:
	mov	r2, #0
	ldr	r3, .L309+20
	str	r2, [r3]
	b	.L220
.L227:
	mov	r2, #0
	ldr	r3, .L309+20
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	b	animatePlayer
.L219:
	mov	r2, #0
	ldr	r3, .L309+20
	str	r2, [r3]
	b	.L216
.L305:
	ldr	lr, [r3, #24]
	add	lr, r1, lr
	add	lr, lr, r0
	lsl	lr, lr, #1
	ldrh	lr, [r5, lr]
	cmp	lr, #0
	beq	.L213
	ldr	r5, .L309+24
	ldr	lr, [r5]
	sub	ip, r2, ip
	cmp	lr, #0
	str	r2, [r3, #8]
	lsl	r1, ip, #8
	add	r4, r0, ip, lsl #8
	ble	.L300
	sub	r2, r2, lr
	cmp	r2, #79
	suble	lr, lr, #1
	strle	lr, [r5]
.L300:
	lsl	r4, r4, #1
	b	.L214
.L307:
	ldr	r1, [r3, #28]
	add	r1, ip, r1
	add	r1, r2, r1, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r4, r1]
	cmp	r1, #0
	beq	.L221
	ldr	r4, .L309+28
	ldr	r1, [r4]
	sub	lr, r2, lr
	cmp	r1, #0
	str	r2, [r3, #12]
	add	r0, r5, lr
	ble	.L229
	sub	r2, r2, r1
	cmp	r2, #119
	bgt	.L229
	sub	r1, r1, #1
	mov	r2, lr
	str	r1, [r4]
	lsl	r0, r0, #1
	b	.L222
.L229:
	mov	r2, lr
	lsl	r0, r0, #1
	b	.L222
.L310:
	.align	2
.L309:
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
	ldr	r3, .L323
	ldrh	r3, [r3, #48]
	tst	r3, #32
	str	lr, [sp, #-4]!
	bne	.L313
	ldr	r2, .L323+4
	ldr	r0, .L323+8
	ldr	r1, [r2, #12]
	ldr	r3, [r0]
	ldr	ip, [r2, #20]
	sub	r3, r3, #1
	sub	r1, r1, ip
	str	r1, [r2, #12]
	str	r3, [r0]
.L313:
	ldr	r3, .L323
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L315
	ldr	r3, .L323+4
	ldr	r2, [r3, #12]
	ldr	r1, [r3, #20]
	ldr	r0, [r3, #24]
	add	r2, r2, r1
	ldr	lr, .L323+12
	add	r0, r2, r0
	cmp	r0, lr
	str	r2, [r3, #12]
	moveq	r2, #100
	ldr	ip, .L323+8
	ldr	r1, [ip]
	ldreq	r3, .L323+16
	add	r1, r1, #1
	str	r1, [ip]
	streq	r2, [r3]
.L315:
	ldr	r3, .L323
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L318
	ldr	r2, .L323+4
	ldr	ip, .L323+8
	add	r1, r2, #8
	ldm	r1, {r1, r3}
	ldr	r0, [ip]
	sub	r1, r1, #1
	add	r0, r0, #1
	add	r3, r3, #1
	cmp	r1, #25
	str	r0, [ip]
	str	r1, [r2, #8]
	str	r3, [r2, #12]
	ldr	r0, [r2, #24]
	beq	.L322
.L319:
	ldr	r2, .L323+12
	add	r3, r3, r0
	cmp	r3, r2
	moveq	r2, #100
	ldreq	r3, .L323+16
	streq	r2, [r3]
.L318:
	ldr	lr, [sp], #4
	b	animatePlayer
.L322:
	ldr	ip, .L323+20
	add	r1, r0, r0, lsr #31
	ldr	ip, [ip]
	asr	r1, r1, #1
	rsb	r1, r1, #80
	add	r1, r1, ip
	str	r1, [r2, #8]
	b	.L319
.L324:
	.align	2
.L323:
	.word	67109120
	.word	spongebob
	.word	hOff
	.word	550
	.word	jellyfish
	.word	vOff
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
	ldr	r3, .L330
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L327
	ldr	r2, .L330+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L327:
	b	drawPlayer.part.0
.L331:
	.align	2
.L330:
	.word	spongebob
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawPlayerThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerThree, %function
drawPlayerThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawPlayer
	.size	drawPlayerThree, .-drawPlayerThree
	.comm	spongebob,64,4
	.comm	shadowOAM,1024,4
	.comm	patrick,64,4
	.comm	flypat,44,4
	.comm	fish,44,4
	.comm	jelly,44,4
	.comm	jellyf,44,4
	.comm	life,4,4
	.comm	jellyfish,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
