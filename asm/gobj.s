.include "macros.inc"

.section .text  # 0x801D902C - 0x801D975C

.global func_801D902C
func_801D902C:
/* 801D902C 001D602C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9030 001D6030  7C 08 02 A6 */	mflr r0
/* 801D9034 001D6034  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9038 001D6038  39 61 00 20 */	addi r11, r1, 0x20
/* 801D903C 001D603C  4B FB 52 41 */	bl func_8018E27C
/* 801D9040 001D6040  80 6D 91 94 */	lwz r3, lbl_80277AB4-_SDA_BASE_(r13)
/* 801D9044 001D6044  38 03 00 01 */	addi r0, r3, 1
/* 801D9048 001D6048  2C 00 00 02 */	cmpwi r0, 2
/* 801D904C 001D604C  90 0D 91 94 */	stw r0, lbl_80277AB4-_SDA_BASE_(r13)
/* 801D9050 001D6050  40 81 00 0C */	ble lbl_801D905C
/* 801D9054 001D6054  38 00 00 00 */	li r0, 0
/* 801D9058 001D6058  90 0D 91 94 */	stw r0, lbl_80277AB4-_SDA_BASE_(r13)
lbl_801D905C:
/* 801D905C 001D605C  3C 60 80 25 */	lis r3, lbl_8024DBA8@ha
/* 801D9060 001D6060  3B 80 00 00 */	li r28, 0
/* 801D9064 001D6064  3B E3 DB A8 */	addi r31, r3, lbl_8024DBA8@l
/* 801D9068 001D6068  3B C0 00 00 */	li r30, 0
/* 801D906C 001D606C  3B AD 91 60 */	addi r29, r13, lbl_80277A80-_SDA_BASE_
/* 801D9070 001D6070  48 00 01 0C */	b lbl_801D917C
lbl_801D9074:
/* 801D9074 001D6074  93 8D 91 8C */	stw r28, lbl_80277AAC-_SDA_BASE_(r13)
/* 801D9078 001D6078  80 6D 91 98 */	lwz r3, lbl_80277AB8-_SDA_BASE_(r13)
/* 801D907C 001D607C  7F 63 F0 2E */	lwzx r27, r3, r30
/* 801D9080 001D6080  48 00 00 EC */	b lbl_801D916C
lbl_801D9084:
/* 801D9084 001D6084  80 1B 00 04 */	lwz r0, 4(r27)
/* 801D9088 001D6088  80 8D 91 94 */	lwz r4, lbl_80277AB4-_SDA_BASE_(r13)
/* 801D908C 001D608C  90 0D 91 88 */	stw r0, lbl_80277AA8-_SDA_BASE_(r13)
/* 801D9090 001D6090  88 7B 00 0D */	lbz r3, 0xd(r27)
/* 801D9094 001D6094  54 60 E7 BE */	rlwinm r0, r3, 0x1c, 0x1e, 0x1f
/* 801D9098 001D6098  7C 00 20 00 */	cmpw r0, r4
/* 801D909C 001D609C  41 82 00 CC */	beq lbl_801D9168
/* 801D90A0 001D60A0  50 83 26 B6 */	rlwimi r3, r4, 4, 0x1a, 0x1b
/* 801D90A4 001D60A4  98 7B 00 0D */	stb r3, 0xd(r27)
/* 801D90A8 001D60A8  88 7B 00 0D */	lbz r3, 0xd(r27)
/* 801D90AC 001D60AC  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801D90B0 001D60B0  40 82 00 B8 */	bne lbl_801D9168
/* 801D90B4 001D60B4  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801D90B8 001D60B8  40 82 00 B0 */	bne lbl_801D9168
/* 801D90BC 001D60BC  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 801D90C0 001D60C0  90 0D 91 74 */	stw r0, lbl_80277A94-_SDA_BASE_(r13)
/* 801D90C4 001D60C4  93 6D 91 90 */	stw r27, lbl_80277AB0-_SDA_BASE_(r13)
/* 801D90C8 001D60C8  81 9B 00 14 */	lwz r12, 0x14(r27)
/* 801D90CC 001D60CC  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 801D90D0 001D60D0  7D 89 03 A6 */	mtctr r12
/* 801D90D4 001D60D4  4E 80 04 21 */	bctrl 
/* 801D90D8 001D60D8  3C 60 80 25 */	lis r3, lbl_8024DBA8@ha
/* 801D90DC 001D60DC  80 BB 00 04 */	lwz r5, 4(r27)
/* 801D90E0 001D60E0  38 83 DB A8 */	addi r4, r3, lbl_8024DBA8@l
/* 801D90E4 001D60E4  80 04 00 00 */	lwz r0, 0(r4)
/* 801D90E8 001D60E8  90 AD 91 88 */	stw r5, lbl_80277AA8-_SDA_BASE_(r13)
/* 801D90EC 001D60EC  28 00 00 00 */	cmplwi r0, 0
/* 801D90F0 001D60F0  41 82 00 6C */	beq lbl_801D915C
/* 801D90F4 001D60F4  88 64 00 00 */	lbz r3, 0(r4)
/* 801D90F8 001D60F8  38 00 00 01 */	li r0, 1
/* 801D90FC 001D60FC  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 801D9100 001D6100  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801D9104 001D6104  98 64 00 00 */	stb r3, 0(r4)
/* 801D9108 001D6108  41 82 00 10 */	beq lbl_801D9118
/* 801D910C 001D610C  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 801D9110 001D6110  4B FF ED 59 */	bl func_801D7E68
/* 801D9114 001D6114  48 00 00 3C */	b lbl_801D9150
lbl_801D9118:
/* 801D9118 001D6118  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 801D911C 001D611C  41 82 00 1C */	beq lbl_801D9138
/* 801D9120 001D6120  80 7F 00 04 */	lwz r3, 4(r31)
/* 801D9124 001D6124  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 801D9128 001D6128  88 BF 00 08 */	lbz r5, 8(r31)
/* 801D912C 001D612C  88 DF 00 09 */	lbz r6, 9(r31)
/* 801D9130 001D6130  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 801D9134 001D6134  4B FF EE 1D */	bl func_801D7F50
lbl_801D9138:
/* 801D9138 001D6138  3C 60 80 25 */	lis r3, lbl_8024DBA8@ha
/* 801D913C 001D613C  88 03 DB A8 */	lbz r0, lbl_8024DBA8@l(r3)
/* 801D9140 001D6140  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801D9144 001D6144  41 82 00 0C */	beq lbl_801D9150
/* 801D9148 001D6148  7F 63 DB 78 */	mr r3, r27
/* 801D914C 001D614C  4B FF E6 B5 */	bl func_801D7800
lbl_801D9150:
/* 801D9150 001D6150  3C 60 80 25 */	lis r3, lbl_8024DBA8@ha
/* 801D9154 001D6154  38 00 00 00 */	li r0, 0
/* 801D9158 001D6158  90 03 DB A8 */	stw r0, lbl_8024DBA8@l(r3)
lbl_801D915C:
/* 801D915C 001D615C  38 00 00 00 */	li r0, 0
/* 801D9160 001D6160  90 0D 91 74 */	stw r0, lbl_80277A94-_SDA_BASE_(r13)
/* 801D9164 001D6164  90 0D 91 90 */	stw r0, lbl_80277AB0-_SDA_BASE_(r13)
lbl_801D9168:
/* 801D9168 001D6168  83 6D 91 88 */	lwz r27, lbl_80277AA8-_SDA_BASE_(r13)
lbl_801D916C:
/* 801D916C 001D616C  28 1B 00 00 */	cmplwi r27, 0
/* 801D9170 001D6170  40 82 FF 14 */	bne lbl_801D9084
/* 801D9174 001D6174  3B DE 00 04 */	addi r30, r30, 4
/* 801D9178 001D6178  3B 9C 00 01 */	addi r28, r28, 1
lbl_801D917C:
/* 801D917C 001D617C  88 1D 00 02 */	lbz r0, 2(r29)
/* 801D9180 001D6180  7C 1C 00 00 */	cmpw r28, r0
/* 801D9184 001D6184  40 81 FE F0 */	ble lbl_801D9074
/* 801D9188 001D6188  39 61 00 20 */	addi r11, r1, 0x20
/* 801D918C 001D618C  4B FB 51 3D */	bl func_8018E2C8
/* 801D9190 001D6190  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9194 001D6194  7C 08 03 A6 */	mtlr r0
/* 801D9198 001D6198  38 21 00 20 */	addi r1, r1, 0x20
/* 801D919C 001D619C  4E 80 00 20 */	blr 

