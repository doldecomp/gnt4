.include "macros.inc"

.section .text  # 0x801A754C - 0x801A7A9C

.global AudioMalloc
AudioMalloc:
/* 801A754C 001A454C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7550 001A4550  7C 08 02 A6 */	mflr r0
/* 801A7554 001A4554  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7558 001A4558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A755C 001A455C  81 8D 8F 88 */	lwz r12, lbl_802778A8@sda21(r13)
/* 801A7560 001A4560  7D 89 03 A6 */	mtctr r12
/* 801A7564 001A4564  4E 80 04 21 */	bctrl 
/* 801A7568 001A4568  7C 7F 1B 79 */	or. r31, r3, r3
/* 801A756C 001A456C  40 82 00 24 */	bne lbl_801A7590
/* 801A7570 001A4570  3C 60 80 22 */	lis r3, lbl_802189F8@ha
/* 801A7574 001A4574  38 63 89 F8 */	addi r3, r3, lbl_802189F8@l
/* 801A7578 001A4578  4C C6 31 82 */	crclr 6
/* 801A757C 001A457C  4B FC 03 1D */	bl OSReport
/* 801A7580 001A4580  38 6D 82 B8 */	addi r3, r13, lbl_80276BD8@sda21
/* 801A7584 001A4584  38 80 00 33 */	li r4, 0x33
/* 801A7588 001A4588  38 AD 82 C0 */	addi r5, r13, lbl_80276BE0@sda21
/* 801A758C 001A458C  48 02 E8 59 */	bl __assert
lbl_801A7590:
/* 801A7590 001A4590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7594 001A4594  7F E3 FB 78 */	mr r3, r31
/* 801A7598 001A4598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A759C 001A459C  7C 08 03 A6 */	mtlr r0
/* 801A75A0 001A45A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A75A4 001A45A4  4E 80 00 20 */	blr 

.global AudioFree
AudioFree:
/* 801A75A8 001A45A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A75AC 001A45AC  7C 08 02 A6 */	mflr r0
/* 801A75B0 001A45B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A75B4 001A45B4  81 8D 8F 8C */	lwz r12, lbl_802778AC@sda21(r13)
/* 801A75B8 001A45B8  7D 89 03 A6 */	mtctr r12
/* 801A75BC 001A45BC  4E 80 04 21 */	bctrl 
/* 801A75C0 001A45C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A75C4 001A45C4  7C 08 03 A6 */	mtlr r0
/* 801A75C8 001A45C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801A75CC 001A45CC  4E 80 00 20 */	blr 

.global AudioInitMalloc
AudioInitMalloc:
/* 801A75D0 001A45D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A75D4 001A45D4  7C 08 02 A6 */	mflr r0
/* 801A75D8 001A45D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A75DC 001A45DC  90 6D 8F 88 */	stw r3, lbl_802778A8@sda21(r13)
/* 801A75E0 001A45E0  90 61 00 08 */	stw r3, 8(r1)
/* 801A75E4 001A45E4  38 61 00 08 */	addi r3, r1, 8
/* 801A75E8 001A45E8  90 8D 8F 8C */	stw r4, lbl_802778AC@sda21(r13)
/* 801A75EC 001A45EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 801A75F0 001A45F0  48 05 3E 19 */	bl sndSetHooks
/* 801A75F4 001A45F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A75F8 001A45F8  7C 08 03 A6 */	mtlr r0
/* 801A75FC 001A45FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7600 001A4600  4E 80 00 20 */	blr 

