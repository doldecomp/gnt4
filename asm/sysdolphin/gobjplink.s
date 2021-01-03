.include "macros.inc"

.section .text  # 0x801D7AB4 - 0x801D82F4

.global zz_801d7ab4_
zz_801d7ab4_:
/* 801D7AB4 001D4AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7AB8 001D4AB8  7C 08 02 A6 */	mflr r0
/* 801D7ABC 001D4ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7AC0 001D4AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 801D7AC4 001D4AC4  4B FB 67 B9 */	bl _savegpr_27
/* 801D7AC8 001D4AC8  7C BD 2B 78 */	mr r29, r5
/* 801D7ACC 001D4ACC  88 0D 91 60 */	lbz r0, lbl_80277A80-_SDA_BASE_(r13)
/* 801D7AD0 001D4AD0  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 801D7AD4 001D4AD4  7C 7B 1B 78 */	mr r27, r3
/* 801D7AD8 001D4AD8  7C 05 00 40 */	cmplw r5, r0
/* 801D7ADC 001D4ADC  7C 9C 23 78 */	mr r28, r4
/* 801D7AE0 001D4AE0  7C DE 33 78 */	mr r30, r6
/* 801D7AE4 001D4AE4  7C FF 3B 78 */	mr r31, r7
/* 801D7AE8 001D4AE8  40 81 00 1C */	ble lbl_801D7B04
/* 801D7AEC 001D4AEC  3C 60 80 22 */	lis r3, lbl_8021BA48@ha
/* 801D7AF0 001D4AF0  3C A0 80 22 */	lis r5, lbl_8021BA54@ha
/* 801D7AF4 001D4AF4  38 63 BA 48 */	addi r3, r3, lbl_8021BA48@l
/* 801D7AF8 001D4AF8  38 80 00 A8 */	li r4, 0xa8
/* 801D7AFC 001D4AFC  38 A5 BA 54 */	addi r5, r5, lbl_8021BA54@l
/* 801D7B00 001D4B00  4B FF E2 E5 */	bl __assert
lbl_801D7B04:
/* 801D7B04 001D4B04  3C 60 80 25 */	lis r3, lbl_8024DB50@ha
/* 801D7B08 001D4B08  38 63 DB 50 */	addi r3, r3, lbl_8024DB50@l
/* 801D7B0C 001D4B0C  4B FE FB 0D */	bl HSD_ObjAlloc
/* 801D7B10 001D4B10  28 03 00 00 */	cmplwi r3, 0
/* 801D7B14 001D4B14  40 82 00 0C */	bne lbl_801D7B20
/* 801D7B18 001D4B18  38 60 00 00 */	li r3, 0
/* 801D7B1C 001D4B1C  48 00 02 54 */	b lbl_801D7D70
lbl_801D7B20:
/* 801D7B20 001D4B20  B3 83 00 00 */	sth r28, 0(r3)
/* 801D7B24 001D4B24  38 80 00 FF */	li r4, 0xff
/* 801D7B28 001D4B28  38 00 00 00 */	li r0, 0
/* 801D7B2C 001D4B2C  2C 1B 00 02 */	cmpwi r27, 2
/* 801D7B30 001D4B30  9B A3 00 02 */	stb r29, 2(r3)
/* 801D7B34 001D4B34  98 83 00 03 */	stb r4, 3(r3)
/* 801D7B38 001D4B38  9B C3 00 04 */	stb r30, 4(r3)
/* 801D7B3C 001D4B3C  98 03 00 05 */	stb r0, 5(r3)
/* 801D7B40 001D4B40  98 83 00 06 */	stb r4, 6(r3)
/* 801D7B44 001D4B44  98 83 00 07 */	stb r4, 7(r3)
/* 801D7B48 001D4B48  90 03 00 14 */	stw r0, 0x14(r3)
/* 801D7B4C 001D4B4C  90 03 00 10 */	stw r0, 0x10(r3)
/* 801D7B50 001D4B50  90 03 00 18 */	stw r0, 0x18(r3)
/* 801D7B54 001D4B54  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801D7B58 001D4B58  90 03 00 24 */	stw r0, 0x24(r3)
/* 801D7B5C 001D4B5C  90 03 00 20 */	stw r0, 0x20(r3)
/* 801D7B60 001D4B60  90 03 00 28 */	stw r0, 0x28(r3)
/* 801D7B64 001D4B64  90 03 00 2C */	stw r0, 0x2c(r3)
/* 801D7B68 001D4B68  90 03 00 30 */	stw r0, 0x30(r3)
/* 801D7B6C 001D4B6C  41 82 01 4C */	beq lbl_801D7CB8
/* 801D7B70 001D4B70  40 80 00 14 */	bge lbl_801D7B84
/* 801D7B74 001D4B74  2C 1B 00 00 */	cmpwi r27, 0
/* 801D7B78 001D4B78  41 82 00 18 */	beq lbl_801D7B90
/* 801D7B7C 001D4B7C  40 80 00 9C */	bge lbl_801D7C18
/* 801D7B80 001D4B80  48 00 01 F0 */	b lbl_801D7D70
lbl_801D7B84:
/* 801D7B84 001D4B84  2C 1B 00 04 */	cmpwi r27, 4
/* 801D7B88 001D4B88  40 80 01 E8 */	bge lbl_801D7D70
/* 801D7B8C 001D4B8C  48 00 01 88 */	b lbl_801D7D14
lbl_801D7B90:
/* 801D7B90 001D4B90  88 C3 00 02 */	lbz r6, 2(r3)
/* 801D7B94 001D4B94  80 8D 91 80 */	lwz r4, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D7B98 001D4B98  54 C0 15 BA */	rlwinm r0, r6, 2, 0x16, 0x1d
/* 801D7B9C 001D4B9C  7C A4 00 2E */	lwzx r5, r4, r0
/* 801D7BA0 001D4BA0  48 00 00 08 */	b lbl_801D7BA8
lbl_801D7BA4:
/* 801D7BA4 001D4BA4  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_801D7BA8:
/* 801D7BA8 001D4BA8  28 05 00 00 */	cmplwi r5, 0
/* 801D7BAC 001D4BAC  41 82 00 14 */	beq lbl_801D7BC0
/* 801D7BB0 001D4BB0  88 85 00 04 */	lbz r4, 4(r5)
/* 801D7BB4 001D4BB4  88 03 00 04 */	lbz r0, 4(r3)
/* 801D7BB8 001D4BB8  7C 04 00 40 */	cmplw r4, r0
/* 801D7BBC 001D4BBC  41 81 FF E8 */	bgt lbl_801D7BA4
lbl_801D7BC0:
/* 801D7BC0 001D4BC0  28 05 00 00 */	cmplwi r5, 0
/* 801D7BC4 001D4BC4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 801D7BC8 001D4BC8  41 82 00 14 */	beq lbl_801D7BDC
/* 801D7BCC 001D4BCC  80 05 00 08 */	lwz r0, 8(r5)
/* 801D7BD0 001D4BD0  90 03 00 08 */	stw r0, 8(r3)
/* 801D7BD4 001D4BD4  90 65 00 08 */	stw r3, 8(r5)
/* 801D7BD8 001D4BD8  48 00 00 1C */	b lbl_801D7BF4
lbl_801D7BDC:
/* 801D7BDC 001D4BDC  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7BE0 001D4BE0  54 C5 10 3A */	slwi r5, r6, 2
/* 801D7BE4 001D4BE4  7C 04 28 2E */	lwzx r0, r4, r5
/* 801D7BE8 001D4BE8  90 03 00 08 */	stw r0, 8(r3)
/* 801D7BEC 001D4BEC  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7BF0 001D4BF0  7C 64 29 2E */	stwx r3, r4, r5
lbl_801D7BF4:
/* 801D7BF4 001D4BF4  80 83 00 08 */	lwz r4, 8(r3)
/* 801D7BF8 001D4BF8  28 04 00 00 */	cmplwi r4, 0
/* 801D7BFC 001D4BFC  41 82 00 0C */	beq lbl_801D7C08
/* 801D7C00 001D4C00  90 64 00 0C */	stw r3, 0xc(r4)
/* 801D7C04 001D4C04  48 00 01 6C */	b lbl_801D7D70
lbl_801D7C08:
/* 801D7C08 001D4C08  80 8D 91 80 */	lwz r4, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D7C0C 001D4C0C  54 C0 10 3A */	slwi r0, r6, 2
/* 801D7C10 001D4C10  7C 64 01 2E */	stwx r3, r4, r0
/* 801D7C14 001D4C14  48 00 01 5C */	b lbl_801D7D70
lbl_801D7C18:
/* 801D7C18 001D4C18  88 E3 00 02 */	lbz r7, 2(r3)
/* 801D7C1C 001D4C1C  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7C20 001D4C20  54 E6 15 BA */	rlwinm r6, r7, 2, 0x16, 0x1d
/* 801D7C24 001D4C24  7C A4 30 2E */	lwzx r5, r4, r6
/* 801D7C28 001D4C28  48 00 00 08 */	b lbl_801D7C30
lbl_801D7C2C:
/* 801D7C2C 001D4C2C  80 A5 00 08 */	lwz r5, 8(r5)
lbl_801D7C30:
/* 801D7C30 001D4C30  28 05 00 00 */	cmplwi r5, 0
/* 801D7C34 001D4C34  41 82 00 14 */	beq lbl_801D7C48
/* 801D7C38 001D4C38  88 85 00 04 */	lbz r4, 4(r5)
/* 801D7C3C 001D4C3C  88 03 00 04 */	lbz r0, 4(r3)
/* 801D7C40 001D4C40  7C 04 00 40 */	cmplw r4, r0
/* 801D7C44 001D4C44  41 80 FF E8 */	blt lbl_801D7C2C
lbl_801D7C48:
/* 801D7C48 001D4C48  28 05 00 00 */	cmplwi r5, 0
/* 801D7C4C 001D4C4C  41 82 00 0C */	beq lbl_801D7C58
/* 801D7C50 001D4C50  80 85 00 0C */	lwz r4, 0xc(r5)
/* 801D7C54 001D4C54  48 00 00 0C */	b lbl_801D7C60
lbl_801D7C58:
/* 801D7C58 001D4C58  80 8D 91 80 */	lwz r4, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D7C5C 001D4C5C  7C 84 30 2E */	lwzx r4, r4, r6
lbl_801D7C60:
/* 801D7C60 001D4C60  28 04 00 00 */	cmplwi r4, 0
/* 801D7C64 001D4C64  90 83 00 0C */	stw r4, 0xc(r3)
/* 801D7C68 001D4C68  41 82 00 14 */	beq lbl_801D7C7C
/* 801D7C6C 001D4C6C  80 04 00 08 */	lwz r0, 8(r4)
/* 801D7C70 001D4C70  90 03 00 08 */	stw r0, 8(r3)
/* 801D7C74 001D4C74  90 64 00 08 */	stw r3, 8(r4)
/* 801D7C78 001D4C78  48 00 00 1C */	b lbl_801D7C94
lbl_801D7C7C:
/* 801D7C7C 001D4C7C  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7C80 001D4C80  54 E5 10 3A */	slwi r5, r7, 2
/* 801D7C84 001D4C84  7C 04 28 2E */	lwzx r0, r4, r5
/* 801D7C88 001D4C88  90 03 00 08 */	stw r0, 8(r3)
/* 801D7C8C 001D4C8C  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7C90 001D4C90  7C 64 29 2E */	stwx r3, r4, r5
lbl_801D7C94:
/* 801D7C94 001D4C94  80 83 00 08 */	lwz r4, 8(r3)
/* 801D7C98 001D4C98  28 04 00 00 */	cmplwi r4, 0
/* 801D7C9C 001D4C9C  41 82 00 0C */	beq lbl_801D7CA8
/* 801D7CA0 001D4CA0  90 64 00 0C */	stw r3, 0xc(r4)
/* 801D7CA4 001D4CA4  48 00 00 CC */	b lbl_801D7D70
lbl_801D7CA8:
/* 801D7CA8 001D4CA8  80 8D 91 80 */	lwz r4, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D7CAC 001D4CAC  54 E0 10 3A */	slwi r0, r7, 2
/* 801D7CB0 001D4CB0  7C 64 01 2E */	stwx r3, r4, r0
/* 801D7CB4 001D4CB4  48 00 00 BC */	b lbl_801D7D70
lbl_801D7CB8:
/* 801D7CB8 001D4CB8  88 A3 00 02 */	lbz r5, 2(r3)
/* 801D7CBC 001D4CBC  28 1F 00 00 */	cmplwi r31, 0
/* 801D7CC0 001D4CC0  93 E3 00 0C */	stw r31, 0xc(r3)
/* 801D7CC4 001D4CC4  41 82 00 14 */	beq lbl_801D7CD8
/* 801D7CC8 001D4CC8  80 1F 00 08 */	lwz r0, 8(r31)
/* 801D7CCC 001D4CCC  90 03 00 08 */	stw r0, 8(r3)
/* 801D7CD0 001D4CD0  90 7F 00 08 */	stw r3, 8(r31)
/* 801D7CD4 001D4CD4  48 00 00 1C */	b lbl_801D7CF0
lbl_801D7CD8:
/* 801D7CD8 001D4CD8  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7CDC 001D4CDC  54 A6 10 3A */	slwi r6, r5, 2
/* 801D7CE0 001D4CE0  7C 04 30 2E */	lwzx r0, r4, r6
/* 801D7CE4 001D4CE4  90 03 00 08 */	stw r0, 8(r3)
/* 801D7CE8 001D4CE8  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7CEC 001D4CEC  7C 64 31 2E */	stwx r3, r4, r6
lbl_801D7CF0:
/* 801D7CF0 001D4CF0  80 83 00 08 */	lwz r4, 8(r3)
/* 801D7CF4 001D4CF4  28 04 00 00 */	cmplwi r4, 0
/* 801D7CF8 001D4CF8  41 82 00 0C */	beq lbl_801D7D04
/* 801D7CFC 001D4CFC  90 64 00 0C */	stw r3, 0xc(r4)
/* 801D7D00 001D4D00  48 00 00 70 */	b lbl_801D7D70
lbl_801D7D04:
/* 801D7D04 001D4D04  80 8D 91 80 */	lwz r4, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D7D08 001D4D08  54 A0 10 3A */	slwi r0, r5, 2
/* 801D7D0C 001D4D0C  7C 64 01 2E */	stwx r3, r4, r0
/* 801D7D10 001D4D10  48 00 00 60 */	b lbl_801D7D70
lbl_801D7D14:
/* 801D7D14 001D4D14  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801D7D18 001D4D18  88 A3 00 02 */	lbz r5, 2(r3)
/* 801D7D1C 001D4D1C  28 04 00 00 */	cmplwi r4, 0
/* 801D7D20 001D4D20  90 83 00 0C */	stw r4, 0xc(r3)
/* 801D7D24 001D4D24  41 82 00 14 */	beq lbl_801D7D38
/* 801D7D28 001D4D28  80 04 00 08 */	lwz r0, 8(r4)
/* 801D7D2C 001D4D2C  90 03 00 08 */	stw r0, 8(r3)
/* 801D7D30 001D4D30  90 64 00 08 */	stw r3, 8(r4)
/* 801D7D34 001D4D34  48 00 00 1C */	b lbl_801D7D50
lbl_801D7D38:
/* 801D7D38 001D4D38  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7D3C 001D4D3C  54 A6 10 3A */	slwi r6, r5, 2
/* 801D7D40 001D4D40  7C 04 30 2E */	lwzx r0, r4, r6
/* 801D7D44 001D4D44  90 03 00 08 */	stw r0, 8(r3)
/* 801D7D48 001D4D48  80 8D 91 84 */	lwz r4, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7D4C 001D4D4C  7C 64 31 2E */	stwx r3, r4, r6
lbl_801D7D50:
/* 801D7D50 001D4D50  80 83 00 08 */	lwz r4, 8(r3)
/* 801D7D54 001D4D54  28 04 00 00 */	cmplwi r4, 0
/* 801D7D58 001D4D58  41 82 00 0C */	beq lbl_801D7D64
/* 801D7D5C 001D4D5C  90 64 00 0C */	stw r3, 0xc(r4)
/* 801D7D60 001D4D60  48 00 00 10 */	b lbl_801D7D70
lbl_801D7D64:
/* 801D7D64 001D4D64  80 8D 91 80 */	lwz r4, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D7D68 001D4D68  54 A0 10 3A */	slwi r0, r5, 2
/* 801D7D6C 001D4D6C  7C 64 01 2E */	stwx r3, r4, r0
lbl_801D7D70:
/* 801D7D70 001D4D70  39 61 00 20 */	addi r11, r1, 0x20
/* 801D7D74 001D4D74  4B FB 65 55 */	bl _restgpr_27
/* 801D7D78 001D4D78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D7D7C 001D4D7C  7C 08 03 A6 */	mtlr r0
/* 801D7D80 001D4D80  38 21 00 20 */	addi r1, r1, 0x20
/* 801D7D84 001D4D84  4E 80 00 20 */	blr 

