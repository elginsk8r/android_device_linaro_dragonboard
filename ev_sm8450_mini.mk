$(call inherit-product, device/linaro/dragonboard/sm8450_mini.mk)
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_mini_tablet_wifionly.mk)

# Product overrides
PRODUCT_NAME := ev_sm8450_mini
