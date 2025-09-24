#!/bin/bash

# Generate favicon files from the logo
# Requires ImageMagick (install with: brew install imagemagick)

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
STATIC_DIR="$SCRIPT_DIR/../static"
LOGO_SVG="$STATIC_DIR/images/logos/logo.svg"
LOGO_PNG="$STATIC_DIR/images/logos/logo.png"

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "ImageMagick is not installed. Installing..."
    brew install imagemagick
fi

# Use SVG if available, otherwise use PNG
if [ -f "$LOGO_SVG" ]; then
    SOURCE="$LOGO_SVG"
    echo "Using SVG logo: $SOURCE"
elif [ -f "$LOGO_PNG" ]; then
    SOURCE="$LOGO_PNG"
    echo "Using PNG logo: $SOURCE"
else
    echo "Error: No logo file found!"
    exit 1
fi

echo "Generating favicon files..."

# Copy SVG as favicon.svg
if [ -f "$LOGO_SVG" ]; then
    cp "$LOGO_SVG" "$STATIC_DIR/favicon.svg"
    echo "✓ Created favicon.svg"
fi

# Generate ICO file (multiple sizes)
convert "$SOURCE" -resize 16x16 "$STATIC_DIR/favicon-16.png"
convert "$SOURCE" -resize 32x32 "$STATIC_DIR/favicon-32.png"
convert "$SOURCE" -resize 48x48 "$STATIC_DIR/favicon-48.png"
convert "$STATIC_DIR/favicon-16.png" "$STATIC_DIR/favicon-32.png" "$STATIC_DIR/favicon-48.png" "$STATIC_DIR/favicon.ico"
rm "$STATIC_DIR/favicon-16.png" "$STATIC_DIR/favicon-32.png" "$STATIC_DIR/favicon-48.png"
echo "✓ Created favicon.ico"

# Generate PNG favicons
convert "$SOURCE" -resize 16x16 "$STATIC_DIR/favicon-16x16.png"
echo "✓ Created favicon-16x16.png"

convert "$SOURCE" -resize 32x32 "$STATIC_DIR/favicon-32x32.png"
echo "✓ Created favicon-32x32.png"

# Apple Touch Icon
convert "$SOURCE" -resize 180x180 "$STATIC_DIR/apple-touch-icon.png"
echo "✓ Created apple-touch-icon.png"

# Android Chrome icons
convert "$SOURCE" -resize 192x192 "$STATIC_DIR/android-chrome-192x192.png"
echo "✓ Created android-chrome-192x192.png"

convert "$SOURCE" -resize 512x512 "$STATIC_DIR/android-chrome-512x512.png"
echo "✓ Created android-chrome-512x512.png"

# Microsoft Tile
convert "$SOURCE" -resize 144x144 "$STATIC_DIR/mstile-144x144.png"
echo "✓ Created mstile-144x144.png"

echo ""
echo "✅ All favicon files generated successfully!"
echo "Files created in: $STATIC_DIR"