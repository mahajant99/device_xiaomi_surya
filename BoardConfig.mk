#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
-include device/xiaomi/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/phoenix

# Assert
TARGET_OTA_ASSERT_DEVICE := phoenix

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_KERNEL_CONFIG := vendor/lineage_phoenix_defconfig

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# Partitions
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736

# Inherit from the proprietary version
-include vendor/xiaomi/phoenix/BoardConfigVendor.mk
