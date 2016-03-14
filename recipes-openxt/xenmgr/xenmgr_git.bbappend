FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://increase-stubdom-memory.patch;--striplevel=1 "

PRINC := "${@int(PRINC) + 1}"

