$(call inherit-product, device/linaro/dragonboard/db845c_mini.mk)
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_mini_tablet_wifionly.mk)

# Product overrides
PRODUCT_NAME := ev_db845c_mini
