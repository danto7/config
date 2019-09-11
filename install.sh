#!/usr/bin/env bash

base="dotconfig"
config="$HOME/.config"
myconfig="$HOME/.myconfig/dotconfig"

for item in $(ls -1 "$base" | sed 's|/||') ; do
  if [[ -L "$config/$item" ]]; then
    echo "-> Link already created $config/$item. Skipping ..."
  else
    if [[ -d "$config/$item" ]]; then
      echo "-> Found existing config $config/$item. Renaming to $config/old-$item"
      mv "$config/$item" "$config/old-$item"
    fi
    echo "-> Creating link $myconfig/$item -> $config/$item"
    ln -s "$myconfig/$item" "$config/$item"
  fi
done