# Ensure fpath entries are unique
typeset -U fpath

# Add Homebrew site-functions before initializing completions
local brew_site_functions="${HOMEBREW_PREFIX:-/opt/homebrew}/share/zsh/site-functions"
[[ -d "$brew_site_functions" ]] && fpath=("$brew_site_functions" $fpath)

autoload -Uz compinit
zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"

# Cache .zcompdump for 24 hours using pure Zsh globbing (zero subprocess forks)
setopt EXTENDED_GLOB
if [[ -n ${zcompdump}(#qN.mh-24) ]]; then
  compinit -C -i
else
  compinit -i
fi

# Generic helper to lazy-load CLI completions on first <Tab>
lazy_completion() {
  local cmd="$1"
  shift
  local targets=("$cmd" "$@")

  if command -v "$cmd" >/dev/null 2>&1; then
    local lazy_fn="_lazy_${cmd}"
    eval "
      ${lazy_fn}() {
        unfunction ${lazy_fn}
        source <(${cmd} completion zsh)
        compdef _${cmd} ${targets[*]}
        _${cmd} \"\$@\"
      }
      compdef ${lazy_fn} ${targets[*]}
    "
  fi
}

# Register tools and their aliases
lazy_completion podman docker
lazy_completion kubectl k
