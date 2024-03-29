.include "macros.inc"

.section .text  # 0x80192E48 - 0x80192F0C

.global __write_console
__write_console:
/* 80192E48 0018FE48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192E4C 0018FE4C  7C 08 02 A6 */	mflr r0
/* 80192E50 0018FE50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80192E54 0018FE54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80192E58 0018FE58  7C DF 33 78 */	mr r31, r6
/* 80192E5C 0018FE5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80192E60 0018FE60  7C BE 2B 78 */	mr r30, r5
/* 80192E64 0018FE64  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80192E68 0018FE68  7C 9D 23 78 */	mr r29, r4
/* 80192E6C 0018FE6C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80192E70 0018FE70  7C 7C 1B 78 */	mr r28, r3
/* 80192E74 0018FE74  38 60 00 00 */	li r3, 0
/* 80192E78 0018FE78  80 0D 8E 98 */	lwz r0, lbl_802777B8-_SDA_BASE_(r13)
/* 80192E7C 0018FE7C  2C 00 00 00 */	cmpwi r0, 0
/* 80192E80 0018FE80  40 82 00 20 */	bne lbl_80192EA0
/* 80192E84 0018FE84  3C 60 00 01 */	lis r3, 0x0000E100@ha
/* 80192E88 0018FE88  38 63 E1 00 */	addi r3, r3, 0x0000E100@l
/* 80192E8C 0018FE8C  48 00 60 C1 */	bl InitializeUART
/* 80192E90 0018FE90  2C 03 00 00 */	cmpwi r3, 0
/* 80192E94 0018FE94  40 82 00 0C */	bne lbl_80192EA0
/* 80192E98 0018FE98  38 00 00 01 */	li r0, 1
/* 80192E9C 0018FE9C  90 0D 8E 98 */	stw r0, lbl_802777B8-_SDA_BASE_(r13)
lbl_80192EA0:
/* 80192EA0 0018FEA0  2C 03 00 00 */	cmpwi r3, 0
/* 80192EA4 0018FEA4  41 82 00 0C */	beq lbl_80192EB0
/* 80192EA8 0018FEA8  38 60 00 01 */	li r3, 1
/* 80192EAC 0018FEAC  48 00 00 40 */	b lbl_80192EEC
lbl_80192EB0:
/* 80192EB0 0018FEB0  80 9E 00 00 */	lwz r4, 0(r30)
/* 80192EB4 0018FEB4  7F A3 EB 78 */	mr r3, r29
/* 80192EB8 0018FEB8  48 00 61 05 */	bl WriteUARTN
/* 80192EBC 0018FEBC  2C 03 00 00 */	cmpwi r3, 0
/* 80192EC0 0018FEC0  41 82 00 14 */	beq lbl_80192ED4
/* 80192EC4 0018FEC4  38 00 00 00 */	li r0, 0
/* 80192EC8 0018FEC8  38 60 00 01 */	li r3, 1
/* 80192ECC 0018FECC  90 1E 00 00 */	stw r0, 0(r30)
/* 80192ED0 0018FED0  48 00 00 1C */	b lbl_80192EEC
lbl_80192ED4:
/* 80192ED4 0018FED4  7F 83 E3 78 */	mr r3, r28
/* 80192ED8 0018FED8  7F A4 EB 78 */	mr r4, r29
/* 80192EDC 0018FEDC  7F C5 F3 78 */	mr r5, r30
/* 80192EE0 0018FEE0  7F E6 FB 78 */	mr r6, r31
/* 80192EE4 0018FEE4  4B FF AF E9 */	bl __TRK_write_console
/* 80192EE8 0018FEE8  38 60 00 00 */	li r3, 0
lbl_80192EEC:
/* 80192EEC 0018FEEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80192EF0 0018FEF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80192EF4 0018FEF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80192EF8 0018FEF8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80192EFC 0018FEFC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80192F00 0018FF00  7C 08 03 A6 */	mtlr r0
/* 80192F04 0018FF04  38 21 00 20 */	addi r1, r1, 0x20
/* 80192F08 0018FF08  4E 80 00 20 */	blr 
