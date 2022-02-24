pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with arm_math_types_h;

package bayes_functions_h is

   type arm_gaussian_naive_bayes_instance_f32 is record
      vectorDimension : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/bayes_functions.h:59
      numberOfClasses : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/bayes_functions.h:60
      theta : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/bayes_functions.h:61
      sigma : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/bayes_functions.h:62
      classPriors : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/bayes_functions.h:63
      epsilon : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/bayes_functions.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/bayes_functions.h:65

   function arm_gaussian_naive_bayes_predict_f32
     (S : access constant arm_gaussian_naive_bayes_instance_f32;
      c_in : access arm_math_types_h.float32_t;
      pOutputProbabilities : access arm_math_types_h.float32_t;
      pBufferB : access arm_math_types_h.float32_t) return sys_ustdint_h.uint32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/bayes_functions.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "arm_gaussian_naive_bayes_predict_f32";

end bayes_functions_h;