.global zz_801d7d88_
zz_801d7d88_:
/* 801D7D88 001D4D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7D8C 001D4D8C  7C 08 02 A6 */	mflr r0
/* 801D7D90 001D4D90  7C 67 1B 78 */	mr r7, r3
/* 801D7D94 001D4D94  7C A6 2B 78 */	mr r6, r5
/* 801D7D98 001D4D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7D9C 001D4D9C  7C 80 23 78 */	mr r0, r4
/* 801D7DA0 001D4DA0  7C E4 3B 78 */	mr r4, r7
/* 801D7DA4 001D4DA4  38 60 00 00 */	li r3, 0
/* 801D7DA8 001D4DA8  7C 05 03 78 */	mr r5, r0
/* 801D7DAC 001D4DAC  38 E0 00 00 */	li r7, 0
/* 801D7DB0 001D4DB0  4B FF FD 05 */	bl zz_801d7ab4_
/* 801D7DB4 001D4DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7DB8 001D4DB8  7C 08 03 A6 */	mtlr r0
/* 801D7DBC 001D4DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7DC0 001D4DC0  4E 80 00 20 */	blr 

.global zz_801d7dc4_
zz_801d7dc4_:
/* 801D7DC4 001D4DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7DC8 001D4DC8  7C 08 02 A6 */	mflr r0
/* 801D7DCC 001D4DCC  7C 67 1B 78 */	mr r7, r3
/* 801D7DD0 001D4DD0  7C A6 2B 78 */	mr r6, r5
/* 801D7DD4 001D4DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7DD8 001D4DD8  7C 80 23 78 */	mr r0, r4
/* 801D7DDC 001D4DDC  7C E4 3B 78 */	mr r4, r7
/* 801D7DE0 001D4DE0  38 60 00 01 */	li r3, 1
/* 801D7DE4 001D4DE4  7C 05 03 78 */	mr r5, r0
/* 801D7DE8 001D4DE8  38 E0 00 00 */	li r7, 0
/* 801D7DEC 001D4DEC  4B FF FC C9 */	bl zz_801d7ab4_
/* 801D7DF0 001D4DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7DF4 001D4DF4  7C 08 03 A6 */	mtlr r0
/* 801D7DF8 001D4DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7DFC 001D4DFC  4E 80 00 20 */	blr 

