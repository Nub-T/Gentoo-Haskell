# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="HaskellDB support for the HDBC MySQL driver."
HOMEPAGE="http://hackage.haskell.org/package/haskelldb-hdbc-mysql"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/haskelldb-0.12
		>=dev-haskell/haskelldb-hdbc-0.12
		=dev-haskell/hdbc-2*
		>=dev-haskell/hdbc-mysql-0.1
		dev-haskell/mtl
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

src_prepare () {
	sed -e 's@HDBC>=2.0.0 && < 2.3.0@HDBC>=2.0.0 \&\& < 2.4.0@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
