# Set Blackiron specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/common_mini_phone.mk)
