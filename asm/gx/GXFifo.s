.include "macros.inc"

.section .text  # 0x801814FC - 0x80181B54

.global func_801814FC
func_801814FC:
/* 801814FC 0017E4FC  7C 08 02 A6 */	mflr r0
/* 80181500 0017E500  90 01 00 04 */	stw r0, 4(r1)
/* 80181504 0017E504  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80181508 0017E508  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8018150C 0017E50C  7C 9F 23 78 */	mr r31, r4
/* 80181510 0017E510  80 AD 8E 14 */	lwz r5, lbl_80277734-_SDA_BASE_(r13)
/* 80181514 0017E514  80 62 BA 70 */	lwz r3, lbl_8027B710-_SDA2_BASE_(r2)
/* 80181518 0017E518  A0 05 00 00 */	lhz r0, 0(r5)
/* 8018151C 0017E51C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80181520 0017E520  80 03 00 08 */	lwz r0, 8(r3)
/* 80181524 0017E524  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80181528 0017E528  41 82 00 38 */	beq lbl_80181560
/* 8018152C 0017E52C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80181530 0017E530  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80181534 0017E534  41 82 00 2C */	beq lbl_80181560
/* 80181538 0017E538  80 6D 8E 40 */	lwz r3, lbl_80277760-_SDA_BASE_(r13)
/* 8018153C 0017E53C  4B FE B4 91 */	bl func_8016C9CC
/* 80181540 0017E540  38 00 00 00 */	li r0, 0
/* 80181544 0017E544  90 0D 8E 48 */	stw r0, lbl_80277768-_SDA_BASE_(r13)
/* 80181548 0017E548  38 60 00 01 */	li r3, 1
/* 8018154C 0017E54C  38 80 00 01 */	li r4, 1
/* 80181550 0017E550  48 00 05 CD */	bl func_80181B1C
/* 80181554 0017E554  38 60 00 01 */	li r3, 1
/* 80181558 0017E558  38 80 00 00 */	li r4, 0
/* 8018155C 0017E55C  48 00 05 91 */	bl func_80181AEC
lbl_80181560:
/* 80181560 0017E560  80 62 BA 70 */	lwz r3, lbl_8027B710-_SDA2_BASE_(r2)
/* 80181564 0017E564  80 03 00 08 */	lwz r0, 8(r3)
/* 80181568 0017E568  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8018156C 0017E56C  41 82 00 44 */	beq lbl_801815B0
/* 80181570 0017E570  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80181574 0017E574  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80181578 0017E578  41 82 00 38 */	beq lbl_801815B0
/* 8018157C 0017E57C  80 AD 8E 50 */	lwz r5, lbl_80277770-_SDA_BASE_(r13)
/* 80181580 0017E580  38 60 00 00 */	li r3, 0
/* 80181584 0017E584  38 80 00 01 */	li r4, 1
/* 80181588 0017E588  38 05 00 01 */	addi r0, r5, 1
/* 8018158C 0017E58C  90 0D 8E 50 */	stw r0, lbl_80277770-_SDA_BASE_(r13)
/* 80181590 0017E590  48 00 05 5D */	bl func_80181AEC
/* 80181594 0017E594  38 60 00 01 */	li r3, 1
/* 80181598 0017E598  38 80 00 00 */	li r4, 0
/* 8018159C 0017E59C  48 00 05 81 */	bl func_80181B1C
/* 801815A0 0017E5A0  38 00 00 01 */	li r0, 1
/* 801815A4 0017E5A4  80 6D 8E 40 */	lwz r3, lbl_80277760-_SDA_BASE_(r13)
/* 801815A8 0017E5A8  90 0D 8E 48 */	stw r0, lbl_80277768-_SDA_BASE_(r13)
/* 801815AC 0017E5AC  4B FE B6 A9 */	bl func_8016CC54
lbl_801815B0:
/* 801815B0 0017E5B0  80 62 BA 70 */	lwz r3, lbl_8027B710-_SDA2_BASE_(r2)
/* 801815B4 0017E5B4  80 83 00 08 */	lwz r4, 8(r3)
/* 801815B8 0017E5B8  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 801815BC 0017E5BC  41 82 00 60 */	beq lbl_8018161C
/* 801815C0 0017E5C0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801815C4 0017E5C4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801815C8 0017E5C8  41 82 00 54 */	beq lbl_8018161C
/* 801815CC 0017E5CC  38 00 00 00 */	li r0, 0
/* 801815D0 0017E5D0  50 04 2E B4 */	rlwimi r4, r0, 5, 0x1a, 0x1a
/* 801815D4 0017E5D4  90 83 00 08 */	stw r4, 8(r3)
/* 801815D8 0017E5D8  80 03 00 08 */	lwz r0, 8(r3)
/* 801815DC 0017E5DC  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 801815E0 0017E5E0  B0 03 00 02 */	sth r0, 2(r3)
/* 801815E4 0017E5E4  80 0D 8E 4C */	lwz r0, lbl_8027776C-_SDA_BASE_(r13)
/* 801815E8 0017E5E8  28 00 00 00 */	cmplwi r0, 0
/* 801815EC 0017E5EC  41 82 00 30 */	beq lbl_8018161C
/* 801815F0 0017E5F0  38 61 00 10 */	addi r3, r1, 0x10
/* 801815F4 0017E5F4  4B FE 5D 25 */	bl func_80167318
/* 801815F8 0017E5F8  38 61 00 10 */	addi r3, r1, 0x10
/* 801815FC 0017E5FC  4B FE 5B 55 */	bl func_80167150
/* 80181600 0017E600  81 8D 8E 4C */	lwz r12, lbl_8027776C-_SDA_BASE_(r13)
/* 80181604 0017E604  7D 88 03 A6 */	mtlr r12
/* 80181608 0017E608  4E 80 00 21 */	blrl 
/* 8018160C 0017E60C  38 61 00 10 */	addi r3, r1, 0x10
/* 80181610 0017E610  4B FE 5D 09 */	bl func_80167318
/* 80181614 0017E614  7F E3 FB 78 */	mr r3, r31
/* 80181618 0017E618  4B FE 5B 39 */	bl func_80167150
lbl_8018161C:
/* 8018161C 0017E61C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80181620 0017E620  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80181624 0017E624  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80181628 0017E628  7C 08 03 A6 */	mtlr r0
/* 8018162C 0017E62C  4E 80 00 20 */	blr 

