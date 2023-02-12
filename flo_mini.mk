$(call inherit-product, device/linaro/dragonboard/mini.mk)
$(call inherit-product, device/linaro/dragonboard/flo/device.mk)

# Product overrides
PRODUCT_NAME := flo_mini
PRODUCT_DEVICE := flo
PRODUCT_BRAND := Android
