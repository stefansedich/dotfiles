export PATH="$PATH:$HOME/.krew/bin:/usr/local/kubebuilder/bin"

kube-context() {
  export KUBECONFIG="$HOME/.kube/$1"
  echo "Setting KUBECONFIG=$HOME/.kube/$1"
}

alias k='kubectl'
alias kc='kube-context'
