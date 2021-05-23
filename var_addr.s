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
	.file	"var_addr.c"
	.section	.GCC.command.line,"MS",%progbits,1
	.ascii	"-imultilib thumb/v6-m/nofp"
	.space	1
	.ascii	"-D__USES_INITFINI__"
	.space	1
	.ascii	"var_addr.c"
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
	.global	p_ro
	.global	ro
	.global	p_rw
	.global	rw
	.section	.rodata
	.align	2
	.type	ro, %object
	.size	ro, 4
ro:
	.word	1
	.data
	.align	2
	.type	rw, %object
	.size	rw, 4
rw:
	.word	1
	.section	.data.rel,"aw"
	.align	2
	.type	p_rw, %object
	.size	p_rw, 4
p_rw:
	.word	rw
	.section	.data.rel.ro,"aw"
	.align	2
	.type	p_ro, %object
	.size	p_ro, 4
p_ro:
	.word	ro
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
