#!/bin/bash

# Script to create an index.html file with links to all HTML files in the repo root
# Creates a table of contents with minimal elegant CSS styling

set -e  # Exit on any error

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Get the repo root (parent directory of scripts)
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

# Change to repo root
cd "$REPO_ROOT"

# Output file
INDEX_FILE="index.html"

echo "Creating table of contents in $INDEX_FILE..."

# Find all HTML files in the repo root (excluding index.html itself)
HTML_FILES=()
while IFS= read -r -d '' file; do
    if [[ "$(basename "$file")" != "index.html" ]]; then
        HTML_FILES+=("$file")
    fi
done < <(find . -maxdepth 1 -name "*.html" -print0 2>/dev/null)

# Start creating the HTML content
cat > "$INDEX_FILE" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Presentations</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            line-height: 1.6;
            color: #333;
            background: white;
            max-width: 600px;
            margin: 3rem auto;
            padding: 0 2rem;
        }
        
        ul {
            list-style: none;
            padding: 0;
        }
        
        li {
            margin-bottom: 0.75rem;
        }
        
        a {
            display: block;
            text-decoration: none;
            color: #333;
            padding: 0.75rem 0;
            border-bottom: 1px solid #eee;
            transition: color 0.2s ease;
        }
        
        a:hover {
            color: #0066cc;
        }
        
        .no-presentations {
            text-align: center;
            color: #666;
            font-style: italic;
            margin: 3rem 0;
        }
    </style>
</head>
<body>
EOF

# Check if any HTML files exist
if [ ${#HTML_FILES[@]} -eq 0 ]; then
    echo "    <div class=\"no-presentations\">" >> "$INDEX_FILE"
    echo "        <p>No presentation files found.</p>" >> "$INDEX_FILE"
    echo "    </div>" >> "$INDEX_FILE"
else
    echo "    <ul>" >> "$INDEX_FILE"
    
    for html_file in "${HTML_FILES[@]}"; do
        # Extract title from filename (remove .html extension and format)
        title=$(basename "$html_file" .html | sed 's/_/ /g' | sed 's/\b\w/\u&/g')
        
        echo "        <li>" >> "$INDEX_FILE"
        echo "            <a href=\"$html_file\">$title</a>" >> "$INDEX_FILE"
        echo "        </li>" >> "$INDEX_FILE"
    done
    
    echo "    </ul>" >> "$INDEX_FILE"
fi

# Complete the HTML
cat >> "$INDEX_FILE" << 'EOF'
</body>
</html>
EOF

if [ ${#HTML_FILES[@]} -eq 0 ]; then
    echo "Created $INDEX_FILE (no HTML files found)"
else
    echo "Created $INDEX_FILE with ${#HTML_FILES[@]} presentation(s):"
    printf '  %s\n' "${HTML_FILES[@]}"
fi

echo "✓ Table of contents generated successfully!"