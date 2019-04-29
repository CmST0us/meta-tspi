# Copyright (C) 2019, Fuzhou Rockchip Electronics Co., Ltd
# Released under the MIT license (see COPYING.MIT for the terms)

inherit auto-patch

PACKAGECONFIG_GL = "${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'gles2', '', d)}"
PACKAGECONFIG_FONTS = "fontconfig"

# Enable linuxfb for wayland to pass QPA platform plugin check
PACKAGECONFIG_append += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'linuxfb', '', d)}"
