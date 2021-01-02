.include "macros.inc"

.section .text  # 0x80192B04 - 0x80192E48

.global strstr
strstr:
/* 80192B04 0018FB04  28 04 00 00 */	cmplwi r4, 0
/* 80192B08 0018FB08  38 A3 FF FF */	addi r5, r3, -1
/* 80192B0C 0018FB0C  4D 82 00 20 */	beqlr 
/* 80192B10 0018FB10  88 C4 00 00 */	lbz r6, 0(r4)
/* 80192B14 0018FB14  28 06 00 00 */	cmplwi r6, 0
/* 80192B18 0018FB18  40 82 00 40 */	bne lbl_80192B58
/* 80192B1C 0018FB1C  4E 80 00 20 */	blr 
lbl_80192B20:
/* 80192B20 0018FB20  7C 00 30 40 */	cmplw r0, r6
/* 80192B24 0018FB24  40 82 00 34 */	bne lbl_80192B58
/* 80192B28 0018FB28  38 E5 FF FF */	addi r7, r5, -1
/* 80192B2C 0018FB2C  39 04 FF FF */	addi r8, r4, -1
lbl_80192B30:
/* 80192B30 0018FB30  8C 07 00 01 */	lbzu r0, 1(r7)
/* 80192B34 0018FB34  8C 68 00 01 */	lbzu r3, 1(r8)
/* 80192B38 0018FB38  7C 00 18 40 */	cmplw r0, r3
/* 80192B3C 0018FB3C  40 82 00 0C */	bne lbl_80192B48
/* 80192B40 0018FB40  28 00 00 00 */	cmplwi r0, 0
/* 80192B44 0018FB44  40 82 FF EC */	bne lbl_80192B30
lbl_80192B48:
/* 80192B48 0018FB48  28 03 00 00 */	cmplwi r3, 0
/* 80192B4C 0018FB4C  40 82 00 0C */	bne lbl_80192B58
/* 80192B50 0018FB50  7C A3 2B 78 */	mr r3, r5
/* 80192B54 0018FB54  4E 80 00 20 */	blr 
lbl_80192B58:
/* 80192B58 0018FB58  8C 05 00 01 */	lbzu r0, 1(r5)
/* 80192B5C 0018FB5C  28 00 00 00 */	cmplwi r0, 0
/* 80192B60 0018FB60  40 82 FF C0 */	bne lbl_80192B20
/* 80192B64 0018FB64  38 60 00 00 */	li r3, 0
/* 80192B68 0018FB68  4E 80 00 20 */	blr 

.global strchr
strchr:
/* 80192B6C 0018FB6C  38 63 FF FF */	addi r3, r3, -1
/* 80192B70 0018FB70  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80192B74 0018FB74  48 00 00 0C */	b lbl_80192B80
lbl_80192B78:
/* 80192B78 0018FB78  7C 04 00 40 */	cmplw r4, r0
/* 80192B7C 0018FB7C  4D 82 00 20 */	beqlr 
lbl_80192B80:
/* 80192B80 0018FB80  8C 83 00 01 */	lbzu r4, 1(r3)
/* 80192B84 0018FB84  28 04 00 00 */	cmplwi r4, 0
/* 80192B88 0018FB88  40 82 FF F0 */	bne lbl_80192B78
/* 80192B8C 0018FB8C  28 00 00 00 */	cmplwi r0, 0
/* 80192B90 0018FB90  4D 82 00 20 */	beqlr 
/* 80192B94 0018FB94  38 60 00 00 */	li r3, 0
/* 80192B98 0018FB98  4E 80 00 20 */	blr 

