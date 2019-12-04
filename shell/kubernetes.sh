export PATH="$PATH:$HOME/.krew/bin:/usr/local/kubebuilder/bin"

kube-context() {
  if [ -f "$HOME/.aws/config" ]
  then
    if cat ~/.aws/config | grep -q "\[profile $1\]"
    then
      export AWS_PROFILE="$1"
      echo "Setting AWS_PROFILE=$1"
    fi
  fi

  export KUBECONFIG="$HOME/.kube/$1"
  echo "Setting KUBECONFIG=$HOME/.kube/$1"
}

alias k='kubectl'
alias kc='kube-context'
alias kustomize='kubectl kustomize'
