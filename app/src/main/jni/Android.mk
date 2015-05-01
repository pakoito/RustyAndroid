LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := rust_prebuilt
LOCAL_SRC_FILES := librust.a
include $(PREBUILT_STATIC_LIBRARY)

# A workaround for missing symbols: _Unwind_GetIP, _Unwind_SetIP, _Unwind_SetGR.
include $(CLEAR_VARS)
LOCAL_MODULE := unwind
LOCAL_C_INCLUDES := $(LOCAL_PATH)/unwind/include
LOCAL_SRC_FILES := unwind/unwind.c
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := HelloRust
LOCAL_SRC_FILES := thing.c
LOCAL_STATIC_LIBRARIES += rust_prebuilt unwind

include $(BUILD_SHARED_LIBRARY)