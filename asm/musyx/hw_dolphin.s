.include "macros.inc"

.section .text  # 0x801FBF80 - 0x801FC448

.global salCallback
salCallback:
/* 801FBF80 001F8F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBF84 001F8F84  7C 08 02 A6 */	mflr r0
/* 801FBF88 001F8F88  38 80 02 80 */	li r4, 0x280
/* 801FBF8C 001F8F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBF90 001F8F90  88 AD 93 70 */	lbz r5, lbl_80277C90-_SDA_BASE_(r13)
/* 801FBF94 001F8F94  80 6D 93 6C */	lwz r3, lbl_80277C8C-_SDA_BASE_(r13)
/* 801FBF98 001F8F98  38 A5 00 01 */	addi r5, r5, 1
/* 801FBF9C 001F8F9C  54 A0 F0 02 */	slwi r0, r5, 0x1e
/* 801FBFA0 001F8FA0  3C 63 80 00 */	addis r3, r3, 0x8000
/* 801FBFA4 001F8FA4  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 801FBFA8 001F8FA8  7C 05 00 50 */	subf r0, r5, r0
/* 801FBFAC 001F8FAC  54 00 10 3E */	rotlwi r0, r0, 2
/* 801FBFB0 001F8FB0  7C A0 2A 14 */	add r5, r0, r5
/* 801FBFB4 001F8FB4  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 801FBFB8 001F8FB8  98 AD 93 70 */	stb r5, lbl_80277C90-_SDA_BASE_(r13)
/* 801FBFBC 001F8FBC  1C 00 02 80 */	mulli r0, r0, 0x280
/* 801FBFC0 001F8FC0  7C 63 02 14 */	add r3, r3, r0
/* 801FBFC4 001F8FC4  4B F7 A6 6D */	bl AIInitDMA
/* 801FBFC8 001F8FC8  4B F7 10 B1 */	bl OSGetTick
/* 801FBFCC 001F8FCC  90 6D 93 5C */	stw r3, lbl_80277C7C-_SDA_BASE_(r13)
/* 801FBFD0 001F8FD0  80 0D 93 68 */	lwz r0, lbl_80277C88-_SDA_BASE_(r13)
/* 801FBFD4 001F8FD4  28 00 00 00 */	cmplwi r0, 0
/* 801FBFD8 001F8FD8  41 82 00 38 */	beq lbl_801FC010
/* 801FBFDC 001F8FDC  80 0D 93 60 */	lwz r0, lbl_80277C80-_SDA_BASE_(r13)
/* 801FBFE0 001F8FE0  28 00 00 00 */	cmplwi r0, 0
/* 801FBFE4 001F8FE4  40 82 00 34 */	bne lbl_801FC018
/* 801FBFE8 001F8FE8  38 00 00 01 */	li r0, 1
/* 801FBFEC 001F8FEC  90 0D 93 60 */	stw r0, lbl_80277C80-_SDA_BASE_(r13)
/* 801FBFF0 001F8FF0  4B F6 DB 7D */	bl OSEnableInterrupts
/* 801FBFF4 001F8FF4  81 8D 93 74 */	lwz r12, lbl_80277C94-_SDA_BASE_(r13)
/* 801FBFF8 001F8FF8  7D 89 03 A6 */	mtctr r12
/* 801FBFFC 001F8FFC  4E 80 04 21 */	bctrl 
/* 801FC000 001F9000  4B F6 DB 59 */	bl OSDisableInterrupts
/* 801FC004 001F9004  38 00 00 00 */	li r0, 0
/* 801FC008 001F9008  90 0D 93 60 */	stw r0, lbl_80277C80-_SDA_BASE_(r13)
/* 801FC00C 001F900C  48 00 00 0C */	b lbl_801FC018
lbl_801FC010:
/* 801FC010 001F9010  38 00 00 01 */	li r0, 1
/* 801FC014 001F9014  90 0D 93 64 */	stw r0, lbl_80277C84-_SDA_BASE_(r13)
lbl_801FC018:
/* 801FC018 001F9018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC01C 001F901C  7C 08 03 A6 */	mtlr r0
/* 801FC020 001F9020  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC024 001F9024  4E 80 00 20 */	blr 

.global dspInitCallback
dspInitCallback:
/* 801FC028 001F9028  38 00 00 01 */	li r0, 1
/* 801FC02C 001F902C  90 0D 93 68 */	stw r0, lbl_80277C88-_SDA_BASE_(r13)
/* 801FC030 001F9030  90 0D 93 58 */	stw r0, lbl_80277C78-_SDA_BASE_(r13)
/* 801FC034 001F9034  4E 80 00 20 */	blr 

