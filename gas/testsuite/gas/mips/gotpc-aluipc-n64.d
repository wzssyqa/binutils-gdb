#objdump: -dr --prefix-addresses --show-raw-insn
#name: R_MIPS_GOTPC support (NewABI, ALUIPC, N64)
#source: gotpc-aluipc-64.s
#as: -64 -mips64r6

.*: +file format .*mips.*

Disassembly of section \.text\.startup:
#...
.*R_MIPS_GOTPC_AHI16	\.LC0
.*R_MIPS_NONE.*
.*R_MIPS_NONE.*
#...
.*R_MIPS_GOTPC_ALO16	\.LC0
.*R_MIPS_NONE.*
.*R_MIPS_NONE.*
#...
.*R_MIPS_GOTPC_CALL_AHI16	puts
.*R_MIPS_NONE.*
.*R_MIPS_NONE.*
#...
.*R_MIPS_GOTPC_CALL_ALO16	puts
.*R_MIPS_NONE.*
.*R_MIPS_NONE.*
#pass
