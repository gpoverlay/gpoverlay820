# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=TCAINE
DIST_VERSION=0.09
inherit perl-module

DESCRIPTION="Internet Route Registry daemon (IRRd) client"

RDEPEND="virtual/perl-IO"
BDEPEND="virtual/perl-ExtUtils-MakeMaker
	${RDEPEND}"

SLOT="0"
KEYWORDS="~amd64 ~x86"
# The only tests are networked
PROPERTIES="test_network"
RESTRICT="test"
