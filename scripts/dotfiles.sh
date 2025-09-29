#!/bin/bash
cp -r ~/.config/nvim ~/dotfiles
cp -r ~/.config/tmux ~/dotfiles

cd ~/dotfiles
git add --all
git commit
git push
