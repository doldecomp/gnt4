.include "macros.inc"

.section .text  # 0x801FB484 - 0x801FBF80

.global func_801FB484 
func_801FB484:
/* 801FB484 001F8484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FB488 001F8488  7C 08 02 A6 */	mflr r0
/* 801FB48C 001F848C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FB490 001F8490  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FB494 001F8494  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801FB498 001F8498  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801FB49C 001F849C  93 81 00 10 */	stw r28, 0x10(r1)
/* 801FB4A0 001F84A0  7C 7C 1B 78 */	mr r28, r3
/* 801FB4A4 001F84A4  3C 60 80 27 */	lis r3, lbl_80273FA8@ha
/* 801FB4A8 001F84A8  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 801FB4AC 001F84AC  3B E3 3F A8 */	addi r31, r3, lbl_80273FA8@l
/* 801FB4B0 001F84B0  28 00 00 01 */	cmplwi r0, 1
/* 801FB4B4 001F84B4  40 82 00 0C */	bne lbl_801FB4C0
/* 801FB4B8 001F84B8  3C 60 80 27 */	lis r3, lbl_8027422C@ha
/* 801FB4BC 001F84BC  3B E3 42 2C */	addi r31, r3, lbl_8027422C@l
lbl_801FB4C0:
/* 801FB4C0 001F84C0  3B A0 00 00 */	li r29, 0
/* 801FB4C4 001F84C4  7F FE FB 78 */	mr r30, r31
lbl_801FB4C8:
/* 801FB4C8 001F84C8  7C 1C F0 40 */	cmplw r28, r30
/* 801FB4CC 001F84CC  40 82 00 1C */	bne lbl_801FB4E8
/* 801FB4D0 001F84D0  81 9E 00 20 */	lwz r12, 0x20(r30)
/* 801FB4D4 001F84D4  28 0C 00 00 */	cmplwi r12, 0
/* 801FB4D8 001F84D8  41 82 00 10 */	beq lbl_801FB4E8
/* 801FB4DC 001F84DC  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801FB4E0 001F84E0  7D 89 03 A6 */	mtctr r12
/* 801FB4E4 001F84E4  4E 80 04 21 */	bctrl 
lbl_801FB4E8:
/* 801FB4E8 001F84E8  3B BD 00 01 */	addi r29, r29, 1
/* 801FB4EC 001F84EC  3B DE 00 28 */	addi r30, r30, 0x28
/* 801FB4F0 001F84F0  28 1D 00 10 */	cmplwi r29, 0x10
/* 801FB4F4 001F84F4  41 80 FF D4 */	blt lbl_801FB4C8
/* 801FB4F8 001F84F8  88 7F 02 81 */	lbz r3, 0x281(r31)
/* 801FB4FC 001F84FC  38 03 FF FF */	addi r0, r3, -1
/* 801FB500 001F8500  98 1F 02 81 */	stb r0, 0x281(r31)
/* 801FB504 001F8504  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FB508 001F8508  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801FB50C 001F850C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801FB510 001F8510  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801FB514 001F8514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FB518 001F8518  7C 08 03 A6 */	mtlr r0
/* 801FB51C 001F851C  38 21 00 20 */	addi r1, r1, 0x20
/* 801FB520 001F8520  4E 80 00 20 */	blr 

