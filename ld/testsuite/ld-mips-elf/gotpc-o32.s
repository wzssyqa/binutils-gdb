	.text
	.globl	f1
	.set	nomips16
	.set	nomicromips
	.ent	f1
	.type	f1, @function
f1:
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$16,24($sp)
	li	$16,0

	bal	. + 8
	lui	$25,%gotpc_call_hi(c1)
	addu	$25,$25,$31
	lw	$25,%gotpc_call_lo(c1)($25)
	jalr	$25
	nop
	addu	$16,$16,$2
	aluipc	$25,%gotpc_call_ahi(c2)
	lw	$25,%gotpc_call_alo(c2)($25)
	jalr	$25
	nop
	addu	$16,$16,$2

	bal	. + 8
	lui	$2,%gotpc_hi(g1)
	addu	$2,$2,$31
	lw	$2,%gotpc_lo(g1)($2)
	addu	$2,$2,$16
	aluipc	$3,%gotpc_ahi(g2)
	lw	$3,%gotpc_alo(g2)($3)
	addu	$2,$2,$3

	lw	$16,24($sp)
	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	f1
	.size	f1, .-f1
