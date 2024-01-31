#!/bin/sh

GM_VERSION=1.3.42
REGION=us-east-1

set -x

aws lambda publish-layer-version --region $REGION \
  --layer-name graphicsmagick \
  --zip-file fileb://gm-layer-$GM_VERSION.zip \
  --description "GraphicsMagick $GM_VERSION binaries" \
  --license-info MIT
