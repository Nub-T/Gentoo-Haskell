# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Configuration management"
HOMEPAGE="http://github.com/bos/configurator"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.0.2[profile?]
		dev-haskell/hashable[profile?]
		>=dev-haskell/text-0.11.1.0[profile?]
		dev-haskell/unix-compat[profile?]
		dev-haskell/unordered-containers[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

PATCHES=("${FILESDIR}/${PN}-0.2.0.0-ghc-7.5.patch")
