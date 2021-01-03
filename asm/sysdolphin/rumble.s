.include "macros.inc"

.section .text  # 0x801C47BC - 0x801C4F18

.global HSD_PadRumbleOffH
HSD_PadRumbleOffH:
/* 801C47BC 001C17BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C47C0 001C17C0  7C 08 02 A6 */	mflr r0
/* 801C47C4 001C17C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C47C8 001C17C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C47CC 001C17CC  7C 7F 1B 78 */	mr r31, r3
/* 801C47D0 001C17D0  4B FA 53 89 */	bl func_80169B58
/* 801C47D4 001C17D4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801C47D8 001C17D8  3C 80 80 25 */	lis r4, lbl_8024CA18@ha
/* 801C47DC 001C17DC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C47E0 001C17E0  38 C0 00 00 */	li r6, 0
/* 801C47E4 001C17E4  38 04 CA 18 */	addi r0, r4, lbl_8024CA18@l
/* 801C47E8 001C17E8  7C 80 2A 14 */	add r4, r0, r5
/* 801C47EC 001C17EC  98 C4 00 02 */	stb r6, 2(r4)
/* 801C47F0 001C17F0  4B FA 53 91 */	bl func_80169B80
/* 801C47F4 001C17F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C47F8 001C17F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C47FC 001C17FC  7C 08 03 A6 */	mtlr r0
/* 801C4800 001C1800  38 21 00 10 */	addi r1, r1, 0x10
/* 801C4804 001C1804  4E 80 00 20 */	blr 

.global HSD_PadRumbleRemove
HSD_PadRumbleRemove:
/* 801C4808 001C1808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C480C 001C180C  7C 08 02 A6 */	mflr r0
/* 801C4810 001C1810  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C4814 001C1814  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4818 001C1818  1C 80 00 0C */	mulli r4, r0, 0xc
/* 801C481C 001C181C  3C 60 80 25 */	lis r3, lbl_8024CA18@ha
/* 801C4820 001C1820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C4824 001C1824  38 03 CA 18 */	addi r0, r3, lbl_8024CA18@l
/* 801C4828 001C1828  7F E0 22 14 */	add r31, r0, r4
/* 801C482C 001C182C  4B FA 53 2D */	bl func_80169B58
/* 801C4830 001C1830  3C 80 80 25 */	lis r4, lbl_8024C7C0@ha
/* 801C4834 001C1834  80 FF 00 08 */	lwz r7, 8(r31)
/* 801C4838 001C1838  38 A4 C7 C0 */	addi r5, r4, lbl_8024C7C0@l
/* 801C483C 001C183C  48 00 00 40 */	b lbl_801C487C
lbl_801C4840:
/* 801C4840 001C1840  80 C7 00 00 */	lwz r6, 0(r7)
/* 801C4844 001C1844  38 9F 00 08 */	addi r4, r31, 8
/* 801C4848 001C1848  48 00 00 08 */	b lbl_801C4850
lbl_801C484C:
/* 801C484C 001C184C  7C 04 03 78 */	mr r4, r0
lbl_801C4850:
/* 801C4850 001C1850  80 04 00 00 */	lwz r0, 0(r4)
/* 801C4854 001C1854  7C 00 38 40 */	cmplw r0, r7
/* 801C4858 001C1858  40 82 FF F4 */	bne lbl_801C484C
/* 801C485C 001C185C  90 C4 00 00 */	stw r6, 0(r4)
/* 801C4860 001C1860  A0 9F 00 04 */	lhz r4, 4(r31)
/* 801C4864 001C1864  80 05 00 30 */	lwz r0, 0x30(r5)
/* 801C4868 001C1868  38 84 FF FF */	addi r4, r4, -1
/* 801C486C 001C186C  B0 9F 00 04 */	sth r4, 4(r31)
/* 801C4870 001C1870  90 07 00 00 */	stw r0, 0(r7)
/* 801C4874 001C1874  90 E5 00 30 */	stw r7, 0x30(r5)
/* 801C4878 001C1878  7C C7 33 78 */	mr r7, r6
lbl_801C487C:
/* 801C487C 001C187C  28 07 00 00 */	cmplwi r7, 0
/* 801C4880 001C1880  40 82 FF C0 */	bne lbl_801C4840
/* 801C4884 001C1884  4B FA 52 FD */	bl func_80169B80
/* 801C4888 001C1888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C488C 001C188C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C4890 001C1890  7C 08 03 A6 */	mtlr r0
/* 801C4894 001C1894  38 21 00 10 */	addi r1, r1, 0x10
/* 801C4898 001C1898  4E 80 00 20 */	blr 

