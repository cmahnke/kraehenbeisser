# Requirements

* [NodeJS](https://nodejs.org/en/) and [Yarn](https://yarnpkg.com/)
* [Hugo](https://gohugo.io/)

# Tools

## Getting JavaScript dependencies

````
yarn install
````

## Generating the site and publishing

Just run the following script:

````
./scripts/commit-gh-pages-files.sh
````

## Optimizing SVG files

You can use [`svgo`](https://github.com/svg/svgo) to optimize SVG files exported by [Inkscape](https://inkscape.org/) to reduce the file size.

### Run `svgo` by `yarn`

`svgo` is also part of the Node infrastucture, which can be started by `yarn`:

````
yarn run svgo
````

## Install IIIF static generator

To generate IIIF manifests for posts you need the [`iiif_static.py`](https://github.com/zimeon/iiif/tree/master/demo-static) tool, you need the [Python IIIF module](https://github.com/zimeon/iiif).

````
pip install iiif
````

### Generating static IIIF tiles

````
cd static/images
iiif_static.py -d ../iiif rossitten-33.jpeg rossitten-34.jpeg
iiif_static.py  -d ../iiif kurische-nehrung-58.jpeg kurische-nehrung-59.jpeg kurische-nehrung-60.jpeg
````

## Dumping MARC records

* One can export MARC files from [Librarything](https://www.librarything.com/export.php?export_type=marc).
* Get the [`yaz` library and command line tool](https://www.indexdata.com/resources/software/yaz/) to dump the contents: `yaz-marcdump static/marc/Krähenbeißer.marc`

## Starting `hugo` server module

````
hugo server -D --debug --disableFastRender
````

# Using Docker

````
DOCKER_BUILDKIT=1 docker build .
````
