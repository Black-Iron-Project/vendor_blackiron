# Inherit common mobile BlackIron stuff
$(call inherit-product, vendor/blackiron/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Aperture \
    Eleven

#ifeq ($(PRODUCT_TYPE), go)
#PRODUCT_PACKAGES += \
#    BlackironLauncherQuickStepGo

#PRODUCT_DEXPREOPT_SPEED_APPS += \
#    BlackironLauncherQuickStepGo
#else
#PRODUCT_PACKAGES += \
#    BlackironLauncherQuickStep

#PRODUCT_DEXPREOPT_SPEED_APPS += \
#    BlackironLauncherQuickStep
#endif
#
#PRODUCT_PACKAGES += \
#    BlackironLauncherOverlay

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images \
    product_charger_res_images_vendor

# Customizations
PRODUCT_PACKAGES += \
    DisplayCutoutEmulationNarrowOverlay \
    DisplayCutoutEmulationWideOverlay \
    KeyboardNoNavigationBarOverlay \
    Launcher3NoHintOverlay \
    NoCutoutOverlay \
    NavigationBarNoHintOverlay

# Media
PRODUCT_SYSTEM_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
