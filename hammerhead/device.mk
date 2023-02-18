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
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

include $(LOCAL_PATH)/../vendor-package-ver.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Build generic Audio HAL
PRODUCT_PACKAGES := audio.primary.hammerhead

# BootControl HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

# Install scripts to set vendor.* properties
PRODUCT_COPY_FILES += \
    device/linaro/dragonboard/qcom/set_hw.sh:$(TARGET_COPY_OUT_VENDOR)/bin/set_hw.sh \
    device/linaro/dragonboard/qcom/set_udc.sh:$(TARGET_COPY_OUT_VENDOR)/bin/set_udc.sh

# Install scripts to set Ethernet MAC address
PRODUCT_COPY_FILES += \
    device/linaro/dragonboard/eth_mac_addr.rc:/system/etc/init/eth_mac_addr.rc \
    device/linaro/dragonboard/eth_mac_addr.sh:/system/bin/eth_mac_addr.sh

PRODUCT_VENDOR_PROPERTIES += ro.soc.manufacturer=Qualcomm
PRODUCT_VENDOR_PROPERTIES += ro.soc.model=MSM8974

PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=480

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 19

PRODUCT_COPY_FILES += \
    device/linaro/dragonboard/fstab.hammerhead:$(TARGET_COPY_OUT_RAMDISK)/first_stage_ramdisk/fstab.$(TARGET_HARDWARE) \
    device/linaro/dragonboard/fstab.hammerhead:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(TARGET_HARDWARE)

TARGET_HARDWARE := hammerhead

include device/linaro/dragonboard/device-common.mk
