.include "macros.inc"

.section .text  # 0x801966F4 - 0x80196714

.global fmod
fmod:
/* 801966F4 001936F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801966F8 001936F8  7C 08 02 A6 */	mflr r0
/* 801966FC 001936FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196700 00193700  4B FF D2 B5 */	bl __ieee754_fmod
/* 80196704 00193704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80196708 00193708  7C 08 03 A6 */	mtlr r0
/* 8019670C 0019370C  38 21 00 10 */	addi r1, r1, 0x10
/* 80196710 00193710  4E 80 00 20 */	blr 
