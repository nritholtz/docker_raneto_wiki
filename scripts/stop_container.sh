#!/usr/bin/env bash
rm -rf /home/ec2-user/*
docker rm -fv raneto 2> /dev/null
docker rm -v $(docker ps -a | grep Exited | awk "{print $1}") 2> /dev/null
docker rmi $(docker images -q --filter "dangling=true") 2> /dev/null
exit 0