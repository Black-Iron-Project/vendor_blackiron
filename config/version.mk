PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 0

BLACKIRON_BUILDTYPE ?= UNOFFICIAL

# Increase BLKI Version with each major release.
BLKI_VERSION := 4.6

# Internal version
LINEAGE_VERSION := Blackiron-$(BLKI_VERSION)_$(LINEAGE_BUILD)-$(PRODUCT_VERSION_MAJOR)-$(shell date +%Y%m%d)-$(shell date -u +%H)$(shell date -u +%M)-$(BLACKIRON_BUILDTYPE)

# Display version
LINEAGE_DISPLAY_VERSION := Blackiron-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(BLKI_VERSION)

# Sign Build
ifneq (eng,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard vendor/lineage/signing/keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/lineage/signing/keys/releasekey
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
ifneq (,$(wildcard vendor/lineage/signing/keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/lineage/signing/keys/otakey.x509.pem
endif
endif
