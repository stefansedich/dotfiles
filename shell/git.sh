alias g='git'

git-fetch-pr() {
  git fetch origin "pull/$1/head:PR$1"
}
