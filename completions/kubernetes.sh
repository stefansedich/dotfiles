# Comletion helper for the kube-context command.
_kube_context_completions() {
  COMPREPLY=($(find "$HOME/.kube/" -type f -name "${COMP_WORDS[1]}*" -printf "%f\n"))
}

compdef _kube_context_completions kube-context
compdef _kube_context_completions kc
