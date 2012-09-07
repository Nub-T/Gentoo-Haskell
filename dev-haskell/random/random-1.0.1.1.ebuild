# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

# PDEPEND of ghc, so restrict depgraph
CABAL_FEATURES="lib profile nocabaldep"
inherit haskell-cabal

DESCRIPTION="random number library"
HOMEPAGE="http://hackage.haskell.org/package/random"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE=""

RDEPEND="dev-haskell/time[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}"
