.include "macros.inc"

.section .text  # 0x8016D488 - 0x8016D51C

.global func_8016D488
func_8016D488:
/* 8016D488 0016A488  7C 08 02 A6 */	mflr r0
/* 8016D48C 0016A48C  90 01 00 04 */	stw r0, 4(r1)
/* 8016D490 0016A490  94 21 FF F8 */	stwu r1, -8(r1)
/* 8016D494 0016A494  48 00 00 15 */	bl func_8016D4A8
/* 8016D498 0016A498  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016D49C 0016A49C  38 21 00 08 */	addi r1, r1, 8
/* 8016D4A0 0016A4A0  7C 08 03 A6 */	mtlr r0
/* 8016D4A4 0016A4A4  4E 80 00 20 */	blr 

.global func_8016D4A8
func_8016D4A8:
/* 8016D4A8 0016A4A8  7C 08 02 A6 */	mflr r0
/* 8016D4AC 0016A4AC  90 01 00 04 */	stw r0, 4(r1)
/* 8016D4B0 0016A4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016D4B4 0016A4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8016D4B8 0016A4B8  3C 60 80 20 */	lis r3, lbl_801FD800@ha
/* 8016D4BC 0016A4BC  38 03 D8 00 */	addi r0, r3, lbl_801FD800@l
/* 8016D4C0 0016A4C0  7C 1F 03 78 */	mr r31, r0
/* 8016D4C4 0016A4C4  48 00 00 04 */	b lbl_8016D4C8
lbl_8016D4C8:
/* 8016D4C8 0016A4C8  48 00 00 04 */	b lbl_8016D4CC
lbl_8016D4CC:
/* 8016D4CC 0016A4CC  48 00 00 10 */	b lbl_8016D4DC
lbl_8016D4D0:
/* 8016D4D0 0016A4D0  7D 88 03 A6 */	mtlr r12
/* 8016D4D4 0016A4D4  4E 80 00 21 */	blrl 
/* 8016D4D8 0016A4D8  3B FF 00 04 */	addi r31, r31, 4
lbl_8016D4DC:
/* 8016D4DC 0016A4DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8016D4E0 0016A4E0  28 0C 00 00 */	cmplwi r12, 0
/* 8016D4E4 0016A4E4  40 82 FF EC */	bne lbl_8016D4D0
/* 8016D4E8 0016A4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016D4EC 0016A4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016D4F0 0016A4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8016D4F4 0016A4F4  7C 08 03 A6 */	mtlr r0
/* 8016D4F8 0016A4F8  4E 80 00 20 */	blr 

.global func_8016D4FC
func_8016D4FC:
/* 8016D4FC 0016A4FC  7C 08 02 A6 */	mflr r0
/* 8016D500 0016A500  90 01 00 04 */	stw r0, 4(r1)
/* 8016D504 0016A504  94 21 FF F8 */	stwu r1, -8(r1)
/* 8016D508 0016A508  4B FF 79 21 */	bl func_80164E28
/* 8016D50C 0016A50C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016D510 0016A510  38 21 00 08 */	addi r1, r1, 8
/* 8016D514 0016A514  7C 08 03 A6 */	mtlr r0
/* 8016D518 0016A518  4E 80 00 20 */	blr 