.global HSD_PadRumbleRemoveAll
HSD_PadRumbleRemoveAll:
/* 801C489C 001C189C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C48A0 001C18A0  7C 08 02 A6 */	mflr r0
/* 801C48A4 001C18A4  3C 80 80 25 */	lis r4, lbl_8024C7C0@ha
/* 801C48A8 001C18A8  3C 60 80 25 */	lis r3, lbl_8024CA18@ha
/* 801C48AC 001C18AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C48B0 001C18B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C48B4 001C18B4  3B E3 CA 18 */	addi r31, r3, lbl_8024CA18@l
/* 801C48B8 001C18B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C48BC 001C18BC  3B C4 C7 C0 */	addi r30, r4, lbl_8024C7C0@l
/* 801C48C0 001C18C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C48C4 001C18C4  93 81 00 10 */	stw r28, 0x10(r1)
/* 801C48C8 001C18C8  3B 80 00 00 */	li r28, 0
lbl_801C48CC:
/* 801C48CC 001C18CC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801C48D0 001C18D0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C48D4 001C18D4  7F BF 02 14 */	add r29, r31, r0
/* 801C48D8 001C18D8  4B FA 52 81 */	bl func_80169B58
/* 801C48DC 001C18DC  80 BD 00 08 */	lwz r5, 8(r29)
/* 801C48E0 001C18E0  48 00 00 40 */	b lbl_801C4920
lbl_801C48E4:
/* 801C48E4 001C18E4  80 C5 00 00 */	lwz r6, 0(r5)
/* 801C48E8 001C18E8  38 9D 00 08 */	addi r4, r29, 8
/* 801C48EC 001C18EC  48 00 00 08 */	b lbl_801C48F4
lbl_801C48F0:
/* 801C48F0 001C18F0  7C 04 03 78 */	mr r4, r0
lbl_801C48F4:
/* 801C48F4 001C18F4  80 04 00 00 */	lwz r0, 0(r4)
/* 801C48F8 001C18F8  7C 00 28 40 */	cmplw r0, r5
/* 801C48FC 001C18FC  40 82 FF F4 */	bne lbl_801C48F0
/* 801C4900 001C1900  90 C4 00 00 */	stw r6, 0(r4)
/* 801C4904 001C1904  A0 9D 00 04 */	lhz r4, 4(r29)
/* 801C4908 001C1908  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 801C490C 001C190C  38 84 FF FF */	addi r4, r4, -1
/* 801C4910 001C1910  B0 9D 00 04 */	sth r4, 4(r29)
/* 801C4914 001C1914  90 05 00 00 */	stw r0, 0(r5)
/* 801C4918 001C1918  90 BE 00 30 */	stw r5, 0x30(r30)
/* 801C491C 001C191C  7C C5 33 78 */	mr r5, r6
lbl_801C4920:
/* 801C4920 001C1920  28 05 00 00 */	cmplwi r5, 0
/* 801C4924 001C1924  40 82 FF C0 */	bne lbl_801C48E4
/* 801C4928 001C1928  4B FA 52 59 */	bl func_80169B80
/* 801C492C 001C192C  3B 9C 00 01 */	addi r28, r28, 1
/* 801C4930 001C1930  2C 1C 00 04 */	cmpwi r28, 4
/* 801C4934 001C1934  41 80 FF 98 */	blt lbl_801C48CC
/* 801C4938 001C1938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C493C 001C193C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C4940 001C1940  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C4944 001C1944  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C4948 001C1948  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801C494C 001C194C  7C 08 03 A6 */	mtlr r0
/* 801C4950 001C1950  38 21 00 20 */	addi r1, r1, 0x20
/* 801C4954 001C1954  4E 80 00 20 */	blr 

