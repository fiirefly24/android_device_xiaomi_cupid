#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/cupid/cupid-vendor.mk)

# Miui Camera for cupid
$(call inherit-product, device/xiaomi/miuicamera-cupid/device.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-derp

PRODUCT_PACKAGES += \
    ApertureResCupid \
    FrameworksResCupid \
    LineageResCupid \
    NfcResCupid \
    SettingsProviderResCupid \
    SettingsResCupid \
    SystemUIResCupid \
    WifiResCupid

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
