#objdump: -dr --prefix-addresses --show-raw-insn
#name: R_MIPS_GOTPC support (NewABI, ALUIPC, N32)
#source: gotpc-aluipc-64.s
#as: -n32 -mips64r6

.*: +file format .*mips.*

Disassembly of section \.text\.startup:
#...
.*R_MIPS_GOTPC_AHI16	\.rodata\.str1\.8
#...
.*R_MIPS_GOTPC_ALO16	\.rodata\.str1\.8
#...
.*R_MIPS_GOTPC_CALL_AHI16	puts
#...
.*R_MIPS_GOTPC_CALL_ALO16	puts
#pass
