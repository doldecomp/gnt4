.include "macros.inc"

.section .text  # 0x801A7A9C - 0x801A8138

.global HSD_DObjSetCurrent
HSD_DObjSetCurrent:
/* 801A7A9C 001A4A9C  90 6D 8F 9C */	stw r3, lbl_802778BC-_SDA_BASE_(r13)
/* 801A7AA0 001A4AA0  4E 80 00 20 */	blr 

.global HSD_DObjSetFlags
HSD_DObjSetFlags:
/* 801A7AA4 001A4AA4  28 03 00 00 */	cmplwi r3, 0
/* 801A7AA8 001A4AA8  4D 82 00 20 */	beqlr 
/* 801A7AAC 001A4AAC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801A7AB0 001A4AB0  7C 00 23 78 */	or r0, r0, r4
/* 801A7AB4 001A4AB4  90 03 00 14 */	stw r0, 0x14(r3)
/* 801A7AB8 001A4AB8  4E 80 00 20 */	blr 

.global HSD_DObjClearFlags
HSD_DObjClearFlags:
/* 801A7ABC 001A4ABC  28 03 00 00 */	cmplwi r3, 0
/* 801A7AC0 001A4AC0  4D 82 00 20 */	beqlr 
/* 801A7AC4 001A4AC4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801A7AC8 001A4AC8  7C 00 20 78 */	andc r0, r0, r4
/* 801A7ACC 001A4ACC  90 03 00 14 */	stw r0, 0x14(r3)
/* 801A7AD0 001A4AD0  4E 80 00 20 */	blr 

.global HSD_DObjAddAnimAll
HSD_DObjAddAnimAll:
/* 801A7AD4 001A4AD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A7AD8 001A4AD8  7C 08 02 A6 */	mflr r0
/* 801A7ADC 001A4ADC  28 03 00 00 */	cmplwi r3, 0
/* 801A7AE0 001A4AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A7AE4 001A4AE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A7AE8 001A4AE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A7AEC 001A4AEC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A7AF0 001A4AF0  41 82 00 78 */	beq lbl_801A7B68
/* 801A7AF4 001A4AF4  7C 7F 1B 78 */	mr r31, r3
/* 801A7AF8 001A4AF8  7C 9E 23 78 */	mr r30, r4
/* 801A7AFC 001A4AFC  7C BD 2B 78 */	mr r29, r5
/* 801A7B00 001A4B00  48 00 00 60 */	b lbl_801A7B60
lbl_801A7B04:
/* 801A7B04 001A4B04  28 1F 00 00 */	cmplwi r31, 0
/* 801A7B08 001A4B08  41 82 00 2C */	beq lbl_801A7B34
/* 801A7B0C 001A4B0C  28 1D 00 00 */	cmplwi r29, 0
/* 801A7B10 001A4B10  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801A7B14 001A4B14  41 82 00 0C */	beq lbl_801A7B20
/* 801A7B18 001A4B18  80 9D 00 04 */	lwz r4, 4(r29)
/* 801A7B1C 001A4B1C  48 00 00 08 */	b lbl_801A7B24
lbl_801A7B20:
/* 801A7B20 001A4B20  38 80 00 00 */	li r4, 0
lbl_801A7B24:
/* 801A7B24 001A4B24  48 00 FF 31 */	bl HSD_PObjRemoveAnimAll
/* 801A7B28 001A4B28  80 7F 00 08 */	lwz r3, 8(r31)
/* 801A7B2C 001A4B2C  7F C4 F3 78 */	mr r4, r30
/* 801A7B30 001A4B30  48 00 51 41 */	bl HSD_MObjAddAnim
lbl_801A7B34:
/* 801A7B34 001A4B34  28 1E 00 00 */	cmplwi r30, 0
/* 801A7B38 001A4B38  83 FF 00 04 */	lwz r31, 4(r31)
/* 801A7B3C 001A4B3C  41 82 00 0C */	beq lbl_801A7B48
/* 801A7B40 001A4B40  83 DE 00 00 */	lwz r30, 0(r30)
/* 801A7B44 001A4B44  48 00 00 08 */	b lbl_801A7B4C
lbl_801A7B48:
/* 801A7B48 001A4B48  3B C0 00 00 */	li r30, 0
lbl_801A7B4C:
/* 801A7B4C 001A4B4C  28 1D 00 00 */	cmplwi r29, 0
/* 801A7B50 001A4B50  41 82 00 0C */	beq lbl_801A7B5C
/* 801A7B54 001A4B54  83 BD 00 00 */	lwz r29, 0(r29)
/* 801A7B58 001A4B58  48 00 00 08 */	b lbl_801A7B60
lbl_801A7B5C:
/* 801A7B5C 001A4B5C  3B A0 00 00 */	li r29, 0
lbl_801A7B60:
/* 801A7B60 001A4B60  28 1F 00 00 */	cmplwi r31, 0
/* 801A7B64 001A4B64  40 82 FF A0 */	bne lbl_801A7B04
lbl_801A7B68:
/* 801A7B68 001A4B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7B6C 001A4B6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A7B70 001A4B70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A7B74 001A4B74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A7B78 001A4B78  7C 08 03 A6 */	mtlr r0
/* 801A7B7C 001A4B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 801A7B80 001A4B80  4E 80 00 20 */	blr 

