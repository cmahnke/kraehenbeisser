#!/bin/sh

# Images
convert "Source Files/Scans/Rossitten/img033.tif" -quality 95 static/images/rossitten-33.jpg
convert "Source Files/Scans/Rossitten/img034.tif" -quality 95 static/images/rossitten-34.jpg

convert "Source Files/Scans/Kurische Nehrung/img058.tif" -quality 95 static/images/kurische-nehrung-58.jpg
convert "Source Files/Scans/Kurische Nehrung/img059.tif" -quality 95 static/images/kurische-nehrung-59.jpg
convert "Source Files/Scans/Kurische Nehrung/img060.tif" -quality 95 static/images/kurische-nehrung-60.jpg

# IIIF tiles
WD=`pwd`
cd static/images
iiif_static.py -d ../../content/post/rossitten rossitten-33.jpg rossitten-34.jpg
iiif_static.py  -d ../../content/post/kurische-nehrung kurische-nehrung-58.jpg kurische-nehrung-59.jpg kurische-nehrung-60.jpg
cd $WD

#NPM dependencies
yarn install
yarn run svgo
