LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := unbootimg.c
LOCAL_STATIC_LIBRARIES := libmincrypt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := unbootimg
LOCAL_C_INCLUDES := system/core/mkbootimg

include $(BUILD_HOST_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_PREBUILT_EXECUTABLES := unpack.sh repack.sh
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_PREBUILT)
