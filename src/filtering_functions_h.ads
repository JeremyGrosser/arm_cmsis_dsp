pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with arm_math_types_h;

package filtering_functions_h is

   --  unsupported macro: DELTA_Q31 ((q31_t)(0x100))
   --  unsupported macro: DELTA_Q15 ((q15_t)0x5)
   type arm_fir_instance_q7 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:58
      pState : access arm_math_types_h.q7_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:59
      pCoeffs : access arm_math_types_h.q7_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:60
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:61

   type arm_fir_instance_q15 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:68
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:69
      pCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:70
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:71

   type arm_fir_instance_q31 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:78
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:79
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:81

   type arm_fir_instance_f32 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:88
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:89
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:90
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:91

   type arm_fir_instance_f64 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:98
      pState : access arm_math_types_h.float64_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:99
      pCoeffs : access arm_math_types_h.float64_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:100
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:101

   procedure arm_fir_q7
     (S : access constant arm_fir_instance_q7;
      pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_q7";

   procedure arm_fir_init_q7
     (S : access arm_fir_instance_q7;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q7_t;
      pState : access arm_math_types_h.q7_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_init_q7";

   procedure arm_fir_q15
     (S : access constant arm_fir_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_q15";

   procedure arm_fir_fast_q15
     (S : access constant arm_fir_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_fast_q15";

   function arm_fir_init_q15
     (S : access arm_fir_instance_q15;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_init_q15";

   procedure arm_fir_q31
     (S : access constant arm_fir_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_q31";

   procedure arm_fir_fast_q31
     (S : access constant arm_fir_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_fast_q31";

   procedure arm_fir_init_q31
     (S : access arm_fir_instance_q31;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_init_q31";

   procedure arm_fir_f32
     (S : access constant arm_fir_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_f32";

   procedure arm_fir_f64
     (S : access constant arm_fir_instance_f64;
      pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_f64";

   procedure arm_fir_init_f32
     (S : access arm_fir_instance_f32;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_init_f32";

   procedure arm_fir_init_f64
     (S : access arm_fir_instance_f64;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.float64_t;
      pState : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_init_f64";

   type arm_biquad_casd_df1_inst_q15 is record
      numStages : aliased sys_ustdint_h.int8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:287
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:288
      pCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:289
      postShift : aliased sys_ustdint_h.int8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:290
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:291

   type arm_biquad_casd_df1_inst_q31 is record
      numStages : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:298
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:299
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:300
      postShift : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:301
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:302

   type arm_biquad_casd_df1_inst_f32 is record
      numStages : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:309
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:310
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:311
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:312

   procedure arm_biquad_cascade_df1_q15
     (S : access constant arm_biquad_casd_df1_inst_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df1_q15";

   procedure arm_biquad_cascade_df1_init_q15
     (S : access arm_biquad_casd_df1_inst_q15;
      numStages : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t;
      postShift : sys_ustdint_h.int8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df1_init_q15";

   procedure arm_biquad_cascade_df1_fast_q15
     (S : access constant arm_biquad_casd_df1_inst_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df1_fast_q15";

   procedure arm_biquad_cascade_df1_q31
     (S : access constant arm_biquad_casd_df1_inst_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df1_q31";

   procedure arm_biquad_cascade_df1_fast_q31
     (S : access constant arm_biquad_casd_df1_inst_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df1_fast_q31";

   procedure arm_biquad_cascade_df1_init_q31
     (S : access arm_biquad_casd_df1_inst_q31;
      numStages : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t;
      postShift : sys_ustdint_h.int8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:399
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df1_init_q31";

   procedure arm_biquad_cascade_df1_f32
     (S : access constant arm_biquad_casd_df1_inst_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df1_f32";

   procedure arm_biquad_cascade_df1_init_f32
     (S : access arm_biquad_casd_df1_inst_f32;
      numStages : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:436
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df1_init_f32";

   procedure arm_conv_f32
     (pSrcA : access arm_math_types_h.float32_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.float32_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_f32";

   procedure arm_conv_opt_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t;
      pScratch1 : access arm_math_types_h.q15_t;
      pScratch2 : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:469
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_opt_q15";

   procedure arm_conv_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:487
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_q15";

   procedure arm_conv_fast_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:503
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_fast_q15";

   procedure arm_conv_fast_opt_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t;
      pScratch1 : access arm_math_types_h.q15_t;
      pScratch2 : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_fast_opt_q15";

   procedure arm_conv_q31
     (pSrcA : access arm_math_types_h.q31_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q31_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:539
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_q31";

   procedure arm_conv_fast_q31
     (pSrcA : access arm_math_types_h.q31_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q31_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:555
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_fast_q31";

   procedure arm_conv_opt_q7
     (pSrcA : access arm_math_types_h.q7_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q7_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q7_t;
      pScratch1 : access arm_math_types_h.q15_t;
      pScratch2 : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:573
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_opt_q7";

   procedure arm_conv_q7
     (pSrcA : access arm_math_types_h.q7_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q7_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q7_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:591
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_q7";

   function arm_conv_partial_f32
     (pSrcA : access arm_math_types_h.float32_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.float32_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.float32_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:610
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_f32";

   function arm_conv_partial_opt_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t;
      pScratch1 : access arm_math_types_h.q15_t;
      pScratch2 : access arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:633
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_opt_q15";

   function arm_conv_partial_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:656
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_q15";

   function arm_conv_partial_fast_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:677
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_fast_q15";

   function arm_conv_partial_fast_opt_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t;
      pScratch1 : access arm_math_types_h.q15_t;
      pScratch2 : access arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:700
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_fast_opt_q15";

   function arm_conv_partial_q31
     (pSrcA : access arm_math_types_h.q31_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q31_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q31_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_q31";

   function arm_conv_partial_fast_q31
     (pSrcA : access arm_math_types_h.q31_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q31_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q31_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:744
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_fast_q31";

   function arm_conv_partial_opt_q7
     (pSrcA : access arm_math_types_h.q7_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q7_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q7_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t;
      pScratch1 : access arm_math_types_h.q15_t;
      pScratch2 : access arm_math_types_h.q15_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:767
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_opt_q7";

   function arm_conv_partial_q7
     (pSrcA : access arm_math_types_h.q7_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q7_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q7_t;
      firstIndex : sys_ustdint_h.uint32_t;
      numPoints : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:790
   with Import => True, 
        Convention => C, 
        External_Name => "arm_conv_partial_q7";

   type arm_fir_decimate_instance_q15 is record
      M : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:805
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:806
      pCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:807
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:808
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:809

   type arm_fir_decimate_instance_q31 is record
      M : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:816
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:817
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:818
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:819
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:820

   type arm_fir_decimate_instance_f32 is record
      M : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:827
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:828
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:829
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:830
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:831

   procedure arm_fir_decimate_f32
     (S : access constant arm_fir_decimate_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:841
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_decimate_f32";

   function arm_fir_decimate_init_f32
     (S : access arm_fir_decimate_instance_f32;
      numTaps : sys_ustdint_h.uint16_t;
      M : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:860
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_decimate_init_f32";

   procedure arm_fir_decimate_q15
     (S : access constant arm_fir_decimate_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:876
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_decimate_q15";

   procedure arm_fir_decimate_fast_q15
     (S : access constant arm_fir_decimate_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:890
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_decimate_fast_q15";

   function arm_fir_decimate_init_q15
     (S : access arm_fir_decimate_instance_q15;
      numTaps : sys_ustdint_h.uint16_t;
      M : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:908
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_decimate_init_q15";

   procedure arm_fir_decimate_q31
     (S : access constant arm_fir_decimate_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:924
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_decimate_q31";

   procedure arm_fir_decimate_fast_q31
     (S : access constant arm_fir_decimate_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:937
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_decimate_fast_q31";

   function arm_fir_decimate_init_q31
     (S : access arm_fir_decimate_instance_q31;
      numTaps : sys_ustdint_h.uint16_t;
      M : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:955
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_decimate_init_q31";

   type arm_fir_interpolate_instance_q15 is record
      L : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:969
      phaseLength : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:970
      pCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:971
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:972
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:973

   type arm_fir_interpolate_instance_q31 is record
      L : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:980
      phaseLength : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:981
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:982
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:983
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:984

   type arm_fir_interpolate_instance_f32 is record
      L : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:991
      phaseLength : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:992
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:993
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:994
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:995

   procedure arm_fir_interpolate_q15
     (S : access constant arm_fir_interpolate_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1005
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_interpolate_q15";

   function arm_fir_interpolate_init_q15
     (S : access arm_fir_interpolate_instance_q15;
      L : sys_ustdint_h.uint8_t;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1023
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_interpolate_init_q15";

   procedure arm_fir_interpolate_q31
     (S : access constant arm_fir_interpolate_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1039
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_interpolate_q31";

   function arm_fir_interpolate_init_q31
     (S : access arm_fir_interpolate_instance_q31;
      L : sys_ustdint_h.uint8_t;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1057
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_interpolate_init_q31";

   procedure arm_fir_interpolate_f32
     (S : access constant arm_fir_interpolate_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1073
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_interpolate_f32";

   function arm_fir_interpolate_init_f32
     (S : access arm_fir_interpolate_instance_f32;
      L : sys_ustdint_h.uint8_t;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t) return arm_math_types_h.arm_status  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1091
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_interpolate_init_f32";

   type arm_biquad_cas_df1_32x64_ins_q31 is record
      numStages : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1105
      pState : access arm_math_types_h.q63_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1106
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1107
      postShift : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1108
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1109

   procedure arm_biquad_cas_df1_32x64_q31
     (S : access constant arm_biquad_cas_df1_32x64_ins_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1118
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cas_df1_32x64_q31";

   procedure arm_biquad_cas_df1_32x64_init_q31
     (S : access arm_biquad_cas_df1_32x64_ins_q31;
      numStages : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q63_t;
      postShift : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1132
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cas_df1_32x64_init_q31";

   type arm_biquad_cascade_df2T_instance_f32 is record
      numStages : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1145
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1146
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1147
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1148

   type arm_biquad_cascade_stereo_df2T_instance_f32 is record
      numStages : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1155
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1156
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1157
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1158

   type arm_biquad_cascade_df2T_instance_f64 is record
      numStages : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1165
      pState : access arm_math_types_h.float64_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1166
      pCoeffs : access arm_math_types_h.float64_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1167
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1168

   procedure arm_biquad_cascade_df2T_f32
     (S : access constant arm_biquad_cascade_df2T_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1178
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df2T_f32";

   procedure arm_biquad_cascade_stereo_df2T_f32
     (S : access constant arm_biquad_cascade_stereo_df2T_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1192
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_stereo_df2T_f32";

   procedure arm_biquad_cascade_df2T_f64
     (S : access constant arm_biquad_cascade_df2T_instance_f64;
      pSrc : access arm_math_types_h.float64_t;
      pDst : access arm_math_types_h.float64_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1206
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df2T_f64";

   procedure arm_biquad_cascade_df2T_init_f32
     (S : access arm_biquad_cascade_df2T_instance_f32;
      numStages : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1233
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df2T_init_f32";

   procedure arm_biquad_cascade_stereo_df2T_init_f32
     (S : access arm_biquad_cascade_stereo_df2T_instance_f32;
      numStages : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1247
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_stereo_df2T_init_f32";

   procedure arm_biquad_cascade_df2T_init_f64
     (S : access arm_biquad_cascade_df2T_instance_f64;
      numStages : sys_ustdint_h.uint8_t;
      pCoeffs : access arm_math_types_h.float64_t;
      pState : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1261
   with Import => True, 
        Convention => C, 
        External_Name => "arm_biquad_cascade_df2T_init_f64";

   type arm_fir_lattice_instance_q15 is record
      numStages : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1273
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1274
      pCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1275
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1276

   type arm_fir_lattice_instance_q31 is record
      numStages : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1283
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1284
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1285
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1286

   type arm_fir_lattice_instance_f32 is record
      numStages : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1293
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1294
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1295
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1296

   procedure arm_fir_lattice_init_q15
     (S : access arm_fir_lattice_instance_q15;
      numStages : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1306
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_lattice_init_q15";

   procedure arm_fir_lattice_q15
     (S : access constant arm_fir_lattice_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1320
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_lattice_q15";

   procedure arm_fir_lattice_init_q31
     (S : access arm_fir_lattice_instance_q31;
      numStages : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1334
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_lattice_init_q31";

   procedure arm_fir_lattice_q31
     (S : access constant arm_fir_lattice_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1348
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_lattice_q31";

   procedure arm_fir_lattice_init_f32
     (S : access arm_fir_lattice_instance_f32;
      numStages : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1362
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_lattice_init_f32";

   procedure arm_fir_lattice_f32
     (S : access constant arm_fir_lattice_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1376
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_lattice_f32";

   type arm_iir_lattice_instance_q15 is record
      numStages : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1388
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1389
      pkCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1390
      pvCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1391
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1392

   type arm_iir_lattice_instance_q31 is record
      numStages : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1399
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1400
      pkCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1401
      pvCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1402
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1403

   type arm_iir_lattice_instance_f32 is record
      numStages : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1410
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1411
      pkCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1412
      pvCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1413
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1414

   procedure arm_iir_lattice_f32
     (S : access constant arm_iir_lattice_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1424
   with Import => True, 
        Convention => C, 
        External_Name => "arm_iir_lattice_f32";

   procedure arm_iir_lattice_init_f32
     (S : access arm_iir_lattice_instance_f32;
      numStages : sys_ustdint_h.uint16_t;
      pkCoeffs : access arm_math_types_h.float32_t;
      pvCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1440
   with Import => True, 
        Convention => C, 
        External_Name => "arm_iir_lattice_init_f32";

   procedure arm_iir_lattice_q31
     (S : access constant arm_iir_lattice_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1456
   with Import => True, 
        Convention => C, 
        External_Name => "arm_iir_lattice_q31";

   procedure arm_iir_lattice_init_q31
     (S : access arm_iir_lattice_instance_q31;
      numStages : sys_ustdint_h.uint16_t;
      pkCoeffs : access arm_math_types_h.q31_t;
      pvCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1472
   with Import => True, 
        Convention => C, 
        External_Name => "arm_iir_lattice_init_q31";

   procedure arm_iir_lattice_q15
     (S : access constant arm_iir_lattice_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1488
   with Import => True, 
        Convention => C, 
        External_Name => "arm_iir_lattice_q15";

   procedure arm_iir_lattice_init_q15
     (S : access arm_iir_lattice_instance_q15;
      numStages : sys_ustdint_h.uint16_t;
      pkCoeffs : access arm_math_types_h.q15_t;
      pvCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1504
   with Import => True, 
        Convention => C, 
        External_Name => "arm_iir_lattice_init_q15";

   type arm_lms_instance_f32 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1518
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1519
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1520
      mu : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1521
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1522

   procedure arm_lms_f32
     (S : access constant arm_lms_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pRef : access arm_math_types_h.float32_t;
      pOut : access arm_math_types_h.float32_t;
      pErr : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1534
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_f32";

   procedure arm_lms_init_f32
     (S : access arm_lms_instance_f32;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t;
      mu : arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1552
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_init_f32";

   type arm_lms_instance_q15 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1566
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1567
      pCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1568
      mu : aliased arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1569
      postShift : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1570
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1571

   procedure arm_lms_init_q15
     (S : access arm_lms_instance_q15;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t;
      mu : arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      postShift : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1584
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_init_q15";

   procedure arm_lms_q15
     (S : access constant arm_lms_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pRef : access arm_math_types_h.q15_t;
      pOut : access arm_math_types_h.q15_t;
      pErr : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1603
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_q15";

   type arm_lms_instance_q31 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1617
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1618
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1619
      mu : aliased arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1620
      postShift : aliased sys_ustdint_h.uint32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1621
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1622

   procedure arm_lms_q31
     (S : access constant arm_lms_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pRef : access arm_math_types_h.q31_t;
      pOut : access arm_math_types_h.q31_t;
      pErr : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1634
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_q31";

   procedure arm_lms_init_q31
     (S : access arm_lms_instance_q31;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t;
      mu : arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      postShift : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1653
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_init_q31";

   type arm_lms_norm_instance_f32 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1668
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1669
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1670
      mu : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1671
      energy : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1672
      x0 : aliased arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1673
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1674

   procedure arm_lms_norm_f32
     (S : access arm_lms_norm_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pRef : access arm_math_types_h.float32_t;
      pOut : access arm_math_types_h.float32_t;
      pErr : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1686
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_norm_f32";

   procedure arm_lms_norm_init_f32
     (S : access arm_lms_norm_instance_f32;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t;
      mu : arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1704
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_norm_init_f32";

   type arm_lms_norm_instance_q31 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1718
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1719
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1720
      mu : aliased arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1721
      postShift : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1722
      recipTable : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1723
      energy : aliased arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1724
      x0 : aliased arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1725
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1726

   procedure arm_lms_norm_q31
     (S : access arm_lms_norm_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pRef : access arm_math_types_h.q31_t;
      pOut : access arm_math_types_h.q31_t;
      pErr : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1738
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_norm_q31";

   procedure arm_lms_norm_init_q31
     (S : access arm_lms_norm_instance_q31;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t;
      mu : arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t;
      postShift : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1757
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_norm_init_q31";

   type arm_lms_norm_instance_q15 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1772
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1773
      pCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1774
      mu : aliased arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1775
      postShift : aliased sys_ustdint_h.uint8_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1776
      recipTable : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1777
      energy : aliased arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1778
      x0 : aliased arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1779
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1780

   procedure arm_lms_norm_q15
     (S : access arm_lms_norm_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pRef : access arm_math_types_h.q15_t;
      pOut : access arm_math_types_h.q15_t;
      pErr : access arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1792
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_norm_q15";

   procedure arm_lms_norm_init_q15
     (S : access arm_lms_norm_instance_q15;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t;
      mu : arm_math_types_h.q15_t;
      blockSize : sys_ustdint_h.uint32_t;
      postShift : sys_ustdint_h.uint8_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1811
   with Import => True, 
        Convention => C, 
        External_Name => "arm_lms_norm_init_q15";

   procedure arm_correlate_f32
     (pSrcA : access arm_math_types_h.float32_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.float32_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.float32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1829
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_f32";

   procedure arm_correlate_f64
     (pSrcA : access arm_math_types_h.float64_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.float64_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.float64_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1845
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_f64";

   procedure arm_correlate_opt_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t;
      pScratch : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1862
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_opt_q15";

   procedure arm_correlate_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1879
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_q15";

   procedure arm_correlate_fast_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1896
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_fast_q15";

   procedure arm_correlate_fast_opt_q15
     (pSrcA : access arm_math_types_h.q15_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q15_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q15_t;
      pScratch : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1913
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_fast_opt_q15";

   procedure arm_correlate_q31
     (pSrcA : access arm_math_types_h.q31_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q31_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1930
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_q31";

   procedure arm_correlate_fast_q31
     (pSrcA : access arm_math_types_h.q31_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q31_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q31_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1946
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_fast_q31";

   procedure arm_correlate_opt_q7
     (pSrcA : access arm_math_types_h.q7_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q7_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q7_t;
      pScratch1 : access arm_math_types_h.q15_t;
      pScratch2 : access arm_math_types_h.q15_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1964
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_opt_q7";

   procedure arm_correlate_q7
     (pSrcA : access arm_math_types_h.q7_t;
      srcALen : sys_ustdint_h.uint32_t;
      pSrcB : access arm_math_types_h.q7_t;
      srcBLen : sys_ustdint_h.uint32_t;
      pDst : access arm_math_types_h.q7_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1982
   with Import => True, 
        Convention => C, 
        External_Name => "arm_correlate_q7";

   type arm_fir_sparse_instance_f32 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1995
      stateIndex : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1996
      pState : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1997
      pCoeffs : access arm_math_types_h.float32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1998
      maxDelay : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:1999
      pTapDelay : access sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2000
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2001

   type arm_fir_sparse_instance_q31 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2008
      stateIndex : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2009
      pState : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2010
      pCoeffs : access arm_math_types_h.q31_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2011
      maxDelay : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2012
      pTapDelay : access sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2013
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2014

   type arm_fir_sparse_instance_q15 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2021
      stateIndex : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2022
      pState : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2023
      pCoeffs : access arm_math_types_h.q15_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2024
      maxDelay : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2025
      pTapDelay : access sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2026
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2027

   type arm_fir_sparse_instance_q7 is record
      numTaps : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2034
      stateIndex : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2035
      pState : access arm_math_types_h.q7_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2036
      pCoeffs : access arm_math_types_h.q7_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2037
      maxDelay : aliased sys_ustdint_h.uint16_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2038
      pTapDelay : access sys_ustdint_h.int32_t;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2039
   end record
   with Convention => C_Pass_By_Copy;  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2040

   procedure arm_fir_sparse_f32
     (S : access arm_fir_sparse_instance_f32;
      pSrc : access arm_math_types_h.float32_t;
      pDst : access arm_math_types_h.float32_t;
      pScratchIn : access arm_math_types_h.float32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2051
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_sparse_f32";

   procedure arm_fir_sparse_init_f32
     (S : access arm_fir_sparse_instance_f32;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.float32_t;
      pState : access arm_math_types_h.float32_t;
      pTapDelay : access sys_ustdint_h.int32_t;
      maxDelay : sys_ustdint_h.uint16_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2069
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_sparse_init_f32";

   procedure arm_fir_sparse_q31
     (S : access arm_fir_sparse_instance_q31;
      pSrc : access arm_math_types_h.q31_t;
      pDst : access arm_math_types_h.q31_t;
      pScratchIn : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2087
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_sparse_q31";

   procedure arm_fir_sparse_init_q31
     (S : access arm_fir_sparse_instance_q31;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q31_t;
      pState : access arm_math_types_h.q31_t;
      pTapDelay : access sys_ustdint_h.int32_t;
      maxDelay : sys_ustdint_h.uint16_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2105
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_sparse_init_q31";

   procedure arm_fir_sparse_q15
     (S : access arm_fir_sparse_instance_q15;
      pSrc : access arm_math_types_h.q15_t;
      pDst : access arm_math_types_h.q15_t;
      pScratchIn : access arm_math_types_h.q15_t;
      pScratchOut : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2124
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_sparse_q15";

   procedure arm_fir_sparse_init_q15
     (S : access arm_fir_sparse_instance_q15;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q15_t;
      pState : access arm_math_types_h.q15_t;
      pTapDelay : access sys_ustdint_h.int32_t;
      maxDelay : sys_ustdint_h.uint16_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2143
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_sparse_init_q15";

   procedure arm_fir_sparse_q7
     (S : access arm_fir_sparse_instance_q7;
      pSrc : access arm_math_types_h.q7_t;
      pDst : access arm_math_types_h.q7_t;
      pScratchIn : access arm_math_types_h.q7_t;
      pScratchOut : access arm_math_types_h.q31_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2162
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_sparse_q7";

   procedure arm_fir_sparse_init_q7
     (S : access arm_fir_sparse_instance_q7;
      numTaps : sys_ustdint_h.uint16_t;
      pCoeffs : access arm_math_types_h.q7_t;
      pState : access arm_math_types_h.q7_t;
      pTapDelay : access sys_ustdint_h.int32_t;
      maxDelay : sys_ustdint_h.uint16_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2181
   with Import => True, 
        Convention => C, 
        External_Name => "arm_fir_sparse_init_q7";

   procedure arm_circularWrite_f32
     (circBuffer : access sys_ustdint_h.int32_t;
      L : sys_ustdint_h.int32_t;
      writeOffset : access sys_ustdint_h.uint16_t;
      bufferInc : sys_ustdint_h.int32_t;
      src : access sys_ustdint_h.int32_t;
      srcInc : sys_ustdint_h.int32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2198
   with Import => True, 
        Convention => C, 
        External_Name => "arm_circularWrite_f32";

   procedure arm_circularRead_f32
     (circBuffer : access sys_ustdint_h.int32_t;
      L : sys_ustdint_h.int32_t;
      readOffset : access sys_ustdint_h.int32_t;
      bufferInc : sys_ustdint_h.int32_t;
      dst : access sys_ustdint_h.int32_t;
      dst_base : access sys_ustdint_h.int32_t;
      dst_length : sys_ustdint_h.int32_t;
      dstInc : sys_ustdint_h.int32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2243
   with Import => True, 
        Convention => C, 
        External_Name => "arm_circularRead_f32";

   procedure arm_circularWrite_q15
     (circBuffer : access arm_math_types_h.q15_t;
      L : sys_ustdint_h.int32_t;
      writeOffset : access sys_ustdint_h.uint16_t;
      bufferInc : sys_ustdint_h.int32_t;
      src : access arm_math_types_h.q15_t;
      srcInc : sys_ustdint_h.int32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2299
   with Import => True, 
        Convention => C, 
        External_Name => "arm_circularWrite_q15";

   procedure arm_circularRead_q15
     (circBuffer : access arm_math_types_h.q15_t;
      L : sys_ustdint_h.int32_t;
      readOffset : access sys_ustdint_h.int32_t;
      bufferInc : sys_ustdint_h.int32_t;
      dst : access arm_math_types_h.q15_t;
      dst_base : access arm_math_types_h.q15_t;
      dst_length : sys_ustdint_h.int32_t;
      dstInc : sys_ustdint_h.int32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2343
   with Import => True, 
        Convention => C, 
        External_Name => "arm_circularRead_q15";

   procedure arm_circularWrite_q7
     (circBuffer : access arm_math_types_h.q7_t;
      L : sys_ustdint_h.int32_t;
      writeOffset : access sys_ustdint_h.uint16_t;
      bufferInc : sys_ustdint_h.int32_t;
      src : access arm_math_types_h.q7_t;
      srcInc : sys_ustdint_h.int32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2400
   with Import => True, 
        Convention => C, 
        External_Name => "arm_circularWrite_q7";

   procedure arm_circularRead_q7
     (circBuffer : access arm_math_types_h.q7_t;
      L : sys_ustdint_h.int32_t;
      readOffset : access sys_ustdint_h.int32_t;
      bufferInc : sys_ustdint_h.int32_t;
      dst : access arm_math_types_h.q7_t;
      dst_base : access arm_math_types_h.q7_t;
      dst_length : sys_ustdint_h.int32_t;
      dstInc : sys_ustdint_h.int32_t;
      blockSize : sys_ustdint_h.uint32_t)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2444
   with Import => True, 
        Convention => C, 
        External_Name => "arm_circularRead_q7";

   procedure arm_levinson_durbin_f32
     (phi : access arm_math_types_h.float32_t;
      a : access arm_math_types_h.float32_t;
      err : access arm_math_types_h.float32_t;
      nbCoefs : int)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2506
   with Import => True, 
        Convention => C, 
        External_Name => "arm_levinson_durbin_f32";

   procedure arm_levinson_durbin_q31
     (phi : access arm_math_types_h.q31_t;
      a : access arm_math_types_h.q31_t;
      err : access arm_math_types_h.q31_t;
      nbCoefs : int)  -- ../CMSIS_5/CMSIS/DSP/Include/dsp/filtering_functions.h:2520
   with Import => True, 
        Convention => C, 
        External_Name => "arm_levinson_durbin_q31";

end filtering_functions_h;
