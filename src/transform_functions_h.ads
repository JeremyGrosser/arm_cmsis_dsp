pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with arm_math_types_h;

package transform_functions_h is

   type arm_cfft_radix2_instance_q15 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:55
      ifftFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:56
      bitReverseFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:57
      pTwiddle : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:58
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:59
      twidCoefModifier : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:60
      bitRevFactor : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:62

   function arm_cfft_radix2_init_q15
     (S : access arm_cfft_radix2_instance_q15;
      fftLen : sys_ustdint_h.uint16_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix2_init_q15";

   procedure arm_cfft_radix2_q15 (S : access constant arm_cfft_radix2_instance_q15; pSrc : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix2_q15";

   type arm_cfft_radix4_instance_q15 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:82
      ifftFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:83
      bitReverseFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:84
      pTwiddle : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:85
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:86
      twidCoefModifier : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:87
      bitRevFactor : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:88
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:89

   function arm_cfft_radix4_init_q15
     (S : access arm_cfft_radix4_instance_q15;
      fftLen : sys_ustdint_h.uint16_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix4_init_q15";

   procedure arm_cfft_radix4_q15 (S : access constant arm_cfft_radix4_instance_q15; pSrc : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix4_q15";

   type arm_cfft_radix2_instance_q31 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:108
      ifftFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:109
      bitReverseFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:110
      pTwiddle : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:111
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:112
      twidCoefModifier : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:113
      bitRevFactor : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:114
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:115

   function arm_cfft_radix2_init_q31
     (S : access arm_cfft_radix2_instance_q31;
      fftLen : sys_ustdint_h.uint16_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix2_init_q31";

   procedure arm_cfft_radix2_q31 (S : access constant arm_cfft_radix2_instance_q31; pSrc : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix2_q31";

   type arm_cfft_radix4_instance_q31 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:134
      ifftFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:135
      bitReverseFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:136
      pTwiddle : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:137
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:138
      twidCoefModifier : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:139
      bitRevFactor : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:140
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:141

   procedure arm_cfft_radix4_q31 (S : access constant arm_cfft_radix4_instance_q31; pSrc : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix4_q31";

   function arm_cfft_radix4_init_q31
     (S : access arm_cfft_radix4_instance_q31;
      fftLen : sys_ustdint_h.uint16_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix4_init_q31";

   type arm_cfft_radix2_instance_f32 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:160
      ifftFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:161
      bitReverseFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:162
      pTwiddle : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:163
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:164
      twidCoefModifier : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:165
      bitRevFactor : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:166
      onebyfftLen : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:167
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:168

   function arm_cfft_radix2_init_f32
     (S : access arm_cfft_radix2_instance_f32;
      fftLen : sys_ustdint_h.uint16_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix2_init_f32";

   procedure arm_cfft_radix2_f32 (S : access constant arm_cfft_radix2_instance_f32; pSrc : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix2_f32";

   type arm_cfft_radix4_instance_f32 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:188
      ifftFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:189
      bitReverseFlag : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:190
      pTwiddle : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:191
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:192
      twidCoefModifier : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:193
      bitRevFactor : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:194
      onebyfftLen : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:195
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:196

   function arm_cfft_radix4_init_f32
     (S : access arm_cfft_radix4_instance_f32;
      fftLen : sys_ustdint_h.uint16_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix4_init_f32";

   procedure arm_cfft_radix4_f32 (S : access constant arm_cfft_radix4_instance_f32; pSrc : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_radix4_f32";

   type arm_cfft_instance_q15 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:217
      pTwiddle : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:218
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:219
      bitRevLength : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:220
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:229

   function arm_cfft_init_q15 (S : access arm_cfft_instance_q15; fftLen : sys_ustdint_h.uint16_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_init_q15";

   procedure arm_cfft_q15
     (S : access constant arm_cfft_instance_q15;
      p1 : access arm_math_types_h.q15_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_q15";

   type arm_cfft_instance_q31 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:246
      pTwiddle : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:247
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:248
      bitRevLength : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:249
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:258

   function arm_cfft_init_q31 (S : access arm_cfft_instance_q31; fftLen : sys_ustdint_h.uint16_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_init_q31";

   procedure arm_cfft_q31
     (S : access constant arm_cfft_instance_q31;
      p1 : access arm_math_types_h.q31_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_q31";

   type arm_cfft_instance_f32 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:275
      pTwiddle : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:276
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:277
      bitRevLength : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:278
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:287

   function arm_cfft_init_f32 (S : access arm_cfft_instance_f32; fftLen : sys_ustdint_h.uint16_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_init_f32";

   procedure arm_cfft_f32
     (S : access constant arm_cfft_instance_f32;
      p1 : access arm_math_types_h.float32_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_f32";

   type arm_cfft_instance_f64 is record
      fftLen : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:307
      pTwiddle : access arm_math_types_h.float64_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:308
      pBitRevTable : access sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:309
      bitRevLength : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:310
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:311

   function arm_cfft_init_f64 (S : access arm_cfft_instance_f64; fftLen : sys_ustdint_h.uint16_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_init_f64";

   procedure arm_cfft_f64
     (S : access constant arm_cfft_instance_f64;
      p1 : access arm_math_types_h.float64_t;
      ifftFlag : sys_ustdint_h.uint8_t;
      bitReverseFlag : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_f64";

   type arm_rfft_instance_q15 is record
      fftLenReal : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:328
      ifftFlagR : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:329
      bitReverseFlagR : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:330
      twidCoefRModifier : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:331
      pTwiddleAReal : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:332
      pTwiddleBReal : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:333
      pCfft : access constant arm_cfft_instance_q15;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:337
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:339

   function arm_rfft_init_q15
     (S : access arm_rfft_instance_q15;
      fftLenReal : sys_ustdint_h.uint32_t;
      ifftFlagR : sys_ustdint_h.uint32_t;
      bitReverseFlag : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_init_q15";

   procedure arm_rfft_q15
     (S : access constant arm_rfft_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_q15";

   type arm_rfft_instance_q31 is record
      fftLenReal : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:357
      ifftFlagR : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:358
      bitReverseFlagR : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:359
      twidCoefRModifier : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:360
      pTwiddleAReal : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:361
      pTwiddleBReal : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:362
      pCfft : access constant arm_cfft_instance_q31;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:366
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:368

   function arm_rfft_init_q31
     (S : access arm_rfft_instance_q31;
      fftLenReal : sys_ustdint_h.uint32_t;
      ifftFlagR : sys_ustdint_h.uint32_t;
      bitReverseFlag : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_init_q31";

   procedure arm_rfft_q31
     (S : access constant arm_rfft_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_q31";

   type arm_rfft_instance_f32 is record
      fftLenReal : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:386
      fftLenBy2 : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:387
      ifftFlagR : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:388
      bitReverseFlagR : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:389
      twidCoefRModifier : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:390
      pTwiddleAReal : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:391
      pTwiddleBReal : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:392
      pCfft : access arm_cfft_radix4_instance_f32;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:393
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:394

   function arm_rfft_init_f32
     (S : access arm_rfft_instance_f32;
      S_CFFT : access arm_cfft_radix4_instance_f32;
      fftLenReal : sys_ustdint_h.uint32_t;
      ifftFlagR : sys_ustdint_h.uint32_t;
      bitReverseFlag : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:396
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_init_f32";

   procedure arm_rfft_f32
     (S : access constant arm_rfft_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_f32";

   type arm_rfft_fast_instance_f64 is record
      Sint : aliased arm_cfft_instance_f64;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:413
      fftLenRFFT : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:414
      pTwiddleRFFT : access arm_math_types_h.float64_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:415
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:416

   function arm_rfft_fast_init_f64 (S : access arm_rfft_fast_instance_f64; fftLen : sys_ustdint_h.uint16_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_fast_init_f64";

   procedure arm_rfft_fast_f64
     (S : access arm_rfft_fast_instance_f64;
      p : access arm_math_types_h.float64_t;
      pOut : access arm_math_types_h.float64_t;
      ifftFlag : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:423
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_fast_f64";

   type arm_rfft_fast_instance_f32 is record
      Sint : aliased arm_cfft_instance_f32;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:434
      fftLenRFFT : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:435
      pTwiddleRFFT : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:436
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:437

   function arm_rfft_fast_init_f32 (S : access arm_rfft_fast_instance_f32; fftLen : sys_ustdint_h.uint16_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:439
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_fast_init_f32";

   procedure arm_rfft_fast_f32
     (S : access constant arm_rfft_fast_instance_f32;
      p : access arm_math_types_h.float32_t;
      pOut : access arm_math_types_h.float32_t;
      ifftFlag : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:444
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rfft_fast_f32";

   type arm_dct4_instance_f32 is record
      N : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:454
      Nby2 : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:455
      normalize : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:456
      pTwiddle : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:457
      pCosFactor : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:458
      pRfft : access arm_rfft_instance_f32;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:459
      pCfft : access arm_cfft_radix4_instance_f32;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:460
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:461

   function arm_dct4_init_f32
     (S : access arm_dct4_instance_f32;
      S_RFFT : access arm_rfft_instance_f32;
      S_CFFT : access arm_cfft_radix4_instance_f32;
      N : sys_ustdint_h.uint16_t;
      Nby2 : sys_ustdint_h.uint16_t;
      normalize : arm_math_types_h.float32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dct4_init_f32";

   procedure arm_dct4_f32
     (S : access constant arm_dct4_instance_f32;
      pState : access arm_math_types_h.float32_t;
      pInlineBuffer : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:489
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dct4_f32";

   type arm_dct4_instance_q31 is record
      N : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:500
      Nby2 : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:501
      normalize : aliased arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:502
      pTwiddle : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:503
      pCosFactor : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:504
      pRfft : access arm_rfft_instance_q31;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:505
      pCfft : access arm_cfft_radix4_instance_q31;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:506
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:507

   function arm_dct4_init_q31
     (S : access arm_dct4_instance_q31;
      S_RFFT : access arm_rfft_instance_q31;
      S_CFFT : access arm_cfft_radix4_instance_q31;
      N : sys_ustdint_h.uint16_t;
      Nby2 : sys_ustdint_h.uint16_t;
      normalize : arm_math_types_h.q31_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dct4_init_q31";

   procedure arm_dct4_q31
     (S : access constant arm_dct4_instance_q31;
      pState : access arm_math_types_h.q31_t;
      pInlineBuffer : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:535
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dct4_q31";

   type arm_dct4_instance_q15 is record
      N : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:546
      Nby2 : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:547
      normalize : aliased arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:548
      pTwiddle : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:549
      pCosFactor : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:550
      pRfft : access arm_rfft_instance_q15;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:551
      pCfft : access arm_cfft_radix4_instance_q15;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:552
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:553

   function arm_dct4_init_q15
     (S : access arm_dct4_instance_q15;
      S_RFFT : access arm_rfft_instance_q15;
      S_CFFT : access arm_cfft_radix4_instance_q15;
      N : sys_ustdint_h.uint16_t;
      Nby2 : sys_ustdint_h.uint16_t;
      normalize : arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:566
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dct4_init_q15";

   procedure arm_dct4_q15
     (S : access constant arm_dct4_instance_q15;
      pState : access arm_math_types_h.q15_t;
      pInlineBuffer : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:581
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dct4_q15";

   type arm_mfcc_instance_f32 is record
      dctCoefs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:591
      filterCoefs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:592
      windowCoefs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:593
      filterPos : access sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:594
      filterLengths : access sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:595
      fftLen : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:596
      nbMelFilters : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:597
      nbDctOutputs : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:598
      rfft : aliased arm_rfft_fast_instance_f32;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:604
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:606

   function arm_mfcc_init_f32
     (S : access arm_mfcc_instance_f32;
      fftLen : sys_ustdint_h.uint32_t;
      nbMelFilters : sys_ustdint_h.uint32_t;
      nbDctOutputs : sys_ustdint_h.uint32_t;
      dctCoefs : access arm_math_types_h.float32_t;
      filterPos : access sys_ustdint_h.uint32_t;
      filterLengths : access sys_ustdint_h.uint32_t;
      filterCoefs : access arm_math_types_h.float32_t;
      windowCoefs : access arm_math_types_h.float32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:608
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mfcc_init_f32";

   procedure arm_mfcc_f32
     (S : access constant arm_mfcc_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      pTmp : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:629
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mfcc_f32";

   type arm_mfcc_instance_q31 is record
      dctCoefs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:638
      filterCoefs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:639
      windowCoefs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:640
      filterPos : access sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:641
      filterLengths : access sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:642
      fftLen : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:643
      nbMelFilters : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:644
      nbDctOutputs : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:645
      rfft : aliased arm_rfft_instance_q31;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:651
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:653

   function arm_mfcc_init_q31
     (S : access arm_mfcc_instance_q31;
      fftLen : sys_ustdint_h.uint32_t;
      nbMelFilters : sys_ustdint_h.uint32_t;
      nbDctOutputs : sys_ustdint_h.uint32_t;
      dctCoefs : access arm_math_types_h.q31_t;
      filterPos : access sys_ustdint_h.uint32_t;
      filterLengths : access sys_ustdint_h.uint32_t;
      filterCoefs : access arm_math_types_h.q31_t;
      windowCoefs : access arm_math_types_h.q31_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:655
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mfcc_init_q31";

   function arm_mfcc_q31
     (S : access constant arm_mfcc_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      pTmp : access arm_math_types_h.q31_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:676
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mfcc_q31";

   type arm_mfcc_instance_q15 is record
      dctCoefs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:685
      filterCoefs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:686
      windowCoefs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:687
      filterPos : access sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:688
      filterLengths : access sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:689
      fftLen : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:690
      nbMelFilters : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:691
      nbDctOutputs : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:692
      rfft : aliased arm_rfft_instance_q15;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:698
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:700

   function arm_mfcc_init_q15
     (S : access arm_mfcc_instance_q15;
      fftLen : sys_ustdint_h.uint32_t;
      nbMelFilters : sys_ustdint_h.uint32_t;
      nbDctOutputs : sys_ustdint_h.uint32_t;
      dctCoefs : access arm_math_types_h.q15_t;
      filterPos : access sys_ustdint_h.uint32_t;
      filterLengths : access sys_ustdint_h.uint32_t;
      filterCoefs : access arm_math_types_h.q15_t;
      windowCoefs : access arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:702
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mfcc_init_q15";

   function arm_mfcc_q15
     (S : access constant arm_mfcc_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      pTmp : access arm_math_types_h.q31_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/transform_functions.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mfcc_q15";

end transform_functions_h;
