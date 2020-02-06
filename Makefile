all: pi pi2 pi4

pi:
	#building kernel for pi A, B, A+, B+, Zero
	arm-none-eabi-gcc -mcpu=arm1176jzf-s -fpic -ffreestanding -c boot.S -o boot.o
	arm-none-eabi-gcc -mcpu=arm1176jzf-s -fpic -ffreestanding -std=gnu99 -c kernel.c -o kernel.o -O2 -Wall -Wextra
	arm-none-eabi-gcc -T linker.ld -o myos.elf -ffreestanding -nostdlib boot.o kernel.o -lgcc
	arm-none-eabi-objcopy myos.elf -O binary kernel7.img


pi2:
	#building kernel for pi 2, useable by 3 and 4
	arm-none-eabi-gcc -mcpu=cortex-a7 -fpic -ffreestanding -c boot7.S -o boot7.o
	arm-none-eabi-gcc -mcpu=arm1176jzf-s -fpic -ffreestanding -std=gnu99 -c kernel.c -o kernel7.o -O2 -Wall -Wextra
	arm-none-eabi-gcc -T linker.ld -o myos7.elf -ffreestanding -nostdlib boot.o kernel7.o -lgcc
	arm-none-eabi-objcopy myos7.elf -O binary kernel7.img

pi4: 
	#building 64 bit kernel for pi 3 and 4 (Requires aarch64 cross compiler and binutils)
	aarch64-elf-as -c boot8.S -o boot8.o
	aarch64-elf-gcc -ffreestanding -c kernel.c -o kernel8.o -O2 -Wall -Wextra
	aarch64-elf-gcc -T linker64.ld -o myos8.elf -ffreestanding -O2 -nostdlib boot8.o kernel8.o -lgcc 
	aarch64-elf-objcopy myos8.elf -O binary kernel8.img

clean:
	rm *.o myos*.elf 

