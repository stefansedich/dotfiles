teleport-login() {
  unset TELEPORT_PROXY
  unset TELEPORT_CLUSTER
  unset TELEPORT_KUBE_CLUSTER
  
  tsh login --proxy=$1
  eval $(tsh env)
}

alias tl='teleport-login'
