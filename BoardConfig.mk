USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := true

# inherit from the proprietary version
-include vendor/amlogic/aml8726m/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := amlogic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := m1ref

TARGET_PROVIDES_INIT_RC := true
TARGET_RECOVERY_INITRC := device/amlogic/aml8726m/recovery_init.rc

TARGET_PREBUILT_KERNEL := device/amlogic/aml8726m/kernel
BOARD_KERNEL_CMDLINE := init=/init console=ttyS0,115200 mem=512M board_ver=v2 clk81=187500k hdmitx=powermode1,unplug_powerdown rootwait logo=osd1,0x84100000,lcd,full a9_clk=600M
BOARD_KERNEL_BASE := 0x80008000

# fix this up by examining /proc/mtd on a running device
# dev:    size   erasesize  name
# mtd0: 00800000 00200000 "nandboot"
# mtd1: 01000000 00400000 "logo"
# mtd2: 01000000 00400000 "aml_logo"
# mtd3: 02000000 00400000 "recovery"
# mtd4: 02000000 00400000 "boot"
# mtd5: 14000000 00400000 "system"
# mtd6: 08000000 00400000 "cache"
# mtd7: 60000000 00400000 "userdata"
# mtd8: 17c000000 00400000 "NFTL_Part"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x14000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x60000000
BOARD_FLASH_BLOCK_SIZE := 4194304

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/amlogic/aml8726m/recovery_ui.c

WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

BOARD_HAVE_BLUETOOTH := true

BOARD_EGL_CFG := device/amlogic/aml8726m/egl.cfg

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
