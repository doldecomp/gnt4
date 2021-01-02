.include "macros.inc"

.section .text  # 0x801CC338 - 0x801CCDC8

.global HSD_ArchiveParse
HSD_ArchiveParse:
/* 801CC338 001C9338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC33C 001C933C  7C 08 02 A6 */	mflr r0
/* 801CC340 001C9340  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC344 001C9344  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CC348 001C9348  7C 9F 23 78 */	mr r31, r4
/* 801CC34C 001C934C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CC350 001C9350  7C 7E 1B 79 */	or. r30, r3, r3
/* 801CC354 001C9354  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CC358 001C9358  7C BD 2B 78 */	mr r29, r5
/* 801CC35C 001C935C  40 82 00 0C */	bne lbl_801CC368
/* 801CC360 001C9360  38 60 FF FF */	li r3, -1
/* 801CC364 001C9364  48 00 01 24 */	b lbl_801CC488
lbl_801CC368:
/* 801CC368 001C9368  38 80 00 00 */	li r4, 0
/* 801CC36C 001C936C  38 A0 00 44 */	li r5, 0x44
/* 801CC370 001C9370  4B E3 91 75 */	bl memset
/* 801CC374 001C9374  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 801CC378 001C9378  7F C3 F3 78 */	mr r3, r30
/* 801CC37C 001C937C  7F E4 FB 78 */	mr r4, r31
/* 801CC380 001C9380  38 A0 00 20 */	li r5, 0x20
/* 801CC384 001C9384  60 00 00 01 */	ori r0, r0, 1
/* 801CC388 001C9388  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 801CC38C 001C938C  4B E3 92 41 */	bl memcpy
/* 801CC390 001C9390  80 1E 00 00 */	lwz r0, 0(r30)
/* 801CC394 001C9394  7C 00 E8 40 */	cmplw r0, r29
/* 801CC398 001C9398  41 82 00 1C */	beq lbl_801CC3B4
/* 801CC39C 001C939C  3C 60 80 22 */	lis r3, lbl_8021AEB8@ha
/* 801CC3A0 001C93A0  38 63 AE B8 */	addi r3, r3, lbl_8021AEB8@l
/* 801CC3A4 001C93A4  4C C6 31 82 */	crclr 6
/* 801CC3A8 001C93A8  4B F9 B4 F1 */	bl func_80167898
/* 801CC3AC 001C93AC  38 60 FF FF */	li r3, -1
/* 801CC3B0 001C93B0  48 00 00 D8 */	b lbl_801CC488
lbl_801CC3B4:
/* 801CC3B4 001C93B4  80 1E 00 04 */	lwz r0, 4(r30)
/* 801CC3B8 001C93B8  38 60 00 20 */	li r3, 0x20
/* 801CC3BC 001C93BC  28 00 00 00 */	cmplwi r0, 0
/* 801CC3C0 001C93C0  41 82 00 14 */	beq lbl_801CC3D4
/* 801CC3C4 001C93C4  38 1F 00 20 */	addi r0, r31, 0x20
/* 801CC3C8 001C93C8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 801CC3CC 001C93CC  80 7E 00 04 */	lwz r3, 4(r30)
/* 801CC3D0 001C93D0  38 63 00 20 */	addi r3, r3, 0x20
lbl_801CC3D4:
/* 801CC3D4 001C93D4  80 1E 00 08 */	lwz r0, 8(r30)
/* 801CC3D8 001C93D8  28 00 00 00 */	cmplwi r0, 0
/* 801CC3DC 001C93DC  41 82 00 18 */	beq lbl_801CC3F4
/* 801CC3E0 001C93E0  7C 1F 1A 14 */	add r0, r31, r3
/* 801CC3E4 001C93E4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 801CC3E8 001C93E8  80 1E 00 08 */	lwz r0, 8(r30)
/* 801CC3EC 001C93EC  54 00 10 3A */	slwi r0, r0, 2
/* 801CC3F0 001C93F0  7C 63 02 14 */	add r3, r3, r0
lbl_801CC3F4:
/* 801CC3F4 001C93F4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801CC3F8 001C93F8  28 00 00 00 */	cmplwi r0, 0
/* 801CC3FC 001C93FC  41 82 00 18 */	beq lbl_801CC414
/* 801CC400 001C9400  7C 1F 1A 14 */	add r0, r31, r3
/* 801CC404 001C9404  90 1E 00 28 */	stw r0, 0x28(r30)
/* 801CC408 001C9408  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801CC40C 001C940C  54 00 18 38 */	slwi r0, r0, 3
/* 801CC410 001C9410  7C 63 02 14 */	add r3, r3, r0
lbl_801CC414:
/* 801CC414 001C9414  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801CC418 001C9418  28 00 00 00 */	cmplwi r0, 0
/* 801CC41C 001C941C  41 82 00 18 */	beq lbl_801CC434
/* 801CC420 001C9420  7C 1F 1A 14 */	add r0, r31, r3
/* 801CC424 001C9424  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 801CC428 001C9428  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801CC42C 001C942C  54 00 18 38 */	slwi r0, r0, 3
/* 801CC430 001C9430  7C 63 02 14 */	add r3, r3, r0
lbl_801CC434:
/* 801CC434 001C9434  80 1E 00 00 */	lwz r0, 0(r30)
/* 801CC438 001C9438  7C 03 00 40 */	cmplw r3, r0
/* 801CC43C 001C943C  40 80 00 0C */	bge lbl_801CC448
/* 801CC440 001C9440  7C 1F 1A 14 */	add r0, r31, r3
/* 801CC444 001C9444  90 1E 00 30 */	stw r0, 0x30(r30)
lbl_801CC448:
/* 801CC448 001C9448  38 80 00 00 */	li r4, 0
/* 801CC44C 001C944C  93 FE 00 40 */	stw r31, 0x40(r30)
/* 801CC450 001C9450  7C 85 23 78 */	mr r5, r4
/* 801CC454 001C9454  48 00 00 24 */	b lbl_801CC478
lbl_801CC458:
/* 801CC458 001C9458  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801CC45C 001C945C  38 84 00 01 */	addi r4, r4, 1
/* 801CC460 001C9460  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 801CC464 001C9464  7C 63 28 2E */	lwzx r3, r3, r5
/* 801CC468 001C9468  38 A5 00 04 */	addi r5, r5, 4
/* 801CC46C 001C946C  7C 06 18 2E */	lwzx r0, r6, r3
/* 801CC470 001C9470  7C 00 32 14 */	add r0, r0, r6
/* 801CC474 001C9474  7C 06 19 2E */	stwx r0, r6, r3
lbl_801CC478:
/* 801CC478 001C9478  80 1E 00 08 */	lwz r0, 8(r30)
/* 801CC47C 001C947C  7C 04 00 40 */	cmplw r4, r0
/* 801CC480 001C9480  41 80 FF D8 */	blt lbl_801CC458
/* 801CC484 001C9484  38 60 00 00 */	li r3, 0
lbl_801CC488:
/* 801CC488 001C9488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC48C 001C948C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CC490 001C9490  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CC494 001C9494  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CC498 001C9498  7C 08 03 A6 */	mtlr r0
/* 801CC49C 001C949C  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC4A0 001C94A0  4E 80 00 20 */	blr 

