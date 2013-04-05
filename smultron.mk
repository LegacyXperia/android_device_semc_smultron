# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/smultron/smultron-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/smultron/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Init files
PRODUCT_COPY_FILES += \
    device/semc/smultron/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/smultron/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_M.rle:root/logo.rle

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    device/semc/smultron/recovery/bootrec-device:recovery/bootrec-device

# Device specific configs
PRODUCT_COPY_FILES += \
    device/semc/smultron/config/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
    device/semc/smultron/config/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    device/semc/smultron/config/msm_pmic_pwr_key.kl:system/usr/keylayout/msm_pmic_pwr_key.kl \
    device/semc/smultron/config/pm8058-keypad.kl:system/usr/keylayout/pm8058-keypad.kl \
    device/semc/smultron/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    device/semc/smultron/config/cyttsp_key.kl:system/usr/keylayout/cyttsp_key.kl \
    device/semc/smultron/config/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/semc/smultron/config/sensors.conf:system/etc/sensors.conf \
    device/semc/smultron/config/tiwlan.ini:system/etc/tiwlan.ini

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-mdpi.mk)

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    com.qc.hdmi_out=false
