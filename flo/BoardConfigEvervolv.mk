#
# Product-specific compile-time definitions.
#
include device/linaro/dragonboard/BoardConfigEvervolv.mk

BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_LEGACY_DTB_APPEND := true
TARGET_KERNEL_CONFIG := qcom_gki_defconfig
TARGET_KERNEL_DTB := qcom-apq8064-asus-nexus7-flo.dtb
