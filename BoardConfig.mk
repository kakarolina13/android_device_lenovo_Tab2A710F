TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lenovo/Tab2A710F/kernel

BOARD_MKBOOTIMG_ARGS := --base 80000000 --pagesize 2048 --kernel_offset 00008000 --ramdisk_offset 04000000 --tags_offset 00000100    --board 1438361675 

#MTK common twrp flags
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
TW_DISABLE_TTF := true
#TW_USE_TOOLBOX := true
TW_NO_EXFAT_FUSE := true
TW_THEME := portrait_mdpi
RECOVERY_SDCARD_ON_DATA := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/Tab2A710F/boot.mk



##### AJOUTS ####
#DEVICE_RESOLUTION := 1024x600

# disables things like sdcard partitioning and may save you some space if TWRP isn't fitting in your recovery patition
#BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_REBOOT_BOOTLOADER := true
#TW_INCLUDE_CRYPTO := true
#TW_EXCLUDE_MTP := true
#TW_EXCLUDE_SUPERSU := true

