# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DIST_AUTHOR=ILMARI
DIST_VERSION=0.007
inherit perl-module

DESCRIPTION="Introspect overloaded operators"

SLOT="0"
KEYWORDS="amd64 ~arm arm64 ~hppa ~loong ppc ppc64 ~riscv sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos"
IUSE="test"
RESTRICT="!test? ( test )"

# Scalar::Util -> Scalar-List-Utils
RDEPEND="
	>=virtual/perl-Exporter-5.570.0
	dev-perl/MRO-Compat
	>=dev-perl/Package-Stash-0.140.0
	virtual/perl-Scalar-List-Utils
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.880.0
		virtual/perl-parent
	)
"

PERL_RM_FILES=(
	t/author-pod-spell.t
	t/author-pod-syntax.t
)
