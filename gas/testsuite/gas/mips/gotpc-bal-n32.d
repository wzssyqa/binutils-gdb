#objdump: -dr --prefix-addresses --show-raw-insn
#name: R_MIPS_GOTPC support (NewABI, BAL, N32)
#source: gotpc-bal-64.s
#as: -n32 -march=from-abi

.*: +file format .*mips.*

Disassembly of section \.text\.startup:
#...
.*R_MIPS_GOTPC_HI16	\.rodata\.str1\.8
#...
.*R_MIPS_GOTPC_LO16	\.rodata\.str1\.8
#...
.*R_MIPS_GOTPC_CALL_HI16	puts
#...
.*R_MIPS_GOTPC_CALL_LO16	puts
#pass
