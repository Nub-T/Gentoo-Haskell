# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A practical formlet library"
HOMEPAGE="http://github.com/jaspervdj/digestive-functors"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-1.1.0.0[profile?]
		<dev-haskell/mtl-3[profile?]
		>=dev-haskell/text-0.10[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		test? ( =dev-haskell/hunit-1.2*
			>=dev-haskell/test-framework-0.4
			<dev-haskell/test-framework-0.7
			=dev-haskell/test-framework-hunit-0.2*
		)
		>=dev-haskell/cabal-1.8"

src_prepare() {
	sed -e 's@bytestring >= 0.9     && < 0.10@bytestring >= 0.9     \&\& < 0.11@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
	# upstream forgot the tests
	cp -pR "${FILESDIR}/${PN}-0.5.0.1/tests/Text" "${S}/tests/Text" \
		|| die "Could not copy missing test source files"
}
