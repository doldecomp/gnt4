.include "macros.inc"

.section .text  # 0x8017F318 - 0x8017F8B4

.global func_8017F318
func_8017F318:
/* 8017F318 0017C318  7C 08 02 A6 */	mflr r0
/* 8017F31C 0017C31C  90 01 00 04 */	stw r0, 4(r1)
/* 8017F320 0017C320  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8017F324 0017C324  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8017F328 0017C328  3B E6 00 00 */	addi r31, r6, 0
/* 8017F32C 0017C32C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8017F330 0017C330  3B C5 00 00 */	addi r30, r5, 0
/* 8017F334 0017C334  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8017F338 0017C338  3B A4 00 00 */	addi r29, r4, 0
/* 8017F33C 0017C33C  38 81 00 18 */	addi r4, r1, 0x18
/* 8017F340 0017C340  93 81 00 20 */	stw r28, 0x20(r1)
/* 8017F344 0017C344  7C 7C 1B 78 */	mr r28, r3
/* 8017F348 0017C348  80 63 00 00 */	lwz r3, 0(r3)
/* 8017F34C 0017C34C  4B FF B5 F1 */	bl func_8017A93C
/* 8017F350 0017C350  2C 03 00 00 */	cmpwi r3, 0
/* 8017F354 0017C354  40 80 00 08 */	bge lbl_8017F35C
/* 8017F358 0017C358  48 00 01 58 */	b lbl_8017F4B0
lbl_8017F35C:
/* 8017F35C 0017C35C  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 8017F360 0017C360  28 00 00 05 */	cmplwi r0, 5
/* 8017F364 0017C364  41 80 00 28 */	blt lbl_8017F38C
/* 8017F368 0017C368  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017F36C 0017C36C  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 8017F370 0017C370  7C 00 28 40 */	cmplw r0, r5
/* 8017F374 0017C374  40 80 00 18 */	bge lbl_8017F38C
/* 8017F378 0017C378  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8017F37C 0017C37C  80 1C 00 08 */	lwz r0, 8(r28)
/* 8017F380 0017C380  7C 85 21 D6 */	mullw r4, r5, r4
/* 8017F384 0017C384  7C 04 00 00 */	cmpw r4, r0
/* 8017F388 0017C388  41 81 00 14 */	bgt lbl_8017F39C
lbl_8017F38C:
/* 8017F38C 0017C38C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017F390 0017C390  38 80 FF 80 */	li r4, -128
/* 8017F394 0017C394  4B FF B6 61 */	bl func_8017A9F4
/* 8017F398 0017C398  48 00 01 18 */	b lbl_8017F4B0
lbl_8017F39C:
/* 8017F39C 0017C39C  4B FF D3 45 */	bl func_8017C6E0
/* 8017F3A0 0017C3A0  80 1C 00 04 */	lwz r0, 4(r28)
/* 8017F3A4 0017C3A4  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8017F3A8 0017C3A8  54 00 30 32 */	slwi r0, r0, 6
/* 8017F3AC 0017C3AC  7C 83 02 14 */	add r4, r3, r0
/* 8017F3B0 0017C3B0  80 65 00 0C */	lwz r3, 0xc(r5)
/* 8017F3B4 0017C3B4  A0 04 00 38 */	lhz r0, 0x38(r4)
/* 8017F3B8 0017C3B8  7C 60 19 D6 */	mullw r3, r0, r3
/* 8017F3BC 0017C3BC  7C 03 F0 00 */	cmpw r3, r30
/* 8017F3C0 0017C3C0  40 81 00 10 */	ble lbl_8017F3D0
/* 8017F3C4 0017C3C4  7C 1E EA 14 */	add r0, r30, r29
/* 8017F3C8 0017C3C8  7C 03 00 00 */	cmpw r3, r0
/* 8017F3CC 0017C3CC  40 80 00 14 */	bge lbl_8017F3E0
lbl_8017F3D0:
/* 8017F3D0 0017C3D0  38 65 00 00 */	addi r3, r5, 0
/* 8017F3D4 0017C3D4  38 80 FF F5 */	li r4, -11
/* 8017F3D8 0017C3D8  4B FF B6 1D */	bl func_8017A9F4
/* 8017F3DC 0017C3DC  48 00 00 D4 */	b lbl_8017F4B0
lbl_8017F3E0:
/* 8017F3E0 0017C3E0  93 85 00 C0 */	stw r28, 0xc0(r5)
/* 8017F3E4 0017C3E4  93 BC 00 0C */	stw r29, 0xc(r28)
/* 8017F3E8 0017C3E8  80 1C 00 08 */	lwz r0, 8(r28)
/* 8017F3EC 0017C3EC  7C 1E 00 00 */	cmpw r30, r0
/* 8017F3F0 0017C3F0  40 80 00 40 */	bge lbl_8017F430
/* 8017F3F4 0017C3F4  38 00 00 00 */	li r0, 0
/* 8017F3F8 0017C3F8  90 1C 00 08 */	stw r0, 8(r28)
/* 8017F3FC 0017C3FC  A0 04 00 36 */	lhz r0, 0x36(r4)
/* 8017F400 0017C400  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 8017F404 0017C404  A0 9C 00 10 */	lhz r4, 0x10(r28)
/* 8017F408 0017C408  28 04 00 05 */	cmplwi r4, 5
/* 8017F40C 0017C40C  41 80 00 14 */	blt lbl_8017F420
/* 8017F410 0017C410  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017F414 0017C414  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8017F418 0017C418  7C 04 00 40 */	cmplw r4, r0
/* 8017F41C 0017C41C  41 80 00 14 */	blt lbl_8017F430
lbl_8017F420:
/* 8017F420 0017C420  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017F424 0017C424  38 80 FF FA */	li r4, -6
/* 8017F428 0017C428  4B FF B5 CD */	bl func_8017A9F4
/* 8017F42C 0017C42C  48 00 00 84 */	b lbl_8017F4B0
lbl_8017F430:
/* 8017F430 0017C430  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017F434 0017C434  4B FF CE A9 */	bl func_8017C2DC
/* 8017F438 0017C438  48 00 00 4C */	b lbl_8017F484
lbl_8017F43C:
/* 8017F43C 0017C43C  80 1C 00 08 */	lwz r0, 8(r28)
/* 8017F440 0017C440  7C 00 22 14 */	add r0, r0, r4
/* 8017F444 0017C444  90 1C 00 08 */	stw r0, 8(r28)
/* 8017F448 0017C448  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 8017F44C 0017C44C  54 00 08 3C */	slwi r0, r0, 1
/* 8017F450 0017C450  7C 03 02 2E */	lhzx r0, r3, r0
/* 8017F454 0017C454  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 8017F458 0017C458  A0 BC 00 10 */	lhz r5, 0x10(r28)
/* 8017F45C 0017C45C  28 05 00 05 */	cmplwi r5, 5
/* 8017F460 0017C460  41 80 00 14 */	blt lbl_8017F474
/* 8017F464 0017C464  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8017F468 0017C468  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 8017F46C 0017C46C  7C 05 00 40 */	cmplw r5, r0
/* 8017F470 0017C470  41 80 00 14 */	blt lbl_8017F484
lbl_8017F474:
/* 8017F474 0017C474  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017F478 0017C478  38 80 FF FA */	li r4, -6
/* 8017F47C 0017C47C  4B FF B5 79 */	bl func_8017A9F4
/* 8017F480 0017C480  48 00 00 30 */	b lbl_8017F4B0
lbl_8017F484:
/* 8017F484 0017C484  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8017F488 0017C488  80 BC 00 08 */	lwz r5, 8(r28)
/* 8017F48C 0017C48C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8017F490 0017C490  38 04 FF FF */	addi r0, r4, -1
/* 8017F494 0017C494  7F C0 00 78 */	andc r0, r30, r0
/* 8017F498 0017C498  7C 05 00 40 */	cmplw r5, r0
/* 8017F49C 0017C49C  41 80 FF A0 */	blt lbl_8017F43C
/* 8017F4A0 0017C4A0  93 DC 00 08 */	stw r30, 8(r28)
/* 8017F4A4 0017C4A4  38 60 00 00 */	li r3, 0
/* 8017F4A8 0017C4A8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8017F4AC 0017C4AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8017F4B0:
/* 8017F4B0 0017C4B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8017F4B4 0017C4B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8017F4B8 0017C4B8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8017F4BC 0017C4BC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8017F4C0 0017C4C0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8017F4C4 0017C4C4  38 21 00 30 */	addi r1, r1, 0x30
/* 8017F4C8 0017C4C8  7C 08 03 A6 */	mtlr r0
/* 8017F4CC 0017C4CC  4E 80 00 20 */	blr 
lbl_8017F4D0:
/* 8017F4D0 0017C4D0  7C 08 02 A6 */	mflr r0
/* 8017F4D4 0017C4D4  90 01 00 04 */	stw r0, 4(r1)
/* 8017F4D8 0017C4D8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8017F4DC 0017C4DC  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8017F4E0 0017C4E0  3B A3 00 00 */	addi r29, r3, 0
/* 8017F4E4 0017C4E4  3C 60 80 24 */	lis r3, lbl_80245540@ha
/* 8017F4E8 0017C4E8  1C BD 01 10 */	mulli r5, r29, 0x110
/* 8017F4EC 0017C4EC  38 03 55 40 */	addi r0, r3, lbl_80245540@l
/* 8017F4F0 0017C4F0  7C 9E 23 79 */	or. r30, r4, r4
/* 8017F4F4 0017C4F4  7F E0 2A 14 */	add r31, r0, r5
/* 8017F4F8 0017C4F8  41 80 00 C8 */	blt lbl_8017F5C0
/* 8017F4FC 0017C4FC  83 9F 00 C0 */	lwz r28, 0xc0(r31)
/* 8017F500 0017C500  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8017F504 0017C504  2C 04 00 00 */	cmpwi r4, 0
/* 8017F508 0017C508  40 80 00 0C */	bge lbl_8017F514
/* 8017F50C 0017C50C  3B C0 FF F2 */	li r30, -14
/* 8017F510 0017C510  48 00 00 B0 */	b lbl_8017F5C0
lbl_8017F514:
/* 8017F514 0017C514  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8017F518 0017C518  80 DC 00 08 */	lwz r6, 8(r28)
/* 8017F51C 0017C51C  38 05 FF FF */	addi r0, r5, -1
/* 8017F520 0017C520  7C 03 00 F8 */	nor r3, r0, r0
/* 8017F524 0017C524  7C 06 2A 14 */	add r0, r6, r5
/* 8017F528 0017C528  7C 60 00 38 */	and r0, r3, r0
/* 8017F52C 0017C52C  7F 66 00 50 */	subf r27, r6, r0
/* 8017F530 0017C530  7C 1B 20 50 */	subf r0, r27, r4
/* 8017F534 0017C534  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8017F538 0017C538  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8017F53C 0017C53C  2C 00 00 00 */	cmpwi r0, 0
/* 8017F540 0017C540  40 81 00 80 */	ble lbl_8017F5C0
/* 8017F544 0017C544  7F E3 FB 78 */	mr r3, r31
/* 8017F548 0017C548  4B FF CD 95 */	bl func_8017C2DC
/* 8017F54C 0017C54C  80 1C 00 08 */	lwz r0, 8(r28)
/* 8017F550 0017C550  7C 00 DA 14 */	add r0, r0, r27
/* 8017F554 0017C554  90 1C 00 08 */	stw r0, 8(r28)
/* 8017F558 0017C558  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 8017F55C 0017C55C  54 00 08 3C */	slwi r0, r0, 1
/* 8017F560 0017C560  7C 03 02 2E */	lhzx r0, r3, r0
/* 8017F564 0017C564  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 8017F568 0017C568  A0 7C 00 10 */	lhz r3, 0x10(r28)
/* 8017F56C 0017C56C  28 03 00 05 */	cmplwi r3, 5
/* 8017F570 0017C570  41 80 00 10 */	blt lbl_8017F580
/* 8017F574 0017C574  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 8017F578 0017C578  7C 03 00 40 */	cmplw r3, r0
/* 8017F57C 0017C57C  41 80 00 0C */	blt lbl_8017F588
lbl_8017F580:
/* 8017F580 0017C580  3B C0 FF FA */	li r30, -6
/* 8017F584 0017C584  48 00 00 3C */	b lbl_8017F5C0
lbl_8017F588:
/* 8017F588 0017C588  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 8017F58C 0017C58C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8017F590 0017C590  7C 05 00 00 */	cmpw r5, r0
/* 8017F594 0017C594  40 80 00 08 */	bge lbl_8017F59C
/* 8017F598 0017C598  48 00 00 08 */	b lbl_8017F5A0
lbl_8017F59C:
/* 8017F59C 0017C59C  7C 05 03 78 */	mr r5, r0
lbl_8017F5A0:
/* 8017F5A0 0017C5A0  7C 80 19 D6 */	mullw r4, r0, r3
/* 8017F5A4 0017C5A4  80 DF 00 B4 */	lwz r6, 0xb4(r31)
/* 8017F5A8 0017C5A8  3C 60 80 18 */	lis r3, lbl_8017F4D0@ha
/* 8017F5AC 0017C5AC  38 E3 F4 D0 */	addi r7, r3, lbl_8017F4D0@l
/* 8017F5B0 0017C5B0  38 7D 00 00 */	addi r3, r29, 0
/* 8017F5B4 0017C5B4  4B FF CB 5D */	bl func_8017C110
/* 8017F5B8 0017C5B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8017F5BC 0017C5BC  40 80 00 30 */	bge lbl_8017F5EC
lbl_8017F5C0:
/* 8017F5C0 0017C5C0  83 7F 00 D0 */	lwz r27, 0xd0(r31)
/* 8017F5C4 0017C5C4  38 00 00 00 */	li r0, 0
/* 8017F5C8 0017C5C8  38 7F 00 00 */	addi r3, r31, 0
/* 8017F5CC 0017C5CC  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8017F5D0 0017C5D0  7F C4 F3 78 */	mr r4, r30
/* 8017F5D4 0017C5D4  4B FF B4 21 */	bl func_8017A9F4
/* 8017F5D8 0017C5D8  39 9B 00 00 */	addi r12, r27, 0
/* 8017F5DC 0017C5DC  7D 88 03 A6 */	mtlr r12
/* 8017F5E0 0017C5E0  38 7D 00 00 */	addi r3, r29, 0
/* 8017F5E4 0017C5E4  38 9E 00 00 */	addi r4, r30, 0
/* 8017F5E8 0017C5E8  4E 80 00 21 */	blrl 
lbl_8017F5EC:
/* 8017F5EC 0017C5EC  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8017F5F0 0017C5F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8017F5F4 0017C5F4  38 21 00 28 */	addi r1, r1, 0x28
/* 8017F5F8 0017C5F8  7C 08 03 A6 */	mtlr r0
/* 8017F5FC 0017C5FC  4E 80 00 20 */	blr 

