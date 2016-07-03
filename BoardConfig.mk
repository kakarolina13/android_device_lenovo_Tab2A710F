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
ARCH_ARM_HAVE_NEON := true      # TEST

TARGET_BOOTLOADER_BOARD_NAME := Tab2A710F

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216		# = 16MB (OK with MTKDroidTools value)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216		# = 16MB (OK with MTKDroidTools value)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736		# = 1,5 GB  (OK with MTKDroidTools value)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472	# = 3 GB on 5,5 GB max  (OK with MTKDroidTools value)
BOARD_CACHEIMAGE_PARTITION_SIZE := 132120576		# = 0x07e00000 = 128MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Kernel
BOARD_KERNEL_CMDLINE :=
#BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_SOURCE := kernel/lenovo/Tab2A710F
#TARGET_KERNEL_CONFIG := bitland8127_tb_l_defconfig
TARGET_PREBUILT_KERNEL := device/lenovo/Tab2A710F/prebuilt/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/lenovo/Tab2A710F/prebuilt/egl.cfg
TARGET_BOARD_PLATFORM_GPU := mali-450	# TEST


# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true


# TODO
# Overlay
# resource files located in overlay will replace standard repository resources
BOARD_USES_OVERLAY := true
DEVICE_PACKAGE_OVERLAYS := \
	device/lenovo/Tab2A710F/overlay

# SELinux
BOARD_SEPOLICY_DIRS := \
       device/lenovo/Tab2A710F/sepolicy

#BOARD_SEPOLICY_UNION := \
#       app.te \
#       system.te \
