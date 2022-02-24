This is a build of the ARM CMSIS DSP library with Alire and gpr rather than CMake. This is not well tested, but I was able to run an FFT on the RP2040 with it.

There are quite a few compile flags defined in CMake that need to be added to the gpr/alire config. This is a work in progress.

See the comments in [arm_math.h](https://github.com/ARM-software/CMSIS_5/blob/773cdffff47e6ffca2e9e4d5d422c2cd2570f26f/CMSIS/DSP/Include/arm_math.h) for usage information.
