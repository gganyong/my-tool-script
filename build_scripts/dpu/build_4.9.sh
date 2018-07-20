#!/bin/bash
. /opt/fsl-imx-internal-xwayland/4.9-rocko/environment-setup-aarch64-poky-linux
#. /opt/fsl-imx-internal-xwayland/4.14.34-next/environment-setup-aarch64-poky-linux
export ROOTFS=$SDKTARGETSYSROOT
make clean
make
