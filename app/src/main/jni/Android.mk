LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := rust_prebuilt
LOCAL_SRC_FILES := $(LOCAL_PATH)/librust.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := HelloRust
LOCAL_SRC_FILES := thing.c
LOCAL_STATIC_LIBRARIES += rust_prebuilt

include $(BUILD_SHARED_LIBRARY)