pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package sys_lock_h is

   type uu_lock is null record;   -- incomplete struct

   type u_LOCK_T is access all uu_lock;  -- /home/synack/.config/alire/cache/dependencies/gnat_arm_elf_11.2.3_811265cb/arm-eabi/include/sys/lock.h:34

   --  skipped func __retarget_lock_init

   --  skipped func __retarget_lock_init_recursive

   --  skipped func __retarget_lock_close

   --  skipped func __retarget_lock_close_recursive

   --  skipped func __retarget_lock_acquire

   --  skipped func __retarget_lock_acquire_recursive

   --  skipped func __retarget_lock_try_acquire

   --  skipped func __retarget_lock_try_acquire_recursive

   --  skipped func __retarget_lock_release

   --  skipped func __retarget_lock_release_recursive

end sys_lock_h;
