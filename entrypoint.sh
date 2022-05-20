#!/bin/bash
set -e

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Please provide all required variables"
  exit 1
else