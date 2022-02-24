pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package basic_math_functions_h is

   procedure arm_mult_q7
     (pSrcA : access arm_math_types_h.q7_t;
      pSrcB : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mult_q7";

   procedure arm_mult_q15
     (pSrcA : access arm_math_types_h.q15_t;
      pSrcB : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mult_q15";

   procedure arm_mult_q31
     (pSrcA : access arm_math_types_h.q31_t;
      pSrcB : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mult_q31";

   procedure arm_mult_f32
     (pSrcA : access arm_math_types_h.float32_t;
      pSrcB : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mult_f32";

   procedure arm_mult_f64
     (pSrcA : access arm_math_types_h.float64_t;
      pSrcB : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mult_f64";

   procedure arm_add_f32
     (pSrcA : access arm_math_types_h.float32_t;
      pSrcB : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "arm_add_f32";

   procedure arm_add_f64
     (pSrcA : access arm_math_types_h.float64_t;
      pSrcB : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "arm_add_f64";

   procedure arm_add_q7
     (pSrcA : access arm_math_types_h.q7_t;
      pSrcB : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "arm_add_q7";

   procedure arm_add_q15
     (pSrcA : access arm_math_types_h.q15_t;
      pSrcB : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "arm_add_q15";

   procedure arm_add_q31
     (pSrcA : access arm_math_types_h.q31_t;
      pSrcB : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "arm_add_q31";

   procedure arm_sub_f32
     (pSrcA : access arm_math_types_h.float32_t;
      pSrcB : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sub_f32";

   procedure arm_sub_f64
     (pSrcA : access arm_math_types_h.float64_t;
      pSrcB : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sub_f64";

   procedure arm_sub_q7
     (pSrcA : access arm_math_types_h.q7_t;
      pSrcB : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sub_q7";

   procedure arm_sub_q15
     (pSrcA : access arm_math_types_h.q15_t;
      pSrcB : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sub_q15";

   procedure arm_sub_q31
     (pSrcA : access arm_math_types_h.q31_t;
      pSrcB : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sub_q31";

   procedure arm_scale_f32
     (pSrc : access arm_math_types_h.float32_t;
      scale : arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "arm_scale_f32";

   procedure arm_scale_f64
     (pSrc : access arm_math_types_h.float64_t;
      scale : arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "arm_scale_f64";

   procedure arm_scale_q7
     (pSrc : access arm_math_types_h.q7_t;
      scaleFract : arm_math_types_h.q7_t;
      shift : sys_ustdint_h.int8_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "arm_scale_q7";

   procedure arm_scale_q15
     (pSrc : access arm_math_types_h.q15_t;
      scaleFract : arm_math_types_h.q15_t;
      shift : sys_ustdint_h.int8_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "arm_scale_q15";

   procedure arm_scale_q31
     (pSrc : access arm_math_types_h.q31_t;
      scaleFract : arm_math_types_h.q31_t;
      shift : sys_ustdint_h.int8_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "arm_scale_q31";

   procedure arm_abs_q7
     (pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:346
   with Import => True, 
        Convention => C, 
        External_Name => "arm_abs_q7";

   procedure arm_abs_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "arm_abs_f32";

   procedure arm_abs_f64
     (pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "arm_abs_f64";

   procedure arm_abs_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:384
   with Import => True, 
        Convention => C, 
        External_Name => "arm_abs_q15";

   procedure arm_abs_q31
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:396
   with Import => True, 
        Convention => C, 
        External_Name => "arm_abs_q31";

   procedure arm_dot_prod_f32
     (pSrcA : access arm_math_types_h.float32_t;
      pSrcB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      result : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dot_prod_f32";

   procedure arm_dot_prod_f64
     (pSrcA : access arm_math_types_h.float64_t;
      pSrcB : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      result : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dot_prod_f64";

   procedure arm_dot_prod_q7
     (pSrcA : access arm_math_types_h.q7_t;
      pSrcB : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      result : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:439
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dot_prod_q7";

   procedure arm_dot_prod_q15
     (pSrcA : access arm_math_types_h.q15_t;
      pSrcB : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      result : access arm_math_types_h.q63_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dot_prod_q15";

   procedure arm_dot_prod_q31
     (pSrcA : access arm_math_types_h.q31_t;
      pSrcB : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      result : access arm_math_types_h.q63_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:467
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dot_prod_q31";

   procedure arm_shift_q7
     (pSrc : access arm_math_types_h.q7_t;
      shiftBits : sys_ustdint_h.int8_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:481
   with Import => True, 
        Convention => C, 
        External_Name => "arm_shift_q7";

   procedure arm_shift_q15
     (pSrc : access arm_math_types_h.q15_t;
      shiftBits : sys_ustdint_h.int8_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:495
   with Import => True, 
        Convention => C, 
        External_Name => "arm_shift_q15";

   procedure arm_shift_q31
     (pSrc : access arm_math_types_h.q31_t;
      shiftBits : sys_ustdint_h.int8_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:509
   with Import => True, 
        Convention => C, 
        External_Name => "arm_shift_q31";

   procedure arm_offset_f64
     (pSrc : access arm_math_types_h.float64_t;
      offset : arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:523
   with Import => True, 
        Convention => C, 
        External_Name => "arm_offset_f64";

   procedure arm_offset_f32
     (pSrc : access arm_math_types_h.float32_t;
      offset : arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:538
   with Import => True, 
        Convention => C, 
        External_Name => "arm_offset_f32";

   procedure arm_offset_q7
     (pSrc : access arm_math_types_h.q7_t;
      offset : arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:553
   with Import => True, 
        Convention => C, 
        External_Name => "arm_offset_q7";

   procedure arm_offset_q15
     (pSrc : access arm_math_types_h.q15_t;
      offset : arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:567
   with Import => True, 
        Convention => C, 
        External_Name => "arm_offset_q15";

   procedure arm_offset_q31
     (pSrc : access arm_math_types_h.q31_t;
      offset : arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:581
   with Import => True, 
        Convention => C, 
        External_Name => "arm_offset_q31";

   procedure arm_negate_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:594
   with Import => True, 
        Convention => C, 
        External_Name => "arm_negate_f32";

   procedure arm_negate_f64
     (pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:607
   with Import => True, 
        Convention => C, 
        External_Name => "arm_negate_f64";

   procedure arm_negate_q7
     (pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:620
   with Import => True, 
        Convention => C, 
        External_Name => "arm_negate_q7";

   procedure arm_negate_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:632
   with Import => True, 
        Convention => C, 
        External_Name => "arm_negate_q15";

   procedure arm_negate_q31
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:644
   with Import => True, 
        Convention => C, 
        External_Name => "arm_negate_q31";

   procedure arm_and_u16
     (pSrcA : access sys_ustdint_h.uint16_t;
      pSrcB : access sys_ustdint_h.uint16_t;
      pDst : access sys_ustdint_h.uint16_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:657
   with Import => True, 
        Convention => C, 
        External_Name => "arm_and_u16";

   procedure arm_and_u32
     (pSrcA : access sys_ustdint_h.uint32_t;
      pSrcB : access sys_ustdint_h.uint32_t;
      pDst : access sys_ustdint_h.uint32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:671
   with Import => True, 
        Convention => C, 
        External_Name => "arm_and_u32";

   procedure arm_and_u8
     (pSrcA : access sys_ustdint_h.uint8_t;
      pSrcB : access sys_ustdint_h.uint8_t;
      pDst : access sys_ustdint_h.uint8_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:685
   with Import => True, 
        Convention => C, 
        External_Name => "arm_and_u8";

   procedure arm_or_u16
     (pSrcA : access sys_ustdint_h.uint16_t;
      pSrcB : access sys_ustdint_h.uint16_t;
      pDst : access sys_ustdint_h.uint16_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:699
   with Import => True, 
        Convention => C, 
        External_Name => "arm_or_u16";

   procedure arm_or_u32
     (pSrcA : access sys_ustdint_h.uint32_t;
      pSrcB : access sys_ustdint_h.uint32_t;
      pDst : access sys_ustdint_h.uint32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:713
   with Import => True, 
        Convention => C, 
        External_Name => "arm_or_u32";

   procedure arm_or_u8
     (pSrcA : access sys_ustdint_h.uint8_t;
      pSrcB : access sys_ustdint_h.uint8_t;
      pDst : access sys_ustdint_h.uint8_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:727
   with Import => True, 
        Convention => C, 
        External_Name => "arm_or_u8";

   procedure arm_not_u16
     (pSrc : access sys_ustdint_h.uint16_t;
      pDst : access sys_ustdint_h.uint16_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:740
   with Import => True, 
        Convention => C, 
        External_Name => "arm_not_u16";

   procedure arm_not_u32
     (pSrc : access sys_ustdint_h.uint32_t;
      pDst : access sys_ustdint_h.uint32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:752
   with Import => True, 
        Convention => C, 
        External_Name => "arm_not_u32";

   procedure arm_not_u8
     (pSrc : access sys_ustdint_h.uint8_t;
      pDst : access sys_ustdint_h.uint8_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:764
   with Import => True, 
        Convention => C, 
        External_Name => "arm_not_u8";

   procedure arm_xor_u16
     (pSrcA : access sys_ustdint_h.uint16_t;
      pSrcB : access sys_ustdint_h.uint16_t;
      pDst : access sys_ustdint_h.uint16_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:777
   with Import => True, 
        Convention => C, 
        External_Name => "arm_xor_u16";

   procedure arm_xor_u32
     (pSrcA : access sys_ustdint_h.uint32_t;
      pSrcB : access sys_ustdint_h.uint32_t;
      pDst : access sys_ustdint_h.uint32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:791
   with Import => True, 
        Convention => C, 
        External_Name => "arm_xor_u32";

   procedure arm_xor_u8
     (pSrcA : access sys_ustdint_h.uint8_t;
      pSrcB : access sys_ustdint_h.uint8_t;
      pDst : access sys_ustdint_h.uint8_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:805
   with Import => True, 
        Convention => C, 
        External_Name => "arm_xor_u8";

   procedure arm_clip_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      low : arm_math_types_h.float32_t;
      high : arm_math_types_h.float32_t;
      numSamples : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:821
   with Import => True, 
        Convention => C, 
        External_Name => "arm_clip_f32";

   procedure arm_clip_q31
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      low : arm_math_types_h.q31_t;
      high : arm_math_types_h.q31_t;
      numSamples : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:837
   with Import => True, 
        Convention => C, 
        External_Name => "arm_clip_q31";

   procedure arm_clip_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      low : arm_math_types_h.q15_t;
      high : arm_math_types_h.q15_t;
      numSamples : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:853
   with Import => True, 
        Convention => C, 
        External_Name => "arm_clip_q15";

   procedure arm_clip_q7
     (pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      low : arm_math_types_h.q7_t;
      high : arm_math_types_h.q7_t;
      numSamples : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/basic_math_functions.h:869
   with Import => True, 
        Convention => C, 
        External_Name => "arm_clip_q7";

end basic_math_functions_h;
