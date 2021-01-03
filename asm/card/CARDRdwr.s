.include "macros.inc"

.section .text  # 0x8017C034 - 0x8017C2DC

.global BlockReadCallback
BlockReadCallback:
/* 8017C034 00179034  7C 08 02 A6 */	mflr r0
/* 8017C038 00179038  90 01 00 04 */	stw r0, 4(r1)
/* 8017C03C 0017903C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017C040 00179040  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017C044 00179044  3B E3 00 00 */	addi r31, r3, 0
/* 8017C048 00179048  3C 60 80 24 */	lis r3, lbl_80245540@ha
/* 8017C04C 0017904C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017C050 00179050  1C BF 01 10 */	mulli r5, r31, 0x110
/* 8017C054 00179054  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017C058 00179058  38 03 55 40 */	addi r0, r3, lbl_80245540@l
/* 8017C05C 0017905C  7C 9D 23 79 */	or. r29, r4, r4
/* 8017C060 00179060  7F C0 2A 14 */	add r30, r0, r5
/* 8017C064 00179064  41 80 00 50 */	blt lbl_8017C0B4
/* 8017C068 00179068  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 8017C06C 0017906C  38 03 02 00 */	addi r0, r3, 0x200
/* 8017C070 00179070  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 8017C074 00179074  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 8017C078 00179078  38 03 02 00 */	addi r0, r3, 0x200
/* 8017C07C 0017907C  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 8017C080 00179080  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 8017C084 00179084  38 03 02 00 */	addi r0, r3, 0x200
/* 8017C088 00179088  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 8017C08C 0017908C  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 8017C090 00179090  34 03 FF FF */	addic. r0, r3, -1
/* 8017C094 00179094  90 1E 00 AC */	stw r0, 0xac(r30)
/* 8017C098 00179098  40 81 00 1C */	ble lbl_8017C0B4
/* 8017C09C 0017909C  3C 60 80 18 */	lis r3, BlockReadCallback@ha
/* 8017C0A0 001790A0  38 83 C0 34 */	addi r4, r3, BlockReadCallback@l
/* 8017C0A4 001790A4  38 7F 00 00 */	addi r3, r31, 0
/* 8017C0A8 001790A8  4B FF E4 29 */	bl __CARDReadSegment
/* 8017C0AC 001790AC  7C 7D 1B 79 */	or. r29, r3, r3
/* 8017C0B0 001790B0  40 80 00 44 */	bge lbl_8017C0F4
lbl_8017C0B4:
/* 8017C0B4 001790B4  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 8017C0B8 001790B8  28 00 00 00 */	cmplwi r0, 0
/* 8017C0BC 001790BC  40 82 00 10 */	bne lbl_8017C0CC
/* 8017C0C0 001790C0  38 7E 00 00 */	addi r3, r30, 0
/* 8017C0C4 001790C4  38 9D 00 00 */	addi r4, r29, 0
/* 8017C0C8 001790C8  4B FF E9 2D */	bl __CARDPutControlBlock
lbl_8017C0CC:
/* 8017C0CC 001790CC  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 8017C0D0 001790D0  28 00 00 00 */	cmplwi r0, 0
/* 8017C0D4 001790D4  7C 0C 03 78 */	mr r12, r0
/* 8017C0D8 001790D8  41 82 00 1C */	beq lbl_8017C0F4
/* 8017C0DC 001790DC  38 00 00 00 */	li r0, 0
/* 8017C0E0 001790E0  7D 88 03 A6 */	mtlr r12
/* 8017C0E4 001790E4  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 8017C0E8 001790E8  38 7F 00 00 */	addi r3, r31, 0
/* 8017C0EC 001790EC  38 9D 00 00 */	addi r4, r29, 0
/* 8017C0F0 001790F0  4E 80 00 21 */	blrl 
lbl_8017C0F4:
/* 8017C0F4 001790F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017C0F8 001790F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017C0FC 001790FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017C100 00179100  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017C104 00179104  38 21 00 20 */	addi r1, r1, 0x20
/* 8017C108 00179108  7C 08 03 A6 */	mtlr r0
/* 8017C10C 0017910C  4E 80 00 20 */	blr 

