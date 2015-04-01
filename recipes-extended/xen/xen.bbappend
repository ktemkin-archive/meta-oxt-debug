
#
# Override the Xen configuration to enable debugging.
#
do_configure() {
  echo "debug := y" > .config
  echo "crash_debug := y" > .config
	echo "XSM_ENABLE := y" >> .config
	echo "FLASK_ENABLE := y" >> .config
}

PR .= ".1"
