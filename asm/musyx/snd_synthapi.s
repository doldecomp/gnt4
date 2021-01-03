.include "macros.inc"

.section .text  # 0x801E6EF4 - 0x801E747C

.global sndFXCtrl
sndFXCtrl:
/* 801E6EF4 001E3EF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E6EF8 001E3EF8  7C 08 02 A6 */	mflr r0
/* 801E6EFC 001E3EFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E6F00 001E3F00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E6F04 001E3F04  7C BF 2B 78 */	mr r31, r5
/* 801E6F08 001E3F08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E6F0C 001E3F0C  7C 9E 23 78 */	mr r30, r4
/* 801E6F10 001E3F10  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E6F14 001E3F14  7C 7D 1B 78 */	mr r29, r3
/* 801E6F18 001E3F18  48 01 54 B9 */	bl hwDisableIrq
/* 801E6F1C 001E3F1C  7F A3 EB 78 */	mr r3, r29
/* 801E6F20 001E3F20  7F C4 F3 78 */	mr r4, r30
/* 801E6F24 001E3F24  7F E5 FB 78 */	mr r5, r31
/* 801E6F28 001E3F28  4B FF EF 09 */	bl synthFXSetCtrl
/* 801E6F2C 001E3F2C  7C 7F 1B 78 */	mr r31, r3
/* 801E6F30 001E3F30  48 01 54 69 */	bl hwEnableIrq
/* 801E6F34 001E3F34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E6F38 001E3F38  7F E3 FB 78 */	mr r3, r31
/* 801E6F3C 001E3F3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E6F40 001E3F40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E6F44 001E3F44  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E6F48 001E3F48  7C 08 03 A6 */	mtlr r0
/* 801E6F4C 001E3F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 801E6F50 001E3F50  4E 80 00 20 */	blr 

.global sndFXKeyOff
sndFXKeyOff:
/* 801E6F54 001E3F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E6F58 001E3F58  7C 08 02 A6 */	mflr r0
/* 801E6F5C 001E3F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E6F60 001E3F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E6F64 001E3F64  7C 7F 1B 78 */	mr r31, r3
/* 801E6F68 001E3F68  48 01 54 69 */	bl hwDisableIrq
/* 801E6F6C 001E3F6C  7F E3 FB 78 */	mr r3, r31
/* 801E6F70 001E3F70  4B FF F1 0D */	bl synthSendKeyOff
/* 801E6F74 001E3F74  7C 7F 1B 78 */	mr r31, r3
/* 801E6F78 001E3F78  48 01 54 21 */	bl hwEnableIrq
/* 801E6F7C 001E3F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E6F80 001E3F80  7F E3 FB 78 */	mr r3, r31
/* 801E6F84 001E3F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E6F88 001E3F88  7C 08 03 A6 */	mtlr r0
/* 801E6F8C 001E3F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E6F90 001E3F90  4E 80 00 20 */	blr 

