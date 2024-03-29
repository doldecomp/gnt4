.include "macros.inc"

.section .text  # 0x80188768 - 0x801887F4

.global usr_put_initialize
usr_put_initialize:
/* 80188768 00185768  4E 80 00 20 */	blr 

.global usr_puts_serial
usr_puts_serial:
/* 8018876C 0018576C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80188770 00185770  7C 08 02 A6 */	mflr r0
/* 80188774 00185774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80188778 00185778  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018877C 0018577C  3B E0 00 00 */	li r31, 0
/* 80188780 00185780  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80188784 00185784  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80188788 00185788  7C 7D 1B 78 */	mr r29, r3
/* 8018878C 0018578C  38 60 00 00 */	li r3, 0
/* 80188790 00185790  48 00 00 30 */	b lbl_801887C0
lbl_80188794:
/* 80188794 00185794  48 00 29 4D */	bl GetTRKConnected
/* 80188798 00185798  9B C1 00 08 */	stb r30, 8(r1)
/* 8018879C 0018579C  7C 7E 1B 78 */	mr r30, r3
/* 801887A0 001857A0  38 60 00 00 */	li r3, 0
/* 801887A4 001857A4  9B E1 00 09 */	stb r31, 9(r1)
/* 801887A8 001857A8  48 00 29 2D */	bl SetTRKConnected
/* 801887AC 001857AC  38 61 00 08 */	addi r3, r1, 8
/* 801887B0 001857B0  4B FD F0 E9 */	bl OSReport
/* 801887B4 001857B4  7F C3 F3 78 */	mr r3, r30
/* 801887B8 001857B8  48 00 29 1D */	bl SetTRKConnected
/* 801887BC 001857BC  38 60 00 00 */	li r3, 0
lbl_801887C0:
/* 801887C0 001857C0  2C 03 00 00 */	cmpwi r3, 0
/* 801887C4 001857C4  40 82 00 14 */	bne lbl_801887D8
/* 801887C8 001857C8  88 1D 00 00 */	lbz r0, 0(r29)
/* 801887CC 001857CC  3B BD 00 01 */	addi r29, r29, 1
/* 801887D0 001857D0  7C 1E 07 75 */	extsb. r30, r0
/* 801887D4 001857D4  40 82 FF C0 */	bne lbl_80188794
lbl_801887D8:
/* 801887D8 001857D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801887DC 001857DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801887E0 001857E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801887E4 001857E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801887E8 001857E8  7C 08 03 A6 */	mtlr r0
/* 801887EC 001857EC  38 21 00 20 */	addi r1, r1, 0x20
/* 801887F0 001857F0  4E 80 00 20 */	blr 
