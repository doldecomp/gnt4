.include "macros.inc"

.section .text  # 0x801966D4 - 0x801966F4

.global exp
exp:
/* 801966D4 001936D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801966D8 001936D8  7C 08 02 A6 */	mflr r0
/* 801966DC 001936DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801966E0 001936E0  4B FF D0 B9 */	bl __ieee754_exp
/* 801966E4 001936E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801966E8 001936E8  7C 08 03 A6 */	mtlr r0
/* 801966EC 001936EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801966F0 001936F0  4E 80 00 20 */	blr 
