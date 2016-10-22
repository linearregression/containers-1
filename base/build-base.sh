#!/bin/sh

docker pull alpine
docker run --rm -it -v "$(pwd):/out" -v "$(pwd)/update-base-bin.sh:/bin/update-base-bin" alpine update-base-bin
# docker build --pull --force-rm --no-cache -t casualjim/base:${1-"latest"} .
# docker push casualjim/base:${1-"latest"}
