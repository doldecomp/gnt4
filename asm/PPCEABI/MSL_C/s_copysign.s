.include "macros.inc"

.section .text  # 0x80195F94 - 0x80195FBC

.global copysign
copysign:
/* 80195F94 00192F94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80195F98 00192F98  D8 21 00 08 */	stfd f1, 8(r1)
/* 80195F9C 00192F9C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 80195FA0 00192FA0  80 61 00 08 */	lwz r3, 8(r1)
/* 80195FA4 00192FA4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80195FA8 00192FA8  50 60 00 7E */	rlwimi r0, r3, 0, 1, 0x1f
/* 80195FAC 00192FAC  90 01 00 08 */	stw r0, 8(r1)
/* 80195FB0 00192FB0  C8 21 00 08 */	lfd f1, 8(r1)
/* 80195FB4 00192FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80195FB8 00192FB8  4E 80 00 20 */	blr 
