# Copyright 2012 The Android-x86 Open Source Project

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	agc.c \
    at_tok.c \
    atchannel.c \
    audiochannel.cpp \
	audioqueue.c \
	echocancel.c \
    fcp_parser.c \
    gsm.c \
    huaweigeneric-ril.c \
    misc.c \
    requestdatahandler.c \
    sms.c \
    sms_gsm.c \
	net-utils.c \

LOCAL_SHARED_LIBRARIES := \
    libc \
    libcutils \
    libutils \
    libril \
    libmedia \
    libnetutils \

# for asprinf
LOCAL_CFLAGS := -D_GNU_SOURCE
#build shared library
LOCAL_CFLAGS += -DRIL_SHLIB

LOCAL_C_INCLUDES := \
    hardware/ril/libril \

LOCAL_MODULE:= libhuaweigeneric-ril
LOCAL_MODULE_TAGS := optional

#
include $(BUILD_SHARED_LIBRARY)
