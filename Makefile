.PHONY: all info clean install

NAME='wstool'
VERSION=$(shell grep version ./src/wstool/__version__.py | sed 's,version = ,,')


all: install

info:
	echo "building version ${VERSION}"

clean:
	-rm -rf src/wstool.egg-info
	-rm -rf dist

build: info clean
	python -m build

install: build
    pip install dist/wstool-${VERSION}-py3-none-any.whl
