#!/bin/bash

# Script to compile all D2 diagrams in /assets folder with tala layout
# Usage: ./compile.sh

# Get the profile directory (1 level up from scripts)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROFILE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
ASSETS_DIR="$PROFILE_DIR/assets"

if [ ! -d "$ASSETS_DIR" ]; then
    echo "Error: Assets directory not found at $ASSETS_DIR"
    exit 1
fi

# Find all .d2 files in assets directory
D2_FILES=$(find "$ASSETS_DIR" -name "*.d2" -type f)

if [ -z "$D2_FILES" ]; then
    echo "No .d2 files found in $ASSETS_DIR"
    exit 0
fi

echo "Compiling D2 files in $ASSETS_DIR with tala layout..."
echo ""

SUCCESS_COUNT=0
FAIL_COUNT=0

while IFS= read -r INPUT_FILE; do
    OUTPUT_FILE="${INPUT_FILE%.d2}.svg"
    FILENAME=$(basename "$INPUT_FILE")

    echo "Compiling $FILENAME..."

    if D2_LAYOUT=tala d2 -t 8 "$INPUT_FILE" "$OUTPUT_FILE"; then
        echo "  ✓ Successfully compiled to $(basename "$OUTPUT_FILE")"
        ((SUCCESS_COUNT++))
    else
        echo "  ✗ Compilation failed for $FILENAME"
        ((FAIL_COUNT++))
    fi
    echo ""
done <<< "$D2_FILES"

echo "========================================="
echo "Compilation complete:"
echo "  Success: $SUCCESS_COUNT"
echo "  Failed: $FAIL_COUNT"
echo "========================================="

if [ $FAIL_COUNT -gt 0 ]; then
    exit 1
fi
