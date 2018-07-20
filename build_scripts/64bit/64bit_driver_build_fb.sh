#!/bin/sh
. /opt/fsl-imx-xwayland/4.9.51-mx8-beta/environment-setup-aarch64-poky-linux
export ARCH=arm64-yocto
#export SDKTARGETSYSROOT=/nfsroot/ganyong/8dv
#export SDKTARGETSYSROOT=/home/ganyong/share_77/work/sdk-rootfs/64bit-fb
export X11_ARM_DIR=
export ROOTFS=$SDKTARGETSYSROOT
export ROOTFS_USR=$ROOTFS/usr
export WAYLAND_DIR=
export YOCTO_BUILD=1
export CC="${CC%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
export CFLAGS=" -O2 -pipe -feliminate-unused-debug-types --sysroot=$SDKTARGETSYSROOT"
export CXXFLAGS=" -O2 -pipe -feliminate-unused-debug-types"
unset LD
unset LDFLAGS
#export KERNEL_DIR=/home/ganyong/share_77/work/repo-kernel/git-kernel/linux-imx
#./driver_build_sample_wl.sh clean
./driver_build_sample_fb.sh                                                   
unset ROOTFS_USR                                                                                                        
unset YOCTO_BUILD  
