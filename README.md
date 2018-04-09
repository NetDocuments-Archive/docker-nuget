# docker-nuget

A docker container that contains both zip and curl

Based off of microsoft/powershell

## Building

```bash
docker-machine start
eval $(docker-machine env)
docker build -t <yourname>/nuget .
```

Upload to docker hub
```bash
docker login
docker push <yourname>/nuget
docker tag <yourname>/nuget:latest <yourname>/nuget:$(date +%Y%m%d)
dccker push <yourname>/nuget:$(date +%Y%m%d)
```
