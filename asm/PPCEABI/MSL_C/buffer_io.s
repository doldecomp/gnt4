.include "macros.inc"

.section .text  # 0x8018FCF0 - 0x8018FDE8

.global func_8018FCF0
func_8018FCF0:
/* 8018FCF0 0018CCF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FCF4 0018CCF4  7C 08 02 A6 */	mflr r0
/* 8018FCF8 0018CCF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FCFC 0018CCFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018FD00 0018CD00  7C 7F 1B 78 */	mr r31, r3
/* 8018FD04 0018CD04  93 C1 00 08 */	stw r30, 8(r1)
/* 8018FD08 0018CD08  7C 9E 23 78 */	mr r30, r4
/* 8018FD0C 0018CD0C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8018FD10 0018CD10  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8018FD14 0018CD14  7C 03 00 51 */	subf. r0, r3, r0
/* 8018FD18 0018CD18  41 82 00 50 */	beq lbl_8018FD68
/* 8018FD1C 0018CD1C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8018FD20 0018CD20  38 BF 00 28 */	addi r5, r31, 0x28
/* 8018FD24 0018CD24  81 9F 00 40 */	lwz r12, 0x40(r31)
/* 8018FD28 0018CD28  80 7F 00 00 */	lwz r3, 0(r31)
/* 8018FD2C 0018CD2C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8018FD30 0018CD30  80 DF 00 48 */	lwz r6, 0x48(r31)
/* 8018FD34 0018CD34  7D 89 03 A6 */	mtctr r12
/* 8018FD38 0018CD38  4E 80 04 21 */	bctrl 
/* 8018FD3C 0018CD3C  28 1E 00 00 */	cmplwi r30, 0
/* 8018FD40 0018CD40  41 82 00 0C */	beq lbl_8018FD4C
/* 8018FD44 0018CD44  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8018FD48 0018CD48  90 1E 00 00 */	stw r0, 0(r30)
lbl_8018FD4C:
/* 8018FD4C 0018CD4C  2C 03 00 00 */	cmpwi r3, 0
/* 8018FD50 0018CD50  41 82 00 08 */	beq lbl_8018FD58
/* 8018FD54 0018CD54  48 00 00 48 */	b lbl_8018FD9C
lbl_8018FD58:
/* 8018FD58 0018CD58  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8018FD5C 0018CD5C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8018FD60 0018CD60  7C 03 02 14 */	add r0, r3, r0
/* 8018FD64 0018CD64  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8018FD68:
/* 8018FD68 0018CD68  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8018FD6C 0018CD6C  38 60 00 00 */	li r3, 0
/* 8018FD70 0018CD70  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8018FD74 0018CD74  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8018FD78 0018CD78  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8018FD7C 0018CD7C  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8018FD80 0018CD80  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8018FD84 0018CD84  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8018FD88 0018CD88  7C A4 20 38 */	and r4, r5, r4
/* 8018FD8C 0018CD8C  7C 04 00 50 */	subf r0, r4, r0
/* 8018FD90 0018CD90  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8018FD94 0018CD94  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8018FD98 0018CD98  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_8018FD9C:
/* 8018FD9C 0018CD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FDA0 0018CDA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018FDA4 0018CDA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018FDA8 0018CDA8  7C 08 03 A6 */	mtlr r0
/* 8018FDAC 0018CDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FDB0 0018CDB0  4E 80 00 20 */	blr 

.global func_8018FDB4
func_8018FDB4:
/* 8018FDB4 0018CDB4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8018FDB8 0018CDB8  90 03 00 24 */	stw r0, 0x24(r3)
/* 8018FDBC 0018CDBC  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8018FDC0 0018CDC0  90 03 00 28 */	stw r0, 0x28(r3)
/* 8018FDC4 0018CDC4  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8018FDC8 0018CDC8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8018FDCC 0018CDCC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8018FDD0 0018CDD0  7C A4 20 38 */	and r4, r5, r4
/* 8018FDD4 0018CDD4  7C 04 00 50 */	subf r0, r4, r0
/* 8018FDD8 0018CDD8  90 03 00 28 */	stw r0, 0x28(r3)
/* 8018FDDC 0018CDDC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8018FDE0 0018CDE0  90 03 00 34 */	stw r0, 0x34(r3)
/* 8018FDE4 0018CDE4  4E 80 00 20 */	blr 