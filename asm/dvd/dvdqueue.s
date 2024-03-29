.include "macros.inc"

.section .text  # 0x80172774 - 0x8017296C

.global __DVDClearWaitingQueue
__DVDClearWaitingQueue:
/* 80172774 0016F774  3C 60 80 24 */	lis r3, lbl_80245318@ha
/* 80172778 0016F778  38 63 53 18 */	addi r3, r3, lbl_80245318@l
/* 8017277C 0016F77C  90 63 00 00 */	stw r3, 0(r3)
/* 80172780 0016F780  38 A3 00 08 */	addi r5, r3, 8
/* 80172784 0016F784  38 83 00 10 */	addi r4, r3, 0x10
/* 80172788 0016F788  90 63 00 04 */	stw r3, 4(r3)
/* 8017278C 0016F78C  38 63 00 18 */	addi r3, r3, 0x18
/* 80172790 0016F790  90 A5 00 00 */	stw r5, 0(r5)
/* 80172794 0016F794  90 A5 00 04 */	stw r5, 4(r5)
/* 80172798 0016F798  90 84 00 00 */	stw r4, 0(r4)
/* 8017279C 0016F79C  90 84 00 04 */	stw r4, 4(r4)
/* 801727A0 0016F7A0  90 63 00 00 */	stw r3, 0(r3)
/* 801727A4 0016F7A4  90 63 00 04 */	stw r3, 4(r3)
/* 801727A8 0016F7A8  4E 80 00 20 */	blr 

.global __DVDPushWaitingQueue
__DVDPushWaitingQueue:
/* 801727AC 0016F7AC  7C 08 02 A6 */	mflr r0
/* 801727B0 0016F7B0  90 01 00 04 */	stw r0, 4(r1)
/* 801727B4 0016F7B4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801727B8 0016F7B8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801727BC 0016F7BC  3B E4 00 00 */	addi r31, r4, 0
/* 801727C0 0016F7C0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801727C4 0016F7C4  3B C3 00 00 */	addi r30, r3, 0
/* 801727C8 0016F7C8  4B FF 73 91 */	bl OSDisableInterrupts
/* 801727CC 0016F7CC  3C 80 80 24 */	lis r4, lbl_80245318@ha
/* 801727D0 0016F7D0  57 C5 18 38 */	slwi r5, r30, 3
/* 801727D4 0016F7D4  38 04 53 18 */	addi r0, r4, lbl_80245318@l
/* 801727D8 0016F7D8  7C A0 2A 14 */	add r5, r0, r5
/* 801727DC 0016F7DC  80 85 00 04 */	lwz r4, 4(r5)
/* 801727E0 0016F7E0  93 E4 00 00 */	stw r31, 0(r4)
/* 801727E4 0016F7E4  80 05 00 04 */	lwz r0, 4(r5)
/* 801727E8 0016F7E8  90 1F 00 04 */	stw r0, 4(r31)
/* 801727EC 0016F7EC  90 BF 00 00 */	stw r5, 0(r31)
/* 801727F0 0016F7F0  93 E5 00 04 */	stw r31, 4(r5)
/* 801727F4 0016F7F4  4B FF 73 8D */	bl OSRestoreInterrupts
/* 801727F8 0016F7F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801727FC 0016F7FC  38 60 00 01 */	li r3, 1
/* 80172800 0016F800  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80172804 0016F804  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80172808 0016F808  38 21 00 18 */	addi r1, r1, 0x18
/* 8017280C 0016F80C  7C 08 03 A6 */	mtlr r0
/* 80172810 0016F810  4E 80 00 20 */	blr 

.global __DVDPopWaitingQueue
__DVDPopWaitingQueue:
/* 80172814 0016F814  7C 08 02 A6 */	mflr r0
/* 80172818 0016F818  90 01 00 04 */	stw r0, 4(r1)
/* 8017281C 0016F81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80172820 0016F820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80172824 0016F824  4B FF 73 35 */	bl OSDisableInterrupts
/* 80172828 0016F828  38 00 00 04 */	li r0, 4
/* 8017282C 0016F82C  3C 80 80 24 */	lis r4, lbl_80245318@ha
/* 80172830 0016F830  7C 09 03 A6 */	mtctr r0
/* 80172834 0016F834  38 84 53 18 */	addi r4, r4, lbl_80245318@l
/* 80172838 0016F838  3B E0 00 00 */	li r31, 0
lbl_8017283C:
/* 8017283C 0016F83C  80 04 00 00 */	lwz r0, 0(r4)
/* 80172840 0016F840  7C 00 20 40 */	cmplw r0, r4
/* 80172844 0016F844  41 82 00 48 */	beq lbl_8017288C
/* 80172848 0016F848  4B FF 73 39 */	bl OSRestoreInterrupts
/* 8017284C 0016F84C  4B FF 73 0D */	bl OSDisableInterrupts
/* 80172850 0016F850  3C 80 80 24 */	lis r4, lbl_80245318@ha
/* 80172854 0016F854  57 E5 18 38 */	slwi r5, r31, 3
/* 80172858 0016F858  38 04 53 18 */	addi r0, r4, lbl_80245318@l
/* 8017285C 0016F85C  7C A0 2A 14 */	add r5, r0, r5
/* 80172860 0016F860  83 E5 00 00 */	lwz r31, 0(r5)
/* 80172864 0016F864  80 1F 00 00 */	lwz r0, 0(r31)
/* 80172868 0016F868  90 05 00 00 */	stw r0, 0(r5)
/* 8017286C 0016F86C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80172870 0016F870  90 A4 00 04 */	stw r5, 4(r4)
/* 80172874 0016F874  4B FF 73 0D */	bl OSRestoreInterrupts
/* 80172878 0016F878  38 00 00 00 */	li r0, 0
/* 8017287C 0016F87C  90 1F 00 00 */	stw r0, 0(r31)
/* 80172880 0016F880  7F E3 FB 78 */	mr r3, r31
/* 80172884 0016F884  90 1F 00 04 */	stw r0, 4(r31)
/* 80172888 0016F888  48 00 00 18 */	b lbl_801728A0
lbl_8017288C:
/* 8017288C 0016F88C  38 84 00 08 */	addi r4, r4, 8
/* 80172890 0016F890  3B FF 00 01 */	addi r31, r31, 1
/* 80172894 0016F894  42 00 FF A8 */	bdnz lbl_8017283C
/* 80172898 0016F898  4B FF 72 E9 */	bl OSRestoreInterrupts
/* 8017289C 0016F89C  38 60 00 00 */	li r3, 0
lbl_801728A0:
/* 801728A0 0016F8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801728A4 0016F8A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801728A8 0016F8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 801728AC 0016F8AC  7C 08 03 A6 */	mtlr r0
/* 801728B0 0016F8B0  4E 80 00 20 */	blr 

