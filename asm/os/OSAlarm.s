.include "macros.inc"

.section .text  # 0x801659C8 - 0x80166124

.global OSInitAlarm
OSInitAlarm:
/* 801659C8 001629C8  7C 08 02 A6 */	mflr r0
/* 801659CC 001629CC  38 60 00 08 */	li r3, 8
/* 801659D0 001629D0  90 01 00 04 */	stw r0, 4(r1)
/* 801659D4 001629D4  94 21 FF F8 */	stwu r1, -8(r1)
/* 801659D8 001629D8  4B FF FE 55 */	bl __OSGetExceptionHandler
/* 801659DC 001629DC  3C 80 80 16 */	lis r4, DecrementerExceptionHandler@ha
/* 801659E0 001629E0  38 84 60 34 */	addi r4, r4, DecrementerExceptionHandler@l
/* 801659E4 001629E4  7C 03 20 40 */	cmplw r3, r4
/* 801659E8 001629E8  41 82 00 28 */	beq lbl_80165A10
/* 801659EC 001629EC  38 00 00 00 */	li r0, 0
/* 801659F0 001629F0  38 6D 8B 50 */	addi r3, r13, lbl_80277470@sda21
/* 801659F4 001629F4  90 03 00 04 */	stw r0, 4(r3)
/* 801659F8 001629F8  38 60 00 08 */	li r3, 8
/* 801659FC 001629FC  90 0D 8B 50 */	stw r0, lbl_80277470@sda21(r13)
/* 80165A00 00162A00  4B FF FE 11 */	bl __OSSetExceptionHandler
/* 80165A04 00162A04  3C 60 80 21 */	lis r3, lbl_80214A00@ha
/* 80165A08 00162A08  38 63 4A 00 */	addi r3, r3, lbl_80214A00@l
/* 80165A0C 00162A0C  48 00 4D A9 */	bl OSRegisterResetFunction
lbl_80165A10:
/* 80165A10 00162A10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80165A14 00162A14  38 21 00 08 */	addi r1, r1, 8
/* 80165A18 00162A18  7C 08 03 A6 */	mtlr r0
/* 80165A1C 00162A1C  4E 80 00 20 */	blr 

.global OSCreateAlarm
OSCreateAlarm:
/* 80165A20 00162A20  38 00 00 00 */	li r0, 0
/* 80165A24 00162A24  90 03 00 00 */	stw r0, 0(r3)
/* 80165A28 00162A28  90 03 00 04 */	stw r0, 4(r3)
/* 80165A2C 00162A2C  4E 80 00 20 */	blr 

