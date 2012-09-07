# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Wiki using happstack, git or darcs, and pandoc."
HOMEPAGE="http://gitit.net"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+plugins"

RDEPEND=">=app-text/pandoc-1.9.0.5[profile?]
		<app-text/pandoc-1.10[profile?]
		>=dev-haskell/base64-bytestring-0.1[profile?]
		<dev-haskell/base64-bytestring-1.1[profile?]
		>=dev-haskell/blaze-html-0.4[profile?]
		<dev-haskell/blaze-html-0.6[profile?]
		dev-haskell/cgi[profile?]
		>=dev-haskell/configfile-1[profile?]
		<dev-haskell/configfile-1.2[profile?]
		>=dev-haskell/feed-0.3.6[profile?]
		<dev-haskell/feed-0.4[profile?]
		=dev-haskell/filestore-0.5*[profile?]
		dev-haskell/ghc-paths[profile?]
		=dev-haskell/happstack-server-7.0*[profile?]
		>=dev-haskell/highlighting-kate-0.5.0.1[profile?]
		<dev-haskell/highlighting-kate-0.6[profile?]
		>=dev-haskell/hslogger-1[profile?]
		<dev-haskell/hslogger-1.3[profile?]
		=dev-haskell/hstringtemplate-0.6*[profile?]
		>=dev-haskell/http-4000.0[profile?]
		<dev-haskell/http-4000.3[profile?]
		>=dev-haskell/json-0.4[profile?]
		<dev-haskell/json-0.6[profile?]
		dev-haskell/mtl[profile?]
		>=dev-haskell/network-2.1.0.0[profile?]
		<dev-haskell/network-2.4[profile?]
		>=dev-haskell/pandoc-types-1.9.0.2[profile?]
		<dev-haskell/pandoc-types-1.10[profile?]
		dev-haskell/parsec[profile?]
		dev-haskell/random[profile?]
		>=dev-haskell/recaptcha-0.1[profile?]
		dev-haskell/safe[profile?]
		>dev-haskell/sha-1[profile?]
		<dev-haskell/sha-1.6[profile?]
		dev-haskell/syb[profile?]
		=dev-haskell/tagsoup-0.12*[profile?]
		dev-haskell/text[profile?]
		>=dev-haskell/time-1.1[profile?]
		<dev-haskell/time-1.5[profile?]
		=dev-haskell/url-2.1*[profile?]
		=dev-haskell/utf8-string-0.3*[profile?]
		dev-haskell/xhtml[profile?]
		>=dev-haskell/xml-1.3.5[profile?]
		=dev-haskell/xss-sanitize-0.3*[profile?]
		=dev-haskell/zlib-0.5*[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@hslogger >= 1 && < 1.2@hslogger >= 1 \&\& < 1.3@' \
		-e 's@base64-bytestring >= 0.1 && < 0.2@base64-bytestring >= 0.1 \&\& < 1.1@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}

src_configure() {
	cabal_src_configure $(cabal_flag plugins)
}
