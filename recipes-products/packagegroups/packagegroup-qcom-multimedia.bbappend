## setup required packagegroup
RDEPENDS:${PN}:append:qcom-custom-bsp = "\
   packagegroup-qcom-camera \
   packagegroup-qcom-fastcv \
   packagegroup-qcom-graphics \
   packagegroup-qcom-iot-base-utils \
   packagegroup-qcom-k8s \
   packagegroup-qcom-video \
   "
