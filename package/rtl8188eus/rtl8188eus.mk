################################################################################
#
# rtl8188eus
#
################################################################################

RTL8188EUS_VERSION = v5.3.9
RTL8188EUS_SITE = git://github.com/aircrack-ng/rtl8188eus.git
RTL8188EUS_LICENSE = GPL-2.0
RTL8188EUS_MODULE_MAKE_OPTS = CONFIG_RTL8188EU=m

$(eval $(kernel-module))
$(eval $(generic-package))
