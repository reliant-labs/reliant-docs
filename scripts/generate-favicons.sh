#!/bin/bash

# Generate favicon files from the logo
# Requires ImageMagick (install with: brew install imagemagick)

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
STATIC_DIR="$SCRIPT_DIR/../static"
LOGO_SVG="$STATIC_DIR/images/logos/logo.svg"
LOGO_PNG="$STATIC_DIR/images/logos/logo.png"
MARK_PNG="$STATIC_DIR/images/logos/mark.png"

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "ImageMagick is not installed. Installing..."
    brew install imagemagick
fi

# Use mark.png for favicons (it's square and designed for small sizes)
if [ -f "$MARK_PNG" ]; then
    SOURCE="$MARK_PNG"
    echo "Using mark icon: $SOURCE"
elif [ -f "$LOGO_SVG" ]; then
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
echo "Using square mark icon for optimal favicon rendering"

# Helper function to generate square favicon with centered logo
generate_square_favicon() {
    local size=$1
    local output=$2
    # Trim the source to remove excess padding, then scale to fill 100% of the canvas
    # This makes the icon fill the entire space
    local scaled_size=$size
    convert "$SOURCE" -trim +repage -resize "${scaled_size}x${scaled_size}" -gravity center -background none -extent "${size}x${size}" -channel RGBA -define png:color-type=6 "PNG32:$output"
}

# Generate ICO file (multiple sizes)
generate_square_favicon 16 "$STATIC_DIR/favicon-16.png"
generate_square_favicon 32 "$STATIC_DIR/favicon-32.png"
generate_square_favicon 48 "$STATIC_DIR/favicon-48.png"
convert "$STATIC_DIR/favicon-16.png" "$STATIC_DIR/favicon-32.png" "$STATIC_DIR/favicon-48.png" "$STATIC_DIR/favicon.ico"
rm "$STATIC_DIR/favicon-16.png" "$STATIC_DIR/favicon-32.png" "$STATIC_DIR/favicon-48.png"
echo "✓ Created favicon.ico"

# Generate PNG favicons
generate_square_favicon 16 "$STATIC_DIR/favicon-16x16.png"
echo "✓ Created favicon-16x16.png"

generate_square_favicon 32 "$STATIC_DIR/favicon-32x32.png"
echo "✓ Created favicon-32x32.png"

# Apple Touch Icon
generate_square_favicon 180 "$STATIC_DIR/apple-touch-icon.png"
echo "✓ Created apple-touch-icon.png"

# Android Chrome icons
generate_square_favicon 192 "$STATIC_DIR/android-chrome-192x192.png"
echo "✓ Created android-chrome-192x192.png"

generate_square_favicon 512 "$STATIC_DIR/android-chrome-512x512.png"
echo "✓ Created android-chrome-512x512.png"

# Microsoft Tile
generate_square_favicon 144 "$STATIC_DIR/mstile-144x144.png"
echo "✓ Created mstile-144x144.png"

echo ""
echo "✅ All favicon files generated successfully!"
echo "Files created in: $STATIC_DIR"