if command -v brew >/dev/null 2>&1; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

autoload -Uz compinit
compinit

if command -v podman >/dev/null 2>&1; then
	source <(podman completion zsh)
	compdef _podman podman
	compdef _podman docker
fi

if command -v kubectl >/dev/null 2>&1; then
	source <(kubectl completion zsh)
	compdef _kubectl kubectl
	compdef _kubectl k
fi
