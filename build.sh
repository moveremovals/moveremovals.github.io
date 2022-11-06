#!/bin/sh

docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    node:19 \
    npm run build --cache=.npm_cache