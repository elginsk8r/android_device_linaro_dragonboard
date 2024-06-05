#
# Copyright (C) 2022 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_KERNEL_DIR ?= device/linaro/dragonboard-kernel/android-$(TARGET_KERNEL_USE)
TARGET_MODS := $(wildcard $(TARGET_KERNEL_DIR)/*.ko)

BOARD_DO_NOT_STRIP_VENDOR_RAMDISK_MODULES := true
BOARD_DO_NOT_STRIP_GENERIC_RAMDISK_MODULES := true
ifeq ($(TARGET_SDCARD_BOOT), true)
  # Do not copy UFS kernel module in vendor_dlkm.img
  # UFS module filename varies from ufs_qcom.ko to ufs-qcom.ko across different kernel versions
  UFS_MODULE := $(wildcard $(TARGET_KERNEL_DIR)/ufs*qcom.ko)
  BOARD_GENERIC_RAMDISK_KERNEL_MODULES := $(filter-out $(UFS_MODULE),$(TARGET_MODS))
else ifeq ($(TARGET_USES_LMP), true)
    include device/linaro/dragonboard/shared/utils/dlkm_loader/vendor.modules.list.mk
    BOARD_VENDOR_KERNEL_MODULES := $(patsubst %,$(TARGET_KERNEL_DIR)/%,$(VENDOR_DLKM_KERNEL_MODULES_LIST))
    BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(patsubst %,$(TARGET_KERNEL_DIR)/%,$(VENDOR_RAMDISK_KERNEL_MODULES_LIST))
    BOARD_SYSTEM_KERNEL_MODULES := $(filter-out $(BOARD_VENDOR_KERNEL_MODULES) $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES), $(wildcard $(TARGET_KERNEL_DIR)/*.ko))
else
  BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(TARGET_MODS)
endif

PRODUCT_SHIPPING_API_LEVEL := 33

# Inherit vendor firmware
$(call inherit-product, device/linaro/dragonboard/firmware.mk)

PRODUCT_SOONG_NAMESPACES += \
    device/linaro/dragonboard

PRODUCT_VENDOR_PROPERTIES += \
    persist.sys.zram_enabled=1

PRODUCT_COPY_FILES += \
    $(TARGET_KERNEL_DIR)/Image.gz:kernel \
    device/linaro/dragonboard/init.common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.$(TARGET_HARDWARE).rc \
    device/linaro/dragonboard/init.common.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.$(TARGET_HARDWARE).usb.rc \
    frameworks/base/data/keyboards/Generic.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/$(TARGET_HARDWARE).kl

# Workaround for the drop of OMX service
PRODUCT_VENDOR_PROPERTIES += \
    debug.stagefright.c2inputsurface=-1
