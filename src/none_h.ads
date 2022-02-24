pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;

package none_h is

   --  arg-macro: procedure multAcc_32x32_keep32_R (a, x, y)
   --    a := (q31_t) (((((q63_t) a) << 32) + ((q63_t) x * y) + 16#80000000# ) >> 32)
   --  arg-macro: procedure multSub_32x32_keep32_R (a, x, y)
   --    a := (q31_t) (((((q63_t) a) << 32) - ((q63_t) x * y) + 16#80000000# ) >> 32)
   --  arg-macro: procedure mult_32x32_keep32_R (a, x, y)
   --    a := (q31_t) (((q63_t) x * y + 16#80000000# ) >> 32)
   --  arg-macro: procedure multAcc_32x32_keep32 (a, x, y)
   --    a += (q31_t) (((q63_t) x * y) >> 32)
   --  arg-macro: procedure multSub_32x32_keep32 (a, x, y)
   --    a -= (q31_t) (((q63_t) x * y) >> 32)
   --  arg-macro: procedure mult_32x32_keep32 (a, x, y)
   --    a := (q31_t) (((q63_t) x * y ) >> 32)
   function clip_q63_to_q31 (x : arm_math_types_h.q63_t) return arm_math_types_h.q31_t  -- DSP/Include/dsp/none.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "clip_q63_to_q31";

   function clip_q63_to_q15 (x : arm_math_types_h.q63_t) return arm_math_types_h.q15_t  -- DSP/Include/dsp/none.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "clip_q63_to_q15";

   function clip_q31_to_q7 (x : arm_math_types_h.q31_t) return arm_math_types_h.q7_t  -- DSP/Include/dsp/none.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "clip_q31_to_q7";

   function clip_q31_to_q15 (x : arm_math_types_h.q31_t) return arm_math_types_h.q15_t  -- DSP/Include/dsp/none.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "clip_q31_to_q15";

   function mult32x64 (x : arm_math_types_h.q63_t; y : arm_math_types_h.q31_t) return arm_math_types_h.q63_t  -- DSP/Include/dsp/none.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "mult32x64";

   --  skipped func __QADD8

   --  skipped func __QSUB8

   --  skipped func __QADD16

   --  skipped func __SHADD16

   --  skipped func __QSUB16

   --  skipped func __SHSUB16

   --  skipped func __QASX

   --  skipped func __SHASX

   --  skipped func __QSAX

   --  skipped func __SHSAX

   --  skipped func __SMUSDX

   --  skipped func __SMUADX

   --  skipped func __QADD

   --  skipped func __QSUB

   --  skipped func __SMLAD

   --  skipped func __SMLADX

   --  skipped func __SMLSDX

   --  skipped func __SMLALD

   --  skipped func __SMLALDX

   --  skipped func __SMUAD

   --  skipped func __SMUSD

   --  skipped func __SXTB16

   --  skipped func __SMMLA

end none_h;
