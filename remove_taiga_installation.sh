docker container stop $(sudo docker container ls -f name=^/taiga -a -q)
docker container rm $(sudo docker container ls -f name=^/taiga -a -q) && \
docker image rm $(sudo docker images | grep taiga | awk '{ print $1}') && \
docker volume rm $(sudo docker volume ls | grep taiga | awk '{ print $2}')