.global HSD_ArchiveGetPublicAddress
HSD_ArchiveGetPublicAddress:
/* 801CC4A4 001C94A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC4A8 001C94A8  7C 08 02 A6 */	mflr r0
/* 801CC4AC 001C94AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC4B0 001C94B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CC4B4 001C94B4  3B E0 00 00 */	li r31, 0
/* 801CC4B8 001C94B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CC4BC 001C94BC  3B C0 00 00 */	li r30, 0
/* 801CC4C0 001C94C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CC4C4 001C94C4  7C 9D 23 78 */	mr r29, r4
/* 801CC4C8 001C94C8  93 81 00 10 */	stw r28, 0x10(r1)
/* 801CC4CC 001C94CC  7C 7C 1B 78 */	mr r28, r3
/* 801CC4D0 001C94D0  48 00 00 48 */	b lbl_801CC518
lbl_801CC4D4:
/* 801CC4D4 001C94D4  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 801CC4D8 001C94D8  38 1F 00 04 */	addi r0, r31, 4
/* 801CC4DC 001C94DC  80 BC 00 30 */	lwz r5, 0x30(r28)
/* 801CC4E0 001C94E0  7F A4 EB 78 */	mr r4, r29
/* 801CC4E4 001C94E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 801CC4E8 001C94E8  7C 65 02 14 */	add r3, r5, r0
/* 801CC4EC 001C94EC  4B FC 66 F1 */	bl func_80192BDC
/* 801CC4F0 001C94F0  2C 03 00 00 */	cmpwi r3, 0
/* 801CC4F4 001C94F4  40 82 00 1C */	bne lbl_801CC510
/* 801CC4F8 001C94F8  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 801CC4FC 001C94FC  57 C0 18 38 */	slwi r0, r30, 3
/* 801CC500 001C9500  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 801CC504 001C9504  7C 03 00 2E */	lwzx r0, r3, r0
/* 801CC508 001C9508  7C 64 02 14 */	add r3, r4, r0
/* 801CC50C 001C950C  48 00 00 1C */	b lbl_801CC528
lbl_801CC510:
/* 801CC510 001C9510  3B FF 00 08 */	addi r31, r31, 8
/* 801CC514 001C9514  3B DE 00 01 */	addi r30, r30, 1
lbl_801CC518:
/* 801CC518 001C9518  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 801CC51C 001C951C  7C 1E 00 40 */	cmplw r30, r0
/* 801CC520 001C9520  41 80 FF B4 */	blt lbl_801CC4D4
/* 801CC524 001C9524  38 60 00 00 */	li r3, 0
lbl_801CC528:
/* 801CC528 001C9528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC52C 001C952C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CC530 001C9530  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CC534 001C9534  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CC538 001C9538  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801CC53C 001C953C  7C 08 03 A6 */	mtlr r0
/* 801CC540 001C9540  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC544 001C9544  4E 80 00 20 */	blr 

.global HSD_ArchiveGetExtern
HSD_ArchiveGetExtern:
/* 801CC548 001C9548  2C 04 00 00 */	cmpwi r4, 0
/* 801CC54C 001C954C  41 80 00 10 */	blt lbl_801CC55C
/* 801CC550 001C9550  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801CC554 001C9554  7C 00 20 40 */	cmplw r0, r4
/* 801CC558 001C9558  41 81 00 0C */	bgt lbl_801CC564
lbl_801CC55C:
/* 801CC55C 001C955C  38 60 00 00 */	li r3, 0
/* 801CC560 001C9560  4E 80 00 20 */	blr 
lbl_801CC564:
/* 801CC564 001C9564  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 801CC568 001C9568  54 80 18 38 */	slwi r0, r4, 3
/* 801CC56C 001C956C  80 83 00 30 */	lwz r4, 0x30(r3)
/* 801CC570 001C9570  7C 65 02 14 */	add r3, r5, r0
/* 801CC574 001C9574  80 03 00 04 */	lwz r0, 4(r3)
/* 801CC578 001C9578  7C 64 02 14 */	add r3, r4, r0
/* 801CC57C 001C957C  4E 80 00 20 */	blr 

.global HSD_ArchiveLocateExtern
HSD_ArchiveLocateExtern:
/* 801CC580 001C9580  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC584 001C9584  7C 08 02 A6 */	mflr r0
/* 801CC588 001C9588  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC58C 001C958C  39 61 00 20 */	addi r11, r1, 0x20
/* 801CC590 001C9590  4B FC 1C E9 */	bl func_8018E278
/* 801CC594 001C9594  7C 7A 1B 78 */	mr r26, r3
/* 801CC598 001C9598  7C 9B 23 78 */	mr r27, r4
/* 801CC59C 001C959C  7C BC 2B 78 */	mr r28, r5
/* 801CC5A0 001C95A0  3B C0 FF FF */	li r30, -1
/* 801CC5A4 001C95A4  3B A0 00 00 */	li r29, 0
/* 801CC5A8 001C95A8  3B E0 00 00 */	li r31, 0
/* 801CC5AC 001C95AC  48 00 00 40 */	b lbl_801CC5EC
lbl_801CC5B0:
/* 801CC5B0 001C95B0  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 801CC5B4 001C95B4  38 1F 00 04 */	addi r0, r31, 4
/* 801CC5B8 001C95B8  80 BA 00 30 */	lwz r5, 0x30(r26)
/* 801CC5BC 001C95BC  7F 63 DB 78 */	mr r3, r27
/* 801CC5C0 001C95C0  7C 04 00 2E */	lwzx r0, r4, r0
/* 801CC5C4 001C95C4  7C 85 02 14 */	add r4, r5, r0
/* 801CC5C8 001C95C8  4B FC 66 15 */	bl func_80192BDC
/* 801CC5CC 001C95CC  2C 03 00 00 */	cmpwi r3, 0
/* 801CC5D0 001C95D0  40 82 00 14 */	bne lbl_801CC5E4
/* 801CC5D4 001C95D4  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 801CC5D8 001C95D8  57 A0 18 38 */	slwi r0, r29, 3
/* 801CC5DC 001C95DC  7F C3 00 2E */	lwzx r30, r3, r0
/* 801CC5E0 001C95E0  48 00 00 18 */	b lbl_801CC5F8
lbl_801CC5E4:
/* 801CC5E4 001C95E4  3B FF 00 08 */	addi r31, r31, 8
/* 801CC5E8 001C95E8  3B BD 00 01 */	addi r29, r29, 1
lbl_801CC5EC:
/* 801CC5EC 001C95EC  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 801CC5F0 001C95F0  7C 1D 00 40 */	cmplw r29, r0
/* 801CC5F4 001C95F4  41 80 FF BC */	blt lbl_801CC5B0
lbl_801CC5F8:
/* 801CC5F8 001C95F8  3C 1E 00 01 */	addis r0, r30, 1
/* 801CC5FC 001C95FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 801CC600 001C9600  40 82 00 1C */	bne lbl_801CC61C
/* 801CC604 001C9604  48 00 00 38 */	b lbl_801CC63C
/* 801CC608 001C9608  48 00 00 14 */	b lbl_801CC61C
lbl_801CC60C:
/* 801CC60C 001C960C  80 7A 00 20 */	lwz r3, 0x20(r26)
/* 801CC610 001C9610  7C 03 F0 2E */	lwzx r0, r3, r30
/* 801CC614 001C9614  7F 83 F1 2E */	stwx r28, r3, r30
/* 801CC618 001C9618  7C 1E 03 78 */	mr r30, r0
lbl_801CC61C:
/* 801CC61C 001C961C  3C 1E 00 01 */	addis r0, r30, 1
/* 801CC620 001C9620  28 00 FF FF */	cmplwi r0, 0xffff
/* 801CC624 001C9624  41 82 00 18 */	beq lbl_801CC63C
/* 801CC628 001C9628  80 1A 00 04 */	lwz r0, 4(r26)
/* 801CC62C 001C962C  7C 1E 00 40 */	cmplw r30, r0
/* 801CC630 001C9630  41 80 FF DC */	blt lbl_801CC60C
/* 801CC634 001C9634  48 00 00 08 */	b lbl_801CC63C
/* 801CC638 001C9638  4B FF FF E4 */	b lbl_801CC61C
lbl_801CC63C:
/* 801CC63C 001C963C  39 61 00 20 */	addi r11, r1, 0x20
/* 801CC640 001C9640  4B FC 1C 85 */	bl func_8018E2C4
/* 801CC644 001C9644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC648 001C9648  7C 08 03 A6 */	mtlr r0
/* 801CC64C 001C964C  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC650 001C9650  4E 80 00 20 */	blr 

