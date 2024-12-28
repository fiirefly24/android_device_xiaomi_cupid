#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot Animation 
TARGET_BOOT_ANIMATION_RES := 1080

# RisingOS Flags
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 8 Gen 1" \
    RisingMaintainer="Fikri"

TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

PRODUCT_NAME := lineage_cupid
PRODUCT_DEVICE := cupid
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201123G

BUILD_FINGERPRINT := Xiaomi/cupid_global/cupid:14/UKQ1.230917.001/V816.0.10.0.ULCMIXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cupid_global-user 14 UKQ1.230917.001 V816.0.10.0.ULCMIXM release-keys" \
    BuildFingerprint=$(BUILD_FINGERPRINT) \
    DeviceProduct=cupid \
    SystemName=cupid_global

PRODUCT_SYSTEM_PROPERTIES += ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
