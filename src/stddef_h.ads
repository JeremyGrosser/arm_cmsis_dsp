pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package stddef_h is

   --  unsupported macro: NULL ((void *)0)
   --  arg-macro: procedure offsetof (TYPE, MEMBER)
   --    __builtin_offsetof (TYPE, MEMBER)
   subtype ptrdiff_t is int;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/lib/gcc/arm-eabi/11.2.0/include/stddef.h:143

   subtype size_t is unsigned;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/lib/gcc/arm-eabi/11.2.0/include/stddef.h:209

   subtype wchar_t is unsigned;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/lib/gcc/arm-eabi/11.2.0/include/stddef.h:321

   subtype wint_t is unsigned;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/lib/gcc/arm-eabi/11.2.0/include/stddef.h:350

   type max_align_t is record
      uu_max_align_ll : aliased Long_Long_Integer;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/lib/gcc/arm-eabi/11.2.0/include/stddef.h:416
      uu_max_align_ld : aliased long_double;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/lib/gcc/arm-eabi/11.2.0/include/stddef.h:417
   end record
   with Convention => C_Pass_By_Copy;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/lib/gcc/arm-eabi/11.2.0/include/stddef.h:426

end stddef_h;
