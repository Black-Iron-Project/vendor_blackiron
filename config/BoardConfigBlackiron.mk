include vendor/blackiron/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/blackiron/config/BoardConfigQcom.mk
endif

include vendor/blackiron/config/BoardConfigSoong.mk
