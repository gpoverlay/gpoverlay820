# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

FROM_LANG="Turkish"
TO_LANG="English"
DICT_PREFIX="freedict-"

inherit stardict

HOMEPAGE="http://download.huzheng.org/freedict.de/"

KEYWORDS="amd64 ~riscv x86"
