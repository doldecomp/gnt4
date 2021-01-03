.include "macros.inc"

.section .text  # 0x80164EFC - 0x801659C8

.global __OSFPRInit
__OSFPRInit:
/* 80164EFC 00161EFC  7C 60 00 A6 */	mfmsr r3
/* 80164F00 00161F00  60 63 20 00 */	ori r3, r3, 0x2000
/* 80164F04 00161F04  7C 60 01 24 */	mtmsr r3
/* 80164F08 00161F08  7C 78 E2 A6 */	mfspr r3, 0x398
/* 80164F0C 00161F0C  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 80164F10 00161F10  41 82 00 8C */	beq lbl_80164F9C
/* 80164F14 00161F14  3C 60 80 27 */	lis r3, lbl_80277450@ha
/* 80164F18 00161F18  38 63 74 50 */	addi r3, r3, lbl_80277450@l
/* 80164F1C 00161F1C  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 80164F20 00161F20  10 20 00 90 */	ps_mr p1, p0
/* 80164F24 00161F24  10 40 00 90 */	ps_mr p2, p0
/* 80164F28 00161F28  10 60 00 90 */	ps_mr p3, p0
/* 80164F2C 00161F2C  10 80 00 90 */	ps_mr p4, p0
/* 80164F30 00161F30  10 A0 00 90 */	ps_mr p5, p0
/* 80164F34 00161F34  10 C0 00 90 */	ps_mr p6, p0
/* 80164F38 00161F38  10 E0 00 90 */	ps_mr p7, p0
/* 80164F3C 00161F3C  11 00 00 90 */	ps_mr p8, p0
/* 80164F40 00161F40  11 20 00 90 */	ps_mr p9, p0
/* 80164F44 00161F44  11 40 00 90 */	ps_mr p10, p0
/* 80164F48 00161F48  11 60 00 90 */	ps_mr p11, p0
/* 80164F4C 00161F4C  11 80 00 90 */	ps_mr p12, p0
/* 80164F50 00161F50  11 A0 00 90 */	ps_mr p13, p0
/* 80164F54 00161F54  11 C0 00 90 */	ps_mr p14, p0
/* 80164F58 00161F58  11 E0 00 90 */	ps_mr p15, p0
/* 80164F5C 00161F5C  12 00 00 90 */	ps_mr p16, p0
/* 80164F60 00161F60  12 20 00 90 */	ps_mr p17, p0
/* 80164F64 00161F64  12 40 00 90 */	ps_mr p18, p0
/* 80164F68 00161F68  12 60 00 90 */	ps_mr p19, p0
/* 80164F6C 00161F6C  12 80 00 90 */	ps_mr p20, p0
/* 80164F70 00161F70  12 A0 00 90 */	ps_mr p21, p0
/* 80164F74 00161F74  12 C0 00 90 */	ps_mr p22, p0
/* 80164F78 00161F78  12 E0 00 90 */	ps_mr p23, p0
/* 80164F7C 00161F7C  13 00 00 90 */	ps_mr p24, p0
/* 80164F80 00161F80  13 20 00 90 */	ps_mr p25, p0
/* 80164F84 00161F84  13 40 00 90 */	ps_mr p26, p0
/* 80164F88 00161F88  13 60 00 90 */	ps_mr p27, p0
/* 80164F8C 00161F8C  13 80 00 90 */	ps_mr p28, p0
/* 80164F90 00161F90  13 A0 00 90 */	ps_mr p29, p0
/* 80164F94 00161F94  13 C0 00 90 */	ps_mr p30, p0
/* 80164F98 00161F98  13 E0 00 90 */	ps_mr p31, p0
lbl_80164F9C:
/* 80164F9C 00161F9C  C8 0D 8B 28 */	lfd f0, lbl_80277448-_SDA_BASE_(r13)
/* 80164FA0 00161FA0  FC 20 00 90 */	fmr f1, f0
/* 80164FA4 00161FA4  FC 40 00 90 */	fmr f2, f0
/* 80164FA8 00161FA8  FC 60 00 90 */	fmr f3, f0
/* 80164FAC 00161FAC  FC 80 00 90 */	fmr f4, f0
/* 80164FB0 00161FB0  FC A0 00 90 */	fmr f5, f0
/* 80164FB4 00161FB4  FC C0 00 90 */	fmr f6, f0
/* 80164FB8 00161FB8  FC E0 00 90 */	fmr f7, f0
/* 80164FBC 00161FBC  FD 00 00 90 */	fmr f8, f0
/* 80164FC0 00161FC0  FD 20 00 90 */	fmr f9, f0
/* 80164FC4 00161FC4  FD 40 00 90 */	fmr f10, f0
/* 80164FC8 00161FC8  FD 60 00 90 */	fmr f11, f0
/* 80164FCC 00161FCC  FD 80 00 90 */	fmr f12, f0
/* 80164FD0 00161FD0  FD A0 00 90 */	fmr f13, f0
/* 80164FD4 00161FD4  FD C0 00 90 */	fmr f14, f0
/* 80164FD8 00161FD8  FD E0 00 90 */	fmr f15, f0
/* 80164FDC 00161FDC  FE 00 00 90 */	fmr f16, f0
/* 80164FE0 00161FE0  FE 20 00 90 */	fmr f17, f0
/* 80164FE4 00161FE4  FE 40 00 90 */	fmr f18, f0
/* 80164FE8 00161FE8  FE 60 00 90 */	fmr f19, f0
/* 80164FEC 00161FEC  FE 80 00 90 */	fmr f20, f0
/* 80164FF0 00161FF0  FE A0 00 90 */	fmr f21, f0
/* 80164FF4 00161FF4  FE C0 00 90 */	fmr f22, f0
/* 80164FF8 00161FF8  FE E0 00 90 */	fmr f23, f0
/* 80164FFC 00161FFC  FF 00 00 90 */	fmr f24, f0
/* 80165000 00162000  FF 20 00 90 */	fmr f25, f0
/* 80165004 00162004  FF 40 00 90 */	fmr f26, f0
/* 80165008 00162008  FF 60 00 90 */	fmr f27, f0
/* 8016500C 0016200C  FF 80 00 90 */	fmr f28, f0
/* 80165010 00162010  FF A0 00 90 */	fmr f29, f0
/* 80165014 00162014  FF C0 00 90 */	fmr f30, f0
/* 80165018 00162018  FF E0 00 90 */	fmr f31, f0
/* 8016501C 0016201C  FD FE 05 8E */	mtfsf 0xff, f0
/* 80165020 00162020  4E 80 00 20 */	blr 

.global OSGetConsoleType
OSGetConsoleType:
/* 80165024 00162024  80 6D 8B 18 */	lwz r3, lbl_80277438-_SDA_BASE_(r13)
/* 80165028 00162028  28 03 00 00 */	cmplwi r3, 0
/* 8016502C 0016202C  41 82 00 10 */	beq lbl_8016503C
/* 80165030 00162030  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80165034 00162034  28 03 00 00 */	cmplwi r3, 0
/* 80165038 00162038  40 82 00 10 */	bne lbl_80165048
lbl_8016503C:
/* 8016503C 0016203C  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 80165040 00162040  38 63 00 02 */	addi r3, r3, 0x10000002@l
/* 80165044 00162044  48 00 00 04 */	b lbl_80165048
lbl_80165048:
/* 80165048 00162048  4E 80 00 20 */	blr 

