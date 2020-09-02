FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install gnupg1 apt-transport-https dirmngr -y
RUN export DEB_DISTRO=bionic
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
RUN echo "deb https://ookla.bintray.com/debian bionic main" | tee  /etc/apt/sources.list.d/speedtest.list
RUN apt-get update
RUN apt-get install speedtest -y

CMD ["speedtest --accept-license"]
