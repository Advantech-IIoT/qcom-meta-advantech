#!/bin/sh

setenforce 0
echo -n $'\x01' > /tmp/LVDS
dd if=/tmp/LVDS of=/dev/mmcblk0p58 bs=1 seek=22 conv=fsync 2> /dev/null

echo "==================================="
echo "Change the primary display to LVDS."
echo "Done."
echo "Reboot the device."
echo "==================================="

reboot
