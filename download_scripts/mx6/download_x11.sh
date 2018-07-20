download_dir=x11_rootfs
rm $download_dir -rf
mkdir -p $download_dir
head_url=http://shlinux22.ap.freescale.net/internal-only/Linux_IMX_Rocko_Legacy/latest/
yocto_url=$head_url/fsl-imx-internal-x11/
image_url=$head_url/common_bsp/zImage-imx6qpdlsolox.bin
qp_dtb_url=$head_url/common_bsp/zImage-imx6qp-sabresd.dtb
q_dtb_url=$head_url/common_bsp/zImage-imx6q-sabresd.dtb
wget $image_url -O $download_dir/zImage
wget $qp_dtb_url -O $download_dir/imx6qp-sabresd.dtb
wget $q_dtb_url -O $download_dir/imx6q-sabresd.dtb
wget $yocto_url
name=`grep -o "test-internal-qt5-imx6qpdlsolox-[0-9]*.rootfs.tar.bz2" index.html | awk 'NR==1'`
rm index.html
echo name=:
echo $name
rootfs_url=$yocto_url$name
rootfs_download=$download_dir/$name
echo $rootfs_url
echo $rootfs_download
wget $rootfs_url -O $rootfs_download
