#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL msm8960 devices, and
# are also specific to msm8960 devices
#
# Everything in this directory will become public

PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=wifi-only

PRODUCT_COPY_FILES := \
    device/asus/flo/fstab.flo:root/fstab.flo \
    device/asus/flo/init.flo.rc:root/init.flo.rc \
    device/asus/flo/fstab/fstab.flo.all-EXT4:system/extras/fstab/fstab.flo.all-EXT4 \
    device/asus/flo/fstab/fstab.flo.all-F2FS:system/extras/fstab/fstab.flo.all-F2FS \
    device/asus/flo/fstab/fstab.flo.data-F2FS:system/extras/fstab/fstab.flo.data-F2FS \
    device/asus/flo/tools/repack-and-flash.sh:system/extras/tools/repack-and-flash.sh \
    device/asus/flo/tools/format-system.sh:system/extras/tools/format-system.sh \
    device/asus/flo/tools/kernel/repackimg.sh:system/extras/tools/kernel/repackimg.sh \
    device/asus/flo/tools/kernel/unpackimg.sh:system/extras/tools/kernel/unpackimg.sh \
    device/asus/flo/tools/kernel/cleanup.sh:system/extras//tools/kernel/cleanup.sh \
    device/asus/flo/tools/kernel/authors.txt:system/extras/tools/kernel/authors.txt \
    device/asus/flo/tools/kernel/bin/aik:system/extras/tools/kernel/bin/aik \
    device/asus/flo/tools/kernel/bin/busybox:system/extras/tools/kernel/bin/busybox \
    device/asus/flo/tools/kernel/bin/file:system/extras/tools/kernel/bin/file \
    device/asus/flo/tools/kernel/bin/lz4:system/extras/tools/kernel/bin/lz4 \
    device/asus/flo/tools/kernel/bin/magic:system/extras/tools/kernel/bin/magic \
    device/asus/flo/tools/kernel/bin/mkbootfs:system/extras/tools/kernel/bin/mkbootfs \
    device/asus/flo/tools/kernel/bin/mkbootimg:system/extras/tools/kernel/bin/mkbootimg \
    device/asus/flo/tools/kernel/bin/unpackbootimg:system/extras/tools/kernel/bin/unpackbootimg \
    device/asus/flo/tools/kernel/bin/xz:system/extras/tools/kernel/bin/xz

PRODUCT_PACKAGES += \
	camera.flo

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.flo

# F2FS
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# Filesystem management tools
PRODUCT_PACKAGES += \
    setup_fs \
    e2fsck

# the actual meat of the device-specific product definition
$(call inherit-product, device/asus/flo/device-common.mk)

# inherit from the non-open-source side, if present
$(call inherit-product-if-exists, vendor/asus/flo/device-vendor.mk)

DEVICE_PACKAGE_OVERLAYS := device/asus/flo/overlay
