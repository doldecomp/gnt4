.include "macros.inc"

.section .text  # 0x801A6E3C - 0x801A754C

.global func_801A6E3C
func_801A6E3C:
/* 801A6E3C 001A3E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A6E40 001A3E40  7C 08 02 A6 */	mflr r0
/* 801A6E44 001A3E44  3C 80 80 25 */	lis r4, lbl_8024AD70@ha
/* 801A6E48 001A3E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A6E4C 001A3E4C  38 84 AD 70 */	addi r4, r4, lbl_8024AD70@l
/* 801A6E50 001A3E50  38 00 00 02 */	li r0, 2
/* 801A6E54 001A3E54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A6E58 001A3E58  38 A4 00 00 */	addi r5, r4, 0
/* 801A6E5C 001A3E5C  38 C4 00 40 */	addi r6, r4, 0x40
/* 801A6E60 001A3E60  38 84 00 80 */	addi r4, r4, 0x80
/* 801A6E64 001A3E64  93 C1 00 08 */	stw r30, 8(r1)
/* 801A6E68 001A3E68  7C 09 03 A6 */	mtctr r0
lbl_801A6E6C:
/* 801A6E6C 001A3E6C  38 00 00 00 */	li r0, 0
/* 801A6E70 001A3E70  90 05 00 00 */	stw r0, 0(r5)
/* 801A6E74 001A3E74  90 06 00 00 */	stw r0, 0(r6)
/* 801A6E78 001A3E78  90 04 00 00 */	stw r0, 0(r4)
/* 801A6E7C 001A3E7C  90 05 00 04 */	stw r0, 4(r5)
/* 801A6E80 001A3E80  90 06 00 04 */	stw r0, 4(r6)
/* 801A6E84 001A3E84  90 04 00 04 */	stw r0, 4(r4)
/* 801A6E88 001A3E88  90 05 00 08 */	stw r0, 8(r5)
/* 801A6E8C 001A3E8C  90 06 00 08 */	stw r0, 8(r6)
/* 801A6E90 001A3E90  90 04 00 08 */	stw r0, 8(r4)
/* 801A6E94 001A3E94  90 05 00 0C */	stw r0, 0xc(r5)
/* 801A6E98 001A3E98  90 06 00 0C */	stw r0, 0xc(r6)
/* 801A6E9C 001A3E9C  90 04 00 0C */	stw r0, 0xc(r4)
/* 801A6EA0 001A3EA0  90 05 00 10 */	stw r0, 0x10(r5)
/* 801A6EA4 001A3EA4  90 06 00 10 */	stw r0, 0x10(r6)
/* 801A6EA8 001A3EA8  90 04 00 10 */	stw r0, 0x10(r4)
/* 801A6EAC 001A3EAC  90 05 00 14 */	stw r0, 0x14(r5)
/* 801A6EB0 001A3EB0  90 06 00 14 */	stw r0, 0x14(r6)
/* 801A6EB4 001A3EB4  90 04 00 14 */	stw r0, 0x14(r4)
/* 801A6EB8 001A3EB8  90 05 00 18 */	stw r0, 0x18(r5)
/* 801A6EBC 001A3EBC  90 06 00 18 */	stw r0, 0x18(r6)
/* 801A6EC0 001A3EC0  90 04 00 18 */	stw r0, 0x18(r4)
/* 801A6EC4 001A3EC4  90 05 00 1C */	stw r0, 0x1c(r5)
/* 801A6EC8 001A3EC8  38 A5 00 20 */	addi r5, r5, 0x20
/* 801A6ECC 001A3ECC  90 06 00 1C */	stw r0, 0x1c(r6)
/* 801A6ED0 001A3ED0  38 C6 00 20 */	addi r6, r6, 0x20
/* 801A6ED4 001A3ED4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 801A6ED8 001A3ED8  38 84 00 20 */	addi r4, r4, 0x20
/* 801A6EDC 001A3EDC  42 00 FF 90 */	bdnz lbl_801A6E6C
/* 801A6EE0 001A3EE0  90 0D 8F 80 */	stw r0, lbl_802778A0-_SDA_BASE_(r13)
/* 801A6EE4 001A3EE4  3B C3 FF FF */	addi r30, r3, -1
/* 801A6EE8 001A3EE8  48 00 00 3C */	b lbl_801A6F24
lbl_801A6EEC:
/* 801A6EEC 001A3EEC  38 60 00 9C */	li r3, 0x9c
/* 801A6EF0 001A3EF0  48 02 44 4D */	bl func_801CB33C
/* 801A6EF4 001A3EF4  7C 7F 1B 78 */	mr r31, r3
/* 801A6EF8 001A3EF8  38 80 00 00 */	li r4, 0
/* 801A6EFC 001A3EFC  38 A0 00 9C */	li r5, 0x9c
/* 801A6F00 001A3F00  4B E5 E5 E5 */	bl memset
/* 801A6F04 001A3F04  28 1F 00 00 */	cmplwi r31, 0
/* 801A6F08 001A3F08  40 82 00 0C */	bne lbl_801A6F14
/* 801A6F0C 001A3F0C  38 60 FF FF */	li r3, -1
/* 801A6F10 001A3F10  48 00 00 20 */	b lbl_801A6F30
lbl_801A6F14:
/* 801A6F14 001A3F14  80 0D 8F 80 */	lwz r0, lbl_802778A0-_SDA_BASE_(r13)
/* 801A6F18 001A3F18  3B DE FF FF */	addi r30, r30, -1
/* 801A6F1C 001A3F1C  90 1F 00 00 */	stw r0, 0(r31)
/* 801A6F20 001A3F20  93 ED 8F 80 */	stw r31, lbl_802778A0-_SDA_BASE_(r13)
lbl_801A6F24:
/* 801A6F24 001A3F24  2C 1E 00 00 */	cmpwi r30, 0
/* 801A6F28 001A3F28  40 80 FF C4 */	bge lbl_801A6EEC
/* 801A6F2C 001A3F2C  7F C3 F3 78 */	mr r3, r30
lbl_801A6F30:
/* 801A6F30 001A3F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A6F34 001A3F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A6F38 001A3F38  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A6F3C 001A3F3C  7C 08 03 A6 */	mtlr r0
/* 801A6F40 001A3F40  38 21 00 10 */	addi r1, r1, 0x10
/* 801A6F44 001A3F44  4E 80 00 20 */	blr 

