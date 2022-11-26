$(call inherit-product, device/linaro/dragonboard/sm8x50/sm8x50.mk)
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_tablet_wifionly.mk)

# Product overrides
PRODUCT_NAME := ev_sm8x50