.global AudioInit
AudioInit:
/* 801A7604 001A4604  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A7608 001A4608  7C 08 02 A6 */	mflr r0
/* 801A760C 001A460C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A7610 001A4610  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A7614 001A4614  7C BF 2B 78 */	mr r31, r5
/* 801A7618 001A4618  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A761C 001A461C  7C DE 33 78 */	mr r30, r6
/* 801A7620 001A4620  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A7624 001A4624  7C 9D 23 78 */	mr r29, r4
/* 801A7628 001A4628  93 81 00 10 */	stw r28, 0x10(r1)
/* 801A762C 001A462C  7C 7C 1B 78 */	mr r28, r3
/* 801A7630 001A4630  7F C3 F3 78 */	mr r3, r30
/* 801A7634 001A4634  4B FC FA 21 */	bl ARAlloc
/* 801A7638 001A4638  7F 83 E3 78 */	mr r3, r28
/* 801A763C 001A463C  7F A4 EB 78 */	mr r4, r29
/* 801A7640 001A4640  7F E5 FB 78 */	mr r5, r31
/* 801A7644 001A4644  7F C8 F3 78 */	mr r8, r30
/* 801A7648 001A4648  38 C0 00 08 */	li r6, 8
/* 801A764C 001A464C  38 E0 00 00 */	li r7, 0
/* 801A7650 001A4650  48 05 05 8D */	bl sndInit
/* 801A7654 001A4654  38 60 00 7F */	li r3, 0x7f
/* 801A7658 001A4658  38 80 00 00 */	li r4, 0
/* 801A765C 001A465C  38 A0 00 FF */	li r5, 0xff
/* 801A7660 001A4660  48 03 FA E5 */	bl sndVolume
/* 801A7664 001A4664  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 801A7668 001A4668  81 8D 8F 88 */	lwz r12, lbl_802778A8@sda21(r13)
/* 801A766C 001A466C  38 1F 00 02 */	addi r0, r31, 2
/* 801A7670 001A4670  1C 60 00 0C */	mulli r3, r0, 0xc
/* 801A7674 001A4674  7D 89 03 A6 */	mtctr r12
/* 801A7678 001A4678  4E 80 04 21 */	bctrl 
/* 801A767C 001A467C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801A7680 001A4680  40 82 00 24 */	bne lbl_801A76A4
/* 801A7684 001A4684  3C 60 80 22 */	lis r3, lbl_802189F8@ha
/* 801A7688 001A4688  38 63 89 F8 */	addi r3, r3, lbl_802189F8@l
/* 801A768C 001A468C  4C C6 31 82 */	crclr 6
/* 801A7690 001A4690  4B FC 02 09 */	bl OSReport
/* 801A7694 001A4694  38 6D 82 B8 */	addi r3, r13, lbl_80276BD8@sda21
/* 801A7698 001A4698  38 80 00 33 */	li r4, 0x33
/* 801A769C 001A469C  38 AD 82 C0 */	addi r5, r13, lbl_80276BE0@sda21
/* 801A76A0 001A46A0  48 02 E7 45 */	bl __assert
lbl_801A76A4:
/* 801A76A4 001A46A4  93 CD 8F 94 */	stw r30, lbl_802778B4@sda21(r13)
/* 801A76A8 001A46A8  38 00 00 00 */	li r0, 0
/* 801A76AC 001A46AC  2C 1F 00 01 */	cmpwi r31, 1
/* 801A76B0 001A46B0  38 60 00 01 */	li r3, 1
/* 801A76B4 001A46B4  90 1E 00 00 */	stw r0, 0(r30)
/* 801A76B8 001A46B8  80 8D 8F 94 */	lwz r4, lbl_802778B4@sda21(r13)
/* 801A76BC 001A46BC  38 04 00 0C */	addi r0, r4, 0xc
/* 801A76C0 001A46C0  90 0D 8F 90 */	stw r0, lbl_802778B0@sda21(r13)
/* 801A76C4 001A46C4  41 80 01 04 */	blt lbl_801A77C8
/* 801A76C8 001A46C8  2C 1F 00 08 */	cmpwi r31, 8
/* 801A76CC 001A46CC  38 9F FF F8 */	addi r4, r31, -8
/* 801A76D0 001A46D0  40 81 00 C4 */	ble lbl_801A7794
/* 801A76D4 001A46D4  38 04 00 07 */	addi r0, r4, 7
/* 801A76D8 001A46D8  38 A0 00 0C */	li r5, 0xc
/* 801A76DC 001A46DC  54 00 E8 FE */	srwi r0, r0, 3
/* 801A76E0 001A46E0  7C 09 03 A6 */	mtctr r0
/* 801A76E4 001A46E4  2C 04 00 01 */	cmpwi r4, 1
/* 801A76E8 001A46E8  41 80 00 AC */	blt lbl_801A7794
lbl_801A76EC:
/* 801A76EC 001A46EC  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A76F0 001A46F0  38 C5 00 0C */	addi r6, r5, 0xc
/* 801A76F4 001A46F4  38 E5 00 18 */	addi r7, r5, 0x18
/* 801A76F8 001A46F8  39 05 00 24 */	addi r8, r5, 0x24
/* 801A76FC 001A46FC  7C 80 2A 14 */	add r4, r0, r5
/* 801A7700 001A4700  39 25 00 30 */	addi r9, r5, 0x30
/* 801A7704 001A4704  38 04 00 0C */	addi r0, r4, 0xc
/* 801A7708 001A4708  39 45 00 3C */	addi r10, r5, 0x3c
/* 801A770C 001A470C  90 04 00 00 */	stw r0, 0(r4)
/* 801A7710 001A4710  38 85 00 48 */	addi r4, r5, 0x48
/* 801A7714 001A4714  39 65 00 54 */	addi r11, r5, 0x54
/* 801A7718 001A4718  38 A5 00 60 */	addi r5, r5, 0x60
/* 801A771C 001A471C  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A7720 001A4720  38 63 00 08 */	addi r3, r3, 8
/* 801A7724 001A4724  7C C0 32 14 */	add r6, r0, r6
/* 801A7728 001A4728  38 06 00 0C */	addi r0, r6, 0xc
/* 801A772C 001A472C  90 06 00 00 */	stw r0, 0(r6)
/* 801A7730 001A4730  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A7734 001A4734  7C E0 3A 14 */	add r7, r0, r7
/* 801A7738 001A4738  38 07 00 0C */	addi r0, r7, 0xc
/* 801A773C 001A473C  90 07 00 00 */	stw r0, 0(r7)
/* 801A7740 001A4740  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A7744 001A4744  7D 00 42 14 */	add r8, r0, r8
/* 801A7748 001A4748  38 08 00 0C */	addi r0, r8, 0xc
/* 801A774C 001A474C  90 08 00 00 */	stw r0, 0(r8)
/* 801A7750 001A4750  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A7754 001A4754  7D 20 4A 14 */	add r9, r0, r9
/* 801A7758 001A4758  38 09 00 0C */	addi r0, r9, 0xc
/* 801A775C 001A475C  90 09 00 00 */	stw r0, 0(r9)
/* 801A7760 001A4760  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A7764 001A4764  7D 40 52 14 */	add r10, r0, r10
/* 801A7768 001A4768  38 0A 00 0C */	addi r0, r10, 0xc
/* 801A776C 001A476C  90 0A 00 00 */	stw r0, 0(r10)
/* 801A7770 001A4770  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A7774 001A4774  7C 80 22 14 */	add r4, r0, r4
/* 801A7778 001A4778  38 04 00 0C */	addi r0, r4, 0xc
/* 801A777C 001A477C  90 04 00 00 */	stw r0, 0(r4)
/* 801A7780 001A4780  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A7784 001A4784  7D 60 5A 14 */	add r11, r0, r11
/* 801A7788 001A4788  38 0B 00 0C */	addi r0, r11, 0xc
/* 801A778C 001A478C  90 0B 00 00 */	stw r0, 0(r11)
/* 801A7790 001A4790  42 00 FF 5C */	bdnz lbl_801A76EC
lbl_801A7794:
/* 801A7794 001A4794  38 1F 00 01 */	addi r0, r31, 1
/* 801A7798 001A4798  7C 03 00 50 */	subf r0, r3, r0
/* 801A779C 001A479C  1C 83 00 0C */	mulli r4, r3, 0xc
/* 801A77A0 001A47A0  7C 09 03 A6 */	mtctr r0
/* 801A77A4 001A47A4  7C 03 F8 00 */	cmpw r3, r31
/* 801A77A8 001A47A8  41 81 00 20 */	bgt lbl_801A77C8
lbl_801A77AC:
/* 801A77AC 001A47AC  80 0D 8F 94 */	lwz r0, lbl_802778B4@sda21(r13)
/* 801A77B0 001A47B0  38 63 00 01 */	addi r3, r3, 1
/* 801A77B4 001A47B4  7C A0 22 14 */	add r5, r0, r4
/* 801A77B8 001A47B8  38 84 00 0C */	addi r4, r4, 0xc
/* 801A77BC 001A47BC  38 05 00 0C */	addi r0, r5, 0xc
/* 801A77C0 001A47C0  90 05 00 00 */	stw r0, 0(r5)
/* 801A77C4 001A47C4  42 00 FF E8 */	bdnz lbl_801A77AC
lbl_801A77C8:
/* 801A77C8 001A47C8  1C 83 00 0C */	mulli r4, r3, 0xc
/* 801A77CC 001A47CC  3C 60 80 25 */	lis r3, lbl_8024AE30@ha
/* 801A77D0 001A47D0  80 AD 8F 94 */	lwz r5, lbl_802778B4@sda21(r13)
/* 801A77D4 001A47D4  38 C0 00 00 */	li r6, 0
/* 801A77D8 001A47D8  38 00 00 04 */	li r0, 4
/* 801A77DC 001A47DC  38 63 AE 30 */	addi r3, r3, lbl_8024AE30@l
/* 801A77E0 001A47E0  7C C5 21 2E */	stwx r6, r5, r4
/* 801A77E4 001A47E4  7C 09 03 A6 */	mtctr r0
lbl_801A77E8:
/* 801A77E8 001A47E8  90 C3 00 00 */	stw r6, 0(r3)
/* 801A77EC 001A47EC  90 C3 00 04 */	stw r6, 4(r3)
/* 801A77F0 001A47F0  90 C3 00 08 */	stw r6, 8(r3)
/* 801A77F4 001A47F4  90 C3 00 0C */	stw r6, 0xc(r3)
/* 801A77F8 001A47F8  90 C3 00 10 */	stw r6, 0x10(r3)
/* 801A77FC 001A47FC  90 C3 00 14 */	stw r6, 0x14(r3)
/* 801A7800 001A4800  90 C3 00 18 */	stw r6, 0x18(r3)
/* 801A7804 001A4804  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 801A7808 001A4808  90 C3 00 20 */	stw r6, 0x20(r3)
/* 801A780C 001A480C  90 C3 00 24 */	stw r6, 0x24(r3)
/* 801A7810 001A4810  90 C3 00 28 */	stw r6, 0x28(r3)
/* 801A7814 001A4814  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 801A7818 001A4818  90 C3 00 30 */	stw r6, 0x30(r3)
/* 801A781C 001A481C  90 C3 00 34 */	stw r6, 0x34(r3)
/* 801A7820 001A4820  90 C3 00 38 */	stw r6, 0x38(r3)
/* 801A7824 001A4824  90 C3 00 3C */	stw r6, 0x3c(r3)
/* 801A7828 001A4828  90 C3 00 40 */	stw r6, 0x40(r3)
/* 801A782C 001A482C  90 C3 00 44 */	stw r6, 0x44(r3)
/* 801A7830 001A4830  90 C3 00 48 */	stw r6, 0x48(r3)
/* 801A7834 001A4834  90 C3 00 4C */	stw r6, 0x4c(r3)
/* 801A7838 001A4838  90 C3 00 50 */	stw r6, 0x50(r3)
/* 801A783C 001A483C  90 C3 00 54 */	stw r6, 0x54(r3)
/* 801A7840 001A4840  90 C3 00 58 */	stw r6, 0x58(r3)
/* 801A7844 001A4844  90 C3 00 5C */	stw r6, 0x5c(r3)
/* 801A7848 001A4848  90 C3 00 60 */	stw r6, 0x60(r3)
/* 801A784C 001A484C  90 C3 00 64 */	stw r6, 0x64(r3)
/* 801A7850 001A4850  90 C3 00 68 */	stw r6, 0x68(r3)
/* 801A7854 001A4854  90 C3 00 6C */	stw r6, 0x6c(r3)
/* 801A7858 001A4858  90 C3 00 70 */	stw r6, 0x70(r3)
/* 801A785C 001A485C  90 C3 00 74 */	stw r6, 0x74(r3)
/* 801A7860 001A4860  90 C3 00 78 */	stw r6, 0x78(r3)
/* 801A7864 001A4864  90 C3 00 7C */	stw r6, 0x7c(r3)
/* 801A7868 001A4868  38 63 00 80 */	addi r3, r3, 0x80
/* 801A786C 001A486C  42 00 FF 7C */	bdnz lbl_801A77E8
/* 801A7870 001A4870  38 60 00 00 */	li r3, 0
/* 801A7874 001A4874  4B FC EF AD */	bl AISetDSPSampleRate
/* 801A7878 001A4878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A787C 001A487C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A7880 001A4880  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A7884 001A4884  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A7888 001A4888  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801A788C 001A488C  7C 08 03 A6 */	mtlr r0
/* 801A7890 001A4890  38 21 00 20 */	addi r1, r1, 0x20
/* 801A7894 001A4894  4E 80 00 20 */	blr 

