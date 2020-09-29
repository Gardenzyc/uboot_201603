#! /bin/sh

source /opt/fsl-imx-fb/4.1.15-2.1.0/environment-setup-cortexa9hf-neon-poky-linux-gnueabi

$CC -v
make myimx6ek314-6q-2g_defconfig
make

mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "myzr bootscripts" -d board/myzr/bootscripts/myimx6a9_l4115_script.cmd /home/shared_file/arm_build_4.1.15/my_environment.scr

cp u-boot.imx /home/shared_file/arm_build_4.1.15/uboot-myimx6ek314-6q-2g.imx
