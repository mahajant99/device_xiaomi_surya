#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/phoenix

# Assert
TARGET_OTA_ASSERT_DEVICE := phoenix,phoenixin

# Init
TARGET_INIT_VENDOR_LIB := libinit_phoenix
TARGET_RECOVERY_DEVICE_MODULES := libinit_phoenix

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_KERNEL_CONFIG := phoenix_defconfig

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# Partitions
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736

# Inherit from the proprietary version
-include vendor/xiaomi/phoenix/BoardConfigVendor.mk
