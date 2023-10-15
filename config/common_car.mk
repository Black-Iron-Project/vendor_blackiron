# Inherit common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/common.mk)

# Inherit Blackiron car device tree
$(call inherit-product, device/blackiron/car/blackiron_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
