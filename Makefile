.PHONY: all setup clean_dist distro clean install testsetup test

NAME='wstool'
VERSION=$(shell grep version ./src/wstool/__version__.py | sed 's,version = ,,')


all: build
	echo "noop for debbuild"

info:
	echo "building version ${VERSION}"

clean:
	-rm -rf src/wstool.egg-info
	-rm -rf dist

build: info clean
	python -m build
