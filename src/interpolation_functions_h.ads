pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with arm_math_types_h;

package interpolation_functions_h is

   type arm_linear_interp_instance_f32 is record
      nValues : aliased sys_ustdint_h.uint32_t;  -- DSP/Include/dsp/interpolation_functions.h:55
      x1 : aliased arm_math_types_h.float32_t;  -- DSP/Include/dsp/interpolation_functions.h:56
      xSpacing : aliased arm_math_types_h.float32_t;  -- DSP/Include/dsp/interpolation_functions.h:57
      pYData : access arm_math_types_h.float32_t;  -- DSP/Include/dsp/interpolation_functions.h:58
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/interpolation_functions.h:59

   type arm_bilinear_interp_instance_f32 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/interpolation_functions.h:66
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/interpolation_functions.h:67
      pData : access arm_math_types_h.float32_t;  -- DSP/Include/dsp/interpolation_functions.h:68
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/interpolation_functions.h:69

   type arm_bilinear_interp_instance_q31 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/interpolation_functions.h:76
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/interpolation_functions.h:77
      pData : access arm_math_types_h.q31_t;  -- DSP/Include/dsp/interpolation_functions.h:78
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/interpolation_functions.h:79

   type arm_bilinear_interp_instance_q15 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/interpolation_functions.h:86
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/interpolation_functions.h:87
      pData : access arm_math_types_h.q15_t;  -- DSP/Include/dsp/interpolation_functions.h:88
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/interpolation_functions.h:89

   type arm_bilinear_interp_instance_q7 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/interpolation_functions.h:96
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/interpolation_functions.h:97
      pData : access arm_math_types_h.q7_t;  -- DSP/Include/dsp/interpolation_functions.h:98
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/interpolation_functions.h:99

   type arm_spline_type is 
     (ARM_SPLINE_NATURAL,
      ARM_SPLINE_PARABOLIC_RUNOUT)
   with Convention => C;  -- DSP/Include/dsp/interpolation_functions.h:109

   type arm_spline_instance_f32 is record
      c_type : aliased arm_spline_type;  -- DSP/Include/dsp/interpolation_functions.h:116
      x : access arm_math_types_h.float32_t;  -- DSP/Include/dsp/interpolation_functions.h:117
      y : access arm_math_types_h.float32_t;  -- DSP/Include/dsp/interpolation_functions.h:118
      n_x : aliased sys_ustdint_h.uint32_t;  -- DSP/Include/dsp/interpolation_functions.h:119
      coeffs : access arm_math_types_h.float32_t;  -- DSP/Include/dsp/interpolation_functions.h:120
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/interpolation_functions.h:121

   procedure arm_spline_f32
     (S : access arm_spline_instance_f32;
      xq : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- DSP/Include/dsp/interpolation_functions.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "arm_spline_f32";

   procedure arm_spline_init_f32
     (S : access arm_spline_instance_f32;
      c_type : arm_spline_type;
      x : access arm_math_types_h.float32_t;
      y : access arm_math_types_h.float32_t;
      n : sys_ustdint_h.uint32_t;
      coeffs : access arm_math_types_h.float32_t;
      tempBuffer : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/interpolation_functions.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "arm_spline_init_f32";

   function arm_linear_interp_f32 (S : access arm_linear_interp_instance_f32; x : arm_math_types_h.float32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/interpolation_functions.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "arm_linear_interp_f32";

   function arm_linear_interp_q31
     (pYData : access arm_math_types_h.q31_t;
      x : arm_math_types_h.q31_t;
      nValues : sys_ustdint_h.uint32_t) return arm_math_types_h.q31_t  -- DSP/Include/dsp/interpolation_functions.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "arm_linear_interp_q31";

   function arm_linear_interp_q15
     (pYData : access arm_math_types_h.q15_t;
      x : arm_math_types_h.q31_t;
      nValues : sys_ustdint_h.uint32_t) return arm_math_types_h.q15_t  -- DSP/Include/dsp/interpolation_functions.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "arm_linear_interp_q15";

   function arm_linear_interp_q7
     (pYData : access arm_math_types_h.q7_t;
      x : arm_math_types_h.q31_t;
      nValues : sys_ustdint_h.uint32_t) return arm_math_types_h.q7_t  -- DSP/Include/dsp/interpolation_functions.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "arm_linear_interp_q7";

   function arm_bilinear_interp_f32
     (S : access constant arm_bilinear_interp_instance_f32;
      X : arm_math_types_h.float32_t;
      Y : arm_math_types_h.float32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/interpolation_functions.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "arm_bilinear_interp_f32";

   function arm_bilinear_interp_q31
     (S : access arm_bilinear_interp_instance_q31;
      X : arm_math_types_h.q31_t;
      Y : arm_math_types_h.q31_t) return arm_math_types_h.q31_t  -- DSP/Include/dsp/interpolation_functions.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "arm_bilinear_interp_q31";

   function arm_bilinear_interp_q15
     (S : access arm_bilinear_interp_instance_q15;
      X : arm_math_types_h.q31_t;
      Y : arm_math_types_h.q31_t) return arm_math_types_h.q15_t  -- DSP/Include/dsp/interpolation_functions.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "arm_bilinear_interp_q15";

   function arm_bilinear_interp_q7
     (S : access arm_bilinear_interp_instance_q7;
      X : arm_math_types_h.q31_t;
      Y : arm_math_types_h.q31_t) return arm_math_types_h.q7_t  -- DSP/Include/dsp/interpolation_functions.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "arm_bilinear_interp_q7";

end interpolation_functions_h;
