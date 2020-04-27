ROOT_DIR=`pwd`
OWNER=`whoami`

#echo $OWNER
if [ $OWNER != "root" ]; then
        echo "WARN: the user is $WONER ,root priviledges required"
        exit -1
fi

#user_pf="/sys/devices/pci0000\:d8/0000\:d8\:00.0/0000\:d9\:00.0/resource2"
#find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==1 {print $1}')) | awk 'NR==1'i
user_pf=$(find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==2 {print $1}')) | awk 'NR==1')/resource2

#user_pf="/sys/bus/pci/devices/0000:d9:00.1/resource2"

echo $user_pf
sudo ./pcimem/pcimem ${user_pf} 0x00110204 w
#sleep 2s
#sudo ./pcimem/pcimem ${user_pf} 0x00110204 w
sleep 2s
sudo ./pcimem/pcimem ${user_pf} 0x00100014 w 0x01
sleep 2s
sudo ./pcimem/pcimem ${user_pf} 0x0010000C w 0x10
sleep 2s
sudo ./pcimem/pcimem ${user_pf} 0x00100204 w
sleep 2s
sudo ./pcimem/pcimem ${user_pf} 0x0010000C w 0x01
sleep 2s
sudo ./pcimem/pcimem ${user_pf} 0x00100204 w
sleep 2s
sudo ./pcimem/pcimem ${user_pf} 0x00100204 w
