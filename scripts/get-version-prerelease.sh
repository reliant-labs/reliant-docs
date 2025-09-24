#!/bin/bash

# Get the version from the Reliant project (including pre-release versions)
# This script reads the version from either git tags or package.json

RELIANT_DIR="../reliant"

# First try to get version from git tags
if [ -d "$RELIANT_DIR/.git" ]; then
    cd "$RELIANT_DIR"
    # Get the latest tag sorted by version (including pre-releases), remove 'v' or 'vv' prefix
    VERSION=$(git tag -l --sort=-version:refname | head -1 | sed 's/^v\{1,2\}//')

    if [ -z "$VERSION" ]; then
        # No tags found, try package.json
        if [ -f "package.json" ]; then
            VERSION=$(grep '"version"' package.json | head -1 | sed 's/.*"version": *"\([^"]*\)".*/\1/')
        fi
    fi
    cd - > /dev/null
else
    # Not a git repo, try package.json
    if [ -f "$RELIANT_DIR/package.json" ]; then
        VERSION=$(grep '"version"' "$RELIANT_DIR/package.json" | head -1 | sed 's/.*"version": *"\([^"]*\)".*/\1/')
    fi
fi

# Default to 1.0.0 if no version found
if [ -z "$VERSION" ]; then
    VERSION="1.0.0"
fi

echo "$VERSION"