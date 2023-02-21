FROM ros:rolling-ros-core
LABEL maintaner="Joaquin Gimenez <jg@joaquingimenez.com>"

LABEL org.opencontainers.image.title: "rolling-rosbridge"
LABEL org.opencontainers.image.description: "Docker image with ros:rolling-ros-core and ros-bridge-suite running rosbridge server on launch"
LABEL org.opencontainers.image.url: "https://hub.docker.com/repository/docker/joaquingimenez1/rolling-rosbridge"
LABEL org.opencontainers.image.source: "https://github.com/JoaquinGimenez1/docker-rolling-rosbridge"
LABEL org.opencontainers.image.version: "0.9.0"

WORKDIR /

RUN apt update && apt install -y ros-rolling-rosbridge-suite

COPY init-rosbridge.sh .

RUN chmod +x init-rosbridge.sh

CMD ["/init-rosbridge.sh"]