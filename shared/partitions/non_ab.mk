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

# Include namespaces for non-AB updater
PRODUCT_SOONG_NAMESPACES += bootable/deprecated-ota

# Disable Virtual A/B
AB_OTA_UPDATER := false

ifeq ($(TARGET_SDCARD_BOOT), true)
  TARGET_FSTAB_PATH := device/linaro/dragonboard/shared/utils/sdcard-boot
endif
TARGET_FSTAB_PATH := device/linaro/dragonboard/shared/partitions

ifneq (,$(wildcard $(TARGET_FSTAB_PATH)/fstab.$(TARGET_HARDWARE)))
  PRODUCT_COPY_FILES += \
      $(TARGET_FSTAB_PATH)/fstab.$(TARGET_HARDWARE):$(TARGET_COPY_OUT_RAMDISK)/first_stage_ramdisk/fstab.$(TARGET_HARDWARE) \
      $(TARGET_FSTAB_PATH)/fstab.$(TARGET_HARDWARE):$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(TARGET_HARDWARE)
endif
