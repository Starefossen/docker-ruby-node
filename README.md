# Ruby + Node Docker Image [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:alpine.svg)](https://microbadger.com/#/images/starefossen/ruby-node:alpine)

Docker image with Ruby and Node.js with Yarn installed and ready to roll.

Both Ruby and Node.js are based on official images.

Maintaned combinations:
* Ruby: 2 (2.4) Node: 6 (6.10)

## Supported tags and respective `Dockerfile` links

* [`latest`, `2-6` (2-6/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-6/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:latest.svg)](https://microbadger.com/#/images/starefossen/ruby-node:latest)
* [`slim`, `2-6-slim` (2-6/slim/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-6/slim/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:slim.svg)](https://microbadger.com/#/images/starefossen/ruby-node:slim)
* [`alpine`, `2-6-alpine` (2-6/alpine/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-6/alpine/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:alpine.svg)](https://microbadger.com/#/images/starefossen/ruby-node:alpine)
* [`2-4` (2-4/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-4/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:2-4.svg)](https://microbadger.com/#/images/starefossen/ruby-node:2-4)
* [`2-4-slim` (2-4/slim/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-4/slim/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:2-4-slim.svg)](https://microbadger.com/#/images/starefossen/ruby-node:2-4-slim)
* [`2-4-alpine` (2-4/alpine/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-4/alpine/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:2-4-alpine.svg)](https://microbadger.com/#/images/starefossen/ruby-node:2-4-alpine)

## Why Node.js and Ruby together?

Some applications, like Jekyll, GitHub pages or Rails with Webpacker, requires both Ruby and Node.js
installed in the same image in order to run or fully function.

## How to use this image

```
$ docker run -v "$PWD":/usr/src/app -p "8080:8080" starefossen/ruby-node
```

## Image Variants

The `starefossen/ruby-node` images come in three flavors, each designed for a
specific use case.

`starefossen/ruby-node:latest`

This is the defacto image. If you are unsure about what your needs are, you
probably want to use this one. It is designed to be used both as a throw away
container (mount your source code and start the container to start your app), as
well as the base to build other images off of.

`starefossen/ruby-node:slim`

A slimmed down image, identical to the `:latest` tag except it is based a Debian
base image with fewer packages and dependencies installed like without GCC and
various build tools.

`starefossen/ruby-node:alpine`

This is the smalles image possible. It is based on the Alpine Linux base image.

## Default Locale
Version 2-6 (latest and slim) has defined locale C.UTF-8 instead default POSIX.

## License

This Docker image is licensed under the [MIT License](https://github.com/Starefossen/docker-ruby-node/blob/master/LICENSE).

Software contained in this image is licensed under the following:

* Ruby: [GPLv2](https://github.com/ruby/ruby/blob/trunk/GPL)
* Node.js: [MIT License](https://github.com/nodejs/node/blob/master/LICENSE)

## Supported Docker versions

This image is officially supported on Docker version v17.

Support for older versions (down to v1.0) is provided on a best-effort basis.

## User Feedback

### Documentation

* [Docker](http://docs.docker.com)
* [Ruby](https://www.ruby-lang.org/en/)
* [Node.js](https://nodejs.org/en/)

### Issues

If you have any problems with or questions about this image, please contact us
through a [GitHub issue](https://github.com/Starefossen/docker-ruby-node/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small;
we are always thrilled to receive pull requests, and do our best to process them
as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub
issue](https://github.com/Starefossen/docker-ruby-node/issues), especially for
more ambitious contributions. This gives other contributors a chance to point
you in the right direction, give you feedback on your design, and help you find
out if someone else is working on the same thing.
