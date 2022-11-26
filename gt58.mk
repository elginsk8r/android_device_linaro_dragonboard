$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/linaro/dragonboard/full.mk)
$(call inherit-product, device/linaro/dragonboard/gt58/device.mk)

# Product overrides
PRODUCT_NAME := gt58
PRODUCT_DEVICE := gt58
PRODUCT_BRAND := Android
