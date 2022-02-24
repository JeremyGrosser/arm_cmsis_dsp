pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with arm_math_types_h;
with sys_ustdint_h;

package controller_functions_h is

   CONTROLLER_Q31_SHIFT : constant := (32 - 9);  --  DSP/Include/dsp/controller_functions.h:45

   INPUT_SPACING : constant := 16#B60B61#;  --  DSP/Include/dsp/controller_functions.h:48

   procedure arm_sin_cos_f32
     (theta : arm_math_types_h.float32_t;
      pSinVal : access arm_math_types_h.float32_t;
      pCosVal : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/controller_functions.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sin_cos_f32";

   procedure arm_sin_cos_q31
     (theta : arm_math_types_h.q31_t;
      pSinVal : access arm_math_types_h.q31_t;
      pCosVal : access arm_math_types_h.q31_t)  -- DSP/Include/dsp/controller_functions.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "arm_sin_cos_q31";

   type arm_pid_instance_q15_array1036 is array (0 .. 2) of aliased arm_math_types_h.q15_t;
   type arm_pid_instance_q15 is record
      A0 : aliased arm_math_types_h.q15_t;  -- DSP/Include/dsp/controller_functions.h:159
      A1 : aliased arm_math_types_h.q15_t;  -- DSP/Include/dsp/controller_functions.h:161
      A2 : aliased arm_math_types_h.q15_t;  -- DSP/Include/dsp/controller_functions.h:162
      state : aliased arm_pid_instance_q15_array1036;  -- DSP/Include/dsp/controller_functions.h:166
      Kp : aliased arm_math_types_h.q15_t;  -- DSP/Include/dsp/controller_functions.h:167
      Ki : aliased arm_math_types_h.q15_t;  -- DSP/Include/dsp/controller_functions.h:168
      Kd : aliased arm_math_types_h.q15_t;  -- DSP/Include/dsp/controller_functions.h:169
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/controller_functions.h:170

   type arm_pid_instance_q31_array1040 is array (0 .. 2) of aliased arm_math_types_h.q31_t;
   type arm_pid_instance_q31 is record
      A0 : aliased arm_math_types_h.q31_t;  -- DSP/Include/dsp/controller_functions.h:177
      A1 : aliased arm_math_types_h.q31_t;  -- DSP/Include/dsp/controller_functions.h:178
      A2 : aliased arm_math_types_h.q31_t;  -- DSP/Include/dsp/controller_functions.h:179
      state : aliased arm_pid_instance_q31_array1040;  -- DSP/Include/dsp/controller_functions.h:180
      Kp : aliased arm_math_types_h.q31_t;  -- DSP/Include/dsp/controller_functions.h:181
      Ki : aliased arm_math_types_h.q31_t;  -- DSP/Include/dsp/controller_functions.h:182
      Kd : aliased arm_math_types_h.q31_t;  -- DSP/Include/dsp/controller_functions.h:183
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/controller_functions.h:184

   type arm_pid_instance_f32_array1044 is array (0 .. 2) of aliased arm_math_types_h.float32_t;
   type arm_pid_instance_f32 is record
      A0 : aliased arm_math_types_h.float32_t;  -- DSP/Include/dsp/controller_functions.h:191
      A1 : aliased arm_math_types_h.float32_t;  -- DSP/Include/dsp/controller_functions.h:192
      A2 : aliased arm_math_types_h.float32_t;  -- DSP/Include/dsp/controller_functions.h:193
      state : aliased arm_pid_instance_f32_array1044;  -- DSP/Include/dsp/controller_functions.h:194
      Kp : aliased arm_math_types_h.float32_t;  -- DSP/Include/dsp/controller_functions.h:195
      Ki : aliased arm_math_types_h.float32_t;  -- DSP/Include/dsp/controller_functions.h:196
      Kd : aliased arm_math_types_h.float32_t;  -- DSP/Include/dsp/controller_functions.h:197
   end record
   with Convention => C_Pass_By_Copy;  -- DSP/Include/dsp/controller_functions.h:198

   procedure arm_pid_init_f32 (S : access arm_pid_instance_f32; resetStateFlag : sys_ustdint_h.int32_t)  -- DSP/Include/dsp/controller_functions.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_init_f32";

   procedure arm_pid_reset_f32 (S : access arm_pid_instance_f32)  -- DSP/Include/dsp/controller_functions.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_reset_f32";

   procedure arm_pid_init_q31 (S : access arm_pid_instance_q31; resetStateFlag : sys_ustdint_h.int32_t)  -- DSP/Include/dsp/controller_functions.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_init_q31";

   procedure arm_pid_reset_q31 (S : access arm_pid_instance_q31)  -- DSP/Include/dsp/controller_functions.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_reset_q31";

   procedure arm_pid_init_q15 (S : access arm_pid_instance_q15; resetStateFlag : sys_ustdint_h.int32_t)  -- DSP/Include/dsp/controller_functions.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_init_q15";

   procedure arm_pid_reset_q15 (S : access arm_pid_instance_q15)  -- DSP/Include/dsp/controller_functions.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_reset_q15";

   function arm_pid_f32 (S : access arm_pid_instance_f32; c_in : arm_math_types_h.float32_t) return arm_math_types_h.float32_t  -- DSP/Include/dsp/controller_functions.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_f32";

   function arm_pid_q31 (S : access arm_pid_instance_q31; c_in : arm_math_types_h.q31_t) return arm_math_types_h.q31_t  -- DSP/Include/dsp/controller_functions.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_q31";

   function arm_pid_q15 (S : access arm_pid_instance_q15; c_in : arm_math_types_h.q15_t) return arm_math_types_h.q15_t  -- DSP/Include/dsp/controller_functions.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "arm_pid_q15";

   procedure arm_park_f32
     (Ialpha : arm_math_types_h.float32_t;
      Ibeta : arm_math_types_h.float32_t;
      pId : access arm_math_types_h.float32_t;
      pIq : access arm_math_types_h.float32_t;
      sinVal : arm_math_types_h.float32_t;
      cosVal : arm_math_types_h.float32_t)  -- DSP/Include/dsp/controller_functions.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "arm_park_f32";

   procedure arm_park_q31
     (Ialpha : arm_math_types_h.q31_t;
      Ibeta : arm_math_types_h.q31_t;
      pId : access arm_math_types_h.q31_t;
      pIq : access arm_math_types_h.q31_t;
      sinVal : arm_math_types_h.q31_t;
      cosVal : arm_math_types_h.q31_t)  -- DSP/Include/dsp/controller_functions.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "arm_park_q31";

   procedure arm_inv_park_f32
     (Id : arm_math_types_h.float32_t;
      Iq : arm_math_types_h.float32_t;
      pIalpha : access arm_math_types_h.float32_t;
      pIbeta : access arm_math_types_h.float32_t;
      sinVal : arm_math_types_h.float32_t;
      cosVal : arm_math_types_h.float32_t)  -- DSP/Include/dsp/controller_functions.h:540
   with Import => True, 
        Convention => C, 
        External_Name => "arm_inv_park_f32";

   procedure arm_inv_park_q31
     (Id : arm_math_types_h.q31_t;
      Iq : arm_math_types_h.q31_t;
      pIalpha : access arm_math_types_h.q31_t;
      pIbeta : access arm_math_types_h.q31_t;
      sinVal : arm_math_types_h.q31_t;
      cosVal : arm_math_types_h.q31_t)  -- DSP/Include/dsp/controller_functions.h:571
   with Import => True, 
        Convention => C, 
        External_Name => "arm_inv_park_q31";

   procedure arm_clarke_f32
     (Ia : arm_math_types_h.float32_t;
      Ib : arm_math_types_h.float32_t;
      pIalpha : access arm_math_types_h.float32_t;
      pIbeta : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/controller_functions.h:646
   with Import => True, 
        Convention => C, 
        External_Name => "arm_clarke_f32";

   procedure arm_clarke_q31
     (Ia : arm_math_types_h.q31_t;
      Ib : arm_math_types_h.q31_t;
      pIalpha : access arm_math_types_h.q31_t;
      pIbeta : access arm_math_types_h.q31_t)  -- DSP/Include/dsp/controller_functions.h:673
   with Import => True, 
        Convention => C, 
        External_Name => "arm_clarke_q31";

   procedure arm_inv_clarke_f32
     (Ialpha : arm_math_types_h.float32_t;
      Ibeta : arm_math_types_h.float32_t;
      pIa : access arm_math_types_h.float32_t;
      pIb : access arm_math_types_h.float32_t)  -- DSP/Include/dsp/controller_functions.h:732
   with Import => True, 
        Convention => C, 
        External_Name => "arm_inv_clarke_f32";

   procedure arm_inv_clarke_q31
     (Ialpha : arm_math_types_h.q31_t;
      Ibeta : arm_math_types_h.q31_t;
      pIa : access arm_math_types_h.q31_t;
      pIb : access arm_math_types_h.q31_t)  -- DSP/Include/dsp/controller_functions.h:759
   with Import => True, 
        Convention => C, 
        External_Name => "arm_inv_clarke_q31";

end controller_functions_h;
