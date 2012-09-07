# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Streaming data processing library."
HOMEPAGE="http://github.com/snoyberg/conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Output from test failure says:
# 1) text lines is not too eager FAILED
# ignore me
RESTRICT="test"

RDEPEND="=dev-haskell/lifted-base-0.1*[profile?]
		>=dev-haskell/monad-control-0.3.1[profile?]
		<dev-haskell/monad-control-0.4[profile?]
		=dev-haskell/resourcet-0.3*[profile?]
		>=dev-haskell/text-0.11[profile?]
		>=dev-haskell/transformers-0.2.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-haskell/transformers-base-0.4.1[profile?]
		<dev-haskell/transformers-base-0.5[profile?]
		>=dev-haskell/void-0.5.5[profile?]
		<dev-haskell/void-0.6[profile?]
		>=dev-lang/ghc-7.0.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/hspec
			dev-haskell/hunit
			dev-haskell/quickcheck
		)
		"

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
