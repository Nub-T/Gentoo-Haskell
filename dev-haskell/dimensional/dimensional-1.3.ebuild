# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Statically checked physical dimensions, using Type Families and Data Kinds"
HOMEPAGE="https://github.com/bjornbm/dimensional/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # Ambiguous module name ‘Data.Kind’: it was found in multiple packages: base-4.12.0.0 kinds-0.0.1.5

RDEPEND=">=dev-haskell/exact-pi-0.4.1:=[profile?] <dev-haskell/exact-pi-0.6:=[profile?]
	>=dev-haskell/ieee754-0.7.6:=[profile?]
	>=dev-haskell/numtype-dk-0.5:=[profile?] <dev-haskell/numtype-dk-1.1:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/doctest
		dev-haskell/glob
		dev-haskell/hspec
		dev-haskell/quickcheck )
"
