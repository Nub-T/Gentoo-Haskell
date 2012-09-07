# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Support for serialising Haskell to and from JSON"
HOMEPAGE="http://hackage.haskell.org/package/json"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE="+generic +parsec +pretty"

RDEPEND="dev-haskell/mtl
		>=dev-lang/ghc-6.10.4
		generic? ( >=dev-haskell/syb-0.3.3 )
		parsec? ( dev-haskell/parsec )
	"

DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.0"

src_configure() {
	cabal_src_configure \
		$(cabal_flag generic) \
		$(cabal_flag parsec) \
		$(cabal_flag pretty)
}
