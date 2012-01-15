LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),smultron)
    include $(call all-makefiles-under,$(LOCAL_PATH))
endif
