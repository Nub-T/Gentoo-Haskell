# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Streaming interface to system processes"
HOMEPAGE="http://hackage.haskell.org/package/process-streaming"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bifunctors-4.1:=[profile?]
	>=dev-haskell/conceit-0.3.2.0:=[profile?]
	>=dev-haskell/free-4.2:=[profile?]
	>dev-haskell/kan-extensions-4.2:=[profile?]
	>=dev-haskell/pipes-4.1.3:=[profile?]
	>=dev-haskell/pipes-bytestring-2.1.0:=[profile?]
	>=dev-haskell/pipes-concurrency-2.0.2:=[profile?]
	>=dev-haskell/pipes-parse-3.0.1:=[profile?]
	>=dev-haskell/pipes-safe-2.2.0:=[profile?]
	>=dev-haskell/pipes-text-0.0.0.10:=[profile?]
	>=dev-haskell/pipes-transduce-0.4.1:=[profile?]
	>=dev-haskell/profunctors-5:=[profile?]
	>=dev-haskell/text-0.11.2:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-haskell/void-0.6:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/attoparsec-0.11
		>=dev-haskell/doctest-0.9.1
		>=dev-haskell/exceptions-0.6.0 <dev-haskell/exceptions-1.0
		>=dev-haskell/foldl-1.1
		>=dev-haskell/free-4.2
		>=dev-haskell/lens-family-core-1.1
		>=dev-haskell/pipes-attoparsec-0.5
		>=dev-haskell/pipes-group-1.0.1
		>=dev-haskell/semigroups-0.15 <dev-haskell/semigroups-0.20
		>=dev-haskell/tasty-0.9
		>=dev-haskell/tasty-hunit-0.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'free >= 4.2 && < 5' 'free >= 4.2'
}