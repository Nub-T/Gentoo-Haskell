# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GHCi bindings to lambdabot"
HOMEPAGE="http://hackage.haskell.org/package/goa"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		dev-haskell/lambdabot"
DEPEND="$RDEPEND
		>=dev-haskell/cabal-1.2"

src_prepare() {
	epatch "${FILESDIR}/${PN}-3.1-ghc-7.2.patch"
	epatch "${FILESDIR}/${PN}-3.1-ghc-7.4.patch"
	epatch "${FILESDIR}/${PN}-3.1-haddock.patch"
	sed -e 's@setLambdabotHome "/home/dons/lambdabot"@setLambdabotHome "/usr/bin"@' -i "${S}/dot-ghci"
	sed -e 's@import qualified Control.Exception as C@import qualified Control.OldException as C@' -i "${S}/GOA.hs"
}

pkg_postinst() {
	ghc-package_pkg_postinst
	DOT_GHCI=$(equery files dev-haskell/goa | grep dot-ghci)
	elog "To configure a trippin' ghci, add $DOT_GHCI to your ~/.ghci"
}
