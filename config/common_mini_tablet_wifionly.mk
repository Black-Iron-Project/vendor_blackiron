# Inherit mini common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
