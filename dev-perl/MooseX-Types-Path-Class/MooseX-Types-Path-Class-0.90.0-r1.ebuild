# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=ETHER
DIST_VERSION=0.09
inherit perl-module

DESCRIPTION="A Path::Class type library for Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos"
IUSE="minimal"

RDEPEND="
	dev-perl/MooseX-Types
	>=dev-perl/Path-Class-0.160.0
	virtual/perl-if
"
BDEPEND="${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.34.0
	test? (
		!minimal? ( dev-perl/MooseX-Getopt )
		virtual/perl-File-Spec
		virtual/perl-Module-Metadata
		dev-perl/Moose
		dev-perl/Test-Needs
		virtual/perl-Test-Simple
	)
"