.global strncmp
strncmp:
/* 80192B9C 0018FB9C  38 63 FF FF */	addi r3, r3, -1
/* 80192BA0 0018FBA0  38 84 FF FF */	addi r4, r4, -1
/* 80192BA4 0018FBA4  38 C5 00 01 */	addi r6, r5, 1
/* 80192BA8 0018FBA8  48 00 00 24 */	b lbl_80192BCC
lbl_80192BAC:
/* 80192BAC 0018FBAC  8C 03 00 01 */	lbzu r0, 1(r3)
/* 80192BB0 0018FBB0  8C A4 00 01 */	lbzu r5, 1(r4)
/* 80192BB4 0018FBB4  7C 00 28 40 */	cmplw r0, r5
/* 80192BB8 0018FBB8  41 82 00 0C */	beq lbl_80192BC4
/* 80192BBC 0018FBBC  7C 65 00 50 */	subf r3, r5, r0
/* 80192BC0 0018FBC0  4E 80 00 20 */	blr 
lbl_80192BC4:
/* 80192BC4 0018FBC4  28 00 00 00 */	cmplwi r0, 0
/* 80192BC8 0018FBC8  41 82 00 0C */	beq lbl_80192BD4
lbl_80192BCC:
/* 80192BCC 0018FBCC  34 C6 FF FF */	addic. r6, r6, -1
/* 80192BD0 0018FBD0  40 82 FF DC */	bne lbl_80192BAC
lbl_80192BD4:
/* 80192BD4 0018FBD4  38 60 00 00 */	li r3, 0
/* 80192BD8 0018FBD8  4E 80 00 20 */	blr 

