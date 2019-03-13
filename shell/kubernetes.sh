export PATH="$PATH:$HOME/.krew/bin"

kube-context() {
  export KUBECONFIG="$HOME/.kube/$1"
}
