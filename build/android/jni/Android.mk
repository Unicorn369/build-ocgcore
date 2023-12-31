LOCAL_PATH := $(call my-dir)/../../..

######### [sqlite3] ##########
#include $(CLEAR_VARS)
#LOCAL_MODULE := sqlite3
#LOCAL_SRC_FILES := sqlite3/sqlite3.c
#include $(BUILD_SHARED_LIBRARY)
##############################



######### [ocgcore] ##########
include $(CLEAR_VARS)
LOCAL_MODULE := ocgcore
TARGET_FORMAT_STRING_CFLAGS := 

LOCAL_MODULE_FILENAME := libocgcore
LOCAL_SRC_FILES := ocgcore/card.cpp \
                   ocgcore/duel.cpp \
                   ocgcore/effect.cpp \
                   ocgcore/field.cpp \
                   ocgcore/group.cpp \
                   ocgcore/interpreter.cpp \
                   ocgcore/libcard.cpp \
                   ocgcore/libdebug.cpp \
                   ocgcore/libduel.cpp \
                   ocgcore/libeffect.cpp \
                   ocgcore/libgroup.cpp \
                   ocgcore/mem.cpp \
                   ocgcore/ocgapi.cpp \
                   ocgcore/operations.cpp \
                   ocgcore/playerop.cpp \
                   ocgcore/processor.cpp \
                   ocgcore/scriptlib.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/lua
LOCAL_STATIC_LIBRARIES += liblua5.4

include $(BUILD_SHARED_LIBRARY)
include $(LOCAL_PATH)/lua/Android.mk
##############################
