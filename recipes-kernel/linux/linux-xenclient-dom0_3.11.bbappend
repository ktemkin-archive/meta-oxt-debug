include linux-systemtap.inc

#
# On debug builds, allow our dom0 kernel to talk to VMware,
# for even more exciting debug setups.
#
do_configure_prepend(){
    enable_kernel_option "CONFIG_DRM_VMWGFX"
    enable_kernel_option "CONFIG_VMXNET3"
}

PR .= ".2"
