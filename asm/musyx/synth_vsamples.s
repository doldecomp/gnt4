.include "macros.inc"

.section .text  # 0x801F10C4 - 0x801F1A5C

.global vsInit
vsInit:
/* 801F10C4 001EE0C4  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F10C8 001EE0C8  38 80 00 00 */	li r4, 0
/* 801F10CC 001EE0CC  38 A3 A7 50 */	addi r5, r3, lbl_8026A750@l
/* 801F10D0 001EE0D0  38 00 00 02 */	li r0, 2
/* 801F10D4 001EE0D4  98 85 00 00 */	stb r4, 0(r5)
/* 801F10D8 001EE0D8  38 60 00 FF */	li r3, 0xff
/* 801F10DC 001EE0DC  7C 09 03 A6 */	mtctr r0
lbl_801F10E0:
/* 801F10E0 001EE0E0  98 65 0B 08 */	stb r3, 0xb08(r5)
/* 801F10E4 001EE0E4  98 65 0B 09 */	stb r3, 0xb09(r5)
/* 801F10E8 001EE0E8  98 65 0B 0A */	stb r3, 0xb0a(r5)
/* 801F10EC 001EE0EC  98 65 0B 0B */	stb r3, 0xb0b(r5)
/* 801F10F0 001EE0F0  98 65 0B 0C */	stb r3, 0xb0c(r5)
/* 801F10F4 001EE0F4  98 65 0B 0D */	stb r3, 0xb0d(r5)
/* 801F10F8 001EE0F8  98 65 0B 0E */	stb r3, 0xb0e(r5)
/* 801F10FC 001EE0FC  98 65 0B 0F */	stb r3, 0xb0f(r5)
/* 801F1100 001EE100  98 65 0B 10 */	stb r3, 0xb10(r5)
/* 801F1104 001EE104  98 65 0B 11 */	stb r3, 0xb11(r5)
/* 801F1108 001EE108  98 65 0B 12 */	stb r3, 0xb12(r5)
/* 801F110C 001EE10C  98 65 0B 13 */	stb r3, 0xb13(r5)
/* 801F1110 001EE110  98 65 0B 14 */	stb r3, 0xb14(r5)
/* 801F1114 001EE114  98 65 0B 15 */	stb r3, 0xb15(r5)
/* 801F1118 001EE118  98 65 0B 16 */	stb r3, 0xb16(r5)
/* 801F111C 001EE11C  98 65 0B 17 */	stb r3, 0xb17(r5)
/* 801F1120 001EE120  98 65 0B 18 */	stb r3, 0xb18(r5)
/* 801F1124 001EE124  98 65 0B 19 */	stb r3, 0xb19(r5)
/* 801F1128 001EE128  98 65 0B 1A */	stb r3, 0xb1a(r5)
/* 801F112C 001EE12C  98 65 0B 1B */	stb r3, 0xb1b(r5)
/* 801F1130 001EE130  98 65 0B 1C */	stb r3, 0xb1c(r5)
/* 801F1134 001EE134  98 65 0B 1D */	stb r3, 0xb1d(r5)
/* 801F1138 001EE138  98 65 0B 1E */	stb r3, 0xb1e(r5)
/* 801F113C 001EE13C  98 65 0B 1F */	stb r3, 0xb1f(r5)
/* 801F1140 001EE140  98 65 0B 20 */	stb r3, 0xb20(r5)
/* 801F1144 001EE144  98 65 0B 21 */	stb r3, 0xb21(r5)
/* 801F1148 001EE148  98 65 0B 22 */	stb r3, 0xb22(r5)
/* 801F114C 001EE14C  98 65 0B 23 */	stb r3, 0xb23(r5)
/* 801F1150 001EE150  98 65 0B 24 */	stb r3, 0xb24(r5)
/* 801F1154 001EE154  98 65 0B 25 */	stb r3, 0xb25(r5)
/* 801F1158 001EE158  98 65 0B 26 */	stb r3, 0xb26(r5)
/* 801F115C 001EE15C  98 65 0B 27 */	stb r3, 0xb27(r5)
/* 801F1160 001EE160  38 A5 00 20 */	addi r5, r5, 0x20
/* 801F1164 001EE164  42 00 FF 7C */	bdnz lbl_801F10E0
/* 801F1168 001EE168  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F116C 001EE16C  38 00 00 00 */	li r0, 0
/* 801F1170 001EE170  38 63 A7 50 */	addi r3, r3, lbl_8026A750@l
/* 801F1174 001EE174  B0 03 0B 48 */	sth r0, 0xb48(r3)
/* 801F1178 001EE178  90 03 0B 4C */	stw r0, 0xb4c(r3)
/* 801F117C 001EE17C  4E 80 00 20 */	blr 

