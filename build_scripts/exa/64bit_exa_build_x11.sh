#!/bin/bash
. /opt/fsl-imx-xwayland/4.9.51-mx8-beta/environment-setup-aarch64-poky-linux
export ROOTFS=$SDKTARGETSYSROOT
export ROOTFS=/nfsroot/ganyong/mx8/
export SDKTARGETSYSROOT=$ROOTFS
export XSERVER_GREATER_THAN_13=1
echo $ROOTFS
export LFLAGS="$LFLAGS --sysroot=$ROOTFS"
export BUILD_HARD_VFP=1
export YOCTO=1
export BUSID_HAS_NUMBER=1
export X11_DRI3=1
export CC="${CC%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
export CXX="${CXX%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
export LD="${LD%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
make clean
make
#./fastbuild.sh $1 sysroot=$ROOTFS  BUILD_HARD_VFP=1 YOCTO=1 BUSID_HAS_NUMBER=1

unset VIVANTE_NO_VG                                                                                                     
unset WAYLAND_DIR                                                                                                       
unset ROOTFS_USR                                                                                                        
unset DFB_DIR                                                                                                           
unset YOCTO_BUILD  
