.include "macros.inc"

.section .text  # 0x8016A3C4 - 0x8016A3DC

.global __OSModuleInit
__OSModuleInit:
/* 8016A3C4 001673C4  3C 80 80 00 */	lis r4, 0x800030CC@ha
/* 8016A3C8 001673C8  38 00 00 00 */	li r0, 0
/* 8016A3CC 001673CC  90 04 30 CC */	stw r0, 0x800030CC@l(r4)
/* 8016A3D0 001673D0  90 04 30 C8 */	stw r0, 0x30c8(r4)
/* 8016A3D4 001673D4  90 04 30 D0 */	stw r0, 0x30d0(r4)
/* 8016A3D8 001673D8  4E 80 00 20 */	blr 
