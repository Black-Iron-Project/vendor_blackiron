# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Blackiron Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.blackiron.build.version=$(LINEAGE_VERSION) \
    ro.blackiron.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.blackiron.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(CR_VERSION) \
    ro.blackironlegal.url=https://blackiron.net/legal.php

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
