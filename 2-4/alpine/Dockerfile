FROM ruby:2-alpine

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_MAJOR_VERSION 4

RUN addgroup -g 1000 node \
    && adduser -u 1000 -G node -s /bin/sh -D node \
    && apk add --no-cache \
        libstdc++ \
    && apk add --no-cache --virtual .build-deps \
        binutils-gold \
        curl \
        g++ \
        gcc \
        gnupg \
        libgcc \
        linux-headers \
        make \
        python \
    # gpg keys listed at https://github.com/nodejs/node#release-team
    && for key in \
      9554F04D7259F04124DE6B476D5A82AC7E37093B \
      94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
      FD3A5288F042B6850C66B31F09FE44734EB7990E \
      71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
      DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
      B9AE9905FFD7803F25714661B63B535A4C206CA9 \
      C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 \
      56730D5401028683275BD23C23EFEFE93C4CFFFE \
    ; do \
      gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" || \
      gpg --keyserver pgp.mit.edu --recv-keys "$key" || \
      gpg --keyserver keyserver.pgp.com --recv-keys "$key" ; \
    done \
    && NODE_VERSION=$(curl -SL "https://nodejs.org/dist/index.tab" \
                   | grep "^v${NODE_MAJOR_VERSION}" \
                   | head -n 1 | awk '{ print $1 }') \
    && curl -vSLO "https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION.tar.xz" \
    && curl -vSLO "https://nodejs.org/dist/$NODE_VERSION/SHASUMS256.txt.asc" \
    && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc \
    && grep " node-$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c - \
    && tar -xf "node-$NODE_VERSION.tar.xz" \
    && cd "node-$NODE_VERSION" \
    && ./configure \
    && make -j$(getconf _NPROCESSORS_ONLN) \
    && make install \
    && apk del .build-deps \
    && cd .. \
    && rm -Rf "node-$NODE_VERSION" \
    && rm "node-$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
