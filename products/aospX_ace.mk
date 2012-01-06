# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/cm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aospX/products/common.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/google/google-vendor.mk)

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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=htc_wwe/htc_ace/ace:2.3.3/GRI40/87995:user/release-keys PRIVATE_BUILD_DESC="2.50.405.2 CL87995 release-keys"

# aospX Version
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = 0-AR3

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=aospX-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-DesireHD