.global func_801FB524
func_801FB524:
/* 801FB524 001F8524  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801FB528 001F8528  7C 08 02 A6 */	mflr r0
/* 801FB52C 001F852C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FB530 001F8530  39 61 00 30 */	addi r11, r1, 0x30
/* 801FB534 001F8534  4B F9 2D 3D */	bl func_8018E270
/* 801FB538 001F8538  7C D8 33 79 */	or. r24, r6, r6
/* 801FB53C 001F853C  7C 79 1B 78 */	mr r25, r3
/* 801FB540 001F8540  7C 9A 23 78 */	mr r26, r4
/* 801FB544 001F8544  7C BB 2B 78 */	mr r27, r5
/* 801FB548 001F8548  7C FC 3B 78 */	mr r28, r7
/* 801FB54C 001F854C  7D 1D 43 78 */	mr r29, r8
/* 801FB550 001F8550  41 82 00 10 */	beq lbl_801FB560
/* 801FB554 001F8554  3C 60 80 27 */	lis r3, lbl_8027422C@ha
/* 801FB558 001F8558  3B E3 42 2C */	addi r31, r3, lbl_8027422C@l
/* 801FB55C 001F855C  48 00 00 0C */	b lbl_801FB568
lbl_801FB560:
/* 801FB560 001F8560  3C 60 80 27 */	lis r3, lbl_80273FA8@ha
/* 801FB564 001F8564  3B E3 3F A8 */	addi r31, r3, lbl_80273FA8@l
lbl_801FB568:
/* 801FB568 001F8568  4B F6 E5 F1 */	bl func_80169B58
/* 801FB56C 001F856C  88 1F 02 81 */	lbz r0, 0x281(r31)
/* 801FB570 001F8570  7C 7E 1B 78 */	mr r30, r3
/* 801FB574 001F8574  28 00 00 10 */	cmplwi r0, 0x10
/* 801FB578 001F8578  40 80 01 68 */	bge lbl_801FB6E0
/* 801FB57C 001F857C  88 9F 02 80 */	lbz r4, 0x280(r31)
/* 801FB580 001F8580  7C 18 00 D0 */	neg r0, r24
/* 801FB584 001F8584  7C 00 C3 78 */	or r0, r0, r24
/* 801FB588 001F8588  3C 60 80 20 */	lis r3, func_801FB484@ha
/* 801FB58C 001F858C  1C 84 00 28 */	mulli r4, r4, 0x28
/* 801FB590 001F8590  38 E0 00 2A */	li r7, 0x2a
/* 801FB594 001F8594  38 A0 00 00 */	li r5, 0
/* 801FB598 001F8598  54 08 0F FE */	srwi r8, r0, 0x1f
/* 801FB59C 001F859C  7C DF 22 14 */	add r6, r31, r4
/* 801FB5A0 001F85A0  38 83 B4 84 */	addi r4, r3, func_801FB484@l
/* 801FB5A4 001F85A4  90 E6 00 04 */	stw r7, 4(r6)
/* 801FB5A8 001F85A8  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB5AC 001F85AC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB5B0 001F85B0  7C 7F 02 14 */	add r3, r31, r0
/* 801FB5B4 001F85B4  90 A3 00 08 */	stw r5, 8(r3)
/* 801FB5B8 001F85B8  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB5BC 001F85BC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB5C0 001F85C0  7C 7F 02 14 */	add r3, r31, r0
/* 801FB5C4 001F85C4  91 03 00 0C */	stw r8, 0xc(r3)
/* 801FB5C8 001F85C8  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB5CC 001F85CC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB5D0 001F85D0  7C 7F 02 14 */	add r3, r31, r0
/* 801FB5D4 001F85D4  93 23 00 10 */	stw r25, 0x10(r3)
/* 801FB5D8 001F85D8  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB5DC 001F85DC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB5E0 001F85E0  7C 7F 02 14 */	add r3, r31, r0
/* 801FB5E4 001F85E4  93 43 00 14 */	stw r26, 0x14(r3)
/* 801FB5E8 001F85E8  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB5EC 001F85EC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB5F0 001F85F0  7C 7F 02 14 */	add r3, r31, r0
/* 801FB5F4 001F85F4  93 63 00 18 */	stw r27, 0x18(r3)
/* 801FB5F8 001F85F8  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB5FC 001F85FC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB600 001F8600  7C 7F 02 14 */	add r3, r31, r0
/* 801FB604 001F8604  90 83 00 1C */	stw r4, 0x1c(r3)
/* 801FB608 001F8608  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB60C 001F860C  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB610 001F8610  7C 7F 02 14 */	add r3, r31, r0
/* 801FB614 001F8614  93 83 00 20 */	stw r28, 0x20(r3)
/* 801FB618 001F8618  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB61C 001F861C  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB620 001F8620  7C 7F 02 14 */	add r3, r31, r0
/* 801FB624 001F8624  93 A3 00 24 */	stw r29, 0x24(r3)
/* 801FB628 001F8628  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB62C 001F862C  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB630 001F8630  88 9F 02 80 */	lbz r4, 0x280(r31)
/* 801FB634 001F8634  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB638 001F8638  88 BF 02 80 */	lbz r5, 0x280(r31)
/* 801FB63C 001F863C  88 DF 02 80 */	lbz r6, 0x280(r31)
/* 801FB640 001F8640  88 FF 02 80 */	lbz r7, 0x280(r31)
/* 801FB644 001F8644  1D 40 00 28 */	mulli r10, r0, 0x28
/* 801FB648 001F8648  89 1F 02 80 */	lbz r8, 0x280(r31)
/* 801FB64C 001F864C  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB650 001F8650  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB654 001F8654  1D 24 00 28 */	mulli r9, r4, 0x28
/* 801FB658 001F8658  7C 9F 52 14 */	add r4, r31, r10
/* 801FB65C 001F865C  80 84 00 04 */	lwz r4, 4(r4)
/* 801FB660 001F8660  1D 45 00 28 */	mulli r10, r5, 0x28
/* 801FB664 001F8664  7C BF 4A 14 */	add r5, r31, r9
/* 801FB668 001F8668  80 A5 00 08 */	lwz r5, 8(r5)
/* 801FB66C 001F866C  1D 26 00 28 */	mulli r9, r6, 0x28
/* 801FB670 001F8670  7C DF 52 14 */	add r6, r31, r10
/* 801FB674 001F8674  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 801FB678 001F8678  1D 47 00 28 */	mulli r10, r7, 0x28
/* 801FB67C 001F867C  7C FF 4A 14 */	add r7, r31, r9
/* 801FB680 001F8680  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 801FB684 001F8684  1D 28 00 28 */	mulli r9, r8, 0x28
/* 801FB688 001F8688  7D 1F 52 14 */	add r8, r31, r10
/* 801FB68C 001F868C  81 08 00 14 */	lwz r8, 0x14(r8)
/* 801FB690 001F8690  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB694 001F8694  7D 3F 4A 14 */	add r9, r31, r9
/* 801FB698 001F8698  81 29 00 18 */	lwz r9, 0x18(r9)
/* 801FB69C 001F869C  7D 5F 02 14 */	add r10, r31, r0
/* 801FB6A0 001F86A0  81 4A 00 1C */	lwz r10, 0x1c(r10)
/* 801FB6A4 001F86A4  4B F7 D5 99 */	bl func_80178C3C
/* 801FB6A8 001F86A8  88 9F 02 81 */	lbz r4, 0x281(r31)
/* 801FB6AC 001F86AC  7F C3 F3 78 */	mr r3, r30
/* 801FB6B0 001F86B0  38 04 00 01 */	addi r0, r4, 1
/* 801FB6B4 001F86B4  98 1F 02 81 */	stb r0, 0x281(r31)
/* 801FB6B8 001F86B8  88 9F 02 80 */	lbz r4, 0x280(r31)
/* 801FB6BC 001F86BC  38 84 00 01 */	addi r4, r4, 1
/* 801FB6C0 001F86C0  54 80 E0 06 */	slwi r0, r4, 0x1c
/* 801FB6C4 001F86C4  54 84 0F FE */	srwi r4, r4, 0x1f
/* 801FB6C8 001F86C8  7C 04 00 50 */	subf r0, r4, r0
/* 801FB6CC 001F86CC  54 00 20 3E */	rotlwi r0, r0, 4
/* 801FB6D0 001F86D0  7C 00 22 14 */	add r0, r0, r4
/* 801FB6D4 001F86D4  98 1F 02 80 */	stb r0, 0x280(r31)
/* 801FB6D8 001F86D8  4B F6 E4 A9 */	bl func_80169B80
/* 801FB6DC 001F86DC  48 00 00 0C */	b lbl_801FB6E8
lbl_801FB6E0:
/* 801FB6E0 001F86E0  4B F6 E4 A1 */	bl func_80169B80
/* 801FB6E4 001F86E4  4B FF FE 84 */	b lbl_801FB568
lbl_801FB6E8:
/* 801FB6E8 001F86E8  39 61 00 30 */	addi r11, r1, 0x30
/* 801FB6EC 001F86EC  4B F9 2B D1 */	bl func_8018E2BC
/* 801FB6F0 001F86F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801FB6F4 001F86F4  7C 08 03 A6 */	mtlr r0
/* 801FB6F8 001F86F8  38 21 00 30 */	addi r1, r1, 0x30
/* 801FB6FC 001F86FC  4E 80 00 20 */	blr 

.global func_801FB700
func_801FB700:
/* 801FB700 001F8700  3C 60 80 27 */	lis r3, lbl_80273FA8@ha
/* 801FB704 001F8704  38 63 3F A8 */	addi r3, r3, lbl_80273FA8@l
lbl_801FB708:
/* 801FB708 001F8708  88 03 02 81 */	lbz r0, 0x281(r3)
/* 801FB70C 001F870C  28 00 00 00 */	cmplwi r0, 0
/* 801FB710 001F8710  40 82 FF F8 */	bne lbl_801FB708
/* 801FB714 001F8714  4E 80 00 20 */	blr 

