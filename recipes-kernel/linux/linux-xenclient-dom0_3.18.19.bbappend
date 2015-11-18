include linux-appends.inc

do_configure_prepend(){

  #Enable kernel modules that help with debugging on a VMware instance.
  enable_kernel_module "CONFIG_DRM_VMWGFX"

}


PRINC := "${@int(PRINC) + 31}"
