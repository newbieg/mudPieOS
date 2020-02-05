# mudPieOS
A template for those who want to create their own OS for the Raspberry Pi. Following OSDevWiki's Raspberry Pi Bare Bones Page (https://wiki.osdev.org/Raspberry_Pi_Bare_Bones). I will differ in portions that make sense to myself, such as a preferrence for true assembly over inline assembly that you find in their tutorials.

## Expected User
I expect that you have experience in C/C++/assembly and that you have built a cross compiler before. This project is a template for implementing a very basic kernel. 
This OS is not a fully functional computer OS, but a starting point. I can concieve of instances in which you may want to access the clossest point to the hardware for robotics, or in which you want to experiment with the cpu without the kernel getting in your way. Use at your own risk.

## Build
First, set up your cross compilers. You need two, one with the target "arm-none-eabi", the other with "aarch64-elf". Go to wiki.osdev.org and follow the cross-compiler tutorial for proper instructions. I will include a binary of the OS that simply prints hello world that you can install to see it work.

## Install
I'll let you know when I get that far.

Notes:
+ The boot partition should be formatted to fat32
+ If a "Proper" itteration of the kernel.img is not available, a newer raspi can generally run an older kernel.img version, it just won't benefit from newer hardware options (such as 64 bit mode)



## If you find this git page a little lacking; 
That's the point. It's a jumping off point. If you want to continue with Raspi OS Design I want to recommend https://github.com/s-matyukevich/raspberry-pi-os as an interesting tutorial site.

# Ultimate goal: 
There is none. This is a hobbyOS. It's a point of study, and as such I will always try to provide resources to sites that influence changes that I make to the base-point. 
