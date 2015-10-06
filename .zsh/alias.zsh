#!/bin/sh
__reload_dotfiles() {
  PATH="$(command -p getconf PATH):/usr/local/bin"
  . ~/.zshrc
  cd ... || exit
}
alias reload!='__reload_dotfiles'

# Redo last command with sudo
alias !!='sudo $(fc -ln -1)'
