# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit elisp-common haskell-cabal

DESCRIPTION="Extensible Haskell pretty printer"
HOMEPAGE="https://github.com/commercialhaskell/hindent"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="emacs"

RDEPEND="dev-haskell/cabal:=[profile?]
	>=dev-haskell/descriptive-0.7:=[profile?] <dev-haskell/descriptive-0.10:=[profile?]
	dev-haskell/exceptions:=[profile?]
	>=dev-haskell/haskell-src-exts-1.20:=[profile?]
	dev-haskell/monad-loops:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/path:=[profile?]
	dev-haskell/path-io:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/diff
		dev-haskell/hspec )
	emacs? ( virtual/emacs )
"
SITEFILE="50${PN}-gentoo.el"

src_compile() {
	haskell-cabal_src_compile
	if use emacs; then
		pushd elisp
		elisp-compile *.el || die
		popd
	fi
}

src_install() {
	haskell-cabal_src_install

	if use emacs; then
		elisp-install "${PN}" elisp/*.{el,elc}
		elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	fi
}

pkg_postinst() {
	haskell-cabal_pkg_postinst

	if use emacs; then
		elisp-site-regen
	fi
}

pkg_postrm() {
	haskell-cabal_pkg_postrm

	if use emacs; then
		elisp-site-regen
	fi
}
