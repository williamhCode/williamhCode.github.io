#!/bin/bash

# Image Optimization Script
# Optimizes photos in assets/Photos for web use

set -e

INPUT_DIR="assets/Photos"
OUTPUT_DIR="static/assets"
MAX_WIDTH=2000
QUALITY=85

echo "Creating output directory..."
mkdir -p "$OUTPUT_DIR"

echo ""
echo "Optimizing images..."
echo "Input: $INPUT_DIR"
echo "Output: $OUTPUT_DIR"
echo "Max width: ${MAX_WIDTH}px"
echo "Quality: ${QUALITY}%"
echo ""

# Counter for progress
count=0
total=$(find "$INPUT_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | wc -l | tr -d ' ')

# Process each image
find "$INPUT_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | while read img; do
    count=$((count + 1))
    filename=$(basename "$img")
    name="${filename%.*}"
    ext="${filename##*.}"

    output_webp="$OUTPUT_DIR/${name}.webp"

    echo "[$count/$total] Processing: $filename"

    # Get original size
    original_size=$(du -h "$img" | cut -f1)

    # Create WebP version (smaller, modern format)
    magick "$img" \
        -resize "${MAX_WIDTH}x>${MAX_WIDTH}" \
        -strip \
        -quality $QUALITY \
        "$output_webp"

    # Get new sizes
    webp_size=$(du -h "$output_webp" | cut -f1)

    echo "  Original: $original_size → WebP: $webp_size"
done

echo ""
echo "Done! Optimized images are in $OUTPUT_DIR"

