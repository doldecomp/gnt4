.include "macros.inc"

.section .text  # 0x801A69B4 - 0x801A6E3C

.global psInitAppSRT
psInitAppSRT:
/* 801A69B4 001A39B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A69B8 001A39B8  7C 08 02 A6 */	mflr r0
/* 801A69BC 001A39BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A69C0 001A39C0  38 00 00 00 */	li r0, 0
/* 801A69C4 001A39C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A69C8 001A39C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A69CC 001A39CC  7C 9E 23 78 */	mr r30, r4
/* 801A69D0 001A39D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A69D4 001A39D4  3B A0 00 00 */	li r29, 0
/* 801A69D8 001A39D8  93 81 00 10 */	stw r28, 0x10(r1)
/* 801A69DC 001A39DC  7C 7C 1B 78 */	mr r28, r3
/* 801A69E0 001A39E0  B0 0D 8E FA */	sth r0, lbl_8027781A-_SDA_BASE_(r13)
/* 801A69E4 001A39E4  B0 0D 8E F4 */	sth r0, lbl_80277814-_SDA_BASE_(r13)
/* 801A69E8 001A39E8  B3 CD 8F 78 */	sth r30, lbl_80277898-_SDA_BASE_(r13)
/* 801A69EC 001A39EC  90 0D 8F 7C */	stw r0, lbl_8027789C-_SDA_BASE_(r13)
/* 801A69F0 001A39F0  48 00 00 38 */	b lbl_801A6A28
lbl_801A69F4:
/* 801A69F4 001A39F4  7F C3 F3 78 */	mr r3, r30
/* 801A69F8 001A39F8  48 02 49 45 */	bl HSD_Alloc
/* 801A69FC 001A39FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 801A6A00 001A3A00  40 82 00 0C */	bne lbl_801A6A0C
/* 801A6A04 001A3A04  7F A3 EB 78 */	mr r3, r29
/* 801A6A08 001A3A08  48 00 00 2C */	b lbl_801A6A34
lbl_801A6A0C:
/* 801A6A0C 001A3A0C  7F C5 F3 78 */	mr r5, r30
/* 801A6A10 001A3A10  38 80 00 00 */	li r4, 0
/* 801A6A14 001A3A14  4B E5 EA D1 */	bl memset
/* 801A6A18 001A3A18  80 0D 8F 7C */	lwz r0, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6A1C 001A3A1C  3B BD 00 01 */	addi r29, r29, 1
/* 801A6A20 001A3A20  90 1F 00 00 */	stw r0, 0(r31)
/* 801A6A24 001A3A24  93 ED 8F 7C */	stw r31, lbl_8027789C-_SDA_BASE_(r13)
lbl_801A6A28:
/* 801A6A28 001A3A28  7C 1D E0 00 */	cmpw r29, r28
/* 801A6A2C 001A3A2C  41 80 FF C8 */	blt lbl_801A69F4
/* 801A6A30 001A3A30  7F A3 EB 78 */	mr r3, r29
lbl_801A6A34:
/* 801A6A34 001A3A34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A6A38 001A3A38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A6A3C 001A3A3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A6A40 001A3A40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A6A44 001A3A44  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801A6A48 001A3A48  7C 08 03 A6 */	mtlr r0
/* 801A6A4C 001A3A4C  38 21 00 20 */	addi r1, r1, 0x20
/* 801A6A50 001A3A50  4E 80 00 20 */	blr 

.global psRemoveAppSRT
psRemoveAppSRT:
/* 801A6A54 001A3A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A6A58 001A3A58  7C 08 02 A6 */	mflr r0
/* 801A6A5C 001A3A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A6A60 001A3A60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A6A64 001A3A64  80 6D 8F 7C */	lwz r3, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6A68 001A3A68  48 00 00 10 */	b lbl_801A6A78
lbl_801A6A6C:
/* 801A6A6C 001A3A6C  83 E3 00 00 */	lwz r31, 0(r3)
/* 801A6A70 001A3A70  48 02 48 9D */	bl HSD_Free
/* 801A6A74 001A3A74  7F E3 FB 78 */	mr r3, r31
lbl_801A6A78:
/* 801A6A78 001A3A78  28 03 00 00 */	cmplwi r3, 0
/* 801A6A7C 001A3A7C  40 82 FF F0 */	bne lbl_801A6A6C
/* 801A6A80 001A3A80  38 00 00 00 */	li r0, 0
/* 801A6A84 001A3A84  90 0D 8F 7C */	stw r0, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6A88 001A3A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A6A8C 001A3A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A6A90 001A3A90  7C 08 03 A6 */	mtlr r0
/* 801A6A94 001A3A94  38 21 00 10 */	addi r1, r1, 0x10
/* 801A6A98 001A3A98  4E 80 00 20 */	blr 

