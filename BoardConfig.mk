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

BOARD_KERNEL_CMDLINE := 		# pas teste. d'apres la config du boot
BOARD_KERNEL_BASE := 0x80000000		# teste. d'apres la config du boot. pas de boot...
#BOARD_KERNEL_BASE := 0x01D80000	# teste, reboot auto. d'apres le scatter
BOARD_KERNEL_PAGESIZE := 2048		# pas teste. d'apres la config du boot
BOARD_KERNEL_OFFSET := 00008000		# pas teste. d'apres la config du boot
BOARD_RAMDISK_OFFSET := 04000000	# pas teste. d'apres la config du boot
BOARD_TAGS_OFFSET := 00000100		# pas teste. d'apres la config du boot

# fix this up by examining /proc/mtd on a running device
#BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 #0x1000000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 #0x1000000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736 #0x60000000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472 #0xc0000000
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472


BOARD_FLASH_BLOCK_SIZE := 131072	# BOARD_KERNEL_PAGESIZE * 64 trouve sur un forum, valeur generee par CM
BOARD_USES_UBOOT := true		# pas sur mais probable
BOARD_KERNEL_IMAGE_NAME := uImage	# pas sur, utile ?

#BOARD_HAS_LARGE_FILESYSTEM := true	# pas sur, utile ?
TARGET_USERIMAGES_USE_EXT4 := true
GET_USERIMAGES_SPARSE_EXT_DISABLED := false

TARGET_PREBUILT_KERNEL := device/lenovo/Tab2A710F/kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_Tab2A710F_defconfig	# pas teste


# Ajouts divers...
BOARD_HAS_NO_SELECT_BUTTON := true
USE_OPENGL_RENDERER := true
DEVICE_RESOLUTION := 600x1024
BOARD_HAVE_BLUETOOTH := true


# depuis le pack Lenovo KitKat
#USE_CAMERA_STUB := true
TARGET_NO_FACTORYIMAGE := true
TARGET_KMODULES := true
BOARD_USES_MTK_AUDIO := true
BOARD_EGL_CFG := vendor/lenovo/Tab2A710F/proprietary/system/lib/egl/egl.cfg
BUILD_EMULATOR_OPENGL := true
BUILD_EMULATOR_OPENGL_DRIVER := true



# pour adb pendant le boot, Doume59249
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    persist.sys.strictmode.visual=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.strictmode.visual=0
# To allow adb during boot sequence
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1

