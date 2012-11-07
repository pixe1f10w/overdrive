# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Steam client"
SRC_URI="http://media.steampowered.com/client/installer/steam.deb"

LICENSE="EULA"
SLOT="0"
KEYWORDS="x86 amd64"

DEPEND=">=sys-libs/glibc-2.15"

src_install()
{
	tar -xvzf ${WORKDIR}/data.tar.gz -C ${D}
}