.global zz_801a7898_
zz_801a7898_:
/* 801A7898 001A4898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A789C 001A489C  7C 08 02 A6 */	mflr r0
/* 801A78A0 001A48A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A78A4 001A48A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A78A8 001A48A8  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 801A78AC 001A48AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A78B0 001A48B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A78B4 001A48B4  80 8D 8F 94 */	lwz r4, lbl_802778B4@sda21(r13)
/* 801A78B8 001A48B8  83 C4 00 00 */	lwz r30, 0(r4)
/* 801A78BC 001A48BC  48 00 00 70 */	b lbl_801A792C
lbl_801A78C0:
/* 801A78C0 001A48C0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801A78C4 001A48C4  83 BE 00 00 */	lwz r29, 0(r30)
/* 801A78C8 001A48C8  7C 00 F8 40 */	cmplw r0, r31
/* 801A78CC 001A48CC  40 82 00 5C */	bne lbl_801A7928
/* 801A78D0 001A48D0  80 7E 00 04 */	lwz r3, 4(r30)
/* 801A78D4 001A48D4  48 03 F8 25 */	bl sndFXCheck
/* 801A78D8 001A48D8  3C 03 00 01 */	addis r0, r3, 1
/* 801A78DC 001A48DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 801A78E0 001A48E0  40 82 00 40 */	bne lbl_801A7920
/* 801A78E4 001A48E4  80 6D 8F 94 */	lwz r3, lbl_802778B4@sda21(r13)
/* 801A78E8 001A48E8  48 00 00 28 */	b lbl_801A7910
lbl_801A78EC:
/* 801A78EC 001A48EC  7C 00 F0 40 */	cmplw r0, r30
/* 801A78F0 001A48F0  40 82 00 1C */	bne lbl_801A790C
/* 801A78F4 001A48F4  80 1E 00 00 */	lwz r0, 0(r30)
/* 801A78F8 001A48F8  90 03 00 00 */	stw r0, 0(r3)
/* 801A78FC 001A48FC  80 0D 8F 90 */	lwz r0, lbl_802778B0@sda21(r13)
/* 801A7900 001A4900  90 1E 00 00 */	stw r0, 0(r30)
/* 801A7904 001A4904  93 CD 8F 90 */	stw r30, lbl_802778B0@sda21(r13)
/* 801A7908 001A4908  48 00 00 20 */	b lbl_801A7928
lbl_801A790C:
/* 801A790C 001A490C  7C 03 03 78 */	mr r3, r0
lbl_801A7910:
/* 801A7910 001A4910  80 03 00 00 */	lwz r0, 0(r3)
/* 801A7914 001A4914  28 00 00 00 */	cmplwi r0, 0
/* 801A7918 001A4918  40 82 FF D4 */	bne lbl_801A78EC
/* 801A791C 001A491C  48 00 00 0C */	b lbl_801A7928
lbl_801A7920:
/* 801A7920 001A4920  80 7E 00 04 */	lwz r3, 4(r30)
/* 801A7924 001A4924  48 03 F6 31 */	bl sndFXKeyOff
lbl_801A7928:
/* 801A7928 001A4928  7F BE EB 78 */	mr r30, r29
lbl_801A792C:
/* 801A792C 001A492C  28 1E 00 00 */	cmplwi r30, 0
/* 801A7930 001A4930  40 82 FF 90 */	bne lbl_801A78C0
/* 801A7934 001A4934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7938 001A4938  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A793C 001A493C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A7940 001A4940  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A7944 001A4944  7C 08 03 A6 */	mtlr r0
/* 801A7948 001A4948  38 21 00 20 */	addi r1, r1, 0x20
/* 801A794C 001A494C  4E 80 00 20 */	blr 

