.include "macros.inc"

.section .text  # 0x801F0904 - 0x801F10C4

.global adsrConvertTimeCents
adsrConvertTimeCents:
/* 801F0904 001ED904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F0908 001ED908  7C 08 02 A6 */	mflr r0
/* 801F090C 001ED90C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801F0910 001ED910  C8 42 C7 90 */	lfd f2, lbl_8027C430-_SDA2_BASE_(r2)
/* 801F0914 001ED914  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F0918 001ED918  3C 00 43 30 */	lis r0, 0x4330
/* 801F091C 001ED91C  C0 62 C7 88 */	lfs f3, lbl_8027C428-_SDA2_BASE_(r2)
/* 801F0920 001ED920  90 61 00 0C */	stw r3, 0xc(r1)
/* 801F0924 001ED924  C8 22 C7 80 */	lfd f1, lbl_8027C420-_SDA2_BASE_(r2)
/* 801F0928 001ED928  90 01 00 08 */	stw r0, 8(r1)
/* 801F092C 001ED92C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F0930 001ED930  EC 00 10 28 */	fsubs f0, f0, f2
/* 801F0934 001ED934  EC 43 00 32 */	fmuls f2, f3, f0
/* 801F0938 001ED938  4B FA 5D FD */	bl func_80196734
/* 801F093C 001ED93C  FC 20 08 18 */	frsp f1, f1
/* 801F0940 001ED940  C0 02 C7 8C */	lfs f0, lbl_8027C42C-_SDA2_BASE_(r2)
/* 801F0944 001ED944  EC 20 00 72 */	fmuls f1, f0, f1
/* 801F0948 001ED948  4B F9 D8 0D */	bl func_8018E154
/* 801F094C 001ED94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F0950 001ED950  7C 08 03 A6 */	mtlr r0
/* 801F0954 001ED954  38 21 00 10 */	addi r1, r1, 0x10
/* 801F0958 001ED958  4E 80 00 20 */	blr 