.global dspResumeCallback
dspResumeCallback:
/* 801FC038 001F9038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC03C 001F903C  7C 08 02 A6 */	mflr r0
/* 801FC040 001F9040  38 60 00 01 */	li r3, 1
/* 801FC044 001F9044  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC048 001F9048  90 6D 93 68 */	stw r3, lbl_80277C88-_SDA_BASE_(r13)
/* 801FC04C 001F904C  80 0D 93 64 */	lwz r0, lbl_80277C84-_SDA_BASE_(r13)
/* 801FC050 001F9050  28 00 00 00 */	cmplwi r0, 0
/* 801FC054 001F9054  41 82 00 38 */	beq lbl_801FC08C
/* 801FC058 001F9058  38 00 00 00 */	li r0, 0
/* 801FC05C 001F905C  90 0D 93 64 */	stw r0, lbl_80277C84-_SDA_BASE_(r13)
/* 801FC060 001F9060  80 0D 93 60 */	lwz r0, lbl_80277C80-_SDA_BASE_(r13)
/* 801FC064 001F9064  28 00 00 00 */	cmplwi r0, 0
/* 801FC068 001F9068  40 82 00 24 */	bne lbl_801FC08C
/* 801FC06C 001F906C  90 6D 93 60 */	stw r3, lbl_80277C80-_SDA_BASE_(r13)
/* 801FC070 001F9070  4B F6 DA FD */	bl OSEnableInterrupts
/* 801FC074 001F9074  81 8D 93 74 */	lwz r12, lbl_80277C94-_SDA_BASE_(r13)
/* 801FC078 001F9078  7D 89 03 A6 */	mtctr r12
/* 801FC07C 001F907C  4E 80 04 21 */	bctrl 
/* 801FC080 001F9080  4B F6 DA D9 */	bl OSDisableInterrupts
/* 801FC084 001F9084  38 00 00 00 */	li r0, 0
/* 801FC088 001F9088  90 0D 93 60 */	stw r0, lbl_80277C80-_SDA_BASE_(r13)
lbl_801FC08C:
/* 801FC08C 001F908C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC090 001F9090  7C 08 03 A6 */	mtlr r0
/* 801FC094 001F9094  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC098 001F9098  4E 80 00 20 */	blr 

.global dspDoneCallback
dspDoneCallback:
/* 801FC09C 001F909C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC0A0 001F90A0  7C 08 02 A6 */	mflr r0
/* 801FC0A4 001F90A4  38 6D 93 50 */	addi r3, r13, lbl_80277C70-_SDA_BASE_
/* 801FC0A8 001F90A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC0AC 001F90AC  4B F7 0E 05 */	bl OSWakeupThread
/* 801FC0B0 001F90B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC0B4 001F90B4  7C 08 03 A6 */	mtlr r0
/* 801FC0B8 001F90B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC0BC 001F90BC  4E 80 00 20 */	blr 