.global func_801FB718
func_801FB718:
/* 801FB718 001F8718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FB71C 001F871C  7C 08 02 A6 */	mflr r0
/* 801FB720 001F8720  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FB724 001F8724  39 61 00 20 */	addi r11, r1, 0x20
/* 801FB728 001F8728  4B F9 2B 55 */	bl func_8018E27C
/* 801FB72C 001F872C  7C 7B 1B 78 */	mr r27, r3
/* 801FB730 001F8730  4B F7 BA 51 */	bl func_80177180
/* 801FB734 001F8734  7C 7E 1B 78 */	mr r30, r3
/* 801FB738 001F8738  38 60 05 00 */	li r3, 0x500
/* 801FB73C 001F873C  48 00 0D 39 */	bl func_801FC474
/* 801FB740 001F8740  7C 7C 1B 78 */	mr r28, r3
/* 801FB744 001F8744  38 00 00 10 */	li r0, 0x10
/* 801FB748 001F8748  7F 84 E3 78 */	mr r4, r28
/* 801FB74C 001F874C  38 60 00 00 */	li r3, 0
/* 801FB750 001F8750  7C 09 03 A6 */	mtctr r0
lbl_801FB754:
/* 801FB754 001F8754  B0 64 00 00 */	sth r3, 0(r4)
/* 801FB758 001F8758  B0 64 00 02 */	sth r3, 2(r4)
/* 801FB75C 001F875C  B0 64 00 04 */	sth r3, 4(r4)
/* 801FB760 001F8760  B0 64 00 06 */	sth r3, 6(r4)
/* 801FB764 001F8764  B0 64 00 08 */	sth r3, 8(r4)
/* 801FB768 001F8768  B0 64 00 0A */	sth r3, 0xa(r4)
/* 801FB76C 001F876C  B0 64 00 0C */	sth r3, 0xc(r4)
/* 801FB770 001F8770  B0 64 00 0E */	sth r3, 0xe(r4)
/* 801FB774 001F8774  B0 64 00 10 */	sth r3, 0x10(r4)
/* 801FB778 001F8778  B0 64 00 12 */	sth r3, 0x12(r4)
/* 801FB77C 001F877C  B0 64 00 14 */	sth r3, 0x14(r4)
/* 801FB780 001F8780  B0 64 00 16 */	sth r3, 0x16(r4)
/* 801FB784 001F8784  B0 64 00 18 */	sth r3, 0x18(r4)
/* 801FB788 001F8788  B0 64 00 1A */	sth r3, 0x1a(r4)
/* 801FB78C 001F878C  B0 64 00 1C */	sth r3, 0x1c(r4)
/* 801FB790 001F8790  B0 64 00 1E */	sth r3, 0x1e(r4)
/* 801FB794 001F8794  B0 64 00 20 */	sth r3, 0x20(r4)
/* 801FB798 001F8798  B0 64 00 22 */	sth r3, 0x22(r4)
/* 801FB79C 001F879C  B0 64 00 24 */	sth r3, 0x24(r4)
/* 801FB7A0 001F87A0  B0 64 00 26 */	sth r3, 0x26(r4)
/* 801FB7A4 001F87A4  B0 64 00 28 */	sth r3, 0x28(r4)
/* 801FB7A8 001F87A8  B0 64 00 2A */	sth r3, 0x2a(r4)
/* 801FB7AC 001F87AC  B0 64 00 2C */	sth r3, 0x2c(r4)
/* 801FB7B0 001F87B0  B0 64 00 2E */	sth r3, 0x2e(r4)
/* 801FB7B4 001F87B4  B0 64 00 30 */	sth r3, 0x30(r4)
/* 801FB7B8 001F87B8  B0 64 00 32 */	sth r3, 0x32(r4)
/* 801FB7BC 001F87BC  B0 64 00 34 */	sth r3, 0x34(r4)
/* 801FB7C0 001F87C0  B0 64 00 36 */	sth r3, 0x36(r4)
/* 801FB7C4 001F87C4  B0 64 00 38 */	sth r3, 0x38(r4)
/* 801FB7C8 001F87C8  B0 64 00 3A */	sth r3, 0x3a(r4)
/* 801FB7CC 001F87CC  B0 64 00 3C */	sth r3, 0x3c(r4)
/* 801FB7D0 001F87D0  B0 64 00 3E */	sth r3, 0x3e(r4)
/* 801FB7D4 001F87D4  B0 64 00 40 */	sth r3, 0x40(r4)
/* 801FB7D8 001F87D8  B0 64 00 42 */	sth r3, 0x42(r4)
/* 801FB7DC 001F87DC  B0 64 00 44 */	sth r3, 0x44(r4)
/* 801FB7E0 001F87E0  B0 64 00 46 */	sth r3, 0x46(r4)
/* 801FB7E4 001F87E4  B0 64 00 48 */	sth r3, 0x48(r4)
/* 801FB7E8 001F87E8  B0 64 00 4A */	sth r3, 0x4a(r4)
/* 801FB7EC 001F87EC  B0 64 00 4C */	sth r3, 0x4c(r4)
/* 801FB7F0 001F87F0  B0 64 00 4E */	sth r3, 0x4e(r4)
/* 801FB7F4 001F87F4  38 84 00 50 */	addi r4, r4, 0x50
/* 801FB7F8 001F87F8  42 00 FF 5C */	bdnz lbl_801FB754
/* 801FB7FC 001F87FC  7F 83 E3 78 */	mr r3, r28
/* 801FB800 001F8800  38 80 05 00 */	li r4, 0x500
/* 801FB804 001F8804  4B F6 B2 D5 */	bl func_80166AD8
/* 801FB808 001F8808  3C 80 80 27 */	lis r4, lbl_80273FA8@ha
/* 801FB80C 001F880C  3C 60 80 27 */	lis r3, lbl_8027422C@ha
/* 801FB810 001F8810  3B E4 3F A8 */	addi r31, r4, lbl_80273FA8@l
/* 801FB814 001F8814  38 00 00 00 */	li r0, 0
/* 801FB818 001F8818  98 1F 02 81 */	stb r0, 0x281(r31)
/* 801FB81C 001F881C  38 63 42 2C */	addi r3, r3, lbl_8027422C@l
/* 801FB820 001F8820  98 1F 02 80 */	stb r0, 0x280(r31)
/* 801FB824 001F8824  98 03 02 81 */	stb r0, 0x281(r3)
/* 801FB828 001F8828  98 03 02 80 */	stb r0, 0x280(r3)
lbl_801FB82C:
/* 801FB82C 001F882C  4B F6 E3 2D */	bl func_80169B58
/* 801FB830 001F8830  88 1F 02 81 */	lbz r0, 0x281(r31)
/* 801FB834 001F8834  7C 7D 1B 78 */	mr r29, r3
/* 801FB838 001F8838  28 00 00 10 */	cmplwi r0, 0x10
/* 801FB83C 001F883C  40 80 01 60 */	bge lbl_801FB99C
/* 801FB840 001F8840  88 9F 02 80 */	lbz r4, 0x280(r31)
/* 801FB844 001F8844  3C 60 80 20 */	lis r3, func_801FB484@ha
/* 801FB848 001F8848  38 E0 00 2A */	li r7, 0x2a
/* 801FB84C 001F884C  38 00 00 00 */	li r0, 0
/* 801FB850 001F8850  1C C4 00 28 */	mulli r6, r4, 0x28
/* 801FB854 001F8854  38 A0 05 00 */	li r5, 0x500
/* 801FB858 001F8858  38 83 B4 84 */	addi r4, r3, func_801FB484@l
/* 801FB85C 001F885C  7C 7F 32 14 */	add r3, r31, r6
/* 801FB860 001F8860  90 E3 00 04 */	stw r7, 4(r3)
/* 801FB864 001F8864  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB868 001F8868  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB86C 001F886C  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB870 001F8870  90 03 00 08 */	stw r0, 8(r3)
/* 801FB874 001F8874  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB878 001F8878  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB87C 001F887C  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB880 001F8880  90 03 00 0C */	stw r0, 0xc(r3)
/* 801FB884 001F8884  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB888 001F8888  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB88C 001F888C  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB890 001F8890  93 83 00 10 */	stw r28, 0x10(r3)
/* 801FB894 001F8894  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB898 001F8898  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB89C 001F889C  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB8A0 001F88A0  93 C3 00 14 */	stw r30, 0x14(r3)
/* 801FB8A4 001F88A4  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB8A8 001F88A8  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB8AC 001F88AC  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB8B0 001F88B0  90 A3 00 18 */	stw r5, 0x18(r3)
/* 801FB8B4 001F88B4  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB8B8 001F88B8  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB8BC 001F88BC  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB8C0 001F88C0  90 83 00 1C */	stw r4, 0x1c(r3)
/* 801FB8C4 001F88C4  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB8C8 001F88C8  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB8CC 001F88CC  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB8D0 001F88D0  90 03 00 20 */	stw r0, 0x20(r3)
/* 801FB8D4 001F88D4  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB8D8 001F88D8  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB8DC 001F88DC  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB8E0 001F88E0  90 03 00 24 */	stw r0, 0x24(r3)
/* 801FB8E4 001F88E4  88 7F 02 80 */	lbz r3, 0x280(r31)
/* 801FB8E8 001F88E8  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB8EC 001F88EC  88 9F 02 80 */	lbz r4, 0x280(r31)
/* 801FB8F0 001F88F0  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FB8F4 001F88F4  88 BF 02 80 */	lbz r5, 0x280(r31)
/* 801FB8F8 001F88F8  88 DF 02 80 */	lbz r6, 0x280(r31)
/* 801FB8FC 001F88FC  88 FF 02 80 */	lbz r7, 0x280(r31)
/* 801FB900 001F8900  1D 40 00 28 */	mulli r10, r0, 0x28
/* 801FB904 001F8904  89 1F 02 80 */	lbz r8, 0x280(r31)
/* 801FB908 001F8908  7C 7F 1A 14 */	add r3, r31, r3
/* 801FB90C 001F890C  88 1F 02 80 */	lbz r0, 0x280(r31)
/* 801FB910 001F8910  1D 24 00 28 */	mulli r9, r4, 0x28
/* 801FB914 001F8914  7C 9F 52 14 */	add r4, r31, r10
/* 801FB918 001F8918  80 84 00 04 */	lwz r4, 4(r4)
/* 801FB91C 001F891C  1D 45 00 28 */	mulli r10, r5, 0x28
/* 801FB920 001F8920  7C BF 4A 14 */	add r5, r31, r9
/* 801FB924 001F8924  80 A5 00 08 */	lwz r5, 8(r5)
/* 801FB928 001F8928  1D 26 00 28 */	mulli r9, r6, 0x28
/* 801FB92C 001F892C  7C DF 52 14 */	add r6, r31, r10
/* 801FB930 001F8930  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 801FB934 001F8934  1D 47 00 28 */	mulli r10, r7, 0x28
/* 801FB938 001F8938  7C FF 4A 14 */	add r7, r31, r9
/* 801FB93C 001F893C  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 801FB940 001F8940  1D 28 00 28 */	mulli r9, r8, 0x28
/* 801FB944 001F8944  7D 1F 52 14 */	add r8, r31, r10
/* 801FB948 001F8948  81 08 00 14 */	lwz r8, 0x14(r8)
/* 801FB94C 001F894C  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FB950 001F8950  7D 3F 4A 14 */	add r9, r31, r9
/* 801FB954 001F8954  81 29 00 18 */	lwz r9, 0x18(r9)
/* 801FB958 001F8958  7D 5F 02 14 */	add r10, r31, r0
/* 801FB95C 001F895C  81 4A 00 1C */	lwz r10, 0x1c(r10)
/* 801FB960 001F8960  4B F7 D2 DD */	bl func_80178C3C
/* 801FB964 001F8964  88 9F 02 81 */	lbz r4, 0x281(r31)
/* 801FB968 001F8968  7F A3 EB 78 */	mr r3, r29
/* 801FB96C 001F896C  38 04 00 01 */	addi r0, r4, 1
/* 801FB970 001F8970  98 1F 02 81 */	stb r0, 0x281(r31)
/* 801FB974 001F8974  88 9F 02 80 */	lbz r4, 0x280(r31)
/* 801FB978 001F8978  38 84 00 01 */	addi r4, r4, 1
/* 801FB97C 001F897C  54 80 E0 06 */	slwi r0, r4, 0x1c
/* 801FB980 001F8980  54 84 0F FE */	srwi r4, r4, 0x1f
/* 801FB984 001F8984  7C 04 00 50 */	subf r0, r4, r0
/* 801FB988 001F8988  54 00 20 3E */	rotlwi r0, r0, 4
/* 801FB98C 001F898C  7C 00 22 14 */	add r0, r0, r4
/* 801FB990 001F8990  98 1F 02 80 */	stb r0, 0x280(r31)
/* 801FB994 001F8994  4B F6 E1 ED */	bl func_80169B80
/* 801FB998 001F8998  48 00 00 0C */	b lbl_801FB9A4
lbl_801FB99C:
/* 801FB99C 001F899C  4B F6 E1 E5 */	bl func_80169B80
/* 801FB9A0 001F89A0  4B FF FE 8C */	b lbl_801FB82C
lbl_801FB9A4:
/* 801FB9A4 001F89A4  88 1F 02 81 */	lbz r0, 0x281(r31)
/* 801FB9A8 001F89A8  28 00 00 00 */	cmplwi r0, 0
/* 801FB9AC 001F89AC  40 82 FF F8 */	bne lbl_801FB9A4
/* 801FB9B0 001F89B0  7F 83 E3 78 */	mr r3, r28
/* 801FB9B4 001F89B4  48 00 0A F1 */	bl func_801FC4A4
/* 801FB9B8 001F89B8  7C 1E DA 14 */	add r0, r30, r27
/* 801FB9BC 001F89BC  90 0D 93 40 */	stw r0, lbl_80277C60-_SDA_BASE_(r13)
/* 801FB9C0 001F89C0  4B F7 B7 C9 */	bl func_80177188
/* 801FB9C4 001F89C4  80 0D 93 40 */	lwz r0, lbl_80277C60-_SDA_BASE_(r13)
/* 801FB9C8 001F89C8  7C 00 18 40 */	cmplw r0, r3
/* 801FB9CC 001F89CC  40 81 00 0C */	ble lbl_801FB9D8
/* 801FB9D0 001F89D0  4B F7 B7 B9 */	bl func_80177188
/* 801FB9D4 001F89D4  90 6D 93 40 */	stw r3, lbl_80277C60-_SDA_BASE_(r13)
lbl_801FB9D8:
/* 801FB9D8 001F89D8  38 00 00 00 */	li r0, 0
/* 801FB9DC 001F89DC  90 0D 93 38 */	stw r0, lbl_80277C58-_SDA_BASE_(r13)
/* 801FB9E0 001F89E0  48 00 04 A5 */	bl func_801FBE84
/* 801FB9E4 001F89E4  39 61 00 20 */	addi r11, r1, 0x20
/* 801FB9E8 001F89E8  4B F9 28 E1 */	bl func_8018E2C8
/* 801FB9EC 001F89EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FB9F0 001F89F0  7C 08 03 A6 */	mtlr r0
/* 801FB9F4 001F89F4  38 21 00 20 */	addi r1, r1, 0x20
/* 801FB9F8 001F89F8  4E 80 00 20 */	blr 