.global func_801A6F48
func_801A6F48:
/* 801A6F48 001A3F48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A6F4C 001A3F4C  7C 08 02 A6 */	mflr r0
/* 801A6F50 001A3F50  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A6F54 001A3F54  39 61 00 20 */	addi r11, r1, 0x20
/* 801A6F58 001A3F58  4B FE 73 21 */	bl func_8018E278
/* 801A6F5C 001A3F5C  3C 80 80 25 */	lis r4, lbl_8024AD70@ha
/* 801A6F60 001A3F60  80 6D 8F 80 */	lwz r3, lbl_802778A0-_SDA_BASE_(r13)
/* 801A6F64 001A3F64  3B C4 AD 70 */	addi r30, r4, lbl_8024AD70@l
/* 801A6F68 001A3F68  48 00 00 10 */	b lbl_801A6F78
lbl_801A6F6C:
/* 801A6F6C 001A3F6C  83 63 00 00 */	lwz r27, 0(r3)
/* 801A6F70 001A3F70  48 02 43 9D */	bl func_801CB30C
/* 801A6F74 001A3F74  7F 63 DB 78 */	mr r3, r27
lbl_801A6F78:
/* 801A6F78 001A3F78  28 03 00 00 */	cmplwi r3, 0
/* 801A6F7C 001A3F7C  40 82 FF F0 */	bne lbl_801A6F6C
/* 801A6F80 001A3F80  3B E0 00 00 */	li r31, 0
/* 801A6F84 001A3F84  3B BE 00 00 */	addi r29, r30, 0
/* 801A6F88 001A3F88  93 ED 8F 80 */	stw r31, lbl_802778A0-_SDA_BASE_(r13)
/* 801A6F8C 001A3F8C  3B 9E 00 40 */	addi r28, r30, 0x40
/* 801A6F90 001A3F90  3B DE 00 80 */	addi r30, r30, 0x80
/* 801A6F94 001A3F94  3B 40 00 00 */	li r26, 0
lbl_801A6F98:
/* 801A6F98 001A3F98  80 7D 00 00 */	lwz r3, 0(r29)
/* 801A6F9C 001A3F9C  48 00 00 10 */	b lbl_801A6FAC
lbl_801A6FA0:
/* 801A6FA0 001A3FA0  83 63 00 00 */	lwz r27, 0(r3)
/* 801A6FA4 001A3FA4  48 02 43 69 */	bl func_801CB30C
/* 801A6FA8 001A3FA8  7F 63 DB 78 */	mr r3, r27
lbl_801A6FAC:
/* 801A6FAC 001A3FAC  28 03 00 00 */	cmplwi r3, 0
/* 801A6FB0 001A3FB0  40 82 FF F0 */	bne lbl_801A6FA0
/* 801A6FB4 001A3FB4  3B 5A 00 01 */	addi r26, r26, 1
/* 801A6FB8 001A3FB8  93 FD 00 00 */	stw r31, 0(r29)
/* 801A6FBC 001A3FBC  2C 1A 00 10 */	cmpwi r26, 0x10
/* 801A6FC0 001A3FC0  3B BD 00 04 */	addi r29, r29, 4
/* 801A6FC4 001A3FC4  93 FC 00 00 */	stw r31, 0(r28)
/* 801A6FC8 001A3FC8  3B 9C 00 04 */	addi r28, r28, 4
/* 801A6FCC 001A3FCC  93 FE 00 00 */	stw r31, 0(r30)
/* 801A6FD0 001A3FD0  3B DE 00 04 */	addi r30, r30, 4
/* 801A6FD4 001A3FD4  41 80 FF C4 */	blt lbl_801A6F98
/* 801A6FD8 001A3FD8  39 61 00 20 */	addi r11, r1, 0x20
/* 801A6FDC 001A3FDC  4B FE 72 E9 */	bl func_8018E2C4
/* 801A6FE0 001A3FE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A6FE4 001A3FE4  7C 08 03 A6 */	mtlr r0
/* 801A6FE8 001A3FE8  38 21 00 20 */	addi r1, r1, 0x20
/* 801A6FEC 001A3FEC  4E 80 00 20 */	blr 

