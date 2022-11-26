#
# Product-specific compile-time definitions.
#

# Kernel
BOARD_KERNEL_IMAGE_NAME ?= Image.gz
BOARD_VENDOR_KERNEL_MODULES_LOAD ?= $(strip $(shell cat device/linaro/dragonboard/modules.load))
TARGET_KERNEL_CONFIG ?= gki_defconfig db845c_gki.fragment
TARGET_KERNEL_DTB ?= sdm845-db845c.dtb qrb5165-rb5.dtb sm8450-qrd.dtb
TARGET_KERNEL_NO_GCC := true
TARGET_KERNEL_SOURCE := kernel/common

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    hardware/evervolv/interfaces/compatibility_matrices/compatibility_matrix.evervolv.xml \
    hardware/lineage/interfaces/compatibility_matrices/compatibility_matrix.lineage.xml