.global func_80181630
func_80181630:
/* 80181630 0017E630  7C 08 02 A6 */	mflr r0
/* 80181634 0017E634  90 01 00 04 */	stw r0, 4(r1)
/* 80181638 0017E638  38 05 FF FC */	addi r0, r5, -4
/* 8018163C 0017E63C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80181640 0017E640  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80181644 0017E644  3B E4 00 00 */	addi r31, r4, 0
/* 80181648 0017E648  7C 1F 02 14 */	add r0, r31, r0
/* 8018164C 0017E64C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80181650 0017E650  3B C3 00 00 */	addi r30, r3, 0
/* 80181654 0017E654  38 85 C0 00 */	addi r4, r5, -16384
/* 80181658 0017E658  93 E3 00 00 */	stw r31, 0(r3)
/* 8018165C 0017E65C  90 03 00 04 */	stw r0, 4(r3)
/* 80181660 0017E660  38 00 00 00 */	li r0, 0
/* 80181664 0017E664  90 A3 00 08 */	stw r5, 8(r3)
/* 80181668 0017E668  54 A5 F8 74 */	rlwinm r5, r5, 0x1f, 1, 0x1a
/* 8018166C 0017E66C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80181670 0017E670  48 00 00 9D */	bl func_8018170C
/* 80181674 0017E674  38 7E 00 00 */	addi r3, r30, 0
/* 80181678 0017E678  38 9F 00 00 */	addi r4, r31, 0
/* 8018167C 0017E67C  38 BF 00 00 */	addi r5, r31, 0
/* 80181680 0017E680  48 00 00 1D */	bl func_8018169C
/* 80181684 0017E684  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80181688 0017E688  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018168C 0017E68C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80181690 0017E690  38 21 00 20 */	addi r1, r1, 0x20
/* 80181694 0017E694  7C 08 03 A6 */	mtlr r0
/* 80181698 0017E698  4E 80 00 20 */	blr 

