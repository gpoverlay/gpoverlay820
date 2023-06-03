# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Write tests in Lua, integrate into tasty"
HOMEPAGE="https://github.com/hslua/hslua"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND=">=dev-haskell/file-embed-0.0:=[profile?] <dev-haskell/file-embed-0.1:=[profile?]
	>=dev-haskell/hslua-core-2.0:=[profile?] <dev-haskell/hslua-core-2.3:=[profile?]
	>=dev-haskell/hslua-marshalling-2.0:=[profile?] <dev-haskell/hslua-marshalling-2.3:=[profile?]
	>=dev-haskell/lua-arbitrary-1.0:=[profile?] <dev-haskell/lua-arbitrary-1.1:=[profile?]
	>=dev-haskell/quickcheck-2.9:2=[profile?] <dev-haskell/quickcheck-2.15:2=[profile?]
	>=dev-haskell/tasty-1.2:=[profile?] <dev-haskell/tasty-1.5:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/tasty-hunit )
"