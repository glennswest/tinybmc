qemu-system-aarch64 \
  -m 1024 -M virt \
  -cpu cortex-a53 \
  -nographic \
  -serial mon:stdio \
  -netdev user,id=net0,hostfwd=tcp::5522-:22,hostfwd=tcp::22280-:8080 \
  -device virtio-net-device,netdev=net0 \
  -no-reboot \
  -drive file=/Users/gwest/QEMU/qemu-tinycore-blankimage/tcdisk.img,format=raw,index=0,media=disk  

