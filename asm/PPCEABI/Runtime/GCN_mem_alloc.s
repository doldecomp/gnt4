.include "macros.inc"

.section .text  # 0x8018E8E4 - 0x8018E99C

.global __sys_free
__sys_free:
/* 8018E8E4 0018B8E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018E8E8 0018B8E8  7C 08 02 A6 */	mflr r0
/* 8018E8EC 0018B8EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018E8F0 0018B8F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018E8F4 0018B8F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018E8F8 0018B8F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018E8FC 0018B8FC  7C 7D 1B 78 */	mr r29, r3
/* 8018E900 0018B900  80 0D 81 20 */	lwz r0, lbl_80276A40-_SDA_BASE_(r13)
/* 8018E904 0018B904  2C 00 FF FF */	cmpwi r0, -1
/* 8018E908 0018B908  40 82 00 6C */	bne lbl_8018E974
/* 8018E90C 0018B90C  3C 60 80 20 */	lis r3, lbl_802053A0@ha
/* 8018E910 0018B910  38 63 53 A0 */	addi r3, r3, lbl_802053A0@l
/* 8018E914 0018B914  4C C6 31 82 */	crclr 6
/* 8018E918 0018B918  4B FD 8F 81 */	bl func_80167898
/* 8018E91C 0018B91C  3C 60 80 20 */	lis r3, lbl_802053D8@ha
/* 8018E920 0018B920  38 63 53 D8 */	addi r3, r3, lbl_802053D8@l
/* 8018E924 0018B924  4C C6 31 82 */	crclr 6
/* 8018E928 0018B928  4B FD 8F 71 */	bl func_80167898
/* 8018E92C 0018B92C  4B FD 7E 95 */	bl func_801667C0
/* 8018E930 0018B930  7C 7F 1B 78 */	mr r31, r3
/* 8018E934 0018B934  4B FD 7E 85 */	bl func_801667B8
/* 8018E938 0018B938  7C 7E 1B 78 */	mr r30, r3
/* 8018E93C 0018B93C  7F E3 FB 78 */	mr r3, r31
/* 8018E940 0018B940  38 A0 00 01 */	li r5, 1
/* 8018E944 0018B944  7F C4 F3 78 */	mr r4, r30
/* 8018E948 0018B948  4B FD 7A 11 */	bl func_80166358
/* 8018E94C 0018B94C  7C 7F 1B 78 */	mr r31, r3
/* 8018E950 0018B950  4B FD 7E 81 */	bl func_801667D0
/* 8018E954 0018B954  38 1F 00 1F */	addi r0, r31, 0x1f
/* 8018E958 0018B958  57 DE 00 34 */	rlwinm r30, r30, 0, 0, 0x1a
/* 8018E95C 0018B95C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8018E960 0018B960  7F C4 F3 78 */	mr r4, r30
/* 8018E964 0018B964  4B FD 7A 65 */	bl func_801663C8
/* 8018E968 0018B968  4B FD 79 E1 */	bl func_80166348
/* 8018E96C 0018B96C  7F C3 F3 78 */	mr r3, r30
/* 8018E970 0018B970  4B FD 7E 61 */	bl func_801667D0
lbl_8018E974:
/* 8018E974 0018B974  80 6D 81 20 */	lwz r3, lbl_80276A40-_SDA_BASE_(r13)
/* 8018E978 0018B978  7F A4 EB 78 */	mr r4, r29
/* 8018E97C 0018B97C  4B FD 79 51 */	bl func_801662CC
/* 8018E980 0018B980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018E984 0018B984  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018E988 0018B988  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018E98C 0018B98C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8018E990 0018B990  7C 08 03 A6 */	mtlr r0
/* 8018E994 0018B994  38 21 00 20 */	addi r1, r1, 0x20
/* 8018E998 0018B998  4E 80 00 20 */	blr 
