# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HandsomeSoup"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Add CSS2 selector support to HXT"
HOMEPAGE="https://github.com/egonSchiele/HandsomeSoup"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/http[profile?]
		dev-haskell/hxt[profile?]
		dev-haskell/maybet[profile?]
		dev-haskell/mtl[profile?]
		dev-haskell/network[profile?]
		dev-haskell/parsec[profile?]
		dev-haskell/transformers[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"