.global func_801A6FF0
func_801A6FF0:
/* 801A6FF0 001A3FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A6FF4 001A3FF4  7C 08 02 A6 */	mflr r0
/* 801A6FF8 001A3FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A6FFC 001A3FFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7000 001A4000  7C 9F 23 78 */	mr r31, r4
/* 801A7004 001A4004  93 C1 00 08 */	stw r30, 8(r1)
/* 801A7008 001A4008  7C 7E 1B 78 */	mr r30, r3
/* 801A700C 001A400C  80 0D 8F 80 */	lwz r0, lbl_802778A0-_SDA_BASE_(r13)
/* 801A7010 001A4010  28 00 00 00 */	cmplwi r0, 0
/* 801A7014 001A4014  40 82 00 1C */	bne lbl_801A7030
/* 801A7018 001A4018  38 60 00 9C */	li r3, 0x9c
/* 801A701C 001A401C  48 02 43 21 */	bl func_801CB33C
/* 801A7020 001A4020  90 6D 8F 80 */	stw r3, lbl_802778A0-_SDA_BASE_(r13)
/* 801A7024 001A4024  38 80 00 00 */	li r4, 0
/* 801A7028 001A4028  38 A0 00 9C */	li r5, 0x9c
/* 801A702C 001A402C  4B E5 E4 B9 */	bl memset
lbl_801A7030:
/* 801A7030 001A4030  80 0D 8F 80 */	lwz r0, lbl_802778A0-_SDA_BASE_(r13)
/* 801A7034 001A4034  28 00 00 00 */	cmplwi r0, 0
/* 801A7038 001A4038  7C 03 03 78 */	mr r3, r0
/* 801A703C 001A403C  40 82 00 0C */	bne lbl_801A7048
/* 801A7040 001A4040  38 60 00 00 */	li r3, 0
/* 801A7044 001A4044  48 00 00 70 */	b lbl_801A70B4
lbl_801A7048:
/* 801A7048 001A4048  A0 8D 8E FE */	lhz r4, lbl_8027781E-_SDA_BASE_(r13)
/* 801A704C 001A404C  A0 0D 8E F8 */	lhz r0, lbl_80277818-_SDA_BASE_(r13)
/* 801A7050 001A4050  38 84 00 01 */	addi r4, r4, 1
/* 801A7054 001A4054  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 801A7058 001A4058  B0 8D 8E FE */	sth r4, lbl_8027781E-_SDA_BASE_(r13)
/* 801A705C 001A405C  7C 05 00 40 */	cmplw r5, r0
/* 801A7060 001A4060  40 81 00 08 */	ble lbl_801A7068
/* 801A7064 001A4064  B0 AD 8E F8 */	sth r5, lbl_80277818-_SDA_BASE_(r13)
lbl_801A7068:
/* 801A7068 001A4068  80 03 00 00 */	lwz r0, 0(r3)
/* 801A706C 001A406C  28 1E 00 00 */	cmplwi r30, 0
/* 801A7070 001A4070  90 0D 8F 80 */	stw r0, lbl_802778A0-_SDA_BASE_(r13)
/* 801A7074 001A4074  40 82 00 20 */	bne lbl_801A7094
/* 801A7078 001A4078  3C 80 80 25 */	lis r4, lbl_8024AD70@ha
/* 801A707C 001A407C  57 E5 10 3A */	slwi r5, r31, 2
/* 801A7080 001A4080  38 84 AD 70 */	addi r4, r4, lbl_8024AD70@l
/* 801A7084 001A4084  7C 04 28 2E */	lwzx r0, r4, r5
/* 801A7088 001A4088  90 03 00 00 */	stw r0, 0(r3)
/* 801A708C 001A408C  7C 64 29 2E */	stwx r3, r4, r5
/* 801A7090 001A4090  48 00 00 10 */	b lbl_801A70A0
lbl_801A7094:
/* 801A7094 001A4094  80 1E 00 00 */	lwz r0, 0(r30)
/* 801A7098 001A4098  90 03 00 00 */	stw r0, 0(r3)
/* 801A709C 001A409C  90 7E 00 00 */	stw r3, 0(r30)
lbl_801A70A0:
/* 801A70A0 001A40A0  3C 80 80 25 */	lis r4, lbl_8024ADB0@ha
/* 801A70A4 001A40A4  57 E0 10 3A */	slwi r0, r31, 2
/* 801A70A8 001A40A8  38 84 AD B0 */	addi r4, r4, lbl_8024ADB0@l
/* 801A70AC 001A40AC  38 A0 00 01 */	li r5, 1
/* 801A70B0 001A40B0  7C A4 01 2E */	stwx r5, r4, r0
lbl_801A70B4:
/* 801A70B4 001A40B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A70B8 001A40B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A70BC 001A40BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A70C0 001A40C0  7C 08 03 A6 */	mtlr r0
/* 801A70C4 001A40C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801A70C8 001A40C8  4E 80 00 20 */	blr 

