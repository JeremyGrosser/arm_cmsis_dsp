pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package svm_defines_h is

   type arm_ml_kernel_type is 
     (ARM_ML_KERNEL_LINEAR,
      ARM_ML_KERNEL_POLYNOMIAL,
      ARM_ML_KERNEL_RBF,
      ARM_ML_KERNEL_SIGMOID)
   with Convention => C;  -- DSP/Include/dsp/svm_defines.h:44

end svm_defines_h;
