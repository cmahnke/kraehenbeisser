#!/bin/sh

# IIIF tiles
WD=`pwd`
cd static/images
iiif_static.py -d ../../content/post/rossitten rossitten-33.jpeg rossitten-34.jpeg
iiif_static.py  -d ../../content/post/kurische-nehrung kurische-nehrung-59.jpeg kurische-nehrung-60.jpeg
cd $WD

#NPM dependencies
yarn install
yarn run svgo
