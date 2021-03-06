.include "macros.inc"

.section .text  # 0x8017FC2C - 0x801800AC

.global UpdateIconOffsets
UpdateIconOffsets:
/* 8017FC2C 0017CC2C  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 8017FC30 0017CC30  3C 08 00 01 */	addis r0, r8, 1
/* 8017FC34 0017CC34  28 00 FF FF */	cmplwi r0, 0xffff
/* 8017FC38 0017CC38  40 82 00 18 */	bne lbl_8017FC50
/* 8017FC3C 0017CC3C  38 00 00 00 */	li r0, 0
/* 8017FC40 0017CC40  98 04 00 2E */	stb r0, 0x2e(r4)
/* 8017FC44 0017CC44  39 00 00 00 */	li r8, 0
/* 8017FC48 0017CC48  B0 04 00 34 */	sth r0, 0x34(r4)
/* 8017FC4C 0017CC4C  B0 04 00 36 */	sth r0, 0x36(r4)
lbl_8017FC50:
/* 8017FC50 0017CC50  88 03 00 07 */	lbz r0, 7(r3)
/* 8017FC54 0017CC54  39 20 00 00 */	li r9, 0
/* 8017FC58 0017CC58  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8017FC5C 0017CC5C  2C 00 00 02 */	cmpwi r0, 2
/* 8017FC60 0017CC60  41 82 00 28 */	beq lbl_8017FC88
/* 8017FC64 0017CC64  40 80 00 38 */	bge lbl_8017FC9C
/* 8017FC68 0017CC68  2C 00 00 01 */	cmpwi r0, 1
/* 8017FC6C 0017CC6C  40 80 00 08 */	bge lbl_8017FC74
/* 8017FC70 0017CC70  48 00 00 2C */	b lbl_8017FC9C
lbl_8017FC74:
/* 8017FC74 0017CC74  91 04 00 3C */	stw r8, 0x3c(r4)
/* 8017FC78 0017CC78  38 08 0C 00 */	addi r0, r8, 0xc00
/* 8017FC7C 0017CC7C  39 08 0E 00 */	addi r8, r8, 0xe00
/* 8017FC80 0017CC80  90 04 00 40 */	stw r0, 0x40(r4)
/* 8017FC84 0017CC84  48 00 00 24 */	b lbl_8017FCA8
lbl_8017FC88:
/* 8017FC88 0017CC88  91 04 00 3C */	stw r8, 0x3c(r4)
/* 8017FC8C 0017CC8C  38 00 FF FF */	li r0, -1
/* 8017FC90 0017CC90  39 08 18 00 */	addi r8, r8, 0x1800
/* 8017FC94 0017CC94  90 04 00 40 */	stw r0, 0x40(r4)
/* 8017FC98 0017CC98  48 00 00 10 */	b lbl_8017FCA8
lbl_8017FC9C:
/* 8017FC9C 0017CC9C  38 00 FF FF */	li r0, -1
/* 8017FCA0 0017CCA0  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8017FCA4 0017CCA4  90 04 00 40 */	stw r0, 0x40(r4)
lbl_8017FCA8:
/* 8017FCA8 0017CCA8  38 00 00 02 */	li r0, 2
/* 8017FCAC 0017CCAC  7C 09 03 A6 */	mtctr r0
/* 8017FCB0 0017CCB0  38 E4 00 00 */	addi r7, r4, 0
/* 8017FCB4 0017CCB4  39 40 00 00 */	li r10, 0
/* 8017FCB8 0017CCB8  38 C0 00 00 */	li r6, 0
/* 8017FCBC 0017CCBC  38 00 FF FF */	li r0, -1
lbl_8017FCC0:
/* 8017FCC0 0017CCC0  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 8017FCC4 0017CCC4  7C A5 36 30 */	sraw r5, r5, r6
/* 8017FCC8 0017CCC8  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 8017FCCC 0017CCCC  2C 05 00 02 */	cmpwi r5, 2
/* 8017FCD0 0017CCD0  41 82 00 24 */	beq lbl_8017FCF4
/* 8017FCD4 0017CCD4  40 80 00 2C */	bge lbl_8017FD00
/* 8017FCD8 0017CCD8  2C 05 00 01 */	cmpwi r5, 1
/* 8017FCDC 0017CCDC  40 80 00 08 */	bge lbl_8017FCE4
/* 8017FCE0 0017CCE0  48 00 00 20 */	b lbl_8017FD00
lbl_8017FCE4:
/* 8017FCE4 0017CCE4  91 07 00 44 */	stw r8, 0x44(r7)
/* 8017FCE8 0017CCE8  39 20 00 01 */	li r9, 1
/* 8017FCEC 0017CCEC  39 08 04 00 */	addi r8, r8, 0x400
/* 8017FCF0 0017CCF0  48 00 00 14 */	b lbl_8017FD04
lbl_8017FCF4:
/* 8017FCF4 0017CCF4  91 07 00 44 */	stw r8, 0x44(r7)
/* 8017FCF8 0017CCF8  39 08 08 00 */	addi r8, r8, 0x800
/* 8017FCFC 0017CCFC  48 00 00 08 */	b lbl_8017FD04
lbl_8017FD00:
/* 8017FD00 0017CD00  90 07 00 44 */	stw r0, 0x44(r7)
lbl_8017FD04:
/* 8017FD04 0017CD04  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 8017FD08 0017CD08  38 C6 00 02 */	addi r6, r6, 2
/* 8017FD0C 0017CD0C  38 E7 00 04 */	addi r7, r7, 4
/* 8017FD10 0017CD10  7C A5 36 30 */	sraw r5, r5, r6
/* 8017FD14 0017CD14  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 8017FD18 0017CD18  2C 05 00 02 */	cmpwi r5, 2
/* 8017FD1C 0017CD1C  41 82 00 24 */	beq lbl_8017FD40
/* 8017FD20 0017CD20  40 80 00 2C */	bge lbl_8017FD4C
/* 8017FD24 0017CD24  2C 05 00 01 */	cmpwi r5, 1
/* 8017FD28 0017CD28  40 80 00 08 */	bge lbl_8017FD30
/* 8017FD2C 0017CD2C  48 00 00 20 */	b lbl_8017FD4C
lbl_8017FD30:
/* 8017FD30 0017CD30  91 07 00 44 */	stw r8, 0x44(r7)
/* 8017FD34 0017CD34  39 20 00 01 */	li r9, 1
/* 8017FD38 0017CD38  39 08 04 00 */	addi r8, r8, 0x400
/* 8017FD3C 0017CD3C  48 00 00 14 */	b lbl_8017FD50
lbl_8017FD40:
/* 8017FD40 0017CD40  91 07 00 44 */	stw r8, 0x44(r7)
/* 8017FD44 0017CD44  39 08 08 00 */	addi r8, r8, 0x800
/* 8017FD48 0017CD48  48 00 00 08 */	b lbl_8017FD50
lbl_8017FD4C:
/* 8017FD4C 0017CD4C  90 07 00 44 */	stw r0, 0x44(r7)
lbl_8017FD50:
/* 8017FD50 0017CD50  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 8017FD54 0017CD54  38 C6 00 02 */	addi r6, r6, 2
/* 8017FD58 0017CD58  39 4A 00 01 */	addi r10, r10, 1
/* 8017FD5C 0017CD5C  7C A5 36 30 */	sraw r5, r5, r6
/* 8017FD60 0017CD60  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 8017FD64 0017CD64  2C 05 00 02 */	cmpwi r5, 2
/* 8017FD68 0017CD68  38 E7 00 04 */	addi r7, r7, 4
/* 8017FD6C 0017CD6C  41 82 00 24 */	beq lbl_8017FD90
/* 8017FD70 0017CD70  40 80 00 2C */	bge lbl_8017FD9C
/* 8017FD74 0017CD74  2C 05 00 01 */	cmpwi r5, 1
/* 8017FD78 0017CD78  40 80 00 08 */	bge lbl_8017FD80
/* 8017FD7C 0017CD7C  48 00 00 20 */	b lbl_8017FD9C
lbl_8017FD80:
/* 8017FD80 0017CD80  91 07 00 44 */	stw r8, 0x44(r7)
/* 8017FD84 0017CD84  39 20 00 01 */	li r9, 1
/* 8017FD88 0017CD88  39 08 04 00 */	addi r8, r8, 0x400
/* 8017FD8C 0017CD8C  48 00 00 14 */	b lbl_8017FDA0
lbl_8017FD90:
/* 8017FD90 0017CD90  91 07 00 44 */	stw r8, 0x44(r7)
/* 8017FD94 0017CD94  39 08 08 00 */	addi r8, r8, 0x800
/* 8017FD98 0017CD98  48 00 00 08 */	b lbl_8017FDA0
lbl_8017FD9C:
/* 8017FD9C 0017CD9C  90 07 00 44 */	stw r0, 0x44(r7)
lbl_8017FDA0:
/* 8017FDA0 0017CDA0  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 8017FDA4 0017CDA4  38 C6 00 02 */	addi r6, r6, 2
/* 8017FDA8 0017CDA8  39 4A 00 01 */	addi r10, r10, 1
/* 8017FDAC 0017CDAC  7C A5 36 30 */	sraw r5, r5, r6
/* 8017FDB0 0017CDB0  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 8017FDB4 0017CDB4  2C 05 00 02 */	cmpwi r5, 2
/* 8017FDB8 0017CDB8  38 E7 00 04 */	addi r7, r7, 4
/* 8017FDBC 0017CDBC  41 82 00 24 */	beq lbl_8017FDE0
/* 8017FDC0 0017CDC0  40 80 00 2C */	bge lbl_8017FDEC
/* 8017FDC4 0017CDC4  2C 05 00 01 */	cmpwi r5, 1
/* 8017FDC8 0017CDC8  40 80 00 08 */	bge lbl_8017FDD0
/* 8017FDCC 0017CDCC  48 00 00 20 */	b lbl_8017FDEC
lbl_8017FDD0:
/* 8017FDD0 0017CDD0  91 07 00 44 */	stw r8, 0x44(r7)
/* 8017FDD4 0017CDD4  39 20 00 01 */	li r9, 1
/* 8017FDD8 0017CDD8  39 08 04 00 */	addi r8, r8, 0x400
/* 8017FDDC 0017CDDC  48 00 00 14 */	b lbl_8017FDF0
lbl_8017FDE0:
/* 8017FDE0 0017CDE0  91 07 00 44 */	stw r8, 0x44(r7)
/* 8017FDE4 0017CDE4  39 08 08 00 */	addi r8, r8, 0x800
/* 8017FDE8 0017CDE8  48 00 00 08 */	b lbl_8017FDF0
lbl_8017FDEC:
/* 8017FDEC 0017CDEC  90 07 00 44 */	stw r0, 0x44(r7)
lbl_8017FDF0:
/* 8017FDF0 0017CDF0  38 C6 00 02 */	addi r6, r6, 2
/* 8017FDF4 0017CDF4  38 E7 00 04 */	addi r7, r7, 4
/* 8017FDF8 0017CDF8  39 4A 00 01 */	addi r10, r10, 1
/* 8017FDFC 0017CDFC  42 00 FE C4 */	bdnz lbl_8017FCC0
/* 8017FE00 0017CE00  2C 09 00 00 */	cmpwi r9, 0
/* 8017FE04 0017CE04  41 82 00 10 */	beq lbl_8017FE14
/* 8017FE08 0017CE08  91 04 00 64 */	stw r8, 0x64(r4)
/* 8017FE0C 0017CE0C  39 08 02 00 */	addi r8, r8, 0x200
/* 8017FE10 0017CE10  48 00 00 0C */	b lbl_8017FE1C
lbl_8017FE14:
/* 8017FE14 0017CE14  38 00 FF FF */	li r0, -1
/* 8017FE18 0017CE18  90 04 00 64 */	stw r0, 0x64(r4)
lbl_8017FE1C:
/* 8017FE1C 0017CE1C  91 04 00 68 */	stw r8, 0x68(r4)
/* 8017FE20 0017CE20  4E 80 00 20 */	blr 