.global salInitAi
salInitAi:
/* 801FC0C0 001F90C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC0C4 001F90C4  7C 08 02 A6 */	mflr r0
/* 801FC0C8 001F90C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC0CC 001F90CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC0D0 001F90D0  7C BF 2B 78 */	mr r31, r5
/* 801FC0D4 001F90D4  93 C1 00 08 */	stw r30, 8(r1)
/* 801FC0D8 001F90D8  7C 7E 1B 78 */	mr r30, r3
/* 801FC0DC 001F90DC  38 60 0A 00 */	li r3, 0xa00
/* 801FC0E0 001F90E0  48 00 03 95 */	bl salMallocPhysical
/* 801FC0E4 001F90E4  28 03 00 00 */	cmplwi r3, 0
/* 801FC0E8 001F90E8  90 6D 93 6C */	stw r3, lbl_80277C8C-_SDA_BASE_(r13)
/* 801FC0EC 001F90EC  41 82 00 80 */	beq lbl_801FC16C
/* 801FC0F0 001F90F0  38 80 00 00 */	li r4, 0
/* 801FC0F4 001F90F4  38 A0 0A 00 */	li r5, 0xa00
/* 801FC0F8 001F90F8  4B E0 93 ED */	bl memset
/* 801FC0FC 001F90FC  80 6D 93 6C */	lwz r3, lbl_80277C8C-_SDA_BASE_(r13)
/* 801FC100 001F9100  38 80 0A 00 */	li r4, 0xa00
/* 801FC104 001F9104  4B F6 A9 D5 */	bl DCFlushRange
/* 801FC108 001F9108  38 80 00 01 */	li r4, 1
/* 801FC10C 001F910C  38 00 00 00 */	li r0, 0
/* 801FC110 001F9110  3C 60 80 20 */	lis r3, salCallback@ha
/* 801FC114 001F9114  90 0D 93 64 */	stw r0, lbl_80277C84-_SDA_BASE_(r13)
/* 801FC118 001F9118  38 63 BF 80 */	addi r3, r3, salCallback@l
/* 801FC11C 001F911C  90 8D 93 68 */	stw r4, lbl_80277C88-_SDA_BASE_(r13)
/* 801FC120 001F9120  98 8D 93 70 */	stb r4, lbl_80277C90-_SDA_BASE_(r13)
/* 801FC124 001F9124  90 0D 93 60 */	stw r0, lbl_80277C80-_SDA_BASE_(r13)
/* 801FC128 001F9128  93 CD 93 74 */	stw r30, lbl_80277C94-_SDA_BASE_(r13)
/* 801FC12C 001F912C  4B F7 A4 C1 */	bl AIRegisterDMACallback
/* 801FC130 001F9130  88 0D 93 70 */	lbz r0, lbl_80277C90-_SDA_BASE_(r13)
/* 801FC134 001F9134  38 80 02 80 */	li r4, 0x280
/* 801FC138 001F9138  80 6D 93 6C */	lwz r3, lbl_80277C8C-_SDA_BASE_(r13)
/* 801FC13C 001F913C  1C 00 02 80 */	mulli r0, r0, 0x280
/* 801FC140 001F9140  3C 63 80 00 */	addis r3, r3, 0x8000
/* 801FC144 001F9144  7C 63 02 14 */	add r3, r3, r0
/* 801FC148 001F9148  4B F7 A4 E9 */	bl AIInitDMA
/* 801FC14C 001F914C  3C 60 80 26 */	lis r3, lbl_8025C190@ha
/* 801FC150 001F9150  38 80 00 20 */	li r4, 0x20
/* 801FC154 001F9154  38 63 C1 90 */	addi r3, r3, lbl_8025C190@l
/* 801FC158 001F9158  38 00 7D 00 */	li r0, 0x7d00
/* 801FC15C 001F915C  90 83 00 04 */	stw r4, 4(r3)
/* 801FC160 001F9160  38 60 00 01 */	li r3, 1
/* 801FC164 001F9164  90 1F 00 00 */	stw r0, 0(r31)
/* 801FC168 001F9168  48 00 00 08 */	b lbl_801FC170
lbl_801FC16C:
/* 801FC16C 001F916C  38 60 00 00 */	li r3, 0
lbl_801FC170:
/* 801FC170 001F9170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC174 001F9174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC178 001F9178  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FC17C 001F917C  7C 08 03 A6 */	mtlr r0
/* 801FC180 001F9180  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC184 001F9184  4E 80 00 20 */	blr 

.global salStartAi
salStartAi:
/* 801FC188 001F9188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC18C 001F918C  7C 08 02 A6 */	mflr r0
/* 801FC190 001F9190  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC194 001F9194  4B F7 A5 25 */	bl AIStartDMA
/* 801FC198 001F9198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC19C 001F919C  7C 08 03 A6 */	mtlr r0
/* 801FC1A0 001F91A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC1A4 001F91A4  4E 80 00 20 */	blr 

.global salAiGetDest
salAiGetDest:
/* 801FC1A8 001F91A8  88 6D 93 70 */	lbz r3, lbl_80277C90-_SDA_BASE_(r13)
/* 801FC1AC 001F91AC  80 8D 93 6C */	lwz r4, lbl_80277C8C-_SDA_BASE_(r13)
/* 801FC1B0 001F91B0  38 63 00 02 */	addi r3, r3, 2
/* 801FC1B4 001F91B4  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 801FC1B8 001F91B8  54 63 0F FE */	srwi r3, r3, 0x1f
/* 801FC1BC 001F91BC  7C 03 00 50 */	subf r0, r3, r0
/* 801FC1C0 001F91C0  54 00 10 3E */	rotlwi r0, r0, 2
/* 801FC1C4 001F91C4  7C 00 1A 14 */	add r0, r0, r3
/* 801FC1C8 001F91C8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801FC1CC 001F91CC  1C 00 02 80 */	mulli r0, r0, 0x280
/* 801FC1D0 001F91D0  7C 64 02 14 */	add r3, r4, r0
/* 801FC1D4 001F91D4  4E 80 00 20 */	blr 

