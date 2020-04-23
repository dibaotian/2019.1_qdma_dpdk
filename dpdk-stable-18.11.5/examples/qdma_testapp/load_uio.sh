mkdir /mnt/huge
mount -t hugetlbfs nodev /mnt/huge
modprobe uio
insmod ../../x86_64-native-linuxapp-gcc/kmod/igb_uio.ko
../../usertools/dpdk-devbind.py -b igb_uio d9:00.0
#../../usertools/dpdk-devbind.py -b igb_uio d9:00.0
#../../usertools/dpdk-devbind.py -b igb_uio d9:00.1
# ../../usertools/dpdk-devbind.py -b igb_uio d9:00.2
# ../../usertools/dpdk-devbind.py -b igb_uio d9:00.3