.global func_8018169C
func_8018169C:
/* 8018169C 0017E69C  7C 08 02 A6 */	mflr r0
/* 801816A0 0017E6A0  90 01 00 04 */	stw r0, 4(r1)
/* 801816A4 0017E6A4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801816A8 0017E6A8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801816AC 0017E6AC  3B E5 00 00 */	addi r31, r5, 0
/* 801816B0 0017E6B0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801816B4 0017E6B4  3B C4 00 00 */	addi r30, r4, 0
/* 801816B8 0017E6B8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 801816BC 0017E6BC  3B A3 00 00 */	addi r29, r3, 0
/* 801816C0 0017E6C0  4B FE 84 99 */	bl func_80169B58
/* 801816C4 0017E6C4  93 DD 00 14 */	stw r30, 0x14(r29)
/* 801816C8 0017E6C8  7C 1E F8 50 */	subf r0, r30, r31
/* 801816CC 0017E6CC  93 FD 00 18 */	stw r31, 0x18(r29)
/* 801816D0 0017E6D0  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 801816D4 0017E6D4  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 801816D8 0017E6D8  2C 04 00 00 */	cmpwi r4, 0
/* 801816DC 0017E6DC  40 80 00 10 */	bge lbl_801816EC
/* 801816E0 0017E6E0  80 1D 00 08 */	lwz r0, 8(r29)
/* 801816E4 0017E6E4  7C 04 02 14 */	add r0, r4, r0
/* 801816E8 0017E6E8  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_801816EC:
/* 801816EC 0017E6EC  4B FE 84 95 */	bl func_80169B80
/* 801816F0 0017E6F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801816F4 0017E6F4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801816F8 0017E6F8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801816FC 0017E6FC  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80181700 0017E700  38 21 00 28 */	addi r1, r1, 0x28
/* 80181704 0017E704  7C 08 03 A6 */	mtlr r0
/* 80181708 0017E708  4E 80 00 20 */	blr 

.global func_8018170C
func_8018170C:
/* 8018170C 0017E70C  90 83 00 0C */	stw r4, 0xc(r3)
/* 80181710 0017E710  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80181714 0017E714  4E 80 00 20 */	blr 

