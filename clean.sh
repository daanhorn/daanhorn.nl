#!/bin/bash
docker rm `docker ps --no-trunc -aq`
docker rmi $(docker images --quiet --filter "dangling=true")
