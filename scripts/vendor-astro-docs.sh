#!/bin/bash

# Download Astro documentation
ASTRO_DOCS_URL="https://astro.build/docs/introduction"
DOWNLOAD_DIR="astro-docs"

# Create a directory to hold the downloaded docs
mkdir -p "$DOWNLOAD_DIR"

# Use wget or curl to download the Astro docs
wget -P "$DOWNLOAD_DIR" "$ASTRO_DOCS_URL"

# Extract the contents if they are in an archive format
# Assuming the documentation is packaged as a zip or similar format
# Uncomment below if you have an archive format
# unzip "$DOWNLOAD_DIR/docs.zip" -d "$DOWNLOAD_DIR"

# Copy LICENSE file to the current directory
cp "$DOWNLOAD_DIR/LICENSE" .

# Concatenate all English MDX files into a single markdown file
cat "$DOWNLOAD_DIR"/**/*.mdx > flattened_docs.md

echo "Astro documentation has been downloaded and processed."