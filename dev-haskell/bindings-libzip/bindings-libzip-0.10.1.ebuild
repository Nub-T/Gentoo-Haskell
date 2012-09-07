# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Low level bindings to libzip."
HOMEPAGE="http://bitbucket.org/jetxee/hs-libzip/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/bindings-dsl-1.0*[profile?]
		>=dev-lang/ghc-6.10.1
		dev-libs/libzip"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

src_prepare() {
	sed -e 's@base >= 4.0 && < 4.6@base >= 4.0 \&\& < 4.7@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