.global func_80181718
func_80181718:
/* 80181718 0017E718  7C 08 02 A6 */	mflr r0
/* 8018171C 0017E71C  90 01 00 04 */	stw r0, 4(r1)
/* 80181720 0017E720  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80181724 0017E724  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80181728 0017E728  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8018172C 0017E72C  7C 7E 1B 78 */	mr r30, r3
/* 80181730 0017E730  4B FE 84 29 */	bl func_80169B58
/* 80181734 0017E734  80 0D 8E 3C */	lwz r0, lbl_8027775C-_SDA_BASE_(r13)
/* 80181738 0017E738  3B E3 00 00 */	addi r31, r3, 0
/* 8018173C 0017E73C  93 CD 8E 38 */	stw r30, lbl_80277758-_SDA_BASE_(r13)
/* 80181740 0017E740  7C 1E 00 40 */	cmplw r30, r0
/* 80181744 0017E744  40 82 00 70 */	bne lbl_801817B4
/* 80181748 0017E748  80 1E 00 00 */	lwz r0, 0(r30)
/* 8018174C 0017E74C  39 00 00 00 */	li r8, 0
/* 80181750 0017E750  80 6D 8E 10 */	lwz r3, lbl_80277730-_SDA_BASE_(r13)
/* 80181754 0017E754  38 C0 00 00 */	li r6, 0
/* 80181758 0017E758  54 00 00 BE */	clrlwi r0, r0, 2
/* 8018175C 0017E75C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80181760 0017E760  38 00 00 01 */	li r0, 1
/* 80181764 0017E764  38 60 00 01 */	li r3, 1
/* 80181768 0017E768  80 FE 00 04 */	lwz r7, 4(r30)
/* 8018176C 0017E76C  38 80 00 01 */	li r4, 1
/* 80181770 0017E770  80 AD 8E 10 */	lwz r5, lbl_80277730-_SDA_BASE_(r13)
/* 80181774 0017E774  54 E7 00 BE */	clrlwi r7, r7, 2
/* 80181778 0017E778  90 E5 00 10 */	stw r7, 0x10(r5)
/* 8018177C 0017E77C  80 FE 00 18 */	lwz r7, 0x18(r30)
/* 80181780 0017E780  80 AD 8E 10 */	lwz r5, lbl_80277730-_SDA_BASE_(r13)
/* 80181784 0017E784  50 E8 01 B4 */	rlwimi r8, r7, 0, 6, 0x1a
/* 80181788 0017E788  38 E8 00 00 */	addi r7, r8, 0
/* 8018178C 0017E78C  50 C7 D1 4A */	rlwimi r7, r6, 0x1a, 5, 5
/* 80181790 0017E790  90 E5 00 14 */	stw r7, 0x14(r5)
/* 80181794 0017E794  98 0D 8E 44 */	stb r0, lbl_80277764-_SDA_BASE_(r13)
/* 80181798 0017E798  48 00 03 85 */	bl func_80181B1C
/* 8018179C 0017E79C  38 60 00 01 */	li r3, 1
/* 801817A0 0017E7A0  38 80 00 00 */	li r4, 0
/* 801817A4 0017E7A4  48 00 03 49 */	bl func_80181AEC
/* 801817A8 0017E7A8  38 60 00 01 */	li r3, 1
/* 801817AC 0017E7AC  48 00 03 0D */	bl func_80181AB8
/* 801817B0 0017E7B0  48 00 00 6C */	b lbl_8018181C
lbl_801817B4:
/* 801817B4 0017E7B4  88 0D 8E 44 */	lbz r0, lbl_80277764-_SDA_BASE_(r13)
/* 801817B8 0017E7B8  28 00 00 00 */	cmplwi r0, 0
/* 801817BC 0017E7BC  41 82 00 14 */	beq lbl_801817D0
/* 801817C0 0017E7C0  38 60 00 00 */	li r3, 0
/* 801817C4 0017E7C4  48 00 02 F5 */	bl func_80181AB8
/* 801817C8 0017E7C8  38 00 00 00 */	li r0, 0
/* 801817CC 0017E7CC  98 0D 8E 44 */	stb r0, lbl_80277764-_SDA_BASE_(r13)
lbl_801817D0:
/* 801817D0 0017E7D0  38 60 00 00 */	li r3, 0
/* 801817D4 0017E7D4  38 80 00 00 */	li r4, 0
/* 801817D8 0017E7D8  48 00 03 15 */	bl func_80181AEC
/* 801817DC 0017E7DC  80 9E 00 00 */	lwz r4, 0(r30)
/* 801817E0 0017E7E0  38 A0 00 00 */	li r5, 0
/* 801817E4 0017E7E4  80 6D 8E 10 */	lwz r3, lbl_80277730-_SDA_BASE_(r13)
/* 801817E8 0017E7E8  38 00 00 00 */	li r0, 0
/* 801817EC 0017E7EC  54 84 00 BE */	clrlwi r4, r4, 2
/* 801817F0 0017E7F0  90 83 00 0C */	stw r4, 0xc(r3)
/* 801817F4 0017E7F4  80 9E 00 04 */	lwz r4, 4(r30)
/* 801817F8 0017E7F8  80 6D 8E 10 */	lwz r3, lbl_80277730-_SDA_BASE_(r13)
/* 801817FC 0017E7FC  54 84 00 BE */	clrlwi r4, r4, 2
/* 80181800 0017E800  90 83 00 10 */	stw r4, 0x10(r3)
/* 80181804 0017E804  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 80181808 0017E808  80 6D 8E 10 */	lwz r3, lbl_80277730-_SDA_BASE_(r13)
/* 8018180C 0017E80C  50 85 01 B4 */	rlwimi r5, r4, 0, 6, 0x1a
/* 80181810 0017E810  38 85 00 00 */	addi r4, r5, 0
/* 80181814 0017E814  50 04 D1 4A */	rlwimi r4, r0, 0x1a, 5, 5
/* 80181818 0017E818  90 83 00 14 */	stw r4, 0x14(r3)
lbl_8018181C:
/* 8018181C 0017E81C  4B FE 36 05 */	bl func_80164E20
/* 80181820 0017E820  7F E3 FB 78 */	mr r3, r31
/* 80181824 0017E824  4B FE 83 5D */	bl func_80169B80
/* 80181828 0017E828  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8018182C 0017E82C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80181830 0017E830  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80181834 0017E834  38 21 00 18 */	addi r1, r1, 0x18
/* 80181838 0017E838  7C 08 03 A6 */	mtlr r0
/* 8018183C 0017E83C  4E 80 00 20 */	blr 

