pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package statistics_functions_h is

   function arm_logsumexp_f32 (c_in : access arm_math_types_h.float32_t; blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "arm_logsumexp_f32";

   function arm_logsumexp_dot_prod_f32
     (pSrcA : access arm_math_types_h.float32_t;
      pSrcB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pTmpBuffer : access arm_math_types_h.float32_t) return arm_math_types_h.float32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "arm_logsumexp_dot_prod_f32";

   function arm_entropy_f32 (pSrcA : access arm_math_types_h.float32_t; blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "arm_entropy_f32";

   function arm_entropy_f64 (pSrcA : access arm_math_types_h.float64_t; blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float64_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "arm_entropy_f64";

   function arm_kullback_leibler_f32
     (pSrcA : access arm_math_types_h.float32_t;
      pSrcB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "arm_kullback_leibler_f32";

   function arm_kullback_leibler_f64
     (pSrcA : access arm_math_types_h.float64_t;
      pSrcB : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float64_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "arm_kullback_leibler_f64";

   procedure arm_power_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q63_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "arm_power_q31";

   procedure arm_power_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "arm_power_f32";

   procedure arm_power_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "arm_power_f64";

   procedure arm_power_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q63_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "arm_power_q15";

   procedure arm_power_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "arm_power_q7";

   procedure arm_mean_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q7_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mean_q7";

   procedure arm_mean_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mean_q15";

   procedure arm_mean_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mean_q31";

   procedure arm_mean_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mean_f32";

   procedure arm_mean_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mean_f64";

   procedure arm_var_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "arm_var_f32";

   procedure arm_var_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "arm_var_f64";

   procedure arm_var_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "arm_var_q31";

   procedure arm_var_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "arm_var_q15";

   procedure arm_rms_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rms_f32";

   procedure arm_rms_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rms_q31";

   procedure arm_rms_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rms_q15";

   procedure arm_std_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "arm_std_f32";

   procedure arm_std_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "arm_std_f64";

   procedure arm_std_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "arm_std_q31";

   procedure arm_std_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:395
   with Import => True, 
        Convention => C, 
        External_Name => "arm_std_q15";

   procedure arm_min_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      result : access arm_math_types_h.q7_t;
      index : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_q7";

   procedure arm_absmin_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      result : access arm_math_types_h.q7_t;
      index : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_q7";

   procedure arm_absmin_no_idx_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      result : access arm_math_types_h.q7_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:434
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_no_idx_q7";

   procedure arm_min_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_q15";

   procedure arm_absmin_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:460
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_q15";

   procedure arm_absmin_no_idx_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_no_idx_q15";

   procedure arm_min_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_q31";

   procedure arm_absmin_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_q31";

   procedure arm_absmin_no_idx_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:510
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_no_idx_q31";

   procedure arm_min_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:523
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_f32";

   procedure arm_absmin_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_f32";

   procedure arm_absmin_no_idx_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:548
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_no_idx_f32";

   procedure arm_min_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:561
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_f64";

   procedure arm_absmin_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_f64";

   procedure arm_absmin_no_idx_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:586
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmin_no_idx_f64";

   procedure arm_max_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q7_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:599
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_q7";

   procedure arm_absmax_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q7_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:612
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_q7";

   procedure arm_absmax_no_idx_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q7_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:624
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_no_idx_q7";

   procedure arm_max_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:637
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_q15";

   procedure arm_absmax_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:650
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_q15";

   procedure arm_absmax_no_idx_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:662
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_no_idx_q15";

   procedure arm_max_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:674
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_q31";

   procedure arm_absmax_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:687
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_q31";

   procedure arm_absmax_no_idx_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:699
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_no_idx_q31";

   procedure arm_max_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:711
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_f32";

   procedure arm_absmax_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:724
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_f32";

   procedure arm_absmax_no_idx_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:736
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_no_idx_f32";

   procedure arm_max_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:748
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_f64";

   procedure arm_absmax_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t;
      pIndex : access sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:761
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_f64";

   procedure arm_absmax_no_idx_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:773
   with Import => True, 
        Convention => C, 
        External_Name => "arm_absmax_no_idx_f64";

   procedure arm_max_no_idx_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:785
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_no_idx_f32";

   procedure arm_min_no_idx_f32
     (pSrc : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:797
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_no_idx_f32";

   procedure arm_max_no_idx_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:809
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_no_idx_f64";

   procedure arm_max_no_idx_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:821
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_no_idx_q31";

   procedure arm_max_no_idx_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:833
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_no_idx_q15";

   procedure arm_max_no_idx_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q7_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:845
   with Import => True, 
        Convention => C, 
        External_Name => "arm_max_no_idx_q7";

   procedure arm_min_no_idx_f64
     (pSrc : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:857
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_no_idx_f64";

   procedure arm_min_no_idx_q31
     (pSrc : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:869
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_no_idx_q31";

   procedure arm_min_no_idx_q15
     (pSrc : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:881
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_no_idx_q15";

   procedure arm_min_no_idx_q7
     (pSrc : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t;
      pResult : access arm_math_types_h.q7_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/statistics_functions.h:893
   with Import => True, 
        Convention => C, 
        External_Name => "arm_min_no_idx_q7";

end statistics_functions_h;