.global salInitDsp
salInitDsp:
/* 801FC1D8 001F91D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC1DC 001F91DC  7C 08 02 A6 */	mflr r0
/* 801FC1E0 001F91E0  3C E0 80 27 */	lis r7, lbl_802748C0@ha
/* 801FC1E4 001F91E4  3C C0 80 27 */	lis r6, lbl_80274920@ha
/* 801FC1E8 001F91E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC1EC 001F91EC  3C A0 80 20 */	lis r5, dspInitCallback@ha
/* 801FC1F0 001F91F0  3C 80 80 20 */	lis r4, dspResumeCallback@ha
/* 801FC1F4 001F91F4  3C 60 80 20 */	lis r3, dspDoneCallback@ha
/* 801FC1F8 001F91F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC1FC 001F91FC  3D 00 80 22 */	lis r8, lbl_80220B00@ha
/* 801FC200 001F9200  39 87 48 C0 */	addi r12, r7, lbl_802748C0@l
/* 801FC204 001F9204  39 40 00 00 */	li r10, 0
/* 801FC208 001F9208  A1 6D 86 B0 */	lhz r11, lbl_80276FD0-_SDA_BASE_(r13)
/* 801FC20C 001F920C  3B E8 0B 00 */	addi r31, r8, lbl_80220B00@l
/* 801FC210 001F9210  39 26 49 20 */	addi r9, r6, lbl_80274920@l
/* 801FC214 001F9214  38 03 C0 9C */	addi r0, r3, dspDoneCallback@l
/* 801FC218 001F9218  38 A5 C0 28 */	addi r5, r5, dspInitCallback@l
/* 801FC21C 001F921C  38 84 C0 38 */	addi r4, r4, dspResumeCallback@l
/* 801FC220 001F9220  39 00 20 00 */	li r8, 0x2000
/* 801FC224 001F9224  38 E0 00 10 */	li r7, 0x10
/* 801FC228 001F9228  38 C0 00 30 */	li r6, 0x30
/* 801FC22C 001F922C  93 EC 00 0C */	stw r31, 0xc(r12)
/* 801FC230 001F9230  38 6D 93 50 */	addi r3, r13, lbl_80277C70-_SDA_BASE_
/* 801FC234 001F9234  91 6C 00 10 */	stw r11, 0x10(r12)
/* 801FC238 001F9238  91 4C 00 14 */	stw r10, 0x14(r12)
/* 801FC23C 001F923C  91 2C 00 18 */	stw r9, 0x18(r12)
/* 801FC240 001F9240  91 0C 00 1C */	stw r8, 0x1c(r12)
/* 801FC244 001F9244  91 4C 00 20 */	stw r10, 0x20(r12)
/* 801FC248 001F9248  B0 EC 00 24 */	sth r7, 0x24(r12)
/* 801FC24C 001F924C  B0 CC 00 26 */	sth r6, 0x26(r12)
/* 801FC250 001F9250  90 AC 00 28 */	stw r5, 0x28(r12)
/* 801FC254 001F9254  90 8C 00 2C */	stw r4, 0x2c(r12)
/* 801FC258 001F9258  90 0C 00 30 */	stw r0, 0x30(r12)
/* 801FC25C 001F925C  91 4C 00 34 */	stw r10, 0x34(r12)
/* 801FC260 001F9260  91 4C 00 04 */	stw r10, 4(r12)
/* 801FC264 001F9264  4B F6 FC 15 */	bl OSInitThreadQueue
/* 801FC268 001F9268  4B F7 CB 7D */	bl DSPInit
/* 801FC26C 001F926C  3C 60 80 27 */	lis r3, lbl_802748C0@ha
/* 801FC270 001F9270  38 63 48 C0 */	addi r3, r3, lbl_802748C0@l
/* 801FC274 001F9274  4B F7 CC 35 */	bl DSPAddTask
/* 801FC278 001F9278  38 00 00 00 */	li r0, 0
/* 801FC27C 001F927C  90 0D 93 58 */	stw r0, lbl_80277C78-_SDA_BASE_(r13)
/* 801FC280 001F9280  48 00 01 19 */	bl hwEnableIrq
lbl_801FC284:
/* 801FC284 001F9284  80 0D 93 58 */	lwz r0, lbl_80277C78-_SDA_BASE_(r13)
/* 801FC288 001F9288  28 00 00 00 */	cmplwi r0, 0
/* 801FC28C 001F928C  41 82 FF F8 */	beq lbl_801FC284
/* 801FC290 001F9290  48 00 01 41 */	bl hwDisableIrq
/* 801FC294 001F9294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC298 001F9298  38 60 00 01 */	li r3, 1
/* 801FC29C 001F929C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC2A0 001F92A0  7C 08 03 A6 */	mtlr r0
/* 801FC2A4 001F92A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC2A8 001F92A8  4E 80 00 20 */	blr 

