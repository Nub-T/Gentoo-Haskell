# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

#hackport: flags: -bootstrap,+system-pcre

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="syntax highlighting library"
HOMEPAGE="https://github.com/jgm/skylighting"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable"

RDEPEND="~dev-haskell/skylighting-core-0.8.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	executable? ( >=dev-haskell/blaze-html-0.5:=[profile?]
			dev-haskell/pretty-show:=[profile?]
			dev-haskell/text:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

PATCHES=( "${FILESDIR}"/skylighting-0.8.3-idris-keywords-fix.patch )

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bootstrap \
		$(cabal_flag executable executable) \
		--flag=system-pcre
}
