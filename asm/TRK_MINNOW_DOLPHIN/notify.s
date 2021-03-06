.include "macros.inc"

.section .text  # 0x8018B9C8 - 0x8018BAA0

.global TRKDoNotifyStopped
TRKDoNotifyStopped:
/* 8018B9C8 001889C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018B9CC 001889CC  7C 08 02 A6 */	mflr r0
/* 8018B9D0 001889D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018B9D4 001889D4  38 81 00 08 */	addi r4, r1, 8
/* 8018B9D8 001889D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018B9DC 001889DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018B9E0 001889E0  7C 7E 1B 78 */	mr r30, r3
/* 8018B9E4 001889E4  38 61 00 0C */	addi r3, r1, 0xc
/* 8018B9E8 001889E8  4B FF C8 79 */	bl TRKGetFreeBuffer
/* 8018B9EC 001889EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8018B9F0 001889F0  40 82 00 94 */	bne lbl_8018BA84
/* 8018B9F4 001889F4  80 A1 00 08 */	lwz r5, 8(r1)
/* 8018B9F8 001889F8  80 65 00 0C */	lwz r3, 0xc(r5)
/* 8018B9FC 001889FC  28 03 08 80 */	cmplwi r3, 0x880
/* 8018BA00 00188A00  41 80 00 0C */	blt lbl_8018BA0C
/* 8018BA04 00188A04  38 80 03 01 */	li r4, 0x301
/* 8018BA08 00188A08  48 00 00 24 */	b lbl_8018BA2C
lbl_8018BA0C:
/* 8018BA0C 00188A0C  38 03 00 01 */	addi r0, r3, 1
/* 8018BA10 00188A10  7C 65 1A 14 */	add r3, r5, r3
/* 8018BA14 00188A14  90 05 00 0C */	stw r0, 0xc(r5)
/* 8018BA18 00188A18  38 80 00 00 */	li r4, 0
/* 8018BA1C 00188A1C  9B C3 00 10 */	stb r30, 0x10(r3)
/* 8018BA20 00188A20  80 65 00 08 */	lwz r3, 8(r5)
/* 8018BA24 00188A24  38 03 00 01 */	addi r0, r3, 1
/* 8018BA28 00188A28  90 05 00 08 */	stw r0, 8(r5)
lbl_8018BA2C:
/* 8018BA2C 00188A2C  2C 04 00 00 */	cmpwi r4, 0
/* 8018BA30 00188A30  40 82 00 24 */	bne lbl_8018BA54
/* 8018BA34 00188A34  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018BA38 00188A38  28 00 00 90 */	cmplwi r0, 0x90
/* 8018BA3C 00188A3C  40 82 00 10 */	bne lbl_8018BA4C
/* 8018BA40 00188A40  80 61 00 08 */	lwz r3, 8(r1)
/* 8018BA44 00188A44  48 00 0B 31 */	bl TRKTargetAddStopInfo
/* 8018BA48 00188A48  48 00 00 0C */	b lbl_8018BA54
lbl_8018BA4C:
/* 8018BA4C 00188A4C  80 61 00 08 */	lwz r3, 8(r1)
/* 8018BA50 00188A50  48 00 0A 79 */	bl TRKTargetAddExceptionInfo
lbl_8018BA54:
/* 8018BA54 00188A54  80 61 00 08 */	lwz r3, 8(r1)
/* 8018BA58 00188A58  38 81 00 10 */	addi r4, r1, 0x10
/* 8018BA5C 00188A5C  38 A0 00 02 */	li r5, 2
/* 8018BA60 00188A60  38 C0 00 03 */	li r6, 3
/* 8018BA64 00188A64  38 E0 00 01 */	li r7, 1
/* 8018BA68 00188A68  4B FF FA E1 */	bl TRKRequestSend
/* 8018BA6C 00188A6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8018BA70 00188A70  40 82 00 0C */	bne lbl_8018BA7C
/* 8018BA74 00188A74  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8018BA78 00188A78  4B FF C7 59 */	bl TRKReleaseBuffer
lbl_8018BA7C:
/* 8018BA7C 00188A7C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8018BA80 00188A80  4B FF C7 51 */	bl TRKReleaseBuffer
lbl_8018BA84:
/* 8018BA84 00188A84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018BA88 00188A88  7F E3 FB 78 */	mr r3, r31
/* 8018BA8C 00188A8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018BA90 00188A90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018BA94 00188A94  7C 08 03 A6 */	mtlr r0
/* 8018BA98 00188A98  38 21 00 20 */	addi r1, r1, 0x20
/* 8018BA9C 00188A9C  4E 80 00 20 */	blr 