.global CARDGetStatus
CARDGetStatus:
/* 8017FE24 0017CE24  7C 08 02 A6 */	mflr r0
/* 8017FE28 0017CE28  90 01 00 04 */	stw r0, 4(r1)
/* 8017FE2C 0017CE2C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8017FE30 0017CE30  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8017FE34 0017CE34  3B E5 00 00 */	addi r31, r5, 0
/* 8017FE38 0017CE38  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8017FE3C 0017CE3C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8017FE40 0017CE40  7C 9D 23 79 */	or. r29, r4, r4
/* 8017FE44 0017CE44  41 80 00 0C */	blt lbl_8017FE50
/* 8017FE48 0017CE48  2C 1D 00 7F */	cmpwi r29, 0x7f
/* 8017FE4C 0017CE4C  41 80 00 0C */	blt lbl_8017FE58
lbl_8017FE50:
/* 8017FE50 0017CE50  38 60 FF 80 */	li r3, -128
/* 8017FE54 0017CE54  48 00 00 C8 */	b lbl_8017FF1C
lbl_8017FE58:
/* 8017FE58 0017CE58  38 81 00 14 */	addi r4, r1, 0x14
/* 8017FE5C 0017CE5C  4B FF AA E1 */	bl __CARDGetControlBlock
/* 8017FE60 0017CE60  2C 03 00 00 */	cmpwi r3, 0
/* 8017FE64 0017CE64  40 80 00 08 */	bge lbl_8017FE6C
/* 8017FE68 0017CE68  48 00 00 B4 */	b lbl_8017FF1C
lbl_8017FE6C:
/* 8017FE6C 0017CE6C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8017FE70 0017CE70  4B FF C8 71 */	bl __CARDGetDirBlock
/* 8017FE74 0017CE74  57 A0 30 32 */	slwi r0, r29, 6
/* 8017FE78 0017CE78  7F A3 02 14 */	add r29, r3, r0
/* 8017FE7C 0017CE7C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8017FE80 0017CE80  7F A4 EB 78 */	mr r4, r29
/* 8017FE84 0017CE84  4B FF ED 89 */	bl __CARDIsReadable
/* 8017FE88 0017CE88  7C 7E 1B 79 */	or. r30, r3, r3
/* 8017FE8C 0017CE8C  41 80 00 84 */	blt lbl_8017FF10
/* 8017FE90 0017CE90  38 9D 00 00 */	addi r4, r29, 0
/* 8017FE94 0017CE94  38 7F 00 28 */	addi r3, r31, 0x28
/* 8017FE98 0017CE98  38 A0 00 04 */	li r5, 4
/* 8017FE9C 0017CE9C  4B E8 57 31 */	bl memcpy
/* 8017FEA0 0017CEA0  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8017FEA4 0017CEA4  38 9D 00 04 */	addi r4, r29, 4
/* 8017FEA8 0017CEA8  38 A0 00 02 */	li r5, 2
/* 8017FEAC 0017CEAC  4B E8 57 21 */	bl memcpy
/* 8017FEB0 0017CEB0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8017FEB4 0017CEB4  7F E3 FB 78 */	mr r3, r31
/* 8017FEB8 0017CEB8  A0 DD 00 38 */	lhz r6, 0x38(r29)
/* 8017FEBC 0017CEBC  38 9D 00 08 */	addi r4, r29, 8
/* 8017FEC0 0017CEC0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8017FEC4 0017CEC4  38 A0 00 20 */	li r5, 0x20
/* 8017FEC8 0017CEC8  7C 06 01 D6 */	mullw r0, r6, r0
/* 8017FECC 0017CECC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8017FED0 0017CED0  4B E8 56 FD */	bl memcpy
/* 8017FED4 0017CED4  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 8017FED8 0017CED8  38 7D 00 00 */	addi r3, r29, 0
/* 8017FEDC 0017CEDC  38 9F 00 00 */	addi r4, r31, 0
/* 8017FEE0 0017CEE0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8017FEE4 0017CEE4  88 1D 00 07 */	lbz r0, 7(r29)
/* 8017FEE8 0017CEE8  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 8017FEEC 0017CEEC  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8017FEF0 0017CEF0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8017FEF4 0017CEF4  A0 1D 00 30 */	lhz r0, 0x30(r29)
/* 8017FEF8 0017CEF8  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 8017FEFC 0017CEFC  A0 1D 00 32 */	lhz r0, 0x32(r29)
/* 8017FF00 0017CF00  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8017FF04 0017CF04  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 8017FF08 0017CF08  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8017FF0C 0017CF0C  4B FF FD 21 */	bl UpdateIconOffsets
lbl_8017FF10:
/* 8017FF10 0017CF10  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8017FF14 0017CF14  7F C4 F3 78 */	mr r4, r30
/* 8017FF18 0017CF18  4B FF AA DD */	bl __CARDPutControlBlock
lbl_8017FF1C:
/* 8017FF1C 0017CF1C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8017FF20 0017CF20  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8017FF24 0017CF24  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8017FF28 0017CF28  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8017FF2C 0017CF2C  38 21 00 28 */	addi r1, r1, 0x28
/* 8017FF30 0017CF30  7C 08 03 A6 */	mtlr r0
/* 8017FF34 0017CF34  4E 80 00 20 */	blr 

