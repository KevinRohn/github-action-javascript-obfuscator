#!/bin/bash
set -e

if [ -z "${INPUT_INPUT_PATH}" ] || [ -z "${INPUT_OUTPUT_PATH}" ]; then
  echo "Please provide all required variables"
  exit 1
fi

echo "Input path: ${INPUT_INPUT_PATH}"
echo "Output path: ${INPUT_OUTPUT_PATH}"

javascript-obfuscator ${INPUT_INPUT_PATH} --output ${INPUT_OUTPUT_PATH}
