FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-GA1p1-Advantech-rom2860-enable-ethernet-rtl8211-RGMI.patch \
            file://0002-qps615-auto-load-module.patch \
"

MODULE_NAME = ""
