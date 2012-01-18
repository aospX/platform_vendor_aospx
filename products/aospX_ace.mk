# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/full_ace.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aospX/products/common.mk)

# Temp fix for GPS
PRODUCT_COPY_FILES += \
    vendor/aospX/prebuilt/ace/lib/hw/gps.spade.so:system/lib/hw/gps.spade.so

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aospX_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := ace
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41D 223971 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := DesireHD
