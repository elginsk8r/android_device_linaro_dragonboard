$(call inherit-product, device/linaro/dragonboard/full.mk)
$(call inherit-product, device/linaro/dragonboard/flo/device.mk)

# Product overrides
PRODUCT_NAME := flo
PRODUCT_DEVICE := flo
PRODUCT_BRAND := Android
