$(call inherit-product, device/linaro/dragonboard/mini.mk)
$(call inherit-product, device/linaro/dragonboard/hammerhead/device.mk)

# Product overrides
PRODUCT_NAME := hammerhead_mini
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := Android
