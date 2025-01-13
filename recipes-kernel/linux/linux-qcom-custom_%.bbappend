FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-disable-the-wpss-and-mpss-dts-to-bootup-successfully.patch \
            file://0002-add-the-UART_A-UART_B-UART_C-and-UART_D-dts.patch \
            file://0003-remove-the-useless-GPIO-pin-dts-setting.patch \
            file://0004-change-the-port-number-of-geni-uart-driver-to-5.patch \
            file://0005-support-the-RS-485-function-of-driver.patch \
            file://0006-support-short-pressing-power-key-to-power-off-device.patch \
            file://0007-support-the-GPIO_SYSFS-driver-function.patch \
            file://0008-add-the-defconfig-of-SPI-nor-flash-driver.patch \
            file://0009-support-the-SPI1-SPI2-and-SPI3-nor-flash-function.patch \
            file://0010-add-the-defconfig-of-RTC_DRV_RV8803-driver.patch \
            file://0011-modify-dts-to-support-the-epson-rx8900-rtc.patch \
            file://0012-add-the-defconfig-of-EEPROM_AT24-driver.patch \
            file://0013-modify-dts-to-support-the-ST-M24C64-EEPROM.patch \
            file://0014-modify-dts-to-support-the-PCIE0-fucntion.patch \
            file://0015-set-the-enable-pin-of-wlan-and-bt-to-output-high.patch \
            file://0016-modify-dts-to-set-primary-and-2nd-usb-port-as-host.patch \
            file://0017-add-checking-of-typec-orientation-reverse-for-the-dp.patch \
            file://0018-set-dts-of-typec-orientation-reverse-to-enable-dp.patch \
            file://0019-config-the-dts-of-ethernet.patch \
            file://0020-remove-PM7250B-dts-setting.patch \
            file://0021-remove-audio-dts-setting.patch \
            file://0022-remove-id-gpio-and-vbus-dts-setting-of-usb.patch \
            file://0023-remove-audio-routing-pmic-glink-and-typec-dts.patch \
            file://0024-modify-to-sw-cs-gpios-controlling-of-spi.patch \
            file://0025-configure-the-hdmi-and-sgtl5000-audio-dts.patch \
            file://0026-support-the-hdmi-and-sgtl5000-audio-function.patch \
            file://0027-add-the-SGTL5000-audio-defconfig.patch \
            file://0028-add-the-USB_NET_QMI_WWAN-defconfig.patch \
            file://0029-add-the-CONFIG_USB_NET_CDC_MBIM-defconfig.patch \
            file://0030-enable-the-emmc-function.patch \
            file://0031-set-the-max-link-speed-to-Gen2-of-pcie0.patch \
            file://0032-add-the-rtl8211f-phy-led-setting.patch \
            file://0033-Add-qps615-mac-device-tree-for-phy-interface.patch \
            file://0034-add-the-ROM-2860-A1-board-type.patch \
            file://0035-dts-create-the-HDMI-and-LVDS-dts.patch \
            file://0036-dts-set-the-direction-and-value-of-some-gpio-pins.patch \
            file://0037-add-the-CONFIG_SYSVIPC-defconfig-for-the-share-memor.patch \
	   "
