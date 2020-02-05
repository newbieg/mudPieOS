These are direct out of the raspbian boot sector. I do not actually know which license they each fall under, so please use with caution.

The instructions for installing your own kernel are basically that you need these three files, and your kernel.img, kernel7.img and kernel8.img to be able to run on all raspi versions from A, A+, zero, B, B+, 2, 3, and 4.

Don't forget your different cross compilers between those kernel versions.


## Notes: 
+ bootcode.bin is no longer required for Rspi4, it's been moved closer to hardware (https://www.raspberrypi.org/documentation/configuration/boot_folder.md)
+ config.txt is used instead of bios. Use it to set many options including memory allocation and overclock. An empty file will result in all options set to default settings.

