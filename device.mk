#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/m52xq

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/sm7325-common/common.mk)

PRODUCT_PACKAGES += \
    init.m52xq.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.emmc:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/m52xq/m52xq-vendor.mk)
