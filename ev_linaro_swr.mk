$(call inherit-product, device/linaro/dragonboard/linaro_swr.mk)
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_tablet_wifionly.mk)

# Product overrides
PRODUCT_NAME := ev_linaro_swr
