pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with arm_math_types_h;

package arm_common_tables_h is

   --  unsupported macro: twiddleCoef twiddleCoef_4096
   --  unsupported macro: ARMBITREVINDEXTABLEF64_16_TABLE_LENGTH ((uint16_t)12)
   --  unsupported macro: ARMBITREVINDEXTABLEF64_32_TABLE_LENGTH ((uint16_t)24)
   --  unsupported macro: ARMBITREVINDEXTABLEF64_64_TABLE_LENGTH ((uint16_t)56)
   --  unsupported macro: ARMBITREVINDEXTABLEF64_128_TABLE_LENGTH ((uint16_t)112)
   --  unsupported macro: ARMBITREVINDEXTABLEF64_256_TABLE_LENGTH ((uint16_t)240)
   --  unsupported macro: ARMBITREVINDEXTABLEF64_512_TABLE_LENGTH ((uint16_t)480)
   --  unsupported macro: ARMBITREVINDEXTABLEF64_1024_TABLE_LENGTH ((uint16_t)992)
   --  unsupported macro: ARMBITREVINDEXTABLEF64_2048_TABLE_LENGTH ((uint16_t)1984)
   --  unsupported macro: ARMBITREVINDEXTABLEF64_4096_TABLE_LENGTH ((uint16_t)4032)
   --  unsupported macro: ARMBITREVINDEXTABLE_16_TABLE_LENGTH ((uint16_t)20)
   --  unsupported macro: ARMBITREVINDEXTABLE_32_TABLE_LENGTH ((uint16_t)48)
   --  unsupported macro: ARMBITREVINDEXTABLE_64_TABLE_LENGTH ((uint16_t)56)
   --  unsupported macro: ARMBITREVINDEXTABLE_128_TABLE_LENGTH ((uint16_t)208)
   --  unsupported macro: ARMBITREVINDEXTABLE_256_TABLE_LENGTH ((uint16_t)440)
   --  unsupported macro: ARMBITREVINDEXTABLE_512_TABLE_LENGTH ((uint16_t)448)
   --  unsupported macro: ARMBITREVINDEXTABLE_1024_TABLE_LENGTH ((uint16_t)1800)
   --  unsupported macro: ARMBITREVINDEXTABLE_2048_TABLE_LENGTH ((uint16_t)3808)
   --  unsupported macro: ARMBITREVINDEXTABLE_4096_TABLE_LENGTH ((uint16_t)4032)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_16_TABLE_LENGTH ((uint16_t)12)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_32_TABLE_LENGTH ((uint16_t)24)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_64_TABLE_LENGTH ((uint16_t)56)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_128_TABLE_LENGTH ((uint16_t)112)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_256_TABLE_LENGTH ((uint16_t)240)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_512_TABLE_LENGTH ((uint16_t)480)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_1024_TABLE_LENGTH ((uint16_t)992)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_2048_TABLE_LENGTH ((uint16_t)1984)
   --  unsupported macro: ARMBITREVINDEXTABLE_FIXED_4096_TABLE_LENGTH ((uint16_t)4032)
   armBitRevTable : aliased array (0 .. 1023) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevTable";

   twiddleCoefF64_16 : aliased array (0 .. 31) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_16";

   twiddleCoefF64_32 : aliased array (0 .. 63) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_32";

   twiddleCoefF64_64 : aliased array (0 .. 127) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_64";

   twiddleCoefF64_128 : aliased array (0 .. 255) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_128";

   twiddleCoefF64_256 : aliased array (0 .. 511) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_256";

   twiddleCoefF64_512 : aliased array (0 .. 1023) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_512";

   twiddleCoefF64_1024 : aliased array (0 .. 2047) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_1024";

   twiddleCoefF64_2048 : aliased array (0 .. 4095) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_2048";

   twiddleCoefF64_4096 : aliased array (0 .. 8191) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_4096";

   twiddleCoef_16 : aliased array (0 .. 31) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_16";

   twiddleCoef_32 : aliased array (0 .. 63) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_32";

   twiddleCoef_64 : aliased array (0 .. 127) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_64";

   twiddleCoef_128 : aliased array (0 .. 255) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_128";

   twiddleCoef_256 : aliased array (0 .. 511) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_256";

   twiddleCoef_512 : aliased array (0 .. 1023) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_512";

   twiddleCoef_1024 : aliased array (0 .. 2047) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_1024";

   twiddleCoef_2048 : aliased array (0 .. 4095) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_2048";

   twiddleCoef_4096 : aliased array (0 .. 8191) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_4096";

   twiddleCoef_16_q31 : aliased array (0 .. 23) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_16_q31";

   twiddleCoef_32_q31 : aliased array (0 .. 47) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_32_q31";

   twiddleCoef_64_q31 : aliased array (0 .. 95) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_64_q31";

   twiddleCoef_128_q31 : aliased array (0 .. 191) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_128_q31";

   twiddleCoef_256_q31 : aliased array (0 .. 383) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_256_q31";

   twiddleCoef_512_q31 : aliased array (0 .. 767) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_512_q31";

   twiddleCoef_1024_q31 : aliased array (0 .. 1535) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_1024_q31";

   twiddleCoef_2048_q31 : aliased array (0 .. 3071) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_2048_q31";

   twiddleCoef_4096_q31 : aliased array (0 .. 6143) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_4096_q31";

   twiddleCoef_16_q15 : aliased array (0 .. 23) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_16_q15";

   twiddleCoef_32_q15 : aliased array (0 .. 47) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_32_q15";

   twiddleCoef_64_q15 : aliased array (0 .. 95) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_64_q15";

   twiddleCoef_128_q15 : aliased array (0 .. 191) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_128_q15";

   twiddleCoef_256_q15 : aliased array (0 .. 383) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_256_q15";

   twiddleCoef_512_q15 : aliased array (0 .. 767) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_512_q15";

   twiddleCoef_1024_q15 : aliased array (0 .. 1535) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_1024_q15";

   twiddleCoef_2048_q15 : aliased array (0 .. 3071) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_2048_q15";

   twiddleCoef_4096_q15 : aliased array (0 .. 6143) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_4096_q15";

   twiddleCoefF64_rfft_32 : aliased array (0 .. 31) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_rfft_32";

   twiddleCoefF64_rfft_64 : aliased array (0 .. 63) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_rfft_64";

   twiddleCoefF64_rfft_128 : aliased array (0 .. 127) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_rfft_128";

   twiddleCoefF64_rfft_256 : aliased array (0 .. 255) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_rfft_256";

   twiddleCoefF64_rfft_512 : aliased array (0 .. 511) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_rfft_512";

   twiddleCoefF64_rfft_1024 : aliased array (0 .. 1023) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_rfft_1024";

   twiddleCoefF64_rfft_2048 : aliased array (0 .. 2047) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_rfft_2048";

   twiddleCoefF64_rfft_4096 : aliased array (0 .. 4095) of aliased sys_ustdint_h.uint64_t  -- DSP/Include/arm_common_tables.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoefF64_rfft_4096";

   twiddleCoef_rfft_32 : aliased array (0 .. 31) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_rfft_32";

   twiddleCoef_rfft_64 : aliased array (0 .. 63) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_rfft_64";

   twiddleCoef_rfft_128 : aliased array (0 .. 127) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_rfft_128";

   twiddleCoef_rfft_256 : aliased array (0 .. 255) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_rfft_256";

   twiddleCoef_rfft_512 : aliased array (0 .. 511) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_rfft_512";

   twiddleCoef_rfft_1024 : aliased array (0 .. 1023) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_rfft_1024";

   twiddleCoef_rfft_2048 : aliased array (0 .. 2047) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_rfft_2048";

   twiddleCoef_rfft_4096 : aliased array (0 .. 4095) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "twiddleCoef_rfft_4096";

   armBitRevIndexTableF64_16 : aliased array (0 .. 11) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_16";

   armBitRevIndexTableF64_32 : aliased array (0 .. 23) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_32";

   armBitRevIndexTableF64_64 : aliased array (0 .. 55) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_64";

   armBitRevIndexTableF64_128 : aliased array (0 .. 111) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_128";

   armBitRevIndexTableF64_256 : aliased array (0 .. 239) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_256";

   armBitRevIndexTableF64_512 : aliased array (0 .. 479) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_512";

   armBitRevIndexTableF64_1024 : aliased array (0 .. 991) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_1024";

   armBitRevIndexTableF64_2048 : aliased array (0 .. 1983) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_2048";

   armBitRevIndexTableF64_4096 : aliased array (0 .. 4031) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTableF64_4096";

   armBitRevIndexTable16 : aliased array (0 .. 19) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable16";

   armBitRevIndexTable32 : aliased array (0 .. 47) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable32";

   armBitRevIndexTable64 : aliased array (0 .. 55) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable64";

   armBitRevIndexTable128 : aliased array (0 .. 207) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable128";

   armBitRevIndexTable256 : aliased array (0 .. 439) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable256";

   armBitRevIndexTable512 : aliased array (0 .. 447) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable512";

   armBitRevIndexTable1024 : aliased array (0 .. 1799) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable1024";

   armBitRevIndexTable2048 : aliased array (0 .. 3807) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable2048";

   armBitRevIndexTable4096 : aliased array (0 .. 4031) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable4096";

   armBitRevIndexTable_fixed_16 : aliased array (0 .. 11) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_16";

   armBitRevIndexTable_fixed_32 : aliased array (0 .. 23) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_32";

   armBitRevIndexTable_fixed_64 : aliased array (0 .. 55) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_64";

   armBitRevIndexTable_fixed_128 : aliased array (0 .. 111) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_128";

   armBitRevIndexTable_fixed_256 : aliased array (0 .. 239) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_256";

   armBitRevIndexTable_fixed_512 : aliased array (0 .. 479) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_512";

   armBitRevIndexTable_fixed_1024 : aliased array (0 .. 991) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_1024";

   armBitRevIndexTable_fixed_2048 : aliased array (0 .. 1983) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_2048";

   armBitRevIndexTable_fixed_4096 : aliased array (0 .. 4031) of aliased sys_ustdint_h.uint16_t  -- DSP/Include/arm_common_tables.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "armBitRevIndexTable_fixed_4096";

   realCoefA : aliased array (0 .. 8191) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "realCoefA";

   realCoefB : aliased array (0 .. 8191) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "realCoefB";

   realCoefAQ31 : aliased array (0 .. 8191) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "realCoefAQ31";

   realCoefBQ31 : aliased array (0 .. 8191) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "realCoefBQ31";

   realCoefAQ15 : aliased array (0 .. 8191) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:412
   with Import => True, 
        Convention => C, 
        External_Name => "realCoefAQ15";

   realCoefBQ15 : aliased array (0 .. 8191) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "realCoefBQ15";

   Weights_128 : aliased array (0 .. 255) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:417
   with Import => True, 
        Convention => C, 
        External_Name => "Weights_128";

   cos_factors_128 : aliased array (0 .. 127) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factors_128";

   Weights_512 : aliased array (0 .. 1023) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "Weights_512";

   cos_factors_512 : aliased array (0 .. 511) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:423
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factors_512";

   Weights_2048 : aliased array (0 .. 4095) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "Weights_2048";

   cos_factors_2048 : aliased array (0 .. 2047) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factors_2048";

   Weights_8192 : aliased array (0 .. 16383) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:432
   with Import => True, 
        Convention => C, 
        External_Name => "Weights_8192";

   cos_factors_8192 : aliased array (0 .. 8191) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:433
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factors_8192";

   WeightsQ15_128 : aliased array (0 .. 255) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "WeightsQ15_128";

   cos_factorsQ15_128 : aliased array (0 .. 127) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:438
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factorsQ15_128";

   WeightsQ15_512 : aliased array (0 .. 1023) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:442
   with Import => True, 
        Convention => C, 
        External_Name => "WeightsQ15_512";

   cos_factorsQ15_512 : aliased array (0 .. 511) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:443
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factorsQ15_512";

   WeightsQ15_2048 : aliased array (0 .. 4095) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "WeightsQ15_2048";

   cos_factorsQ15_2048 : aliased array (0 .. 2047) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:448
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factorsQ15_2048";

   WeightsQ15_8192 : aliased array (0 .. 16383) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:452
   with Import => True, 
        Convention => C, 
        External_Name => "WeightsQ15_8192";

   cos_factorsQ15_8192 : aliased array (0 .. 8191) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factorsQ15_8192";

   WeightsQ31_128 : aliased array (0 .. 255) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:457
   with Import => True, 
        Convention => C, 
        External_Name => "WeightsQ31_128";

   cos_factorsQ31_128 : aliased array (0 .. 127) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factorsQ31_128";

   WeightsQ31_512 : aliased array (0 .. 1023) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:462
   with Import => True, 
        Convention => C, 
        External_Name => "WeightsQ31_512";

   cos_factorsQ31_512 : aliased array (0 .. 511) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factorsQ31_512";

   WeightsQ31_2048 : aliased array (0 .. 4095) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:467
   with Import => True, 
        Convention => C, 
        External_Name => "WeightsQ31_2048";

   cos_factorsQ31_2048 : aliased array (0 .. 2047) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factorsQ31_2048";

   WeightsQ31_8192 : aliased array (0 .. 16383) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "WeightsQ31_8192";

   cos_factorsQ31_8192 : aliased array (0 .. 8191) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:473
   with Import => True, 
        Convention => C, 
        External_Name => "cos_factorsQ31_8192";

   armRecipTableQ15 : aliased array (0 .. 63) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:481
   with Import => True, 
        Convention => C, 
        External_Name => "armRecipTableQ15";

   armRecipTableQ31 : aliased array (0 .. 63) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "armRecipTableQ31";

   sinTable_f32 : aliased array (0 .. 512) of aliased arm_math_types_h.float32_t  -- DSP/Include/arm_common_tables.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "sinTable_f32";

   sinTable_q31 : aliased array (0 .. 512) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:494
   with Import => True, 
        Convention => C, 
        External_Name => "sinTable_q31";

   sinTable_q15 : aliased array (0 .. 512) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "sinTable_q15";

   sqrt_initial_lut_q31 : aliased array (0 .. 31) of aliased arm_math_types_h.q31_t  -- DSP/Include/arm_common_tables.h:510
   with Import => True, 
        Convention => C, 
        External_Name => "sqrt_initial_lut_q31";

   sqrt_initial_lut_q15 : aliased array (0 .. 15) of aliased arm_math_types_h.q15_t  -- DSP/Include/arm_common_tables.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "sqrt_initial_lut_q15";

end arm_common_tables_h;
