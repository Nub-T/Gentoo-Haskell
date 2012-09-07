# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Representable profunctors"
HOMEPAGE="http://github.com/ekmett/representable-profunctors/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/comonad-1.1.1.5[profile?]
		<dev-haskell/comonad-3.1[profile?]
		>=dev-haskell/profunctor-extras-0.3.2.2[profile?]
		<dev-haskell/profunctor-extras-3.1[profile?]
		>=dev-haskell/profunctors-0.1.2.2[profile?]
		<dev-haskell/profunctors-3.1[profile?]
		>=dev-haskell/transformers-0.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@comonad           >= 1.1.1.5 && < 1.2@comonad           >= 1.1.1.5 \&\& < 3.1@' \
		-e 's@profunctors       >= 0.1.2.2 && < 0.2@profunctors       >= 0.1.2.2 \&\& < 3.1@' \
		-e 's@profunctor-extras >= 0.3.2.2 && < 0.4@profunctor-extras >= 0.3.2.2 \&\& < 3.1@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
