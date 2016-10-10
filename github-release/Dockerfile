FROM golang:1.7-alpine
MAINTAINER Ivan Porto Carrero <ivan@flanders.co.nz> (@casualjim)

RUN set -e &&\
  apk add --no-cache --virtual .buildDeps git &&\
  go get -u github.com/aktau/github-release &&\
  apk del .buildDeps

ENTRYPOINT ["github-release"]
CMD ["--help"]
