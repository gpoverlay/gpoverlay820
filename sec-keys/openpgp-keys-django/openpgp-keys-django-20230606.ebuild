# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="OpenPGP keys used to sign Django releases"
HOMEPAGE="https://www.djangoproject.com/download/"
SRC_URI="
	https://keys.openpgp.org/vks/v1/by-fingerprint/FE5FB63876A1D718A8C67556E17DF5C82B4F9D00
		-> FE5FB63876A1D718A8C67556E17DF5C82B4F9D00.r1.asc
	https://keybase.io/felixx/pgp_keys.asc?fingerprint=abb2c2a8cd01f1613618b70d2ef56372ba48cd1b
		-> ABB2C2A8CD01F1613618B70D2EF56372BA48CD1B.asc
	https://github.com/nessita.gpg
		-> 5B5B1BA10D85AC7C5C76E38F2EE82A8D9470983E.asc
"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~ia64 ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86"

S=${WORKDIR}

src_install() {
	local files=( ${A} )
	insinto /usr/share/openpgp-keys
	newins - django.asc < <(cat "${files[@]/#/${DISTDIR}/}")
}
