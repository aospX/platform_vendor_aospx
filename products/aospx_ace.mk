# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/full_ace.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aospx/products/common.mk)

# Inherit proprietary qcom stuff.
$(call inherit-product, vendor/qcom/proprietary/qcom-vendor.mk)

# Include GSM stuff
$(call inherit-product, vendor/aospx/products/gsm.mk)

# Temp fix for GPS
PRODUCT_COPY_FILES += \
    vendor/aospx/prebuilt/ace/lib/hw/gps.spade.so:system/lib/hw/gps.spade.so

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aospx_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := ace
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_ID=IMM76D BUILD_FINGERPRINT=google/yakju/maguro:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76D 299849 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := DesireHD
