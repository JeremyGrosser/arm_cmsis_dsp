pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package svm_functions_h is

   --  arg-macro: procedure STEP (x)
   --    (x) <= 0 ? 0 : 1
   function arm_exponent_f32 (x : arm_math_types_h.float32_t; nb : sys_ustdint_h.int32_t) return arm_math_types_h.float32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "arm_exponent_f32";

   type arm_svm_linear_instance_f32 is record
      nbOfSupportVectors : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:86
      vectorDimension : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:87
      intercept : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:88
      dualCoefficients : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:89
      supportVectors : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:90
      classes : access sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:91
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:92

   type arm_svm_polynomial_instance_f32 is record
      nbOfSupportVectors : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:100
      vectorDimension : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:101
      intercept : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:102
      dualCoefficients : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:103
      supportVectors : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:104
      classes : access sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:105
      degree : aliased sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:106
      coef0 : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:107
      gamma : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:108
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:109

   type arm_svm_rbf_instance_f32 is record
      nbOfSupportVectors : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:116
      vectorDimension : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:117
      intercept : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:118
      dualCoefficients : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:119
      supportVectors : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:120
      classes : access sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:121
      gamma : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:122
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:123

   type arm_svm_sigmoid_instance_f32 is record
      nbOfSupportVectors : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:130
      vectorDimension : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:131
      intercept : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:132
      dualCoefficients : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:133
      supportVectors : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:134
      classes : access sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:135
      coef0 : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:136
      gamma : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:137
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:138

   procedure arm_svm_linear_init_f32
     (S : access arm_svm_linear_instance_f32;
      nbOfSupportVectors : sys_ustdint_h.uint32_t;
      vectorDimension : sys_ustdint_h.uint32_t;
      intercept : arm_math_types_h.float32_t;
      dualCoefficients : access arm_math_types_h.float32_t;
      supportVectors : access arm_math_types_h.float32_t;
      classes : access sys_ustdint_h.int32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "arm_svm_linear_init_f32";

   procedure arm_svm_linear_predict_f32
     (S : access constant arm_svm_linear_instance_f32;
      c_in : access arm_math_types_h.float32_t;
      pResult : access sys_ustdint_h.int32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "arm_svm_linear_predict_f32";

   procedure arm_svm_polynomial_init_f32
     (S : access arm_svm_polynomial_instance_f32;
      nbOfSupportVectors : sys_ustdint_h.uint32_t;
      vectorDimension : sys_ustdint_h.uint32_t;
      intercept : arm_math_types_h.float32_t;
      dualCoefficients : access arm_math_types_h.float32_t;
      supportVectors : access arm_math_types_h.float32_t;
      classes : access sys_ustdint_h.int32_t;
      degree : sys_ustdint_h.int32_t;
      coef0 : arm_math_types_h.float32_t;
      gamma : arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "arm_svm_polynomial_init_f32";

   procedure arm_svm_polynomial_predict_f32
     (S : access constant arm_svm_polynomial_instance_f32;
      c_in : access arm_math_types_h.float32_t;
      pResult : access sys_ustdint_h.int32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "arm_svm_polynomial_predict_f32";

   procedure arm_svm_rbf_init_f32
     (S : access arm_svm_rbf_instance_f32;
      nbOfSupportVectors : sys_ustdint_h.uint32_t;
      vectorDimension : sys_ustdint_h.uint32_t;
      intercept : arm_math_types_h.float32_t;
      dualCoefficients : access arm_math_types_h.float32_t;
      supportVectors : access arm_math_types_h.float32_t;
      classes : access sys_ustdint_h.int32_t;
      gamma : arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "arm_svm_rbf_init_f32";

   procedure arm_svm_rbf_predict_f32
     (S : access constant arm_svm_rbf_instance_f32;
      c_in : access arm_math_types_h.float32_t;
      pResult : access sys_ustdint_h.int32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "arm_svm_rbf_predict_f32";

   procedure arm_svm_sigmoid_init_f32
     (S : access arm_svm_sigmoid_instance_f32;
      nbOfSupportVectors : sys_ustdint_h.uint32_t;
      vectorDimension : sys_ustdint_h.uint32_t;
      intercept : arm_math_types_h.float32_t;
      dualCoefficients : access arm_math_types_h.float32_t;
      supportVectors : access arm_math_types_h.float32_t;
      classes : access sys_ustdint_h.int32_t;
      coef0 : arm_math_types_h.float32_t;
      gamma : arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "arm_svm_sigmoid_init_f32";

   procedure arm_svm_sigmoid_predict_f32
     (S : access constant arm_svm_sigmoid_instance_f32;
      c_in : access arm_math_types_h.float32_t;
      pResult : access sys_ustdint_h.int32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/svm_functions.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "arm_svm_sigmoid_predict_f32";

end svm_functions_h;
