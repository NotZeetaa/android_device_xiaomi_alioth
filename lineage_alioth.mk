#
# Copyright (C) 2021-2022 The LineageOS Project
# Copyright (C) 2022 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Rising stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit Google Pixel Updatable APEX
TARGET_SHIP_PREBUILT_APEX := true
$(call inherit-product-if-exists, vendor/pixel-additional/config.mk)

# Device Specific Flags
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080

# Environment Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_USES_MINI_GAPPS := false

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

# RisingOS stuff
RISING_CHIPSET := "Snapdragon 870 5G"
RISING_MAINTAINER := "NotZeetaa"
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false
TARGET_USE_PIXEL_FINGERPRINT := true
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_CORE_GMS := false
TARGET_CORE_GMS_EXTRAS := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/alioth_global/alioth:13/TKQ1.220829.002/V14.0.4.0.TKHMIXM:user/release-keys
