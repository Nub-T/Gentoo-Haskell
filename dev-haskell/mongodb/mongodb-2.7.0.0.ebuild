# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="mongoDB"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Driver (client) for MongoDB, a free, scalable, fast, document DBMS"
HOMEPAGE="https://github.com/mongodb-haskell/mongodb"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""  #"+old-network"

RESTRICT=test # needs running mongodb

RDEPEND=">=dev-haskell/base16-bytestring-0.1.1.6:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?]
	>=dev-haskell/bson-0.3:=[profile?] <dev-haskell/bson-0.5:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/cryptohash:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	dev-haskell/dns:=[profile?]
	dev-haskell/fail:=[profile?]
	>=dev-haskell/hashtables-1.1.2.0:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/lifted-base-0.1.0.3:=[profile?]
	>=dev-haskell/monad-control-0.3.1:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/nonce-1.0.5:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/puremd5:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/random-shuffle:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/tagged:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/tls-1.3.0:=[profile?]
	>=dev-haskell/transformers-base-0.4.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	<dev-haskell/network-2.9:=[profile?]
"
## allow !old-network once network-3 is unmasked
#	old-network? ( <dev-haskell/network-2.9:=[profile?] )
#	!old-network? ( >=dev-haskell/network-3.0:=[profile?]
#				>=dev-haskell/network-bsd-2.7:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?] )
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-2
		dev-haskell/old-locale )
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=_old-network
#		$(cabal_flag old-network _old-network)
}
