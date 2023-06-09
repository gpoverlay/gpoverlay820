# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=RJBS
DIST_VERSION=1.201
inherit perl-module

DESCRIPTION="Local delivery of RFC2822 message format and headers"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"

RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Email-Simple-1.998.0
	>=dev-perl/Email-FolderType-0.700.0
	virtual/perl-File-Path
	>=dev-perl/File-Path-Expand-1.10.0
"
BDEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.780.0
	test? (
		dev-perl/Capture-Tiny
		>=virtual/perl-Test-Simple-0.960.0
	)
"