.global func_801D91A0
func_801D91A0:
/* 801D91A0 001D61A0  3C 80 80 22 */	lis r4, lbl_8021BB80@ha
/* 801D91A4 001D61A4  54 60 10 3A */	slwi r0, r3, 2
/* 801D91A8 001D61A8  38 64 BB 80 */	addi r3, r4, lbl_8021BB80@l
/* 801D91AC 001D61AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 801D91B0 001D61B0  4E 80 00 20 */	blr 

.global func_801D91B4
func_801D91B4:
/* 801D91B4 001D61B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D91B8 001D61B8  7C 08 02 A6 */	mflr r0
/* 801D91BC 001D61BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D91C0 001D61C0  39 61 00 30 */	addi r11, r1, 0x30
/* 801D91C4 001D61C4  4B FB 50 AD */	bl func_8018E270
/* 801D91C8 001D61C8  7C 7A 1B 78 */	mr r26, r3
/* 801D91CC 001D61CC  7C 9B 23 78 */	mr r27, r4
/* 801D91D0 001D61D0  3B C0 00 00 */	li r30, 0
/* 801D91D4 001D61D4  48 00 00 B4 */	b lbl_801D9288
lbl_801D91D8:
/* 801D91D8 001D61D8  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 801D91DC 001D61DC  41 82 00 A4 */	beq lbl_801D9280
/* 801D91E0 001D61E0  83 BA 00 20 */	lwz r29, 0x20(r26)
/* 801D91E4 001D61E4  3B E0 00 00 */	li r31, 0
/* 801D91E8 001D61E8  83 9A 00 24 */	lwz r28, 0x24(r26)
/* 801D91EC 001D61EC  48 00 00 80 */	b lbl_801D926C
lbl_801D91F0:
/* 801D91F0 001D61F0  38 00 00 01 */	li r0, 1
/* 801D91F4 001D61F4  38 80 00 00 */	li r4, 0
/* 801D91F8 001D61F8  7F 83 00 38 */	and r3, r28, r0
/* 801D91FC 001D61FC  7F A0 20 38 */	and r0, r29, r4
/* 801D9200 001D6200  7C 63 22 78 */	xor r3, r3, r4
/* 801D9204 001D6204  7C 00 22 78 */	xor r0, r0, r4
/* 801D9208 001D6208  7C 60 03 79 */	or. r0, r3, r0
/* 801D920C 001D620C  41 82 00 48 */	beq lbl_801D9254
/* 801D9210 001D6210  80 6D 91 7C */	lwz r3, lbl_80277A9C-_SDA_BASE_(r13)
/* 801D9214 001D6214  7F 03 F8 2E */	lwzx r24, r3, r31
/* 801D9218 001D6218  48 00 00 34 */	b lbl_801D924C
lbl_801D921C:
/* 801D921C 001D621C  80 18 00 1C */	lwz r0, 0x1c(r24)
/* 801D9220 001D6220  28 00 00 00 */	cmplwi r0, 0
/* 801D9224 001D6224  41 82 00 24 */	beq lbl_801D9248
/* 801D9228 001D6228  83 2D 91 6C */	lwz r25, lbl_80277A8C-_SDA_BASE_(r13)
/* 801D922C 001D622C  7F 03 C3 78 */	mr r3, r24
/* 801D9230 001D6230  7F C4 F3 78 */	mr r4, r30
/* 801D9234 001D6234  93 0D 91 6C */	stw r24, lbl_80277A8C-_SDA_BASE_(r13)
/* 801D9238 001D6238  81 98 00 1C */	lwz r12, 0x1c(r24)
/* 801D923C 001D623C  7D 89 03 A6 */	mtctr r12
/* 801D9240 001D6240  4E 80 04 21 */	bctrl 
/* 801D9244 001D6244  93 2D 91 6C */	stw r25, lbl_80277A8C-_SDA_BASE_(r13)
lbl_801D9248:
/* 801D9248 001D6248  83 18 00 10 */	lwz r24, 0x10(r24)
lbl_801D924C:
/* 801D924C 001D624C  28 18 00 00 */	cmplwi r24, 0
/* 801D9250 001D6250  40 82 FF CC */	bne lbl_801D921C
lbl_801D9254:
/* 801D9254 001D6254  57 83 F8 3E */	rotlwi r3, r28, 0x1f
/* 801D9258 001D6258  57 A0 F8 7E */	srwi r0, r29, 1
/* 801D925C 001D625C  53 A3 F8 00 */	rlwimi r3, r29, 0x1f, 0, 0
/* 801D9260 001D6260  3B FF 00 04 */	addi r31, r31, 4
/* 801D9264 001D6264  7C 7C 1B 78 */	mr r28, r3
/* 801D9268 001D6268  7C 1D 03 78 */	mr r29, r0
lbl_801D926C:
/* 801D926C 001D626C  38 00 00 00 */	li r0, 0
/* 801D9270 001D6270  7F 83 02 78 */	xor r3, r28, r0
/* 801D9274 001D6274  7F A0 02 78 */	xor r0, r29, r0
/* 801D9278 001D6278  7C 60 03 79 */	or. r0, r3, r0
/* 801D927C 001D627C  40 82 FF 74 */	bne lbl_801D91F0
lbl_801D9280:
/* 801D9280 001D6280  57 7B F8 7E */	srwi r27, r27, 1
/* 801D9284 001D6284  3B DE 00 01 */	addi r30, r30, 1
lbl_801D9288:
/* 801D9288 001D6288  28 1B 00 00 */	cmplwi r27, 0
/* 801D928C 001D628C  40 82 FF 4C */	bne lbl_801D91D8
/* 801D9290 001D6290  39 61 00 30 */	addi r11, r1, 0x30
/* 801D9294 001D6294  4B FB 50 29 */	bl func_8018E2BC
/* 801D9298 001D6298  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D929C 001D629C  7C 08 03 A6 */	mtlr r0
/* 801D92A0 001D62A0  38 21 00 30 */	addi r1, r1, 0x30
/* 801D92A4 001D62A4  4E 80 00 20 */	blr 

