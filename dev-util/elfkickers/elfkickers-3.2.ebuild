# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

MY_PN=${PN/elf/ELF}-${PV}

DESCRIPTION="Collection of programs to manipulate ELF files: sstrip, rebind, elfls, elftoc"
HOMEPAGE="http://www.muppetlabs.com/~breadbox/software/elfkickers.html"
SRC_URI="http://www.muppetlabs.com/~breadbox/pub/software/${MY_PN}.tar.gz"
S="${WORKDIR}"/${MY_PN}

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm ~hppa ~mips sparc x86"
IUSE="doc"

DEPEND="app-misc/pax-utils"

PATCHES=(
	"${FILESDIR}"/${PN}-3.1-respect-CFLAGS-LDFLAGS.patch
	"${FILESDIR}"/${PN}-3.1-create-destdir-path.patch
	"${FILESDIR}"/add-freebsd-elf-defs.patch
	"${FILESDIR}"/${PN}-3.1-AR.patch
)

src_prepare() {
	default

	tc-export AR CC

	sed -i -e "s:^prefix = /usr/local:prefix = \${DESTDIR}/:" Makefile \
		|| die "sed failed"
}
