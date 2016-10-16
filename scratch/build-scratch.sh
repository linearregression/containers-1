#!/bin/sh

set -e -o pipefail

docker pull alpine
docker run --rm -it -v `pwd`:/dist alpine sh -c 'set -ex && apk add --no-cache ca-certificates mailcap && update-ca-certificates && cp /etc/ssl/certs/ca-certificates.crt /dist && cp /etc/mime.types /dist'
docker build --pull --force-rm --no-cache -t casualjim/scratch:${1-"latest"} .
docker push casualjim/scratch:${1-"latest"}
