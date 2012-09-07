# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A free monad based on the Wadler/Leijen pretty printer"
HOMEPAGE="http://github.com/ekmett/wl-pprint-extras/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/semigroupoids-3.0*[profile?]
		>=dev-haskell/semigroups-0.8.3.1[profile?]
		<dev-haskell/semigroups-0.9[profile?]
		>=dev-haskell/utf8-string-0.3.6[profile?]
		<dev-haskell/utf8-string-0.4[profile?]
		>=dev-lang/ghc-7.0.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
