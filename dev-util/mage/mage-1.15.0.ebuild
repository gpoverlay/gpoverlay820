# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module

DESCRIPTION="make/rake like tool using go"
HOMEPAGE="https://magefile.org"
SRC_URI="https://github.com/magefile/mage/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

src_compile() {
	GOBIN="${S}/bin" ego run bootstrap.go
}

src_install() {
dobin bin/mage
}
