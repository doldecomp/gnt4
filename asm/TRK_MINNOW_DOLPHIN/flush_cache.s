.include "macros.inc"

.section .text  # 0x8018BAA0 - 0x8018BAD8

.global TRK_flush_cache
TRK_flush_cache:
/* 8018BAA0 00188AA0  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 8018BAA4 00188AA4  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 8018BAA8 00188AA8  7C A5 18 38 */	and r5, r5, r3
/* 8018BAAC 00188AAC  7C 65 18 50 */	subf r3, r5, r3
/* 8018BAB0 00188AB0  7C 84 1A 14 */	add r4, r4, r3
lbl_8018BAB4:
/* 8018BAB4 00188AB4  7C 00 28 6C */	dcbst 0, r5
/* 8018BAB8 00188AB8  7C 00 28 AC */	dcbf 0, r5
/* 8018BABC 00188ABC  7C 00 04 AC */	sync 0
/* 8018BAC0 00188AC0  7C 00 2F AC */	icbi 0, r5
/* 8018BAC4 00188AC4  30 A5 00 08 */	addic r5, r5, 8
/* 8018BAC8 00188AC8  34 84 FF F8 */	addic. r4, r4, -8
/* 8018BACC 00188ACC  40 80 FF E8 */	bge lbl_8018BAB4
/* 8018BAD0 00188AD0  4C 00 01 2C */	isync 
/* 8018BAD4 00188AD4  4E 80 00 20 */	blr 
