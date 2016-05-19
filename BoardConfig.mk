TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
##BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --base 80000000 --pagesize 2048 --kernel_offset 00008000 --ramdisk_offset 04000000 --tags_offset 00000100    --board 1438361675 
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/Tab2A710F/boot.mk

#MTK common twrp flags
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
#TW_DISABLE_TTF := true
#TW_USE_TOOLBOX := true
TW_NO_EXFAT_FUSE := true
TW_THEME := portrait_mdpi

RECOVERY_SDCARD_ON_DATA := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"

TARGET_PREBUILT_KERNEL := device/lenovo/Tab2A710F/kernel

# Corrections
#TW_DISABLE_TTF := true # TW_DISABLE_TTF support has been deprecated in TWRP.
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216


############
## AJOUTS ##
############
TW_NO_REBOOT_BOOTLOADER := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true # flashes zips from their current location instead of copying them to /tmp


### en test
###############
# include Logcat daemon for help in debugging
TWRP_INCLUDE_LOGCAT := true


### A tester
#############
#TW_INCLUDE_CRYPTO := true
#TW_EXCLUDE_SUPERSU := true

# Prevent TWRP from unmounting /system
#TW_NEVER_UNMOUNT_SYSTEM := true


### Testé, rejeté
##################
#DEVICE_RESOLUTION := 1024x600	# Apparemment inutile