.global zz_801a7950_
zz_801a7950_:
/* 801A7950 001A4950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7954 001A4954  7C 08 02 A6 */	mflr r0
/* 801A7958 001A4958  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A795C 001A495C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7960 001A4960  93 C1 00 08 */	stw r30, 8(r1)
/* 801A7964 001A4964  80 6D 8F 94 */	lwz r3, lbl_802778B4@sda21(r13)
/* 801A7968 001A4968  83 E3 00 00 */	lwz r31, 0(r3)
/* 801A796C 001A496C  48 00 00 64 */	b lbl_801A79D0
lbl_801A7970:
/* 801A7970 001A4970  83 DF 00 00 */	lwz r30, 0(r31)
/* 801A7974 001A4974  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A7978 001A4978  48 03 F7 81 */	bl sndFXCheck
/* 801A797C 001A497C  3C 03 00 01 */	addis r0, r3, 1
/* 801A7980 001A4980  28 00 FF FF */	cmplwi r0, 0xffff
/* 801A7984 001A4984  40 82 00 40 */	bne lbl_801A79C4
/* 801A7988 001A4988  80 6D 8F 94 */	lwz r3, lbl_802778B4@sda21(r13)
/* 801A798C 001A498C  48 00 00 28 */	b lbl_801A79B4
lbl_801A7990:
/* 801A7990 001A4990  7C 00 F8 40 */	cmplw r0, r31
/* 801A7994 001A4994  40 82 00 1C */	bne lbl_801A79B0
/* 801A7998 001A4998  80 1F 00 00 */	lwz r0, 0(r31)
/* 801A799C 001A499C  90 03 00 00 */	stw r0, 0(r3)
/* 801A79A0 001A49A0  80 0D 8F 90 */	lwz r0, lbl_802778B0@sda21(r13)
/* 801A79A4 001A49A4  90 1F 00 00 */	stw r0, 0(r31)
/* 801A79A8 001A49A8  93 ED 8F 90 */	stw r31, lbl_802778B0@sda21(r13)
/* 801A79AC 001A49AC  48 00 00 20 */	b lbl_801A79CC
lbl_801A79B0:
/* 801A79B0 001A49B0  7C 03 03 78 */	mr r3, r0
lbl_801A79B4:
/* 801A79B4 001A49B4  80 03 00 00 */	lwz r0, 0(r3)
/* 801A79B8 001A49B8  28 00 00 00 */	cmplwi r0, 0
/* 801A79BC 001A49BC  40 82 FF D4 */	bne lbl_801A7990
/* 801A79C0 001A49C0  48 00 00 0C */	b lbl_801A79CC
lbl_801A79C4:
/* 801A79C4 001A49C4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A79C8 001A49C8  48 03 F5 8D */	bl sndFXKeyOff
lbl_801A79CC:
/* 801A79CC 001A49CC  7F DF F3 78 */	mr r31, r30
lbl_801A79D0:
/* 801A79D0 001A49D0  28 1F 00 00 */	cmplwi r31, 0
/* 801A79D4 001A49D4  40 82 FF 9C */	bne lbl_801A7970
/* 801A79D8 001A49D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A79DC 001A49DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A79E0 001A49E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A79E4 001A49E4  7C 08 03 A6 */	mtlr r0
/* 801A79E8 001A49E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801A79EC 001A49EC  4E 80 00 20 */	blr 

