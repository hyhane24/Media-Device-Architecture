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
	.file	"lab01.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mvn	r0, #64512
	ldr	r1, .L18
	ldr	r3, .L18+4
	str	lr, [sp, #-4]!
	strh	r1, [r2]	@ movhi
	ldr	r2, [r3]
	add	r1, r2, #38400
	add	ip, r2, #38656
	add	r1, r1, #180
	add	ip, ip, #104
.L2:
	sub	r3, r1, #19200
.L3:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L3
	add	r1, r3, #2
	cmp	r1, ip
	bne	.L2
	mov	lr, #0
	add	lr, lr, #1
	add	ip, r2, #19200
	add	r1, r2, #19712
	cmp	lr, #30
	ldr	r0, .L18+8
	add	ip, ip, #62
	add	r1, r1, #30
	beq	.L17
.L9:
	mov	r3, ip
.L5:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L5
	add	lr, lr, #1
	add	r1, r1, #480
	cmp	lr, #30
	add	r1, r1, #2
	add	ip, ip, #2
	bne	.L9
.L17:
	mov	ip, #0
	add	ip, ip, #1
	add	r0, r2, #43008
	cmp	ip, #30
	add	r2, r2, #43520
	ldr	r1, .L18+8
	add	r0, r0, #254
	add	r2, r2, #222
	beq	.L8
.L10:
	mov	r3, r0
.L7:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L7
	add	ip, ip, #1
	add	r2, r2, #480
	cmp	ip, #30
	add	r2, r2, #2
	add	r0, r0, #2
	bne	.L10
.L8:
	b	.L8
.L19:
	.align	2
.L18:
	.word	1027
	.word	.LANCHOR0
	.word	32736
	.size	main, .-main
	.text
	.align	2
	.global	setPixel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L21
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L22:
	.align	2
.L21:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0
	bxle	lr
	mvn	r0, #64512
	ldr	r2, .L34
	rsb	r3, r1, r1, lsl #4
	ldr	r2, [r2]
	push	{r4, lr}
	add	r3, ip, r3, lsl #5
	sub	lr, r1, r1, lsl #4
	add	r2, r2, r3, lsl #1
	lsl	r4, ip, #1
	lsl	lr, lr, #5
.L25:
	cmp	r1, #0
	addgt	r3, r2, lr
	ble	.L28
.L26:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L26
.L28:
	add	ip, ip, #1
	cmp	ip, r4
	add	r2, r2, #2
	bne	.L25
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	drawTriangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTriangle, %function
drawTriangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0
	bxle	lr
	mov	r0, #0
	ldr	r3, .L47
	rsb	r1, r1, r1, lsl #4
	str	lr, [sp, #-4]!
	ldr	lr, [r3]
	add	r3, ip, r1, lsl #4
	add	r2, lr, r3, lsl #1
	add	r0, r0, #1
	add	r2, r2, #480
	cmp	ip, r0
	ldr	r1, .L47+4
	add	r2, r2, #2
	add	lr, lr, r3, lsl #1
	beq	.L46
.L40:
	add	r3, lr, r0, lsl #1
.L39:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L39
	add	r0, r0, #1
	add	r2, r2, #480
	cmp	ip, r0
	add	r2, r2, #2
	bne	.L40
.L46:
	ldr	lr, [sp], #4
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
	.word	32736
	.size	drawTriangle, .-drawTriangle
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