.global sndFXStartPara
sndFXStartPara:
/* 801E6F94 001E3F94  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801E6F98 001E3F98  7C 08 02 A6 */	mflr r0
/* 801E6F9C 001E3F9C  90 01 00 94 */	stw r0, 0x94(r1)
/* 801E6FA0 001E3FA0  39 61 00 90 */	addi r11, r1, 0x90
/* 801E6FA4 001E3FA4  4B FA 72 D9 */	bl _savegpr_27
/* 801E6FA8 001E3FA8  7C 7B 1B 78 */	mr r27, r3
/* 801E6FAC 001E3FAC  7C 9F 23 78 */	mr r31, r4
/* 801E6FB0 001E3FB0  7C BE 2B 78 */	mr r30, r5
/* 801E6FB4 001E3FB4  7C DD 33 78 */	mr r29, r6
/* 801E6FB8 001E3FB8  7C FC 3B 78 */	mr r28, r7
/* 801E6FBC 001E3FBC  40 86 00 24 */	bne cr1, lbl_801E6FE0
/* 801E6FC0 001E3FC0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 801E6FC4 001E3FC4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 801E6FC8 001E3FC8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 801E6FCC 001E3FCC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 801E6FD0 001E3FD0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 801E6FD4 001E3FD4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 801E6FD8 001E3FD8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 801E6FDC 001E3FDC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_801E6FE0:
/* 801E6FE0 001E3FE0  90 61 00 08 */	stw r3, 8(r1)
/* 801E6FE4 001E3FE4  90 81 00 0C */	stw r4, 0xc(r1)
/* 801E6FE8 001E3FE8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801E6FEC 001E3FEC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801E6FF0 001E3FF0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 801E6FF4 001E3FF4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801E6FF8 001E3FF8  91 21 00 20 */	stw r9, 0x20(r1)
/* 801E6FFC 001E3FFC  91 41 00 24 */	stw r10, 0x24(r1)
/* 801E7000 001E4000  48 01 53 D1 */	bl hwDisableIrq
/* 801E7004 001E4004  3C 60 80 26 */	lis r3, lbl_8025CBE4@ha
/* 801E7008 001E4008  57 A0 0D FC */	rlwinm r0, r29, 1, 0x17, 0x1e
/* 801E700C 001E400C  38 83 CB E4 */	addi r4, r3, lbl_8025CBE4@l
/* 801E7010 001E4010  7F E5 FB 78 */	mr r5, r31
/* 801E7014 001E4014  7C 84 02 14 */	add r4, r4, r0
/* 801E7018 001E4018  7F 63 DB 78 */	mr r3, r27
/* 801E701C 001E401C  89 04 00 01 */	lbz r8, 1(r4)
/* 801E7020 001E4020  7F C6 F3 78 */	mr r6, r30
/* 801E7024 001E4024  7F A7 EB 78 */	mr r7, r29
/* 801E7028 001E4028  38 80 00 FF */	li r4, 0xff
/* 801E702C 001E402C  4B FF EC A5 */	bl synthFXStart
/* 801E7030 001E4030  7C 7E 1B 78 */	mr r30, r3
/* 801E7034 001E4034  3C 1E 00 01 */	addis r0, r30, 1
/* 801E7038 001E4038  28 00 FF FF */	cmplwi r0, 0xffff
/* 801E703C 001E403C  41 82 00 9C */	beq lbl_801E70D8
/* 801E7040 001E4040  57 9F 06 3F */	clrlwi. r31, r28, 0x18
/* 801E7044 001E4044  41 82 00 94 */	beq lbl_801E70D8
/* 801E7048 001E4048  38 61 00 98 */	addi r3, r1, 0x98
/* 801E704C 001E404C  38 01 00 08 */	addi r0, r1, 8
/* 801E7050 001E4050  3C 80 05 00 */	lis r4, 0x500
/* 801E7054 001E4054  90 61 00 6C */	stw r3, 0x6c(r1)
/* 801E7058 001E4058  3B A0 00 00 */	li r29, 0
/* 801E705C 001E405C  90 81 00 68 */	stw r4, 0x68(r1)
/* 801E7060 001E4060  90 01 00 70 */	stw r0, 0x70(r1)
/* 801E7064 001E4064  48 00 00 68 */	b lbl_801E70CC
lbl_801E7068:
/* 801E7068 001E4068  38 61 00 68 */	addi r3, r1, 0x68
/* 801E706C 001E406C  38 80 00 01 */	li r4, 1
/* 801E7070 001E4070  4B FA 6F D5 */	bl __va_arg
/* 801E7074 001E4074  80 03 00 00 */	lwz r0, 0(r3)
/* 801E7078 001E4078  38 61 00 68 */	addi r3, r1, 0x68
/* 801E707C 001E407C  38 80 00 01 */	li r4, 1
/* 801E7080 001E4080  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 801E7084 001E4084  4B FA 6F C1 */	bl __va_arg
/* 801E7088 001E4088  28 1C 00 40 */	cmplwi r28, 0x40
/* 801E708C 001E408C  80 03 00 00 */	lwz r0, 0(r3)
/* 801E7090 001E4090  41 80 00 14 */	blt lbl_801E70A4
/* 801E7094 001E4094  28 1C 00 80 */	cmplwi r28, 0x80
/* 801E7098 001E4098  41 82 00 0C */	beq lbl_801E70A4
/* 801E709C 001E409C  28 1C 00 84 */	cmplwi r28, 0x84
/* 801E70A0 001E40A0  40 82 00 18 */	bne lbl_801E70B8
lbl_801E70A4:
/* 801E70A4 001E40A4  7F C3 F3 78 */	mr r3, r30
/* 801E70A8 001E40A8  7F 84 E3 78 */	mr r4, r28
/* 801E70AC 001E40AC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 801E70B0 001E40B0  4B FF EE 65 */	bl synthFXSetCtrl14
/* 801E70B4 001E40B4  48 00 00 14 */	b lbl_801E70C8
lbl_801E70B8:
/* 801E70B8 001E40B8  7F C3 F3 78 */	mr r3, r30
/* 801E70BC 001E40BC  7F 84 E3 78 */	mr r4, r28
/* 801E70C0 001E40C0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801E70C4 001E40C4  4B FF ED 6D */	bl synthFXSetCtrl
lbl_801E70C8:
/* 801E70C8 001E40C8  3B BD 00 01 */	addi r29, r29, 1
lbl_801E70CC:
/* 801E70CC 001E40CC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801E70D0 001E40D0  7C 00 F8 40 */	cmplw r0, r31
/* 801E70D4 001E40D4  41 80 FF 94 */	blt lbl_801E7068
lbl_801E70D8:
/* 801E70D8 001E40D8  48 01 52 C1 */	bl hwEnableIrq
/* 801E70DC 001E40DC  7F C3 F3 78 */	mr r3, r30
/* 801E70E0 001E40E0  39 61 00 90 */	addi r11, r1, 0x90
/* 801E70E4 001E40E4  4B FA 71 E5 */	bl _restgpr_27
/* 801E70E8 001E40E8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801E70EC 001E40EC  7C 08 03 A6 */	mtlr r0
/* 801E70F0 001E40F0  38 21 00 90 */	addi r1, r1, 0x90
/* 801E70F4 001E40F4  4E 80 00 20 */	blr 

