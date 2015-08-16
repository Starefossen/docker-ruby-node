#!/bin/bash

IOJS_VERSION=$1

if [ -z ${IOJS_VERSION} ]; then
  echo "$0 usage: [IOJS_VERSION]"
  exit 1
fi

for i in ./*; do
  if [ -d "$i" ]; then
    RUBY=$(basename "$i" | cut -d "-" -f 1)
    IOJS=$(basename "$i" | cut -d "-" -f 2)

    echo $i $RUBY $IOJS $IOJS_VERSION

    cp "template" "$i/Dockerfile"
    sed -i '' -E "s/{{RUBY_VERSION}}/${RUBY}/g" "$i/Dockerfile"
    sed -i '' -E "s/{{IOJS_VERSION}}/${IOJS_VERSION}/g" "$i/Dockerfile"

    cp "template.slim" "$i/slim/Dockerfile"
    sed -i '' -E "s/{{RUBY_VERSION}}/${RUBY}/g" "$i/slim/Dockerfile"
    sed -i '' -E "s/{{IOJS_VERSION}}/${IOJS_VERSION}/g" "$i/slim/Dockerfile"

    cp "template.onbuild" "$i/onbuild/Dockerfile"
    sed -i '' -E "s/{{RUBY_VERSION}}/${RUBY}/g" "$i/onbuild/Dockerfile"
    sed -i '' -E "s/{{IOJS_VERSION}}/${IOJS_VERSION}/g" "$i/onbuild/Dockerfile"
  fi
done
