mkdir -p /mnt/nfs
mount -t nfs -o nolock,nfsvers=3,vers=3 10.192.244.37:/rootfs/wb /mnt/nfs
cd /mnt/nfs/vte_mx80
. ./manual_test