.global strcmp
strcmp:
/* 80192BDC 0018FBDC  88 A3 00 00 */	lbz r5, 0(r3)
/* 80192BE0 0018FBE0  88 04 00 00 */	lbz r0, 0(r4)
/* 80192BE4 0018FBE4  7C 00 28 51 */	subf. r0, r0, r5
/* 80192BE8 0018FBE8  41 82 00 0C */	beq lbl_80192BF4
/* 80192BEC 0018FBEC  7C 03 03 78 */	mr r3, r0
/* 80192BF0 0018FBF0  4E 80 00 20 */	blr 
lbl_80192BF4:
/* 80192BF4 0018FBF4  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 80192BF8 0018FBF8  54 66 07 BE */	clrlwi r6, r3, 0x1e
/* 80192BFC 0018FBFC  7C 00 30 40 */	cmplw r0, r6
/* 80192C00 0018FC00  40 82 00 CC */	bne lbl_80192CCC
/* 80192C04 0018FC04  28 06 00 00 */	cmplwi r6, 0
/* 80192C08 0018FC08  41 82 00 58 */	beq lbl_80192C60
/* 80192C0C 0018FC0C  28 05 00 00 */	cmplwi r5, 0
/* 80192C10 0018FC10  40 82 00 0C */	bne lbl_80192C1C
/* 80192C14 0018FC14  38 60 00 00 */	li r3, 0
/* 80192C18 0018FC18  4E 80 00 20 */	blr 
lbl_80192C1C:
/* 80192C1C 0018FC1C  20 06 00 03 */	subfic r0, r6, 3
/* 80192C20 0018FC20  7C 09 03 A6 */	mtctr r0
/* 80192C24 0018FC24  28 00 00 00 */	cmplwi r0, 0
/* 80192C28 0018FC28  41 82 00 30 */	beq lbl_80192C58
lbl_80192C2C:
/* 80192C2C 0018FC2C  8C A3 00 01 */	lbzu r5, 1(r3)
/* 80192C30 0018FC30  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80192C34 0018FC34  7C 00 28 51 */	subf. r0, r0, r5
/* 80192C38 0018FC38  41 82 00 0C */	beq lbl_80192C44
/* 80192C3C 0018FC3C  7C 03 03 78 */	mr r3, r0
/* 80192C40 0018FC40  4E 80 00 20 */	blr 
lbl_80192C44:
/* 80192C44 0018FC44  28 05 00 00 */	cmplwi r5, 0
/* 80192C48 0018FC48  40 82 00 0C */	bne lbl_80192C54
/* 80192C4C 0018FC4C  38 60 00 00 */	li r3, 0
/* 80192C50 0018FC50  4E 80 00 20 */	blr 
lbl_80192C54:
/* 80192C54 0018FC54  42 00 FF D8 */	bdnz lbl_80192C2C
lbl_80192C58:
/* 80192C58 0018FC58  38 63 00 01 */	addi r3, r3, 1
/* 80192C5C 0018FC5C  38 84 00 01 */	addi r4, r4, 1
lbl_80192C60:
/* 80192C60 0018FC60  80 E3 00 00 */	lwz r7, 0(r3)
/* 80192C64 0018FC64  3C A0 80 81 */	lis r5, 0x80808080@ha
/* 80192C68 0018FC68  38 C5 80 80 */	addi r6, r5, 0x80808080@l
/* 80192C6C 0018FC6C  81 04 00 00 */	lwz r8, 0(r4)
/* 80192C70 0018FC70  3C A7 FE FF */	addis r5, r7, 0xfeff
/* 80192C74 0018FC74  38 05 FE FF */	addi r0, r5, -257
/* 80192C78 0018FC78  7C 00 30 39 */	and. r0, r0, r6
/* 80192C7C 0018FC7C  40 82 00 38 */	bne lbl_80192CB4
/* 80192C80 0018FC80  48 00 00 1C */	b lbl_80192C9C
lbl_80192C84:
/* 80192C84 0018FC84  84 E3 00 04 */	lwzu r7, 4(r3)
/* 80192C88 0018FC88  85 04 00 04 */	lwzu r8, 4(r4)
/* 80192C8C 0018FC8C  3C A7 FE FF */	addis r5, r7, 0xfeff
/* 80192C90 0018FC90  38 05 FE FF */	addi r0, r5, -257
/* 80192C94 0018FC94  7C 00 30 39 */	and. r0, r0, r6
/* 80192C98 0018FC98  40 82 00 1C */	bne lbl_80192CB4
lbl_80192C9C:
/* 80192C9C 0018FC9C  7C 07 40 40 */	cmplw r7, r8
/* 80192CA0 0018FCA0  41 82 FF E4 */	beq lbl_80192C84
/* 80192CA4 0018FCA4  38 60 FF FF */	li r3, -1
/* 80192CA8 0018FCA8  4C 81 00 20 */	blelr 
/* 80192CAC 0018FCAC  38 60 00 01 */	li r3, 1
/* 80192CB0 0018FCB0  4E 80 00 20 */	blr 
lbl_80192CB4:
/* 80192CB4 0018FCB4  88 A3 00 00 */	lbz r5, 0(r3)
/* 80192CB8 0018FCB8  88 04 00 00 */	lbz r0, 0(r4)
/* 80192CBC 0018FCBC  7C 00 28 51 */	subf. r0, r0, r5
/* 80192CC0 0018FCC0  41 82 00 0C */	beq lbl_80192CCC
/* 80192CC4 0018FCC4  7C 03 03 78 */	mr r3, r0
/* 80192CC8 0018FCC8  4E 80 00 20 */	blr 
lbl_80192CCC:
/* 80192CCC 0018FCCC  28 05 00 00 */	cmplwi r5, 0
/* 80192CD0 0018FCD0  40 82 00 0C */	bne lbl_80192CDC
/* 80192CD4 0018FCD4  38 60 00 00 */	li r3, 0
/* 80192CD8 0018FCD8  4E 80 00 20 */	blr 
lbl_80192CDC:
/* 80192CDC 0018FCDC  8C A3 00 01 */	lbzu r5, 1(r3)
/* 80192CE0 0018FCE0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80192CE4 0018FCE4  7C 00 28 51 */	subf. r0, r0, r5
/* 80192CE8 0018FCE8  41 82 00 0C */	beq lbl_80192CF4
/* 80192CEC 0018FCEC  7C 03 03 78 */	mr r3, r0
/* 80192CF0 0018FCF0  4E 80 00 20 */	blr 
lbl_80192CF4:
/* 80192CF4 0018FCF4  28 05 00 00 */	cmplwi r5, 0
/* 80192CF8 0018FCF8  40 82 FF E4 */	bne lbl_80192CDC
/* 80192CFC 0018FCFC  38 60 00 00 */	li r3, 0
/* 80192D00 0018FD00  4E 80 00 20 */	blr 

