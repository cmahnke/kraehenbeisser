#!/bin/bash
# Taken from https://gohugo.io/hosting-and-deployment/hosting-on-github/


pip install iiif
WD=`pwd`
cd static
mkdir iiif
cd images
iiif_static.py -d ../iiif rossitten-33.jpeg rossitten-34.jpeg
iiif_static.py  -d ../iiif kurische-nehrung-58.jpeg kurische-nehrung-59.jpeg kurische-nehrung-60.jpeg
cd "$WD"

yarn install
yarn run svgo
hugo
cd docs && git add --all && git commit -m "Publishing to gh-pages" && cd ..

echo "Run 'git push --all' to publish the site"