.global InquiryCallback
InquiryCallback:
/* 8016504C 0016204C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80165050 00162050  2C 00 00 00 */	cmpwi r0, 0
/* 80165054 00162054  41 82 00 08 */	beq lbl_8016505C
/* 80165058 00162058  48 00 00 20 */	b lbl_80165078
lbl_8016505C:
/* 8016505C 0016205C  3C 60 80 24 */	lis r3, lbl_802446A0@ha
/* 80165060 00162060  38 63 46 A0 */	addi r3, r3, lbl_802446A0@l
/* 80165064 00162064  A0 03 00 02 */	lhz r0, 2(r3)
/* 80165068 00162068  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 8016506C 0016206C  60 00 80 00 */	ori r0, r0, 0x8000
/* 80165070 00162070  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
/* 80165074 00162074  48 00 00 10 */	b lbl_80165084
lbl_80165078:
/* 80165078 00162078  38 00 00 01 */	li r0, 1
/* 8016507C 0016207C  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 80165080 00162080  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
lbl_80165084:
/* 80165084 00162084  4E 80 00 20 */	blr 

.global OSInit
OSInit:
/* 80165088 00162088  7C 08 02 A6 */	mflr r0
/* 8016508C 0016208C  90 01 00 04 */	stw r0, 4(r1)
/* 80165090 00162090  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80165094 00162094  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80165098 00162098  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8016509C 0016209C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801650A0 001620A0  80 0D 8B 38 */	lwz r0, lbl_80277458-_SDA_BASE_(r13)
/* 801650A4 001620A4  3C 60 80 24 */	lis r3, lbl_802446A0@ha
/* 801650A8 001620A8  3B E3 46 A0 */	addi r31, r3, lbl_802446A0@l
/* 801650AC 001620AC  2C 00 00 00 */	cmpwi r0, 0
/* 801650B0 001620B0  3C 60 80 21 */	lis r3, lbl_80214808@ha
/* 801650B4 001620B4  3B C3 48 08 */	addi r30, r3, lbl_80214808@l
/* 801650B8 001620B8  40 82 04 94 */	bne lbl_8016554C
/* 801650BC 001620BC  38 00 00 01 */	li r0, 1
/* 801650C0 001620C0  90 0D 8B 38 */	stw r0, lbl_80277458-_SDA_BASE_(r13)
/* 801650C4 001620C4  48 00 7F BD */	bl __OSGetSystemTime
/* 801650C8 001620C8  90 8D 8B 4C */	stw r4, lbl_8027746C-_SDA_BASE_(r13)
/* 801650CC 001620CC  90 6D 8B 48 */	stw r3, lbl_80277468-_SDA_BASE_(r13)
/* 801650D0 001620D0  48 00 4A 89 */	bl OSDisableInterrupts
/* 801650D4 001620D4  38 7F 00 50 */	addi r3, r31, 0x50
/* 801650D8 001620D8  48 00 30 A9 */	bl __OSGetExecParams
/* 801650DC 001620DC  38 60 00 00 */	li r3, 0
/* 801650E0 001620E0  4B FF FD 5D */	bl PPCMtmmcr0
/* 801650E4 001620E4  38 60 00 00 */	li r3, 0
/* 801650E8 001620E8  4B FF FD 5D */	bl PPCMtmmcr1
/* 801650EC 001620EC  38 60 00 00 */	li r3, 0
/* 801650F0 001620F0  4B FF FD 5D */	bl PPCMtpmc1
/* 801650F4 001620F4  38 60 00 00 */	li r3, 0
/* 801650F8 001620F8  4B FF FD 5D */	bl PPCMtpmc2
/* 801650FC 001620FC  38 60 00 00 */	li r3, 0
/* 80165100 00162100  4B FF FD 5D */	bl PPCMtpmc3
/* 80165104 00162104  38 60 00 00 */	li r3, 0
/* 80165108 00162108  4B FF FD 5D */	bl PPCMtpmc4
/* 8016510C 0016210C  4B FF FD C1 */	bl PPCDisableSpeculation
/* 80165110 00162110  4B FF FD E5 */	bl PPCSetFpNonIEEEMode
/* 80165114 00162114  38 00 00 00 */	li r0, 0
/* 80165118 00162118  3C 80 80 00 */	lis r4, 0x800000F4@ha
/* 8016511C 0016211C  90 0D 8B 1C */	stw r0, lbl_8027743C-_SDA_BASE_(r13)
/* 80165120 00162120  90 8D 8B 18 */	stw r4, lbl_80277438-_SDA_BASE_(r13)
/* 80165124 00162124  90 0D 8C 54 */	stw r0, lbl_80277574-_SDA_BASE_(r13)
/* 80165128 00162128  80 64 00 F4 */	lwz r3, 0x800000F4@l(r4)
/* 8016512C 0016212C  28 03 00 00 */	cmplwi r3, 0
/* 80165130 00162130  41 82 00 34 */	beq lbl_80165164
/* 80165134 00162134  38 03 00 0C */	addi r0, r3, 0xc
/* 80165138 00162138  90 0D 8B 1C */	stw r0, lbl_8027743C-_SDA_BASE_(r13)
/* 8016513C 0016213C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80165140 00162140  80 6D 8B 1C */	lwz r3, lbl_8027743C-_SDA_BASE_(r13)
/* 80165144 00162144  90 0D 8D 58 */	stw r0, lbl_80277678-_SDA_BASE_(r13)
/* 80165148 00162148  80 03 00 00 */	lwz r0, 0(r3)
/* 8016514C 0016214C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80165150 00162150  98 04 30 E8 */	stb r0, 0x30e8(r4)
/* 80165154 00162154  80 0D 8D 58 */	lwz r0, lbl_80277678-_SDA_BASE_(r13)
/* 80165158 00162158  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8016515C 0016215C  98 04 30 E9 */	stb r0, 0x30e9(r4)
/* 80165160 00162160  48 00 00 28 */	b lbl_80165188
lbl_80165164:
/* 80165164 00162164  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80165168 00162168  28 00 00 00 */	cmplwi r0, 0
/* 8016516C 0016216C  41 82 00 1C */	beq lbl_80165188
/* 80165170 00162170  88 64 30 E8 */	lbz r3, 0x30e8(r4)
/* 80165174 00162174  38 0D 8B 20 */	addi r0, r13, lbl_80277440-_SDA_BASE_
/* 80165178 00162178  90 6D 8B 20 */	stw r3, lbl_80277440-_SDA_BASE_(r13)
/* 8016517C 0016217C  90 0D 8B 1C */	stw r0, lbl_8027743C-_SDA_BASE_(r13)
/* 80165180 00162180  88 04 30 E9 */	lbz r0, 0x30e9(r4)
/* 80165184 00162184  90 0D 8D 58 */	stw r0, lbl_80277678-_SDA_BASE_(r13)
lbl_80165188:
/* 80165188 00162188  38 00 00 01 */	li r0, 1
/* 8016518C 0016218C  80 6D 8B 18 */	lwz r3, lbl_80277438-_SDA_BASE_(r13)
/* 80165190 00162190  90 0D 8C 54 */	stw r0, lbl_80277574-_SDA_BASE_(r13)
/* 80165194 00162194  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80165198 00162198  28 03 00 00 */	cmplwi r3, 0
/* 8016519C 0016219C  40 82 00 10 */	bne lbl_801651AC
/* 801651A0 001621A0  3C 60 80 29 */	lis r3, 0x8028E580@ha
/* 801651A4 001621A4  38 63 E5 80 */	addi r3, r3, 0x8028E580@l
/* 801651A8 001621A8  48 00 00 04 */	b lbl_801651AC
lbl_801651AC:
/* 801651AC 001621AC  48 00 16 25 */	bl OSSetArenaLo
/* 801651B0 001621B0  80 6D 8B 18 */	lwz r3, lbl_80277438-_SDA_BASE_(r13)
/* 801651B4 001621B4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 801651B8 001621B8  28 00 00 00 */	cmplwi r0, 0
/* 801651BC 001621BC  40 82 00 30 */	bne lbl_801651EC
/* 801651C0 001621C0  80 6D 8B 1C */	lwz r3, lbl_8027743C-_SDA_BASE_(r13)
/* 801651C4 001621C4  28 03 00 00 */	cmplwi r3, 0
/* 801651C8 001621C8  41 82 00 24 */	beq lbl_801651EC
/* 801651CC 001621CC  80 03 00 00 */	lwz r0, 0(r3)
/* 801651D0 001621D0  28 00 00 02 */	cmplwi r0, 2
/* 801651D4 001621D4  40 80 00 18 */	bge lbl_801651EC
/* 801651D8 001621D8  3C 60 80 29 */	lis r3, 0x8028C578@ha
/* 801651DC 001621DC  38 63 C5 78 */	addi r3, r3, 0x8028C578@l
/* 801651E0 001621E0  38 03 00 1F */	addi r0, r3, 0x1f
/* 801651E4 001621E4  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 801651E8 001621E8  48 00 15 E9 */	bl OSSetArenaLo
lbl_801651EC:
/* 801651EC 001621EC  80 6D 8B 18 */	lwz r3, lbl_80277438-_SDA_BASE_(r13)
/* 801651F0 001621F0  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801651F4 001621F4  28 03 00 00 */	cmplwi r3, 0
/* 801651F8 001621F8  40 82 00 10 */	bne lbl_80165208
/* 801651FC 001621FC  3C 60 81 70 */	lis r3, 0x81700000@ha
/* 80165200 00162200  38 63 00 00 */	addi r3, r3, 0x81700000@l
/* 80165204 00162204  48 00 00 04 */	b lbl_80165208
lbl_80165208:
/* 80165208 00162208  48 00 15 C1 */	bl OSSetArenaHi
/* 8016520C 0016220C  48 00 03 5D */	bl OSExceptionInit
/* 80165210 00162210  48 00 6A A9 */	bl __OSInitSystemCall
/* 80165214 00162214  48 00 07 B5 */	bl OSInitAlarm
/* 80165218 00162218  48 00 51 AD */	bl __OSModuleInit
/* 8016521C 0016221C  48 00 49 B9 */	bl __OSInterruptInit
/* 80165220 00162220  3C 60 80 17 */	lis r3, __OSResetSWInterruptHandler@ha
/* 80165224 00162224  38 83 AC 38 */	addi r4, r3, __OSResetSWInterruptHandler@l
/* 80165228 00162228  38 60 00 16 */	li r3, 0x16
/* 8016522C 0016222C  48 00 49 79 */	bl __OSSetInterruptHandler
/* 80165230 00162230  48 00 24 F5 */	bl __OSContextInit
/* 80165234 00162234  48 00 1B D5 */	bl __OSCacheInit
/* 80165238 00162238  48 03 32 39 */	bl EXIInit
/* 8016523C 0016223C  48 03 48 75 */	bl SIInit
/* 80165240 00162240  48 00 5F 1D */	bl __OSInitSram
/* 80165244 00162244  48 00 6A DD */	bl __OSThreadInit
/* 80165248 00162248  48 00 15 BD */	bl __OSInitAudioSystem
/* 8016524C 0016224C  4B FF FC 69 */	bl PPCMfhid2
/* 80165250 00162250  54 63 00 80 */	rlwinm r3, r3, 0, 2, 0
/* 80165254 00162254  4B FF FC 69 */	bl PPCMthid2
/* 80165258 00162258  80 0D 8B 40 */	lwz r0, lbl_80277460-_SDA_BASE_(r13)
/* 8016525C 0016225C  2C 00 00 00 */	cmpwi r0, 0
/* 80165260 00162260  40 82 00 08 */	bne lbl_80165268
/* 80165264 00162264  48 00 53 45 */	bl __OSInitMemoryProtection
lbl_80165268:
/* 80165268 00162268  38 7E 00 44 */	addi r3, r30, 0x44
/* 8016526C 0016226C  4C C6 31 82 */	crclr 6
/* 80165270 00162270  48 00 26 29 */	bl OSReport
/* 80165274 00162274  38 7E 00 54 */	addi r3, r30, 0x54
/* 80165278 00162278  4C C6 31 82 */	crclr 6
/* 8016527C 0016227C  38 9E 00 6C */	addi r4, r30, 0x6c
/* 80165280 00162280  38 BE 00 78 */	addi r5, r30, 0x78
/* 80165284 00162284  48 00 26 15 */	bl OSReport
/* 80165288 00162288  38 7E 00 84 */	addi r3, r30, 0x84
/* 8016528C 0016228C  4C C6 31 82 */	crclr 6
/* 80165290 00162290  48 00 26 09 */	bl OSReport
/* 80165294 00162294  80 6D 8B 18 */	lwz r3, lbl_80277438-_SDA_BASE_(r13)
/* 80165298 00162298  28 03 00 00 */	cmplwi r3, 0
/* 8016529C 0016229C  41 82 00 10 */	beq lbl_801652AC
/* 801652A0 001622A0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801652A4 001622A4  28 04 00 00 */	cmplwi r4, 0
/* 801652A8 001622A8  40 82 00 10 */	bne lbl_801652B8
lbl_801652AC:
/* 801652AC 001622AC  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 801652B0 001622B0  38 83 00 02 */	addi r4, r3, 0x10000002@l
/* 801652B4 001622B4  48 00 00 04 */	b lbl_801652B8
lbl_801652B8:
/* 801652B8 001622B8  54 83 00 06 */	rlwinm r3, r4, 0, 0, 3
/* 801652BC 001622BC  3C 00 10 00 */	lis r0, 0x1000
/* 801652C0 001622C0  7C 03 00 00 */	cmpw r3, r0
/* 801652C4 001622C4  41 82 00 34 */	beq lbl_801652F8
/* 801652C8 001622C8  40 80 00 10 */	bge lbl_801652D8
/* 801652CC 001622CC  2C 03 00 00 */	cmpwi r3, 0
/* 801652D0 001622D0  41 82 00 18 */	beq lbl_801652E8
/* 801652D4 001622D4  48 00 00 B8 */	b lbl_8016538C
lbl_801652D8:
/* 801652D8 001622D8  3C 00 20 00 */	lis r0, 0x2000
/* 801652DC 001622DC  7C 03 00 00 */	cmpw r3, r0
/* 801652E0 001622E0  41 82 00 18 */	beq lbl_801652F8
/* 801652E4 001622E4  48 00 00 A8 */	b lbl_8016538C
lbl_801652E8:
/* 801652E8 001622E8  4C C6 31 82 */	crclr 6
/* 801652EC 001622EC  38 7E 00 94 */	addi r3, r30, 0x94
/* 801652F0 001622F0  48 00 25 A9 */	bl OSReport
/* 801652F4 001622F4  48 00 00 A4 */	b lbl_80165398
lbl_801652F8:
/* 801652F8 001622F8  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 801652FC 001622FC  54 85 01 3E */	clrlwi r5, r4, 4
/* 80165300 00162300  38 03 00 02 */	addi r0, r3, 0x10000002@l
/* 80165304 00162304  7C 05 00 00 */	cmpw r5, r0
/* 80165308 00162308  41 82 00 48 */	beq lbl_80165350
/* 8016530C 0016230C  40 80 00 14 */	bge lbl_80165320
/* 80165310 00162310  7C 05 18 00 */	cmpw r5, r3
/* 80165314 00162314  41 82 00 1C */	beq lbl_80165330
/* 80165318 00162318  40 80 00 28 */	bge lbl_80165340
/* 8016531C 0016231C  48 00 00 54 */	b lbl_80165370
lbl_80165320:
/* 80165320 00162320  38 03 00 04 */	addi r0, r3, 4
/* 80165324 00162324  7C 05 00 00 */	cmpw r5, r0
/* 80165328 00162328  40 80 00 48 */	bge lbl_80165370
/* 8016532C 0016232C  48 00 00 34 */	b lbl_80165360
lbl_80165330:
/* 80165330 00162330  38 7E 00 A0 */	addi r3, r30, 0xa0
/* 80165334 00162334  4C C6 31 82 */	crclr 6
/* 80165338 00162338  48 00 25 61 */	bl OSReport
/* 8016533C 0016233C  48 00 00 5C */	b lbl_80165398
lbl_80165340:
/* 80165340 00162340  38 7E 00 B0 */	addi r3, r30, 0xb0
/* 80165344 00162344  4C C6 31 82 */	crclr 6
/* 80165348 00162348  48 00 25 51 */	bl OSReport
/* 8016534C 0016234C  48 00 00 4C */	b lbl_80165398
lbl_80165350:
/* 80165350 00162350  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 80165354 00162354  4C C6 31 82 */	crclr 6
/* 80165358 00162358  48 00 25 41 */	bl OSReport
/* 8016535C 0016235C  48 00 00 3C */	b lbl_80165398
lbl_80165360:
/* 80165360 00162360  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 80165364 00162364  4C C6 31 82 */	crclr 6
/* 80165368 00162368  48 00 25 31 */	bl OSReport
/* 8016536C 0016236C  48 00 00 2C */	b lbl_80165398
lbl_80165370:
/* 80165370 00162370  54 86 01 3E */	clrlwi r6, r4, 4
/* 80165374 00162374  4C C6 31 82 */	crclr 6
/* 80165378 00162378  7C 85 23 78 */	mr r5, r4
/* 8016537C 0016237C  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 80165380 00162380  38 86 FF FD */	addi r4, r6, -3
/* 80165384 00162384  48 00 25 15 */	bl OSReport
/* 80165388 00162388  48 00 00 10 */	b lbl_80165398
lbl_8016538C:
/* 8016538C 0016238C  4C C6 31 82 */	crclr 6
/* 80165390 00162390  38 6D 81 14 */	addi r3, r13, lbl_80276A34-_SDA_BASE_
/* 80165394 00162394  48 00 25 05 */	bl OSReport
lbl_80165398:
/* 80165398 00162398  80 8D 8B 18 */	lwz r4, lbl_80277438-_SDA_BASE_(r13)
/* 8016539C 0016239C  38 7E 00 FC */	addi r3, r30, 0xfc
/* 801653A0 001623A0  4C C6 31 82 */	crclr 6
/* 801653A4 001623A4  80 04 00 28 */	lwz r0, 0x28(r4)
/* 801653A8 001623A8  54 04 65 3E */	srwi r4, r0, 0x14
/* 801653AC 001623AC  48 00 24 ED */	bl OSReport
/* 801653B0 001623B0  48 00 14 09 */	bl OSGetArenaHi
/* 801653B4 001623B4  7C 7D 1B 78 */	mr r29, r3
/* 801653B8 001623B8  48 00 14 09 */	bl OSGetArenaLo
/* 801653BC 001623BC  7C 64 1B 78 */	mr r4, r3
/* 801653C0 001623C0  4C C6 31 82 */	crclr 6
/* 801653C4 001623C4  7F A5 EB 78 */	mr r5, r29
/* 801653C8 001623C8  38 7E 01 0C */	addi r3, r30, 0x10c
/* 801653CC 001623CC  48 00 24 CD */	bl OSReport
/* 801653D0 001623D0  80 6D 81 10 */	lwz r3, lbl_80276A30-_SDA_BASE_(r13)
/* 801653D4 001623D4  48 00 05 C9 */	bl OSRegisterVersion
/* 801653D8 001623D8  80 6D 8B 1C */	lwz r3, lbl_8027743C-_SDA_BASE_(r13)
/* 801653DC 001623DC  28 03 00 00 */	cmplwi r3, 0
/* 801653E0 001623E0  41 82 00 14 */	beq lbl_801653F4
/* 801653E4 001623E4  80 03 00 00 */	lwz r0, 0(r3)
/* 801653E8 001623E8  28 00 00 02 */	cmplwi r0, 2
/* 801653EC 001623EC  41 80 00 08 */	blt lbl_801653F4
/* 801653F0 001623F0  48 02 81 81 */	bl EnableMetroTRKInterrupts
lbl_801653F4:
/* 801653F4 001623F4  48 00 58 0D */	bl OSGetResetCode
/* 801653F8 001623F8  54 60 00 00 */	rlwinm r0, r3, 0, 0, 0
/* 801653FC 001623FC  28 00 00 00 */	cmplwi r0, 0
/* 80165400 00162400  41 82 00 0C */	beq lbl_8016540C
/* 80165404 00162404  38 00 00 01 */	li r0, 1
/* 80165408 00162408  48 00 00 08 */	b lbl_80165410
lbl_8016540C:
/* 8016540C 0016240C  38 00 00 00 */	li r0, 0
lbl_80165410:
/* 80165410 00162410  2C 00 00 00 */	cmpwi r0, 0
/* 80165414 00162414  40 82 00 28 */	bne lbl_8016543C
/* 80165418 00162418  48 00 13 A1 */	bl OSGetArenaHi
/* 8016541C 0016241C  7C 7E 1B 78 */	mr r30, r3
/* 80165420 00162420  48 00 13 A1 */	bl OSGetArenaLo
/* 80165424 00162424  7F C3 F0 50 */	subf r30, r3, r30
/* 80165428 00162428  48 00 13 99 */	bl OSGetArenaLo
/* 8016542C 0016242C  7F C5 F3 78 */	mr r5, r30
/* 80165430 00162430  38 80 00 00 */	li r4, 0
/* 80165434 00162434  4B EA 00 B1 */	bl memset
/* 80165438 00162438  48 00 00 C0 */	b lbl_801654F8
lbl_8016543C:
/* 8016543C 0016243C  3B BF 00 5C */	addi r29, r31, 0x5c
/* 80165440 00162440  80 1D 00 00 */	lwz r0, 0(r29)
/* 80165444 00162444  28 00 00 00 */	cmplwi r0, 0
/* 80165448 00162448  40 82 00 28 */	bne lbl_80165470
/* 8016544C 0016244C  48 00 13 6D */	bl OSGetArenaHi
/* 80165450 00162450  7C 7E 1B 78 */	mr r30, r3
/* 80165454 00162454  48 00 13 6D */	bl OSGetArenaLo
/* 80165458 00162458  7F C3 F0 50 */	subf r30, r3, r30
/* 8016545C 0016245C  48 00 13 65 */	bl OSGetArenaLo
/* 80165460 00162460  7F C5 F3 78 */	mr r5, r30
/* 80165464 00162464  38 80 00 00 */	li r4, 0
/* 80165468 00162468  4B EA 00 7D */	bl memset
/* 8016546C 0016246C  48 00 00 8C */	b lbl_801654F8
lbl_80165470:
/* 80165470 00162470  48 00 13 51 */	bl OSGetArenaLo
/* 80165474 00162474  80 1D 00 00 */	lwz r0, 0(r29)
/* 80165478 00162478  7C 03 00 40 */	cmplw r3, r0
/* 8016547C 0016247C  40 80 00 7C */	bge lbl_801654F8
/* 80165480 00162480  48 00 13 39 */	bl OSGetArenaHi
/* 80165484 00162484  80 1D 00 00 */	lwz r0, 0(r29)
/* 80165488 00162488  7C 03 00 40 */	cmplw r3, r0
/* 8016548C 0016248C  41 81 00 28 */	bgt lbl_801654B4
/* 80165490 00162490  48 00 13 29 */	bl OSGetArenaHi
/* 80165494 00162494  7C 7E 1B 78 */	mr r30, r3
/* 80165498 00162498  48 00 13 29 */	bl OSGetArenaLo
/* 8016549C 0016249C  7F C3 F0 50 */	subf r30, r3, r30
/* 801654A0 001624A0  48 00 13 21 */	bl OSGetArenaLo
/* 801654A4 001624A4  7F C5 F3 78 */	mr r5, r30
/* 801654A8 001624A8  38 80 00 00 */	li r4, 0
/* 801654AC 001624AC  4B EA 00 39 */	bl memset
/* 801654B0 001624B0  48 00 00 48 */	b lbl_801654F8
lbl_801654B4:
/* 801654B4 001624B4  48 00 13 0D */	bl OSGetArenaLo
/* 801654B8 001624B8  80 1D 00 00 */	lwz r0, 0(r29)
/* 801654BC 001624BC  7F C3 00 50 */	subf r30, r3, r0
/* 801654C0 001624C0  48 00 13 01 */	bl OSGetArenaLo
/* 801654C4 001624C4  7F C5 F3 78 */	mr r5, r30
/* 801654C8 001624C8  38 80 00 00 */	li r4, 0
/* 801654CC 001624CC  4B EA 00 19 */	bl memset
/* 801654D0 001624D0  48 00 12 E9 */	bl OSGetArenaHi
/* 801654D4 001624D4  38 9F 00 60 */	addi r4, r31, 0x60
/* 801654D8 001624D8  83 A4 00 00 */	lwz r29, 0(r4)
/* 801654DC 001624DC  7C 03 E8 40 */	cmplw r3, r29
/* 801654E0 001624E0  40 81 00 18 */	ble lbl_801654F8
/* 801654E4 001624E4  48 00 12 D5 */	bl OSGetArenaHi
/* 801654E8 001624E8  7C BD 18 50 */	subf r5, r29, r3
/* 801654EC 001624EC  7F A3 EB 78 */	mr r3, r29
/* 801654F0 001624F0  38 80 00 00 */	li r4, 0
/* 801654F4 001624F4  4B E9 FF F1 */	bl memset
lbl_801654F8:
/* 801654F8 001624F8  48 00 46 75 */	bl OSEnableInterrupts
/* 801654FC 001624FC  80 0D 8B 40 */	lwz r0, lbl_80277460-_SDA_BASE_(r13)
/* 80165500 00162500  2C 00 00 00 */	cmpwi r0, 0
/* 80165504 00162504  40 82 00 48 */	bne lbl_8016554C
/* 80165508 00162508  48 00 A7 F1 */	bl DVDInit
/* 8016550C 0016250C  80 0D 8B 24 */	lwz r0, lbl_80277444-_SDA_BASE_(r13)
/* 80165510 00162510  2C 00 00 00 */	cmpwi r0, 0
/* 80165514 00162514  41 82 00 18 */	beq lbl_8016552C
/* 80165518 00162518  3C 60 00 01 */	lis r3, 0x00009000@ha
/* 8016551C 0016251C  38 03 90 00 */	addi r0, r3, 0x00009000@l
/* 80165520 00162520  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 80165524 00162524  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
/* 80165528 00162528  48 00 00 24 */	b lbl_8016554C
lbl_8016552C:
/* 8016552C 0016252C  7F E3 FB 78 */	mr r3, r31
/* 80165530 00162530  38 80 00 20 */	li r4, 0x20
/* 80165534 00162534  48 00 15 79 */	bl DCInvalidateRange
/* 80165538 00162538  3C 60 80 16 */	lis r3, InquiryCallback@ha
/* 8016553C 0016253C  38 A3 50 4C */	addi r5, r3, InquiryCallback@l
/* 80165540 00162540  7F E4 FB 78 */	mr r4, r31
/* 80165544 00162544  38 7F 00 20 */	addi r3, r31, 0x20
/* 80165548 00162548  48 00 CA 21 */	bl DVDInquiryAsync
lbl_8016554C:
/* 8016554C 0016254C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80165550 00162550  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80165554 00162554  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80165558 00162558  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8016555C 0016255C  38 21 00 18 */	addi r1, r1, 0x18
/* 80165560 00162560  7C 08 03 A6 */	mtlr r0
/* 80165564 00162564  4E 80 00 20 */	blr 

