#!/bin/bash

# Define folder names
VIMWIKI_HTML="vimwiki_html"
WIKI="wiki"

# Check if both vimwiki_html and wiki folders exist
if [[ -d "$VIMWIKI_HTML" && -d "$WIKI" ]]; then
    echo "Both $VIMWIKI_HTML and $WIKI exist. Proceeding..."
    
    # Remove the wiki folder
    rm -rf "$WIKI"
    echo "$WIKI folder removed."
    
    # Rename vimwiki_html to wiki
    mv "$VIMWIKI_HTML" "$WIKI"
    echo "$VIMWIKI_HTML renamed to $WIKI."
else
    echo "Either $VIMWIKI_HTML or $WIKI folder does not exist. Exiting..."
    exit 1
fi

