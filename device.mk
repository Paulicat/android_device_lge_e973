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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/lge/e975/e975-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/e973/overlay

## common overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/ls970-common/overlay

# Inherit from ls970-common
$(call inherit-product, device/lge/ls970-common/ls970-common.mk)

# Enable for debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# Telephony Properties
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0 \
	ro.telephony.default_network=9 \
	telephony.lteOnGsmDevice=1

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/e973/ramdisk/init.e973.rc:root/init.e973.rc \
    device/lge/e973/ramdisk/ueventd.e973.rc:root/ueventd.e973.rc \
    device/lge/e973/ramdisk/fstab.e973:root/fstab.e973

# Sounds
PRODUCT_COPY_FILES += \
    device/lge/e973/prebuilt/Video_Game.ogg:/system/media/audio/ringtones/Video_Game.ogg \
    device/lge/e973/prebuilt/Cloud.ogg:/system/media/audio/notifications/Cloud.ogg \
    device/lge/e973/prebuilt/Promise.ogg:/system/media/audio/notifications/Promise.ogg \
    device/lge/e973/prebuilt/IME_Delete.ogg:/system/media/audio/ui/IME_Delete.ogg \
    device/lge/e973/prebuilt/IME_Spacebar.ogg:/system/media/audio/ui/IME_Spacebar.ogg \
    device/lge/e973/prebuilt/IME_Standard.ogg:/system/media/audio/ui/IME_Standard.ogg \
    device/lge/e973/prebuilt/KeypressDelete.ogg:/system/media/audio/ui/KeypressDelete.ogg \
    device/lge/e973/prebuilt/KeypressReturn.ogg:/system/media/audio/ui/KeypressReturn.ogg \
    device/lge/e973/prebuilt/KeypressSpacebar.ogg:/system/media/audio/ui/KeypressSpacebar.ogg \
    device/lge/e973/prebuilt/KeypressStandard.ogg:/system/media/audio/ui/KeypressStandard.ogg

# Prebuilt libcyanogen-dsp.so
PRODUCT_COPY_FILES += \
	device/lge/e973/prebuilt/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
