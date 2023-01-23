#!/usr/bin/env bash

# memory_tweaks.sh

echo 'Swappiness setting - controls how aggressively the kernel will swap memory pages'
echo "Swappiness: $(cat /proc/sys/vm/swappiness)"

echo 'Dirty ratio and background ratio - controls the amount of dirty memory allowed in the system'
echo "Dirty ratio: $(cat /proc/sys/vm/dirty_ratio)"
echo "Dirty background ratio: $(cat /proc/sys/vm/dirty_background_ratio)"

echo 'Transparent huge pages - controls whether the kernel uses large pages for memory allocation'
echo "Transparent huge pages: $(cat /sys/kernel/mm/transparent_hugepage/enabled)"

echo 'IO scheduler - controls how the kernel schedules disk I/O operations'
echo "IO scheduler for NVME drives: $(cat /sys/block/nvme0n1/queue/scheduler)"
echo "IO scheduler for HDD drives: $(cat /sys/block/sda/queue/scheduler)"

echo 'Readahead - controls whether the kernel automatically reads ahead data from disk'
echo "Readahead: $(cat /sys/block/sda/queue/read_ahead_kb)"

echo 'Writeback - controls whether the kernel automatically writes dirty pages back to disk in larger chunks'
echo "Writeback: $(cat /proc/sys/vm/dirty_writeback_centisecs)"

# View current value of dirty_expire_centisecs
echo "dirty_expire_centisecs: $(cat /proc/sys/vm/dirty_expire_centisecs)"

# Change dirty_expire_centisecs to a lower value
# echo 3000 > /proc/sys/vm/dirty_expire_centisecs

# View current value of dirty_ratio
echo "dirty_ratio: $(cat /proc/sys/vm/dirty_ratio)"

# Change dirty_ratio to a lower value
# echo 20 > /proc/sys/vm/dirty_ratio

# View current value of dirty_background_ratio
echo "dirty_background_ratio: $(cat /proc/sys/vm/dirty_background_ratio)"

# Change dirty_background_ratio to a lower value
# echo 10 > /proc/sys/vm/dirty_background_ratio

# View current value of vm.swappiness
echo "vm.swappiness: $(cat /proc/sys/vm/swappiness)"

# Change vm.swappiness to a lower value
# echo 10 > /proc/sys/vm/swappiness

# View current value of vm.overcommit_memory
echo "vm.overcommit_memory: $(cat /proc/sys/vm/overcommit_memory)"

# Change vm.overcommit_memory to 2
# echo 2 > /proc/sys/vm/overcommit_memory

# View current value of vm.min_free_kbytes
echo "vm.min_free_kbytes: $(cat /proc/sys/vm/min_free_kbytes)"
