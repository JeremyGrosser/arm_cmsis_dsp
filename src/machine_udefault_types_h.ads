pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package machine_udefault_types_h is

   subtype uu_int8_t is signed_char;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:41

   subtype uu_uint8_t is unsigned_char;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:43

   subtype uu_int16_t is short;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:55

   subtype uu_uint16_t is unsigned_short;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:57

   subtype uu_int32_t is long;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:77

   subtype uu_uint32_t is unsigned_long;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:79

   subtype uu_int64_t is Long_Long_Integer;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:103

   subtype uu_uint64_t is Extensions.unsigned_long_long;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:105

   subtype uu_int_least8_t is signed_char;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:134

   subtype uu_uint_least8_t is unsigned_char;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:136

   subtype uu_int_least16_t is short;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:160

   subtype uu_uint_least16_t is unsigned_short;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:162

   subtype uu_int_least32_t is long;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:182

   subtype uu_uint_least32_t is unsigned_long;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:184

   subtype uu_int_least64_t is Long_Long_Integer;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:200

   subtype uu_uint_least64_t is Extensions.unsigned_long_long;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:202

   subtype uu_intmax_t is Long_Long_Integer;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:214

   subtype uu_uintmax_t is Extensions.unsigned_long_long;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:222

   subtype uu_intptr_t is int;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:230

   subtype uu_uintptr_t is unsigned;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/machine/_default_types.h:232

end machine_udefault_types_h;