.global HSD_PadRumbleAdd
HSD_PadRumbleAdd:
/* 801C4958 001C1958  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C495C 001C195C  7C 08 02 A6 */	mflr r0
/* 801C4960 001C1960  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C4964 001C1964  39 61 00 30 */	addi r11, r1, 0x30
/* 801C4968 001C1968  4B FC 99 0D */	bl _savegpr_25
/* 801C496C 001C196C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4970 001C1970  3C 60 80 25 */	lis r3, lbl_8024CA18@ha
/* 801C4974 001C1974  1D 00 00 0C */	mulli r8, r0, 0xc
/* 801C4978 001C1978  3D 20 80 25 */	lis r9, lbl_8024C7C0@ha
/* 801C497C 001C197C  38 03 CA 18 */	addi r0, r3, lbl_8024CA18@l
/* 801C4980 001C1980  7C 99 23 78 */	mr r25, r4
/* 801C4984 001C1984  7C BA 2B 78 */	mr r26, r5
/* 801C4988 001C1988  7C DB 33 78 */	mr r27, r6
/* 801C498C 001C198C  7C FC 3B 78 */	mr r28, r7
/* 801C4990 001C1990  3B E9 C7 C0 */	addi r31, r9, lbl_8024C7C0@l
/* 801C4994 001C1994  7F C0 42 14 */	add r30, r0, r8
/* 801C4998 001C1998  3B A0 00 00 */	li r29, 0
/* 801C499C 001C199C  4B FA 51 BD */	bl func_80169B58
/* 801C49A0 001C19A0  80 FF 00 30 */	lwz r7, 0x30(r31)
/* 801C49A4 001C19A4  28 07 00 00 */	cmplwi r7, 0
/* 801C49A8 001C19A8  41 82 00 88 */	beq lbl_801C4A30
/* 801C49AC 001C19AC  A0 9E 00 04 */	lhz r4, 4(r30)
/* 801C49B0 001C19B0  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 801C49B4 001C19B4  7C 04 00 40 */	cmplw r4, r0
/* 801C49B8 001C19B8  40 80 00 78 */	bge lbl_801C4A30
/* 801C49BC 001C19BC  80 87 00 00 */	lwz r4, 0(r7)
/* 801C49C0 001C19C0  38 00 00 00 */	li r0, 0
/* 801C49C4 001C19C4  38 DE 00 08 */	addi r6, r30, 8
/* 801C49C8 001C19C8  90 9F 00 30 */	stw r4, 0x30(r31)
/* 801C49CC 001C19CC  93 27 00 04 */	stw r25, 4(r7)
/* 801C49D0 001C19D0  98 07 00 08 */	stb r0, 8(r7)
/* 801C49D4 001C19D4  9B 67 00 09 */	stb r27, 9(r7)
/* 801C49D8 001C19D8  98 07 00 0A */	stb r0, 0xa(r7)
/* 801C49DC 001C19DC  B0 07 00 0C */	sth r0, 0xc(r7)
/* 801C49E0 001C19E0  B0 07 00 0E */	sth r0, 0xe(r7)
/* 801C49E4 001C19E4  93 47 00 10 */	stw r26, 0x10(r7)
/* 801C49E8 001C19E8  90 07 00 14 */	stw r0, 0x14(r7)
/* 801C49EC 001C19EC  93 87 00 1C */	stw r28, 0x1c(r7)
/* 801C49F0 001C19F0  93 87 00 18 */	stw r28, 0x18(r7)
/* 801C49F4 001C19F4  48 00 00 08 */	b lbl_801C49FC
lbl_801C49F8:
/* 801C49F8 001C19F8  7C A6 2B 78 */	mr r6, r5
lbl_801C49FC:
/* 801C49FC 001C19FC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C4A00 001C1A00  28 05 00 00 */	cmplwi r5, 0
/* 801C4A04 001C1A04  41 82 00 14 */	beq lbl_801C4A18
/* 801C4A08 001C1A08  88 85 00 09 */	lbz r4, 9(r5)
/* 801C4A0C 001C1A0C  88 07 00 09 */	lbz r0, 9(r7)
/* 801C4A10 001C1A10  7C 04 00 40 */	cmplw r4, r0
/* 801C4A14 001C1A14  40 81 FF E4 */	ble lbl_801C49F8
lbl_801C4A18:
/* 801C4A18 001C1A18  90 A7 00 00 */	stw r5, 0(r7)
/* 801C4A1C 001C1A1C  3B A0 00 01 */	li r29, 1
/* 801C4A20 001C1A20  90 E6 00 00 */	stw r7, 0(r6)
/* 801C4A24 001C1A24  A0 9E 00 04 */	lhz r4, 4(r30)
/* 801C4A28 001C1A28  38 04 00 01 */	addi r0, r4, 1
/* 801C4A2C 001C1A2C  B0 1E 00 04 */	sth r0, 4(r30)
lbl_801C4A30:
/* 801C4A30 001C1A30  4B FA 51 51 */	bl func_80169B80
/* 801C4A34 001C1A34  7F A3 EB 78 */	mr r3, r29
/* 801C4A38 001C1A38  39 61 00 30 */	addi r11, r1, 0x30
/* 801C4A3C 001C1A3C  4B FC 98 85 */	bl _restgpr_25
/* 801C4A40 001C1A40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C4A44 001C1A44  7C 08 03 A6 */	mtlr r0
/* 801C4A48 001C1A48  38 21 00 30 */	addi r1, r1, 0x30
/* 801C4A4C 001C1A4C  4E 80 00 20 */	blr 

.global HSD_PadRumbleSetMaxList
HSD_PadRumbleSetMaxList:
/* 801C4A50 001C1A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C4A54 001C1A54  7C 08 02 A6 */	mflr r0
/* 801C4A58 001C1A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C4A5C 001C1A5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C4A60 001C1A60  7C 7F 1B 78 */	mr r31, r3
/* 801C4A64 001C1A64  4B FA 50 F5 */	bl func_80169B58
/* 801C4A68 001C1A68  3C 80 80 25 */	lis r4, lbl_8024C7C0@ha
/* 801C4A6C 001C1A6C  38 84 C7 C0 */	addi r4, r4, lbl_8024C7C0@l
/* 801C4A70 001C1A70  B3 E4 00 2C */	sth r31, 0x2c(r4)
/* 801C4A74 001C1A74  4B FA 51 0D */	bl func_80169B80
/* 801C4A78 001C1A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C4A7C 001C1A7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C4A80 001C1A80  7C 08 03 A6 */	mtlr r0
/* 801C4A84 001C1A84  38 21 00 10 */	addi r1, r1, 0x10
/* 801C4A88 001C1A88  4E 80 00 20 */	blr 

