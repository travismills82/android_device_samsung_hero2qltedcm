#
# Copyright (C) 2017 The LineageOS Project
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

import hashlib
import common
import re

def FullOTA_Assertions(info):
  AddBootloaderAssertion(info, info.input_zip)
  return

def IncrementalOTA_Assertions(info):
  AddBootloaderAssertion(info, info.target_zip)
  return

def AddBootloaderAssertion(info, input_zip):
  android_info = input_zip.read("OTA/android-info.txt")
  m = re.search(r'require\s+version-bootloader\s*=\s*(.+)', android_info)
  if m:
    bootloaders = m.group(1).split('|')
    if "*" not in bootloaders:
      info.script.AssertSomeBootloader(*bootloaders)
    info.metadata["pre-bootloader"] = m.group(1)
  return
