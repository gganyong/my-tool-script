#!/bin/sh
#. /opt/fsl-imx-internal-wayland/4.9-rocko-test/environment-setup-aarch64-poky-linux
. /opt/fsl-imx-internal-xwayland/4.14.34-next/environment-setup-aarch64-poky-linux
export ARCH=arm64-yocto
#export SDKTARGETSYSROOT=/nfsroot/ganyong/mx8
export ROOTFS=$SDKTARGETSYSROOT 
export ROOTFS_USR=$ROOTFS/usr
export WAYLAND_DIR=$ROOTFS
export YOCTO_BUILD=1
#export CC="${CC%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
#export CC="ccache $CC"
unset LD
unset LDFLAGS
export KERNEL_DIR=/home/ganyong/share_77/work/repo-kernel/git-kernel/linux-imx
#./driver_build_sample_wl.sh clean
./driver_build_sample_wl.sh                                                   
#make -C ../fsl_drv/g2d/source clean
#make -C ../fsl_drv/g2d/source
unset ROOTFS_USR                                                                                                        
unset YOCTO_BUILD  
