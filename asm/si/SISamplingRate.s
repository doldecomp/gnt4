.include "macros.inc"

.section .text  # 0x8019A8AC - 0x8019A9B4

.global SISetSamplingRate
SISetSamplingRate:
/* 8019A8AC 001978AC  7C 08 02 A6 */	mflr r0
/* 8019A8B0 001978B0  90 01 00 04 */	stw r0, 4(r1)
/* 8019A8B4 001978B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019A8B8 001978B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8019A8BC 001978BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8019A8C0 001978C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8019A8C4 001978C4  3B A3 00 00 */	addi r29, r3, 0
/* 8019A8C8 001978C8  28 1D 00 0B */	cmplwi r29, 0xb
/* 8019A8CC 001978CC  3C 60 80 22 */	lis r3, lbl_802184D0@ha
/* 8019A8D0 001978D0  3B E3 84 D0 */	addi r31, r3, lbl_802184D0@l
/* 8019A8D4 001978D4  40 81 00 08 */	ble lbl_8019A8DC
/* 8019A8D8 001978D8  3B A0 00 0B */	li r29, 0xb
lbl_8019A8DC:
/* 8019A8DC 001978DC  4B FC F2 7D */	bl OSDisableInterrupts
/* 8019A8E0 001978E0  93 AD 8E E8 */	stw r29, lbl_80277808-_SDA_BASE_(r13)
/* 8019A8E4 001978E4  7C 7E 1B 78 */	mr r30, r3
/* 8019A8E8 001978E8  4B FD A0 9D */	bl VIGetTvFormat
/* 8019A8EC 001978EC  2C 03 00 02 */	cmpwi r3, 2
/* 8019A8F0 001978F0  41 82 00 24 */	beq lbl_8019A914
/* 8019A8F4 001978F4  40 80 00 14 */	bge lbl_8019A908
/* 8019A8F8 001978F8  2C 03 00 00 */	cmpwi r3, 0
/* 8019A8FC 001978FC  41 82 00 18 */	beq lbl_8019A914
/* 8019A900 00197900  40 80 00 1C */	bge lbl_8019A91C
/* 8019A904 00197904  48 00 00 20 */	b lbl_8019A924
lbl_8019A908:
/* 8019A908 00197908  2C 03 00 05 */	cmpwi r3, 5
/* 8019A90C 0019790C  41 82 00 08 */	beq lbl_8019A914
/* 8019A910 00197910  48 00 00 14 */	b lbl_8019A924
lbl_8019A914:
/* 8019A914 00197914  7F E4 FB 78 */	mr r4, r31
/* 8019A918 00197918  48 00 00 20 */	b lbl_8019A938
lbl_8019A91C:
/* 8019A91C 0019791C  38 9F 00 30 */	addi r4, r31, 0x30
/* 8019A920 00197920  48 00 00 18 */	b lbl_8019A938
lbl_8019A924:
/* 8019A924 00197924  38 7F 00 60 */	addi r3, r31, 0x60
/* 8019A928 00197928  4C C6 31 82 */	crclr 6
/* 8019A92C 0019792C  4B FC CF 6D */	bl OSReport
/* 8019A930 00197930  3B A0 00 00 */	li r29, 0
/* 8019A934 00197934  38 9F 00 00 */	addi r4, r31, 0
lbl_8019A938:
/* 8019A938 00197938  3C 60 CC 00 */	lis r3, 0xCC00206C@ha
/* 8019A93C 0019793C  A0 03 20 6C */	lhz r0, 0xCC00206C@l(r3)
/* 8019A940 00197940  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8019A944 00197944  41 82 00 0C */	beq lbl_8019A950
/* 8019A948 00197948  38 A0 00 02 */	li r5, 2
/* 8019A94C 0019794C  48 00 00 08 */	b lbl_8019A954
lbl_8019A950:
/* 8019A950 00197950  38 A0 00 01 */	li r5, 1
lbl_8019A954:
/* 8019A954 00197954  57 A3 10 3A */	slwi r3, r29, 2
/* 8019A958 00197958  7C 04 1A 2E */	lhzx r0, r4, r3
/* 8019A95C 0019795C  7C 64 1A 14 */	add r3, r4, r3
/* 8019A960 00197960  88 83 00 02 */	lbz r4, 2(r3)
/* 8019A964 00197964  7C 65 01 D6 */	mullw r3, r5, r0
/* 8019A968 00197968  4B FF F4 A9 */	bl SISetXY
/* 8019A96C 0019796C  7F C3 F3 78 */	mr r3, r30
/* 8019A970 00197970  4B FC F2 11 */	bl OSRestoreInterrupts
/* 8019A974 00197974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019A978 00197978  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8019A97C 0019797C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8019A980 00197980  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8019A984 00197984  38 21 00 20 */	addi r1, r1, 0x20
/* 8019A988 00197988  7C 08 03 A6 */	mtlr r0
/* 8019A98C 0019798C  4E 80 00 20 */	blr 

.global SIRefreshSamplingRate
SIRefreshSamplingRate:
/* 8019A990 00197990  7C 08 02 A6 */	mflr r0
/* 8019A994 00197994  90 01 00 04 */	stw r0, 4(r1)
/* 8019A998 00197998  94 21 FF F8 */	stwu r1, -8(r1)
/* 8019A99C 0019799C  80 6D 8E E8 */	lwz r3, lbl_80277808-_SDA_BASE_(r13)
/* 8019A9A0 001979A0  4B FF FF 0D */	bl SISetSamplingRate
/* 8019A9A4 001979A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8019A9A8 001979A8  38 21 00 08 */	addi r1, r1, 8
/* 8019A9AC 001979AC  7C 08 03 A6 */	mtlr r0
/* 8019A9B0 001979B0  4E 80 00 20 */	blr 