.global func_80181840
func_80181840:
/* 80181840 0017E840  7C 08 02 A6 */	mflr r0
/* 80181844 0017E844  90 01 00 04 */	stw r0, 4(r1)
/* 80181848 0017E848  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8018184C 0017E84C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80181850 0017E850  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80181854 0017E854  7C 7E 1B 78 */	mr r30, r3
/* 80181858 0017E858  4B FE 83 01 */	bl func_80169B58
/* 8018185C 0017E85C  7C 7F 1B 78 */	mr r31, r3
/* 80181860 0017E860  48 00 02 35 */	bl func_80181A94
/* 80181864 0017E864  38 60 00 00 */	li r3, 0
/* 80181868 0017E868  38 80 00 00 */	li r4, 0
/* 8018186C 0017E86C  48 00 02 81 */	bl func_80181AEC
/* 80181870 0017E870  93 CD 8E 3C */	stw r30, lbl_8027775C-_SDA_BASE_(r13)
/* 80181874 0017E874  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181878 0017E878  80 1E 00 00 */	lwz r0, 0(r30)
/* 8018187C 0017E87C  B0 03 00 20 */	sth r0, 0x20(r3)
/* 80181880 0017E880  80 1E 00 04 */	lwz r0, 4(r30)
/* 80181884 0017E884  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181888 0017E888  B0 03 00 24 */	sth r0, 0x24(r3)
/* 8018188C 0017E88C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80181890 0017E890  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181894 0017E894  B0 03 00 30 */	sth r0, 0x30(r3)
/* 80181898 0017E898  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8018189C 0017E89C  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 801818A0 0017E8A0  B0 03 00 34 */	sth r0, 0x34(r3)
/* 801818A4 0017E8A4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801818A8 0017E8A8  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 801818AC 0017E8AC  B0 03 00 38 */	sth r0, 0x38(r3)
/* 801818B0 0017E8B0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801818B4 0017E8B4  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 801818B8 0017E8B8  B0 03 00 28 */	sth r0, 0x28(r3)
/* 801818BC 0017E8BC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801818C0 0017E8C0  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 801818C4 0017E8C4  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 801818C8 0017E8C8  80 1E 00 00 */	lwz r0, 0(r30)
/* 801818CC 0017E8CC  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 801818D0 0017E8D0  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 801818D4 0017E8D4  B0 03 00 22 */	sth r0, 0x22(r3)
/* 801818D8 0017E8D8  80 1E 00 04 */	lwz r0, 4(r30)
/* 801818DC 0017E8DC  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 801818E0 0017E8E0  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 801818E4 0017E8E4  B0 03 00 26 */	sth r0, 0x26(r3)
/* 801818E8 0017E8E8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 801818EC 0017E8EC  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 801818F0 0017E8F0  7C 00 86 70 */	srawi r0, r0, 0x10
/* 801818F4 0017E8F4  B0 03 00 32 */	sth r0, 0x32(r3)
/* 801818F8 0017E8F8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 801818FC 0017E8FC  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181900 0017E900  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 80181904 0017E904  B0 03 00 36 */	sth r0, 0x36(r3)
/* 80181908 0017E908  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8018190C 0017E90C  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181910 0017E910  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 80181914 0017E914  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 80181918 0017E918  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8018191C 0017E91C  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181920 0017E920  54 00 84 3E */	srwi r0, r0, 0x10
/* 80181924 0017E924  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 80181928 0017E928  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8018192C 0017E92C  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181930 0017E930  54 00 84 3E */	srwi r0, r0, 0x10
/* 80181934 0017E934  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 80181938 0017E938  4B FE 34 E9 */	bl func_80164E20
/* 8018193C 0017E93C  80 6D 8E 38 */	lwz r3, lbl_80277758-_SDA_BASE_(r13)
/* 80181940 0017E940  80 0D 8E 3C */	lwz r0, lbl_8027775C-_SDA_BASE_(r13)
/* 80181944 0017E944  7C 03 00 40 */	cmplw r3, r0
/* 80181948 0017E948  40 82 00 24 */	bne lbl_8018196C
/* 8018194C 0017E94C  38 00 00 01 */	li r0, 1
/* 80181950 0017E950  98 0D 8E 44 */	stb r0, lbl_80277764-_SDA_BASE_(r13)
/* 80181954 0017E954  38 60 00 01 */	li r3, 1
/* 80181958 0017E958  38 80 00 00 */	li r4, 0
/* 8018195C 0017E95C  48 00 01 91 */	bl func_80181AEC
/* 80181960 0017E960  38 60 00 01 */	li r3, 1
/* 80181964 0017E964  48 00 01 55 */	bl func_80181AB8
/* 80181968 0017E968  48 00 00 20 */	b lbl_80181988
lbl_8018196C:
/* 8018196C 0017E96C  38 00 00 00 */	li r0, 0
/* 80181970 0017E970  98 0D 8E 44 */	stb r0, lbl_80277764-_SDA_BASE_(r13)
/* 80181974 0017E974  38 60 00 00 */	li r3, 0
/* 80181978 0017E978  38 80 00 00 */	li r4, 0
/* 8018197C 0017E97C  48 00 01 71 */	bl func_80181AEC
/* 80181980 0017E980  38 60 00 00 */	li r3, 0
/* 80181984 0017E984  48 00 01 35 */	bl func_80181AB8
lbl_80181988:
/* 80181988 0017E988  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 8018198C 0017E98C  38 00 00 00 */	li r0, 0
/* 80181990 0017E990  80 8D 8E 14 */	lwz r4, lbl_80277734-_SDA_BASE_(r13)
/* 80181994 0017E994  38 60 00 01 */	li r3, 1
/* 80181998 0017E998  80 C5 00 08 */	lwz r6, 8(r5)
/* 8018199C 0017E99C  50 06 0F BC */	rlwimi r6, r0, 1, 0x1e, 0x1e
/* 801819A0 0017E9A0  50 06 2E B4 */	rlwimi r6, r0, 5, 0x1a, 0x1a
/* 801819A4 0017E9A4  B0 C4 00 02 */	sth r6, 2(r4)
/* 801819A8 0017E9A8  38 80 00 01 */	li r4, 1
/* 801819AC 0017E9AC  80 05 00 08 */	lwz r0, 8(r5)
/* 801819B0 0017E9B0  80 AD 8E 14 */	lwz r5, lbl_80277734-_SDA_BASE_(r13)
/* 801819B4 0017E9B4  B0 05 00 02 */	sth r0, 2(r5)
/* 801819B8 0017E9B8  48 00 01 65 */	bl func_80181B1C
/* 801819BC 0017E9BC  48 00 00 B5 */	bl func_80181A70
/* 801819C0 0017E9C0  7F E3 FB 78 */	mr r3, r31
/* 801819C4 0017E9C4  4B FE 81 BD */	bl func_80169B80
/* 801819C8 0017E9C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801819CC 0017E9CC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801819D0 0017E9D0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801819D4 0017E9D4  38 21 00 18 */	addi r1, r1, 0x18
/* 801819D8 0017E9D8  7C 08 03 A6 */	mtlr r0
/* 801819DC 0017E9DC  4E 80 00 20 */	blr 

