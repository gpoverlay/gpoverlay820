# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit toolchain-funcs

DESCRIPTION="Classic compress & uncompress programs for .Z (LZW) files"
HOMEPAGE="https://vapier.github.io/ncompress/"
SRC_URI="https://github.com/vapier/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~ia64 ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE=""

src_prepare() {
	default
	sed -i 's:\bln :ln -s :' Makefile.def || die
}

src_configure() {
	tc-export CC
}

src_install() {
	emake install_core DESTDIR="${ED}" PREFIX="/usr"
	dodoc Acknowleds Changes LZW.INFO README.md
}
