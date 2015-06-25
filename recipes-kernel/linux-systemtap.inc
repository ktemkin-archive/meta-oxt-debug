
enable_kernel_option() {
	sed -i "/${1}/d" ${WORKDIR}/defconfig
	echo "${1}=y" >> ${WORKDIR}/defconfig
}

#
# Enable the kernel options needed for SystemTap.
#
do_configure_prepend() {
    enable_kernel_option "CONFIG_DEBUG_INFO"
    enable_kernel_option "CONFIG_KPROBES"
    enable_kernel_option "CONFIG_RELAY"
    enable_kernel_option "CONFIG_DEBUG_FS"
    enable_kernel_option "CONFIG_MODULES"
    enable_kernel_option "CONFIG_MODULE_UNLOAD"
    enable_kernel_option "CONFIG_UPROBES"
}