.global vsSampleStartNotify
vsSampleStartNotify:
/* 801F1180 001EE180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F1184 001EE184  7C 08 02 A6 */	mflr r0
/* 801F1188 001EE188  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F118C 001EE18C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F1190 001EE190  4B F9 D0 E9 */	bl _savegpr_26
/* 801F1194 001EE194  7C 7D 1B 78 */	mr r29, r3
/* 801F1198 001EE198  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F119C 001EE19C  57 A7 06 3E */	clrlwi r7, r29, 0x18
/* 801F11A0 001EE1A0  39 20 00 00 */	li r9, 0
/* 801F11A4 001EE1A4  7C FB 3B 78 */	mr r27, r7
/* 801F11A8 001EE1A8  38 C3 A7 50 */	addi r6, r3, lbl_8026A750@l
/* 801F11AC 001EE1AC  38 A0 00 00 */	li r5, 0
/* 801F11B0 001EE1B0  38 80 00 FF */	li r4, 0xff
/* 801F11B4 001EE1B4  48 00 00 44 */	b lbl_801F11F8
lbl_801F11B8:
/* 801F11B8 001EE1B8  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 801F11BC 001EE1BC  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 801F11C0 001EE1C0  7C 66 02 14 */	add r3, r6, r0
/* 801F11C4 001EE1C4  39 03 00 08 */	addi r8, r3, 8
/* 801F11C8 001EE1C8  88 03 00 08 */	lbz r0, 8(r3)
/* 801F11CC 001EE1CC  28 00 00 00 */	cmplwi r0, 0
/* 801F11D0 001EE1D0  41 82 00 24 */	beq lbl_801F11F4
/* 801F11D4 001EE1D4  38 63 00 0B */	addi r3, r3, 0xb
/* 801F11D8 001EE1D8  88 03 00 00 */	lbz r0, 0(r3)
/* 801F11DC 001EE1DC  7C 00 38 40 */	cmplw r0, r7
/* 801F11E0 001EE1E0  40 82 00 14 */	bne lbl_801F11F4
/* 801F11E4 001EE1E4  98 A8 00 00 */	stb r5, 0(r8)
/* 801F11E8 001EE1E8  88 03 00 00 */	lbz r0, 0(r3)
/* 801F11EC 001EE1EC  7C 66 02 14 */	add r3, r6, r0
/* 801F11F0 001EE1F0  98 83 0B 08 */	stb r4, 0xb08(r3)
lbl_801F11F4:
/* 801F11F4 001EE1F4  39 29 00 01 */	addi r9, r9, 1
lbl_801F11F8:
/* 801F11F8 001EE1F8  89 06 00 00 */	lbz r8, 0(r6)
/* 801F11FC 001EE1FC  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 801F1200 001EE200  7C 00 40 40 */	cmplw r0, r8
/* 801F1204 001EE204  41 80 FF B4 */	blt lbl_801F11B8
/* 801F1208 001EE208  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F120C 001EE20C  3B E0 00 00 */	li r31, 0
/* 801F1210 001EE210  38 83 A7 50 */	addi r4, r3, lbl_8026A750@l
/* 801F1214 001EE214  48 00 00 40 */	b lbl_801F1254
lbl_801F1218:
/* 801F1218 001EE218  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F121C 001EE21C  1C A0 00 2C */	mulli r5, r0, 0x2c
/* 801F1220 001EE220  7C 64 2A 14 */	add r3, r4, r5
/* 801F1224 001EE224  88 03 00 08 */	lbz r0, 8(r3)
/* 801F1228 001EE228  28 00 00 00 */	cmplwi r0, 0
/* 801F122C 001EE22C  40 82 00 24 */	bne lbl_801F1250
/* 801F1230 001EE230  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F1234 001EE234  38 80 00 01 */	li r4, 1
/* 801F1238 001EE238  38 63 A7 50 */	addi r3, r3, lbl_8026A750@l
/* 801F123C 001EE23C  38 00 00 00 */	li r0, 0
/* 801F1240 001EE240  7C 63 2A 14 */	add r3, r3, r5
/* 801F1244 001EE244  98 83 00 08 */	stb r4, 8(r3)
/* 801F1248 001EE248  90 03 00 0C */	stw r0, 0xc(r3)
/* 801F124C 001EE24C  48 00 00 18 */	b lbl_801F1264
lbl_801F1250:
/* 801F1250 001EE250  3B FF 00 01 */	addi r31, r31, 1
lbl_801F1254:
/* 801F1254 001EE254  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F1258 001EE258  7C 00 40 40 */	cmplw r0, r8
/* 801F125C 001EE25C  41 80 FF BC */	blt lbl_801F1218
/* 801F1260 001EE260  3B E0 00 FF */	li r31, 0xff
lbl_801F1264:
/* 801F1264 001EE264  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F1268 001EE268  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F126C 001EE26C  38 63 A7 50 */	addi r3, r3, lbl_8026A750@l
/* 801F1270 001EE270  57 7E 06 3E */	clrlwi r30, r27, 0x18
/* 801F1274 001EE274  3B 83 0B 08 */	addi r28, r3, 0xb08
/* 801F1278 001EE278  28 00 00 FF */	cmplwi r0, 0xff
/* 801F127C 001EE27C  7F FC F1 AE */	stbx r31, r28, r30
/* 801F1280 001EE280  41 82 01 A0 */	beq lbl_801F1420
/* 801F1284 001EE284  7C 7C F0 AE */	lbzx r3, r28, r30
/* 801F1288 001EE288  38 80 00 00 */	li r4, 0
/* 801F128C 001EE28C  48 00 AC BD */	bl aramGetStreamBufferAddress
/* 801F1290 001EE290  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F1294 001EE294  7C 60 1B 78 */	mr r0, r3
/* 801F1298 001EE298  38 A4 A7 50 */	addi r5, r4, lbl_8026A750@l
/* 801F129C 001EE29C  7F C3 F3 78 */	mr r3, r30
/* 801F12A0 001EE2A0  80 A5 00 04 */	lwz r5, 4(r5)
/* 801F12A4 001EE2A4  7C 04 03 78 */	mr r4, r0
/* 801F12A8 001EE2A8  48 00 97 C5 */	bl hwSetVirtualSampleLoopBuffer
/* 801F12AC 001EE2AC  7F C3 F3 78 */	mr r3, r30
/* 801F12B0 001EE2B0  48 00 98 05 */	bl hwGetSampleID
/* 801F12B4 001EE2B4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F12B8 001EE2B8  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F12BC 001EE2BC  1F E0 00 2C */	mulli r31, r0, 0x2c
/* 801F12C0 001EE2C0  38 C4 A7 50 */	addi r6, r4, lbl_8026A750@l
/* 801F12C4 001EE2C4  7C 86 FA 14 */	add r4, r6, r31
/* 801F12C8 001EE2C8  B0 64 00 18 */	sth r3, 0x18(r4)
/* 801F12CC 001EE2CC  88 E6 00 00 */	lbz r7, 0(r6)
lbl_801F12D0:
/* 801F12D0 001EE2D0  A0 A6 0B 48 */	lhz r5, 0xb48(r6)
/* 801F12D4 001EE2D4  38 60 00 00 */	li r3, 0
/* 801F12D8 001EE2D8  38 05 00 01 */	addi r0, r5, 1
/* 801F12DC 001EE2DC  B0 06 0B 48 */	sth r0, 0xb48(r6)
/* 801F12E0 001EE2E0  48 00 00 2C */	b lbl_801F130C
lbl_801F12E4:
/* 801F12E4 001EE2E4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F12E8 001EE2E8  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 801F12EC 001EE2EC  7C 86 02 14 */	add r4, r6, r0
/* 801F12F0 001EE2F0  88 04 00 08 */	lbz r0, 8(r4)
/* 801F12F4 001EE2F4  28 00 00 00 */	cmplwi r0, 0
/* 801F12F8 001EE2F8  41 82 00 10 */	beq lbl_801F1308
/* 801F12FC 001EE2FC  A0 04 00 1A */	lhz r0, 0x1a(r4)
/* 801F1300 001EE300  7C 00 28 40 */	cmplw r0, r5
/* 801F1304 001EE304  41 82 00 14 */	beq lbl_801F1318
lbl_801F1308:
/* 801F1308 001EE308  38 63 00 01 */	addi r3, r3, 1
lbl_801F130C:
/* 801F130C 001EE30C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F1310 001EE310  7C 00 38 40 */	cmplw r0, r7
/* 801F1314 001EE314  41 80 FF D0 */	blt lbl_801F12E4
lbl_801F1318:
/* 801F1318 001EE318  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F131C 001EE31C  7C 00 38 40 */	cmplw r0, r7
/* 801F1320 001EE320  40 82 FF B0 */	bne lbl_801F12D0
/* 801F1324 001EE324  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F1328 001EE328  7F A3 EB 78 */	mr r3, r29
/* 801F132C 001EE32C  38 04 A7 50 */	addi r0, r4, lbl_8026A750@l
/* 801F1330 001EE330  7F A0 FA 14 */	add r29, r0, r31
/* 801F1334 001EE334  B4 BD 00 1A */	sthu r5, 0x1a(r29)
/* 801F1338 001EE338  4B FF DE 51 */	bl vidGetPublicId
/* 801F133C 001EE33C  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F1340 001EE340  3C 03 00 01 */	addis r0, r3, 1
/* 801F1344 001EE344  38 84 A7 50 */	addi r4, r4, lbl_8026A750@l
/* 801F1348 001EE348  7C A4 FA 14 */	add r5, r4, r31
/* 801F134C 001EE34C  28 00 FF FF */	cmplwi r0, 0xffff
/* 801F1350 001EE350  94 65 00 1C */	stwu r3, 0x1c(r5)
/* 801F1354 001EE354  41 82 00 20 */	beq lbl_801F1374
/* 801F1358 001EE358  80 65 00 00 */	lwz r3, 0(r5)
/* 801F135C 001EE35C  4B FF 5A F5 */	bl seqGetInstanceForVoice
/* 801F1360 001EE360  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F1364 001EE364  38 04 A7 50 */	addi r0, r4, lbl_8026A750@l
/* 801F1368 001EE368  7C 80 FA 14 */	add r4, r0, r31
/* 801F136C 001EE36C  90 64 00 20 */	stw r3, 0x20(r4)
/* 801F1370 001EE370  48 00 00 10 */	b lbl_801F1380
lbl_801F1374:
/* 801F1374 001EE374  7C 64 FA 14 */	add r3, r4, r31
/* 801F1378 001EE378  38 00 FF FF */	li r0, -1
/* 801F137C 001EE37C  90 03 00 20 */	stw r0, 0x20(r3)
lbl_801F1380:
/* 801F1380 001EE380  7F C3 F3 78 */	mr r3, r30
/* 801F1384 001EE384  48 00 97 45 */	bl hwGetSampleExtraData
/* 801F1388 001EE388  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F138C 001EE38C  38 04 A7 50 */	addi r0, r4, lbl_8026A750@l
/* 801F1390 001EE390  7C 80 FA 14 */	add r4, r0, r31
/* 801F1394 001EE394  90 64 00 24 */	stw r3, 0x24(r4)
/* 801F1398 001EE398  7F C3 F3 78 */	mr r3, r30
/* 801F139C 001EE39C  48 00 97 05 */	bl hwGetSampleType
/* 801F13A0 001EE3A0  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F13A4 001EE3A4  38 A4 A7 50 */	addi r5, r4, lbl_8026A750@l
/* 801F13A8 001EE3A8  7C 85 FA 14 */	add r4, r5, r31
/* 801F13AC 001EE3AC  98 64 00 0A */	stb r3, 0xa(r4)
/* 801F13B0 001EE3B0  3B 44 00 0B */	addi r26, r4, 0xb
/* 801F13B4 001EE3B4  9B 64 00 0B */	stb r27, 0xb(r4)
/* 801F13B8 001EE3B8  81 85 0B 4C */	lwz r12, 0xb4c(r5)
/* 801F13BC 001EE3BC  28 0C 00 00 */	cmplwi r12, 0
/* 801F13C0 001EE3C0  41 82 00 2C */	beq lbl_801F13EC
/* 801F13C4 001EE3C4  38 84 00 18 */	addi r4, r4, 0x18
/* 801F13C8 001EE3C8  38 60 00 00 */	li r3, 0
/* 801F13CC 001EE3CC  7D 89 03 A6 */	mtctr r12
/* 801F13D0 001EE3D0  4E 80 04 21 */	bctrl 
/* 801F13D4 001EE3D4  28 03 00 00 */	cmplwi r3, 0
/* 801F13D8 001EE3D8  40 82 00 14 */	bne lbl_801F13EC
/* 801F13DC 001EE3DC  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801F13E0 001EE3E0  7F 63 DB 78 */	mr r3, r27
/* 801F13E4 001EE3E4  50 03 42 2E */	rlwimi r3, r0, 8, 8, 0x17
/* 801F13E8 001EE3E8  48 00 00 4C */	b lbl_801F1434
lbl_801F13EC:
/* 801F13EC 001EE3EC  7F C3 F3 78 */	mr r3, r30
/* 801F13F0 001EE3F0  38 80 00 00 */	li r4, 0
/* 801F13F4 001EE3F4  38 A0 00 00 */	li r5, 0
/* 801F13F8 001EE3F8  48 00 96 75 */	bl hwSetVirtualSampleLoopBuffer
/* 801F13FC 001EE3FC  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F1400 001EE400  38 A0 00 00 */	li r5, 0
/* 801F1404 001EE404  38 03 A7 50 */	addi r0, r3, lbl_8026A750@l
/* 801F1408 001EE408  38 60 00 FF */	li r3, 0xff
/* 801F140C 001EE40C  7C 80 FA 14 */	add r4, r0, r31
/* 801F1410 001EE410  98 A4 00 08 */	stb r5, 8(r4)
/* 801F1414 001EE414  88 1A 00 00 */	lbz r0, 0(r26)
/* 801F1418 001EE418  7C 7C 01 AE */	stbx r3, r28, r0
/* 801F141C 001EE41C  48 00 00 14 */	b lbl_801F1430
lbl_801F1420:
/* 801F1420 001EE420  7F C3 F3 78 */	mr r3, r30
/* 801F1424 001EE424  38 80 00 00 */	li r4, 0
/* 801F1428 001EE428  38 A0 00 00 */	li r5, 0
/* 801F142C 001EE42C  48 00 96 41 */	bl hwSetVirtualSampleLoopBuffer
lbl_801F1430:
/* 801F1430 001EE430  38 60 FF FF */	li r3, -1
lbl_801F1434:
/* 801F1434 001EE434  39 61 00 20 */	addi r11, r1, 0x20
/* 801F1438 001EE438  4B F9 CE 8D */	bl _restgpr_26
/* 801F143C 001EE43C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F1440 001EE440  7C 08 03 A6 */	mtlr r0
/* 801F1444 001EE444  38 21 00 20 */	addi r1, r1, 0x20
/* 801F1448 001EE448  4E 80 00 20 */	blr 

