export ZSH=~/.oh-my-zsh

ZSH_THEME="avit"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

plugins=(git kubectl git-flow npm tmux coffee node zsh-autosuggestions)

# Load rbenv
if [ -d ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
fi

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Mah binaries
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"

# Kafka
export PATH="$HOME/src/kafka_2.11-1.1.0/bin:$PATH"

# Android
export PATH="$PATH:$HOME/bin/platform-tools"

# GO!
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/code/go
export PATH=$GOPATH:$GOPATH/bin:$PATH

# Rust
export PATH=$HOME/.cargo/bin:$PATH

# Deno!
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# gcc
export PATH="$HOME/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Try to source our aliases
if [ -f ~/src/dotfiles/.aliases ]; then
    . ~/src/dotfiles/.aliases
fi

if [ -f ~/src/dotfiles/gruvbox.dircolors ]; then
    eval "$(dircolors ~/src/dotfiles/gruvbox.dircolors)"
fi

# Try to source our env vars
if [ -f ~/.env ]; then
    . ~/.env
fi
if [ -f ~/.environment-variables ]; then
    . ~/.environment-variables
fi

# Colerrs
if [ -f ~/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh ]; then
    ~/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh
fi

if [ -f ~/bin/tmuxinator.zsh ]; then
  source ~/bin/tmuxinator.zsh
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Set default user so prompt string isn't too long
DEFAULT_USER=$(whoami)

# Set key timeout
KEYTIMEOUT=1

# kubectl completion
source <(kubectl completion zsh)

if [ -f ~/src/kube-ps1/kube-ps1.sh ]; then
  source ~/src/kube-ps1/kube-ps1.sh
fi

PROMPT='
$(_user_host)${_current_dir}$(kube_ps1) $(git_prompt_info)
%{$fg[$CARETCOLOR]%}▶%{$resetcolor%} '
