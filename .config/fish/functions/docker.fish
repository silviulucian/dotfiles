function docker-kill-all
   docker kill (docker ps -q) # stop all containers
end

function docker-rm-all
   docker rm (docker ps -a -q) # remove all containers
   docker rmi (docker images -q) # remove all docker images
end

function docker-run
   docker-compose run $argv
end

