#
# Copyright (C) 2021 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),surya)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