.global HSD_ArchiveLoad
HSD_ArchiveLoad:
/* 801CC654 001C9654  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801CC658 001C9658  7C 08 02 A6 */	mflr r0
/* 801CC65C 001C965C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801CC660 001C9660  39 61 00 60 */	addi r11, r1, 0x60
/* 801CC664 001C9664  4B FC 1C 15 */	bl func_8018E278
/* 801CC668 001C9668  3C 80 80 22 */	lis r4, lbl_8021AEB8@ha
/* 801CC66C 001C966C  7C 7C 1B 78 */	mr r28, r3
/* 801CC670 001C9670  3B E4 AE B8 */	addi r31, r4, lbl_8021AEB8@l
/* 801CC674 001C9674  7F 84 E3 78 */	mr r4, r28
/* 801CC678 001C9678  38 7F 00 44 */	addi r3, r31, 0x44
/* 801CC67C 001C967C  4C C6 31 82 */	crclr 6
/* 801CC680 001C9680  4B F9 B2 19 */	bl func_80167898
/* 801CC684 001C9684  7F 83 E3 78 */	mr r3, r28
/* 801CC688 001C9688  38 81 00 08 */	addi r4, r1, 8
/* 801CC68C 001C968C  4B FA 30 11 */	bl func_8016F69C
/* 801CC690 001C9690  2C 03 00 00 */	cmpwi r3, 0
/* 801CC694 001C9694  40 82 00 18 */	bne lbl_801CC6AC
/* 801CC698 001C9698  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801CC69C 001C969C  4C C6 31 82 */	crclr 6
/* 801CC6A0 001C96A0  4B F9 B1 F9 */	bl func_80167898
/* 801CC6A4 001C96A4  38 60 00 00 */	li r3, 0
/* 801CC6A8 001C96A8  48 00 02 D4 */	b lbl_801CC97C
lbl_801CC6AC:
/* 801CC6AC 001C96AC  38 60 00 44 */	li r3, 0x44
/* 801CC6B0 001C96B0  4B FF EC 8D */	bl HSD_Alloc
/* 801CC6B4 001C96B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 801CC6B8 001C96B8  41 82 02 A8 */	beq lbl_801CC960
/* 801CC6BC 001C96BC  38 80 00 00 */	li r4, 0
/* 801CC6C0 001C96C0  38 A0 00 44 */	li r5, 0x44
/* 801CC6C4 001C96C4  4B E3 8E 21 */	bl memset
/* 801CC6C8 001C96C8  7F C4 F3 78 */	mr r4, r30
/* 801CC6CC 001C96CC  38 61 00 08 */	addi r3, r1, 8
/* 801CC6D0 001C96D0  38 A0 00 20 */	li r5, 0x20
/* 801CC6D4 001C96D4  38 C0 00 00 */	li r6, 0
/* 801CC6D8 001C96D8  38 E0 00 02 */	li r7, 2
/* 801CC6DC 001C96DC  4B FA 33 C1 */	bl func_8016FA9C
/* 801CC6E0 001C96E0  28 03 00 20 */	cmplwi r3, 0x20
/* 801CC6E4 001C96E4  41 82 00 14 */	beq lbl_801CC6F8
/* 801CC6E8 001C96E8  38 7F 00 70 */	addi r3, r31, 0x70
/* 801CC6EC 001C96EC  4C C6 31 82 */	crclr 6
/* 801CC6F0 001C96F0  4B F9 B1 A9 */	bl func_80167898
/* 801CC6F4 001C96F4  48 00 02 6C */	b lbl_801CC960
lbl_801CC6F8:
/* 801CC6F8 001C96F8  80 7E 00 00 */	lwz r3, 0(r30)
/* 801CC6FC 001C96FC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801CC700 001C9700  7C 03 00 40 */	cmplw r3, r0
/* 801CC704 001C9704  41 82 00 14 */	beq lbl_801CC718
/* 801CC708 001C9708  38 7F 00 9C */	addi r3, r31, 0x9c
/* 801CC70C 001C970C  4C C6 31 82 */	crclr 6
/* 801CC710 001C9710  4B F9 B1 89 */	bl func_80167898
/* 801CC714 001C9714  48 00 02 4C */	b lbl_801CC960
lbl_801CC718:
/* 801CC718 001C9718  83 5E 00 04 */	lwz r26, 4(r30)
/* 801CC71C 001C971C  38 1A 00 1F */	addi r0, r26, 0x1f
/* 801CC720 001C9720  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 801CC724 001C9724  7F A3 EB 78 */	mr r3, r29
/* 801CC728 001C9728  4B FF EC 15 */	bl HSD_Alloc
/* 801CC72C 001C972C  90 7E 00 20 */	stw r3, 0x20(r30)
/* 801CC730 001C9730  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 801CC734 001C9734  28 00 00 00 */	cmplwi r0, 0
/* 801CC738 001C9738  41 82 02 28 */	beq lbl_801CC960
/* 801CC73C 001C973C  38 00 00 00 */	li r0, 0
/* 801CC740 001C9740  7F A5 EB 78 */	mr r5, r29
/* 801CC744 001C9744  90 1E 00 40 */	stw r0, 0x40(r30)
/* 801CC748 001C9748  38 61 00 08 */	addi r3, r1, 8
/* 801CC74C 001C974C  38 C0 00 20 */	li r6, 0x20
/* 801CC750 001C9750  38 E0 00 02 */	li r7, 2
/* 801CC754 001C9754  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 801CC758 001C9758  4B FA 33 45 */	bl func_8016FA9C
/* 801CC75C 001C975C  7C 03 D0 40 */	cmplw r3, r26
/* 801CC760 001C9760  40 80 00 14 */	bge lbl_801CC774
/* 801CC764 001C9764  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 801CC768 001C9768  4C C6 31 82 */	crclr 6
/* 801CC76C 001C976C  4B F9 B1 2D */	bl func_80167898
/* 801CC770 001C9770  48 00 01 F0 */	b lbl_801CC960
lbl_801CC774:
/* 801CC774 001C9774  80 1E 00 08 */	lwz r0, 8(r30)
/* 801CC778 001C9778  3B BA 00 20 */	addi r29, r26, 0x20
/* 801CC77C 001C977C  28 00 00 00 */	cmplwi r0, 0
/* 801CC780 001C9780  41 82 00 58 */	beq lbl_801CC7D8
/* 801CC784 001C9784  54 1A 10 3A */	slwi r26, r0, 2
/* 801CC788 001C9788  38 1A 00 1F */	addi r0, r26, 0x1f
/* 801CC78C 001C978C  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 801CC790 001C9790  7F 63 DB 78 */	mr r3, r27
/* 801CC794 001C9794  4B FF EB A9 */	bl HSD_Alloc
/* 801CC798 001C9798  90 7E 00 24 */	stw r3, 0x24(r30)
/* 801CC79C 001C979C  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 801CC7A0 001C97A0  28 04 00 00 */	cmplwi r4, 0
/* 801CC7A4 001C97A4  41 82 01 BC */	beq lbl_801CC960
/* 801CC7A8 001C97A8  7F 65 DB 78 */	mr r5, r27
/* 801CC7AC 001C97AC  7F A6 EB 78 */	mr r6, r29
/* 801CC7B0 001C97B0  38 61 00 08 */	addi r3, r1, 8
/* 801CC7B4 001C97B4  38 E0 00 02 */	li r7, 2
/* 801CC7B8 001C97B8  4B FA 32 E5 */	bl func_8016FA9C
/* 801CC7BC 001C97BC  7C 03 D0 40 */	cmplw r3, r26
/* 801CC7C0 001C97C0  40 80 00 14 */	bge lbl_801CC7D4
/* 801CC7C4 001C97C4  38 7F 01 10 */	addi r3, r31, 0x110
/* 801CC7C8 001C97C8  4C C6 31 82 */	crclr 6
/* 801CC7CC 001C97CC  4B F9 B0 CD */	bl func_80167898
/* 801CC7D0 001C97D0  48 00 01 90 */	b lbl_801CC960
lbl_801CC7D4:
/* 801CC7D4 001C97D4  7F BD D2 14 */	add r29, r29, r26
lbl_801CC7D8:
/* 801CC7D8 001C97D8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801CC7DC 001C97DC  28 00 00 00 */	cmplwi r0, 0
/* 801CC7E0 001C97E0  41 82 00 58 */	beq lbl_801CC838
/* 801CC7E4 001C97E4  54 1A 18 38 */	slwi r26, r0, 3
/* 801CC7E8 001C97E8  38 1A 00 1F */	addi r0, r26, 0x1f
/* 801CC7EC 001C97EC  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 801CC7F0 001C97F0  7F 63 DB 78 */	mr r3, r27
/* 801CC7F4 001C97F4  4B FF EB 49 */	bl HSD_Alloc
/* 801CC7F8 001C97F8  90 7E 00 28 */	stw r3, 0x28(r30)
/* 801CC7FC 001C97FC  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 801CC800 001C9800  28 04 00 00 */	cmplwi r4, 0
/* 801CC804 001C9804  41 82 01 5C */	beq lbl_801CC960
/* 801CC808 001C9808  7F 65 DB 78 */	mr r5, r27
/* 801CC80C 001C980C  7F A6 EB 78 */	mr r6, r29
/* 801CC810 001C9810  38 61 00 08 */	addi r3, r1, 8
/* 801CC814 001C9814  38 E0 00 02 */	li r7, 2
/* 801CC818 001C9818  4B FA 32 85 */	bl func_8016FA9C
/* 801CC81C 001C981C  7C 03 D0 40 */	cmplw r3, r26
/* 801CC820 001C9820  40 80 00 14 */	bge lbl_801CC834
/* 801CC824 001C9824  38 7F 01 40 */	addi r3, r31, 0x140
/* 801CC828 001C9828  4C C6 31 82 */	crclr 6
/* 801CC82C 001C982C  4B F9 B0 6D */	bl func_80167898
/* 801CC830 001C9830  48 00 01 30 */	b lbl_801CC960
lbl_801CC834:
/* 801CC834 001C9834  7F BD D2 14 */	add r29, r29, r26
lbl_801CC838:
/* 801CC838 001C9838  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801CC83C 001C983C  28 00 00 00 */	cmplwi r0, 0
/* 801CC840 001C9840  41 82 00 58 */	beq lbl_801CC898
/* 801CC844 001C9844  54 1A 18 38 */	slwi r26, r0, 3
/* 801CC848 001C9848  38 1A 00 1F */	addi r0, r26, 0x1f
/* 801CC84C 001C984C  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 801CC850 001C9850  7F 63 DB 78 */	mr r3, r27
/* 801CC854 001C9854  4B FF EA E9 */	bl HSD_Alloc
/* 801CC858 001C9858  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 801CC85C 001C985C  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 801CC860 001C9860  28 04 00 00 */	cmplwi r4, 0
/* 801CC864 001C9864  41 82 00 FC */	beq lbl_801CC960
/* 801CC868 001C9868  7F 65 DB 78 */	mr r5, r27
/* 801CC86C 001C986C  7F A6 EB 78 */	mr r6, r29
/* 801CC870 001C9870  38 61 00 08 */	addi r3, r1, 8
/* 801CC874 001C9874  38 E0 00 02 */	li r7, 2
/* 801CC878 001C9878  4B FA 32 25 */	bl func_8016FA9C
/* 801CC87C 001C987C  7C 03 D0 40 */	cmplw r3, r26
/* 801CC880 001C9880  40 80 00 14 */	bge lbl_801CC894
/* 801CC884 001C9884  38 7F 01 70 */	addi r3, r31, 0x170
/* 801CC888 001C9888  4C C6 31 82 */	crclr 6
/* 801CC88C 001C988C  4B F9 B0 0D */	bl func_80167898
/* 801CC890 001C9890  48 00 00 D0 */	b lbl_801CC960
lbl_801CC894:
/* 801CC894 001C9894  7F BD D2 14 */	add r29, r29, r26
lbl_801CC898:
/* 801CC898 001C9898  80 1E 00 00 */	lwz r0, 0(r30)
/* 801CC89C 001C989C  7F 5D 00 51 */	subf. r26, r29, r0
/* 801CC8A0 001C98A0  41 82 00 50 */	beq lbl_801CC8F0
/* 801CC8A4 001C98A4  38 1A 00 1F */	addi r0, r26, 0x1f
/* 801CC8A8 001C98A8  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 801CC8AC 001C98AC  7F 63 DB 78 */	mr r3, r27
/* 801CC8B0 001C98B0  4B FF EA 8D */	bl HSD_Alloc
/* 801CC8B4 001C98B4  90 7E 00 30 */	stw r3, 0x30(r30)
/* 801CC8B8 001C98B8  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 801CC8BC 001C98BC  28 04 00 00 */	cmplwi r4, 0
/* 801CC8C0 001C98C0  41 82 00 A0 */	beq lbl_801CC960
/* 801CC8C4 001C98C4  7F 65 DB 78 */	mr r5, r27
/* 801CC8C8 001C98C8  7F A6 EB 78 */	mr r6, r29
/* 801CC8CC 001C98CC  38 61 00 08 */	addi r3, r1, 8
/* 801CC8D0 001C98D0  38 E0 00 02 */	li r7, 2
/* 801CC8D4 001C98D4  4B FA 31 C9 */	bl func_8016FA9C
/* 801CC8D8 001C98D8  7C 03 D0 40 */	cmplw r3, r26
/* 801CC8DC 001C98DC  40 80 00 14 */	bge lbl_801CC8F0
/* 801CC8E0 001C98E0  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 801CC8E4 001C98E4  4C C6 31 82 */	crclr 6
/* 801CC8E8 001C98E8  4B F9 AF B1 */	bl func_80167898
/* 801CC8EC 001C98EC  48 00 00 74 */	b lbl_801CC960
lbl_801CC8F0:
/* 801CC8F0 001C98F0  7F 83 E3 78 */	mr r3, r28
/* 801CC8F4 001C98F4  4B FC 65 39 */	bl func_80192E2C
/* 801CC8F8 001C98F8  7C 7D 1B 78 */	mr r29, r3
/* 801CC8FC 001C98FC  38 7D 00 01 */	addi r3, r29, 1
/* 801CC900 001C9900  4B FF EA 3D */	bl HSD_Alloc
/* 801CC904 001C9904  90 7E 00 38 */	stw r3, 0x38(r30)
/* 801CC908 001C9908  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 801CC90C 001C990C  28 03 00 00 */	cmplwi r3, 0
/* 801CC910 001C9910  41 82 00 50 */	beq lbl_801CC960
/* 801CC914 001C9914  7F 84 E3 78 */	mr r4, r28
/* 801CC918 001C9918  38 BD 00 01 */	addi r5, r29, 1
/* 801CC91C 001C991C  4B E3 8C B1 */	bl memcpy
/* 801CC920 001C9920  38 80 00 00 */	li r4, 0
/* 801CC924 001C9924  7C 85 23 78 */	mr r5, r4
/* 801CC928 001C9928  48 00 00 24 */	b lbl_801CC94C
lbl_801CC92C:
/* 801CC92C 001C992C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801CC930 001C9930  38 84 00 01 */	addi r4, r4, 1
/* 801CC934 001C9934  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 801CC938 001C9938  7C 63 28 2E */	lwzx r3, r3, r5
/* 801CC93C 001C993C  38 A5 00 04 */	addi r5, r5, 4
/* 801CC940 001C9940  7C 06 18 2E */	lwzx r0, r6, r3
/* 801CC944 001C9944  7C 00 32 14 */	add r0, r0, r6
/* 801CC948 001C9948  7C 06 19 2E */	stwx r0, r6, r3
lbl_801CC94C:
/* 801CC94C 001C994C  80 1E 00 08 */	lwz r0, 8(r30)
/* 801CC950 001C9950  7C 04 00 40 */	cmplw r4, r0
/* 801CC954 001C9954  41 80 FF D8 */	blt lbl_801CC92C
/* 801CC958 001C9958  7F C3 F3 78 */	mr r3, r30
/* 801CC95C 001C995C  48 00 00 20 */	b lbl_801CC97C
lbl_801CC960:
/* 801CC960 001C9960  38 61 00 08 */	addi r3, r1, 8
/* 801CC964 001C9964  4B FA 2E 01 */	bl func_8016F764
/* 801CC968 001C9968  28 1E 00 00 */	cmplwi r30, 0
/* 801CC96C 001C996C  41 82 00 0C */	beq lbl_801CC978
/* 801CC970 001C9970  7F C3 F3 78 */	mr r3, r30
/* 801CC974 001C9974  48 00 00 21 */	bl HSD_ArchiveFree
lbl_801CC978:
/* 801CC978 001C9978  38 60 00 00 */	li r3, 0
lbl_801CC97C:
/* 801CC97C 001C997C  39 61 00 60 */	addi r11, r1, 0x60
/* 801CC980 001C9980  4B FC 19 45 */	bl func_8018E2C4
/* 801CC984 001C9984  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801CC988 001C9988  7C 08 03 A6 */	mtlr r0
/* 801CC98C 001C998C  38 21 00 60 */	addi r1, r1, 0x60
/* 801CC990 001C9990  4E 80 00 20 */	blr 

