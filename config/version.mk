# Copyright (C) 2017 Phenom-OS ROM
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
PHENOM_VERSION = v1.0

ifndef PHENOM_BUILD_TYPE
    PHENOM_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
endif

PHENOM_MOD_VERSION := Phenom-$(PHENOM_VERSION)-$(shell date -u +%Y%m%d-%H%M)-$(PHENOM_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.phenom.version=$(PHENOM_VERSION) \
  ro.phenom.releasetype=$(PHENOM_BUILD_TYPE) \
  ro.modversion=$(PHENOM_MOD_VERSION)

PHENOM_DISPLAY_VERSION := Phenom-$(PHENOM_VERSION)-$(PHENOM_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.phenom.display.version=$(PHENOM_DISPLAY_VERSION)
