pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package support_functions_h is

   procedure arm_float_to_q31
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "arm_float_to_q31";

   procedure arm_float_to_q15
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "arm_float_to_q15";

   procedure arm_float_to_q7
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "arm_float_to_q7";

   procedure arm_q31_to_float
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q31_to_float";

   procedure arm_q31_to_q15
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q31_to_q15";

   procedure arm_q31_to_q7
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q31_to_q7";

   procedure arm_q15_to_float
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q15_to_float";

   procedure arm_q15_to_q31
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q15_to_q31";

   procedure arm_q15_to_q7
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q15_to_q7";

   procedure arm_q7_to_float
     (pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q7_to_float";

   procedure arm_q7_to_q31
     (pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q7_to_q31";

   procedure arm_q7_to_q15
     (pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "arm_q7_to_q15";

   type arm_sort_alg is 
     (ARM_SORT_BITONIC,
      ARM_SORT_BUBBLE,
      ARM_SORT_HEAP,
      ARM_SORT_INSERTION,
      ARM_SORT_QUICK,
      ARM_SORT_SELECTION)
   with Convention => C;  -- DSP/Include/dsp/support_functions.h:210

   type arm_sort_dir is 
     (ARM_SORT_DESCENDING,
      ARM_SORT_ASCENDING)
   with Convention => C;  -- DSP/Include/dsp/support_functions.h:221

   type arm_sort_instance_f32 is record
      alg : aliased arm_sort_alg;  -- DSP/Include/dsp/support_functions.h:228
      dir : aliased arm_sort_dir;  -- DSP/Include/dsp/support_functions.h:229
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/support_functions.h:230

   procedure arm_sort_f32
     (S : access constant arm_sort_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sort_f32";

   procedure arm_sort_init_f32
     (S : access arm_sort_instance_f32;
      alg : arm_sort_alg;
      dir : arm_sort_dir)  -- DSP/Include/dsp/support_functions.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sort_init_f32";

   type arm_merge_sort_instance_f32 is record
      dir : aliased arm_sort_dir;  -- DSP/Include/dsp/support_functions.h:259
      buffer : access arm_math_types_h.float32_t;  -- DSP/Include/dsp/support_functions.h:260
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/support_functions.h:261

   procedure arm_merge_sort_f32
     (S : access constant arm_merge_sort_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "arm_merge_sort_f32";

   procedure arm_merge_sort_init_f32
     (S : access arm_merge_sort_instance_f32;
      dir : arm_sort_dir;
      buffer : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/support_functions.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "arm_merge_sort_init_f32";

   procedure arm_copy_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "arm_copy_f32";

   procedure arm_copy_f64
     (pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "arm_copy_f64";

   procedure arm_copy_q7
     (pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "arm_copy_q7";

   procedure arm_copy_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "arm_copy_q15";

   procedure arm_copy_q31
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "arm_copy_q31";

   procedure arm_fill_f32
     (value : arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fill_f32";

   procedure arm_fill_f64
     (value : arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fill_f64";

   procedure arm_fill_q7
     (value : arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fill_q7";

   procedure arm_fill_q15
     (value : arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fill_q15";

   procedure arm_fill_q31
     (value : arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fill_q31";

   function arm_weighted_sum_f32
     (c_in : access arm_math_types_h.float32_t;
      weigths : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/support_functions.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "arm_weighted_sum_f32";

   procedure arm_barycenter_f32
     (c_in : access arm_math_types_h.float32_t;
      weights : access arm_math_types_h.float32_t;
      c_out : access arm_math_types_h.float32_t;
      nbVectors : sys_ustdint_h.uint32_t;
      vecDim : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/support_functions.h:441
   with Import => True, 
        Convention => C, 
        External_Name => "arm_barycenter_f32";

end support_functions_h;
