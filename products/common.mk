# Generic aospX product
PRODUCT_NAME := aospX
PRODUCT_BRAND := aospX
PRODUCT_DEVICE := generic

# Include GSM stuff
$(call inherit-product, vendor/aospX/products/gsm.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/google/google-vendor.mk)

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Required Common Packages
PRODUCT_PACKAGES += \
    Mms \
    Camera \
    FileManager \
    Superuser \
    Superuser.apk \
    su

# Live Wallpapers
PRODUCT_PACKAGES += \
    Basic \
    PhaseBeam \
    Galaxy4 \
    HoloSpiralWallpaper \
    NoiseField \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Backuptool
PRODUCT_COPY_FILES += \
    vendor/aospX/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh

# init.d
PRODUCT_COPY_FILES += \
    vendor/aospX/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aospX/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/aospX/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/aospX/prebuilt/common/bin/sysinit:system/bin/sysinit

PRODUCT_COPY_FILES += \
    vendor/aospX/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/aospX/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aospX/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/aospX/prebuilt/common/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/aospX/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/aospX/overlay/dictionaries


# aospX Version
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = 0-AR10

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=aospX-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(PRODUCT_RELEASE_NAME)

