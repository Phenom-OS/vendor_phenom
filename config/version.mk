# Copyright (C) 2017 Phenom-OS
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

#Phenom Versioning
# Versioning System
# phenom first version.
PRODUCT_VERSION_MAJOR = 8.0
PRODUCT_VERSION_MINOR = ALPHA
PRODUCT_VERSION_MAINTENANCE = 1.0
PhenomOS_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
ifdef PhenomOS_BUILD_EXTRA
    PhenomOS_POSTFIX := -$(PhenomOS_BUILD_EXTRA)
endif

ifndef PhenomOS_BUILD_TYPE
    PhenomOS_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
PhenomOS_VERSION := Phenom-$(PhenomOS_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(PhenomOS_BUILD_TYPE)$(PhenomOS_POSTFIX)
PhenomOS_MOD_VERSION := Phenom-$(PhenomOS_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(PhenomOS_BUILD_TYPE)$(PhenomOS_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    phenom.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.phenom.version=$(PhenomOS_VERSION) \
    ro.modversion=$(PhenomOS_MOD_VERSION) \
    ro.phenom.buildtype=$(PhenomOS_BUILD_TYPE)
