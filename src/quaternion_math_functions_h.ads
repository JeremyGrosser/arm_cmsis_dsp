pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package quaternion_math_functions_h is

   procedure arm_quaternion_norm_f32
     (pInputQuaternions : access arm_math_types_h.float32_t;
      pNorms : access arm_math_types_h.float32_t;
      nbQuaternions : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/quaternion_math_functions.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "arm_quaternion_norm_f32";

   procedure arm_quaternion_inverse_f32
     (pInputQuaternions : access arm_math_types_h.float32_t;
      pInverseQuaternions : access arm_math_types_h.float32_t;
      nbQuaternions : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/quaternion_math_functions.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "arm_quaternion_inverse_f32";

   procedure arm_quaternion_conjugate_f32
     (inputQuaternions : access arm_math_types_h.float32_t;
      pConjugateQuaternions : access arm_math_types_h.float32_t;
      nbQuaternions : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/quaternion_math_functions.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "arm_quaternion_conjugate_f32";

   procedure arm_quaternion_normalize_f32
     (inputQuaternions : access arm_math_types_h.float32_t;
      pNormalizedQuaternions : access arm_math_types_h.float32_t;
      nbQuaternions : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/quaternion_math_functions.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "arm_quaternion_normalize_f32";

   procedure arm_quaternion_product_single_f32
     (qa : access arm_math_types_h.float32_t;
      qb : access arm_math_types_h.float32_t;
      r : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/quaternion_math_functions.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "arm_quaternion_product_single_f32";

   procedure arm_quaternion_product_f32
     (qa : access arm_math_types_h.float32_t;
      qb : access arm_math_types_h.float32_t;
      r : access arm_math_types_h.float32_t;
      nbQuaternions : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/quaternion_math_functions.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "arm_quaternion_product_f32";

   procedure arm_quaternion2rotation_f32
     (pInputQuaternions : access arm_math_types_h.float32_t;
      pOutputRotations : access arm_math_types_h.float32_t;
      nbQuaternions : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/quaternion_math_functions.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "arm_quaternion2rotation_f32";

   procedure arm_rotation2quaternion_f32
     (pInputRotations : access arm_math_types_h.float32_t;
      pOutputQuaternions : access arm_math_types_h.float32_t;
      nbQuaternions : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/quaternion_math_functions.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "arm_rotation2quaternion_f32";

end quaternion_math_functions_h;
