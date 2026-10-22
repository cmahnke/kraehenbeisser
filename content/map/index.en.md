---
title: "Map"
description: "Map of the Curonian Spit"
date: 2020-07-28T16:51:27+02:00
draft: false
params:
  displayInMenu: true
  displayInList: false
  dropCap: false
  hideDescription: true
  hideEndNav: true
---

On this page, the locations of the posts are displayed on a map. The map display uses the external service [OpenStreetMap](https://www.openstreetmap.org/), so consent is required for its use.

{{< html/iframe-consent >}}
    {{< maps/osm-vector-tiles src="/post/map.geojson" style="map-styles/shortbread.json" marker="{src: '/images/geomarker.svg', scale: 1, anchorXUnits: 'fraction', anchorYUnits: 'fraction', anchor: [0.5, 1]}" >}}
{{< /html/iframe-consent >}}

{{< html/link class="download-link" file="../post/map.geojson" content="Download GeoJSON" >}}
