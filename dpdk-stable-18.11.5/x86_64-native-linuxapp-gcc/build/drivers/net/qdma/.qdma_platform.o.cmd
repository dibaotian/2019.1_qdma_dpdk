cmd_qdma_platform.o = gcc -Wp,-MD,./.qdma_platform.o.d.tmp  -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/home/min/byte_dance_nic/dpdk-stable-18.11.5/x86_64-native-linuxapp-gcc/include -include /home/min/byte_dance_nic/dpdk-stable-18.11.5/x86_64-native-linuxapp-gcc/include/rte_config.h -D_GNU_SOURCE -O3 -DDMA_BRAM_SIZE=524288 -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wdeprecated -Wno-address-of-packed-member -I/home/min/byte_dance_nic/dpdk-stable-18.11.5/drivers/net/qdma/qdma_access/ -I/home/min/byte_dance_nic/dpdk-stable-18.11.5/drivers/net/qdma/    -o qdma_platform.o -c /home/min/byte_dance_nic/dpdk-stable-18.11.5/drivers/net/qdma/qdma_platform.c 
