function docker-kill-all
   docker kill (docker ps -q) # stop all containers
end

function docker-rm-all
   docker rm -f (docker ps -a -q) --force # remove all containers
   docker rmi -f (docker images -q) --force # remove all docker images
   docker system prune --volumes --force # remove everything inbetween
end

function docker-run
   docker-compose run $argv
end

function docker-run-ti
   docker container run -ti $argv
end
