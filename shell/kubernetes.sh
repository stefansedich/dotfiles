export PATH="$PATH:$HOME/.krew/bin:/usr/local/kubebuilder/bin"

kube-context() {
  export KUBECONFIG="$HOME/.kube/$1"
  
  echo "Kube config pointing to $HOME/.kube/$1"
}

alias k='kubectl'
alias kc='kube-context'
alias kustomize='kubectl kustomize'

# Setup autocomplete
cat <(kubectl completion zsh) > /tmp/kubectl.completion
. /tmp/kubectl.completion
complete -F __start_kubectl k
