FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-dts-enable-the-lt9611-dsi-to-hdmi-bridge.patch \
            file://0002-set-the-DP-hotplug-pin-to-enable-DP-function.patch \
            file://0003-remove-pmic-glink.patch \
            file://0004-enable-edp-function.patch \
            file://0005-compile-the-DSI-or-eDP-conditionally.patch \
            file://0006-add-device-tree-property-qcom-nativedp-orientation-t.patch \
            file://0007-Add-the-qcm6490-display-rb3-lvds.dtso-file.patch \
            file://0008-Set-lt9611_irq2-to-input-high-and-edp_pwrdn-to-outpu.patch \
	   "

do_compile() {
    oe_runmake ${EXTRA_OEMAKE} qcm6490-display
    oe_runmake ${EXTRA_OEMAKE} qcm6490-display-rb3
    oe_runmake ${EXTRA_OEMAKE} qcm6490-display-rb3-lvds
    oe_runmake ${EXTRA_OEMAKE} qcs8550-display
    oe_runmake ${EXTRA_OEMAKE} sa8775p-display
}

