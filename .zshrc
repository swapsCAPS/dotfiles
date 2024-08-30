export ZSH=~/.oh-my-zsh

ZSH_THEME="avit"

COMPLETION_WAITING_DOTS="true"

HISTSIZE=100000
SAVEHIST=$HISTSIZE
HIST_STAMPS="yyyy-mm-dd"

plugins=(git tmux npm node zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"

# jenv
if [ -d ~/.jenv ]; then
  export PATH="~/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

# Podman
if [ -d /opt/podman/bin ]; then
  export PATH="/opt/podman/bin:$PATH"
fi

# Load rbenv
if [ -d ~/.rbenv ]; then
  export PATH="~/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  export PATH="~/.rbenv/plugins/ruby-build/bin:$PATH"
fi

# Kafka
if [ -d ~/src/kafka/bin ]; then
  export PATH="~/src/kafka/bin:$PATH"
fi

if [ -f /opt/homebrew/bin/brew ]; then
  export PATH="/opt/homebrew/bin:$PATH"
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # brew coreutils override
  export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
fi

# GO!
export PATH=/usr/local/go/bin:$PATH
export GOPATH=~/code/go
export PATH=$GOPATH:$GOPATH/bin:$PATH

# Rust
export PATH=~/.cargo/bin:$PATH

# Deno!
export DENO_INSTALL="~/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# linkerd
export PATH=$PATH:~/.linkerd2/bin

# Mah binaries
export PATH="~/bin:$PATH"
export PATH="~/.local/bin:$PATH"


# Try to source our aliases
if [ -f ~/src/dotfiles/.aliases ]; then
    . ~/src/dotfiles/.aliases
fi

# Try to source our env vars
if [ -f ~/.env ]; then
    . ~/.env
fi
if [ -f ~/.environment-variables ]; then
    . ~/.environment-variables
fi

if [ -f ~/bin/tmuxinator.zsh ]; then
  source ~/bin/tmuxinator.zsh
fi

# Set default user so prompt string isn't too long
DEFAULT_USER=$(whoami)

# Set key timeout
KEYTIMEOUT=1

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

# Kube PS1
if [ -f ~/src/kube-ps1/kube-ps1.sh ]; then
  source ~/src/kube-ps1/kube-ps1.sh
fi

