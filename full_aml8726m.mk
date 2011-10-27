$(call inherit-product, $(SRC_TARGET_DIR)/product/small_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/amlogic/aml8726m/device-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/amlogic/aml8726m/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/amlogic/aml8726m/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/amlogic/aml8726m/init.rc:root/init.rc

PRODUCT_COPY_FILES += \
    device/amlogic/aml8726m/init.d/10amlogic:system/etc/init.d/10amlogic \
    device/amlogic/aml8726m/init.d/11pointercal:system/etc/init.d/11pointercal \
    device/amlogic/aml8726m/etc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/amlogic/aml8726m/etc/vold.fstab:system/etc/vold.fstab \
    device/amlogic/aml8726m/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/amlogic/aml8726m/prebuilt/fbset:system/bin/fbset \
    device/amlogic/aml8726m/prebuilt/set_display_mode.sh:system/bin/set_display_mode.sh \
    device/amlogic/aml8726m/prebuilt/adc_keypad.kl:system/usr/keylayout/adc_keypad.kl \
    device/amlogic/aml8726m/prebuilt/aml_keypad.kl:system/usr/keylayout/aml_keypad.kl \
    device/amlogic/aml8726m/prebuilt/jogball.kl:system/usr/keylayout/jogball.kl

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_PACKAGES += \
    TSCalibration

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=32m \
    persist.sys.use_16bpp_alpha=1 \
    qemu.sf.lcd_density=240 \
    ro.additionalmounts=/mnt/nand;/mnt/usb \
    ro.opengles.version=131072 \
    ro.sf.gsensorposition=4 \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/nand \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=45

PRODUCT_LOCALES += hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_aml8726m
PRODUCT_DEVICE := aml8726m
