.include "macros.inc"

.section .text  # 0x8018EFD0 - 0x8018F0D8

.global __flush_all
__flush_all:
/* 8018EFD0 0018BFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018EFD4 0018BFD4  7C 08 02 A6 */	mflr r0
/* 8018EFD8 0018BFD8  3C 60 80 21 */	lis r3, lbl_80217C10@ha
/* 8018EFDC 0018BFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018EFE0 0018BFE0  38 03 7C 10 */	addi r0, r3, lbl_80217C10@l
/* 8018EFE4 0018BFE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018EFE8 0018BFE8  3B E0 00 00 */	li r31, 0
/* 8018EFEC 0018BFEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8018EFF0 0018BFF0  7C 1E 03 78 */	mr r30, r0
/* 8018EFF4 0018BFF4  48 00 00 28 */	b lbl_8018F01C
lbl_8018EFF8:
/* 8018EFF8 0018BFF8  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8018EFFC 0018BFFC  54 00 D7 7F */	rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 8018F000 0018C000  41 82 00 18 */	beq lbl_8018F018
/* 8018F004 0018C004  7F C3 F3 78 */	mr r3, r30
/* 8018F008 0018C008  48 00 11 31 */	bl fflush
/* 8018F00C 0018C00C  2C 03 00 00 */	cmpwi r3, 0
/* 8018F010 0018C010  41 82 00 08 */	beq lbl_8018F018
/* 8018F014 0018C014  3B E0 FF FF */	li r31, -1
lbl_8018F018:
/* 8018F018 0018C018  83 DE 00 4C */	lwz r30, 0x4c(r30)
lbl_8018F01C:
/* 8018F01C 0018C01C  28 1E 00 00 */	cmplwi r30, 0
/* 8018F020 0018C020  40 82 FF D8 */	bne lbl_8018EFF8
/* 8018F024 0018C024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F028 0018C028  7F E3 FB 78 */	mr r3, r31
/* 8018F02C 0018C02C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F030 0018C030  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018F034 0018C034  7C 08 03 A6 */	mtlr r0
/* 8018F038 0018C038  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F03C 0018C03C  4E 80 00 20 */	blr 

.global __close_all
__close_all:
/* 8018F040 0018C040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F044 0018C044  7C 08 02 A6 */	mflr r0
/* 8018F048 0018C048  3C 60 80 21 */	lis r3, lbl_80217C10@ha
/* 8018F04C 0018C04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F050 0018C050  38 03 7C 10 */	addi r0, r3, lbl_80217C10@l
/* 8018F054 0018C054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F058 0018C058  7C 1F 03 78 */	mr r31, r0
/* 8018F05C 0018C05C  48 00 00 60 */	b lbl_8018F0BC
lbl_8018F060:
/* 8018F060 0018C060  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8018F064 0018C064  54 00 D7 7F */	rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 8018F068 0018C068  41 82 00 0C */	beq lbl_8018F074
/* 8018F06C 0018C06C  7F E3 FB 78 */	mr r3, r31
/* 8018F070 0018C070  48 00 12 01 */	bl fclose
lbl_8018F074:
/* 8018F074 0018C074  7F E3 FB 78 */	mr r3, r31
/* 8018F078 0018C078  83 FF 00 4C */	lwz r31, 0x4c(r31)
/* 8018F07C 0018C07C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8018F080 0018C080  28 00 00 00 */	cmplwi r0, 0
/* 8018F084 0018C084  41 82 00 0C */	beq lbl_8018F090
/* 8018F088 0018C088  4B FF F9 E1 */	bl free
/* 8018F08C 0018C08C  48 00 00 30 */	b lbl_8018F0BC
lbl_8018F090:
/* 8018F090 0018C090  A0 03 00 04 */	lhz r0, 4(r3)
/* 8018F094 0018C094  38 80 00 03 */	li r4, 3
/* 8018F098 0018C098  50 80 35 F2 */	rlwimi r0, r4, 6, 0x17, 0x19
/* 8018F09C 0018C09C  28 1F 00 00 */	cmplwi r31, 0
/* 8018F0A0 0018C0A0  B0 03 00 04 */	sth r0, 4(r3)
/* 8018F0A4 0018C0A4  41 82 00 18 */	beq lbl_8018F0BC
/* 8018F0A8 0018C0A8  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8018F0AC 0018C0AC  28 00 00 00 */	cmplwi r0, 0
/* 8018F0B0 0018C0B0  41 82 00 0C */	beq lbl_8018F0BC
/* 8018F0B4 0018C0B4  38 00 00 00 */	li r0, 0
/* 8018F0B8 0018C0B8  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_8018F0BC:
/* 8018F0BC 0018C0BC  28 1F 00 00 */	cmplwi r31, 0
/* 8018F0C0 0018C0C0  40 82 FF A0 */	bne lbl_8018F060
/* 8018F0C4 0018C0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F0C8 0018C0C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F0CC 0018C0CC  7C 08 03 A6 */	mtlr r0
/* 8018F0D0 0018C0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F0D4 0018C0D4  4E 80 00 20 */	blr 
