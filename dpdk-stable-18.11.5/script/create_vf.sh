echo "3 based on the PF0 create 1 VF"
echo 0 > $(find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==1 {print $1}')) | awk 'NR==1')/sriov_numvfs
echo 8 > $(find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==1 {print $1}')) | awk 'NR==1')/sriov_numvfs
echo "create  VF complete"
echo " "

lspci -d 10ee:
