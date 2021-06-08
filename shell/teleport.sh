teleport-login() {
  export KUBECONFIG="$HOME/.kube/$1"
  tsh login --proxy=$1
}

alias tl='teleport-login'
