. /opt/fsl-imx-internal-xwayland/4.9.88-2.0.0/environment-setup-cortexa9hf-neon-poky-linux-gnueabi
make imx_v7_defconfig
#make clean
make -j4 zImage
make -j4 dtbs
make -j4 imx6q-sabresd.dtb
make -j4 imx6q-sabresd-ldo.dtb
make -j4 imx6qp-sabresd.dtb