.global CARDSetStatusAsync
CARDSetStatusAsync:
/* 8017FF38 0017CF38  7C 08 02 A6 */	mflr r0
/* 8017FF3C 0017CF3C  90 01 00 04 */	stw r0, 4(r1)
/* 8017FF40 0017CF40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8017FF44 0017CF44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8017FF48 0017CF48  7C 9F 23 79 */	or. r31, r4, r4
/* 8017FF4C 0017CF4C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8017FF50 0017CF50  3B C6 00 00 */	addi r30, r6, 0
/* 8017FF54 0017CF54  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8017FF58 0017CF58  3B A5 00 00 */	addi r29, r5, 0
/* 8017FF5C 0017CF5C  93 81 00 20 */	stw r28, 0x20(r1)
/* 8017FF60 0017CF60  3B 83 00 00 */	addi r28, r3, 0
/* 8017FF64 0017CF64  41 80 00 40 */	blt lbl_8017FFA4
/* 8017FF68 0017CF68  2C 1F 00 7F */	cmpwi r31, 0x7f
/* 8017FF6C 0017CF6C  40 80 00 38 */	bge lbl_8017FFA4
/* 8017FF70 0017CF70  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8017FF74 0017CF74  3C 03 00 01 */	addis r0, r3, 1
/* 8017FF78 0017CF78  28 00 FF FF */	cmplwi r0, 0xffff
/* 8017FF7C 0017CF7C  41 82 00 0C */	beq lbl_8017FF88
/* 8017FF80 0017CF80  28 03 02 00 */	cmplwi r3, 0x200
/* 8017FF84 0017CF84  40 80 00 20 */	bge lbl_8017FFA4
lbl_8017FF88:
/* 8017FF88 0017CF88  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8017FF8C 0017CF8C  3C 03 00 01 */	addis r0, r3, 1
/* 8017FF90 0017CF90  28 00 FF FF */	cmplwi r0, 0xffff
/* 8017FF94 0017CF94  41 82 00 18 */	beq lbl_8017FFAC
/* 8017FF98 0017CF98  54 60 04 FE */	clrlwi r0, r3, 0x13
/* 8017FF9C 0017CF9C  28 00 1F C0 */	cmplwi r0, 0x1fc0
/* 8017FFA0 0017CFA0  40 81 00 0C */	ble lbl_8017FFAC
lbl_8017FFA4:
/* 8017FFA4 0017CFA4  38 60 FF 80 */	li r3, -128
/* 8017FFA8 0017CFA8  48 00 00 E4 */	b lbl_8018008C
lbl_8017FFAC:
/* 8017FFAC 0017CFAC  38 7C 00 00 */	addi r3, r28, 0
/* 8017FFB0 0017CFB0  38 81 00 18 */	addi r4, r1, 0x18
/* 8017FFB4 0017CFB4  4B FF A9 89 */	bl __CARDGetControlBlock
/* 8017FFB8 0017CFB8  2C 03 00 00 */	cmpwi r3, 0
/* 8017FFBC 0017CFBC  40 80 00 08 */	bge lbl_8017FFC4
/* 8017FFC0 0017CFC0  48 00 00 CC */	b lbl_8018008C
lbl_8017FFC4:
/* 8017FFC4 0017CFC4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017FFC8 0017CFC8  4B FF C7 19 */	bl __CARDGetDirBlock
/* 8017FFCC 0017CFCC  57 E0 30 32 */	slwi r0, r31, 6
/* 8017FFD0 0017CFD0  7F E3 02 14 */	add r31, r3, r0
/* 8017FFD4 0017CFD4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017FFD8 0017CFD8  7F E4 FB 78 */	mr r4, r31
/* 8017FFDC 0017CFDC  4B FF EA FD */	bl __CARDIsWritable
/* 8017FFE0 0017CFE0  7C 64 1B 79 */	or. r4, r3, r3
/* 8017FFE4 0017CFE4  40 80 00 10 */	bge lbl_8017FFF4
/* 8017FFE8 0017CFE8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017FFEC 0017CFEC  4B FF AA 09 */	bl __CARDPutControlBlock
/* 8017FFF0 0017CFF0  48 00 00 9C */	b lbl_8018008C
lbl_8017FFF4:
/* 8017FFF4 0017CFF4  88 1D 00 2E */	lbz r0, 0x2e(r29)
/* 8017FFF8 0017CFF8  38 7F 00 00 */	addi r3, r31, 0
/* 8017FFFC 0017CFFC  38 9D 00 00 */	addi r4, r29, 0
/* 80180000 0017D000  98 1F 00 07 */	stb r0, 7(r31)
/* 80180004 0017D004  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80180008 0017D008  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8018000C 0017D00C  A0 1D 00 34 */	lhz r0, 0x34(r29)
/* 80180010 0017D010  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 80180014 0017D014  A0 1D 00 36 */	lhz r0, 0x36(r29)
/* 80180018 0017D018  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 8018001C 0017D01C  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 80180020 0017D020  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80180024 0017D024  4B FF FC 09 */	bl UpdateIconOffsets
/* 80180028 0017D028  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8018002C 0017D02C  3C 03 00 01 */	addis r0, r3, 1
/* 80180030 0017D030  28 00 FF FF */	cmplwi r0, 0xffff
/* 80180034 0017D034  40 82 00 14 */	bne lbl_80180048
/* 80180038 0017D038  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 8018003C 0017D03C  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80180040 0017D040  60 00 00 01 */	ori r0, r0, 1
/* 80180044 0017D044  B0 1F 00 32 */	sth r0, 0x32(r31)
lbl_80180048:
/* 80180048 0017D048  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8018004C 0017D04C  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 80180050 0017D050  54 1D F0 BE */	srwi r29, r0, 2
/* 80180054 0017D054  4B FE D0 0D */	bl OSGetTime
/* 80180058 0017D058  38 DD 00 00 */	addi r6, r29, 0
/* 8018005C 0017D05C  38 A0 00 00 */	li r5, 0
/* 80180060 0017D060  48 00 E3 6D */	bl __div2i
/* 80180064 0017D064  90 9F 00 28 */	stw r4, 0x28(r31)
/* 80180068 0017D068  38 7C 00 00 */	addi r3, r28, 0
/* 8018006C 0017D06C  38 9E 00 00 */	addi r4, r30, 0
/* 80180070 0017D070  4B FF C8 11 */	bl __CARDUpdateDir
/* 80180074 0017D074  7C 7C 1B 79 */	or. r28, r3, r3
/* 80180078 0017D078  40 80 00 10 */	bge lbl_80180088
/* 8018007C 0017D07C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80180080 0017D080  7F 84 E3 78 */	mr r4, r28
/* 80180084 0017D084  4B FF A9 71 */	bl __CARDPutControlBlock
lbl_80180088:
/* 80180088 0017D088  7F 83 E3 78 */	mr r3, r28
lbl_8018008C:
/* 8018008C 0017D08C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80180090 0017D090  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80180094 0017D094  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80180098 0017D098  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8018009C 0017D09C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801800A0 0017D0A0  38 21 00 30 */	addi r1, r1, 0x30
/* 801800A4 0017D0A4  7C 08 03 A6 */	mtlr r0
/* 801800A8 0017D0A8  4E 80 00 20 */	blr 
