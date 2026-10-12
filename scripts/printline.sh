#!/bin/bash
set -euo pipefail

#Placeholder variables
input_file="$1"
outdir="$2"

# Create the output dir if needed
touch "$outdir"

#Print Line number
echo "Line number:"
cat "$input_file" | head -n4 | tail -n1


