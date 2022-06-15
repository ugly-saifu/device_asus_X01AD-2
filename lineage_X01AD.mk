#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from onclite device
$(call inherit-product, device/asus/X01AD/device.mk)

# Inherit some common dotOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Boot animation
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X01AD
PRODUCT_DEVICE := X01AD
PRODUCT_BRAND := Asus
PRODUCT_MODEL := ASUS-X01AD
PRODUCT_MANUFACTURER := Asus

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210705.005/7349499:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210705.005 7349499 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-asus

# Pixel Charger
TARGET_INCLUDE_PIXEL_CHARGER := true
