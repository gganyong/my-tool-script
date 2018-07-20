#!/bin/sh
#. /opt/fsl-imx-internal-xwayland/4.9.51-mx8-beta/environment-setup-aarch64-poky-linux
. /opt/fsl-imx-internal-wayland/4.9-rocko-test/environment-setup-aarch64-poky-linux
unset LDFLAGS
#make -j8 ARCH=arm64 defconfig
#make clean
make -j8 ARCH=arm64 
make dtbs ARCH=arm64
