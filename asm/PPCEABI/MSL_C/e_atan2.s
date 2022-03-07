.include "macros.inc"

.section .text  # 0x80193508 - 0x80193798

.global __ieee754_atan2
__ieee754_atan2:
/* 80193508 00190508  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019350C 0019050C  7C 08 02 A6 */	mflr r0
/* 80193510 00190510  3C 60 7F F0 */	lis r3, 0x7ff0
/* 80193514 00190514  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 80193518 00190518  81 01 00 14 */	lwz r8, 0x14(r1)
/* 8019351C 0019051C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80193520 00190520  7C 08 00 D0 */	neg r0, r8
/* 80193524 00190524  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80193528 00190528  7D 00 03 78 */	or r0, r8, r0
/* 8019352C 0019052C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80193530 00190530  54 86 00 7E */	clrlwi r6, r4, 1
/* 80193534 00190534  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80193538 00190538  80 A1 00 08 */	lwz r5, 8(r1)
/* 8019353C 0019053C  7C C0 03 78 */	or r0, r6, r0
/* 80193540 00190540  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80193544 00190544  7C 00 18 40 */	cmplw r0, r3
/* 80193548 00190548  81 21 00 0C */	lwz r9, 0xc(r1)
/* 8019354C 0019054C  54 A7 00 7E */	clrlwi r7, r5, 1
/* 80193550 00190550  41 81 00 1C */	bgt lbl_8019356C
/* 80193554 00190554  7C 09 00 D0 */	neg r0, r9
/* 80193558 00190558  7D 20 03 78 */	or r0, r9, r0
/* 8019355C 0019055C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80193560 00190560  7C E0 03 78 */	or r0, r7, r0
/* 80193564 00190564  7C 00 18 40 */	cmplw r0, r3
/* 80193568 00190568  40 81 00 14 */	ble lbl_8019357C
lbl_8019356C:
/* 8019356C 0019056C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80193570 00190570  C8 01 00 08 */	lfd f0, 8(r1)
/* 80193574 00190574  FC 21 00 2A */	fadd f1, f1, f0
/* 80193578 00190578  48 00 02 0C */	b lbl_80193784
lbl_8019357C:
/* 8019357C 0019057C  3C 04 C0 10 */	addis r0, r4, 0xc010
/* 80193580 00190580  7C 00 43 79 */	or. r0, r0, r8
/* 80193584 00190584  40 82 00 0C */	bne lbl_80193590
/* 80193588 00190588  48 00 28 0D */	bl atan
/* 8019358C 0019058C  48 00 01 F8 */	b lbl_80193784
lbl_80193590:
/* 80193590 00190590  7C E0 4B 79 */	or. r0, r7, r9
/* 80193594 00190594  54 80 17 BC */	rlwinm r0, r4, 2, 0x1e, 0x1e
/* 80193598 00190598  7C 1F 03 78 */	mr r31, r0
/* 8019359C 0019059C  50 BF 0F FE */	rlwimi r31, r5, 1, 0x1f, 0x1f
/* 801935A0 001905A0  40 82 00 3C */	bne lbl_801935DC
/* 801935A4 001905A4  2C 1F 00 02 */	cmpwi r31, 2
/* 801935A8 001905A8  41 82 00 24 */	beq lbl_801935CC
/* 801935AC 001905AC  40 80 00 10 */	bge lbl_801935BC
/* 801935B0 001905B0  2C 1F 00 00 */	cmpwi r31, 0
/* 801935B4 001905B4  40 80 01 D0 */	bge lbl_80193784
/* 801935B8 001905B8  48 00 00 24 */	b lbl_801935DC
lbl_801935BC:
/* 801935BC 001905BC  2C 1F 00 04 */	cmpwi r31, 4
/* 801935C0 001905C0  40 80 00 1C */	bge lbl_801935DC
/* 801935C4 001905C4  48 00 00 10 */	b lbl_801935D4
/* 801935C8 001905C8  48 00 01 BC */	b lbl_80193784
lbl_801935CC:
/* 801935CC 001905CC  C8 22 BC A8 */	lfd f1, lbl_8027B948@sda21(r2)
/* 801935D0 001905D0  48 00 01 B4 */	b lbl_80193784
lbl_801935D4:
/* 801935D4 001905D4  C8 22 BC B0 */	lfd f1, lbl_8027B950@sda21(r2)
/* 801935D8 001905D8  48 00 01 AC */	b lbl_80193784
lbl_801935DC:
/* 801935DC 001905DC  7C C0 43 79 */	or. r0, r6, r8
/* 801935E0 001905E0  40 82 00 1C */	bne lbl_801935FC
/* 801935E4 001905E4  2C 05 00 00 */	cmpwi r5, 0
/* 801935E8 001905E8  40 80 00 0C */	bge lbl_801935F4
/* 801935EC 001905EC  C8 22 BC B8 */	lfd f1, lbl_8027B958@sda21(r2)
/* 801935F0 001905F0  48 00 01 94 */	b lbl_80193784
lbl_801935F4:
/* 801935F4 001905F4  C8 22 BC C0 */	lfd f1, lbl_8027B960@sda21(r2)
/* 801935F8 001905F8  48 00 01 8C */	b lbl_80193784
lbl_801935FC:
/* 801935FC 001905FC  3C 06 80 10 */	addis r0, r6, 0x8010
/* 80193600 00190600  28 00 00 00 */	cmplwi r0, 0
/* 80193604 00190604  40 82 00 A0 */	bne lbl_801936A4
/* 80193608 00190608  3C 07 80 10 */	addis r0, r7, 0x8010
/* 8019360C 0019060C  28 00 00 00 */	cmplwi r0, 0
/* 80193610 00190610  40 82 00 4C */	bne lbl_8019365C
/* 80193614 00190614  2C 1F 00 02 */	cmpwi r31, 2
/* 80193618 00190618  41 82 00 34 */	beq lbl_8019364C
/* 8019361C 0019061C  40 80 00 14 */	bge lbl_80193630
/* 80193620 00190620  2C 1F 00 00 */	cmpwi r31, 0
/* 80193624 00190624  41 82 00 18 */	beq lbl_8019363C
/* 80193628 00190628  40 80 00 1C */	bge lbl_80193644
/* 8019362C 0019062C  48 00 00 78 */	b lbl_801936A4
lbl_80193630:
/* 80193630 00190630  2C 1F 00 04 */	cmpwi r31, 4
/* 80193634 00190634  40 80 00 70 */	bge lbl_801936A4
/* 80193638 00190638  48 00 00 1C */	b lbl_80193654
lbl_8019363C:
/* 8019363C 0019063C  C8 22 BC C8 */	lfd f1, lbl_8027B968@sda21(r2)
/* 80193640 00190640  48 00 01 44 */	b lbl_80193784
lbl_80193644:
/* 80193644 00190644  C8 22 BC D0 */	lfd f1, lbl_8027B970@sda21(r2)
/* 80193648 00190648  48 00 01 3C */	b lbl_80193784
lbl_8019364C:
/* 8019364C 0019064C  C8 22 BC D8 */	lfd f1, lbl_8027B978@sda21(r2)
/* 80193650 00190650  48 00 01 34 */	b lbl_80193784
lbl_80193654:
/* 80193654 00190654  C8 22 BC E0 */	lfd f1, lbl_8027B980@sda21(r2)
/* 80193658 00190658  48 00 01 2C */	b lbl_80193784
lbl_8019365C:
/* 8019365C 0019065C  2C 1F 00 02 */	cmpwi r31, 2
/* 80193660 00190660  41 82 00 34 */	beq lbl_80193694
/* 80193664 00190664  40 80 00 14 */	bge lbl_80193678
/* 80193668 00190668  2C 1F 00 00 */	cmpwi r31, 0
/* 8019366C 0019066C  41 82 00 18 */	beq lbl_80193684
/* 80193670 00190670  40 80 00 1C */	bge lbl_8019368C
/* 80193674 00190674  48 00 00 30 */	b lbl_801936A4
lbl_80193678:
/* 80193678 00190678  2C 1F 00 04 */	cmpwi r31, 4
/* 8019367C 0019067C  40 80 00 28 */	bge lbl_801936A4
/* 80193680 00190680  48 00 00 1C */	b lbl_8019369C
lbl_80193684:
/* 80193684 00190684  C8 22 BC E8 */	lfd f1, lbl_8027B988@sda21(r2)
/* 80193688 00190688  48 00 00 FC */	b lbl_80193784
lbl_8019368C:
/* 8019368C 0019068C  C8 22 BC F0 */	lfd f1, lbl_8027B990@sda21(r2)
/* 80193690 00190690  48 00 00 F4 */	b lbl_80193784
lbl_80193694:
/* 80193694 00190694  C8 22 BC A8 */	lfd f1, lbl_8027B948@sda21(r2)
/* 80193698 00190698  48 00 00 EC */	b lbl_80193784
lbl_8019369C:
/* 8019369C 0019069C  C8 22 BC B0 */	lfd f1, lbl_8027B950@sda21(r2)
/* 801936A0 001906A0  48 00 00 E4 */	b lbl_80193784
lbl_801936A4:
/* 801936A4 001906A4  3C 07 80 10 */	addis r0, r7, 0x8010
/* 801936A8 001906A8  28 00 00 00 */	cmplwi r0, 0
/* 801936AC 001906AC  40 82 00 1C */	bne lbl_801936C8
/* 801936B0 001906B0  2C 05 00 00 */	cmpwi r5, 0
/* 801936B4 001906B4  40 80 00 0C */	bge lbl_801936C0
/* 801936B8 001906B8  C8 22 BC B8 */	lfd f1, lbl_8027B958@sda21(r2)
/* 801936BC 001906BC  48 00 00 C8 */	b lbl_80193784
lbl_801936C0:
/* 801936C0 001906C0  C8 22 BC C0 */	lfd f1, lbl_8027B960@sda21(r2)
/* 801936C4 001906C4  48 00 00 C0 */	b lbl_80193784
lbl_801936C8:
/* 801936C8 001906C8  7C 06 38 50 */	subf r0, r6, r7
/* 801936CC 001906CC  7C 00 A6 70 */	srawi r0, r0, 0x14
/* 801936D0 001906D0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 801936D4 001906D4  40 81 00 10 */	ble lbl_801936E4
/* 801936D8 001906D8  C8 02 BC C0 */	lfd f0, lbl_8027B960@sda21(r2)
/* 801936DC 001906DC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801936E0 001906E0  48 00 00 38 */	b lbl_80193718
lbl_801936E4:
/* 801936E4 001906E4  2C 04 00 00 */	cmpwi r4, 0
/* 801936E8 001906E8  40 80 00 18 */	bge lbl_80193700
/* 801936EC 001906EC  2C 00 FF C4 */	cmpwi r0, -60
/* 801936F0 001906F0  40 80 00 10 */	bge lbl_80193700
/* 801936F4 001906F4  C8 02 BC E8 */	lfd f0, lbl_8027B988@sda21(r2)
/* 801936F8 001906F8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801936FC 001906FC  48 00 00 1C */	b lbl_80193718
lbl_80193700:
/* 80193700 00190700  C8 21 00 08 */	lfd f1, 8(r1)
/* 80193704 00190704  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80193708 00190708  FC 01 00 24 */	fdiv f0, f1, f0
/* 8019370C 0019070C  FC 20 02 10 */	fabs f1, f0
/* 80193710 00190710  48 00 26 85 */	bl atan
/* 80193714 00190714  D8 21 00 18 */	stfd f1, 0x18(r1)
lbl_80193718:
/* 80193718 00190718  2C 1F 00 01 */	cmpwi r31, 1
/* 8019371C 0019071C  41 82 00 28 */	beq lbl_80193744
/* 80193720 00190720  40 80 00 10 */	bge lbl_80193730
/* 80193724 00190724  2C 1F 00 00 */	cmpwi r31, 0
/* 80193728 00190728  40 80 00 14 */	bge lbl_8019373C
/* 8019372C 0019072C  48 00 00 44 */	b lbl_80193770
lbl_80193730:
/* 80193730 00190730  2C 1F 00 03 */	cmpwi r31, 3
/* 80193734 00190734  40 80 00 3C */	bge lbl_80193770
/* 80193738 00190738  48 00 00 20 */	b lbl_80193758
lbl_8019373C:
/* 8019373C 0019073C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80193740 00190740  48 00 00 44 */	b lbl_80193784
lbl_80193744:
/* 80193744 00190744  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80193748 00190748  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019374C 0019074C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80193750 00190750  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80193754 00190754  48 00 00 30 */	b lbl_80193784
lbl_80193758:
/* 80193758 00190758  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8019375C 0019075C  C8 02 BC F8 */	lfd f0, lbl_8027B998@sda21(r2)
/* 80193760 00190760  C8 42 BC A8 */	lfd f2, lbl_8027B948@sda21(r2)
/* 80193764 00190764  FC 01 00 28 */	fsub f0, f1, f0
/* 80193768 00190768  FC 22 00 28 */	fsub f1, f2, f0
/* 8019376C 0019076C  48 00 00 18 */	b lbl_80193784
lbl_80193770:
/* 80193770 00190770  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80193774 00190774  C8 22 BC F8 */	lfd f1, lbl_8027B998@sda21(r2)
/* 80193778 00190778  C8 02 BC A8 */	lfd f0, lbl_8027B948@sda21(r2)
/* 8019377C 0019077C  FC 22 08 28 */	fsub f1, f2, f1
/* 80193780 00190780  FC 21 00 28 */	fsub f1, f1, f0
lbl_80193784:
/* 80193784 00190784  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80193788 00190788  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8019378C 0019078C  7C 08 03 A6 */	mtlr r0
/* 80193790 00190790  38 21 00 30 */	addi r1, r1, 0x30
/* 80193794 00190794  4E 80 00 20 */	blr 
