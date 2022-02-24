pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package fast_math_functions_h is

   FAST_MATH_TABLE_SIZE : constant := 512;  --  ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:45
   FAST_MATH_Q31_SHIFT : constant := (32 - 10);  --  ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:46
   FAST_MATH_Q15_SHIFT : constant := (16 - 10);  --  ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:47

   PI : constant := 3.14159265358979;  --  ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:50

   function arm_sin_f32 (x : arm_math_types_h.float32_t) return arm_math_types_h.float32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sin_f32";

   function arm_sin_q31 (x : arm_math_types_h.q31_t) return arm_math_types_h.q31_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sin_q31";

   function arm_sin_q15 (x : arm_math_types_h.q15_t) return arm_math_types_h.q15_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sin_q15";

   function arm_cos_f32 (x : arm_math_types_h.float32_t) return arm_math_types_h.float32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cos_f32";

   function arm_cos_q31 (x : arm_math_types_h.q31_t) return arm_math_types_h.q31_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cos_q31";

   function arm_cos_q15 (x : arm_math_types_h.q15_t) return arm_math_types_h.q15_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cos_q15";

   procedure arm_vlog_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "arm_vlog_f32";

   procedure arm_vlog_f64
     (pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "arm_vlog_f64";

   procedure arm_vlog_q31
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "arm_vlog_q31";

   procedure arm_vlog_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "arm_vlog_q15";

   procedure arm_vexp_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "arm_vexp_f32";

   procedure arm_vexp_f64
     (pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "arm_vexp_f64";

   function arm_sqrt_f32 (c_in : arm_math_types_h.float32_t; pOut : access arm_math_types_h.float32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sqrt_f32";

   function arm_sqrt_q31 (c_in : arm_math_types_h.q31_t; pOut : access arm_math_types_h.q31_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sqrt_q31";

   function arm_sqrt_q15 (c_in : arm_math_types_h.q15_t; pOut : access arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sqrt_q15";

   procedure arm_vsqrt_f32
     (pIn : access arm_math_types_h.float32_t;
      pOut : access arm_math_types_h.float32_t;
      len : sys_ustdint_h.uint16_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "arm_vsqrt_f32";

   function arm_divide_q15
     (numerator : arm_math_types_h.q15_t;
      denominator : arm_math_types_h.q15_t;
      quotient : access arm_math_types_h.q15_t;
      shift : access sys_ustdint_h.int16_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "arm_divide_q15";

   function arm_divide_q31
     (numerator : arm_math_types_h.q31_t;
      denominator : arm_math_types_h.q31_t;
      quotient : access arm_math_types_h.q31_t;
      shift : access sys_ustdint_h.int16_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/fast_math_functions.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "arm_divide_q31";

end fast_math_functions_h;
