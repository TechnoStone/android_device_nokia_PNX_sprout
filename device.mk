# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/nokia/Phoenix/Phoenix-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2246
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# A/B Updater
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti \
    android.hardware.boot@1.1-impl-qti.recovery \
    android.hardware.boot@1.1-service \
    bootctrl.sdm710 \
    bootctrl.sdm710.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Common init scripts
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/goodix_fp.idc:system/usr/idc/goodix_fp.idc \
    $(LOCAL_PATH)/configs/idc/goodix_fp.idc:system/usr/idc/uinput-egis.idc \

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/goodix_fp.kl:system/usr/keylayout/goodix_fp.kl \
    $(LOCAL_PATH)/configs/keylayout/goodix_fp.kl:system/usr/keylayout/uinput-egis.kl \

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_HOST_PACKAGES += \
    brillo_update_payload

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service
