export THEOS_DEVICE_IP =127.0.0.1
export THEOS_DEVICE_PORT=2222
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CrackPPics

CrackPPics_FILES = Tweak.xm
CrackPPics_CFLAGS = -std=c++11 -stdlib=libc++
CrackPPics_LDFLAGS = -stdlib=libc++
CrackPPics_ARCHS = arm64 arm64e armv7

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"