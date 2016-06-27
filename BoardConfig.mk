USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/Tab2A710F/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := Tab2A710F

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216		# = 16MB (OK with MTKDroidTools value)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216		# = 16MB (OK with MTKDroidTools value)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736		# = 1,5 GB  (OK with MTKDroidTools value)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472	# = 3 GB on 5,5 GB max  (OK with MTKDroidTools value)
BOARD_CACHEIMAGE_PARTITION_SIZE := 132120576		# = 0x07e00000 = 128MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"

BOARD_KERNEL_CMDLINE := 
#BOARD_KERNEL_CMDLINE := androidboot.selinux=disabled
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

#TARGET_KERNEL_SOURCE := kernel/lenovo/Tab2A710F
#TARGET_KERNEL_CONFIG := bitland8127_tb_l_defconfig
TARGET_PREBUILT_KERNEL := device/lenovo/Tab2A710F/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

RECOVERY_VARIANT := twrp
#
# Debug
#
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

#
# TWRP
#
TWHAVE_SELINUX := true
#TW_USE_TOOLBOX := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_MAX_BRIGHTNESS := 255		# Max brightness to prevent display damage
TW_DEFAULT_BRIGHTNESS := 128
TW_EXTRA_LANGUAGES := true
#TW_NO_REBOOT_BOOTLOADER := true

# Filesystem and storage
TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
FLASH_FROM_STORAGE := true		# flashes zips from their current location instead of copying them to /tmp
TW_INCLUDE_NTFS_3G := true
#TW_NO_EXFAT_FUSE := true
#TW_NO_EXFAT := true
#TARGET_USERIMAGES_USE_F2FS := true	# Compatible kernel needed
#TW_NEVER_UNMOUNT_SYSTEM := true	# Prevent TWRP from unmounting /system

# Theme and graphics
TW_THEME := portrait_mdpi
#TW_CUSTOM_THEME := device/lenovo/Tab2A710F/recovery/twres
