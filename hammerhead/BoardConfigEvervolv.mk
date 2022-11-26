#
# Product-specific compile-time definitions.
#
include device/linaro/dragonboard/BoardConfigEvervolv.mk

BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_LEGACY_DTB_APPEND := true
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat device/linaro/dragonboard/hammerhead/modules.load))
TARGET_KERNEL_CONFIG := qcom-android_defconfig
TARGET_KERNEL_DTB := qcom-msm8974-lge-nexus5-hammerhead.dtb