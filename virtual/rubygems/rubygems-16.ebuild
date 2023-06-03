# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby30"

inherit ruby-ng

DESCRIPTION="Virtual ebuild for rubygems"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~loong ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x64-solaris"

RDEPEND="
	ruby_targets_ruby30? ( >=dev-ruby/rubygems-3.2.0[ruby_targets_ruby30] )
"

pkg_setup() { :; }
src_unpack() { :; }
src_prepare() { eapply_user; }
src_compile() { :; }
src_install() { :; }
pkg_preinst() { :; }
pkg_postinst() { :; }