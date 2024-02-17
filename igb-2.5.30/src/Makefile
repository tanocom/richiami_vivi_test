#$FreeBSD$
.PATH:  ${.CURDIR}

KMOD    = if_igb
KMODDIR ?= /boot/kernel
SRCS    = device_if.h bus_if.h pci_if.h
SRCS    += if_igb.c e1000_osdep.c $(SHARED_SRCS)
SRCS    += freebsd_compat_common.c
# Shared
SHARED_SRCS = e1000_api.c e1000_phy.c e1000_nvm.c e1000_mac.c e1000_manage.c
SHARED_SRCS += e1000_82575.c e1000_i210.c e1000_vf.c e1000_mbx.c e1000_base.c

# If building this driver as a standalone module, keep these flags:
CFLAGS  += -DSMP -DINET -DINET6 -DIGB_STANDALONE_BUILD
CFLAGS  += --system-header-prefix=dev/pci

# DEVICE_POLLING gives you non-interrupt handling
#CFLAGS  += -DDEVICE_POLLING

# Some workloads seem to perform better using the legacy
# stack interface, while others will benefit from the
# MULTIQUEUE interface.
# IGB_LEGACY_TX gives you the older non-mq stack interface;
# it should be used with a single queue configuration
#CFLAGS  += -DIGB_LEGACY_TX

man:
	mv /usr/share/man/man4/igb.4.gz /usr/share/man/man4/igbSAVE.4.gz
	cp igb.4 /usr/share/man/man4/

.include <bsd.kmod.mk>
