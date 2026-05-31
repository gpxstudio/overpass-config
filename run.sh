#!/bin/bash

mkdir -p db

docker rm -f overpass 2>/dev/null || true

docker run -d \
  -e OVERPASS_STOP_AFTER_INIT=false \
  -v ./db/:/db \
  -i -t \
  --name overpass \
  -p 8989:80 \
  wiktorn/overpass-api
