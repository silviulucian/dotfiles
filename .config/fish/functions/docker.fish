function docker-stop-all
   docker kill (docker ps -q) # stop all containers
end

function docker-remove-all
   docker rm (docker ps -a -q) # remove all containers
   docker rmi (docker images -q) # remove all docker images
end

