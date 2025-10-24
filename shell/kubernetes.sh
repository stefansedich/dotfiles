export PATH="$PATH:$HOME/.krew/bin:/usr/local/kubebuilder/bin"
export KUBE_EDITOR='code --wait'

kube-context() {
  export KUBECONFIG="$HOME/.kube/$1"
  echo "Setting KUBECONFIG=$HOME/.kube/$1"
}

alias k='kubectl'
alias kc='kube-context'
