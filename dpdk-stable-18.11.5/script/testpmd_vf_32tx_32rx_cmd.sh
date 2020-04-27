vf_bdf=$(lspci -d 10ee: | awk 'NR==5 {print $1}')
echo $vf_bdf 
./../build/app/testpmd -cf -n4 -w $vf_bdf,desc_prefetch=1,cmpt_desc_len=16 --log-level pmd.net.qdma.init:8 -- -i --nb-cores=2 --rxq=32 --txq=32 --rxd=2048 --txd=2048 --burst=64 --mbuf-size=4224 --txpkts=128 --eth-peer=0,00:00:00:00:00:00
