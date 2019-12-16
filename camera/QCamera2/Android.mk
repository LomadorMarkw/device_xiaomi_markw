LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        util/QCameraBufferMaps.cpp \
        util/QCameraCmdThread.cpp \
        util/QCameraFlash.cpp \
        util/QCameraPerf.cpp \
        util/QCameraQueue.cpp \
        util/QCameraCommon.cpp \
        util/QCameraDisplay.cpp \
        QCamera2Hal.cpp \
        QCamera2Factory.cpp

# HAL 3.0 source
LOCAL_SRC_FILES += \
        HAL3/QCamera3HWI.cpp \
        HAL3/QCamera3Mem.cpp \
        HAL3/QCamera3Stream.cpp \
        HAL3/QCamera3Channel.cpp \
        HAL3/QCamera3VendorTags.cpp \
        HAL3/QCamera3PostProc.cpp \
        HAL3/QCamera3CropRegionMapper.cpp \
        HAL3/QCamera3StreamMem.cpp

# HAL 1.0 source
LOCAL_SRC_FILES += \
        HAL/QCamera2HWI.cpp \
        HAL/QCameraMuxer.cpp \
        HAL/QCameraMem.cpp \
        HAL/QCameraStateMachine.cpp \
        HAL/QCameraChannel.cpp \
        HAL/QCameraStream.cpp \
        HAL/QCameraPostProc.cpp \
        HAL/QCamera2HWICallbacks.cpp \
        HAL/QCameraParameters.cpp \
        HAL/QCameraParametersIntf.cpp \
        HAL/QCameraThermalAdapter.cpp

LOCAL_CFLAGS := -Wall -Wextra -Werror -Wno-unused-parameter -Wno-unused-variable
LOCAL_CFLAGS += -DSYSTEM_HEADER_PREFIX=sys
LOCAL_CFLAGS += -DHAS_MULTIMEDIA_HINTS -D_ANDROID
LOCAL_CFLAGS += -DUSE_MEDIA_EXTENSIONS
LOCAL_CFLAGS += -DUSE_DISPLAY_SERVICE

LOCAL_CFLAGS += -std=c++11 -std=gnu++1y

# HAL 1.0 Flags
LOCAL_CFLAGS += -DDEFAULT_DENOISE_MODE_ON -DHAL3 -DQCAMERA_REDEFINE_LOG

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/../mm-image-codec/qexif \
        $(LOCAL_PATH)/../mm-image-codec/qomx_core \
        $(LOCAL_PATH)/include \
        $(LOCAL_PATH)/stack/common \
        $(LOCAL_PATH)/stack/mm-camera-interface/inc \
        $(LOCAL_PATH)/util \
        $(LOCAL_PATH)/HAL3 \
        hardware/libhardware/include/hardware \
        $(call project-path-for,qcom-media)/libstagefrighthw \
        $(call project-path-for,qcom-media)/mm-core/inc \
        system/core/include/cutils \
        system/core/include/system \
        system/media/camera/include/system

# HAL 1.0 Include paths
LOCAL_C_INCLUDES += $(call project-path-for,qcom-camera)/QCamera2/HAL

LOCAL_HEADER_LIBRARIES := generated_kernel_headers
LOCAL_CFLAGS += -DTARGET_TS_MAKEUP
LOCAL_C_INCLUDES += $(LOCAL_PATH)/HAL/tsMakeuplib/include
LOCAL_CFLAGS += -DVENUS_PRESENT

LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/qcom/display
LOCAL_C_INCLUDES += $(call project-path-for,qcom-display)/libqservice
LOCAL_SHARED_LIBRARIES := liblog libhardware libutils libcutils libdl libsync
LOCAL_SHARED_LIBRARIES += libmmcamera_interface libmmjpeg_interface libui libcamera_metadata
LOCAL_SHARED_LIBRARIES += libqdMetaData libqservice libbinder
LOCAL_SHARED_LIBRARIES += libhidlbase libhwbinder
LOCAL_SHARED_LIBRARIES += android.hardware.power@1.0
LOCAL_SHARED_LIBRARIES += android.frameworks.displayservice@1.0 libhidltransport

LOCAL_SHARED_LIBRARIES += libts_face_beautify_hal libts_detected_face_hal
LOCAL_STATIC_LIBRARIES := android.hardware.camera.common@1.0-helper

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_TAGS := optional

LOCAL_32_BIT_ONLY := $(BOARD_QTI_CAMERA_32BIT_ONLY)
include $(BUILD_SHARED_LIBRARY)

include $(call first-makefiles-under,$(LOCAL_PATH))
