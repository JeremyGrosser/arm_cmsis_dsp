pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package arm_math_types_h is

   --  unsupported macro: LOW_OPTIMIZATION_ENTER __attribute__(( optimize("-O1") ))
   --  unsupported macro: F64_MAX ((float64_t)DBL_MAX)
   --  unsupported macro: F32_MAX ((float32_t)FLT_MAX)
   --  unsupported macro: F64_MIN (-DBL_MAX)
   --  unsupported macro: F32_MIN (-FLT_MAX)
   --  unsupported macro: F64_ABSMAX ((float64_t)DBL_MAX)
   --  unsupported macro: F32_ABSMAX ((float32_t)FLT_MAX)
   --  unsupported macro: F64_ABSMIN ((float64_t)0.0)
   --  unsupported macro: F32_ABSMIN ((float32_t)0.0)
   --  unsupported macro: Q31_MAX ((q31_t)(0x7FFFFFFFL))
   --  unsupported macro: Q15_MAX ((q15_t)(0x7FFF))
   --  unsupported macro: Q7_MAX ((q7_t)(0x7F))
   --  unsupported macro: Q31_MIN ((q31_t)(0x80000000L))
   --  unsupported macro: Q15_MIN ((q15_t)(0x8000))
   --  unsupported macro: Q7_MIN ((q7_t)(0x80))
   --  unsupported macro: Q31_ABSMAX ((q31_t)(0x7FFFFFFFL))
   --  unsupported macro: Q15_ABSMAX ((q15_t)(0x7FFF))
   --  unsupported macro: Q7_ABSMAX ((q7_t)(0x7F))
   --  unsupported macro: Q31_ABSMIN ((q31_t)0)
   --  unsupported macro: Q15_ABSMIN ((q15_t)0)
   --  unsupported macro: Q7_ABSMIN ((q7_t)0)
   CMPLX_DIM : constant := 2;  --  ../CMSIS_5/CMSIS/DSP/Include/arm_math_types.h:589

   subtype q7_t is sys_ustdint_h.int8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/arm_math_types.h:278

   subtype q15_t is sys_ustdint_h.int16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/arm_math_types.h:283

   subtype q31_t is sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/arm_math_types.h:288

   subtype q63_t is sys_ustdint_h.int64_t;  -- ../CMSIS_5/CMSIS/DSP/Include/arm_math_types.h:293

   subtype float32_t is float;  -- ../CMSIS_5/CMSIS/DSP/Include/arm_math_types.h:299

   subtype float64_t is double;  -- ../CMSIS_5/CMSIS/DSP/Include/arm_math_types.h:305

   subtype arm_status is int;
   ARM_MATH_SUCCESS : constant arm_status := 0;
   ARM_MATH_ARGUMENT_ERROR : constant arm_status := -1;
   ARM_MATH_LENGTH_ERROR : constant arm_status := -2;
   ARM_MATH_SIZE_MISMATCH : constant arm_status := -3;
   ARM_MATH_NANINF : constant arm_status := -4;
   ARM_MATH_SINGULAR : constant arm_status := -5;
   ARM_MATH_TEST_FAILURE : constant arm_status := -6;
   ARM_MATH_DECOMPOSITION_FAILURE : constant arm_status := -7;  -- ../CMSIS_5/CMSIS/DSP/Include/arm_math_types.h:605

end arm_math_types_h;
