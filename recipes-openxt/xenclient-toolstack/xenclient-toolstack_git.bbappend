FILESEXTRAPATHS := "${FILESEXTRAPATHS}${THISDIR}/${PN}:"
PR .= ".13"

SRC_URI += " file://0001-stubdom-Give-more-memory.patch;patch=1 "

