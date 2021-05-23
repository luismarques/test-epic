	.cpu cortex-m0
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"ro_var.c"
	.section	.GCC.command.line,"MS",%progbits,1
	.ascii	"-imultilib thumb/v6-m/nofp"
	.space	1
	.ascii	"-D__USES_INITFINI__"
	.space	1
	.ascii	"ro_var.c"
	.space	1
	.ascii	"-mthumb"
	.space	1
	.ascii	"-mfloat-abi=soft"
	.space	1
	.ascii	"-mcpu=cortex-m0"
	.space	1
	.ascii	"-msingle-pic-base"
	.space	1
	.ascii	"-mpic-register=r9"
	.space	1
	.ascii	"-mno-pic-data-is-text-relative"
	.space	1
	.ascii	"-march=armv6s-m"
	.space	1
	.ascii	"-O3"
	.space	1
	.ascii	"-Wbad-function-cast"
	.space	1
	.ascii	"-Wjump-misses-init"
	.space	1
	.ascii	"-Wnested-externs"
	.space	1
	.ascii	"-Wold-style-definition"
	.space	1
	.ascii	"-Wstack-usage=2048"
	.space	1
	.ascii	"-Wall"
	.space	1
	.ascii	"-Wextra"
	.space	1
	.ascii	"-Wdate-time"
	.space	1
	.ascii	"-Wfloat-equal"
	.space	1
	.ascii	"-Wformat-nonliteral"
	.space	1
	.ascii	"-Wformat-security"
	.space	1
	.ascii	"-Wformat-y2k"
	.space	1
	.ascii	"-Winit-self"
	.space	1
	.ascii	"-Wlogical-op"
	.space	1
	.ascii	"-Wmissing-field-initializers"
	.space	1
	.ascii	"-Wsuggest-attribute=format"
	.space	1
	.ascii	"-Wsuggest-attribute=noreturn"
	.space	1
	.ascii	"-Wmultichar"
	.space	1
	.ascii	"-Wpointer-arith"
	.space	1
	.ascii	"-Wredundant-decls"
	.space	1
	.ascii	"-Wshadow"
	.space	1
	.ascii	"-Wtrampolines"
	.space	1
	.ascii	"-Wunused-macros"
	.space	1
	.ascii	"-Wunused-parameter"
	.space	1
	.ascii	"-Wwrite-strings"
	.space	1
	.ascii	"-std=gnu11"
	.space	1
	.ascii	"-frecord-gcc-switches"
	.space	1
	.ascii	"-fPIC"
	.space	1
	.text
	.align	1
	.p2align 2,,3
	.global	f_ro_var_extern
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	f_ro_var_extern, %function
f_ro_var_extern:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r9
	ldr	r3, .L3
	@ sp needed
	ldr	r3, [r2, r3]
	ldr	r0, [r3]
	bx	lr
.L4:
	.align	2
.L3:
	.word	ro_var_extern(GOT)
	.size	f_ro_var_extern, .-f_ro_var_extern
	.align	1
	.p2align 2,,3
	.global	f_ro_var_noinit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	f_ro_var_noinit, %function
f_ro_var_noinit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r9
	ldr	r3, .L6
	@ sp needed
	ldr	r3, [r2, r3]
	ldr	r0, [r3]
	bx	lr
.L7:
	.align	2
.L6:
	.word	ro_var_noinit(GOT)
	.size	f_ro_var_noinit, .-f_ro_var_noinit
	.align	1
	.p2align 2,,3
	.global	f_ro_var_init_zero
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	f_ro_var_init_zero, %function
f_ro_var_init_zero:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	@ sp needed
	bx	lr
	.size	f_ro_var_init_zero, .-f_ro_var_init_zero
	.align	1
	.p2align 2,,3
	.global	f_ro_var_init
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	f_ro_var_init, %function
f_ro_var_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #7
	@ sp needed
	bx	lr
	.size	f_ro_var_init, .-f_ro_var_init
	.global	ro_var_init_zero
	.comm	ro_var_noinit,4,4
	.section	.rodata
	.align	2
	.type	ro_var_init_zero, %object
	.size	ro_var_init_zero, 4
ro_var_init_zero:
	.space	4
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