.global vsSampleEndNotify
vsSampleEndNotify:
/* 801F144C 001EE44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1450 001EE450  7C 08 02 A6 */	mflr r0
/* 801F1454 001EE454  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1458 001EE458  3C 03 00 01 */	addis r0, r3, 1
/* 801F145C 001EE45C  28 00 FF FF */	cmplwi r0, 0xffff
/* 801F1460 001EE460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1464 001EE464  93 C1 00 08 */	stw r30, 8(r1)
/* 801F1468 001EE468  41 82 00 74 */	beq lbl_801F14DC
/* 801F146C 001EE46C  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F1470 001EE470  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F1474 001EE474  38 A4 A7 50 */	addi r5, r4, lbl_8026A750@l
/* 801F1478 001EE478  3B C5 0B 08 */	addi r30, r5, 0xb08
/* 801F147C 001EE47C  7C 1E 00 AE */	lbzx r0, r30, r0
/* 801F1480 001EE480  28 00 00 FF */	cmplwi r0, 0xff
/* 801F1484 001EE484  41 82 00 58 */	beq lbl_801F14DC
/* 801F1488 001EE488  1F E0 00 2C */	mulli r31, r0, 0x2c
/* 801F148C 001EE48C  54 60 C4 3E */	rlwinm r0, r3, 0x18, 0x10, 0x1f
/* 801F1490 001EE490  7C 85 FA 14 */	add r4, r5, r31
/* 801F1494 001EE494  A0 64 00 1A */	lhz r3, 0x1a(r4)
/* 801F1498 001EE498  7C 03 00 40 */	cmplw r3, r0
/* 801F149C 001EE49C  40 82 00 40 */	bne lbl_801F14DC
/* 801F14A0 001EE4A0  81 85 0B 4C */	lwz r12, 0xb4c(r5)
/* 801F14A4 001EE4A4  28 0C 00 00 */	cmplwi r12, 0
/* 801F14A8 001EE4A8  41 82 00 14 */	beq lbl_801F14BC
/* 801F14AC 001EE4AC  38 84 00 18 */	addi r4, r4, 0x18
/* 801F14B0 001EE4B0  38 60 00 02 */	li r3, 2
/* 801F14B4 001EE4B4  7D 89 03 A6 */	mtctr r12
/* 801F14B8 001EE4B8  4E 80 04 21 */	bctrl 
lbl_801F14BC:
/* 801F14BC 001EE4BC  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F14C0 001EE4C0  38 A0 00 00 */	li r5, 0
/* 801F14C4 001EE4C4  38 03 A7 50 */	addi r0, r3, lbl_8026A750@l
/* 801F14C8 001EE4C8  38 60 00 FF */	li r3, 0xff
/* 801F14CC 001EE4CC  7C 80 FA 14 */	add r4, r0, r31
/* 801F14D0 001EE4D0  98 A4 00 08 */	stb r5, 8(r4)
/* 801F14D4 001EE4D4  88 04 00 0B */	lbz r0, 0xb(r4)
/* 801F14D8 001EE4D8  7C 7E 01 AE */	stbx r3, r30, r0
lbl_801F14DC:
/* 801F14DC 001EE4DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F14E0 001EE4E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F14E4 001EE4E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F14E8 001EE4E8  7C 08 03 A6 */	mtlr r0
/* 801F14EC 001EE4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F14F0 001EE4F0  4E 80 00 20 */	blr 