.global OSExceptionInit
OSExceptionInit:
/* 80165568 00162568  7C 08 02 A6 */	mflr r0
/* 8016556C 0016256C  90 01 00 04 */	stw r0, 4(r1)
/* 80165570 00162570  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80165574 00162574  BE 81 00 08 */	stmw r20, 8(r1)
/* 80165578 00162578  3C 60 80 00 */	lis r3, 0x80000060@ha
/* 8016557C 0016257C  80 03 00 60 */	lwz r0, 0x80000060@l(r3)
/* 80165580 00162580  3C 80 80 16 */	lis r4, lbl_801658A8@ha
/* 80165584 00162584  3B C4 58 A8 */	addi r30, r4, lbl_801658A8@l
/* 80165588 00162588  3C A0 80 16 */	lis r5, OSExceptionVector@ha
/* 8016558C 0016258C  83 3E 00 00 */	lwz r25, 0(r30)
/* 80165590 00162590  3C 80 80 16 */	lis r4, lbl_801658D8@ha
/* 80165594 00162594  38 A5 58 40 */	addi r5, r5, OSExceptionVector@l
/* 80165598 00162598  38 84 58 D8 */	addi r4, r4, lbl_801658D8@l
/* 8016559C 0016259C  3C C0 80 21 */	lis r6, lbl_80214808@ha
/* 801655A0 001625A0  28 00 00 00 */	cmplwi r0, 0
/* 801655A4 001625A4  7C B8 2B 78 */	mr r24, r5
/* 801655A8 001625A8  3B A6 48 08 */	addi r29, r6, lbl_80214808@l
/* 801655AC 001625AC  7E E5 20 50 */	subf r23, r5, r4
/* 801655B0 001625B0  3A 83 00 60 */	addi r20, r3, 0x60
/* 801655B4 001625B4  40 82 00 4C */	bne lbl_80165600
/* 801655B8 001625B8  38 7D 01 60 */	addi r3, r29, 0x160
/* 801655BC 001625BC  4C C6 31 82 */	crclr 6
/* 801655C0 001625C0  48 00 7F F9 */	bl DBPrintf
/* 801655C4 001625C4  3C 80 80 16 */	lis r4, __OSDBIntegrator@ha
/* 801655C8 001625C8  3C 60 80 16 */	lis r3, __OSDBJump@ha
/* 801655CC 001625CC  38 03 58 0C */	addi r0, r3, __OSDBJump@l
/* 801655D0 001625D0  38 84 57 E8 */	addi r4, r4, __OSDBIntegrator@l
/* 801655D4 001625D4  7E A4 00 50 */	subf r21, r4, r0
/* 801655D8 001625D8  7E 83 A3 78 */	mr r3, r20
/* 801655DC 001625DC  7E A5 AB 78 */	mr r5, r21
/* 801655E0 001625E0  4B E9 FF ED */	bl memcpy
/* 801655E4 001625E4  7E 83 A3 78 */	mr r3, r20
/* 801655E8 001625E8  7E A4 AB 78 */	mr r4, r21
/* 801655EC 001625EC  48 00 15 4D */	bl DCFlushRangeNoSync
/* 801655F0 001625F0  7C 00 04 AC */	sync 0
/* 801655F4 001625F4  7E 83 A3 78 */	mr r3, r20
/* 801655F8 001625F8  7E A4 AB 78 */	mr r4, r21
/* 801655FC 001625FC  48 00 15 95 */	bl ICInvalidateRange
lbl_80165600:
/* 80165600 00162600  3C 80 80 16 */	lis r4, __OSDBJump@ha
/* 80165604 00162604  3C 60 80 16 */	lis r3, __OSSetExceptionHandler@ha
/* 80165608 00162608  3B E4 58 0C */	addi r31, r4, __OSDBJump@l
/* 8016560C 0016260C  38 03 58 10 */	addi r0, r3, __OSSetExceptionHandler@l
/* 80165610 00162610  3B 9D 01 24 */	addi r28, r29, 0x124
/* 80165614 00162614  7F 7F 00 50 */	subf r27, r31, r0
/* 80165618 00162618  3B 40 00 00 */	li r26, 0
/* 8016561C 0016261C  48 00 00 04 */	b lbl_80165620
lbl_80165620:
/* 80165620 00162620  3C 60 80 16 */	lis r3, lbl_80165898@ha
/* 80165624 00162624  3A A3 58 98 */	addi r21, r3, lbl_80165898@l
/* 80165628 00162628  3E C0 60 00 */	lis r22, 0x6000
/* 8016562C 0016262C  48 00 00 04 */	b lbl_80165630
lbl_80165630:
/* 80165630 00162630  48 00 01 48 */	b lbl_80165778
lbl_80165634:
/* 80165634 00162634  80 6D 8B 1C */	lwz r3, lbl_8027743C-_SDA_BASE_(r13)
/* 80165638 00162638  28 03 00 00 */	cmplwi r3, 0
/* 8016563C 0016263C  41 82 00 34 */	beq lbl_80165670
/* 80165640 00162640  80 03 00 00 */	lwz r0, 0(r3)
/* 80165644 00162644  28 00 00 02 */	cmplwi r0, 2
/* 80165648 00162648  41 80 00 28 */	blt lbl_80165670
/* 8016564C 0016264C  7F 43 D3 78 */	mr r3, r26
/* 80165650 00162650  48 00 7F 4D */	bl __DBIsExceptionMarked
/* 80165654 00162654  2C 03 00 00 */	cmpwi r3, 0
/* 80165658 00162658  41 82 00 18 */	beq lbl_80165670
/* 8016565C 0016265C  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80165660 00162660  4C C6 31 82 */	crclr 6
/* 80165664 00162664  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 80165668 00162668  48 00 7F 51 */	bl DBPrintf
/* 8016566C 0016266C  48 00 01 04 */	b lbl_80165770
lbl_80165670:
/* 80165670 00162670  57 54 06 3E */	clrlwi r20, r26, 0x18
/* 80165674 00162674  7F 20 A3 78 */	or r0, r25, r20
/* 80165678 00162678  90 1E 00 00 */	stw r0, 0(r30)
/* 8016567C 0016267C  7F 43 D3 78 */	mr r3, r26
/* 80165680 00162680  48 00 7F 1D */	bl __DBIsExceptionMarked
/* 80165684 00162684  2C 03 00 00 */	cmpwi r3, 0
/* 80165688 00162688  41 82 00 28 */	beq lbl_801656B0
/* 8016568C 0016268C  7E 84 A3 78 */	mr r4, r20
/* 80165690 00162690  4C C6 31 82 */	crclr 6
/* 80165694 00162694  38 7D 01 AC */	addi r3, r29, 0x1ac
/* 80165698 00162698  48 00 7F 21 */	bl DBPrintf
/* 8016569C 0016269C  7E A3 AB 78 */	mr r3, r21
/* 801656A0 001626A0  7F E4 FB 78 */	mr r4, r31
/* 801656A4 001626A4  7F 65 DB 78 */	mr r5, r27
/* 801656A8 001626A8  4B E9 FF 25 */	bl memcpy
/* 801656AC 001626AC  48 00 00 90 */	b lbl_8016573C
lbl_801656B0:
/* 801656B0 001626B0  7E A4 AB 78 */	mr r4, r21
/* 801656B4 001626B4  48 00 00 04 */	b lbl_801656B8
lbl_801656B8:
/* 801656B8 001626B8  28 1B 00 00 */	cmplwi r27, 0
/* 801656BC 001626BC  38 7B 00 03 */	addi r3, r27, 3
/* 801656C0 001626C0  54 63 F0 BE */	srwi r3, r3, 2
/* 801656C4 001626C4  40 81 00 78 */	ble lbl_8016573C
/* 801656C8 001626C8  54 60 E8 FE */	srwi r0, r3, 3
/* 801656CC 001626CC  28 00 00 00 */	cmplwi r0, 0
/* 801656D0 001626D0  7C 09 03 A6 */	mtctr r0
/* 801656D4 001626D4  41 82 00 54 */	beq lbl_80165728
/* 801656D8 001626D8  48 00 00 04 */	b lbl_801656DC
lbl_801656DC:
/* 801656DC 001626DC  92 C4 00 00 */	stw r22, 0(r4)
/* 801656E0 001626E0  38 84 00 04 */	addi r4, r4, 4
/* 801656E4 001626E4  92 C4 00 00 */	stw r22, 0(r4)
/* 801656E8 001626E8  38 84 00 04 */	addi r4, r4, 4
/* 801656EC 001626EC  92 C4 00 00 */	stw r22, 0(r4)
/* 801656F0 001626F0  38 84 00 04 */	addi r4, r4, 4
/* 801656F4 001626F4  92 C4 00 00 */	stw r22, 0(r4)
/* 801656F8 001626F8  38 84 00 04 */	addi r4, r4, 4
/* 801656FC 001626FC  92 C4 00 00 */	stw r22, 0(r4)
/* 80165700 00162700  38 84 00 04 */	addi r4, r4, 4
/* 80165704 00162704  92 C4 00 00 */	stw r22, 0(r4)
/* 80165708 00162708  38 84 00 04 */	addi r4, r4, 4
/* 8016570C 0016270C  92 C4 00 00 */	stw r22, 0(r4)
/* 80165710 00162710  38 84 00 04 */	addi r4, r4, 4
/* 80165714 00162714  92 C4 00 00 */	stw r22, 0(r4)
/* 80165718 00162718  38 84 00 04 */	addi r4, r4, 4
/* 8016571C 0016271C  42 00 FF C0 */	bdnz lbl_801656DC
/* 80165720 00162720  70 63 00 07 */	andi. r3, r3, 7
/* 80165724 00162724  41 82 00 18 */	beq lbl_8016573C
lbl_80165728:
/* 80165728 00162728  7C 69 03 A6 */	mtctr r3
/* 8016572C 0016272C  48 00 00 04 */	b lbl_80165730
lbl_80165730:
/* 80165730 00162730  92 C4 00 00 */	stw r22, 0(r4)
/* 80165734 00162734  38 84 00 04 */	addi r4, r4, 4
/* 80165738 00162738  42 00 FF F8 */	bdnz lbl_80165730
lbl_8016573C:
/* 8016573C 0016273C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80165740 00162740  7F 04 C3 78 */	mr r4, r24
/* 80165744 00162744  7E E5 BB 78 */	mr r5, r23
/* 80165748 00162748  3E 83 80 00 */	addis r20, r3, 0x8000
/* 8016574C 0016274C  7E 83 A3 78 */	mr r3, r20
/* 80165750 00162750  4B E9 FE 7D */	bl memcpy
/* 80165754 00162754  7E 83 A3 78 */	mr r3, r20
/* 80165758 00162758  7E E4 BB 78 */	mr r4, r23
/* 8016575C 0016275C  48 00 13 DD */	bl DCFlushRangeNoSync
/* 80165760 00162760  7C 00 04 AC */	sync 0
/* 80165764 00162764  7E 83 A3 78 */	mr r3, r20
/* 80165768 00162768  7E E4 BB 78 */	mr r4, r23
/* 8016576C 0016276C  48 00 14 25 */	bl ICInvalidateRange
lbl_80165770:
/* 80165770 00162770  3B 9C 00 04 */	addi r28, r28, 4
/* 80165774 00162774  3B 5A 00 01 */	addi r26, r26, 1
lbl_80165778:
/* 80165778 00162778  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8016577C 0016277C  28 00 00 0F */	cmplwi r0, 0xf
/* 80165780 00162780  41 80 FE B4 */	blt lbl_80165634
/* 80165784 00162784  3C 60 80 00 */	lis r3, 0x80003000@ha
/* 80165788 00162788  38 03 30 00 */	addi r0, r3, 0x80003000@l
/* 8016578C 0016278C  90 0D 8B 3C */	stw r0, lbl_8027745C-_SDA_BASE_(r13)
/* 80165790 00162790  3A 80 00 00 */	li r20, 0
/* 80165794 00162794  48 00 00 04 */	b lbl_80165798
lbl_80165798:
/* 80165798 00162798  3C 60 80 16 */	lis r3, OSDefaultExceptionHandler@ha
/* 8016579C 0016279C  3A E3 58 DC */	addi r23, r3, OSDefaultExceptionHandler@l
/* 801657A0 001627A0  48 00 00 04 */	b lbl_801657A4
lbl_801657A4:
/* 801657A4 001627A4  48 00 00 14 */	b lbl_801657B8
lbl_801657A8:
/* 801657A8 001627A8  7E 83 A3 78 */	mr r3, r20
/* 801657AC 001627AC  7E E4 BB 78 */	mr r4, r23
/* 801657B0 001627B0  48 00 00 61 */	bl __OSSetExceptionHandler
/* 801657B4 001627B4  3A 94 00 01 */	addi r20, r20, 1
lbl_801657B8:
/* 801657B8 001627B8  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 801657BC 001627BC  28 00 00 0F */	cmplwi r0, 0xf
/* 801657C0 001627C0  41 80 FF E8 */	blt lbl_801657A8
/* 801657C4 001627C4  93 3E 00 00 */	stw r25, 0(r30)
/* 801657C8 001627C8  38 7D 01 DC */	addi r3, r29, 0x1dc
/* 801657CC 001627CC  4C C6 31 82 */	crclr 6
/* 801657D0 001627D0  48 00 7D E9 */	bl DBPrintf
/* 801657D4 001627D4  BA 81 00 08 */	lmw r20, 8(r1)
/* 801657D8 001627D8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801657DC 001627DC  38 21 00 38 */	addi r1, r1, 0x38
/* 801657E0 001627E0  7C 08 03 A6 */	mtlr r0
/* 801657E4 001627E4  4E 80 00 20 */	blr 