.global zz_801d7e00_
zz_801d7e00_:
/* 801D7E00 001D4E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7E04 001D4E04  7C 08 02 A6 */	mflr r0
/* 801D7E08 001D4E08  7C 87 23 78 */	mr r7, r4
/* 801D7E0C 001D4E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7E10 001D4E10  88 A4 00 02 */	lbz r5, 2(r4)
/* 801D7E14 001D4E14  7C 64 1B 78 */	mr r4, r3
/* 801D7E18 001D4E18  88 C7 00 04 */	lbz r6, 4(r7)
/* 801D7E1C 001D4E1C  38 60 00 02 */	li r3, 2
/* 801D7E20 001D4E20  4B FF FC 95 */	bl zz_801d7ab4_
/* 801D7E24 001D4E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7E28 001D4E28  7C 08 03 A6 */	mtlr r0
/* 801D7E2C 001D4E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7E30 001D4E30  4E 80 00 20 */	blr 

.global zz_801d7e34_
zz_801d7e34_:
/* 801D7E34 001D4E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7E38 001D4E38  7C 08 02 A6 */	mflr r0
/* 801D7E3C 001D4E3C  7C 87 23 78 */	mr r7, r4
/* 801D7E40 001D4E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7E44 001D4E44  88 A4 00 02 */	lbz r5, 2(r4)
/* 801D7E48 001D4E48  7C 64 1B 78 */	mr r4, r3
/* 801D7E4C 001D4E4C  88 C7 00 04 */	lbz r6, 4(r7)
/* 801D7E50 001D4E50  38 60 00 03 */	li r3, 3
/* 801D7E54 001D4E54  4B FF FC 61 */	bl zz_801d7ab4_
/* 801D7E58 001D4E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7E5C 001D4E5C  7C 08 03 A6 */	mtlr r0
/* 801D7E60 001D4E60  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7E64 001D4E64  4E 80 00 20 */	blr 

