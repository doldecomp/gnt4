.include "macros.inc"

.section .text  # 0x801D8DF0 - 0x801D8F38

.global func_801D8DF0
func_801D8DF0:
/* 801D8DF0 001D5DF0  80 AD 91 84 */	lwz r5, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D8DF4 001D5DF4  54 84 15 BA */	rlwinm r4, r4, 2, 0x16, 0x1d
/* 801D8DF8 001D5DF8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801D8DFC 001D5DFC  7C 65 20 2E */	lwzx r3, r5, r4
/* 801D8E00 001D5E00  48 00 00 14 */	b lbl_801D8E14
lbl_801D8E04:
/* 801D8E04 001D5E04  A0 83 00 00 */	lhz r4, 0(r3)
/* 801D8E08 001D5E08  7C 04 00 40 */	cmplw r4, r0
/* 801D8E0C 001D5E0C  4D 82 00 20 */	beqlr 
/* 801D8E10 001D5E10  80 63 00 08 */	lwz r3, 8(r3)
lbl_801D8E14:
/* 801D8E14 001D5E14  28 03 00 00 */	cmplwi r3, 0
/* 801D8E18 001D5E18  40 82 FF EC */	bne lbl_801D8E04
/* 801D8E1C 001D5E1C  4E 80 00 20 */	blr 

.global func_801D8E20
func_801D8E20:
/* 801D8E20 001D5E20  88 CD 91 60 */	lbz r6, lbl_80277A80-_SDA_BASE_(r13)
/* 801D8E24 001D5E24  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 801D8E28 001D5E28  80 AD 91 84 */	lwz r5, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D8E2C 001D5E2C  38 E0 00 00 */	li r7, 0
/* 801D8E30 001D5E30  38 06 00 01 */	addi r0, r6, 1
/* 801D8E34 001D5E34  7C 09 03 A6 */	mtctr r0
/* 801D8E38 001D5E38  2C 06 00 00 */	cmpwi r6, 0
/* 801D8E3C 001D5E3C  4D 80 00 20 */	bltlr 
lbl_801D8E40:
/* 801D8E40 001D5E40  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 801D8E44 001D5E44  7C 65 00 2E */	lwzx r3, r5, r0
/* 801D8E48 001D5E48  48 00 00 14 */	b lbl_801D8E5C
lbl_801D8E4C:
/* 801D8E4C 001D5E4C  A0 03 00 00 */	lhz r0, 0(r3)
/* 801D8E50 001D5E50  7C 00 20 40 */	cmplw r0, r4
/* 801D8E54 001D5E54  4D 82 00 20 */	beqlr 
/* 801D8E58 001D5E58  80 63 00 08 */	lwz r3, 8(r3)
lbl_801D8E5C:
/* 801D8E5C 001D5E5C  28 03 00 00 */	cmplwi r3, 0
/* 801D8E60 001D5E60  40 82 FF EC */	bne lbl_801D8E4C
/* 801D8E64 001D5E64  38 E7 00 01 */	addi r7, r7, 1
/* 801D8E68 001D5E68  42 00 FF D8 */	bdnz lbl_801D8E40
/* 801D8E6C 001D5E6C  4E 80 00 20 */	blr 

.global func_801D8E70
func_801D8E70:
/* 801D8E70 001D5E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D8E74 001D5E74  7C 08 02 A6 */	mflr r0
/* 801D8E78 001D5E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D8E7C 001D5E7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D8E80 001D5E80  7C BF 2B 78 */	mr r31, r5
/* 801D8E84 001D5E84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D8E88 001D5E88  7C 9E 23 78 */	mr r30, r4
/* 801D8E8C 001D5E8C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D8E90 001D5E90  7C 7D 1B 78 */	mr r29, r3
/* 801D8E94 001D5E94  88 03 00 06 */	lbz r0, 6(r3)
/* 801D8E98 001D5E98  28 00 00 FF */	cmplwi r0, 0xff
/* 801D8E9C 001D5E9C  41 82 00 1C */	beq lbl_801D8EB8
/* 801D8EA0 001D5EA0  3C 60 80 22 */	lis r3, lbl_8021BAE8@ha
/* 801D8EA4 001D5EA4  3C A0 80 22 */	lis r5, lbl_8021BAF8@ha
/* 801D8EA8 001D5EA8  38 63 BA E8 */	addi r3, r3, lbl_8021BAE8@l
/* 801D8EAC 001D5EAC  38 80 00 2A */	li r4, 0x2a
/* 801D8EB0 001D5EB0  38 A5 BA F8 */	addi r5, r5, lbl_8021BAF8@l
/* 801D8EB4 001D5EB4  4B FF CF 31 */	bl func_801D5DE4
lbl_801D8EB8:
/* 801D8EB8 001D5EB8  9B DD 00 06 */	stb r30, 6(r29)
/* 801D8EBC 001D5EBC  93 FD 00 28 */	stw r31, 0x28(r29)
/* 801D8EC0 001D5EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D8EC4 001D5EC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D8EC8 001D5EC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D8ECC 001D5ECC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D8ED0 001D5ED0  7C 08 03 A6 */	mtlr r0
/* 801D8ED4 001D5ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D8ED8 001D5ED8  4E 80 00 20 */	blr 

.global func_801D8EDC
func_801D8EDC:
/* 801D8EDC 001D5EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8EE0 001D5EE0  7C 08 02 A6 */	mflr r0
/* 801D8EE4 001D5EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8EE8 001D5EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D8EEC 001D5EEC  7C 7F 1B 78 */	mr r31, r3
/* 801D8EF0 001D5EF0  88 03 00 06 */	lbz r0, 6(r3)
/* 801D8EF4 001D5EF4  28 00 00 FF */	cmplwi r0, 0xff
/* 801D8EF8 001D5EF8  41 82 00 2C */	beq lbl_801D8F24
/* 801D8EFC 001D5EFC  80 8D 91 68 */	lwz r4, lbl_80277A88-_SDA_BASE_(r13)
/* 801D8F00 001D5F00  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801D8F04 001D5F04  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801D8F08 001D5F08  7D 84 00 2E */	lwzx r12, r4, r0
/* 801D8F0C 001D5F0C  7D 89 03 A6 */	mtctr r12
/* 801D8F10 001D5F10  4E 80 04 21 */	bctrl 
/* 801D8F14 001D5F14  38 60 00 FF */	li r3, 0xff
/* 801D8F18 001D5F18  38 00 00 00 */	li r0, 0
/* 801D8F1C 001D5F1C  98 7F 00 06 */	stb r3, 6(r31)
/* 801D8F20 001D5F20  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_801D8F24:
/* 801D8F24 001D5F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8F28 001D5F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D8F2C 001D5F2C  7C 08 03 A6 */	mtlr r0
/* 801D8F30 001D5F30  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8F34 001D5F34  4E 80 00 20 */	blr 
