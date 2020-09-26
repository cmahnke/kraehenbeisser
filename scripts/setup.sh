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

# Favicons
# See https://gist.github.com/pfig/1808188
convert "Source Files/Hintergrund/Raben/Favicon.psd[2]" static/images/favicon.png
convert static/images/favicon.png -resize 256x256 -transparent white static/images/favicon-256.png
convert static/images/favicon-256.png -resize 16x16 static/images/favicon-16.png
convert static/images/favicon-256.png -resize 32x32 static/images/favicon-32.png
convert static/images/favicon-256.png -resize 64x64 static/images/favicon-64.png
convert static/images/favicon-256.png -resize 128x128 static/images/favicon-128.png
convert static/images/favicon-16.png static/images/favicon-32.png static/images/favicon-64.png static/images/favicon-128.png static/images/favicon-256.png -colors 256 static/images/favicon.ico

#NPM dependencies
yarn install
yarn run svgo
