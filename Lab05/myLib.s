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
	.global	setPixel3
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel3, %function
setPixel3:
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
	.size	setPixel3, .-setPixel3
	.align	2
	.global	setPixel4
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9
	rsb	r1, r1, r1, lsl #4
	ldr	ip, .L9+4
	add	r1, r0, r1, lsl #4
	str	lr, [sp, #-4]!
	add	r1, r1, r1, lsr #31
	ldr	lr, [r3]
	and	ip, ip, r1
	ldrsh	r3, [lr, ip]
	tst	r0, #1
	andne	r3, r3, #255
	biceq	r3, r3, #255
	orrne	r3, r3, r2, lsl #8
	orreq	r3, r3, r2
	strh	r3, [lr, ip]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.word	131070
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r3, #0
	bxle	lr
	push	{r4, r5, lr}
	mov	lr, #0
	ldr	r5, .L20
	add	ip, r1, ip
	ldr	r3, [r5]
	rsb	r1, r1, r1, lsl #4
	rsb	ip, ip, ip, lsl #4
	add	r4, r0, r1, lsl #4
	add	ip, r0, ip, lsl #4
	ldr	r1, [r5, #4]
	orr	r0, r2, #-2130706432
	add	r2, r3, ip, lsl #1
	add	r3, r3, r4, lsl #1
.L13:
	add	ip, sp, #12
	str	lr, [r1, #44]
	str	ip, [r1, #36]
	str	r3, [r1, #40]
	add	r3, r3, #480
	cmp	r3, r2
	str	r0, [r1, #44]
	bne	.L13
	pop	{r4, r5, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r2
	sub	sp, sp, #36
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	ldrb	ip, [sp, #72]	@ zero_extendqisi2
	cmp	r4, #3
	orr	r2, r2, ip, lsl #8
	mov	r6, r0
	strh	r2, [sp, #30]	@ movhi
	ble	.L23
	cmp	r3, #0
	ble	.L22
	add	r2, r0, #1
	add	r2, r2, r2, lsr #31
	add	ip, r0, r0, lsr #31
	add	r5, r3, r1
	bic	r3, r2, #1
	and	r7, r0, #1
	cmp	r0, #0
	str	r3, [sp, #12]
	add	r0, r4, r0
	bic	r3, ip, #1
	str	r3, [sp, #4]
	asr	r10, r4, #1
	sub	r3, r0, #1
	mov	fp, r7
	str	r6, [sp, #16]
	ldr	r8, .L57
	mov	r6, r1
	str	r3, [sp, #8]
	rsblt	fp, r7, #0
	orr	r10, r10, #-2130706432
	b	.L37
.L55:
	ands	r3, r4, #1
	beq	.L54
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	ldr	r0, [r8]
	rsb	r2, r6, r6, lsl #4
	ldr	ip, [r8, #4]
	add	r2, r3, r2, lsl #4
	add	r2, r0, r2
	add	r9, sp, #30
	str	r7, [ip, #44]
	str	r9, [ip, #36]
	str	r2, [ip, #40]
	str	r10, [ip, #44]
	mov	r1, r6
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	ldr	r0, [sp, #8]
	bl	setPixel4
	cmp	fp, #1
	ldr	r3, [sp, #20]
	lsl	r2, r6, #4
	beq	.L33
.L34:
	add	r6, r6, #1
	cmp	r6, r5
	beq	.L22
.L37:
	cmp	r7, #0
	beq	.L55
	cmp	fp, #1
	bne	.L34
	ands	r3, r4, #1
	bne	.L56
.L38:
	mov	ip, #0
	ldr	r1, [sp, #12]
	ldm	r8, {r0, r2}
	rsb	r3, r6, r6, lsl #4
	add	r3, r1, r3, lsl #4
	add	r3, r0, r3
	add	r9, sp, #30
	str	ip, [r2, #44]
	str	r9, [r2, #36]
	str	r3, [r2, #40]
	str	r10, [r2, #44]
	mov	r1, r6
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	ldr	r0, [sp, #8]
	bl	setPixel4
	mov	r1, r6
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	ldr	r0, [sp, #16]
	add	r6, r6, #1
	bl	setPixel4
	cmp	r6, r5
	bne	.L37
.L22:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	cmp	r3, #0
	ble	.L22
	mov	r8, r1
	add	r9, r4, r0
	add	r5, r3, r1
.L26:
	cmp	r4, #0
	movgt	r7, r6
	ble	.L29
.L27:
	mov	r0, r7
	mov	r1, r8
	ldrb	r2, [sp, #30]	@ zero_extendqisi2
	add	r7, r7, #1
	bl	setPixel4
	cmp	r9, r7
	bne	.L27
.L29:
	add	r8, r8, #1
	cmp	r5, r8
	bne	.L26
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L54:
	ldr	r1, [sp, #4]
	ldr	r2, [r8]
	rsb	r3, r6, r6, lsl #4
	ldr	r0, [r8, #4]
	add	r3, r1, r3, lsl #4
	add	r3, r2, r3
	add	r9, sp, #30
	cmp	fp, #1
	str	r7, [r0, #44]
	str	r9, [r0, #36]
	str	r3, [r0, #40]
	str	r10, [r0, #44]
	bne	.L34
	b	.L38
.L56:
	lsl	r2, r6, #4
	add	r9, sp, #30
.L33:
	mov	r0, #0
	str	r3, [sp, #20]
	ldr	r3, [sp, #12]
	ldr	ip, [r8]
	sub	r2, r2, r6
	ldr	lr, [r8, #4]
	add	r2, r3, r2, lsl #4
	add	r2, ip, r2
	str	r0, [lr, #44]
	str	r9, [lr, #36]
	str	r2, [lr, #40]
	str	r10, [lr, #44]
	mov	r1, r6
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	ldr	r0, [sp, #16]
	bl	setPixel4
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L34
	b	.L38
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen3
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen3, %function
fillScreen3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	strh	r0, [sp, #6]	@ movhi
	ldr	r2, .L61
	ldrh	lr, [sp, #6]
	ldm	r2, {r1, r3}
	ldr	r2, .L61+4
	add	r0, sp, #14
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
	.word	.LANCHOR0
	.word	-2130668032
	.size	fillScreen3, .-fillScreen3
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #0
	sub	sp, sp, #20
	strb	r0, [sp, #7]
	ldr	r1, .L65
	ldrb	ip, [sp, #7]	@ zero_extendqisi2
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	ldm	r1, {r0, r3}
	ldr	r1, .L65+4
	orr	r2, r2, ip, lsl #8
	add	ip, sp, #14
	strh	r2, [sp, #14]	@ movhi
	str	lr, [r3, #44]
	str	ip, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L66:
	.align	2
.L65:
	.word	.LANCHOR0
	.word	-2130687232
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	lr, r3, #0
	ble	.L67
	mov	r4, #0
	ldr	r6, .L73
	add	lr, r1, lr
	ldr	r3, [r6]
	rsb	r1, r1, r1, lsl #4
	rsb	lr, lr, lr, lsl #4
	add	r5, r0, r1, lsl #4
	add	lr, r0, lr, lsl #4
	ldr	ip, [sp, #16]
	ldr	r1, [r6, #4]
	add	r0, r3, lr, lsl #1
	orr	lr, r2, #-2147483648
	add	r3, r3, r5, lsl #1
	lsl	r2, r2, #1
.L69:
	str	r4, [r1, #44]
	str	ip, [r1, #36]
	str	r3, [r1, #40]
	add	r3, r3, #480
	cmp	r3, r0
	str	lr, [r1, #44]
	add	ip, ip, r2
	bne	.L69
.L67:
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	.align	2
.L73:
	.word	.LANCHOR0
	.size	drawImage3, .-drawImage3
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	bxle	lr
	push	{r4, r5, r6, r7, lr}
	mov	r4, #0
	ldr	r7, .L83
	add	r2, r2, r2, lsr #31
	add	r3, r1, r3
	asr	lr, r2, #1
	rsb	r5, r1, r1, lsl #4
	rsb	r3, r3, r3, lsl #4
	ldr	ip, [sp, #20]
	ldr	r6, [r7]
	ldr	r2, [r7, #4]
	add	r1, r0, r3, lsl #4
	add	r0, r0, r5, lsl #4
	orr	r5, lr, #-2147483648
	lsl	lr, lr, #1
.L77:
	add	r3, r0, r0, lsr #31
	bic	r3, r3, #1
	add	r0, r0, #240
	add	r3, r6, r3
	cmp	r0, r1
	str	r4, [r2, #44]
	str	ip, [r2, #36]
	str	r3, [r2, #40]
	add	ip, ip, lr
	str	r5, [r2, #44]
	bne	.L77
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage3, %function
drawFullscreenImage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L86
	ldr	r1, .L86+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L87:
	.align	2
.L86:
	.word	.LANCHOR0
	.word	-2147445248
	.size	drawFullscreenImage3, .-drawFullscreenImage3
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L89
	ldr	r1, .L89+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L90:
	.align	2
.L89:
	.word	.LANCHOR0
	.word	-2147464448
	.size	drawFullscreenImage4, .-drawFullscreenImage4
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
.L92:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L92
	mov	r2, #67108864
.L93:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L93
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	flipPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	ldrh	r3, [r1]
	tst	r3, #16
	ldr	r2, .L100
	moveq	r2, #100663296
	ldr	r0, .L100+4
	eor	r3, r3, #16
	str	r2, [r0]
	strh	r3, [r1]	@ movhi
	bx	lr
.L101:
	.align	2
.L100:
	.word	100704256
	.word	.LANCHOR0
	.size	flipPage, .-flipPage
	.align	2
	.global	DMANow
	.syntax unified
	.arm
	.fpu softvfp
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	ip, .L104
	ldr	lr, [ip, #4]
	add	r0, r0, r0, lsl #1
	add	ip, lr, r0, lsl #2
	orr	r3, r3, #-2147483648
	lsl	r0, r0, #2
	str	r4, [ip, #8]
	str	r1, [lr, r0]
	str	r2, [ip, #4]
	pop	{r4, lr}
	str	r3, [ip, #8]
	bx	lr
.L105:
	.align	2
.L104:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
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
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #8]
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	sub	ip, ip, #1
	cmp	ip, r1
	ble	.L110
	add	r1, r1, r3
	sub	r1, r1, #1
	cmp	r1, lr
	bgt	.L112
.L110:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L112:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	sub	r3, r3, #1
	cmp	r3, r0
	ble	.L110
	ldr	r3, [sp, #4]
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.global	dma
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.ident	"GCC: (devkitARM release 53) 9.1.0"