.global psAddGeneratorAppSRT
psAddGeneratorAppSRT:
/* 801A6A9C 001A3A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A6AA0 001A3AA0  7C 08 02 A6 */	mflr r0
/* 801A6AA4 001A3AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A6AA8 001A3AA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A6AAC 001A3AAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A6AB0 001A3AB0  7C 9E 23 78 */	mr r30, r4
/* 801A6AB4 001A3AB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A6AB8 001A3AB8  7C 7D 1B 78 */	mr r29, r3
/* 801A6ABC 001A3ABC  80 0D 8F 7C */	lwz r0, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6AC0 001A3AC0  A3 E3 00 1C */	lhz r31, 0x1c(r3)
/* 801A6AC4 001A3AC4  28 00 00 00 */	cmplwi r0, 0
/* 801A6AC8 001A3AC8  40 82 00 24 */	bne lbl_801A6AEC
/* 801A6ACC 001A3ACC  A0 6D 8F 78 */	lhz r3, lbl_80277898-_SDA_BASE_(r13)
/* 801A6AD0 001A3AD0  48 02 48 6D */	bl HSD_Alloc
/* 801A6AD4 001A3AD4  28 03 00 00 */	cmplwi r3, 0
/* 801A6AD8 001A3AD8  90 6D 8F 7C */	stw r3, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6ADC 001A3ADC  41 82 00 10 */	beq lbl_801A6AEC
/* 801A6AE0 001A3AE0  A0 AD 8F 78 */	lhz r5, lbl_80277898-_SDA_BASE_(r13)
/* 801A6AE4 001A3AE4  38 80 00 00 */	li r4, 0
/* 801A6AE8 001A3AE8  4B E5 E9 FD */	bl memset
lbl_801A6AEC:
/* 801A6AEC 001A3AEC  80 6D 8F 7C */	lwz r3, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6AF0 001A3AF0  28 03 00 00 */	cmplwi r3, 0
/* 801A6AF4 001A3AF4  41 82 00 80 */	beq lbl_801A6B74
/* 801A6AF8 001A3AF8  80 A3 00 00 */	lwz r5, 0(r3)
/* 801A6AFC 001A3AFC  38 80 00 00 */	li r4, 0
/* 801A6B00 001A3B00  38 00 00 01 */	li r0, 1
/* 801A6B04 001A3B04  C0 22 C2 30 */	lfs f1, lbl_8027BED0-_SDA2_BASE_(r2)
/* 801A6B08 001A3B08  90 AD 8F 7C */	stw r5, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6B0C 001A3B0C  C0 02 C2 34 */	lfs f0, lbl_8027BED4-_SDA2_BASE_(r2)
/* 801A6B10 001A3B10  90 83 00 00 */	stw r4, 0(r3)
/* 801A6B14 001A3B14  B0 03 00 32 */	sth r0, 0x32(r3)
/* 801A6B18 001A3B18  98 83 00 31 */	stb r4, 0x31(r3)
/* 801A6B1C 001A3B1C  9B C3 00 30 */	stb r30, 0x30(r3)
/* 801A6B20 001A3B20  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801A6B24 001A3B24  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 801A6B28 001A3B28  D0 23 00 08 */	stfs f1, 8(r3)
/* 801A6B2C 001A3B2C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 801A6B30 001A3B30  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 801A6B34 001A3B34  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 801A6B38 001A3B38  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801A6B3C 001A3B3C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 801A6B40 001A3B40  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801A6B44 001A3B44  90 83 00 6C */	stw r4, 0x6c(r3)
/* 801A6B48 001A3B48  98 83 00 72 */	stb r4, 0x72(r3)
/* 801A6B4C 001A3B4C  90 83 00 04 */	stw r4, 4(r3)
/* 801A6B50 001A3B50  B3 E3 00 70 */	sth r31, 0x70(r3)
/* 801A6B54 001A3B54  A0 8D 8E FA */	lhz r4, lbl_8027781A-_SDA_BASE_(r13)
/* 801A6B58 001A3B58  A0 0D 8E F4 */	lhz r0, lbl_80277814-_SDA_BASE_(r13)
/* 801A6B5C 001A3B5C  38 84 00 01 */	addi r4, r4, 1
/* 801A6B60 001A3B60  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 801A6B64 001A3B64  B0 8D 8E FA */	sth r4, lbl_8027781A-_SDA_BASE_(r13)
/* 801A6B68 001A3B68  7C 05 00 40 */	cmplw r5, r0
/* 801A6B6C 001A3B6C  40 81 00 08 */	ble lbl_801A6B74
/* 801A6B70 001A3B70  B0 AD 8E F4 */	sth r5, lbl_80277814-_SDA_BASE_(r13)
lbl_801A6B74:
/* 801A6B74 001A3B74  90 7D 00 54 */	stw r3, 0x54(r29)
/* 801A6B78 001A3B78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A6B7C 001A3B7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A6B80 001A3B80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A6B84 001A3B84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A6B88 001A3B88  7C 08 03 A6 */	mtlr r0
/* 801A6B8C 001A3B8C  38 21 00 20 */	addi r1, r1, 0x20
/* 801A6B90 001A3B90  4E 80 00 20 */	blr 

