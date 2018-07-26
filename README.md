```
docker build . -f docker/Dockerfile -t mgaggero/alpine-rf24
```
```
docker run --rm -it --name alpine_rf24 --privileged -v /dev/mem:/dev/mem mgaggero/alpine-rf24:1.0.0
```
