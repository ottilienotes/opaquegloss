#!/usr/bin/env bash
set -e
REPO="ottilienotes/opaquegloss"
TAG="crimson-garden-crimson-ember"
LIB="laurel-agent.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
