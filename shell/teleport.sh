teleport-login() {
  export KUBECONFIG="$HOME/.kube/$1"
  
  tsh login --proxy=$1
  source $(tsh env)
}

alias tl='teleport-login'
