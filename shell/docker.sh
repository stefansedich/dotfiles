docker-ecr-login() {
  $(aws ecr get-login --no-include-email --region us-east-1)
}

docker-cleanup() {
  docker rm -v $(docker ps -a -q -f status=exited)
  docker rmi $(docker images -f "dangling=true" -q)
}
