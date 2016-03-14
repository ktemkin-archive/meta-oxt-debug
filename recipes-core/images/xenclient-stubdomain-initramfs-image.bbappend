PR .= ".1"

#Add our debug tools to each stubdomain.
IMAGE_INSTALL += " \
    task-core-tools-debug \
    qemu-dm-stubdom-dbg \
    valgrind \
    util-linux-prlimit \
    "
PACKAGE_INSTALL_NO_DEPS = "0"

