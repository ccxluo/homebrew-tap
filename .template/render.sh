#!/usr/bin/env bash

set -xe

INPUT="$1"
OUTPUT="$2"

echo "Rendering for version $VERSION, expected sha is $SHA"
URL="https://github.com/MarathonLabs/marathon/releases/download/${VERSION}/marathon-${VERSION}.zip"
SHA256="$(curl -L $URL | sha256sum | cut -d " " -f 1)"
echo "Calculated sha256 $SHA256"

if [ "$SHA" == "$SHA256" ]; then
  echo "SHA256 matches"
  sed "s/\${VERSION}/$VERSION/g" "$INPUT" | sed "s/\${SHA}/$SHA/g" > "$OUTPUT"
else
  echo "SHA $SHA256 does not match expected $SHA"
  exit 1
fi