.global strcat
strcat:
/* 80192D04 0018FD04  38 84 FF FF */	addi r4, r4, -1
/* 80192D08 0018FD08  38 A3 FF FF */	addi r5, r3, -1
lbl_80192D0C:
/* 80192D0C 0018FD0C  8C 05 00 01 */	lbzu r0, 1(r5)
/* 80192D10 0018FD10  28 00 00 00 */	cmplwi r0, 0
/* 80192D14 0018FD14  40 82 FF F8 */	bne lbl_80192D0C
/* 80192D18 0018FD18  38 A5 FF FF */	addi r5, r5, -1
lbl_80192D1C:
/* 80192D1C 0018FD1C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80192D20 0018FD20  28 00 00 00 */	cmplwi r0, 0
/* 80192D24 0018FD24  9C 05 00 01 */	stbu r0, 1(r5)
/* 80192D28 0018FD28  40 82 FF F4 */	bne lbl_80192D1C
/* 80192D2C 0018FD2C  4E 80 00 20 */	blr 

.global strncpy
strncpy:
/* 80192D30 0018FD30  38 84 FF FF */	addi r4, r4, -1
/* 80192D34 0018FD34  38 C3 FF FF */	addi r6, r3, -1
/* 80192D38 0018FD38  38 A5 00 01 */	addi r5, r5, 1
/* 80192D3C 0018FD3C  48 00 00 2C */	b lbl_80192D68
lbl_80192D40:
/* 80192D40 0018FD40  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80192D44 0018FD44  28 00 00 00 */	cmplwi r0, 0
/* 80192D48 0018FD48  9C 06 00 01 */	stbu r0, 1(r6)
/* 80192D4C 0018FD4C  40 82 00 1C */	bne lbl_80192D68
/* 80192D50 0018FD50  38 00 00 00 */	li r0, 0
/* 80192D54 0018FD54  48 00 00 08 */	b lbl_80192D5C
lbl_80192D58:
/* 80192D58 0018FD58  9C 06 00 01 */	stbu r0, 1(r6)
lbl_80192D5C:
/* 80192D5C 0018FD5C  34 A5 FF FF */	addic. r5, r5, -1
/* 80192D60 0018FD60  40 82 FF F8 */	bne lbl_80192D58
/* 80192D64 0018FD64  4E 80 00 20 */	blr 
lbl_80192D68:
/* 80192D68 0018FD68  34 A5 FF FF */	addic. r5, r5, -1
/* 80192D6C 0018FD6C  40 82 FF D4 */	bne lbl_80192D40
/* 80192D70 0018FD70  4E 80 00 20 */	blr 