.global InsertAlarm
InsertAlarm:
/* 80165A30 00162A30  7C 08 02 A6 */	mflr r0
/* 80165A34 00162A34  90 01 00 04 */	stw r0, 4(r1)
/* 80165A38 00162A38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80165A3C 00162A3C  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 80165A40 00162A40  3B 80 00 00 */	li r28, 0
/* 80165A44 00162A44  7C 7D 1B 78 */	mr r29, r3
/* 80165A48 00162A48  6F 84 80 00 */	xoris r4, r28, 0x8000
/* 80165A4C 00162A4C  3B 25 00 00 */	addi r25, r5, 0
/* 80165A50 00162A50  3B C6 00 00 */	addi r30, r6, 0
/* 80165A54 00162A54  3B E7 00 00 */	addi r31, r7, 0
/* 80165A58 00162A58  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80165A5C 00162A5C  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 80165A60 00162A60  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80165A64 00162A64  7C 08 E0 10 */	subfc r0, r8, r28
/* 80165A68 00162A68  7C 63 21 10 */	subfe r3, r3, r4
/* 80165A6C 00162A6C  7C 64 21 10 */	subfe r3, r4, r4
/* 80165A70 00162A70  7C 63 00 D1 */	neg. r3, r3
/* 80165A74 00162A74  41 82 00 7C */	beq lbl_80165AF0
/* 80165A78 00162A78  48 00 76 09 */	bl __OSGetSystemTime
/* 80165A7C 00162A7C  80 FD 00 20 */	lwz r7, 0x20(r29)
/* 80165A80 00162A80  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 80165A84 00162A84  81 1D 00 24 */	lwz r8, 0x24(r29)
/* 80165A88 00162A88  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 80165A8C 00162A8C  7C 04 40 10 */	subfc r0, r4, r8
/* 80165A90 00162A90  7C A5 31 10 */	subfe r5, r5, r6
/* 80165A94 00162A94  7C A6 31 10 */	subfe r5, r6, r6
/* 80165A98 00162A98  7C A5 00 D1 */	neg. r5, r5
/* 80165A9C 00162A9C  3B C8 00 00 */	addi r30, r8, 0
/* 80165AA0 00162AA0  3B 27 00 00 */	addi r25, r7, 0
/* 80165AA4 00162AA4  41 82 00 4C */	beq lbl_80165AF0
/* 80165AA8 00162AA8  83 7D 00 18 */	lwz r27, 0x18(r29)
/* 80165AAC 00162AAC  7C 88 20 10 */	subfc r4, r8, r4
/* 80165AB0 00162AB0  83 5D 00 1C */	lwz r26, 0x1c(r29)
/* 80165AB4 00162AB4  7C 67 19 10 */	subfe r3, r7, r3
/* 80165AB8 00162AB8  38 BB 00 00 */	addi r5, r27, 0
/* 80165ABC 00162ABC  38 DA 00 00 */	addi r6, r26, 0
/* 80165AC0 00162AC0  48 02 89 0D */	bl __div2i
/* 80165AC4 00162AC4  38 00 00 01 */	li r0, 1
/* 80165AC8 00162AC8  7C A4 00 14 */	addc r5, r4, r0
/* 80165ACC 00162ACC  7C 9B 29 D6 */	mullw r4, r27, r5
/* 80165AD0 00162AD0  7C 1A 28 16 */	mulhwu r0, r26, r5
/* 80165AD4 00162AD4  7C 63 E1 14 */	adde r3, r3, r28
/* 80165AD8 00162AD8  7C 84 02 14 */	add r4, r4, r0
/* 80165ADC 00162ADC  7C 1A 19 D6 */	mullw r0, r26, r3
/* 80165AE0 00162AE0  7C 7A 29 D6 */	mullw r3, r26, r5
/* 80165AE4 00162AE4  7C 04 02 14 */	add r0, r4, r0
/* 80165AE8 00162AE8  7F DE 18 14 */	addc r30, r30, r3
/* 80165AEC 00162AEC  7F 39 01 14 */	adde r25, r25, r0
lbl_80165AF0:
/* 80165AF0 00162AF0  93 FD 00 00 */	stw r31, 0(r29)
/* 80165AF4 00162AF4  6F 24 80 00 */	xoris r4, r25, 0x8000
/* 80165AF8 00162AF8  93 DD 00 0C */	stw r30, 0xc(r29)
/* 80165AFC 00162AFC  93 3D 00 08 */	stw r25, 8(r29)
/* 80165B00 00162B00  80 CD 8B 50 */	lwz r6, lbl_80277470@sda21(r13)
/* 80165B04 00162B04  48 00 00 C4 */	b lbl_80165BC8
lbl_80165B08:
/* 80165B08 00162B08  80 06 00 08 */	lwz r0, 8(r6)
/* 80165B0C 00162B0C  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 80165B10 00162B10  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80165B14 00162B14  7C 05 F0 10 */	subfc r0, r5, r30
/* 80165B18 00162B18  7C 63 21 10 */	subfe r3, r3, r4
/* 80165B1C 00162B1C  7C 64 21 10 */	subfe r3, r4, r4
/* 80165B20 00162B20  7C 63 00 D1 */	neg. r3, r3
/* 80165B24 00162B24  41 82 00 A0 */	beq lbl_80165BC4
/* 80165B28 00162B28  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80165B2C 00162B2C  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80165B30 00162B30  93 A6 00 10 */	stw r29, 0x10(r6)
/* 80165B34 00162B34  90 DD 00 14 */	stw r6, 0x14(r29)
/* 80165B38 00162B38  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80165B3C 00162B3C  28 03 00 00 */	cmplwi r3, 0
/* 80165B40 00162B40  41 82 00 0C */	beq lbl_80165B4C
/* 80165B44 00162B44  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80165B48 00162B48  48 00 01 24 */	b lbl_80165C6C
lbl_80165B4C:
/* 80165B4C 00162B4C  93 AD 8B 50 */	stw r29, lbl_80277470@sda21(r13)
/* 80165B50 00162B50  48 00 75 31 */	bl __OSGetSystemTime
/* 80165B54 00162B54  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 80165B58 00162B58  38 E0 00 00 */	li r7, 0
/* 80165B5C 00162B5C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80165B60 00162B60  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 80165B64 00162B64  7D 04 30 10 */	subfc r8, r4, r6
/* 80165B68 00162B68  7C 03 01 10 */	subfe r0, r3, r0
/* 80165B6C 00162B6C  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80165B70 00162B70  7C 07 40 10 */	subfc r0, r7, r8
/* 80165B74 00162B74  7C A5 31 10 */	subfe r5, r5, r6
/* 80165B78 00162B78  7C A6 31 10 */	subfe r5, r6, r6
/* 80165B7C 00162B7C  7C A5 00 D1 */	neg. r5, r5
/* 80165B80 00162B80  41 82 00 10 */	beq lbl_80165B90
/* 80165B84 00162B84  38 60 00 00 */	li r3, 0
/* 80165B88 00162B88  4B FF F2 91 */	bl PPCMtdec
/* 80165B8C 00162B8C  48 00 00 E0 */	b lbl_80165C6C
lbl_80165B90:
/* 80165B90 00162B90  3C 80 80 00 */	lis r4, 0x8000
/* 80165B94 00162B94  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80165B98 00162B98  7C 04 40 10 */	subfc r0, r4, r8
/* 80165B9C 00162B9C  7C 63 31 10 */	subfe r3, r3, r6
/* 80165BA0 00162BA0  7C 66 31 10 */	subfe r3, r6, r6
/* 80165BA4 00162BA4  7C 63 00 D1 */	neg. r3, r3
/* 80165BA8 00162BA8  41 82 00 10 */	beq lbl_80165BB8
/* 80165BAC 00162BAC  7D 03 43 78 */	mr r3, r8
/* 80165BB0 00162BB0  4B FF F2 69 */	bl PPCMtdec
/* 80165BB4 00162BB4  48 00 00 B8 */	b lbl_80165C6C
lbl_80165BB8:
/* 80165BB8 00162BB8  38 64 FF FF */	addi r3, r4, -1
/* 80165BBC 00162BBC  4B FF F2 5D */	bl PPCMtdec
/* 80165BC0 00162BC0  48 00 00 AC */	b lbl_80165C6C
lbl_80165BC4:
/* 80165BC4 00162BC4  80 C6 00 14 */	lwz r6, 0x14(r6)
lbl_80165BC8:
/* 80165BC8 00162BC8  28 06 00 00 */	cmplwi r6, 0
/* 80165BCC 00162BCC  40 82 FF 3C */	bne lbl_80165B08
/* 80165BD0 00162BD0  3B C0 00 00 */	li r30, 0
/* 80165BD4 00162BD4  93 DD 00 14 */	stw r30, 0x14(r29)
/* 80165BD8 00162BD8  38 6D 8B 50 */	addi r3, r13, lbl_80277470@sda21
/* 80165BDC 00162BDC  80 83 00 04 */	lwz r4, 4(r3)
/* 80165BE0 00162BE0  97 A3 00 04 */	stwu r29, 4(r3)
/* 80165BE4 00162BE4  28 04 00 00 */	cmplwi r4, 0
/* 80165BE8 00162BE8  90 9D 00 10 */	stw r4, 0x10(r29)
/* 80165BEC 00162BEC  41 82 00 0C */	beq lbl_80165BF8
/* 80165BF0 00162BF0  93 A4 00 14 */	stw r29, 0x14(r4)
/* 80165BF4 00162BF4  48 00 00 78 */	b lbl_80165C6C
lbl_80165BF8:
/* 80165BF8 00162BF8  93 A3 00 00 */	stw r29, 0(r3)
/* 80165BFC 00162BFC  93 AD 8B 50 */	stw r29, lbl_80277470@sda21(r13)
/* 80165C00 00162C00  48 00 74 81 */	bl __OSGetSystemTime
/* 80165C04 00162C04  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 80165C08 00162C08  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 80165C0C 00162C0C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80165C10 00162C10  7C E4 30 10 */	subfc r7, r4, r6
/* 80165C14 00162C14  7C 03 01 10 */	subfe r0, r3, r0
/* 80165C18 00162C18  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80165C1C 00162C1C  7C 1E 38 10 */	subfc r0, r30, r7
/* 80165C20 00162C20  7C A5 31 10 */	subfe r5, r5, r6
/* 80165C24 00162C24  7C A6 31 10 */	subfe r5, r6, r6
/* 80165C28 00162C28  7C A5 00 D1 */	neg. r5, r5
/* 80165C2C 00162C2C  41 82 00 10 */	beq lbl_80165C3C
/* 80165C30 00162C30  38 60 00 00 */	li r3, 0
/* 80165C34 00162C34  4B FF F1 E5 */	bl PPCMtdec
/* 80165C38 00162C38  48 00 00 34 */	b lbl_80165C6C
lbl_80165C3C:
/* 80165C3C 00162C3C  3C 80 80 00 */	lis r4, 0x8000
/* 80165C40 00162C40  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 80165C44 00162C44  7C 04 38 10 */	subfc r0, r4, r7
/* 80165C48 00162C48  7C 63 31 10 */	subfe r3, r3, r6
/* 80165C4C 00162C4C  7C 66 31 10 */	subfe r3, r6, r6
/* 80165C50 00162C50  7C 63 00 D1 */	neg. r3, r3
/* 80165C54 00162C54  41 82 00 10 */	beq lbl_80165C64
/* 80165C58 00162C58  7C E3 3B 78 */	mr r3, r7
/* 80165C5C 00162C5C  4B FF F1 BD */	bl PPCMtdec
/* 80165C60 00162C60  48 00 00 0C */	b lbl_80165C6C
lbl_80165C64:
/* 80165C64 00162C64  38 64 FF FF */	addi r3, r4, -1
/* 80165C68 00162C68  4B FF F1 B1 */	bl PPCMtdec
lbl_80165C6C:
/* 80165C6C 00162C6C  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 80165C70 00162C70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80165C74 00162C74  38 21 00 40 */	addi r1, r1, 0x40
/* 80165C78 00162C78  7C 08 03 A6 */	mtlr r0
/* 80165C7C 00162C7C  4E 80 00 20 */	blr 

