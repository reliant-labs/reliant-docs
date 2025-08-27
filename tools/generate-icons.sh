#!/bin/bash

# Icon Generator Script for Reliant Labs
# This script helps generate all required icon sizes from a source logo

echo "🎨 Reliant Labs Icon Generator"
echo "=============================="

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "❌ ImageMagick not found. Please install it first:"
    echo "   macOS: brew install imagemagick"
    echo "   Ubuntu: sudo apt-get install imagemagick"
    exit 1
fi

# Check if source logo exists
if [ ! -f "static/images/logos/logo.png" ]; then
    echo "❌ Source logo not found at static/images/logos/logo.png"
    echo "   Please place your logo file there first"
    exit 1
fi

echo "✅ Source logo found: static/images/logos/logo.png"
echo "🔨 Generating icons..."

# Create output directory
mkdir -p static/icons

# Generate favicon.ico (16x16, 32x32)
convert static/images/logos/logo.png -resize 16x16 static/icons/favicon-16x16.png
convert static/images/logos/logo.png -resize 32x32 static/icons/favicon-32x32.png

# Generate Android icons
convert static/images/logos/logo.png -resize 192x192 static/icons/android-chrome-192x192.png
convert static/images/logos/logo.png -resize 512x512 static/icons/android-chrome-512x512.png

# Generate Apple touch icon
convert static/images/logos/logo.png -resize 180x180 static/icons/apple-touch-icon.png

# Generate Microsoft tile icon
convert static/images/logos/logo.png -resize 144x144 static/icons/mstile-144x144.png

# Generate SVG favicon (if you have an SVG logo)
if [ -f "static/images/logos/logo.svg" ]; then
    cp static/images/logos/logo.svg static/icons/favicon.svg
    echo "✅ SVG favicon copied"
fi

# Copy to static root (Hugo will serve from here)
cp static/icons/* static/

echo "🎉 Icon generation complete!"
echo ""
echo "📁 Generated icons:"
ls -la static/icons/
echo ""
echo "🔗 Icons are now available at:"
echo "   /favicon.ico"
echo "   /favicon.svg"
echo "   /apple-touch-icon.png"
echo "   /android-chrome-192x192.png"
echo "   /android-chrome-512x512.png"
echo ""
echo "💡 Next steps:"
echo "   1. Test your site locally: make dev"
echo "   2. Check browser tab for new favicon"
echo "   3. Commit and push changes"
