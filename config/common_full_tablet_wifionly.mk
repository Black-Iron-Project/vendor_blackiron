$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Blackiron LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/blackiron/overlay/dictionaries