.global sndFXCheck
sndFXCheck:
/* 801E70F8 001E40F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E70FC 001E40FC  7C 08 02 A6 */	mflr r0
/* 801E7100 001E4100  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E7104 001E4104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E7108 001E4108  7C 7F 1B 78 */	mr r31, r3
/* 801E710C 001E410C  48 01 52 C5 */	bl hwDisableIrq
/* 801E7110 001E4110  7F E3 FB 78 */	mr r3, r31
/* 801E7114 001E4114  48 00 80 25 */	bl vidGetInternalId
/* 801E7118 001E4118  3C 03 00 01 */	addis r0, r3, 1
/* 801E711C 001E411C  28 00 FF FF */	cmplwi r0, 0xffff
/* 801E7120 001E4120  40 82 00 08 */	bne lbl_801E7128
/* 801E7124 001E4124  3B E0 FF FF */	li r31, -1
lbl_801E7128:
/* 801E7128 001E4128  48 01 52 71 */	bl hwEnableIrq
/* 801E712C 001E412C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E7130 001E4130  7F E3 FB 78 */	mr r3, r31
/* 801E7134 001E4134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E7138 001E4138  7C 08 03 A6 */	mtlr r0
/* 801E713C 001E413C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E7140 001E4140  4E 80 00 20 */	blr 

.global sndVolume
sndVolume:
/* 801E7144 001E4144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E7148 001E4148  7C 08 02 A6 */	mflr r0
/* 801E714C 001E414C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E7150 001E4150  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E7154 001E4154  7C BF 2B 78 */	mr r31, r5
/* 801E7158 001E4158  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E715C 001E415C  7C 9E 23 78 */	mr r30, r4
/* 801E7160 001E4160  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E7164 001E4164  7C 7D 1B 78 */	mr r29, r3
/* 801E7168 001E4168  48 01 52 69 */	bl hwDisableIrq
/* 801E716C 001E416C  7F A3 EB 78 */	mr r3, r29
/* 801E7170 001E4170  7F C4 F3 78 */	mr r4, r30
/* 801E7174 001E4174  7F E5 FB 78 */	mr r5, r31
/* 801E7178 001E4178  38 C0 00 00 */	li r6, 0
/* 801E717C 001E417C  38 E0 FF FF */	li r7, -1
/* 801E7180 001E4180  4B FF EF 85 */	bl synthVolume
/* 801E7184 001E4184  48 01 52 15 */	bl hwEnableIrq
/* 801E7188 001E4188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E718C 001E418C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E7190 001E4190  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E7194 001E4194  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E7198 001E4198  7C 08 03 A6 */	mtlr r0
/* 801E719C 001E419C  38 21 00 20 */	addi r1, r1, 0x20
/* 801E71A0 001E41A0  4E 80 00 20 */	blr 

