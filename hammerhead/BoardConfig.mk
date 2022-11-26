include device/linaro/dragonboard/BoardConfigCommon.mk

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# Board Information
TARGET_BOOTLOADER_BOARD_NAME := hammerhead
TARGET_BOARD_PLATFORM := hammerhead

# Kernel
TARGET_NO_KERNEL := false
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE += androidboot.hardware=hammerhead androidboot.boot_devices=soc@0/f9824900.mmc
BOARD_KERNEL_CMDLINE += earlycon firmware_class.path=/vendor/firmware/
BOARD_KERNEL_CMDLINE += init=/init printk.devkmsg=on
BOARD_KERNEL_CMDLINE += deferred_probe_timeout=60
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x02700000
BOARD_RAMDISK_OFFSET := 0x02900000

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_CACHEIMAGE_PARTITION_SIZE := 206577664
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1511817216
BOARD_VENDORIMAGE_PARTITION_SIZE := 258187264
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13208145920
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB = device/linaro/dragonboard/fstab.msm8974

ifneq ($(filter ev_%, $(TARGET_PRODUCT)),)
include device/linaro/dragonboard/hammerhead/BoardConfigEvervolv.mk
endif