.global HSD_ArchiveFree
HSD_ArchiveFree:
/* 801CC994 001C9994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC998 001C9998  7C 08 02 A6 */	mflr r0
/* 801CC99C 001C999C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC9A0 001C99A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CC9A4 001C99A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 801CC9A8 001C99A8  41 82 00 78 */	beq lbl_801CCA20
/* 801CC9AC 001C99AC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 801CC9B0 001C99B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801CC9B4 001C99B4  40 82 00 64 */	bne lbl_801CCA18
/* 801CC9B8 001C99B8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801CC9BC 001C99BC  28 03 00 00 */	cmplwi r3, 0
/* 801CC9C0 001C99C0  41 82 00 08 */	beq lbl_801CC9C8
/* 801CC9C4 001C99C4  4B FF E9 49 */	bl HSD_Free
lbl_801CC9C8:
/* 801CC9C8 001C99C8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801CC9CC 001C99CC  28 03 00 00 */	cmplwi r3, 0
/* 801CC9D0 001C99D0  41 82 00 08 */	beq lbl_801CC9D8
/* 801CC9D4 001C99D4  4B FF E9 39 */	bl HSD_Free
lbl_801CC9D8:
/* 801CC9D8 001C99D8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801CC9DC 001C99DC  28 03 00 00 */	cmplwi r3, 0
/* 801CC9E0 001C99E0  41 82 00 08 */	beq lbl_801CC9E8
/* 801CC9E4 001C99E4  4B FF E9 29 */	bl HSD_Free
lbl_801CC9E8:
/* 801CC9E8 001C99E8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801CC9EC 001C99EC  28 03 00 00 */	cmplwi r3, 0
/* 801CC9F0 001C99F0  41 82 00 08 */	beq lbl_801CC9F8
/* 801CC9F4 001C99F4  4B FF E9 19 */	bl HSD_Free
lbl_801CC9F8:
/* 801CC9F8 001C99F8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801CC9FC 001C99FC  28 03 00 00 */	cmplwi r3, 0
/* 801CCA00 001C9A00  41 82 00 08 */	beq lbl_801CCA08
/* 801CCA04 001C9A04  4B FF E9 09 */	bl HSD_Free
lbl_801CCA08:
/* 801CCA08 001C9A08  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801CCA0C 001C9A0C  28 03 00 00 */	cmplwi r3, 0
/* 801CCA10 001C9A10  41 82 00 08 */	beq lbl_801CCA18
/* 801CCA14 001C9A14  4B FF E8 F9 */	bl HSD_Free
lbl_801CCA18:
/* 801CCA18 001C9A18  7F E3 FB 78 */	mr r3, r31
/* 801CCA1C 001C9A1C  4B FF E8 F1 */	bl HSD_Free
lbl_801CCA20:
/* 801CCA20 001C9A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CCA24 001C9A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CCA28 001C9A28  7C 08 03 A6 */	mtlr r0
/* 801CCA2C 001C9A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CCA30 001C9A30  4E 80 00 20 */	blr 

