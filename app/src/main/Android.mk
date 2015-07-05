# Copyright (C) 2014 The NamelessRom Project
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests

LOCAL_SRC_FILES := $(call all-java-files-under, java)

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_MANIFEST_FILE := AndroidManifest.xml

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/app/

LOCAL_STATIC_JAVA_LIBRARIES := \
		android-support-v4 \
		json-smart \
		systembartint \

LOCAL_PROGUARD_FLAG_FILES := proguard-rules.pro

LOCAL_PACKAGE_NAME := Synapse
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := false

include $(BUILD_PACKAGE)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
		json-smart:../../libs/json-smart-1.2.jar \
		systembartint:../../libs/systembartint-1.0.3.jar \

include $(BUILD_MULTI_PREBUILT)