.global func_801819E0
func_801819E0:
/* 801819E0 0017E9E0  7C 08 02 A6 */	mflr r0
/* 801819E4 0017E9E4  90 01 00 04 */	stw r0, 4(r1)
/* 801819E8 0017E9E8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801819EC 0017E9EC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801819F0 0017E9F0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801819F4 0017E9F4  7C 7E 1B 78 */	mr r30, r3
/* 801819F8 0017E9F8  83 ED 8E 4C */	lwz r31, lbl_8027776C-_SDA_BASE_(r13)
/* 801819FC 0017E9FC  4B FE 81 5D */	bl func_80169B58
/* 80181A00 0017EA00  93 CD 8E 4C */	stw r30, lbl_8027776C-_SDA_BASE_(r13)
/* 80181A04 0017EA04  4B FE 81 7D */	bl func_80169B80
/* 80181A08 0017EA08  7F E3 FB 78 */	mr r3, r31
/* 80181A0C 0017EA0C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80181A10 0017EA10  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80181A14 0017EA14  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80181A18 0017EA18  38 21 00 18 */	addi r1, r1, 0x18
/* 80181A1C 0017EA1C  7C 08 03 A6 */	mtlr r0
/* 80181A20 0017EA20  4E 80 00 20 */	blr 

.global func_80181A24
func_80181A24:
/* 80181A24 0017EA24  7C 08 02 A6 */	mflr r0
/* 80181A28 0017EA28  3C 60 80 18 */	lis r3, func_801814FC@ha
/* 80181A2C 0017EA2C  90 01 00 04 */	stw r0, 4(r1)
/* 80181A30 0017EA30  38 83 14 FC */	addi r4, r3, func_801814FC@l
/* 80181A34 0017EA34  38 60 00 11 */	li r3, 0x11
/* 80181A38 0017EA38  94 21 FF F8 */	stwu r1, -8(r1)
/* 80181A3C 0017EA3C  4B FE 81 69 */	bl func_80169BA4
/* 80181A40 0017EA40  38 60 40 00 */	li r3, 0x4000
/* 80181A44 0017EA44  4B FE 85 65 */	bl func_80169FA8
/* 80181A48 0017EA48  4B FE A4 41 */	bl func_8016BE88
/* 80181A4C 0017EA4C  38 00 00 00 */	li r0, 0
/* 80181A50 0017EA50  90 6D 8E 40 */	stw r3, lbl_80277760-_SDA_BASE_(r13)
/* 80181A54 0017EA54  90 0D 8E 48 */	stw r0, lbl_80277768-_SDA_BASE_(r13)
/* 80181A58 0017EA58  90 0D 8E 38 */	stw r0, lbl_80277758-_SDA_BASE_(r13)
/* 80181A5C 0017EA5C  90 0D 8E 3C */	stw r0, lbl_8027775C-_SDA_BASE_(r13)
/* 80181A60 0017EA60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80181A64 0017EA64  38 21 00 08 */	addi r1, r1, 8
/* 80181A68 0017EA68  7C 08 03 A6 */	mtlr r0
/* 80181A6C 0017EA6C  4E 80 00 20 */	blr 

