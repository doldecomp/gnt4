.include "macros.inc"

.section .text  # 0x801966B4 - 0x801966D4

.global atan2
atan2:
/* 801966B4 001936B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801966B8 001936B8  7C 08 02 A6 */	mflr r0
/* 801966BC 001936BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801966C0 001936C0  4B FF CE 49 */	bl __ieee754_atan2
/* 801966C4 001936C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801966C8 001936C8  7C 08 03 A6 */	mtlr r0
/* 801966CC 001936CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801966D0 001936D0  4E 80 00 20 */	blr 
