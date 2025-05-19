LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Debloater
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AndroidAutoStub \
    Abstruct \
    ConfigUpdater \
    Drive \
    GoogleFeedback \
    GoogleRestore \
    FamilyLinkParentalControls \
    Gmail2 \
    Maps \
    MusicFX \
    PersonalSafety \
    talkback \
    Turbo \
    Wellbeing \
    YouTube

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
