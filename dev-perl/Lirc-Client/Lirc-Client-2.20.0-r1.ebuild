# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=MGRIMES
DIST_VERSION=2.02
inherit perl-module

DESCRIPTION="Client library for the Linux Infrared Remote Control (LIRC)"

SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	virtual/perl-Carp
	dev-perl/File-Path-Expand
	>=dev-perl/Moo-1.0.0
"
BDEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.0
	virtual/perl-File-Spec
	virtual/perl-IO
	test? ( virtual/perl-Test-Simple )
"
