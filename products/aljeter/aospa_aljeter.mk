#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_aljeter,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Inherit from aljeter device
$(call inherit-product, device/motorola/aljeter/device.mk)

PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := aljeter
PRODUCT_MANUFACTURER := Motorola
PRODUCT_NAME := aospa_aljeter
PRODUCT_MODEL := XT1922

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 720p

endif
