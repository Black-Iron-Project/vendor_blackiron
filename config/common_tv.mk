# Inherit common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/common.mk)

# Inherit Blackiron atv device tree
$(call inherit-product, device/blackiron/atv/blackiron_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

PRODUCT_PACKAGE_OVERLAYS += vendor/blackiron/overlay/tv