.global salCtrlDsp
salCtrlDsp:
/* 801FC2AC 001F92AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC2B0 001F92B0  7C 08 02 A6 */	mflr r0
/* 801FC2B4 001F92B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC2B8 001F92B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC2BC 001F92BC  7C 7F 1B 78 */	mr r31, r3
/* 801FC2C0 001F92C0  48 00 00 61 */	bl salGetStartDelay
/* 801FC2C4 001F92C4  7C 64 1B 78 */	mr r4, r3
/* 801FC2C8 001F92C8  7F E3 FB 78 */	mr r3, r31
/* 801FC2CC 001F92CC  4B FF 70 6D */	bl salBuildCommandList
/* 801FC2D0 001F92D0  38 00 00 00 */	li r0, 0
/* 801FC2D4 001F92D4  83 ED 92 D8 */	lwz r31, lbl_80277BF8-_SDA_BASE_(r13)
/* 801FC2D8 001F92D8  90 0D 93 68 */	stw r0, lbl_80277C88-_SDA_BASE_(r13)
/* 801FC2DC 001F92DC  4B F6 8B 45 */	bl PPCSync
/* 801FC2E0 001F92E0  A0 0D 92 D4 */	lhz r0, lbl_80277BF4-_SDA_BASE_(r13)
/* 801FC2E4 001F92E4  64 03 BA BE */	oris r3, r0, 0xbabe
/* 801FC2E8 001F92E8  4B F7 CA E9 */	bl DSPSendMailToDSP
lbl_801FC2EC:
/* 801FC2EC 001F92EC  4B F7 CA AD */	bl DSPCheckMailToDSP
/* 801FC2F0 001F92F0  28 03 00 00 */	cmplwi r3, 0
/* 801FC2F4 001F92F4  40 82 FF F8 */	bne lbl_801FC2EC
/* 801FC2F8 001F92F8  7F E3 FB 78 */	mr r3, r31
/* 801FC2FC 001F92FC  4B F7 CA D5 */	bl DSPSendMailToDSP
lbl_801FC300:
/* 801FC300 001F9300  4B F7 CA 99 */	bl DSPCheckMailToDSP
/* 801FC304 001F9304  28 03 00 00 */	cmplwi r3, 0
/* 801FC308 001F9308  40 82 FF F8 */	bne lbl_801FC300
/* 801FC30C 001F930C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC310 001F9310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC314 001F9314  7C 08 03 A6 */	mtlr r0
/* 801FC318 001F9318  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC31C 001F931C  4E 80 00 20 */	blr 

.global salGetStartDelay
salGetStartDelay:
/* 801FC320 001F9320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC324 001F9324  7C 08 02 A6 */	mflr r0
/* 801FC328 001F9328  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC32C 001F932C  4B F7 0D 4D */	bl OSGetTick
/* 801FC330 001F9330  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 801FC334 001F9334  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 801FC338 001F9338  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 801FC33C 001F933C  38 84 DE 83 */	addi r4, r4, 0x431BDE83@l
/* 801FC340 001F9340  80 AD 93 5C */	lwz r5, lbl_80277C7C-_SDA_BASE_(r13)
/* 801FC344 001F9344  54 00 F0 BE */	srwi r0, r0, 2
/* 801FC348 001F9348  7C 04 00 16 */	mulhwu r0, r4, r0
/* 801FC34C 001F934C  7C 65 18 50 */	subf r3, r5, r3
/* 801FC350 001F9350  54 63 18 38 */	slwi r3, r3, 3
/* 801FC354 001F9354  54 00 8B FE */	srwi r0, r0, 0xf
/* 801FC358 001F9358  7C 63 03 96 */	divwu r3, r3, r0
/* 801FC35C 001F935C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC360 001F9360  7C 08 03 A6 */	mtlr r0
/* 801FC364 001F9364  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC368 001F9368  4E 80 00 20 */	blr 

