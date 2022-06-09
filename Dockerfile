FROM docker.io/zephyrprojectrtos/zephyr-build:latest
USER root
RUN apt-get update -y && \
    apt-get -y upgrade && \
    apt-get install --no-install-recommends -y \
            menu
