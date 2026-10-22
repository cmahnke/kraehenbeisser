---
title: "Karte"
description: "Karte der Kurischen Nehrung"
date: 2020-07-28T16:51:27+02:00
draft: false
params:
  displayInMenu: true
  displayInList: false
  dropCap: false
  hideDescription: true
  hideEndNav: true
---

Auf dieser Seite werden die Orte der Beiträge auf einer Karte angezeigt. Die Kartenanzeige nutzt den externen Dienst [OpenStreetMap](https://www.openstreetmap.org/), daher muss der Nutzung zugestimmt werden.

{{< html/iframe-consent >}}
    {{< maps/osm-vector-tiles src="/post/map.geojson" style="map-styles/shortbread.json" marker="{src: '/images/geomarker.svg', scale: 1, anchorXUnits: 'fraction', anchorYUnits: 'fraction', anchor: [0.5, 1]}" >}}
{{< /html/iframe-consent >}}

{{< html/link class="download-link" file="../post/map.geojson" content="Download GeoJSON" >}}
