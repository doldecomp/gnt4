.include "macros.inc"

.section .text  # 0x8016E2A4 - 0x8016E480

.global func_8016E2A4
func_8016E2A4:
/* 8016E2A4 0016B2A4  E0 43 00 00 */	psq_l p2, 0(r3), 0, qr0
/* 8016E2A8 0016B2A8  E0 84 00 00 */	psq_l p4, 0(r4), 0, qr0
/* 8016E2AC 0016B2AC  10 C2 20 2A */	ps_add p6, p2, p4
/* 8016E2B0 0016B2B0  F0 C5 00 00 */	psq_st p6, 0(r5), 0, qr0
/* 8016E2B4 0016B2B4  E0 63 80 08 */	psq_l p3, 8(r3), 1, qr0
/* 8016E2B8 0016B2B8  E0 A4 80 08 */	psq_l p5, 8(r4), 1, qr0
/* 8016E2BC 0016B2BC  10 E3 28 2A */	ps_add p7, p3, p5
/* 8016E2C0 0016B2C0  F0 E5 80 08 */	psq_st p7, 8(r5), 1, qr0
/* 8016E2C4 0016B2C4  4E 80 00 20 */	blr 

.global func_8016E2C8
func_8016E2C8:
/* 8016E2C8 0016B2C8  E0 43 00 00 */	psq_l p2, 0(r3), 0, qr0
/* 8016E2CC 0016B2CC  E0 84 00 00 */	psq_l p4, 0(r4), 0, qr0
/* 8016E2D0 0016B2D0  10 C2 20 28 */	ps_sub p6, p2, p4
/* 8016E2D4 0016B2D4  F0 C5 00 00 */	psq_st p6, 0(r5), 0, qr0
/* 8016E2D8 0016B2D8  E0 63 80 08 */	psq_l p3, 8(r3), 1, qr0
/* 8016E2DC 0016B2DC  E0 A4 80 08 */	psq_l p5, 8(r4), 1, qr0
/* 8016E2E0 0016B2E0  10 E3 28 28 */	ps_sub p7, p3, p5
/* 8016E2E4 0016B2E4  F0 E5 80 08 */	psq_st p7, 8(r5), 1, qr0
/* 8016E2E8 0016B2E8  4E 80 00 20 */	blr 

.global func_8016E2EC
func_8016E2EC:
/* 8016E2EC 0016B2EC  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 8016E2F0 0016B2F0  E0 43 80 08 */	psq_l p2, 8(r3), 1, qr0
/* 8016E2F4 0016B2F4  10 00 00 58 */	ps_muls0 p0, p0, p1
/* 8016E2F8 0016B2F8  F0 04 00 00 */	psq_st p0, 0(r4), 0, qr0
/* 8016E2FC 0016B2FC  10 02 00 58 */	ps_muls0 p0, p2, p1
/* 8016E300 0016B300  F0 04 80 08 */	psq_st p0, 8(r4), 1, qr0
/* 8016E304 0016B304  4E 80 00 20 */	blr 

.global func_8016E308
func_8016E308:
/* 8016E308 0016B308  C0 02 BA 68 */	lfs f0, lbl_8027B708-_SDA2_BASE_(r2)
/* 8016E30C 0016B30C  C0 22 BA 6C */	lfs f1, lbl_8027B70C-_SDA2_BASE_(r2)
/* 8016E310 0016B310  E0 43 00 00 */	psq_l p2, 0(r3), 0, qr0
/* 8016E314 0016B314  10 A2 00 B2 */	ps_mul p5, p2, p2
/* 8016E318 0016B318  E0 63 80 08 */	psq_l p3, 8(r3), 1, qr0
/* 8016E31C 0016B31C  10 83 28 FA */	ps_madd p4, p3, p3, p5
/* 8016E320 0016B320  10 84 28 D4 */	ps_sum0 p4, p4, p3, p5
/* 8016E324 0016B324  FC A0 20 34 */	frsqrte f5, f4
/* 8016E328 0016B328  EC C5 01 72 */	fmuls f6, f5, f5
/* 8016E32C 0016B32C  EC 05 00 32 */	fmuls f0, f5, f0
/* 8016E330 0016B330  EC C6 09 3C */	fnmsubs f6, f6, f4, f1
/* 8016E334 0016B334  EC A6 00 32 */	fmuls f5, f6, f0
/* 8016E338 0016B338  10 42 01 58 */	ps_muls0 p2, p2, p5
/* 8016E33C 0016B33C  F0 44 00 00 */	psq_st p2, 0(r4), 0, qr0
/* 8016E340 0016B340  10 63 01 58 */	ps_muls0 p3, p3, p5
/* 8016E344 0016B344  F0 64 80 08 */	psq_st p3, 8(r4), 1, qr0
/* 8016E348 0016B348  4E 80 00 20 */	blr 

