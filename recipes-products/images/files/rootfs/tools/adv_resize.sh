#!/bin/sh

DF=$(df)

if echo "$DF" | grep -q "/dev/sda"; then
    echo "resize the ufs rootfs system : /dev/sda5"
    resize2fs /dev/sda5
else
    echo "resize the emmc rootfs system : /dev/mmcblk0p20"
    resize2fs /dev/mmcblk0p20
fi

rm /lib/systemd/system/adv_resize.service
sync

