FROM golang:1.7-alpine
MAINTAINER Ivan Porto Carrero <ivan@flanders.co.nz> (@casualjim)

RUN set -e &&\
  apk add --no-cache git bash musl-dev gcc

ENTRYPOINT ["gox"]
CMD ["--help"]
