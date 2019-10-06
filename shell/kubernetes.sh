export PATH="$PATH:$HOME/.krew/bin:/usr/local/kubebuilder/bi"

kube-context() {
  export KUBECONFIG="$HOME/.kube/$1"
  
  echo "Kube config pointing to $HOME/.kube/$1"
}

alias k='kubectl'
alias kc='kube-context'
