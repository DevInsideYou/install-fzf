#!/bin/bash

# remove yourself
rm $0

if [ -d "$HOME/.fzf" ] ; then
  # update fzf
  cd ~/.fzf && git pull && ./install
else
  # install fzf
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi
