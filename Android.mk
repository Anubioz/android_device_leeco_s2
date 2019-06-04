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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := rr.leeco.gcam
LOCAL_SRC_FILES := Prebuilts/rr.leeco.gcam.apk
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
LOCAL_OVERRIDES_PACKAGES := Camera2
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := LeRemote
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Prebuilts/LetvRemoteControl_preinstall.apk
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := FiLMiCPro
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Prebuilts/FiLMiC+Pro_6.5.2.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)


#include $(CLEAR_VARS)
#LOCAL_MODULE := MGC
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := Prebuilts/MGC_6.2.030_B-S-G-based_v.0.1a.apk
#LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_MODULE_CLASS := APPS
#LOCAL_PRIVILEGED_MODULE := true
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_DEX_PREOPT := false
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Viper4Android
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Prebuilts/Viper4Android.apk
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := FDroid
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Prebuilts/FDroid.apk
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)



include $(CLEAR_VARS)
LOCAL_MODULE := AdAway
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := Prebuilts/AdAway-unsigned.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)




include $(CLEAR_VARS)
LOCAL_MODULE := RRLeecoPerf
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := Prebuilts/RRLeecoPerf.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := rr.leeco.exkernel
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := Prebuilts/rr.leeco.exkernel.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TitaniumBackup
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := Prebuilts/TitaniumBackup.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := PitchBlack
#LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
#LOCAL_PRIVILEGED_MODULE := false
#LOCAL_MODULE_CLASS := APPS
#LOCAL_SRC_FILES := Prebuilts/PitchBlack.apk
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_DEX_PREOPT := false
#include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := BigBlu
#LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
#LOCAL_PRIVILEGED_MODULE := false
#LOCAL_MODULE_CLASS := APPS
#LOCAL_SRC_FILES := Prebuilts/BigBlu.apk
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_DEX_PREOPT := false
#include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := Substratum
#LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
#LOCAL_PRIVILEGED_MODULE := false
#LOCAL_MODULE_CLASS := APPS
#LOCAL_SRC_FILES := Prebuilts/Substratum.apk
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_DEX_PREOPT := false
#include $(BUILD_PREBUILT)

ifneq ($(filter s2, $(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

KEYMASTER_IMAGES := keymaster.b00 keymaster.b01 keymaster.b02 keymaster.b03 keymaster.mdt
KEYMASTER_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/keymaster/,$(notdir $(KEYMASTER_IMAGES)))
$(KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYMASTER_SYMLINKS)


WIDEVINE_IMAGES := widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt
WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(WIDEVINE_IMAGES)))
$(WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Widevine firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)

IMS_LIBS := libimscamera_jni.so libimsmedia_jni.so
IMS_SYMLINKS := $(addprefix $(TARGET_OUT_APPS_PRIVILEGED)/ims/lib/arm64/,$(notdir $(IMS_LIBS)))
$(IMS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "IMS lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/lib64/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(IMS_SYMLINKS)

WCNSS_CFG_INI := $(TARGET_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_cfg.ini
$(WCNSS_CFG_INI): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS_qcom_cfg.ini firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /data/vendor/wifi/$(notdir $@) $@

WCNSS_DICT_DAT := $(TARGET_OUT_VENDOR)/firmware/wlan/prima/WCNSS_wlan_dictionary.dat
$(WCNSS_DICT_DAT): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS_wlan_dictionary.dat firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /persist/$(notdir $@) $@

WLAN_MAC := $(TARGET_OUT_VENDOR)/firmware/wlan/prima/wlan_mac.bin
$(WLAN_MAC): $(LOCAL_INSTALLED_MODULE)
	@echo "wlan_mac.bin firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /persist/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_CFG_INI) $(WCNSS_DICT_DAT) $(WLAN_MAC)


CMNLIB_IMAGES := cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt
CMNLIB_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(CMNLIB_IMAGES)))
$(CMNLIB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "TZ Apps firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMNLIB_SYMLINKS)

# RFS symlinks
RFS_MSM_ADSP_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/adsp/
$(RFS_MSM_ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM ADSP folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/lpass $@/ramdumps
	$(hide) ln -sf /persist/rfs/msm/adsp $@/readwrite
	$(hide) ln -sf /persist/rfs/shared $@/shared
	$(hide) ln -sf /persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /firmware $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MSM_MPSS_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/mpss/
$(RFS_MSM_MPSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM MPSS folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/modem $@/ramdumps
	$(hide) ln -sf /persist/rfs/msm/mpss $@/readwrite
	$(hide) ln -sf /persist/rfs/shared $@/shared
	$(hide) ln -sf /persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /firmware $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

RFS_MSM_SLPI_SYMLINKS := $(TARGET_OUT_VENDOR)/rfs/msm/slpi/
$(RFS_MSM_SLPI_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM SLPI folder structure: $@"
	@rm -rf $@/*
	@mkdir -p $(dir $@)/readonly/vendor
	$(hide) ln -sf /data/vendor/tombstones/rfs/modem $@/ramdumps
	$(hide) ln -sf /persist/rfs/msm/slpi $@/readwrite
	$(hide) ln -sf /persist/rfs/shared $@/shared
	$(hide) ln -sf /persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /firmware $@/readonly/firmware
	$(hide) ln -sf /vendor/firmware $@/readonly/vendor/firmware

ALL_DEFAULT_INSTALLED_MODULES += $(RFS_MSM_ADSP_SYMLINKS) $(RFS_MSM_MPSS_SYMLINKS) $(RFS_MSM_SLPI_SYMLINKS)

endif
