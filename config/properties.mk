PRODUCT_SOONG_NAMESPACES += \
    vendor/blackiron/properties

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# properties
PRODUCT_PRODUCT_PROPERTIES += \
    persist.wm.extensions.enabled=true

PRODUCT_PRODUCT_PROPERTIES += \
    persist.rcs.supported=1 \
    ro.opa.eligible_device=true \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms \
    ro.product.locale=en-US \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.product.needs_model_edit=false \
    ro.support_one_handed_mode=true \
    persist.sys.storage_picker_enabled=true \
    debug.photos.p_editr.eraser=1 \
    debug.photos.force_pixel_eol=1 \
    debug.photos.eraser_camo=1 \
    debug.photos.eraser_suggestion=1 \
    ro.support_hide_display_cutout=true

# misc properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.input.video_enabled=false \
    persist.sys.powerhal.interaction.max=24 \
    persist.sys.powerhal.interaction.max_default=64 \
    persist.sys.powerhal.interaction.max_boost=500 \
    persist.arm64.memtag.app.com.android.se=off \
    persist.arm64.memtag.app.com.google.android.bluetooth=off \
    persist.arm64.memtag.app.com.android.nfc=off \
    persist.arm64.memtag.process.system_server=off


PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.systemuicompilerfilter=speed \
    persist.sys.strictmode.disable=true \
    persist.sys.device_power_mode=default

# Blurs
ifeq ($(TARGET_ENABLE_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
endif

# Freeform
TARGET_DEVICE_IS_TABLET ?= false
PRODUCT_PRODUCT_PROPERTIES += \
    persist.wm.debug.desktop_mode=false
ifeq ($(TARGET_DEVICE_IS_TABLET), true)
PRODUCT_PRODUCT_PROPERTIES += \
    persist.wm.debug.desktop_mode.default_width=840 \
    persist.wm.debug.desktop_mode.default_height=630
else
PRODUCT_PRODUCT_PROPERTIES += \
    persist.wm.debug.desktop_mode.default_width=230 \
    persist.wm.debug.desktop_mode.default_height=360
endif

# Art
PRODUCT_PRODUCT_PROPERTIES += \
    pm.dexopt.post-boot=extract \
    pm.dexopt.boot-after-mainline-update=verify \
    pm.dexopt.install=speed-profile \
    pm.dexopt.install-fast=skip \
    pm.dexopt.install-bulk=speed-profile \
    pm.dexopt.install-bulk-secondary=verify \
    pm.dexopt.install-bulk-downgraded=verify \
    pm.dexopt.install-bulk-secondary-downgraded=extract \
    pm.dexopt.bg-dexopt=speed-profile \
    pm.dexopt.ab-ota=speed-profile \
    pm.dexopt.inactive=verify \
    pm.dexopt.cmdline=verify \
    pm.dexopt.shared=speed \
    pm.dexopt.first-boot=verify \
    pm.dexopt.boot-after-ota=verify \
    dalvik.vm.minidebuginfo=false \
    dalvik.vm.dex2oat-minidebuginfo=false

# Permissions
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

TARGET_DEFAULT_PIXEL_LAUNCHER ?= false
ifeq ($(TARGET_DEFAULT_PIXEL_LAUNCHER), true)
# Pixel Launcher
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.default_launcher=1 \
    persist.sys.quickswitch_pixel_shipped=1
else
# Launcher3
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.default_launcher=0 \
    persist.sys.quickswitch_pixel_shipped=0
endif

PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.pihooks_mainline_BRAND?=google \
    persist.sys.pihooks_mainline_DEVICE?=caiman \
    persist.sys.pihooks_mainline_MANUFACTURER?=Google \
    persist.sys.pihooks_mainline_PRODUCT?=caiman \
    persist.sys.pihooks_BRAND?=google \
    persist.sys.pihooks_MANUFACTURER?=Google \
    persist.sys.pihooks_DEVICE?=tokay \
    persist.sys.pihooks_PRODUCT?=tokay_beta \
    persist.sys.pihooks_DEVICE_INITIAL_SDK_INT?=25 \
    persist.sys.pihooks_SECURITY_PATCH?=2025-04-05 \
    persist.sys.pihooks_ID?=BP22.250325.007

PIHOOKS_BUILD_GMS_FINGERPRINT := google/oriole_beta/oriole:16/BP22.250325.007/13352765:user/release-keys
PIHOOKS_BUILD_FINGERPRINT := google/caiman/caiman:14/AD1A.240530.047.U1/12150698:user/release-keys
PIHOOKS_MODEL_SPOOF := Pixel 6