.global zz_801a79f0_
zz_801a79f0_:
/* 801A79F0 001A49F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A79F4 001A49F4  7C 08 02 A6 */	mflr r0
/* 801A79F8 001A49F8  7C 85 23 78 */	mr r5, r4
/* 801A79FC 001A49FC  38 80 00 07 */	li r4, 7
/* 801A7A00 001A4A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7A04 001A4A04  48 03 F4 F1 */	bl sndFXCtrl
/* 801A7A08 001A4A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7A0C 001A4A0C  7C 08 03 A6 */	mtlr r0
/* 801A7A10 001A4A10  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7A14 001A4A14  4E 80 00 20 */	blr 

.global zz_801a7a18_
zz_801a7a18_:
/* 801A7A18 001A4A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7A1C 001A4A1C  7C 08 02 A6 */	mflr r0
/* 801A7A20 001A4A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7A24 001A4A24  98 6D 82 C8 */	stb r3, lbl_80276BE8@sda21(r13)
/* 801A7A28 001A4A28  7C 83 23 78 */	mr r3, r4
/* 801A7A2C 001A4A2C  48 00 00 15 */	bl AudioSetVolume
/* 801A7A30 001A4A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7A34 001A4A34  7C 08 03 A6 */	mtlr r0
/* 801A7A38 001A4A38  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7A3C 001A4A3C  4E 80 00 20 */	blr 