.global func_80181A70
func_80181A70:
/* 80181A70 0017EA70  80 82 BA 70 */	lwz r4, lbl_8027B710-_SDA2_BASE_(r2)
/* 80181A74 0017EA74  38 00 00 01 */	li r0, 1
/* 80181A78 0017EA78  80 64 00 08 */	lwz r3, 8(r4)
/* 80181A7C 0017EA7C  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 80181A80 0017EA80  90 64 00 08 */	stw r3, 8(r4)
/* 80181A84 0017EA84  80 04 00 08 */	lwz r0, 8(r4)
/* 80181A88 0017EA88  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181A8C 0017EA8C  B0 03 00 02 */	sth r0, 2(r3)
/* 80181A90 0017EA90  4E 80 00 20 */	blr 

.global func_80181A94
func_80181A94:
/* 80181A94 0017EA94  80 82 BA 70 */	lwz r4, lbl_8027B710-_SDA2_BASE_(r2)
/* 80181A98 0017EA98  38 00 00 00 */	li r0, 0
/* 80181A9C 0017EA9C  80 64 00 08 */	lwz r3, 8(r4)
/* 80181AA0 0017EAA0  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 80181AA4 0017EAA4  90 64 00 08 */	stw r3, 8(r4)
/* 80181AA8 0017EAA8  80 04 00 08 */	lwz r0, 8(r4)
/* 80181AAC 0017EAAC  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181AB0 0017EAB0  B0 03 00 02 */	sth r0, 2(r3)
/* 80181AB4 0017EAB4  4E 80 00 20 */	blr 

