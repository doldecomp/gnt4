.include "macros.inc"

.section .text  # 0x80196714 - 0x80196734

.global log
log:
/* 80196714 00193714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196718 00193718  7C 08 02 A6 */	mflr r0
/* 8019671C 0019371C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196720 00193720  4B FF D5 D1 */	bl __ieee754_log
/* 80196724 00193724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80196728 00193728  7C 08 03 A6 */	mtlr r0
/* 8019672C 0019372C  38 21 00 10 */	addi r1, r1, 0x10
/* 80196730 00193730  4E 80 00 20 */	blr 
