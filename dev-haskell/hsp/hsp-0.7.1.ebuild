# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell Server Pages is a library for writing dynamic server-side web pages."
HOMEPAGE="http://patch-tag.com/r/nibro/hsp"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/harp[profile?]
		>=dev-haskell/hjscript-0.6.1[profile?]
		>=dev-haskell/hsx-0.10.2[profile?]
		<dev-haskell/hsx-0.11[profile?]
		dev-haskell/mtl[profile?]
		dev-haskell/text[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
