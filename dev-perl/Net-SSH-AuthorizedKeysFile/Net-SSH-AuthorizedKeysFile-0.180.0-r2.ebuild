# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=MSCHILLI
DIST_VERSION=0.18
inherit perl-module

DESCRIPTION="Read and modify ssh's authorized_keys files"

SLOT="0"
KEYWORDS="amd64 x86"

SRC_URI+=" https://github.com/mschilli/net-ssh-authorizedkeysfile-perl/pull/3.patch -> ${PF}-extra-keys.patch "
PATCHES=(
	"${DISTDIR}"/${PF}-extra-keys.patch
)

RDEPEND="
	virtual/perl-Digest-MD5
	virtual/perl-File-Spec
	>=dev-perl/Log-Log4perl-1.0.0
	virtual/perl-Text-ParseWords
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Temp
		virtual/perl-Test-Simple
	)
"
