.include "macros.inc"

.section .text  # 0x801789FC - 0x80178D98

.global func_801789FC
func_801789FC:
/* 801789FC 001759FC  7C 08 02 A6 */	mflr r0
/* 80178A00 00175A00  90 01 00 04 */	stw r0, 4(r1)
/* 80178A04 00175A04  94 21 FF F8 */	stwu r1, -8(r1)
/* 80178A08 00175A08  80 0D 8D D4 */	lwz r0, lbl_802776F4-_SDA_BASE_(r13)
/* 80178A0C 00175A0C  28 00 00 00 */	cmplwi r0, 0
/* 80178A10 00175A10  40 82 00 1C */	bne lbl_80178A2C
/* 80178A14 00175A14  80 6D 8D C8 */	lwz r3, lbl_802776E8-_SDA_BASE_(r13)
/* 80178A18 00175A18  28 03 00 00 */	cmplwi r3, 0
/* 80178A1C 00175A1C  41 82 00 10 */	beq lbl_80178A2C
/* 80178A20 00175A20  90 6D 8D D4 */	stw r3, lbl_802776F4-_SDA_BASE_(r13)
/* 80178A24 00175A24  80 03 00 00 */	lwz r0, 0(r3)
/* 80178A28 00175A28  90 0D 8D C8 */	stw r0, lbl_802776E8-_SDA_BASE_(r13)
lbl_80178A2C:
/* 80178A2C 00175A2C  80 AD 8D D4 */	lwz r5, lbl_802776F4-_SDA_BASE_(r13)
/* 80178A30 00175A30  28 05 00 00 */	cmplwi r5, 0
/* 80178A34 00175A34  41 82 00 B8 */	beq lbl_80178AEC
/* 80178A38 00175A38  80 C5 00 18 */	lwz r6, 0x18(r5)
/* 80178A3C 00175A3C  80 0D 8D E0 */	lwz r0, lbl_80277700-_SDA_BASE_(r13)
/* 80178A40 00175A40  7C 06 00 40 */	cmplw r6, r0
/* 80178A44 00175A44  41 81 00 3C */	bgt lbl_80178A80
/* 80178A48 00175A48  80 65 00 08 */	lwz r3, 8(r5)
/* 80178A4C 00175A4C  28 03 00 00 */	cmplwi r3, 0
/* 80178A50 00175A50  40 82 00 14 */	bne lbl_80178A64
/* 80178A54 00175A54  80 85 00 10 */	lwz r4, 0x10(r5)
/* 80178A58 00175A58  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 80178A5C 00175A5C  4B FF E5 09 */	bl func_80176F64
/* 80178A60 00175A60  48 00 00 10 */	b lbl_80178A70
lbl_80178A64:
/* 80178A64 00175A64  80 85 00 14 */	lwz r4, 0x14(r5)
/* 80178A68 00175A68  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80178A6C 00175A6C  4B FF E4 F9 */	bl func_80176F64
lbl_80178A70:
/* 80178A70 00175A70  80 6D 8D D4 */	lwz r3, lbl_802776F4-_SDA_BASE_(r13)
/* 80178A74 00175A74  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80178A78 00175A78  90 0D 8D DC */	stw r0, lbl_802776FC-_SDA_BASE_(r13)
/* 80178A7C 00175A7C  48 00 00 34 */	b lbl_80178AB0
lbl_80178A80:
/* 80178A80 00175A80  80 65 00 08 */	lwz r3, 8(r5)
/* 80178A84 00175A84  28 03 00 00 */	cmplwi r3, 0
/* 80178A88 00175A88  40 82 00 18 */	bne lbl_80178AA0
/* 80178A8C 00175A8C  80 85 00 10 */	lwz r4, 0x10(r5)
/* 80178A90 00175A90  7C 06 03 78 */	mr r6, r0
/* 80178A94 00175A94  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 80178A98 00175A98  4B FF E4 CD */	bl func_80176F64
/* 80178A9C 00175A9C  48 00 00 14 */	b lbl_80178AB0
lbl_80178AA0:
/* 80178AA0 00175AA0  80 85 00 14 */	lwz r4, 0x14(r5)
/* 80178AA4 00175AA4  7C 06 03 78 */	mr r6, r0
/* 80178AA8 00175AA8  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80178AAC 00175AAC  4B FF E4 B9 */	bl func_80176F64
lbl_80178AB0:
/* 80178AB0 00175AB0  80 6D 8D D4 */	lwz r3, lbl_802776F4-_SDA_BASE_(r13)
/* 80178AB4 00175AB4  80 8D 8D E0 */	lwz r4, lbl_80277700-_SDA_BASE_(r13)
/* 80178AB8 00175AB8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80178ABC 00175ABC  7C 04 00 50 */	subf r0, r4, r0
/* 80178AC0 00175AC0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80178AC4 00175AC4  80 8D 8D D4 */	lwz r4, lbl_802776F4-_SDA_BASE_(r13)
/* 80178AC8 00175AC8  80 0D 8D E0 */	lwz r0, lbl_80277700-_SDA_BASE_(r13)
/* 80178ACC 00175ACC  80 64 00 10 */	lwz r3, 0x10(r4)
/* 80178AD0 00175AD0  7C 03 02 14 */	add r0, r3, r0
/* 80178AD4 00175AD4  90 04 00 10 */	stw r0, 0x10(r4)
/* 80178AD8 00175AD8  80 8D 8D D4 */	lwz r4, lbl_802776F4-_SDA_BASE_(r13)
/* 80178ADC 00175ADC  80 0D 8D E0 */	lwz r0, lbl_80277700-_SDA_BASE_(r13)
/* 80178AE0 00175AE0  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80178AE4 00175AE4  7C 03 02 14 */	add r0, r3, r0
/* 80178AE8 00175AE8  90 04 00 14 */	stw r0, 0x14(r4)
lbl_80178AEC:
/* 80178AEC 00175AEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80178AF0 00175AF0  38 21 00 08 */	addi r1, r1, 8
/* 80178AF4 00175AF4  7C 08 03 A6 */	mtlr r0
/* 80178AF8 00175AF8  4E 80 00 20 */	blr 
lbl_80178AFC:
/* 80178AFC 00175AFC  4E 80 00 20 */	blr 
lbl_80178B00:
/* 80178B00 00175B00  7C 08 02 A6 */	mflr r0
/* 80178B04 00175B04  90 01 00 04 */	stw r0, 4(r1)
/* 80178B08 00175B08  94 21 FF F8 */	stwu r1, -8(r1)
/* 80178B0C 00175B0C  81 8D 8D D8 */	lwz r12, lbl_802776F8-_SDA_BASE_(r13)
/* 80178B10 00175B10  28 0C 00 00 */	cmplwi r12, 0
/* 80178B14 00175B14  41 82 00 20 */	beq lbl_80178B34
/* 80178B18 00175B18  80 6D 8D D0 */	lwz r3, lbl_802776F0-_SDA_BASE_(r13)
/* 80178B1C 00175B1C  7D 88 03 A6 */	mtlr r12
/* 80178B20 00175B20  4E 80 00 21 */	blrl 
/* 80178B24 00175B24  38 00 00 00 */	li r0, 0
/* 80178B28 00175B28  90 0D 8D D0 */	stw r0, lbl_802776F0-_SDA_BASE_(r13)
/* 80178B2C 00175B2C  90 0D 8D D8 */	stw r0, lbl_802776F8-_SDA_BASE_(r13)
/* 80178B30 00175B30  48 00 00 28 */	b lbl_80178B58
lbl_80178B34:
/* 80178B34 00175B34  81 8D 8D DC */	lwz r12, lbl_802776FC-_SDA_BASE_(r13)
/* 80178B38 00175B38  28 0C 00 00 */	cmplwi r12, 0
/* 80178B3C 00175B3C  41 82 00 1C */	beq lbl_80178B58
/* 80178B40 00175B40  80 6D 8D D4 */	lwz r3, lbl_802776F4-_SDA_BASE_(r13)
/* 80178B44 00175B44  7D 88 03 A6 */	mtlr r12
/* 80178B48 00175B48  4E 80 00 21 */	blrl 
/* 80178B4C 00175B4C  38 00 00 00 */	li r0, 0
/* 80178B50 00175B50  90 0D 8D D4 */	stw r0, lbl_802776F4-_SDA_BASE_(r13)
/* 80178B54 00175B54  90 0D 8D DC */	stw r0, lbl_802776FC-_SDA_BASE_(r13)
lbl_80178B58:
/* 80178B58 00175B58  80 CD 8D C0 */	lwz r6, lbl_802776E0-_SDA_BASE_(r13)
/* 80178B5C 00175B5C  28 06 00 00 */	cmplwi r6, 0
/* 80178B60 00175B60  41 82 00 4C */	beq lbl_80178BAC
/* 80178B64 00175B64  80 66 00 08 */	lwz r3, 8(r6)
/* 80178B68 00175B68  28 03 00 00 */	cmplwi r3, 0
/* 80178B6C 00175B6C  40 82 00 18 */	bne lbl_80178B84
/* 80178B70 00175B70  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80178B74 00175B74  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 80178B78 00175B78  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 80178B7C 00175B7C  4B FF E3 E9 */	bl func_80176F64
/* 80178B80 00175B80  48 00 00 14 */	b lbl_80178B94
lbl_80178B84:
/* 80178B84 00175B84  80 86 00 14 */	lwz r4, 0x14(r6)
/* 80178B88 00175B88  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 80178B8C 00175B8C  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 80178B90 00175B90  4B FF E3 D5 */	bl func_80176F64
lbl_80178B94:
/* 80178B94 00175B94  80 6D 8D C0 */	lwz r3, lbl_802776E0-_SDA_BASE_(r13)
/* 80178B98 00175B98  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80178B9C 00175B9C  90 0D 8D D8 */	stw r0, lbl_802776F8-_SDA_BASE_(r13)
/* 80178BA0 00175BA0  90 6D 8D D0 */	stw r3, lbl_802776F0-_SDA_BASE_(r13)
/* 80178BA4 00175BA4  80 03 00 00 */	lwz r0, 0(r3)
/* 80178BA8 00175BA8  90 0D 8D C0 */	stw r0, lbl_802776E0-_SDA_BASE_(r13)
lbl_80178BAC:
/* 80178BAC 00175BAC  80 0D 8D D0 */	lwz r0, lbl_802776F0-_SDA_BASE_(r13)
/* 80178BB0 00175BB0  28 00 00 00 */	cmplwi r0, 0
/* 80178BB4 00175BB4  40 82 00 08 */	bne lbl_80178BBC
/* 80178BB8 00175BB8  4B FF FE 45 */	bl func_801789FC
lbl_80178BBC:
/* 80178BBC 00175BBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80178BC0 00175BC0  38 21 00 08 */	addi r1, r1, 8
/* 80178BC4 00175BC4  7C 08 03 A6 */	mtlr r0
/* 80178BC8 00175BC8  4E 80 00 20 */	blr 