.global OSSetAlarm
OSSetAlarm:
/* 80165C80 00162C80  7C 08 02 A6 */	mflr r0
/* 80165C84 00162C84  90 01 00 04 */	stw r0, 4(r1)
/* 80165C88 00162C88  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80165C8C 00162C8C  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 80165C90 00162C90  3B 63 00 00 */	addi r27, r3, 0
/* 80165C94 00162C94  3B A5 00 00 */	addi r29, r5, 0
/* 80165C98 00162C98  3B 86 00 00 */	addi r28, r6, 0
/* 80165C9C 00162C9C  3B C7 00 00 */	addi r30, r7, 0
/* 80165CA0 00162CA0  48 00 3E B9 */	bl OSDisableInterrupts
/* 80165CA4 00162CA4  38 00 00 00 */	li r0, 0
/* 80165CA8 00162CA8  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 80165CAC 00162CAC  7C 7F 1B 78 */	mr r31, r3
/* 80165CB0 00162CB0  90 1B 00 18 */	stw r0, 0x18(r27)
/* 80165CB4 00162CB4  48 00 73 CD */	bl __OSGetSystemTime
/* 80165CB8 00162CB8  7C DC 20 14 */	addc r6, r28, r4
/* 80165CBC 00162CBC  7C BD 19 14 */	adde r5, r29, r3
/* 80165CC0 00162CC0  38 7B 00 00 */	addi r3, r27, 0
/* 80165CC4 00162CC4  38 FE 00 00 */	addi r7, r30, 0
/* 80165CC8 00162CC8  4B FF FD 69 */	bl InsertAlarm
/* 80165CCC 00162CCC  7F E3 FB 78 */	mr r3, r31
/* 80165CD0 00162CD0  48 00 3E B1 */	bl OSRestoreInterrupts
/* 80165CD4 00162CD4  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 80165CD8 00162CD8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80165CDC 00162CDC  38 21 00 38 */	addi r1, r1, 0x38
/* 80165CE0 00162CE0  7C 08 03 A6 */	mtlr r0
/* 80165CE4 00162CE4  4E 80 00 20 */	blr 

