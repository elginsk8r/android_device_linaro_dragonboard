#
# Product-specific compile-time definitions.
#

# Kernel
BOARD_KERNEL_IMAGE_NAME ?= Image.gz
TARGET_KERNEL_CONFIG ?= gki_defconfig
TARGET_KERNEL_SOURCE := kernel/common
TARGET_KERNEL_NO_GCC := true

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    hardware/evervolv/interfaces/compatibility_matrices/compatibility_matrix.evervolv.xml \
    hardware/lineage/interfaces/compatibility_matrices/compatibility_matrix.lineage.xml

# Reserved Space
ifneq ($(WITH_GMS),true)
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 368640000
endif
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 15360000
