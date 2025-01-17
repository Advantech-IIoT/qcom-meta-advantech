FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
ADDON_FILES_DIR:="${THISDIR}/files"

IMAGE_INSTALL += " i2c-tools stress-ng memtester libmosquitto1 libmosquittopp1 modemmanager boottimes-script vim dialog advresize-script "

## support for web UI
IMAGE_INSTALL += " python3-pip"

## support for AI benchmark
IMAGE_INSTALL += " git-perltools"

do_adv_post_install() {
	# Create folder
	mkdir -p ${IMAGE_ROOTFS}/tools/display
	mkdir -p ${IMAGE_ROOTFS}/var/cache/camera

	# Install files
	# Camera
	install -m 0644 ${ADDON_FILES_DIR}/rootfs/var/cache/camera/camxoverridesettings.txt ${IMAGE_ROOTFS}/var/cache/camera

	# Tools
	install -m 0755 ${ADDON_FILES_DIR}/rootfs/tools/display/emmcChangeToHDMI.sh ${IMAGE_ROOTFS}/tools/display
	install -m 0755 ${ADDON_FILES_DIR}/rootfs/tools/display/emmcChangeToLVDS.sh ${IMAGE_ROOTFS}/tools/display
	#install -m 0755 ${ADDON_FILES_DIR}/rootfs/tools/boottimes.sh ${IMAGE_ROOTFS}/tools/boottimes.sh
	#install -m 0644 ${ADDON_FILES_DIR}/rootfs/lib/systemd/system/boottimes.service ${IMAGE_ROOTFS}/lib/systemd/system

	#Others
	install -m 0644 ${ADDON_FILES_DIR}/rootfs/etc/profile ${IMAGE_ROOTFS}/etc
}

ROOTFS_POSTPROCESS_COMMAND += " do_adv_post_install; "

do_adv_install() {
	# EMMC
	install -d ${DEPLOY_DIR_IMAGE}/qcom-multimedia-image-emmc
	cp -r ${DEPLOY_DIR_IMAGE}/qcom-multimedia-image/* ${DEPLOY_DIR_IMAGE}/qcom-multimedia-image-emmc
	rm ${DEPLOY_DIR_IMAGE}/qcom-multimedia-image-emmc/gpt*
	rm ${DEPLOY_DIR_IMAGE}/qcom-multimedia-image-emmc/*.xml
	rm ${DEPLOY_DIR_IMAGE}/qcom-multimedia-image-emmc/zeros_5sectors.bin
	install -m 0644 ${ADDON_FILES_DIR}/images/emmc/* -D ${DEPLOY_DIR_IMAGE}/qcom-multimedia-image-emmc
}

do_deploy_fixup:append = "do_adv_install"
