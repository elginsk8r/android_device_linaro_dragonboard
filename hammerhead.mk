$(call inherit-product, device/linaro/dragonboard/full.mk)
$(call inherit-product, device/linaro/dragonboard/hammerhead/device.mk)

# Product overrides
PRODUCT_NAME := hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := Android
