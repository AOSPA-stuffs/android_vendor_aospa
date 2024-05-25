#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_evert,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Inherit from evert device
$(call inherit-product, device/motorola/evert/device.mk)

PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := evert
PRODUCT_MANUFACTURER := Motorola
PRODUCT_NAME := aospa_evert
PRODUCT_MODEL := XT1926

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

endif
