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
	mov	r3, #67108864
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	ldr	ip, .L4
	ldr	r0, .L4+4
	ldr	r1, .L4+8
	ldr	r2, .L4+12
	strh	ip, [r3]	@ movhi
	ldr	r3, .L4+16
	strh	r4, [r1]	@ movhi
	strh	r0, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #20
	mov	r9, #5
	mov	r2, #110
	ldr	r10, .L4+20
	mov	r1, #1
	strh	r4, [r10]	@ movhi
	ldr	r10, .L4+24
	strh	r4, [r10]	@ movhi
	ldr	r10, .L4+28
	mov	ip, #2
	strh	r4, [r10]	@ movhi
	ldr	r10, .L4+32
	strh	r4, [r10]	@ movhi
	ldr	r4, .L4+36
	str	r3, [r4]
	ldr	r4, .L4+40
	str	r3, [r4]
	ldr	r4, .L4+44
	mov	r8, #130
	str	r3, [r4]
	ldr	r4, .L4+48
	mov	r5, #70
	str	r3, [r4]
	ldr	r4, .L4+52
	str	r3, [r4]
	ldr	r4, .L4+56
	mov	r7, #200
	str	r3, [r4]
	ldr	r4, .L4+60
	mov	lr, #3
	str	r3, [r4]
	ldr	r4, .L4+64
	mov	r0, #10
	str	r3, [r4]
	ldr	r3, .L4+68
	mov	r6, #40
	str	r9, [r3]
	ldr	r3, .L4+72
	str	r2, [r3]
	ldr	r3, .L4+76
	str	r2, [r3]
	ldr	r3, .L4+80
	str	r2, [r3]
	ldr	r3, .L4+84
	str	r1, [r3]
	ldr	r3, .L4+88
	str	r1, [r3]
	ldr	r3, .L4+92
	str	ip, [r3]
	ldr	r3, .L4+96
	str	ip, [r3]
	ldr	r3, .L4+100
	str	ip, [r3]
	ldr	r3, .L4+104
	str	ip, [r3]
	ldr	r3, .L4+108
	str	r8, [r3]
	ldr	r3, .L4+112
	str	r5, [r3]
	ldr	r3, .L4+116
	str	r5, [r3]
	ldr	r3, .L4+120
	str	r7, [r3]
	ldr	r3, .L4+124
	ldr	ip, .L4+128
	str	lr, [r3]
	ldr	r3, .L4+132
	str	r0, [ip]
	str	lr, [r3]
	ldr	ip, .L4+136
	ldr	r3, .L4+140
	str	r6, [ip]
	str	r0, [r3]
	ldr	ip, .L4+144
	ldr	r3, .L4+148
	ldr	lr, .L4+152
	strh	ip, [r3]	@ movhi
	ldr	ip, .L4+156
	ldr	r3, .L4+160
	str	r2, [lr]
	str	r0, [ip]
	str	r0, [r3]
	ldr	lr, .L4+164
	ldr	ip, .L4+168
	ldr	r0, .L4+172
	ldr	r3, .L4+176
	str	r1, [lr]
	str	r1, [ip]
	str	r2, [r0]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	24174
	.word	cColor
	.word	bgColor
	.word	fillScreen
	.word	c1Color
	.word	mColor
	.word	tColor
	.word	t2Color
	.word	cHeight
	.word	cWidth
	.word	c1Height
	.word	c1Width
	.word	mHeight
	.word	mWidth
	.word	c3Height
	.word	c3Width
	.word	cRow
	.word	cCol
	.word	c1Col
	.word	c3Col
	.word	cRDel
	.word	cCDel
	.word	c1RDel
	.word	c1CDel
	.word	tRDel
	.word	tCDel
	.word	c1Row
	.word	mRow
	.word	c3Row
	.word	mCol
	.word	c3RDel
	.word	tHeight
	.word	c3CDel
	.word	tRow
	.word	tWidth
	.word	-21298
	.word	c3Color
	.word	tCol
	.word	t2Height
	.word	t2Width
	.word	t2RDel
	.word	t2CDel
	.word	t2Row
	.word	t2Col
	.size	initialize, .-initialize
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L32
	ldr	r3, [r9]
	ldr	r10, .L32+4
	cmp	r3, #0
	ldrle	r2, [r10]
	rsble	r2, r2, #0
	strle	r2, [r10]
	ldr	r2, .L32+8
	ldr	r2, [r2]
	add	r3, r3, r2
	cmp	r3, #240
	ldrgt	r3, [r10]
	ldr	r8, .L32+12
	rsbgt	r3, r3, #0
	strgt	r3, [r10]
	ldr	r3, [r8]
	cmp	r3, #0
	ldrle	r1, .L32+16
	ldrle	r2, [r1]
	ldrgt	r2, .L32+16
	sub	sp, sp, #28
	rsble	r2, r2, #0
	strle	r2, [r1]
	strgt	r2, [sp, #20]
	ldr	r2, .L32+20
	ldr	r2, [r2]
	add	r3, r3, r2
	strle	r1, [sp, #20]
	cmp	r3, #240
	ldrgt	r2, [sp, #20]
	ldr	r5, .L32+24
	ldrgt	r3, [r2]
	ldr	r0, [r5]
	ldr	r4, .L32+28
	rsbgt	r3, r3, #0
	strgt	r3, [r2]
	cmp	r0, #0
	ldrle	r3, [r4]
	rsble	r3, r3, #0
	strle	r3, [r4]
	ldr	r3, .L32+32
	ldr	r2, [r3]
	add	r3, r0, r2
	cmp	r3, #240
	ldrgt	r3, [r4]
	ldr	r7, .L32+36
	rsbgt	r3, r3, #0
	strgt	r3, [r4]
	ldr	r3, [r7]
	cmp	r3, #0
	ldrle	ip, .L32+40
	ldrle	r1, [ip]
	ldrgt	r1, .L32+40
	rsble	r1, r1, #0
	strgt	r1, [sp, #16]
	strle	r1, [ip]
	ldr	r1, .L32+44
	ldr	r1, [r1]
	add	r3, r3, r1
	strle	ip, [sp, #16]
	cmp	r3, #240
	ldrgt	r1, [sp, #16]
	ldrgt	r3, [r1]
	ldr	r6, .L32+48
	rsbgt	r3, r3, #0
	strgt	r3, [r1]
	ldr	r3, [r6]
	ldr	fp, .L32+52
	cmp	r3, #0
	ldrle	r1, [fp]
	rsble	r1, r1, #0
	strle	r1, [fp]
	ldr	r1, .L32+56
	ldr	r1, [r1]
	add	r3, r3, r1
	cmp	r3, #240
	ldrgt	r3, [fp]
	ldr	lr, .L32+60
	rsbgt	r3, r3, #0
	ldr	ip, .L32+64
	strgt	r3, [fp]
	ldr	r1, .L32+68
	ldr	r3, .L32+72
	ldr	ip, [ip]
	ldr	lr, [lr]
	ldr	r3, [r3]
	ldr	r1, [r1]
	stm	sp, {ip, lr}
	str	r3, [sp, #12]
	str	r1, [sp, #8]
	ldr	r3, .L32+76
	ldr	r1, .L32+80
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	ip, .L32+84
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L17
	ldr	r0, [r4]
.L18:
	ldr	r3, [sp, #20]
	ldr	r1, [r10]
	ldr	r2, [r3]
	ldr	lr, [r9]
	ldr	r3, [sp, #16]
	ldr	ip, [r8]
	ldr	r3, [r3]
	add	lr, lr, r1
	ldr	r1, [r7]
	add	ip, ip, r2
	add	r1, r1, r3
	ldr	r2, [r6]
	ldr	r3, [r5]
	ldr	r4, [fp]
	add	r3, r3, r0
	add	r2, r2, r4
	str	lr, [r9]
	str	ip, [r8]
	str	r1, [r7]
	str	r2, [r6]
	str	r3, [r5]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	ldr	r2, .L32+88
	ldrh	r1, [r2]
	ldr	r3, [r4]
	cmp	r1, #0
	rsb	r0, r3, #0
	mvneq	r3, #50688
	movne	r3, #0
	ldr	r1, .L32+92
	strh	r3, [r2]	@ movhi
	ldr	r2, .L32+96
	strh	r3, [r1]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r1, .L32+100
	ldr	r2, .L32+104
	str	r0, [r4]
	strh	r3, [r1]	@ movhi
	strh	r3, [r2]	@ movhi
	b	.L18
.L33:
	.align	2
.L32:
	.word	cCol
	.word	cCDel
	.word	cWidth
	.word	c1Col
	.word	c1CDel
	.word	c1Width
	.word	c3Col
	.word	c3CDel
	.word	c3Width
	.word	tCol
	.word	tCDel
	.word	tWidth
	.word	t2Col
	.word	t2CDel
	.word	t2Width
	.word	mRow
	.word	mCol
	.word	mWidth
	.word	mHeight
	.word	c3Height
	.word	c3Row
	.word	collision
	.word	mColor
	.word	c1Color
	.word	cColor
	.word	tColor
	.word	t2Color
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L36
	ldrh	r3, [r10]
	sub	sp, sp, #12
	str	r3, [sp]
	ldr	r9, .L36+4
	ldr	r8, .L36+8
	ldr	r1, .L36+12
	ldr	r0, .L36+16
	ldr	r5, .L36+20
	ldr	r3, [r9]
	ldr	r2, [r8]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r5
	ldrh	r3, [r10]
	ldr	r7, .L36+24
	str	r3, [sp]
	ldr	r6, .L36+28
	ldr	ip, .L36+32
	ldr	r4, .L36+36
	ldr	r3, [r7]
	ldr	r2, [r6]
	ldr	r1, [ip]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	ldr	r2, .L36+40
	ldrh	ip, [r2]
	ldr	r3, .L36+44
	str	ip, [sp]
	ldr	r2, .L36+48
	ldr	r1, .L36+52
	ldr	r0, .L36+56
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r5
	ldrh	r3, [r10]
	ldr	lr, .L36+60
	str	r3, [sp]
	ldr	fp, .L36+64
	ldr	r3, .L36+68
	ldr	r2, .L36+72
	ldr	r0, [lr]
	ldr	r1, [fp]
	ldr	r3, [r3]
	ldr	r2, [r2]
	mov	lr, pc
	bx	r5
	ldrh	r3, [r10]
	ldr	r1, .L36+76
	str	r3, [sp]
	ldr	r4, .L36+80
	ldr	r3, [r1]
	ldr	r0, .L36+84
	ldr	r1, .L36+88
	ldr	r2, [r4]
	ldr	r1, [r1]
	ldr	r4, .L36+92
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldrh	r3, [r10]
	ldr	r10, .L36+96
	str	r3, [sp]
	ldr	r3, [r10]
	ldr	r10, .L36+100
	ldr	ip, .L36+104
	ldr	r2, [r10]
	ldr	r10, .L36+108
	ldr	r1, [ip]
	ldr	r0, [r10]
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+112
	ldrh	r1, [r3]
	ldr	r2, [r8]
	ldr	r3, [r9]
	ldr	r8, .L36+116
	str	r1, [sp]
	ldr	r9, .L36+120
	ldr	r0, [r8]
	ldr	r1, [r9]
	mov	lr, pc
	bx	r5
	ldr	r3, .L36+124
	ldrh	r1, [r3]
	ldr	r2, [r6]
	ldr	r3, [r7]
	ldr	fp, .L36+128
	str	r1, [sp]
	ldr	r6, .L36+132
	ldr	r0, [fp]
	ldr	r1, [r6]
	mov	lr, pc
	bx	r5
	ldr	r3, .L36+136
	ldr	r2, .L36+72
	ldrh	r1, [r3]
	ldr	r3, .L36+68
	ldr	r10, .L36+140
	ldr	r9, .L36+144
	ldr	r3, [r3]
	ldr	r2, [r2]
	str	r1, [sp]
	ldr	r1, [r10]
	ldr	r0, [r9]
	mov	lr, pc
	bx	r5
	ldr	r3, .L36+148
	ldr	r2, .L36+80
	ldrh	r1, [r3]
	ldr	r3, .L36+76
	ldr	r8, .L36+152
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r7, .L36+156
	str	r1, [sp]
	ldr	r1, [r7]
	ldr	r0, [r8]
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+160
	ldr	r2, .L36+100
	ldrh	r1, [r3]
	ldr	r3, .L36+96
	ldr	r2, [r2]
	ldr	r3, [r3]
	ldr	r5, .L36+164
	str	r1, [sp]
	ldr	r6, .L36+168
	ldr	r1, [r5]
	ldr	r0, [r6]
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+120
	ldr	r4, [r8]
	ldr	lr, [r3]
	ldr	r8, .L36+12
	ldr	r3, .L36+116
	str	lr, [r8]
	ldr	ip, [r3]
	ldr	lr, .L36+16
	ldr	r3, .L36+132
	str	ip, [lr]
	ldr	r0, [r3]
	ldr	ip, .L36+32
	ldr	r1, [fp]
	str	r0, [ip]
	ldr	r0, .L36+36
	ldr	r2, [r10]
	str	r1, [r0]
	ldr	r3, [r9]
	ldr	r7, [r7]
	ldr	r6, [r6]
	ldr	r5, [r5]
	ldr	fp, .L36+64
	ldr	lr, .L36+60
	ldr	r0, .L36+84
	ldr	r1, .L36+88
	ldr	r10, .L36+108
	ldr	ip, .L36+104
	str	r2, [fp]
	str	r3, [lr]
	str	r4, [r0]
	str	r7, [r1]
	str	r6, [r10]
	str	r5, [ip]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	bgColor
	.word	cHeight
	.word	cWidth
	.word	cOldRow
	.word	cOldCol
	.word	drawSq
	.word	c1Height
	.word	c1Width
	.word	c1OldRow
	.word	c1OldCol
	.word	mColor
	.word	mHeight
	.word	mWidth
	.word	mRow
	.word	mCol
	.word	c3OldCol
	.word	c3OldRow
	.word	c3Height
	.word	c3Width
	.word	tHeight
	.word	tWidth
	.word	tOldCol
	.word	tOldRow
	.word	drawTri
	.word	t2Height
	.word	t2Width
	.word	t2OldRow
	.word	t2OldCol
	.word	cColor
	.word	cCol
	.word	cRow
	.word	c1Color
	.word	c1Col
	.word	c1Row
	.word	c3Color
	.word	c3Row
	.word	c3Col
	.word	tColor
	.word	tCol
	.word	tRow
	.word	t2Color
	.word	t2Row
	.word	t2Col
	.size	draw, .-draw
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L41
	mov	lr, pc
	bx	r3
	ldr	r6, .L41+4
	ldr	r5, .L41+8
	ldr	r4, .L41+12
.L39:
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	b	.L39
.L42:
	.align	2
.L41:
	.word	initialize
	.word	update
	.word	waitForVBlank
	.word	draw
	.size	main, .-main
	.comm	t2Color,2,2
	.comm	t2Width,4,4
	.comm	t2Height,4,4
	.comm	t2CDel,4,4
	.comm	t2RDel,4,4
	.comm	t2OldCol,4,4
	.comm	t2OldRow,4,4
	.comm	t2Row,4,4
	.comm	t2Col,4,4
	.comm	tColor,2,2
	.comm	tWidth,4,4
	.comm	tHeight,4,4
	.comm	tCDel,4,4
	.comm	tRDel,4,4
	.comm	tOldCol,4,4
	.comm	tOldRow,4,4
	.comm	tRow,4,4
	.comm	tCol,4,4
	.comm	c3Color,2,2
	.comm	c3CDel,4,4
	.comm	c3RDel,4,4
	.comm	c3OldCol,4,4
	.comm	c3OldRow,4,4
	.comm	c3Width,4,4
	.comm	c3Height,4,4
	.comm	c3Row,4,4
	.comm	c3Col,4,4
	.comm	mColor,2,2
	.comm	mWidth,4,4
	.comm	mHeight,4,4
	.comm	mRow,4,4
	.comm	mCol,4,4
	.comm	c1Color,2,2
	.comm	c1Width,4,4
	.comm	c1Height,4,4
	.comm	c1CDel,4,4
	.comm	c1RDel,4,4
	.comm	c1OldCol,4,4
	.comm	c1OldRow,4,4
	.comm	c1Row,4,4
	.comm	c1Col,4,4
	.comm	cColor,2,2
	.comm	cCDel,4,4
	.comm	cRDel,4,4
	.comm	cOldCol,4,4
	.comm	cOldRow,4,4
	.comm	cWidth,4,4
	.comm	cHeight,4,4
	.comm	cRow,4,4
	.comm	cCol,4,4
	.comm	bgColor,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
