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

# Check vendor package version
# If you need to make changes to the vendor partition,
# please modify the source git project here:
#   https://staging-git.codelinaro.org/linaro/linaro-aosp/aosp-linaro-vendor-package
include device/linaro/dragonboard/vendor-package-ver.mk
ifneq (,$(wildcard $(LINARO_VENDOR_PATH)/db845c/$(EXPECTED_LINARO_VENDOR_VERSION)/version.mk))
  # Unfortunately inherit-product doesn't export build variables from the
  # called make file to the caller, so we have to include it directly here.
  include $(LINARO_VENDOR_PATH)/db845c/$(EXPECTED_LINARO_VENDOR_VERSION)/version.mk
  ifneq ($(TARGET_LINARO_VENDOR_VERSION), $(EXPECTED_LINARO_VENDOR_VERSION))
    $(warning TARGET_LINARO_VENDOR_VERSION ($(TARGET_LINARO_VENDOR_VERSION)) does not match exiting the build ($(EXPECTED_LINARO_VENDOR_VERSION)).)
    $(warning Please download and extract the new binaries by running the following script:)
    $(warning    ./device/linaro/dragonboard/fetch-vendor-package.sh )
    # Would be good to error out here, but that causes other issues
  endif
else
  $(warning Missing Linaro Vendor Package!)
  $(warning Please download and extract the vendor binaries by running the following script:)
  $(warning    ./device/linaro/dragonboard/fetch-vendor-package.sh )
  # Would be good to error out here, but that causes other issues
endif

PRODUCT_SOONG_NAMESPACES += \
    vendor/linaro/linux-firmware/$(EXPECTED_LINARO_VENDOR_VERSION) \
    vendor/linaro/db845c/$(EXPECTED_LINARO_VENDOR_VERSION) \
    vendor/linaro/rb5/$(EXPECTED_LINARO_VENDOR_VERSION)