.global salChangeADSRState
salChangeADSRState:
/* 801F095C 001ED95C  88 83 00 00 */	lbz r4, 0(r3)
/* 801F0960 001ED960  38 00 00 00 */	li r0, 0
/* 801F0964 001ED964  2C 04 00 01 */	cmpwi r4, 1
/* 801F0968 001ED968  41 82 00 F0 */	beq lbl_801F0A58
/* 801F096C 001ED96C  40 80 02 54 */	bge lbl_801F0BC0
/* 801F0970 001ED970  2C 04 00 00 */	cmpwi r4, 0
/* 801F0974 001ED974  40 80 00 08 */	bge lbl_801F097C
/* 801F0978 001ED978  48 00 02 48 */	b lbl_801F0BC0
lbl_801F097C:
/* 801F097C 001ED97C  88 83 00 01 */	lbz r4, 1(r3)
/* 801F0980 001ED980  2C 04 00 02 */	cmpwi r4, 2
/* 801F0984 001ED984  41 82 00 98 */	beq lbl_801F0A1C
/* 801F0988 001ED988  40 80 00 14 */	bge lbl_801F099C
/* 801F098C 001ED98C  2C 04 00 00 */	cmpwi r4, 0
/* 801F0990 001ED990  41 82 00 18 */	beq lbl_801F09A8
/* 801F0994 001ED994  40 80 00 48 */	bge lbl_801F09DC
/* 801F0998 001ED998  48 00 02 28 */	b lbl_801F0BC0
lbl_801F099C:
/* 801F099C 001ED99C  2C 04 00 04 */	cmpwi r4, 4
/* 801F09A0 001ED9A0  41 82 00 A8 */	beq lbl_801F0A48
/* 801F09A4 001ED9A4  48 00 02 1C */	b lbl_801F0BC0
lbl_801F09A8:
/* 801F09A8 001ED9A8  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801F09AC 001ED9AC  28 04 00 00 */	cmplwi r4, 0
/* 801F09B0 001ED9B0  90 83 00 04 */	stw r4, 4(r3)
/* 801F09B4 001ED9B4  41 82 00 28 */	beq lbl_801F09DC
/* 801F09B8 001ED9B8  38 A0 00 01 */	li r5, 1
/* 801F09BC 001ED9BC  38 80 00 00 */	li r4, 0
/* 801F09C0 001ED9C0  98 A3 00 01 */	stb r5, 1(r3)
/* 801F09C4 001ED9C4  3C A0 7F FF */	lis r5, 0x7fff
/* 801F09C8 001ED9C8  90 83 00 08 */	stw r4, 8(r3)
/* 801F09CC 001ED9CC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801F09D0 001ED9D0  7C 85 23 96 */	divwu r4, r5, r4
/* 801F09D4 001ED9D4  90 83 00 10 */	stw r4, 0x10(r3)
/* 801F09D8 001ED9D8  48 00 01 E8 */	b lbl_801F0BC0
lbl_801F09DC:
/* 801F09DC 001ED9DC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 801F09E0 001ED9E0  28 04 00 00 */	cmplwi r4, 0
/* 801F09E4 001ED9E4  90 83 00 04 */	stw r4, 4(r3)
/* 801F09E8 001ED9E8  41 82 00 34 */	beq lbl_801F0A1C
/* 801F09EC 001ED9EC  38 80 00 02 */	li r4, 2
/* 801F09F0 001ED9F0  3C C0 7F FF */	lis r6, 0x7fff
/* 801F09F4 001ED9F4  98 83 00 01 */	stb r4, 1(r3)
/* 801F09F8 001ED9F8  90 C3 00 08 */	stw r6, 8(r3)
/* 801F09FC 001ED9FC  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 801F0A00 001EDA00  80 83 00 18 */	lwz r4, 0x18(r3)
/* 801F0A04 001EDA04  54 A5 80 1E */	slwi r5, r5, 0x10
/* 801F0A08 001EDA08  7C A5 30 50 */	subf r5, r5, r6
/* 801F0A0C 001EDA0C  7C 85 23 96 */	divwu r4, r5, r4
/* 801F0A10 001EDA10  7C 84 00 D0 */	neg r4, r4
/* 801F0A14 001EDA14  90 83 00 10 */	stw r4, 0x10(r3)
/* 801F0A18 001EDA18  48 00 01 A8 */	b lbl_801F0BC0
lbl_801F0A1C:
/* 801F0A1C 001EDA1C  A0 83 00 1C */	lhz r4, 0x1c(r3)
/* 801F0A20 001EDA20  28 04 00 00 */	cmplwi r4, 0
/* 801F0A24 001EDA24  41 82 00 24 */	beq lbl_801F0A48
/* 801F0A28 001EDA28  38 A0 00 03 */	li r5, 3
/* 801F0A2C 001EDA2C  38 80 00 00 */	li r4, 0
/* 801F0A30 001EDA30  98 A3 00 01 */	stb r5, 1(r3)
/* 801F0A34 001EDA34  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 801F0A38 001EDA38  54 A5 80 1E */	slwi r5, r5, 0x10
/* 801F0A3C 001EDA3C  90 A3 00 08 */	stw r5, 8(r3)
/* 801F0A40 001EDA40  90 83 00 10 */	stw r4, 0x10(r3)
/* 801F0A44 001EDA44  48 00 01 7C */	b lbl_801F0BC0
lbl_801F0A48:
/* 801F0A48 001EDA48  38 80 00 00 */	li r4, 0
/* 801F0A4C 001EDA4C  38 00 00 01 */	li r0, 1
/* 801F0A50 001EDA50  90 83 00 08 */	stw r4, 8(r3)
/* 801F0A54 001EDA54  48 00 01 6C */	b lbl_801F0BC0
lbl_801F0A58:
/* 801F0A58 001EDA58  88 83 00 01 */	lbz r4, 1(r3)
/* 801F0A5C 001EDA5C  2C 04 00 02 */	cmpwi r4, 2
/* 801F0A60 001EDA60  41 82 00 F4 */	beq lbl_801F0B54
/* 801F0A64 001EDA64  40 80 00 14 */	bge lbl_801F0A78
/* 801F0A68 001EDA68  2C 04 00 00 */	cmpwi r4, 0
/* 801F0A6C 001EDA6C  41 82 00 18 */	beq lbl_801F0A84
/* 801F0A70 001EDA70  40 80 00 74 */	bge lbl_801F0AE4
/* 801F0A74 001EDA74  48 00 01 4C */	b lbl_801F0BC0
lbl_801F0A78:
/* 801F0A78 001EDA78  2C 04 00 04 */	cmpwi r4, 4
/* 801F0A7C 001EDA7C  41 82 01 38 */	beq lbl_801F0BB4
/* 801F0A80 001EDA80  48 00 01 40 */	b lbl_801F0BC0
lbl_801F0A84:
/* 801F0A84 001EDA84  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801F0A88 001EDA88  28 04 00 00 */	cmplwi r4, 0
/* 801F0A8C 001EDA8C  90 83 00 04 */	stw r4, 4(r3)
/* 801F0A90 001EDA90  41 82 00 54 */	beq lbl_801F0AE4
/* 801F0A94 001EDA94  38 80 00 01 */	li r4, 1
/* 801F0A98 001EDA98  98 83 00 01 */	stb r4, 1(r3)
/* 801F0A9C 001EDA9C  88 83 00 26 */	lbz r4, 0x26(r3)
/* 801F0AA0 001EDAA0  28 04 00 00 */	cmplwi r4, 0
/* 801F0AA4 001EDAA4  40 82 00 20 */	bne lbl_801F0AC4
/* 801F0AA8 001EDAA8  38 80 00 00 */	li r4, 0
/* 801F0AAC 001EDAAC  3C A0 7F FF */	lis r5, 0x7fff
/* 801F0AB0 001EDAB0  90 83 00 08 */	stw r4, 8(r3)
/* 801F0AB4 001EDAB4  80 83 00 04 */	lwz r4, 4(r3)
/* 801F0AB8 001EDAB8  7C 85 23 96 */	divwu r4, r5, r4
/* 801F0ABC 001EDABC  90 83 00 10 */	stw r4, 0x10(r3)
/* 801F0AC0 001EDAC0  48 00 01 00 */	b lbl_801F0BC0
lbl_801F0AC4:
/* 801F0AC4 001EDAC4  38 80 00 00 */	li r4, 0
/* 801F0AC8 001EDAC8  3C A0 00 C1 */	lis r5, 0xc1
/* 801F0ACC 001EDACC  90 83 00 0C */	stw r4, 0xc(r3)
/* 801F0AD0 001EDAD0  90 83 00 08 */	stw r4, 8(r3)
/* 801F0AD4 001EDAD4  80 83 00 04 */	lwz r4, 4(r3)
/* 801F0AD8 001EDAD8  7C 85 23 96 */	divwu r4, r5, r4
/* 801F0ADC 001EDADC  90 83 00 10 */	stw r4, 0x10(r3)
/* 801F0AE0 001EDAE0  48 00 00 E0 */	b lbl_801F0BC0
lbl_801F0AE4:
/* 801F0AE4 001EDAE4  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 801F0AE8 001EDAE8  3C 80 15 39 */	lis r4, 0x15390949@ha
/* 801F0AEC 001EDAEC  38 C4 09 49 */	addi r6, r4, 0x15390949@l
/* 801F0AF0 001EDAF0  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 801F0AF4 001EDAF4  20 85 00 C1 */	subfic r4, r5, 0xc1
/* 801F0AF8 001EDAF8  54 84 80 1E */	slwi r4, r4, 0x10
/* 801F0AFC 001EDAFC  7C 86 20 16 */	mulhwu r4, r6, r4
/* 801F0B00 001EDB00  54 84 E1 3E */	srwi r4, r4, 4
/* 801F0B04 001EDB04  7C 87 21 D6 */	mullw r4, r7, r4
/* 801F0B08 001EDB08  54 84 84 3E */	srwi r4, r4, 0x10
/* 801F0B0C 001EDB0C  90 83 00 04 */	stw r4, 4(r3)
/* 801F0B10 001EDB10  80 83 00 04 */	lwz r4, 4(r3)
/* 801F0B14 001EDB14  28 04 00 00 */	cmplwi r4, 0
/* 801F0B18 001EDB18  41 82 00 3C */	beq lbl_801F0B54
/* 801F0B1C 001EDB1C  38 80 00 02 */	li r4, 2
/* 801F0B20 001EDB20  3C A0 7F FF */	lis r5, 0x7fff
/* 801F0B24 001EDB24  98 83 00 01 */	stb r4, 1(r3)
/* 801F0B28 001EDB28  3C 80 00 C1 */	lis r4, 0xc1
/* 801F0B2C 001EDB2C  90 A3 00 08 */	stw r5, 8(r3)
/* 801F0B30 001EDB30  90 83 00 0C */	stw r4, 0xc(r3)
/* 801F0B34 001EDB34  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 801F0B38 001EDB38  80 83 00 04 */	lwz r4, 4(r3)
/* 801F0B3C 001EDB3C  20 A5 00 C1 */	subfic r5, r5, 0xc1
/* 801F0B40 001EDB40  54 A5 80 1E */	slwi r5, r5, 0x10
/* 801F0B44 001EDB44  7C 85 23 96 */	divwu r4, r5, r4
/* 801F0B48 001EDB48  7C 84 00 D0 */	neg r4, r4
/* 801F0B4C 001EDB4C  90 83 00 10 */	stw r4, 0x10(r3)
/* 801F0B50 001EDB50  48 00 00 70 */	b lbl_801F0BC0
lbl_801F0B54:
/* 801F0B54 001EDB54  A0 83 00 1C */	lhz r4, 0x1c(r3)
/* 801F0B58 001EDB58  28 04 00 00 */	cmplwi r4, 0
/* 801F0B5C 001EDB5C  41 82 00 58 */	beq lbl_801F0BB4
/* 801F0B60 001EDB60  38 A0 00 03 */	li r5, 3
/* 801F0B64 001EDB64  3C 80 80 22 */	lis r4, lbl_8021DE50@ha
/* 801F0B68 001EDB68  98 A3 00 01 */	stb r5, 1(r3)
/* 801F0B6C 001EDB6C  38 A4 DE 50 */	addi r5, r4, lbl_8021DE50@l
/* 801F0B70 001EDB70  38 80 00 00 */	li r4, 0
/* 801F0B74 001EDB74  A0 C3 00 1C */	lhz r6, 0x1c(r3)
/* 801F0B78 001EDB78  54 C6 80 1E */	slwi r6, r6, 0x10
/* 801F0B7C 001EDB7C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 801F0B80 001EDB80  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 801F0B84 001EDB84  3C C6 00 01 */	addis r6, r6, 1
/* 801F0B88 001EDB88  38 C6 80 00 */	addi r6, r6, -32768
/* 801F0B8C 001EDB8C  7C C6 86 70 */	srawi r6, r6, 0x10
/* 801F0B90 001EDB90  20 E6 00 C1 */	subfic r7, r6, 0xc1
/* 801F0B94 001EDB94  7C E6 FE 70 */	srawi r6, r7, 0x1f
/* 801F0B98 001EDB98  7C E6 30 78 */	andc r6, r7, r6
/* 801F0B9C 001EDB9C  54 C6 08 3C */	slwi r6, r6, 1
/* 801F0BA0 001EDBA0  7C A5 32 2E */	lhzx r5, r5, r6
/* 801F0BA4 001EDBA4  54 A5 80 1E */	slwi r5, r5, 0x10
/* 801F0BA8 001EDBA8  90 A3 00 08 */	stw r5, 8(r3)
/* 801F0BAC 001EDBAC  90 83 00 10 */	stw r4, 0x10(r3)
/* 801F0BB0 001EDBB0  48 00 00 10 */	b lbl_801F0BC0
lbl_801F0BB4:
/* 801F0BB4 001EDBB4  38 80 00 00 */	li r4, 0
/* 801F0BB8 001EDBB8  38 00 00 01 */	li r0, 1
/* 801F0BBC 001EDBBC  90 83 00 08 */	stw r4, 8(r3)
lbl_801F0BC0:
/* 801F0BC0 001EDBC0  7C 03 03 78 */	mr r3, r0
/* 801F0BC4 001EDBC4  4E 80 00 20 */	blr 

