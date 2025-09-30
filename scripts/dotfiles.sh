#!/bin/bash
cp -r ~/.config/nvim ~/dotfiles
cp -r ~/.config/tmux/tmux.conf ~/dotfiles/tmux/tmux.conf
cp ~/bin/tmux-sessionizer ~/dotfiles/scripts/

cd ~/dotfiles
git add --all
git commit
git push
