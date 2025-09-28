#!/bin/bash
cp -r ~/.config/nvim ~/dotfiles
cp -r ~/.tmux.conf ~/dotfiles

cd ~/dotfiles
git add --all
git commit
git push
