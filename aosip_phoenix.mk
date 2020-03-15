#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Redmi/phoenix/phoenix:10/QKQ1.190825.002/V11.0.9.0.QGHCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="phoenix-user 10 QKQ1.190825.002 V11.0.9.0.QGHCNXM release-keys" \
    PRODUCT_NAME="phoenix" \
    TARGET_DEVICE="phoenix"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
