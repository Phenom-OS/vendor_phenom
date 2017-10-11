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
PHENOM_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
ifdef PHENOM_BUILD_EXTRA
    PHENOM_POSTFIX := -$(PHENOM_BUILD_EXTRA)
endif

ifndef PHENOM_BUILD_TYPE
    PHENOM_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
PHENOM_VERSION := Phenom-$(PHENOM_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(PHENOM_BUILD_TYPE)$(PHENOM_POSTFIX)
PHENOM_MOD_VERSION := Phenom-$(PHENOM_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(PHENOM_BUILD_TYPE)$(PHENOM_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    phenom.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.phenom.version=$(PHENOM_VERSION) \
    ro.modversion=$(PHENOM_MOD_VERSION) \
    ro.phenom.buildtype=$(PHENOM_BUILD_TYPE)
