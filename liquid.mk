# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone_vendor.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Copy specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

## Device identifier. This must come after all inclusions
PRODUCT_NAME := liquid_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE

TARGET_VENDOR := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:6.0.1/MTC19V/2862947:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 6.0.1 MTC19V 2862947 release-keys"
    BUILD_ID=MTC19V
