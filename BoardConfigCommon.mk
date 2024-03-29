# Copyright (C) 2013 The Android Open Source Project
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

TARGET_USES_64_BIT_BINDER := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true

# Enable Treble
PRODUCT_FULL_TREBLE := true
BOARD_VNDK_VERSION := current

# Mesa DRM hwcomposer
BOARD_USES_DRM_HWCOMPOSER := true
BOARD_GPU_DRIVERS := freedreno
TARGET_USES_HWC2 := true

ifeq ($(TARGET_BUILD_MESA),true)
BOARD_MESA3D_USES_MESON_BUILD := true
BOARD_MESA3D_GALLIUM_DRIVERS := freedreno
BOARD_MESA3D_VULKAN_DRIVERS := freedreno
else
BOARD_USE_CUSTOMIZED_MESA := true
endif

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

# BT
BOARD_HAVE_BLUETOOTH := true

BOARD_SEPOLICY_DIRS += \
    device/linaro/dragonboard/sepolicy \
    system/bt/vendor_libs/linux/sepolicy

# Copy firmware files to ramdisk/vendor_ramdisk to workaround
# the dependency on FW_LOADER_USER_HELPER_FALLBACK kernel config
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# inherit from the proprietary version
-include vendor/linaro/dragonboard/BoardConfigVendor.mk