.global adsrSetup
adsrSetup:
/* 801F0BC8 001EDBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F0BCC 001EDBCC  7C 08 02 A6 */	mflr r0
/* 801F0BD0 001EDBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F0BD4 001EDBD4  38 00 00 00 */	li r0, 0
/* 801F0BD8 001EDBD8  98 03 00 01 */	stb r0, 1(r3)
/* 801F0BDC 001EDBDC  4B FF FD 81 */	bl salChangeADSRState
/* 801F0BE0 001EDBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F0BE4 001EDBE4  7C 08 03 A6 */	mtlr r0
/* 801F0BE8 001EDBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 801F0BEC 001EDBEC  4E 80 00 20 */	blr 

.global adsrStartRelease
adsrStartRelease:
/* 801F0BF0 001EDBF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F0BF4 001EDBF4  7C 08 02 A6 */	mflr r0
/* 801F0BF8 001EDBF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F0BFC 001EDBFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F0C00 001EDC00  7C 7F 1B 78 */	mr r31, r3
/* 801F0C04 001EDC04  88 03 00 00 */	lbz r0, 0(r3)
/* 801F0C08 001EDC08  2C 00 00 01 */	cmpwi r0, 1
/* 801F0C0C 001EDC0C  41 82 00 54 */	beq lbl_801F0C60
/* 801F0C10 001EDC10  40 80 01 18 */	bge lbl_801F0D28
/* 801F0C14 001EDC14  2C 00 00 00 */	cmpwi r0, 0
/* 801F0C18 001EDC18  40 80 00 08 */	bge lbl_801F0C20
/* 801F0C1C 001EDC1C  48 00 01 0C */	b lbl_801F0D28
lbl_801F0C20:
/* 801F0C20 001EDC20  38 00 00 04 */	li r0, 4
/* 801F0C24 001EDC24  28 04 00 00 */	cmplwi r4, 0
/* 801F0C28 001EDC28  98 1F 00 01 */	stb r0, 1(r31)
/* 801F0C2C 001EDC2C  90 9F 00 04 */	stw r4, 4(r31)
/* 801F0C30 001EDC30  40 82 00 1C */	bne lbl_801F0C4C
/* 801F0C34 001EDC34  38 60 00 01 */	li r3, 1
/* 801F0C38 001EDC38  38 00 00 00 */	li r0, 0
/* 801F0C3C 001EDC3C  90 7F 00 04 */	stw r3, 4(r31)
/* 801F0C40 001EDC40  38 60 00 01 */	li r3, 1
/* 801F0C44 001EDC44  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801F0C48 001EDC48  48 00 00 E4 */	b lbl_801F0D2C
lbl_801F0C4C:
/* 801F0C4C 001EDC4C  80 1F 00 08 */	lwz r0, 8(r31)
/* 801F0C50 001EDC50  7C 00 23 96 */	divwu r0, r0, r4
/* 801F0C54 001EDC54  7C 00 00 D0 */	neg r0, r0
/* 801F0C58 001EDC58  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801F0C5C 001EDC5C  48 00 00 CC */	b lbl_801F0D28
lbl_801F0C60:
/* 801F0C60 001EDC60  88 1F 00 26 */	lbz r0, 0x26(r31)
/* 801F0C64 001EDC64  28 00 00 00 */	cmplwi r0, 0
/* 801F0C68 001EDC68  40 82 00 30 */	bne lbl_801F0C98
/* 801F0C6C 001EDC6C  88 1F 00 01 */	lbz r0, 1(r31)
/* 801F0C70 001EDC70  28 00 00 01 */	cmplwi r0, 1
/* 801F0C74 001EDC74  40 82 00 24 */	bne lbl_801F0C98
/* 801F0C78 001EDC78  80 1F 00 08 */	lwz r0, 8(r31)
/* 801F0C7C 001EDC7C  3C 60 80 22 */	lis r3, lbl_8021DFD4@ha
/* 801F0C80 001EDC80  38 63 DF D4 */	addi r3, r3, lbl_8021DFD4@l
/* 801F0C84 001EDC84  7C 00 AE 70 */	srawi r0, r0, 0x15
/* 801F0C88 001EDC88  7C 03 00 AE */	lbzx r0, r3, r0
/* 801F0C8C 001EDC8C  20 00 00 C1 */	subfic r0, r0, 0xc1
/* 801F0C90 001EDC90  54 00 80 1E */	slwi r0, r0, 0x10
/* 801F0C94 001EDC94  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_801F0C98:
/* 801F0C98 001EDC98  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F0C9C 001EDC9C  3C 00 43 30 */	lis r0, 0x4330
/* 801F0CA0 001EDCA0  90 01 00 08 */	stw r0, 8(r1)
/* 801F0CA4 001EDCA4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801F0CA8 001EDCA8  C8 22 C7 90 */	lfd f1, lbl_8027C430-_SDA2_BASE_(r2)
/* 801F0CAC 001EDCAC  90 61 00 0C */	stw r3, 0xc(r1)
/* 801F0CB0 001EDCB0  C0 62 C7 98 */	lfs f3, lbl_8027C438-_SDA2_BASE_(r2)
/* 801F0CB4 001EDCB4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F0CB8 001EDCB8  90 81 00 14 */	stw r4, 0x14(r1)
/* 801F0CBC 001EDCBC  EC 40 08 28 */	fsubs f2, f0, f1
/* 801F0CC0 001EDCC0  C8 22 C7 A0 */	lfd f1, lbl_8027C440-_SDA2_BASE_(r2)
/* 801F0CC4 001EDCC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F0CC8 001EDCC8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801F0CCC 001EDCCC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801F0CD0 001EDCD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F0CD4 001EDCD4  EC 22 00 32 */	fmuls f1, f2, f0
/* 801F0CD8 001EDCD8  4B F9 D4 7D */	bl func_8018E154
/* 801F0CDC 001EDCDC  54 63 A3 3E */	srwi r3, r3, 0xc
/* 801F0CE0 001EDCE0  38 00 00 04 */	li r0, 4
/* 801F0CE4 001EDCE4  90 7F 00 04 */	stw r3, 4(r31)
/* 801F0CE8 001EDCE8  98 1F 00 01 */	stb r0, 1(r31)
/* 801F0CEC 001EDCEC  80 7F 00 04 */	lwz r3, 4(r31)
/* 801F0CF0 001EDCF0  28 03 00 00 */	cmplwi r3, 0
/* 801F0CF4 001EDCF4  40 82 00 24 */	bne lbl_801F0D18
/* 801F0CF8 001EDCF8  38 60 00 01 */	li r3, 1
/* 801F0CFC 001EDCFC  38 00 00 00 */	li r0, 0
/* 801F0D00 001EDD00  90 7F 00 04 */	stw r3, 4(r31)
/* 801F0D04 001EDD04  38 60 00 01 */	li r3, 1
/* 801F0D08 001EDD08  90 1F 00 08 */	stw r0, 8(r31)
/* 801F0D0C 001EDD0C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801F0D10 001EDD10  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801F0D14 001EDD14  48 00 00 18 */	b lbl_801F0D2C
lbl_801F0D18:
/* 801F0D18 001EDD18  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801F0D1C 001EDD1C  7C 00 1B 96 */	divwu r0, r0, r3
/* 801F0D20 001EDD20  7C 00 00 D0 */	neg r0, r0
/* 801F0D24 001EDD24  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_801F0D28:
/* 801F0D28 001EDD28  38 60 00 00 */	li r3, 0
lbl_801F0D2C:
/* 801F0D2C 001EDD2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F0D30 001EDD30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F0D34 001EDD34  7C 08 03 A6 */	mtlr r0
/* 801F0D38 001EDD38  38 21 00 20 */	addi r1, r1, 0x20
/* 801F0D3C 001EDD3C  4E 80 00 20 */	blr 

