# TWRP
RECOVERY_VARIANT := twrp

TARGET_RECOVERY_FSTAB := device/lenovo/Tab2A710F/recovery/recovery-twrp.fstab

TWHAVE_SELINUX := true
#TW_USE_TOOLBOX := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_MAX_BRIGHTNESS := 255                # Max brightness to prevent display damage
TW_DEFAULT_BRIGHTNESS := 128
TW_EXTRA_LANGUAGES := true
#TW_NO_REBOOT_BOOTLOADER := true

# Filesystem and storage
TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
FLASH_FROM_STORAGE := true              # flashes zips from their current location instead of copying them to /tmp
TW_INCLUDE_NTFS_3G := true
#TW_NO_EXFAT_FUSE := true
#TW_NO_EXFAT := true
#TARGET_USERIMAGES_USE_F2FS := true     # Compatible kernel needed
#TW_NEVER_UNMOUNT_SYSTEM := true        # Prevent TWRP from unmounting /system

# Theme and graphics
TW_THEME := portrait_mdpi
#TW_CUSTOM_THEME := device/lenovo/Tab2A710F/recovery/twres
