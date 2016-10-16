# Containers

A number containers that are rebuilt at regular times
These are tools I require for various projects and got tired of rebuilding them manually

## Tools

- [fpm](https://github.com/jordansissel/fpm)
- [gox](https://github.com/mitchellh/gox)
- [github-release](https://github.com/aktau/github-release)

## Base containers

There are 2 base containers here, one is a scratch image that has ca-certificates and /etc/mime.types present. 
You can use that one for hosting statically linked binaries that need TLS and mime type support (so https :)).

Then there is a base container that contains yelps [dumb init](https://github.com/Yelp/dumb-init) and a minimal [su-exec](https://github.com/ncopa/su-exec) optimized for a container environment.
This is based on the latest alpine and allows for attaching and executing commands inside the container.

