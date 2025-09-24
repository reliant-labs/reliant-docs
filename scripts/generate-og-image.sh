#!/bin/bash

# Generate Open Graph image for social media sharing
# Creates a 1200x630 image with Reliant branding

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
STATIC_DIR="$SCRIPT_DIR/../static"
LOGO_SVG="$STATIC_DIR/images/logos/logo.svg"
LOGO_PNG="$STATIC_DIR/images/logos/logo.png"

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
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

echo "Generating Open Graph image..."

# Create a 1200x630 image with white background
magick -size 1200x630 xc:white "$STATIC_DIR/og-image-temp.png"

# Add logo (centered, scaled to fit)
magick "$SOURCE" -resize 400x400 "$STATIC_DIR/logo-scaled.png"
magick "$STATIC_DIR/og-image-temp.png" "$STATIC_DIR/logo-scaled.png" \
    -gravity center -geometry +0-50 \
    -composite "$STATIC_DIR/og-image-temp2.png"

# Add text
magick "$STATIC_DIR/og-image-temp2.png" \
    -font "Helvetica-Bold" -pointsize 60 -fill "#2e2e2e" \
    -gravity center -annotate +0+100 "Reliant Documentation" \
    -font "Helvetica" -pointsize 30 -fill "#8e8e8e" \
    -gravity center -annotate +0+160 "AI-Powered Coding Assistant for macOS" \
    "$STATIC_DIR/og-image.png"

# Clean up temp files
rm -f "$STATIC_DIR/og-image-temp.png" "$STATIC_DIR/og-image-temp2.png" "$STATIC_DIR/logo-scaled.png"

echo "✓ Created og-image.png (1200x630)"

# Also create a Twitter card image (1200x600)
magick "$STATIC_DIR/og-image.png" -resize 1200x600! "$STATIC_DIR/twitter-card.png"
echo "✓ Created twitter-card.png (1200x600)"

echo ""
echo "✅ Open Graph images generated successfully!"
echo "Files created in: $STATIC_DIR"