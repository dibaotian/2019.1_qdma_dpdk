echo "6 bind the first VF igb_uio driver"
for number in {0..7}
do
   line_num=$((5 + number))
   #echo $line_num
   vf_bdf=$(lspci -d 10ee: | awk 'NR=="'$line_num'" {print $1}')
   echo "bind $vf_bdf"
   ../usertools/dpdk-devbind.py -b igb_uio $vf_bdf
done
echo "bind VF driver complete"

