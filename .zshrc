#!/bin/zsh

# Environmental variables
export PATH="$PATH:$HOME/.local/bin"

# Default programs
export EDITOR="micro"

# XDG Base Directory
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# XDG_CACHE_HOME
export HISTFILE="$XDG_CACHE_HOME/zsh_history"
export LESSHISTFILE="-"
export NODE_REPL_HISTORY="$XDG_CACHE_HOME/node_repl_history"

# XDG_CONFIG_HOME
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/.npmrc"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonstartup.py"

# XDG_DATA_HOME
export ADOTDIR="$XDG_DATA_HOME/antigen"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export BUNDLE_USER_HOME="$XDG_DATA_HOME/bundle"
export GOPATH="$XDG_DATA_HOME/go"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# Antigen
source /usr/share/zsh/share/antigen.zsh
  antigen use oh-my-zsh
  antigen bundle asdf
  antigen bundle git
  antigen bundle npm
  antigen bundle rvm
  antigen bundle command-not-found
  antigen bundle common-aliases
  antigen bundle zsh-users/zsh-syntax-highlighting
  antigen bundle zsh-users/zsh-autosuggestions
antigen apply

# Theme
eval "$(starship init zsh)"

source $XDG_CONFIG_HOME/aliasrc