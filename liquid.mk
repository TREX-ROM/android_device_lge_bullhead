# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := liquid_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5x
TARGET_MANUFACTURER := LGE

TARGET_VENDOR := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:6.0.1/MHC19J/2595691:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 6.0.1 MHC19J 2595691 release-keys" \
    BUILD_ID=MHC19J