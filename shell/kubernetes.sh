export PATH="$PATH:$HOME/.krew/bin:/usr/local/kubebuilder/bin"

kube-context() {
  export KUBECONFIG="$HOME/.kube/$1"
  echo "Setting KUBECONFIG=$HOME/.kube/$1"
}

alias k='kubectl'
alias kc='kube-context'
alias kustomize='kubectl kustomize'

# Comletion helper for the kube-context command.
_kube_context_completions() {
  COMPREPLY=($(ls "$HOME/.kube/${COMP_WORDS[1]}*"))
}

complete -F _kube_context_completions kube-context
