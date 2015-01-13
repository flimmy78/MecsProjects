#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x41572473, "module_layout" },
	{ 0x3ec8886f, "param_ops_int" },
	{ 0xa301657f, "create_proc_entry" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xe174aa7, "__init_waitqueue_head" },
	{ 0x59db01e4, "proc_mkdir" },
	{ 0x2f812788, "tty_register_driver" },
	{ 0xde0bdcff, "memset" },
	{ 0xc7af224e, "tty_set_operations" },
	{ 0x67b27ec1, "tty_std_termios" },
	{ 0x27e1a049, "printk" },
	{ 0xa1a1f6e6, "alloc_tty_driver" },
	{ 0x5f128d81, "put_tty_driver" },
	{ 0x656abe19, "tty_unregister_driver" },
	{ 0x56ce0b62, "remove_proc_entry" },
	{ 0x14ac6575, "tty_insert_flip_string_flags" },
	{ 0x2623f6d7, "do_SAK" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0xb8e7ce2c, "__put_user_8" },
	{ 0x6d334118, "__get_user_8" },
	{ 0xb2fd5ceb, "__put_user_4" },
	{ 0x4c4fef19, "kernel_stack" },
	{ 0x1b0cf601, "tty_check_change" },
	{ 0xb89e62ec, "remove_wait_queue" },
	{ 0x1000e51, "schedule" },
	{ 0xda5661a3, "add_wait_queue" },
	{ 0xffd5a395, "default_wake_function" },
	{ 0x4f6b400b, "_copy_from_user" },
	{ 0x4f8b5ddb, "_copy_to_user" },
	{ 0xa1c76e0a, "_cond_resched" },
	{ 0xc6cbbc89, "capable" },
	{ 0x3032758b, "__tracepoint_module_get" },
	{ 0xa1ee82a6, "tty_wait_until_sent" },
	{ 0x9abe989d, "tty_hung_up_p" },
	{ 0x4302d0eb, "free_pages" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0x133cade5, "interruptible_sleep_on_timeout" },
	{ 0xc74eb69f, "tty_flip_buffer_push" },
	{ 0x179a859a, "tty_insert_flip_string_fixed_flag" },
	{ 0x43ec2854, "tty_buffer_request_room" },
	{ 0x29bf5fbb, "tty_hangup" },
	{ 0x62d38076, "tty_ldisc_deref" },
	{ 0xf89843f9, "schedule_work" },
	{ 0x37a0cba, "kfree" },
	{ 0x3258e15e, "tty_ldisc_ref" },
	{ 0x231926a3, "module_put" },
	{ 0x236c8c64, "memcpy" },
	{ 0x88941a06, "_raw_spin_unlock_irqrestore" },
	{ 0x587c70d8, "_raw_spin_lock_irqsave" },
	{ 0x1a925a66, "down" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0x57b09822, "up" },
	{ 0x23287643, "current_task" },
	{ 0x7d11c268, "jiffies" },
	{ 0xf09c7f68, "__wake_up" },
	{ 0xb4390f9a, "mcount" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "BE97754EBF030AF44A5F4A1");