.global HSD_PadRumbleInterpret1
HSD_PadRumbleInterpret1:
/* 801C4A8C 001C1A8C  88 03 00 08 */	lbz r0, 8(r3)
/* 801C4A90 001C1A90  28 00 00 01 */	cmplwi r0, 1
/* 801C4A94 001C1A94  40 82 01 38 */	bne lbl_801C4BCC
/* 801C4A98 001C1A98  38 60 00 00 */	li r3, 0
/* 801C4A9C 001C1A9C  4E 80 00 20 */	blr 
/* 801C4AA0 001C1AA0  48 00 01 2C */	b lbl_801C4BCC
lbl_801C4AA4:
/* 801C4AA4 001C1AA4  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4AA8 001C1AA8  88 05 00 00 */	lbz r0, 0(r5)
/* 801C4AAC 001C1AAC  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 801C4AB0 001C1AB0  2C 00 00 03 */	cmpwi r0, 3
/* 801C4AB4 001C1AB4  41 82 00 A0 */	beq lbl_801C4B54
/* 801C4AB8 001C1AB8  40 80 00 1C */	bge lbl_801C4AD4
/* 801C4ABC 001C1ABC  2C 00 00 01 */	cmpwi r0, 1
/* 801C4AC0 001C1AC0  41 82 00 44 */	beq lbl_801C4B04
/* 801C4AC4 001C1AC4  40 80 00 68 */	bge lbl_801C4B2C
/* 801C4AC8 001C1AC8  2C 00 00 00 */	cmpwi r0, 0
/* 801C4ACC 001C1ACC  40 80 00 18 */	bge lbl_801C4AE4
/* 801C4AD0 001C1AD0  48 00 00 FC */	b lbl_801C4BCC
lbl_801C4AD4:
/* 801C4AD4 001C1AD4  2C 00 00 05 */	cmpwi r0, 5
/* 801C4AD8 001C1AD8  41 82 00 C8 */	beq lbl_801C4BA0
/* 801C4ADC 001C1ADC  40 80 00 F0 */	bge lbl_801C4BCC
/* 801C4AE0 001C1AE0  48 00 00 9C */	b lbl_801C4B7C
lbl_801C4AE4:
/* 801C4AE4 001C1AE4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801C4AE8 001C1AE8  2C 00 FF FE */	cmpwi r0, -2
/* 801C4AEC 001C1AEC  40 82 00 0C */	bne lbl_801C4AF8
/* 801C4AF0 001C1AF0  38 60 00 01 */	li r3, 1
/* 801C4AF4 001C1AF4  4E 80 00 20 */	blr 
lbl_801C4AF8:
/* 801C4AF8 001C1AF8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801C4AFC 001C1AFC  90 03 00 18 */	stw r0, 0x18(r3)
/* 801C4B00 001C1B00  48 00 00 CC */	b lbl_801C4BCC
lbl_801C4B04:
/* 801C4B04 001C1B04  38 00 00 02 */	li r0, 2
/* 801C4B08 001C1B08  98 03 00 0A */	stb r0, 0xa(r3)
/* 801C4B0C 001C1B0C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4B10 001C1B10  A0 05 00 00 */	lhz r0, 0(r5)
/* 801C4B14 001C1B14  54 00 04 FE */	clrlwi r0, r0, 0x13
/* 801C4B18 001C1B18  B0 03 00 0E */	sth r0, 0xe(r3)
/* 801C4B1C 001C1B1C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4B20 001C1B20  38 05 00 02 */	addi r0, r5, 2
/* 801C4B24 001C1B24  90 03 00 18 */	stw r0, 0x18(r3)
/* 801C4B28 001C1B28  48 00 00 A4 */	b lbl_801C4BCC
lbl_801C4B2C:
/* 801C4B2C 001C1B2C  38 00 00 01 */	li r0, 1
/* 801C4B30 001C1B30  98 03 00 0A */	stb r0, 0xa(r3)
/* 801C4B34 001C1B34  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4B38 001C1B38  A0 05 00 00 */	lhz r0, 0(r5)
/* 801C4B3C 001C1B3C  54 00 04 FE */	clrlwi r0, r0, 0x13
/* 801C4B40 001C1B40  B0 03 00 0E */	sth r0, 0xe(r3)
/* 801C4B44 001C1B44  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4B48 001C1B48  38 05 00 02 */	addi r0, r5, 2
/* 801C4B4C 001C1B4C  90 03 00 18 */	stw r0, 0x18(r3)
/* 801C4B50 001C1B50  48 00 00 7C */	b lbl_801C4BCC
lbl_801C4B54:
/* 801C4B54 001C1B54  38 00 00 00 */	li r0, 0
/* 801C4B58 001C1B58  98 03 00 0A */	stb r0, 0xa(r3)
/* 801C4B5C 001C1B5C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4B60 001C1B60  A0 05 00 00 */	lhz r0, 0(r5)
/* 801C4B64 001C1B64  54 00 04 FE */	clrlwi r0, r0, 0x13
/* 801C4B68 001C1B68  B0 03 00 0E */	sth r0, 0xe(r3)
/* 801C4B6C 001C1B6C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4B70 001C1B70  38 05 00 02 */	addi r0, r5, 2
/* 801C4B74 001C1B74  90 03 00 18 */	stw r0, 0x18(r3)
/* 801C4B78 001C1B78  48 00 00 54 */	b lbl_801C4BCC
lbl_801C4B7C:
/* 801C4B7C 001C1B7C  A0 05 00 00 */	lhz r0, 0(r5)
/* 801C4B80 001C1B80  54 00 04 FE */	clrlwi r0, r0, 0x13
/* 801C4B84 001C1B84  B0 03 00 0C */	sth r0, 0xc(r3)
/* 801C4B88 001C1B88  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4B8C 001C1B8C  38 05 00 02 */	addi r0, r5, 2
/* 801C4B90 001C1B90  90 03 00 18 */	stw r0, 0x18(r3)
/* 801C4B94 001C1B94  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801C4B98 001C1B98  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C4B9C 001C1B9C  48 00 00 30 */	b lbl_801C4BCC
lbl_801C4BA0:
/* 801C4BA0 001C1BA0  A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 801C4BA4 001C1BA4  38 A5 FF FF */	addi r5, r5, -1
/* 801C4BA8 001C1BA8  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 801C4BAC 001C1BAC  B0 A3 00 0C */	sth r5, 0xc(r3)
/* 801C4BB0 001C1BB0  41 82 00 10 */	beq lbl_801C4BC0
/* 801C4BB4 001C1BB4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801C4BB8 001C1BB8  90 03 00 18 */	stw r0, 0x18(r3)
/* 801C4BBC 001C1BBC  48 00 00 10 */	b lbl_801C4BCC
lbl_801C4BC0:
/* 801C4BC0 001C1BC0  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801C4BC4 001C1BC4  38 05 00 02 */	addi r0, r5, 2
/* 801C4BC8 001C1BC8  90 03 00 18 */	stw r0, 0x18(r3)
lbl_801C4BCC:
/* 801C4BCC 001C1BCC  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 801C4BD0 001C1BD0  28 00 00 00 */	cmplwi r0, 0
/* 801C4BD4 001C1BD4  41 82 FE D0 */	beq lbl_801C4AA4
/* 801C4BD8 001C1BD8  88 03 00 0A */	lbz r0, 0xa(r3)
/* 801C4BDC 001C1BDC  98 04 00 00 */	stb r0, 0(r4)
/* 801C4BE0 001C1BE0  A0 83 00 0E */	lhz r4, 0xe(r3)
/* 801C4BE4 001C1BE4  38 04 FF FF */	addi r0, r4, -1
/* 801C4BE8 001C1BE8  B0 03 00 0E */	sth r0, 0xe(r3)
/* 801C4BEC 001C1BEC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 801C4BF0 001C1BF0  2C 04 FF FF */	cmpwi r4, -1
/* 801C4BF4 001C1BF4  41 82 00 20 */	beq lbl_801C4C14
/* 801C4BF8 001C1BF8  2C 04 FF FE */	cmpwi r4, -2
/* 801C4BFC 001C1BFC  41 82 00 18 */	beq lbl_801C4C14
/* 801C4C00 001C1C00  34 04 FF FF */	addic. r0, r4, -1
/* 801C4C04 001C1C04  90 03 00 10 */	stw r0, 0x10(r3)
/* 801C4C08 001C1C08  40 82 00 0C */	bne lbl_801C4C14
/* 801C4C0C 001C1C0C  38 60 00 01 */	li r3, 1
/* 801C4C10 001C1C10  4E 80 00 20 */	blr 
lbl_801C4C14:
/* 801C4C14 001C1C14  38 60 00 00 */	li r3, 0
/* 801C4C18 001C1C18  4E 80 00 20 */	blr 

