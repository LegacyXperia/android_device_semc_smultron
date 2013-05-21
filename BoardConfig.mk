-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/smultron/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG := nAa_smultron_defconfig

# Sensors
SOMC_CFG_SENSORS_ACCEL_BMA250_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

TARGET_OTA_ASSERT_DEVICE := ST15i,ST15a,smultron

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/smultron/bluedroid