.global zz_801d7e68_
zz_801d7e68_:
/* 801D7E68 001D4E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7E6C 001D4E6C  7C 08 02 A6 */	mflr r0
/* 801D7E70 001D4E70  3C 80 80 25 */	lis r4, lbl_8024DBA8@ha
/* 801D7E74 001D4E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7E78 001D4E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D7E7C 001D4E7C  7C 7F 1B 78 */	mr r31, r3
/* 801D7E80 001D4E80  8C 64 DB A8 */	lbzu r3, lbl_8024DBA8@l(r4)
/* 801D7E84 001D4E84  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801D7E88 001D4E88  40 82 00 20 */	bne lbl_801D7EA8
/* 801D7E8C 001D4E8C  80 0D 91 74 */	lwz r0, lbl_80277A94-_SDA_BASE_(r13)
/* 801D7E90 001D4E90  7C 1F 00 40 */	cmplw r31, r0
/* 801D7E94 001D4E94  40 82 00 14 */	bne lbl_801D7EA8
/* 801D7E98 001D4E98  38 00 00 01 */	li r0, 1
/* 801D7E9C 001D4E9C  50 03 36 72 */	rlwimi r3, r0, 6, 0x19, 0x19
/* 801D7EA0 001D4EA0  98 64 00 00 */	stb r3, 0(r4)
/* 801D7EA4 001D4EA4  48 00 00 98 */	b lbl_801D7F3C
lbl_801D7EA8:
/* 801D7EA8 001D4EA8  7F E3 FB 78 */	mr r3, r31
/* 801D7EAC 001D4EAC  48 00 11 09 */	bl zz_801d8fb4_
/* 801D7EB0 001D4EB0  7F E3 FB 78 */	mr r3, r31
/* 801D7EB4 001D4EB4  48 00 10 29 */	bl zz_801d8edc_
/* 801D7EB8 001D4EB8  7F E3 FB 78 */	mr r3, r31
/* 801D7EBC 001D4EBC  4B FF FA 89 */	bl zz_801d7944_
/* 801D7EC0 001D4EC0  88 1F 00 03 */	lbz r0, 3(r31)
/* 801D7EC4 001D4EC4  28 00 00 FF */	cmplwi r0, 0xff
/* 801D7EC8 001D4EC8  41 82 00 0C */	beq lbl_801D7ED4
/* 801D7ECC 001D4ECC  7F E3 FB 78 */	mr r3, r31
/* 801D7ED0 001D4ED0  48 00 09 01 */	bl zz_801d87d0_
lbl_801D7ED4:
/* 801D7ED4 001D4ED4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801D7ED8 001D4ED8  28 03 00 00 */	cmplwi r3, 0
/* 801D7EDC 001D4EDC  41 82 00 10 */	beq lbl_801D7EEC
/* 801D7EE0 001D4EE0  80 1F 00 08 */	lwz r0, 8(r31)
/* 801D7EE4 001D4EE4  90 03 00 08 */	stw r0, 8(r3)
/* 801D7EE8 001D4EE8  48 00 00 18 */	b lbl_801D7F00
lbl_801D7EEC:
/* 801D7EEC 001D4EEC  88 1F 00 02 */	lbz r0, 2(r31)
/* 801D7EF0 001D4EF0  80 9F 00 08 */	lwz r4, 8(r31)
/* 801D7EF4 001D4EF4  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D7EF8 001D4EF8  54 00 10 3A */	slwi r0, r0, 2
/* 801D7EFC 001D4EFC  7C 83 01 2E */	stwx r4, r3, r0
lbl_801D7F00:
/* 801D7F00 001D4F00  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D7F04 001D4F04  28 03 00 00 */	cmplwi r3, 0
/* 801D7F08 001D4F08  41 82 00 10 */	beq lbl_801D7F18
/* 801D7F0C 001D4F0C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801D7F10 001D4F10  90 03 00 0C */	stw r0, 0xc(r3)
/* 801D7F14 001D4F14  48 00 00 18 */	b lbl_801D7F2C
lbl_801D7F18:
/* 801D7F18 001D4F18  88 1F 00 02 */	lbz r0, 2(r31)
/* 801D7F1C 001D4F1C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801D7F20 001D4F20  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D7F24 001D4F24  54 00 10 3A */	slwi r0, r0, 2
/* 801D7F28 001D4F28  7C 83 01 2E */	stwx r4, r3, r0
lbl_801D7F2C:
/* 801D7F2C 001D4F2C  3C 60 80 25 */	lis r3, lbl_8024DB50@ha
/* 801D7F30 001D4F30  7F E4 FB 78 */	mr r4, r31
/* 801D7F34 001D4F34  38 63 DB 50 */	addi r3, r3, lbl_8024DB50@l
/* 801D7F38 001D4F38  4B FE F8 31 */	bl HSD_ObjFree
lbl_801D7F3C:
/* 801D7F3C 001D4F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7F40 001D4F40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D7F44 001D4F44  7C 08 03 A6 */	mtlr r0
/* 801D7F48 001D4F48  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7F4C 001D4F4C  4E 80 00 20 */	blr 

