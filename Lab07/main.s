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
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #256
	ldr	r4, .L6
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L6+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L6+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L6+12
	ldr	r1, .L6+16
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #56320
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L6+20
	ldr	r2, .L6+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L6+28
	ldr	r1, .L6+32
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L6+36
	mov	lr, pc
	bx	r3
	mov	r6, #3
	mov	ip, #0
	mov	r3, #4352
	mov	r8, #32
	mov	r7, #1
	mov	r10, #104
	mov	r9, #100
	mov	r1, ip
	mov	r4, r6
	mov	r2, #156
	mov	r0, #16
	mov	lr, #144
	strh	r3, [r5]	@ movhi
	ldr	r3, .L6+40
	stm	r3, {r9, r10}
	str	ip, [r3, #24]
	str	ip, [r3, #36]
	str	ip, [r3, #28]
	str	r8, [r3, #16]
	str	r8, [r3, #20]
	str	r7, [r3, #12]
	str	r7, [r3, #8]
	str	r6, [r3, #40]
	ldr	r3, .L6+44
.L2:
	str	r2, [r3, #4]
	sub	r2, r2, #32
	cmp	r2, #28
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r4, [r3, #40]
	str	r1, [r3, #28]
	add	r3, r3, #44
	bne	.L2
	mov	r1, #134
	mov	r2, #172
	ldr	r3, .L6+48
	ldr	r0, .L6+52
	ldrh	ip, [r3, #48]
	ldr	r3, .L6+56
	strh	ip, [r0]	@ movhi
	stm	r3, {r1, r2}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	DMANow
	.word	gameBgPal
	.word	gameBgTiles
	.word	100720640
	.word	gameBgMap
	.word	spritesheetPal
	.word	83886592
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	goomba
	.word	flower
	.word	67109120
	.word	buttons
	.word	.LANCHOR0
	.size	initialize, .-initialize
	.global	__aeabi_idivmod
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L28
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r7, .L28+4
	ldr	r5, .L28+8
	ldr	r6, .L28+12
	ldr	fp, .L28+16
	ldr	r10, .L28+20
	ldr	r9, .L28+24
	ldr	r8, .L28+28
.L19:
	mov	r1, #4
	ldr	r4, [r5, #24]
	add	r3, r4, r4, lsl r1
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	rsb	r3, r3, #142606336
	add	r3, r3, #557056
	ldr	r0, .L28+32
	add	r3, r3, #2176
	ldr	r2, [r5, #28]
	add	r3, r3, #8
	cmp	r3, r0
	str	r1, [r5, #28]
	str	r2, [r5, #32]
	bcs	.L9
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	str	r2, [sp]
	ldr	r3, .L28+36
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r2, [sp]
	str	r1, [r5, #36]
.L9:
	ldrh	r3, [r10, #48]
	tst	r3, #64
	moveq	r1, #1
	ldreq	r3, [r6, #4]
	subeq	r3, r3, #1
	streq	r3, [r6, #4]
	ldrh	r3, [r10, #48]
	streq	r1, [r5, #28]
	ands	r3, r3, #128
	ldreq	r1, [r6, #4]
	streq	r3, [r5, #28]
	ldrh	r3, [r10, #48]
	addeq	r1, r1, #1
	streq	r1, [r6, #4]
	tst	r3, #32
	bne	.L12
	mov	r3, #3
	ldr	r2, [r6]
	sub	r1, r2, #1
	str	r1, [r6]
	ldrh	r1, [r10, #48]
	tst	r1, #16
	str	r3, [r5, #28]
	bne	.L14
.L13:
	mov	r3, #2
	str	r2, [r6]
	str	r3, [r5, #28]
.L14:
	ldr	r2, [r5, #36]
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r2, r3, r2, lsl #5
.L16:
	ldr	r3, [r5, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r5]
	lsl	r2, r2, #2
	strh	r2, [r7, #4]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	strh	r1, [r7]	@ movhi
	ldr	r7, .L28+4
	ldr	r4, .L28+40
	str	r7, [sp, #4]
.L18:
	ldr	r3, [r4, #24]
	add	r1, r3, r3, lsl #2
	add	r1, r1, r1, lsl #4
	add	r1, r1, r1, lsl #8
	add	r1, r1, r1, lsl #16
	add	r1, r3, r1, lsl #1
	add	r1, r1, r9
	cmp	r8, r1, ror #2
	bcs	.L25
	ldr	r0, [r4, #36]
.L17:
	ldr	r1, [r4, #28]
	add	r3, r3, #1
	str	r3, [r4, #24]
	add	r0, r0, #6
	ldr	r3, [r4, #4]
	add	r0, r1, r0, lsl #5
	add	r4, r4, #44
	ldr	r1, [r4, #-44]
	lsl	r0, r0, #1
	orr	r3, r3, #16384
	cmp	fp, r4
	strh	r0, [r7, #12]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r1, [r7, #8]	@ movhi
	add	r7, r7, #8
	bne	.L18
	ldr	r3, .L28+44
	ldr	r7, [sp, #4]
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L28+4
	mov	r0, #3
	ldr	ip, .L28+48
	mov	lr, pc
	bx	ip
	mov	r3, #67108864
	ldrh	r1, [r6]
	ldrh	r2, [r6, #4]
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	b	.L19
.L25:
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	str	r3, [sp]
	add	r0, r0, #1
	ldr	r3, .L28+36
	mov	lr, pc
	bx	r3
	ldr	r3, [sp]
	mov	r0, r1
	str	r1, [r4, #36]
	b	.L17
.L12:
	ldrh	r3, [r10, #48]
	tst	r3, #16
	beq	.L27
	ldr	r3, [r5, #28]
	cmp	r3, #4
	bne	.L14
	mov	r3, #0
	str	r2, [r5, #28]
	str	r3, [r5, #36]
	b	.L16
.L27:
	ldr	r2, [r6]
	add	r2, r2, #1
	b	.L13
.L29:
	.align	2
.L28:
	.word	initialize
	.word	shadowOAM
	.word	goomba
	.word	.LANCHOR0
	.word	flower+176
	.word	67109120
	.word	715827880
	.word	357913940
	.word	286331153
	.word	__aeabi_idivmod
	.word	flower
	.word	waitForVBlank
	.word	DMANow
	.size	main, .-main
	.comm	flower,176,4
	.comm	goomba,44,4
	.comm	shadowOAM,1024,4
	.global	vOff
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
