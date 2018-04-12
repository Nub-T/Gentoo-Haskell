# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast XML generation library"
HOMEPAGE="http://hackage.haskell.org/package/xmlgen"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # Cases: 8  Tried: 0  Errors: 0  Failures: 0test/1.xml: openFile: does not exist (No such file or directory)

RDEPEND=">=dev-haskell/blaze-builder-0.3:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?]
	>=dev-haskell/text-0.10:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2
		>=dev-haskell/hxt-9.3 <dev-haskell/hxt-9.4
		>=dev-haskell/quickcheck-2.5 )
"