.global psAttachParticleAppSRT
psAttachParticleAppSRT:
/* 801A6B94 001A3B94  28 04 00 00 */	cmplwi r4, 0
/* 801A6B98 001A3B98  41 82 00 18 */	beq lbl_801A6BB0
/* 801A6B9C 001A3B9C  28 03 00 00 */	cmplwi r3, 0
/* 801A6BA0 001A3BA0  41 82 00 10 */	beq lbl_801A6BB0
/* 801A6BA4 001A3BA4  80 03 00 90 */	lwz r0, 0x90(r3)
/* 801A6BA8 001A3BA8  28 00 00 00 */	cmplwi r0, 0
/* 801A6BAC 001A3BAC  41 82 00 0C */	beq lbl_801A6BB8
lbl_801A6BB0:
/* 801A6BB0 001A3BB0  38 60 FF FF */	li r3, -1
/* 801A6BB4 001A3BB4  4E 80 00 20 */	blr 
lbl_801A6BB8:
/* 801A6BB8 001A3BB8  90 83 00 90 */	stw r4, 0x90(r3)
/* 801A6BBC 001A3BBC  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 801A6BC0 001A3BC0  38 03 00 01 */	addi r0, r3, 1
/* 801A6BC4 001A3BC4  B0 04 00 32 */	sth r0, 0x32(r4)
/* 801A6BC8 001A3BC8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 801A6BCC 001A3BCC  4E 80 00 20 */	blr 

.global psAttachGeneratorAppSRT
psAttachGeneratorAppSRT:
/* 801A6BD0 001A3BD0  28 04 00 00 */	cmplwi r4, 0
/* 801A6BD4 001A3BD4  41 82 00 18 */	beq lbl_801A6BEC
/* 801A6BD8 001A3BD8  28 03 00 00 */	cmplwi r3, 0
/* 801A6BDC 001A3BDC  41 82 00 10 */	beq lbl_801A6BEC
/* 801A6BE0 001A3BE0  80 03 00 54 */	lwz r0, 0x54(r3)
/* 801A6BE4 001A3BE4  28 00 00 00 */	cmplwi r0, 0
/* 801A6BE8 001A3BE8  41 82 00 0C */	beq lbl_801A6BF4
lbl_801A6BEC:
/* 801A6BEC 001A3BEC  38 60 FF FF */	li r3, -1
/* 801A6BF0 001A3BF0  4E 80 00 20 */	blr 
lbl_801A6BF4:
/* 801A6BF4 001A3BF4  90 83 00 54 */	stw r4, 0x54(r3)
/* 801A6BF8 001A3BF8  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 801A6BFC 001A3BFC  38 03 00 01 */	addi r0, r3, 1
/* 801A6C00 001A3C00  B0 04 00 32 */	sth r0, 0x32(r4)
/* 801A6C04 001A3C04  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 801A6C08 001A3C08  4E 80 00 20 */	blr 

