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

# setup dalvik vm configs
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Dynamic partitions
PRODUCT_BUILD_SUPER_PARTITION := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true
PRODUCT_SHIPPING_API_LEVEL := 31

# Enable Virtual A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    product \
    system \
    system_ext \
    vendor

PRODUCT_COPY_FILES += \
    device/linaro/dragonboard/fstab.dynamic:$(TARGET_COPY_OUT_RAMDISK)/first_stage_ramdisk/fstab.$(TARGET_HARDWARE) \
    device/linaro/dragonboard/fstab.dynamic:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(TARGET_HARDWARE)

TARGET_HARDWARE := sm8450

include device/linaro/dragonboard/device-common.mk
