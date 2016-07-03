USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/Tab2A710F/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt8127
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
TARGET_BOOTLOADER_BOARD_NAME := Tab2A710F
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216		# = 16MB (OK with MTKDroidTools value)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216		# = 16MB (OK with MTKDroidTools value)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736		# = 1,5 GB  (OK with MTKDroidTools value)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472	# = 3 GB on 5,5 GB max  (OK with MTKDroidTools value)
BOARD_CACHEIMAGE_PARTITION_SIZE := 132120576		# = 0x07e00000 = 128MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file      # TEST

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_BOARD_PLATFORM_GPU := mali-450	# TEST


# Kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_SOURCE := kernel/lenovo/Tab2A710F
#TARGET_KERNEL_CONFIG := bitland8127_tb_l_defconfig
TARGET_PREBUILT_KERNEL := device/lenovo/Tab2A710F/kernel

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/lenovo/Tab2A710F/egl.cfg



# SELinux
BOARD_SEPOLICY_DIRS := \
       device/lenovo/Tab2A710F/sepolicy

#BOARD_SEPOLICY_UNION := \
#       app.te \
#       system.te \


# TWRP config
#-include device/lenovo/Tab2A710F/TwrpConfig.mk
