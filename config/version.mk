# (C) 2023-2024 Blackiron

# Blackiron versioning

PRODUCT_SOONG_NAMESPACES += \
    vendor/blackiron/version

BLACKIRON_FLAVOR := Baklava
BLACKIRON_VERSION := 6.1
BLACKIRON_VERSION_MAJOR := 16
BLACKIRON_CODENAME := Bersagliera
BLACKIRON_RELEASE_TYPE := Stable
BLACKIRON_CODE := $(BLACKIRON_VERSION)
BLACKIRON_BUILDTYPE ?= UNOFFICIAL
BLACKIRON_BUILD_DATE := $(shell date +%Y%m%d)-$(shell date -u +%H)$(shell date -u +%M)
CURRENT_DEVICE := $(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

ifeq ($(WITH_GMS), true)
	ifeq ($(TARGET_CORE_GMS), true)
#    	BLACKIRON_PACKAGE_TYPE ?= CORE
#	else 
    	BLACKIRON_PACKAGE_TYPE ?= GAPPS
	endif
else
    BLACKIRON_PACKAGE_TYPE ?= VANILLA
endif

# Build version
BLACKIRON_BUILD_VERSION := $(BLACKIRON_VERSION)_$(CURRENT_DEVICE)-$(BLACKIRON_VERSION_MAJOR)-$(BLACKIRON_BUILD_DATE)-$(BLACKIRON_PACKAGE_TYPE)-$(BLACKIRON_BUILDTYPE)

# Display version
BLACKIRON_DISPLAY_VERSION := $(BLACKIRON_VERSION)-$(BLACKIRON_PACKAGE_TYPE)-$(BLACKIRON_BUILDTYPE)-$(CURRENT_DEVICE)

# Blackiron properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.blackiron.code=$(BLACKIRON_CODENAME) \
    ro.blackiron.packagetype=$(BLACKIRON_PACKAGE_TYPE) \
    ro.blackiron.releasetype=$(BLACKIRON_BUILDTYPE) \
    ro.blackiron.version?=$(BLACKIRON_VERSION) \
    ro.blackiron.build.version=$(BLACKIRON_BUILD_VERSION) \
    ro.blackiron.display.version?=$(BLACKIRON_DISPLAY_VERSION) \
    ro.blackiron.platform_release_codename=$(BLACKIRON_FLAVOR) \
    ro.blackiron.device=$(CURRENT_DEVICE) \
    ro.blackiron.storage?=$(BLACKIRON_STORAGE) \
    ro.blackiron.ram?=$(BLACKIRON_RAM) \
    ro.blackiron.battery?=$(BLACKIRON_BATTERY) \
    ro.blackiron.display_resolution?=$(BLACKIRON_DISPLAY) \
    ro.blackiron.maintainer=$(BLACKIRON_MAINTAINER)
