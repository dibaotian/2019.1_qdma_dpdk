cmd_linux/vmbus_bus.o = gcc -Wp,-MD,linux/.vmbus_bus.o.d.tmp  -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/home/min/byte_dance_nic/dpdk-stable-18.11.5/build/include -include /home/min/byte_dance_nic/dpdk-stable-18.11.5/build/include/rte_config.h -D_GNU_SOURCE -I/home/min/byte_dance_nic/dpdk-stable-18.11.5/drivers/bus/vmbus -O3 -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wdeprecated -Wno-address-of-packed-member -DALLOW_EXPERIMENTAL_API -I/home/min/byte_dance_nic/dpdk-stable-18.11.5/drivers/bus/vmbus/linux -I/home/min/byte_dance_nic/dpdk-stable-18.11.5/lib/librte_eal/common -I/home/min/byte_dance_nic/dpdk-stable-18.11.5/lib/librte_eal/linuxapp/eal    -o linux/vmbus_bus.o -c /home/min/byte_dance_nic/dpdk-stable-18.11.5/drivers/bus/vmbus/linux/vmbus_bus.c 
