#!/bin/sh

echo "$greeting" > "$out"

echo "My environment was:" >> "$out"
env >> "$out"
