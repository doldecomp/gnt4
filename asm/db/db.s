.include "macros.inc"

.section .text  # 0x8016D51C - 0x8016D608

.global DBInit
DBInit:
/* 8016D51C 0016A51C  3C 80 80 00 */	lis r4, 0x80000040@ha
/* 8016D520 0016A520  38 04 00 40 */	addi r0, r4, 0x80000040@l
/* 8016D524 0016A524  3C 60 80 17 */	lis r3, __DBExceptionDestination@ha
/* 8016D528 0016A528  90 0D 8B F0 */	stw r0, lbl_80277510@sda21(r13)
/* 8016D52C 0016A52C  38 63 D5 8C */	addi r3, r3, __DBExceptionDestination@l
/* 8016D530 0016A530  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8016D534 0016A534  90 04 00 48 */	stw r0, 0x48(r4)
/* 8016D538 0016A538  38 00 00 01 */	li r0, 1
/* 8016D53C 0016A53C  90 0D 8B F4 */	stw r0, lbl_80277514@sda21(r13)
/* 8016D540 0016A540  4E 80 00 20 */	blr 

.global __DBExceptionDestinationAux
__DBExceptionDestinationAux:
/* 8016D544 0016A544  7C 08 02 A6 */	mflr r0
/* 8016D548 0016A548  3C 60 80 21 */	lis r3, lbl_80216160@ha
/* 8016D54C 0016A54C  90 01 00 04 */	stw r0, 4(r1)
/* 8016D550 0016A550  38 63 61 60 */	addi r3, r3, lbl_80216160@l
/* 8016D554 0016A554  4C C6 31 82 */	crclr 6
/* 8016D558 0016A558  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8016D55C 0016A55C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8016D560 0016A560  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 8016D564 0016A564  3F E4 80 00 */	addis r31, r4, 0x8000
/* 8016D568 0016A568  4B FF A3 31 */	bl OSReport
/* 8016D56C 0016A56C  7F E3 FB 78 */	mr r3, r31
/* 8016D570 0016A570  4B FF 9E 89 */	bl OSDumpContext
/* 8016D574 0016A574  4B FF 78 B5 */	bl PPCHalt
/* 8016D578 0016A578  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8016D57C 0016A57C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8016D580 0016A580  38 21 00 18 */	addi r1, r1, 0x18
/* 8016D584 0016A584  7C 08 03 A6 */	mtlr r0
/* 8016D588 0016A588  4E 80 00 20 */	blr 

.global __DBExceptionDestination
__DBExceptionDestination:
/* 8016D58C 0016A58C  7C 60 00 A6 */	mfmsr r3
/* 8016D590 0016A590  60 63 00 30 */	ori r3, r3, 0x30
/* 8016D594 0016A594  7C 60 01 24 */	mtmsr r3
/* 8016D598 0016A598  4B FF FF AC */	b __DBExceptionDestinationAux

.global __DBIsExceptionMarked
__DBIsExceptionMarked:
/* 8016D59C 0016A59C  80 8D 8B F0 */	lwz r4, lbl_80277510@sda21(r13)
/* 8016D5A0 0016A5A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8016D5A4 0016A5A4  38 60 00 01 */	li r3, 1
/* 8016D5A8 0016A5A8  80 84 00 04 */	lwz r4, 4(r4)
/* 8016D5AC 0016A5AC  7C 60 00 30 */	slw r0, r3, r0
/* 8016D5B0 0016A5B0  7C 83 00 38 */	and r3, r4, r0
/* 8016D5B4 0016A5B4  4E 80 00 20 */	blr 

.global DBPrintf
DBPrintf:
/* 8016D5B8 0016A5B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8016D5BC 0016A5BC  40 86 00 24 */	bne cr1, lbl_8016D5E0
/* 8016D5C0 0016A5C0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8016D5C4 0016A5C4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8016D5C8 0016A5C8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8016D5CC 0016A5CC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8016D5D0 0016A5D0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8016D5D4 0016A5D4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8016D5D8 0016A5D8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8016D5DC 0016A5DC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8016D5E0:
/* 8016D5E0 0016A5E0  90 61 00 08 */	stw r3, 8(r1)
/* 8016D5E4 0016A5E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8016D5E8 0016A5E8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8016D5EC 0016A5EC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8016D5F0 0016A5F0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8016D5F4 0016A5F4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8016D5F8 0016A5F8  91 21 00 20 */	stw r9, 0x20(r1)
/* 8016D5FC 0016A5FC  91 41 00 24 */	stw r10, 0x24(r1)
/* 8016D600 0016A600  38 21 00 70 */	addi r1, r1, 0x70
/* 8016D604 0016A604  4E 80 00 20 */	blr 
