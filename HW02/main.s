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
	mov	r2, #67108864
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mvn	r3, #32768
	mov	lr, #992
	mov	r1, #31
	ldr	r0, .L4
	ldr	ip, .L4+4
	strh	r0, [r2]	@ movhi
	ldr	r2, .L4+8
	strh	r4, [ip]	@ movhi
	strh	r4, [r2]	@ movhi
	ldr	ip, .L4+12
	ldr	r2, .L4+16
	strh	r3, [ip]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	ip, .L4+20
	ldr	r2, .L4+24
	ldr	r0, .L4+28
	strh	r3, [ip]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	ip, .L4+32
	ldr	r2, .L4+36
	strh	r4, [r0]	@ movhi
	ldr	r3, .L4+40
	mov	r0, r4
	strh	lr, [ip]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r0, #20
	mov	r1, #2
	ldr	ip, .L4+44
	mov	r9, #240
	str	r4, [ip]
	ldr	ip, .L4+48
	str	r4, [ip]
	ldr	ip, .L4+52
	mov	fp, #158
	str	r4, [ip]
	ldr	r10, .L4+56
	ldr	ip, .L4+60
	mov	r8, #8
	str	r4, [ip]
	ldr	ip, [r10]
	ldr	r4, .L4+64
	add	ip, ip, #80
	str	ip, [r4]
	mov	r4, #60
	ldr	ip, .L4+68
	str	r0, [ip]
	ldr	ip, .L4+72
	str	r1, [ip]
	ldr	ip, .L4+76
	str	r1, [ip]
	ldr	ip, .L4+80
	str	r1, [ip]
	ldr	ip, .L4+84
	str	r9, [ip]
	ldr	ip, .L4+88
	str	r9, [ip]
	ldr	ip, .L4+92
	str	fp, [ip]
	ldr	ip, .L4+96
	mov	r7, #10
	str	r8, [ip]
	ldr	ip, .L4+100
	str	r8, [ip]
	ldr	ip, .L4+104
	str	r4, [ip]
	mov	r4, #25
	ldr	ip, .L4+108
	str	r7, [ip]
	ldr	ip, .L4+112
	str	r7, [ip]
	ldr	ip, .L4+116
	str	r4, [ip]
	mov	r4, #150
	ldr	ip, .L4+120
	str	r4, [ip]
	mov	r4, #160
	mov	r3, #1
	ldr	ip, .L4+124
	str	r4, [ip]
	mov	r4, #120
	ldr	ip, .L4+128
	str	r3, [ip]
	ldr	ip, .L4+132
	mov	r6, #5
	str	r3, [ip]
	ldr	ip, .L4+136
	str	r3, [ip]
	ldr	ip, .L4+140
	str	r4, [ip]
	mov	r4, #118
	mov	r5, #4
	mov	r2, #100
	mov	lr, #235
	ldr	ip, .L4+144
	str	r6, [ip]
	ldr	ip, .L4+148
	str	r6, [ip]
	ldr	ip, .L4+152
	str	r4, [ip]
	ldr	ip, .L4+156
	str	r5, [ip]
	ldr	ip, .L4+160
	str	r2, [ip]
	ldr	ip, .L4+164
	str	r2, [ip]
	ldr	ip, .L4+168
	str	r0, [r10]
	str	r1, [ip]
	ldr	ip, .L4+172
	ldr	r1, .L4+176
	str	r0, [ip]
	str	r3, [r1]
	ldr	ip, .L4+180
	ldr	r0, .L4+184
	ldr	r1, .L4+188
	ldr	r4, .L4+192
	str	r3, [ip]
	str	r5, [r0]
	str	r2, [r1]
	str	r2, [r4]
	ldr	ip, .L4+196
	ldr	r0, .L4+200
	ldr	r1, .L4+204
	ldr	r2, .L4+208
	str	r3, [ip]
	str	r3, [r0]
	str	lr, [r1]
	str	lr, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	buttons
	.word	oldButtons
	.word	lColor
	.word	l2Color
	.word	cColor
	.word	mColor
	.word	bgColor
	.word	tColor
	.word	t2Color
	.word	fillScreen
	.word	lCol
	.word	l2Row
	.word	l2Col
	.word	pHeight
	.word	mRow
	.word	cRow
	.word	t2Width
	.word	lHeight
	.word	l2Height
	.word	pCol
	.word	lWidth
	.word	l2Width
	.word	lRow
	.word	tHeight
	.word	t2Height
	.word	tWidth
	.word	tRow
	.word	t2Row
	.word	tCol
	.word	t2Col
	.word	mHeight
	.word	mWidth
	.word	cRDel
	.word	cCDel
	.word	mCol
	.word	cHeight
	.word	cWidth
	.word	cCol
	.word	pWidth
	.word	pRow
	.word	pOldRow
	.word	pOldCol
	.word	p2Height
	.word	pRDel
	.word	pCDel
	.word	p2Width
	.word	p2Row
	.word	p2OldRow
	.word	p2RDel
	.word	p2CDel
	.word	p2Col
	.word	p2OldCol
	.size	initialize, .-initialize
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L53
	ldr	r0, [r3]
	cmp	r0, #0
	movlt	r2, #0
	ldrlt	r1, .L53+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strlt	r0, [r1]
	movlt	r0, r2
	strlt	r2, [r3]
	ldr	r2, .L53+8
	ldr	r9, [r2]
	add	r2, r9, r0
	cmp	r2, #240
	ldrgt	r2, .L53+4
	strgt	r0, [r2]
	ldr	r2, .L53+12
	ldr	r1, [r2]
	rsbgt	r0, r9, #240
	strgt	r0, [r3]
	cmp	r1, #0
	movlt	r3, #0
	ldrlt	ip, .L53+16
	strlt	r1, [ip]
	movlt	r1, r3
	strlt	r3, [r2]
	ldr	r3, .L53+20
	ldr	ip, [r3]
	add	r3, ip, r1
	cmp	r3, #160
	ldr	r4, .L53+24
	ldrgt	r3, .L53+16
	strgt	r1, [r3]
	ldr	r3, [r4]
	rsbgt	r1, ip, #160
	strgt	r1, [r2]
	sub	sp, sp, #36
	cmp	r3, #0
	str	ip, [sp, #20]
	movlt	ip, #0
	ldrlt	lr, .L53+28
	strlt	r3, [lr]
	movlt	r3, ip
	strlt	ip, [r4]
	ldr	ip, .L53+32
	ldr	ip, [ip]
	add	lr, ip, r3
	cmp	lr, #240
	ldr	r6, .L53+36
	ldrgt	lr, .L53+28
	ldrgt	r4, .L53+24
	strgt	r3, [lr]
	ldr	r3, [r6]
	rsbgt	ip, ip, #240
	strgt	ip, [r4]
	cmp	r3, #0
	movlt	ip, #0
	ldrlt	lr, .L53+40
	strlt	r3, [lr]
	movlt	r3, ip
	strlt	ip, [r6]
	ldr	ip, .L53+44
	ldr	ip, [ip]
	add	lr, ip, r3
	cmp	lr, #160
	ldrgt	lr, .L53+40
	strgt	r3, [lr]
	ldr	r3, .L53+48
	ldrh	r3, [r3, #48]
	rsbgt	ip, ip, #160
	strgt	ip, [r6]
	tst	r3, #64
	ldr	r3, .L53+48
	ldrh	r3, [r3, #48]
	subeq	r1, r1, #2
	streq	r1, [r2]
	tst	r3, #128
	ldr	r3, .L53+48
	ldrh	r3, [r3, #48]
	addeq	r1, r1, #2
	streq	r1, [r2]
	tst	r3, #32
	ldreq	r3, [r6]
	subeq	r3, r3, #2
	streq	r3, [r6]
	ldr	r3, .L53+48
	ldrh	r3, [r3, #48]
	ldr	r4, .L53+52
	tst	r3, #16
	ldreq	r3, [r6]
	ldr	lr, [r4]
	addeq	r3, r3, #2
	ldr	r8, .L53+56
	ldr	r7, .L53+60
	streq	r3, [r6]
	cmp	lr, #0
	ldr	ip, [r8]
	ldr	r3, [r7]
	ble	.L45
	ldr	r2, .L53+64
	str	r2, [sp, #16]
.L19:
	ldr	r5, .L53+68
	ldr	r10, .L53+72
	ldr	r2, [r5]
	cmp	r2, #0
	str	r2, [sp, #24]
	ldr	r2, [r10]
	rsble	ip, ip, #0
	rsble	r3, r3, #0
	add	fp, lr, r2
	strle	ip, [r8]
	strle	r3, [r7]
	cmp	fp, #240
	str	r2, [sp, #28]
	ble	.L21
	ldr	r2, [sp, #16]
	ldr	fp, [r2, #4]
	rsb	ip, ip, #0
	rsb	r3, r3, #0
	add	fp, fp, #1
	str	ip, [r8]
	str	r3, [r7]
	str	fp, [r2, #4]
.L21:
	add	ip, lr, ip
	ldr	lr, [sp, #24]
	add	lr, lr, r3
	stm	sp, {ip, lr}
	ldr	r3, [sp, #28]
	ldr	fp, .L53+76
	str	r3, [sp, #8]
	mov	r2, r9
	ldr	r9, [fp]
	ldr	r3, [sp, #20]
	str	r9, [sp, #12]
	ldr	r9, .L53+80
	str	ip, [r4]
	str	lr, [r5]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r8]
	rsbne	r3, r3, #0
	ldr	lr, [fp]
	strne	r3, [r8]
	ldr	r2, .L53+32
	ldr	r3, .L53+44
	ldr	r0, .L53+24
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r0, [r0]
	ldr	ip, [r10]
	str	lr, [sp, #12]
	ldr	lr, [r5]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r1, [r6]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r8]
	rsbne	r3, r3, #0
	ldr	lr, [fp]
	strne	r3, [r8]
	ldr	r2, .L53+84
	ldr	r3, .L53+88
	ldr	r1, .L53+92
	ldr	r0, .L53+96
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	ip, [r10]
	str	lr, [sp, #12]
	ldr	lr, [r5]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r7]
	ldr	r2, [fp]
	ldr	r0, [r5]
	ldr	ip, [r4]
	ldr	r1, [r10]
	rsbne	r3, r3, #0
	str	r2, [sp, #12]
	str	r1, [sp, #8]
	str	r0, [sp, #4]
	str	ip, [sp]
	strne	r3, [r7]
	ldr	r2, .L53+100
	ldr	r3, .L53+104
	ldr	r1, .L53+108
	ldr	r0, .L53+112
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r7]
	rsbne	r3, r3, #0
	strne	r3, [r7]
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L47
.L26:
	cmp	r3, #2
	beq	.L48
.L27:
	cmp	r3, #3
	beq	.L49
.L28:
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	beq	.L50
.L29:
	cmp	r3, #2
	beq	.L51
.L30:
	cmp	r3, #3
	beq	.L52
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L45:
	ldr	r5, .L53+64
	ldr	r2, [r5]
	rsb	ip, ip, #0
	rsb	r3, r3, #0
	add	r2, r2, #1
	str	r5, [sp, #16]
	str	ip, [r8]
	str	r3, [r7]
	str	r2, [r5]
	b	.L19
.L52:
	ldr	r2, .L53+116
	ldrh	r0, [r2]
	ldr	r3, .L53+120
	str	r0, [sp]
	ldr	r2, .L53+124
	ldr	r1, .L53+128
	ldr	r0, [r2]
	ldr	r3, [r3]
	mov	r2, #60
	ldr	r1, [r1]
	ldr	r4, .L53+132
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #992
	ldr	r2, .L53+136
	str	r3, [r8]
	str	r3, [r7]
	strh	r1, [r2]	@ movhi
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L51:
	ldr	r2, .L53+116
	ldrh	r0, [r2]
	ldr	r3, .L53+120
	str	r0, [sp]
	ldr	r2, .L53+124
	ldr	r1, .L53+128
	ldr	r3, [r3]
	ldr	r0, [r2]
	ldr	r1, [r1]
	mov	r2, #40
	ldr	r4, .L53+132
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #4]
	b	.L30
.L50:
	ldr	r2, .L53+116
	ldrh	r0, [r2]
	ldr	r3, .L53+120
	str	r0, [sp]
	ldr	r2, .L53+124
	ldr	r1, .L53+128
	ldr	r3, [r3]
	ldr	r0, [r2]
	ldr	r1, [r1]
	mov	r2, #20
	ldr	r4, .L53+132
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #4]
	b	.L29
.L49:
	ldr	r2, .L53+140
	ldrh	r0, [r2]
	ldr	r3, .L53+144
	str	r0, [sp]
	ldr	r2, .L53+148
	ldr	r1, .L53+152
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r0, [r2]
	ldr	r4, .L53+132
	mov	r2, #60
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #31
	ldr	r2, .L53+136
	str	r3, [r8]
	str	r3, [r7]
	strh	r1, [r2]	@ movhi
	b	.L28
.L48:
	ldr	r2, .L53+140
	ldrh	r0, [r2]
	ldr	r3, .L53+144
	str	r0, [sp]
	ldr	r2, .L53+148
	ldr	r1, .L53+152
	ldr	r3, [r3]
	ldr	r0, [r2]
	ldr	r1, [r1]
	mov	r2, #40
	ldr	r4, .L53+132
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	b	.L27
.L47:
	ldr	r2, .L53+140
	ldrh	r0, [r2]
	ldr	r3, .L53+144
	str	r0, [sp]
	ldr	r2, .L53+148
	ldr	r1, .L53+152
	ldr	r3, [r3]
	ldr	r0, [r2]
	ldr	r1, [r1]
	mov	r2, #20
	ldr	r4, .L53+132
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	b	.L26
.L54:
	.align	2
.L53:
	.word	pCol
	.word	pOldCol
	.word	pWidth
	.word	pRow
	.word	pOldRow
	.word	pHeight
	.word	p2Col
	.word	p2OldCol
	.word	p2Width
	.word	p2Row
	.word	p2OldRow
	.word	p2Height
	.word	67109120
	.word	cCol
	.word	cCDel
	.word	cRDel
	.word	.LANCHOR0
	.word	cRow
	.word	cWidth
	.word	cHeight
	.word	collision
	.word	lWidth
	.word	lHeight
	.word	lRow
	.word	lCol
	.word	l2Width
	.word	l2Height
	.word	l2Row
	.word	l2Col
	.word	tColor
	.word	tHeight
	.word	tCol
	.word	tRow
	.word	drawRect
	.word	mColor
	.word	t2Color
	.word	t2Height
	.word	t2Col
	.word	t2Row
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
	ldr	r5, .L57
	ldrh	r3, [r5]
	sub	sp, sp, #12
	str	r3, [sp]
	ldr	r9, .L57+4
	ldr	r6, .L57+8
	ldr	r1, .L57+12
	ldr	r0, .L57+16
	ldr	r4, .L57+20
	ldr	r3, [r9]
	ldr	r2, [r6]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	ldr	lr, .L57+24
	str	r3, [sp]
	ldr	fp, .L57+28
	ldr	r10, .L57+32
	ldr	ip, .L57+36
	ldr	r0, [lr]
	ldr	r3, [fp]
	ldr	r2, [r10]
	ldr	r1, [ip]
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	ldr	ip, .L57+40
	str	r3, [sp]
	ldr	r8, .L57+44
	ldr	r7, .L57+48
	ldr	r5, .L57+52
	ldr	r0, [ip]
	ldr	r3, [r8]
	ldr	r2, [r7]
	ldr	r1, [r5]
	mov	lr, pc
	bx	r4
	ldr	r3, .L57+56
	ldrh	r1, [r3]
	ldr	r2, [r6]
	ldr	r3, [r9]
	ldr	r5, .L57+60
	str	r1, [sp]
	ldr	r6, .L57+64
	ldr	r0, [r5]
	ldr	r1, [r6]
	mov	lr, pc
	bx	r4
	ldr	r9, .L57+68
	ldr	r3, [fp]
	ldr	r2, [r10]
	ldr	fp, .L57+72
	ldr	r10, .L57+76
	ldr	r1, [fp]
	ldr	r0, [r10]
	str	r9, [sp]
	mov	lr, pc
	bx	r4
	ldr	r6, .L57+80
	str	r9, [sp]
	ldr	r10, .L57+84
	ldr	r3, [r8]
	ldr	r2, [r7]
	ldr	r1, [r6]
	ldr	r0, [r10]
	mov	lr, pc
	bx	r4
	ldr	r2, .L57+88
	ldrh	ip, [r2]
	ldr	r3, .L57+92
	str	ip, [sp]
	ldr	r2, .L57+96
	ldr	r1, .L57+100
	ldr	r0, .L57+104
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	r2, .L57+108
	ldrh	ip, [r2]
	ldr	r3, .L57+112
	str	ip, [sp]
	ldr	r2, .L57+116
	ldr	r1, .L57+120
	ldr	r0, .L57+124
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	r2, .L57+128
	ldrh	ip, [r2]
	ldr	r3, .L57+132
	str	ip, [sp]
	ldr	r2, .L57+136
	ldr	r1, .L57+140
	ldr	r0, .L57+144
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	lr, [fp]
	ldr	r3, .L57+76
	ldr	r4, .L57+36
	ldr	ip, [r3]
	str	lr, [r4]
	ldr	lr, .L57+24
	ldr	r0, [r6]
	ldr	r3, [r5]
	ldr	r1, [r10]
	ldr	r6, .L57+64
	str	ip, [lr]
	ldr	r5, .L57+52
	ldr	ip, .L57+40
	ldr	r2, [r6]
	str	r0, [r5]
	str	r1, [ip]
	ldr	r0, .L57+16
	ldr	r1, .L57+12
	str	r3, [r0]
	str	r2, [r1]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	bgColor
	.word	cHeight
	.word	cWidth
	.word	cOldRow
	.word	cOldCol
	.word	drawRect
	.word	pOldCol
	.word	pHeight
	.word	pWidth
	.word	pOldRow
	.word	p2OldCol
	.word	p2Height
	.word	p2Width
	.word	p2OldRow
	.word	cColor
	.word	cCol
	.word	cRow
	.word	32767
	.word	pRow
	.word	pCol
	.word	p2Row
	.word	p2Col
	.word	lColor
	.word	lHeight
	.word	lWidth
	.word	lRow
	.word	lCol
	.word	l2Color
	.word	l2Height
	.word	l2Width
	.word	l2Row
	.word	l2Col
	.word	mColor
	.word	mHeight
	.word	mWidth
	.word	mRow
	.word	mCol
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
	push	{r7, lr}
	ldr	r3, .L62
	mov	lr, pc
	bx	r3
	ldr	r9, .L62+4
	ldr	r4, .L62+8
	ldr	r8, .L62+12
	ldr	r7, .L62+16
	ldr	r6, .L62+20
	ldr	r5, .L62+24
.L60:
	ldrh	r3, [r4]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L60
.L63:
	.align	2
.L62:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.size	main, .-main
	.comm	t2Color,2,2
	.comm	t2OldRow,4,4
	.comm	t2OldCol,4,4
	.comm	t2Width,4,4
	.comm	t2Height,4,4
	.comm	t2Col,4,4
	.comm	t2Row,4,4
	.comm	tColor,2,2
	.comm	tOldRow,4,4
	.comm	tOldCol,4,4
	.comm	tWidth,4,4
	.comm	tHeight,4,4
	.comm	tCol,4,4
	.comm	tRow,4,4
	.comm	mColor,2,2
	.comm	mWidth,4,4
	.comm	mHeight,4,4
	.comm	mCol,4,4
	.comm	mRow,4,4
	.comm	p2Width,4,4
	.comm	p2Height,4,4
	.comm	p2CDel,4,4
	.comm	p2RDel,4,4
	.comm	p2OldCol,4,4
	.comm	p2OldRow,4,4
	.comm	p2Col,4,4
	.comm	p2Row,4,4
	.comm	pWidth,4,4
	.comm	pHeight,4,4
	.comm	pCDel,4,4
	.comm	pRDel,4,4
	.comm	pOldCol,4,4
	.comm	pOldRow,4,4
	.comm	pCol,4,4
	.comm	pRow,4,4
	.comm	cColor,2,2
	.comm	cCDel,4,4
	.comm	cRDel,4,4
	.comm	cOldCol,4,4
	.comm	cOldRow,4,4
	.comm	cWidth,4,4
	.comm	cHeight,4,4
	.comm	cRow,4,4
	.comm	cCol,4,4
	.comm	l2Color,2,2
	.comm	l2Width,4,4
	.comm	l2Height,4,4
	.comm	l2Col,4,4
	.comm	l2Row,4,4
	.comm	lColor,2,2
	.comm	lWidth,4,4
	.comm	lHeight,4,4
	.comm	lCol,4,4
	.comm	lRow,4,4
	.comm	bgColor,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.global	right
	.global	left
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	right, %object
	.size	right, 4
right:
	.space	4
	.type	left, %object
	.size	left, 4
left:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
