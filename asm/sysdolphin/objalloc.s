.include "macros.inc"

.section .text  # 0x801C737C - 0x801C78B4

.global HSD_ObjSetHeap
HSD_ObjSetHeap:
/* 801C737C 001C437C  3C A0 80 22 */	lis r5, lbl_8021A810@ha
/* 801C7380 001C4380  38 A5 A8 10 */	addi r5, r5, lbl_8021A810@l
/* 801C7384 001C4384  90 85 00 04 */	stw r4, 4(r5)
/* 801C7388 001C4388  90 85 00 00 */	stw r4, 0(r5)
/* 801C738C 001C438C  90 65 00 0C */	stw r3, 0xc(r5)
/* 801C7390 001C4390  90 65 00 08 */	stw r3, 8(r5)
/* 801C7394 001C4394  4E 80 00 20 */	blr 

.global HSD_ObjGetHeap
HSD_ObjGetHeap:
/* 801C7398 001C4398  28 03 00 00 */	cmplwi r3, 0
/* 801C739C 001C439C  41 82 00 14 */	beq lbl_801C73B0
/* 801C73A0 001C43A0  3C A0 80 22 */	lis r5, lbl_8021A810@ha
/* 801C73A4 001C43A4  38 A5 A8 10 */	addi r5, r5, lbl_8021A810@l
/* 801C73A8 001C43A8  80 05 00 08 */	lwz r0, 8(r5)
/* 801C73AC 001C43AC  90 03 00 00 */	stw r0, 0(r3)
lbl_801C73B0:
/* 801C73B0 001C43B0  28 04 00 00 */	cmplwi r4, 0
/* 801C73B4 001C43B4  4D 82 00 20 */	beqlr 
/* 801C73B8 001C43B8  3C 60 80 22 */	lis r3, lbl_8021A810@ha
/* 801C73BC 001C43BC  80 03 A8 10 */	lwz r0, lbl_8021A810@l(r3)
/* 801C73C0 001C43C0  90 04 00 00 */	stw r0, 0(r4)
/* 801C73C4 001C43C4  4E 80 00 20 */	blr 

