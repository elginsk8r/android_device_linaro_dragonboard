#
# Product-specific compile-time definitions.
#

include device/linaro/dragonboard/BoardConfigEvervolv.mk

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_LEGACY_DTB_APPEND := true
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat device/linaro/dragonboard/gt58/modules.load))
TARGET_KERNEL_CONFIG := msm8916_defconfig \
    ../../../kernel/configs/android.config \
    ../../../kernel/configs/aosp.config
TARGET_KERNEL_DTB := qcom/msm8916-samsung-gt58.dtb
