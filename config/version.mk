# REVOLVED-UI Version with each major release.
REVOLVED_VERSION := 2.0

REVOLVED_BUILD_TYPE ?= unofficial

ifeq ($(WITH_GMS), true)
  REVOLVED_BUILD_VARIANT := gapps
else
  REVOLVED_BUILD_VARIANT := vanilla
endif

ifeq ($(REVOLVED_BUILD_TYPE), official)
  OFFICIAL_DEVICES = $(shell cat vendor/lineage/revolved.devices)
  FOUND_DEVICE =  $(filter $(LINEAGE_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(LINEAGE_BUILD))
      REVOLVED_BUILD_TYPE := official
    else
      REVOLVED_BUILD_TYPE := unofficial
    endif
endif

PRODUCT_VERSION_MAJOR = ReDefined

# Internal version
LINEAGE_VERSION := Revolved$(REVOLVED_VARIANT)-v$(REVOLVED_VERSION)-$(REVOLVED_BUILD_TYPE)-$(LINEAGE_BUILD)-$(REVOLVED_BUILD_VARIANT)-$(shell date +%Y%m%d)

# Display version
LINEAGE_DISPLAY_VERSION := Revolved-$(PRODUCT_VERSION_MAJOR)-$(LINEAGE_BUILD)-v$(REVOLVED_VERSION)

# Build info
REVOLVED_BUILD_INFO := $(LINEAGE_VERSION)
