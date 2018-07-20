mkdir -p /mnt/nfs
mount -t nfs -o nolock,nfsvers=3,vers=3 10.192.244.37:/rootfs/wb /mnt/nfs
cd /mnt/nfs/vte_mx63
. ./manual_test
