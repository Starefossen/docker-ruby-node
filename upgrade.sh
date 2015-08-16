#!/bin/bash

IOJS_IMAGE=$1

if [ -z ${IOJS_IMAGE} ]; then
  echo "$0 usage: [IOJS_IMAGE] [IOJS_VERSION]"
  exit 1
fi

IOJS_VERSION=$2

if [ -z ${IOJS_VERSION} ]; then
  echo "$0 usage: [IOJS_IMAGE] [IOJS_VERSION]"
  exit 1
fi

for i in ./*; do
  if [ -d "$i" ]; then
    RUBY=$(basename "$i" | cut -d "-" -f 1)
    IOJS=$(basename "$i" | cut -d "-" -f 2)

    git mv "$i" "${RUBY}-${IOJS_IMAGE}"
  fi
done

./generate.sh ${IOJS_VERSION}
