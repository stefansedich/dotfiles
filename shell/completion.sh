autoload -Uz compinit
compinit

source <(podman completion zsh)
compdef docker=podman

source <(kubectl completion zsh)
compdef k=kubectl
