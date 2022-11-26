#
# Product-specific compile-time definitions.
#
include device/linaro/dragonboard/BoardConfigEvervolv.mk

BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat device/linaro/dragonboard/modules.load))
TARGET_KERNEL_CONFIG := gki_defconfig
KERNEL_CONFIG_OVERRIDE := $(strip $(shell cat arch/$(TARGET_ARCH)/configs/db845c_gki.fragment))
TARGET_KERNEL_DTB := sm8450-qrd.dtb