.global __OSDBIntegrator
__OSDBIntegrator:
/* 801657E8 001627E8  38 A0 00 40 */	li r5, 0x40
/* 801657EC 001627EC  7C 68 02 A6 */	mflr r3
/* 801657F0 001627F0  90 65 00 0C */	stw r3, 0xc(r5)
/* 801657F4 001627F4  80 65 00 08 */	lwz r3, 8(r5)
/* 801657F8 001627F8  64 63 80 00 */	oris r3, r3, 0x8000
/* 801657FC 001627FC  7C 68 03 A6 */	mtlr r3
/* 80165800 00162800  38 60 00 30 */	li r3, 0x30
/* 80165804 00162804  7C 60 01 24 */	mtmsr r3
/* 80165808 00162808  4E 80 00 20 */	blr 

.global __OSDBJump
__OSDBJump:
/* 8016580C 0016280C  48 00 00 63 */	bla 0x60

.global __OSSetExceptionHandler
__OSSetExceptionHandler:
/* 80165810 00162810  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80165814 00162814  80 6D 8B 3C */	lwz r3, lbl_8027745C-_SDA_BASE_(r13)
/* 80165818 00162818  54 00 10 3A */	slwi r0, r0, 2
/* 8016581C 0016281C  7C A3 02 14 */	add r5, r3, r0
/* 80165820 00162820  80 65 00 00 */	lwz r3, 0(r5)
/* 80165824 00162824  90 85 00 00 */	stw r4, 0(r5)
/* 80165828 00162828  4E 80 00 20 */	blr 

