pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with System;

package arm_math_memory_h is

   function read_q15x2 (pQ15 : access arm_math_types_h.q15_t) return arm_math_types_h.q31_t  -- DSP/Include/arm_math_memory.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "read_q15x2";

   function read_q15x2_ia (pQ15 : System.Address) return arm_math_types_h.q31_t  -- DSP/Include/arm_math_memory.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "read_q15x2_ia";

   function read_q15x2_da (pQ15 : System.Address) return arm_math_types_h.q31_t  -- DSP/Include/arm_math_memory.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "read_q15x2_da";

   procedure write_q15x2_ia (pQ15 : System.Address; value : arm_math_types_h.q31_t)  -- DSP/Include/arm_math_memory.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "write_q15x2_ia";

   procedure write_q15x2 (pQ15 : access arm_math_types_h.q15_t; value : arm_math_types_h.q31_t)  -- DSP/Include/arm_math_memory.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "write_q15x2";

   function read_q7x4_ia (pQ7 : System.Address) return arm_math_types_h.q31_t  -- DSP/Include/arm_math_memory.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "read_q7x4_ia";

   function read_q7x4_da (pQ7 : System.Address) return arm_math_types_h.q31_t  -- DSP/Include/arm_math_memory.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "read_q7x4_da";

   procedure write_q7x4_ia (pQ7 : System.Address; value : arm_math_types_h.q31_t)  -- DSP/Include/arm_math_memory.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "write_q7x4_ia";

end arm_math_memory_h;