.global hwInitIrq
hwInitIrq:
/* 801FC36C 001F936C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC370 001F9370  7C 08 02 A6 */	mflr r0
/* 801FC374 001F9374  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC378 001F9378  4B F6 D7 E1 */	bl OSDisableInterrupts
/* 801FC37C 001F937C  38 00 00 01 */	li r0, 1
/* 801FC380 001F9380  90 6D 93 48 */	stw r3, lbl_80277C68-_SDA_BASE_(r13)
/* 801FC384 001F9384  B0 0D 93 4C */	sth r0, lbl_80277C6C-_SDA_BASE_(r13)
/* 801FC388 001F9388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC38C 001F938C  7C 08 03 A6 */	mtlr r0
/* 801FC390 001F9390  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC394 001F9394  4E 80 00 20 */	blr 

.global hwEnableIrq
hwEnableIrq:
/* 801FC398 001F9398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC39C 001F939C  7C 08 02 A6 */	mflr r0
/* 801FC3A0 001F93A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC3A4 001F93A4  A0 6D 93 4C */	lhz r3, lbl_80277C6C-_SDA_BASE_(r13)
/* 801FC3A8 001F93A8  38 63 FF FF */	addi r3, r3, -1
/* 801FC3AC 001F93AC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 801FC3B0 001F93B0  B0 6D 93 4C */	sth r3, lbl_80277C6C-_SDA_BASE_(r13)
/* 801FC3B4 001F93B4  40 82 00 0C */	bne lbl_801FC3C0
/* 801FC3B8 001F93B8  80 6D 93 48 */	lwz r3, lbl_80277C68-_SDA_BASE_(r13)
/* 801FC3BC 001F93BC  4B F6 D7 C5 */	bl OSRestoreInterrupts
lbl_801FC3C0:
/* 801FC3C0 001F93C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC3C4 001F93C4  7C 08 03 A6 */	mtlr r0
/* 801FC3C8 001F93C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC3CC 001F93CC  4E 80 00 20 */	blr 

.global hwDisableIrq
hwDisableIrq:
/* 801FC3D0 001F93D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC3D4 001F93D4  7C 08 02 A6 */	mflr r0
/* 801FC3D8 001F93D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC3DC 001F93DC  A0 6D 93 4C */	lhz r3, lbl_80277C6C-_SDA_BASE_(r13)
/* 801FC3E0 001F93E0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 801FC3E4 001F93E4  38 63 00 01 */	addi r3, r3, 1
/* 801FC3E8 001F93E8  B0 6D 93 4C */	sth r3, lbl_80277C6C-_SDA_BASE_(r13)
/* 801FC3EC 001F93EC  40 82 00 0C */	bne lbl_801FC3F8
/* 801FC3F0 001F93F0  4B F6 D7 69 */	bl OSDisableInterrupts
/* 801FC3F4 001F93F4  90 6D 93 48 */	stw r3, lbl_80277C68-_SDA_BASE_(r13)
lbl_801FC3F8:
/* 801FC3F8 001F93F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC3FC 001F93FC  7C 08 03 A6 */	mtlr r0
/* 801FC400 001F9400  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC404 001F9404  4E 80 00 20 */	blr 

.global hwIRQEnterCritical
hwIRQEnterCritical:
/* 801FC408 001F9408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC40C 001F940C  7C 08 02 A6 */	mflr r0
/* 801FC410 001F9410  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC414 001F9414  4B F6 D7 45 */	bl OSDisableInterrupts
/* 801FC418 001F9418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC41C 001F941C  7C 08 03 A6 */	mtlr r0
/* 801FC420 001F9420  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC424 001F9424  4E 80 00 20 */	blr 

.global hwIRQLeaveCritical
hwIRQLeaveCritical:
/* 801FC428 001F9428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC42C 001F942C  7C 08 02 A6 */	mflr r0
/* 801FC430 001F9430  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC434 001F9434  4B F6 D7 39 */	bl OSEnableInterrupts
/* 801FC438 001F9438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC43C 001F943C  7C 08 03 A6 */	mtlr r0
/* 801FC440 001F9440  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC444 001F9444  4E 80 00 20 */	blr 
