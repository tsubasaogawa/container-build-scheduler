#!/bin/bash

set -eu

# Get Binary
curl -s -o ./embulk -L "https://dl.embulk.org/embulk-latest.jar"

# Save Metadata
mkdir -p /tmp/artifacts
VERSION=$(curl -i -s "https://dl.embulk.org/embulk-latest.jar" \
  | grep -oP 'location: .+\.jar' \
  | grep -oP '(\d+\.){1,2}(\d+)?' | tee /tmp/artifacts/embulk.version)
MD5=$(md5sum ./embulk | cut -f1 -d' ' | tee /tmp/artifacts/embulk.md5)

cat << EOL
  Version: ${VERSION}
  Binary MD5: ${MD5}
EOL

# Print list of embulk versions
curl -s 'https://registry.hub.docker.com/v2/repositories/${GITHUB_OWNER}/${IMAGE_NAME}/tags/' \
  | jq -r '.results[].name' \
  | tee /tmp/tags
