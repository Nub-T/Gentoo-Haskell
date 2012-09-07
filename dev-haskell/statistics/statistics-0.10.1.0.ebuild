# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="A library of statistical types, data, and functions"
HOMEPAGE="https://github.com/bos/statistics"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# CDF limit at, Quantile is CDF inverse and invIncompleteGamma tests fail.
# tests require a utf-8 locale.
RESTRICT="test"

RDEPEND=">=dev-haskell/deepseq-1.1.0.0
		dev-haskell/erf
		>=dev-haskell/math-functions-0.1.1
		>=dev-haskell/monad-par-0.1.0.1
		>=dev-haskell/mwc-random-0.11.0.0
		>=dev-haskell/primitive-0.3
		>=dev-haskell/vector-0.7.0.0
		>=dev-haskell/vector-algorithms-0.4
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/ieee754-0.7.3
			dev-haskell/hunit
			>=dev-haskell/quickcheck-2.4.0.1
			dev-haskell/test-framework
			dev-haskell/test-framework-hunit
			dev-haskell/test-framework-quickcheck2
		)"

src_prepare() {
	# ghc 6.12.3 Haskell Platform 2010.02.0.0 wants deepseq >= 1.1.0.0
	sed -e 's@deepseq >= 1.1.0.2@deepseq >= 1.1.0.0@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
	# upstream forgot to include some of the test source files in the tarball
	cp -pR "${FILESDIR}/${PN}-0.10.1.0/tests" "${S}" \
		|| die "Could not copy missing tests source files"
	if has_version "<dev-haskell/haddock-2.9.2"; then
		# Workaround http://hackage.haskell.org/trac/hackage/ticket/626
		# The haddock --hoogle option does not like unicode characters, which causes
		# haddock 2.7.2 to fail like:
		# haddock: internal Haddock or GHC error: dist/doc/html/enumerator/enumerator.txt: commitAndReleaseBuffer: invalid argument (Invalid or incomplete multibyte or wide character)
		sed -e 's@&#949;@epsilon@g' \
			-e 's@&#8800;@/=@g' \
			-i "${S}/Statistics/Constants.hs"
		sed -e 's@&#8804;@<=@g' \
			-e 's@&#948;@sigma@g' \
			-e 's@&#8901;@.@g' \
			-i "${S}/Statistics/Distribution.hs"
		sed -e 's@&#955;@lambda@g' \
			-i "${S}/Statistics/Distribution/Exponential.hs"
		sed -e 's@&#977;@script theta@g' \
			-i "${S}/Statistics/Distribution/Gamma.hs"
		sed -e 's@&#8734;@infinity@g' \
			-e 's@&#947;@gamma@g' \
			-e 's@&#915;@Gamma@g' \
			-e 's@&#8211;@-@g' \
			-e 's@&#8212;@-@g' \
			-e 's@&#8804;@<=@g' \
			-i "${S}/Statistics/Math.hs" \
			-i "${S}/Statistics/Quantile.hs" \
			-i "${S}/Statistics/Sample.hs" \
			-i "${S}/Statistics/Sample/Powers.hs"
	fi
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
