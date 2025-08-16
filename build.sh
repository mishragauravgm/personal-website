#!/bin/bash
set -e  # Exit on any error

echo "Starting Hugo build process..."

# Verify Hugo is available
if ! command -v hugo &> /dev/null; then
    echo "ERROR: Hugo is not available in PATH"
    exit 1
fi

# Print Hugo version for verification
echo "Using Hugo version:"
hugo version

# Verify we're in a Hugo site directory
if [ ! -f "config.yml" ] && [ ! -f "config.yaml" ] && [ ! -f "config.toml" ]; then
    echo "ERROR: No Hugo configuration file found"
    exit 1
fi

# Build the site
echo "Building Hugo site..."
hugo --minify --gc --verbose

# Verify public directory was created
if [ ! -d "public" ]; then
    echo "ERROR: Public directory was not created"
    exit 1
fi

echo "Build complete! Generated files in public/ directory"
ls -la public/ | head -10