.global HSD_ObjAllocAddFree
HSD_ObjAllocAddFree:
/* 801C73C8 001C43C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C73CC 001C43CC  7C 08 02 A6 */	mflr r0
/* 801C73D0 001C43D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C73D4 001C43D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C73D8 001C43D8  7C 9F 23 78 */	mr r31, r4
/* 801C73DC 001C43DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C73E0 001C43E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 801C73E4 001C43E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C73E8 001C43E8  40 82 00 18 */	bne lbl_801C7400
/* 801C73EC 001C43EC  3C 60 80 22 */	lis r3, lbl_8021A820@ha
/* 801C73F0 001C43F0  38 80 00 EE */	li r4, 0xee
/* 801C73F4 001C43F4  38 63 A8 20 */	addi r3, r3, lbl_8021A820@l
/* 801C73F8 001C43F8  38 AD 84 F0 */	addi r5, r13, lbl_80276E10@sda21
/* 801C73FC 001C43FC  48 00 E9 E9 */	bl __assert
lbl_801C7400:
/* 801C7400 001C4400  81 1E 00 20 */	lwz r8, 0x20(r30)
/* 801C7404 001C4404  3C 60 80 22 */	lis r3, lbl_8021A810@ha
/* 801C7408 001C4408  38 C3 A8 10 */	addi r6, r3, lbl_8021A810@l
/* 801C740C 001C440C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C7410 001C4410  7C 68 F9 D6 */	mullw r3, r8, r31
/* 801C7414 001C4414  28 05 00 00 */	cmplwi r5, 0
/* 801C7418 001C4418  41 82 00 78 */	beq lbl_801C7490
/* 801C741C 001C441C  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 801C7420 001C4420  80 06 00 04 */	lwz r0, 4(r6)
/* 801C7424 001C4424  38 E4 FF FF */	addi r7, r4, -1
/* 801C7428 001C4428  80 86 00 08 */	lwz r4, 8(r6)
/* 801C742C 001C442C  7C 00 3A 14 */	add r0, r0, r7
/* 801C7430 001C4430  7D 25 22 14 */	add r9, r5, r4
/* 801C7434 001C4434  7C 05 38 78 */	andc r5, r0, r7
/* 801C7438 001C4438  7C 05 48 40 */	cmplw r5, r9
/* 801C743C 001C443C  40 81 00 0C */	ble lbl_801C7448
/* 801C7440 001C4440  38 60 00 00 */	li r3, 0
/* 801C7444 001C4444  48 00 01 B8 */	b lbl_801C75FC
lbl_801C7448:
/* 801C7448 001C4448  7C 85 48 50 */	subf r4, r5, r9
/* 801C744C 001C444C  7C 04 18 40 */	cmplw r4, r3
/* 801C7450 001C4450  40 80 00 14 */	bge lbl_801C7464
/* 801C7454 001C4454  7C 04 43 96 */	divwu r0, r4, r8
/* 801C7458 001C4458  7C 00 41 D6 */	mullw r0, r0, r8
/* 801C745C 001C445C  7C 00 20 50 */	subf r0, r0, r4
/* 801C7460 001C4460  7C 60 20 50 */	subf r3, r0, r4
lbl_801C7464:
/* 801C7464 001C4464  7F E3 43 97 */	divwu. r31, r3, r8
/* 801C7468 001C4468  40 82 00 0C */	bne lbl_801C7474
/* 801C746C 001C446C  38 60 00 00 */	li r3, 0
/* 801C7470 001C4470  48 00 01 8C */	b lbl_801C75FC
lbl_801C7474:
/* 801C7474 001C4474  7C 85 1A 14 */	add r4, r5, r3
/* 801C7478 001C4478  3C 60 80 22 */	lis r3, lbl_8021A810@ha
/* 801C747C 001C447C  7C 04 48 50 */	subf r0, r4, r9
/* 801C7480 001C4480  90 86 00 04 */	stw r4, 4(r6)
/* 801C7484 001C4484  38 63 A8 10 */	addi r3, r3, lbl_8021A810@l
/* 801C7488 001C4488  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C748C 001C448C  48 00 00 20 */	b lbl_801C74AC
lbl_801C7490:
/* 801C7490 001C4490  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 801C7494 001C4494  38 A0 00 01 */	li r5, 1
/* 801C7498 001C4498  48 00 3D E9 */	bl _HSD_MemAlloc
/* 801C749C 001C449C  7C 65 1B 79 */	or. r5, r3, r3
/* 801C74A0 001C44A0  40 82 00 0C */	bne lbl_801C74AC
/* 801C74A4 001C44A4  38 60 00 00 */	li r3, 0
/* 801C74A8 001C44A8  48 00 01 54 */	b lbl_801C75FC
lbl_801C74AC:
/* 801C74AC 001C44AC  38 1F FF FF */	addi r0, r31, -1
/* 801C74B0 001C44B0  38 C0 00 00 */	li r6, 0
/* 801C74B4 001C44B4  28 00 00 00 */	cmplwi r0, 0
/* 801C74B8 001C44B8  40 81 01 20 */	ble lbl_801C75D8
/* 801C74BC 001C44BC  28 00 00 08 */	cmplwi r0, 8
/* 801C74C0 001C44C0  38 7F FF F7 */	addi r3, r31, -9
/* 801C74C4 001C44C4  40 81 00 E0 */	ble lbl_801C75A4
/* 801C74C8 001C44C8  38 03 00 07 */	addi r0, r3, 7
/* 801C74CC 001C44CC  54 00 E8 FE */	srwi r0, r0, 3
/* 801C74D0 001C44D0  7C 09 03 A6 */	mtctr r0
/* 801C74D4 001C44D4  28 03 00 00 */	cmplwi r3, 0
/* 801C74D8 001C44D8  40 81 00 CC */	ble lbl_801C75A4
lbl_801C74DC:
/* 801C74DC 001C44DC  81 3E 00 20 */	lwz r9, 0x20(r30)
/* 801C74E0 001C44E0  39 46 00 01 */	addi r10, r6, 1
/* 801C74E4 001C44E4  39 66 00 02 */	addi r11, r6, 2
/* 801C74E8 001C44E8  39 86 00 03 */	addi r12, r6, 3
/* 801C74EC 001C44EC  7D 09 51 D6 */	mullw r8, r9, r10
/* 801C74F0 001C44F0  3B A6 00 04 */	addi r29, r6, 4
/* 801C74F4 001C44F4  38 06 00 05 */	addi r0, r6, 5
/* 801C74F8 001C44F8  38 66 00 06 */	addi r3, r6, 6
/* 801C74FC 001C44FC  38 86 00 07 */	addi r4, r6, 7
/* 801C7500 001C4500  38 E6 00 08 */	addi r7, r6, 8
/* 801C7504 001C4504  7D 29 31 D6 */	mullw r9, r9, r6
/* 801C7508 001C4508  7D 05 42 14 */	add r8, r5, r8
/* 801C750C 001C450C  38 C6 00 08 */	addi r6, r6, 8
/* 801C7510 001C4510  7D 05 49 2E */	stwx r8, r5, r9
/* 801C7514 001C4514  81 3E 00 20 */	lwz r9, 0x20(r30)
/* 801C7518 001C4518  7D 09 59 D6 */	mullw r8, r9, r11
/* 801C751C 001C451C  7D 29 51 D6 */	mullw r9, r9, r10
/* 801C7520 001C4520  7D 05 42 14 */	add r8, r5, r8
/* 801C7524 001C4524  7D 05 49 2E */	stwx r8, r5, r9
/* 801C7528 001C4528  81 3E 00 20 */	lwz r9, 0x20(r30)
/* 801C752C 001C452C  7D 09 61 D6 */	mullw r8, r9, r12
/* 801C7530 001C4530  7D 29 59 D6 */	mullw r9, r9, r11
/* 801C7534 001C4534  7D 05 42 14 */	add r8, r5, r8
/* 801C7538 001C4538  7D 05 49 2E */	stwx r8, r5, r9
/* 801C753C 001C453C  81 3E 00 20 */	lwz r9, 0x20(r30)
/* 801C7540 001C4540  7D 09 E9 D6 */	mullw r8, r9, r29
/* 801C7544 001C4544  7D 29 61 D6 */	mullw r9, r9, r12
/* 801C7548 001C4548  7D 05 42 14 */	add r8, r5, r8
/* 801C754C 001C454C  7D 05 49 2E */	stwx r8, r5, r9
/* 801C7550 001C4550  81 3E 00 20 */	lwz r9, 0x20(r30)
/* 801C7554 001C4554  7D 09 01 D6 */	mullw r8, r9, r0
/* 801C7558 001C4558  7D 29 E9 D6 */	mullw r9, r9, r29
/* 801C755C 001C455C  7D 05 42 14 */	add r8, r5, r8
/* 801C7560 001C4560  7D 05 49 2E */	stwx r8, r5, r9
/* 801C7564 001C4564  81 3E 00 20 */	lwz r9, 0x20(r30)
/* 801C7568 001C4568  7D 09 19 D6 */	mullw r8, r9, r3
/* 801C756C 001C456C  7D 29 01 D6 */	mullw r9, r9, r0
/* 801C7570 001C4570  7C 05 42 14 */	add r0, r5, r8
/* 801C7574 001C4574  7C 05 49 2E */	stwx r0, r5, r9
/* 801C7578 001C4578  81 1E 00 20 */	lwz r8, 0x20(r30)
/* 801C757C 001C457C  7C 08 21 D6 */	mullw r0, r8, r4
/* 801C7580 001C4580  7C 68 19 D6 */	mullw r3, r8, r3
/* 801C7584 001C4584  7C 05 02 14 */	add r0, r5, r0
/* 801C7588 001C4588  7C 05 19 2E */	stwx r0, r5, r3
/* 801C758C 001C458C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801C7590 001C4590  7C 03 39 D6 */	mullw r0, r3, r7
/* 801C7594 001C4594  7C 63 21 D6 */	mullw r3, r3, r4
/* 801C7598 001C4598  7C 05 02 14 */	add r0, r5, r0
/* 801C759C 001C459C  7C 05 19 2E */	stwx r0, r5, r3
/* 801C75A0 001C45A0  42 00 FF 3C */	bdnz lbl_801C74DC
lbl_801C75A4:
/* 801C75A4 001C45A4  38 7F FF FF */	addi r3, r31, -1
/* 801C75A8 001C45A8  7C 06 18 50 */	subf r0, r6, r3
/* 801C75AC 001C45AC  7C 09 03 A6 */	mtctr r0
/* 801C75B0 001C45B0  7C 06 18 40 */	cmplw r6, r3
/* 801C75B4 001C45B4  40 80 00 24 */	bge lbl_801C75D8
lbl_801C75B8:
/* 801C75B8 001C45B8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801C75BC 001C45BC  38 06 00 01 */	addi r0, r6, 1
/* 801C75C0 001C45C0  7C 03 01 D6 */	mullw r0, r3, r0
/* 801C75C4 001C45C4  7C 63 31 D6 */	mullw r3, r3, r6
/* 801C75C8 001C45C8  38 C6 00 01 */	addi r6, r6, 1
/* 801C75CC 001C45CC  7C 05 02 14 */	add r0, r5, r0
/* 801C75D0 001C45D0  7C 05 19 2E */	stwx r0, r5, r3
/* 801C75D4 001C45D4  42 00 FF E4 */	bdnz lbl_801C75B8
lbl_801C75D8:
/* 801C75D8 001C45D8  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 801C75DC 001C45DC  7F E3 FB 78 */	mr r3, r31
/* 801C75E0 001C45E0  80 9E 00 04 */	lwz r4, 4(r30)
/* 801C75E4 001C45E4  7C 00 31 D6 */	mullw r0, r0, r6
/* 801C75E8 001C45E8  7C 85 01 2E */	stwx r4, r5, r0
/* 801C75EC 001C45EC  90 BE 00 04 */	stw r5, 4(r30)
/* 801C75F0 001C45F0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801C75F4 001C45F4  7C 00 FA 14 */	add r0, r0, r31
/* 801C75F8 001C45F8  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_801C75FC:
/* 801C75FC 001C45FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C7600 001C4600  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C7604 001C4604  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C7608 001C4608  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C760C 001C460C  7C 08 03 A6 */	mtlr r0
/* 801C7610 001C4610  38 21 00 20 */	addi r1, r1, 0x20
/* 801C7614 001C4614  4E 80 00 20 */	blr 

