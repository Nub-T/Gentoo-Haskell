# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interface for versioning file stores."
HOMEPAGE="http://hackage.haskell.org/package/filestore"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/diff-0.1.2[profile?]
		<dev-haskell/diff-0.2[profile?]
		dev-haskell/filestore[profile?]
		=dev-haskell/hunit-1.2*[profile?]
		dev-haskell/mtl[profile?]
		>=dev-haskell/parsec-2[profile?]
		<dev-haskell/parsec-3.2[profile?]
		=dev-haskell/split-0.1*[profile?]
		>=dev-haskell/time-1.1[profile?]
		<dev-haskell/time-1.5[profile?]
		=dev-haskell/utf8-string-0.3*[profile?]
		=dev-haskell/xml-1.3*[profile?]
		>=dev-lang/ghc-7.0.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit[profile?]
			dev-vcs/git
			dev-vcs/mercurial
			dev-vcs/darcs
		)
	"

pkg_postinst() {
	ghc-package_pkg_postinst

	elog "${PN} requires either dev-vcs/darcs or dev-vcs/git to work."
	elog "Please install one of these DVCS packages to fully utilise ${PN}."
	elog "(These aren't in RDEPEND in case you are just using filestore to program.)"
}
