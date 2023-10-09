# Inherit full common Black Iron Project stuff
$(call inherit-product, vendor/blackiron/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# Inherit from telephony config
$(call inherit-product, vendor/blackiron/config/telephony.mk)
