#
# Product-specific compile-time definitions.
#

# Kernel
TARGET_KERNEL_SOURCE := kernel/common
TARGET_KERNEL_NO_GCC := true

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    hardware/evervolv/interfaces/compatibility_matrices/compatibility_matrix.evervolv.xml \
    hardware/lineage/interfaces/compatibility_matrices/compatibility_matrix.lineage.xml