.global func_801D92A8
func_801D92A8:
/* 801D92A8 001D62A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D92AC 001D62AC  7C 08 02 A6 */	mflr r0
/* 801D92B0 001D62B0  38 6D 91 60 */	addi r3, r13, lbl_80277A80-_SDA_BASE_
/* 801D92B4 001D62B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D92B8 001D62B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D92BC 001D62BC  93 C1 00 08 */	stw r30, 8(r1)
/* 801D92C0 001D62C0  88 03 00 01 */	lbz r0, 1(r3)
/* 801D92C4 001D62C4  80 8D 91 7C */	lwz r4, lbl_80277A9C-_SDA_BASE_(r13)
/* 801D92C8 001D62C8  54 00 10 3A */	slwi r0, r0, 2
/* 801D92CC 001D62CC  7C 64 02 14 */	add r3, r4, r0
/* 801D92D0 001D62D0  83 C3 00 04 */	lwz r30, 4(r3)
/* 801D92D4 001D62D4  48 00 00 34 */	b lbl_801D9308
lbl_801D92D8:
/* 801D92D8 001D62D8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 801D92DC 001D62DC  28 00 00 00 */	cmplwi r0, 0
/* 801D92E0 001D62E0  41 82 00 24 */	beq lbl_801D9304
/* 801D92E4 001D62E4  83 ED 91 70 */	lwz r31, lbl_80277A90-_SDA_BASE_(r13)
/* 801D92E8 001D62E8  7F C3 F3 78 */	mr r3, r30
/* 801D92EC 001D62EC  38 80 00 00 */	li r4, 0
/* 801D92F0 001D62F0  93 CD 91 70 */	stw r30, lbl_80277A90-_SDA_BASE_(r13)
/* 801D92F4 001D62F4  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 801D92F8 001D62F8  7D 89 03 A6 */	mtctr r12
/* 801D92FC 001D62FC  4E 80 04 21 */	bctrl 
/* 801D9300 001D6300  93 ED 91 70 */	stw r31, lbl_80277A90-_SDA_BASE_(r13)
lbl_801D9304:
/* 801D9304 001D6304  83 DE 00 10 */	lwz r30, 0x10(r30)
lbl_801D9308:
/* 801D9308 001D6308  28 1E 00 00 */	cmplwi r30, 0
/* 801D930C 001D630C  40 82 FF CC */	bne lbl_801D92D8
/* 801D9310 001D6310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9314 001D6314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9318 001D6318  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D931C 001D631C  7C 08 03 A6 */	mtlr r0
/* 801D9320 001D6320  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9324 001D6324  4E 80 00 20 */	blr 
/* 801D9328 001D6328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D932C 001D632C  7C 08 02 A6 */	mflr r0
/* 801D9330 001D6330  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9334 001D6334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9338 001D6338  7C 7F 1B 79 */	or. r31, r3, r3
/* 801D933C 001D633C  41 82 00 70 */	beq lbl_801D93AC
/* 801D9340 001D6340  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 801D9344 001D6344  A0 9F 00 04 */	lhz r4, 4(r31)
/* 801D9348 001D6348  38 03 FF FF */	addi r0, r3, 0x0000FFFF@l
/* 801D934C 001D634C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801D9350 001D6350  7C 04 00 50 */	subf r0, r4, r0
/* 801D9354 001D6354  7C 00 00 34 */	cntlzw r0, r0
/* 801D9358 001D6358  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 801D935C 001D635C  41 82 00 08 */	beq lbl_801D9364
/* 801D9360 001D6360  48 00 00 14 */	b lbl_801D9374
lbl_801D9364:
/* 801D9364 001D6364  38 64 FF FF */	addi r3, r4, -1
/* 801D9368 001D6368  7C 80 00 34 */	cntlzw r0, r4
/* 801D936C 001D636C  B0 7F 00 04 */	sth r3, 4(r31)
/* 801D9370 001D6370  54 00 D9 7E */	srwi r0, r0, 5
lbl_801D9374:
/* 801D9374 001D6374  2C 00 00 00 */	cmpwi r0, 0
/* 801D9378 001D6378  41 82 00 34 */	beq lbl_801D93AC
/* 801D937C 001D637C  28 1F 00 00 */	cmplwi r31, 0
/* 801D9380 001D6380  41 82 00 2C */	beq lbl_801D93AC
/* 801D9384 001D6384  80 9F 00 00 */	lwz r4, 0(r31)
/* 801D9388 001D6388  7F E3 FB 78 */	mr r3, r31
/* 801D938C 001D638C  81 84 00 30 */	lwz r12, 0x30(r4)
/* 801D9390 001D6390  7D 89 03 A6 */	mtctr r12
/* 801D9394 001D6394  4E 80 04 21 */	bctrl 
/* 801D9398 001D6398  80 9F 00 00 */	lwz r4, 0(r31)
/* 801D939C 001D639C  7F E3 FB 78 */	mr r3, r31
/* 801D93A0 001D63A0  81 84 00 34 */	lwz r12, 0x34(r4)
/* 801D93A4 001D63A4  7D 89 03 A6 */	mtctr r12
/* 801D93A8 001D63A8  4E 80 04 21 */	bctrl 
lbl_801D93AC:
/* 801D93AC 001D63AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D93B0 001D63B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D93B4 001D63B4  7C 08 03 A6 */	mtlr r0
/* 801D93B8 001D63B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D93BC 001D63BC  4E 80 00 20 */	blr 
/* 801D93C0 001D63C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D93C4 001D63C4  7C 08 02 A6 */	mflr r0
/* 801D93C8 001D63C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D93CC 001D63CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D93D0 001D63D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801D93D4 001D63D4  41 82 00 70 */	beq lbl_801D9444
/* 801D93D8 001D63D8  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 801D93DC 001D63DC  A0 9F 00 04 */	lhz r4, 4(r31)
/* 801D93E0 001D63E0  38 03 FF FF */	addi r0, r3, 0x0000FFFF@l
/* 801D93E4 001D63E4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801D93E8 001D63E8  7C 04 00 50 */	subf r0, r4, r0
/* 801D93EC 001D63EC  7C 00 00 34 */	cntlzw r0, r0
/* 801D93F0 001D63F0  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 801D93F4 001D63F4  41 82 00 08 */	beq lbl_801D93FC
/* 801D93F8 001D63F8  48 00 00 14 */	b lbl_801D940C
lbl_801D93FC:
/* 801D93FC 001D63FC  38 64 FF FF */	addi r3, r4, -1
/* 801D9400 001D6400  7C 80 00 34 */	cntlzw r0, r4
/* 801D9404 001D6404  B0 7F 00 04 */	sth r3, 4(r31)
/* 801D9408 001D6408  54 00 D9 7E */	srwi r0, r0, 5
lbl_801D940C:
/* 801D940C 001D640C  2C 00 00 00 */	cmpwi r0, 0
/* 801D9410 001D6410  41 82 00 34 */	beq lbl_801D9444
/* 801D9414 001D6414  28 1F 00 00 */	cmplwi r31, 0
/* 801D9418 001D6418  41 82 00 2C */	beq lbl_801D9444
/* 801D941C 001D641C  80 9F 00 00 */	lwz r4, 0(r31)
/* 801D9420 001D6420  7F E3 FB 78 */	mr r3, r31
/* 801D9424 001D6424  81 84 00 30 */	lwz r12, 0x30(r4)
/* 801D9428 001D6428  7D 89 03 A6 */	mtctr r12
/* 801D942C 001D642C  4E 80 04 21 */	bctrl 
/* 801D9430 001D6430  80 9F 00 00 */	lwz r4, 0(r31)
/* 801D9434 001D6434  7F E3 FB 78 */	mr r3, r31
/* 801D9438 001D6438  81 84 00 34 */	lwz r12, 0x34(r4)
/* 801D943C 001D643C  7D 89 03 A6 */	mtctr r12
/* 801D9440 001D6440  4E 80 04 21 */	bctrl 
lbl_801D9444:
/* 801D9444 001D6444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9448 001D6448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D944C 001D644C  7C 08 03 A6 */	mtlr r0
/* 801D9450 001D6450  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9454 001D6454  4E 80 00 20 */	blr 

