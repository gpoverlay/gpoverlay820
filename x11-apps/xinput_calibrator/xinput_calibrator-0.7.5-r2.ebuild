# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools flag-o-matic

DESCRIPTION="A generic touchscreen calibration program for X.Org"
HOMEPAGE="https://www.freedesktop.org/wiki/Software/xinput_calibrator"
SRC_URI="https://github.com/tias/xinput_calibrator/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXi
	x11-libs/libXrandr
"
DEPEND="
	${RDEPEND}
	x11-base/xorg-proto
"

src_prepare() {
	default

	eautoreconf
}

src_configure() {
	append-cxxflags -std=c++11 #566594

	local myconf=(
		--with-gui=x11
	)
	econf "${myconf[@]}"
}