.global HSD_ObjAlloc
HSD_ObjAlloc:
/* 801C7618 001C4618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C761C 001C461C  7C 08 02 A6 */	mflr r0
/* 801C7620 001C4620  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C7624 001C4624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C7628 001C4628  7C 7F 1B 78 */	mr r31, r3
/* 801C762C 001C462C  88 03 00 00 */	lbz r0, 0(r3)
/* 801C7630 001C4630  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801C7634 001C4634  41 82 00 1C */	beq lbl_801C7650
/* 801C7638 001C4638  80 7F 00 08 */	lwz r3, 8(r31)
/* 801C763C 001C463C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 801C7640 001C4640  7C 03 00 40 */	cmplw r3, r0
/* 801C7644 001C4644  41 80 00 0C */	blt lbl_801C7650
/* 801C7648 001C4648  38 60 00 00 */	li r3, 0
/* 801C764C 001C464C  48 00 01 08 */	b lbl_801C7754
lbl_801C7650:
/* 801C7650 001C4650  88 1F 00 00 */	lbz r0, 0(r31)
/* 801C7654 001C4654  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C7658 001C4658  41 82 00 98 */	beq lbl_801C76F0
/* 801C765C 001C465C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801C7660 001C4660  3C 03 00 01 */	addis r0, r3, 1
/* 801C7664 001C4664  28 00 FF FF */	cmplwi r0, 0xffff
/* 801C7668 001C4668  40 82 00 40 */	bne lbl_801C76A8
/* 801C766C 001C466C  3C 60 80 22 */	lis r3, 0x8022
/* 801C7670 001C4670  84 03 A8 10 */	lwzu r0, -0x57f0(r3)
/* 801C7674 001C4674  28 00 00 00 */	cmplwi r0, 0
/* 801C7678 001C4678  41 82 00 0C */	beq lbl_801C7684
/* 801C767C 001C467C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801C7680 001C4680  48 00 00 08 */	b lbl_801C7688
lbl_801C7684:
/* 801C7684 001C4684  48 00 3C 29 */	bl _HSD_MemGetRemain
lbl_801C7688:
/* 801C7688 001C4688  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 801C768C 001C468C  7C 03 00 40 */	cmplw r3, r0
/* 801C7690 001C4690  41 81 00 48 */	bgt lbl_801C76D8
/* 801C7694 001C4694  80 7F 00 08 */	lwz r3, 8(r31)
/* 801C7698 001C4698  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801C769C 001C469C  7C 03 02 14 */	add r0, r3, r0
/* 801C76A0 001C46A0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801C76A4 001C46A4  48 00 00 34 */	b lbl_801C76D8
lbl_801C76A8:
/* 801C76A8 001C46A8  3C 60 80 22 */	lis r3, 0x8022
/* 801C76AC 001C46AC  84 03 A8 10 */	lwzu r0, -0x57f0(r3)
/* 801C76B0 001C46B0  28 00 00 00 */	cmplwi r0, 0
/* 801C76B4 001C46B4  41 82 00 0C */	beq lbl_801C76C0
/* 801C76B8 001C46B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801C76BC 001C46BC  48 00 00 08 */	b lbl_801C76C4
lbl_801C76C0:
/* 801C76C0 001C46C0  48 00 3B ED */	bl _HSD_MemGetRemain
lbl_801C76C4:
/* 801C76C4 001C46C4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 801C76C8 001C46C8  7C 03 00 40 */	cmplw r3, r0
/* 801C76CC 001C46CC  40 81 00 0C */	ble lbl_801C76D8
/* 801C76D0 001C46D0  38 00 FF FF */	li r0, -1
/* 801C76D4 001C46D4  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_801C76D8:
/* 801C76D8 001C46D8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801C76DC 001C46DC  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 801C76E0 001C46E0  7C 03 00 40 */	cmplw r3, r0
/* 801C76E4 001C46E4  41 80 00 0C */	blt lbl_801C76F0
/* 801C76E8 001C46E8  38 60 00 00 */	li r3, 0
/* 801C76EC 001C46EC  48 00 00 68 */	b lbl_801C7754
lbl_801C76F0:
/* 801C76F0 001C46F0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801C76F4 001C46F4  28 00 00 00 */	cmplwi r0, 0
/* 801C76F8 001C46F8  40 82 00 24 */	bne lbl_801C771C
/* 801C76FC 001C46FC  7F E3 FB 78 */	mr r3, r31
/* 801C7700 001C4700  38 80 00 01 */	li r4, 1
/* 801C7704 001C4704  4B FF FC C5 */	bl HSD_ObjAllocAddFree
/* 801C7708 001C4708  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801C770C 001C470C  28 00 00 00 */	cmplwi r0, 0
/* 801C7710 001C4710  40 82 00 0C */	bne lbl_801C771C
/* 801C7714 001C4714  38 60 00 00 */	li r3, 0
/* 801C7718 001C4718  48 00 00 3C */	b lbl_801C7754
lbl_801C771C:
/* 801C771C 001C471C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801C7720 001C4720  80 03 00 00 */	lwz r0, 0(r3)
/* 801C7724 001C4724  90 1F 00 04 */	stw r0, 4(r31)
/* 801C7728 001C4728  80 9F 00 08 */	lwz r4, 8(r31)
/* 801C772C 001C472C  38 04 00 01 */	addi r0, r4, 1
/* 801C7730 001C4730  90 1F 00 08 */	stw r0, 8(r31)
/* 801C7734 001C4734  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801C7738 001C4738  38 04 FF FF */	addi r0, r4, -1
/* 801C773C 001C473C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801C7740 001C4740  80 9F 00 08 */	lwz r4, 8(r31)
/* 801C7744 001C4744  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 801C7748 001C4748  7C 04 00 40 */	cmplw r4, r0
/* 801C774C 001C474C  40 81 00 08 */	ble lbl_801C7754
/* 801C7750 001C4750  90 9F 00 10 */	stw r4, 0x10(r31)
lbl_801C7754:
/* 801C7754 001C4754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C7758 001C4758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C775C 001C475C  7C 08 03 A6 */	mtlr r0
/* 801C7760 001C4760  38 21 00 10 */	addi r1, r1, 0x10
/* 801C7764 001C4764  4E 80 00 20 */	blr 

