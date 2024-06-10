	.file	1 "nn.c"
	.section .mdebug.abi32
	.previous
	.nan	2008
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r6
	.abicalls
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"XXXX\000"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.set	nomips16
	.ent	main
	.type	main, @function
main:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)

	bal	. + 8
	lui	$4,%gotpc_hi($LC0)
	addu	$4,$4,$31
	lw	$4,%gotpc_lo($LC0)($4)

	bal	. + 8
	lui	$25,%gotpc_call_hi(puts)
	addu	$25,$25,$31
	lw	$25,%gotpc_call_lo(puts)($25)

	.cprestore	16
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$31,28($sp)
	move	$2,$0
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
