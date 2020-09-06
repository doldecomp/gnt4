#include "rand.h"

extern u32* lbl_80276F00;

/* 0x801CCDC8 - 0x801CCE8C

/*
u16 HSD_Randi(int maxVal)
{
  u32 uVar1;
  lbl_80276F00 = lbl_80276F00 * 214013 + 2531011;
  uVar1 = maxVal * (lbl_80276F00 >> 0x10);
  return uVar1 >> 0x10;
}

u16 HSD_Rand(void)
{
  lbl_80276F00 = lbl_80276F00 * 214013 + 2531011;
  return lbl_80276F00 >> 0x10;
}

f64 HSD_Randf(void)
{
  lbl_80276F00 = lbl_80276F00 * 214013 + 2531011;
  return lbl_80276F00 >> 0x10;
}
*/

s32 HSD_Rand(void)
{
  *lbl_80276F00 = *lbl_80276F00 * 214013 + 2531011;
  return *lbl_80276F00 >> 0x10;
}

asm f32 HSD_Randf(void)
{
    nofralloc
    /* 801CCDF8 001C9DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
    /* 801CCDFC 001C9DFC  3C 60 00 03 */	lis	r3, 0x0003
    /* 801CCE00 001C9E00  3C 00 43 30 */	lis r0, 0x4330
    /* 801CCE04 001C9E04  C8 42 C5 D8 */	lfd	f2, -0x3A28 (rtoc)
    /* 801CCE08 001C9E08  80 AD 85 E0 */	lwz r5, -0x7A20 (r13)
    /* 801CCE0C 001C9E0C  38 63 43 FD */	addi r3, r3, 17405
    /* 801CCE10 001C9E10  90 01 00 08 */	stw r0, 8(r1)
    /* 801CCE14 001C9E14  80 85 00 00 */	lwz r4, 0(r5)
    /* 801CCE18 001C9E18  C0 02 C5 D0 */	lfs	f0, -0x3A30 (rtoc)
    /* 801CCE1C 001C9E1C  7C 64 19 D6 */	mullw r3, r4, r3
    /* 801CCE20 001C9E20  3C 63 00 27 */	addis r3, r3, 0x27
    /* 801CCE24 001C9E24  38 03 9E C3 */	addi r0, r3, -24893
    /* 801CCE28 001C9E28  90 05 00 00 */	stw r0, 0(r5)
    /* 801CCE2C 001C9E2C  80 6D 85 E0 */	lwz	r3, -0x7A20 (r13)
    /* 801CCE30 001C9E30  80 03 00 00 */	lwz r0, 0(r3)
    /* 801CCE34 001C9E34  54 00 84 3E */	srwi r0, r0, 0x10
    /* 801CCE38 001C9E38  90 01 00 0C */	stw r0, 0xc(r1)
    /* 801CCE3C 001C9E3C  C8 21 00 08 */	lfd f1, 8(r1)
    /* 801CCE40 001C9E40  EC 21 10 28 */	fsubs f1, f1, f2
    /* 801CCE44 001C9E44  EC 21 00 24 */	fdivs f1, f1, f0
    /* 801CCE48 001C9E48  38 21 00 10 */	addi r1, r1, 0x10
    /* 801CCE4C 001C9E4C  4E 80 00 20 */	blr 
}

s32 HSD_Randi(s32 maxVal)
{
  s32 temp;
  *lbl_80276F00 = *lbl_80276F00 * 214013 + 2531011;
  temp = maxVal * (*lbl_80276F00 >> 0x10);
  return temp / 0x10000;
}
