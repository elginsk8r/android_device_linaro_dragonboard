include device/linaro/dragonboard/BoardConfigCommon.mk

# Primary Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# Board Information
TARGET_BOOTLOADER_BOARD_NAME := hammerhead
TARGET_BOARD_PLATFORM := hammerhead

TARGET_NO_KERNEL := false
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := earlycon firmware_class.path=/vendor/firmware/ androidboot.hardware=hammerhead
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=msm_sdcc.1 printk.devkmsg=on deferred_probe_timeout=30
BOARD_KERNEL_CMDLINE += qcom_geni_serial.con_enabled=1
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x02700000
BOARD_RAMDISK_OFFSET := 0x02900000

# Image Configuration
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 271744512
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1536000512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13725837312
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB := device/linaro/dragonboard/fstab.hammerhead

ifneq ($(filter ev_%, $(TARGET_PRODUCT)),)
include device/linaro/dragonboard/hammerhead/BoardConfigEvervolv.mk
endif