.global psChangeParticleAppSRT
psChangeParticleAppSRT:
/* 801A6C0C 001A3C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A6C10 001A3C10  7C 08 02 A6 */	mflr r0
/* 801A6C14 001A3C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A6C18 001A3C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A6C1C 001A3C1C  7C 9F 23 79 */	or. r31, r4, r4
/* 801A6C20 001A3C20  93 C1 00 08 */	stw r30, 8(r1)
/* 801A6C24 001A3C24  7C 7E 1B 78 */	mr r30, r3
/* 801A6C28 001A3C28  41 82 00 0C */	beq lbl_801A6C34
/* 801A6C2C 001A3C2C  28 1E 00 00 */	cmplwi r30, 0
/* 801A6C30 001A3C30  40 82 00 0C */	bne lbl_801A6C3C
lbl_801A6C34:
/* 801A6C34 001A3C34  38 60 FF FF */	li r3, -1
/* 801A6C38 001A3C38  48 00 00 28 */	b lbl_801A6C60
lbl_801A6C3C:
/* 801A6C3C 001A3C3C  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 801A6C40 001A3C40  28 00 00 00 */	cmplwi r0, 0
/* 801A6C44 001A3C44  41 82 00 08 */	beq lbl_801A6C4C
/* 801A6C48 001A3C48  48 00 00 9D */	bl psRemoveParticleAppSRT
lbl_801A6C4C:
/* 801A6C4C 001A3C4C  93 FE 00 90 */	stw r31, 0x90(r30)
/* 801A6C50 001A3C50  A0 7F 00 32 */	lhz r3, 0x32(r31)
/* 801A6C54 001A3C54  38 03 00 01 */	addi r0, r3, 1
/* 801A6C58 001A3C58  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 801A6C5C 001A3C5C  54 03 04 3E */	clrlwi r3, r0, 0x10
lbl_801A6C60:
/* 801A6C60 001A3C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A6C64 001A3C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A6C68 001A3C68  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A6C6C 001A3C6C  7C 08 03 A6 */	mtlr r0
/* 801A6C70 001A3C70  38 21 00 10 */	addi r1, r1, 0x10
/* 801A6C74 001A3C74  4E 80 00 20 */	blr 

.global psChangeGeneratorAppSRT
psChangeGeneratorAppSRT:
/* 801A6C78 001A3C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A6C7C 001A3C7C  7C 08 02 A6 */	mflr r0
/* 801A6C80 001A3C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A6C84 001A3C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A6C88 001A3C88  7C 9F 23 79 */	or. r31, r4, r4
/* 801A6C8C 001A3C8C  93 C1 00 08 */	stw r30, 8(r1)
/* 801A6C90 001A3C90  7C 7E 1B 78 */	mr r30, r3
/* 801A6C94 001A3C94  41 82 00 0C */	beq lbl_801A6CA0
/* 801A6C98 001A3C98  28 1E 00 00 */	cmplwi r30, 0
/* 801A6C9C 001A3C9C  40 82 00 0C */	bne lbl_801A6CA8
lbl_801A6CA0:
/* 801A6CA0 001A3CA0  38 60 FF FF */	li r3, -1
/* 801A6CA4 001A3CA4  48 00 00 28 */	b lbl_801A6CCC
lbl_801A6CA8:
/* 801A6CA8 001A3CA8  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 801A6CAC 001A3CAC  28 00 00 00 */	cmplwi r0, 0
/* 801A6CB0 001A3CB0  41 82 00 08 */	beq lbl_801A6CB8
/* 801A6CB4 001A3CB4  48 00 00 D1 */	bl psRemoveGeneratorAppSRT
lbl_801A6CB8:
/* 801A6CB8 001A3CB8  93 FE 00 54 */	stw r31, 0x54(r30)
/* 801A6CBC 001A3CBC  A0 7F 00 32 */	lhz r3, 0x32(r31)
/* 801A6CC0 001A3CC0  38 03 00 01 */	addi r0, r3, 1
/* 801A6CC4 001A3CC4  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 801A6CC8 001A3CC8  54 03 04 3E */	clrlwi r3, r0, 0x10
lbl_801A6CCC:
/* 801A6CCC 001A3CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A6CD0 001A3CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A6CD4 001A3CD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A6CD8 001A3CD8  7C 08 03 A6 */	mtlr r0
/* 801A6CDC 001A3CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A6CE0 001A3CE0  4E 80 00 20 */	blr 