.global func_80178BCC
func_80178BCC:
/* 80178BCC 00175BCC  7C 08 02 A6 */	mflr r0
/* 80178BD0 00175BD0  90 01 00 04 */	stw r0, 4(r1)
/* 80178BD4 00175BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80178BD8 00175BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80178BDC 00175BDC  80 0D 8D E4 */	lwz r0, lbl_80277704-_SDA_BASE_(r13)
/* 80178BE0 00175BE0  2C 00 00 01 */	cmpwi r0, 1
/* 80178BE4 00175BE4  41 82 00 44 */	beq lbl_80178C28
/* 80178BE8 00175BE8  80 6D 81 D0 */	lwz r3, lbl_80276AF0-_SDA_BASE_(r13)
/* 80178BEC 00175BEC  4B FE CD B1 */	bl func_8016599C
/* 80178BF0 00175BF0  3B E0 00 00 */	li r31, 0
/* 80178BF4 00175BF4  38 00 10 00 */	li r0, 0x1000
/* 80178BF8 00175BF8  93 ED 8D C8 */	stw r31, lbl_802776E8-_SDA_BASE_(r13)
/* 80178BFC 00175BFC  3C 60 80 18 */	lis r3, lbl_80178B00@ha
/* 80178C00 00175C00  93 ED 8D C0 */	stw r31, lbl_802776E0-_SDA_BASE_(r13)
/* 80178C04 00175C04  38 63 8B 00 */	addi r3, r3, lbl_80178B00@l
/* 80178C08 00175C08  90 0D 8D E0 */	stw r0, lbl_80277700-_SDA_BASE_(r13)
/* 80178C0C 00175C0C  4B FF E3 15 */	bl func_80176F20
/* 80178C10 00175C10  38 00 00 01 */	li r0, 1
/* 80178C14 00175C14  93 ED 8D D0 */	stw r31, lbl_802776F0-_SDA_BASE_(r13)
/* 80178C18 00175C18  93 ED 8D D4 */	stw r31, lbl_802776F4-_SDA_BASE_(r13)
/* 80178C1C 00175C1C  93 ED 8D D8 */	stw r31, lbl_802776F8-_SDA_BASE_(r13)
/* 80178C20 00175C20  93 ED 8D DC */	stw r31, lbl_802776FC-_SDA_BASE_(r13)
/* 80178C24 00175C24  90 0D 8D E4 */	stw r0, lbl_80277704-_SDA_BASE_(r13)
lbl_80178C28:
/* 80178C28 00175C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80178C2C 00175C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80178C30 00175C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80178C34 00175C34  7C 08 03 A6 */	mtlr r0
/* 80178C38 00175C38  4E 80 00 20 */	blr 

