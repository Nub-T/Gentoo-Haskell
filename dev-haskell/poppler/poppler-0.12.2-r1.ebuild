# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="3"

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hscolour hoogle nocabaldep"
inherit base haskell-cabal

DESCRIPTION="Binding to the Poppler."
HOMEPAGE="http://www.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/cairo-0.12*
		=dev-haskell/glib-0.12*
		=dev-haskell/gtk-0.12*
		dev-haskell/mtl
		>=dev-lang/ghc-6.10.1
		x11-libs/gtk+
		dev-libs/glib
		app-text/poppler[cairo]
		>=x11-libs/cairo-1.2.0
		x11-libs/pango"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		dev-haskell/gtk2hs-buildtools"

PATCHES=("${FILESDIR}/${P}-no-haskell98.patch")
