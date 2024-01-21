	.file	1 "nn.c"
	.section .mdebug.abi64
	.previous
	.abicalls
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.ascii	"XXXX\000"
	.section	.text.startup,"ax",@progbits
	.align	2
	.align	3
	.globl	main
	.set	nomips16
	.ent	main
	.type	main, @function
main:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(main)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(main)))

	aluipc	$4,%gotpc_ahi(.LC0)
	ld	$4,%gotpc_alo(.LC0)($4)

	aluipc	$25,%gotpc_call_ahi(puts)
	ld	$25,%gotpc_call_alo(puts)($25)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	move	$2,$0
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