.global HSD_ArchiveDefaultLoader
HSD_ArchiveDefaultLoader:
/* 801CCA34 001C9A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CCA38 001C9A38  7C 08 02 A6 */	mflr r0
/* 801CCA3C 001C9A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CCA40 001C9A40  4B FF FC 15 */	bl HSD_ArchiveLoad
/* 801CCA44 001C9A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CCA48 001C9A48  7C 08 03 A6 */	mtlr r0
/* 801CCA4C 001C9A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CCA50 001C9A50  4E 80 00 20 */	blr 

.global HSD_ArchiveLoadDepends
HSD_ArchiveLoadDepends:
/* 801CCA54 001C9A54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CCA58 001C9A58  7C 08 02 A6 */	mflr r0
/* 801CCA5C 001C9A5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CCA60 001C9A60  39 61 00 30 */	addi r11, r1, 0x30
/* 801CCA64 001C9A64  4B FC 18 09 */	bl func_8018E26C
/* 801CCA68 001C9A68  7C 9B 23 79 */	or. r27, r4, r4
/* 801CCA6C 001C9A6C  7C 7A 1B 78 */	mr r26, r3
/* 801CCA70 001C9A70  7C BC 2B 78 */	mr r28, r5
/* 801CCA74 001C9A74  7C DD 33 78 */	mr r29, r6
/* 801CCA78 001C9A78  40 82 00 08 */	bne lbl_801CCA80
/* 801CCA7C 001C9A7C  7F 5B D3 78 */	mr r27, r26
lbl_801CCA80:
/* 801CCA80 001C9A80  28 1C 00 00 */	cmplwi r28, 0
/* 801CCA84 001C9A84  40 82 00 14 */	bne lbl_801CCA98
/* 801CCA88 001C9A88  3C 60 80 1D */	lis r3, HSD_ArchiveDefaultLoader@ha
/* 801CCA8C 001C9A8C  7F 7D DB 78 */	mr r29, r27
/* 801CCA90 001C9A90  38 03 CA 34 */	addi r0, r3, HSD_ArchiveDefaultLoader@l
/* 801CCA94 001C9A94  7C 1C 03 78 */	mr r28, r0
lbl_801CCA98:
/* 801CCA98 001C9A98  3B C0 00 00 */	li r30, 0
/* 801CCA9C 001C9A9C  3B E0 00 00 */	li r31, 0
/* 801CCAA0 001C9AA0  48 00 00 F0 */	b lbl_801CCB90
lbl_801CCAA4:
/* 801CCAA4 001C9AA4  2C 1E 00 00 */	cmpwi r30, 0
/* 801CCAA8 001C9AA8  41 80 00 0C */	blt lbl_801CCAB4
/* 801CCAAC 001C9AAC  7C 00 F0 40 */	cmplw r0, r30
/* 801CCAB0 001C9AB0  41 81 00 0C */	bgt lbl_801CCABC
lbl_801CCAB4:
/* 801CCAB4 001C9AB4  38 80 00 00 */	li r4, 0
/* 801CCAB8 001C9AB8  48 00 00 18 */	b lbl_801CCAD0
lbl_801CCABC:
/* 801CCABC 001C9ABC  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 801CCAC0 001C9AC0  38 1F 00 04 */	addi r0, r31, 4
/* 801CCAC4 001C9AC4  80 9A 00 30 */	lwz r4, 0x30(r26)
/* 801CCAC8 001C9AC8  7C 03 00 2E */	lwzx r0, r3, r0
/* 801CCACC 001C9ACC  7C 84 02 14 */	add r4, r4, r0
lbl_801CCAD0:
/* 801CCAD0 001C9AD0  28 04 00 00 */	cmplwi r4, 0
/* 801CCAD4 001C9AD4  41 82 00 B4 */	beq lbl_801CCB88
/* 801CCAD8 001C9AD8  3C 60 80 25 */	lis r3, lbl_8024CD58@ha
/* 801CCADC 001C9ADC  38 63 CD 58 */	addi r3, r3, lbl_8024CD58@l
/* 801CCAE0 001C9AE0  4B FC 62 95 */	bl func_80192D74
/* 801CCAE4 001C9AE4  3C 60 80 25 */	lis r3, lbl_8024CD58@ha
/* 801CCAE8 001C9AE8  38 80 00 3A */	li r4, 0x3a
/* 801CCAEC 001C9AEC  38 63 CD 58 */	addi r3, r3, lbl_8024CD58@l
/* 801CCAF0 001C9AF0  4B FC 60 7D */	bl func_80192B6C
/* 801CCAF4 001C9AF4  28 03 00 00 */	cmplwi r3, 0
/* 801CCAF8 001C9AF8  41 82 00 0C */	beq lbl_801CCB04
/* 801CCAFC 001C9AFC  38 00 00 00 */	li r0, 0
/* 801CCB00 001C9B00  98 03 00 00 */	stb r0, 0(r3)
lbl_801CCB04:
/* 801CCB04 001C9B04  3C 60 80 25 */	lis r3, lbl_8024CD58@ha
/* 801CCB08 001C9B08  7F 78 DB 78 */	mr r24, r27
/* 801CCB0C 001C9B0C  3B 23 CD 58 */	addi r25, r3, lbl_8024CD58@l
/* 801CCB10 001C9B10  3A E0 00 00 */	li r23, 0
/* 801CCB14 001C9B14  48 00 00 20 */	b lbl_801CCB34
lbl_801CCB18:
/* 801CCB18 001C9B18  80 78 00 38 */	lwz r3, 0x38(r24)
/* 801CCB1C 001C9B1C  7F 24 CB 78 */	mr r4, r25
/* 801CCB20 001C9B20  4B FC 60 BD */	bl func_80192BDC
/* 801CCB24 001C9B24  2C 03 00 00 */	cmpwi r3, 0
/* 801CCB28 001C9B28  41 82 00 14 */	beq lbl_801CCB3C
/* 801CCB2C 001C9B2C  7F 17 C3 78 */	mr r23, r24
/* 801CCB30 001C9B30  83 18 00 34 */	lwz r24, 0x34(r24)
lbl_801CCB34:
/* 801CCB34 001C9B34  28 18 00 00 */	cmplwi r24, 0
/* 801CCB38 001C9B38  40 82 FF E0 */	bne lbl_801CCB18
lbl_801CCB3C:
/* 801CCB3C 001C9B3C  28 18 00 00 */	cmplwi r24, 0
/* 801CCB40 001C9B40  40 82 00 48 */	bne lbl_801CCB88
/* 801CCB44 001C9B44  3C 60 80 25 */	lis r3, lbl_8024CD58@ha
/* 801CCB48 001C9B48  7F 8C E3 78 */	mr r12, r28
/* 801CCB4C 001C9B4C  38 63 CD 58 */	addi r3, r3, lbl_8024CD58@l
/* 801CCB50 001C9B50  7F A4 EB 78 */	mr r4, r29
/* 801CCB54 001C9B54  7D 89 03 A6 */	mtctr r12
/* 801CCB58 001C9B58  4E 80 04 21 */	bctrl 
/* 801CCB5C 001C9B5C  28 03 00 00 */	cmplwi r3, 0
/* 801CCB60 001C9B60  41 82 00 28 */	beq lbl_801CCB88
/* 801CCB64 001C9B64  38 00 00 00 */	li r0, 0
/* 801CCB68 001C9B68  28 17 00 00 */	cmplwi r23, 0
/* 801CCB6C 001C9B6C  90 03 00 34 */	stw r0, 0x34(r3)
/* 801CCB70 001C9B70  41 82 00 08 */	beq lbl_801CCB78
/* 801CCB74 001C9B74  90 77 00 34 */	stw r3, 0x34(r23)
lbl_801CCB78:
/* 801CCB78 001C9B78  7F 64 DB 78 */	mr r4, r27
/* 801CCB7C 001C9B7C  7F 85 E3 78 */	mr r5, r28
/* 801CCB80 001C9B80  7F A6 EB 78 */	mr r6, r29
/* 801CCB84 001C9B84  4B FF FE D1 */	bl HSD_ArchiveLoadDepends
lbl_801CCB88:
/* 801CCB88 001C9B88  3B FF 00 08 */	addi r31, r31, 8
/* 801CCB8C 001C9B8C  3B DE 00 01 */	addi r30, r30, 1
lbl_801CCB90:
/* 801CCB90 001C9B90  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 801CCB94 001C9B94  7C 1E 00 40 */	cmplw r30, r0
/* 801CCB98 001C9B98  41 80 FF 0C */	blt lbl_801CCAA4
/* 801CCB9C 001C9B9C  39 61 00 30 */	addi r11, r1, 0x30
/* 801CCBA0 001C9BA0  4B FC 17 19 */	bl func_8018E2B8
/* 801CCBA4 001C9BA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CCBA8 001C9BA8  7C 08 03 A6 */	mtlr r0
/* 801CCBAC 001C9BAC  38 21 00 30 */	addi r1, r1, 0x30
/* 801CCBB0 001C9BB0  4E 80 00 20 */	blr 

