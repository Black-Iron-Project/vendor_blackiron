# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
# Copyright (C) 2024 Blackiron
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

# -----------------------------------------------------------------
# Blackiron OTA update package

ROM_ZIP_FILE := $(PRODUCT_OUT)/Blackiron-$(BLACKIRON_BUILD_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: bacon
bacon: $(DEFAULT_GOAL)
	@echo ""
	@echo "                                                   " >&2
	@echo "                                                   " >&2
	@echo "                                                   " >&2
	@echo "                                                   " >&2
	@echo "  ______  _              _     _                   " >&2
	@echo " (____  \| |            | |   | |                  " >&2
	@echo "  ____)  ) | _____  ____| |  _| | ____ ___  ____   " >&2
	@echo " |  __  (| |(____ |/ ___) |_/ ) |/ ___) _ \|  _ \  " >&2
	@echo " | |__)  ) |/ ___ ( (___|  _ (| | |  | |_| | | | | " >&2
	@echo " |______/ \_)_____|\____)_| \_)_|_|   \___/|_| |_| " >&2
	@echo "                                                   " >&2
	@echo "                                                   " >&2
	@echo "                                                   " >&2
	@echo "                                                   " >&2
	@echo "***************************************************" >&2
	@echo " Size            : $(shell du -hs $(ROM_ZIP_FILE) | awk '{print $$1}')"
	@echo " Size(in bytes)  : $(shell wc -c $(ROM_ZIP_FILE) | awk '{print $$1}')"
	@echo " Package Complete: $(ROM_ZIP_FILE)     " >&2
	@echo "***************************************************" >&2
	@echo ""
