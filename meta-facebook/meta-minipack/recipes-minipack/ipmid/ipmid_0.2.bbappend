# Copyright 2018-present Facebook. All Rights Reserved.
#
# This program file is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program in a file named COPYING; if not, write to the
# Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301 USA
LDFLAGS += " -lwedge_eeprom -lbic"
DEPENDS += " libwedge-eeprom libipmi libfruid libsdr libbic update-rc.d-native"
RDEPENDS:${PN} += "libipmi libkv libwedge-eeprom libbic"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
FILESEXTRAPATHS:prepend := "${THISDIR}/patches:"

LOCAL_URI += " \
    file://fruid.c \
    "

SRC_URI += "file://1001-In-ipmid-use-systemd-command-instead-of-sv.patch \
            "
