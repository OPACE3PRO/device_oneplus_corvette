#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from corvette device
$(call inherit-product, device/oneplus/corvette/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_corvette
PRODUCT_DEVICE := corvette
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PJX110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="PJX110-user 15 AP3A.240617.008 U.1c92a95_9c8a_52f3 release-keys" \
    BuildFingerprint=OnePlus/PJX110/OP5D06L1:15/AP3A.240617.008/U.1c92a95_9c8a_52f3:user/release-keys \
    DeviceName=OP5D06L1 \
    DeviceProduct=PJX110 \
    SystemDevice=OP5D06L1 \
    SystemName=PJX110