.global func_8016E34C
func_8016E34C:
/* 8016E34C 0016B34C  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 8016E350 0016B350  10 00 00 32 */	ps_mul p0, p0, p0
/* 8016E354 0016B354  C0 23 00 08 */	lfs f1, 8(r3)
/* 8016E358 0016B358  10 21 00 7A */	ps_madd p1, p1, p1, p0
/* 8016E35C 0016B35C  10 21 00 14 */	ps_sum0 p1, p1, p0, p0
/* 8016E360 0016B360  4E 80 00 20 */	blr 

.global func_8016E364
func_8016E364:
/* 8016E364 0016B364  C0 82 BA 68 */	lfs f4, lbl_8027B708-_SDA2_BASE_(r2)
/* 8016E368 0016B368  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 8016E36C 0016B36C  10 00 00 32 */	ps_mul p0, p0, p0
/* 8016E370 0016B370  C0 23 00 08 */	lfs f1, 8(r3)
/* 8016E374 0016B374  EC 44 20 28 */	fsubs f2, f4, f4
/* 8016E378 0016B378  10 21 00 7A */	ps_madd p1, p1, p1, p0
/* 8016E37C 0016B37C  10 21 00 14 */	ps_sum0 p1, p1, p0, p0
/* 8016E380 0016B380  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 8016E384 0016B384  41 82 00 20 */	beq lbl_8016E3A4
/* 8016E388 0016B388  FC 00 08 34 */	frsqrte f0, f1
/* 8016E38C 0016B38C  C0 62 BA 6C */	lfs f3, lbl_8027B70C-_SDA2_BASE_(r2)
/* 8016E390 0016B390  EC 40 00 32 */	fmuls f2, f0, f0
/* 8016E394 0016B394  EC 00 01 32 */	fmuls f0, f0, f4
/* 8016E398 0016B398  EC 42 18 7C */	fnmsubs f2, f2, f1, f3
/* 8016E39C 0016B39C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8016E3A0 0016B3A0  EC 21 00 32 */	fmuls f1, f1, f0
lbl_8016E3A4:
/* 8016E3A4 0016B3A4  4E 80 00 20 */	blr 

.global func_8016E3A8
func_8016E3A8:
/* 8016E3A8 0016B3A8  E0 43 00 04 */	psq_l p2, 4(r3), 0, qr0
/* 8016E3AC 0016B3AC  E0 64 00 04 */	psq_l p3, 4(r4), 0, qr0
/* 8016E3B0 0016B3B0  10 42 00 F2 */	ps_mul p2, p2, p3
/* 8016E3B4 0016B3B4  E0 A3 00 00 */	psq_l p5, 0(r3), 0, qr0
/* 8016E3B8 0016B3B8  E0 84 00 00 */	psq_l p4, 0(r4), 0, qr0
/* 8016E3BC 0016B3BC  10 65 11 3A */	ps_madd p3, p5, p4, p2
/* 8016E3C0 0016B3C0  10 23 10 94 */	ps_sum0 p1, p3, p2, p2
/* 8016E3C4 0016B3C4  4E 80 00 20 */	blr 

