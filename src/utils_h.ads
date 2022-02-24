pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package utils_h is

   INDEX_MASK : constant := 16#0000003F#;  --  ../CMSIS_5/CMSIS/DSP/Include/dsp/utils.h:40
   --  arg-macro: function SQ (x)
   --    return (x) * (x);
   --  arg-macro: function ROUND_UP (N, S)
   --    return (((N) + (S) - 1) / (S)) * (S);

   function arm_recip_q31
     (c_in : arm_math_types_h.q31_t;
      dst : access arm_math_types_h.q31_t;
      pRecipTable : access arm_math_types_h.q31_t) return sys_ustdint_h.uint32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/utils.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "arm_recip_q31";

   function clip_q63_to_q31 return int  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/utils.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "clip_q63_to_q31";

   function arm_recip_q15
     (c_in : arm_math_types_h.q15_t;
      dst : access arm_math_types_h.q15_t;
      pRecipTable : access arm_math_types_h.q15_t) return sys_ustdint_h.uint32_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/utils.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "arm_recip_q15";

   procedure arm_norm_64_to_32u
     (c_in : sys_ustdint_h.uint64_t;
      normalized : access sys_ustdint_h.int32_t;
      norm : access sys_ustdint_h.int32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/utils.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "arm_norm_64_to_32u";

   function arm_div_q63_to_q31 (num : arm_math_types_h.q63_t; den : arm_math_types_h.q31_t) return arm_math_types_h.q31_t  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/utils.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "arm_div_q63_to_q31";

end utils_h;
