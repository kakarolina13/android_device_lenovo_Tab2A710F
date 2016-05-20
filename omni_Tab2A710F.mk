$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Time Zone data Credits to desalesouche => http://forum.xda-developers.com/showpost.php?p=64850444&postcount=1204
#bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/prebuilt/mkntfs:recovery/root/sbin/mkntfs \
    $(LOCAL_PATH)/prebuilt/ntfs-3g:recovery/root/sbin/ntfs-3g \
    $(LOCAL_PATH)/prebuilt/ntfsfix:recovery/root/sbin/ntfsfix 


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL="Tab2A7-10F" \
    TARGET_DEVICE="Tab2A710F"

PRODUCT_NAME := omni_Tab2A710F
PRODUCT_DEVICE := Tab2A710F