.global HSD_DObjReqAnimAllByFlags
HSD_DObjReqAnimAllByFlags:
/* 801A7B84 001A4B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A7B88 001A4B88  7C 08 02 A6 */	mflr r0
/* 801A7B8C 001A4B8C  28 03 00 00 */	cmplwi r3, 0
/* 801A7B90 001A4B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A7B94 001A4B94  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801A7B98 001A4B98  FF E0 08 90 */	fmr f31, f1
/* 801A7B9C 001A4B9C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801A7BA0 001A4BA0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801A7BA4 001A4BA4  7C 9E 23 78 */	mr r30, r4
/* 801A7BA8 001A4BA8  41 82 00 40 */	beq lbl_801A7BE8
/* 801A7BAC 001A4BAC  7C 7F 1B 78 */	mr r31, r3
/* 801A7BB0 001A4BB0  48 00 00 30 */	b lbl_801A7BE0
lbl_801A7BB4:
/* 801A7BB4 001A4BB4  28 1F 00 00 */	cmplwi r31, 0
/* 801A7BB8 001A4BB8  41 82 00 24 */	beq lbl_801A7BDC
/* 801A7BBC 001A4BBC  FC 20 F8 90 */	fmr f1, f31
/* 801A7BC0 001A4BC0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801A7BC4 001A4BC4  7F C4 F3 78 */	mr r4, r30
/* 801A7BC8 001A4BC8  48 00 FF 1D */	bl HSD_PObjReqAnimAllByFlags
/* 801A7BCC 001A4BCC  FC 20 F8 90 */	fmr f1, f31
/* 801A7BD0 001A4BD0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801A7BD4 001A4BD4  7F C4 F3 78 */	mr r4, r30
/* 801A7BD8 001A4BD8  48 00 51 01 */	bl HSD_MObjReqAnimByFlags
lbl_801A7BDC:
/* 801A7BDC 001A4BDC  83 FF 00 04 */	lwz r31, 4(r31)
lbl_801A7BE0:
/* 801A7BE0 001A4BE0  28 1F 00 00 */	cmplwi r31, 0
/* 801A7BE4 001A4BE4  40 82 FF D0 */	bne lbl_801A7BB4
lbl_801A7BE8:
/* 801A7BE8 001A4BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7BEC 001A4BEC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801A7BF0 001A4BF0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801A7BF4 001A4BF4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801A7BF8 001A4BF8  7C 08 03 A6 */	mtlr r0
/* 801A7BFC 001A4BFC  38 21 00 20 */	addi r1, r1, 0x20
/* 801A7C00 001A4C00  4E 80 00 20 */	blr 

.global HSD_DObjAnimAll
HSD_DObjAnimAll:
/* 801A7C04 001A4C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7C08 001A4C08  7C 08 02 A6 */	mflr r0
/* 801A7C0C 001A4C0C  28 03 00 00 */	cmplwi r3, 0
/* 801A7C10 001A4C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7C14 001A4C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7C18 001A4C18  41 82 00 44 */	beq lbl_801A7C5C
/* 801A7C1C 001A4C1C  7C 7F 1B 78 */	mr r31, r3
/* 801A7C20 001A4C20  48 00 00 34 */	b lbl_801A7C54
lbl_801A7C24:
/* 801A7C24 001A4C24  28 1F 00 00 */	cmplwi r31, 0
/* 801A7C28 001A4C28  41 82 00 28 */	beq lbl_801A7C50
/* 801A7C2C 001A4C2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 801A7C30 001A4C30  7F E4 FB 78 */	mr r4, r31
/* 801A7C34 001A4C34  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801A7C38 001A4C38  80 A5 00 44 */	lwz r5, 0x44(r5)
/* 801A7C3C 001A4C3C  48 00 68 F1 */	bl HSD_AObjInterpretAnim
/* 801A7C40 001A4C40  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801A7C44 001A4C44  48 00 FF 61 */	bl HSD_PObjAnimAll
/* 801A7C48 001A4C48  80 7F 00 08 */	lwz r3, 8(r31)
/* 801A7C4C 001A4C4C  48 00 55 8D */	bl HSD_MObjAnim
lbl_801A7C50:
/* 801A7C50 001A4C50  83 FF 00 04 */	lwz r31, 4(r31)
lbl_801A7C54:
/* 801A7C54 001A4C54  28 1F 00 00 */	cmplwi r31, 0
/* 801A7C58 001A4C58  40 82 FF CC */	bne lbl_801A7C24
lbl_801A7C5C:
/* 801A7C5C 001A4C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7C60 001A4C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7C64 001A4C64  7C 08 03 A6 */	mtlr r0
/* 801A7C68 001A4C68  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7C6C 001A4C6C  4E 80 00 20 */	blr 

