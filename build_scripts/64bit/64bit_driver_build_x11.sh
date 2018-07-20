#!/bin/sh
#. /opt/fsl-imx-internal-xwayland-x64/4.1.15-2.0.0/environment-setup-aarch64-poky-linux
. /opt/fsl-imx-xwayland/4.9.51-mx8-beta/environment-setup-aarch64-poky-linux
export ARCH=arm64-yocto
export ROOTFS=$SDKTARGETSYSROOT
export X11_ARM_DIR=$ROOTFS/usr
export ROOTFS_USR=$X11_ARM_DIR
export YOCTO_BUILD=1
export CC="${CC%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
export CXX="${CXX%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
export LD="${LD%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
unset LD
unset LDFLAGS
#export KERNEL_DIR=/home/ganyong/share_77/work/repo-kernel/git-8dv/linux-2.6-testbuild
#./driver_build_sample_wl.sh                                                   
#./driver_build_sample_x11.sh clean
./driver_build_sample_x11.sh
#make -C ../fsl_drv/g2d/source clean
#make -C ../fsl_drv/g2d/source
unset VIVANTE_NO_VG                                                                                                     
unset ROOTFS_USR                                                                                                        
unset YOCTO_BUILD  
