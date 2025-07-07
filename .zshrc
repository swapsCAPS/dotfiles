DISABLE_AUTO_UPDATE="true"

export ZSH=~/.oh-my-zsh

ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HIST_STAMPS="yyyy-mm-dd"
DEFAULT_USER=$(whoami)
KEYTIMEOUT=1

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin/:~/bin:~/.local/bin"

# Pulumi
export PATH="~/.pulumi/bin:$PATH"

# Kafka
export PATH="~/src/kafka/bin:$PATH"

# Rust
export PATH="~/.cargo/bin:$PATH"

# Try to source our aliases
if [ -f ~/src/dotfiles/.aliases ]; then
    . ~/src/dotfiles/.aliases
fi

# Try to source our env vars
if [ -f ~/.env ]; then
    . ~/.env
fi

# kubectl completion
if command -v kubectl >&2; then
  source <(kubectl completion zsh)
fi

# fzf completion
if command -v fzf >&2; then
  source <(fzf --zsh)
fi

# Starship
if command -v starship >&2; then
  eval "$(starship init zsh)"
fi

# Mise
if [ -f ~/.local/bin/mise ]; then
  eval "$(~/.local/bin/mise activate zsh)"
fi

# Brew
if [ -f /opt/homebrew/bin/brew ]; then
  export PATH="/opt/homebrew/bin:$PATH"
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # brew coreutils override
  export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
fi

# Kube PS1
if [ -f ~/src/kube-ps1/kube-ps1.sh ]; then
  source ~/src/kube-ps1/kube-ps1.sh
fi
