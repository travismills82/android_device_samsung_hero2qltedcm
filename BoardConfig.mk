#
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the proprietary version
-include vendor/samsung/hero2qltedcm/BoardConfigVendor.mk

BOARD_VENDOR := samsung
VENDOR_PATH := device/samsung/hero2qltedcm

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(VENDOR_PATH)/include

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo

# Assertions
TARGET_OTA_ASSERT_DEVICE := hero2qltedcm,SC-02H,SC02H

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Board
TARGET_BOARD_INFO_FILE := $(VENDOR_PATH)/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8996
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=24M@0-0xffffffff rcupdate.rcu_expedited=1
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x02000000
BOARD_RAMDISK_OFFSET     := 0x02200000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/msm8996
TARGET_KERNEL_CONFIG := lineageos_hero2qlte_jpn_dcm_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_COMPILE_WITH_MSM_KERNEL := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(VENDOR_PATH)/mkbootimg.mk

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf-msm8996

AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true

AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_SRS_TRUEMEDIA := true
TARGET_USES_QCOM_MM_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1
# default is anyway false but just to keep in mind
AUDIO_FEATURE_ENABLED_PLAYBACK_ULL := false

# Bionic
TARGET_LD_SHIM_LIBS := /system/vendor/lib/libmmcamera_ppeiscore.so|libshims_camera.so:/system/vendor/bin/mm-qcamera-daemon|libshims_qcamera-daemon.so

# Bluetooth
TARGET_QCOM_BLUETOOTH_VARIANT := caf-msm8996

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(VENDOR_PATH)/bluetooth
BOARD_HAS_QCA_BT_ROME := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true
DEVICE_SPECIFIC_CAMERA_PATH := $(VENDOR_PATH)/camera
TARGET_SUPPORT_HAL1 := false
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_USES_QTI_CAMERA_DEVICE := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
WITH_LINEAGE_CHARGER := false

# Disable secure discard because it's SLOW
BOARD_SUPPRESS_SECURE_ERASE := true

# Display
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8996

BOARD_USES_ADRENO := true
HWUI_COMPILE_FOR_PERF := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_COLOR_METADATA := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC_DIM_LAYER_COLOR := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

# Enable dexpreopt to speed boot time
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
    endif
  endif
endif

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Extended Filesystem Support
TARGET_EXFAT_DRIVER := sdfat

# Filesystem
TARGET_FS_CONFIG_GEN := $(VENDOR_PATH)/config.fs

# Fingerprint
TARGET_SEC_FP_HAL_VARIANT := bauth

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# HIDL
DEVICE_MANIFEST_FILE := $(VENDOR_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(VENDOR_PATH)/compatibility_matrix.xml

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Lineage Hardware
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(VENDOR_PATH)/lineagehw|**/*.java

# Media
TARGET_QCOM_MEDIA_VARIANT := caf-msm8996
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# NFC
BOARD_NFC_HAL_SUFFIX := $(TARGET_BOARD_PLATFORM)
NXP_CHIP_TYPE := 2

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 79691776
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 79691776
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5138022400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26131365888
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USES_MKE2FS := true

# Peripheral Manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_HAS_NO_WIFI_STATS := true
TARGET_POWERHAL_VARIANT := qcom
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_SYSTEM_PROP += $(VENDOR_PATH)/system.prop

# Qualcomm supportbt_firmware
BOARD_USES_QCOM_HARDWARE := true

# Ramdisk
BOARD_ROOT_EXTRA_FOLDERS := bt_firmware dsp firmware persist
BOARD_ROOT_EXTRA_SYMLINKS += /data/tombstones:/tombstones

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/6a00000.ssusb/6a00000.dwc3/gadget/lun%d/file
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

ifeq ($(WITH_TWRP),true)
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/rootdir/etc/twrp.fstab
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 162
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_NO_EXFAT_FUSE := true
TW_NO_LEGACY_PROPS := true
TW_NO_REBOOT_BOOTLOADER := true
else
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/rootdir/etc/fstab.qcom
endif

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(VENDOR_PATH)/releasetools

# RIL
BOARD_PROVIDES_LIBRIL := true
TARGET_RIL_VARIANT := caf

# SECComp filters
BOARD_SECCOMP_POLICY += $(VENDOR_PATH)/seccomp

# Security patch level
VENDOR_SECURITY_PATCH := 2018-08-01

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true
USE_SENSOR_MULTI_HAL := true
BOARD_NFC_HAL_SUFFIX := $(TARGET_BOARD_PLATFORM)

# SmartcardService
TARGET_ENABLE_SMARTCARD_SERVICE := true

# Thermal
USE_DEVICE_SPECIFIC_THERMAL := true

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Usb
TARGET_USES_LEGACY_ADB_INTERFACE := true

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_msm8996
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8996

# Vr
USE_DEVICE_SPECIFIC_VR := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X
