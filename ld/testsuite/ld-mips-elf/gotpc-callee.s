	.text
	.set	nomips16
	.set	nomicromips
	.globl	c1
	.ent	c1
	.type	c1, @function
c1:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1
	.set	reorder
	.set	macro
	.end	c1
	.size	c1, .-c1

	.globl	c2
	.ent	c2
	.type	c2, @function
c2:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,2
	.set	reorder
	.set	macro
	.end	c2
	.size	c2, .-c2

	.data
	.globl	g1
	.type	g1, @object
	.size	g1, 4
g1:
	.word	0x12345678

	.globl	g2
	.type	g2, @object
	.size	g2, 4
g2:
	.word	0x09abcdef