.global sndMasterVolume
sndMasterVolume:
/* 801E71A4 001E41A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E71A8 001E41A8  7C 08 02 A6 */	mflr r0
/* 801E71AC 001E41AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E71B0 001E41B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E71B4 001E41B4  7C DF 33 78 */	mr r31, r6
/* 801E71B8 001E41B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E71BC 001E41BC  7C BE 2B 78 */	mr r30, r5
/* 801E71C0 001E41C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E71C4 001E41C4  7C 9D 23 78 */	mr r29, r4
/* 801E71C8 001E41C8  93 81 00 10 */	stw r28, 0x10(r1)
/* 801E71CC 001E41CC  7C 7C 1B 78 */	mr r28, r3
/* 801E71D0 001E41D0  48 01 52 01 */	bl hwDisableIrq
/* 801E71D4 001E41D4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801E71D8 001E41D8  41 82 00 1C */	beq lbl_801E71F4
/* 801E71DC 001E41DC  7F 83 E3 78 */	mr r3, r28
/* 801E71E0 001E41E0  7F A4 EB 78 */	mr r4, r29
/* 801E71E4 001E41E4  38 A0 00 15 */	li r5, 0x15
/* 801E71E8 001E41E8  38 C0 00 00 */	li r6, 0
/* 801E71EC 001E41EC  38 E0 FF FF */	li r7, -1
/* 801E71F0 001E41F0  4B FF EF 15 */	bl synthVolume
lbl_801E71F4:
/* 801E71F4 001E41F4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801E71F8 001E41F8  41 82 00 1C */	beq lbl_801E7214
/* 801E71FC 001E41FC  7F 83 E3 78 */	mr r3, r28
/* 801E7200 001E4200  7F A4 EB 78 */	mr r4, r29
/* 801E7204 001E4204  38 A0 00 16 */	li r5, 0x16
/* 801E7208 001E4208  38 C0 00 00 */	li r6, 0
/* 801E720C 001E420C  38 E0 FF FF */	li r7, -1
/* 801E7210 001E4210  4B FF EE F5 */	bl synthVolume
lbl_801E7214:
/* 801E7214 001E4214  48 01 51 85 */	bl hwEnableIrq
/* 801E7218 001E4218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E721C 001E421C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E7220 001E4220  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E7224 001E4224  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E7228 001E4228  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801E722C 001E422C  7C 08 03 A6 */	mtlr r0
/* 801E7230 001E4230  38 21 00 20 */	addi r1, r1, 0x20
/* 801E7234 001E4234  4E 80 00 20 */	blr 

