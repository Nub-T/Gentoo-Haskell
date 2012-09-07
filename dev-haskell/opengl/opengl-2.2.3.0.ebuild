# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="OpenGL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding for the OpenGL graphics system"
HOMEPAGE="http://www.haskell.org/HOpenGL/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		virtual/opengl
		virtual/glu"
DEPEND="dev-haskell/cabal
		${RDEPEND}"

S="${WORKDIR}/${MY_P}"