.global __OSGetExceptionHandler
__OSGetExceptionHandler:
/* 8016582C 0016282C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80165830 00162830  80 6D 8B 3C */	lwz r3, lbl_8027745C-_SDA_BASE_(r13)
/* 80165834 00162834  54 00 10 3A */	slwi r0, r0, 2
/* 80165838 00162838  7C 63 00 2E */	lwzx r3, r3, r0
/* 8016583C 0016283C  4E 80 00 20 */	blr 

.global OSExceptionVector
OSExceptionVector:
/* 80165840 00162840  7C 90 43 A6 */	mtspr 0x110, r4
/* 80165844 00162844  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 80165848 00162848  90 64 00 0C */	stw r3, 0xc(r4)
/* 8016584C 0016284C  7C 70 42 A6 */	mfspr r3, 0x110
/* 80165850 00162850  90 64 00 10 */	stw r3, 0x10(r4)
/* 80165854 00162854  90 A4 00 14 */	stw r5, 0x14(r4)
/* 80165858 00162858  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 8016585C 0016285C  60 63 00 02 */	ori r3, r3, 2
/* 80165860 00162860  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 80165864 00162864  7C 60 00 26 */	mfcr r3
/* 80165868 00162868  90 64 00 80 */	stw r3, 0x80(r4)
/* 8016586C 0016286C  7C 68 02 A6 */	mflr r3
/* 80165870 00162870  90 64 00 84 */	stw r3, 0x84(r4)
/* 80165874 00162874  7C 69 02 A6 */	mfctr r3
/* 80165878 00162878  90 64 00 88 */	stw r3, 0x88(r4)
/* 8016587C 0016287C  7C 61 02 A6 */	mfxer r3
/* 80165880 00162880  90 64 00 8C */	stw r3, 0x8c(r4)
/* 80165884 00162884  7C 7A 02 A6 */	mfspr r3, 0x1a
/* 80165888 00162888  90 64 01 98 */	stw r3, 0x198(r4)
/* 8016588C 0016288C  7C 7B 02 A6 */	mfspr r3, 0x1b
/* 80165890 00162890  90 64 01 9C */	stw r3, 0x19c(r4)
/* 80165894 00162894  7C 65 1B 78 */	mr r5, r3
lbl_80165898:
/* 80165898 00162898  60 00 00 00 */	nop 
/* 8016589C 0016289C  7C 60 00 A6 */	mfmsr r3
/* 801658A0 001628A0  60 63 00 30 */	ori r3, r3, 0x30
/* 801658A4 001628A4  7C 7B 03 A6 */	mtspr 0x1b, r3
lbl_801658A8:
/* 801658A8 001628A8  38 60 00 00 */	li r3, 0
/* 801658AC 001628AC  80 80 00 D4 */	lwz r4, 0xd4(0)
/* 801658B0 001628B0  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 801658B4 001628B4  40 82 00 14 */	bne lbl_801658C8
/* 801658B8 001628B8  3C A0 80 16 */	lis r5, OSDefaultExceptionHandler@ha
/* 801658BC 001628BC  38 A5 58 DC */	addi r5, r5, OSDefaultExceptionHandler@l
/* 801658C0 001628C0  7C BA 03 A6 */	mtspr 0x1a, r5
/* 801658C4 001628C4  4C 00 00 64 */	rfi 
lbl_801658C8:
/* 801658C8 001628C8  54 65 15 BA */	rlwinm r5, r3, 2, 0x16, 0x1d
/* 801658CC 001628CC  80 A5 30 00 */	lwz r5, 0x3000(r5)
/* 801658D0 001628D0  7C BA 03 A6 */	mtspr 0x1a, r5
/* 801658D4 001628D4  4C 00 00 64 */	rfi 
lbl_801658D8:
/* 801658D8 001628D8  60 00 00 00 */	nop 

