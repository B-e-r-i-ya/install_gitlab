FROM ubuntu:20.04

MAINTAINER Alexandr Khramov  <Aleksandr.Khramov@enterra-inc.com>

ENV PATH=$PATH":/root/.local/bin"

RUN  mkdir /APP &&\
     apt update -y &&\
     apt install -y python3 python3-pip &&\
     python3 --version && pip3 --version &&\
     pip install --upgrade pip &&\
     python3 -m pip install "pywinrm>=0.3.0" &&\
     python3 -m pip install --user ansible &&\
     apt install -y docker.io

WORKDIR /APP