.global func_801D9458
func_801D9458:
/* 801D9458 001D6458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D945C 001D645C  7C 08 02 A6 */	mflr r0
/* 801D9460 001D6460  3C 80 80 22 */	lis r4, lbl_8021BBA0@ha
/* 801D9464 001D6464  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9468 001D6468  38 84 BB A0 */	addi r4, r4, lbl_8021BBA0@l
/* 801D946C 001D646C  48 00 00 35 */	bl func_801D94A0
/* 801D9470 001D6470  38 83 00 01 */	addi r4, r3, 1
/* 801D9474 001D6474  98 6D 91 A3 */	stb r3, lbl_80277AC3-_SDA_BASE_(r13)
/* 801D9478 001D6478  98 8D 91 A2 */	stb r4, lbl_80277AC2-_SDA_BASE_(r13)
/* 801D947C 001D647C  38 84 00 01 */	addi r4, r4, 1
/* 801D9480 001D6480  7C 80 23 78 */	mr r0, r4
/* 801D9484 001D6484  38 84 00 01 */	addi r4, r4, 1
/* 801D9488 001D6488  98 0D 91 A1 */	stb r0, lbl_80277AC1-_SDA_BASE_(r13)
/* 801D948C 001D648C  98 8D 91 A0 */	stb r4, lbl_80277AC0-_SDA_BASE_(r13)
/* 801D9490 001D6490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9494 001D6494  7C 08 03 A6 */	mtlr r0
/* 801D9498 001D6498  38 21 00 10 */	addi r1, r1, 0x10
/* 801D949C 001D649C  4E 80 00 20 */	blr 

