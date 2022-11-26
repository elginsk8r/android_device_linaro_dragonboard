#
# Copyright (C) 2011 The Android Open-Source Project
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

# Build generic Audio HAL
PRODUCT_PACKAGES := audio.primary.gt58

# Install scripts to set vendor.* properties
PRODUCT_COPY_FILES += \
    device/linaro/dragonboard/qcom/set_hw.sh:$(TARGET_COPY_OUT_VENDOR)/bin/set_hw.sh \
    device/linaro/dragonboard/qcom/set_udc.sh:$(TARGET_COPY_OUT_VENDOR)/bin/set_udc.sh

# Install scripts to set Ethernet MAC address
PRODUCT_COPY_FILES += \
    device/linaro/dragonboard/eth_mac_addr.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/eth_mac_addr.rc \
    device/linaro/dragonboard/eth_mac_addr.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/eth_mac_addr.sh

PRODUCT_VENDOR_PROPERTIES += ro.soc.manufacturer=Qualcomm
PRODUCT_VENDOR_PROPERTIES += ro.soc.model=MSM8916

PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=160

TARGET_HARDWARE := gt58

PRODUCT_COPY_FILES += \
    device/linaro/dragonboard/fstab.msm8916:$(TARGET_COPY_OUT_RAMDISK)/first_stage_ramdisk/fstab.$(TARGET_HARDWARE) \
    device/linaro/dragonboard/fstab.msm8916:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(TARGET_HARDWARE)

include device/linaro/dragonboard/device-common.mk
