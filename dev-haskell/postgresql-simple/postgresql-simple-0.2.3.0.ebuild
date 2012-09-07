# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Mid-Level PostgreSQL client library"
HOMEPAGE="http://hackage.haskell.org/package/postgresql-simple"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# the tests require the postgresql server to be running and to accept its connection
# the tests assume a root postgresql user is configured, then it would be necessary
# to modify the test/Main.hs source file to set the password in the line:
# testConnect = connectPostgreSQL ""
RESTRICT="test"

RDEPEND=">=dev-haskell/attoparsec-0.8.5.3[profile?]
		dev-haskell/blaze-builder[profile?]
		dev-haskell/blaze-textual[profile?]
		>=dev-haskell/postgresql-libpq-0.6.2[profile?]
		>=dev-haskell/text-0.11.1[profile?]
		dev-haskell/time[profile?]
		dev-haskell/transformers[profile?]
		dev-haskell/vector[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		test? ( dev-haskell/base16-bytestring
			dev-haskell/cryptohash
			dev-haskell/hunit
		)
		>=dev-haskell/cabal-1.9.2"

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}