.global adsrRelease
adsrRelease:
/* 801F0D40 001EDD40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F0D44 001EDD44  7C 08 02 A6 */	mflr r0
/* 801F0D48 001EDD48  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F0D4C 001EDD4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F0D50 001EDD50  7C 7F 1B 78 */	mr r31, r3
/* 801F0D54 001EDD54  88 03 00 00 */	lbz r0, 0(r3)
/* 801F0D58 001EDD58  2C 00 00 02 */	cmpwi r0, 2
/* 801F0D5C 001EDD5C  40 80 01 34 */	bge lbl_801F0E90
/* 801F0D60 001EDD60  2C 00 00 00 */	cmpwi r0, 0
/* 801F0D64 001EDD64  40 80 00 08 */	bge lbl_801F0D6C
/* 801F0D68 001EDD68  48 00 01 28 */	b lbl_801F0E90
lbl_801F0D6C:
/* 801F0D6C 001EDD6C  2C 00 00 01 */	cmpwi r0, 1
/* 801F0D70 001EDD70  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801F0D74 001EDD74  41 82 00 50 */	beq lbl_801F0DC4
/* 801F0D78 001EDD78  40 80 01 10 */	bge lbl_801F0E88
/* 801F0D7C 001EDD7C  2C 00 00 00 */	cmpwi r0, 0
/* 801F0D80 001EDD80  40 80 00 08 */	bge lbl_801F0D88
/* 801F0D84 001EDD84  48 00 01 04 */	b lbl_801F0E88
lbl_801F0D88:
/* 801F0D88 001EDD88  38 00 00 04 */	li r0, 4
/* 801F0D8C 001EDD8C  28 04 00 00 */	cmplwi r4, 0
/* 801F0D90 001EDD90  98 1F 00 01 */	stb r0, 1(r31)
/* 801F0D94 001EDD94  90 9F 00 04 */	stw r4, 4(r31)
/* 801F0D98 001EDD98  40 82 00 18 */	bne lbl_801F0DB0
/* 801F0D9C 001EDD9C  38 60 00 01 */	li r3, 1
/* 801F0DA0 001EDDA0  38 00 00 00 */	li r0, 0
/* 801F0DA4 001EDDA4  90 7F 00 04 */	stw r3, 4(r31)
/* 801F0DA8 001EDDA8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801F0DAC 001EDDAC  48 00 00 E8 */	b lbl_801F0E94
lbl_801F0DB0:
/* 801F0DB0 001EDDB0  80 1F 00 08 */	lwz r0, 8(r31)
/* 801F0DB4 001EDDB4  7C 00 23 96 */	divwu r0, r0, r4
/* 801F0DB8 001EDDB8  7C 00 00 D0 */	neg r0, r0
/* 801F0DBC 001EDDBC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801F0DC0 001EDDC0  48 00 00 C8 */	b lbl_801F0E88
lbl_801F0DC4:
/* 801F0DC4 001EDDC4  88 1F 00 26 */	lbz r0, 0x26(r31)
/* 801F0DC8 001EDDC8  28 00 00 00 */	cmplwi r0, 0
/* 801F0DCC 001EDDCC  40 82 00 30 */	bne lbl_801F0DFC
/* 801F0DD0 001EDDD0  88 1F 00 01 */	lbz r0, 1(r31)
/* 801F0DD4 001EDDD4  28 00 00 01 */	cmplwi r0, 1
/* 801F0DD8 001EDDD8  40 82 00 24 */	bne lbl_801F0DFC
/* 801F0DDC 001EDDDC  80 1F 00 08 */	lwz r0, 8(r31)
/* 801F0DE0 001EDDE0  3C 60 80 22 */	lis r3, lbl_8021DFD4@ha
/* 801F0DE4 001EDDE4  38 63 DF D4 */	addi r3, r3, lbl_8021DFD4@l
/* 801F0DE8 001EDDE8  7C 00 AE 70 */	srawi r0, r0, 0x15
/* 801F0DEC 001EDDEC  7C 03 00 AE */	lbzx r0, r3, r0
/* 801F0DF0 001EDDF0  20 00 00 C1 */	subfic r0, r0, 0xc1
/* 801F0DF4 001EDDF4  54 00 80 1E */	slwi r0, r0, 0x10
/* 801F0DF8 001EDDF8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_801F0DFC:
/* 801F0DFC 001EDDFC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F0E00 001EDE00  3C 00 43 30 */	lis r0, 0x4330
/* 801F0E04 001EDE04  90 01 00 08 */	stw r0, 8(r1)
/* 801F0E08 001EDE08  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801F0E0C 001EDE0C  C8 22 C7 90 */	lfd f1, lbl_8027C430-_SDA2_BASE_(r2)
/* 801F0E10 001EDE10  90 61 00 0C */	stw r3, 0xc(r1)
/* 801F0E14 001EDE14  C0 62 C7 98 */	lfs f3, lbl_8027C438-_SDA2_BASE_(r2)
/* 801F0E18 001EDE18  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F0E1C 001EDE1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 801F0E20 001EDE20  EC 40 08 28 */	fsubs f2, f0, f1
/* 801F0E24 001EDE24  C8 22 C7 A0 */	lfd f1, lbl_8027C440-_SDA2_BASE_(r2)
/* 801F0E28 001EDE28  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F0E2C 001EDE2C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801F0E30 001EDE30  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801F0E34 001EDE34  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F0E38 001EDE38  EC 22 00 32 */	fmuls f1, f2, f0
/* 801F0E3C 001EDE3C  4B F9 D3 19 */	bl func_8018E154
/* 801F0E40 001EDE40  54 63 A3 3E */	srwi r3, r3, 0xc
/* 801F0E44 001EDE44  38 00 00 04 */	li r0, 4
/* 801F0E48 001EDE48  90 7F 00 04 */	stw r3, 4(r31)
/* 801F0E4C 001EDE4C  98 1F 00 01 */	stb r0, 1(r31)
/* 801F0E50 001EDE50  80 7F 00 04 */	lwz r3, 4(r31)
/* 801F0E54 001EDE54  28 03 00 00 */	cmplwi r3, 0
/* 801F0E58 001EDE58  40 82 00 20 */	bne lbl_801F0E78
/* 801F0E5C 001EDE5C  38 60 00 01 */	li r3, 1
/* 801F0E60 001EDE60  38 00 00 00 */	li r0, 0
/* 801F0E64 001EDE64  90 7F 00 04 */	stw r3, 4(r31)
/* 801F0E68 001EDE68  90 1F 00 08 */	stw r0, 8(r31)
/* 801F0E6C 001EDE6C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801F0E70 001EDE70  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801F0E74 001EDE74  48 00 00 20 */	b lbl_801F0E94
lbl_801F0E78:
/* 801F0E78 001EDE78  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801F0E7C 001EDE7C  7C 00 1B 96 */	divwu r0, r0, r3
/* 801F0E80 001EDE80  7C 00 00 D0 */	neg r0, r0
/* 801F0E84 001EDE84  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_801F0E88:
/* 801F0E88 001EDE88  38 60 00 00 */	li r3, 0
/* 801F0E8C 001EDE8C  48 00 00 08 */	b lbl_801F0E94
lbl_801F0E90:
/* 801F0E90 001EDE90  38 60 00 00 */	li r3, 0
lbl_801F0E94:
/* 801F0E94 001EDE94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F0E98 001EDE98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F0E9C 001EDE9C  7C 08 03 A6 */	mtlr r0
/* 801F0EA0 001EDEA0  38 21 00 20 */	addi r1, r1, 0x20
/* 801F0EA4 001EDEA4  4E 80 00 20 */	blr 

