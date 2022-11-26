$(call inherit-product, device/linaro/dragonboard/mini.mk)
$(call inherit-product, device/linaro/dragonboard/gt58/device.mk)

# Product overrides
PRODUCT_NAME := gt58_mini
PRODUCT_DEVICE := gt58
PRODUCT_BRAND := Android