.global DObjLoad
DObjLoad:
/* 801A7C70 001A4C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7C74 001A4C74  7C 08 02 A6 */	mflr r0
/* 801A7C78 001A4C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7C7C 001A4C7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7C80 001A4C80  7C 9F 23 78 */	mr r31, r4
/* 801A7C84 001A4C84  93 C1 00 08 */	stw r30, 8(r1)
/* 801A7C88 001A4C88  7C 7E 1B 78 */	mr r30, r3
/* 801A7C8C 001A4C8C  80 64 00 04 */	lwz r3, 4(r4)
/* 801A7C90 001A4C90  48 00 00 F1 */	bl HSD_DObjLoadDesc
/* 801A7C94 001A4C94  90 7E 00 04 */	stw r3, 4(r30)
/* 801A7C98 001A4C98  80 7F 00 08 */	lwz r3, 8(r31)
/* 801A7C9C 001A4C9C  48 00 56 25 */	bl HSD_MObjLoadDesc
/* 801A7CA0 001A4CA0  90 7E 00 08 */	stw r3, 8(r30)
/* 801A7CA4 001A4CA4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801A7CA8 001A4CA8  48 01 01 95 */	bl HSD_PObjLoadDesc
/* 801A7CAC 001A4CAC  90 7E 00 0C */	stw r3, 0xc(r30)
/* 801A7CB0 001A4CB0  80 7E 00 08 */	lwz r3, 8(r30)
/* 801A7CB4 001A4CB4  28 03 00 00 */	cmplwi r3, 0
/* 801A7CB8 001A4CB8  41 82 00 AC */	beq lbl_801A7D64
/* 801A7CBC 001A4CBC  80 83 00 04 */	lwz r4, 4(r3)
/* 801A7CC0 001A4CC0  3C 00 40 00 */	lis r0, 0x4000
/* 801A7CC4 001A4CC4  54 83 00 44 */	rlwinm r3, r4, 0, 1, 2
/* 801A7CC8 001A4CC8  7C 03 00 00 */	cmpw r3, r0
/* 801A7CCC 001A4CCC  41 82 00 40 */	beq lbl_801A7D0C
/* 801A7CD0 001A4CD0  40 80 00 10 */	bge lbl_801A7CE0
/* 801A7CD4 001A4CD4  2C 03 00 00 */	cmpwi r3, 0
/* 801A7CD8 001A4CD8  41 82 00 18 */	beq lbl_801A7CF0
/* 801A7CDC 001A4CDC  48 00 00 68 */	b lbl_801A7D44
lbl_801A7CE0:
/* 801A7CE0 001A4CE0  3C 00 60 00 */	lis r0, 0x6000
/* 801A7CE4 001A4CE4  7C 03 00 00 */	cmpw r3, r0
/* 801A7CE8 001A4CE8  41 82 00 40 */	beq lbl_801A7D28
/* 801A7CEC 001A4CEC  48 00 00 58 */	b lbl_801A7D44
lbl_801A7CF0:
/* 801A7CF0 001A4CF0  28 1E 00 00 */	cmplwi r30, 0
/* 801A7CF4 001A4CF4  41 82 00 70 */	beq lbl_801A7D64
/* 801A7CF8 001A4CF8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801A7CFC 001A4CFC  54 00 07 F6 */	rlwinm r0, r0, 0, 0x1f, 0x1b
/* 801A7D00 001A4D00  60 00 00 02 */	ori r0, r0, 2
/* 801A7D04 001A4D04  90 1E 00 14 */	stw r0, 0x14(r30)
/* 801A7D08 001A4D08  48 00 00 5C */	b lbl_801A7D64
lbl_801A7D0C:
/* 801A7D0C 001A4D0C  28 1E 00 00 */	cmplwi r30, 0
/* 801A7D10 001A4D10  41 82 00 54 */	beq lbl_801A7D64
/* 801A7D14 001A4D14  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801A7D18 001A4D18  54 00 07 F6 */	rlwinm r0, r0, 0, 0x1f, 0x1b
/* 801A7D1C 001A4D1C  60 00 00 08 */	ori r0, r0, 8
/* 801A7D20 001A4D20  90 1E 00 14 */	stw r0, 0x14(r30)
/* 801A7D24 001A4D24  48 00 00 40 */	b lbl_801A7D64
lbl_801A7D28:
/* 801A7D28 001A4D28  28 1E 00 00 */	cmplwi r30, 0
/* 801A7D2C 001A4D2C  41 82 00 38 */	beq lbl_801A7D64
/* 801A7D30 001A4D30  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801A7D34 001A4D34  54 00 07 F6 */	rlwinm r0, r0, 0, 0x1f, 0x1b
/* 801A7D38 001A4D38  60 00 00 04 */	ori r0, r0, 4
/* 801A7D3C 001A4D3C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 801A7D40 001A4D40  48 00 00 24 */	b lbl_801A7D64
lbl_801A7D44:
/* 801A7D44 001A4D44  3C 60 80 22 */	lis r3, lbl_80218A58@ha
/* 801A7D48 001A4D48  38 63 8A 58 */	addi r3, r3, lbl_80218A58@l
/* 801A7D4C 001A4D4C  4C C6 31 82 */	crclr 6
/* 801A7D50 001A4D50  4B FB FB 49 */	bl func_80167898
/* 801A7D54 001A4D54  38 6D 82 D0 */	addi r3, r13, lbl_80276BF0-_SDA_BASE_
/* 801A7D58 001A4D58  38 80 01 3F */	li r4, 0x13f
/* 801A7D5C 001A4D5C  38 AD 82 D8 */	addi r5, r13, lbl_80276BF8-_SDA_BASE_
/* 801A7D60 001A4D60  48 02 E0 E1 */	bl HSD_Panic
lbl_801A7D64:
/* 801A7D64 001A4D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7D68 001A4D68  38 60 00 00 */	li r3, 0
/* 801A7D6C 001A4D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7D70 001A4D70  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A7D74 001A4D74  7C 08 03 A6 */	mtlr r0
/* 801A7D78 001A4D78  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7D7C 001A4D7C  4E 80 00 20 */	blr 

