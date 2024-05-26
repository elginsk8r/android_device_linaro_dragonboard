#
# Product-specific compile-time definitions.
#

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    hardware/evervolv/interfaces/compatibility_matrices/compatibility_matrix.evervolv.xml \
    hardware/lineage/interfaces/compatibility_matrices/compatibility_matrix.lineage.xml

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_SOURCE := kernel/common
ifneq ($(filter 5.4 5.10 5.15 6.1 6.6 mainline, $(TARGET_KERNEL_USE)),)
TARGET_NO_KERNEL_OVERRIDE := true
endif
