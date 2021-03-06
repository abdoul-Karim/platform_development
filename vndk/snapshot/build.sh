#!/bin/bash -e
#
# Copyright (C) 2017 The Android Open Source Project
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

export TARGET_BUILD_VARIANT=user
export BOARD_VNDK_VERSION=current

echo "-----Generating VNDK snapshot for arm64-armv8-a"
make -j vndk dist TARGET_PRODUCT=aosp_arm64_ab

echo "-----Generating VNDK snapshot for arm-armv7-a-neon"
make -j vndk dist TARGET_PRODUCT=aosp_arm

echo "-----Generating VNDK snapshot for x86_64-x86_64"
make -j vndk dist TARGET_PRODUCT=aosp_x86_64

echo "-----Generating VNDK snapshot for x86-x86"
make -j vndk dist TARGET_PRODUCT=aosp_x86
