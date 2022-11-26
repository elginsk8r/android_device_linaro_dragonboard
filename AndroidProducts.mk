#
# This file should set PRODUCT_MAKEFILES to a list of product makefiles
# to expose to the build system.  LOCAL_DIR will already be set to
# the directory containing this file.
#
# This file may not rely on the value of any variable other than
# LOCAL_DIR; do not use any conditionals, and do not look up the
# value of any variable that isn't set in this file or in a file that
# it includes.
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/db845c.mk \
    $(LOCAL_DIR)/db845c_mini.mk \
    $(LOCAL_DIR)/gt58.mk \
    $(LOCAL_DIR)/gt58_mini.mk \
    $(LOCAL_DIR)/sm8450_mini.mk \
    $(LOCAL_DIR)/linaro_swr.mk \
    $(LOCAL_DIR)/sm8x50/sm8x50.mk

COMMON_LUNCH_CHOICES := \
    db845c-trunk_staging-userdebug \
    gt58-trunk_staging-userdebug

ifneq ($(SRC_EVERVOLV_DIR),)

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/ev_db845c.mk \
    $(LOCAL_DIR)/ev_db845c_mini.mk \
    $(LOCAL_DIR)/ev_gt58.mk \
    $(LOCAL_DIR)/ev_gt58_mini.mk \
    $(LOCAL_DIR)/ev_sm8450_mini.mk \
    $(LOCAL_DIR)/ev_linaro_swr.mk \
    $(LOCAL_DIR)/sm8x50/ev_sm8x50.mk

COMMON_LUNCH_CHOICES += \
    ev_db845c-trunk_staging-userdebug \
    ev_gt58-trunk_staging-userdebug

endif

