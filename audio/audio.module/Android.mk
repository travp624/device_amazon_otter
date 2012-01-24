LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    libmedia \
    libhardware \
    libhardware_legacy \
    libdl \
    libaudio \
    libasound \
    liblog \
    libm \
    libc \

LOCAL_STATIC_LIBRARIES := \
    libmedia_helper

LOCAL_WHOLE_STATIC_LIBRARIES := \
    libaudiohw_legacy

LOCAL_MODULE := audio.primary.omap4430
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


