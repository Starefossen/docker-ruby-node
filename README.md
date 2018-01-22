# Ruby + Node Docker Image [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:alpine.svg)](https://microbadger.com/#/images/starefossen/ruby-node:alpine)

Docker image with Ruby and Node.js with Yarn installed and ready to roll.

Both Ruby and Node.js are based on official images.

Maintaned combinations:

* Ruby: 2 (2.5) Node: 6 (6.12)
* Ruby: 2 (2.5) Node: 8 (8.9)

## Supported tags and respective `Dockerfile` links

* [`latest`, `2-8` (2-8/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-8/stretch/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:latest.svg)](https://microbadger.com/#/images/starefossen/ruby-node:latest)
* [`alpine`, `2-8-alpine` (2-6/alpine/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-6/alpine/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:alpine.svg)](https://microbadger.com/#/images/starefossen/ruby-node:alpine)
* [`2-6` (2-6/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-6/stretch/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:2-6.svg)](https://microbadger.com/#/images/starefossen/ruby-node:2-6)
* [`2-6-alpine` (2-6/alpine/Dockerfile)](https://github.com/Starefossen/docker-ruby-node/blob/master/2-6/alpine/Dockerfile) [![Image Layers](https://images.microbadger.com/badges/image/starefossen/ruby-node:2-6-alpine.svg)](https://microbadger.com/#/images/starefossen/ruby-node:2-6-alpine)

## Why Node.js and Ruby together?

Some applications, like Jekyll, GitHub pages or Rails with Webpacker, requires both Ruby and Node.js
installed in the same image in order to run or fully function. This image do not install any other packages than both other images do.

## Differences with official Ruby and Node.js images?

Ruby: Same as official.

Node: Instead variables NODE_VERSION and YARN_VERSION is available variable NODE_MAJOR fullfiled with major version of node.js. Node is not executed on by CMD.

## How to use this image

```
$ docker run -v "$PWD":/usr/src/app -p "8080:8080" starefossen/ruby-node
```

## Image Variants

The `starefossen/ruby-node` images come in three flavors, each designed for a
specific use case.

`starefossen/ruby-node:latest`

This is the defacto image. If you are unsure about what your needs are, you
probably want to use this one. It is designed to be used both as a throw away container (mount your source code and start the container to start your app), as well as the base to build other images off of.
Based on Debian distribution.

`starefossen/ruby-node:alpine`

This is the smalles image possible. It is based on the Alpine Linux base image.

## Default Locale

Versions 2-6, 2-8 has defined locale C.UTF-8 instead default POSIX.

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

### Collaborators

Individuals making significant and valuable contributions are made Collaborators
and given commit-access to the project. These individuals are identified by the
existing Collaborators and their addition as Collaborators is discussed as a
pull request to this project's README.md.

Note: If you make a significant contribution and are not considered for
commit-access log an issue or contact one of the Collaborators directly.

* Radovan Šmitala - @radeno
* Hans Kristian Flaatten - @Starefossen
