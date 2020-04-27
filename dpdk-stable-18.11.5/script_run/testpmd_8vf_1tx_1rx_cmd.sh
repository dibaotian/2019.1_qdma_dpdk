

#for number in {0..7}
#do
#   line_num=$((5 + number))
   #echo $line_nu
#   $(eval echo '$'${vf_bdf}${number})
   #$(eval echo '$'${vf_bdf}${number})=$(lspci -d 10ee: | awk 'NR=="'$line_num'" {print $1}')
#   echo $(eval echo '$'${vf_bdf}${number})
#done



#./../build/app/testpmd -cf -n4 -w d9:00.4,desc_prefetch=1,cmpt_desc_len=16 -w d9:00.5,desc_prefetch=1,cmpt_desc_len=16 -w d9:00.6,desc_prefetch=1,cmpt_desc_len=16 -w d9:00.7,desc_prefetch=1,cmpt_desc_len=16 -w d9:01.0,desc_prefetch=1,cmpt_desc_len=16 -w d9:01.1,desc_prefetch=1,cmpt_desc_len=16 -w d9:01.2,desc_prefetch=1,cmpt_desc_len=16 -w d9:01.3,desc_prefetch=1,cmpt_desc_len=16 --log-level pmd.net.qdma.init:8 -- -i --nb-cores=2 --rxq=1 --txq=1 --rxd=2048 --txd=2048 --burst=64 --mbuf-size=4224 --txpkts=128 --eth-peer=0,00:00:00:00:00:00  --eth-peer=1,08:00:00:00:00:00 --eth-peer=3,18:00:00:00:00:00 --eth-peer=4,20:00:00:00:00:00 --eth-peer=5,28:00:00:00:00:00 --eth-peer=6,30:00:00:00:00:00 --eth-peer=7,38:00:00:00:00:00 
 

./../build/app/testpmd -cf -n4 -w d9:00.4,desc_prefetch=1,cmpt_desc_len=16 -w d9:00.5,desc_prefetch=1,cmpt_desc_len=16 -w d9:00.6,desc_prefetch=1,cmpt_desc_len=16 -w d9:00.7,desc_prefetch=1,cmpt_desc_len=16 -w d9:01.0,desc_prefetch=1,cmpt_desc_len=16 -w d9:01.1,desc_prefetch=1,cmpt_desc_len=16 -w d9:01.2,desc_prefetch=1,cmpt_desc_len=16 -w d9:01.3,desc_prefetch=1,cmpt_desc_len=16 --log-level pmd.net.qdma.init:8 -- -i --nb-cores=1 --rxq=1 --txq=1 --rxd=2048 --txd=2048 --burst=64 --mbuf-size=4224 --txpkts=128 --eth-peer=0,00:00:00:00:00:00  --eth-peer=1,08:00:00:00:00:00 --eth-peer=2,20:00:00:00:00:00 --eth-peer=3,28:00:00:00:00:00 --eth-peer=4,30:00:00:00:00:00 --eth-peer=5,38:00:00:00:00:00 --eth-peer=6,40:00:00:00:00:00 --eth-peer=7,48:00:00:00:00:00 
