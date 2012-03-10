$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/smultron/smultron-vendor.mk)


# Discard inherited values and use our own instead.
PRODUCT_NAME := smultron
PRODUCT_DEVICE := smultron
PRODUCT_MODEL := smultron

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

-include device/semc/mogami-common/mogami.mk

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/semc/smultron/overlay

# These are the hardware-specific configuration files
#PRODUCT_COPY_FILES += \
#	device/semc/smultron/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/smultron/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/smultron/prebuilt/bootrec-device:root/sbin/bootrec-device \
    device/semc/smultron/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/smultron/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_M.rle:root/logo.rle \
    device/semc/smultron/recovery.fstab:root/recovery.fstab


# semc msm7x30 uses high-density artwork where available
PRODUCT_LOCALES += mdpi

-include device/semc/msm7x30-common/prebuilt/resources-mdpi.mk

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160
