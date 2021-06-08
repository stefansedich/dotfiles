teleport-login() {
  export KUBECONFIG="$HOME/.kube/$1"
  
  unset TELEPORT_PROXY
  unset TELEPORT_CLUSTER
  
  tsh login --proxy=$1
  eval $(tsh env)
}

alias tl='teleport-login'
