#!/bin/bash

# Helper script to test different Hugo themes
# Usage: ./test-theme.sh [hextra|hugoblox|plume]

if [ -z "$1" ]; then
    echo "Usage: ./test-theme.sh [hextra|book|plume]"
    echo ""
    echo "Available themes:"
    echo "  hextra     - Test with Hextra theme (port 1313)"
    echo "  book       - Test with Hugo Book theme (port 1314)"
    echo "  plume      - Test with Plume theme (port 1315)"
    exit 1
fi

# Backup custom layouts (they may conflict with themes)
if [ -d "layouts" ]; then
    echo "Backing up custom layouts..."
    mv layouts layouts.backup
fi

case "$1" in
    hextra)
        echo "Starting Hugo server with Hextra theme..."
        hugo server --config hugo.hextra.toml --port 1313
        ;;
    book)
        echo "Starting Hugo server with Hugo Book theme..."
        hugo server --config hugo.book.toml --port 1314
        ;;
    plume)
        echo "Starting Hugo server with Plume theme..."
        hugo server --config hugo.plume.toml --port 1315
        ;;
    *)
        echo "Unknown theme: $1"
        echo "Available themes: hextra, book, plume"
        exit 1
        ;;
esac

# Restore layouts when done
if [ -d "layouts.backup" ]; then
    echo ""
    echo "Restoring custom layouts..."
    mv layouts.backup layouts
fi
