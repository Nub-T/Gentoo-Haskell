# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Helper functions and data types for producing News feeds."
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/blaze-html-0.5*[profile?]
		>=dev-haskell/blaze-markup-0.5.1[profile?]
		<dev-haskell/blaze-markup-0.6[profile?]
		=dev-haskell/hamlet-1.1*[profile?]
		>=dev-haskell/text-0.9[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-haskell/time-1.1.4[profile?]
		=dev-haskell/xml-conduit-1.0*[profile?]
		=dev-haskell/yesod-core-1.1*[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