.global func_8017F600
func_8017F600:
/* 8017F600 0017C600  7C 08 02 A6 */	mflr r0
/* 8017F604 0017C604  90 01 00 04 */	stw r0, 4(r1)
/* 8017F608 0017C608  54 C0 05 FF */	clrlwi. r0, r6, 0x17
/* 8017F60C 0017C60C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8017F610 0017C610  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8017F614 0017C614  3B E5 00 00 */	addi r31, r5, 0
/* 8017F618 0017C618  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8017F61C 0017C61C  3B C4 00 00 */	addi r30, r4, 0
/* 8017F620 0017C620  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8017F624 0017C624  3B A3 00 00 */	addi r29, r3, 0
/* 8017F628 0017C628  93 81 00 20 */	stw r28, 0x20(r1)
/* 8017F62C 0017C62C  3B 87 00 00 */	addi r28, r7, 0
/* 8017F630 0017C630  40 82 00 0C */	bne lbl_8017F63C
/* 8017F634 0017C634  57 E0 05 FF */	clrlwi. r0, r31, 0x17
/* 8017F638 0017C638  41 82 00 0C */	beq lbl_8017F644
lbl_8017F63C:
/* 8017F63C 0017C63C  38 60 FF 80 */	li r3, -128
/* 8017F640 0017C640  48 00 00 E4 */	b lbl_8017F724
lbl_8017F644:
/* 8017F644 0017C644  38 7D 00 00 */	addi r3, r29, 0
/* 8017F648 0017C648  38 9F 00 00 */	addi r4, r31, 0
/* 8017F64C 0017C64C  38 A6 00 00 */	addi r5, r6, 0
/* 8017F650 0017C650  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8017F654 0017C654  4B FF FC C5 */	bl func_8017F318
/* 8017F658 0017C658  2C 03 00 00 */	cmpwi r3, 0
/* 8017F65C 0017C65C  40 80 00 08 */	bge lbl_8017F664
/* 8017F660 0017C660  48 00 00 C4 */	b lbl_8017F724
lbl_8017F664:
/* 8017F664 0017C664  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F668 0017C668  4B FF D0 79 */	bl func_8017C6E0
/* 8017F66C 0017C66C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8017F670 0017C670  54 00 30 32 */	slwi r0, r0, 6
/* 8017F674 0017C674  7C 83 02 14 */	add r4, r3, r0
/* 8017F678 0017C678  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F67C 0017C67C  4B FF F5 91 */	bl func_8017EC0C
/* 8017F680 0017C680  7C 64 1B 79 */	or. r4, r3, r3
/* 8017F684 0017C684  40 80 00 10 */	bge lbl_8017F694
/* 8017F688 0017C688  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F68C 0017C68C  4B FF B3 69 */	bl func_8017A9F4
/* 8017F690 0017C690  48 00 00 94 */	b lbl_8017F724
lbl_8017F694:
/* 8017F694 0017C694  38 7E 00 00 */	addi r3, r30, 0
/* 8017F698 0017C698  38 9F 00 00 */	addi r4, r31, 0
/* 8017F69C 0017C69C  4B FE 74 11 */	bl func_80166AAC
/* 8017F6A0 0017C6A0  28 1C 00 00 */	cmplwi r28, 0
/* 8017F6A4 0017C6A4  41 82 00 0C */	beq lbl_8017F6B0
/* 8017F6A8 0017C6A8  7F 80 E3 78 */	mr r0, r28
/* 8017F6AC 0017C6AC  48 00 00 0C */	b lbl_8017F6B8
lbl_8017F6B0:
/* 8017F6B0 0017C6B0  3C 60 80 18 */	lis r3, func_801797EC@ha
/* 8017F6B4 0017C6B4  38 03 97 EC */	addi r0, r3, func_801797EC@l
lbl_8017F6B8:
/* 8017F6B8 0017C6B8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F6BC 0017C6BC  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 8017F6C0 0017C6C0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F6C4 0017C6C4  80 9D 00 08 */	lwz r4, 8(r29)
/* 8017F6C8 0017C6C8  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8017F6CC 0017C6CC  38 05 FF FF */	addi r0, r5, -1
/* 8017F6D0 0017C6D0  7C 88 00 38 */	and r8, r4, r0
/* 8017F6D4 0017C6D4  7C 68 28 50 */	subf r3, r8, r5
/* 8017F6D8 0017C6D8  7C 1F 18 00 */	cmpw r31, r3
/* 8017F6DC 0017C6DC  40 80 00 08 */	bge lbl_8017F6E4
/* 8017F6E0 0017C6E0  7F E3 FB 78 */	mr r3, r31
lbl_8017F6E4:
/* 8017F6E4 0017C6E4  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 8017F6E8 0017C6E8  3C 80 80 18 */	lis r4, lbl_8017F4D0@ha
/* 8017F6EC 0017C6EC  3B E3 00 00 */	addi r31, r3, 0
/* 8017F6F0 0017C6F0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8017F6F4 0017C6F4  7C 05 01 D6 */	mullw r0, r5, r0
/* 8017F6F8 0017C6F8  38 E4 F4 D0 */	addi r7, r4, lbl_8017F4D0@l
/* 8017F6FC 0017C6FC  38 BF 00 00 */	addi r5, r31, 0
/* 8017F700 0017C700  38 DE 00 00 */	addi r6, r30, 0
/* 8017F704 0017C704  7C 88 02 14 */	add r4, r8, r0
/* 8017F708 0017C708  4B FF CA 09 */	bl func_8017C110
/* 8017F70C 0017C70C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8017F710 0017C710  40 80 00 10 */	bge lbl_8017F720
/* 8017F714 0017C714  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F718 0017C718  7F A4 EB 78 */	mr r4, r29
/* 8017F71C 0017C71C  4B FF B2 D9 */	bl func_8017A9F4
lbl_8017F720:
/* 8017F720 0017C720  7F A3 EB 78 */	mr r3, r29
lbl_8017F724:
/* 8017F724 0017C724  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8017F728 0017C728  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8017F72C 0017C72C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8017F730 0017C730  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8017F734 0017C734  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8017F738 0017C738  38 21 00 30 */	addi r1, r1, 0x30
/* 8017F73C 0017C73C  7C 08 03 A6 */	mtlr r0
/* 8017F740 0017C740  4E 80 00 20 */	blr 

