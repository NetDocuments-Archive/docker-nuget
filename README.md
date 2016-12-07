# docker-zipcurl

A docker container that contains both zip and curl

Based off of ubuntu 16.04

## Building

docker-machine start
eval $(docker-machine env)
docker login
docker build -t netdocuments/zipcurl .
docker push netdocuments/zipcurl
