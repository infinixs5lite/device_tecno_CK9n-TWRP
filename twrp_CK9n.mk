#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from CK9n device
$(call inherit-product, device/tecno/CK9n/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := CK9n
PRODUCT_NAME := twrp_CK9n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CK9n
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ck9n_h933-user 12 SP1A.210812.016 339690 release-keys"

BUILD_FINGERPRINT := TECNO/CK9n-GL/TECNO-CK9n:12/SP1A.210812.016/230530V1391:user/release-keys
