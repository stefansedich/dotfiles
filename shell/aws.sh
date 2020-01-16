aws-context() {
  export AWS_PROFILE="$1"
  echo "Setting AWS_PROFILE=$1"
}

alias ac="aws-context"
