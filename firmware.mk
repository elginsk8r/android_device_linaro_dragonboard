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

firmware_path := external/linux-firmware

## All firmware files from this list, unless pinned and noted otherwise, are
## from https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
## Tag: 20220610

# Adreno
linux_firmware := \
    qcom/a300_pfp.fw \
    qcom/a300_pm4.fw \
    qcom/a330_pfp.fw \
    qcom/a330_pm4.fw \
    qcom/a420_pfp.fw \
    qcom/a420_pm4.fw \
    qcom/a530_pfp.fw \
    qcom/a530_pm4.fw \
    qcom/a530v3_gpmu.fw2 \
    qcom/a530_zap.b00 \
    qcom/a530_zap.b01 \
    qcom/a530_zap.b02 \
    qcom/a530_zap.mdt \
    qcom/a630_gmu.bin \
    qcom/a630_sqe.fw \
    qcom/a650_gmu.bin \
    qcom/a650_sqe.fw \
    qcom/a660_gmu.bin \
    qcom/a660_sqe.fw \
    qcom/leia_pfp_470.fw \
    qcom/leia_pm4_470.fw \
    qcom/sdm845/a630_zap.mbn \
    qcom/sm8250/a650_zap.mbn
    
# ADSP
linux_firmware += \
    qcom/apq8096/adsp.mbn \
    qcom/apq8096/adspr.jsn \
    qcom/apq8096/adspua.jsn \
    qcom/sdm845/adsp.mbn \
    qcom/sdm845/adspr.jsn \
    qcom/sdm845/adspua.jsn \
    qcom/sm8250/adsp.mbn \
    qcom/sm8250/adspr.jsn \
    qcom/sm8250/adspua.jsn
    
# CDSP
linux_firmware += \
    qcom/sdm845/cdsp.mbn \
    qcom/sdm845/cdspr.jsn \
    qcom/sm8250/cdsp.mbn \
    qcom/sm8250/cdspr.jsn
    
# Atheros
linux_firmware += \
    ath10k/WCN3990/hw1.0/board-2.bin \
    ath10k/WCN3990/hw1.0/firmware-5.bin \
    ath10k/WCN3990/hw1.0/notice.txt_wlanmdsp \
    ath10k/WCN3990/hw1.0/wlanmdsp.mbn \
    ath11k/QCA6390/hw2.0/amss.bin \
    ath11k/QCA6390/hw2.0/m3.bin \
    ath11k/QCA6390/hw2.0/Notice.txt \
    qca/crbtfw21.tlv \
    qca/crnv21.bin \
    qca/htbtfw20.tlv \
    qca/htnv20.bin \
    qca/NOTICE.txt \
    LICENSE.QualcommAtheros_ath10k
    
# Lontium
linux_firmware += \
    lt9611uxc_fw.bin \
    LICENSE.Lontium
    
# Modem
linux_firmware += \
    qcom/apq8096/mba.mbn \
    qcom/apq8096/modem.mbn \
    qcom/apq8096/modemr.jsn \
    qcom/sdm845/mba.mbn \
    qcom/sdm845/modem.mbn \
    qcom/sdm845/modemuw.jsn
    
# Qualcomm
linux_firmware += \
    qcom/NOTICE.txt \
    LICENSE.qcom
    
# Venus
linux_firmware += \
    qcom/venus-1.8/venus.b00 \
    qcom/venus-1.8/venus.b01 \
    qcom/venus-1.8/venus.b02 \
    qcom/venus-1.8/venus.b03 \
    qcom/venus-1.8/venus.b04 \
    qcom/venus-1.8/venus.mdt \
    qcom/venus-4.2/venus.b00 \
    qcom/venus-4.2/venus.b01 \
    qcom/venus-4.2/venus.b02 \
    qcom/venus-4.2/venus.b03 \
    qcom/venus-4.2/venus.b04 \
    qcom/venus-4.2/venus.mdt \
    qcom/venus-5.2/venus.b00 \
    qcom/venus-5.2/venus.b01 \
    qcom/venus-5.2/venus.b02 \
    qcom/venus-5.2/venus.b03 \
    qcom/venus-5.2/venus.b04 \
    qcom/venus-5.2/venus.mbn \
    qcom/venus-5.2/venus.mdt \
    qcom/venus-5.4/venus.b00 \
    qcom/venus-5.4/venus.b01 \
    qcom/venus-5.4/venus.b02 \
    qcom/venus-5.4/venus.b03 \
    qcom/venus-5.4/venus.b04 \
    qcom/venus-5.4/venus.mbn \
    qcom/venus-5.4/venus.mdt
    
# VPU
linux_firmware += \
    qcom/vpu-1.0/venus.b00 \
    qcom/vpu-1.0/venus.b01 \
    qcom/vpu-1.0/venus.b02 \
    qcom/vpu-1.0/venus.b03 \
    qcom/vpu-1.0/venus.b04 \
    qcom/vpu-1.0/venus.b05 \
    qcom/vpu-1.0/venus.b06 \
    qcom/vpu-1.0/venus.b07 \
    qcom/vpu-1.0/venus.b08 \
    qcom/vpu-1.0/venus.b09 \
    qcom/vpu-1.0/venus.b10 \
    qcom/vpu-1.0/venus.b19 \
    qcom/vpu-1.0/venus.mbn \
    qcom/vpu-1.0/venus.mdt \
    qcom/vpu-2.0/venus.b00 \
    qcom/vpu-2.0/venus.b01 \
    qcom/vpu-2.0/venus.b02 \
    qcom/vpu-2.0/venus.b03 \
    qcom/vpu-2.0/venus.b04 \
    qcom/vpu-2.0/venus.b05 \
    qcom/vpu-2.0/venus.b06 \
    qcom/vpu-2.0/venus.b07 \
    qcom/vpu-2.0/venus.b08 \
    qcom/vpu-2.0/venus.b09 \
    qcom/vpu-2.0/venus.b10 \
    qcom/vpu-2.0/venus.b19 \
    qcom/vpu-2.0/venus.mbn \
    qcom/vpu-2.0/venus.mdt

$(foreach f,$(linux_firmware),\
	$(eval PRODUCT_COPY_FILES += $(firmware_path)/$(f):$(TARGET_COPY_OUT_VENDOR)/firmware/$(f)))
