#
# Product-specific compile-time definitions.
#
include device/linaro/dragonboard/BoardConfigEvervolv.mk

BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CONFIG := msm8916-android_defconfig
TARGET_KERNEL_DTB := msm8916-samsung-gt58.dtb
