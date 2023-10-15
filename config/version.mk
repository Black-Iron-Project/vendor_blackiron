# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2022 Blackiron
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Versioning System
ifeq ($(BLACKIRON_VERSION_APPEND_TIME_OF_DAY),true)
    BUILD_DATE := $(shell date -u +%Y%m%d-%H%M%S)
else
    BUILD_DATE := $(shell date -u +%Y%m%d)
endif

TARGET_PRODUCT_SHORT := $(subst blackiron_,,$(BLACKIRON_BUILDTYPE))

BLACKIRON_BUILDTYPE ?= Community
BLACKIRON_STATUS := Alpha
BLACKIRON_BUILD_VERSION := $(PLATFORM_VERSION)
BLACKIRON_VERSION := $(BLACKIRON_BUILD_VERSION)-$(BLACKIRON_BUILDTYPE)-$(BLACKIRON_STATUS)-$(BLACKIRON_BUILD)-$(BUILD_DATE)
ROM_FINGERPRINT := Blackiron/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%H%M)

ifeq ($(BLACKIRON_BUILDTYPE), CI)
    BUILD_KEYS := release-keys
endif

PRODUCT_SYSTEM_PROPERTIES += \
  ro.blackiron.build.version=$(BLACKIRON_BUILD_VERSION) \
  ro.blackiron.build.date=$(BUILD_DATE) \
  ro.blackiron.buildtype=$(BLACKIRON_BUILDTYPE) \
  ro.blackiron.fingerprint=$(ROM_FINGERPRINT) \
  ro.blackiron.version=$(BLACKIRON_VERSION) \
  ro.modversion=$(BLACKIRON_VERSION)

ifneq ($(OVERRIDE_OTA_CHANNEL),)
PRODUCT_SYSTEM_PROPERTIES += \
    blackiron.updater.uri=$(OVERRIDE_OTA_CHANNEL)
endif
