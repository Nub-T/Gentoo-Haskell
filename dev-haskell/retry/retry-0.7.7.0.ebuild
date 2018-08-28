# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: -lib-Werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Retry combinators for monadic actions that may fail"
HOMEPAGE="https://github.com/Soostone/retry"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/exceptions-0.5:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/random-1:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hedgehog
		>=dev-haskell/hunit-1.2.5.2
		dev-haskell/mtl
		dev-haskell/stm
		dev-haskell/tasty
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-Werror
}