.global psRemoveParticleAppSRT
psRemoveParticleAppSRT:
/* 801A6CE4 001A3CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A6CE8 001A3CE8  7C 08 02 A6 */	mflr r0
/* 801A6CEC 001A3CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A6CF0 001A3CF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A6CF4 001A3CF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A6CF8 001A3CF8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A6CFC 001A3CFC  7C 7D 1B 78 */	mr r29, r3
/* 801A6D00 001A3D00  80 83 00 90 */	lwz r4, 0x90(r3)
/* 801A6D04 001A3D04  28 04 00 00 */	cmplwi r4, 0
/* 801A6D08 001A3D08  40 82 00 0C */	bne lbl_801A6D14
/* 801A6D0C 001A3D0C  38 60 FF FF */	li r3, -1
/* 801A6D10 001A3D10  48 00 00 58 */	b lbl_801A6D68
lbl_801A6D14:
/* 801A6D14 001A3D14  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 801A6D18 001A3D18  38 03 FF FF */	addi r0, r3, -1
/* 801A6D1C 001A3D1C  54 1E 04 3F */	clrlwi. r30, r0, 0x10
/* 801A6D20 001A3D20  B0 04 00 32 */	sth r0, 0x32(r4)
/* 801A6D24 001A3D24  40 82 00 38 */	bne lbl_801A6D5C
/* 801A6D28 001A3D28  83 FD 00 90 */	lwz r31, 0x90(r29)
/* 801A6D2C 001A3D2C  81 9F 00 6C */	lwz r12, 0x6c(r31)
/* 801A6D30 001A3D30  28 0C 00 00 */	cmplwi r12, 0
/* 801A6D34 001A3D34  41 82 00 10 */	beq lbl_801A6D44
/* 801A6D38 001A3D38  7F E3 FB 78 */	mr r3, r31
/* 801A6D3C 001A3D3C  7D 89 03 A6 */	mtctr r12
/* 801A6D40 001A3D40  4E 80 04 21 */	bctrl 
lbl_801A6D44:
/* 801A6D44 001A3D44  80 0D 8F 7C */	lwz r0, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6D48 001A3D48  90 1F 00 00 */	stw r0, 0(r31)
/* 801A6D4C 001A3D4C  A0 6D 8E FA */	lhz r3, lbl_8027781A-_SDA_BASE_(r13)
/* 801A6D50 001A3D50  93 ED 8F 7C */	stw r31, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6D54 001A3D54  38 03 FF FF */	addi r0, r3, -1
/* 801A6D58 001A3D58  B0 0D 8E FA */	sth r0, lbl_8027781A-_SDA_BASE_(r13)
lbl_801A6D5C:
/* 801A6D5C 001A3D5C  38 00 00 00 */	li r0, 0
/* 801A6D60 001A3D60  7F C3 F3 78 */	mr r3, r30
/* 801A6D64 001A3D64  90 1D 00 90 */	stw r0, 0x90(r29)
lbl_801A6D68:
/* 801A6D68 001A3D68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A6D6C 001A3D6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A6D70 001A3D70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A6D74 001A3D74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A6D78 001A3D78  7C 08 03 A6 */	mtlr r0
/* 801A6D7C 001A3D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 801A6D80 001A3D80  4E 80 00 20 */	blr 

