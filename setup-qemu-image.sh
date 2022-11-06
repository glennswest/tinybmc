qemu-img create -f raw ~/QEMU/qemu-tinycore-blankimage/tcdisk.img 256M
gunzip < ~/tinybmc/piCore.gz | dd of=/Users/gwest/QEMU/qemu-tinycore-blankimage/tcdisk.img bs=1M
qemu-img create -f raw ~/QEMU/qemu-tinycore-blankimage/tcswap.img 256M



