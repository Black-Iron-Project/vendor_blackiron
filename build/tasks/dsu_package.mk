# Copyright (C) 2021 StatiXOS
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

# -----------------------------------------------------------------
# Blackiron DSU package

GSI_TARGETS := blackiron_gsi_arm64 blackiron_gsi_arm blackiron_gsi_x86 blackiron_gsi_x86_64

ifneq ($(filter $(TARGET_PRODUCT),$(GSI_TARGETS)),)

BLACKIRON_TARGET_PACKAGE := $(PRODUCT_OUT)/Blackiron-$(BLACKIRON_VERSION)-dsu.zip

.PHONY: dsu_package
dsu_package: $(INSTALLED_SYSTEMIMAGE_TARGET) $(INSTALLED_VBMETAIMAGE_TARGET) $(SOONG_ZIP)
	$(hide) cd $(PRODUCT_OUT) && $(SOONG_ZIP) -o $(BLACKIRON_TARGET_PACKAGE) -f system.img -f vbmeta.img
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}Blackiron DSU package ${txtrst}";
	@echo -e ""
	@echo -e ${CL_CYN}" ______  _             _        _____                  "
	@echo -e ${CL_CYN}"(____  \| |           | |      (_____)                 " 
	@echo -e ${CL_CYN}" ____)  ) | ____  ____| |  _      _    ____ ___  ____  "
	@echo -e ${CL_CYN}"|  __  (| |/ _  |/ ___) | / )    | |  / ___) _ \|  _ \ "
	@echo -e ${CL_CYN}"| |__)  ) ( ( | ( (___| |< (    _| |_| |  | |_| | | | |"
	@echo -e ${CL_CYN}"|______/|_|\_||_|\____)_| \_)  (_____)_|   \___/|_| |_|"
	@echo -e ${CL_CYN}"                                                       "
	@echo -e ${CL_CYN}"............................Blackiron.............................."
	@echo -e ${CL_CYN}"......................Based on Android 14........................."
	@echo -e ${CL_RST}".................................................................."
	@echo -e ""
	@echo -e "zip: "$(BLACKIRON_TARGET_PACKAGE)
	@echo -e "sha256: `cat $(BLACKIRON_TARGET_PACKAGE).sha256sum | cut -d ' ' -f 1`"
	@echo -e "size:`ls -lah $(BLACKIRON_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ""

endif
