USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/Tab2A710F/BoardConfigVendor.mk

# Additional includes
TARGET_SPECIFIC_HEADER_PATH := device/lenovo/Tab2A710F/include

TARGET_BOARD_PLATFORM := mt8127
TARGET_BOARD_PLATFORM_GPU := mali-450
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
TARGET_NO_BOOTLOADER := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_BOOTLOADER_BOARD_NAME := Tab2A710F   # ?

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216		# = 16MB (OK with MTKDroidTools value)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216		# = 16MB (OK with MTKDroidTools value)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736		# = 1,5 GB  (OK with MTKDroidTools value)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472	# = 3 GB on 5,5 GB max  (OK with MTKDroidTools value)
BOARD_CACHEIMAGE_PARTITION_SIZE := 132120576		# = 0x07e00000 = 128MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file


# Kernel
#BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_SOURCE := kernel/lenovo/Tab2A710F
#TARGET_KERNEL_CONFIG := bitland8127_tb_l_defconfig
TARGET_PREBUILT_KERNEL := device/lenovo/Tab2A710F/prebuilt/kernel
TARGET_KMODULES := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/lenovo/Tab2A710F/prebuilt/egl.cfg

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# libxlog
TARGET_LDPRELOAD += libxlog.so

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



#############
# TEST ZONE #
#############

PRODUCT_CHARACTERISTICS := tablet
#BOARD_PROVIDES_RILD := true

# MTK Hardware		# TEST, don't know which are needed or not
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
BOARD_CONNECTIVITY_VENDOR := MediaTek

## Test with correct values ? (https://github.com/gingerboy92/android_device_xiaomi_note/blob/master/BoardConfig.mk)
##BOARD_HAS_MTK := true
### MTK Partitions Defines
##MTK_BOOT_DEVICE_NAME := /dev/bootimg
##MTK_BOOT_DEVICE_SIZE := 16777216
##MTK_RECOVERY_DEVICE_NAME := /dev/recovery
##MTK_RECOVERY_DEVICE_SIZE := 16777216
##MTK_UBOOT_DEVICE_NAME := /dev/uboot
##MTK_UBOOT_DEVICE_SIZE := 4194304
##MTK_NVRAM_DEVICE_NAME := /dev/nvram
##MTK_NVRAM_DEVICE_SIZE := 5242880



# HWComposer
BOARD_USES_HWCOMPOSER := true			# A tester
BOARD_USES_PROPRIETARY_HWC := true		# A tester
#BOARD_USE_SYSFS_VSYNC_NOTIFICATION := true	# A tester

# Graphics
BOARD_EGL_WORKAROUND_BUG_10194508 := true
#BOARD_USES_LEGACY_MTK_AV_BLOB := true

# audio
#TARGET_PROVIDES_LIBAUDIO := true		# A tester
BOARD_USES_MTK_AUDIO := true			# A tester
#BOARD_USES_ALSA_AUDIO:= true			# A tester

# USB OTG and External Sdcard
TARGET_USES_EXFAT := true
TARGET_USES_NTFS := true

# Offline charging
ADDITIONAL_DEFAULT_PROPERTIES += ro.mount.fs=EXT4	# ?

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
