.include "macros.inc"

.section .text  # 0x8016A730 - 0x8016A7B4

.global __OSReboot
__OSReboot:
/* 8016A730 00167730  7C 08 02 A6 */	mflr r0
/* 8016A734 00167734  90 01 00 04 */	stw r0, 4(r1)
/* 8016A738 00167738  94 21 FD 18 */	stwu r1, -0x2e8(r1)
/* 8016A73C 0016773C  93 E1 02 E4 */	stw r31, 0x2e4(r1)
/* 8016A740 00167740  3B E4 00 00 */	addi r31, r4, 0
/* 8016A744 00167744  93 C1 02 E0 */	stw r30, 0x2e0(r1)
/* 8016A748 00167748  3B C3 00 00 */	addi r30, r3, 0
/* 8016A74C 0016774C  4B FF F4 0D */	bl OSDisableInterrupts
/* 8016A750 00167750  3C 60 81 28 */	lis r3, 0x8128
/* 8016A754 00167754  4B FF C0 7D */	bl OSSetArenaLo
/* 8016A758 00167758  3C 60 81 2F */	lis r3, 0x812f
/* 8016A75C 0016775C  4B FF C0 6D */	bl OSSetArenaHi
/* 8016A760 00167760  38 61 00 18 */	addi r3, r1, 0x18
/* 8016A764 00167764  4B FF CB B5 */	bl OSClearContext
/* 8016A768 00167768  38 61 00 18 */	addi r3, r1, 0x18
/* 8016A76C 0016776C  4B FF C9 E5 */	bl OSSetCurrentContext
/* 8016A770 00167770  38 00 00 00 */	li r0, 0
/* 8016A774 00167774  90 01 00 10 */	stw r0, 0x10(r1)
/* 8016A778 00167778  38 7F 00 00 */	addi r3, r31, 0
/* 8016A77C 0016777C  67 C4 80 00 */	oris r4, r30, 0x8000
/* 8016A780 00167780  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016A784 00167784  4B FF DF 85 */	bl __OSBootDol
/* 8016A788 00167788  80 01 02 EC */	lwz r0, 0x2ec(r1)
/* 8016A78C 0016778C  83 E1 02 E4 */	lwz r31, 0x2e4(r1)
/* 8016A790 00167790  83 C1 02 E0 */	lwz r30, 0x2e0(r1)
/* 8016A794 00167794  38 21 02 E8 */	addi r1, r1, 0x2e8
/* 8016A798 00167798  7C 08 03 A6 */	mtlr r0
/* 8016A79C 0016779C  4E 80 00 20 */	blr 

.global OSGetSaveRegion
OSGetSaveRegion:
/* 8016A7A0 001677A0  80 0D 8B A0 */	lwz r0, lbl_802774C0-_SDA_BASE_(r13)
/* 8016A7A4 001677A4  90 03 00 00 */	stw r0, 0(r3)
/* 8016A7A8 001677A8  80 0D 8B A4 */	lwz r0, lbl_802774C4-_SDA_BASE_(r13)
/* 8016A7AC 001677AC  90 04 00 00 */	stw r0, 0(r4)
/* 8016A7B0 001677B0  4E 80 00 20 */	blr 