.global func_801FB9FC
func_801FB9FC:
/* 801FB9FC 001F89FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBA00 001F8A00  7C 08 02 A6 */	mflr r0
/* 801FBA04 001F8A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBA08 001F8A08  4B F7 B7 79 */	bl func_80177180
/* 801FBA0C 001F8A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBA10 001F8A10  7C 08 03 A6 */	mtlr r0
/* 801FBA14 001F8A14  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBA18 001F8A18  4E 80 00 20 */	blr 

.global func_801FBA1C
func_801FBA1C:
/* 801FBA1C 001F8A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBA20 001F8A20  7C 08 02 A6 */	mflr r0
/* 801FBA24 001F8A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBA28 001F8A28  4B F7 B7 59 */	bl func_80177180
/* 801FBA2C 001F8A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBA30 001F8A30  38 63 05 00 */	addi r3, r3, 0x500
/* 801FBA34 001F8A34  7C 08 03 A6 */	mtlr r0
/* 801FBA38 001F8A38  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBA3C 001F8A3C  4E 80 00 20 */	blr 

.global func_801FBA40
func_801FBA40:
/* 801FBA40 001F8A40  38 63 FB 00 */	addi r3, r3, -1280
/* 801FBA44 001F8A44  4E 80 00 20 */	blr 