.global adsrHandle
adsrHandle:
/* 801F0EA8 001EDEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F0EAC 001EDEAC  7C 08 02 A6 */	mflr r0
/* 801F0EB0 001EDEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F0EB4 001EDEB4  38 00 00 00 */	li r0, 0
/* 801F0EB8 001EDEB8  88 C3 00 00 */	lbz r6, 0(r3)
/* 801F0EBC 001EDEBC  2C 06 00 01 */	cmpwi r6, 1
/* 801F0EC0 001EDEC0  41 82 00 94 */	beq lbl_801F0F54
/* 801F0EC4 001EDEC4  40 80 01 68 */	bge lbl_801F102C
/* 801F0EC8 001EDEC8  2C 06 00 00 */	cmpwi r6, 0
/* 801F0ECC 001EDECC  40 80 00 08 */	bge lbl_801F0ED4
/* 801F0ED0 001EDED0  48 00 01 5C */	b lbl_801F102C
lbl_801F0ED4:
/* 801F0ED4 001EDED4  88 C3 00 01 */	lbz r6, 1(r3)
/* 801F0ED8 001EDED8  28 06 00 03 */	cmplwi r6, 3
/* 801F0EDC 001EDEDC  41 82 00 60 */	beq lbl_801F0F3C
/* 801F0EE0 001EDEE0  81 03 00 08 */	lwz r8, 8(r3)
/* 801F0EE4 001EDEE4  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 801F0EE8 001EDEE8  7D 06 86 70 */	srawi r6, r8, 0x10
/* 801F0EEC 001EDEEC  7C E8 3A 14 */	add r7, r8, r7
/* 801F0EF0 001EDEF0  90 E3 00 08 */	stw r7, 8(r3)
/* 801F0EF4 001EDEF4  B0 C4 00 00 */	sth r6, 0(r4)
/* 801F0EF8 001EDEF8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 801F0EFC 001EDEFC  2C 04 00 00 */	cmpwi r4, 0
/* 801F0F00 001EDF00  41 80 00 10 */	blt lbl_801F0F10
/* 801F0F04 001EDF04  7C 84 AE 70 */	srawi r4, r4, 0x15
/* 801F0F08 001EDF08  B0 85 00 00 */	sth r4, 0(r5)
/* 801F0F0C 001EDF0C  48 00 00 14 */	b lbl_801F0F20
lbl_801F0F10:
/* 801F0F10 001EDF10  7C 84 00 D0 */	neg r4, r4
/* 801F0F14 001EDF14  7C 84 AE 70 */	srawi r4, r4, 0x15
/* 801F0F18 001EDF18  7C 84 00 D0 */	neg r4, r4
/* 801F0F1C 001EDF1C  B0 85 00 00 */	sth r4, 0(r5)
lbl_801F0F20:
/* 801F0F20 001EDF20  80 83 00 04 */	lwz r4, 4(r3)
/* 801F0F24 001EDF24  34 84 FF FF */	addic. r4, r4, -1
/* 801F0F28 001EDF28  90 83 00 04 */	stw r4, 4(r3)
/* 801F0F2C 001EDF2C  40 82 01 00 */	bne lbl_801F102C
/* 801F0F30 001EDF30  4B FF FA 2D */	bl salChangeADSRState
/* 801F0F34 001EDF34  7C 60 1B 78 */	mr r0, r3
/* 801F0F38 001EDF38  48 00 00 F4 */	b lbl_801F102C
lbl_801F0F3C:
/* 801F0F3C 001EDF3C  80 C3 00 08 */	lwz r6, 8(r3)
/* 801F0F40 001EDF40  38 60 00 00 */	li r3, 0
/* 801F0F44 001EDF44  7C C6 86 70 */	srawi r6, r6, 0x10
/* 801F0F48 001EDF48  B0 C4 00 00 */	sth r6, 0(r4)
/* 801F0F4C 001EDF4C  B0 65 00 00 */	sth r3, 0(r5)
/* 801F0F50 001EDF50  48 00 00 DC */	b lbl_801F102C
lbl_801F0F54:
/* 801F0F54 001EDF54  88 E3 00 01 */	lbz r7, 1(r3)
/* 801F0F58 001EDF58  28 07 00 03 */	cmplwi r7, 3
/* 801F0F5C 001EDF5C  41 82 00 BC */	beq lbl_801F1018
/* 801F0F60 001EDF60  88 C3 00 26 */	lbz r6, 0x26(r3)
/* 801F0F64 001EDF64  81 23 00 08 */	lwz r9, 8(r3)
/* 801F0F68 001EDF68  28 06 00 00 */	cmplwi r6, 0
/* 801F0F6C 001EDF6C  40 82 00 1C */	bne lbl_801F0F88
/* 801F0F70 001EDF70  28 07 00 01 */	cmplwi r7, 1
/* 801F0F74 001EDF74  40 82 00 14 */	bne lbl_801F0F88
/* 801F0F78 001EDF78  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 801F0F7C 001EDF7C  7C C9 32 14 */	add r6, r9, r6
/* 801F0F80 001EDF80  90 C3 00 08 */	stw r6, 8(r3)
/* 801F0F84 001EDF84  48 00 00 48 */	b lbl_801F0FCC
lbl_801F0F88:
/* 801F0F88 001EDF88  81 03 00 0C */	lwz r8, 0xc(r3)
/* 801F0F8C 001EDF8C  3C C0 80 22 */	lis r6, lbl_8021DE50@ha
/* 801F0F90 001EDF90  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 801F0F94 001EDF94  38 C6 DE 50 */	addi r6, r6, lbl_8021DE50@l
/* 801F0F98 001EDF98  7C E8 3A 14 */	add r7, r8, r7
/* 801F0F9C 001EDF9C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 801F0FA0 001EDFA0  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 801F0FA4 001EDFA4  3C E7 00 01 */	addis r7, r7, 1
/* 801F0FA8 001EDFA8  38 E7 80 00 */	addi r7, r7, -32768
/* 801F0FAC 001EDFAC  7C E7 86 70 */	srawi r7, r7, 0x10
/* 801F0FB0 001EDFB0  21 07 00 C1 */	subfic r8, r7, 0xc1
/* 801F0FB4 001EDFB4  7D 07 FE 70 */	srawi r7, r8, 0x1f
/* 801F0FB8 001EDFB8  7D 07 38 78 */	andc r7, r8, r7
/* 801F0FBC 001EDFBC  54 E7 08 3C */	slwi r7, r7, 1
/* 801F0FC0 001EDFC0  7C C6 3A 2E */	lhzx r6, r6, r7
/* 801F0FC4 001EDFC4  54 C6 80 1E */	slwi r6, r6, 0x10
/* 801F0FC8 001EDFC8  90 C3 00 08 */	stw r6, 8(r3)
lbl_801F0FCC:
/* 801F0FCC 001EDFCC  7D 26 86 70 */	srawi r6, r9, 0x10
/* 801F0FD0 001EDFD0  B0 C4 00 00 */	sth r6, 0(r4)
/* 801F0FD4 001EDFD4  80 83 00 08 */	lwz r4, 8(r3)
/* 801F0FD8 001EDFD8  7C 89 20 51 */	subf. r4, r9, r4
/* 801F0FDC 001EDFDC  41 80 00 10 */	blt lbl_801F0FEC
/* 801F0FE0 001EDFE0  7C 84 AE 70 */	srawi r4, r4, 0x15
/* 801F0FE4 001EDFE4  B0 85 00 00 */	sth r4, 0(r5)
/* 801F0FE8 001EDFE8  48 00 00 14 */	b lbl_801F0FFC
lbl_801F0FEC:
/* 801F0FEC 001EDFEC  7C 84 00 D0 */	neg r4, r4
/* 801F0FF0 001EDFF0  7C 84 AE 70 */	srawi r4, r4, 0x15
/* 801F0FF4 001EDFF4  7C 84 00 D0 */	neg r4, r4
/* 801F0FF8 001EDFF8  B0 85 00 00 */	sth r4, 0(r5)
lbl_801F0FFC:
/* 801F0FFC 001EDFFC  80 83 00 04 */	lwz r4, 4(r3)
/* 801F1000 001EE000  34 84 FF FF */	addic. r4, r4, -1
/* 801F1004 001EE004  90 83 00 04 */	stw r4, 4(r3)
/* 801F1008 001EE008  40 82 00 24 */	bne lbl_801F102C
/* 801F100C 001EE00C  4B FF F9 51 */	bl salChangeADSRState
/* 801F1010 001EE010  7C 60 1B 78 */	mr r0, r3
/* 801F1014 001EE014  48 00 00 18 */	b lbl_801F102C
lbl_801F1018:
/* 801F1018 001EE018  80 C3 00 08 */	lwz r6, 8(r3)
/* 801F101C 001EE01C  38 60 00 00 */	li r3, 0
/* 801F1020 001EE020  7C C6 86 70 */	srawi r6, r6, 0x10
/* 801F1024 001EE024  B0 C4 00 00 */	sth r6, 0(r4)
/* 801F1028 001EE028  B0 65 00 00 */	sth r3, 0(r5)
lbl_801F102C:
/* 801F102C 001EE02C  7C 03 03 78 */	mr r3, r0
/* 801F1030 001EE030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1034 001EE034  7C 08 03 A6 */	mtlr r0
/* 801F1038 001EE038  38 21 00 10 */	addi r1, r1, 0x10
/* 801F103C 001EE03C  4E 80 00 20 */	blr 

