# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..11} )

inherit meson python-single-r1 xdg

DESCRIPTION="Multi-featured system monitor GUI written in Python"
HOMEPAGE="https://github.com/hakandundar34coding/system-monitoring-center/"
SRC_URI="https://github.com/hakandundar34coding/${PN}/archive/v${PV}.tar.gz
	-> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="amd64 ~x86"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	gui-libs/gtk:4[introspection]
	sys-apps/dmidecode
	$(python_gen_cond_dep '
		dev-python/pycairo[${PYTHON_USEDEP}]
		dev-python/pygobject:3[${PYTHON_USEDEP}]
	')
"

src_install() {
	meson_src_install
	python_optimize "${ED}"/usr/share/${PN}

	mv "${ED}"/usr/share/appdata "${ED}"/usr/share/metainfo || die
}