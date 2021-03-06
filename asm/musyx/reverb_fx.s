.include "macros.inc"

.section .text  # 0x801FC4D4 - 0x801FC5C8

.global sndAuxCallbackReverbHI
sndAuxCallbackReverbHI:
/* 801FC4D4 001F94D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC4D8 001F94D8  7C 08 02 A6 */	mflr r0
/* 801FC4DC 001F94DC  7C 87 23 78 */	mr r7, r4
/* 801FC4E0 001F94E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC4E4 001F94E4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801FC4E8 001F94E8  2C 00 00 01 */	cmpwi r0, 1
/* 801FC4EC 001F94EC  41 82 00 34 */	beq lbl_801FC520
/* 801FC4F0 001F94F0  40 80 00 30 */	bge lbl_801FC520
/* 801FC4F4 001F94F4  2C 00 00 00 */	cmpwi r0, 0
/* 801FC4F8 001F94F8  40 80 00 08 */	bge lbl_801FC500
/* 801FC4FC 001F94FC  48 00 00 24 */	b lbl_801FC520
lbl_801FC500:
/* 801FC500 001F9500  88 05 01 C4 */	lbz r0, 0x1c4(r5)
/* 801FC504 001F9504  28 00 00 00 */	cmplwi r0, 0
/* 801FC508 001F9508  40 82 00 18 */	bne lbl_801FC520
/* 801FC50C 001F950C  80 67 00 00 */	lwz r3, 0(r7)
/* 801FC510 001F9510  7C A6 2B 78 */	mr r6, r5
/* 801FC514 001F9514  80 87 00 04 */	lwz r4, 4(r7)
/* 801FC518 001F9518  80 A7 00 08 */	lwz r5, 8(r7)
/* 801FC51C 001F951C  48 00 0E 41 */	bl ReverbHICallback
lbl_801FC520:
/* 801FC520 001F9520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC524 001F9524  7C 08 03 A6 */	mtlr r0
/* 801FC528 001F9528  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC52C 001F952C  4E 80 00 20 */	blr 

.global sndAuxCallbackUpdateSettingsReverbHI
sndAuxCallbackUpdateSettingsReverbHI:
/* 801FC530 001F9530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC534 001F9534  7C 08 02 A6 */	mflr r0
/* 801FC538 001F9538  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC53C 001F953C  38 00 00 01 */	li r0, 1
/* 801FC540 001F9540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC544 001F9544  7C 7F 1B 78 */	mr r31, r3
/* 801FC548 001F9548  98 03 01 C4 */	stb r0, 0x1c4(r3)
/* 801FC54C 001F954C  C0 23 01 C8 */	lfs f1, 0x1c8(r3)
/* 801FC550 001F9550  C0 43 01 D0 */	lfs f2, 0x1d0(r3)
/* 801FC554 001F9554  C0 63 01 CC */	lfs f3, 0x1cc(r3)
/* 801FC558 001F9558  C0 83 01 D4 */	lfs f4, 0x1d4(r3)
/* 801FC55C 001F955C  C0 A3 01 D8 */	lfs f5, 0x1d8(r3)
/* 801FC560 001F9560  C0 C3 01 DC */	lfs f6, 0x1dc(r3)
/* 801FC564 001F9564  48 00 05 85 */	bl ReverbHIModify
/* 801FC568 001F9568  38 00 00 00 */	li r0, 0
/* 801FC56C 001F956C  38 60 00 01 */	li r3, 1
/* 801FC570 001F9570  98 1F 01 C4 */	stb r0, 0x1c4(r31)
/* 801FC574 001F9574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC578 001F9578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC57C 001F957C  7C 08 03 A6 */	mtlr r0
/* 801FC580 001F9580  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC584 001F9584  4E 80 00 20 */	blr 

.global sndAuxCallbackPrepareReverbHI
sndAuxCallbackPrepareReverbHI:
/* 801FC588 001F9588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC58C 001F958C  7C 08 02 A6 */	mflr r0
/* 801FC590 001F9590  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC594 001F9594  38 00 00 00 */	li r0, 0
/* 801FC598 001F9598  98 03 01 C4 */	stb r0, 0x1c4(r3)
/* 801FC59C 001F959C  C0 23 01 C8 */	lfs f1, 0x1c8(r3)
/* 801FC5A0 001F95A0  C0 43 01 D0 */	lfs f2, 0x1d0(r3)
/* 801FC5A4 001F95A4  C0 63 01 CC */	lfs f3, 0x1cc(r3)
/* 801FC5A8 001F95A8  C0 83 01 D4 */	lfs f4, 0x1d4(r3)
/* 801FC5AC 001F95AC  C0 A3 01 D8 */	lfs f5, 0x1d8(r3)
/* 801FC5B0 001F95B0  C0 C3 01 DC */	lfs f6, 0x1dc(r3)
/* 801FC5B4 001F95B4  48 00 00 15 */	bl ReverbHICreate
/* 801FC5B8 001F95B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC5BC 001F95BC  7C 08 03 A6 */	mtlr r0
/* 801FC5C0 001F95C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC5C4 001F95C4  4E 80 00 20 */	blr 
