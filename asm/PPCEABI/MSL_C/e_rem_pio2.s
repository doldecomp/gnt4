.include "macros.inc"

.section .text  # 0x801947F8 - 0x80194B98

.global __ieee754_rem_pio2
__ieee754_rem_pio2:
/* 801947F8 001917F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801947FC 001917FC  7C 08 02 A6 */	mflr r0
/* 80194800 00191800  3C 80 3F E9 */	lis r4, 0x3FE921FB@ha
/* 80194804 00191804  90 01 00 64 */	stw r0, 0x64(r1)
/* 80194808 00191808  38 04 21 FB */	addi r0, r4, 0x3FE921FB@l
/* 8019480C 0019180C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80194810 00191810  D8 21 00 08 */	stfd f1, 8(r1)
/* 80194814 00191814  83 E1 00 08 */	lwz r31, 8(r1)
/* 80194818 00191818  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8019481C 0019181C  7C 7E 1B 78 */	mr r30, r3
/* 80194820 00191820  57 E6 00 7E */	clrlwi r6, r31, 1
/* 80194824 00191824  7C 06 00 00 */	cmpw r6, r0
/* 80194828 00191828  41 81 00 18 */	bgt lbl_80194840
/* 8019482C 0019182C  D8 3E 00 00 */	stfd f1, 0(r30)
/* 80194830 00191830  38 60 00 00 */	li r3, 0
/* 80194834 00191834  C8 02 BF 08 */	lfd f0, lbl_8027BBA8@sda21(r2)
/* 80194838 00191838  D8 1E 00 08 */	stfd f0, 8(r30)
/* 8019483C 0019183C  48 00 03 44 */	b lbl_80194B80
lbl_80194840:
/* 80194840 00191840  3C 60 40 03 */	lis r3, 0x4002D97C@ha
/* 80194844 00191844  38 03 D9 7C */	addi r0, r3, 0x4002D97C@l
/* 80194848 00191848  7C 06 00 00 */	cmpw r6, r0
/* 8019484C 0019184C  40 80 00 DC */	bge lbl_80194928
/* 80194850 00191850  2C 1F 00 00 */	cmpwi r31, 0
/* 80194854 00191854  40 81 00 6C */	ble lbl_801948C0
/* 80194858 00191858  C8 02 BF 10 */	lfd f0, lbl_8027BBB0@sda21(r2)
/* 8019485C 0019185C  3C 06 C0 07 */	addis r0, r6, 0xc007
/* 80194860 00191860  28 00 21 FB */	cmplwi r0, 0x21fb
/* 80194864 00191864  FC 41 00 28 */	fsub f2, f1, f0
/* 80194868 00191868  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8019486C 0019186C  41 82 00 24 */	beq lbl_80194890
/* 80194870 00191870  C8 22 BF 18 */	lfd f1, lbl_8027BBB8@sda21(r2)
/* 80194874 00191874  FC 02 08 28 */	fsub f0, f2, f1
/* 80194878 00191878  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8019487C 0019187C  C8 1E 00 00 */	lfd f0, 0(r30)
/* 80194880 00191880  FC 02 00 28 */	fsub f0, f2, f0
/* 80194884 00191884  FC 00 08 28 */	fsub f0, f0, f1
/* 80194888 00191888  D8 1E 00 08 */	stfd f0, 8(r30)
/* 8019488C 0019188C  48 00 00 2C */	b lbl_801948B8
lbl_80194890:
/* 80194890 00191890  C8 02 BF 20 */	lfd f0, lbl_8027BBC0@sda21(r2)
/* 80194894 00191894  C8 22 BF 28 */	lfd f1, lbl_8027BBC8@sda21(r2)
/* 80194898 00191898  FC 42 00 28 */	fsub f2, f2, f0
/* 8019489C 0019189C  FC 02 08 28 */	fsub f0, f2, f1
/* 801948A0 001918A0  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 801948A4 001918A4  D8 1E 00 00 */	stfd f0, 0(r30)
/* 801948A8 001918A8  C8 1E 00 00 */	lfd f0, 0(r30)
/* 801948AC 001918AC  FC 02 00 28 */	fsub f0, f2, f0
/* 801948B0 001918B0  FC 00 08 28 */	fsub f0, f0, f1
/* 801948B4 001918B4  D8 1E 00 08 */	stfd f0, 8(r30)
lbl_801948B8:
/* 801948B8 001918B8  38 60 00 01 */	li r3, 1
/* 801948BC 001918BC  48 00 02 C4 */	b lbl_80194B80
lbl_801948C0:
/* 801948C0 001918C0  C8 02 BF 10 */	lfd f0, lbl_8027BBB0@sda21(r2)
/* 801948C4 001918C4  3C 06 C0 07 */	addis r0, r6, 0xc007
/* 801948C8 001918C8  28 00 21 FB */	cmplwi r0, 0x21fb
/* 801948CC 001918CC  FC 40 08 2A */	fadd f2, f0, f1
/* 801948D0 001918D0  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 801948D4 001918D4  41 82 00 24 */	beq lbl_801948F8
/* 801948D8 001918D8  C8 22 BF 18 */	lfd f1, lbl_8027BBB8@sda21(r2)
/* 801948DC 001918DC  FC 01 10 2A */	fadd f0, f1, f2
/* 801948E0 001918E0  D8 1E 00 00 */	stfd f0, 0(r30)
/* 801948E4 001918E4  C8 1E 00 00 */	lfd f0, 0(r30)
/* 801948E8 001918E8  FC 02 00 28 */	fsub f0, f2, f0
/* 801948EC 001918EC  FC 01 00 2A */	fadd f0, f1, f0
/* 801948F0 001918F0  D8 1E 00 08 */	stfd f0, 8(r30)
/* 801948F4 001918F4  48 00 00 2C */	b lbl_80194920
lbl_801948F8:
/* 801948F8 001918F8  C8 02 BF 20 */	lfd f0, lbl_8027BBC0@sda21(r2)
/* 801948FC 001918FC  C8 22 BF 28 */	lfd f1, lbl_8027BBC8@sda21(r2)
/* 80194900 00191900  FC 42 00 2A */	fadd f2, f2, f0
/* 80194904 00191904  FC 01 10 2A */	fadd f0, f1, f2
/* 80194908 00191908  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8019490C 0019190C  D8 1E 00 00 */	stfd f0, 0(r30)
/* 80194910 00191910  C8 1E 00 00 */	lfd f0, 0(r30)
/* 80194914 00191914  FC 02 00 28 */	fsub f0, f2, f0
/* 80194918 00191918  FC 01 00 2A */	fadd f0, f1, f0
/* 8019491C 0019191C  D8 1E 00 08 */	stfd f0, 8(r30)
lbl_80194920:
/* 80194920 00191920  38 60 FF FF */	li r3, -1
/* 80194924 00191924  48 00 02 5C */	b lbl_80194B80
lbl_80194928:
/* 80194928 00191928  3C 60 41 39 */	lis r3, 0x413921FB@ha
/* 8019492C 0019192C  38 03 21 FB */	addi r0, r3, 0x413921FB@l
/* 80194930 00191930  7C 06 00 00 */	cmpw r6, r0
/* 80194934 00191934  41 81 01 3C */	bgt lbl_80194A70
/* 80194938 00191938  FC 80 0A 10 */	fabs f4, f1
/* 8019493C 0019193C  3C 00 43 30 */	lis r0, 0x4330
/* 80194940 00191940  C8 22 BF 38 */	lfd f1, lbl_8027BBD8@sda21(r2)
/* 80194944 00191944  C8 02 BF 30 */	lfd f0, lbl_8027BBD0@sda21(r2)
/* 80194948 00191948  90 01 00 38 */	stw r0, 0x38(r1)
/* 8019494C 0019194C  FC 41 01 3A */	fmadd f2, f1, f4, f0
/* 80194950 00191950  C8 62 BF 58 */	lfd f3, lbl_8027BBF8@sda21(r2)
/* 80194954 00191954  C8 22 BF 10 */	lfd f1, lbl_8027BBB0@sda21(r2)
/* 80194958 00191958  C8 02 BF 18 */	lfd f0, lbl_8027BBB8@sda21(r2)
/* 8019495C 0019195C  FC 40 10 1E */	fctiwz f2, f2
/* 80194960 00191960  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80194964 00191964  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80194968 00191968  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8019496C 0019196C  2C 03 00 20 */	cmpwi r3, 0x20
/* 80194970 00191970  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80194974 00191974  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 80194978 00191978  FC A2 18 28 */	fsub f5, f2, f3
/* 8019497C 0019197C  FC 81 21 7C */	fnmsub f4, f1, f5, f4
/* 80194980 00191980  FC 20 01 72 */	fmul f1, f0, f5
/* 80194984 00191984  40 80 00 2C */	bge lbl_801949B0
/* 80194988 00191988  3C 80 80 20 */	lis r4, lbl_802056B0@ha
/* 8019498C 0019198C  54 60 10 3A */	slwi r0, r3, 2
/* 80194990 00191990  38 84 56 B0 */	addi r4, r4, lbl_802056B0@l
/* 80194994 00191994  7C 84 02 14 */	add r4, r4, r0
/* 80194998 00191998  80 04 FF FC */	lwz r0, -4(r4)
/* 8019499C 0019199C  7C 06 00 00 */	cmpw r6, r0
/* 801949A0 001919A0  41 82 00 10 */	beq lbl_801949B0
/* 801949A4 001919A4  FC 04 08 28 */	fsub f0, f4, f1
/* 801949A8 001919A8  D8 1E 00 00 */	stfd f0, 0(r30)
/* 801949AC 001919AC  48 00 00 88 */	b lbl_80194A34
lbl_801949B0:
/* 801949B0 001919B0  FC 04 08 28 */	fsub f0, f4, f1
/* 801949B4 001919B4  7C C4 A6 70 */	srawi r4, r6, 0x14
/* 801949B8 001919B8  D8 1E 00 00 */	stfd f0, 0(r30)
/* 801949BC 001919BC  80 1E 00 00 */	lwz r0, 0(r30)
/* 801949C0 001919C0  54 00 65 7E */	rlwinm r0, r0, 0xc, 0x15, 0x1f
/* 801949C4 001919C4  7C 00 20 50 */	subf r0, r0, r4
/* 801949C8 001919C8  2C 00 00 10 */	cmpwi r0, 0x10
/* 801949CC 001919CC  40 81 00 68 */	ble lbl_80194A34
/* 801949D0 001919D0  C8 02 BF 20 */	lfd f0, lbl_8027BBC0@sda21(r2)
/* 801949D4 001919D4  FC 60 20 90 */	fmr f3, f4
/* 801949D8 001919D8  C8 22 BF 28 */	lfd f1, lbl_8027BBC8@sda21(r2)
/* 801949DC 001919DC  FC 40 01 72 */	fmul f2, f0, f5
/* 801949E0 001919E0  FC 84 10 28 */	fsub f4, f4, f2
/* 801949E4 001919E4  FC 03 20 28 */	fsub f0, f3, f4
/* 801949E8 001919E8  FC 00 10 28 */	fsub f0, f0, f2
/* 801949EC 001919EC  FC 21 01 78 */	fmsub f1, f1, f5, f0
/* 801949F0 001919F0  FC 04 08 28 */	fsub f0, f4, f1
/* 801949F4 001919F4  D8 1E 00 00 */	stfd f0, 0(r30)
/* 801949F8 001919F8  80 1E 00 00 */	lwz r0, 0(r30)
/* 801949FC 001919FC  54 00 65 7E */	rlwinm r0, r0, 0xc, 0x15, 0x1f
/* 80194A00 00191A00  7C 00 20 50 */	subf r0, r0, r4
/* 80194A04 00191A04  2C 00 00 31 */	cmpwi r0, 0x31
/* 80194A08 00191A08  40 81 00 2C */	ble lbl_80194A34
/* 80194A0C 00191A0C  C8 02 BF 40 */	lfd f0, lbl_8027BBE0@sda21(r2)
/* 80194A10 00191A10  FC 40 20 90 */	fmr f2, f4
/* 80194A14 00191A14  C8 22 BF 48 */	lfd f1, lbl_8027BBE8@sda21(r2)
/* 80194A18 00191A18  FC 60 01 72 */	fmul f3, f0, f5
/* 80194A1C 00191A1C  FC 84 18 28 */	fsub f4, f4, f3
/* 80194A20 00191A20  FC 02 20 28 */	fsub f0, f2, f4
/* 80194A24 00191A24  FC 00 18 28 */	fsub f0, f0, f3
/* 80194A28 00191A28  FC 21 01 78 */	fmsub f1, f1, f5, f0
/* 80194A2C 00191A2C  FC 04 08 28 */	fsub f0, f4, f1
/* 80194A30 00191A30  D8 1E 00 00 */	stfd f0, 0(r30)
lbl_80194A34:
/* 80194A34 00191A34  C8 1E 00 00 */	lfd f0, 0(r30)
/* 80194A38 00191A38  2C 1F 00 00 */	cmpwi r31, 0
/* 80194A3C 00191A3C  FC 04 00 28 */	fsub f0, f4, f0
/* 80194A40 00191A40  FC 00 08 28 */	fsub f0, f0, f1
/* 80194A44 00191A44  D8 1E 00 08 */	stfd f0, 8(r30)
/* 80194A48 00191A48  40 80 01 38 */	bge lbl_80194B80
/* 80194A4C 00191A4C  C8 1E 00 00 */	lfd f0, 0(r30)
/* 80194A50 00191A50  7C 63 00 D0 */	neg r3, r3
/* 80194A54 00191A54  FC 00 00 50 */	fneg f0, f0
/* 80194A58 00191A58  D8 1E 00 00 */	stfd f0, 0(r30)
/* 80194A5C 00191A5C  C8 1E 00 08 */	lfd f0, 8(r30)
/* 80194A60 00191A60  FC 00 00 50 */	fneg f0, f0
/* 80194A64 00191A64  D8 1E 00 08 */	stfd f0, 8(r30)
/* 80194A68 00191A68  48 00 01 18 */	b lbl_80194B80
/* 80194A6C 00191A6C  48 00 01 14 */	b lbl_80194B80
lbl_80194A70:
/* 80194A70 00191A70  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80194A74 00191A74  7C 06 00 00 */	cmpw r6, r0
/* 80194A78 00191A78  41 80 00 18 */	blt lbl_80194A90
/* 80194A7C 00191A7C  FC 01 08 28 */	fsub f0, f1, f1
/* 80194A80 00191A80  38 60 00 00 */	li r3, 0
/* 80194A84 00191A84  D8 1E 00 08 */	stfd f0, 8(r30)
/* 80194A88 00191A88  D8 1E 00 00 */	stfd f0, 0(r30)
/* 80194A8C 00191A8C  48 00 00 F4 */	b lbl_80194B80
lbl_80194A90:
/* 80194A90 00191A90  7C C3 A6 70 */	srawi r3, r6, 0x14
/* 80194A94 00191A94  3C 00 43 30 */	lis r0, 0x4330
/* 80194A98 00191A98  38 A3 FB EA */	addi r5, r3, -1046
/* 80194A9C 00191A9C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80194AA0 00191AA0  54 A3 A0 16 */	slwi r3, r5, 0x14
/* 80194AA4 00191AA4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80194AA8 00191AA8  7C 63 30 50 */	subf r3, r3, r6
/* 80194AAC 00191AAC  C8 A2 BF 58 */	lfd f5, lbl_8027BBF8@sda21(r2)
/* 80194AB0 00191AB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80194AB4 00191AB4  38 81 00 30 */	addi r4, r1, 0x30
/* 80194AB8 00191AB8  C8 82 BF 50 */	lfd f4, lbl_8027BBF0@sda21(r2)
/* 80194ABC 00191ABC  38 C0 00 03 */	li r6, 3
/* 80194AC0 00191AC0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80194AC4 00191AC4  C8 22 BF 08 */	lfd f1, lbl_8027BBA8@sda21(r2)
/* 80194AC8 00191AC8  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 80194ACC 00191ACC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80194AD0 00191AD0  FC 00 18 1E */	fctiwz f0, f3
/* 80194AD4 00191AD4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80194AD8 00191AD8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80194ADC 00191ADC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80194AE0 00191AE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80194AE4 00191AE4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80194AE8 00191AE8  FC 40 28 28 */	fsub f2, f0, f5
/* 80194AEC 00191AEC  FC 03 10 28 */	fsub f0, f3, f2
/* 80194AF0 00191AF0  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 80194AF4 00191AF4  FC 64 00 32 */	fmul f3, f4, f0
/* 80194AF8 00191AF8  FC 00 18 1E */	fctiwz f0, f3
/* 80194AFC 00191AFC  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 80194B00 00191B00  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80194B04 00191B04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80194B08 00191B08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80194B0C 00191B0C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80194B10 00191B10  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80194B14 00191B14  FC 40 28 28 */	fsub f2, f0, f5
/* 80194B18 00191B18  FC 03 10 28 */	fsub f0, f3, f2
/* 80194B1C 00191B1C  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 80194B20 00191B20  FC 04 00 32 */	fmul f0, f4, f0
/* 80194B24 00191B24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80194B28 00191B28  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80194B2C 00191B2C  48 00 00 0C */	b lbl_80194B38
lbl_80194B30:
/* 80194B30 00191B30  38 84 FF F8 */	addi r4, r4, -8
/* 80194B34 00191B34  38 C6 FF FF */	addi r6, r6, -1
lbl_80194B38:
/* 80194B38 00191B38  C8 04 FF F8 */	lfd f0, -8(r4)
/* 80194B3C 00191B3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80194B40 00191B40  41 82 FF F0 */	beq lbl_80194B30
/* 80194B44 00191B44  3C 60 80 20 */	lis r3, lbl_802055A8@ha
/* 80194B48 00191B48  7F C4 F3 78 */	mr r4, r30
/* 80194B4C 00191B4C  39 03 55 A8 */	addi r8, r3, lbl_802055A8@l
/* 80194B50 00191B50  38 E0 00 02 */	li r7, 2
/* 80194B54 00191B54  38 61 00 18 */	addi r3, r1, 0x18
/* 80194B58 00191B58  48 00 01 35 */	bl __kernel_rem_pio2
/* 80194B5C 00191B5C  2C 1F 00 00 */	cmpwi r31, 0
/* 80194B60 00191B60  40 80 00 20 */	bge lbl_80194B80
/* 80194B64 00191B64  C8 1E 00 00 */	lfd f0, 0(r30)
/* 80194B68 00191B68  7C 63 00 D0 */	neg r3, r3
/* 80194B6C 00191B6C  FC 00 00 50 */	fneg f0, f0
/* 80194B70 00191B70  D8 1E 00 00 */	stfd f0, 0(r30)
/* 80194B74 00191B74  C8 1E 00 08 */	lfd f0, 8(r30)
/* 80194B78 00191B78  FC 00 00 50 */	fneg f0, f0
/* 80194B7C 00191B7C  D8 1E 00 08 */	stfd f0, 8(r30)
lbl_80194B80:
/* 80194B80 00191B80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80194B84 00191B84  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80194B88 00191B88  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80194B8C 00191B8C  7C 08 03 A6 */	mtlr r0
/* 80194B90 00191B90  38 21 00 60 */	addi r1, r1, 0x60
/* 80194B94 00191B94  4E 80 00 20 */	blr 
