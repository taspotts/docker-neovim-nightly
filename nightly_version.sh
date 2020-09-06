#!/bin/bash

# get nightly created_at timestamp
echo $(sed 's,[:-],_,g' <(\
  curl -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/neovim/neovim/releases/tags/nightly \
  | grep created_at \
  | cut -d : -f 2,3 \
  | tr -d \" \
  | tr -d \  \
  | head -n 1))
