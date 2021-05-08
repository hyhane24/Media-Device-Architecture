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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L5
	ldr	r3, .L13
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #4
	ldr	r1, [r3]
	add	r3, r0, r2
	mov	r0, #0
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L7:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L10
.L8:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L8
.L10:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L7
.L5:
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	drawCircle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCircle, %function
drawCircle:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	rsb	r6, r2, #0
	cmp	r2, r6
	ldrh	r5, [sp, #16]
	blt	.L15
	mov	r4, r6
	ldr	ip, .L22
	ldr	lr, [ip]
	mul	ip, r2, r2
	sub	r3, r1, r2
	rsb	r3, r3, r3, lsl #4
	add	r3, r0, r3, lsl #4
	add	lr, lr, r3, lsl #1
	add	r1, r2, #1
.L17:
	mov	r3, r6
	mul	r0, r4, r4
.L19:
	mla	r2, r3, r3, r0
	cmp	r2, ip
	lslle	r2, r3, #1
	add	r3, r3, #1
	strhle	r5, [r2, lr]	@ movhi
	cmp	r3, r1
	bne	.L19
	add	r4, r4, #1
	cmp	r4, r1
	add	lr, lr, #480
	bne	.L17
.L15:
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.size	drawCircle, .-drawCircle
	.align	2
	.global	drawTri
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTri, %function
drawTri:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	subs	lr, r2, #0
	ldrh	ip, [sp, #4]
	ble	.L24
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #4
	mov	r1, #0
	ldr	r3, .L31
	ldr	r3, [r3]
	add	r1, r1, #1
	add	r2, r3, r0, lsl #1
	add	r2, r2, #480
	cmp	lr, r1
	add	r2, r2, #2
	add	r0, r3, r0, lsl #1
	beq	.L24
.L28:
	add	r3, r0, r1, lsl #1
.L27:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L27
	add	r1, r1, #1
	add	r2, r2, #480
	cmp	lr, r1
	add	r2, r2, #2
	bne	.L28
.L24:
	ldr	lr, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	.LANCHOR0
	.size	drawTri, .-drawTri
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L37
	ldr	r3, [r3]
	add	r2, r3, #76800
.L34:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L34
	bx	lr
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L40:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L40
	mov	r2, #67108864
.L41:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L41
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [sp, #4]
	add	r3, r1, r3
	cmp	r3, ip
	blt	.L49
	ldr	r3, [sp, #12]
	add	ip, ip, r3
	cmp	ip, r1
	blt	.L49
	ldr	r3, [sp]
	add	r2, r0, r2
	cmp	r2, r3
	blt	.L49
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	cmp	r3, r0
	movlt	r0, #0
	movge	r0, #1
	bx	lr
.L49:
	mov	r0, #0
	bx	lr
	.size	collision, .-collision
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