.global OSDefaultExceptionHandler
OSDefaultExceptionHandler:
/* 801658DC 001628DC  90 04 00 00 */	stw r0, 0(r4)
/* 801658E0 001628E0  90 24 00 04 */	stw r1, 4(r4)
/* 801658E4 001628E4  90 44 00 08 */	stw r2, 8(r4)
/* 801658E8 001628E8  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 801658EC 001628EC  7C 11 E2 A6 */	mfspr r0, 0x391
/* 801658F0 001628F0  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 801658F4 001628F4  7C 12 E2 A6 */	mfspr r0, 0x392
/* 801658F8 001628F8  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 801658FC 001628FC  7C 13 E2 A6 */	mfspr r0, 0x393
/* 80165900 00162900  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 80165904 00162904  7C 14 E2 A6 */	mfspr r0, 0x394
/* 80165908 00162908  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8016590C 0016290C  7C 15 E2 A6 */	mfspr r0, 0x395
/* 80165910 00162910  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 80165914 00162914  7C 16 E2 A6 */	mfspr r0, 0x396
/* 80165918 00162918  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8016591C 0016291C  7C 17 E2 A6 */	mfspr r0, 0x397
/* 80165920 00162920  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 80165924 00162924  7C B2 02 A6 */	mfdsisr r5
/* 80165928 00162928  7C D3 02 A6 */	mfdar r6
/* 8016592C 0016292C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80165930 00162930  48 00 23 2C */	b __OSUnhandledException

