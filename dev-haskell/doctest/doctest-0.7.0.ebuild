# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Test interactive Haskell examples"
HOMEPAGE="https://github.com/sol/doctest-haskell#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/deepseq[profile?]
		dev-haskell/doctest[profile?]
		=dev-haskell/ghc-paths-0.1*[profile?]
		dev-haskell/syb[profile?]
		dev-haskell/transformers[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		test? ( dev-haskell/hspec-discover
			dev-haskell/hspec-shouldbe
			=dev-haskell/hunit-1.2*
			dev-haskell/silently
			dev-haskell/stringbuilder
		)
		>=dev-haskell/cabal-1.8"

src_prepare() {
	# test-suite spec passes. Remove test-suite doctests as its incomplete.
	sed -e '/test-suite doctests/,$d' \
		-i "${S}/${PN}.cabal" \
		|| die "Could not remove incomplete test-suite doctests"
}
