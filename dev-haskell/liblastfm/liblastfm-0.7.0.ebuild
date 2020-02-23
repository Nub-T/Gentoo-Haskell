# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.3
#hackport: flags: -test-api

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lastfm API interface"
HOMEPAGE="http://hackage.haskell.org/package/liblastfm"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/cereal:=[profile?]
	>=dev-haskell/cryptonite-0.7:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?]
	>=dev-haskell/http-client-tls-0.2:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/profunctors:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/xml-conduit-1.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec
		>=dev-haskell/hspec-expectations-lens-0.3.0.0
		>=dev-haskell/lens-4.4
		>=dev-haskell/lens-aeson-1.0.0.1
		>=dev-haskell/xml-html-conduit-lens-0.3 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-test-api
}