.global func_801FBA48
func_801FBA48:
/* 801FBA48 001F8A48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801FBA4C 001F8A4C  7C 08 02 A6 */	mflr r0
/* 801FBA50 001F8A50  90 01 00 34 */	stw r0, 0x34(r1)
/* 801FBA54 001F8A54  39 61 00 30 */	addi r11, r1, 0x30
/* 801FBA58 001F8A58  4B F9 28 11 */	bl func_8018E268
/* 801FBA5C 001F8A5C  38 04 00 1F */	addi r0, r4, 0x1f
/* 801FBA60 001F8A60  7C 7A 1B 78 */	mr r26, r3
/* 801FBA64 001F8A64  7C B8 2B 78 */	mr r24, r5
/* 801FBA68 001F8A68  54 17 00 34 */	rlwinm r23, r0, 0, 0, 0x1a
/* 801FBA6C 001F8A6C  4B F7 B7 15 */	bl func_80177180
/* 801FBA70 001F8A70  80 18 00 00 */	lwz r0, 0(r24)
/* 801FBA74 001F8A74  38 63 05 00 */	addi r3, r3, 0x500
/* 801FBA78 001F8A78  7C 00 18 40 */	cmplw r0, r3
/* 801FBA7C 001F8A7C  40 82 00 20 */	bne lbl_801FBA9C
/* 801FBA80 001F8A80  80 78 00 08 */	lwz r3, 8(r24)
/* 801FBA84 001F8A84  80 0D 93 3C */	lwz r0, lbl_80277C5C-_SDA_BASE_(r13)
/* 801FBA88 001F8A88  7C 63 BA 14 */	add r3, r3, r23
/* 801FBA8C 001F8A8C  7C 03 00 40 */	cmplw r3, r0
/* 801FBA90 001F8A90  40 81 00 28 */	ble lbl_801FBAB8
/* 801FBA94 001F8A94  38 60 00 00 */	li r3, 0
/* 801FBA98 001F8A98  48 00 03 BC */	b lbl_801FBE54
lbl_801FBA9C:
/* 801FBA9C 001F8A9C  80 78 00 08 */	lwz r3, 8(r24)
/* 801FBAA0 001F8AA0  80 18 00 04 */	lwz r0, 4(r24)
/* 801FBAA4 001F8AA4  7C 63 BA 14 */	add r3, r3, r23
/* 801FBAA8 001F8AA8  7C 03 00 40 */	cmplw r3, r0
/* 801FBAAC 001F8AAC  40 81 00 0C */	ble lbl_801FBAB8
/* 801FBAB0 001F8AB0  38 60 00 00 */	li r3, 0
/* 801FBAB4 001F8AB4  48 00 03 A0 */	b lbl_801FBE54
lbl_801FBAB8:
/* 801FBAB8 001F8AB8  80 0D 93 38 */	lwz r0, lbl_80277C58-_SDA_BASE_(r13)
/* 801FBABC 001F8ABC  83 38 00 08 */	lwz r25, 8(r24)
/* 801FBAC0 001F8AC0  28 00 00 00 */	cmplwi r0, 0
/* 801FBAC4 001F8AC4  40 82 03 84 */	bne lbl_801FBE48
/* 801FBAC8 001F8AC8  7F 43 D3 78 */	mr r3, r26
/* 801FBACC 001F8ACC  7E E4 BB 78 */	mr r4, r23
/* 801FBAD0 001F8AD0  4B F6 B0 09 */	bl func_80166AD8
/* 801FBAD4 001F8AD4  3C 60 80 27 */	lis r3, lbl_80273FA8@ha
/* 801FBAD8 001F8AD8  83 F8 00 08 */	lwz r31, 8(r24)
/* 801FBADC 001F8ADC  3B A3 3F A8 */	addi r29, r3, lbl_80273FA8@l
lbl_801FBAE0:
/* 801FBAE0 001F8AE0  4B F6 E0 79 */	bl func_80169B58
/* 801FBAE4 001F8AE4  88 1D 02 81 */	lbz r0, 0x281(r29)
/* 801FBAE8 001F8AE8  7C 7E 1B 78 */	mr r30, r3
/* 801FBAEC 001F8AEC  28 00 00 10 */	cmplwi r0, 0x10
/* 801FBAF0 001F8AF0  40 80 01 5C */	bge lbl_801FBC4C
/* 801FBAF4 001F8AF4  88 9D 02 80 */	lbz r4, 0x280(r29)
/* 801FBAF8 001F8AF8  3C 60 80 20 */	lis r3, func_801FB484@ha
/* 801FBAFC 001F8AFC  38 C0 00 2A */	li r6, 0x2a
/* 801FBB00 001F8B00  38 00 00 00 */	li r0, 0
/* 801FBB04 001F8B04  1C A4 00 28 */	mulli r5, r4, 0x28
/* 801FBB08 001F8B08  38 83 B4 84 */	addi r4, r3, func_801FB484@l
/* 801FBB0C 001F8B0C  7C 7D 2A 14 */	add r3, r29, r5
/* 801FBB10 001F8B10  90 C3 00 04 */	stw r6, 4(r3)
/* 801FBB14 001F8B14  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB18 001F8B18  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBB1C 001F8B1C  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBB20 001F8B20  90 03 00 08 */	stw r0, 8(r3)
/* 801FBB24 001F8B24  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB28 001F8B28  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBB2C 001F8B2C  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBB30 001F8B30  90 03 00 0C */	stw r0, 0xc(r3)
/* 801FBB34 001F8B34  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB38 001F8B38  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBB3C 001F8B3C  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBB40 001F8B40  93 43 00 10 */	stw r26, 0x10(r3)
/* 801FBB44 001F8B44  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB48 001F8B48  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBB4C 001F8B4C  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBB50 001F8B50  93 E3 00 14 */	stw r31, 0x14(r3)
/* 801FBB54 001F8B54  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB58 001F8B58  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBB5C 001F8B5C  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBB60 001F8B60  92 E3 00 18 */	stw r23, 0x18(r3)
/* 801FBB64 001F8B64  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB68 001F8B68  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBB6C 001F8B6C  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBB70 001F8B70  90 83 00 1C */	stw r4, 0x1c(r3)
/* 801FBB74 001F8B74  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB78 001F8B78  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBB7C 001F8B7C  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBB80 001F8B80  90 03 00 20 */	stw r0, 0x20(r3)
/* 801FBB84 001F8B84  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB88 001F8B88  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBB8C 001F8B8C  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBB90 001F8B90  90 03 00 24 */	stw r0, 0x24(r3)
/* 801FBB94 001F8B94  88 7D 02 80 */	lbz r3, 0x280(r29)
/* 801FBB98 001F8B98  88 1D 02 80 */	lbz r0, 0x280(r29)
/* 801FBB9C 001F8B9C  88 9D 02 80 */	lbz r4, 0x280(r29)
/* 801FBBA0 001F8BA0  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBBA4 001F8BA4  88 BD 02 80 */	lbz r5, 0x280(r29)
/* 801FBBA8 001F8BA8  88 DD 02 80 */	lbz r6, 0x280(r29)
/* 801FBBAC 001F8BAC  88 FD 02 80 */	lbz r7, 0x280(r29)
/* 801FBBB0 001F8BB0  1D 40 00 28 */	mulli r10, r0, 0x28
/* 801FBBB4 001F8BB4  89 1D 02 80 */	lbz r8, 0x280(r29)
/* 801FBBB8 001F8BB8  7C 7D 1A 14 */	add r3, r29, r3
/* 801FBBBC 001F8BBC  88 1D 02 80 */	lbz r0, 0x280(r29)
/* 801FBBC0 001F8BC0  1D 24 00 28 */	mulli r9, r4, 0x28
/* 801FBBC4 001F8BC4  7C 9D 52 14 */	add r4, r29, r10
/* 801FBBC8 001F8BC8  80 84 00 04 */	lwz r4, 4(r4)
/* 801FBBCC 001F8BCC  1D 45 00 28 */	mulli r10, r5, 0x28
/* 801FBBD0 001F8BD0  7C BD 4A 14 */	add r5, r29, r9
/* 801FBBD4 001F8BD4  80 A5 00 08 */	lwz r5, 8(r5)
/* 801FBBD8 001F8BD8  1D 26 00 28 */	mulli r9, r6, 0x28
/* 801FBBDC 001F8BDC  7C DD 52 14 */	add r6, r29, r10
/* 801FBBE0 001F8BE0  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 801FBBE4 001F8BE4  1D 47 00 28 */	mulli r10, r7, 0x28
/* 801FBBE8 001F8BE8  7C FD 4A 14 */	add r7, r29, r9
/* 801FBBEC 001F8BEC  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 801FBBF0 001F8BF0  1D 28 00 28 */	mulli r9, r8, 0x28
/* 801FBBF4 001F8BF4  7D 1D 52 14 */	add r8, r29, r10
/* 801FBBF8 001F8BF8  81 08 00 14 */	lwz r8, 0x14(r8)
/* 801FBBFC 001F8BFC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801FBC00 001F8C00  7D 3D 4A 14 */	add r9, r29, r9
/* 801FBC04 001F8C04  81 29 00 18 */	lwz r9, 0x18(r9)
/* 801FBC08 001F8C08  7D 5D 02 14 */	add r10, r29, r0
/* 801FBC0C 001F8C0C  81 4A 00 1C */	lwz r10, 0x1c(r10)
/* 801FBC10 001F8C10  4B F7 D0 2D */	bl func_80178C3C
/* 801FBC14 001F8C14  88 9D 02 81 */	lbz r4, 0x281(r29)
/* 801FBC18 001F8C18  7F C3 F3 78 */	mr r3, r30
/* 801FBC1C 001F8C1C  38 04 00 01 */	addi r0, r4, 1
/* 801FBC20 001F8C20  98 1D 02 81 */	stb r0, 0x281(r29)
/* 801FBC24 001F8C24  88 9D 02 80 */	lbz r4, 0x280(r29)
/* 801FBC28 001F8C28  38 84 00 01 */	addi r4, r4, 1
/* 801FBC2C 001F8C2C  54 80 E0 06 */	slwi r0, r4, 0x1c
/* 801FBC30 001F8C30  54 84 0F FE */	srwi r4, r4, 0x1f
/* 801FBC34 001F8C34  7C 04 00 50 */	subf r0, r4, r0
/* 801FBC38 001F8C38  54 00 20 3E */	rotlwi r0, r0, 4
/* 801FBC3C 001F8C3C  7C 00 22 14 */	add r0, r0, r4
/* 801FBC40 001F8C40  98 1D 02 80 */	stb r0, 0x280(r29)
/* 801FBC44 001F8C44  4B F6 DF 3D */	bl func_80169B80
/* 801FBC48 001F8C48  48 00 00 0C */	b lbl_801FBC54
lbl_801FBC4C:
/* 801FBC4C 001F8C4C  4B F6 DF 35 */	bl func_80169B80
/* 801FBC50 001F8C50  4B FF FE 90 */	b lbl_801FBAE0
lbl_801FBC54:
/* 801FBC54 001F8C54  80 18 00 08 */	lwz r0, 8(r24)
/* 801FBC58 001F8C58  7F 23 CB 78 */	mr r3, r25
/* 801FBC5C 001F8C5C  7C 00 BA 14 */	add r0, r0, r23
/* 801FBC60 001F8C60  90 18 00 08 */	stw r0, 8(r24)
/* 801FBC64 001F8C64  48 00 01 F0 */	b lbl_801FBE54
lbl_801FBC68:
/* 801FBC68 001F8C68  3C 60 80 20 */	lis r3, func_801FB484@ha
/* 801FBC6C 001F8C6C  3B E3 B4 84 */	addi r31, r3, func_801FB484@l
/* 801FBC70 001F8C70  48 00 01 C8 */	b lbl_801FBE38
lbl_801FBC74:
/* 801FBC74 001F8C74  88 16 02 81 */	lbz r0, 0x281(r22)
/* 801FBC78 001F8C78  28 00 00 00 */	cmplwi r0, 0
/* 801FBC7C 001F8C7C  40 82 FF F8 */	bne lbl_801FBC74
/* 801FBC80 001F8C80  80 0D 93 34 */	lwz r0, lbl_80277C54-_SDA_BASE_(r13)
/* 801FBC84 001F8C84  7E FD BB 78 */	mr r29, r23
/* 801FBC88 001F8C88  7C 17 00 40 */	cmplw r23, r0
/* 801FBC8C 001F8C8C  41 80 00 08 */	blt lbl_801FBC94
/* 801FBC90 001F8C90  7C 1D 03 78 */	mr r29, r0
lbl_801FBC94:
/* 801FBC94 001F8C94  81 8D 93 38 */	lwz r12, lbl_80277C58-_SDA_BASE_(r13)
/* 801FBC98 001F8C98  7F 43 D3 78 */	mr r3, r26
/* 801FBC9C 001F8C9C  7F A4 EB 78 */	mr r4, r29
/* 801FBCA0 001F8CA0  7D 89 03 A6 */	mtctr r12
/* 801FBCA4 001F8CA4  4E 80 04 21 */	bctrl 
/* 801FBCA8 001F8CA8  7C 7E 1B 78 */	mr r30, r3
/* 801FBCAC 001F8CAC  7F A4 EB 78 */	mr r4, r29
/* 801FBCB0 001F8CB0  4B F6 AE 29 */	bl func_80166AD8
/* 801FBCB4 001F8CB4  83 78 00 08 */	lwz r27, 8(r24)
lbl_801FBCB8:
/* 801FBCB8 001F8CB8  4B F6 DE A1 */	bl func_80169B58
/* 801FBCBC 001F8CBC  88 16 02 81 */	lbz r0, 0x281(r22)
/* 801FBCC0 001F8CC0  7C 7C 1B 78 */	mr r28, r3
/* 801FBCC4 001F8CC4  28 00 00 10 */	cmplwi r0, 0x10
/* 801FBCC8 001F8CC8  40 80 01 54 */	bge lbl_801FBE1C
/* 801FBCCC 001F8CCC  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBCD0 001F8CD0  38 80 00 2A */	li r4, 0x2a
/* 801FBCD4 001F8CD4  38 00 00 00 */	li r0, 0
/* 801FBCD8 001F8CD8  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBCDC 001F8CDC  38 63 00 04 */	addi r3, r3, 4
/* 801FBCE0 001F8CE0  7C 96 19 2E */	stwx r4, r22, r3
/* 801FBCE4 001F8CE4  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBCE8 001F8CE8  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBCEC 001F8CEC  38 63 00 08 */	addi r3, r3, 8
/* 801FBCF0 001F8CF0  7C 16 19 2E */	stwx r0, r22, r3
/* 801FBCF4 001F8CF4  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBCF8 001F8CF8  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBCFC 001F8CFC  38 63 00 0C */	addi r3, r3, 0xc
/* 801FBD00 001F8D00  7C 16 19 2E */	stwx r0, r22, r3
/* 801FBD04 001F8D04  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBD08 001F8D08  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBD0C 001F8D0C  38 63 00 10 */	addi r3, r3, 0x10
/* 801FBD10 001F8D10  7F D6 19 2E */	stwx r30, r22, r3
/* 801FBD14 001F8D14  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBD18 001F8D18  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBD1C 001F8D1C  38 63 00 14 */	addi r3, r3, 0x14
/* 801FBD20 001F8D20  7F 76 19 2E */	stwx r27, r22, r3
/* 801FBD24 001F8D24  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBD28 001F8D28  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBD2C 001F8D2C  38 63 00 18 */	addi r3, r3, 0x18
/* 801FBD30 001F8D30  7F B6 19 2E */	stwx r29, r22, r3
/* 801FBD34 001F8D34  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBD38 001F8D38  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBD3C 001F8D3C  38 63 00 1C */	addi r3, r3, 0x1c
/* 801FBD40 001F8D40  7F F6 19 2E */	stwx r31, r22, r3
/* 801FBD44 001F8D44  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBD48 001F8D48  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBD4C 001F8D4C  38 63 00 20 */	addi r3, r3, 0x20
/* 801FBD50 001F8D50  7C 16 19 2E */	stwx r0, r22, r3
/* 801FBD54 001F8D54  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBD58 001F8D58  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBD5C 001F8D5C  38 63 00 24 */	addi r3, r3, 0x24
/* 801FBD60 001F8D60  7C 16 19 2E */	stwx r0, r22, r3
/* 801FBD64 001F8D64  88 76 02 80 */	lbz r3, 0x280(r22)
/* 801FBD68 001F8D68  88 16 02 80 */	lbz r0, 0x280(r22)
/* 801FBD6C 001F8D6C  88 96 02 80 */	lbz r4, 0x280(r22)
/* 801FBD70 001F8D70  1C 63 00 28 */	mulli r3, r3, 0x28
/* 801FBD74 001F8D74  88 B6 02 80 */	lbz r5, 0x280(r22)
/* 801FBD78 001F8D78  88 D6 02 80 */	lbz r6, 0x280(r22)
/* 801FBD7C 001F8D7C  88 F6 02 80 */	lbz r7, 0x280(r22)
/* 801FBD80 001F8D80  1D 40 00 28 */	mulli r10, r0, 0x28
/* 801FBD84 001F8D84  89 16 02 80 */	lbz r8, 0x280(r22)
/* 801FBD88 001F8D88  7C 76 1A 14 */	add r3, r22, r3
/* 801FBD8C 001F8D8C  88 16 02 80 */	lbz r0, 0x280(r22)
/* 801FBD90 001F8D90  1D 24 00 28 */	mulli r9, r4, 0x28
/* 801FBD94 001F8D94  38 8A 00 04 */	addi r4, r10, 4
/* 801FBD98 001F8D98  7C 96 20 2E */	lwzx r4, r22, r4
/* 801FBD9C 001F8D9C  1D 45 00 28 */	mulli r10, r5, 0x28
/* 801FBDA0 001F8DA0  38 A9 00 08 */	addi r5, r9, 8
/* 801FBDA4 001F8DA4  7C B6 28 2E */	lwzx r5, r22, r5
/* 801FBDA8 001F8DA8  1D 26 00 28 */	mulli r9, r6, 0x28
/* 801FBDAC 001F8DAC  38 CA 00 0C */	addi r6, r10, 0xc
/* 801FBDB0 001F8DB0  7C D6 30 2E */	lwzx r6, r22, r6
/* 801FBDB4 001F8DB4  1D 47 00 28 */	mulli r10, r7, 0x28
/* 801FBDB8 001F8DB8  38 E9 00 10 */	addi r7, r9, 0x10
/* 801FBDBC 001F8DBC  7C F6 38 2E */	lwzx r7, r22, r7
/* 801FBDC0 001F8DC0  1D 28 00 28 */	mulli r9, r8, 0x28
/* 801FBDC4 001F8DC4  39 0A 00 14 */	addi r8, r10, 0x14
/* 801FBDC8 001F8DC8  7D 16 40 2E */	lwzx r8, r22, r8
/* 801FBDCC 001F8DCC  1D 40 00 28 */	mulli r10, r0, 0x28
/* 801FBDD0 001F8DD0  38 09 00 18 */	addi r0, r9, 0x18
/* 801FBDD4 001F8DD4  7D 36 00 2E */	lwzx r9, r22, r0
/* 801FBDD8 001F8DD8  38 0A 00 1C */	addi r0, r10, 0x1c
/* 801FBDDC 001F8DDC  7D 56 00 2E */	lwzx r10, r22, r0
/* 801FBDE0 001F8DE0  4B F7 CE 5D */	bl func_80178C3C
/* 801FBDE4 001F8DE4  88 96 02 81 */	lbz r4, 0x281(r22)
/* 801FBDE8 001F8DE8  7F 83 E3 78 */	mr r3, r28
/* 801FBDEC 001F8DEC  38 04 00 01 */	addi r0, r4, 1
/* 801FBDF0 001F8DF0  98 16 02 81 */	stb r0, 0x281(r22)
/* 801FBDF4 001F8DF4  88 96 02 80 */	lbz r4, 0x280(r22)
/* 801FBDF8 001F8DF8  38 84 00 01 */	addi r4, r4, 1
/* 801FBDFC 001F8DFC  54 80 E0 06 */	slwi r0, r4, 0x1c
/* 801FBE00 001F8E00  54 84 0F FE */	srwi r4, r4, 0x1f
/* 801FBE04 001F8E04  7C 04 00 50 */	subf r0, r4, r0
/* 801FBE08 001F8E08  54 00 20 3E */	rotlwi r0, r0, 4
/* 801FBE0C 001F8E0C  7C 00 22 14 */	add r0, r0, r4
/* 801FBE10 001F8E10  98 16 02 80 */	stb r0, 0x280(r22)
/* 801FBE14 001F8E14  4B F6 DD 6D */	bl func_80169B80
/* 801FBE18 001F8E18  48 00 00 0C */	b lbl_801FBE24
lbl_801FBE1C:
/* 801FBE1C 001F8E1C  4B F6 DD 65 */	bl func_80169B80
/* 801FBE20 001F8E20  4B FF FE 98 */	b lbl_801FBCB8
lbl_801FBE24:
/* 801FBE24 001F8E24  80 18 00 08 */	lwz r0, 8(r24)
/* 801FBE28 001F8E28  7E FD B8 50 */	subf r23, r29, r23
/* 801FBE2C 001F8E2C  7F 5A EA 14 */	add r26, r26, r29
/* 801FBE30 001F8E30  7C 00 EA 14 */	add r0, r0, r29
/* 801FBE34 001F8E34  90 18 00 08 */	stw r0, 8(r24)
lbl_801FBE38:
/* 801FBE38 001F8E38  28 17 00 00 */	cmplwi r23, 0
/* 801FBE3C 001F8E3C  40 82 FE 38 */	bne lbl_801FBC74
/* 801FBE40 001F8E40  7F 23 CB 78 */	mr r3, r25
/* 801FBE44 001F8E44  48 00 00 10 */	b lbl_801FBE54
lbl_801FBE48:
/* 801FBE48 001F8E48  3C 60 80 27 */	lis r3, lbl_80273FA8@ha
/* 801FBE4C 001F8E4C  3A C3 3F A8 */	addi r22, r3, lbl_80273FA8@l
/* 801FBE50 001F8E50  4B FF FE 18 */	b lbl_801FBC68
lbl_801FBE54:
/* 801FBE54 001F8E54  39 61 00 30 */	addi r11, r1, 0x30
/* 801FBE58 001F8E58  4B F9 24 5D */	bl func_8018E2B4
/* 801FBE5C 001F8E5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801FBE60 001F8E60  7C 08 03 A6 */	mtlr r0
/* 801FBE64 001F8E64  38 21 00 30 */	addi r1, r1, 0x30
/* 801FBE68 001F8E68  4E 80 00 20 */	blr 

