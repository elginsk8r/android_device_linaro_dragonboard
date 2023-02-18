LOCAL_PATH := $(call my-dir)

# If some modules are built directly from this directory (not subdirectories),
# their rules should be written here.

include $(call all-makefiles-under,$(LOCAL_PATH))

ifeq ($(TARGET_BOARD_PLATFORM),hammerhead)

include $(CLEAR_VARS)

# Modem
MODEM_IMAGES := \
	mba.b00 mba.mdt modem.b00 modem.b01 modem.b02 modem.b03 \
	modem.b06 modem.b08 modem.b09 modem.b11 modem.b12 modem.b13 \
	modem.b14 modem.b15 modem.b16 modem.b17 modem.b18 modem.b19 \
	modem.b22 modem.b23 modem.b24 modem.mdt

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /mnt/vendor/modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

endif
