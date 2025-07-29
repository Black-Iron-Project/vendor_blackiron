PRODUCT_SOONG_NAMESPACES += \
    vendor/blackiron/packages

# /system_ext packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    androidx.window.sidecar

PRODUCT_PACKAGES += \
    Backgrounds \
    BatteryStatsViewer \
    LMOFreeform \
    LMOFreeformSidebar \
    OmniJaws \
    Updater \
    GameSpace \
    OmniStyle

ifneq ($(WITH_GMS),true)
PRODUCT_PACKAGES += \
    LatinIME
endif

# DeviceAsWebcam
ifeq ($(TARGET_BUILD_DEVICE_AS_WEBCAM), true)
    PRODUCT_PACKAGES += \
        DeviceAsWebcam
    PRODUCT_VENDOR_PROPERTIES += \
        ro.usb.uvc.enabled=true
endif
