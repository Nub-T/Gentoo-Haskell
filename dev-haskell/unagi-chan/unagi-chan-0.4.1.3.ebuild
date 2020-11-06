# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast concurrent queues with a Chan-like API, and more"
HOMEPAGE="https://hackage.haskell.org/package/unagi-chan"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="compare-benchmarks"

RDEPEND=">=dev-haskell/atomic-primops-0.8:=[profile?]
	>=dev-haskell/primitive-0.5.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

RESTRICT=test # deadlocks under load

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag compare-benchmarks compare-benchmarks)
}
