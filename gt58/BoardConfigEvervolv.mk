#
# Product-specific compile-time definitions.
#

# Kernel
TARGET_KERNEL_CONFIG := msm8916_defconfig \
    ../../../kernel/configs/android.config \
    ../../../kernel/configs/aosp.config
TARGET_KERNEL_SOURCE := kernel/common/$(TARGET_KERNEL_USE)

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat device/linaro/dragonboard/gt58/modules.load-$(TARGET_KERNEL_USE)))