.global OSCancelAlarm
OSCancelAlarm:
/* 80165CE8 00162CE8  7C 08 02 A6 */	mflr r0
/* 80165CEC 00162CEC  90 01 00 04 */	stw r0, 4(r1)
/* 80165CF0 00162CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80165CF4 00162CF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80165CF8 00162CF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80165CFC 00162CFC  7C 7E 1B 78 */	mr r30, r3
/* 80165D00 00162D00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80165D04 00162D04  48 00 3E 55 */	bl OSDisableInterrupts
/* 80165D08 00162D08  80 1E 00 00 */	lwz r0, 0(r30)
/* 80165D0C 00162D0C  3B E3 00 00 */	addi r31, r3, 0
/* 80165D10 00162D10  28 00 00 00 */	cmplwi r0, 0
/* 80165D14 00162D14  40 82 00 10 */	bne lbl_80165D24
/* 80165D18 00162D18  7F E3 FB 78 */	mr r3, r31
/* 80165D1C 00162D1C  48 00 3E 65 */	bl OSRestoreInterrupts
/* 80165D20 00162D20  48 00 00 C8 */	b lbl_80165DE8
lbl_80165D24:
/* 80165D24 00162D24  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 80165D28 00162D28  28 1D 00 00 */	cmplwi r29, 0
/* 80165D2C 00162D2C  40 82 00 14 */	bne lbl_80165D40
/* 80165D30 00162D30  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80165D34 00162D34  38 6D 8B 50 */	addi r3, r13, lbl_80277470@sda21
/* 80165D38 00162D38  90 03 00 04 */	stw r0, 4(r3)
/* 80165D3C 00162D3C  48 00 00 0C */	b lbl_80165D48
lbl_80165D40:
/* 80165D40 00162D40  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80165D44 00162D44  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_80165D48:
/* 80165D48 00162D48  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80165D4C 00162D4C  28 03 00 00 */	cmplwi r3, 0
/* 80165D50 00162D50  41 82 00 0C */	beq lbl_80165D5C
/* 80165D54 00162D54  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80165D58 00162D58  48 00 00 80 */	b lbl_80165DD8
lbl_80165D5C:
/* 80165D5C 00162D5C  28 1D 00 00 */	cmplwi r29, 0
/* 80165D60 00162D60  93 AD 8B 50 */	stw r29, lbl_80277470@sda21(r13)
/* 80165D64 00162D64  41 82 00 74 */	beq lbl_80165DD8
/* 80165D68 00162D68  48 00 73 19 */	bl __OSGetSystemTime
/* 80165D6C 00162D6C  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 80165D70 00162D70  38 E0 00 00 */	li r7, 0
/* 80165D74 00162D74  80 1D 00 08 */	lwz r0, 8(r29)
/* 80165D78 00162D78  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 80165D7C 00162D7C  7D 04 30 10 */	subfc r8, r4, r6
/* 80165D80 00162D80  7C 03 01 10 */	subfe r0, r3, r0
/* 80165D84 00162D84  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80165D88 00162D88  7C 07 40 10 */	subfc r0, r7, r8
/* 80165D8C 00162D8C  7C A5 31 10 */	subfe r5, r5, r6
/* 80165D90 00162D90  7C A6 31 10 */	subfe r5, r6, r6
/* 80165D94 00162D94  7C A5 00 D1 */	neg. r5, r5
/* 80165D98 00162D98  41 82 00 10 */	beq lbl_80165DA8
/* 80165D9C 00162D9C  38 60 00 00 */	li r3, 0
/* 80165DA0 00162DA0  4B FF F0 79 */	bl PPCMtdec
/* 80165DA4 00162DA4  48 00 00 34 */	b lbl_80165DD8
lbl_80165DA8:
/* 80165DA8 00162DA8  3C 80 80 00 */	lis r4, 0x8000
/* 80165DAC 00162DAC  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80165DB0 00162DB0  7C 04 40 10 */	subfc r0, r4, r8
/* 80165DB4 00162DB4  7C 63 31 10 */	subfe r3, r3, r6
/* 80165DB8 00162DB8  7C 66 31 10 */	subfe r3, r6, r6
/* 80165DBC 00162DBC  7C 63 00 D1 */	neg. r3, r3
/* 80165DC0 00162DC0  41 82 00 10 */	beq lbl_80165DD0
/* 80165DC4 00162DC4  7D 03 43 78 */	mr r3, r8
/* 80165DC8 00162DC8  4B FF F0 51 */	bl PPCMtdec
/* 80165DCC 00162DCC  48 00 00 0C */	b lbl_80165DD8
lbl_80165DD0:
/* 80165DD0 00162DD0  38 64 FF FF */	addi r3, r4, -1
/* 80165DD4 00162DD4  4B FF F0 45 */	bl PPCMtdec
lbl_80165DD8:
/* 80165DD8 00162DD8  38 00 00 00 */	li r0, 0
/* 80165DDC 00162DDC  90 1E 00 00 */	stw r0, 0(r30)
/* 80165DE0 00162DE0  7F E3 FB 78 */	mr r3, r31
/* 80165DE4 00162DE4  48 00 3D 9D */	bl OSRestoreInterrupts
lbl_80165DE8:
/* 80165DE8 00162DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80165DEC 00162DEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80165DF0 00162DF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80165DF4 00162DF4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80165DF8 00162DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80165DFC 00162DFC  7C 08 03 A6 */	mtlr r0
/* 80165E00 00162E00  4E 80 00 20 */	blr 

