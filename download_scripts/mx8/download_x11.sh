download_dir=x11_rootfs
rm $download_dir -rf
mkdir $download_dir
#head_url=http://shlinux22.ap.freescale.net/internal-only/Linux_IMX_4.9.X_1.X/latest/
#head_url=http://shlinux22.ap.freescale.net/internal-only/Linux_IMX_MX8/latest/
#head_url=http://shlinux22.ap.freescale.net/internal-only/Linux_IMX_MX8_MSCALE_BETA/latest/
#head_url=http://shlinux22.ap.freescale.net/internal-only/Linux_IMX_4.9_morty_trunk_next_mx8/latest/
head_url=http://shlinux22.ap.freescale.net/internal-only/Linux_IMX_MX8_BETA/latest/
yocto_url=$head_url/fsl-imx-internal-x11/
image_url=$head_url/common_bsp/Image-imx8_all.bin
qm_dtb_url=$head_url/common_bsp/Image-fsl-imx8qm-mek.dtb
qxp_dtb_url=$head_url/common_bsp/Image-fsl-imx8qxp-mek.dtb
#mscal_dtb_url=$head_url/common_bsp/Image-fsl-imx8mq-evk.dtb
mscal_dtb_url=$head_url/common_bsp/Image-fsl-imx8mq-hdmi.dtb
wget $image_url -O $download_dir/Image
wget $qm_dtb_url -O $download_dir/fsl-imx8qm-mek.dtb
wget $qxp_dtb_url -O $download_dir/fsl-imx8qxp-mek.dtb
wget $mscal_dtb_url -O $download_dir/fsl-imx8mq-mek.dtb
wget $yocto_url
#name=`grep -o "test-internal-qt5-imx8_all-[0-9]*.rootfs.tar.bz2" index.html | awk 'NR==1'`
name=`grep -o "test-internal-qt5-imx8qxpmek-[0-9]*.rootfs.tar.bz2" index.html | awk 'NR==1'`
rm index.html
echo name=:
echo $name
rootfs_url=$yocto_url$name
rootfs_download=$download_dir/$name
echo $rootfs_url
echo $rootfs_download
wget $rootfs_url -O $rootfs_download
