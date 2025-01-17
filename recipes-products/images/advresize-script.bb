SUMMARY = "Advantech resize rootfs service"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"

SRC_URI = "file://rootfs/tools/adv_resize.sh \
           file://rootfs/lib/systemd/system/adv_resize.service"

inherit systemd
RDEPENDS:${PN} += "bash"

do_install() {
    install -d ${D}/tools
    install -m 755 ${WORKDIR}/rootfs/tools/adv_resize.sh ${D}/tools/adv_resize.sh

    # systemd
    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
        install -d ${D}${systemd_unitdir}/system
        install -m 0644 ${WORKDIR}/rootfs/lib/systemd/system/adv_resize.service ${D}${systemd_unitdir}/system
    fi
}

SYSTEMD_SERVICE:${PN} = "adv_resize.service"

FILES:${PN} = "/tools ${sysconfdir}/init.d"