.global func_80181AB8
func_80181AB8:
/* 80181AB8 0017EAB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80181ABC 0017EABC  41 82 00 0C */	beq lbl_80181AC8
/* 80181AC0 0017EAC0  38 80 00 01 */	li r4, 1
/* 80181AC4 0017EAC4  48 00 00 08 */	b lbl_80181ACC
lbl_80181AC8:
/* 80181AC8 0017EAC8  38 80 00 00 */	li r4, 0
lbl_80181ACC:
/* 80181ACC 0017EACC  80 62 BA 70 */	lwz r3, lbl_8027B710-_SDA2_BASE_(r2)
/* 80181AD0 0017EAD0  80 03 00 08 */	lwz r0, 8(r3)
/* 80181AD4 0017EAD4  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80181AD8 0017EAD8  90 03 00 08 */	stw r0, 8(r3)
/* 80181ADC 0017EADC  80 03 00 08 */	lwz r0, 8(r3)
/* 80181AE0 0017EAE0  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181AE4 0017EAE4  B0 03 00 02 */	sth r0, 2(r3)
/* 80181AE8 0017EAE8  4E 80 00 20 */	blr 

.global func_80181AEC
func_80181AEC:
/* 80181AEC 0017EAEC  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 80181AF0 0017EAF0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80181AF4 0017EAF4  80 85 00 08 */	lwz r4, 8(r5)
/* 80181AF8 0017EAF8  50 64 17 7A */	rlwimi r4, r3, 2, 0x1d, 0x1d
/* 80181AFC 0017EAFC  90 85 00 08 */	stw r4, 8(r5)
/* 80181B00 0017EB00  80 65 00 08 */	lwz r3, 8(r5)
/* 80181B04 0017EB04  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 80181B08 0017EB08  90 65 00 08 */	stw r3, 8(r5)
/* 80181B0C 0017EB0C  80 05 00 08 */	lwz r0, 8(r5)
/* 80181B10 0017EB10  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181B14 0017EB14  B0 03 00 02 */	sth r0, 2(r3)
/* 80181B18 0017EB18  4E 80 00 20 */	blr 

.global func_80181B1C
func_80181B1C:
/* 80181B1C 0017EB1C  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 80181B20 0017EB20  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80181B24 0017EB24  80 85 00 10 */	lwz r4, 0x10(r5)
/* 80181B28 0017EB28  50 64 07 FE */	rlwimi r4, r3, 0, 0x1f, 0x1f
/* 80181B2C 0017EB2C  90 85 00 10 */	stw r4, 0x10(r5)
/* 80181B30 0017EB30  80 65 00 10 */	lwz r3, 0x10(r5)
/* 80181B34 0017EB34  50 03 0F BC */	rlwimi r3, r0, 1, 0x1e, 0x1e
/* 80181B38 0017EB38  90 65 00 10 */	stw r3, 0x10(r5)
/* 80181B3C 0017EB3C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80181B40 0017EB40  80 6D 8E 14 */	lwz r3, lbl_80277734-_SDA_BASE_(r13)
/* 80181B44 0017EB44  B0 03 00 04 */	sth r0, 4(r3)
/* 80181B48 0017EB48  4E 80 00 20 */	blr 

.global func_80181B4C
func_80181B4C:
/* 80181B4C 0017EB4C  80 6D 8E 3C */	lwz r3, lbl_8027775C-_SDA_BASE_(r13)
/* 80181B50 0017EB50  4E 80 00 20 */	blr 
