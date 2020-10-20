#!/bin/sh

# Images
echo "Converting source images..."

convert "Source Files/Scans/Rossitten/img033.tif" -quality 95 content/post/rossitten/page033.jpg
convert "Source Files/Scans/Rossitten/img034.tif" -quality 95 content/post/rossitten/page034.jpg

convert "Source Files/Scans/Kurische Nehrung/img058.tif" -quality 95 content/post/kurische-nehrung/page058.jpg
convert "Source Files/Scans/Kurische Nehrung/img059.tif" -quality 95 content/post/kurische-nehrung/page059.jpg
convert "Source Files/Scans/Kurische Nehrung/img060.tif" -quality 95 content/post/kurische-nehrung/page060.jpg

# IIIF tiles
echo "Set SKIP_IIIF to something to disable generation of IIIF derivates"

if [[ -z "$SKIP_IIIF" ]] ; then
    ./scripts/iiif.sh
fi

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
