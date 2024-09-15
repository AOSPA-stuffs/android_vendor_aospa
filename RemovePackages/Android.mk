LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    Drive \
    Gmail2 \
    Maps \
    Photos \
    FamilyLinkParentalControls \
    GoogleCameraGo \
    YouTube \
    AndroidAutoStub \
    talkback \
    PersonalSafety \
    Wellbeing \
    Turbo

ifneq (,$(filter %evert lake, $(TARGET_PRODUCT)))
LOCAL_OVERRIDES_PACKAGES += \
    Chrome64 \
    GoogleLocationHistory \
    GoogleRestore \
    Velvet
endif

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