.global func_80178C3C
func_80178C3C:
/* 80178C3C 00175C3C  7C 08 02 A6 */	mflr r0
/* 80178C40 00175C40  28 0A 00 00 */	cmplwi r10, 0
/* 80178C44 00175C44  90 01 00 04 */	stw r0, 4(r1)
/* 80178C48 00175C48  38 00 00 00 */	li r0, 0
/* 80178C4C 00175C4C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80178C50 00175C50  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80178C54 00175C54  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80178C58 00175C58  3B C6 00 00 */	addi r30, r6, 0
/* 80178C5C 00175C5C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80178C60 00175C60  3B A3 00 00 */	addi r29, r3, 0
/* 80178C64 00175C64  90 03 00 00 */	stw r0, 0(r3)
/* 80178C68 00175C68  90 83 00 04 */	stw r4, 4(r3)
/* 80178C6C 00175C6C  90 A3 00 08 */	stw r5, 8(r3)
/* 80178C70 00175C70  90 E3 00 10 */	stw r7, 0x10(r3)
/* 80178C74 00175C74  91 03 00 14 */	stw r8, 0x14(r3)
/* 80178C78 00175C78  91 23 00 18 */	stw r9, 0x18(r3)
/* 80178C7C 00175C7C  41 82 00 0C */	beq lbl_80178C88
/* 80178C80 00175C80  91 5D 00 1C */	stw r10, 0x1c(r29)
/* 80178C84 00175C84  48 00 00 10 */	b lbl_80178C94
lbl_80178C88:
/* 80178C88 00175C88  3C 60 80 18 */	lis r3, lbl_80178AFC@ha
/* 80178C8C 00175C8C  38 03 8A FC */	addi r0, r3, lbl_80178AFC@l
/* 80178C90 00175C90  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_80178C94:
/* 80178C94 00175C94  4B FF 0E C5 */	bl func_80169B58
/* 80178C98 00175C98  2C 1E 00 01 */	cmpwi r30, 1
/* 80178C9C 00175C9C  3B E3 00 00 */	addi r31, r3, 0
/* 80178CA0 00175CA0  41 82 00 38 */	beq lbl_80178CD8
/* 80178CA4 00175CA4  40 80 00 54 */	bge lbl_80178CF8
/* 80178CA8 00175CA8  2C 1E 00 00 */	cmpwi r30, 0
/* 80178CAC 00175CAC  40 80 00 08 */	bge lbl_80178CB4
/* 80178CB0 00175CB0  48 00 00 48 */	b lbl_80178CF8
lbl_80178CB4:
/* 80178CB4 00175CB4  80 0D 8D C8 */	lwz r0, lbl_802776E8-_SDA_BASE_(r13)
/* 80178CB8 00175CB8  28 00 00 00 */	cmplwi r0, 0
/* 80178CBC 00175CBC  41 82 00 10 */	beq lbl_80178CCC
/* 80178CC0 00175CC0  80 6D 8D CC */	lwz r3, lbl_802776EC-_SDA_BASE_(r13)
/* 80178CC4 00175CC4  93 A3 00 00 */	stw r29, 0(r3)
/* 80178CC8 00175CC8  48 00 00 08 */	b lbl_80178CD0
lbl_80178CCC:
/* 80178CCC 00175CCC  93 AD 8D C8 */	stw r29, lbl_802776E8-_SDA_BASE_(r13)
lbl_80178CD0:
/* 80178CD0 00175CD0  93 AD 8D CC */	stw r29, lbl_802776EC-_SDA_BASE_(r13)
/* 80178CD4 00175CD4  48 00 00 24 */	b lbl_80178CF8
lbl_80178CD8:
/* 80178CD8 00175CD8  80 0D 8D C0 */	lwz r0, lbl_802776E0-_SDA_BASE_(r13)
/* 80178CDC 00175CDC  28 00 00 00 */	cmplwi r0, 0
/* 80178CE0 00175CE0  41 82 00 10 */	beq lbl_80178CF0
/* 80178CE4 00175CE4  80 6D 8D C4 */	lwz r3, lbl_802776E4-_SDA_BASE_(r13)
/* 80178CE8 00175CE8  93 A3 00 00 */	stw r29, 0(r3)
/* 80178CEC 00175CEC  48 00 00 08 */	b lbl_80178CF4
lbl_80178CF0:
/* 80178CF0 00175CF0  93 AD 8D C0 */	stw r29, lbl_802776E0-_SDA_BASE_(r13)
lbl_80178CF4:
/* 80178CF4 00175CF4  93 AD 8D C4 */	stw r29, lbl_802776E4-_SDA_BASE_(r13)
lbl_80178CF8:
/* 80178CF8 00175CF8  80 0D 8D D0 */	lwz r0, lbl_802776F0-_SDA_BASE_(r13)
/* 80178CFC 00175CFC  28 00 00 00 */	cmplwi r0, 0
/* 80178D00 00175D00  40 82 00 74 */	bne lbl_80178D74
/* 80178D04 00175D04  80 0D 8D D4 */	lwz r0, lbl_802776F4-_SDA_BASE_(r13)
/* 80178D08 00175D08  28 00 00 00 */	cmplwi r0, 0
/* 80178D0C 00175D0C  40 82 00 68 */	bne lbl_80178D74
/* 80178D10 00175D10  80 CD 8D C0 */	lwz r6, lbl_802776E0-_SDA_BASE_(r13)
/* 80178D14 00175D14  28 06 00 00 */	cmplwi r6, 0
/* 80178D18 00175D18  41 82 00 4C */	beq lbl_80178D64
/* 80178D1C 00175D1C  80 66 00 08 */	lwz r3, 8(r6)
/* 80178D20 00175D20  28 03 00 00 */	cmplwi r3, 0
/* 80178D24 00175D24  40 82 00 18 */	bne lbl_80178D3C
/* 80178D28 00175D28  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80178D2C 00175D2C  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 80178D30 00175D30  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 80178D34 00175D34  4B FF E2 31 */	bl func_80176F64
/* 80178D38 00175D38  48 00 00 14 */	b lbl_80178D4C
lbl_80178D3C:
/* 80178D3C 00175D3C  80 86 00 14 */	lwz r4, 0x14(r6)
/* 80178D40 00175D40  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 80178D44 00175D44  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 80178D48 00175D48  4B FF E2 1D */	bl func_80176F64
lbl_80178D4C:
/* 80178D4C 00175D4C  80 6D 8D C0 */	lwz r3, lbl_802776E0-_SDA_BASE_(r13)
/* 80178D50 00175D50  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80178D54 00175D54  90 0D 8D D8 */	stw r0, lbl_802776F8-_SDA_BASE_(r13)
/* 80178D58 00175D58  90 6D 8D D0 */	stw r3, lbl_802776F0-_SDA_BASE_(r13)
/* 80178D5C 00175D5C  80 03 00 00 */	lwz r0, 0(r3)
/* 80178D60 00175D60  90 0D 8D C0 */	stw r0, lbl_802776E0-_SDA_BASE_(r13)
lbl_80178D64:
/* 80178D64 00175D64  80 0D 8D D0 */	lwz r0, lbl_802776F0-_SDA_BASE_(r13)
/* 80178D68 00175D68  28 00 00 00 */	cmplwi r0, 0
/* 80178D6C 00175D6C  40 82 00 08 */	bne lbl_80178D74
/* 80178D70 00175D70  4B FF FC 8D */	bl func_801789FC
lbl_80178D74:
/* 80178D74 00175D74  7F E3 FB 78 */	mr r3, r31
/* 80178D78 00175D78  4B FF 0E 09 */	bl func_80169B80
/* 80178D7C 00175D7C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80178D80 00175D80  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80178D84 00175D84  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80178D88 00175D88  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 80178D8C 00175D8C  38 21 00 38 */	addi r1, r1, 0x38
/* 80178D90 00175D90  7C 08 03 A6 */	mtlr r0
/* 80178D94 00175D94  4E 80 00 20 */	blr 
