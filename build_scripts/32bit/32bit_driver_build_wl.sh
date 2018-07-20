#!/bin/bash
#source /opt/poky/xwayland-1.9/environment-setup-cortexa9hf-vfp-neon-freescale-linux-gnueabi
. /opt/fsl-imx-xwayland/4.1.33-3.0.0/environment-setup-cortexa9hf-neon-poky-linux-gnueabi
export ARCH=arm-yocto
export ROOTFS=$SDKTARGETSYSROOT
#export ROOTFS=/nfsroot/ganyong/mx6/
#export X11_ARM_DIR=$ROOTFS/usr
export WAYLAND_DIR=$ROOTFS
export BUILD_OPTION_VIVANTE_ENABLE_VG=0
#export ROOTFS_USR=$X11_ARM_DIR
export YOCTO_BUILD=1
export BUILD_HARD_VFP=1
export KERNEL_DIR=/home/ganyong/share_77/work/repo-kernel/git-kernel/linux-imx
#./driver_build_sample_x11.sh clean                                                       
./driver_build_sample_wl.sh $1
#make -C ../fsl_drv/g2d/source clean
#make -C ../fsl_drv/g2d/source
unset ROOTFS_USR                                                                                                        
unset YOCTO_BUILD  
