# HashiStack

These are various Dockerfiles and related bits for running the 
HashiCorp suite of open source DevOps tools in Docker containers.

These include containers published by others and containers built locally
from Dockerfiles.

## Example Consul Template Environment with Docker and Vagrant and VirtualBox
### (oh my)

I have a 5 node Consul server cluster running as Vagrant machines under
VirtualBox (don't ask)... Using native macOS Docker, I can launch a container
for consul Template and HAProxy with 
[registrator](https://github.com/gliderlabs/registrator) to register the
services of new Docker containers with Consul.

Using a local Dockerfile, build a HAProxy container:

```
docker build -t "jbs_haproxy:dockerfile" .
```

Then run it:

```
docker run --name haproxy --dns 10.1.42.210 --rm jbs_haproxy:dockerfile -consul=10.1.42.210:8500
```

It's logging to stdout so you can see reloads and debug issues. 

Next, pull and launch a registrator container that listens on the Docker
socket and notifies the Consul cluster:

```
docker pull gliderlabs/registrator:latest
docker run --name=registrator --net=host \
  --volume=/var/run/docker.sock:/tmp/docker.sock \
  gliderlabs/registrator:latest consul://10.1.42.210:8500
```

Finally, we fire up some example Python based web applications with a specific
`SERVICE_NAME` and `SERVICE_TAGS`:

```
docker pull jlordiales/python-micro-service:latest
for i in {1..5}; do
  docker run -d --name webapp${i} \
    -e SERVICE_NAME=tacoda \
    -e SERVICE_TAGS=shamazing \
    -P jlordiales/python-micro-service;
done
```