.global AudioSetVolume
AudioSetVolume:
/* 801A7A40 001A4A40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A7A44 001A4A44  7C 08 02 A6 */	mflr r0
/* 801A7A48 001A4A48  C8 42 C2 38 */	lfd f2, lbl_8027BED8@sda21(r2)
/* 801A7A4C 001A4A4C  7C 64 1B 78 */	mr r4, r3
/* 801A7A50 001A4A50  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A7A54 001A4A54  3C 00 43 30 */	lis r0, 0x4330
/* 801A7A58 001A4A58  38 C0 00 01 */	li r6, 1
/* 801A7A5C 001A4A5C  88 AD 82 C8 */	lbz r5, lbl_80276BE8@sda21(r13)
/* 801A7A60 001A4A60  90 01 00 08 */	stw r0, 8(r1)
/* 801A7A64 001A4A64  C0 0D 82 C4 */	lfs f0, lbl_80276BE4@sda21(r13)
/* 801A7A68 001A4A68  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801A7A6C 001A4A6C  38 A0 00 00 */	li r5, 0
/* 801A7A70 001A4A70  C8 21 00 08 */	lfd f1, 8(r1)
/* 801A7A74 001A4A74  EC 21 10 28 */	fsubs f1, f1, f2
/* 801A7A78 001A4A78  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A7A7C 001A4A7C  FC 00 00 1E */	fctiwz f0, f0
/* 801A7A80 001A4A80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7A84 001A4A84  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801A7A88 001A4A88  48 03 F7 1D */	bl sndMasterVolume
/* 801A7A8C 001A4A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7A90 001A4A90  7C 08 03 A6 */	mtlr r0
/* 801A7A94 001A4A94  38 21 00 20 */	addi r1, r1, 0x20
/* 801A7A98 001A4A98  4E 80 00 20 */	blr 
