PACKAGES =+ "util-linux-prlimit"

PRINC = "1"
FILES_util-linux-prlimit = "${bindir}/prlimit"
PROVIDES += "util-linux-prlimit"
RRECOMMENDS_${PN} += "util-linux-prlimit"