.global HSD_PadRumbleInterpret
HSD_PadRumbleInterpret:
/* 801C4C1C 001C1C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C4C20 001C1C20  7C 08 02 A6 */	mflr r0
/* 801C4C24 001C1C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C4C28 001C1C28  39 61 00 20 */	addi r11, r1, 0x20
/* 801C4C2C 001C1C2C  4B FC 96 51 */	bl _savegpr_27
/* 801C4C30 001C1C30  3C 80 80 25 */	lis r4, lbl_8024CA18@ha
/* 801C4C34 001C1C34  3C 60 80 25 */	lis r3, lbl_8024C7C0@ha
/* 801C4C38 001C1C38  38 04 CA 18 */	addi r0, r4, lbl_8024CA18@l
/* 801C4C3C 001C1C3C  3B 60 00 00 */	li r27, 0
/* 801C4C40 001C1C40  7C 1E 03 78 */	mr r30, r0
/* 801C4C44 001C1C44  3B E3 C7 C0 */	addi r31, r3, lbl_8024C7C0@l
lbl_801C4C48:
/* 801C4C48 001C1C48  88 1E 00 02 */	lbz r0, 2(r30)
/* 801C4C4C 001C1C4C  98 1E 00 01 */	stb r0, 1(r30)
/* 801C4C50 001C1C50  83 BE 00 08 */	lwz r29, 8(r30)
/* 801C4C54 001C1C54  48 00 00 58 */	b lbl_801C4CAC
lbl_801C4C58:
/* 801C4C58 001C1C58  83 9D 00 00 */	lwz r28, 0(r29)
/* 801C4C5C 001C1C5C  7F A3 EB 78 */	mr r3, r29
/* 801C4C60 001C1C60  38 9E 00 01 */	addi r4, r30, 1
/* 801C4C64 001C1C64  4B FF FE 29 */	bl HSD_PadRumbleInterpret1
/* 801C4C68 001C1C68  2C 03 00 00 */	cmpwi r3, 0
/* 801C4C6C 001C1C6C  41 82 00 3C */	beq lbl_801C4CA8
/* 801C4C70 001C1C70  38 7E 00 08 */	addi r3, r30, 8
/* 801C4C74 001C1C74  48 00 00 08 */	b lbl_801C4C7C
lbl_801C4C78:
/* 801C4C78 001C1C78  7C 03 03 78 */	mr r3, r0
lbl_801C4C7C:
/* 801C4C7C 001C1C7C  80 03 00 00 */	lwz r0, 0(r3)
/* 801C4C80 001C1C80  7C 00 E8 40 */	cmplw r0, r29
/* 801C4C84 001C1C84  40 82 FF F4 */	bne lbl_801C4C78
/* 801C4C88 001C1C88  80 1D 00 00 */	lwz r0, 0(r29)
/* 801C4C8C 001C1C8C  90 03 00 00 */	stw r0, 0(r3)
/* 801C4C90 001C1C90  A0 7E 00 04 */	lhz r3, 4(r30)
/* 801C4C94 001C1C94  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 801C4C98 001C1C98  38 63 FF FF */	addi r3, r3, -1
/* 801C4C9C 001C1C9C  B0 7E 00 04 */	sth r3, 4(r30)
/* 801C4CA0 001C1CA0  90 1D 00 00 */	stw r0, 0(r29)
/* 801C4CA4 001C1CA4  93 BF 00 30 */	stw r29, 0x30(r31)
lbl_801C4CA8:
/* 801C4CA8 001C1CA8  7F 9D E3 78 */	mr r29, r28
lbl_801C4CAC:
/* 801C4CAC 001C1CAC  28 1D 00 00 */	cmplwi r29, 0
/* 801C4CB0 001C1CB0  40 82 FF A8 */	bne lbl_801C4C58
/* 801C4CB4 001C1CB4  88 7E 00 01 */	lbz r3, 1(r30)
/* 801C4CB8 001C1CB8  88 1E 00 00 */	lbz r0, 0(r30)
/* 801C4CBC 001C1CBC  7C 03 00 40 */	cmplw r3, r0
/* 801C4CC0 001C1CC0  41 82 00 5C */	beq lbl_801C4D1C
/* 801C4CC4 001C1CC4  2C 03 00 01 */	cmpwi r3, 1
/* 801C4CC8 001C1CC8  41 82 00 30 */	beq lbl_801C4CF8
/* 801C4CCC 001C1CCC  40 80 00 10 */	bge lbl_801C4CDC
/* 801C4CD0 001C1CD0  2C 03 00 00 */	cmpwi r3, 0
/* 801C4CD4 001C1CD4  40 80 00 14 */	bge lbl_801C4CE8
/* 801C4CD8 001C1CD8  48 00 00 3C */	b lbl_801C4D14
lbl_801C4CDC:
/* 801C4CDC 001C1CDC  2C 03 00 03 */	cmpwi r3, 3
/* 801C4CE0 001C1CE0  40 80 00 34 */	bge lbl_801C4D14
/* 801C4CE4 001C1CE4  48 00 00 24 */	b lbl_801C4D08
lbl_801C4CE8:
/* 801C4CE8 001C1CE8  7F 63 DB 78 */	mr r3, r27
/* 801C4CEC 001C1CEC  38 80 00 02 */	li r4, 2
/* 801C4CF0 001C1CF0  4B FB 0E A1 */	bl PADControlMotor
/* 801C4CF4 001C1CF4  48 00 00 20 */	b lbl_801C4D14
lbl_801C4CF8:
/* 801C4CF8 001C1CF8  7F 63 DB 78 */	mr r3, r27
/* 801C4CFC 001C1CFC  38 80 00 00 */	li r4, 0
/* 801C4D00 001C1D00  4B FB 0E 91 */	bl PADControlMotor
/* 801C4D04 001C1D04  48 00 00 10 */	b lbl_801C4D14
lbl_801C4D08:
/* 801C4D08 001C1D08  7F 63 DB 78 */	mr r3, r27
/* 801C4D0C 001C1D0C  38 80 00 01 */	li r4, 1
/* 801C4D10 001C1D10  4B FB 0E 81 */	bl PADControlMotor
lbl_801C4D14:
/* 801C4D14 001C1D14  88 1E 00 01 */	lbz r0, 1(r30)
/* 801C4D18 001C1D18  98 1E 00 00 */	stb r0, 0(r30)
lbl_801C4D1C:
/* 801C4D1C 001C1D1C  3B 7B 00 01 */	addi r27, r27, 1
/* 801C4D20 001C1D20  3B DE 00 0C */	addi r30, r30, 0xc
/* 801C4D24 001C1D24  2C 1B 00 04 */	cmpwi r27, 4
/* 801C4D28 001C1D28  41 80 FF 20 */	blt lbl_801C4C48
/* 801C4D2C 001C1D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 801C4D30 001C1D30  4B FC 95 99 */	bl _restgpr_27
/* 801C4D34 001C1D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C4D38 001C1D38  7C 08 03 A6 */	mtlr r0
/* 801C4D3C 001C1D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 801C4D40 001C1D40  4E 80 00 20 */	blr 