.global func_801FBE6C
func_801FBE6C:
/* 801FBE6C 001F8E6C  38 64 00 1F */	addi r3, r4, 0x1f
/* 801FBE70 001F8E70  80 05 00 08 */	lwz r0, 8(r5)
/* 801FBE74 001F8E74  54 63 00 34 */	rlwinm r3, r3, 0, 0, 0x1a
/* 801FBE78 001F8E78  7C 03 00 50 */	subf r0, r3, r0
/* 801FBE7C 001F8E7C  90 05 00 08 */	stw r0, 8(r5)
/* 801FBE80 001F8E80  4E 80 00 20 */	blr 

.global func_801FBE84
func_801FBE84:
/* 801FBE84 001F8E84  3C 60 80 27 */	lis r3, lbl_802744B0@ha
/* 801FBE88 001F8E88  38 80 00 00 */	li r4, 0
/* 801FBE8C 001F8E8C  38 63 44 B0 */	addi r3, r3, lbl_802744B0@l
/* 801FBE90 001F8E90  38 00 00 07 */	li r0, 7
/* 801FBE94 001F8E94  90 8D 93 30 */	stw r4, lbl_80277C50-_SDA_BASE_(r13)
/* 801FBE98 001F8E98  38 E3 00 10 */	addi r7, r3, 0x10
/* 801FBE9C 001F8E9C  39 00 00 01 */	li r8, 1
/* 801FBEA0 001F8EA0  90 8D 93 2C */	stw r4, lbl_80277C4C-_SDA_BASE_(r13)
/* 801FBEA4 001F8EA4  90 6D 93 28 */	stw r3, lbl_80277C48-_SDA_BASE_(r13)
/* 801FBEA8 001F8EA8  7C 09 03 A6 */	mtctr r0
lbl_801FBEAC:
/* 801FBEAC 001F8EAC  90 E7 FF F0 */	stw r7, -0x10(r7)
/* 801FBEB0 001F8EB0  38 67 00 10 */	addi r3, r7, 0x10
/* 801FBEB4 001F8EB4  38 07 00 20 */	addi r0, r7, 0x20
/* 801FBEB8 001F8EB8  38 C7 00 30 */	addi r6, r7, 0x30
/* 801FBEBC 001F8EBC  90 67 00 00 */	stw r3, 0(r7)
/* 801FBEC0 001F8EC0  38 A7 00 40 */	addi r5, r7, 0x40
/* 801FBEC4 001F8EC4  38 87 00 50 */	addi r4, r7, 0x50
/* 801FBEC8 001F8EC8  38 67 00 60 */	addi r3, r7, 0x60
/* 801FBECC 001F8ECC  90 07 00 10 */	stw r0, 0x10(r7)
/* 801FBED0 001F8ED0  38 07 00 70 */	addi r0, r7, 0x70
/* 801FBED4 001F8ED4  39 08 00 08 */	addi r8, r8, 8
/* 801FBED8 001F8ED8  90 C7 00 20 */	stw r6, 0x20(r7)
/* 801FBEDC 001F8EDC  90 A7 00 30 */	stw r5, 0x30(r7)
/* 801FBEE0 001F8EE0  90 87 00 40 */	stw r4, 0x40(r7)
/* 801FBEE4 001F8EE4  90 67 00 50 */	stw r3, 0x50(r7)
/* 801FBEE8 001F8EE8  90 07 00 60 */	stw r0, 0x60(r7)
/* 801FBEEC 001F8EEC  38 E7 00 80 */	addi r7, r7, 0x80
/* 801FBEF0 001F8EF0  42 00 FF BC */	bdnz lbl_801FBEAC
/* 801FBEF4 001F8EF4  3C 60 80 27 */	lis r3, lbl_802744B0@ha
/* 801FBEF8 001F8EF8  55 04 20 36 */	slwi r4, r8, 4
/* 801FBEFC 001F8EFC  38 63 44 B0 */	addi r3, r3, lbl_802744B0@l
/* 801FBF00 001F8F00  20 08 00 40 */	subfic r0, r8, 0x40
/* 801FBF04 001F8F04  7C 63 22 14 */	add r3, r3, r4
/* 801FBF08 001F8F08  7C 09 03 A6 */	mtctr r0
/* 801FBF0C 001F8F0C  28 08 00 40 */	cmplwi r8, 0x40
/* 801FBF10 001F8F10  40 80 00 14 */	bge lbl_801FBF24
lbl_801FBF14:
/* 801FBF14 001F8F14  90 63 FF F0 */	stw r3, -0x10(r3)
/* 801FBF18 001F8F18  38 63 00 10 */	addi r3, r3, 0x10
/* 801FBF1C 001F8F1C  39 08 00 01 */	addi r8, r8, 1
/* 801FBF20 001F8F20  42 00 FF F4 */	bdnz lbl_801FBF14
lbl_801FBF24:
/* 801FBF24 001F8F24  3C 60 80 27 */	lis r3, lbl_802744B0@ha
/* 801FBF28 001F8F28  80 0D 93 40 */	lwz r0, lbl_80277C60-_SDA_BASE_(r13)
/* 801FBF2C 001F8F2C  38 83 44 B0 */	addi r4, r3, lbl_802744B0@l
/* 801FBF30 001F8F30  55 03 20 36 */	slwi r3, r8, 4
/* 801FBF34 001F8F34  7C 64 1A 14 */	add r3, r4, r3
/* 801FBF38 001F8F38  38 80 00 00 */	li r4, 0
/* 801FBF3C 001F8F3C  90 83 FF F0 */	stw r4, -0x10(r3)
/* 801FBF40 001F8F40  90 0D 93 3C */	stw r0, lbl_80277C5C-_SDA_BASE_(r13)
/* 801FBF44 001F8F44  4E 80 00 20 */	blr 

