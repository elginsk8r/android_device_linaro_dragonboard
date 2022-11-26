include device/linaro/dragonboard/BoardConfigCommon.mk

# Primary Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_ABI := arm64-v8a

# Secondary Arch
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# Board Information
TARGET_BOOTLOADER_BOARD_NAME := LK2ND_MSM8916
TARGET_BOARD_PLATFORM := gt58

TARGET_NO_KERNEL := false
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 earlycon firmware_class.path=/vendor/firmware/ androidboot.hardware=gt58
BOARD_KERNEL_CMDLINE += init=/init androidboot.boot_devices=soc@0/7824900.mmc printk.devkmsg=on
BOARD_KERNEL_CMDLINE += deferred_probe_timeout=60
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Image Configuration
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_VENDORIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_COPY_OUT_VENDOR := vendor

ifneq ($(filter ev_%, $(TARGET_PRODUCT)),)
include device/linaro/dragonboard/gt58/BoardConfigEvervolv.mk
endif