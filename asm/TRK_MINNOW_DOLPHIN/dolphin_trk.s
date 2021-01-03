.include "macros.inc"

.section .text  # 0x8018D450 - 0x8018D590

.global InitMetroTRK
InitMetroTRK:
/* 8018D450 0018A450  38 21 FF FC */	addi r1, r1, -4
/* 8018D454 0018A454  90 61 00 00 */	stw r3, 0(r1)
/* 8018D458 0018A458  3C 60 80 24 */	lis r3, lbl_80247860@h
/* 8018D45C 0018A45C  60 63 78 60 */	ori r3, r3, lbl_80247860@l
/* 8018D460 0018A460  BC 03 00 00 */	stmw r0, 0(r3)
/* 8018D464 0018A464  80 81 00 00 */	lwz r4, 0(r1)
/* 8018D468 0018A468  38 21 00 04 */	addi r1, r1, 4
/* 8018D46C 0018A46C  90 23 00 04 */	stw r1, 4(r3)
/* 8018D470 0018A470  90 83 00 0C */	stw r4, 0xc(r3)
/* 8018D474 0018A474  7C 88 02 A6 */	mflr r4
/* 8018D478 0018A478  90 83 00 84 */	stw r4, 0x84(r3)
/* 8018D47C 0018A47C  90 83 00 80 */	stw r4, 0x80(r3)
/* 8018D480 0018A480  7C 80 00 26 */	mfcr r4
/* 8018D484 0018A484  90 83 00 88 */	stw r4, 0x88(r3)
/* 8018D488 0018A488  7C 80 00 A6 */	mfmsr r4
/* 8018D48C 0018A48C  60 83 80 00 */	ori r3, r4, 0x8000
/* 8018D490 0018A490  68 63 80 00 */	xori r3, r3, 0x8000
/* 8018D494 0018A494  7C 60 01 24 */	mtmsr r3
/* 8018D498 0018A498  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 8018D49C 0018A49C  48 00 00 F5 */	bl TRKSaveExtended1Block
/* 8018D4A0 0018A4A0  3C 60 80 24 */	lis r3, lbl_80247860@h
/* 8018D4A4 0018A4A4  60 63 78 60 */	ori r3, r3, lbl_80247860@l
/* 8018D4A8 0018A4A8  B8 03 00 00 */	.byte 0xB8, 0x03, 0x00, 0x00  /* lmw r0, 0(r3) */
/* 8018D4AC 0018A4AC  38 00 00 00 */	li r0, 0
/* 8018D4B0 0018A4B0  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 8018D4B4 0018A4B4  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 8018D4B8 0018A4B8  3C 20 80 28 */	lis r1, 0x8028E578@h
/* 8018D4BC 0018A4BC  60 21 E5 78 */	ori r1, r1, 0x8028E578@l
/* 8018D4C0 0018A4C0  7C A3 2B 78 */	mr r3, r5
/* 8018D4C4 0018A4C4  48 00 07 FD */	bl InitMetroTRKCommTable
/* 8018D4C8 0018A4C8  2C 03 00 01 */	cmpwi r3, 1
/* 8018D4CC 0018A4CC  40 82 00 14 */	bne lbl_8018D4E0
/* 8018D4D0 0018A4D0  80 83 00 84 */	lwz r4, 0x84(r3)
/* 8018D4D4 0018A4D4  7C 88 03 A6 */	mtlr r4
/* 8018D4D8 0018A4D8  B8 03 00 00 */	.byte 0xB8, 0x03, 0x00, 0x00  /* lmw r0, 0(r3) */
/* 8018D4DC 0018A4DC  4E 80 00 20 */	blr 
lbl_8018D4E0:
/* 8018D4E0 0018A4E0  48 00 04 28 */	b TRK_main

.global TRKInitializeTarget
TRKInitializeTarget:
/* 8018D4E4 0018A4E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018D4E8 0018A4E8  7C 08 02 A6 */	mflr r0
/* 8018D4EC 0018A4EC  3C 60 80 24 */	lis r3, lbl_802477BC@ha
/* 8018D4F0 0018A4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018D4F4 0018A4F4  38 00 00 01 */	li r0, 1
/* 8018D4F8 0018A4F8  38 63 77 BC */	addi r3, r3, lbl_802477BC@l
/* 8018D4FC 0018A4FC  90 03 00 98 */	stw r0, 0x98(r3)
/* 8018D500 0018A500  4B FF E6 95 */	bl __TRK_get_MSR
/* 8018D504 0018A504  3C A0 80 24 */	lis r5, lbl_802477BC@ha
/* 8018D508 0018A508  3C 80 80 24 */	lis r4, lbl_80247D38@ha
/* 8018D50C 0018A50C  38 A5 77 BC */	addi r5, r5, lbl_802477BC@l
/* 8018D510 0018A510  3C 00 E0 00 */	lis r0, 0xe000
/* 8018D514 0018A514  90 65 00 8C */	stw r3, 0x8c(r5)
/* 8018D518 0018A518  38 60 00 00 */	li r3, 0
/* 8018D51C 0018A51C  90 04 7D 38 */	stw r0, lbl_80247D38@l(r4)
/* 8018D520 0018A520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018D524 0018A524  7C 08 03 A6 */	mtlr r0
/* 8018D528 0018A528  38 21 00 10 */	addi r1, r1, 0x10
/* 8018D52C 0018A52C  4E 80 00 20 */	blr 

.global TRKTargetTranslate
TRKTargetTranslate:
/* 8018D530 0018A530  3C 80 80 24 */	lis r4, lbl_80247D38@ha
/* 8018D534 0018A534  38 84 7D 38 */	addi r4, r4, lbl_80247D38@l
/* 8018D538 0018A538  80 84 00 00 */	lwz r4, 0(r4)
/* 8018D53C 0018A53C  7C 03 20 40 */	cmplw r3, r4
/* 8018D540 0018A540  41 80 00 24 */	blt lbl_8018D564
/* 8018D544 0018A544  38 04 40 00 */	addi r0, r4, 0x4000
/* 8018D548 0018A548  7C 03 00 40 */	cmplw r3, r0
/* 8018D54C 0018A54C  40 80 00 18 */	bge lbl_8018D564
/* 8018D550 0018A550  3C 80 80 24 */	lis r4, lbl_80247860@ha
/* 8018D554 0018A554  38 84 78 60 */	addi r4, r4, lbl_80247860@l
/* 8018D558 0018A558  80 04 02 38 */	lwz r0, 0x238(r4)
/* 8018D55C 0018A55C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8018D560 0018A560  4C 82 00 20 */	bnelr 
lbl_8018D564:
/* 8018D564 0018A564  54 60 00 BE */	clrlwi r0, r3, 2
/* 8018D568 0018A568  64 03 80 00 */	oris r3, r0, 0x8000
/* 8018D56C 0018A56C  4E 80 00 20 */	blr 

.global EnableMetroTRKInterrupts
EnableMetroTRKInterrupts:
/* 8018D570 0018A570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018D574 0018A574  7C 08 02 A6 */	mflr r0
/* 8018D578 0018A578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018D57C 0018A57C  48 00 06 D9 */	bl EnableEXI2Interrupts
/* 8018D580 0018A580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018D584 0018A584  7C 08 03 A6 */	mtlr r0
/* 8018D588 0018A588  38 21 00 10 */	addi r1, r1, 0x10
/* 8018D58C 0018A58C  4E 80 00 20 */	blr 