.global func_801D94A0
func_801D94A0:
/* 801D94A0 001D64A0  38 C3 00 04 */	addi r6, r3, 4
/* 801D94A4 001D64A4  38 60 00 00 */	li r3, 0
/* 801D94A8 001D64A8  48 00 00 10 */	b lbl_801D94B8
lbl_801D94AC:
/* 801D94AC 001D64AC  88 05 00 04 */	lbz r0, 4(r5)
/* 801D94B0 001D64B0  7C A6 2B 78 */	mr r6, r5
/* 801D94B4 001D64B4  7C 63 02 14 */	add r3, r3, r0
lbl_801D94B8:
/* 801D94B8 001D64B8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D94BC 001D64BC  28 05 00 00 */	cmplwi r5, 0
/* 801D94C0 001D64C0  40 82 FF EC */	bne lbl_801D94AC
/* 801D94C4 001D64C4  90 86 00 00 */	stw r4, 0(r6)
/* 801D94C8 001D64C8  38 00 00 00 */	li r0, 0
/* 801D94CC 001D64CC  80 86 00 00 */	lwz r4, 0(r6)
/* 801D94D0 001D64D0  90 04 00 00 */	stw r0, 0(r4)
/* 801D94D4 001D64D4  4E 80 00 20 */	blr 

