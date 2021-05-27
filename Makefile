# ARM: GCC embedded PIC

CC=arm-none-eabi-gcc
OBJDUMP=arm-none-eabi-objdump
CFLAGS=-std=gnu11 -Wbad-function-cast  -Wjump-misses-init  -Wnested-externs  -Wold-style-definition  -frecord-gcc-switches -Wstack-usage=2048 -Wall -Wextra -Wdate-time  -Wfloat-equal  -Wformat-nonliteral  -Wformat-security  -Wformat-y2k  -Winit-self  -Wlogical-op  -Wmissing-field-initializers  -Wmissing-format-attribute  -Wmissing-noreturn  -Wmultichar  -Wpointer-arith  -Wredundant-decls  -Wshadow  -Wtrampolines  -Wunused-macros  -Wunused-parameter  -Wwrite-strings -mthumb -mfloat-abi=soft -mcpu=cortex-m0 -march=armv6s-m -O3 -fPIC -msingle-pic-base -mpic-register=r9 -mno-pic-data-is-text-relative #-fdata-sections -ffunction-sections

# RISC-V

#CC=~/tools/crt-elf-rv32imc-ilp32/bin/riscv32-unknown-elf-gcc
#OBJDUMP=~/tools/crt-elf-rv32imc-ilp32/bin/riscv32-unknown-elf-objdump
#CFLAGS=-std=gnu11 -Wbad-function-cast  -Wjump-misses-init  -Wnested-externs  -Wold-style-definition  -frecord-gcc-switches -Wstack-usage=2048 -Wall -Wextra -Wdate-time  -Wfloat-equal  -Wformat-nonliteral  -Wformat-security  -Wformat-y2k  -Winit-self  -Wlogical-op  -Wmissing-field-initializers  -Wmissing-format-attribute  -Wmissing-noreturn  -Wmultichar  -Wpointer-arith  -Wredundant-decls  -Wshadow  -Wtrampolines  -Wunused-macros  -Wunused-parameter  -Wwrite-strings -O3 -fPIE

# ARM: ROPI+RWPI

#CC=~/llvm-project/build/debug-all/bin/clang
#OBJDUMP=~/llvm-project/build/debug-all/bin/llvm-objdump
#CFLAGS=--target=arm -std=gnu11 -Wbad-function-cast  -Wnested-externs  -Wold-style-definition  -frecord-gcc-switches -Wall -Wextra -Wdate-time  -Wfloat-equal  -Wformat-nonliteral  -Wformat-security  -Wformat-y2k  -Winit-self  -Wmissing-field-initializers  -Wmissing-format-attribute  -Wmissing-noreturn  -Wmultichar  -Wpointer-arith  -Wredundant-decls  -Wshadow  -Wunused-macros  -Wunused-parameter  -Wwrite-strings -mthumb -mfloat-abi=soft -O3 -fropi -frwpi

build:
	$(CC) $(CFLAGS) -S funcs.c
	$(CC) $(CFLAGS) -c funcs.c
	$(OBJDUMP) -d funcs.o > funcs-dis.txt
	$(OBJDUMP) --reloc funcs.o > funcs-rels.txt
	readelf -WS funcs.o > funcs-sections.txt

	$(CC) $(CFLAGS) -S rw_var.c
	$(CC) $(CFLAGS) -c rw_var.c
	$(OBJDUMP) -d rw_var.o > rw_var-dis.txt
	$(OBJDUMP) --reloc rw_var.o > rw_var-rels.txt
	readelf -WS rw_var.o > rw_var-sections.txt

	$(CC) $(CFLAGS) -S ro_var.c
	$(CC) $(CFLAGS) -c ro_var.c
	$(OBJDUMP) -d ro_var.o > ro_var-dis.txt
	$(OBJDUMP) --reloc ro_var.o > ro_var-rels.txt
	readelf -WS ro_var.o > ro_var-sections.txt

	$(CC) $(CFLAGS) -S var_addr.c
	$(CC) $(CFLAGS) -c var_addr.c
	$(OBJDUMP) -d var_addr.o > var_addr-dis.txt
	$(OBJDUMP) --reloc var_addr.o > var_addr-rels.txt
	readelf -WS var_addr.o > var_addr-sections.txt

.PHONY: build
