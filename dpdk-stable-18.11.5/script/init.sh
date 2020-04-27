ROOT_DIR=`pwd`
OWNER=`whoami`

echo $OWNER
if [ $OWNER != "root" ]; then
        echo "WARN: the user is $WONER ,root priviledges required"
        exit -1
fi

#find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==1 {print $1}')) | awk 'NR==1'i
user_pf=$(find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==2 {print $1}')) | awk 'NR==1')/resource2

#user_pf="/sys/bus/pci/devices/0000:d9:00.1/resource2"

echo "1 configure the loop register"
echo $user_pf
#echo "configure the loop register"
sudo ./pcimem/pcimem ${user_pf} 0x00110204 w
sudo ./pcimem/pcimem ${user_pf} 0x00100014 w 0x01
sudo ./pcimem/pcimem ${user_pf} 0x0010000C w 0x10
sudo ./pcimem/pcimem ${user_pf} 0x00100204 w
sudo ./pcimem/pcimem ${user_pf} 0x0010000C w 0x01
sudo ./pcimem/pcimem ${user_pf} 0x00100204 w
sudo ./pcimem/pcimem ${user_pf} 0x00100204 w

echo "loop config complete"
echo " "

echo "2 load the PF kernel driver"
sudo insmod qdma.ko
echo "load PF kernel driver complete"
echo " "

echo "3 based on the PF0 create 1 VF"
echo 0 > $(find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==1 {print $1}')) | awk 'NR==1')/sriov_numvfs
echo 8 > $(find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==1 {print $1}')) | awk 'NR==1')/sriov_numvfs
echo "create  VF complete"
echo " "

echo "4 setup the huge page"
mkdir /mnt/huge
mount -t hugetlbfs nodev /mnt/huge
echo "setup hugepage complete"
echo " "

echo "5 load VF uio driver"
modprobe uio
insmod x86_64-native-linuxapp-gcc/kmod/igb_uio.ko
echo "load VF driver complete"
echo " "

echo "6 bind the first VF igb_uio driver"
for number in {0..7}
do 
   vf_bdf=$(lspci -d 10ee: | awk 'NR==5 + $number {print $1}')
   echo "bind vf0_bdf"
   usertools/dpdk-devbind.py -b igb_uio $vf_bdf
done
echo "bind VF driver complete"
echo " "
