# Maintainer: Michael Mugnai <michael.mugnai@gmail.com>
pkgbase=wstool
pkgname=('wstool' 'vcstools')
pkgver=0.2.2
pkgrel=2
pkgdesc="A tool for managing the workspace of a ROS package, resurrected for ROS2"
arch=('any')
url="https://github.com/IAS-PERCRO-LAB/wstool"
license=('BSD')
depends=(
    'python>=3.8'
    'python-yaml'
)
makedepends=('poetry')
# checkdepends=(
#     'python-pytest'
#     'python-mock'
# )
source=(
    "$pkgbase-$pkgver.tar.gz::$url/archive/$pkgver.tar.gz"
    "vcstools::git+https://github.com/IAS-PERCRO-LAB/vcstools.git"
)
sha256sums=('SKIP' 'SKIP')

build() {
    cd "$srcdir/$pkgbase-$pkgver"
    poetry build

    cd "$srcdir/vcstools"
    python setup.py build
}

# check() {
# 	cd "$srcdir/$pkgname-$pkgver"
# 	poetry run pytest
# }

package_wstool() {
    pkgdesc="A tool for managing the workspace of a ROS package, resurrected for ROS2"
    cd "$srcdir/$pkgbase-$pkgver"
    python -m installer --destdir="$pkgdir" dist/*.whl
}

package_vcstools() {
    pkgdesc="A version control system tool for ROS"
    cd "$srcdir/vcstools"
    python setup.py install --root="${pkgdir}" --optimize=1 --skip-build
}
