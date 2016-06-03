USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/A6020a40/BoardConfigVendor.mk

LOCAL_PATH := device/lenovo/A6020a40

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Architecture

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8916

TARGET_BOOTLOADER_BOARD_NAME := A6020a40

# Kernel
TARGET_KERNEL_SOURCE := kernel/lenovo/msm8929
TARGET_KERNEL_CONFIG := wt82918-perf_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android- 

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 # 32768 * 512 # mmcblk0p22
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 # 32768 * 512 # mmcblk0p26
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280 # 2621440 * 512 # mmcblk0p23
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6105849344 # 11925487 * 512 # mmcblk0p30
BOARD_PERSISTIMAGE_PARTITION_SIZE := 16777216 # 32768 * 512 # mmcblk0p24
BOARD_FLASH_BLOCK_SIZE := 4096


# TARGET_PREBUILT_KERNEL := device/lenovo/A6020a40/kernel
# BOARD_KERNEL_PREBUILT_DT := true

BOARD_HAS_NO_SELECT_BUTTON := true
