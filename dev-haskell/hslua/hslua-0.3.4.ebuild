# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit base haskell-cabal

DESCRIPTION="A Lua language interpreter embedding in Haskell"
HOMEPAGE="http://hackage.haskell.org/package/hslua"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.1
		=dev-lang/lua-5*"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}/${PN}-0.3.4-use-system-lua-instead-of-bundled-lua.patch")

src_prepare() {
	base_src_prepare
	pushd src
	rm -f lapi.h \
		lauxlib.h \
		lcode.h \
		ldebug.h \
		ldo.h \
		lfunc.h \
		lgc.h \
		llex.h \
		llimits.h \
		lmem.h \
		lobject.h \
		lopcodes.h \
		lparser.h \
		lstate.h \
		lstring.h \
		ltable.h \
		ltm.h \
		lua.h \
		luaconf.h \
		lualib.h \
		lundump.h \
		lvm.h \
		lzio.h \
		lapi.c \
		lauxlib.c \
		lbaselib.c \
		lcode.c \
		ldblib.c \
		ldebug.c \
		ldo.c \
		ldump.c \
		lfunc.c \
		lgc.c \
		linit.c \
		liolib.c \
		llex.c \
		lmathlib.c \
		lmem.c \
		loadlib.c \
		lobject.c \
		lopcodes.c \
		loslib.c \
		lparser.c \
		lstate.c \
		lstring.c \
		lstrlib.c \
		ltable.c \
		ltablib.c \
		ltm.c \
		lundump.c \
		lvm.c \
		lzio.c
	popd
}
