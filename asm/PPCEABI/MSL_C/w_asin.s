.include "macros.inc"

.section .text  # 0x80196694 - 0x801966B4

.global asin
asin:
/* 80196694 00193694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196698 00193698  7C 08 02 A6 */	mflr r0
/* 8019669C 0019369C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801966A0 001936A0  4B FF CC 05 */	bl __ieee754_asin
/* 801966A4 001936A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801966A8 001936A8  7C 08 03 A6 */	mtlr r0
/* 801966AC 001936AC  38 21 00 10 */	addi r1, r1, 0x10
/* 801966B0 001936B0  4E 80 00 20 */	blr 
