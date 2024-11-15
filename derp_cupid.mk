#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

# Inherit from common lineage configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit some common DerpFest stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_NOT_USES_BLUR := true
TARGET_USES_MINI_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ICONS := true

PRODUCT_NAME := derp_cupid
PRODUCT_DEVICE := cupid
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201123G

PRODUCT_SYSTEM_NAME := cupid_global
PRODUCT_SYSTEM_DEVICE := cupid

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="cupid_global-user 14 UKQ1.230917.001 V816.0.6.0.ULCMIXM release-keys" \
#    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
#    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/cupid_global/cupid:14/UKQ1.230917.001/V816.0.6.0.ULCMIXM:user/release-keys

PRODUCT_SYSTEM_PROPERTIES += ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
