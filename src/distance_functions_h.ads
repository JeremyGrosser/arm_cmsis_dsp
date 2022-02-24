pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package distance_functions_h is

   function arm_euclidean_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "arm_euclidean_distance_f32";

   function arm_euclidean_distance_f64
     (pA : access arm_math_types_h.float64_t;
      pB : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float64_t  -- DSP/Include/dsp/distance_functions.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "arm_euclidean_distance_f64";

   function arm_braycurtis_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "arm_braycurtis_distance_f32";

   function arm_canberra_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "arm_canberra_distance_f32";

   function arm_chebyshev_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "arm_chebyshev_distance_f32";

   function arm_chebyshev_distance_f64
     (pA : access arm_math_types_h.float64_t;
      pB : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float64_t  -- DSP/Include/dsp/distance_functions.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "arm_chebyshev_distance_f64";

   function arm_cityblock_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cityblock_distance_f32";

   function arm_cityblock_distance_f64
     (pA : access arm_math_types_h.float64_t;
      pB : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float64_t  -- DSP/Include/dsp/distance_functions.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cityblock_distance_f64";

   function arm_correlation_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlation_distance_f32";

   function arm_cosine_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cosine_distance_f32";

   function arm_cosine_distance_f64
     (pA : access arm_math_types_h.float64_t;
      pB : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float64_t  -- DSP/Include/dsp/distance_functions.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cosine_distance_f64";

   function arm_jensenshannon_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "arm_jensenshannon_distance_f32";

   function arm_minkowski_distance_f32
     (pA : access arm_math_types_h.float32_t;
      pB : access arm_math_types_h.float32_t;
      order : sys_ustdint_h.int32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "arm_minkowski_distance_f32";

   function arm_dice_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "arm_dice_distance";

   function arm_hamming_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "arm_hamming_distance";

   function arm_jaccard_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "arm_jaccard_distance";

   function arm_kulsinski_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "arm_kulsinski_distance";

   function arm_rogerstanimoto_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rogerstanimoto_distance";

   function arm_russellrao_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "arm_russellrao_distance";

   function arm_sokalmichener_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sokalmichener_distance";

   function arm_sokalsneath_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:321
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sokalsneath_distance";

   function arm_yule_distance
     (pA : access sys_ustdint_h.uint32_t;
      pB : access sys_ustdint_h.uint32_t;
      numberOfBools : sys_ustdint_h.uint32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/distance_functions.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "arm_yule_distance";

end distance_functions_h;
