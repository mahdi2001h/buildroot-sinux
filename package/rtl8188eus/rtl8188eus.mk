################################################################################
#
# rtl8188eus
#
################################################################################

RTL8188EUS_VERSION = v5.3.9
RTL8188EUS_SITE = https://github.com/mahdi2001h/rtl8188eus/releases/download/v5.3.9-stable
RTL8188EUS_SOURCE = rtl8188eus-5.3.9.tar.xz
RTL8188EUS_LICENSE = GPL-2.0
RTL8188EUS_MODULE_MAKE_OPTS = CONFIG_RTL8188EU=m

$(eval $(kernel-module))
$(eval $(generic-package))
