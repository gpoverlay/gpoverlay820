# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="An X app that follows your pointer providing information about the windows below"
HOMEPAGE="https://freedesktop.org/Software/wininfo"
SRC_URI="https://www.freedesktop.org/software/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"

RDEPEND="
	x11-libs/gtk+:2
	x11-libs/libX11
	x11-libs/libXres
	x11-libs/libXext"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

PATCHES=( "${FILESDIR}"/${P}-desktop-entry.patch )

src_prepare() {
	default
	eautoreconf
}
