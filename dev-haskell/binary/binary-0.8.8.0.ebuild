# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Circular depend: test-suite"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binary serialisation for Haskell values using lazy ByteStrings"
HOMEPAGE="https://github.com/kolmodin/binary"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.10
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RESTRICT=test # circular depend: test-framework->base-orphans->cabal->semigroups->nats->binary

RDEPEND=">=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
"

CABAL_CORE_LIB_GHC_PV="8.10.6 9.0.2"