.global __CARDRead
__CARDRead:
/* 8017C110 00179110  7C 08 02 A6 */	mflr r0
/* 8017C114 00179114  1D 23 01 10 */	mulli r9, r3, 0x110
/* 8017C118 00179118  90 01 00 04 */	stw r0, 4(r1)
/* 8017C11C 0017911C  3D 00 80 24 */	lis r8, lbl_80245540@ha
/* 8017C120 00179120  94 21 FF F8 */	stwu r1, -8(r1)
/* 8017C124 00179124  38 08 55 40 */	addi r0, r8, lbl_80245540@l
/* 8017C128 00179128  7D 00 4A 14 */	add r8, r0, r9
/* 8017C12C 0017912C  80 08 00 00 */	lwz r0, 0(r8)
/* 8017C130 00179130  2C 00 00 00 */	cmpwi r0, 0
/* 8017C134 00179134  40 82 00 0C */	bne lbl_8017C140
/* 8017C138 00179138  38 60 FF FD */	li r3, -3
/* 8017C13C 0017913C  48 00 00 28 */	b lbl_8017C164
lbl_8017C140:
/* 8017C140 00179140  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 8017C144 00179144  54 A0 BA 7E */	srwi r0, r5, 9
/* 8017C148 00179148  3C A0 80 18 */	lis r5, BlockReadCallback@ha
/* 8017C14C 0017914C  90 08 00 AC */	stw r0, 0xac(r8)
/* 8017C150 00179150  38 05 C0 34 */	addi r0, r5, BlockReadCallback@l
/* 8017C154 00179154  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 8017C158 00179158  7C 04 03 78 */	mr r4, r0
/* 8017C15C 0017915C  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 8017C160 00179160  4B FF E3 71 */	bl __CARDReadSegment
lbl_8017C164:
/* 8017C164 00179164  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8017C168 00179168  38 21 00 08 */	addi r1, r1, 8
/* 8017C16C 0017916C  7C 08 03 A6 */	mtlr r0
/* 8017C170 00179170  4E 80 00 20 */	blr 

.global BlockWriteCallback
BlockWriteCallback:
/* 8017C174 00179174  7C 08 02 A6 */	mflr r0
/* 8017C178 00179178  90 01 00 04 */	stw r0, 4(r1)
/* 8017C17C 0017917C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017C180 00179180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017C184 00179184  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017C188 00179188  7C 9E 23 79 */	or. r30, r4, r4
/* 8017C18C 0017918C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017C190 00179190  3B A3 00 00 */	addi r29, r3, 0
/* 8017C194 00179194  1C BD 01 10 */	mulli r5, r29, 0x110
/* 8017C198 00179198  3C 60 80 24 */	lis r3, lbl_80245540@ha
/* 8017C19C 0017919C  38 03 55 40 */	addi r0, r3, lbl_80245540@l
/* 8017C1A0 001791A0  7F E0 2A 14 */	add r31, r0, r5
/* 8017C1A4 001791A4  41 80 00 5C */	blt lbl_8017C200
/* 8017C1A8 001791A8  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 8017C1AC 001791AC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8017C1B0 001791B0  7C 03 02 14 */	add r0, r3, r0
/* 8017C1B4 001791B4  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 8017C1B8 001791B8  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 8017C1BC 001791BC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8017C1C0 001791C0  7C 03 02 14 */	add r0, r3, r0
/* 8017C1C4 001791C4  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 8017C1C8 001791C8  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 8017C1CC 001791CC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8017C1D0 001791D0  7C 03 02 14 */	add r0, r3, r0
/* 8017C1D4 001791D4  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 8017C1D8 001791D8  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8017C1DC 001791DC  34 03 FF FF */	addic. r0, r3, -1
/* 8017C1E0 001791E0  90 1F 00 AC */	stw r0, 0xac(r31)
/* 8017C1E4 001791E4  40 81 00 1C */	ble lbl_8017C200
/* 8017C1E8 001791E8  3C 60 80 18 */	lis r3, BlockWriteCallback@ha
/* 8017C1EC 001791EC  38 83 C1 74 */	addi r4, r3, BlockWriteCallback@l
/* 8017C1F0 001791F0  38 7D 00 00 */	addi r3, r29, 0
/* 8017C1F4 001791F4  4B FF E4 11 */	bl __CARDWritePage
/* 8017C1F8 001791F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8017C1FC 001791FC  40 80 00 44 */	bge lbl_8017C240
lbl_8017C200:
/* 8017C200 00179200  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 8017C204 00179204  28 00 00 00 */	cmplwi r0, 0
/* 8017C208 00179208  40 82 00 10 */	bne lbl_8017C218
/* 8017C20C 0017920C  38 7F 00 00 */	addi r3, r31, 0
/* 8017C210 00179210  38 9E 00 00 */	addi r4, r30, 0
/* 8017C214 00179214  4B FF E7 E1 */	bl __CARDPutControlBlock
lbl_8017C218:
/* 8017C218 00179218  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 8017C21C 0017921C  28 00 00 00 */	cmplwi r0, 0
/* 8017C220 00179220  7C 0C 03 78 */	mr r12, r0
/* 8017C224 00179224  41 82 00 1C */	beq lbl_8017C240
/* 8017C228 00179228  38 00 00 00 */	li r0, 0
/* 8017C22C 0017922C  7D 88 03 A6 */	mtlr r12
/* 8017C230 00179230  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 8017C234 00179234  38 7D 00 00 */	addi r3, r29, 0
/* 8017C238 00179238  38 9E 00 00 */	addi r4, r30, 0
/* 8017C23C 0017923C  4E 80 00 21 */	blrl 
lbl_8017C240:
/* 8017C240 00179240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017C244 00179244  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017C248 00179248  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017C24C 0017924C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017C250 00179250  38 21 00 20 */	addi r1, r1, 0x20
/* 8017C254 00179254  7C 08 03 A6 */	mtlr r0
/* 8017C258 00179258  4E 80 00 20 */	blr 

