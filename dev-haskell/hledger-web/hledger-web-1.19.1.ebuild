# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6
#hackport: flags: -blaze_html_0_4,-dev

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Web-based user interface for the hledger accounting system"
HOMEPAGE="https://hledger.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="library-only +threaded"

RDEPEND=">=dev-haskell/aeson-1:=[profile?]
	dev-haskell/blaze-html:=[profile?]
	dev-haskell/blaze-markup:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	dev-haskell/clientsession:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	dev-haskell/conduit:=[profile?]
	>=dev-haskell/conduit-extra-1.1:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/decimal-0.5.1:=[profile?]
	>=dev-haskell/extra-1.6.3:=[profile?]
	dev-haskell/hjsmin:=[profile?]
	>=dev-haskell/hledger-1.19.1:=[profile?] <dev-haskell/hledger-1.20:=[profile?]
	>=dev-haskell/hledger-lib-1.19.1:=[profile?] <dev-haskell/hledger-lib-1.20:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/megaparsec-7.0.0:=[profile?] <dev-haskell/megaparsec-9.1:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-haskell/shakespeare-2.0.2.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/wai:=[profile?]
	dev-haskell/wai-cors:=[profile?]
	dev-haskell/wai-extra:=[profile?]
	>=dev-haskell/wai-handler-launch-3.0.3:=[profile?]
	dev-haskell/warp:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-haskell/yesod-1.4:=[profile?] <dev-haskell/yesod-1.7:=[profile?]
	>=dev-haskell/yesod-core-1.4:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-haskell/yesod-form-1.4:=[profile?] <dev-haskell/yesod-form-1.7:=[profile?]
	>=dev-haskell/yesod-static-1.4:=[profile?] <dev-haskell/yesod-static-1.7:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-blaze_html_0_4 \
		--flag=-dev \
		$(cabal_flag library-only library-only) \
		$(cabal_flag threaded threaded)
}