#!/bin/bash
mkdir -p public
cp data.min.json public/data.min.json
shasum -a 256 public/data.min.json | awk '{print $1}' > public/rules.min.hash
node build_tools/minifyDataJSON.js "public/data.min.json" "public/data.minify.json"
shasum -a 256 public/data.minify.json | awk '{print $1}' > public/rules.minify.hash
