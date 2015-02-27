# Copyright (C) 2015 Assured Information Security 
# Author: Kyle J. Temkin <temkink@ainfosec.com>
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "Debug tools for Xen stubdomains."
HOMEPAGE = "https://github.com/ktemkin/oxt-debug-tools"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=5f663b48a060117cad8e6baba05e53e1"

DEPENDS = " \
  screen \
  xen \
  "

#This quick stub adds simple scripts for debugging stubdoms.
SRCREV = "${AUTOREV}"
SRC_URI = "git://github.com/ktemkin/oxt-debug-tools.git;protocol=git"
PV = "0.0+git${SRCPV}"

S = "${WORKDIR}/git"

inherit xenclient

do_install () {
    install -D ${S}/xenscreen ${D}/usr/bin/xenscreen
    install -D ${S}/xengdb ${D}/usr/bin/xengdb
}