.global func_8016E3C8
func_8016E3C8:
/* 8016E3C8 0016B3C8  E0 24 00 00 */	psq_l p1, 0(r4), 0, qr0
/* 8016E3CC 0016B3CC  C0 43 00 08 */	lfs f2, 8(r3)
/* 8016E3D0 0016B3D0  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 8016E3D4 0016B3D4  10 C1 0C A0 */	ps_merge10 p6, p1, p1
/* 8016E3D8 0016B3D8  C0 64 00 08 */	lfs f3, 8(r4)
/* 8016E3DC 0016B3DC  10 81 00 B2 */	ps_mul p4, p1, p2
/* 8016E3E0 0016B3E0  10 E1 00 18 */	ps_muls0 p7, p1, p0
/* 8016E3E4 0016B3E4  10 A0 20 F8 */	ps_msub p5, p0, p3, p4
/* 8016E3E8 0016B3E8  11 00 39 B8 */	ps_msub p8, p0, p6, p7
/* 8016E3EC 0016B3EC  11 25 2C E0 */	ps_merge11 p9, p5, p5
/* 8016E3F0 0016B3F0  11 45 44 60 */	ps_merge01 p10, p5, p8
/* 8016E3F4 0016B3F4  F1 25 80 00 */	psq_st p9, 0(r5), 1, qr0
/* 8016E3F8 0016B3F8  11 40 50 50 */	ps_neg p10, p10
/* 8016E3FC 0016B3FC  F1 45 00 04 */	psq_st p10, 4(r5), 0, qr0
/* 8016E400 0016B400  4E 80 00 20 */	blr 

.global func_8016E404
func_8016E404:
/* 8016E404 0016B404  E0 03 00 04 */	psq_l p0, 4(r3), 0, qr0
/* 8016E408 0016B408  E0 24 00 04 */	psq_l p1, 4(r4), 0, qr0
/* 8016E40C 0016B40C  10 40 08 28 */	ps_sub p2, p0, p1
/* 8016E410 0016B410  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 8016E414 0016B414  E0 24 00 00 */	psq_l p1, 0(r4), 0, qr0
/* 8016E418 0016B418  10 42 00 B2 */	ps_mul p2, p2, p2
/* 8016E41C 0016B41C  10 00 08 28 */	ps_sub p0, p0, p1
/* 8016E420 0016B420  10 20 10 3A */	ps_madd p1, p0, p0, p2
/* 8016E424 0016B424  10 21 10 94 */	ps_sum0 p1, p1, p2, p2
/* 8016E428 0016B428  4E 80 00 20 */	blr 

.global func_8016E42C
func_8016E42C:
/* 8016E42C 0016B42C  E0 03 00 04 */	psq_l p0, 4(r3), 0, qr0
/* 8016E430 0016B430  E0 24 00 04 */	psq_l p1, 4(r4), 0, qr0
/* 8016E434 0016B434  10 40 08 28 */	ps_sub p2, p0, p1
/* 8016E438 0016B438  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 8016E43C 0016B43C  E0 24 00 00 */	psq_l p1, 0(r4), 0, qr0
/* 8016E440 0016B440  10 42 00 B2 */	ps_mul p2, p2, p2
/* 8016E444 0016B444  10 00 08 28 */	ps_sub p0, p0, p1
/* 8016E448 0016B448  C0 62 BA 68 */	lfs f3, lbl_8027B708-_SDA2_BASE_(r2)
/* 8016E44C 0016B44C  10 20 10 3A */	ps_madd p1, p0, p0, p2
/* 8016E450 0016B450  EC 03 18 28 */	fsubs f0, f3, f3
/* 8016E454 0016B454  10 21 10 94 */	ps_sum0 p1, p1, p2, p2
/* 8016E458 0016B458  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8016E45C 0016B45C  41 82 00 20 */	beq lbl_8016E47C
/* 8016E460 0016B460  C0 82 BA 6C */	lfs f4, lbl_8027B70C-_SDA2_BASE_(r2)
/* 8016E464 0016B464  FC 00 08 34 */	frsqrte f0, f1
/* 8016E468 0016B468  EC 40 00 32 */	fmuls f2, f0, f0
/* 8016E46C 0016B46C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8016E470 0016B470  EC 42 20 7C */	fnmsubs f2, f2, f1, f4
/* 8016E474 0016B474  EC 02 00 32 */	fmuls f0, f2, f0
/* 8016E478 0016B478  EC 21 00 32 */	fmuls f1, f1, f0
lbl_8016E47C:
/* 8016E47C 0016B47C  4E 80 00 20 */	blr 
