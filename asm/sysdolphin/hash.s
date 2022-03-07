.include "macros.inc"

.section .text  # 0x801CF07C - 0x801CF17C

.global HSD_HashSearch
HSD_HashSearch:
/* 801CF07C 001CC07C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CF080 001CC080  7C 08 02 A6 */	mflr r0
/* 801CF084 001CC084  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CF088 001CC088  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CF08C 001CC08C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CF090 001CC090  7C BE 2B 78 */	mr r30, r5
/* 801CF094 001CC094  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801CF098 001CC098  7C 9D 23 78 */	mr r29, r4
/* 801CF09C 001CC09C  93 81 00 10 */	stw r28, 0x10(r1)
/* 801CF0A0 001CC0A0  7C 7C 1B 78 */	mr r28, r3
/* 801CF0A4 001CC0A4  80 C3 00 00 */	lwz r6, 0(r3)
/* 801CF0A8 001CC0A8  81 86 00 3C */	lwz r12, 0x3c(r6)
/* 801CF0AC 001CC0AC  7D 89 03 A6 */	mtctr r12
/* 801CF0B0 001CC0B0  4E 80 04 21 */	bctrl 
/* 801CF0B4 001CC0B4  80 1C 00 08 */	lwz r0, 8(r28)
/* 801CF0B8 001CC0B8  7C 7F 1B 78 */	mr r31, r3
/* 801CF0BC 001CC0BC  7C 1F 00 40 */	cmplw r31, r0
/* 801CF0C0 001CC0C0  41 80 00 18 */	blt lbl_801CF0D8
/* 801CF0C4 001CC0C4  3C 80 80 22 */	lis r4, lbl_8021B2B8@ha
/* 801CF0C8 001CC0C8  38 6D 86 08 */	addi r3, r13, lbl_80276F28@sda21
/* 801CF0CC 001CC0CC  38 A4 B2 B8 */	addi r5, r4, lbl_8021B2B8@l
/* 801CF0D0 001CC0D0  38 80 00 71 */	li r4, 0x71
/* 801CF0D4 001CC0D4  48 00 6D 11 */	bl __assert
lbl_801CF0D8:
/* 801CF0D8 001CC0D8  80 7C 00 04 */	lwz r3, 4(r28)
/* 801CF0DC 001CC0DC  57 E0 10 3A */	slwi r0, r31, 2
/* 801CF0E0 001CC0E0  7F E3 00 2E */	lwzx r31, r3, r0
/* 801CF0E4 001CC0E4  28 1F 00 00 */	cmplwi r31, 0
/* 801CF0E8 001CC0E8  40 82 00 3C */	bne lbl_801CF124
/* 801CF0EC 001CC0EC  3B E0 00 00 */	li r31, 0
/* 801CF0F0 001CC0F0  48 00 00 40 */	b lbl_801CF130
/* 801CF0F4 001CC0F4  48 00 00 30 */	b lbl_801CF124
lbl_801CF0F8:
/* 801CF0F8 001CC0F8  80 DC 00 00 */	lwz r6, 0(r28)
/* 801CF0FC 001CC0FC  7F 83 E3 78 */	mr r3, r28
/* 801CF100 001CC100  7F A5 EB 78 */	mr r5, r29
/* 801CF104 001CC104  80 9F 00 04 */	lwz r4, 4(r31)
/* 801CF108 001CC108  81 86 00 40 */	lwz r12, 0x40(r6)
/* 801CF10C 001CC10C  7D 89 03 A6 */	mtctr r12
/* 801CF110 001CC110  4E 80 04 21 */	bctrl 
/* 801CF114 001CC114  2C 03 00 00 */	cmpwi r3, 0
/* 801CF118 001CC118  40 82 00 08 */	bne lbl_801CF120
/* 801CF11C 001CC11C  48 00 00 14 */	b lbl_801CF130
lbl_801CF120:
/* 801CF120 001CC120  83 FF 00 00 */	lwz r31, 0(r31)
lbl_801CF124:
/* 801CF124 001CC124  28 1F 00 00 */	cmplwi r31, 0
/* 801CF128 001CC128  40 82 FF D0 */	bne lbl_801CF0F8
/* 801CF12C 001CC12C  3B E0 00 00 */	li r31, 0
lbl_801CF130:
/* 801CF130 001CC130  28 1E 00 00 */	cmplwi r30, 0
/* 801CF134 001CC134  41 82 00 14 */	beq lbl_801CF148
/* 801CF138 001CC138  7C 1F 00 D0 */	neg r0, r31
/* 801CF13C 001CC13C  7C 00 FB 78 */	or r0, r0, r31
/* 801CF140 001CC140  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801CF144 001CC144  90 1E 00 00 */	stw r0, 0(r30)
lbl_801CF148:
/* 801CF148 001CC148  28 1F 00 00 */	cmplwi r31, 0
/* 801CF14C 001CC14C  41 82 00 0C */	beq lbl_801CF158
/* 801CF150 001CC150  80 7F 00 08 */	lwz r3, 8(r31)
/* 801CF154 001CC154  48 00 00 08 */	b lbl_801CF15C
lbl_801CF158:
/* 801CF158 001CC158  38 60 00 00 */	li r3, 0
lbl_801CF15C:
/* 801CF15C 001CC15C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CF160 001CC160  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CF164 001CC164  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CF168 001CC168  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801CF16C 001CC16C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801CF170 001CC170  7C 08 03 A6 */	mtlr r0
/* 801CF174 001CC174  38 21 00 20 */	addi r1, r1, 0x20
/* 801CF178 001CC178  4E 80 00 20 */	blr 