.global __DVDCheckWaitingQueue
__DVDCheckWaitingQueue:
/* 801728B4 0016F8B4  7C 08 02 A6 */	mflr r0
/* 801728B8 0016F8B8  90 01 00 04 */	stw r0, 4(r1)
/* 801728BC 0016F8BC  94 21 FF F8 */	stwu r1, -8(r1)
/* 801728C0 0016F8C0  4B FF 72 99 */	bl OSDisableInterrupts
/* 801728C4 0016F8C4  38 00 00 04 */	li r0, 4
/* 801728C8 0016F8C8  3C 80 80 24 */	lis r4, lbl_80245318@ha
/* 801728CC 0016F8CC  7C 09 03 A6 */	mtctr r0
/* 801728D0 0016F8D0  38 84 53 18 */	addi r4, r4, lbl_80245318@l
lbl_801728D4:
/* 801728D4 0016F8D4  80 04 00 00 */	lwz r0, 0(r4)
/* 801728D8 0016F8D8  7C 00 20 40 */	cmplw r0, r4
/* 801728DC 0016F8DC  41 82 00 10 */	beq lbl_801728EC
/* 801728E0 0016F8E0  4B FF 72 A1 */	bl OSRestoreInterrupts
/* 801728E4 0016F8E4  38 60 00 01 */	li r3, 1
/* 801728E8 0016F8E8  48 00 00 14 */	b lbl_801728FC
lbl_801728EC:
/* 801728EC 0016F8EC  38 84 00 08 */	addi r4, r4, 8
/* 801728F0 0016F8F0  42 00 FF E4 */	bdnz lbl_801728D4
/* 801728F4 0016F8F4  4B FF 72 8D */	bl OSRestoreInterrupts
/* 801728F8 0016F8F8  38 60 00 00 */	li r3, 0
lbl_801728FC:
/* 801728FC 0016F8FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80172900 0016F900  38 21 00 08 */	addi r1, r1, 8
/* 80172904 0016F904  7C 08 03 A6 */	mtlr r0
/* 80172908 0016F908  4E 80 00 20 */	blr 

.global __DVDDequeueWaitingQueue
__DVDDequeueWaitingQueue:
/* 8017290C 0016F90C  7C 08 02 A6 */	mflr r0
/* 80172910 0016F910  90 01 00 04 */	stw r0, 4(r1)
/* 80172914 0016F914  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80172918 0016F918  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8017291C 0016F91C  7C 7F 1B 78 */	mr r31, r3
/* 80172920 0016F920  4B FF 72 39 */	bl OSDisableInterrupts
/* 80172924 0016F924  80 9F 00 04 */	lwz r4, 4(r31)
/* 80172928 0016F928  80 BF 00 00 */	lwz r5, 0(r31)
/* 8017292C 0016F92C  28 04 00 00 */	cmplwi r4, 0
/* 80172930 0016F930  41 82 00 0C */	beq lbl_8017293C
/* 80172934 0016F934  28 05 00 00 */	cmplwi r5, 0
/* 80172938 0016F938  40 82 00 10 */	bne lbl_80172948
lbl_8017293C:
/* 8017293C 0016F93C  4B FF 72 45 */	bl OSRestoreInterrupts
/* 80172940 0016F940  38 60 00 00 */	li r3, 0
/* 80172944 0016F944  48 00 00 14 */	b lbl_80172958
lbl_80172948:
/* 80172948 0016F948  90 A4 00 00 */	stw r5, 0(r4)
/* 8017294C 0016F94C  90 85 00 04 */	stw r4, 4(r5)
/* 80172950 0016F950  4B FF 72 31 */	bl OSRestoreInterrupts
/* 80172954 0016F954  38 60 00 01 */	li r3, 1
lbl_80172958:
/* 80172958 0016F958  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8017295C 0016F95C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80172960 0016F960  38 21 00 18 */	addi r1, r1, 0x18
/* 80172964 0016F964  7C 08 03 A6 */	mtlr r0
/* 80172968 0016F968  4E 80 00 20 */	blr 