.global HSD_DObjLoadDesc
HSD_DObjLoadDesc:
/* 801A7D80 001A4D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7D84 001A4D84  7C 08 02 A6 */	mflr r0
/* 801A7D88 001A4D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7D8C 001A4D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7D90 001A4D90  93 C1 00 08 */	stw r30, 8(r1)
/* 801A7D94 001A4D94  7C 7E 1B 79 */	or. r30, r3, r3
/* 801A7D98 001A4D98  40 82 00 0C */	bne lbl_801A7DA4
/* 801A7D9C 001A4D9C  38 60 00 00 */	li r3, 0
/* 801A7DA0 001A4DA0  48 00 00 60 */	b lbl_801A7E00
lbl_801A7DA4:
/* 801A7DA4 001A4DA4  80 7E 00 00 */	lwz r3, 0(r30)
/* 801A7DA8 001A4DA8  28 03 00 00 */	cmplwi r3, 0
/* 801A7DAC 001A4DAC  41 82 00 10 */	beq lbl_801A7DBC
/* 801A7DB0 001A4DB0  48 02 6E C1 */	bl hsdSearchClassInfo
/* 801A7DB4 001A4DB4  28 03 00 00 */	cmplwi r3, 0
/* 801A7DB8 001A4DB8  40 82 00 10 */	bne lbl_801A7DC8
lbl_801A7DBC:
/* 801A7DBC 001A4DBC  48 00 00 D1 */	bl HSD_DObjAlloc
/* 801A7DC0 001A4DC0  7C 7F 1B 78 */	mr r31, r3
/* 801A7DC4 001A4DC4  48 00 00 20 */	b lbl_801A7DE4
lbl_801A7DC8:
/* 801A7DC8 001A4DC8  48 02 6D E1 */	bl hsdNew
/* 801A7DCC 001A4DCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 801A7DD0 001A4DD0  40 82 00 14 */	bne lbl_801A7DE4
/* 801A7DD4 001A4DD4  38 6D 82 D0 */	addi r3, r13, lbl_80276BF0-_SDA_BASE_
/* 801A7DD8 001A4DD8  38 80 01 81 */	li r4, 0x181
/* 801A7DDC 001A4DDC  38 AD 82 DC */	addi r5, r13, lbl_80276BFC-_SDA_BASE_
/* 801A7DE0 001A4DE0  48 02 E0 05 */	bl __assert
lbl_801A7DE4:
/* 801A7DE4 001A4DE4  80 BF 00 00 */	lwz r5, 0(r31)
/* 801A7DE8 001A4DE8  7F E3 FB 78 */	mr r3, r31
/* 801A7DEC 001A4DEC  7F C4 F3 78 */	mr r4, r30
/* 801A7DF0 001A4DF0  81 85 00 40 */	lwz r12, 0x40(r5)
/* 801A7DF4 001A4DF4  7D 89 03 A6 */	mtctr r12
/* 801A7DF8 001A4DF8  4E 80 04 21 */	bctrl 
/* 801A7DFC 001A4DFC  7F E3 FB 78 */	mr r3, r31
lbl_801A7E00:
/* 801A7E00 001A4E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7E04 001A4E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7E08 001A4E08  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A7E0C 001A4E0C  7C 08 03 A6 */	mtlr r0
/* 801A7E10 001A4E10  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7E14 001A4E14  4E 80 00 20 */	blr 

