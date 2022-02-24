pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with transform_functions_h;

package arm_const_structs_h is

   arm_cfft_sR_f64_len16 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len16";

   arm_cfft_sR_f64_len32 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len32";

   arm_cfft_sR_f64_len64 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len64";

   arm_cfft_sR_f64_len128 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len128";

   arm_cfft_sR_f64_len256 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len256";

   arm_cfft_sR_f64_len512 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len512";

   arm_cfft_sR_f64_len1024 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len1024";

   arm_cfft_sR_f64_len2048 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len2048";

   arm_cfft_sR_f64_len4096 : aliased constant transform_functions_h.arm_cfft_instance_f64  -- DSP/Include/arm_const_structs.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f64_len4096";

   arm_cfft_sR_f32_len16 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len16";

   arm_cfft_sR_f32_len32 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len32";

   arm_cfft_sR_f32_len64 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len64";

   arm_cfft_sR_f32_len128 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len128";

   arm_cfft_sR_f32_len256 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len256";

   arm_cfft_sR_f32_len512 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len512";

   arm_cfft_sR_f32_len1024 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len1024";

   arm_cfft_sR_f32_len2048 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len2048";

   arm_cfft_sR_f32_len4096 : aliased constant transform_functions_h.arm_cfft_instance_f32  -- DSP/Include/arm_const_structs.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_f32_len4096";

   arm_cfft_sR_q31_len16 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len16";

   arm_cfft_sR_q31_len32 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len32";

   arm_cfft_sR_q31_len64 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len64";

   arm_cfft_sR_q31_len128 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len128";

   arm_cfft_sR_q31_len256 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len256";

   arm_cfft_sR_q31_len512 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len512";

   arm_cfft_sR_q31_len1024 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len1024";

   arm_cfft_sR_q31_len2048 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len2048";

   arm_cfft_sR_q31_len4096 : aliased constant transform_functions_h.arm_cfft_instance_q31  -- DSP/Include/arm_const_structs.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q31_len4096";

   arm_cfft_sR_q15_len16 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len16";

   arm_cfft_sR_q15_len32 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len32";

   arm_cfft_sR_q15_len64 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len64";

   arm_cfft_sR_q15_len128 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len128";

   arm_cfft_sR_q15_len256 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len256";

   arm_cfft_sR_q15_len512 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len512";

   arm_cfft_sR_q15_len1024 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len1024";

   arm_cfft_sR_q15_len2048 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len2048";

   arm_cfft_sR_q15_len4096 : aliased constant transform_functions_h.arm_cfft_instance_q15  -- DSP/Include/arm_const_structs.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "arm_cfft_sR_q15_len4096";

end arm_const_structs_h;
