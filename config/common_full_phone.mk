# Inherit full common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Blackiron LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/blackiron/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/blackiron/config/telephony.mk)
