qemu-system-aarch64 \
  -m 1024 -M virt \
  -drive file=/Users/gwest/QEMU/qemu-tinycore-blankimage/tcdisk.img,format=raw,index=0,media=disk \ 
  -cpu cortex-a53 \
  -nographic \
  -serial mon:stdio \
#  -device virtio-blk-device,drive=hd-root \
  -netdev user,id=net0,hostfwd=tcp::5522-:22,hostfwd=tcp::22280-:8080 \
  -device virtio-net-device,netdev=net0 \
  -no-reboot 

