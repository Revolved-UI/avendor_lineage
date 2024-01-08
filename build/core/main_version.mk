# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)

# Revolved-UI properties
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.revolved.battery?=$(REVOLVED_BATTERY) \
    ro.revolved.build.variant=$(REVOLVED_BUILD_VARIANT) \
    ro.revolved.build.version=$(LINEAGE_VERSION) \
    ro.revolved.chipset?=$(REVOLVED_CHIPSET) \
    ro.revolved.display_resolution?=$(REVOLVED_DISPLAY) \
    ro.revolved.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.revolved.maintainer=$(REVOLVED_MAINTAINER) \
    ro.revolved.release.type=$(REVOLVED_BUILD_TYPE) \
    ro.revolved.version=$(PRODUCT_VERSION_MAJOR) \
    ro.modversion=$(REVOLVED_VERSION)