.global sndOutputMode
sndOutputMode:
/* 801E7238 001E4238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E723C 001E423C  7C 08 02 A6 */	mflr r0
/* 801E7240 001E4240  2C 03 00 01 */	cmpwi r3, 1
/* 801E7244 001E4244  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E7248 001E4248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E724C 001E424C  83 ED 91 F4 */	lwz r31, lbl_80277B14-_SDA_BASE_(r13)
/* 801E7250 001E4250  41 82 00 38 */	beq lbl_801E7288
/* 801E7254 001E4254  40 80 00 10 */	bge lbl_801E7264
/* 801E7258 001E4258  2C 03 00 00 */	cmpwi r3, 0
/* 801E725C 001E425C  40 80 00 14 */	bge lbl_801E7270
/* 801E7260 001E4260  48 00 00 54 */	b lbl_801E72B4
lbl_801E7264:
/* 801E7264 001E4264  2C 03 00 03 */	cmpwi r3, 3
/* 801E7268 001E4268  40 80 00 4C */	bge lbl_801E72B4
/* 801E726C 001E426C  48 00 00 34 */	b lbl_801E72A0
lbl_801E7270:
/* 801E7270 001E4270  63 E0 00 01 */	ori r0, r31, 1
/* 801E7274 001E4274  90 0D 91 F4 */	stw r0, lbl_80277B14-_SDA_BASE_(r13)
/* 801E7278 001E4278  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 801E727C 001E427C  90 0D 91 F4 */	stw r0, lbl_80277B14-_SDA_BASE_(r13)
/* 801E7280 001E4280  48 01 41 A5 */	bl hwDisableHRTF
/* 801E7284 001E4284  48 00 00 30 */	b lbl_801E72B4
lbl_801E7288:
/* 801E7288 001E4288  57 E3 00 3C */	rlwinm r3, r31, 0, 0, 0x1e
/* 801E728C 001E428C  57 E0 00 3A */	rlwinm r0, r31, 0, 0, 0x1d
/* 801E7290 001E4290  90 6D 91 F4 */	stw r3, lbl_80277B14-_SDA_BASE_(r13)
/* 801E7294 001E4294  90 0D 91 F4 */	stw r0, lbl_80277B14-_SDA_BASE_(r13)
/* 801E7298 001E4298  48 01 41 8D */	bl hwDisableHRTF
/* 801E729C 001E429C  48 00 00 18 */	b lbl_801E72B4
lbl_801E72A0:
/* 801E72A0 001E42A0  57 E0 00 3C */	rlwinm r0, r31, 0, 0, 0x1e
/* 801E72A4 001E42A4  90 0D 91 F4 */	stw r0, lbl_80277B14-_SDA_BASE_(r13)
/* 801E72A8 001E42A8  60 00 00 02 */	ori r0, r0, 2
/* 801E72AC 001E42AC  90 0D 91 F4 */	stw r0, lbl_80277B14-_SDA_BASE_(r13)
/* 801E72B0 001E42B0  48 01 41 75 */	bl hwDisableHRTF
lbl_801E72B4:
/* 801E72B4 001E42B4  80 0D 91 F4 */	lwz r0, lbl_80277B14-_SDA_BASE_(r13)
/* 801E72B8 001E42B8  7C 1F 00 40 */	cmplw r31, r0
/* 801E72BC 001E42BC  41 82 00 54 */	beq lbl_801E7310
/* 801E72C0 001E42C0  3C 60 80 26 */	lis r3, lbl_8025C190@ha
/* 801E72C4 001E42C4  38 E0 00 00 */	li r7, 0
/* 801E72C8 001E42C8  38 A3 C1 90 */	addi r5, r3, lbl_8025C190@l
/* 801E72CC 001E42CC  38 C0 00 00 */	li r6, 0
/* 801E72D0 001E42D0  48 00 00 30 */	b lbl_801E7300
lbl_801E72D4:
/* 801E72D4 001E42D4  80 6D 91 F8 */	lwz r3, lbl_80277B18-_SDA_BASE_(r13)
/* 801E72D8 001E42D8  38 06 01 14 */	addi r0, r6, 0x114
/* 801E72DC 001E42DC  38 C6 04 58 */	addi r6, r6, 0x458
/* 801E72E0 001E42E0  38 E7 00 01 */	addi r7, r7, 1
/* 801E72E4 001E42E4  7C 83 02 14 */	add r4, r3, r0
/* 801E72E8 001E42E8  7C 63 02 14 */	add r3, r3, r0
/* 801E72EC 001E42EC  80 04 00 00 */	lwz r0, 0(r4)
/* 801E72F0 001E42F0  80 84 00 04 */	lwz r4, 4(r4)
/* 801E72F4 001E42F4  60 00 20 00 */	ori r0, r0, 0x2000
/* 801E72F8 001E42F8  90 83 00 04 */	stw r4, 4(r3)
/* 801E72FC 001E42FC  90 03 00 00 */	stw r0, 0(r3)
lbl_801E7300:
/* 801E7300 001E4300  88 05 02 10 */	lbz r0, 0x210(r5)
/* 801E7304 001E4304  7C 07 00 40 */	cmplw r7, r0
/* 801E7308 001E4308  41 80 FF CC */	blt lbl_801E72D4
/* 801E730C 001E430C  48 00 0B B9 */	bl streamOutputModeChanged
lbl_801E7310:
/* 801E7310 001E4310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E7314 001E4314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E7318 001E4318  7C 08 03 A6 */	mtlr r0
/* 801E731C 001E431C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E7320 001E4320  4E 80 00 20 */	blr 

