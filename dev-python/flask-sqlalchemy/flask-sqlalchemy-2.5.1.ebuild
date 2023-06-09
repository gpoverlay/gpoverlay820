# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYPI_NO_NORMALIZE=1
PYPI_PN="Flask-SQLAlchemy"
PYTHON_COMPAT=( pypy3 python3_{9..11} )

inherit distutils-r1 pypi

DESCRIPTION="SQLAlchemy support for Flask applications"
HOMEPAGE="https://pypi.org/project/Flask-SQLAlchemy/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ~ppc64 ~riscv x86"

RDEPEND="
	>=dev-python/flask-0.10[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-0.8.0[${PYTHON_USEDEP}]
"

BDEPEND="test? (
	dev-python/mock[${PYTHON_USEDEP}]
)"

distutils_enable_tests pytest
distutils_enable_sphinx docs dev-python/pallets-sphinx-themes \
	dev-python/sphinx-issues