.global func_801A70CC
func_801A70CC:
/* 801A70CC 001A40CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A70D0 001A40D0  7C 08 02 A6 */	mflr r0
/* 801A70D4 001A40D4  3C A0 80 22 */	lis r5, lbl_80218990@ha
/* 801A70D8 001A40D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A70DC 001A40DC  38 A5 89 90 */	addi r5, r5, lbl_80218990@l
/* 801A70E0 001A40E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A70E4 001A40E4  7C 7F 1B 78 */	mr r31, r3
/* 801A70E8 001A40E8  93 C1 00 08 */	stw r30, 8(r1)
/* 801A70EC 001A40EC  7C 9E 23 79 */	or. r30, r4, r4
/* 801A70F0 001A40F0  38 80 00 01 */	li r4, 1
/* 801A70F4 001A40F4  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 801A70F8 001A40F8  3C 60 80 25 */	lis r3, lbl_8024ADB0@ha
/* 801A70FC 001A40FC  38 63 AD B0 */	addi r3, r3, lbl_8024ADB0@l
/* 801A7100 001A4100  54 00 10 3A */	slwi r0, r0, 2
/* 801A7104 001A4104  7C 83 01 2E */	stwx r4, r3, r0
/* 801A7108 001A4108  40 82 00 4C */	bne lbl_801A7154
/* 801A710C 001A410C  88 1F 00 1D */	lbz r0, 0x1d(r31)
/* 801A7110 001A4110  3C 60 80 25 */	lis r3, lbl_8024AD70@ha
/* 801A7114 001A4114  38 63 AD 70 */	addi r3, r3, lbl_8024AD70@l
/* 801A7118 001A4118  54 00 10 3A */	slwi r0, r0, 2
/* 801A711C 001A411C  7C 03 00 2E */	lwzx r0, r3, r0
/* 801A7120 001A4120  7C 00 F8 40 */	cmplw r0, r31
/* 801A7124 001A4124  41 82 00 14 */	beq lbl_801A7138
/* 801A7128 001A4128  38 65 00 00 */	addi r3, r5, 0
/* 801A712C 001A412C  38 A5 00 0C */	addi r5, r5, 0xc
/* 801A7130 001A4130  38 80 00 88 */	li r4, 0x88
/* 801A7134 001A4134  48 02 EC B1 */	bl func_801D5DE4
lbl_801A7138:
/* 801A7138 001A4138  88 1F 00 1D */	lbz r0, 0x1d(r31)
/* 801A713C 001A413C  3C 60 80 25 */	lis r3, lbl_8024AD70@ha
/* 801A7140 001A4140  80 9F 00 00 */	lwz r4, 0(r31)
/* 801A7144 001A4144  38 63 AD 70 */	addi r3, r3, lbl_8024AD70@l
/* 801A7148 001A4148  54 00 10 3A */	slwi r0, r0, 2
/* 801A714C 001A414C  7C 83 01 2E */	stwx r4, r3, r0
/* 801A7150 001A4150  48 00 00 28 */	b lbl_801A7178
lbl_801A7154:
/* 801A7154 001A4154  80 1E 00 00 */	lwz r0, 0(r30)
/* 801A7158 001A4158  7C 00 F8 40 */	cmplw r0, r31
/* 801A715C 001A415C  41 82 00 14 */	beq lbl_801A7170
/* 801A7160 001A4160  38 65 00 00 */	addi r3, r5, 0
/* 801A7164 001A4164  38 A5 00 30 */	addi r5, r5, 0x30
/* 801A7168 001A4168  38 80 00 8B */	li r4, 0x8b
/* 801A716C 001A416C  48 02 EC 79 */	bl func_801D5DE4
lbl_801A7170:
/* 801A7170 001A4170  80 1F 00 00 */	lwz r0, 0(r31)
/* 801A7174 001A4174  90 1E 00 00 */	stw r0, 0(r30)
lbl_801A7178:
/* 801A7178 001A4178  80 0D 8F 80 */	lwz r0, lbl_802778A0-_SDA_BASE_(r13)
/* 801A717C 001A417C  90 1F 00 00 */	stw r0, 0(r31)
/* 801A7180 001A4180  A0 6D 8E FE */	lhz r3, lbl_8027781E-_SDA_BASE_(r13)
/* 801A7184 001A4184  93 ED 8F 80 */	stw r31, lbl_802778A0-_SDA_BASE_(r13)
/* 801A7188 001A4188  38 03 FF FF */	addi r0, r3, -1
/* 801A718C 001A418C  B0 0D 8E FE */	sth r0, lbl_8027781E-_SDA_BASE_(r13)
/* 801A7190 001A4190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7194 001A4194  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A7198 001A4198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A719C 001A419C  7C 08 03 A6 */	mtlr r0
/* 801A71A0 001A41A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A71A4 001A41A4  4E 80 00 20 */	blr 

