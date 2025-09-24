#!/bin/bash

# Update the version data file for Hugo

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DATA_FILE="$SCRIPT_DIR/../data/version.json"

# Get version using the get-version script
VERSION=$("$SCRIPT_DIR/get-version.sh")

# Get current date
DATE=$(date -u +"%Y-%m-%d")

# Create/update the data file
cat > "$DATA_FILE" << EOF
{
  "current": "$VERSION",
  "release_date": "$DATE"
}
EOF

echo "Updated version to $VERSION in $DATA_FILE"