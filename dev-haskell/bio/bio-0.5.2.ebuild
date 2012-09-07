# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="A bioinformatics library"
HOMEPAGE="http://biohaskell.org/Libraries/Bio"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/binary-0.4[profile?] <dev-haskell/binary-0.6[profile?]
		dev-haskell/mtl[profile?]
		dev-haskell/parallel[profile?]
		dev-haskell/parsec[profile?]
		>=dev-haskell/quickcheck-2[profile?]
		dev-haskell/random[profile?]
		>=dev-haskell/tagsoup-0.8[profile?]
		>=dev-lang/ghc-6.10.1
	"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		test? ( dev-haskell/quickcheck:2 )
	"

PATCHES=("${FILESDIR}"/${P}-binary-0.5.patch
	"${FILESDIR}"/${P}-random-1.0.1.patch
	"${FILESDIR}"/${P}-ghc-7.4.patch)

src_configure() {
	cabal_src_configure $(cabal_flag test)
}

src_test() {
	dist/build/qc/qc || die
}

src_install() {
	haskell-cabal_src_install

	use test && rm "${ED}"/usr/bin/qc
	# many examples collide with dev-haskell/flower
	pushd "${ED}"/usr/bin
	local example
	for example in *
	do
		mv "${example}" "${PN}-example-${example}"
	done
	popd
}
