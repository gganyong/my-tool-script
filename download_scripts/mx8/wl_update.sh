cp wl_rootfs/Image /tftpboot/ganyong/mx8/
cp wl_rootfs/*.dtb /tftpboot/ganyong/mx8/
mkdir -p  /nfsroot/ganyong/mx8/
cd /nfsroot/ganyong/mx8/
rm * -rf
mv /nfsroot/ganyong/download_mx8/wl_rootfs/*.tar.bz2 .
tar -xjvf *.tar.bz2
mv *.tar.bz2 /nfsroot/ganyong/download_mx8/wl_rootfs/
cd -
cp wl_test/* /nfsroot/ganyong/mx8/home/root -rf
