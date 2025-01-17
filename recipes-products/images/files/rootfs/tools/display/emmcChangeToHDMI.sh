#!/bin/sh

setenforce 0
echo -n $'\x02' > /tmp/HDMI
dd if=/tmp/HDMI of=/dev/mmcblk0p58 bs=1 seek=22 conv=fsync 2> /dev/null

echo "==================================="
echo "Change the primary display to HDMI."
echo "Done."
echo "Reboot the device."
echo "==================================="

reboot
