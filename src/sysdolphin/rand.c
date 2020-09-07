#include "rand.h"

extern u32* RAND_SEED_PTR;
extern const f32 USHRT_MAX; // 65536.0

// 0x801CCDC8 - 0x801CCE8C

/**
 * Returns a random value between 0 and 0xFFFF
 */
s32 HSD_Rand(void)
{
  *RAND_SEED_PTR = *RAND_SEED_PTR * 214013 + 2531011;
  return *RAND_SEED_PTR >> 0x10;
}

/**
 * Returns a random float between 0 and 65535/65536
 */
f32 HSD_Randf(void)
{
  f32 temp;
  *RAND_SEED_PTR = *RAND_SEED_PTR * 214013 + 2531011;
  temp = (f32)(*RAND_SEED_PTR >> 0x10);
  return (temp) / USHRT_MAX;
}

/**
 * Returns a random value between 0 and max_val-1
 */
s32 HSD_Randi(s32 max_val)
{
  s32 temp;
  *RAND_SEED_PTR = *RAND_SEED_PTR * 214013 + 2531011;
  temp = max_val * (*RAND_SEED_PTR >> 0x10);
  return temp / 0x10000;
}
