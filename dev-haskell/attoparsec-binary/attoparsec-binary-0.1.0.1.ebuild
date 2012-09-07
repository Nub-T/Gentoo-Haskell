# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Binary processing extensions to Attoparsec."
HOMEPAGE="http://hackage.haskell.org/package/attoparsec-binary"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.8.5
		>=dev-lang/ghc-7.0.4"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
