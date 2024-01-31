#!/bin/sh

GM_VERSION=1.3.42

docker build --build-arg GM_VERSION -t gm-lambda-layer . &&
docker run --rm gm-lambda-layer cat /tmp/gm-$GM_VERSION.zip > ./gm-layer-$GM_VERSION.zip