.global func_801D94D8
func_801D94D8:
/* 801D94D8 001D64D8  80 8D 86 90 */	lwz r4, lbl_80276FB0-_SDA_BASE_(r13)
/* 801D94DC 001D64DC  80 0D 86 94 */	lwz r0, lbl_80276FB4-_SDA_BASE_(r13)
/* 801D94E0 001D64E0  90 83 00 00 */	stw r4, 0(r3)
/* 801D94E4 001D64E4  90 03 00 04 */	stw r0, 4(r3)
/* 801D94E8 001D64E8  4E 80 00 20 */	blr 

.global func_801D94EC
func_801D94EC:
/* 801D94EC 001D64EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D94F0 001D64F0  7C 08 02 A6 */	mflr r0
/* 801D94F4 001D64F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D94F8 001D64F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D94FC 001D64FC  7C 7F 1B 78 */	mr r31, r3
/* 801D9500 001D6500  4B FF FF 59 */	bl func_801D9458
/* 801D9504 001D6504  80 7F 00 00 */	lwz r3, 0(r31)
/* 801D9508 001D6508  80 1F 00 04 */	lwz r0, 4(r31)
/* 801D950C 001D650C  90 6D 91 60 */	stw r3, lbl_80277A80-_SDA_BASE_(r13)
/* 801D9510 001D6510  90 0D 91 64 */	stw r0, lbl_80277A84-_SDA_BASE_(r13)
/* 801D9514 001D6514  88 7F 00 00 */	lbz r3, 0(r31)
/* 801D9518 001D6518  38 03 00 01 */	addi r0, r3, 1
/* 801D951C 001D651C  54 03 10 3A */	slwi r3, r0, 2
/* 801D9520 001D6520  4B FF 1E 1D */	bl func_801CB33C
/* 801D9524 001D6524  90 6D 91 84 */	stw r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D9528 001D6528  88 7F 00 00 */	lbz r3, 0(r31)
/* 801D952C 001D652C  38 03 00 01 */	addi r0, r3, 1
/* 801D9530 001D6530  54 03 10 3A */	slwi r3, r0, 2
/* 801D9534 001D6534  4B FF 1E 09 */	bl func_801CB33C
/* 801D9538 001D6538  38 A0 00 00 */	li r5, 0
/* 801D953C 001D653C  90 6D 91 80 */	stw r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D9540 001D6540  7C A4 2B 78 */	mr r4, r5
/* 801D9544 001D6544  38 C0 00 00 */	li r6, 0
/* 801D9548 001D6548  48 00 00 1C */	b lbl_801D9564
lbl_801D954C:
/* 801D954C 001D654C  80 6D 91 80 */	lwz r3, lbl_80277AA0-_SDA_BASE_(r13)
/* 801D9550 001D6550  38 C6 00 01 */	addi r6, r6, 1
/* 801D9554 001D6554  7C 83 29 2E */	stwx r4, r3, r5
/* 801D9558 001D6558  80 6D 91 84 */	lwz r3, lbl_80277AA4-_SDA_BASE_(r13)
/* 801D955C 001D655C  7C 83 29 2E */	stwx r4, r3, r5
/* 801D9560 001D6560  38 A5 00 04 */	addi r5, r5, 4
lbl_801D9564:
/* 801D9564 001D6564  88 7F 00 00 */	lbz r3, 0(r31)
/* 801D9568 001D6568  38 03 00 01 */	addi r0, r3, 1
/* 801D956C 001D656C  7C 06 00 00 */	cmpw r6, r0
/* 801D9570 001D6570  41 80 FF DC */	blt lbl_801D954C
/* 801D9574 001D6574  88 7F 00 01 */	lbz r3, 1(r31)
/* 801D9578 001D6578  38 03 00 02 */	addi r0, r3, 2
/* 801D957C 001D657C  54 03 10 3A */	slwi r3, r0, 2
/* 801D9580 001D6580  4B FF 1D BD */	bl func_801CB33C
/* 801D9584 001D6584  90 6D 91 7C */	stw r3, lbl_80277A9C-_SDA_BASE_(r13)
/* 801D9588 001D6588  88 7F 00 01 */	lbz r3, 1(r31)
/* 801D958C 001D658C  38 03 00 02 */	addi r0, r3, 2
/* 801D9590 001D6590  54 03 10 3A */	slwi r3, r0, 2
/* 801D9594 001D6594  4B FF 1D A9 */	bl func_801CB33C
/* 801D9598 001D6598  38 C0 00 00 */	li r6, 0
/* 801D959C 001D659C  90 6D 91 78 */	stw r3, lbl_80277A98-_SDA_BASE_(r13)
/* 801D95A0 001D65A0  7C C5 33 78 */	mr r5, r6
/* 801D95A4 001D65A4  7C C4 33 78 */	mr r4, r6
/* 801D95A8 001D65A8  48 00 00 1C */	b lbl_801D95C4
lbl_801D95AC:
/* 801D95AC 001D65AC  80 6D 91 78 */	lwz r3, lbl_80277A98-_SDA_BASE_(r13)
/* 801D95B0 001D65B0  38 C6 00 01 */	addi r6, r6, 1
/* 801D95B4 001D65B4  7C 83 29 2E */	stwx r4, r3, r5
/* 801D95B8 001D65B8  80 6D 91 7C */	lwz r3, lbl_80277A9C-_SDA_BASE_(r13)
/* 801D95BC 001D65BC  7C 83 29 2E */	stwx r4, r3, r5
/* 801D95C0 001D65C0  38 A5 00 04 */	addi r5, r5, 4
lbl_801D95C4:
/* 801D95C4 001D65C4  88 7F 00 01 */	lbz r3, 1(r31)
/* 801D95C8 001D65C8  38 03 00 02 */	addi r0, r3, 2
/* 801D95CC 001D65CC  7C 06 00 00 */	cmpw r6, r0
/* 801D95D0 001D65D0  41 80 FF DC */	blt lbl_801D95AC
/* 801D95D4 001D65D4  88 7F 00 02 */	lbz r3, 2(r31)
/* 801D95D8 001D65D8  38 03 00 01 */	addi r0, r3, 1
/* 801D95DC 001D65DC  54 03 10 3A */	slwi r3, r0, 2
/* 801D95E0 001D65E0  4B FF 1D 5D */	bl func_801CB33C
/* 801D95E4 001D65E4  38 C0 00 00 */	li r6, 0
/* 801D95E8 001D65E8  90 6D 91 98 */	stw r3, lbl_80277AB8-_SDA_BASE_(r13)
/* 801D95EC 001D65EC  7C C4 33 78 */	mr r4, r6
/* 801D95F0 001D65F0  7C C0 33 78 */	mr r0, r6
/* 801D95F4 001D65F4  48 00 00 14 */	b lbl_801D9608
lbl_801D95F8:
/* 801D95F8 001D65F8  80 6D 91 98 */	lwz r3, lbl_80277AB8-_SDA_BASE_(r13)
/* 801D95FC 001D65FC  38 C6 00 01 */	addi r6, r6, 1
/* 801D9600 001D6600  7C 03 21 2E */	stwx r0, r3, r4
/* 801D9604 001D6604  38 84 00 04 */	addi r4, r4, 4
lbl_801D9608:
/* 801D9608 001D6608  88 7F 00 02 */	lbz r3, 2(r31)
/* 801D960C 001D660C  38 A3 00 01 */	addi r5, r3, 1
/* 801D9610 001D6610  7C 06 28 00 */	cmpw r6, r5
/* 801D9614 001D6614  41 80 FF E4 */	blt lbl_801D95F8
/* 801D9618 001D6618  88 7F 00 00 */	lbz r3, 0(r31)
/* 801D961C 001D661C  54 A0 10 3A */	slwi r0, r5, 2
/* 801D9620 001D6620  38 63 00 01 */	addi r3, r3, 1
/* 801D9624 001D6624  7C 63 01 D6 */	mullw r3, r3, r0
/* 801D9628 001D6628  4B FF 1D 15 */	bl func_801CB33C
/* 801D962C 001D662C  38 E0 00 00 */	li r7, 0
/* 801D9630 001D6630  90 6D 91 9C */	stw r3, lbl_80277ABC-_SDA_BASE_(r13)
/* 801D9634 001D6634  7C E6 3B 78 */	mr r6, r7
/* 801D9638 001D6638  7C E5 3B 78 */	mr r5, r7
/* 801D963C 001D663C  48 00 00 14 */	b lbl_801D9650
lbl_801D9640:
/* 801D9640 001D6640  80 6D 91 9C */	lwz r3, lbl_80277ABC-_SDA_BASE_(r13)
/* 801D9644 001D6644  38 E7 00 01 */	addi r7, r7, 1
/* 801D9648 001D6648  7C A3 31 2E */	stwx r5, r3, r6
/* 801D964C 001D664C  38 C6 00 04 */	addi r6, r6, 4
lbl_801D9650:
/* 801D9650 001D6650  88 9F 00 02 */	lbz r4, 2(r31)
/* 801D9654 001D6654  88 7F 00 00 */	lbz r3, 0(r31)
/* 801D9658 001D6658  38 84 00 01 */	addi r4, r4, 1
/* 801D965C 001D665C  38 03 00 01 */	addi r0, r3, 1
/* 801D9660 001D6660  7C 04 01 D6 */	mullw r0, r4, r0
/* 801D9664 001D6664  7C 07 00 00 */	cmpw r7, r0
/* 801D9668 001D6668  41 80 FF D8 */	blt lbl_801D9640
/* 801D966C 001D666C  3C 60 80 25 */	lis r3, lbl_8024DB50@ha
/* 801D9670 001D6670  38 80 00 38 */	li r4, 0x38
/* 801D9674 001D6674  38 63 DB 50 */	addi r3, r3, lbl_8024DB50@l
/* 801D9678 001D6678  38 A0 00 04 */	li r5, 4
/* 801D967C 001D667C  4B FE E1 15 */	bl func_801C7790
/* 801D9680 001D6680  3C 60 80 25 */	lis r3, lbl_8024DB7C@ha
/* 801D9684 001D6684  38 80 00 18 */	li r4, 0x18
/* 801D9688 001D6688  38 63 DB 7C */	addi r3, r3, lbl_8024DB7C@l
/* 801D968C 001D668C  38 A0 00 04 */	li r5, 4
/* 801D9690 001D6690  4B FE E1 01 */	bl func_801C7790
/* 801D9694 001D6694  80 9F 00 04 */	lwz r4, 4(r31)
/* 801D9698 001D6698  38 60 00 00 */	li r3, 0
/* 801D969C 001D669C  48 00 00 10 */	b lbl_801D96AC
lbl_801D96A0:
/* 801D96A0 001D66A0  88 04 00 04 */	lbz r0, 4(r4)
/* 801D96A4 001D66A4  80 84 00 00 */	lwz r4, 0(r4)
/* 801D96A8 001D66A8  7C 63 02 14 */	add r3, r3, r0
lbl_801D96AC:
/* 801D96AC 001D66AC  28 04 00 00 */	cmplwi r4, 0
/* 801D96B0 001D66B0  40 82 FF F0 */	bne lbl_801D96A0
/* 801D96B4 001D66B4  2C 03 00 00 */	cmpwi r3, 0
/* 801D96B8 001D66B8  41 82 00 68 */	beq lbl_801D9720
/* 801D96BC 001D66BC  54 63 10 3A */	slwi r3, r3, 2
/* 801D96C0 001D66C0  4B FF 1C 7D */	bl func_801CB33C
/* 801D96C4 001D66C4  90 6D 91 68 */	stw r3, lbl_80277A88-_SDA_BASE_(r13)
/* 801D96C8 001D66C8  39 00 00 00 */	li r8, 0
/* 801D96CC 001D66CC  81 3F 00 04 */	lwz r9, 4(r31)
/* 801D96D0 001D66D0  48 00 00 44 */	b lbl_801D9714
lbl_801D96D4:
/* 801D96D4 001D66D4  38 E0 00 00 */	li r7, 0
/* 801D96D8 001D66D8  7D 06 43 78 */	mr r6, r8
/* 801D96DC 001D66DC  7C E5 3B 78 */	mr r5, r7
/* 801D96E0 001D66E0  48 00 00 24 */	b lbl_801D9704
lbl_801D96E4:
/* 801D96E4 001D66E4  80 89 00 08 */	lwz r4, 8(r9)
/* 801D96E8 001D66E8  38 E7 00 01 */	addi r7, r7, 1
/* 801D96EC 001D66EC  80 6D 91 68 */	lwz r3, lbl_80277A88-_SDA_BASE_(r13)
/* 801D96F0 001D66F0  39 08 00 04 */	addi r8, r8, 4
/* 801D96F4 001D66F4  7C 04 28 2E */	lwzx r0, r4, r5
/* 801D96F8 001D66F8  38 A5 00 04 */	addi r5, r5, 4
/* 801D96FC 001D66FC  7C 03 31 2E */	stwx r0, r3, r6
/* 801D9700 001D6700  38 C6 00 04 */	addi r6, r6, 4
lbl_801D9704:
/* 801D9704 001D6704  88 09 00 04 */	lbz r0, 4(r9)
/* 801D9708 001D6708  7C 07 00 00 */	cmpw r7, r0
/* 801D970C 001D670C  41 80 FF D8 */	blt lbl_801D96E4
/* 801D9710 001D6710  81 29 00 00 */	lwz r9, 0(r9)
lbl_801D9714:
/* 801D9714 001D6714  28 09 00 00 */	cmplwi r9, 0
/* 801D9718 001D6718  40 82 FF BC */	bne lbl_801D96D4
/* 801D971C 001D671C  48 00 00 0C */	b lbl_801D9728
lbl_801D9720:
/* 801D9720 001D6720  38 00 00 00 */	li r0, 0
/* 801D9724 001D6724  90 0D 91 68 */	stw r0, lbl_80277A88-_SDA_BASE_(r13)
lbl_801D9728:
/* 801D9728 001D6728  38 00 00 00 */	li r0, 0
/* 801D972C 001D672C  3C 60 80 25 */	lis r3, lbl_8024DBA8@ha
/* 801D9730 001D6730  90 0D 91 94 */	stw r0, lbl_80277AB4-_SDA_BASE_(r13)
/* 801D9734 001D6734  90 0D 91 74 */	stw r0, lbl_80277A94-_SDA_BASE_(r13)
/* 801D9738 001D6738  90 0D 91 90 */	stw r0, lbl_80277AB0-_SDA_BASE_(r13)
/* 801D973C 001D673C  90 03 DB A8 */	stw r0, lbl_8024DBA8@l(r3)
/* 801D9740 001D6740  90 0D 91 70 */	stw r0, lbl_80277A90-_SDA_BASE_(r13)
/* 801D9744 001D6744  90 0D 91 6C */	stw r0, lbl_80277A8C-_SDA_BASE_(r13)
/* 801D9748 001D6748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D974C 001D674C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9750 001D6750  7C 08 03 A6 */	mtlr r0
/* 801D9754 001D6754  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9758 001D6758  4E 80 00 20 */	blr 
