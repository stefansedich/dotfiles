docker-cleanup() {
  docker container prune -f
  docker image prune -f
}