.global func_801FBF48
func_801FBF48:
/* 801FBF48 001F8F48  28 04 00 00 */	cmplwi r4, 0
/* 801FBF4C 001F8F4C  41 82 00 1C */	beq lbl_801FBF68
/* 801FBF50 001F8F50  3C A0 80 27 */	lis r5, lbl_802744B0@ha
/* 801FBF54 001F8F54  54 60 25 36 */	rlwinm r0, r3, 4, 0x14, 0x1b
/* 801FBF58 001F8F58  38 A5 44 B0 */	addi r5, r5, lbl_802744B0@l
/* 801FBF5C 001F8F5C  7C A5 02 14 */	add r5, r5, r0
/* 801FBF60 001F8F60  80 05 00 08 */	lwz r0, 8(r5)
/* 801FBF64 001F8F64  90 04 00 00 */	stw r0, 0(r4)
lbl_801FBF68:
/* 801FBF68 001F8F68  3C 80 80 27 */	lis r4, lbl_802744B0@ha
/* 801FBF6C 001F8F6C  54 60 25 36 */	rlwinm r0, r3, 4, 0x14, 0x1b
/* 801FBF70 001F8F70  38 64 44 B0 */	addi r3, r4, lbl_802744B0@l
/* 801FBF74 001F8F74  7C 63 02 14 */	add r3, r3, r0
/* 801FBF78 001F8F78  80 63 00 04 */	lwz r3, 4(r3)
/* 801FBF7C 001F8F7C  4E 80 00 20 */	blr 
