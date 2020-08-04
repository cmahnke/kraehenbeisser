#!/bin/bash
# Taken from https://gohugo.io/hosting-and-deployment/hosting-on-github/

rm -rf docs/* resources

pip install iiif
WD=`pwd`
cd static/images
iiif_static.py -d ../../content/post/rossitten rossitten-33.jpeg rossitten-34.jpeg
iiif_static.py  -d ../../content/post/kurische-nehrung kurische-nehrung-58.jpeg kurische-nehrung-59.jpeg kurische-nehrung-60.jpeg
cd "$WD"

yarn install
yarn run svgo build
cd docs && git add --all && git commit -m "Publishing to gh-pages" && cd ..

echo "Run 'git push --all' to publish the site"
