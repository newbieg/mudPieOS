all:
	arm-none-eabi-gcc -mcpu=arm1176jzf-s -fpic -ffreestanding -c boot.S -o boot.o
	arm-none-eabi-gcc -mcpu=arm1176jzf-s -fpic -ffreestanding -std=gnu99 -c kernel.c -o kernel.o -O2 -Wall -Wextra
	arm-none-eabi-gcc -T linker.ld -o myos.elf -ffreestanding -nostdlib boot.o kernel.o -lgcc
	arm-none-eabi-objcopy myos.elf -O binary kernel7.img