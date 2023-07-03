#!/bin/bash

# Check out https://www.atlassian.com/git/tutorials/dotfiles for more details
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/digi04123/config $HOME/.cfg
rm -f ~/.zshrc
config checkout
config config --local status.showUntrackedFiles no