#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_beckham,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from beckham device
$(call inherit-product, device/motorola/beckham/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifiers
PRODUCT_DEVICE := beckham
PRODUCT_NAME := aospa_beckham
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto Z3 Play
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=beckham \
    PRIVATE_BUILD_DESC="beckham-user 9 PPWS29.131-27-1-15 4d8b92 release-keys"

#BUILD_FINGERPRINT := motorola/beckham/beckham:9/PPWS29.131-27-1-15/4d8b92:user/release-keys

endif
