pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package complex_math_functions_h is

   procedure arm_cmplx_conj_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_conj_f32";

   procedure arm_cmplx_conj_q31
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_conj_q31";

   procedure arm_cmplx_conj_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_conj_q15";

   procedure arm_cmplx_mag_squared_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_squared_f32";

   procedure arm_cmplx_mag_squared_f64
     (pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_squared_f64";

   procedure arm_cmplx_mag_squared_q31
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_squared_q31";

   procedure arm_cmplx_mag_squared_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_squared_q15";

   procedure arm_cmplx_mag_f32
     (pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_f32";

   procedure arm_cmplx_mag_f64
     (pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_f64";

   procedure arm_cmplx_mag_q31
     (pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_q31";

   procedure arm_cmplx_mag_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_q15";

   procedure arm_cmplx_mag_fast_q15
     (pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mag_fast_q15";

   procedure arm_cmplx_dot_prod_q15
     (pSrcA : access arm_math_types_h.q15_t;
      pSrcB : access arm_math_types_h.q15_t;
      numSamples : sys_ustdint_h.uint32_t;
      realResult : access arm_math_types_h.q31_t;
      imagResult : access arm_math_types_h.q31_t)  -- DSP/Include/dsp/complex_math_functions.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_dot_prod_q15";

   procedure arm_cmplx_dot_prod_q31
     (pSrcA : access arm_math_types_h.q31_t;
      pSrcB : access arm_math_types_h.q31_t;
      numSamples : sys_ustdint_h.uint32_t;
      realResult : access arm_math_types_h.q63_t;
      imagResult : access arm_math_types_h.q63_t)  -- DSP/Include/dsp/complex_math_functions.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_dot_prod_q31";

   procedure arm_cmplx_dot_prod_f32
     (pSrcA : access arm_math_types_h.float32_t;
      pSrcB : access arm_math_types_h.float32_t;
      numSamples : sys_ustdint_h.uint32_t;
      realResult : access arm_math_types_h.float32_t;
      imagResult : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/complex_math_functions.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_dot_prod_f32";

   procedure arm_cmplx_mult_real_q15
     (pSrcCmplx : access arm_math_types_h.q15_t;
      pSrcReal : access arm_math_types_h.q15_t;
      pCmplxDst : access arm_math_types_h.q15_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mult_real_q15";

   procedure arm_cmplx_mult_real_q31
     (pSrcCmplx : access arm_math_types_h.q31_t;
      pSrcReal : access arm_math_types_h.q31_t;
      pCmplxDst : access arm_math_types_h.q31_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mult_real_q31";

   procedure arm_cmplx_mult_real_f32
     (pSrcCmplx : access arm_math_types_h.float32_t;
      pSrcReal : access arm_math_types_h.float32_t;
      pCmplxDst : access arm_math_types_h.float32_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mult_real_f32";

   procedure arm_cmplx_mult_cmplx_q15
     (pSrcA : access arm_math_types_h.q15_t;
      pSrcB : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mult_cmplx_q15";

   procedure arm_cmplx_mult_cmplx_q31
     (pSrcA : access arm_math_types_h.q31_t;
      pSrcB : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mult_cmplx_q31";

   procedure arm_cmplx_mult_cmplx_f32
     (pSrcA : access arm_math_types_h.float32_t;
      pSrcB : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mult_cmplx_f32";

   procedure arm_cmplx_mult_cmplx_f64
     (pSrcA : access arm_math_types_h.float64_t;
      pSrcB : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      numSamples : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/complex_math_functions.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cmplx_mult_cmplx_f64";

end complex_math_functions_h;