.global func_8017F744
func_8017F744:
/* 8017F744 0017C744  7C 08 02 A6 */	mflr r0
/* 8017F748 0017C748  90 01 00 04 */	stw r0, 4(r1)
/* 8017F74C 0017C74C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017F750 0017C750  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017F754 0017C754  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017F758 0017C758  3B C3 00 00 */	addi r30, r3, 0
/* 8017F75C 0017C75C  3C 60 80 24 */	lis r3, lbl_80245540@ha
/* 8017F760 0017C760  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017F764 0017C764  1C BE 01 10 */	mulli r5, r30, 0x110
/* 8017F768 0017C768  93 81 00 10 */	stw r28, 0x10(r1)
/* 8017F76C 0017C76C  38 03 55 40 */	addi r0, r3, lbl_80245540@l
/* 8017F770 0017C770  7C 9C 23 79 */	or. r28, r4, r4
/* 8017F774 0017C774  7F E0 2A 14 */	add r31, r0, r5
/* 8017F778 0017C778  41 80 00 F0 */	blt lbl_8017F868
/* 8017F77C 0017C77C  83 BF 00 C0 */	lwz r29, 0xc0(r31)
/* 8017F780 0017C780  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8017F784 0017C784  2C 03 00 00 */	cmpwi r3, 0
/* 8017F788 0017C788  40 80 00 0C */	bge lbl_8017F794
/* 8017F78C 0017C78C  3B 80 FF F2 */	li r28, -14
/* 8017F790 0017C790  48 00 00 D8 */	b lbl_8017F868
lbl_8017F794:
/* 8017F794 0017C794  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8017F798 0017C798  7C 00 18 50 */	subf r0, r0, r3
/* 8017F79C 0017C79C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8017F7A0 0017C7A0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8017F7A4 0017C7A4  2C 00 00 00 */	cmpwi r0, 0
/* 8017F7A8 0017C7A8  41 81 00 54 */	bgt lbl_8017F7FC
/* 8017F7AC 0017C7AC  7F E3 FB 78 */	mr r3, r31
/* 8017F7B0 0017C7B0  4B FF CF 31 */	bl func_8017C6E0
/* 8017F7B4 0017C7B4  80 BD 00 04 */	lwz r5, 4(r29)
/* 8017F7B8 0017C7B8  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 8017F7BC 0017C7BC  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 8017F7C0 0017C7C0  54 A4 30 32 */	slwi r4, r5, 6
/* 8017F7C4 0017C7C4  7F 83 22 14 */	add r28, r3, r4
/* 8017F7C8 0017C7C8  54 1D F0 BE */	srwi r29, r0, 2
/* 8017F7CC 0017C7CC  4B FE D8 95 */	bl func_8016D060
/* 8017F7D0 0017C7D0  38 DD 00 00 */	addi r6, r29, 0
/* 8017F7D4 0017C7D4  38 A0 00 00 */	li r5, 0
/* 8017F7D8 0017C7D8  48 00 EB F5 */	bl func_8018E3CC
/* 8017F7DC 0017C7DC  90 9C 00 28 */	stw r4, 0x28(r28)
/* 8017F7E0 0017C7E0  38 00 00 00 */	li r0, 0
/* 8017F7E4 0017C7E4  38 7E 00 00 */	addi r3, r30, 0
/* 8017F7E8 0017C7E8  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 8017F7EC 0017C7EC  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8017F7F0 0017C7F0  4B FF D0 91 */	bl func_8017C880
/* 8017F7F4 0017C7F4  7C 7C 1B 78 */	mr r28, r3
/* 8017F7F8 0017C7F8  48 00 00 68 */	b lbl_8017F860
lbl_8017F7FC:
/* 8017F7FC 0017C7FC  7F E3 FB 78 */	mr r3, r31
/* 8017F800 0017C800  4B FF CA DD */	bl func_8017C2DC
/* 8017F804 0017C804  80 9D 00 08 */	lwz r4, 8(r29)
/* 8017F808 0017C808  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8017F80C 0017C80C  7C 04 02 14 */	add r0, r4, r0
/* 8017F810 0017C810  90 1D 00 08 */	stw r0, 8(r29)
/* 8017F814 0017C814  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 8017F818 0017C818  54 00 08 3C */	slwi r0, r0, 1
/* 8017F81C 0017C81C  7C 03 02 2E */	lhzx r0, r3, r0
/* 8017F820 0017C820  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 8017F824 0017C824  A0 9D 00 10 */	lhz r4, 0x10(r29)
/* 8017F828 0017C828  28 04 00 05 */	cmplwi r4, 5
/* 8017F82C 0017C82C  41 80 00 10 */	blt lbl_8017F83C
/* 8017F830 0017C830  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 8017F834 0017C834  7C 04 00 40 */	cmplw r4, r0
/* 8017F838 0017C838  41 80 00 0C */	blt lbl_8017F844
lbl_8017F83C:
/* 8017F83C 0017C83C  3B 80 FF FA */	li r28, -6
/* 8017F840 0017C840  48 00 00 28 */	b lbl_8017F868
lbl_8017F844:
/* 8017F844 0017C844  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8017F848 0017C848  3C 60 80 18 */	lis r3, func_8017F8B4@ha
/* 8017F84C 0017C84C  38 A3 F8 B4 */	addi r5, r3, func_8017F8B4@l
/* 8017F850 0017C850  7C 80 21 D6 */	mullw r4, r0, r4
/* 8017F854 0017C854  38 7E 00 00 */	addi r3, r30, 0
/* 8017F858 0017C858  4B FF AE E9 */	bl func_8017A740
/* 8017F85C 0017C85C  7C 7C 1B 78 */	mr r28, r3
lbl_8017F860:
/* 8017F860 0017C860  2C 1C 00 00 */	cmpwi r28, 0
/* 8017F864 0017C864  40 80 00 30 */	bge lbl_8017F894
lbl_8017F868:
/* 8017F868 0017C868  83 BF 00 D0 */	lwz r29, 0xd0(r31)
/* 8017F86C 0017C86C  38 00 00 00 */	li r0, 0
/* 8017F870 0017C870  38 7F 00 00 */	addi r3, r31, 0
/* 8017F874 0017C874  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8017F878 0017C878  7F 84 E3 78 */	mr r4, r28
/* 8017F87C 0017C87C  4B FF B1 79 */	bl func_8017A9F4
/* 8017F880 0017C880  39 9D 00 00 */	addi r12, r29, 0
/* 8017F884 0017C884  7D 88 03 A6 */	mtlr r12
/* 8017F888 0017C888  38 7E 00 00 */	addi r3, r30, 0
/* 8017F88C 0017C88C  38 9C 00 00 */	addi r4, r28, 0
/* 8017F890 0017C890  4E 80 00 21 */	blrl 
lbl_8017F894:
/* 8017F894 0017C894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017F898 0017C898  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017F89C 0017C89C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017F8A0 0017C8A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017F8A4 0017C8A4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8017F8A8 0017C8A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8017F8AC 0017C8AC  7C 08 03 A6 */	mtlr r0
/* 8017F8B0 0017C8B0  4E 80 00 20 */	blr 
