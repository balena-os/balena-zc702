IMAGE_FSTYPES_append_zc702-zynq7 = " resinos-img"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_zc702-zynq7 = " \
    boot.bin: \
    u-boot-${MACHINE}.img:/u-boot-dtb.img \
    uEnv.txt: \
    uImage: \
    device-trees/zc702-zynq7.dtb:/ \
    "
