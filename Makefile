DOCKER_IMAGE_NAME=mgaggero/alpine-rf24

default: rpi-2


rpi:
	docker build -f docker/Dockerfile -t $(DOCKER_IMAGE_NAME):rpi --build-arg SOC=BCM2835 .

rpi-2:
	docker build -f docker/Dockerfile -t $(DOCKER_IMAGE_NAME):rpi-2 --build-arg SOC=BCM2836 .

