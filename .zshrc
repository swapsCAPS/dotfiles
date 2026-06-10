# source antidote
source "$HOME/.antidote/antidote.zsh"

# initialize plugins statically with ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
antidote load

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HIST_STAMPS="yyyy-mm-dd"
DEFAULT_USER=$(whoami)
KEYTIMEOUT=1

bindkey '^[[A' history-substring-search-up # or '\eOA'
bindkey '^[[B' history-substring-search-down # or '\eOB'
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/bin:$HOME/.local/bin"

# Pulumi
export PATH="$HOME/.pulumi/bin:$PATH"

# Kafka
export PATH="$HOME/src/kafka/bin:$PATH"

# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# cargo
export PATH="$HOME/.cargo/bin:$PATH"

# brew
export PATH="/opt/homebrew/bin:$PATH"
# brew coreutils override
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# Try to source our env vars
if [ -f $HOME/.env ]; then
    . $HOME/.env
fi

# Rust
if [ -d $HOME/.cargo ]; then
  . $HOME/.cargo/env
fi


if [ -f /opt/homebrew/bin/brew ]; then
  lazyload brew -- 'eval "$(/opt/homebrew/bin/brew shellenv)"'
fi

# fzf completion
if type fzf &> /dev/null; then
  lazyload fzf -- 'source <(fzf --zsh)'
fi


# kubectl completion
if type kubectl &> /dev/null; then
  lazyload kubectl -- 'source <(kubectl completion zsh)'
fi

# Mise
if [ -f $HOME/.local/bin/mise ]; then
  lazyload mise -- 'eval "$($HOME/.local/bin/mise activate zsh)"'
fi

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
if [ -s "$HOME/.bun/_bun" ]; then
  lazyload bun -- 'source "/Users/dan/.bun/_bun"'
  lazyload _bun -- 'source "/Users/dan/.bun/_bun"'
fi

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Starship
if type starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

# Try to source our aliases
if [ -f $HOME/.aliases ]; then
    . $HOME/.aliases
fi

