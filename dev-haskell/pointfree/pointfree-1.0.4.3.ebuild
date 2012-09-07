# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Tool for refactoring expressions into pointfree form"
HOMEPAGE="http://hackage.haskell.org/package/pointfree"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		>=dev-haskell/mtl-2
		<dev-haskell/mtl-2.2
		>=dev-haskell/parsec-2
		<dev-haskell/parsec-3.2
		>=dev-lang/ghc-6.12.1"
