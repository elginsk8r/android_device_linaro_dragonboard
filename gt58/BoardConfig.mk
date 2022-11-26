include device/linaro/dragonboard/BoardConfigCommon.mk

# Primary Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

# Secondary Arch
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Board Information
TARGET_BOOTLOADER_BOARD_NAME := gt58
TARGET_BOARD_PLATFORM := gt58

TARGET_NO_KERNEL := false
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc@0/1d84000.ufshc
BOARD_KERNEL_CMDLINE += androidboot.hardware=gt58
BOARD_KERNEL_CMDLINE += androidboot.verifiedbootstate=orange
BOARD_KERNEL_CMDLINE += earlycon firmware_class.path=/vendor/firmware/
BOARD_KERNEL_CMDLINE += init=/init printk.devkmsg=on
BOARD_KERNEL_CMDLINE += deferred_probe_timeout=30
BOARD_KERNEL_CMDLINE += pcie_pme=nomsi #For WiFi to work on rb5
BOARD_KERNEL_CMDLINE += qcom_geni_serial.con_enabled=1
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8

# Image Configuration
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488 # 13M
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200 # 200M
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000 # 3G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912 # 11G
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
TARGET_RECOVERY_FSTAB := device/linaro/dragonboard/gt58/fstab.gt58
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565

# Graphics
include device/linaro/dragonboard/shared/graphics/drm_hwcomposer/BoardConfig.mk
include device/linaro/dragonboard/shared/graphics/mesa/BoardConfig.mk
BOARD_SEPOLICY_DIRS += device/linaro/dragonboard/shared/graphics/minigbm_msm/sepolicy/
