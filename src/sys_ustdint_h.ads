pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with machine_udefault_types_h;

package sys_ustdint_h is

   subtype int8_t is machine_udefault_types_h.uu_int8_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:20

   subtype uint8_t is machine_udefault_types_h.uu_uint8_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:24

   subtype int16_t is machine_udefault_types_h.uu_int16_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:32

   subtype uint16_t is machine_udefault_types_h.uu_uint16_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:36

   subtype int32_t is machine_udefault_types_h.uu_int32_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:44

   subtype uint32_t is machine_udefault_types_h.uu_uint32_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:48

   subtype int64_t is machine_udefault_types_h.uu_int64_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:56

   subtype uint64_t is machine_udefault_types_h.uu_uint64_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:60

   subtype intmax_t is machine_udefault_types_h.uu_intmax_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:67

   subtype uintmax_t is machine_udefault_types_h.uu_uintmax_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:72

   subtype intptr_t is machine_udefault_types_h.uu_intptr_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:77

   subtype uintptr_t is machine_udefault_types_h.uu_uintptr_t;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/_stdint.h:82

end sys_ustdint_h;
