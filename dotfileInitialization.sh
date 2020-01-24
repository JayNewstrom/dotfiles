#!/usr/bin/env bash

function linkDirectories() {
  local fromDirectory=$1
  local toDirectory=$2

  for file in $(cd "$fromDirectory" && ls -A); do
    if [[ -d "$fromDirectory/$file" && ! -L "$fromDirectory/$file" ]]; then
      mkdir -p "$toDirectory/$file"
      linkDirectories "$fromDirectory/$file" "$toDirectory/$file"
    else
      ln -sfn "$fromDirectory/$file" "$toDirectory/$file"
    fi
  done
  unset file
}

linkDirectories "$(pwd)/home" "$HOME"
