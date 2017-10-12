# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
# Copyright (C) 2017 The halogenOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2_plus device
$(call inherit-product, device/zuk/z2_plus/device.mk)

# Inherit some common XOS stuff.
$(call inherit-product, vendor/xos/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := XOS_z2_plus
PRODUCT_DEVICE := z2_plus
PRODUCT_BRAND := Zuk
PRODUCT_MODEL := Z2 Plus
PRODUCT_MANUFACTURER := Zuk
PRODUCT_GMS_CLIENTID_BASE := android-zuk

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="z2_plus" \
    PRODUCT_NAME="z2_plus" \
    BUILD_FINGERPRINT="ZUK/z2_plus/z2_plus:7.0/NRD90M/2.5.412_170428:user/release-keys" \
    PRIVATE_BUILD_DESC="z2_plus-user 7.0 NRD90M 2.5.412_170428 release-keys"

TARGET_VENDOR := Zuk
