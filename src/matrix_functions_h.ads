pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with arm_math_types_h;

package matrix_functions_h is

   type arm_matrix_instance_f32 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:117
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:118
      pData : access arm_math_types_h.float32_t;  -- DSP/Include/dsp/matrix_functions.h:119
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/matrix_functions.h:120

   type arm_matrix_instance_f64 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:127
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:128
      pData : access arm_math_types_h.float64_t;  -- DSP/Include/dsp/matrix_functions.h:129
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/matrix_functions.h:130

   type arm_matrix_instance_q7 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:137
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:138
      pData : access arm_math_types_h.q7_t;  -- DSP/Include/dsp/matrix_functions.h:139
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/matrix_functions.h:140

   type arm_matrix_instance_q15 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:147
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:148
      pData : access arm_math_types_h.q15_t;  -- DSP/Include/dsp/matrix_functions.h:149
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/matrix_functions.h:150

   type arm_matrix_instance_q31 is record
      numRows : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:157
      numCols : aliased sys_ustdint_h.uint16_t;  -- DSP/Include/dsp/matrix_functions.h:158
      pData : access arm_math_types_h.q31_t;  -- DSP/Include/dsp/matrix_functions.h:159
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/matrix_functions.h:160

   function arm_mat_add_f32
     (pSrcA : access constant arm_matrix_instance_f32;
      pSrcB : access constant arm_matrix_instance_f32;
      pDst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_add_f32";

   function arm_mat_add_q15
     (pSrcA : access constant arm_matrix_instance_q15;
      pSrcB : access constant arm_matrix_instance_q15;
      pDst : access arm_matrix_instance_q15) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_add_q15";

   function arm_mat_add_q31
     (pSrcA : access constant arm_matrix_instance_q31;
      pSrcB : access constant arm_matrix_instance_q31;
      pDst : access arm_matrix_instance_q31) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_add_q31";

   function arm_mat_cmplx_mult_f32
     (pSrcA : access constant arm_matrix_instance_f32;
      pSrcB : access constant arm_matrix_instance_f32;
      pDst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_cmplx_mult_f32";

   function arm_mat_cmplx_mult_q15
     (pSrcA : access constant arm_matrix_instance_q15;
      pSrcB : access constant arm_matrix_instance_q15;
      pDst : access arm_matrix_instance_q15;
      pScratch : access arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_cmplx_mult_q15";

   function arm_mat_cmplx_mult_q31
     (pSrcA : access constant arm_matrix_instance_q31;
      pSrcB : access constant arm_matrix_instance_q31;
      pDst : access arm_matrix_instance_q31) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_cmplx_mult_q31";

   function arm_mat_trans_f32 (pSrc : access constant arm_matrix_instance_f32; pDst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_trans_f32";

   function arm_mat_trans_f64 (pSrc : access constant arm_matrix_instance_f64; pDst : access arm_matrix_instance_f64) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_trans_f64";

   function arm_mat_cmplx_trans_f32 (pSrc : access constant arm_matrix_instance_f32; pDst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_cmplx_trans_f32";

   function arm_mat_trans_q15 (pSrc : access constant arm_matrix_instance_q15; pDst : access arm_matrix_instance_q15) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_trans_q15";

   function arm_mat_cmplx_trans_q15 (pSrc : access constant arm_matrix_instance_q15; pDst : access arm_matrix_instance_q15) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_cmplx_trans_q15";

   function arm_mat_trans_q7 (pSrc : access constant arm_matrix_instance_q7; pDst : access arm_matrix_instance_q7) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_trans_q7";

   function arm_mat_trans_q31 (pSrc : access constant arm_matrix_instance_q31; pDst : access arm_matrix_instance_q31) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_trans_q31";

   function arm_mat_cmplx_trans_q31 (pSrc : access constant arm_matrix_instance_q31; pDst : access arm_matrix_instance_q31) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:326
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_cmplx_trans_q31";

   function arm_mat_mult_f32
     (pSrcA : access constant arm_matrix_instance_f32;
      pSrcB : access constant arm_matrix_instance_f32;
      pDst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_mult_f32";

   function arm_mat_mult_f64
     (pSrcA : access constant arm_matrix_instance_f64;
      pSrcB : access constant arm_matrix_instance_f64;
      pDst : access arm_matrix_instance_f64) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_mult_f64";

   procedure arm_mat_vec_mult_f32
     (pSrcMat : access constant arm_matrix_instance_f32;
      pVec : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/matrix_functions.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_vec_mult_f32";

   function arm_mat_mult_q7
     (pSrcA : access constant arm_matrix_instance_q7;
      pSrcB : access constant arm_matrix_instance_q7;
      pDst : access arm_matrix_instance_q7;
      pState : access arm_math_types_h.q7_t) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_mult_q7";

   procedure arm_mat_vec_mult_q7
     (pSrcMat : access constant arm_matrix_instance_q7;
      pVec : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t)  -- DSP/Include/dsp/matrix_functions.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_vec_mult_q7";

   function arm_mat_mult_q15
     (pSrcA : access constant arm_matrix_instance_q15;
      pSrcB : access constant arm_matrix_instance_q15;
      pDst : access arm_matrix_instance_q15;
      pState : access arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_mult_q15";

   procedure arm_mat_vec_mult_q15
     (pSrcMat : access constant arm_matrix_instance_q15;
      pVec : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t)  -- DSP/Include/dsp/matrix_functions.h:414
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_vec_mult_q15";

   function arm_mat_mult_fast_q15
     (pSrcA : access constant arm_matrix_instance_q15;
      pSrcB : access constant arm_matrix_instance_q15;
      pDst : access arm_matrix_instance_q15;
      pState : access arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_mult_fast_q15";

   function arm_mat_mult_q31
     (pSrcA : access constant arm_matrix_instance_q31;
      pSrcB : access constant arm_matrix_instance_q31;
      pDst : access arm_matrix_instance_q31) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:442
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_mult_q31";

   function arm_mat_mult_opt_q31
     (pSrcA : access constant arm_matrix_instance_q31;
      pSrcB : access constant arm_matrix_instance_q31;
      pDst : access arm_matrix_instance_q31;
      pState : access arm_math_types_h.q31_t) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_mult_opt_q31";

   procedure arm_mat_vec_mult_q31
     (pSrcMat : access constant arm_matrix_instance_q31;
      pVec : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t)  -- DSP/Include/dsp/matrix_functions.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_vec_mult_q31";

   function arm_mat_mult_fast_q31
     (pSrcA : access constant arm_matrix_instance_q31;
      pSrcB : access constant arm_matrix_instance_q31;
      pDst : access arm_matrix_instance_q31) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:481
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_mult_fast_q31";

   function arm_mat_sub_f32
     (pSrcA : access constant arm_matrix_instance_f32;
      pSrcB : access constant arm_matrix_instance_f32;
      pDst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:494
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_sub_f32";

   function arm_mat_sub_f64
     (pSrcA : access constant arm_matrix_instance_f64;
      pSrcB : access constant arm_matrix_instance_f64;
      pDst : access arm_matrix_instance_f64) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:507
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_sub_f64";

   function arm_mat_sub_q15
     (pSrcA : access constant arm_matrix_instance_q15;
      pSrcB : access constant arm_matrix_instance_q15;
      pDst : access arm_matrix_instance_q15) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_sub_q15";

   function arm_mat_sub_q31
     (pSrcA : access constant arm_matrix_instance_q31;
      pSrcB : access constant arm_matrix_instance_q31;
      pDst : access arm_matrix_instance_q31) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:533
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_sub_q31";

   function arm_mat_scale_f32
     (pSrc : access constant arm_matrix_instance_f32;
      scale : arm_math_types_h.float32_t;
      pDst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:546
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_scale_f32";

   function arm_mat_scale_q15
     (pSrc : access constant arm_matrix_instance_q15;
      scaleFract : arm_math_types_h.q15_t;
      shift : sys_ustdint_h.int32_t;
      pDst : access arm_matrix_instance_q15) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:560
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_scale_q15";

   function arm_mat_scale_q31
     (pSrc : access constant arm_matrix_instance_q31;
      scaleFract : arm_math_types_h.q31_t;
      shift : sys_ustdint_h.int32_t;
      pDst : access arm_matrix_instance_q31) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_scale_q31";

   procedure arm_mat_init_q31
     (S : access arm_matrix_instance_q31;
      nRows : sys_ustdint_h.uint16_t;
      nColumns : sys_ustdint_h.uint16_t;
      pData : access arm_math_types_h.q31_t)  -- DSP/Include/dsp/matrix_functions.h:588
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_init_q31";

   procedure arm_mat_init_q15
     (S : access arm_matrix_instance_q15;
      nRows : sys_ustdint_h.uint16_t;
      nColumns : sys_ustdint_h.uint16_t;
      pData : access arm_math_types_h.q15_t)  -- DSP/Include/dsp/matrix_functions.h:601
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_init_q15";

   procedure arm_mat_init_f32
     (S : access arm_matrix_instance_f32;
      nRows : sys_ustdint_h.uint16_t;
      nColumns : sys_ustdint_h.uint16_t;
      pData : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/matrix_functions.h:614
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_init_f32";

   function arm_mat_inverse_f32 (src : access constant arm_matrix_instance_f32; dst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:629
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_inverse_f32";

   function arm_mat_inverse_f64 (src : access constant arm_matrix_instance_f64; dst : access arm_matrix_instance_f64) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:641
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_inverse_f64";

   function arm_mat_cholesky_f64 (src : access constant arm_matrix_instance_f64; dst : access arm_matrix_instance_f64) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:654
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_cholesky_f64";

   function arm_mat_cholesky_f32 (src : access constant arm_matrix_instance_f32; dst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:667
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_cholesky_f32";

   function arm_mat_solve_upper_triangular_f32
     (ut : access constant arm_matrix_instance_f32;
      a : access constant arm_matrix_instance_f32;
      dst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:678
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_solve_upper_triangular_f32";

   function arm_mat_solve_lower_triangular_f32
     (lt : access constant arm_matrix_instance_f32;
      a : access constant arm_matrix_instance_f32;
      dst : access arm_matrix_instance_f32) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:690
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_solve_lower_triangular_f32";

   function arm_mat_solve_upper_triangular_f64
     (ut : access constant arm_matrix_instance_f64;
      a : access constant arm_matrix_instance_f64;
      dst : access arm_matrix_instance_f64) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:703
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_solve_upper_triangular_f64";

   function arm_mat_solve_lower_triangular_f64
     (lt : access constant arm_matrix_instance_f64;
      a : access constant arm_matrix_instance_f64;
      dst : access arm_matrix_instance_f64) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:715
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_solve_lower_triangular_f64";

   function arm_mat_ldlt_f32
     (src : access constant arm_matrix_instance_f32;
      l : access arm_matrix_instance_f32;
      d : access arm_matrix_instance_f32;
      pp : access sys_ustdint_h.uint16_t) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:731
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_ldlt_f32";

   function arm_mat_ldlt_f64
     (src : access constant arm_matrix_instance_f64;
      l : access arm_matrix_instance_f64;
      d : access arm_matrix_instance_f64;
      pp : access sys_ustdint_h.uint16_t) return arm_math_types_h.arm_status  -- DSP/Include/dsp/matrix_functions.h:747
   with Import => True, 
        Convention => C, 
        External_Name => "arm_mat_ldlt_f64";

end matrix_functions_h;