.global DecrementerExceptionCallback
DecrementerExceptionCallback:
/* 80165E04 00162E04  7C 08 02 A6 */	mflr r0
/* 80165E08 00162E08  90 01 00 04 */	stw r0, 4(r1)
/* 80165E0C 00162E0C  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 80165E10 00162E10  93 E1 02 EC */	stw r31, 0x2ec(r1)
/* 80165E14 00162E14  93 C1 02 E8 */	stw r30, 0x2e8(r1)
/* 80165E18 00162E18  93 A1 02 E4 */	stw r29, 0x2e4(r1)
/* 80165E1C 00162E1C  7C 9D 23 78 */	mr r29, r4
/* 80165E20 00162E20  93 81 02 E0 */	stw r28, 0x2e0(r1)
/* 80165E24 00162E24  48 00 72 5D */	bl __OSGetSystemTime
/* 80165E28 00162E28  80 0D 8B 50 */	lwz r0, lbl_80277470@sda21(r13)
/* 80165E2C 00162E2C  3B 84 00 00 */	addi r28, r4, 0
/* 80165E30 00162E30  3B C3 00 00 */	addi r30, r3, 0
/* 80165E34 00162E34  28 00 00 00 */	cmplwi r0, 0
/* 80165E38 00162E38  7C 1F 03 78 */	mr r31, r0
/* 80165E3C 00162E3C  40 82 00 0C */	bne lbl_80165E48
/* 80165E40 00162E40  7F A3 EB 78 */	mr r3, r29
/* 80165E44 00162E44  48 00 13 F5 */	bl OSLoadContext
lbl_80165E48:
/* 80165E48 00162E48  80 1F 00 08 */	lwz r0, 8(r31)
/* 80165E4C 00162E4C  6F C4 80 00 */	xoris r4, r30, 0x8000
/* 80165E50 00162E50  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80165E54 00162E54  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80165E58 00162E58  7C 05 E0 10 */	subfc r0, r5, r28
/* 80165E5C 00162E5C  7C 63 21 10 */	subfe r3, r3, r4
/* 80165E60 00162E60  7C 64 21 10 */	subfe r3, r4, r4
/* 80165E64 00162E64  7C 63 00 D1 */	neg. r3, r3
/* 80165E68 00162E68  41 82 00 7C */	beq lbl_80165EE4
/* 80165E6C 00162E6C  48 00 72 15 */	bl __OSGetSystemTime
/* 80165E70 00162E70  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 80165E74 00162E74  38 E0 00 00 */	li r7, 0
/* 80165E78 00162E78  80 1F 00 08 */	lwz r0, 8(r31)
/* 80165E7C 00162E7C  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 80165E80 00162E80  7D 04 30 10 */	subfc r8, r4, r6
/* 80165E84 00162E84  7C 03 01 10 */	subfe r0, r3, r0
/* 80165E88 00162E88  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80165E8C 00162E8C  7C 07 40 10 */	subfc r0, r7, r8
/* 80165E90 00162E90  7C A5 31 10 */	subfe r5, r5, r6
/* 80165E94 00162E94  7C A6 31 10 */	subfe r5, r6, r6
/* 80165E98 00162E98  7C A5 00 D1 */	neg. r5, r5
/* 80165E9C 00162E9C  41 82 00 10 */	beq lbl_80165EAC
/* 80165EA0 00162EA0  38 60 00 00 */	li r3, 0
/* 80165EA4 00162EA4  4B FF EF 75 */	bl PPCMtdec
/* 80165EA8 00162EA8  48 00 00 34 */	b lbl_80165EDC
lbl_80165EAC:
/* 80165EAC 00162EAC  3C 80 80 00 */	lis r4, 0x8000
/* 80165EB0 00162EB0  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80165EB4 00162EB4  7C 04 40 10 */	subfc r0, r4, r8
/* 80165EB8 00162EB8  7C 63 31 10 */	subfe r3, r3, r6
/* 80165EBC 00162EBC  7C 66 31 10 */	subfe r3, r6, r6
/* 80165EC0 00162EC0  7C 63 00 D1 */	neg. r3, r3
/* 80165EC4 00162EC4  41 82 00 10 */	beq lbl_80165ED4
/* 80165EC8 00162EC8  7D 03 43 78 */	mr r3, r8
/* 80165ECC 00162ECC  4B FF EF 4D */	bl PPCMtdec
/* 80165ED0 00162ED0  48 00 00 0C */	b lbl_80165EDC
lbl_80165ED4:
/* 80165ED4 00162ED4  38 64 FF FF */	addi r3, r4, -1
/* 80165ED8 00162ED8  4B FF EF 41 */	bl PPCMtdec
lbl_80165EDC:
/* 80165EDC 00162EDC  7F A3 EB 78 */	mr r3, r29
/* 80165EE0 00162EE0  48 00 13 59 */	bl OSLoadContext
lbl_80165EE4:
/* 80165EE4 00162EE4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80165EE8 00162EE8  28 03 00 00 */	cmplwi r3, 0
/* 80165EEC 00162EEC  90 6D 8B 50 */	stw r3, lbl_80277470@sda21(r13)
/* 80165EF0 00162EF0  40 82 00 14 */	bne lbl_80165F04
/* 80165EF4 00162EF4  38 00 00 00 */	li r0, 0
/* 80165EF8 00162EF8  38 6D 8B 50 */	addi r3, r13, lbl_80277470@sda21
/* 80165EFC 00162EFC  90 03 00 04 */	stw r0, 4(r3)
/* 80165F00 00162F00  48 00 00 0C */	b lbl_80165F0C
lbl_80165F04:
/* 80165F04 00162F04  38 00 00 00 */	li r0, 0
/* 80165F08 00162F08  90 03 00 10 */	stw r0, 0x10(r3)
lbl_80165F0C:
/* 80165F0C 00162F0C  83 DF 00 00 */	lwz r30, 0(r31)
/* 80165F10 00162F10  38 C0 00 00 */	li r6, 0
/* 80165F14 00162F14  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 80165F18 00162F18  90 DF 00 00 */	stw r6, 0(r31)
/* 80165F1C 00162F1C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80165F20 00162F20  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 80165F24 00162F24  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80165F28 00162F28  7C 05 30 10 */	subfc r0, r5, r6
/* 80165F2C 00162F2C  7C 63 21 10 */	subfe r3, r3, r4
/* 80165F30 00162F30  7C 64 21 10 */	subfe r3, r4, r4
/* 80165F34 00162F34  7C 63 00 D1 */	neg. r3, r3
/* 80165F38 00162F38  41 82 00 18 */	beq lbl_80165F50
/* 80165F3C 00162F3C  38 7F 00 00 */	addi r3, r31, 0
/* 80165F40 00162F40  38 FE 00 00 */	addi r7, r30, 0
/* 80165F44 00162F44  38 C0 00 00 */	li r6, 0
/* 80165F48 00162F48  38 A0 00 00 */	li r5, 0
/* 80165F4C 00162F4C  4B FF FA E5 */	bl InsertAlarm
lbl_80165F50:
/* 80165F50 00162F50  83 8D 8B 50 */	lwz r28, lbl_80277470@sda21(r13)
/* 80165F54 00162F54  28 1C 00 00 */	cmplwi r28, 0
/* 80165F58 00162F58  41 82 00 74 */	beq lbl_80165FCC
/* 80165F5C 00162F5C  48 00 71 25 */	bl __OSGetSystemTime
/* 80165F60 00162F60  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 80165F64 00162F64  38 E0 00 00 */	li r7, 0
/* 80165F68 00162F68  80 1C 00 08 */	lwz r0, 8(r28)
/* 80165F6C 00162F6C  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 80165F70 00162F70  7D 04 30 10 */	subfc r8, r4, r6
/* 80165F74 00162F74  7C 03 01 10 */	subfe r0, r3, r0
/* 80165F78 00162F78  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80165F7C 00162F7C  7C 07 40 10 */	subfc r0, r7, r8
/* 80165F80 00162F80  7C A5 31 10 */	subfe r5, r5, r6
/* 80165F84 00162F84  7C A6 31 10 */	subfe r5, r6, r6
/* 80165F88 00162F88  7C A5 00 D1 */	neg. r5, r5
/* 80165F8C 00162F8C  41 82 00 10 */	beq lbl_80165F9C
/* 80165F90 00162F90  38 60 00 00 */	li r3, 0
/* 80165F94 00162F94  4B FF EE 85 */	bl PPCMtdec
/* 80165F98 00162F98  48 00 00 34 */	b lbl_80165FCC
lbl_80165F9C:
/* 80165F9C 00162F9C  3C 80 80 00 */	lis r4, 0x8000
/* 80165FA0 00162FA0  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80165FA4 00162FA4  7C 04 40 10 */	subfc r0, r4, r8
/* 80165FA8 00162FA8  7C 63 31 10 */	subfe r3, r3, r6
/* 80165FAC 00162FAC  7C 66 31 10 */	subfe r3, r6, r6
/* 80165FB0 00162FB0  7C 63 00 D1 */	neg. r3, r3
/* 80165FB4 00162FB4  41 82 00 10 */	beq lbl_80165FC4
/* 80165FB8 00162FB8  7D 03 43 78 */	mr r3, r8
/* 80165FBC 00162FBC  4B FF EE 5D */	bl PPCMtdec
/* 80165FC0 00162FC0  48 00 00 0C */	b lbl_80165FCC
lbl_80165FC4:
/* 80165FC4 00162FC4  38 64 FF FF */	addi r3, r4, -1
/* 80165FC8 00162FC8  4B FF EE 51 */	bl PPCMtdec
lbl_80165FCC:
/* 80165FCC 00162FCC  48 00 5E FD */	bl OSDisableScheduler
/* 80165FD0 00162FD0  38 61 00 18 */	addi r3, r1, 0x18
/* 80165FD4 00162FD4  48 00 13 45 */	bl OSClearContext
/* 80165FD8 00162FD8  38 61 00 18 */	addi r3, r1, 0x18
/* 80165FDC 00162FDC  48 00 11 75 */	bl OSSetCurrentContext
/* 80165FE0 00162FE0  39 9E 00 00 */	addi r12, r30, 0
/* 80165FE4 00162FE4  7D 88 03 A6 */	mtlr r12
/* 80165FE8 00162FE8  38 7F 00 00 */	addi r3, r31, 0
/* 80165FEC 00162FEC  38 9D 00 00 */	addi r4, r29, 0
/* 80165FF0 00162FF0  4E 80 00 21 */	blrl 
/* 80165FF4 00162FF4  38 61 00 18 */	addi r3, r1, 0x18
/* 80165FF8 00162FF8  48 00 13 21 */	bl OSClearContext
/* 80165FFC 00162FFC  7F A3 EB 78 */	mr r3, r29
/* 80166000 00163000  48 00 11 51 */	bl OSSetCurrentContext
/* 80166004 00163004  48 00 5F 05 */	bl OSEnableScheduler
/* 80166008 00163008  48 00 63 CD */	bl __OSReschedule
/* 8016600C 0016300C  7F A3 EB 78 */	mr r3, r29
/* 80166010 00163010  48 00 12 29 */	bl OSLoadContext
/* 80166014 00163014  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 80166018 00163018  83 E1 02 EC */	lwz r31, 0x2ec(r1)
/* 8016601C 0016301C  83 C1 02 E8 */	lwz r30, 0x2e8(r1)
/* 80166020 00163020  83 A1 02 E4 */	lwz r29, 0x2e4(r1)
/* 80166024 00163024  83 81 02 E0 */	lwz r28, 0x2e0(r1)
/* 80166028 00163028  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 8016602C 0016302C  7C 08 03 A6 */	mtlr r0
/* 80166030 00163030  4E 80 00 20 */	blr 

