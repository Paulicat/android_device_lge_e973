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

BOARD_KERNEL_CMDLINE := vmalloc=600M console=null lpj=67677 user_debug=31 msm_rtb.filter=0x0 ehci-hcd.park=3 coresight-etm.boot_enable=0 androidboot.hardware=e973
TARGET_KERNEL_CONFIG := cyanogenmod_e970_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/e973/ramdisk/fstab.e973
RECOVERY_FSTAB_VERSION := 2

# inherit from ls970-common
-include device/lge/ls970-common/BoardConfigCommon.mk

# assert
TARGET_OTA_ASSERT_DEVICE := geebus,geebusc,geeb,gee_sp,e973,jeebus,jeebusc,geeb_ca

# board-info
TARGET_BOARD_INFO_FILE := device/lge/e973/board-info.txt

TARGET_POWERHAL_TOUCH_BOOST := true

# inherit from the proprietary version
-include vendor/lge/e975/BoardConfigVendor.mk