.global vsUpdateBuffer
vsUpdateBuffer:
/* 801F14F4 001EE4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F14F8 001EE4F8  7C 08 02 A6 */	mflr r0
/* 801F14FC 001EE4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1500 001EE500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1504 001EE504  7C 7F 1B 78 */	mr r31, r3
/* 801F1508 001EE508  93 C1 00 08 */	stw r30, 8(r1)
/* 801F150C 001EE50C  81 03 00 04 */	lwz r8, 4(r3)
/* 801F1510 001EE510  7C 08 20 40 */	cmplw r8, r4
/* 801F1514 001EE514  41 82 03 20 */	beq lbl_801F1834
/* 801F1518 001EE518  40 80 01 10 */	bge lbl_801F1628
/* 801F151C 001EE51C  88 1F 00 02 */	lbz r0, 2(r31)
/* 801F1520 001EE520  2C 00 00 06 */	cmpwi r0, 6
/* 801F1524 001EE524  41 82 00 98 */	beq lbl_801F15BC
/* 801F1528 001EE528  40 80 03 0C */	bge lbl_801F1834
/* 801F152C 001EE52C  2C 00 00 05 */	cmpwi r0, 5
/* 801F1530 001EE530  40 80 00 08 */	bge lbl_801F1538
/* 801F1534 001EE534  48 00 03 00 */	b lbl_801F1834
lbl_801F1538:
/* 801F1538 001EE538  3C A0 24 92 */	lis r5, 0x24924925@ha
/* 801F153C 001EE53C  38 00 00 00 */	li r0, 0
/* 801F1540 001EE540  38 A5 49 25 */	addi r5, r5, 0x24924925@l
/* 801F1544 001EE544  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F1548 001EE548  7C E5 40 16 */	mulhwu r7, r5, r8
/* 801F154C 001EE54C  38 A3 A7 50 */	addi r5, r3, lbl_8026A750@l
/* 801F1550 001EE550  38 60 00 01 */	li r3, 1
/* 801F1554 001EE554  7C C7 40 50 */	subf r6, r7, r8
/* 801F1558 001EE558  54 C6 F8 7E */	srwi r6, r6, 1
/* 801F155C 001EE55C  7C C6 3A 14 */	add r6, r6, r7
/* 801F1560 001EE560  54 C6 00 38 */	rlwinm r6, r6, 0, 0, 0x1c
/* 801F1564 001EE564  90 DF 00 1C */	stw r6, 0x1c(r31)
/* 801F1568 001EE568  80 DF 00 04 */	lwz r6, 4(r31)
/* 801F156C 001EE56C  7C C6 20 50 */	subf r6, r6, r4
/* 801F1570 001EE570  38 9F 00 10 */	addi r4, r31, 0x10
/* 801F1574 001EE574  90 DF 00 20 */	stw r6, 0x20(r31)
/* 801F1578 001EE578  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801F157C 001EE57C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801F1580 001EE580  81 85 0B 4C */	lwz r12, 0xb4c(r5)
/* 801F1584 001EE584  7D 89 03 A6 */	mtctr r12
/* 801F1588 001EE588  4E 80 04 21 */	bctrl 
/* 801F158C 001EE58C  28 03 00 00 */	cmplwi r3, 0
/* 801F1590 001EE590  41 82 02 A4 */	beq lbl_801F1834
/* 801F1594 001EE594  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F1598 001EE598  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F159C 001EE59C  38 84 A7 50 */	addi r4, r4, lbl_8026A750@l
/* 801F15A0 001EE5A0  80 84 00 04 */	lwz r4, 4(r4)
/* 801F15A4 001EE5A4  7C 60 1A 14 */	add r3, r0, r3
/* 801F15A8 001EE5A8  7C 03 23 96 */	divwu r0, r3, r4
/* 801F15AC 001EE5AC  7C 00 21 D6 */	mullw r0, r0, r4
/* 801F15B0 001EE5B0  7C 00 18 50 */	subf r0, r0, r3
/* 801F15B4 001EE5B4  90 1F 00 04 */	stw r0, 4(r31)
/* 801F15B8 001EE5B8  48 00 02 7C */	b lbl_801F1834
lbl_801F15BC:
/* 801F15BC 001EE5BC  55 00 08 3C */	slwi r0, r8, 1
/* 801F15C0 001EE5C0  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F15C4 001EE5C4  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801F15C8 001EE5C8  38 00 00 00 */	li r0, 0
/* 801F15CC 001EE5CC  38 A3 A7 50 */	addi r5, r3, lbl_8026A750@l
/* 801F15D0 001EE5D0  38 60 00 01 */	li r3, 1
/* 801F15D4 001EE5D4  80 DF 00 04 */	lwz r6, 4(r31)
/* 801F15D8 001EE5D8  7C C6 20 50 */	subf r6, r6, r4
/* 801F15DC 001EE5DC  38 9F 00 10 */	addi r4, r31, 0x10
/* 801F15E0 001EE5E0  90 DF 00 20 */	stw r6, 0x20(r31)
/* 801F15E4 001EE5E4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801F15E8 001EE5E8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801F15EC 001EE5EC  81 85 0B 4C */	lwz r12, 0xb4c(r5)
/* 801F15F0 001EE5F0  7D 89 03 A6 */	mtctr r12
/* 801F15F4 001EE5F4  4E 80 04 21 */	bctrl 
/* 801F15F8 001EE5F8  28 03 00 00 */	cmplwi r3, 0
/* 801F15FC 001EE5FC  41 82 02 38 */	beq lbl_801F1834
/* 801F1600 001EE600  3C 80 80 27 */	lis r4, lbl_8026A750@ha
/* 801F1604 001EE604  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F1608 001EE608  38 84 A7 50 */	addi r4, r4, lbl_8026A750@l
/* 801F160C 001EE60C  80 84 00 04 */	lwz r4, 4(r4)
/* 801F1610 001EE610  7C 60 1A 14 */	add r3, r0, r3
/* 801F1614 001EE614  7C 03 23 96 */	divwu r0, r3, r4
/* 801F1618 001EE618  7C 00 21 D6 */	mullw r0, r0, r4
/* 801F161C 001EE61C  7C 00 18 50 */	subf r0, r0, r3
/* 801F1620 001EE620  90 1F 00 04 */	stw r0, 4(r31)
/* 801F1624 001EE624  48 00 02 10 */	b lbl_801F1834
lbl_801F1628:
/* 801F1628 001EE628  28 04 00 00 */	cmplwi r4, 0
/* 801F162C 001EE62C  40 82 01 08 */	bne lbl_801F1734
/* 801F1630 001EE630  88 1F 00 02 */	lbz r0, 2(r31)
/* 801F1634 001EE634  2C 00 00 06 */	cmpwi r0, 6
/* 801F1638 001EE638  41 82 00 94 */	beq lbl_801F16CC
/* 801F163C 001EE63C  40 80 01 F8 */	bge lbl_801F1834
/* 801F1640 001EE640  2C 00 00 05 */	cmpwi r0, 5
/* 801F1644 001EE644  40 80 00 08 */	bge lbl_801F164C
/* 801F1648 001EE648  48 00 01 EC */	b lbl_801F1834
lbl_801F164C:
/* 801F164C 001EE64C  3C 80 24 92 */	lis r4, 0x24924925@ha
/* 801F1650 001EE650  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F1654 001EE654  38 84 49 25 */	addi r4, r4, 0x24924925@l
/* 801F1658 001EE658  38 00 00 00 */	li r0, 0
/* 801F165C 001EE65C  7C C4 40 16 */	mulhwu r6, r4, r8
/* 801F1660 001EE660  3B C3 A7 50 */	addi r30, r3, lbl_8026A750@l
/* 801F1664 001EE664  38 9F 00 10 */	addi r4, r31, 0x10
/* 801F1668 001EE668  38 60 00 01 */	li r3, 1
/* 801F166C 001EE66C  7C A6 40 50 */	subf r5, r6, r8
/* 801F1670 001EE670  54 A5 F8 7E */	srwi r5, r5, 1
/* 801F1674 001EE674  7C A5 32 14 */	add r5, r5, r6
/* 801F1678 001EE678  54 A5 00 38 */	rlwinm r5, r5, 0, 0, 0x1c
/* 801F167C 001EE67C  90 BF 00 1C */	stw r5, 0x1c(r31)
/* 801F1680 001EE680  80 DF 00 04 */	lwz r6, 4(r31)
/* 801F1684 001EE684  80 BE 00 04 */	lwz r5, 4(r30)
/* 801F1688 001EE688  7C A6 28 50 */	subf r5, r6, r5
/* 801F168C 001EE68C  90 BF 00 20 */	stw r5, 0x20(r31)
/* 801F1690 001EE690  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801F1694 001EE694  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801F1698 001EE698  81 9E 0B 4C */	lwz r12, 0xb4c(r30)
/* 801F169C 001EE69C  7D 89 03 A6 */	mtctr r12
/* 801F16A0 001EE6A0  4E 80 04 21 */	bctrl 
/* 801F16A4 001EE6A4  28 03 00 00 */	cmplwi r3, 0
/* 801F16A8 001EE6A8  41 82 01 8C */	beq lbl_801F1834
/* 801F16AC 001EE6AC  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F16B0 001EE6B0  80 9E 00 04 */	lwz r4, 4(r30)
/* 801F16B4 001EE6B4  7C 60 1A 14 */	add r3, r0, r3
/* 801F16B8 001EE6B8  7C 03 23 96 */	divwu r0, r3, r4
/* 801F16BC 001EE6BC  7C 00 21 D6 */	mullw r0, r0, r4
/* 801F16C0 001EE6C0  7C 00 18 50 */	subf r0, r0, r3
/* 801F16C4 001EE6C4  90 1F 00 04 */	stw r0, 4(r31)
/* 801F16C8 001EE6C8  48 00 01 6C */	b lbl_801F1834
lbl_801F16CC:
/* 801F16CC 001EE6CC  55 00 08 3C */	slwi r0, r8, 1
/* 801F16D0 001EE6D0  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F16D4 001EE6D4  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801F16D8 001EE6D8  3B C3 A7 50 */	addi r30, r3, lbl_8026A750@l
/* 801F16DC 001EE6DC  38 00 00 00 */	li r0, 0
/* 801F16E0 001EE6E0  38 9F 00 10 */	addi r4, r31, 0x10
/* 801F16E4 001EE6E4  80 DF 00 04 */	lwz r6, 4(r31)
/* 801F16E8 001EE6E8  38 60 00 01 */	li r3, 1
/* 801F16EC 001EE6EC  80 BE 00 04 */	lwz r5, 4(r30)
/* 801F16F0 001EE6F0  7C A6 28 50 */	subf r5, r6, r5
/* 801F16F4 001EE6F4  90 BF 00 20 */	stw r5, 0x20(r31)
/* 801F16F8 001EE6F8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801F16FC 001EE6FC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801F1700 001EE700  81 9E 0B 4C */	lwz r12, 0xb4c(r30)
/* 801F1704 001EE704  7D 89 03 A6 */	mtctr r12
/* 801F1708 001EE708  4E 80 04 21 */	bctrl 
/* 801F170C 001EE70C  28 03 00 00 */	cmplwi r3, 0
/* 801F1710 001EE710  41 82 01 24 */	beq lbl_801F1834
/* 801F1714 001EE714  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F1718 001EE718  80 9E 00 04 */	lwz r4, 4(r30)
/* 801F171C 001EE71C  7C 60 1A 14 */	add r3, r0, r3
/* 801F1720 001EE720  7C 03 23 96 */	divwu r0, r3, r4
/* 801F1724 001EE724  7C 00 21 D6 */	mullw r0, r0, r4
/* 801F1728 001EE728  7C 00 18 50 */	subf r0, r0, r3
/* 801F172C 001EE72C  90 1F 00 04 */	stw r0, 4(r31)
/* 801F1730 001EE730  48 00 01 04 */	b lbl_801F1834
lbl_801F1734:
/* 801F1734 001EE734  88 1F 00 02 */	lbz r0, 2(r31)
/* 801F1738 001EE738  2C 00 00 06 */	cmpwi r0, 6
/* 801F173C 001EE73C  41 82 00 94 */	beq lbl_801F17D0
/* 801F1740 001EE740  40 80 00 F4 */	bge lbl_801F1834
/* 801F1744 001EE744  2C 00 00 05 */	cmpwi r0, 5
/* 801F1748 001EE748  40 80 00 08 */	bge lbl_801F1750
/* 801F174C 001EE74C  48 00 00 E8 */	b lbl_801F1834
lbl_801F1750:
/* 801F1750 001EE750  3C A0 24 92 */	lis r5, 0x24924925@ha
/* 801F1754 001EE754  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F1758 001EE758  38 A5 49 25 */	addi r5, r5, 0x24924925@l
/* 801F175C 001EE75C  38 00 00 00 */	li r0, 0
/* 801F1760 001EE760  7C C5 40 16 */	mulhwu r6, r5, r8
/* 801F1764 001EE764  3B C3 A7 50 */	addi r30, r3, lbl_8026A750@l
/* 801F1768 001EE768  38 60 00 01 */	li r3, 1
/* 801F176C 001EE76C  7C A6 40 50 */	subf r5, r6, r8
/* 801F1770 001EE770  54 A5 F8 7E */	srwi r5, r5, 1
/* 801F1774 001EE774  7C A5 32 14 */	add r5, r5, r6
/* 801F1778 001EE778  54 A5 00 38 */	rlwinm r5, r5, 0, 0, 0x1c
/* 801F177C 001EE77C  90 BF 00 1C */	stw r5, 0x1c(r31)
/* 801F1780 001EE780  80 DF 00 04 */	lwz r6, 4(r31)
/* 801F1784 001EE784  80 BE 00 04 */	lwz r5, 4(r30)
/* 801F1788 001EE788  7C A6 28 50 */	subf r5, r6, r5
/* 801F178C 001EE78C  90 BF 00 20 */	stw r5, 0x20(r31)
/* 801F1790 001EE790  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801F1794 001EE794  90 9F 00 28 */	stw r4, 0x28(r31)
/* 801F1798 001EE798  38 9F 00 10 */	addi r4, r31, 0x10
/* 801F179C 001EE79C  81 9E 0B 4C */	lwz r12, 0xb4c(r30)
/* 801F17A0 001EE7A0  7D 89 03 A6 */	mtctr r12
/* 801F17A4 001EE7A4  4E 80 04 21 */	bctrl 
/* 801F17A8 001EE7A8  28 03 00 00 */	cmplwi r3, 0
/* 801F17AC 001EE7AC  41 82 00 88 */	beq lbl_801F1834
/* 801F17B0 001EE7B0  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F17B4 001EE7B4  80 9E 00 04 */	lwz r4, 4(r30)
/* 801F17B8 001EE7B8  7C 60 1A 14 */	add r3, r0, r3
/* 801F17BC 001EE7BC  7C 03 23 96 */	divwu r0, r3, r4
/* 801F17C0 001EE7C0  7C 00 21 D6 */	mullw r0, r0, r4
/* 801F17C4 001EE7C4  7C 00 18 50 */	subf r0, r0, r3
/* 801F17C8 001EE7C8  90 1F 00 04 */	stw r0, 4(r31)
/* 801F17CC 001EE7CC  48 00 00 68 */	b lbl_801F1834
lbl_801F17D0:
/* 801F17D0 001EE7D0  55 00 08 3C */	slwi r0, r8, 1
/* 801F17D4 001EE7D4  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F17D8 001EE7D8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801F17DC 001EE7DC  3B C3 A7 50 */	addi r30, r3, lbl_8026A750@l
/* 801F17E0 001EE7E0  38 00 00 00 */	li r0, 0
/* 801F17E4 001EE7E4  38 60 00 01 */	li r3, 1
/* 801F17E8 001EE7E8  80 DF 00 04 */	lwz r6, 4(r31)
/* 801F17EC 001EE7EC  80 BE 00 04 */	lwz r5, 4(r30)
/* 801F17F0 001EE7F0  7C A6 28 50 */	subf r5, r6, r5
/* 801F17F4 001EE7F4  90 BF 00 20 */	stw r5, 0x20(r31)
/* 801F17F8 001EE7F8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801F17FC 001EE7FC  90 9F 00 28 */	stw r4, 0x28(r31)
/* 801F1800 001EE800  38 9F 00 10 */	addi r4, r31, 0x10
/* 801F1804 001EE804  81 9E 0B 4C */	lwz r12, 0xb4c(r30)
/* 801F1808 001EE808  7D 89 03 A6 */	mtctr r12
/* 801F180C 001EE80C  4E 80 04 21 */	bctrl 
/* 801F1810 001EE810  28 03 00 00 */	cmplwi r3, 0
/* 801F1814 001EE814  41 82 00 20 */	beq lbl_801F1834
/* 801F1818 001EE818  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F181C 001EE81C  80 9E 00 04 */	lwz r4, 4(r30)
/* 801F1820 001EE820  7C 60 1A 14 */	add r3, r0, r3
/* 801F1824 001EE824  7C 03 23 96 */	divwu r0, r3, r4
/* 801F1828 001EE828  7C 00 21 D6 */	mullw r0, r0, r4
/* 801F182C 001EE82C  7C 00 18 50 */	subf r0, r0, r3
/* 801F1830 001EE830  90 1F 00 04 */	stw r0, 4(r31)
lbl_801F1834:
/* 801F1834 001EE834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1838 001EE838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F183C 001EE83C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F1840 001EE840  7C 08 03 A6 */	mtlr r0
/* 801F1844 001EE844  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1848 001EE848  4E 80 00 20 */	blr 

