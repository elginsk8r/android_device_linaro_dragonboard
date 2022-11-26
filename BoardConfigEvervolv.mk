#
# Product-specific compile-time definitions.
#

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    hardware/evervolv/interfaces/compatibility_matrices/compatibility_matrix.evervolv.xml \
    hardware/lineage/interfaces/compatibility_matrices/compatibility_matrix.lineage.xml

# Kernel
BOARD_KERNEL_IMAGE_NAME ?= Image.gz
TARGET_KERNEL_CONFIG ?= gki_defconfig
TARGET_KERNEL_SOURCE := kernel/common

# Modules
ifneq ($(TARGET_KERNEL_CONFIG),gki_defconfig)
  ifneq (,$(wildcard $(TARGET_KERNEL_SOURCE)/arch/$(TARGET_ARCH)/configs/db845c_gki.fragment))
    BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat device/linaro/dragonboard/modules.load))
    KERNEL_CONFIG_OVERRIDE := $(strip $(shell cat $(TARGET_KERNEL_SOURCE)/arch/$(TARGET_ARCH)/configs/db845c_gki.fragment))
  endif
endif
