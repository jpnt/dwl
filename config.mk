_VERSION = 0.7
VERSION  = `git describe --tags --dirty 2>/dev/null || echo $(_VERSION)`

PKG_CONFIG = pkg-config

# paths
PREFIX = /usr/local
MANDIR = $(PREFIX)/share/man
DATADIR = $(PREFIX)/share

XWAYLAND =
XLIBS =
# Uncomment to build XWayland support
XWAYLAND = -DXWAYLAND
XLIBS = xcb xcb-icccm

CC = gcc
CFLAGS = -O2 \
         -march=native \
         -pipe \
         -fomit-frame-pointer \
         -flto \
         -ffunction-sections \
         -fdata-sections \
         -fno-stack-protector \
         -D_FORTIFY_SOURCE=0 \
         -fvisibility=hidden \
         -std=c99 \
         -Wall -Wextra -Wno-unused -Wno-unused-parameter
LDFLAGS = -flto -Wl,--gc-sections -Wl,--as-needed -s
