#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/leeco/s2/s2-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    vendor/aosp/overlay/CarrierConfig

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

# Dalvik heap memory limits
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=288m \
    dalvik.vm.heapsize=768m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# HIDL HALs
$(call inherit-product, $(LOCAL_PATH)/hidl-hals.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.software.webview.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.webview.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    antradio_app \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8952 \
    audio.a2dp.default \
    audio_amplifier.msm8952 \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    libtinycompress \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skun_cajon.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skun_cajon.xml

# Sound trigger configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# XML Audio configuration files
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Dolby
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/audio/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml

# Camera
PRODUCT_PACKAGES += \
    Snap

ifneq ($(USE_PROPRIETARY_CAMERA),true)
PRODUCT_PACKAGES += \
    camera.msm8952 \
    libqomx_core \
    libmmcamera_interface \
    libmmjpeg_interface \
    libmm-qcamera
endif

PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/configs/external_camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/external_camera_config.xml

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Connectivity Engine support (CNE)
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Consumer IR
PRODUCT_PACKAGES += \
    ConsumerirTransmitter

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Data Services
PRODUCT_PACKAGES += \
    librmnetctl

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8952 \
    copybit.msm8952 \
    hwcomposer.msm8952 \
    memtrack.msm8952 \
    libdisplayconfig \
    libgenlock \
    liboverlay \
    libqdMetaData.system

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ad_calib.cfg:system/etc/ad_calib.cfg

# Fake logprint for fingerprint libs
PRODUCT_PACKAGES += \
    fakelogprint

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprint.msm8952

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
     fs_config_files

# GPS
PRODUCT_PACKAGES += \
    gps.msm8952 \
    libcurl \
    libgnss \
    libgnsspps \
    libgps.utils \
    libloc_core \
    libloc_stub \
    libloc_pla \
    liblocation_api

PRODUCT_PACKAGES += \
    flp.conf \
    gps.conf \
    izat.conf \
    lowi.conf \
    sap.conf \
    xtwifi.conf

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system

# Input configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/msm8976-skun-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8976-skun-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx_s2.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx_s2.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_rmi4_i2c.kl

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \
    $(LOCAL_PATH)/configs/msm_irqbalance_little_big.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance_little_big.conf

# LeEco Parts
PRODUCT_PACKAGES += \
    LeEcoParts \
    LePref \
    LeRemote 

# Libshims
PRODUCT_PACKAGES += \
    libshims_camera \
    libshims_ims

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Netutils
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0 \
    libandroid_net

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Perf
PRODUCT_BOOT_JARS += \
    QPerformance \
    UxPerformance

# Perf configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perf/commonresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/commonresourceconfigs.xml \
    $(LOCAL_PATH)/configs/perf/perfboostsconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfboostsconfig.xml \
    $(LOCAL_PATH)/configs/perf/targetconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetconfig.xml \
    $(LOCAL_PATH)/configs/perf/targetresourceconfigs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/targetresourceconfigs.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perf/perf-profile0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile0.conf \
    $(LOCAL_PATH)/configs/perf/perf-profile1.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile1.conf \
    $(LOCAL_PATH)/configs/perf/perf-profile2.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile2.conf \
    $(LOCAL_PATH)/configs/perf/perf-profile3.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile3.conf \
    $(LOCAL_PATH)/configs/perf/perf-profile4.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile4.conf \
    $(LOCAL_PATH)/configs/perf/perf-profile5.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile5.conf \
    $(LOCAL_PATH)/configs/perf/perf-profile6.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile6.conf

# Privapp Whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Qualcomm dependencies
PRODUCT_PACKAGES += \
    libtinyxml \
    libxml2

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.sh \
    init.qcom.post_boot.sh

PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.target.rc \
    init.s2.usb.rc \
    ueventd.qcom.rc \
    init.safailnet.rc

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp_policy/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    libsensorndkbridge

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/configs/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/sensors/configs/sensors_dbg_config.txt:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensors_dbg_config.txt \
    $(LOCAL_PATH)/sensors/configs/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Stlport
PRODUCT_PACKAGES += \
    libstlport

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier smart selection model files
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Thermal
PRODUCT_PACKAGES += \
    thermal.msm8952

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf \
    $(LOCAL_PATH)/configs/thermal-engine-srtphone.conf:system/etc/thermal-engine-srtphone.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2016-12-01

# VR
PRODUCT_PACKAGES += \
    vr.msm8952

# Whitelisted app
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# WCNSS
PRODUCT_PACKAGES += \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

# SDcard
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Model is set via init library
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := \
    ro.product.model

PRODUCT_PACKAGES += \
    parted \
    SnapdragonCamera2 \
    OmniSwitch \
    AdAway \
    KernelAdiutor

#GAPPS_VARIANT := stock
#GAPPS_FORCE_WEBVIEW_OVERRIDES := true
#GAPPS_FORCE_MMS_OVERRIDES := true
#GAPPS_FORCE_MESSAGING_OVERRIDES := true
#GAPPS_FORCE_LATINIME_OVERRIDES := true
#GAPPS_FORCE_DIALER_OVERRIDES := true
#GAPPS_FORCE_PICTTS_OVERRIDES := true
#GAPPS_FORCE_MATCHING_DPI := true
#GAPPS_FORCE_PACKAGE_OVERRIDES := true
#GAPPS_LOCAL_OVERRIDES_PACKAGES += LatinIME messaging MMS PicoTTS
#GAPPS_EXCLUDED_PACKAGES += Hangouts PlusOne GoogleHome Velvet NexusLauncher PrintServiceGoogle GooglePay Duo TalkBack Music Movies CloudPrint Books TagGoogle PixelLauncher GoogleNow



PRODUCT_PROPERTY_OVERRIDES += ro.build.type=userdebug \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb \
    ro.debuggable=1 \
    ro.product.locale=ru-RU \
    ro.config.zram=true \
    ro.core_ctl_min_cpu=1 \
    ro.core_ctl_max_cpu=4 \
    persist.sys.timezone=Europe/Moscow \
    ro.config.ringtone=RR.mp3 \
    ro.vendor.qti.core_ctl_min_cpu=1 \
    ro.vendor.qti.core_ctl_max_cpu=4




BOOTIMAGE_BUILD_PROPERTIES += ro.build.type=userdebug \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb \
    ro.debuggable=1 \
    ro.product.locale=ru-RU \
    ro.config.zram=true \
    ro.core_ctl_min_cpu=1 \
    ro.core_ctl_max_cpu=4 \
    persist.sys.timezone=Europe/Moscow \
    ro.config.ringtone=RR.mp3 \
    ro.vendor.qti.core_ctl_min_cpu=1 \
    ro.vendor.qti.core_ctl_max_cpu=4



PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ringtones/Boxbeat.ogg:system/media/audio/ringtones/Boxbeat.ogg \
    $(LOCAL_PATH)/ringtones/CyanTone.ogg:system/media/audio/ringtones/CyanTone.ogg \
    $(LOCAL_PATH)/ringtones/Highscore.ogg:system/media/audio/ringtones/Highscore.ogg \
    $(LOCAL_PATH)/ringtones/Lyon.ogg:system/media/audio/ringtones/Lyon.ogg \
    $(LOCAL_PATH)/ringtones/Resurrection.mp3:system/media/audio/ringtones/Resurrection.mp3 \
    $(LOCAL_PATH)/ringtones/Resurrection_Ringtone2.mp3:system/media/audio/ringtones/Resurrection_Ringtone2.mp3 \
    $(LOCAL_PATH)/ringtones/Rockin.ogg:system/media/audio/ringtones/Rockin.ogg \
    $(LOCAL_PATH)/ringtones/RR.mp3:system/media/audio/ringtones/RR.mp3 \
    $(LOCAL_PATH)/ringtones/Sheep.mp3:system/media/audio/ringtones/Sheep.mp3 \
    $(LOCAL_PATH)/ringtones/Yukaay.ogg:system/media/audio/ringtones/Yukaay.ogg


# Twrp
#RECOVERY_VARIANT := twrp
ifeq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp/fstab.qcom
TARGET_RECOVERY_DEVICE_DIRS += device/leeco/s2/twrp
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := "160"
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.product.locale=ru-RU \
    persist.sys.timezone=Europe/Moscow \
    ro.secure=0 \
    ro.debug.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1


TW_INCLUDE_CRYPTO := false
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := false
TW_EXCLUDE_SUPERSU := false
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TW_HAS_NO_RECOVERY_PARTITION := false
TW_HAS_NO_BOOT_PARTITION := false
TW_NO_REBOOT_BOOTLOADER := false
TW_NO_REBOOT_RECOVERY := false
TW_NO_BATT_PERCENT := false
TW_NO_CPU_TEMP := false
TW_INCLUDE_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false

TW_NEVER_UNMOUNT_SYSTEM := false
TW_NO_USB_STORAGE := false
TW_INCLUDE_INJECTTWRP := false
TW_INCLUDE_BLOBPACK := false
TW_HAS_DOWNLOAD_MODE := true
TW_SDEXT_NO_EXT4 := false
TW_NO_EXFAT_FUSE := false
TW_DEFAULT_LANGUAGE := ru
TW_NO_EXFAT := false
TW_EXCLUDE_ENCRYPTED_BACKUPS := false
TW_EXCLUDE_DEFAULT_USB_INIT := false
TW_INCLUDE_NTFS_3G := false
TW_OEM_BUILD := false
TW_INCLUDE_FB2PNG := true
TWRP_INCLUDE_LOGCAT := true
TARGET_RECOVERY_DEVICE_MODULES := libf2fs libf2fs_sparseblock libncurses libnl libssh libsysutils unrar 7z bash crypto fsck_msdos htop  logd logwrapper mkfs.f2fs mount.exfat nano tzdatacheck uncrypt gptfdisk libnl ntfs-3g p7zip squashfs-tools ext4_utils f2fs_utils libcutils libsparse logcat logd logwrapper squashfs_utils
#TWRP_EVENT_LOGGING := true
else
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true
TARGET_USERIMAGES_USE_F2FS := true

endif

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
DISABLE_DEXPREOPT := false
WITH_DEXPREOPT := true
USE_F2FS := true
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb \
    persist.delta_time.enable=true



#$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