.global DecrementerExceptionHandler
DecrementerExceptionHandler:
/* 80166034 00163034  90 04 00 00 */	stw r0, 0(r4)
/* 80166038 00163038  90 24 00 04 */	stw r1, 4(r4)
/* 8016603C 0016303C  90 44 00 08 */	stw r2, 8(r4)
/* 80166040 00163040  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 80166044 00163044  7C 11 E2 A6 */	mfspr r0, 0x391
/* 80166048 00163048  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8016604C 0016304C  7C 12 E2 A6 */	mfspr r0, 0x392
/* 80166050 00163050  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 80166054 00163054  7C 13 E2 A6 */	mfspr r0, 0x393
/* 80166058 00163058  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8016605C 0016305C  7C 14 E2 A6 */	mfspr r0, 0x394
/* 80166060 00163060  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 80166064 00163064  7C 15 E2 A6 */	mfspr r0, 0x395
/* 80166068 00163068  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8016606C 0016306C  7C 16 E2 A6 */	mfspr r0, 0x396
/* 80166070 00163070  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 80166074 00163074  7C 17 E2 A6 */	mfspr r0, 0x397
/* 80166078 00163078  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8016607C 0016307C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80166080 00163080  4B FF FD 84 */	b DecrementerExceptionCallback
/* 80166084 00163084  7C 08 02 A6 */	mflr r0
/* 80166088 00163088  90 01 00 04 */	stw r0, 4(r1)
/* 8016608C 0016308C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80166090 00163090  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80166094 00163094  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80166098 00163098  2C 03 00 00 */	cmpwi r3, 0
/* 8016609C 0016309C  41 82 00 6C */	beq lbl_80166108
/* 801660A0 001630A0  80 0D 8B 50 */	lwz r0, lbl_80277470@sda21(r13)
/* 801660A4 001630A4  28 00 00 00 */	cmplwi r0, 0
/* 801660A8 001630A8  7C 1F 03 78 */	mr r31, r0
/* 801660AC 001630AC  41 82 00 0C */	beq lbl_801660B8
/* 801660B0 001630B0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 801660B4 001630B4  48 00 00 08 */	b lbl_801660BC
lbl_801660B8:
/* 801660B8 001630B8  38 00 00 00 */	li r0, 0
lbl_801660BC:
/* 801660BC 001630BC  7C 1E 03 78 */	mr r30, r0
/* 801660C0 001630C0  48 00 00 04 */	b lbl_801660C4
lbl_801660C4:
/* 801660C4 001630C4  48 00 00 04 */	b lbl_801660C8
lbl_801660C8:
/* 801660C8 001630C8  48 00 00 38 */	b lbl_80166100
lbl_801660CC:
/* 801660CC 001630CC  7F E3 FB 78 */	mr r3, r31
/* 801660D0 001630D0  48 00 C6 6D */	bl __DVDTestAlarm
/* 801660D4 001630D4  2C 03 00 00 */	cmpwi r3, 0
/* 801660D8 001630D8  40 82 00 0C */	bne lbl_801660E4
/* 801660DC 001630DC  7F E3 FB 78 */	mr r3, r31
/* 801660E0 001630E0  4B FF FC 09 */	bl OSCancelAlarm
lbl_801660E4:
/* 801660E4 001630E4  28 1E 00 00 */	cmplwi r30, 0
/* 801660E8 001630E8  7F DF F3 78 */	mr r31, r30
/* 801660EC 001630EC  41 82 00 0C */	beq lbl_801660F8
/* 801660F0 001630F0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801660F4 001630F4  48 00 00 08 */	b lbl_801660FC
lbl_801660F8:
/* 801660F8 001630F8  38 00 00 00 */	li r0, 0
lbl_801660FC:
/* 801660FC 001630FC  7C 1E 03 78 */	mr r30, r0
lbl_80166100:
/* 80166100 00163100  28 1F 00 00 */	cmplwi r31, 0
/* 80166104 00163104  40 82 FF C8 */	bne lbl_801660CC
lbl_80166108:
/* 80166108 00163108  38 60 00 01 */	li r3, 1
/* 8016610C 0016310C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80166110 00163110  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80166114 00163114  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80166118 00163118  38 21 00 18 */	addi r1, r1, 0x18
/* 8016611C 0016311C  7C 08 03 A6 */	mtlr r0
/* 80166120 00163120  4E 80 00 20 */	blr 
