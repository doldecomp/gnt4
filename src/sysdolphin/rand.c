#include "rand.h"

extern u32* lbl_80276F00; // rand_seed
extern const f32 USHRT_MAX; // 65536.0

// 0x801CCDC8 - 0x801CCE8C

s32 HSD_Rand(void)
{
  *lbl_80276F00 = *lbl_80276F00 * 214013 + 2531011;
  return *lbl_80276F00 >> 0x10;
}

f32 HSD_Randf(void)
{
  f32 temp;
  *lbl_80276F00 = *lbl_80276F00 * 214013 + 2531011;
  temp = (f32)(*lbl_80276F00 >> 0x10);
  return (temp) / USHRT_MAX;
}

s32 HSD_Randi(s32 maxVal)
{
  s32 temp;
  *lbl_80276F00 = *lbl_80276F00 * 214013 + 2531011;
  temp = maxVal * (*lbl_80276F00 >> 0x10);
  return temp / 0x10000;
}