.global HSD_ObjFree
HSD_ObjFree:
/* 801C7768 001C4768  80 03 00 04 */	lwz r0, 4(r3)
/* 801C776C 001C476C  90 04 00 00 */	stw r0, 0(r4)
/* 801C7770 001C4770  90 83 00 04 */	stw r4, 4(r3)
/* 801C7774 001C4774  80 83 00 0C */	lwz r4, 0xc(r3)
/* 801C7778 001C4778  38 04 00 01 */	addi r0, r4, 1
/* 801C777C 001C477C  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C7780 001C4780  80 83 00 08 */	lwz r4, 8(r3)
/* 801C7784 001C4784  38 04 FF FF */	addi r0, r4, -1
/* 801C7788 001C4788  90 03 00 08 */	stw r0, 8(r3)
/* 801C778C 001C478C  4E 80 00 20 */	blr 

.global HSD_ObjAllocInit
HSD_ObjAllocInit:
/* 801C7790 001C4790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C7794 001C4794  7C 08 02 A6 */	mflr r0
/* 801C7798 001C4798  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C779C 001C479C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C77A0 001C47A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C77A4 001C47A4  7C BE 2B 78 */	mr r30, r5
/* 801C77A8 001C47A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C77AC 001C47AC  7C 9D 23 78 */	mr r29, r4
/* 801C77B0 001C47B0  93 81 00 10 */	stw r28, 0x10(r1)
/* 801C77B4 001C47B4  7C 7C 1B 79 */	or. r28, r3, r3
/* 801C77B8 001C47B8  3C 60 80 22 */	lis r3, lbl_8021A810@ha
/* 801C77BC 001C47BC  3B E3 A8 10 */	addi r31, r3, lbl_8021A810@l
/* 801C77C0 001C47C0  40 82 00 14 */	bne lbl_801C77D4
/* 801C77C4 001C47C4  38 7F 00 10 */	addi r3, r31, 0x10
/* 801C77C8 001C47C8  38 80 01 82 */	li r4, 0x182
/* 801C77CC 001C47CC  38 AD 84 F0 */	addi r5, r13, lbl_80276E10@sda21
/* 801C77D0 001C47D0  48 00 E6 15 */	bl __assert
lbl_801C77D4:
/* 801C77D4 001C47D4  28 1C 00 00 */	cmplwi r28, 0
/* 801C77D8 001C47D8  41 82 00 34 */	beq lbl_801C780C
/* 801C77DC 001C47DC  38 6D 90 E8 */	addi r3, r13, lbl_80277A08@sda21
/* 801C77E0 001C47E0  48 00 00 1C */	b lbl_801C77FC
lbl_801C77E4:
/* 801C77E4 001C47E4  7C 04 E0 40 */	cmplw r4, r28
/* 801C77E8 001C47E8  40 82 00 10 */	bne lbl_801C77F8
/* 801C77EC 001C47EC  80 04 00 28 */	lwz r0, 0x28(r4)
/* 801C77F0 001C47F0  90 03 00 00 */	stw r0, 0(r3)
/* 801C77F4 001C47F4  48 00 00 08 */	b lbl_801C77FC
lbl_801C77F8:
/* 801C77F8 001C47F8  38 64 00 28 */	addi r3, r4, 0x28
lbl_801C77FC:
/* 801C77FC 001C47FC  80 83 00 00 */	lwz r4, 0(r3)
/* 801C7800 001C4800  28 04 00 00 */	cmplwi r4, 0
/* 801C7804 001C4804  40 82 FF E0 */	bne lbl_801C77E4
/* 801C7808 001C4808  48 00 00 0C */	b lbl_801C7814
lbl_801C780C:
/* 801C780C 001C480C  38 00 00 00 */	li r0, 0
/* 801C7810 001C4810  90 0D 90 E8 */	stw r0, lbl_80277A08@sda21(r13)
lbl_801C7814:
/* 801C7814 001C4814  7F 83 E3 78 */	mr r3, r28
/* 801C7818 001C4818  38 80 00 00 */	li r4, 0
/* 801C781C 001C481C  38 A0 00 2C */	li r5, 0x2c
/* 801C7820 001C4820  4B E3 DC C5 */	bl memset
/* 801C7824 001C4824  38 60 FF FF */	li r3, -1
/* 801C7828 001C4828  38 00 00 00 */	li r0, 0
/* 801C782C 001C482C  90 7C 00 14 */	stw r3, 0x14(r28)
/* 801C7830 001C4830  28 1E 00 20 */	cmplwi r30, 0x20
/* 801C7834 001C4834  90 1C 00 18 */	stw r0, 0x18(r28)
/* 801C7838 001C4838  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 801C783C 001C483C  40 81 00 14 */	ble lbl_801C7850
/* 801C7840 001C4840  38 7F 00 10 */	addi r3, r31, 0x10
/* 801C7844 001C4844  38 BF 00 1C */	addi r5, r31, 0x1c
/* 801C7848 001C4848  38 80 01 8D */	li r4, 0x18d
/* 801C784C 001C484C  48 00 E5 99 */	bl __assert
lbl_801C7850:
/* 801C7850 001C4850  7F C3 F3 78 */	mr r3, r30
/* 801C7854 001C4854  4B FF F9 C9 */	bl HSD_GetNbBits
/* 801C7858 001C4858  2C 03 00 01 */	cmpwi r3, 1
/* 801C785C 001C485C  41 82 00 14 */	beq lbl_801C7870
/* 801C7860 001C4860  38 7F 00 10 */	addi r3, r31, 0x10
/* 801C7864 001C4864  38 BF 00 28 */	addi r5, r31, 0x28
/* 801C7868 001C4868  38 80 01 8E */	li r4, 0x18e
/* 801C786C 001C486C  48 00 E5 79 */	bl __assert
lbl_801C7870:
/* 801C7870 001C4870  93 DC 00 24 */	stw r30, 0x24(r28)
/* 801C7874 001C4874  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 801C7878 001C4878  38 63 FF FF */	addi r3, r3, -1
/* 801C787C 001C487C  7C 1D 1A 14 */	add r0, r29, r3
/* 801C7880 001C4880  7C 00 18 78 */	andc r0, r0, r3
/* 801C7884 001C4884  90 1C 00 20 */	stw r0, 0x20(r28)
/* 801C7888 001C4888  80 0D 90 E8 */	lwz r0, lbl_80277A08@sda21(r13)
/* 801C788C 001C488C  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C7890 001C4890  93 8D 90 E8 */	stw r28, lbl_80277A08@sda21(r13)
/* 801C7894 001C4894  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C7898 001C4898  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C789C 001C489C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C78A0 001C48A0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801C78A4 001C48A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C78A8 001C48A8  7C 08 03 A6 */	mtlr r0
/* 801C78AC 001C48AC  38 21 00 20 */	addi r1, r1, 0x20
/* 801C78B0 001C48B0  4E 80 00 20 */	blr 
