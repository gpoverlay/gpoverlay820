# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=MARKOV
DIST_VERSION=3.28
DIST_EXAMPLES=("examples/*")
inherit perl-module

DESCRIPTION="Soap 1.1 XML Compiler"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/File-Slurper
	>=dev-perl/libwww-perl-6.80.0
	>=dev-perl/Log-Report-1.50.0
	>=dev-perl/LWP-Protocol-https-6.0.0
	>=dev-perl/Net-HTTP-6.160.0
	virtual/perl-Time-HiRes
	>=dev-perl/XML-Compile-1.580.0
	>=dev-perl/XML-Compile-Cache-1.30.0
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.540.0
		>=dev-perl/XML-Compile-Tester-0.900.0
	)
"
