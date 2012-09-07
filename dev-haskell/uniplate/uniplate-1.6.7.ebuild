# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Help writing simple, concise and fast generic operations."
HOMEPAGE="http://community.haskell.org/~ndm/uniplate/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8.2"
# those two to make ghc-7.2.1 happy.
# uniplate's depends are insane.
RDEPEND="${RDEPEND}
	dev-haskell/hashable[profile?]
	dev-haskell/syb[profile?]
	dev-haskell/unordered-containers[profile?]
	"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
