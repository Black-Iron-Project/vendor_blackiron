$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Black Iron Project stuff
$(call inherit-product, vendor/blackiron/config/common_full.mk)

$(call inherit-product, vendor/blackiron/config/telephony.mk)
