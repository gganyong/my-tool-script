cp x11_rootfs/Image /tftpboot/ganyong/mx8/
cp x11_rootfs/*.dtb /tftpboot/ganyong/mx8/
mkdir /nfsroot/ganyong/mx8/
cd /nfsroot/ganyong/mx8/
rm * -rf
mv /nfsroot/ganyong/download_mx8/x11_rootfs/*.tar.bz2 .
tar -xjvf *.tar.bz2
mv *.tar.bz2 /nfsroot/ganyong/download_mx8/x11_rootfs/
cd -
cp x11_test/* /nfsroot/ganyong/mx8/home/root/ -rf
