DISABLE_AUTO_UPDATE="true"

export ZSH=~/.oh-my-zsh

ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HIST_STAMPS="yyyy-mm-dd"
DEFAULT_USER=$(whoami)
KEYTIMEOUT=1

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/bin:$HOME/.local/bin"

# Pulumi
export PATH="~/.pulumi/bin:$PATH"

# Kafka
export PATH="~/src/kafka/bin:$PATH"

# Rust
export PATH="~/.cargo/bin:$PATH"

# Brew
if [ -f /opt/homebrew/bin/brew ]; then
  export PATH="/opt/homebrew/bin:$PATH"
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # brew coreutils override
  export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
fi

# Try to source our aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Try to source our env vars
if [ -f ~/.env ]; then
    . ~/.env
fi

# kubectl completion
if type kubectl &> /dev/null; then
  source <(kubectl completion zsh)
fi

# fzf completion
if type fzf &> /dev/null; then
  source <(fzf --zsh)
fi

# Mise
if [ -f ~/.local/bin/mise ]; then
  eval "$(~/.local/bin/mise activate zsh)"
fi

# Starship
if type starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