.global HSD_DObjRemoveAll
HSD_DObjRemoveAll:
/* 801A7E18 001A4E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7E1C 001A4E1C  7C 08 02 A6 */	mflr r0
/* 801A7E20 001A4E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7E24 001A4E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7E28 001A4E28  93 C1 00 08 */	stw r30, 8(r1)
/* 801A7E2C 001A4E2C  7C 7E 1B 78 */	mr r30, r3
/* 801A7E30 001A4E30  48 00 00 3C */	b lbl_801A7E6C
lbl_801A7E34:
/* 801A7E34 001A4E34  28 1E 00 00 */	cmplwi r30, 0
/* 801A7E38 001A4E38  83 FE 00 04 */	lwz r31, 4(r30)
/* 801A7E3C 001A4E3C  41 82 00 2C */	beq lbl_801A7E68
/* 801A7E40 001A4E40  80 9E 00 00 */	lwz r4, 0(r30)
/* 801A7E44 001A4E44  7F C3 F3 78 */	mr r3, r30
/* 801A7E48 001A4E48  81 84 00 30 */	lwz r12, 0x30(r4)
/* 801A7E4C 001A4E4C  7D 89 03 A6 */	mtctr r12
/* 801A7E50 001A4E50  4E 80 04 21 */	bctrl 
/* 801A7E54 001A4E54  80 9E 00 00 */	lwz r4, 0(r30)
/* 801A7E58 001A4E58  7F C3 F3 78 */	mr r3, r30
/* 801A7E5C 001A4E5C  81 84 00 34 */	lwz r12, 0x34(r4)
/* 801A7E60 001A4E60  7D 89 03 A6 */	mtctr r12
/* 801A7E64 001A4E64  4E 80 04 21 */	bctrl 
lbl_801A7E68:
/* 801A7E68 001A4E68  7F FE FB 78 */	mr r30, r31
lbl_801A7E6C:
/* 801A7E6C 001A4E6C  28 1E 00 00 */	cmplwi r30, 0
/* 801A7E70 001A4E70  40 82 FF C4 */	bne lbl_801A7E34
/* 801A7E74 001A4E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7E78 001A4E78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7E7C 001A4E7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A7E80 001A4E80  7C 08 03 A6 */	mtlr r0
/* 801A7E84 001A4E84  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7E88 001A4E88  4E 80 00 20 */	blr 

