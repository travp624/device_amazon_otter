#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/amazon/otter/BoardConfigVendor.mk


# Processor
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
NEEDS_ARM_ERRATA_754319_754320 := true
TARGET_GLOBAL_CFLAGS += -DNEEDS_ARM_ERRATA_754319_754320


# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 0x4096
BOARD_KERNEL_CMDLINE := console=ttyO2,115200n8 mem=463M@0x80000000 init=/init vram=32M omapfb.vram=0:16M
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := otter
TARGET_BOARD_INFO_FILE := device/amazon/otter/board-info.txt


# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1192230912
BOARD_FLASH_BLOCK_SIZE := 4096


# Storage / Sharing
BOARD_VOLD_MAX_PARTITIONS := 30


# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_HOSTAPD_DRIVER        := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
WPA_SUPPLICANT_VERSION      := VER_0_6_X
HOSTAPD_VERSION             := VER_0_6_X
BOARD_SOFTAP_DEVICE         := wl1283
BOARD_WLAN_DEVICE           := wl1283
#BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_FIRMWARE_LOADER        := "wlan_loader"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/fw_wlan1283.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/fw_wlan1283_AP.bin"
PRODUCT_WIRELESS_TOOLS      := true
AP_CONFIG_DRIVER_WILINK     := true
WPA_SUPPL_APPROX_USE_RSSI   := true


# Audio
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
HAVE_2_3_DSP := 1


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


# Graphics
BOARD_EGL_CFG := device/motorola/solana/prebuilt/etc/egl.cfg
USE_OPENGL_RENDERER := true


# OMX
HARDWARE_OMX := true
ifdef HARDWARE_OMX
OMX_VENDOR := ti
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif


# OMAP
OMAP_ENHANCEMENT := true
ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif


# Media / Radio
BUILD_FM_RADIO := true
BUILD_TI_FM_APPS := true
FM_CHR_DEV_ST := true


# OTA Packaging
# device-specific extensions to the updater binary
TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_otter
TARGET_RELEASETOOLS_EXTENSIONS := device/amazon/otter/releastools
#TARGET_PROVIDES_RELEASETOOLS := true
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/motorola/solana/releasetools/solana_ota_from_target_files
#TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/motorola/solana/releasetools/solana_img_from_target_files
#TARGET_CUSTOM_RELEASETOOL := ./device/motorola/solana/releasetools/squisher


# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/amazon/otter/recovery-kernel
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_ALWAYS_INSECURE := true
BOARD_HAS_LARGE_FILESYSTEM := true
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_otter


# Misc.
BOARD_NEEDS_CUTILS_LOG := true
BOARD_USES_SECURE_SERVICES := true
BOARD_LIB_DUMPSTATE := libdumpstate.otter