.global func_801A71A8
func_801A71A8:
/* 801A71A8 001A41A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A71AC 001A41AC  7C 08 02 A6 */	mflr r0
/* 801A71B0 001A41B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A71B4 001A41B4  38 00 00 00 */	li r0, 0
/* 801A71B8 001A41B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A71BC 001A41BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 801A71C0 001A41C0  41 80 00 10 */	blt lbl_801A71D0
/* 801A71C4 001A41C4  2C 1F 00 10 */	cmpwi r31, 0x10
/* 801A71C8 001A41C8  40 80 00 08 */	bge lbl_801A71D0
/* 801A71CC 001A41CC  38 00 00 01 */	li r0, 1
lbl_801A71D0:
/* 801A71D0 001A41D0  2C 00 00 00 */	cmpwi r0, 0
/* 801A71D4 001A41D4  40 82 00 1C */	bne lbl_801A71F0
/* 801A71D8 001A41D8  3C 60 80 22 */	lis r3, lbl_80218990@ha
/* 801A71DC 001A41DC  3C A0 80 22 */	lis r5, lbl_802189D4@ha
/* 801A71E0 001A41E0  38 63 89 90 */	addi r3, r3, lbl_80218990@l
/* 801A71E4 001A41E4  38 80 00 98 */	li r4, 0x98
/* 801A71E8 001A41E8  38 A5 89 D4 */	addi r5, r5, lbl_802189D4@l
/* 801A71EC 001A41EC  48 02 EB F9 */	bl func_801D5DE4
lbl_801A71F0:
/* 801A71F0 001A41F0  3C 60 80 25 */	lis r3, lbl_8024AD70@ha
/* 801A71F4 001A41F4  57 E0 10 3A */	slwi r0, r31, 2
/* 801A71F8 001A41F8  38 63 AD 70 */	addi r3, r3, lbl_8024AD70@l
/* 801A71FC 001A41FC  7C 63 00 2E */	lwzx r3, r3, r0
/* 801A7200 001A4200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7204 001A4204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7208 001A4208  7C 08 03 A6 */	mtlr r0
/* 801A720C 001A420C  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7210 001A4210  4E 80 00 20 */	blr 

