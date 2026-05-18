alias g='git'

git-checkout-pr() {
  git fetch origin "pull/$1/head:PR$1"
  git checkout "PR$1"
}