.global HSD_DObjAlloc
HSD_DObjAlloc:
/* 801A7E8C 001A4E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7E90 001A4E90  7C 08 02 A6 */	mflr r0
/* 801A7E94 001A4E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7E98 001A4E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7E9C 001A4E9C  80 6D 8F 98 */	lwz r3, lbl_802778B8-_SDA_BASE_(r13)
/* 801A7EA0 001A4EA0  28 03 00 00 */	cmplwi r3, 0
/* 801A7EA4 001A4EA4  41 82 00 08 */	beq lbl_801A7EAC
/* 801A7EA8 001A4EA8  48 00 00 0C */	b lbl_801A7EB4
lbl_801A7EAC:
/* 801A7EAC 001A4EAC  3C 60 80 22 */	lis r3, lbl_80218A10@ha
/* 801A7EB0 001A4EB0  38 63 8A 10 */	addi r3, r3, lbl_80218A10@l
lbl_801A7EB4:
/* 801A7EB4 001A4EB4  48 02 6C F5 */	bl hsdNew
/* 801A7EB8 001A4EB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 801A7EBC 001A4EBC  40 82 00 14 */	bne lbl_801A7ED0
/* 801A7EC0 001A4EC0  38 6D 82 D0 */	addi r3, r13, lbl_80276BF0-_SDA_BASE_
/* 801A7EC4 001A4EC4  38 80 02 14 */	li r4, 0x214
/* 801A7EC8 001A4EC8  38 AD 82 DC */	addi r5, r13, lbl_80276BFC-_SDA_BASE_
/* 801A7ECC 001A4ECC  48 02 DF 19 */	bl __assert
lbl_801A7ED0:
/* 801A7ED0 001A4ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7ED4 001A4ED4  7F E3 FB 78 */	mr r3, r31
/* 801A7ED8 001A4ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7EDC 001A4EDC  7C 08 03 A6 */	mtlr r0
/* 801A7EE0 001A4EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7EE4 001A4EE4  4E 80 00 20 */	blr 

.global HSD_DObjResolveRefsAll
HSD_DObjResolveRefsAll:
/* 801A7EE8 001A4EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7EEC 001A4EEC  7C 08 02 A6 */	mflr r0
/* 801A7EF0 001A4EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7EF4 001A4EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7EF8 001A4EF8  7C 9F 23 78 */	mr r31, r4
/* 801A7EFC 001A4EFC  93 C1 00 08 */	stw r30, 8(r1)
/* 801A7F00 001A4F00  7C 7E 1B 78 */	mr r30, r3
/* 801A7F04 001A4F04  48 00 00 28 */	b lbl_801A7F2C
lbl_801A7F08:
/* 801A7F08 001A4F08  28 1E 00 00 */	cmplwi r30, 0
/* 801A7F0C 001A4F0C  41 82 00 18 */	beq lbl_801A7F24
/* 801A7F10 001A4F10  28 1F 00 00 */	cmplwi r31, 0
/* 801A7F14 001A4F14  41 82 00 10 */	beq lbl_801A7F24
/* 801A7F18 001A4F18  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801A7F1C 001A4F1C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801A7F20 001A4F20  48 01 00 85 */	bl HSD_PObjResolveRefsAll
lbl_801A7F24:
/* 801A7F24 001A4F24  83 DE 00 04 */	lwz r30, 4(r30)
/* 801A7F28 001A4F28  83 FF 00 04 */	lwz r31, 4(r31)
lbl_801A7F2C:
/* 801A7F2C 001A4F2C  28 1E 00 00 */	cmplwi r30, 0
/* 801A7F30 001A4F30  41 82 00 0C */	beq lbl_801A7F3C
/* 801A7F34 001A4F34  28 1F 00 00 */	cmplwi r31, 0
/* 801A7F38 001A4F38  40 82 FF D0 */	bne lbl_801A7F08
lbl_801A7F3C:
/* 801A7F3C 001A4F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7F40 001A4F40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7F44 001A4F44  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A7F48 001A4F48  7C 08 03 A6 */	mtlr r0
/* 801A7F4C 001A4F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7F50 001A4F50  4E 80 00 20 */	blr 

