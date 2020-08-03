# syntax=docker/dockerfile:experimental

FROM docker.pkg.github.com/cmahnke/hugo-base/hugo-base:main

LABEL maintainer="cmahnke@gmail.com"

ENV BUILD_CONTEXT=/mnt/build-context

RUN --mount=target=/mnt/build-context \
    # Creating directories
    mkdir -p $HOME/kraehenbeisser && \
    # Copy files
    cp -r $BUILD_CONTEXT/* $HOME/kraehenbeisser/ && \
    cd $HOME/kraehenbeisser/ && \
    # Build
    ./scripts/commit-gh-pages-files.sh

VOLUME $WWW_DIR
