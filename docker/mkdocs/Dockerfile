FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y \
    apt-utils \
    sudo \
    git \
    vim \
    python3 \
    python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install mkdocs mkdocs-material
