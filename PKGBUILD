# Maintainer: Michael Mugnai <michael.mugnai@gmail.com>
pkgname=wstool
pkgver=0.2.2
pkgrel=1
pkgdesc="A tool for managing the workspace of a ROS package, resurrected for ROS2"
arch=('any')
url="https://github.com/IAS-PERCRO-LAB/wstool"
license=('BSD')
depends=(
    'python>=3.8'
    'python-vcstools'
    'python-yaml'
)
makedepends=('poetry')
# checkdepends=(
#     'python-pytest'
#     'python-mock'
# )
source=("$pkgname-$pkgver.tar.gz::$url/archive/$pkgver.tar.gz")
sha256sums=('SKIP')

build() {
    cd "$srcdir/$pkgname-$pkgver"
    poetry build
}

# check() {
# 	cd "$srcdir/$pkgname-$pkgver"
# 	poetry run pytest
# }

package() {
    cd "$srcdir/$pkgname-$pkgver"
    python -m installer --destdir="$pkgdir" dist/*.whl
}
