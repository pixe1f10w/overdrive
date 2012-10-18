# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-sound/empcd/empcd-20080216.ebuild $

DESCRIPTION="event music player client daemon"
HOMEPAGE="http://unfix.org/projects/empcd/"
SRC_URI="http://unfix.org/projects/empcd/empcd_2008.02.16.tar.bz2"

LICENSE="unknown"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# no dependencies: MPD can run on a remote machine
RDEPEND=""
DEPEND=""


src_unpack() {
	unpack ${A}

	# remove precompiled binary
	cd empcd-2008.02.16 && rm -f empcd
}

src_compile() {
	cd empcd-2008.02.16
	emake || die "emake failed."
}

src_install() {
	newinitd "${FILESDIR}"/empcd.initd empcd
	newconfd "${FILESDIR}"/empcd.confd empcd
	cd empcd-2008.02.16
	emake DESTDIR="${D}" install || die "emake install failed."
	echo "${D}"
	insinto "/etc"
	doins "doc/empcd.conf"
}
