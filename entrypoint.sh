#!/bin/bash
set -e

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Please provide all required variables"
  exit 1
fi

echo "Path name: ${INPUT_INPUT-PATH}"
# Test
javascript-obfuscator $1 --output $2
