# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DIST_AUTHOR=DAGOLDEN
DIST_VERSION=1.07

inherit perl-module

DESCRIPTION="Date object, with as little code as possible"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	virtual/perl-Carp
"
BDEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.170.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
	)
"