.global func_801A7214
func_801A7214:
/* 801A7214 001A4214  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801A7218 001A4218  7C 08 02 A6 */	mflr r0
/* 801A721C 001A421C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801A7220 001A4220  39 61 00 A0 */	addi r11, r1, 0xa0
/* 801A7224 001A4224  4B FE 70 55 */	bl func_8018E278
/* 801A7228 001A4228  3C C0 80 25 */	lis r6, lbl_8024AD70@ha
/* 801A722C 001A422C  54 7E 10 3A */	slwi r30, r3, 2
/* 801A7230 001A4230  3B E6 AD 70 */	addi r31, r6, lbl_8024AD70@l
/* 801A7234 001A4234  7C 9A 23 78 */	mr r26, r4
/* 801A7238 001A4238  38 7F 00 40 */	addi r3, r31, 0x40
/* 801A723C 001A423C  7C BB 2B 78 */	mr r27, r5
/* 801A7240 001A4240  7C 03 F0 2E */	lwzx r0, r3, r30
/* 801A7244 001A4244  3B BF 00 00 */	addi r29, r31, 0
/* 801A7248 001A4248  7F 9D F0 2E */	lwzx r28, r29, r30
/* 801A724C 001A424C  2C 00 00 00 */	cmpwi r0, 0
/* 801A7250 001A4250  40 82 00 50 */	bne lbl_801A72A0
/* 801A7254 001A4254  28 1C 00 00 */	cmplwi r28, 0
/* 801A7258 001A4258  40 82 00 18 */	bne lbl_801A7270
/* 801A725C 001A425C  38 00 00 00 */	li r0, 0
/* 801A7260 001A4260  38 60 00 00 */	li r3, 0
/* 801A7264 001A4264  90 1A 00 00 */	stw r0, 0(r26)
/* 801A7268 001A4268  90 1B 00 00 */	stw r0, 0(r27)
/* 801A726C 001A426C  48 00 02 C8 */	b lbl_801A7534
lbl_801A7270:
/* 801A7270 001A4270  80 1C 00 04 */	lwz r0, 4(r28)
/* 801A7274 001A4274  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801A7278 001A4278  41 82 00 0C */	beq lbl_801A7284
/* 801A727C 001A427C  93 9A 00 00 */	stw r28, 0(r26)
/* 801A7280 001A4280  48 00 00 0C */	b lbl_801A728C
lbl_801A7284:
/* 801A7284 001A4284  38 00 00 00 */	li r0, 0
/* 801A7288 001A4288  90 1A 00 00 */	stw r0, 0(r26)
lbl_801A728C:
/* 801A728C 001A428C  38 9F 00 80 */	addi r4, r31, 0x80
/* 801A7290 001A4290  7F 83 E3 78 */	mr r3, r28
/* 801A7294 001A4294  7C 04 F0 2E */	lwzx r0, r4, r30
/* 801A7298 001A4298  90 1B 00 00 */	stw r0, 0(r27)
/* 801A729C 001A429C  48 00 02 98 */	b lbl_801A7534
lbl_801A72A0:
/* 801A72A0 001A42A0  38 00 00 00 */	li r0, 0
/* 801A72A4 001A42A4  28 1C 00 00 */	cmplwi r28, 0
/* 801A72A8 001A42A8  7C 03 F1 2E */	stwx r0, r3, r30
/* 801A72AC 001A42AC  40 82 00 1C */	bne lbl_801A72C8
/* 801A72B0 001A42B0  38 9F 00 80 */	addi r4, r31, 0x80
/* 801A72B4 001A42B4  38 60 00 00 */	li r3, 0
/* 801A72B8 001A42B8  7C 04 F1 2E */	stwx r0, r4, r30
/* 801A72BC 001A42BC  90 1A 00 00 */	stw r0, 0(r26)
/* 801A72C0 001A42C0  90 1B 00 00 */	stw r0, 0(r27)
/* 801A72C4 001A42C4  48 00 02 70 */	b lbl_801A7534
lbl_801A72C8:
/* 801A72C8 001A42C8  38 61 00 08 */	addi r3, r1, 8
/* 801A72CC 001A42CC  38 80 00 00 */	li r4, 0
/* 801A72D0 001A42D0  38 A0 00 80 */	li r5, 0x80
/* 801A72D4 001A42D4  4B E5 E2 11 */	bl memset
/* 801A72D8 001A42D8  80 BC 00 04 */	lwz r5, 4(r28)
/* 801A72DC 001A42DC  38 81 00 08 */	addi r4, r1, 8
/* 801A72E0 001A42E0  3C 60 0E 00 */	lis r3, 0x0E000008@ha
/* 801A72E4 001A42E4  54 A0 EF FE */	rlwinm r0, r5, 0x1d, 0x1f, 0x1f
/* 801A72E8 001A42E8  54 A6 3F 7E */	rlwinm r6, r5, 7, 0x1d, 0x1f
/* 801A72EC 001A42EC  68 00 00 01 */	xori r0, r0, 1
/* 801A72F0 001A42F0  38 A3 00 08 */	addi r5, r3, 0x0E000008@l
/* 801A72F4 001A42F4  54 00 18 38 */	slwi r0, r0, 3
/* 801A72F8 001A42F8  7C E6 02 14 */	add r7, r6, r0
/* 801A72FC 001A42FC  54 E0 18 38 */	slwi r0, r7, 3
/* 801A7300 001A4300  7F 84 01 2E */	stwx r28, r4, r0
/* 801A7304 001A4304  80 DC 00 00 */	lwz r6, 0(r28)
/* 801A7308 001A4308  48 00 00 6C */	b lbl_801A7374
lbl_801A730C:
/* 801A730C 001A430C  80 7C 00 04 */	lwz r3, 4(r28)
/* 801A7310 001A4310  80 06 00 04 */	lwz r0, 4(r6)
/* 801A7314 001A4314  7C 60 02 78 */	xor r0, r3, r0
/* 801A7318 001A4318  7C 00 28 39 */	and. r0, r0, r5
/* 801A731C 001A431C  41 82 00 50 */	beq lbl_801A736C
/* 801A7320 001A4320  54 E3 18 38 */	slwi r3, r7, 3
/* 801A7324 001A4324  38 81 00 08 */	addi r4, r1, 8
/* 801A7328 001A4328  38 03 00 04 */	addi r0, r3, 4
/* 801A732C 001A432C  7F 84 01 2E */	stwx r28, r4, r0
/* 801A7330 001A4330  80 66 00 04 */	lwz r3, 4(r6)
/* 801A7334 001A4334  54 60 EF FE */	rlwinm r0, r3, 0x1d, 0x1f, 0x1f
/* 801A7338 001A4338  54 63 3F 7E */	rlwinm r3, r3, 7, 0x1d, 0x1f
/* 801A733C 001A433C  68 00 00 01 */	xori r0, r0, 1
/* 801A7340 001A4340  54 00 18 38 */	slwi r0, r0, 3
/* 801A7344 001A4344  7C E3 02 14 */	add r7, r3, r0
/* 801A7348 001A4348  54 E0 18 38 */	slwi r0, r7, 3
/* 801A734C 001A434C  7C 64 02 14 */	add r3, r4, r0
/* 801A7350 001A4350  80 03 00 00 */	lwz r0, 0(r3)
/* 801A7354 001A4354  28 00 00 00 */	cmplwi r0, 0
/* 801A7358 001A4358  40 82 00 0C */	bne lbl_801A7364
/* 801A735C 001A435C  90 C3 00 00 */	stw r6, 0(r3)
/* 801A7360 001A4360  48 00 00 0C */	b lbl_801A736C
lbl_801A7364:
/* 801A7364 001A4364  80 63 00 04 */	lwz r3, 4(r3)
/* 801A7368 001A4368  90 C3 00 00 */	stw r6, 0(r3)
lbl_801A736C:
/* 801A736C 001A436C  7C DC 33 78 */	mr r28, r6
/* 801A7370 001A4370  80 C6 00 00 */	lwz r6, 0(r6)
lbl_801A7374:
/* 801A7374 001A4374  28 06 00 00 */	cmplwi r6, 0
/* 801A7378 001A4378  40 82 FF 94 */	bne lbl_801A730C
/* 801A737C 001A437C  54 E4 18 38 */	slwi r4, r7, 3
/* 801A7380 001A4380  38 61 00 0C */	addi r3, r1, 0xc
/* 801A7384 001A4384  38 00 00 02 */	li r0, 2
/* 801A7388 001A4388  7F 83 21 2E */	stwx r28, r3, r4
/* 801A738C 001A438C  38 61 00 08 */	addi r3, r1, 8
/* 801A7390 001A4390  38 E0 00 00 */	li r7, 0
/* 801A7394 001A4394  38 A0 00 00 */	li r5, 0
/* 801A7398 001A4398  39 00 00 00 */	li r8, 0
/* 801A739C 001A439C  38 C0 00 00 */	li r6, 0
/* 801A73A0 001A43A0  38 80 00 00 */	li r4, 0
/* 801A73A4 001A43A4  7C 09 03 A6 */	mtctr r0
lbl_801A73A8:
/* 801A73A8 001A43A8  80 03 00 00 */	lwz r0, 0(r3)
/* 801A73AC 001A43AC  28 00 00 00 */	cmplwi r0, 0
/* 801A73B0 001A43B0  41 82 00 1C */	beq lbl_801A73CC
/* 801A73B4 001A43B4  28 05 00 00 */	cmplwi r5, 0
/* 801A73B8 001A43B8  40 82 00 0C */	bne lbl_801A73C4
/* 801A73BC 001A43BC  7C 05 03 78 */	mr r5, r0
/* 801A73C0 001A43C0  48 00 00 08 */	b lbl_801A73C8
lbl_801A73C4:
/* 801A73C4 001A43C4  90 07 00 00 */	stw r0, 0(r7)
lbl_801A73C8:
/* 801A73C8 001A43C8  80 E3 00 04 */	lwz r7, 4(r3)
lbl_801A73CC:
/* 801A73CC 001A43CC  80 03 00 08 */	lwz r0, 8(r3)
/* 801A73D0 001A43D0  28 00 00 00 */	cmplwi r0, 0
/* 801A73D4 001A43D4  41 82 00 1C */	beq lbl_801A73F0
/* 801A73D8 001A43D8  28 05 00 00 */	cmplwi r5, 0
/* 801A73DC 001A43DC  40 82 00 0C */	bne lbl_801A73E8
/* 801A73E0 001A43E0  7C 05 03 78 */	mr r5, r0
/* 801A73E4 001A43E4  48 00 00 08 */	b lbl_801A73EC
lbl_801A73E8:
/* 801A73E8 001A43E8  90 07 00 00 */	stw r0, 0(r7)
lbl_801A73EC:
/* 801A73EC 001A43EC  80 E3 00 0C */	lwz r7, 0xc(r3)
lbl_801A73F0:
/* 801A73F0 001A43F0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801A73F4 001A43F4  28 00 00 00 */	cmplwi r0, 0
/* 801A73F8 001A43F8  41 82 00 1C */	beq lbl_801A7414
/* 801A73FC 001A43FC  28 05 00 00 */	cmplwi r5, 0
/* 801A7400 001A4400  40 82 00 0C */	bne lbl_801A740C
/* 801A7404 001A4404  7C 05 03 78 */	mr r5, r0
/* 801A7408 001A4408  48 00 00 08 */	b lbl_801A7410
lbl_801A740C:
/* 801A740C 001A440C  90 07 00 00 */	stw r0, 0(r7)
lbl_801A7410:
/* 801A7410 001A4410  80 E3 00 14 */	lwz r7, 0x14(r3)
lbl_801A7414:
/* 801A7414 001A4414  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801A7418 001A4418  28 00 00 00 */	cmplwi r0, 0
/* 801A741C 001A441C  41 82 00 1C */	beq lbl_801A7438
/* 801A7420 001A4420  28 05 00 00 */	cmplwi r5, 0
/* 801A7424 001A4424  40 82 00 0C */	bne lbl_801A7430
/* 801A7428 001A4428  7C 05 03 78 */	mr r5, r0
/* 801A742C 001A442C  48 00 00 08 */	b lbl_801A7434
lbl_801A7430:
/* 801A7430 001A4430  90 07 00 00 */	stw r0, 0(r7)
lbl_801A7434:
/* 801A7434 001A4434  80 E3 00 1C */	lwz r7, 0x1c(r3)
lbl_801A7438:
/* 801A7438 001A4438  38 63 00 20 */	addi r3, r3, 0x20
/* 801A743C 001A443C  38 84 00 03 */	addi r4, r4, 3
/* 801A7440 001A4440  42 00 FF 68 */	bdnz lbl_801A73A8
/* 801A7444 001A4444  38 00 00 02 */	li r0, 2
/* 801A7448 001A4448  38 61 00 48 */	addi r3, r1, 0x48
/* 801A744C 001A444C  38 80 00 08 */	li r4, 8
/* 801A7450 001A4450  7C 09 03 A6 */	mtctr r0
lbl_801A7454:
/* 801A7454 001A4454  80 03 00 00 */	lwz r0, 0(r3)
/* 801A7458 001A4458  28 00 00 00 */	cmplwi r0, 0
/* 801A745C 001A445C  41 82 00 1C */	beq lbl_801A7478
/* 801A7460 001A4460  28 06 00 00 */	cmplwi r6, 0
/* 801A7464 001A4464  40 82 00 0C */	bne lbl_801A7470
/* 801A7468 001A4468  7C 06 03 78 */	mr r6, r0
/* 801A746C 001A446C  48 00 00 08 */	b lbl_801A7474
lbl_801A7470:
/* 801A7470 001A4470  90 08 00 00 */	stw r0, 0(r8)
lbl_801A7474:
/* 801A7474 001A4474  81 03 00 04 */	lwz r8, 4(r3)
lbl_801A7478:
/* 801A7478 001A4478  80 03 00 08 */	lwz r0, 8(r3)
/* 801A747C 001A447C  28 00 00 00 */	cmplwi r0, 0
/* 801A7480 001A4480  41 82 00 1C */	beq lbl_801A749C
/* 801A7484 001A4484  28 06 00 00 */	cmplwi r6, 0
/* 801A7488 001A4488  40 82 00 0C */	bne lbl_801A7494
/* 801A748C 001A448C  7C 06 03 78 */	mr r6, r0
/* 801A7490 001A4490  48 00 00 08 */	b lbl_801A7498
lbl_801A7494:
/* 801A7494 001A4494  90 08 00 00 */	stw r0, 0(r8)
lbl_801A7498:
/* 801A7498 001A4498  81 03 00 0C */	lwz r8, 0xc(r3)
lbl_801A749C:
/* 801A749C 001A449C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801A74A0 001A44A0  28 00 00 00 */	cmplwi r0, 0
/* 801A74A4 001A44A4  41 82 00 1C */	beq lbl_801A74C0
/* 801A74A8 001A44A8  28 06 00 00 */	cmplwi r6, 0
/* 801A74AC 001A44AC  40 82 00 0C */	bne lbl_801A74B8
/* 801A74B0 001A44B0  7C 06 03 78 */	mr r6, r0
/* 801A74B4 001A44B4  48 00 00 08 */	b lbl_801A74BC
lbl_801A74B8:
/* 801A74B8 001A44B8  90 08 00 00 */	stw r0, 0(r8)
lbl_801A74BC:
/* 801A74BC 001A44BC  81 03 00 14 */	lwz r8, 0x14(r3)
lbl_801A74C0:
/* 801A74C0 001A44C0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801A74C4 001A44C4  28 00 00 00 */	cmplwi r0, 0
/* 801A74C8 001A44C8  41 82 00 1C */	beq lbl_801A74E4
/* 801A74CC 001A44CC  28 06 00 00 */	cmplwi r6, 0
/* 801A74D0 001A44D0  40 82 00 0C */	bne lbl_801A74DC
/* 801A74D4 001A44D4  7C 06 03 78 */	mr r6, r0
/* 801A74D8 001A44D8  48 00 00 08 */	b lbl_801A74E0
lbl_801A74DC:
/* 801A74DC 001A44DC  90 08 00 00 */	stw r0, 0(r8)
lbl_801A74E0:
/* 801A74E0 001A44E0  81 03 00 1C */	lwz r8, 0x1c(r3)
lbl_801A74E4:
/* 801A74E4 001A44E4  38 63 00 20 */	addi r3, r3, 0x20
/* 801A74E8 001A44E8  38 84 00 03 */	addi r4, r4, 3
/* 801A74EC 001A44EC  42 00 FF 68 */	bdnz lbl_801A7454
/* 801A74F0 001A44F0  28 07 00 00 */	cmplwi r7, 0
/* 801A74F4 001A44F4  38 60 00 00 */	li r3, 0
/* 801A74F8 001A44F8  41 82 00 0C */	beq lbl_801A7504
/* 801A74FC 001A44FC  7C A3 2B 78 */	mr r3, r5
/* 801A7500 001A4500  90 C7 00 00 */	stw r6, 0(r7)
lbl_801A7504:
/* 801A7504 001A4504  28 08 00 00 */	cmplwi r8, 0
/* 801A7508 001A4508  41 82 00 18 */	beq lbl_801A7520
/* 801A750C 001A450C  28 03 00 00 */	cmplwi r3, 0
/* 801A7510 001A4510  40 82 00 08 */	bne lbl_801A7518
/* 801A7514 001A4514  7C C3 33 78 */	mr r3, r6
lbl_801A7518:
/* 801A7518 001A4518  38 00 00 00 */	li r0, 0
/* 801A751C 001A451C  90 08 00 00 */	stw r0, 0(r8)
lbl_801A7520:
/* 801A7520 001A4520  38 9F 00 80 */	addi r4, r31, 0x80
/* 801A7524 001A4524  7C 7D F1 2E */	stwx r3, r29, r30
/* 801A7528 001A4528  7C C4 F1 2E */	stwx r6, r4, r30
/* 801A752C 001A452C  90 BA 00 00 */	stw r5, 0(r26)
/* 801A7530 001A4530  90 DB 00 00 */	stw r6, 0(r27)
lbl_801A7534:
/* 801A7534 001A4534  39 61 00 A0 */	addi r11, r1, 0xa0
/* 801A7538 001A4538  4B FE 6D 8D */	bl func_8018E2C4
/* 801A753C 001A453C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801A7540 001A4540  7C 08 03 A6 */	mtlr r0
/* 801A7544 001A4544  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801A7548 001A4548  4E 80 00 20 */	blr 