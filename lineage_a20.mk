# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a20 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a20
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a20
PRODUCT_MODEL := SM-A205W

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a20
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a20cs-user 9 PPR1.180610.011 A205WVLU3ASK2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a20cs/a20:9/PPR1.180610.011/A205WVLU3ASK2:user/release-keys
