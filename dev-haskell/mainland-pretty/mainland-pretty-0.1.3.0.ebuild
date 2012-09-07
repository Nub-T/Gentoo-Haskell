# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Pretty printing designed for printing source code."
HOMEPAGE="http://www.eecs.harvard.edu/~mainland/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/srcloc-0.1*[profile?]
		>=dev-haskell/symbol-0.1[profile?]
		<dev-haskell/symbol-0.4[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@containers >= 0.2 && < 0.5@containers >= 0.2 \&\& < 0.6@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
