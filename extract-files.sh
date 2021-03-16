#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib64/hw/camera.qcom.so)
            "${PATCHELF}" --add-needed "libcomparetf2.so" "${2}"
            sed -i 's/libsnsapi/libhaxapi/g' "${2}"
            ;;
        vendor/lib64/libcamera_nn_stub.so|vendor/lib64/camera/components/com.qti.node.eisv3.so|vendor/lib64/camera/components/com.qti.camx.chiiqutils.so|vendor/lib64/camera/components/libmmcamera_cac3.so|vendor/lib64/camera/components/com.qti.node.eisv2.so)
            sed -i 's/libsnsapi/libhaxapi/g' "${2}"
            ;;
        vendor/lib64/libhaxapi.so )
            "${PATCHELF}" --set-soname "libhaxapi.so" "${2}"
            ;;
        vendor/lib64/libvidhance.so|vendor/lib64/camera/components/com.vidhance.node.eis.so)
            "${PATCHELF}" --add-needed "libcomparetf2.so" "${2}"
            "${PATCHELF}" --add-needed "libc++demangle.so" "${2}"
            ;;
        vendor/etc/qdcm*)
           sed -i '0,/smart_MC/s//zsmart_MC/' "${2}"
           ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=surya
export DEVICE_COMMON=sm6150-common
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
