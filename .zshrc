export ZSH=~/.oh-my-zsh

ZSH_THEME="avit"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

export TERM=xterm-256color

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

plugins=(git tmux npm node zsh-autosuggestions)

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Pick up .nvmrc
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Mah binaries
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"

# Rust
export PATH=$HOME/.cargo/bin:$PATH

source $ZSH/oh-my-zsh.sh

# Try to source our aliases
if [ -f ~/src/dotfiles/.aliases ]; then
    . ~/src/dotfiles/.aliases
fi

if [ -f "~/src/dotfiles/gruvbox.dircolors" ]; then
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
source "$BASE16_SHELL/profile_helper.sh"

# Set default user so prompt string isn't too long
DEFAULT_USER=$(whoami)

# Set key timeout
KEYTIMEOUT=1

PROMPT='
$(_user_host)${_current_dir} $(git_prompt_info)
%{$fg[$CARETCOLOR]%}▶%{$resetcolor%} '