.global __OSPSInit
__OSPSInit:
/* 80165934 00162934  7C 08 02 A6 */	mflr r0
/* 80165938 00162938  90 01 00 04 */	stw r0, 4(r1)
/* 8016593C 0016293C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80165940 00162940  4B FF F5 75 */	bl PPCMfhid2
/* 80165944 00162944  64 63 A0 00 */	oris r3, r3, 0xa000
/* 80165948 00162948  4B FF F5 75 */	bl PPCMthid2
/* 8016594C 0016294C  48 00 12 79 */	bl ICFlashInvalidate
/* 80165950 00162950  7C 00 04 AC */	sync 0
/* 80165954 00162954  38 60 00 00 */	li r3, 0
/* 80165958 00162958  7C 70 E3 A6 */	mtspr 0x390, r3
/* 8016595C 0016295C  7C 71 E3 A6 */	mtspr 0x391, r3
/* 80165960 00162960  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80165964 00162964  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80165968 00162968  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8016596C 0016296C  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80165970 00162970  7C 76 E3 A6 */	mtspr 0x396, r3
/* 80165974 00162974  7C 77 E3 A6 */	mtspr 0x397, r3
/* 80165978 00162978  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016597C 0016297C  38 21 00 08 */	addi r1, r1, 8
/* 80165980 00162980  7C 08 03 A6 */	mtlr r0
/* 80165984 00162984  4E 80 00 20 */	blr 

