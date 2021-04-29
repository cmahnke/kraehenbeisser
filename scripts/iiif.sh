#!/usr/bin/env bash

IMAGES=$(find content -maxdepth 4 -name 'page*.jpg') ./themes/projektemacher-base/scripts/iiif.sh
