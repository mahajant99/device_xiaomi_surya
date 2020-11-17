#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/reloaded/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := reloaded_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := POCO/surya_global/surya:10/QKQ1.200512.002/V12.0.2.0.QJGMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