.global __OSGetDIConfig
__OSGetDIConfig:
/* 80165988 00162988  3C 60 CC 00 */	lis r3, 0xCC006000@ha
/* 8016598C 0016298C  38 63 60 00 */	addi r3, r3, 0xCC006000@l
/* 80165990 00162990  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80165994 00162994  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80165998 00162998  4E 80 00 20 */	blr 

.global OSRegisterVersion
OSRegisterVersion:
/* 8016599C 0016299C  7C 08 02 A6 */	mflr r0
/* 801659A0 001629A0  90 01 00 04 */	stw r0, 4(r1)
/* 801659A4 001629A4  94 21 FF F8 */	stwu r1, -8(r1)
/* 801659A8 001629A8  7C 64 1B 78 */	mr r4, r3
/* 801659AC 001629AC  4C C6 31 82 */	crclr 6
/* 801659B0 001629B0  38 6D 81 1C */	addi r3, r13, lbl_80276A3C-_SDA_BASE_
/* 801659B4 001629B4  48 00 1E E5 */	bl OSReport
/* 801659B8 001629B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801659BC 001629BC  38 21 00 08 */	addi r1, r1, 8
/* 801659C0 001629C0  7C 08 03 A6 */	mtlr r0
/* 801659C4 001629C4  4E 80 00 20 */	blr 