.global strcpy
strcpy:
/* 80192D74 0018FD74  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80192D78 0018FD78  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 80192D7C 0018FD7C  7C 00 28 40 */	cmplw r0, r5
/* 80192D80 0018FD80  7C 67 1B 78 */	mr r7, r3
/* 80192D84 0018FD84  40 82 00 84 */	bne lbl_80192E08
/* 80192D88 0018FD88  28 05 00 00 */	cmplwi r5, 0
/* 80192D8C 0018FD8C  41 82 00 40 */	beq lbl_80192DCC
/* 80192D90 0018FD90  88 04 00 00 */	lbz r0, 0(r4)
/* 80192D94 0018FD94  28 00 00 00 */	cmplwi r0, 0
/* 80192D98 0018FD98  98 07 00 00 */	stb r0, 0(r7)
/* 80192D9C 0018FD9C  4D 82 00 20 */	beqlr 
/* 80192DA0 0018FDA0  20 05 00 03 */	subfic r0, r5, 3
/* 80192DA4 0018FDA4  7C 09 03 A6 */	mtctr r0
/* 80192DA8 0018FDA8  28 00 00 00 */	cmplwi r0, 0
/* 80192DAC 0018FDAC  41 82 00 18 */	beq lbl_80192DC4
lbl_80192DB0:
/* 80192DB0 0018FDB0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80192DB4 0018FDB4  28 00 00 00 */	cmplwi r0, 0
/* 80192DB8 0018FDB8  9C 07 00 01 */	stbu r0, 1(r7)
/* 80192DBC 0018FDBC  4D 82 00 20 */	beqlr 
/* 80192DC0 0018FDC0  42 00 FF F0 */	bdnz lbl_80192DB0
lbl_80192DC4:
/* 80192DC4 0018FDC4  38 E7 00 01 */	addi r7, r7, 1
/* 80192DC8 0018FDC8  38 84 00 01 */	addi r4, r4, 1
lbl_80192DCC:
/* 80192DCC 0018FDCC  81 04 00 00 */	lwz r8, 0(r4)
/* 80192DD0 0018FDD0  3C A0 80 81 */	lis r5, 0x80808080@ha
/* 80192DD4 0018FDD4  38 C5 80 80 */	addi r6, r5, 0x80808080@l
/* 80192DD8 0018FDD8  3C A8 FE FF */	addis r5, r8, 0xfeff
/* 80192DDC 0018FDDC  38 05 FE FF */	addi r0, r5, -257
/* 80192DE0 0018FDE0  7C 00 30 39 */	and. r0, r0, r6
/* 80192DE4 0018FDE4  40 82 00 24 */	bne lbl_80192E08
/* 80192DE8 0018FDE8  38 E7 FF FC */	addi r7, r7, -4
lbl_80192DEC:
/* 80192DEC 0018FDEC  95 07 00 04 */	stwu r8, 4(r7)
/* 80192DF0 0018FDF0  85 04 00 04 */	lwzu r8, 4(r4)
/* 80192DF4 0018FDF4  3C A8 FE FF */	addis r5, r8, 0xfeff
/* 80192DF8 0018FDF8  38 05 FE FF */	addi r0, r5, -257
/* 80192DFC 0018FDFC  7C 00 30 39 */	and. r0, r0, r6
/* 80192E00 0018FE00  41 82 FF EC */	beq lbl_80192DEC
/* 80192E04 0018FE04  38 E7 00 04 */	addi r7, r7, 4
lbl_80192E08:
/* 80192E08 0018FE08  88 04 00 00 */	lbz r0, 0(r4)
/* 80192E0C 0018FE0C  28 00 00 00 */	cmplwi r0, 0
/* 80192E10 0018FE10  98 07 00 00 */	stb r0, 0(r7)
/* 80192E14 0018FE14  4D 82 00 20 */	beqlr 
lbl_80192E18:
/* 80192E18 0018FE18  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80192E1C 0018FE1C  28 00 00 00 */	cmplwi r0, 0
/* 80192E20 0018FE20  9C 07 00 01 */	stbu r0, 1(r7)
/* 80192E24 0018FE24  40 82 FF F4 */	bne lbl_80192E18
/* 80192E28 0018FE28  4E 80 00 20 */	blr 

.global strlen
strlen:
/* 80192E2C 0018FE2C  38 83 FF FF */	addi r4, r3, -1
/* 80192E30 0018FE30  38 60 FF FF */	li r3, -1
lbl_80192E34:
/* 80192E34 0018FE34  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80192E38 0018FE38  38 63 00 01 */	addi r3, r3, 1
/* 80192E3C 0018FE3C  28 00 00 00 */	cmplwi r0, 0
/* 80192E40 0018FE40  40 82 FF F4 */	bne lbl_80192E34
/* 80192E44 0018FE44  4E 80 00 20 */	blr 
