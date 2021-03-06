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

#BOARD_KERNEL_CMDLINE := console=ttySHL0,115200,n8 androidboot.hardware=gkatt lpj=67677
BOARD_KERNEL_CMDLINE := vmalloc=600M console=null lpj=67677 user_debug=31 msm_rtb.filter=0x0 ehci-hcd.park=3 coresight-etm.boot_enable=0 androidboot.hardware=geefhd_att_us
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
#BOARD_FORCE_RAMDISK_ADDRESS := 0x82200000
TARGET_KERNEL_CONFIG := cyanogenmod_e980_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/geefhd

# Fstab
TARGET_RECOVERY_FSTAB = device/lge/geefhd_att_us/ramdisk/fstab.geefhd_att_us
RECOVERY_FSTAB_VERSION = 2

# inherit from geefhd-common
-include device/lge/geefhd-common/BoardConfigCommon.mk

# assert
TARGET_OTA_ASSERT_DEVICE := geefhd,geefhd_att_us,gkatt

# inherit from the proprietary version
-include vendor/lge/geefhd/BoardConfigVendor.mk
