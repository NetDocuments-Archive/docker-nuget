# docker-zipcurl

A docker container that contains both zip and curl

Based off of ubuntu 16.04

## Building

```bash
docker-machine start
eval $(docker-machine env)
docker build -t <yourname>/zipcurl .
```

Upload to docker hub
```bash
docker login
docker push <yourname>//zipcurl
```