.global HSD_DObjDisp
HSD_DObjDisp:
/* 801A7F54 001A4F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A7F58 001A4F58  7C 08 02 A6 */	mflr r0
/* 801A7F5C 001A4F5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A7F60 001A4F60  39 61 00 20 */	addi r11, r1, 0x20
/* 801A7F64 001A4F64  4B FE 63 15 */	bl func_8018E278
/* 801A7F68 001A4F68  7C 7A 1B 78 */	mr r26, r3
/* 801A7F6C 001A4F6C  7C 9B 23 78 */	mr r27, r4
/* 801A7F70 001A4F70  80 63 00 08 */	lwz r3, 8(r3)
/* 801A7F74 001A4F74  7C BC 2B 78 */	mr r28, r5
/* 801A7F78 001A4F78  7C DD 33 78 */	mr r29, r6
/* 801A7F7C 001A4F7C  48 00 4C D5 */	bl HSD_MObjSetCurrent
/* 801A7F80 001A4F80  57 BF 01 4B */	rlwinm. r31, r29, 0, 5, 5
/* 801A7F84 001A4F84  40 82 00 1C */	bne lbl_801A7FA0
/* 801A7F88 001A4F88  80 7A 00 08 */	lwz r3, 8(r26)
/* 801A7F8C 001A4F8C  7F A4 EB 78 */	mr r4, r29
/* 801A7F90 001A4F90  80 A3 00 00 */	lwz r5, 0(r3)
/* 801A7F94 001A4F94  81 85 00 3C */	lwz r12, 0x3c(r5)
/* 801A7F98 001A4F98  7D 89 03 A6 */	mtctr r12
/* 801A7F9C 001A4F9C  4E 80 04 21 */	bctrl 
lbl_801A7FA0:
/* 801A7FA0 001A4FA0  83 DA 00 0C */	lwz r30, 0xc(r26)
/* 801A7FA4 001A4FA4  48 00 00 28 */	b lbl_801A7FCC
lbl_801A7FA8:
/* 801A7FA8 001A4FA8  80 DE 00 00 */	lwz r6, 0(r30)
/* 801A7FAC 001A4FAC  7F C3 F3 78 */	mr r3, r30
/* 801A7FB0 001A4FB0  7F 64 DB 78 */	mr r4, r27
/* 801A7FB4 001A4FB4  7F 85 E3 78 */	mr r5, r28
/* 801A7FB8 001A4FB8  81 86 00 3C */	lwz r12, 0x3c(r6)
/* 801A7FBC 001A4FBC  7F A6 EB 78 */	mr r6, r29
/* 801A7FC0 001A4FC0  7D 89 03 A6 */	mtctr r12
/* 801A7FC4 001A4FC4  4E 80 04 21 */	bctrl 
/* 801A7FC8 001A4FC8  83 DE 00 04 */	lwz r30, 4(r30)
lbl_801A7FCC:
/* 801A7FCC 001A4FCC  28 1E 00 00 */	cmplwi r30, 0
/* 801A7FD0 001A4FD0  40 82 FF D8 */	bne lbl_801A7FA8
/* 801A7FD4 001A4FD4  28 1F 00 00 */	cmplwi r31, 0
/* 801A7FD8 001A4FD8  40 82 00 1C */	bne lbl_801A7FF4
/* 801A7FDC 001A4FDC  80 7A 00 08 */	lwz r3, 8(r26)
/* 801A7FE0 001A4FE0  7F A4 EB 78 */	mr r4, r29
/* 801A7FE4 001A4FE4  80 A3 00 00 */	lwz r5, 0(r3)
/* 801A7FE8 001A4FE8  81 85 00 50 */	lwz r12, 0x50(r5)
/* 801A7FEC 001A4FEC  7D 89 03 A6 */	mtctr r12
/* 801A7FF0 001A4FF0  4E 80 04 21 */	bctrl 
lbl_801A7FF4:
/* 801A7FF4 001A4FF4  38 60 00 00 */	li r3, 0
/* 801A7FF8 001A4FF8  48 00 4C 59 */	bl HSD_MObjSetCurrent
/* 801A7FFC 001A4FFC  39 61 00 20 */	addi r11, r1, 0x20
/* 801A8000 001A5000  4B FE 62 C5 */	bl func_8018E2C4
/* 801A8004 001A5004  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A8008 001A5008  7C 08 03 A6 */	mtlr r0
/* 801A800C 001A500C  38 21 00 20 */	addi r1, r1, 0x20
/* 801A8010 001A5010  4E 80 00 20 */	blr 

.global DObjRelease
DObjRelease:
/* 801A8014 001A5014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8018 001A5018  7C 08 02 A6 */	mflr r0
/* 801A801C 001A501C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8020 001A5020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A8024 001A5024  7C 7F 1B 78 */	mr r31, r3
/* 801A8028 001A5028  80 63 00 08 */	lwz r3, 8(r3)
/* 801A802C 001A502C  48 00 60 95 */	bl HSD_MObjRemove
/* 801A8030 001A5030  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801A8034 001A5034  48 00 FE A1 */	bl HSD_PObjRemoveAll
/* 801A8038 001A5038  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801A803C 001A503C  48 00 67 D1 */	bl HSD_AObjRemove
/* 801A8040 001A5040  3C 80 80 22 */	lis r4, lbl_80218A10@ha
/* 801A8044 001A5044  7F E3 FB 78 */	mr r3, r31
/* 801A8048 001A5048  38 84 8A 10 */	addi r4, r4, lbl_80218A10@l
/* 801A804C 001A504C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 801A8050 001A5050  81 84 00 30 */	lwz r12, 0x30(r4)
/* 801A8054 001A5054  7D 89 03 A6 */	mtctr r12
/* 801A8058 001A5058  4E 80 04 21 */	bctrl 
/* 801A805C 001A505C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A8060 001A5060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A8064 001A5064  7C 08 03 A6 */	mtlr r0
/* 801A8068 001A5068  38 21 00 10 */	addi r1, r1, 0x10
/* 801A806C 001A506C  4E 80 00 20 */	blr 