.global __CARDWrite
__CARDWrite:
/* 8017C25C 0017925C  7C 08 02 A6 */	mflr r0
/* 8017C260 00179260  1D 23 01 10 */	mulli r9, r3, 0x110
/* 8017C264 00179264  90 01 00 04 */	stw r0, 4(r1)
/* 8017C268 00179268  3D 00 80 24 */	lis r8, lbl_80245540@ha
/* 8017C26C 0017926C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8017C270 00179270  38 08 55 40 */	addi r0, r8, lbl_80245540@l
/* 8017C274 00179274  7D 00 4A 14 */	add r8, r0, r9
/* 8017C278 00179278  80 08 00 00 */	lwz r0, 0(r8)
/* 8017C27C 0017927C  2C 00 00 00 */	cmpwi r0, 0
/* 8017C280 00179280  40 82 00 0C */	bne lbl_8017C28C
/* 8017C284 00179284  38 60 FF FD */	li r3, -3
/* 8017C288 00179288  48 00 00 2C */	b lbl_8017C2B4
lbl_8017C28C:
/* 8017C28C 0017928C  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 8017C290 00179290  3C E0 80 18 */	lis r7, BlockWriteCallback@ha
/* 8017C294 00179294  38 07 C1 74 */	addi r0, r7, BlockWriteCallback@l
/* 8017C298 00179298  A0 E8 00 0A */	lhz r7, 0xa(r8)
/* 8017C29C 0017929C  7C A5 3B D6 */	divw r5, r5, r7
/* 8017C2A0 001792A0  90 A8 00 AC */	stw r5, 0xac(r8)
/* 8017C2A4 001792A4  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 8017C2A8 001792A8  7C 04 03 78 */	mr r4, r0
/* 8017C2AC 001792AC  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 8017C2B0 001792B0  4B FF E3 55 */	bl __CARDWritePage
lbl_8017C2B4:
/* 8017C2B4 001792B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8017C2B8 001792B8  38 21 00 08 */	addi r1, r1, 8
/* 8017C2BC 001792BC  7C 08 03 A6 */	mtlr r0
/* 8017C2C0 001792C0  4E 80 00 20 */	blr 

.global CARDGetXferredBytes
CARDGetXferredBytes:
/* 8017C2C4 001792C4  1C 03 01 10 */	mulli r0, r3, 0x110
/* 8017C2C8 001792C8  3C 60 80 24 */	lis r3, lbl_80245540@ha
/* 8017C2CC 001792CC  38 63 55 40 */	addi r3, r3, lbl_80245540@l
/* 8017C2D0 001792D0  7C 63 02 14 */	add r3, r3, r0
/* 8017C2D4 001792D4  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 8017C2D8 001792D8  4E 80 00 20 */	blr 
