# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="iterIO"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Iteratee-based IO with pipe operators"
HOMEPAGE="http://www.scs.stanford.edu/~dm/iterIO"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.8.5[profile?]
		<dev-haskell/attoparsec-2[profile?]
		>=dev-haskell/hsopenssl-0.10.1[profile?]
		<dev-haskell/hsopenssl-2[profile?]
		>=dev-haskell/listlike-1.0[profile?]
		<dev-haskell/listlike-4[profile?]
		>=dev-haskell/mtl-1.1.0.2[profile?]
		<dev-haskell/mtl-3[profile?]
		>=dev-haskell/network-2.3[profile?]
		<dev-haskell/network-3[profile?]
		>=dev-haskell/stringsearch-0.3[profile?]
		<dev-haskell/stringsearch-2[profile?]
		>=dev-haskell/time-1.1.4[profile?]
		<dev-haskell/time-2[profile?]
		>=dev-lang/ghc-6.12.3
		sys-libs/zlib"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"