.global DObjAmnesia
DObjAmnesia:
/* 801A8070 001A5070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8074 001A5074  7C 08 02 A6 */	mflr r0
/* 801A8078 001A5078  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A807C 001A507C  80 0D 8F 98 */	lwz r0, lbl_802778B8-_SDA_BASE_(r13)
/* 801A8080 001A5080  7C 03 00 40 */	cmplw r3, r0
/* 801A8084 001A5084  40 82 00 0C */	bne lbl_801A8090
/* 801A8088 001A5088  38 00 00 00 */	li r0, 0
/* 801A808C 001A508C  90 0D 8F 98 */	stw r0, lbl_802778B8-_SDA_BASE_(r13)
lbl_801A8090:
/* 801A8090 001A5090  3C 80 80 22 */	lis r4, lbl_80218A10@ha
/* 801A8094 001A5094  38 84 8A 10 */	addi r4, r4, lbl_80218A10@l
/* 801A8098 001A5098  80 84 00 14 */	lwz r4, 0x14(r4)
/* 801A809C 001A509C  81 84 00 38 */	lwz r12, 0x38(r4)
/* 801A80A0 001A50A0  7D 89 03 A6 */	mtctr r12
/* 801A80A4 001A50A4  4E 80 04 21 */	bctrl 
/* 801A80A8 001A50A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A80AC 001A50AC  7C 08 03 A6 */	mtlr r0
/* 801A80B0 001A50B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A80B4 001A50B4  4E 80 00 20 */	blr 

.global DObjInfoInit
DObjInfoInit:
/* 801A80B8 001A50B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A80BC 001A50BC  7C 08 02 A6 */	mflr r0
/* 801A80C0 001A50C0  3C 80 80 22 */	lis r4, lbl_80218A10@ha
/* 801A80C4 001A50C4  3C 60 80 22 */	lis r3, lbl_8021B128@ha
/* 801A80C8 001A50C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A80CC 001A50CC  38 E0 00 48 */	li r7, 0x48
/* 801A80D0 001A50D0  39 00 00 18 */	li r8, 0x18
/* 801A80D4 001A50D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A80D8 001A50D8  3B E4 8A 10 */	addi r31, r4, lbl_80218A10@l
/* 801A80DC 001A50DC  38 83 B1 28 */	addi r4, r3, lbl_8021B128@l
/* 801A80E0 001A50E0  38 7F 00 00 */	addi r3, r31, 0
/* 801A80E4 001A50E4  38 BF 00 FC */	addi r5, r31, 0xfc
/* 801A80E8 001A50E8  38 DF 01 14 */	addi r6, r31, 0x114
/* 801A80EC 001A50EC  48 02 63 69 */	bl hsdInitClassInfo
/* 801A80F0 001A50F0  3C C0 80 1B */	lis r6, DObjRelease@ha
/* 801A80F4 001A50F4  3C A0 80 1B */	lis r5, DObjAmnesia@ha
/* 801A80F8 001A50F8  3C 80 80 1A */	lis r4, HSD_DObjDisp@ha
/* 801A80FC 001A50FC  3C 60 80 1A */	lis r3, DObjLoad@ha
/* 801A8100 001A5100  38 E6 80 14 */	addi r7, r6, DObjRelease@l
/* 801A8104 001A5104  38 DF 00 00 */	addi r6, r31, 0
/* 801A8108 001A5108  38 A5 80 70 */	addi r5, r5, DObjAmnesia@l
/* 801A810C 001A510C  38 84 7F 54 */	addi r4, r4, HSD_DObjDisp@l
/* 801A8110 001A5110  38 03 7C 70 */	addi r0, r3, DObjLoad@l
/* 801A8114 001A5114  90 E6 00 30 */	stw r7, 0x30(r6)
/* 801A8118 001A5118  90 A6 00 38 */	stw r5, 0x38(r6)
/* 801A811C 001A511C  90 86 00 3C */	stw r4, 0x3c(r6)
/* 801A8120 001A5120  90 06 00 40 */	stw r0, 0x40(r6)
/* 801A8124 001A5124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A8128 001A5128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A812C 001A512C  7C 08 03 A6 */	mtlr r0
/* 801A8130 001A5130  38 21 00 10 */	addi r1, r1, 0x10
/* 801A8134 001A5134  4E 80 00 20 */	blr 
