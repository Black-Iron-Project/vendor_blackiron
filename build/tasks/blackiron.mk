BLACKIRON_TARGET_PACKAGE := $(PRODUCT_OUT)/Blackiron-$(BLACKIRON_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: blackiron bacon
blackiron: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(BLACKIRON_TARGET_PACKAGE)
	$(hide) $(SHA256) $(BLACKIRON_TARGET_PACKAGE) | cut -d ' ' -f1 > $(BLACKIRON_TARGET_PACKAGE).sha256sum
	$(hide) ./vendor/blackiron/tools/generate_json_build_info.sh $(BLACKIRON_TARGET_PACKAGE)
	$(hide) rm -rf $(call intermediates-dir-for,PACKAGING,target_files)
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}Blackiron ${txtrst}";
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

bacon: blackiron
