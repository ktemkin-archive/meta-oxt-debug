PR .= ".0"

#Add our debug tools to each stubdomain.
IMAGE_INSTALL += " task-core-tools-debug qemu-dm-stubdom-dbg "
PACKAGE_INSTALL_NO_DEPS = "0"

