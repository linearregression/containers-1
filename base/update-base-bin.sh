#!/bin/sh

set -eux -o pipefail 

apk add --no-cache --virtual .base-deps gcc musl-dev make git bash

git clone https://github.com/ncopa/su-exec /usr/src/su-exec
cd /usr/src/su-exec
make
cp ./su-exec /out

git clone https://github.com/Yelp/dumb-init /usr/src/dumb-init
cd /usr/src/dumb-init
make
cp ./dumb-init /out