.global HSD_PadRumbleInit
HSD_PadRumbleInit:
/* 801C4D44 001C1D44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C4D48 001C1D48  3C A0 80 25 */	lis r5, lbl_8024C7C0@ha
/* 801C4D4C 001C1D4C  54 66 04 3F */	clrlwi. r6, r3, 0x10
/* 801C4D50 001C1D50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C4D54 001C1D54  38 A5 C7 C0 */	addi r5, r5, lbl_8024C7C0@l
/* 801C4D58 001C1D58  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C4D5C 001C1D5C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801C4D60 001C1D60  93 81 00 20 */	stw r28, 0x20(r1)
/* 801C4D64 001C1D64  B0 65 00 2C */	sth r3, 0x2c(r5)
/* 801C4D68 001C1D68  90 85 00 30 */	stw r4, 0x30(r5)
/* 801C4D6C 001C1D6C  41 82 01 40 */	beq lbl_801C4EAC
/* 801C4D70 001C1D70  34 06 FF FF */	addic. r0, r6, -1
/* 801C4D74 001C1D74  38 80 00 00 */	li r4, 0
/* 801C4D78 001C1D78  40 81 01 24 */	ble lbl_801C4E9C
/* 801C4D7C 001C1D7C  2C 00 00 08 */	cmpwi r0, 8
/* 801C4D80 001C1D80  38 E6 FF F7 */	addi r7, r6, -9
/* 801C4D84 001C1D84  40 81 00 E4 */	ble lbl_801C4E68
/* 801C4D88 001C1D88  38 C7 00 07 */	addi r6, r7, 7
/* 801C4D8C 001C1D8C  38 60 00 00 */	li r3, 0
/* 801C4D90 001C1D90  54 C6 E8 FE */	srwi r6, r6, 3
/* 801C4D94 001C1D94  7C C9 03 A6 */	mtctr r6
/* 801C4D98 001C1D98  2C 07 00 00 */	cmpwi r7, 0
/* 801C4D9C 001C1D9C  40 81 00 CC */	ble lbl_801C4E68
lbl_801C4DA0:
/* 801C4DA0 001C1DA0  38 C4 00 01 */	addi r6, r4, 1
/* 801C4DA4 001C1DA4  81 05 00 30 */	lwz r8, 0x30(r5)
/* 801C4DA8 001C1DA8  54 C7 28 34 */	slwi r7, r6, 5
/* 801C4DAC 001C1DAC  39 64 00 03 */	addi r11, r4, 3
/* 801C4DB0 001C1DB0  7C E8 3A 14 */	add r7, r8, r7
/* 801C4DB4 001C1DB4  38 C4 00 02 */	addi r6, r4, 2
/* 801C4DB8 001C1DB8  7C E8 19 2E */	stwx r7, r8, r3
/* 801C4DBC 001C1DBC  54 CC 28 34 */	slwi r12, r6, 5
/* 801C4DC0 001C1DC0  39 24 00 05 */	addi r9, r4, 5
/* 801C4DC4 001C1DC4  38 E4 00 08 */	addi r7, r4, 8
/* 801C4DC8 001C1DC8  83 A5 00 30 */	lwz r29, 0x30(r5)
/* 801C4DCC 001C1DCC  39 44 00 04 */	addi r10, r4, 4
/* 801C4DD0 001C1DD0  55 6B 28 34 */	slwi r11, r11, 5
/* 801C4DD4 001C1DD4  55 3F 28 34 */	slwi r31, r9, 5
/* 801C4DD8 001C1DD8  7F 9D 62 14 */	add r28, r29, r12
/* 801C4DDC 001C1DDC  39 83 00 20 */	addi r12, r3, 0x20
/* 801C4DE0 001C1DE0  7F 9D 61 2E */	stwx r28, r29, r12
/* 801C4DE4 001C1DE4  55 5D 28 34 */	slwi r29, r10, 5
/* 801C4DE8 001C1DE8  3B 83 00 40 */	addi r28, r3, 0x40
/* 801C4DEC 001C1DEC  3B C3 00 60 */	addi r30, r3, 0x60
/* 801C4DF0 001C1DF0  81 45 00 30 */	lwz r10, 0x30(r5)
/* 801C4DF4 001C1DF4  39 83 00 80 */	addi r12, r3, 0x80
/* 801C4DF8 001C1DF8  39 04 00 06 */	addi r8, r4, 6
/* 801C4DFC 001C1DFC  38 C4 00 07 */	addi r6, r4, 7
/* 801C4E00 001C1E00  7D 2A 5A 14 */	add r9, r10, r11
/* 801C4E04 001C1E04  54 E7 28 34 */	slwi r7, r7, 5
/* 801C4E08 001C1E08  7D 2A E1 2E */	stwx r9, r10, r28
/* 801C4E0C 001C1E0C  55 0B 28 34 */	slwi r11, r8, 5
/* 801C4E10 001C1E10  54 C9 28 34 */	slwi r9, r6, 5
/* 801C4E14 001C1E14  39 43 00 A0 */	addi r10, r3, 0xa0
/* 801C4E18 001C1E18  83 85 00 30 */	lwz r28, 0x30(r5)
/* 801C4E1C 001C1E1C  39 03 00 C0 */	addi r8, r3, 0xc0
/* 801C4E20 001C1E20  38 C3 00 E0 */	addi r6, r3, 0xe0
/* 801C4E24 001C1E24  38 63 01 00 */	addi r3, r3, 0x100
/* 801C4E28 001C1E28  7F BC EA 14 */	add r29, r28, r29
/* 801C4E2C 001C1E2C  38 84 00 08 */	addi r4, r4, 8
/* 801C4E30 001C1E30  7F BC F1 2E */	stwx r29, r28, r30
/* 801C4E34 001C1E34  83 85 00 30 */	lwz r28, 0x30(r5)
/* 801C4E38 001C1E38  7F FC FA 14 */	add r31, r28, r31
/* 801C4E3C 001C1E3C  7F FC 61 2E */	stwx r31, r28, r12
/* 801C4E40 001C1E40  81 85 00 30 */	lwz r12, 0x30(r5)
/* 801C4E44 001C1E44  7D 6C 5A 14 */	add r11, r12, r11
/* 801C4E48 001C1E48  7D 6C 51 2E */	stwx r11, r12, r10
/* 801C4E4C 001C1E4C  81 45 00 30 */	lwz r10, 0x30(r5)
/* 801C4E50 001C1E50  7D 2A 4A 14 */	add r9, r10, r9
/* 801C4E54 001C1E54  7D 2A 41 2E */	stwx r9, r10, r8
/* 801C4E58 001C1E58  81 05 00 30 */	lwz r8, 0x30(r5)
/* 801C4E5C 001C1E5C  7C E8 3A 14 */	add r7, r8, r7
/* 801C4E60 001C1E60  7C E8 31 2E */	stwx r7, r8, r6
/* 801C4E64 001C1E64  42 00 FF 3C */	bdnz lbl_801C4DA0
lbl_801C4E68:
/* 801C4E68 001C1E68  7C 64 00 50 */	subf r3, r4, r0
/* 801C4E6C 001C1E6C  54 86 28 34 */	slwi r6, r4, 5
/* 801C4E70 001C1E70  7C 69 03 A6 */	mtctr r3
/* 801C4E74 001C1E74  7C 04 00 00 */	cmpw r4, r0
/* 801C4E78 001C1E78  40 80 00 24 */	bge lbl_801C4E9C
lbl_801C4E7C:
/* 801C4E7C 001C1E7C  38 04 00 01 */	addi r0, r4, 1
/* 801C4E80 001C1E80  80 65 00 30 */	lwz r3, 0x30(r5)
/* 801C4E84 001C1E84  54 00 28 34 */	slwi r0, r0, 5
/* 801C4E88 001C1E88  38 84 00 01 */	addi r4, r4, 1
/* 801C4E8C 001C1E8C  7C 03 02 14 */	add r0, r3, r0
/* 801C4E90 001C1E90  7C 03 31 2E */	stwx r0, r3, r6
/* 801C4E94 001C1E94  38 C6 00 20 */	addi r6, r6, 0x20
/* 801C4E98 001C1E98  42 00 FF E4 */	bdnz lbl_801C4E7C
lbl_801C4E9C:
/* 801C4E9C 001C1E9C  80 65 00 30 */	lwz r3, 0x30(r5)
/* 801C4EA0 001C1EA0  54 80 28 34 */	slwi r0, r4, 5
/* 801C4EA4 001C1EA4  38 80 00 00 */	li r4, 0
/* 801C4EA8 001C1EA8  7C 83 01 2E */	stwx r4, r3, r0
lbl_801C4EAC:
/* 801C4EAC 001C1EAC  3C 80 80 22 */	lis r4, lbl_8021A7A8@ha
/* 801C4EB0 001C1EB0  3C 60 80 25 */	lis r3, lbl_8024CA18@ha
/* 801C4EB4 001C1EB4  38 C4 A7 A8 */	addi r6, r4, lbl_8021A7A8@l
/* 801C4EB8 001C1EB8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C4EBC 001C1EBC  80 86 00 04 */	lwz r4, 4(r6)
/* 801C4EC0 001C1EC0  94 A3 CA 18 */	stwu r5, lbl_8024CA18@l(r3)
/* 801C4EC4 001C1EC4  80 06 00 08 */	lwz r0, 8(r6)
/* 801C4EC8 001C1EC8  90 83 00 04 */	stw r4, 4(r3)
/* 801C4ECC 001C1ECC  90 03 00 08 */	stw r0, 8(r3)
/* 801C4ED0 001C1ED0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 801C4ED4 001C1ED4  90 83 00 10 */	stw r4, 0x10(r3)
/* 801C4ED8 001C1ED8  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C4EDC 001C1EDC  90 A3 00 18 */	stw r5, 0x18(r3)
/* 801C4EE0 001C1EE0  90 83 00 1C */	stw r4, 0x1c(r3)
/* 801C4EE4 001C1EE4  90 03 00 20 */	stw r0, 0x20(r3)
/* 801C4EE8 001C1EE8  90 A3 00 24 */	stw r5, 0x24(r3)
/* 801C4EEC 001C1EEC  90 83 00 28 */	stw r4, 0x28(r3)
/* 801C4EF0 001C1EF0  90 03 00 2C */	stw r0, 0x2c(r3)
/* 801C4EF4 001C1EF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C4EF8 001C1EF8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C4EFC 001C1EFC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801C4F00 001C1F00  90 A1 00 08 */	stw r5, 8(r1)
/* 801C4F04 001C1F04  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801C4F08 001C1F08  90 81 00 0C */	stw r4, 0xc(r1)
/* 801C4F0C 001C1F0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C4F10 001C1F10  38 21 00 30 */	addi r1, r1, 0x30
/* 801C4F14 001C1F14  4E 80 00 20 */	blr 
