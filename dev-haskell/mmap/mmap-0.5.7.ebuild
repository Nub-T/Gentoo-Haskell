# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.9
EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Memory mapped files for POSIX and Windows"
HOMEPAGE="http://hackage.haskell.org/package/mmap"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd ~ppc-macos ~x86-macos"
#IUSE="test"
IUSE=""

RESTRICT="test" # the test suit isn't included in this release! :(

RDEPEND=">=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
#		test? ( dev-haskell/hunit[profile?] )" # pcheck dislikes useless depends

src_configure() {
	cabal_src_configure # $(cabal_flag test mmaptest)
}

src_test() {
	# breaking the abstraction a bit, we're not supposed to know about ./setup
	# and how it works...
	./dist/build/mmaptest/mmaptest || die "tests failed"
}

src_install() {
	cabal_src_install

	rm "${D}/usr/bin/mmaptest"
	rmdir "${D}/usr/bin" 2> /dev/null # only if empty
}
