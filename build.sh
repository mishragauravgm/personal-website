#!/bin/bash
set -e  # Exit on any error

echo "=== NETLIFY HUGO BUILD SCRIPT ==="
echo "Starting Hugo build process..."
echo "Current working directory: $(pwd)"
echo "Available commands:"
which hugo || echo "Hugo not found in PATH"
echo "Environment variables:"
env | grep -E "(HUGO|NODE)" || echo "No Hugo/Node environment variables found"

# Kill any potential Cecil processes that might interfere
pkill -f cecil || echo "No Cecil processes to kill"

# Verify Hugo is available
if ! command -v hugo &> /dev/null; then
    echo "ERROR: Hugo is not available in PATH"
    echo "Available binaries:"
    ls -la /usr/local/bin/ | grep -i hugo || echo "No Hugo found in /usr/local/bin/"
    exit 1
fi

# Print Hugo version for verification
echo "Using Hugo version:"
hugo version

# Verify we're in a Hugo site directory
if [ ! -f "config.yml" ] && [ ! -f "config.yaml" ] && [ ! -f "config.toml" ]; then
    echo "ERROR: No Hugo configuration file found"
    echo "Current directory contents:"
    ls -la
    exit 1
fi

echo "Found Hugo configuration file"
ls -la config.*

# Clean any existing public directory
if [ -d "public" ]; then
    echo "Removing existing public directory..."
    rm -rf public/
fi

# Build the site with explicit settings
echo "Building Hugo site with explicit settings..."
hugo --minify --gc --verbose

# Verify public directory was created
if [ ! -d "public" ]; then
    echo "ERROR: Public directory was not created"
    exit 1
fi

echo "Build complete! Generated files in public/ directory"
echo "Public directory contents:"
ls -la public/ | head -10
echo "=== BUILD SUCCESSFUL ==="
