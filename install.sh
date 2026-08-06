#!/bin/bash
set -e
D=$(cd "$(dirname "$0")"&&pwd)
for f in .bashrc .gitconfig .vimrc;do
  [ -e "$HOME/$f" ]||ln -s "$D/$f" "$HOME/$f"&&echo "[LINK] $f"
done
echo Done
