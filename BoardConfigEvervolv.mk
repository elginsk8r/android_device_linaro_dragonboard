#
# Product-specific compile-time definitions.
#

-include device/linaro/dragonboard/$(TARGET_HARDWARE)/BoardConfigEvervolv.mk

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    hardware/evervolv/interfaces/compatibility_matrices/compatibility_matrix.evervolv.xml \
    hardware/lineage/interfaces/compatibility_matrices/compatibility_matrix.lineage.xml

# Kernel
BOARD_KERNEL_IMAGE_NAME ?= Image.gz
TARGET_KERNEL_CONFIG ?= db845c_gki_defconfig
TARGET_KERNEL_SOURCE ?= kernel/common/$(TARGET_KERNEL_USE)

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD ?= $(strip $(shell cat device/linaro/dragonboard/modules.load-$(TARGET_KERNEL_USE)))
