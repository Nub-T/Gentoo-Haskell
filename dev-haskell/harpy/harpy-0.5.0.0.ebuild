# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Runtime code generation for x86 machine code"
HOMEPAGE="http://code.haskell.org/harpy/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/disassembler-0.2.0.0[profile?]
		>=dev-haskell/mtl-1[profile?]
		<dev-haskell/mtl-3[profile?]
		>=dev-haskell/parsec-1[profile?]
		<dev-haskell/parsec-4[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
