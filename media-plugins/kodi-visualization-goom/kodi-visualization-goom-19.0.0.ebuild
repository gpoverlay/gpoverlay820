# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit kodi-addon

DESCRIPTION="Goom visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.goom"
KODI_PLUGIN_NAME="visualization.goom"

case ${PV} in
9999)
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/xbmc/${KODI_PLUGIN_NAME}.git"
	inherit git-r3
	DEPEND="~media-tv/kodi-9999"
	;;
*)
	CODENAME="Matrix"
	KEYWORDS="~amd64 ~arm64 ~x86"
	SRC_URI="https://github.com/xbmc/${KODI_PLUGIN_NAME}/archive/${PV}-${CODENAME}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/${KODI_PLUGIN_NAME}-${PV}-${CODENAME}"
	DEPEND="=media-tv/kodi-19*:="
	;;
esac

LICENSE="GPL-2+"
SLOT="0"
IUSE=""

DEPEND+="
	>=media-libs/glm-0.9.9.8-r1
	virtual/opengl
	"

RDEPEND="${DEPEND}"

BDEPEND="virtual/pkgconfig"

src_prepare() {
	if [ -d depends ]; then rm -rf depends || die; fi

	cmake_src_prepare
}
