# Copyright 2006 The Android Open Source Project
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
EXTRA_DIST = LICENSE ethtool.8 ethtool.spec.in aclocal.m4 ChangeLog autogen.sh
LOCAL_SRC_FILES := ethtool.c ethtool-copy.h internal.h net_tstamp-copy.h \
                  amd8111e.c de2104x.c e100.c e1000.c et131x.c igb.c    \
                  fec_8xx.c ibm_emac.c ixgb.c ixgbe.c natsemi.c \
                  pcnet32.c realtek.c tg3.c marvell.c vioc.c    \
                  smsc911x.c at76c50x-usb.c sfc.c stmmac.c      \
                  rxclass.c sfpid.c sfpdiag.c ixgbevf.c
#LOCAL_C_INCLUDES := $(KERNEL_HEADERS)
LOCAL_SHARED_LIBRARIES := libc libcutils libnetutils
LOCAL_MODULE = ethtool
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := showlease.c
#LOCAL_C_INCLUDES := $(KERNEL_HEADERS)
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE = showlease
LOCAL_MODULE_TAGS := debug