.global adsrHandleLowPrecision
adsrHandleLowPrecision:
/* 801F1040 001EE040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F1044 001EE044  7C 08 02 A6 */	mflr r0
/* 801F1048 001EE048  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F104C 001EE04C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F1050 001EE050  3B E0 00 00 */	li r31, 0
/* 801F1054 001EE054  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F1058 001EE058  7C BE 2B 78 */	mr r30, r5
/* 801F105C 001EE05C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F1060 001EE060  7C 9D 23 78 */	mr r29, r4
/* 801F1064 001EE064  93 81 00 10 */	stw r28, 0x10(r1)
/* 801F1068 001EE068  7C 7C 1B 78 */	mr r28, r3
/* 801F106C 001EE06C  48 00 00 28 */	b lbl_801F1094
lbl_801F1070:
/* 801F1070 001EE070  7F 83 E3 78 */	mr r3, r28
/* 801F1074 001EE074  7F A4 EB 78 */	mr r4, r29
/* 801F1078 001EE078  7F C5 F3 78 */	mr r5, r30
/* 801F107C 001EE07C  4B FF FE 2D */	bl adsrHandle
/* 801F1080 001EE080  28 03 00 00 */	cmplwi r3, 0
/* 801F1084 001EE084  41 82 00 0C */	beq lbl_801F1090
/* 801F1088 001EE088  38 60 00 01 */	li r3, 1
/* 801F108C 001EE08C  48 00 00 18 */	b lbl_801F10A4
lbl_801F1090:
/* 801F1090 001EE090  3B FF 00 01 */	addi r31, r31, 1
lbl_801F1094:
/* 801F1094 001EE094  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F1098 001EE098  28 00 00 0F */	cmplwi r0, 0xf
/* 801F109C 001EE09C  41 80 FF D4 */	blt lbl_801F1070
/* 801F10A0 001EE0A0  38 60 00 00 */	li r3, 0
lbl_801F10A4:
/* 801F10A4 001EE0A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F10A8 001EE0A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F10AC 001EE0AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F10B0 001EE0B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F10B4 001EE0B4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801F10B8 001EE0B8  7C 08 03 A6 */	mtlr r0
/* 801F10BC 001EE0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801F10C0 001EE0C0  4E 80 00 20 */	blr 
