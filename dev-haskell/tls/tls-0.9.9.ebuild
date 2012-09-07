# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="TLS/SSL protocol native implementation (Server and Client)"
HOMEPAGE="http://github.com/vincenthz/hs-tls"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cereal-0.3[profile?]
		>=dev-haskell/certificate-1.2.0[profile?]
		<dev-haskell/certificate-1.3.0[profile?]
		>=dev-haskell/crypto-api-0.5[profile?]
		>=dev-haskell/cryptocipher-0.3.0[profile?]
		<dev-haskell/cryptocipher-0.4.0[profile?]
		>=dev-haskell/cryptohash-0.6[profile?]
		dev-haskell/mtl[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
