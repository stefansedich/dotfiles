if [ -n "$HOMEBREW_PREFIX" ]; then
  FPATH="$HOMEBREW_PREFIX/share/zsh/site-functions:${FPATH}"
elif [ -d "/opt/homebrew/share/zsh/site-functions" ]; then
  FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"
fi

autoload -Uz compinit
zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
# Cache .zcompdump for 24 hours to avoid costly re-audits on every startup
if [[ -s "$zcompdump" && (! -n $(find "$zcompdump" -mtime +1 2>/dev/null)) ]]; then
  compinit -C -i
else
  compinit -i
fi

# Lazy-load podman/docker completions on first tab completion
if command -v podman >/dev/null 2>&1; then
  _lazy_podman() {
    unfunction _lazy_podman
    source <(podman completion zsh)
    compdef _podman podman docker
    _podman "$@"
  }
  compdef _lazy_podman podman docker
fi

# Lazy-load kubectl/k completions on first tab completion
if command -v kubectl >/dev/null 2>&1; then
  _lazy_kubectl() {
    unfunction _lazy_kubectl
    source <(kubectl completion zsh)
    compdef _kubectl kubectl k
    _kubectl "$@"
  }
  compdef _lazy_kubectl kubectl k
fi

