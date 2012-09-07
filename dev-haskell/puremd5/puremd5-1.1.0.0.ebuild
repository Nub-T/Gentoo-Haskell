# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="pureMD5"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="MD5 implementations that should become part of a ByteString Crypto package."
HOMEPAGE="http://hackage.haskell.org/package/pureMD5"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/binary-0.5*
		>=dev-haskell/cereal-0.2
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"
