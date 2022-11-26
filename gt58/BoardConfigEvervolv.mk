#
# Product-specific compile-time definitions.
#

include device/linaro/dragonboard/BoardConfigEvervolv.mk

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_APPEND_DTBS := qcom/msm8916-samsung-gt58.dtb
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat device/linaro/dragonboard/gt58/modules.load))
TARGET_KERNEL_CONFIG := msm8916-aosp_defconfig