.global vsSampleUpdates
vsSampleUpdates:
/* 801F184C 001EE84C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F1850 001EE850  7C 08 02 A6 */	mflr r0
/* 801F1854 001EE854  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F1858 001EE858  39 61 00 20 */	addi r11, r1, 0x20
/* 801F185C 001EE85C  4B F9 CA 1D */	bl _savegpr_26
/* 801F1860 001EE860  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F1864 001EE864  3B E3 A7 50 */	addi r31, r3, lbl_8026A750@l
/* 801F1868 001EE868  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 801F186C 001EE86C  28 00 00 00 */	cmplwi r0, 0
/* 801F1870 001EE870  41 82 01 D4 */	beq lbl_801F1A44
/* 801F1874 001EE874  3B A0 00 00 */	li r29, 0
/* 801F1878 001EE878  7F FE FB 78 */	mr r30, r31
lbl_801F187C:
/* 801F187C 001EE87C  88 1E 0B 08 */	lbz r0, 0xb08(r30)
/* 801F1880 001EE880  28 00 00 FF */	cmplwi r0, 0xff
/* 801F1884 001EE884  41 82 01 B0 */	beq lbl_801F1A34
/* 801F1888 001EE888  7F A3 EB 78 */	mr r3, r29
/* 801F188C 001EE88C  48 00 92 01 */	bl hwGetVirtualSampleState
/* 801F1890 001EE890  28 03 00 00 */	cmplwi r3, 0
/* 801F1894 001EE894  41 82 01 A0 */	beq lbl_801F1A34
/* 801F1898 001EE898  88 9E 0B 08 */	lbz r4, 0xb08(r30)
/* 801F189C 001EE89C  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F18A0 001EE8A0  38 03 A7 50 */	addi r0, r3, lbl_8026A750@l
/* 801F18A4 001EE8A4  7F A3 EB 78 */	mr r3, r29
/* 801F18A8 001EE8A8  1C 84 00 2C */	mulli r4, r4, 0x2c
/* 801F18AC 001EE8AC  7C 80 22 14 */	add r4, r0, r4
/* 801F18B0 001EE8B0  3B 64 00 08 */	addi r27, r4, 8
/* 801F18B4 001EE8B4  48 00 98 2D */	bl hwGetPos
/* 801F18B8 001EE8B8  88 1B 00 02 */	lbz r0, 2(r27)
/* 801F18BC 001EE8BC  7C 7C 1B 78 */	mr r28, r3
/* 801F18C0 001EE8C0  28 00 00 05 */	cmplwi r0, 5
/* 801F18C4 001EE8C4  40 82 00 28 */	bne lbl_801F18EC
/* 801F18C8 001EE8C8  3C 60 24 92 */	lis r3, 0x24924925@ha
/* 801F18CC 001EE8CC  38 03 49 25 */	addi r0, r3, 0x24924925@l
/* 801F18D0 001EE8D0  7C 60 E0 16 */	mulhwu r3, r0, r28
/* 801F18D4 001EE8D4  7C 03 E0 50 */	subf r0, r3, r28
/* 801F18D8 001EE8D8  54 00 F8 7E */	srwi r0, r0, 1
/* 801F18DC 001EE8DC  7C 00 1A 14 */	add r0, r0, r3
/* 801F18E0 001EE8E0  54 00 E8 FE */	srwi r0, r0, 3
/* 801F18E4 001EE8E4  1F 40 00 0E */	mulli r26, r0, 0xe
/* 801F18E8 001EE8E8  48 00 00 08 */	b lbl_801F18F0
lbl_801F18EC:
/* 801F18EC 001EE8EC  7F 9A E3 78 */	mr r26, r28
lbl_801F18F0:
/* 801F18F0 001EE8F0  88 1B 00 00 */	lbz r0, 0(r27)
/* 801F18F4 001EE8F4  2C 00 00 01 */	cmpwi r0, 1
/* 801F18F8 001EE8F8  41 82 00 14 */	beq lbl_801F190C
/* 801F18FC 001EE8FC  41 80 01 38 */	blt lbl_801F1A34
/* 801F1900 001EE900  2C 00 00 04 */	cmpwi r0, 4
/* 801F1904 001EE904  40 80 01 30 */	bge lbl_801F1A34
/* 801F1908 001EE908  48 00 00 14 */	b lbl_801F191C
lbl_801F190C:
/* 801F190C 001EE90C  7F 63 DB 78 */	mr r3, r27
/* 801F1910 001EE910  7F 44 D3 78 */	mr r4, r26
/* 801F1914 001EE914  4B FF FB E1 */	bl vsUpdateBuffer
/* 801F1918 001EE918  48 00 01 1C */	b lbl_801F1A34
lbl_801F191C:
/* 801F191C 001EE91C  88 7B 00 03 */	lbz r3, 3(r27)
/* 801F1920 001EE920  48 00 9B 1D */	bl hwGetVirtualSampleID
/* 801F1924 001EE924  A0 9B 00 12 */	lhz r4, 0x12(r27)
/* 801F1928 001EE928  88 1B 00 03 */	lbz r0, 3(r27)
/* 801F192C 001EE92C  50 80 42 2E */	rlwimi r0, r4, 8, 8, 0x17
/* 801F1930 001EE930  7C 00 18 40 */	cmplw r0, r3
/* 801F1934 001EE934  40 82 00 E0 */	bne lbl_801F1A14
/* 801F1938 001EE938  7F 63 DB 78 */	mr r3, r27
/* 801F193C 001EE93C  7F 44 D3 78 */	mr r4, r26
/* 801F1940 001EE940  4B FF FB B5 */	bl vsUpdateBuffer
/* 801F1944 001EE944  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 801F1948 001EE948  7C 1C 20 40 */	cmplw r28, r4
/* 801F194C 001EE94C  41 80 00 18 */	blt lbl_801F1964
/* 801F1950 001EE950  80 1B 00 08 */	lwz r0, 8(r27)
/* 801F1954 001EE954  7C 64 E0 50 */	subf r3, r4, r28
/* 801F1958 001EE958  7C 03 00 50 */	subf r0, r3, r0
/* 801F195C 001EE95C  90 1B 00 08 */	stw r0, 8(r27)
/* 801F1960 001EE960  48 00 00 1C */	b lbl_801F197C
lbl_801F1964:
/* 801F1964 001EE964  80 7F 00 04 */	lwz r3, 4(r31)
/* 801F1968 001EE968  7C 9C 20 50 */	subf r4, r28, r4
/* 801F196C 001EE96C  80 1B 00 08 */	lwz r0, 8(r27)
/* 801F1970 001EE970  7C 64 18 50 */	subf r3, r4, r3
/* 801F1974 001EE974  7C 03 00 50 */	subf r0, r3, r0
/* 801F1978 001EE978  90 1B 00 08 */	stw r0, 8(r27)
lbl_801F197C:
/* 801F197C 001EE97C  93 9B 00 0C */	stw r28, 0xc(r27)
/* 801F1980 001EE980  80 AD 91 F8 */	lwz r5, lbl_80277B18-_SDA_BASE_(r13)
/* 801F1984 001EE984  88 7B 00 03 */	lbz r3, 3(r27)
/* 801F1988 001EE988  80 1B 00 08 */	lwz r0, 8(r27)
/* 801F198C 001EE98C  1C 83 04 58 */	mulli r4, r3, 0x458
/* 801F1990 001EE990  38 84 02 12 */	addi r4, r4, 0x212
/* 801F1994 001EE994  7C 85 22 2E */	lhzx r4, r5, r4
/* 801F1998 001EE998  1C 84 00 A0 */	mulli r4, r4, 0xa0
/* 801F199C 001EE99C  38 84 0F FF */	addi r4, r4, 0xfff
/* 801F19A0 001EE9A0  7C 84 66 70 */	srawi r4, r4, 0xc
/* 801F19A4 001EE9A4  7C 84 01 94 */	addze r4, r4
/* 801F19A8 001EE9A8  7C 04 00 00 */	cmpw r4, r0
/* 801F19AC 001EE9AC  40 81 00 88 */	ble lbl_801F1A34
/* 801F19B0 001EE9B0  48 00 9A B5 */	bl hwVoiceInStartup
/* 801F19B4 001EE9B4  28 03 00 00 */	cmplwi r3, 0
/* 801F19B8 001EE9B8  40 82 00 38 */	bne lbl_801F19F0
/* 801F19BC 001EE9BC  88 1B 00 00 */	lbz r0, 0(r27)
/* 801F19C0 001EE9C0  28 00 00 02 */	cmplwi r0, 2
/* 801F19C4 001EE9C4  40 82 00 24 */	bne lbl_801F19E8
/* 801F19C8 001EE9C8  88 7B 00 03 */	lbz r3, 3(r27)
/* 801F19CC 001EE9CC  48 00 8E A5 */	bl hwBreak
/* 801F19D0 001EE9D0  88 1B 00 03 */	lbz r0, 3(r27)
/* 801F19D4 001EE9D4  80 6D 91 F8 */	lwz r3, lbl_80277B18-_SDA_BASE_(r13)
/* 801F19D8 001EE9D8  1C 00 04 58 */	mulli r0, r0, 0x458
/* 801F19DC 001EE9DC  7C 63 02 14 */	add r3, r3, r0
/* 801F19E0 001EE9E0  4B FF C7 FD */	bl macSampleEndNotify
/* 801F19E4 001EE9E4  48 00 00 0C */	b lbl_801F19F0
lbl_801F19E8:
/* 801F19E8 001EE9E8  88 7B 00 03 */	lbz r3, 3(r27)
/* 801F19EC 001EE9EC  4B FF E5 C9 */	bl voiceKill
lbl_801F19F0:
/* 801F19F0 001EE9F0  38 00 00 00 */	li r0, 0
/* 801F19F4 001EE9F4  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F19F8 001EE9F8  98 1B 00 00 */	stb r0, 0(r27)
/* 801F19FC 001EE9FC  38 03 A7 50 */	addi r0, r3, lbl_8026A750@l
/* 801F1A00 001EEA00  38 80 00 FF */	li r4, 0xff
/* 801F1A04 001EEA04  88 7B 00 03 */	lbz r3, 3(r27)
/* 801F1A08 001EEA08  7C 60 1A 14 */	add r3, r0, r3
/* 801F1A0C 001EEA0C  98 83 0B 08 */	stb r4, 0xb08(r3)
/* 801F1A10 001EEA10  48 00 00 24 */	b lbl_801F1A34
lbl_801F1A14:
/* 801F1A14 001EEA14  38 00 00 00 */	li r0, 0
/* 801F1A18 001EEA18  3C 60 80 27 */	lis r3, lbl_8026A750@ha
/* 801F1A1C 001EEA1C  98 1B 00 00 */	stb r0, 0(r27)
/* 801F1A20 001EEA20  38 03 A7 50 */	addi r0, r3, lbl_8026A750@l
/* 801F1A24 001EEA24  38 80 00 FF */	li r4, 0xff
/* 801F1A28 001EEA28  88 7B 00 03 */	lbz r3, 3(r27)
/* 801F1A2C 001EEA2C  7C 60 1A 14 */	add r3, r0, r3
/* 801F1A30 001EEA30  98 83 0B 08 */	stb r4, 0xb08(r3)
lbl_801F1A34:
/* 801F1A34 001EEA34  3B BD 00 01 */	addi r29, r29, 1
/* 801F1A38 001EEA38  3B DE 00 01 */	addi r30, r30, 1
/* 801F1A3C 001EEA3C  28 1D 00 40 */	cmplwi r29, 0x40
/* 801F1A40 001EEA40  41 80 FE 3C */	blt lbl_801F187C
lbl_801F1A44:
/* 801F1A44 001EEA44  39 61 00 20 */	addi r11, r1, 0x20
/* 801F1A48 001EEA48  4B F9 C8 7D */	bl _restgpr_26
/* 801F1A4C 001EEA4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F1A50 001EEA50  7C 08 03 A6 */	mtlr r0
/* 801F1A54 001EEA54  38 21 00 20 */	addi r1, r1, 0x20
/* 801F1A58 001EEA58  4E 80 00 20 */	blr 
