# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/tomscii/${PN}.git"
	EGIT_PROJECT="${PN}.git"
else
	KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
	SRC_URI="https://github.com/tomscii/tap-plugins/archive/v${PV}.tar.gz -> ${P}.tar.gz"
fi

DESCRIPTION="Tom's audio processing (TAP) LADSPA plugins"
HOMEPAGE="https://github.com/tomscii/tap-plugins https://tomscii.sig7.se/tap-plugins/"

LICENSE="GPL-2"
SLOT="0"
DEPEND="media-libs/ladspa-sdk"
RDEPEND="${DEPEND}"

DOCS=( README CREDITS )
PATCHES=( "${FILESDIR}/${PN}-1.0.1-makefile.patch" )

src_compile() {
	emake CC="$(tc-getCC)" OPT_CFLAGS="${CFLAGS}" EXTRA_LDFLAGS="${LDFLAGS}"
}

src_install() {
	insinto /usr/share/ladspa/rdf
	doins *.rdf

	exeinto /usr/$(get_libdir)/ladspa
	doexe *.so

	einstalldocs
}
