# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Special functions and Chebyshev polynomials"
HOMEPAGE="https://github.com/bos/math-functions"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# invIncompleteGamma invIncompleteBeta tests fail. tests require a utf-8 locale.
RESTRICT="test"

RDEPEND=">=dev-haskell/erf-2[profile?]
		>=dev-haskell/vector-0.7[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? (	>=dev-haskell/hunit-1.2
			>=dev-haskell/ieee754-0.7.3
			>=dev-haskell/quickcheck-2.4
			dev-haskell/test-framework
			dev-haskell/test-framework-hunit
			dev-haskell/test-framework-quickcheck2
		)
		"

src_prepare() {
	# upstream forgot to include some of the test source files in the tarball
	cp -pR "${FILESDIR}/${P}/tests" "${S}" \
		|| die "Could not copy missing tests source files"
}

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}
