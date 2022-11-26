#
# Product-specific compile-time definitions.
#
include device/linaro/dragonboard/BoardConfigEvervolv.mk

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_LEGACY_DTB_APPEND := true
TARGET_KERNEL_CONFIG := msm8916-android_defconfig
TARGET_KERNEL_DTB := qcom/msm8916-samsung-gt58.dtb
TARGET_KERNEL_MODULE_LIST += $(strip $(shell cat device/linaro/dragonboard/gt58/modules.load))

# Modules
BOARD_GENERIC_RAMDISK_MODULES := panel-samsung-s6d7aa0-lsl080al03.ko msm.ko zinitix.ko
BOARD_GENERIC_RAMDISK_KERNEL_MODULES_LOAD := $(filter-out $(BOARD_GENERIC_RAMDISK_MODULES),$(TARGET_KERNEL_MODULE_LIST))
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(filter $(BOARD_GENERIC_RAMDISK_MODULES),$(TARGET_KERNEL_MODULE_LIST))
