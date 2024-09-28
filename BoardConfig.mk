#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/corvette

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5D06L1

# Audio
BOARD_USES_ALSA_AUDIO := true

# Display
TARGET_SCREEN_DENSITY := 640

# Kernel
TARGET_KERNEL_CONFIG += vendor/oplus/corvette.config
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)-kernel/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)-kernel/dtb.img
#BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
#BOARD_MKBOOTIMG_INIT_ARGS += --dtb $(TARGET_PREBUILT_DTB)
PRODUCT_COPY_FILES += \
          $(DEVICE_PATH)-kernel/dtb.img:$(TARGET_COPY_OUT)/dtb.img

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Vibrator
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_VIBRATOR_HAL
SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL := \
    USE_EFFECT_STREAM
SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL_USE_EFFECT_STREAM := true

# Include the proprietary files BoardConfig.
include vendor/oneplus/corvette/BoardConfigVendor.mk