.global HSD_ArchiveResolveReference
HSD_ArchiveResolveReference:
/* 801CCBB4 001C9BB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801CCBB8 001C9BB8  7C 08 02 A6 */	mflr r0
/* 801CCBBC 001C9BBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801CCBC0 001C9BC0  39 61 00 40 */	addi r11, r1, 0x40
/* 801CCBC4 001C9BC4  4B FC 16 9D */	bl func_8018E260
/* 801CCBC8 001C9BC8  7C 97 23 79 */	or. r23, r4, r4
/* 801CCBCC 001C9BCC  7C 76 1B 78 */	mr r22, r3
/* 801CCBD0 001C9BD0  40 82 01 D0 */	bne lbl_801CCDA0
/* 801CCBD4 001C9BD4  7E D7 B3 78 */	mr r23, r22
/* 801CCBD8 001C9BD8  48 00 01 C8 */	b lbl_801CCDA0
lbl_801CCBDC:
/* 801CCBDC 001C9BDC  3B 40 00 00 */	li r26, 0
/* 801CCBE0 001C9BE0  3B 80 00 00 */	li r28, 0
/* 801CCBE4 001C9BE4  48 00 01 AC */	b lbl_801CCD90
lbl_801CCBE8:
/* 801CCBE8 001C9BE8  2C 1A 00 00 */	cmpwi r26, 0
/* 801CCBEC 001C9BEC  41 80 00 0C */	blt lbl_801CCBF8
/* 801CCBF0 001C9BF0  7C 00 D0 40 */	cmplw r0, r26
/* 801CCBF4 001C9BF4  41 81 00 0C */	bgt lbl_801CCC00
lbl_801CCBF8:
/* 801CCBF8 001C9BF8  3B C0 00 00 */	li r30, 0
/* 801CCBFC 001C9BFC  48 00 00 18 */	b lbl_801CCC14
lbl_801CCC00:
/* 801CCC00 001C9C00  80 76 00 2C */	lwz r3, 0x2c(r22)
/* 801CCC04 001C9C04  38 1C 00 04 */	addi r0, r28, 4
/* 801CCC08 001C9C08  80 96 00 30 */	lwz r4, 0x30(r22)
/* 801CCC0C 001C9C0C  7C 03 00 2E */	lwzx r0, r3, r0
/* 801CCC10 001C9C10  7F C4 02 14 */	add r30, r4, r0
lbl_801CCC14:
/* 801CCC14 001C9C14  28 1E 00 00 */	cmplwi r30, 0
/* 801CCC18 001C9C18  41 82 01 70 */	beq lbl_801CCD88
/* 801CCC1C 001C9C1C  3C 60 80 25 */	lis r3, lbl_8024D158@ha
/* 801CCC20 001C9C20  7F C4 F3 78 */	mr r4, r30
/* 801CCC24 001C9C24  38 63 D1 58 */	addi r3, r3, lbl_8024D158@l
/* 801CCC28 001C9C28  4B FC 61 4D */	bl func_80192D74
/* 801CCC2C 001C9C2C  3C 60 80 25 */	lis r3, lbl_8024D158@ha
/* 801CCC30 001C9C30  38 80 00 3A */	li r4, 0x3a
/* 801CCC34 001C9C34  38 63 D1 58 */	addi r3, r3, lbl_8024D158@l
/* 801CCC38 001C9C38  4B FC 5F 35 */	bl func_80192B6C
/* 801CCC3C 001C9C3C  7C 7B 1B 79 */	or. r27, r3, r3
/* 801CCC40 001C9C40  41 82 00 10 */	beq lbl_801CCC50
/* 801CCC44 001C9C44  38 00 00 00 */	li r0, 0
/* 801CCC48 001C9C48  98 1B 00 00 */	stb r0, 0(r27)
/* 801CCC4C 001C9C4C  3B 7B 00 01 */	addi r27, r27, 1
lbl_801CCC50:
/* 801CCC50 001C9C50  3C 60 80 25 */	lis r3, lbl_8024D158@ha
/* 801CCC54 001C9C54  7E F9 BB 78 */	mr r25, r23
/* 801CCC58 001C9C58  3B E3 D1 58 */	addi r31, r3, lbl_8024D158@l
/* 801CCC5C 001C9C5C  48 00 01 24 */	b lbl_801CCD80
lbl_801CCC60:
/* 801CCC60 001C9C60  80 79 00 38 */	lwz r3, 0x38(r25)
/* 801CCC64 001C9C64  7F E4 FB 78 */	mr r4, r31
/* 801CCC68 001C9C68  4B FC 5F 75 */	bl func_80192BDC
/* 801CCC6C 001C9C6C  2C 03 00 00 */	cmpwi r3, 0
/* 801CCC70 001C9C70  40 82 01 0C */	bne lbl_801CCD7C
/* 801CCC74 001C9C74  28 1B 00 00 */	cmplwi r27, 0
/* 801CCC78 001C9C78  41 82 00 6C */	beq lbl_801CCCE4
/* 801CCC7C 001C9C7C  3B 00 00 00 */	li r24, 0
/* 801CCC80 001C9C80  7F 15 C3 78 */	mr r21, r24
/* 801CCC84 001C9C84  48 00 00 48 */	b lbl_801CCCCC
lbl_801CCC88:
/* 801CCC88 001C9C88  80 79 00 28 */	lwz r3, 0x28(r25)
/* 801CCC8C 001C9C8C  38 15 00 04 */	addi r0, r21, 4
/* 801CCC90 001C9C90  80 B9 00 30 */	lwz r5, 0x30(r25)
/* 801CCC94 001C9C94  7F 64 DB 78 */	mr r4, r27
/* 801CCC98 001C9C98  7C 03 00 2E */	lwzx r0, r3, r0
/* 801CCC9C 001C9C9C  7C 65 02 14 */	add r3, r5, r0
/* 801CCCA0 001C9CA0  4B FC 5F 3D */	bl func_80192BDC
/* 801CCCA4 001C9CA4  2C 03 00 00 */	cmpwi r3, 0
/* 801CCCA8 001C9CA8  40 82 00 1C */	bne lbl_801CCCC4
/* 801CCCAC 001C9CAC  80 79 00 28 */	lwz r3, 0x28(r25)
/* 801CCCB0 001C9CB0  57 00 18 38 */	slwi r0, r24, 3
/* 801CCCB4 001C9CB4  80 99 00 20 */	lwz r4, 0x20(r25)
/* 801CCCB8 001C9CB8  7C 03 00 2E */	lwzx r0, r3, r0
/* 801CCCBC 001C9CBC  7C 04 02 14 */	add r0, r4, r0
/* 801CCCC0 001C9CC0  48 00 00 1C */	b lbl_801CCCDC
lbl_801CCCC4:
/* 801CCCC4 001C9CC4  3A B5 00 08 */	addi r21, r21, 8
/* 801CCCC8 001C9CC8  3B 18 00 01 */	addi r24, r24, 1
lbl_801CCCCC:
/* 801CCCCC 001C9CCC  80 19 00 0C */	lwz r0, 0xc(r25)
/* 801CCCD0 001C9CD0  7C 18 00 40 */	cmplw r24, r0
/* 801CCCD4 001C9CD4  41 80 FF B4 */	blt lbl_801CCC88
/* 801CCCD8 001C9CD8  38 00 00 00 */	li r0, 0
lbl_801CCCDC:
/* 801CCCDC 001C9CDC  7C 18 03 78 */	mr r24, r0
/* 801CCCE0 001C9CE0  48 00 00 08 */	b lbl_801CCCE8
lbl_801CCCE4:
/* 801CCCE4 001C9CE4  83 19 00 20 */	lwz r24, 0x20(r25)
lbl_801CCCE8:
/* 801CCCE8 001C9CE8  3A A0 00 00 */	li r21, 0
/* 801CCCEC 001C9CEC  3B A0 FF FF */	li r29, -1
/* 801CCCF0 001C9CF0  7E B4 AB 78 */	mr r20, r21
/* 801CCCF4 001C9CF4  48 00 00 40 */	b lbl_801CCD34
lbl_801CCCF8:
/* 801CCCF8 001C9CF8  80 96 00 2C */	lwz r4, 0x2c(r22)
/* 801CCCFC 001C9CFC  38 14 00 04 */	addi r0, r20, 4
/* 801CCD00 001C9D00  80 B6 00 30 */	lwz r5, 0x30(r22)
/* 801CCD04 001C9D04  7F C3 F3 78 */	mr r3, r30
/* 801CCD08 001C9D08  7C 04 00 2E */	lwzx r0, r4, r0
/* 801CCD0C 001C9D0C  7C 85 02 14 */	add r4, r5, r0
/* 801CCD10 001C9D10  4B FC 5E CD */	bl func_80192BDC
/* 801CCD14 001C9D14  2C 03 00 00 */	cmpwi r3, 0
/* 801CCD18 001C9D18  40 82 00 14 */	bne lbl_801CCD2C
/* 801CCD1C 001C9D1C  80 76 00 2C */	lwz r3, 0x2c(r22)
/* 801CCD20 001C9D20  56 A0 18 38 */	slwi r0, r21, 3
/* 801CCD24 001C9D24  7F A3 00 2E */	lwzx r29, r3, r0
/* 801CCD28 001C9D28  48 00 00 18 */	b lbl_801CCD40
lbl_801CCD2C:
/* 801CCD2C 001C9D2C  3A 94 00 08 */	addi r20, r20, 8
/* 801CCD30 001C9D30  3A B5 00 01 */	addi r21, r21, 1
lbl_801CCD34:
/* 801CCD34 001C9D34  80 16 00 10 */	lwz r0, 0x10(r22)
/* 801CCD38 001C9D38  7C 15 00 40 */	cmplw r21, r0
/* 801CCD3C 001C9D3C  41 80 FF BC */	blt lbl_801CCCF8
lbl_801CCD40:
/* 801CCD40 001C9D40  3C 1D 00 01 */	addis r0, r29, 1
/* 801CCD44 001C9D44  28 00 FF FF */	cmplwi r0, 0xffff
/* 801CCD48 001C9D48  40 82 00 1C */	bne lbl_801CCD64
/* 801CCD4C 001C9D4C  48 00 00 30 */	b lbl_801CCD7C
/* 801CCD50 001C9D50  48 00 00 14 */	b lbl_801CCD64
lbl_801CCD54:
/* 801CCD54 001C9D54  80 76 00 20 */	lwz r3, 0x20(r22)
/* 801CCD58 001C9D58  7C 03 E8 2E */	lwzx r0, r3, r29
/* 801CCD5C 001C9D5C  7F 03 E9 2E */	stwx r24, r3, r29
/* 801CCD60 001C9D60  7C 1D 03 78 */	mr r29, r0
lbl_801CCD64:
/* 801CCD64 001C9D64  3C 1D 00 01 */	addis r0, r29, 1
/* 801CCD68 001C9D68  28 00 FF FF */	cmplwi r0, 0xffff
/* 801CCD6C 001C9D6C  41 82 00 10 */	beq lbl_801CCD7C
/* 801CCD70 001C9D70  80 16 00 04 */	lwz r0, 4(r22)
/* 801CCD74 001C9D74  7C 1D 00 40 */	cmplw r29, r0
/* 801CCD78 001C9D78  41 80 FF DC */	blt lbl_801CCD54
lbl_801CCD7C:
/* 801CCD7C 001C9D7C  83 39 00 34 */	lwz r25, 0x34(r25)
lbl_801CCD80:
/* 801CCD80 001C9D80  28 19 00 00 */	cmplwi r25, 0
/* 801CCD84 001C9D84  40 82 FE DC */	bne lbl_801CCC60
lbl_801CCD88:
/* 801CCD88 001C9D88  3B 9C 00 08 */	addi r28, r28, 8
/* 801CCD8C 001C9D8C  3B 5A 00 01 */	addi r26, r26, 1
lbl_801CCD90:
/* 801CCD90 001C9D90  80 16 00 10 */	lwz r0, 0x10(r22)
/* 801CCD94 001C9D94  7C 1A 00 40 */	cmplw r26, r0
/* 801CCD98 001C9D98  41 80 FE 50 */	blt lbl_801CCBE8
/* 801CCD9C 001C9D9C  82 D6 00 34 */	lwz r22, 0x34(r22)
lbl_801CCDA0:
/* 801CCDA0 001C9DA0  28 16 00 00 */	cmplwi r22, 0
/* 801CCDA4 001C9DA4  40 82 FE 38 */	bne lbl_801CCBDC
/* 801CCDA8 001C9DA8  48 00 00 08 */	b lbl_801CCDB0
/* 801CCDAC 001C9DAC  4B FF FF B8 */	b lbl_801CCD64
lbl_801CCDB0:
/* 801CCDB0 001C9DB0  39 61 00 40 */	addi r11, r1, 0x40
/* 801CCDB4 001C9DB4  4B FC 14 F9 */	bl func_8018E2AC
/* 801CCDB8 001C9DB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801CCDBC 001C9DBC  7C 08 03 A6 */	mtlr r0
/* 801CCDC0 001C9DC0  38 21 00 40 */	addi r1, r1, 0x40
/* 801CCDC4 001C9DC4  4E 80 00 20 */	blr