.global zz_801d7f50_
zz_801d7f50_:
/* 801D7F50 001D4F50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D7F54 001D4F54  7C 08 02 A6 */	mflr r0
/* 801D7F58 001D4F58  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D7F5C 001D4F5C  39 61 00 30 */	addi r11, r1, 0x30
/* 801D7F60 001D4F60  4B FB 63 15 */	bl _savegpr_25
/* 801D7F64 001D4F64  7C BC 2B 78 */	mr r28, r5
/* 801D7F68 001D4F68  88 0D 91 60 */	lbz r0, lbl_80277A80-_SDA_BASE_(r13)
/* 801D7F6C 001D4F6C  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 801D7F70 001D4F70  7C 7A 1B 78 */	mr r26, r3
/* 801D7F74 001D4F74  7C 05 00 40 */	cmplw r5, r0
/* 801D7F78 001D4F78  7C 9B 23 78 */	mr r27, r4
/* 801D7F7C 001D4F7C  7C DD 33 78 */	mr r29, r6
/* 801D7F80 001D4F80  7C FE 3B 78 */	mr r30, r7
/* 801D7F84 001D4F84  40 81 00 1C */	ble lbl_801D7FA0
/* 801D7F88 001D4F88  3C 60 80 22 */	lis r3, lbl_8021BA48@ha
/* 801D7F8C 001D4F8C  3C A0 80 22 */	lis r5, lbl_8021BA54@ha
/* 801D7F90 001D4F90  38 63 BA 48 */	addi r3, r3, lbl_8021BA48@l
/* 801D7F94 001D4F94  38 80 01 9F */	li r4, 0x19f
/* 801D7F98 001D4F98  38 A5 BA 54 */	addi r5, r5, lbl_8021BA54@l
/* 801D7F9C 001D4F9C  4B FF DE 49 */	bl __assert
lbl_801D7FA0:
/* 801D7FA0 001D4FA0  3C 60 80 25 */	lis r3, lbl_8024DBA8@ha
/* 801D7FA4 001D4FA4  38 83 DB A8 */	addi r4, r3, lbl_8024DBA8@l
/* 801D7FA8 001D4FA8  88 64 00 00 */	lbz r3, 0(r4)
/* 801D7FAC 001D4FAC  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801D7FB0 001D4FB0  40 82 00 30 */	bne lbl_801D7FE0
/* 801D7FB4 001D4FB4  80 0D 91 74 */	lwz r0, lbl_80277A94-_SDA_BASE_(r13)
/* 801D7FB8 001D4FB8  7C 1B 00 40 */	cmplw r27, r0
/* 801D7FBC 001D4FBC  40 82 00 24 */	bne lbl_801D7FE0
/* 801D7FC0 001D4FC0  38 00 00 01 */	li r0, 1
/* 801D7FC4 001D4FC4  93 44 00 04 */	stw r26, 4(r4)
/* 801D7FC8 001D4FC8  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 801D7FCC 001D4FCC  98 64 00 00 */	stb r3, 0(r4)
/* 801D7FD0 001D4FD0  9B 84 00 08 */	stb r28, 8(r4)
/* 801D7FD4 001D4FD4  9B A4 00 09 */	stb r29, 9(r4)
/* 801D7FD8 001D4FD8  93 C4 00 0C */	stw r30, 0xc(r4)
/* 801D7FDC 001D4FDC  48 00 03 00 */	b lbl_801D82DC
lbl_801D7FE0:
/* 801D7FE0 001D4FE0  83 3B 00 18 */	lwz r25, 0x18(r27)
/* 801D7FE4 001D4FE4  3B E0 00 00 */	li r31, 0
/* 801D7FE8 001D4FE8  48 00 00 1C */	b lbl_801D8004
lbl_801D7FEC:
/* 801D7FEC 001D4FEC  7F 23 CB 78 */	mr r3, r25
/* 801D7FF0 001D4FF0  4B FF F6 6D */	bl zz_801d765c_
/* 801D7FF4 001D4FF4  80 19 00 00 */	lwz r0, 0(r25)
/* 801D7FF8 001D4FF8  93 F9 00 00 */	stw r31, 0(r25)
/* 801D7FFC 001D4FFC  7F 3F CB 78 */	mr r31, r25
/* 801D8000 001D5000  7C 19 03 78 */	mr r25, r0
lbl_801D8004:
/* 801D8004 001D5004  28 19 00 00 */	cmplwi r25, 0
/* 801D8008 001D5008  40 82 FF E4 */	bne lbl_801D7FEC
/* 801D800C 001D500C  38 00 00 00 */	li r0, 0
/* 801D8010 001D5010  90 1B 00 18 */	stw r0, 0x18(r27)
/* 801D8014 001D5014  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 801D8018 001D5018  28 03 00 00 */	cmplwi r3, 0
/* 801D801C 001D501C  41 82 00 10 */	beq lbl_801D802C
/* 801D8020 001D5020  80 1B 00 08 */	lwz r0, 8(r27)
/* 801D8024 001D5024  90 03 00 08 */	stw r0, 8(r3)
/* 801D8028 001D5028  48 00 00 18 */	b lbl_801D8040
lbl_801D802C:
/* 801D802C 001D502C  88 1B 00 02 */	lbz r0, 2(r27)
/* 801D8030 001D5030  80 9B 00 08 */	lwz r4, 8(r27)
/* 801D8034 001D5034  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D8038 001D5038  54 00 10 3A */	slwi r0, r0, 2
/* 801D803C 001D503C  7C 83 01 2E */	stwx r4, r3, r0
lbl_801D8040:
/* 801D8040 001D5040  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D8044 001D5044  28 03 00 00 */	cmplwi r3, 0
/* 801D8048 001D5048  41 82 00 10 */	beq lbl_801D8058
/* 801D804C 001D504C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801D8050 001D5050  90 03 00 0C */	stw r0, 0xc(r3)
/* 801D8054 001D5054  48 00 00 18 */	b lbl_801D806C
lbl_801D8058:
/* 801D8058 001D5058  88 1B 00 02 */	lbz r0, 2(r27)
/* 801D805C 001D505C  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 801D8060 001D5060  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D8064 001D5064  54 00 10 3A */	slwi r0, r0, 2
/* 801D8068 001D5068  7C 83 01 2E */	stwx r4, r3, r0
lbl_801D806C:
/* 801D806C 001D506C  9B 9B 00 02 */	stb r28, 2(r27)
/* 801D8070 001D5070  2C 1A 00 02 */	cmpwi r26, 2
/* 801D8074 001D5074  9B BB 00 04 */	stb r29, 4(r27)
/* 801D8078 001D5078  41 82 01 4C */	beq lbl_801D81C4
/* 801D807C 001D507C  40 80 00 14 */	bge lbl_801D8090
/* 801D8080 001D5080  2C 1A 00 00 */	cmpwi r26, 0
/* 801D8084 001D5084  41 82 00 18 */	beq lbl_801D809C
/* 801D8088 001D5088  40 80 00 9C */	bge lbl_801D8124
/* 801D808C 001D508C  48 00 01 F0 */	b lbl_801D827C
lbl_801D8090:
/* 801D8090 001D5090  2C 1A 00 04 */	cmpwi r26, 4
/* 801D8094 001D5094  40 80 01 E8 */	bge lbl_801D827C
/* 801D8098 001D5098  48 00 01 88 */	b lbl_801D8220
lbl_801D809C:
/* 801D809C 001D509C  88 BB 00 02 */	lbz r5, 2(r27)
/* 801D80A0 001D50A0  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D80A4 001D50A4  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 801D80A8 001D50A8  7C 83 00 2E */	lwzx r4, r3, r0
/* 801D80AC 001D50AC  48 00 00 08 */	b lbl_801D80B4
lbl_801D80B0:
/* 801D80B0 001D50B0  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_801D80B4:
/* 801D80B4 001D50B4  28 04 00 00 */	cmplwi r4, 0
/* 801D80B8 001D50B8  41 82 00 14 */	beq lbl_801D80CC
/* 801D80BC 001D50BC  88 64 00 04 */	lbz r3, 4(r4)
/* 801D80C0 001D50C0  88 1B 00 04 */	lbz r0, 4(r27)
/* 801D80C4 001D50C4  7C 03 00 40 */	cmplw r3, r0
/* 801D80C8 001D50C8  41 81 FF E8 */	bgt lbl_801D80B0
lbl_801D80CC:
/* 801D80CC 001D50CC  28 04 00 00 */	cmplwi r4, 0
/* 801D80D0 001D50D0  90 9B 00 0C */	stw r4, 0xc(r27)
/* 801D80D4 001D50D4  41 82 00 14 */	beq lbl_801D80E8
/* 801D80D8 001D50D8  80 04 00 08 */	lwz r0, 8(r4)
/* 801D80DC 001D50DC  90 1B 00 08 */	stw r0, 8(r27)
/* 801D80E0 001D50E0  93 64 00 08 */	stw r27, 8(r4)
/* 801D80E4 001D50E4  48 00 00 1C */	b lbl_801D8100
lbl_801D80E8:
/* 801D80E8 001D50E8  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D80EC 001D50EC  54 A4 10 3A */	slwi r4, r5, 2
/* 801D80F0 001D50F0  7C 03 20 2E */	lwzx r0, r3, r4
/* 801D80F4 001D50F4  90 1B 00 08 */	stw r0, 8(r27)
/* 801D80F8 001D50F8  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D80FC 001D50FC  7F 63 21 2E */	stwx r27, r3, r4
lbl_801D8100:
/* 801D8100 001D5100  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D8104 001D5104  28 03 00 00 */	cmplwi r3, 0
/* 801D8108 001D5108  41 82 00 0C */	beq lbl_801D8114
/* 801D810C 001D510C  93 63 00 0C */	stw r27, 0xc(r3)
/* 801D8110 001D5110  48 00 01 6C */	b lbl_801D827C
lbl_801D8114:
/* 801D8114 001D5114  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D8118 001D5118  54 A0 10 3A */	slwi r0, r5, 2
/* 801D811C 001D511C  7F 63 01 2E */	stwx r27, r3, r0
/* 801D8120 001D5120  48 00 01 5C */	b lbl_801D827C
lbl_801D8124:
/* 801D8124 001D5124  88 DB 00 02 */	lbz r6, 2(r27)
/* 801D8128 001D5128  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D812C 001D512C  54 C5 15 BA */	rlwinm r5, r6, 2, 0x16, 0x1d
/* 801D8130 001D5130  7C 83 28 2E */	lwzx r4, r3, r5
/* 801D8134 001D5134  48 00 00 08 */	b lbl_801D813C
lbl_801D8138:
/* 801D8138 001D5138  80 84 00 08 */	lwz r4, 8(r4)
lbl_801D813C:
/* 801D813C 001D513C  28 04 00 00 */	cmplwi r4, 0
/* 801D8140 001D5140  41 82 00 14 */	beq lbl_801D8154
/* 801D8144 001D5144  88 64 00 04 */	lbz r3, 4(r4)
/* 801D8148 001D5148  88 1B 00 04 */	lbz r0, 4(r27)
/* 801D814C 001D514C  7C 03 00 40 */	cmplw r3, r0
/* 801D8150 001D5150  41 80 FF E8 */	blt lbl_801D8138
lbl_801D8154:
/* 801D8154 001D5154  28 04 00 00 */	cmplwi r4, 0
/* 801D8158 001D5158  41 82 00 0C */	beq lbl_801D8164
/* 801D815C 001D515C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 801D8160 001D5160  48 00 00 0C */	b lbl_801D816C
lbl_801D8164:
/* 801D8164 001D5164  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D8168 001D5168  7C 63 28 2E */	lwzx r3, r3, r5
lbl_801D816C:
/* 801D816C 001D516C  28 03 00 00 */	cmplwi r3, 0
/* 801D8170 001D5170  90 7B 00 0C */	stw r3, 0xc(r27)
/* 801D8174 001D5174  41 82 00 14 */	beq lbl_801D8188
/* 801D8178 001D5178  80 03 00 08 */	lwz r0, 8(r3)
/* 801D817C 001D517C  90 1B 00 08 */	stw r0, 8(r27)
/* 801D8180 001D5180  93 63 00 08 */	stw r27, 8(r3)
/* 801D8184 001D5184  48 00 00 1C */	b lbl_801D81A0
lbl_801D8188:
/* 801D8188 001D5188  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D818C 001D518C  54 C4 10 3A */	slwi r4, r6, 2
/* 801D8190 001D5190  7C 03 20 2E */	lwzx r0, r3, r4
/* 801D8194 001D5194  90 1B 00 08 */	stw r0, 8(r27)
/* 801D8198 001D5198  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D819C 001D519C  7F 63 21 2E */	stwx r27, r3, r4
lbl_801D81A0:
/* 801D81A0 001D51A0  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D81A4 001D51A4  28 03 00 00 */	cmplwi r3, 0
/* 801D81A8 001D51A8  41 82 00 0C */	beq lbl_801D81B4
/* 801D81AC 001D51AC  93 63 00 0C */	stw r27, 0xc(r3)
/* 801D81B0 001D51B0  48 00 00 CC */	b lbl_801D827C
lbl_801D81B4:
/* 801D81B4 001D51B4  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D81B8 001D51B8  54 C0 10 3A */	slwi r0, r6, 2
/* 801D81BC 001D51BC  7F 63 01 2E */	stwx r27, r3, r0
/* 801D81C0 001D51C0  48 00 00 BC */	b lbl_801D827C
lbl_801D81C4:
/* 801D81C4 001D51C4  88 9B 00 02 */	lbz r4, 2(r27)
/* 801D81C8 001D51C8  28 1E 00 00 */	cmplwi r30, 0
/* 801D81CC 001D51CC  93 DB 00 0C */	stw r30, 0xc(r27)
/* 801D81D0 001D51D0  41 82 00 14 */	beq lbl_801D81E4
/* 801D81D4 001D51D4  80 1E 00 08 */	lwz r0, 8(r30)
/* 801D81D8 001D51D8  90 1B 00 08 */	stw r0, 8(r27)
/* 801D81DC 001D51DC  93 7E 00 08 */	stw r27, 8(r30)
/* 801D81E0 001D51E0  48 00 00 1C */	b lbl_801D81FC
lbl_801D81E4:
/* 801D81E4 001D51E4  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D81E8 001D51E8  54 85 10 3A */	slwi r5, r4, 2
/* 801D81EC 001D51EC  7C 03 28 2E */	lwzx r0, r3, r5
/* 801D81F0 001D51F0  90 1B 00 08 */	stw r0, 8(r27)
/* 801D81F4 001D51F4  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D81F8 001D51F8  7F 63 29 2E */	stwx r27, r3, r5
lbl_801D81FC:
/* 801D81FC 001D51FC  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D8200 001D5200  28 03 00 00 */	cmplwi r3, 0
/* 801D8204 001D5204  41 82 00 0C */	beq lbl_801D8210
/* 801D8208 001D5208  93 63 00 0C */	stw r27, 0xc(r3)
/* 801D820C 001D520C  48 00 00 70 */	b lbl_801D827C
lbl_801D8210:
/* 801D8210 001D5210  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D8214 001D5214  54 80 10 3A */	slwi r0, r4, 2
/* 801D8218 001D5218  7F 63 01 2E */	stwx r27, r3, r0
/* 801D821C 001D521C  48 00 00 60 */	b lbl_801D827C
lbl_801D8220:
/* 801D8220 001D5220  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801D8224 001D5224  88 9B 00 02 */	lbz r4, 2(r27)
/* 801D8228 001D5228  28 03 00 00 */	cmplwi r3, 0
/* 801D822C 001D522C  90 7B 00 0C */	stw r3, 0xc(r27)
/* 801D8230 001D5230  41 82 00 14 */	beq lbl_801D8244
/* 801D8234 001D5234  80 03 00 08 */	lwz r0, 8(r3)
/* 801D8238 001D5238  90 1B 00 08 */	stw r0, 8(r27)
/* 801D823C 001D523C  93 63 00 08 */	stw r27, 8(r3)
/* 801D8240 001D5240  48 00 00 1C */	b lbl_801D825C
lbl_801D8244:
/* 801D8244 001D5244  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D8248 001D5248  54 85 10 3A */	slwi r5, r4, 2
/* 801D824C 001D524C  7C 03 28 2E */	lwzx r0, r3, r5
/* 801D8250 001D5250  90 1B 00 08 */	stw r0, 8(r27)
/* 801D8254 001D5254  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D8258 001D5258  7F 63 29 2E */	stwx r27, r3, r5
lbl_801D825C:
/* 801D825C 001D525C  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D8260 001D5260  28 03 00 00 */	cmplwi r3, 0
/* 801D8264 001D5264  41 82 00 0C */	beq lbl_801D8270
/* 801D8268 001D5268  93 63 00 0C */	stw r27, 0xc(r3)
/* 801D826C 001D526C  48 00 00 10 */	b lbl_801D827C
lbl_801D8270:
/* 801D8270 001D5270  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D8274 001D5274  54 80 10 3A */	slwi r0, r4, 2
/* 801D8278 001D5278  7F 63 01 2E */	stwx r27, r3, r0
lbl_801D827C:
/* 801D827C 001D527C  80 8D 91 94 */	lwz r4, lbl_80277AB4-_SDA_BASE_(r13)
/* 801D8280 001D5280  38 60 00 02 */	li r3, 2
/* 801D8284 001D5284  2C 04 00 00 */	cmpwi r4, 0
/* 801D8288 001D5288  41 82 00 08 */	beq lbl_801D8290
/* 801D828C 001D528C  38 64 FF FF */	addi r3, r4, -1
lbl_801D8290:
/* 801D8290 001D5290  2C 03 00 00 */	cmpwi r3, 0
/* 801D8294 001D5294  3B 60 00 02 */	li r27, 2
/* 801D8298 001D5298  41 82 00 08 */	beq lbl_801D82A0
/* 801D829C 001D529C  3B 63 FF FF */	addi r27, r3, -1
lbl_801D82A0:
/* 801D82A0 001D52A0  7F FC FB 78 */	mr r28, r31
/* 801D82A4 001D52A4  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 801D82A8 001D52A8  48 00 00 2C */	b lbl_801D82D4
lbl_801D82AC:
/* 801D82AC 001D52AC  83 BC 00 00 */	lwz r29, 0(r28)
/* 801D82B0 001D52B0  7F 83 E3 78 */	mr r3, r28
/* 801D82B4 001D52B4  4B FF F2 5D */	bl zz_801d7510_
/* 801D82B8 001D52B8  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 801D82BC 001D52BC  54 60 E7 BE */	rlwinm r0, r3, 0x1c, 0x1e, 0x1f
/* 801D82C0 001D52C0  7C 00 D8 00 */	cmpw r0, r27
/* 801D82C4 001D52C4  40 82 00 0C */	bne lbl_801D82D0
/* 801D82C8 001D52C8  53 43 26 B6 */	rlwimi r3, r26, 4, 0x1a, 0x1b
/* 801D82CC 001D52CC  98 7C 00 0D */	stb r3, 0xd(r28)
lbl_801D82D0:
/* 801D82D0 001D52D0  7F BC EB 78 */	mr r28, r29
lbl_801D82D4:
/* 801D82D4 001D52D4  28 1C 00 00 */	cmplwi r28, 0
/* 801D82D8 001D52D8  40 82 FF D4 */	bne lbl_801D82AC
lbl_801D82DC:
/* 801D82DC 001D52DC  39 61 00 30 */	addi r11, r1, 0x30
/* 801D82E0 001D52E0  4B FB 5F E1 */	bl _restgpr_25
/* 801D82E4 001D52E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D82E8 001D52E8  7C 08 03 A6 */	mtlr r0
/* 801D82EC 001D52EC  38 21 00 30 */	addi r1, r1, 0x30
/* 801D82F0 001D52F0  4E 80 00 20 */	blr 
