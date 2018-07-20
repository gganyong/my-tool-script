#!/bin/bash
. /opt/fsl-imx-internal-xwayland/4.9.88-2.0.0/environment-setup-cortexa9hf-neon-poky-linux-gnueabi
export ROOTFS=$SDKTARGETSYSROOT
#export ROOTFS=/nfsroot/ganyong/mx6
export XSERVER_GREATER_THAN_13=1
export BUILD_IN_YOCTO=1
export BUSID_HAS_NUMBER=1
export YOCTO=1
export CROSS_COMPILE=arm-poky-linux-gnueabi-
export sysroot=$ROOTFS
#make clean
#make
export LFLAGS="$LFLAGS --sysroot=$ROOTFS"
export CFLAGS="-mfpu=vfp -mfloat-abi=hard -march=armv7-a -DHAVE_G2D --sysroot=$ROOTFS"
#make clean
make
#./fastbuild.sh $1 sysroot=$ROOTFS  BUILD_HARD_VFP=1 YOCTO=1 BUSID_HAS_NUMBER=1 BUILD_IN_YOCTO=1
unset VIVANTE_NO_VG                                                                                                     
unset WAYLAND_DIR                                                                                                       
unset ROOTFS_USR                                                                                                        
unset DFB_DIR                                                                                                           
unset YOCTO_BUILD  
