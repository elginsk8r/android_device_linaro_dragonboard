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
BOARD_KERNEL_CMDLINE := androidboot.hardware=gt58 androidboot.boot_devices=soc@0/7824900.mmc
BOARD_KERNEL_CMDLINE += androidboot.verifiedbootstate=orange androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += earlycon firmware_class.path=/vendor/firmware/
BOARD_KERNEL_CMDLINE += init=/init printk.devkmsg=on
BOARD_KERNEL_CMDLINE += deferred_probe_timeout=30
BOARD_KERNEL_CMDLINE += pcie_pme=nomsi #For WiFi to work on rb5
BOARD_KERNEL_CMDLINE += qcom_geni_serial.con_enabled=1
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8

# Image Configuration
BOARD_BOOTIMAGE_PARTITION_SIZE := 13107200 # 12M
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := $(WITH_FSTYPE)
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200 # 200M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912 # 11G
BOARD_FLASH_BLOCK_SIZE := 131072
# Super partition
BOARD_SUPER_PARTITION_SIZE := 3145728000 # 3G
BOARD_DB_DYNAMIC_PARTITIONS_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_SIZE) - 4194304) # Reserve 4M for DAP metadata
BOARD_SUPER_PARTITION_METADATA_DEVICE := system

# dlkm partition
include device/linaro/dragonboard/shared/utils/dlkm_loader/BoardConfig.mk
BOARD_SEPOLICY_DIRS += device/linaro/dragonboard/shared/utils/dlkm_loader/sepolicy/

# Graphics
include device/linaro/dragonboard/shared/graphics/drm_hwcomposer/BoardConfig.mk
include device/linaro/dragonboard/shared/graphics/mesa/BoardConfig.mk
BOARD_SEPOLICY_DIRS += device/linaro/dragonboard/shared/graphics/minigbm_msm/sepolicy/

ifneq ($(filter ev_%, $(TARGET_PRODUCT)),)
include device/linaro/dragonboard/gt58/BoardConfigEvervolv.mk
endif
