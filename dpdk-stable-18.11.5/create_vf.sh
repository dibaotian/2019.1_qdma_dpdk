ROOT_DIR=`pwd`
OWNER=`whoami`

#echo $OWNER
if [ $OWNER != "root" ]; then
        echo "WARN: the user is $WONER ,root priviledges required"
        exit -1
fi


echo 1 > $(find /sys/bus/ -name $(echo 0000:$(lspci -d 10ee: | awk 'NR==1 {print $1}')) | awk 'NR==1')/sriov_numvfs
