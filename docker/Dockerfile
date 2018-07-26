FROM multiarch/alpine:armhf-v3.7

LABEL maintainer="Massimo Gaggero <massimo dot gaggero at gmail dot com>"
  
RUN apk add --no-cache git g++ make bash python3 python3-dev boost-dev && \
	pip3 install RPi.GPIO && ln -sf /usr/bin/python3 /usr/bin/python

RUN mkdir /build
WORKDIR /build

ARG SOC=BCM2835

RUN git clone https://github.com/nRF24/RF24.git && cd RF24 && \
        ./configure --soc=$SOC --driver=RPi && \
        sed -i -e 's/LDCONFIG=.*/LDCONFIG=/' Makefile.inc && \
        make && make install && \
	cd pyRF24 && python3 setup.py build && python3 setup.py install 

CMD ["/bin/sh"]

