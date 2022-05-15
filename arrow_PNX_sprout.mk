# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ArrowOS stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from PNX_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_DEVICE := PNX_sprout
PRODUCT_NAME := arrow_PNX_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8.1
PRODUCT_MANUFACTURER := FIH

PRODUCT_GMS_CLIENTID_BASE := android-nokia
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="PNX_00WW_FIH-user 11 00WW_6_210 00WW_6_210 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/Phoenix_00WW/PNX_sprout:11/RKQ1.200906.002/00WW_6_210:user/release-keys
