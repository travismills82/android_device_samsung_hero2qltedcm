LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libgnss
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_OWNER := qti
LOCAL_MODULE_TAGS := optional

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libdl \
    liblog \
    libloc_core \
    libgps.utils

LOCAL_SRC_FILES += \
    location_gnss.cpp \
    GnssAdapter.cpp \
    Agps.cpp \
    XtraSystemStatusObserver.cpp

LOCAL_CFLAGS += \
     -fno-short-enums \

ifeq ($(TARGET_BUILD_VARIANT),user)
   LOCAL_CFLAGS += -DTARGET_BUILD_VARIANT_USER
endif

LOCAL_HEADER_LIBRARIES := \
    libgps.utils_headers \
    libloc_core_headers \
    libloc_pla_headers \
    liblocation_api_headers

LOCAL_CFLAGS += $(GNSS_CFLAGS)

include $(BUILD_SHARED_LIBRARY)
