# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="A simple command line interface for creating and updating feeds like RSS"
HOMEPAGE="http://www.syntaxpolice.org/darcs_repos/feed-cli"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0
		dev-haskell/feed
		dev-haskell/time
		dev-haskell/xml
		>=dev-lang/ghc-6.10.1"

src_prepare() {
	sed -e 's@base < 4@base < 5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
