#!/bin/bash
# Taken from https://gohugo.io/hosting-and-deployment/hosting-on-github/

hugo
cd docs && git add --all && git commit -m "Publishing to gh-pages" && cd ..
