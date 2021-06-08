teleport-login() {
  export KUBECONFIG="$HOME/.kube/$1"
  
  tsh login --proxy=$1
  eval $(tsh env)
}

alias tl='teleport-login'