.global psRemoveGeneratorAppSRT
psRemoveGeneratorAppSRT:
/* 801A6D84 001A3D84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A6D88 001A3D88  7C 08 02 A6 */	mflr r0
/* 801A6D8C 001A3D8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A6D90 001A3D90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A6D94 001A3D94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A6D98 001A3D98  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A6D9C 001A3D9C  7C 7D 1B 78 */	mr r29, r3
/* 801A6DA0 001A3DA0  80 63 00 54 */	lwz r3, 0x54(r3)
/* 801A6DA4 001A3DA4  28 03 00 00 */	cmplwi r3, 0
/* 801A6DA8 001A3DA8  40 82 00 0C */	bne lbl_801A6DB4
/* 801A6DAC 001A3DAC  38 60 FF FF */	li r3, -1
/* 801A6DB0 001A3DB0  48 00 00 70 */	b lbl_801A6E20
lbl_801A6DB4:
/* 801A6DB4 001A3DB4  80 03 00 04 */	lwz r0, 4(r3)
/* 801A6DB8 001A3DB8  7C 00 E8 40 */	cmplw r0, r29
/* 801A6DBC 001A3DBC  40 82 00 0C */	bne lbl_801A6DC8
/* 801A6DC0 001A3DC0  38 00 00 00 */	li r0, 0
/* 801A6DC4 001A3DC4  90 03 00 04 */	stw r0, 4(r3)
lbl_801A6DC8:
/* 801A6DC8 001A3DC8  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 801A6DCC 001A3DCC  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 801A6DD0 001A3DD0  38 03 FF FF */	addi r0, r3, -1
/* 801A6DD4 001A3DD4  54 1E 04 3F */	clrlwi. r30, r0, 0x10
/* 801A6DD8 001A3DD8  B0 04 00 32 */	sth r0, 0x32(r4)
/* 801A6DDC 001A3DDC  40 82 00 38 */	bne lbl_801A6E14
/* 801A6DE0 001A3DE0  83 FD 00 54 */	lwz r31, 0x54(r29)
/* 801A6DE4 001A3DE4  81 9F 00 6C */	lwz r12, 0x6c(r31)
/* 801A6DE8 001A3DE8  28 0C 00 00 */	cmplwi r12, 0
/* 801A6DEC 001A3DEC  41 82 00 10 */	beq lbl_801A6DFC
/* 801A6DF0 001A3DF0  7F E3 FB 78 */	mr r3, r31
/* 801A6DF4 001A3DF4  7D 89 03 A6 */	mtctr r12
/* 801A6DF8 001A3DF8  4E 80 04 21 */	bctrl 
lbl_801A6DFC:
/* 801A6DFC 001A3DFC  80 0D 8F 7C */	lwz r0, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6E00 001A3E00  90 1F 00 00 */	stw r0, 0(r31)
/* 801A6E04 001A3E04  A0 6D 8E FA */	lhz r3, lbl_8027781A-_SDA_BASE_(r13)
/* 801A6E08 001A3E08  93 ED 8F 7C */	stw r31, lbl_8027789C-_SDA_BASE_(r13)
/* 801A6E0C 001A3E0C  38 03 FF FF */	addi r0, r3, -1
/* 801A6E10 001A3E10  B0 0D 8E FA */	sth r0, lbl_8027781A-_SDA_BASE_(r13)
lbl_801A6E14:
/* 801A6E14 001A3E14  38 00 00 00 */	li r0, 0
/* 801A6E18 001A3E18  7F C3 F3 78 */	mr r3, r30
/* 801A6E1C 001A3E1C  90 1D 00 54 */	stw r0, 0x54(r29)
lbl_801A6E20:
/* 801A6E20 001A3E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A6E24 001A3E24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A6E28 001A3E28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A6E2C 001A3E2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A6E30 001A3E30  7C 08 03 A6 */	mtlr r0
/* 801A6E34 001A3E34  38 21 00 20 */	addi r1, r1, 0x20
/* 801A6E38 001A3E38  4E 80 00 20 */	blr 
