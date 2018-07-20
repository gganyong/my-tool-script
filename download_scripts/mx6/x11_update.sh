cp x11_rootfs/zImage /tftpboot/ganyong/mx6/
cp x11_rootfs/*.dtb /tftpboot/ganyong/mx6/
mkdir -p  /nfsroot/ganyong/mx6/
cd /nfsroot/ganyong/mx6/
rm * -rf
mv /nfsroot/ganyong/download_mx6/x11_rootfs/*.tar.bz2 .
tar -xjvf *.tar.bz2
mv *.tar.bz2 /nfsroot/ganyong/download_mx6/x11_rootfs/
cd -
cp wl_test/* /nfsroot/ganyong/mx6/home/root -rf
