#----------------------------------------------------------------------
# Generate device tree image (dt.img)
#----------------------------------------------------------------------
ifeq ($(strip $(BOARD_KERNEL_SEPARATED_DT)),true)

INSTALLED_DTIMAGE_TARGET := $(PRODUCT_OUT)/dt.img

DTBTOOL := $(HOST_OUT_EXECUTABLES)/dtbtool

$(INSTALLED_DTIMAGE_TARGET): $(INSTALLED_KERNEL_TARGET) $(DTBTOOL) $(DTC)
	@echo "Building dtb.img"
	$(DTBTOOL) -o $@ -s $(BOARD_KERNEL_PAGESIZE) -p $(HOST_OUT_EXECUTABLES) $(KERNEL_OUT)/arch/$(KERNEL_ARCH)/boot/dts/
	$(hide) chmod a+r $@

.PHONY: dtimage
dtimage: $(INSTALLED_DTIMAGE_TARGET)

endif
