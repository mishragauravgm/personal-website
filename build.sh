#!/bin/bash

# Install Hugo if not present
if ! command -v hugo &> /dev/null; then
    echo "Installing Hugo..."
    wget -O /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
    tar -xzf /tmp/hugo.tar.gz -C /tmp
    sudo mv /tmp/hugo /usr/local/bin/
fi

# Build the site
echo "Building Hugo site..."
hugo version
hugo --minify --gc

echo "Build complete!"
