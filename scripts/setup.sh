#!/bin/sh

# Images
#echo "Converting source images..."

#convert "Source Files/Scans/Rossitten/img033.tif" -quality 95 content/post/rossitten/page033.jpg
#convert "Source Files/Scans/Rossitten/img034.tif" -quality 95 content/post/rossitten/page034.jpg

#convert "Source Files/Scans/Kurische Nehrung/img058.tif" -quality 95 content/post/kurische-nehrung/page058.jpg
#convert "Source Files/Scans/Kurische Nehrung/img059.tif" -quality 95 content/post/kurische-nehrung/page059.jpg
#convert "Source Files/Scans/Kurische Nehrung/img060.tif" -quality 95 content/post/kurische-nehrung/page060.jpg

# IIIF tiles
echo "Set SKIP_IIIF to something to disable generation of IIIF derivates"

if [[ -z "$SKIP_IIIF" ]] ; then
    ./scripts/iiif.sh
fi

SOURCE="Source Files/Hintergrund/Raben/Favicon.psd[2]" ./themes/projektemacher-base/scripts/favicon.sh

#NPM dependencies
echo "Calling theme scripts"
for SCRIPT in $PWD/themes/projektemacher-base/scripts/init/*.sh ; do
    echo "Running $SCRIPT"
    bash "$SCRIPT"
done

yarn run svgo
