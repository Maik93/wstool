# Maintainer: Michael Mugnai <michael.mugnai@gmail.com>
pkgname=wstool
pkgver=0.2.1
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
sha256sums=('3d754b89c8e83b3792748086a1173819aa013155e3f4cb92df5d71046f104295')

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
