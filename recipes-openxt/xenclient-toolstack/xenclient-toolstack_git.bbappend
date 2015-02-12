FILESEXTRAPATHS := "${THISDIR}/${PN}:"

PR .= ".2"

SRC_URI += " \
  file://0001-stubdom-Give-64M-memory.patch \
"

