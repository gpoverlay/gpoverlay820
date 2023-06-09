# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="virtual keyboard for X window system"
HOMEPAGE="http://t-sato.in.coocan.jp/xvkbd/"
SRC_URI="http://t-sato.in.coocan.jp/xvkbd/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ppc x86"

RDEPEND="
	x11-libs/libX11
	x11-libs/libXaw
	x11-libs/libXaw3d
	x11-libs/libXmu
	x11-libs/libXt
	x11-libs/libXtst
"
DEPEND="
	${RDEPEND}
	virtual/pkgconfig
	x11-base/xorg-proto
"

src_install() {
	dodir /usr/share/X11/app-defaults

	default

	dodoc ChangeLog README
	newman ${PN}.man ${PN}.1
}