.global sndSetAuxProcessingCallbacks
sndSetAuxProcessingCallbacks:
/* 801E7324 001E4324  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E7328 001E4328  7C 08 02 A6 */	mflr r0
/* 801E732C 001E432C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E7330 001E4330  39 61 00 30 */	addi r11, r1, 0x30
/* 801E7334 001E4334  4B FA 6F 35 */	bl _savegpr_22
/* 801E7338 001E4338  83 E1 00 38 */	lwz r31, 0x38(r1)
/* 801E733C 001E433C  7C 79 1B 78 */	mr r25, r3
/* 801E7340 001E4340  7C 9A 23 78 */	mr r26, r4
/* 801E7344 001E4344  7C BB 2B 78 */	mr r27, r5
/* 801E7348 001E4348  7C D6 33 78 */	mr r22, r6
/* 801E734C 001E434C  7C F7 3B 78 */	mr r23, r7
/* 801E7350 001E4350  7D 1C 43 78 */	mr r28, r8
/* 801E7354 001E4354  7D 3D 4B 78 */	mr r29, r9
/* 801E7358 001E4358  7D 5E 53 78 */	mr r30, r10
/* 801E735C 001E435C  48 01 50 75 */	bl hwDisableIrq
/* 801E7360 001E4360  28 1A 00 00 */	cmplwi r26, 0
/* 801E7364 001E4364  41 82 00 4C */	beq lbl_801E73B0
/* 801E7368 001E4368  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 801E736C 001E436C  57 38 06 3E */	clrlwi r24, r25, 0x18
/* 801E7370 001E4370  38 6D 91 E4 */	addi r3, r13, lbl_80277B04-_SDA_BASE_
/* 801E7374 001E4374  28 00 00 FF */	cmplwi r0, 0xff
/* 801E7378 001E4378  7E C3 C1 AE */	stbx r22, r3, r24
/* 801E737C 001E437C  41 82 00 58 */	beq lbl_801E73D4
/* 801E7380 001E4380  7E E3 BB 78 */	mr r3, r23
/* 801E7384 001E4384  4B FF 85 51 */	bl seqGetPrivateId
/* 801E7388 001E4388  3C A0 80 26 */	lis r5, lbl_8025CB84@ha
/* 801E738C 001E438C  3C 80 80 26 */	lis r4, lbl_8025CB64@ha
/* 801E7390 001E4390  38 CD 91 DC */	addi r6, r13, lbl_80277AFC-_SDA_BASE_
/* 801E7394 001E4394  57 00 10 3A */	slwi r0, r24, 2
/* 801E7398 001E4398  38 A5 CB 84 */	addi r5, r5, lbl_8025CB84@l
/* 801E739C 001E439C  38 84 CB 64 */	addi r4, r4, lbl_8025CB64@l
/* 801E73A0 001E43A0  7C 66 C1 AE */	stbx r3, r6, r24
/* 801E73A4 001E43A4  7F 45 01 2E */	stwx r26, r5, r0
/* 801E73A8 001E43A8  7F 64 01 2E */	stwx r27, r4, r0
/* 801E73AC 001E43AC  48 00 00 28 */	b lbl_801E73D4
lbl_801E73B0:
/* 801E73B0 001E43B0  3C 60 80 26 */	lis r3, lbl_8025CB84@ha
/* 801E73B4 001E43B4  57 27 06 3E */	clrlwi r7, r25, 0x18
/* 801E73B8 001E43B8  57 25 15 BA */	rlwinm r5, r25, 2, 0x16, 0x1d
/* 801E73BC 001E43BC  38 C0 00 00 */	li r6, 0
/* 801E73C0 001E43C0  38 83 CB 84 */	addi r4, r3, lbl_8025CB84@l
/* 801E73C4 001E43C4  38 00 00 FF */	li r0, 0xff
/* 801E73C8 001E43C8  38 6D 91 E4 */	addi r3, r13, lbl_80277B04-_SDA_BASE_
/* 801E73CC 001E43CC  7C C4 29 2E */	stwx r6, r4, r5
/* 801E73D0 001E43D0  7C 03 39 AE */	stbx r0, r3, r7
lbl_801E73D4:
/* 801E73D4 001E43D4  28 1C 00 00 */	cmplwi r28, 0
/* 801E73D8 001E43D8  41 82 00 4C */	beq lbl_801E7424
/* 801E73DC 001E43DC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801E73E0 001E43E0  57 38 06 3E */	clrlwi r24, r25, 0x18
/* 801E73E4 001E43E4  38 6D 91 D4 */	addi r3, r13, lbl_80277AF4-_SDA_BASE_
/* 801E73E8 001E43E8  28 00 00 FF */	cmplwi r0, 0xff
/* 801E73EC 001E43EC  7F C3 C1 AE */	stbx r30, r3, r24
/* 801E73F0 001E43F0  41 82 00 58 */	beq lbl_801E7448
/* 801E73F4 001E43F4  7F E3 FB 78 */	mr r3, r31
/* 801E73F8 001E43F8  4B FF 84 DD */	bl seqGetPrivateId
/* 801E73FC 001E43FC  3C A0 80 26 */	lis r5, lbl_8025CBC4@ha
/* 801E7400 001E4400  3C 80 80 26 */	lis r4, lbl_8025CBA4@ha
/* 801E7404 001E4404  38 CD 91 CC */	addi r6, r13, lbl_80277AEC-_SDA_BASE_
/* 801E7408 001E4408  57 00 10 3A */	slwi r0, r24, 2
/* 801E740C 001E440C  38 A5 CB C4 */	addi r5, r5, lbl_8025CBC4@l
/* 801E7410 001E4410  38 84 CB A4 */	addi r4, r4, lbl_8025CBA4@l
/* 801E7414 001E4414  7C 66 C1 AE */	stbx r3, r6, r24
/* 801E7418 001E4418  7F 85 01 2E */	stwx r28, r5, r0
/* 801E741C 001E441C  7F A4 01 2E */	stwx r29, r4, r0
/* 801E7420 001E4420  48 00 00 28 */	b lbl_801E7448
lbl_801E7424:
/* 801E7424 001E4424  3C 60 80 26 */	lis r3, lbl_8025CBC4@ha
/* 801E7428 001E4428  57 27 06 3E */	clrlwi r7, r25, 0x18
/* 801E742C 001E442C  57 25 15 BA */	rlwinm r5, r25, 2, 0x16, 0x1d
/* 801E7430 001E4430  38 C0 00 00 */	li r6, 0
/* 801E7434 001E4434  38 83 CB C4 */	addi r4, r3, lbl_8025CBC4@l
/* 801E7438 001E4438  38 00 00 FF */	li r0, 0xff
/* 801E743C 001E443C  38 6D 91 D4 */	addi r3, r13, lbl_80277AF4-_SDA_BASE_
/* 801E7440 001E4440  7C C4 29 2E */	stwx r6, r4, r5
/* 801E7444 001E4444  7C 03 39 AE */	stbx r0, r3, r7
lbl_801E7448:
/* 801E7448 001E4448  7F 23 CB 78 */	mr r3, r25
/* 801E744C 001E444C  7F 44 D3 78 */	mr r4, r26
/* 801E7450 001E4450  7F 65 DB 78 */	mr r5, r27
/* 801E7454 001E4454  7F 86 E3 78 */	mr r6, r28
/* 801E7458 001E4458  7F A7 EB 78 */	mr r7, r29
/* 801E745C 001E445C  48 01 3C 5D */	bl hwSetAUXProcessingCallbacks
/* 801E7460 001E4460  48 01 4F 39 */	bl hwEnableIrq
/* 801E7464 001E4464  39 61 00 30 */	addi r11, r1, 0x30
/* 801E7468 001E4468  4B FA 6E 4D */	bl _restgpr_22
/* 801E746C 001E446C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E7470 001E4470  7C 08 03 A6 */	mtlr r0
/* 801E7474 001E4474  38 21 00 30 */	addi r1, r1, 0x30
/* 801E7478 001E4478  4E 80 00 20 */	blr 
