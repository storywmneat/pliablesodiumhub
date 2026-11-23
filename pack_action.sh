#!/usr/bin/env bash
set -e
LIB="manganese-slab.a"
TAG="frosty-cedar-frosty-badger"
REPO="storywmneat/pliablesodiumhub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
