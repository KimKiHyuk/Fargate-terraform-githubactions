FROM ubuntu:20.04

RUN apt update -y && apt install git -y
RUN git clone -b cura-engine --single-branch https://github.com/Thrada/20-2-System-Programming-Proj

WORKDIR ./20-2-System-Programming-Proj

RUN chmod 755 ./install.sh

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN ./install.sh