PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 0

# Increase BLKI Version with each major release.
BLKI_VERSION := 4.3

# Internal version
LINEAGE_VERSION := Blackiron-$(BLKI_VERSION)-$(LINEAGE_BUILD)-$(PRODUCT_VERSION_MAJOR)-$(shell date +%Y%m%d)-$(shell date -u +%H)$(shell date -u +%M)-$(BLACKIRON_BUILDTYPE)

# Display version
LINEAGE_DISPLAY_VERSION := Blackiron-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(BLKI_VERSION)
